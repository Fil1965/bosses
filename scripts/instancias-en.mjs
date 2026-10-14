// scripts/instancias-en.mjs
// Backfill de los nombres EN de las instancias en _nombres/_instancias.json.
// Añade el campo "en" a cada instancia vía la API de Blizzard
// (journal-instance/{id} con locale en_US); el campo "nombre" esES queda
// tal cual. El generador de zonas usa "en ?? nombre" para el campo nombre.
//
// Requiere credenciales en .env (blizzEnv). ~1 petición de detalle por
// instancia, en lotes (igual que la primera corrida de nombres-blizzard).
//
// Uso: node --env-file=.env scripts/instancias-en.mjs [--refrescar] [--region eu]
//   --refrescar  re-pide el nombre EN aunque ya esté rellenado (Blizzard renombró algo)

import { readFileSync, promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { blizzEnv, createBlizzardClient } from "./_blizzard-api.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DIR = path.join(SRC, "_nombres");
const CONCURRENCIA = 6;

const argv = process.argv.slice(2);
const refrescar = argv.includes("--refrescar");
const iRegion = argv.indexOf("--region");
const region = iRegion !== -1 ? argv[iRegion + 1] : "eu";

async function porLotes(items, n, fn) {
	const salida = [];
	for (let i = 0; i < items.length; i += n) {
		salida.push(...(await Promise.all(items.slice(i, i + n).map(fn))),);
	}
	return salida;
}

const { clientId, clientSecret } = blizzEnv();
const cliente = createBlizzardClient({ clientId, clientSecret, region });

const fich = path.join(DIR, "_instancias.json");
const instancias = JSON.parse(await fs.readFile(fich, "utf8"));
const objetivo = refrescar ? instancias : instancias.filter((i) => !i.en);
console.log(`Instancias totales: ${instancias.length}; a rellenar "en": ${objetivo.length} (${refrescar ? "--refrescar" : "solo sin EN"})`);

let ok = 0;
let falla = 0;
await porLotes(objetivo, CONCURRENCIA, async (ins) => {
	try {
		const r = await cliente.api(`/data/wow/journal-instance/${ins.id}`, { locale: "en_US" });
		if (r.status === 200 && r.json?.name) {
			ins.en = r.json.name;
			ok++;
		} else {
			ins.en = "";
			falla++;
		}
		if (ok % 40 === 0) console.log(`  … nombres EN rellenos: ${ok}`);
	} catch {
		ins.en = "";
		falla++;
	}
});

await fs.writeFile(fich, JSON.stringify(instancias, null, "\t"));
console.log(`Listo: "en" rellenado en ${ok}/${objetivo.length} (${falla} sin nombre EN en la API; quedan como fallback esES)`);