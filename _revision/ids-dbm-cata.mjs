// Extrae EncounterID y CreatureID de los módulos descargados de DBM-Raids-Cata.
import { readdirSync, readFileSync } from "node:fs";
import path from "node:path";

function walk(d) {
	return readdirSync(d, { withFileTypes: true }).flatMap((e) => (e.isDirectory() ? walk(path.join(d, e.name)) : [path.join(d, e.name)]));
}
for (const f of walk("_revision/dbm-cata")) {
	const t = readFileSync(f, "utf8");
	const enc = [...t.matchAll(/EncounterID\s*\(\s*([\d,\s]+)\)/g)].map((m) => m[1].replace(/\s+/g, ""));
	const cid = [...t.matchAll(/CreatureID\s*\(\s*([\d,\s]+)\)/g)].map((m) => m[1].replace(/\s+/g, ""));
	const en = [...t.matchAll(/RegisterEnableMob\s*\(\s*([\d]+)\s*\)/g)].map((m) => m[1]);
	console.log(`${path.relative("_revision/dbm-cata", f)}\n   ENC=${enc.join("|") || "-"}  CID=${cid.join("|") || "-"}${en.length ? "  MOB=" + en.join(",") : ""}`);
}