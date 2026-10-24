// scripts/nombres-blizzard.mjs
// Recolecta los nombres oficiales esES de los jefes de los packs vía la
// Game Data API de Blizzard, por la ruta journal (la única viva; el
// endpoint directo /data/wow/npc/{id} devuelve 404 en toda era — sondeo
// 2026-10-01). Genera por pack:
//   _nombres/<pack>.json          mapa npcId -> nombre esES (o IDENTICAL /
//                                 UNKNOWN), listo para scripts/_aplicar-eses.mjs
//   _nombres/informe-<pack>.txt   detalle: cambios, mismatches EN, zonas sin journal
//
// Join de zonas: journal-instance/{id}.map.id == el "Zona NNNN" de las
// cabeceras de los packs (verificado con MoP/TWW/Midnight); fallback por
// nombre esES normalizado (la Cata histórica usa area ids: SFK cabecera
// 209 != map 33, pero el nombre casa). Los jefes de mundo NO están en el
// journal: quedan UNKNOWN y los cubre Wowhead o captura in-game.
//
// Cachés en _nombres/_instancias.json y _nombres/_encuentros.json: la
// primera corrida descarga el índice entero (~213 instancias), las
// siguientes salen de disco (--refrescar las ignora).
//
// Uso: node --env-file=.env scripts/nombres-blizzard.mjs [--todos] [--pack Bosses_MoP] [--refrescar] [--region eu]
//   npm run blizzard-nombres            (solo pendientes: nombre ES == nombre EN)
//   npm run blizzard-nombres -- --todos (todas las entradas: verifica también los ES ya traducidos)

import { readFileSync, promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { parseEntries } from "./_parser-pack.mjs";
import { blizzEnv, createBlizzardClient } from "./_blizzard-api.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DIR = path.join(SRC, "_nombres");

const PACKS = [
	"Bosses_Vanilla", "Bosses_TBC", "Bosses_WotLK", "Bosses_Cata", "Bosses_MoP",
	"Bosses_WoD", "Bosses_Legion", "Bosses_BfA", "Bosses_Shadowlands",
	"Bosses_Dragonflight", "Bosses_TWW", "Bosses_Midnight", "Bosses_Forever",
];
const CONCURRENCIA = 6;

const argv = process.argv.slice(2);
const todos = argv.includes("--todos");
const refrescar = argv.includes("--refrescar");
const iPack = argv.indexOf("--pack");
const soloPack = iPack !== -1 ? argv[iPack + 1] : null;
const iRegion = argv.indexOf("--region");
const region = iRegion !== -1 ? argv[iRegion + 1] : "eu";

// Normaliza un nombre para emparejar: sin diacríticos, sin paréntesis
// ("(remasterizada)", "(S2)", "(Alleria Windrunner)"), "and"/"y" → "&",
// minúsculas, espacios colapsados.
function normalizar(s) {
	return (s ?? "")
		.normalize("NFD")
		.replace(/\p{Diacritic}/gu, "")
		.replace(/\s*\([^)]*\)/g, " ")
		.replace(/\s+/g, " ")
		.replace(/\b(and|y)\b/gi, "&")
		.trim()
		.toLowerCase();
}

async function porLotes(items, n, fn) {
	const salida = [];
	for (let i = 0; i < items.length; i += n) {
		salida.push(...(await Promise.all(items.slice(i, i + n).map(fn))));
	}
	return salida;
}

// Zonas por cabecera: "-- Nombre : Zona NNNN" y atribución de cada
// pack["id"] (inline o compartida) a la zona vigente.
function zonasYIds(fich) {
	const lineas = readFileSync(fich, "utf8").split(/\r?\n/);
	const zonas = new Map(); // zoneId -> nombre de la cabecera
	const idZona = new Map(); // npcId -> zoneId
	let zona = null;
	for (const ln of lineas) {
		const mz = /^\s*--\s*(.+?)\s*:\s*Zona\s+(\d+)/.exec(ln);
		if (mz) {
			zona = mz[2];
			if (!zonas.has(zona)) zonas.set(zona, mz[1]);
			continue;
		}
		const re = /pack\["(\d+)"\]/g;
		let m;
		while ((m = re.exec(ln)) !== null) if (zona) idZona.set(m[1], zona);
	}
	return { zonas, idZona };
}

