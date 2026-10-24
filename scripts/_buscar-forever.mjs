// scripts/_buscar-forever.mjs
// Sonda de la API de Blizzard para los 24 jefes de WoW Forever:
// busca el NPC id por nombre EN en los namespaces disponibles.
// Uso: node --env-file=.env scripts/_buscar-forever.mjs
import { createBlizzardClient, blizzEnv } from "./_blizzard-api.mjs";

const NOMBRES = [
	// The Shaper's Terrace / City of Dalaran (2959)
	"Arcane Anomaly", "Fel Ancient", "Mana Devourer", "Mana Elemental", "Unstable Sentinel",
	"Shade of the Archmage", "Lyn the Ignored", "Atrexis the Grave Knight", "Mana Wraith",
	// Krol'dok Stronghold / Excavation Site (2998)
	"Saltspine", "Shadetooth", "Highland Horror", "Relic Guardian",
	// Ruins of Lordaeron (2999)
	"Witherfang", "The Abandoned", "The Butcher", "Rath'mael", "Lordaeron Captain",
	"Viktor the Vile", "Bjork",
	// Hall of Thanes (3065)
	"Faldrim Anvilmar", "Plunder", "Infurnus", "Durgen Dirgehammer",
];

const NAMESPACES = [
	"static-eu", "static-classic-eu", "static-classic-era-eu", "static-classic-wrath-eu",
	"static-classic-mists-eu", "static-camelot-eu", "static-forever-eu",
];

const { clientId, clientSecret } = blizzEnv();
const cli = createBlizzardClient({ clientId, clientSecret, region: "eu", locale: "en_US" });

async function buscar(ns, term) {
	const qs = new URLSearchParams({
		namespace: ns,
		locale: "en_US",
		"name.en_US": term,
		orderby: "id",
		_page: "1",
	});
	const { status, json } = await cli.media(`https://eu.api.blizzard.com/data/wow/search/creature?${qs}`);
	if (status !== 200) return { status, res: [] };
	return { status, res: json.results ?? [] };
}

// 1) qué namespace responde y cuál tiene datos
console.log("== namespaces ==");
for (const ns of NAMESPACES) {
	const r = await buscar(ns, "Shade of the Archmage");
	console.log(`${ns}: HTTP ${r.status} · ${r.res.length} resultado(s)`);
}

// 2) búsqueda completa en el namespace que responda
for (const ns of NAMESPACES) {
	const r = await buscar(ns, "Shade of the Archmage");
	if (r.status !== 200) continue;
	console.log(`\n== búsqueda completa en ${ns} ==`);
	for (const term of NOMBRES) {
		const b = await buscar(ns, term);
		if (b.status !== 200) { console.log(`  ${term}: HTTP ${b.status}`); continue; }
		if (!b.res.length) { console.log(`  ${term}: SIN RESULTADO`); continue; }
		for (const x of b.res) {
			const d = x.data ?? {};
			console.log(`  ${term} -> id ${d.id} · "${d.name?.en_US ?? d.name}"`);
		}
	}
	break;
}
