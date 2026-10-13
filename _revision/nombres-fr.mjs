// _revision/nombres-fr.mjs
// Variante de scripts/nombres-blizzard.mjs para nombres OFICIALES frFR de los
// jefes de los packs (relleno de los ficheros _fr.lua, 2026-10).
// Reutiliza las cachés _nombres/_instancias.json y _nombres/_encuentros.json
// (les añade el campo "fr" a los encuentros; compatible con el script dueño).
// Salida: _nombres/fr-<pack>.json  id -> { fr, criaturas: [fr...] } | UNKNOWN
import { readFileSync, writeFileSync, existsSync, mkdirSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { parseEntries } from "../scripts/_parser-pack.mjs";
import { blizzEnv, createBlizzardClient } from "../scripts/_blizzard-api.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DIR = path.join(SRC, "_nombres");
const PACKS = ["Bosses_Cata", "Bosses_Midnight", "Bosses_MoP", "Bosses_TWW"];
const CONCURRENCIA = 6;

function normalizar(s) {
	return (s ?? "")
		.normalize("NFD")
		.replace(/\p{Diacritic}/gu, "")
		.replace(/\s*\([^)]*\)/g, " ")
		.replace(/\s+/g, " ")
		.replace(/\b(and|y|et)\b/gi, "&")
		.trim()
		.toLowerCase();
}
const igual = (a, b) => { const na = normalizar(a), nb = normalizar(b); return na !== "" && na === nb; };

async function porLotes(items, n, fn) {
	const salida = [];
	for (let i = 0; i < items.length; i += n) salida.push(...(await Promise.all(items.slice(i, i + n).map(fn))));
	return salida;
}

function zonasYIds(fich) {
	const lineas = readFileSync(fich, "utf8").split(/\r?\n/);
	const zonas = new Map(), idZona = new Map();
	let zona = null;
	for (const ln of lineas) {
		const mz = /^\s*--\s*(.+?)\s*:\s*Zona\s+(\d+)/.exec(ln);
		if (mz) { zona = mz[2]; if (!zonas.has(zona)) zonas.set(zona, mz[1]); continue; }
		const re = /pack\["(\d+)"\]/g;
		let m;
		while ((m = re.exec(ln)) !== null) if (zona) idZona.set(m[1], zona);
	}
	return { zonas, idZona };
}

async function main() {
	const { clientId, clientSecret } = blizzEnv();
	const cliente = createBlizzardClient({ clientId, clientSecret, region: "eu" });
	mkdirSync(DIR, { recursive: true });

	// 1. índice de instancias (caché del script dueño)
	const instancias = JSON.parse(readFileSync(path.join(DIR, "_instancias.json"), "utf8"));

	// 2. encuentros cacheados + descarga de los que falten (es/en ya; añade fr)
	const fichEnc = path.join(DIR, "_encuentros.json");
	const encuentros = JSON.parse(readFileSync(fichEnc, "utf8"));

	const zonasPack = new Map(); // zoneId -> { nombre, instancias }
	const datosPack = new Map();
	for (const p of PACKS) {
		const es = parseEntries(path.join(SRC, p, `${p}_es.lua`));
		const en = parseEntries(path.join(SRC, p, `${p}_en.lua`));
		const { zonas, idZona } = zonasYIds(path.join(SRC, p, `${p}_es.lua`));
		datosPack.set(p, { es, en, idZona });
		for (const [z, nombre] of zonas) if (!zonasPack.has(z)) zonasPack.set(z, { nombre, instancias: [] });
	}
	for (const [z, info] of zonasPack) {
		const porMapa = instancias.filter((i) => i.mapa === Number(z));
		const porNombre = instancias.filter((i) => !porMapa.includes(i) && normalizar(i.nombre) === normalizar(info.nombre));
		info.instancias = [...porMapa, ...porNombre];
	}

	const faltan = new Set();
	for (const info of zonasPack.values()) for (const ins of info.instancias) for (const e of ins.encuentros) faltan.add(e.id);
	// fr de TODOS los ya cacheados también
	for (const id of Object.keys(encuentros)) faltan.add(id);
	console.log(`Descargando encuentros (es/en/fr): ${faltan.size} ids…`);
	let ok = 0;
	await porLotes([...faltan], CONCURRENCIA, async (id) => {
		try {
			const fr = await cliente.api(`/data/wow/journal-encounter/${id}`, { locale: "fr_FR" });
			if (fr.status !== 200) return;
			if (!encuentros[id]) {
				const es = await cliente.api(`/data/wow/journal-encounter/${id}`);
				const en = await cliente.api(`/data/wow/journal-encounter/${id}`, { locale: "en_US" });
				if (es.status !== 200 || en.status !== 200) return;
				encuentros[id] = {
					es: es.json?.name ?? "",
					en: en.json?.name ?? "",
					criaturas: (es.json?.creatures ?? []).map((c, i) => ({
						id: c.id, es: c.name, en: en.json?.creatures?.[i]?.name ?? null,
					})),
				};
			}
			encuentros[id].fr = fr.json?.name ?? "";
			encuentros[id].criaturasFr = (fr.json?.creatures ?? []).map((c) => c.name);
			ok++;
			if (ok % 60 === 0) console.log(`    … ${ok}/${faltan.size}`);
		} catch { /* queda pendiente */ }
	});
	writeFileSync(fichEnc, JSON.stringify(encuentros, null, "\t"));
	console.log(`  ${ok}/${faltan.size} encuentros con fr.`);

	// 3. emparejamiento por zona + barrido global por nombre
	const todosEnc = instancias.flatMap((i) => i.encuentros.map((e) => ({ inst: i, e })));
	for (const p of PACKS) {
		const { es, en, idZona } = datosPack.get(p);
		const mapa = {};
		for (const id of es.keys()) {
			const nomEs = es.get(id), nomEn = en.get(id);
			const zona = idZona.get(id);
			let cands = [];
			for (const ins of (zona ? zonasPack.get(zona)?.instancias ?? [] : [])) for (const e of ins.encuentros) if (encuentros[e.id]) cands.push(encuentros[e.id]);
			// barrido global si la zona no lo dio
			if (!cands.length || true) {
				for (const { inst, e } of todosEnc) {
					if (encuentros[e.id] && !cands.includes(encuentros[e.id])) cands.push(encuentros[e.id]);
				}
			}
			let hit = cands.find((d) => igual(d.es, nomEs) || (nomEn && igual(d.en, nomEn)));
			if (!hit) hit = cands.find((d) => (d.criaturas ?? []).some((c) => igual(c.es, nomEs) || (nomEn && igual(c.en, nomEn))));
			if (!hit) { mapa[id] = "UNKNOWN"; continue; }
			mapa[id] = { fr: hit.fr ?? "", criaturas: hit.criaturasFr ?? [] };
		}
		writeFileSync(path.join(DIR, `fr-${p}.json`), JSON.stringify(mapa, null, "\t"));
		const unk = Object.entries(mapa).filter(([, v]) => v === "UNKNOWN").length;
		console.log(`${p}: ${es.size} ids, ${unk} UNKNOWN (a curar a mano)`);
	}
}
main().catch((e) => { console.error("Error:", e.message); process.exit(1); });
