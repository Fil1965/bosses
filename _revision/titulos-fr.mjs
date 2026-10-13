// _revision/titulos-fr.mjs
// Con el caché de _revision/journal/<id>.json imprime el árbol de secciones
// en FR: "<id> <titulo>" con indentado. Uso: node _revision/titulos-fr.mjs 140 339 ...
import { readFileSync, existsSync } from "node:fs";
import path from "node:path";

for (const idArg of process.argv.slice(2)) {
	const p = path.join("_revision", "journal", `${idArg}.json`);
	if (!existsSync(p)) { console.log(`== ${idArg}: sin caché`); continue; }
	const j = JSON.parse(readFileSync(p, "utf8"));
	console.log(`== ${idArg}: ES ${j.es?.name} | FR ${j.fr?.name}`);
	const pinta = (secciones, nivel) => {
		for (const s of secciones ?? []) {
			console.log(`  ${"  ".repeat(nivel)}${s.id} ${s.title}`);
			pinta(s.sections, nivel + 1);
		}
	};
	pinta(j.fr?.sections, 0);
}