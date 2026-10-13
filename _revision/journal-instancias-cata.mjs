// _revision/journal-instancias-cata.mjs
// Descarga journal-instance/{mapId} (es_ES + fr_FR) de las bandas Cata y
// guarda el JSON crudo en _revision/journal-inst/<id>.json + imprime su
// lista de encuentros (id | es | fr) para fijar índice ENC y nombres fr.
import { mkdirSync, writeFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { blizzEnv, createBlizzardClient } from "../scripts/_blizzard-api.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUT = path.join(__dirname, "journal-inst");
mkdirSync(OUT, { recursive: true });

const instancias = [757, 669, 671, 754, 720]; // Baradin, BWD, BoT, ToFW, Firelands
const { clientId, clientSecret } = blizzEnv();
const cli = createBlizzardClient({ clientId, clientSecret, region: "eu" });

for (const id of instancias) {
	try {
		const es = await cli.api(`/data/wow/journal-instance/${id}`);
		const fr = await cli.api(`/data/wow/journal-instance/${id}`, { locale: "fr_FR" });
		if (es.status !== 200) { console.log(`${id}: HTTP ${es.status}`); continue; }
		writeFileSync(path.join(OUT, `${id}.json`), JSON.stringify({ id: Number(id), es: es.json, fr: fr.json }, null, "\t"));
		console.log(`--- ${id} ${es.json?.name} | ${fr.json?.name} ---`);
		for (const en of es.json?.encounters ?? []) {
			const frEnc = (fr.json?.encounters ?? []).find((x) => x.id === en.id);
			console.log(`  ${en.id} | ${en.name} | ${frEnc?.name ?? "-"}`);
		}
	} catch (e) {
		console.log(`${id}: ERROR ${e.message}`);
	}
}