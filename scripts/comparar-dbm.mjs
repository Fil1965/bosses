// scripts/comparar-dbm.mjs
// Compara el inventario de jefes de los módulos de DBM (_doc/DBM) con los
// packs Bosses_* y genera la propuesta de tablas ENC (encounterID → NPC id)
// con las que el core resuelve ENCOUNTER_START sin depender del diario (EJ),
// igual que hace DBM con SetEncounterID/SetCreatureID.
//
// Mapeo carpeta → pack por nombre (una expansión → su pack, en orden
// cronológico); las carpetas sin pack (WorldEvents, Brawlers, Party-Forever,
// Challenges...) forman un pool global que se contrasta con todos los packs
// por CID.
//
// Uso: npm run comparar-dbm
import { readFileSync, readdirSync, existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { parseEntries } from "./_parser-pack.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DBM = path.join(SRC, "_doc", "DBM");

// Carpetas de infraestructura sin módulos de jefes
const EXCLUIDAS = new Set(["DBM-Core", "DBM-GUI", "DBM-StatusBarTimers", "DBM-VPVEM", "DBM-Test", "DBM-Test-Dungeons"]);

const PACKS = [
	{ nombre: "Bosses_Vanilla", patron: /vanilla|azeroth/i },
	{ nombre: "Bosses_TBC", patron: /\bbc\b|burningcrusade|tbc|outlands/i },
	{ nombre: "Bosses_WotLK", patron: /wotlk|wrath/i },
	{ nombre: "Bosses_Cata", patron: /\bcata\b|cataclysm/i },
	{ nombre: "Bosses_MoP", patron: /pandaria|mop(?![a-z])/i },
	{ nombre: "Bosses_WoD", patron: /\bwod\b|warlords|draenor/i },
	{ nombre: "Bosses_Legion", patron: /legion|brokenisles/i },
	{ nombre: "Bosses_BfA", patron: /bfa|battleforazeroth/i },
	{ nombre: "Bosses_Shadowlands", patron: /shadowlands/i },
	{ nombre: "Bosses_Dragonflight", patron: /dragonflight|dragonisles/i },
	{ nombre: "Bosses_TWW", patron: /warwithin|khazalgar/i },
	{ nombre: "Bosses_Midnight", patron: /midnight/i },
];

// Recorre los .lua de un árbol de módulos DBM (ignora .toc y localizations)
function modulosDeDir(dir) {
	const lista = [];
	const rec = (d) => {
		for (const f of readdirSync(d, { withFileTypes: true })) {
			if (f.isDirectory()) rec(path.join(d, f.name));
			else if (f.name.endsWith(".lua") && !/^localization/i.test(f.name)) lista.push(path.join(d, f.name));
		}
	};
	rec(dir);
	return lista;
}

// Parsea un módulo DBM: devuelve null si no trae datos de registro
function parseModulo(file) {
	const text = readFileSync(file, "utf8");
	const mod = { fichero: path.basename(file, ".lua"), encs: [], cids: [], notas: [] };

	for (const linea of text.split(/\r?\n/)) {
		const t = linea.trim();
		if (t.startsWith("--")) continue; // llamados comentados: sin datos
		const mE = /SetEncounterID\(([^)]+)\)/.exec(t);
		if (mE) for (const m of mE[1].matchAll(/(\d+)/g)) mod.encs.push(m[1]);
		const mC = /SetCreatureID\(([^)]+)\)/.exec(t);
		if (mC) for (const m of mC[1].matchAll(/(\d+)/g)) mod.cids.push(m[1]);
	}
	// Notas aclaratorias tras SetCreatureID (p. ej. "254109 for Ezzorak")
	for (const m of text.matchAll(/SetCreatureID\([^)]*\)--(.+)/g)) {
		mod.notas = (mod.notas ?? []).concat(m[1].trim());
	}

	if (mod.encs.length === 0 && mod.cids.length === 0) return null;
	return mod;
}

// Normaliza un nombre para comparación difusa: minúsculas, solo alfanumérico
const normalizar = (s) => s.toLowerCase().replace(/[^a-z0-9]/g, "");

// ¿Coincidencia difusa de nombres? igualdad, o una contiene a la otra
// (solo si la corta tiene ≥6 caracteres y el ratio de longitudes ≤ 1.5,
// para que "Commander" no matchee "Commander Kroluk")
function nombresCoinciden(a, b) {
	const na = normalizar(a);
	const nb = normalizar(b);
	if (!na || !nb) return false;
	if (na === nb) return true;
	const corta = na.length <= nb.length ? na : nb;
	const larga = na.length <= nb.length ? nb : na;
	return corta.length >= 6 && larga.length / corta.length <= 1.5 && larga.includes(corta);
}

