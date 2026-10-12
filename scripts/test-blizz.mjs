// scripts/test-blizz.mjs
// Validación de credenciales del .env y de las rutas reales de la API de Blizzard.
// Uso: node --env-file=.env scripts/test-blizz.mjs [nombre instancia]
// Sin argumentos busca Zul'Aman (ejemplo del smoke test de la casa: /bosses 23576).
//
// Mapa verificado 2026-10-01 (ver CHANGELOG del diagnóstico en _blizzard-api.mjs):
//   - OAuth global: oauth.battle.net/token (200 con credenciales válidas)
//   - static-us responde y se resuelve a static-12.1.0_68914-us
//   - NO existen (404 en toda región): /data/wow/spell/{id}, /data/wow/creature/{id},
//     /data/wow/media/spell/{id} y /data/wow/journal-encounter/{id} con los IDs
//     del pack: los encounterIDS API de esta era difieren (Nalorakk 187 ≠ 1190).
//   - La cadena viva es: journal-instance/index → journal-instance/{id} (map/area =
//     el id de zona de las cabeceras del pack) → encounters[] → journal-encounter/{id}
//     → creature_displays + media.
// Los secretos y el token NUNCA se imprimen.

import { blizzEnv, createBlizzardClient } from "./_blizzard-api.mjs";

const OBJETIVO = process.argv[2] || "Zul'Aman";
const SPELL_LOCAL = "93712"; // Dolor y sufrimiento (Barón Ashbury, pack Cata)
const NPC_ZAMIMG = "23576"; // Nalorakk, para los patrones hotlink

const resultados = [];
function linea(ok, etiqueta, detalle = "") {
	resultados.push({ ok, etiqueta, detalle });
	console.log(`  ${ok ? "OK  " : "FAIL"}  ${etiqueta}${detalle ? ` — ${detalle}` : ""}`);
}

let cliente = null;
console.log(`Prueba Blizzard API (objetivo: "${OBJETIVO}")`);

// --- 1. Token + namespace vivo ---
for (const region of ["eu", "us"]) {
	try {
		const { clientId, clientSecret } = blizzEnv();
		cliente = createBlizzardClient({ clientId, clientSecret, region });
		const canario = await cliente.api("/data/wow/playable-class/index");
		if (canario.status === 200) {
			linea(true, `region ${region}: OAuth + static-${region}`, `namespace vivo (${canario.json?._links?.self?.href?.match(/static-[0-9.]+_[0-9]+-${region}/)?.[0] ?? "?"})`);
			break;
		}
		linea(false, `region ${region}`, `canario HTTP ${canario.status}`);
	} catch (err) {
		linea(false, `region ${region}`, err.message);
	}
}
if (!cliente) {
	console.log("\nSin token no se puede continuar. Revisar el .env.");
	process.exit(1);
}

// --- 2. journal-instance/index → localizar la instancia del nombre pedido ---
let instancia = null;
{
	const r = await cliente.api("/data/wow/journal-instance/index");
	const lista = r.json?.instances ?? [];
	const exacta = lista.find((i) => (i.name ?? "").toLowerCase() === OBJETIVO.toLowerCase());
	instancia = exacta ?? lista.find((i) => (i.name ?? "").toLowerCase().includes(OBJETIVO.toLowerCase())) ?? null;
	if (instancia) {
		linea(true, `journal-instance/index (${lista.length} instancias)`, `encontrada: ${instancia.name} (id ${instancia.id})`);
	} else {
		linea(false, `journal-instance/index`, `${r.status} — "${OBJETIVO}" no está en ${lista.length} instancias`);
	}
}

