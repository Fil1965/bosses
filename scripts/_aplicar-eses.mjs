// scripts/_aplicar-eses.mjs
// Aplica una pasada de nombres esES a un pack: lee un mapa JSON
// { "<npcId>": "<nombre esES>", ... } y reescribe el elemento 1 (el
// nombre) de las entradas correspondientes en Bosses_<pack>_es.lua.
// Los valores "IDENTICAL" y "UNKNOWN" se saltan. Solo toca la tabla ES
// (elemento 1); nunca las tácticas ni el fichero EN.
//
// Uso: node scripts/_aplicar-eses.mjs <pack> <mapa.json>
//   p. ej.: node scripts/_aplicar-eses.mjs Bosses_Midnight nombres.json

import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");

const SALTAR = new Set(["IDENTICAL", "UNKNOWN", ""]);

async function main() {
	const pack = process.argv[2];
	const mapaFich = process.argv[3];
	if (!pack || !mapaFich) {
		console.error("Uso: node scripts/_aplicar-eses.mjs <pack> <mapa.json>");
		process.exit(1);
	}
	const fich = path.join(SRC, pack, `${pack}_es.lua`);
	const mapa = JSON.parse(await fs.readFile(path.resolve(mapaFich), "utf8"));
	const texto = await fs.readFile(fich, "utf8");
	const lineas = texto.split("\n");

	// Primera pasada: por cada npcId del mapa, localizar su línea de entrada
	// y el bloque bos vigente (para las entradas compartidas pack["id"] = bos).
	let bosNombreActual = null; // línea del último `bos = {` (indice)
	let bosLineaIdx = null;
	const cambiar = new Map(); // índice de línea -> [nombreViejo, nombreNuevo]
	const porId = new Map(); // npcId -> { idx, compartido }

	lineas.forEach((linea, i) => {
		const bosMatch = linea.match(/^bos\s*=\s*\{/);
		if (bosMatch) {
			bosLineaIdx = i;
		}
		// entradas inline: pack["id"] = { "Nombre", ...
		const inline = linea.match(/^pack\["(\d+)"\]\s*=\s*\{\s*"([^"]*)"/);
		if (inline) {
			porId.set(inline[1], { idx: i, compartido: false });
			return;
		}
		// entradas compartidas: pack["id"] = bos; (puede haber varias en una línea)
		const patron = /pack\["(\d+)"\]\s*=\s*bos/g;
		let m;
		while ((m = patron.exec(linea)) !== null) {
			if (!porId.has(m[1])) {
				porId.set(m[1], { idx: bosLineaIdx, compartido: true });
			}
		}
	});

	let aplicados = 0;
	let identicos = 0;
	let ausentes = 0;
	const avisos = [];

	for (const [id, nombre] of Object.entries(mapa)) {
		if (SALTAR.has(nombre)) { identicos++; continue; }
		const info = porId.get(id);
		if (!info || info.idx === null || info.idx === undefined) { ausentes++; continue; }
		if (cambiar.has(info.idx)) {
			// varias IDs del mismo bos con nombres distintos: aviso
			const previo = cambiar.get(info.idx);
			if (previo[1] !== nombre) {
				avisos.push(`ID ${id}: el bloque compartido ya iba a recibir "${previo[1]}" y el mapa pide "${nombre}" — se mantiene el primero`);
			}
			continue;
		}
		let idxCambio = info.idx;
		let nuevo = null;
		const linea = lineas[info.idx];
		const directo = linea.replace(/^(\s*(?:bos\s*=\s*\{\s*|pack\["\d+"\]\s*=\s*\{\s*)")([^"]*)(")/, `$1${nombre}$3`);
		if (directo !== linea) {
			nuevo = directo;
		} else {
			// formato histórico (Midnight/Cata): `bos = {` solo y el nombre
			// en una línea posterior — buscar la primera línea entrecomillada
			for (let j = info.idx + 1; j < Math.min(info.idx + 6, lineas.length); j++) {
				const alt = lineas[j].replace(/^(\s*")([^"]*)(")/, `$1${nombre}$3`);
				if (alt !== lineas[j]) { idxCambio = j; nuevo = alt; break; }
			}
		}
		if (nuevo === null) {
			avisos.push(`ID ${id}: no se pudo sustituir el nombre (línea ${info.idx + 1})`);
			continue;
		}
		lineas[idxCambio] = nuevo;
		cambiar.set(info.idx, [null, nombre]);
		aplicados++;
	}

	await fs.writeFile(fich, lineas.join("\n"), "utf8");
	console.log(`Pack ${pack}: ${aplicados} nombres aplicados, ${identicos} sin cambio (identical/unknown), ${ausentes} ids no encontrados en el fichero.`);
	for (const a of avisos) { console.log("  AVISO: " + a); }
}

main().catch((err) => {
	console.error("Error:", err);
	process.exit(1);
});