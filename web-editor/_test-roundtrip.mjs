// web-editor/_test-roundtrip.mjs
// Prueba de fidelidad del emisor: regenerar CADA entrada sin cambios debe
// producir el fichero byte a byte idéntico (round-trip). Si esto pasa, el
// escritor quirúrgico no puede corromper el estilo de la casa.
// Uso: node web-editor/_test-roundtrip.mjs [Bosses_Cata_es.lua ...]

import { readFileSync, writeFileSync, mkdtempSync } from "node:fs";
import { join } from "node:path";
import { tmpdir } from "node:os";
import { parseDoc, entryDetail, entryText } from "./_packs.mjs";

const files = process.argv.slice(2).length
	? process.argv.slice(2)
	: ["Bosses_Cata/Bosses_Cata_es.lua", "Bosses_Cata/Bosses_Cata_en.lua"];

let totalOk = 0;
let totalFail = 0;

for (const file of files) {
	const original = readFileSync(file, "utf8");
	const doc = parseDoc(original);
	const ids = [...doc.byId.keys()];
	console.log(`${file}: ${ids.length} entradas`);

	for (const id of ids) {
		const det = entryDetail(doc, id);
		const regenerated = entryText(doc, id, { name: det.name, lines: det.lines });
		if (regenerated === original) {
			totalOk++;
		} else {
			totalFail++;
			console.log(`  DIF id ${id} (${det.name}):`);
			const a = original.split(/\r?\n/);
			const b = regenerated.split(/\r?\n/);
			for (let i = 0; i < Math.max(a.length, b.length); i++) {
				if (a[i] !== b[i]) {
					console.log(`    línea ${i + 1} original: ${JSON.stringify(a[i] ?? "<fin>")}`);
					console.log(`    línea ${i + 1} nuevo   : ${JSON.stringify(b[i] ?? "<fin>")}`);
					break;
				}
			}
		}
	}
}

console.log(`\nRound-trip: ${totalOk} idénticas, ${totalFail} diferentes.`);
process.exit(totalFail ? 1 : 0);