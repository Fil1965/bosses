// _revision/titulos.mjs — solo títulos/ids de sección del diario (ES + EN), sin cuerpos.
// Uso: node _revision/titulos.mjs 192 193 194 ...
import { readFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const ids = process.argv.slice(2).map(Number);

function imprimir(titulo, secciones, nivel) {
	if (!secciones) return;
	for (const s of secciones) {
		console.log(`${"  ".repeat(nivel)}-${s.id} ${s.title ?? "-"}`);
		imprimir("", s.sections, nivel + 1);
	}
}

for (const id of ids) {
	const j = JSON.parse(readFileSync(path.join(__dirname, "journal", `${id}.json`), "utf8"));
	console.log(`== ${id}: ES ${j.es.name} | EN ${j.en.name} | FR ${j.fr.name}`);
	for (const lng of ["es", "en"]) {
		console.log(`-- ${lng.toUpperCase()} --`);
		imprimir("", j[lng].sections, 1);
	}
}