// --- Inventario DBM ----------------------------------------------------------
const inventario = [];
for (const carpeta of readdirSync(DBM, { withFileTypes: true })) {
	if (!carpeta.isDirectory() || EXCLUIDAS.has(carpeta.name)) continue;
	for (const fichero of modulosDeDir(path.join(DBM, carpeta.name))) {
		const mod = parseModulo(fichero);
		if (mod !== null) {
			mod.carpeta = carpeta.name;
			inventario.push(mod);
		}
	}
}

// --- Packs -------------------------------------------------------------------
function packData(nombre) {
	const esFile = path.join(SRC, nombre, `${nombre}_es.lua`);
	const enFile = path.join(SRC, nombre, `${nombre}_en.lua`);
	if (!existsSync(esFile) || !existsSync(enFile)) return null;
	return { es: parseEntries(esFile), en: parseEntries(enFile) };
}

console.log(`Inventario DBM: ${inventario.length} módulos de ${readdirSync(DBM, { withFileTypes: true }).filter((d) => d.isDirectory() && !EXCLUIDAS.has(d.name)).length} carpetas\n`);

// Carpeta → pack (o pool global)
function packsDeCarpeta(carpeta) {
	const packs = [];
	for (const p of PACKS) {
		if (p.patron.test(carpeta)) packs.push(p.nombre);
	}
	return packs; // [] = pool global (se contrasta con todos los packs)
}

for (const info of PACKS) {
	const nombre = info.nombre;
	const data = packData(nombre);
	if (data === null) {
		console.log(`== ${nombre}: SIN ficheros de idioma ==\n`);
		continue;
	}
	const packIds = new Set([...data.es.keys(), ...data.en.keys()]);
	console.log(`== ${nombre} (ES=${data.es.size}, EN=${data.en.size}) contra DBM ==`);

	const faltan = [];
	const propuestas = [];
	const vistos = new Set();

	for (const mod of inventario) {
		const mapeo = packsDeCarpeta(mod.carpeta);
		const esDeEstePack = mapeo.includes(nombre);
		const esGlobal = mapeo.length === 0;
		if (!esDeEstePack && !esGlobal) continue;

		const enPack = mod.cids.filter((c) => data.en.has(c) || data.es.has(c));

		// Faltantes: SOLO de las carpetas mapeadas a este pack (las del pool
		// global son contenido de otras expansiones, no huecos nuestros)
		if (esDeEstePack && mod.cids.length > 0 && enPack.length === 0) {
			const objetivo = mod.fichero;
			const candidatos = [...data.en.entries()].filter(([, nombreJefe]) => nombresCoinciden(objetivo, nombreJefe));
			faltan.push({ mod, candidatos });
			continue;
		}
		if (enPack.length === 0) continue; // pool sin eco en este pack: ignora

		for (const cid of mod.cids) vistos.add(cid);
		for (const enc of mod.encs) {
			const extra = mod.cids.filter((c) => !data.en.has(c) && !data.es.has(c));
			const existente = propuestas.find((p) => p.enc === enc);
			if (existente !== undefined) {
				// Varios mods pueden compartir encounter id: se fusionan los candidatos
				for (const id of enPack) if (!existente.packIds.includes(id)) existente.packIds.push(id);
				for (const id of extra) if (!existente.extra.includes(id)) existente.extra.push(id);
			} else {
				propuestas.push({ enc, mod, packIds: [...enPack], extra });
			}
		}
	}

	// Coincidencias (compacto)
	for (const mod of inventario) {
		const mapeo = packsDeCarpeta(mod.carpeta);
		if (!mapeo.includes(nombre) && mapeo.length > 0) continue;
		const enPack = mod.cids.filter((c) => data.en.has(c) || data.es.has(c));
		if (!enPack.length) continue;
		const nombres = mod.cids.map((c) => data.es.get(c) ?? data.en.get(c) ?? `(${c} sin entrada)`).join(" / ");
		console.log(`   [${mod.carpeta.replace(/^DBM-/, "")}] ${mod.fichero}  ENC=${mod.encs.join(",") || "-"}  ${nombres}`);
	}

	if (faltan.length) {
		console.log("\n   -- Jefes de DBM sin entrada en el pack:");
		for (const f of faltan) {
			const pista = f.candidatos.length
				? `  ¿alias por nombre (${f.candidatos.map((c) => c[0]).join(", ")} ${f.candidatos.map((c) => c[1]).join(", ")})?`
				: "";
			console.log(`      ENC=${f.mod.encs.join(",") || "-"} CID=${f.mod.cids.join(",") || "-"} [${f.mod.carpeta}/${f.mod.fichero}]${pista}`);
		}
	}

	if (propuestas.length) {
		console.log("\n   -- Propuesta de tabla ENC:");
		for (const p of propuestas) {
			const destino = [...p.packIds, ...p.extra].join(",");
			if (!destino) continue;
			console.log(`\tenc["${p.enc}"] = "${destino}"; -- ${p.mod.fichero}`);
		}
	}
	console.log("");
}