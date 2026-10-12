// scripts/_buscar-encuentro.mjs
// Sonda: journal-encounter/{id} directo por ENC id. Los ENC de Midnight
// coinciden con los de la API (vienen de los módulos DBM del cliente
// actual), al revés que los de MoP/Cata (eras distintas). Sirve para
// encuentros cuya instancia NO está en el índice del journal (lairs).
// Uso: node --env-file=.env scripts/_buscar-encuentro.mjs 3379 3513 …
import { createBlizzardClient, blizzEnv } from "./_blizzard-api.mjs";

const ids = process.argv.slice(2).map(Number).filter((n) => Number.isFinite(n));
if (!ids.length) {
	console.error("Uso: node --env-file=.env scripts/_buscar-encuentro.mjs <encId>…");
	process.exit(1);
}

const { clientId, clientSecret } = blizzEnv();
const cli = createBlizzardClient({ clientId, clientSecret, region: "eu", locale: "es_ES" });

for (const id of ids) {
	const es = await cli.api(`/data/wow/journal-encounter/${id}`, { locale: "es_ES" });
	const en = await cli.api(`/data/wow/journal-encounter/${id}`, { locale: "en_US" });
	if (es.status !== 200) {
		console.log(`ENC ${id}: HTTP ${es.status}`);
		continue;
	}
	const criaturas = (es.json.creatures ?? []).map((c) => `${c.name} (id ${c.id})`).join(", ");
	console.log(`ENC ${id}: es "${es.json.name}" / en "${en.json?.name ?? "?"}" · criaturas esES: ${criaturas || "(ninguna)"}`);
}
