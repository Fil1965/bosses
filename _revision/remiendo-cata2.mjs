// _revision/remiendo-cata2.mjs — segundo barrido de remiendo sobre Cata ES/EN.
import { readFileSync, writeFileSync } from "node:fs";

let REGLAS = [
	// cierres de escape (los dos ficheros)
	["h-espacio", "]|h r", "]|h|r", "ambos"],
	["h-dospuntos", "]|h:r", "]|h|r", "ambos"],
	["pipe-espacio", "]| r", "]|h|r", "ambos"],
	["h-faltante", /\|Hspell:(-?\d+)\|\[/g, "|Hspell:$1|h[", "ambos"],
	["basura-3301", "|Hspell:-3301|h[Onyxia... the |h[Shadowflame Barrage]", "|Hspell:-3301|h[Shadowflame Barrage]", "ambos"],
	["casteado", " she casta ", " she casts ", "ambos"],
	// titulares del diario (ES = esES; EN = enUS)
	["punto-vuln-es", "h[cabeza desprotegida]", "h[Punto vulnerable]", "soloES"],
	["saliva-es", "h[Saliva]|", "h[Saliva Crepuscular]|", "soloES"],
	["esencia-es", "h[Esencia]|h r", "h[Esencia Crepuscular]|h r", "soloES"],
	["tantrum-en", "h[Slag Tantrum]", "h[Molten Tantrum]", "soloEN"],
	["armadura-en", "h[armored jaws]", "h[Sweltering Armor]", "soloEN"],
	["cabeza-en", "h[vulnerable head]", "h[Point of Vulnerability]", "soloEN"],
	["inferno-en", "h[Blazing Bone Inferno]", "h[Blazing Inferno]", "soloEN"],
	["nova-en", "h[Explosive Novas]", "h[Blast Novas]", "soloEN"],
	["cinders-en", "h[Explosive Ash]", "h[Explosive Cinders]", "soloEN"],
	["leftover-en", "the left |cff71d5ff|Hspell:-2647", "the leftover |cff71d5ff|Hspell:-2647", "soloEN"],
];

for (const fichero of ["Bosses_Cata/Bosses_Cata_es.lua", "Bosses_Cata/Bosses_Cata_en.lua"]) {
	let texto = readFileSync(fichero, "utf8");
	const es = fichero.endsWith("_es.lua");
	const reporte = [];
	for (const [etiqueta, buscar, reemplazar, alcance] of REGLAS) {
		if (alcance === "soloES" && !es) continue;
		if (alcance === "soloEN" && es) continue;
		if (buscar instanceof RegExp) {
			const antes = texto.length;
			texto = texto.replace(buscar, reemplazar);
			reporte.push(`  · ${etiqueta}: ${antes === texto.length ? "0 (sin cambio)" : "ok"}`);
		} else {
			const n = texto.split(buscar).length - 1;
			if (n === 0) { reporte.push(`  · ${etiqueta}: 0 (sin cambio)`); continue; }
			texto = texto.split(buscar).join(reemplazar);
			reporte.push(`  · ${etiqueta}: ${n}`);
		}
	}
	writeFileSync(fichero, texto);
	console.log(`${fichero}:\n${reporte.join("\n")}`);
}
for (const fichero of ["Bosses_Cata/Bosses_Cata_es.lua", "Bosses_Cata/Bosses_Cata_en.lua"]) {
	const texto = readFileSync(fichero, "utf8");
	for (const p of [/\|h r/g, /\|h:r/g, /\| r/g, /\|Hspell:-?\d+\|\[/g, /casta /g]) {
		const m = texto.match(p);
		if (m) console.log(`RESIDUO en ${fichero}: ${JSON.stringify([...new Set(m)].slice(0, 5))}`);
	}
}
console.log("barrido 2 terminado");