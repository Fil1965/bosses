// scripts/pendientes.mjs
// Índice GENERADO de traducciones pendientes por pack (no se mantiene a mano:
// los ficheros de idioma son la fuente de verdad y este script los compara).
//
// Por cada pack (Bosses_<X>_es.lua / Bosses_<X>_en.lua) informa de:
//   - IDs presentes en EN y ausentes en ES (y viceversa)
//   - entradas cuyo nombre en ES es idéntico al de EN (pendiente de traducir;
//     es la deuda histórica documentada de Bosses_TWW y Bosses_Midnight)
// Uso: npm run pendientes        (informe; exit 0 siempre)
//      npm run pendientes -- --estricto   (exit 1 si queda algo pendiente)
import { existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { parseEntries } from "./_parser-pack.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const PACKS = ["Bosses_Cata", "Bosses_Midnight", "Bosses_MoP", "Bosses_TWW"];
const strict = process.argv.includes("--estricto");

let totalPend = 0;
for (const pack of PACKS) {
	const esFile = path.join(SRC, pack, `${pack}_es.lua`);
	const enFile = path.join(SRC, pack, `${pack}_en.lua`);
	if (!existsSync(esFile) || !existsSync(enFile)) {
		console.log(`== ${pack}: FALTAN ficheros de idioma (${existsSync(esFile) ? "-" : "sin _es"}${existsSync(enFile) ? "" : ", sin _en"})`);
		totalPend++;
		continue;
	}
	const es = parseEntries(esFile);
	const en = parseEntries(enFile);
	const missingEs = [...en.keys()].filter((k) => !es.has(k));
	const missingEn = [...es.keys()].filter((k) => !en.has(k));
	const sinNombre = [...en.keys()].filter((k) => es.has(k) && en.get(k) === es.get(k));
	totalPend += missingEs.length + sinNombre.length;
	console.log(`== ${pack}: EN=${en.size} entradas, ES=${es.size} entradas`);
	if (missingEs.length) console.log(`   sin entrada ES: ${missingEs.join(", ")}`);
	if (missingEn.length) console.log(`   sin entrada EN: ${missingEn.join(", ")}`);
	console.log(`   nombre sin traducir (ES == EN): ${sinNombre.length}`);
	if (sinNombre.length) console.log(`   ${sinNombre.join(", ")}`);
}
console.log(totalPend === 0 ? "\nTodo traducido." : `\nPendientes totales: ${totalPend}`);
if (strict && totalPend > 0) process.exit(1);