async function main() {
	const packs = soloPack ? [soloPack] : PACKS;
	for (const p of packs) {
		readFileSync(path.join(SRC, p, `${p}_es.lua`)); // falla claro si no existe
	}

	const { clientId, clientSecret } = blizzEnv();
	const cliente = createBlizzardClient({ clientId, clientSecret, region });
	await fs.mkdir(DIR, { recursive: true });

	// --- 1. Instancias del journal (índice + detalles, con caché) ---
	const fichInst = path.join(DIR, "_instancias.json");
	let instancias = null;
	if (!refrescar) {
		try { instancias = JSON.parse(await fs.readFile(fichInst, "utf8")); } catch { instancias = null; }
	}
	if (!instancias) {
		console.log("Descargando el índice de instancias del journal…");
		const r = await cliente.api("/data/wow/journal-instance/index");
		if (r.status !== 200 || !Array.isArray(r.json?.instances)) throw new Error(`journal-instance/index: HTTP ${r.status}`);
		const lista = r.json.instances;
		console.log(`  ${lista.length} instancias; descargando detalles (lotes de ${CONCURRENCIA})…`);
		let ok = 0;
		const detalle = await porLotes(lista, CONCURRENCIA, async (ins) => {
			try {
				const d = await cliente.api(`/data/wow/journal-instance/${ins.id}`);
				if (d.status !== 200) return null;
				ok++;
				if (ok % 40 === 0) console.log(`    … ${ok}/${lista.length}`);
				return {
					id: ins.id,
					nombre: d.json?.name ?? ins.name ?? "",
					mapa: d.json?.map?.id ?? null,
					encuentros: (d.json?.encounters ?? []).map((e) => ({ id: e.id, nombre: e.name })),
				};
			} catch { return null; }
		});
		instancias = detalle.filter(Boolean);
		await fs.writeFile(fichInst, JSON.stringify(instancias, null, "\t"));
		console.log(`  Instancias cacheadas: ${instancias.length}/${lista.length} en ${path.basename(fichInst)}`);
	}

	// --- 2. Zonas objetivo de los packs en juego ---
	const zonasPack = new Map(); // zoneId -> { nombre, instancia }
	const datosPack = new Map(); // pack -> { es, en, idZona }
	for (const p of packs) {
		const es = parseEntries(path.join(SRC, p, `${p}_es.lua`));
		const en = parseEntries(path.join(SRC, p, `${p}_en.lua`));
		const { zonas, idZona } = zonasYIds(path.join(SRC, p, `${p}_es.lua`));
		datosPack.set(p, { es, en, idZona });
		for (const [z, nombre] of zonas) {
			if (!zonasPack.has(z)) zonasPack.set(z, { nombre, instancias: [] });
		}
	}

	// --- 3. Join zona -> instancias (map.id Y nombre esES) ---
	// Se toman TODAS las que casen por cualquiera de las dos vías: los ids
	// de zona históricos de Cata son area ids y colisionan con map ids de
	// otras instancias (SFK: cabecera 209 = area de SFK pero map 209 es
	// Zul'Farrak); el nombre esES de la cabecera rescata la instancia buena.
	const sinJournal = [];
	for (const [z, info] of zonasPack) {
		const porMapa = instancias.filter((i) => i.mapa === Number(z));
		const porNombre = instancias.filter((i) => !porMapa.includes(i) && normalizar(i.nombre) === normalizar(info.nombre));
		info.instancias = [...porMapa, ...porNombre];
		if (!info.instancias.length) sinJournal.push(`${z} (${info.nombre})`);
	}

	// --- 4. Encuentros de las instancias objetivo (es_ES + en_US, con caché) ---
	const fichEnc = path.join(DIR, "_encuentros.json");
	let encuentros = {};
	if (!refrescar) {
		try { encuentros = JSON.parse(await fs.readFile(fichEnc, "utf8")); } catch { encuentros = {}; }
	}
	const faltan = [];
	for (const info of zonasPack.values()) {
		for (const ins of info.instancias ?? []) {
			for (const e of ins.encuentros) if (!encuentros[e.id]) faltan.push(e);
		}
	}
	if (faltan.length) {
		console.log(`Descargando ${faltan.length} encuentros (es_ES + en_US)…`);
		let ok = 0;
		await porLotes(faltan, CONCURRENCIA, async (e) => {
			try {
				const es = await cliente.api(`/data/wow/journal-encounter/${e.id}`);
				const en = await cliente.api(`/data/wow/journal-encounter/${e.id}`, { locale: "en_US" });
				if (es.status !== 200 || en.status !== 200) return;
				encuentros[e.id] = {
					es: es.json?.name ?? e.nombre,
					en: en.json?.name ?? "",
					criaturas: (es.json?.creatures ?? []).map((c, i) => ({
						id: c.id,
						es: c.name,
						en: en.json?.creatures?.[i]?.name ?? null,
					})),
				};
				ok++;
				if (ok % 40 === 0) console.log(`    … ${ok}/${faltan.length}`);
			} catch { /* queda pendiente para la próxima corrida */ }
		});
		await fs.writeFile(fichEnc, JSON.stringify(encuentros, null, "\t"));
		console.log(`  Encuentros nuevos cacheados: ${ok}/${faltan.length}`);
	}

	// --- 5. Emparejamiento por nombre dentro de la zona ---
	// El journal NO expone los NPC ids del juego: creatures[].id son ids
	// internos de journal (Garalon=1405 != 63191) y los encounter id de la
	// API difieren de la era de los packs (Nalorakk API 187 != pack 1190).
	// El join viable es por NOMBRE de encuentro (o de sus criaturas) dentro
	// de la zona de cada pack; los restos quedan en el informe para curarlos.
	const igual = (a, b) => {
		const na = normalizar(a);
		const nb = normalizar(b);
		return na !== "" && na === nb;
	};

	// --- 6. Mapas por pack ---
	let totAplicar = 0, totIdent = 0, totSinZona = 0, totSinPar = 0;
	for (const p of packs) {
		const { es, en, idZona } = datosPack.get(p);
		const ids = todos ? [...es.keys()] : [...es.keys()].filter((id) => es.get(id) === en.get(id));
		const mapa = {};
		const cambios = [], idem = [], sinZona = [], avisosEN = [];
		const sinParPorZona = new Map(); // zoneId -> [{ id, actual }]
		const usadosPorZona = new Map(); // zoneId -> Set(encId)
		for (const id of ids) {
			const actual = es.get(id);
			const nombreEn = en.get(id);
			const zona = idZona.get(id);
			const info = zona ? zonasPack.get(zona) : null;
			const cands = [];
			for (const ins of info?.instancias ?? []) {
				for (const e of ins.encuentros) {
					if (encuentros[e.id]) cands.push({ encId: e.id, ...encuentros[e.id] });
				}
			}
			if (!cands.length) {
				mapa[id] = "UNKNOWN";
				sinZona.push(`${id}  ${actual}  ${zona ? `(zona ${zona} sin instancia en el journal)` : "(sin zona en el pack — jefe de mundo?)"}`);
				continue;
			}
			// 1) por nombre de encuentro: el nombre actual de la tabla ES,
			//    o el de la tabla EN si difiere (rescata ES mal traducidos)
			let hit = cands.find((d) => igual(d.es, actual) || igual(d.en, actual)
				|| (nombreEn && (igual(d.en, nombreEn) || igual(d.es, nombreEn))));
			// 2) por nombre de las criaturas del encuentro
			if (!hit) {
				hit = cands.find((d) => (d.criaturas ?? []).some((c) => igual(c.es, actual) || igual(c.en, actual)
					|| (nombreEn && (igual(c.en, nombreEn) || igual(c.es, nombreEn)))));
			}
			if (!hit) {
				mapa[id] = "UNKNOWN";
				if (!sinParPorZona.has(zona)) sinParPorZona.set(zona, []);
				sinParPorZona.get(zona).push({ id, actual });
				continue;
			}
			if (!usadosPorZona.has(zona)) usadosPorZona.set(zona, new Set());
			usadosPorZona.get(zona).add(hit.encId);
			if (hit.es === actual) {
				mapa[id] = "IDENTICAL";
				idem.push(`${id}  ${actual}`);
			} else {
				mapa[id] = hit.es;
				cambios.push(`${id}: "${actual}" -> "${hit.es}"   [encuentro EN: ${hit.en}]`);
			}
			if (nombreEn && hit.en && nombreEn !== hit.en) avisosEN.push(`${id}: pack EN "${nombreEn}" != API en_US "${hit.en}"`);
		}
		const nSinPar = [...sinParPorZona.values()].reduce((n, l) => n + l.length, 0);
		// informe de restos por zona (para curar a mano)
		const seccionSinPar = [];
		for (const [zona, lista] of sinParPorZona) {
			const info = zonasPack.get(zona);
			const encs = [];
			for (const ins of info?.instancias ?? []) {
				for (const e of ins.encuentros) {
					if (encuentros[e.id]) encs.push(`"${encuentros[e.id].es}" [${encuentros[e.id].en}]`);
				}
			}
			seccionSinPar.push(`Zona ${zona} (${info?.nombre}):`);
			for (const it of lista) seccionSinPar.push(`   ${it.id}  "${it.actual}"`);
			seccionSinPar.push(`   encuentros de la zona: ${encs.join("; ") || "sin datos"}`);
		}
		await fs.writeFile(path.join(DIR, `${p}.json`), JSON.stringify(mapa, null, "\t"));
		const rep = [
			`Informe ${p} — nombres esES vía Blizzard API (journal, emparejamiento por nombre en zona)`,
			`Modo: ${todos ? "--todos (todas las entradas)" : "pendientes (nombre ES == nombre EN)"} | ids: ${ids.length}`,
			``,
			`== A APLICAR (${cambios.length}) ==`,
			...cambios,
			``,
			`== IDENTICAL — esES ya correcto (${idem.length}) ==`,
			...idem,
			``,
			`== SIN ZONA / zona sin journal — fuera de la API (${sinZona.length}) ==`,
			...sinZona,
			``,
			`== SIN EMPAREJAR POR NOMBRE (${nSinPar}) — curar a mano ==`,
			...seccionSinPar,
			``,
			`== Avisos EN: el nombre EN del pack difiere del de la API (${avisosEN.length}) ==`,
			...avisosEN,
			``,
		].join("\n");
		await fs.writeFile(path.join(DIR, `informe-${p}.txt`), rep);
		totAplicar += cambios.length;
		totIdent += idem.length;
		totSinZona += sinZona.length;
		totSinPar += nSinPar;
		console.log(`${p}: ${cambios.length} a aplicar, ${idem.length} identical, ${sinZona.length} sin zona, ${nSinPar} sin emparejar (${ids.length} ids)`);
	}
	if (sinJournal.length) console.log(`Zonas sin instancia en el journal: ${sinJournal.join(", ")}`);
	console.log(`\nTotales: ${totAplicar} a aplicar, ${totIdent} identical, ${totSinZona} sin zona, ${totSinPar} sin emparejar.`);
	console.log("Aplicar con: node scripts/_aplicar-eses.mjs <pack> _nombres/<pack>.json");
}

main().catch((err) => {
	console.error("Error:", err.message);
	process.exit(1);
});