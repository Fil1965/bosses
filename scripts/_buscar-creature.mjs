// scripts/_buscar-creature.mjs
// Sonda de la ruta de BÚSQUEDA de criaturas de la Game Data API
// (/data/wow/search/creature) — la única vía posible para nombres esES de
// jefes que NO están en el journal (jefes de mundo de MoP y lairs de
// Midnight), porque /data/wow/creature/{id} está muerto (404).
// El cliente api() añade "?namespace=..." y rompería el query propio de la
// búsqueda, así que se usa media(href): hace fetch con token a cualquier URL.
// Uso: node --env-file=.env scripts/_buscar-creature.mjs
import { createBlizzardClient, blizzEnv } from "./_blizzard-api.mjs";

// ids objetivo y su contexto (para saber qué mira cada uno)
const OBJETIVOS = new Map([
	["252959", "lair de Midnight (Nymrissa Wavecaller)"],
	["267861", "lair de Midnight (Kith'ix)"],
	["69161", "jefe de mundo MoP (Oondasta)"],
	["71952", "Celestial (Chi-Ji)"],
	["71954", "Celestial (Niuzao)"],
	["72057", "jefe de mundo MoP (Ordos)"],
	["71953", "Celestial (Xuen)"],
	["71955", "Celestial (Yu'lon)"],
]);

// término de búsqueda por nombre EN (la API filtra con name.en_US, parece
// coincidencia EXACTA: "Nymrissa" a secas no casa con "Nymrissa Wavecaller")
const BUSQUEDAS = ["Nymrissa Wavecaller", "Kith'ix", "Oondasta", "Chi-Ji", "Niuzao", "Ordos", "Xuen", "Yu'lon"];

const { clientId, clientSecret } = blizzEnv();
const cli = createBlizzardClient({ clientId, clientSecret, region: "eu", locale: "es_ES" });

for (const term of BUSQUEDAS) {
	const qs = new URLSearchParams({
		namespace: "static-eu",
		locale: "es_ES",
		"name.en_US": term,
		orderby: "id",
		_page: "1",
	});
	const url = `https://eu.api.blizzard.com/data/wow/search/creature?${qs}`;
	const { status, json } = await cli.media(url);
	if (status !== 200) {
		console.log(`Búsqueda "${term}": HTTP ${status}`);
		continue;
	}
	const todos = json.results ?? [];
	console.log(`Búsqueda "${term}" (${todos.length} resultados):`);
	for (const r of todos) {
		// volcado crudo: el campo name es un objeto (estructura por ver)
		console.log(`   ${JSON.stringify(r.data)}`);
	}
}
