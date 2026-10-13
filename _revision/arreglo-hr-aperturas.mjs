// _revision/arreglo-hr-aperturas.mjs
// Repara aperturas "|Hspell:ID|[Texto]" (falta "|h[") en los ficheros FR.
import { readFileSync, writeFileSync } from "node:fs";

const ficheros = [
	"Bosses_Cata/Bosses_Cata_fr.lua",
	"Bosses_TWW/Bosses_TWW_fr.lua",
	"Bosses_Midnight/Bosses_Midnight_fr.lua",
	"Bosses_MoP/Bosses_MoP_fr.lua",
];

const re = /\|H(spell|item|quest|achievement):(-?\d+)\|\[([^\]|]*)\]\|h\|r/g;
for (const f of ficheros) {
	const t = readFileSync(f, "utf8");
	const arreglado = t.replace(re, (_m, tipo, id, txt) => `|H${tipo}:${id}|h[${txt}]|h|r`);
	const n = (t.match(re) || []).length;
	if (n > 0) {
		writeFileSync(f, arreglado);
		console.log(`${f}: arregladas ${n} aperturas`);
	} else {
		console.log(`${f}: OK (0)`);
	}
}