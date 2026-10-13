// _revision/resumen.mjs — resumen compacto de journal/<id>.json:
// nombre es/fr + criaturas + árbol de secciones (título + id de sección +
// extracto del cuerpo) para redactar tácticas con enlaces |Hspell:-ID|.
// Uso: node _revision/resumen.mjs 167 168 ...
import { readFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const DIR = path.join(path.dirname(fileURLToPath(import.meta.url)), "journal");
const MAX = Number(process.env.MAXRES ?? 100);

function arbol(secs, nivel, out) {
	for (const s of secs ?? []) {
		const cuerpo = (s.body_text ?? "").replace(/\s+/g, " ").slice(0, MAX);
		out.push("  ".repeat(nivel) + `- ${s.title} [-${s.id}] ${cuerpo}`);
		arbol(s.sections, nivel + 1, out);
	}
}

for (const id of process.argv.slice(2).filter((x) => /^\d+$/.test(x))) {
	const j = JSON.parse(readFileSync(path.join(DIR, `${id}.json`), "utf8"));
	const out = [];
	out.push(`== ${id}: ${j.es.name} | fr: ${j.fr.name} | en: ${j.en.name}`);
	out.push(`   criaturas: ${(j.es.creatures ?? []).map((c) => `${c.name}(fr:${(j.fr.creatures ?? [])[0]?.name ?? j.fr.creatures?.find((fc) => fc.id === c.id)?.name})`).join(", ")}`);
	out.push(`   descripción: ${(j.es.description ?? "").replace(/\s+/g, " ").slice(0, 200)}`);
	arbol(j.es.sections, 1, out);
	console.log(out.join("\n") + "\n");
}