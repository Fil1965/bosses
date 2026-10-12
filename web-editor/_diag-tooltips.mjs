// Sonda 2: ¿está 466556 en las 95? ¿y por su nombre es "Corriente ascendente flameante"?
import process from "node:process";
import { blizzEnv, createBlizzardClient } from "../scripts/_blizzard-api.mjs";

const env = blizzEnv();
const blizz = createBlizzardClient({ clientId: env.clientId, clientSecret: env.clientSecret, region: "eu", locale: "es_ES" });

async function busca(campo, term, idObjetivo) {
	const r = await blizz.api(`/data/wow/search/spell?namespace=static-eu&locale=es_ES&_page=1&${campo}=${encodeURIComponent(term)}`);
	const hits = (r.json?.results ?? []).map((h) => h.data ?? h);
	const pos = (function () { for (let i = 0; i < hits.length; i++) if (String(hits[i].id) === idObjetivo) return i; return -1; })();
	console.log(`[${campo}=${term}] ${r.status} hits=${hits.length} — ¿${idObjetivo}? ${pos >= 0 ? `SÍ en pos ${pos}` : "NO"}`);
	if (pos >= 0) console.log(`   es=${hits[pos].name?.es_ES} en=${hits[pos].name?.en_US} fr=${hits[pos].name?.fr_FR} de=${hits[pos].name?.de_DE}`);
	return { hits, pos };
}

const en = await busca("name.en_US", "Flaming Updraft", "466556");
// ¿algún hit con 'updraft' en el nombre EN (no solo el exacto)?
const updrafts = en.hits.filter((d) => String(d.name?.en_US ?? "").toLowerCase().includes("updraft"));
console.log(`hits con 'updraft' en EN: ${updrafts.length}`, updrafts.slice(0, 5).map((d) => `${d.id}=${d.name?.en_US}`).join(" | "));
await busca("name.es_ES", "Corriente ascendente flameante", "466556");
process.exit(0);