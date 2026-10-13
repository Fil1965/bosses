// _revision/descargar-dbm-cata.mjs
// Descarga los módulos Lua de DBM-Raids-Cata (repo DeadlyBossMods/DBM-Cataclysm)
// para extraer localmente SetEncounterID / SetCreatureID / spell ids.
import { mkdirSync, writeFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUT = path.join(__dirname, "dbm-cata");
const RAW = "https://raw.githubusercontent.com/DeadlyBossMods/DBM-Cataclysm/master/DBM-Raids-Cata";
const API = "https://api.github.com/repos/DeadlyBossMods/DBM-Cataclysm/git/trees/";
const CARPETAS = ["BaradinHold", "BastionTwilight", "BlackwingDescent", "DragonSoul", "Firelands", "ThroneFourWinds"];

async function getJson(url) {
	const r = await fetch(url, { headers: { "User-Agent": "bosses-review" } });
	if (!r.ok) throw new Error(`${url}: HTTP ${r.status}`);
	return r.json();
}

mkdirSync(OUT, { recursive: true });
let total = 0;
for (const carpeta of CARPETAS) {
	// resuelve la sha de la subcarpeta desde el árbol de DBM-Raids-Cata
	const raiz = await getJson(API + "2dd16b8af444a05787f03a5f52528d93b1708326");
	const sub = raiz.tree.find((x) => x.path === carpeta && x.type === "tree");
	const arbol = await getJson(sub.url);
	mkdirSync(path.join(OUT, carpeta), { recursive: true });
	for (const f of arbol.tree) {
		if (f.type !== "blob" || !f.path.endsWith(".lua")) continue;
		if (/^localization/.test(f.path)) continue; // traduccion de avisos, sin ids
		const r = await fetch(`${RAW}/${carpeta}/${f.path}`);
		if (!r.ok) { console.log(`  ! ${carpeta}/${f.path}: HTTP ${r.status}`); continue; }
		writeFileSync(path.join(OUT, carpeta, f.path), await r.text());
		total++;
	}
	console.log(`${carpeta}: listo`);
}
console.log(`${total} módulos descargados en _revision/dbm-cata/`);