// scripts/nombres-jefe.mjs
// Corpus de nombres de JEFES en 4 locales (es_ES, en_US, fr_FR, de_DE) por pack:
//   _nombres/_encuentros-4l.json   instId → { locales, encuentros: { encId → { es, en, fr, de } } }
//                                  "e<encId>" → { locales, crit: { cId → { es, en, fr, de } } }
//   _nombres/jefes-<pack>.json     npcId → { es, en, fr, de, zonas[] }
//
// IMPORTANTE: los ids de criatura del journal NO son npc ids (Hogger: journal
// creature 1033 ≠ NPC 448), así que la unión CID ↔ criatura es POR NOMBRE,
// igual que el pareo de generar-zonas y comparar-dbm: los nombres del módulo
// DBM (EN/es de su localization, y fr/de si el pack los trae) se contrastan
// con los nombres de las criaturas de los encuentros de la zona (canales:
// exacto normalizado, tokens de 6+, difuso). El nombre del journal gana por
// locale (es el que usa el CLIENTE); la localization del pack cubre los
// idiomas que el journal no trae; lo que quede vacío se lista al final para
// pedirlo (al dueño o al cliente in-game).
//
// Uso: node --env-file=.env scripts/nombres-jefe.mjs --pack Bosses_Vanilla

import { readFileSync, writeFileSync, existsSync, readdirSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { blizzEnv, createBlizzardClient } from "./_blizzard-api.mjs";
import {
	normalizar, nombresCoinciden, parseModulo, nombresLocalizacion,
	carpetasDeDirs, raicesDePack,
} from "./_dbm-parse.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DIR = path.join(SRC, "_nombres");
const CONCURRENCIA = 6;
const LOCALES = [
	["es_ES", "es"], ["en_US", "en"], ["fr_FR", "fr"], ["de_DE", "de"],
];
const CAMPOS = ["es", "en", "fr", "de"];

const argv = process.argv.slice(2);
const iPack = argv.indexOf("--pack");
const pack = iPack !== -1 ? argv[iPack + 1] : null;
if (!pack) { console.error("Uso: --pack Bosses_<X>"); process.exit(1); }

async function porLotes(items, n, fn) {
	const salida = [];
	for (let i = 0; i < items.length; i += n) salida.push(...(await Promise.all(items.slice(i, i + n).map(fn))));
	return salida;
}

const { clientId, clientSecret } = blizzEnv();
const cliente = createBlizzardClient({ clientId, clientSecret, region: "eu" });

// --- 1. Zonas del pack (su _zonas.lua generado) → mapas → instancias ---
const fichZonas = path.join(SRC, pack, `${pack}_zonas.lua`);
const zonasText = readFileSync(fichZonas, "utf8");
const porMapa = new Map(); // mapa → [instId,...] (de _instancias.json)
const instancias = JSON.parse(readFileSync(path.join(DIR, "_instancias.json"), "utf8"));
for (const ins of instancias) {
	if (ins.mapa == null) continue;
	const k = String(ins.mapa);
	if (!porMapa.has(k)) porMapa.set(k, []);
	porMapa.get(k).push(ins.id);
}
const zonasPack = [...zonasText.matchAll(/^zonas\["(\d+)"\] = \{ nombre = "([^"]+)", jefes = \{ ([^}]*) \} \};/gm)]
	.map((m) => ({ mapa: m[1], nombre: m[2], jefes: m[3].split('", "').map((s) => s.replace(/"/g, "")) }));
const instIds = [...new Set(zonasPack.flatMap((z) => porMapa.get(z.mapa) ?? []))];
console.log(`${pack}: ${zonasPack.length} zonas de ${zonasPack.reduce((a, z) => a + z.jefes.length, 0)} jefes en ${instIds.length} instancias del journal`);

// --- 2. Corpus 4-locale (cacheado; solo se pide lo que falta) ---
const fich4l = path.join(DIR, "_encuentros-4l.json");
const enc4l = existsSync(fich4l) ? JSON.parse(readFileSync(fich4l, "utf8")) : {};
const faltaInst = instIds.filter((id) => {
	const ya = enc4l[id] ? LOCALES.filter(([loc]) => enc4l[id].locales?.includes(loc)).length : 0;
	return ya < LOCALES.length;
});
console.log(`Instancias a pedir (4 locales): ${faltaInst.length}/${instIds.length}`);
await porLotes(faltaInst, CONCURRENCIA, async (id) => {
	for (const [loc, campo] of LOCALES) {
		try {
			const r = await cliente.api(`/data/wow/journal-instance/${id}`, { locale: loc });
			if (r.status !== 200) continue;
			enc4l[id] = enc4l[id] ?? { locales: [], encuentros: {} };
			const reg = enc4l[id];
			if (!reg.locales.includes(loc)) reg.locales.push(loc);
			for (const e of r.json?.encounters ?? []) {
				reg.encuentros[String(e.id)] = reg.encuentros[String(e.id)] ?? {};
				reg.encuentros[String(e.id)][campo] = e.name;
			}
		} catch { /* la que cae, se repite en la próxima corrida */ }
	}
});

// los encuentros de todas las instancias relevantes (aunque la instancia ya estuviera cacheada)
const encIds = new Set();
for (const id of instIds) {
	for (const e of Object.keys(enc4l[id]?.encuentros ?? {})) encIds.add(e);
}

// detalle por encuentro × locale → criaturas (sus ids NO son npc ids, sirven
// solo como portadores de nombres)
const pendiente = [...encIds].filter((eid) => {
	const reg = enc4l[`e${eid}`];
	return !reg || LOCALES.filter(([loc]) => reg.locales?.includes(loc)).length < LOCALES.length;
});
console.log(`Encuentros a pedir (4 locales): ${pendiente.length}/${encIds.size}`);
await porLotes(pendiente, CONCURRENCIA, async (eid) => {
	const key = `e${eid}`;
	enc4l[key] = enc4l[key] ?? { locales: [], crit: {} };
	const reg = enc4l[key];
	for (const [loc, campo] of LOCALES) {
		if (reg.locales.includes(loc)) continue;
		try {
			const r = await cliente.api(`/data/wow/journal-encounter/${eid}`, { locale: loc });
			if (r.status !== 200) continue;
			reg.locales.push(loc);
			for (const c of r.json?.creatures ?? []) {
				const cid = String(c.id);
				reg.crit[cid] = reg.crit[cid] ?? {};
				reg.crit[cid][campo] = c.name;
			}
		} catch { /* idem */ }
	}
});
writeFileSync(fich4l, JSON.stringify(enc4l, null, "\t"));

// --- 3. Módulos del pack (parser compartido) y candidatos por zona ---
// cid → { mod, nombres del pack (en/es/fr/de) }
const porCid = new Map();
for (const raiz of raicesDePack(pack)) {
	const loc = nombresLocalizacion(raiz, CAMPOS);
	for (const carpeta of carpetasDeDirs(raiz, 2)) {
		for (const f of readdirSync(carpeta).filter((f) => f.endsWith(".lua") && !/^localization/i.test(f))) {
			const mod = parseModulo(path.join(carpeta, f));
			const nombres = {};
			for (const c of CAMPOS) nombres[c] = loc[c][mod.key] ?? null;
			for (const cid of mod.cids) {
				const base = path.basename(f).toLowerCase().replace(/\.lua$/, "");
				if (!porCid.has(cid)) porCid.set(cid, { key: mod.key, nombres, base, zonas: new Set() });
			}
		}
	}
}
// rescatar nombres de módulos hermanos (mismo basename, otra era): los módulos
// SoD de DBM-Raids-Vanilla NO llevan localization en su fichero y, cuando lo
// intentan por clave numérica, esa clave puede colisionar con el journal del
// remake actual (el 437 de hoy es Bathiel; el "TwilightLordKelris" SoD es otro jefe)
const hermanoBase = new Map();
for (const m of porCid.values()) {
	if (!m.base || !(m.nombres.es || m.nombres.en || m.nombres.fr || m.nombres.de)) continue;
	if (!hermanoBase.has(m.base)) hermanoBase.set(m.base, m.nombres);
}
// candidatos de cada zona: criaturas de los encuentros de TODAS las instancias
// de su mapa (protege remakes: solo cuenta si el nombre cuadra)
const critDeInst = new Map(); // instId → [{ encId, crit: [{id, nombres}] }]
for (const id of instIds) {
	const lista = [];
	for (const [encId, nombresEnc] of Object.entries(enc4l[id]?.encuentros ?? {})) {
		const reg = enc4l[`e${encId}`];
		if (!reg?.crit) continue;
		lista.push({ encId, crit: Object.entries(reg.crit).map(([cid, n]) => ({ id: cid, nombres: n })) });
	}
	critDeInst.set(id, lista);
}

// --- 4. Unión por nombre: cid ↔ criatura de su zona ---
// Encuentros del pack por id (para el canal B: clave numérica ≡ encuentro)
const encuentrosPorId = new Map(); // encId → { es, en, fr, de }
for (const id of instIds) for (const [encId, n] of Object.entries(enc4l[id]?.encuentros ?? {})) {
	if (!encuentrosPorId.has(encId)) encuentrosPorId.set(encId, n);
}
// 1) puntuación string por locale: exacto / contención / Levenshtein >= 0.8.
// NO tokens: los títulos compartidos en los 4 locales ("twilight", "crepuscular",
// "seigneur", "zwielichtfurst") sumaban locale tras locale y validaban falsos
// positivos del tipo "Twilight Lord Kelris" ≈ "Twilight Lord Bathiel" (lección).
function levenshtein(a, b) {
	const prev = Array.from({ length: b.length + 1 }, (_, j) => j);
	for (let i = 1; i <= a.length; i++) {
		let ant = prev[0];
		prev[0] = i;
		for (let j = 1; j <= b.length; j++) {
			const tmp = prev[j];
			prev[j] = Math.min(prev[j] + 1, prev[j - 1] + 1, ant + (a[i - 1] === b[j - 1] ? 0 : 1));
			ant = tmp;
		}
	}
	return prev[b.length];
}
function parParecido(modN, critN) {
	const s = normalizar(modN), t = normalizar(critN);
	if (s === t) return 3; // exacto normalizado
	if (nombresCoinciden(modN, critN)) return 1; // contención (lado corto >= 6)
	if (s.length >= 6 && t.length >= 6) {
		const d = levenshtein(s, t);
		if (1 - d / Math.max(s.length, t.length) >= 0.8) return 2; // difuso
	}
	return 0;
}
function mejorCriatura(cid, mod, crits) {
	let mejor = null, mejorPuntos = 0;
	for (const crit of crits) {
		let puntos = 0;
		for (const c of CAMPOS) {
			if (!mod.nombres[c] || !crit.nombres[c]) continue;
			puntos += parParecido(mod.nombres[c], crit.nombres[c]);
		}
		if (puntos > mejorPuntos) { mejorPuntos = puntos; mejor = crit; }
	}
	// >=4: un exacto (3) + otro match fuerte (2), o dos locales fuertes (2+2);
	// un match flojo de un solo locale (1-3) no basta
	return mejorPuntos >= 4 ? mejor : null;
}

const jefes = {};
const sinModule = [], sinNombre = [], incompletos = [];
for (const z of zonasPack) {
	const instsDeZona = porMapa.get(z.mapa) ?? [];
	const crits = instsDeZona.flatMap((id) => critDeInst.get(id) ?? []).flatMap((e) => e.crit);
	for (const cid of z.jefes) {
		const mod = porCid.get(cid);
		const nombres = { es: null, en: null, fr: null, de: null };
		let crit = null;
		if (mod) {
			crit = mejorCriatura(cid, mod, crits);
		}
		// nombre del journal por locale; si el journal no trae el idioma, la
		// localization del pack (es el nombre del mod en ese idioma). Canal B
		// (módulos modernos sin localization): la clave numérica del mod es el
		// id del encuentro del journal, y su nombre sirve de nombre del jefe.
		const fuente = { es: null, en: null, fr: null, de: null };
		const enc = mod && /^\d+$/.test(mod.key) ? encuentrosPorId.get(mod.key) : null;
		const sinLoc = mod && !CAMPOS.some((c) => mod.nombres[c]);
		const hermano = sinLoc ? hermanoBase.get(mod.base) : null;
		for (const c of CAMPOS) {
			// prioridad: criatura del journal (nombre del cliente) > localization
			// del propio módulo > localization de un módulo hermano (mismo
			// basename, otra era) > nombre del encuentro (canal B, último recurso
			// de los módulos sin localization, p. ej. BRD remake).
			if (crit?.nombres[c]) { nombres[c] = crit.nombres[c]; fuente[c] = "journal"; }
			else if (mod?.nombres[c]) { nombres[c] = mod.nombres[c]; fuente[c] = "dbm"; }
			else if (hermano?.[c]) { nombres[c] = hermano[c]; fuente[c] = "dbm-hermano"; }
			else if (enc?.[c]) { nombres[c] = enc[c]; fuente[c] = "journal-enc"; }
		}
		if (!mod) sinModule.push(cid);
		else if (!crit) { if (!(nombres.es || nombres.en)) sinNombre.push(cid); }
		if (!(nombres.es || nombres.en || nombres.fr || nombres.de)) continue;
		const previo = jefes[cid];
		if (previo) {
			for (const c of CAMPOS) nombres[c] = previo[c] ?? nombres[c];
			for (const c of CAMPOS) fuente[c] = previo.fuente?.[c] ?? fuente[c];
		}
		nombres.zonas = previo?.zonas ?? [];
		if (!nombres.zonas.includes(z.mapa)) nombres.zonas.push(z.mapa);
		jefes[cid] = nombres;
		if (fuente.es || fuente.en || fuente.fr || fuente.de) (jefes[cid].fuente = fuente);
	}
}
for (const cid of porCid.keys()) if (!zonasPack.some((z) => z.jefes.includes(cid))) { /* módulos fuera de zonas: no interesan aquí */ }

// --- 5. Overrides in-game (verificados por el dueño ante el CLIENTE real) ---
// La API puede traer traducciones desfasadas frente al cliente y el elemento 1
// de las entradas debe coincidir con lo que MUESTRA el cliente: aquí gana lo
// verificado in-game (lección 2026: Jergosh 11518 es "el Convocador" in-game,
// no el "el Conjurador" que devuelve el journal/API es_ES).
const OVERRIDES = {
	"11518": { es: "Jergosh el Convocador" }, // confirmado in-game por el dueño
	"4420": { en: "Overlord Ramtusk" }, // Wowhead confirmado por el dueño: el journal lleva el typo «Overload»
};
for (const [cid, ov] of Object.entries(OVERRIDES)) {
	if (!jefes[cid]) continue;
	for (const [campo, nombre] of Object.entries(ov)) {
		jefes[cid][campo] = nombre;
		jefes[cid].fuente[campo] = "override-in-game";
	}
}

// --- 5b. Informe y salida ---
const fichSalida = path.join(DIR, `jefes-${pack}.json`);
writeFileSync(fichSalida, JSON.stringify(jefes, null, "\t"));
const llenos = Object.values(jefes).filter((j) => j.es && j.en && j.fr && j.de).length;
console.log(`\nCorpus guardado: ${fichSalida}`);
console.log(`Jefes con nombre: ${Object.keys(jefes).length} (${llenos} en los 4 idiomas)`);
if (sinModule.length) console.log(`CIDs sin módulo DBM en el pack (${sinModule.length}): ${sinModule.join(", ")}`);
if (sinNombre.length) console.log(`CIDs con módulo pero sin criatura del journal (${sinNombre.length}) — nombre de DBM o a pedir: ${sinNombre.join(", ")}`);
const huecos = Object.entries(jefes).filter(([, j]) => !j.es || !j.en || !j.fr || !j.de);
for (const [cid, j] of huecos) console.log(`  incompleto ${cid}: ES=${j.es ?? "—"} EN=${j.en ?? "—"} FR=${j.fr ?? "—"} DE=${j.de ?? "—"}`);