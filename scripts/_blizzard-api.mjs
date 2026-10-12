// scripts/_blizzard-api.mjs
// Cliente mínimo de la Game Data API de Blizzard (OAuth client-credentials).
// Sin dependencias: usa el fetch global de Node 18+. Lo consumen
// scripts/test-blizz.mjs (validación) y el editor web (a construir).
// Reglas de seguridad: los secretos NUNCA se devuelven ni se imprimen;
// el token vive solo en memoria y caduca con los datos de la propia API.
//
// Mapa verificado 2026-10-01 (scripts/test-blizz.mjs, 8/12 OK):
//   - OAuth GLOBAL: https://oauth.battle.net/token (los hosts regionales
//     {region}.battle.net/oauth/token devuelven 404). Token 24h, renovable.
//   - static-{region} vivo y resuelto a static-12.1.0_NNNN-us (Midnight).
//   - Cadena VIVA para el editor: journal-instance/index →
//     journal-instance/{id} (¡su campo map = el "Zona NNNN" de las
//     cabeceras de los packs!) → encounters[] → journal-encounter/{id}
//     (nombre/description/secciones localizadas, creatures con
//     creature_display anidado) → media/creature-display/{id} → asset en
//     render.worldofwarcraft.com (retrato zoom del jefe).
//   - Los encounterIDS de la API difieren de la era de los packs
//     (Nalorakk: API 187 ≠ pack 1190): hay que mapear por instancia.
//   - MUERTAS (404 en toda región): /data/wow/spell/{id},
//     /data/wow/creature/{id}. En cambio (verificado 2026-10-10):
//     /data/wow/media/spell/{mediaId} VIVE (requiere el media.id del hit de
//     búsqueda, NO el id del spell; devuelve el asset "icon" → Zamimg hotlink
//     en render.worldofwarcraft.com/eu/icons/56/*.jpg) y
//     /data/wow/search/spell también vive, PERO es difuso: acepta solo campos
//     name.<locale>=<texto> (no id, no search libre), devuelve basura de
//     página por defecto si no encuentra, y algunos spells de mazmorra
//     (p. ej. 438025 "Snack Time") ni siquiera están en su índice. Resolutor
//     del editor: igualdad por tokens + preferencia del hit con el mismo id,
//     con caché de aciertos Y fallos en _cache/spell-names.json.
//   - Los nombres de spell para el picker salen del índice LOCAL construido
//     desde los packs, enriquecido con el resueltor de búsqueda.
//   - zamimg: los patrones npc/zoom y npc/avatar devuelven 404 (con NPC id
//     y con displayId). Solo es útil para iconos por NOMBRE de icono
//     (images/wow/icons/large/{nombre}.jpg → verificó 200) y para los iconos
//     de spell vía media/spell/{mediaId} (ver arriba).

// Regiones soportadas (hosts regionales de Battle.net API)
const REGIONES = ["eu", "us", "kr", "tw"];

// Obtiene un token client-credentials. El OAuth es GLOBAL: el host correcto
// es oauth.battle.net (los antiguos https://{region}.battle.net/oauth/token
// devuelven 404 — verificado 2026-10-01 con scripts/test-blizz.mjs). China
// (battle.net.cn) usa hosting aparte y queda fuera del alcance de este addon.
async function pedirToken(region, clientId, clientSecret) {
	const url = "https://oauth.battle.net/token";
	const res = await fetch(url, {
		method: "POST",
		headers: {
			"Content-Type": "application/x-www-form-urlencoded",
		},
		body: new URLSearchParams({
			grant_type: "client_credentials",
			client_id: clientId,
			client_secret: clientSecret,
		}),
		signal: AbortSignal.timeout(15000),
	});
	if (!res.ok) {
		throw new Error(`OAuth ${region}: HTTP ${res.status}`);
	}
	const tok = await res.json(); // { access_token, token_type, expires_in }
	if (!tok || typeof tok.access_token !== "string" || !tok.access_token) {
		throw new Error(`OAuth ${region}: respuesta sin access_token`);
	}
	return {
		token: tok.access_token,
		// margen de seguridad de 60s para renovar antes de caducar
		expiresAt: Date.now() + (Number(tok.expires_in) > 0 ? Number(tok.expires_in) * 1000 : 3600000) - 60000,
	};
}

// Fábrica del cliente: { api(path), media(href), region, locale }
export function createBlizzardClient({ clientId, clientSecret, region = "eu", locale = "es_ES" }) {
	if (!clientId || !clientSecret) {
		throw new Error("Faltan credenciales: BLIZZARD_CLIENT_ID / BLIZZARD_CLIENT_SECRET");
	}
	if (!REGIONES.includes(region)) {
		throw new Error(`Región desconocida: ${region} (válidas: ${REGIONES.join(", ")})`);
	}

	let memToken = null; // { token, expiresAt } en memoria

	async function token() {
		if (memToken && Date.now() < memToken.expiresAt) return memToken;
		memToken = await pedirToken(region, clientId, clientSecret);
		return memToken;
	}

	// Llamada de datos de juego: /data/wow/... con namespace y locale.
	// Renueva el token una vez si la API responde 401 (token caducado).
	async function api(path, { locale: loc = locale, namespace = `static-${region}` } = {}) {
		const url = `https://${region}.api.blizzard.com${path}?namespace=${encodeURIComponent(namespace)}&locale=${encodeURIComponent(loc)}`;
		const t = await token();
		let res = await fetch(url, {
			headers: { Authorization: `Bearer ${t.token}` },
			signal: AbortSignal.timeout(15000),
		});
		if (res.status === 401) {
			memToken = null; // forzar renovación
			const t2 = await token();
			res = await fetch(url, {
				headers: { Authorization: `Bearer ${t2.token}` },
				signal: AbortSignal.timeout(15000),
			});
		}
		return { status: res.status, json: res.ok ? await res.json() : null };
	}

	// Descarga de un endpoint de media (href absoluto que devuelve la API,
	// ya trae namespace/locale como query). Devuelve { status, json }.
	async function media(href) {
		const t = await token();
		const res = await fetch(href, {
			headers: { Authorization: `Bearer ${t.token}` },
			signal: AbortSignal.timeout(15000),
		});
		return { status: res.status, json: res.ok ? await res.json() : null };
	}

	return { api, media, region, locale };
}

// Comprueba que las variables de entorno están; devuelve { clientId, clientSecret }.
export function blizzEnv(env = process.env) {
	const clientId = env.BLIZZARD_CLIENT_ID || "";
	const clientSecret = env.BLIZZARD_CLIENT_SECRET || "";
	if (!clientId || !clientSecret) {
		throw new Error("Fichero .env sin BLIZZARD_CLIENT_ID / BLIZZARD_CLIENT_SECRET");
	}
	return { clientId, clientSecret };
}