// _revision/journal-secciones.mjs
// Descarga journal-encounter/{id} (es_ES + fr_FR + en_US) para una lista de
// ids y guarda el JSON crudo en _revision/journal/<id>.json — para redactar
// tácticas de contenido nuevo con spells oficiales y nombres localizados.
// Uso: node --env-file=.env _revision/journal-secciones.mjs 1029 1082 ...
import { mkdirSync, writeFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { blizzEnv, createBlizzardClient } from "../scripts/_blizzard-api.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUT = path.join(__dirname, "journal");
mkdirSync(OUT, { recursive: true });

const ids = process.argv.slice(2).filter((x) => /^\d+$/.test(x));
if (!ids.length) {
	console.error("Uso: journal-secciones.mjs <encounterID>...");
	process.exit(1);
}
const { clientId, clientSecret } = blizzEnv();
const cli = createBlizzardClient({ clientId, clientSecret, region: "eu" });

for (const id of ids) {
	try {
		const es = await cli.api(`/data/wow/journal-encounter/${id}`);
		const fr = await cli.api(`/data/wow/journal-encounter/${id}`, { locale: "fr_FR" });
		const en = await cli.api(`/data/wow/journal-encounter/${id}`, { locale: "en_US" });
		if (es.status !== 200) { console.log(`${id}: HTTP ${es.status}`); continue; }
		const out = { id: Number(id), es: es.json, fr: fr.json, en: en.json };
		writeFileSync(path.join(OUT, `${id}.json`), JSON.stringify(out, null, "\t"));
		console.log(`${id}: ${es.json?.name} | ${fr.json?.name} | ${en.json?.name}`);
	} catch (e) {
		console.log(`${id}: ERROR ${e.message}`);
	}
}
