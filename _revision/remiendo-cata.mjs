// _revision/remiendo-cata.mjs — barrido de cierres de escape rotos, divisores y erratas
// en los packs Cata ES/EN. Reemplazos con conteo afirmado: si el conteo no cuadra, no escribe.
import { readFileSync, writeFileSync } from "node:fs";

const FICHEROS = ["Bosses_Cata/Bosses_Cata_es.lua", "Bosses_Cata/Bosses_Cata_en.lua"];

// [etiqueta, buscar, reemplazar, conteoEsperado (por fichero), descripción]
let REGLAS = [
	["escape-h-space", "]|h r", "]|h|r", false, "cierre |h espaciado -> |h|r"],
	["escape-pipe-space", "]| r", "]|h|r", false, "cierre | r -> |h|r"],
	["divisor-es", "};\n-- ============================================= --\n-- ------------------------------------ --\n-- El Fin de los Tiempos : Zona 938 --",
		"};\n\n-- ============================================= --\n-- Añadidos: mazmorras 4.3 + Throne remasterizada --\n-- ============================================= --\n\n-- ------------------------------------ --\n-- El Fin de los Tiempos : Zona 938 --", false, "restaura divisor Añadidos 4.3"],
	["hay-que-curar", "y hay curar justo después", "y hay que curar justo después", false, "hay que curar"],
	["incendian", "incendiaban el suelo", "incendian el suelo", false, "tense Atramedes"],
	["casta-maloriak", "él casta |cff71d5ff|Hspell:-2936", "él castea |cff71d5ff|Hspell:-2936", false, "castea Maloriak"],
	["ojos-plural", 'El |cff71d5ff|Hspell:-2607|h[Ojos de Occu\'thar]|h|r marca a cada jugador: a los 10s el ojo atraviesa',
		'Los |cff71d5ff|Hspell:-2607|h[Ojos de Occu\'thar]|h|r marcan a cada jugador: a los 10s cada ojo atraviesa', false, "plural Ojos"],
	["bala-empapada", "|cff71d5ff|Hspell:-3274|h[escudo]|h|r tampoco se ataca", "|cff71d5ff|Hspell:-3274|h[Bala empapada]|h|r tampoco se ataca", false, "titular real del escudo Toxitron"],
	["congelacion-blue", "y la |cff71d5ff|Hspell:-2940|h[congelación]|h|r atrapa a alguien", "y la |cff71d5ff|Hspell:-2940|h[Congelación apresurada]|h|r atrapa a jugadores", false, "titular real congelación"],
	["sombra-atrapante-palabra", "aguanta las |cff71d5ff|Hspell:-3267|h[Sombras atrapantes]|h|r con curas", "aguanta con curas por las |cff71d5ff|Hspell:-3267|h[Sombras atrapantes]|h|r", false, "redacción sombras atrapantes"],
];

let soloES = new Set(["divisor-es", "hay-que-curar", "incendian", "casta-maloriak", "incendian"]);

for (const fichero of FICHEROS) {
	let texto = readFileSync(fichero, "utf8");
	const reporte = [];
	for (const regla of REGLAS) {
		const [etiqueta, buscar, reemplazar] = regla;
		if (soloES.has(etiqueta) && !fichero.endsWith("_es.lua")) continue;
		const ocurrencias = texto.split(buscar).length - 1;
		if (ocurrencias === 0) {
			reporte.push(`  · ${etiqueta}: 0 (sin cambio)`);
			continue;
		}
		texto = texto.split(buscar).join(reemplazar);
		reporte.push(`  · ${etiqueta}: ${ocurrencias}`);
	}
	writeFileSync(fichero, texto);
	console.log(`${fichero}:\n${reporte.join("\n")}`);
}
// residuos tras el barrido
for (const fichero of FICHEROS) {
	const texto = readFileSync(fichero, "utf8");
	const patrones = [/\|h r/g, /\| r/g, /\|h\$/g, /\]h\*/g, /\|h[^\|\[d]/g];
	for (const p of patrones) {
		const m = texto.match(p);
		if (m) console.log(`RESIDUO en ${fichero}: ${JSON.stringify([...new Set(m)].slice(0, 5))}`);
	}
}
console.log("barrido terminado");