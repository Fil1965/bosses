// scripts/_buscar-jenc-busqueda.mjs
// Sonda: /data/wow/search/journal-encounter por nombre (vía media(href),
// igual que _buscar-creature.mjs) — para encuentros cuya instancia no
// aparece en el índice del journal (p. ej. el lair de Kith'ix).
// Uso: node --env-file=.env scripts/_buscar-jenc-busqueda.mjs "Kith'ix" …
import { createBlizzardClient, blizzEnv } from "./_blizzard-api.mjs";

const terminos = process.argv.slice(2);
if (!terminos.length) {
	console.error('Uso: node --env-file=.env scripts/_buscar-jenc-busqueda.mjs "Nombre" …');
	process.exit(1);
}

const { clientId, clientSecret } = blizzEnv();
const cli = createBlizzardClient({ clientId, clientSecret, region: "eu", locale: "es_ES" });

for (const term of terminos) {
	const qs = new URLSearchParams({
		namespace: "static-eu",
		locale: "es_ES",
		"name.en_US": term,
		orderby: "id",
		_page: "1",
	});
	const url = `https://eu.api.blizzard.com/data/wow/search/journal-encounter?${qs}`;
	const { status, json } = await cli.media(url);
	if (status !== 200) {
		console.log(`Búsqueda "${term}": HTTP ${status}`);
		continue;
	}
	const resultados = json.results ?? [];
	console.log(`Búsqueda "${term}" (${resultados.length} resultados):`);
	for (const r of resultados) {
		const d = r.data ?? r;
		const nombre = typeof d.name === "string" ? d.name : JSON.stringify(d.name);
		console.log(`   ${JSON.stringify({ id: d.id, name: nombre, categoria: d.category ?? d.instance ?? "?" })}`);
	}
}