// --- 3. journal-instance/{id}: map/area (join con "Zona NNNN" del pack) + encounters ---
let encounterId = null;
let displayId = null;
let displayHref = null;
if (instancia) {
	const r = await cliente.api(`/data/wow/journal-instance/${instancia.id}`);
	if (r.status === 200) {
		const mapArea = `map=${r.json?.map?.id ?? "?"} area=${r.json?.area?.id ?? "?"}`;
		const encuentros = r.json?.encounters ?? [];
		linea(true, `journal-instance/${instancia.id} (${r.json?.name})`, `${mapArea} — ${encuentros.length} encuentros`);
		// Nalorakk o el primero como muestra
		const objetivo = encuentros.find((e) => /nalorakk/i.test(e.name ?? "")) ?? encuentros[0];
		if (objetivo) {
			encounterId = objetivo.id;
			linea(true, "  encounters[]", `${objetivo.name} → encounter API id ${objetivo.id}`);
		}
	} else {
		linea(false, `journal-instance/${instancia.id}`, `HTTP ${r.status}`);
	}
}

// --- 4. journal-encounter/{id}: criaturas, displayId anidado, secciones ---
if (encounterId !== null) {
	for (const locale of ["es_ES", "fr_FR"]) {
		const r = await cliente.api(`/data/wow/journal-encounter/${encounterId}`, { locale });
		const criatura = r.json?.creatures?.[0] ?? null;
		if (r.status === 200) {
			displayId = criatura?.creature_display?.id ?? null;
			displayHref = criatura?.creature_display?.key?.href ?? null;
			linea(
				true,
				`journal-encounter/${encounterId} [${locale}]`,
				`${r.json?.name} — criatura ${criatura?.name ?? "?"} (id ${criatura?.id ?? "?"}), displayId=${displayId}, secciones=${(r.json?.sections ?? []).length}`
			);
		} else {
			linea(false, `journal-encounter/${encounterId} [${locale}]`, `HTTP ${r.status}`);
		}
	}
}

// --- 5. Media del display (el retrato renderizado del editor) ---
if (displayHref) {
	const m = await cliente.media(displayHref);
	const act = m.json?.assets?.slice(0, 2).map((a) => a.value).join(" | ");
	linea(m.status === 200, "media creature-display", act ?? `HTTP ${m.status}`);
}

// --- 6. Nombres de spell: la ruta es LOCAL (índice desde los packs), no la API ---
{
	const { readdirSync, readFileSync } = await import("node:fs");
	const { join } = await import("node:path");
	const { fileURLToPath } = await import("node:url");
	const raiz = fileURLToPath(new URL("..", import.meta.url));
	const nombres = new Set();
	for (const pack of readdirSync(raiz).filter((d) => d.startsWith("Bosses_"))) {
		for (const f of readdirSync(join(raiz, pack)).filter((f) => /_es\.lua$|_en\.lua$/.test(f))) {
			const txt = readFileSync(join(raiz, pack, f), "utf8");
			for (const mm of txt.matchAll(new RegExp(`\\|Hspell:${SPELL_LOCAL}\\|h\\[([^\\]]+)\\]`, "g"))) {
				nombres.add(`${mm[1]} (${f})`);
			}
		}
	}
	linea(nombres.size > 0, `índice local de spells (${SPELL_LOCAL})`, [...nombres].join(", ") || "sin resultados");
}

// --- 7. Patrones zamimg hotlink (fuente aprobada; NPC id y displayId) ---
const idPruebas = [...new Set([NPC_ZAMIMG, displayId && String(displayId)].filter(Boolean))];
for (const idIm of idPruebas) {
	for (const variant of ["zoom", "avatar"]) {
		try {
			const h = await fetch(`https://wow.zamimg.com/images/wow/npc/${variant}/${idIm}.jpg`, {
				method: "HEAD",
				signal: AbortSignal.timeout(15000),
			});
			linea(h.ok, `zamimg npc/${variant}/${idIm}.jpg`, `${h.status} ${h.headers.get("content-type") ?? ""}`);
		} catch (err) {
			linea(false, `zamimg npc/${variant}/${idIm}.jpg`, err.message);
		}
	}
}

// --- Resumen ---
const fallos = resultados.filter((r) => !r.ok);
console.log(`\n${resultados.length - fallos.length}/${resultados.length} pruebas correctas.`);
if (fallos.length) {
	console.log("Pruebas fallidas:");
	for (const f of fallos) console.log(`  - ${f.etiqueta}: ${f.detalle || "sin detalle"}`);
	process.exit(2);
}