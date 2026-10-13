// _revision/limpiar-cata.mjs
// Limpieza editorial de la base histórica 2011 de Bosses_Cata (ES/EN):
// erratas objetivas, restos de macros ("/script"), sufijos " HERO" en
// nombres, líneas sueltas del Cónclave con viñeta, espacios finales.
// Solo sustituciones literales con verificación de recuento; si una falla,
// no escribe NADA y avisa. NOTA: El ES usa 4 espacios de sangría y el EN
// tabuladores (\t).
import { readFileSync, writeFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");

const REGLAS = [
	// --- Bosses_Cata_es.lua: erratas y residuos -------------------------------
	["es", `"Comandante Vallefont "`, `"Comandante Vallefont"`, 1],
	["es", `tirar /script |cff71d5ff|Hspell:75322|h[Himno resonante]|h`, `tirar |cff71d5ff|Hspell:75322|h[Himno resonante]|h`, 1],
	["es", `para no quedar estuneado`, `para no quedar aturdido`, 1],
	["es", `cuando lotire a los jugadores`, `cuando lo tire a los jugadores`, 1],
	["es", `porque cura tambien al jefe`, `porque cura también al jefe`, 1],
	["es", `Evitar las bomba que tira`, `Evitar las bombas que tira`, 1],
	["es", `1 DPS cojerá una segadora`, `1 DPS cogerá una segadora`, 1],
	["es", `hay que ir cojiendo 1 mala`, `hay que ir cogiendo 1 mala`, 1],
	["es", `puede cojer 2 malas`, `puede coger 2 malas`, 1],
	["es", `van sobrados pueden ignorarse, sino hay que matarlos`, `van sobrados pueden ignorarse; si no, hay que matarlos`, 1],
	["es", `En hero saldran elementales`, `En hero saldrán elementales`, 1],
	["es", `hay que huir lo mas rápidamente`, `hay que huir lo más rápidamente`, 1],
	["es", `más tiempo esté mas daño recibirá la party`, `más tiempo esté, más daño recibirá la party`, 1],
	["es", `estan no tienen agro`, `estas no tienen agro`, 1],
	["es", `se quitea el fenix`, `se kitea al fénix`, 1],
	["es", `full dps al fenix.`, `full dps al fénix.`, 1],
	["es", `Explosión de choque]|h|r-`, `Explosión de choque]|h|r`, 1],
	["es", `hay que dispeleárselo sino todo el daño mágico`, `hay que disipárselo, si no todo el daño mágico`, 1],
	["es", `irá cojiendo los Behemoth`, `irá cogiendo los Behemoth`, 1],
	["es", `Los Behemots se irán moviendo`, `Los Behemoths se irán moviendo`, 1],
	["es", `aunque tambien hay que descargar`, `aunque también hay que descargar`, 1],
	["es", `estará atendo a cuando`, `estará atento a cuando`, 1],
	["es", `el tanque no debe atraerlos. "`, `el tanque no debe atraerlos."`, 1],
	["es", `se asignará a 1 DPS. "`, `se asignará a 1 DPS."`, 1],
	["es", `ojo healer sin coincide con`, `ojo, healer: si coincide con`, 1],
	["es", `que hace 180ks.`, `que hace 180k.`, 1],
	["es", `Truco :|r`, `Truco:|r`, 1],
	["es", `Romper immediatamente`, `Romper inmediatamente`, 1],
	["es", `Se convertirá aleatoriamente en 2 formas de las anteriores:`, `Se convertirá aleatoriamente en 2 de las 4 formas:`, 1],
	["es", `- Drakohalcon. Esquivar`, `- Dracohalcón. Esquivar`, 1],
	["es", `Dificil para el healer`, `Difícil para el healer`, 1],
	["es", `Los espiritus son la clave`, `Los espíritus son la clave`, 1],
	["es", `curando de mas al que reciba`, `curando de más al que reciba`, 1],
	["es", `tipo olas de Sartarion`, `tipo olas de Sartharion`, 1],
	["es", `Elixit Verde`, `Elixir Verde`, 1],
	["es", `los pjs entran tmb cuando`, `los pjs entran también cuando`, 1],
	["es", `encima del bos para aprovechar`, `encima del boss para aprovechar`, 1],
	["es", `Golpes malévolos]|h|r"`, `Golpes malévolos]|h|r."`, 1],
	["es", `se ponen en la cola del boss, cuando estan todos se dispelea para repartir el daño. "`, `se ponen en la cola del boss; cuando estén todos se disipa para repartir el daño."`, 1],
	["es", `para evitar el daño. "`, `para evitar el daño."`, 1],
	["es", `hay que salirse, "`, `hay que salirse,"`, 1],
	["es", `activará 150Ks de daño`, `activará 150K de daño`, 1],
	["es", `* /script |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h`, `* |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h`, 1],
	["es", `para aunmentar el daño`, `para aumentar el daño`, 2],
	["es", `separados entre si`, `separados entre sí`, 1],
	// --- Cónclave ES: líneas a viñeta + pulido ---------------------------------
	["es", `    "Este encuentro consiste en 3 Señores elementales`, `    "* Este encuentro consiste en 3 Señores elementales`, 1],
	["es", `de un minuto sino resucitan",`, `de un minuto; si no, resucitan",`, 1],
	["es", `    "Los boses tienen una barra de energía`, `    "* Los jefes tienen una barra de energía`, 1],
	["es", `    "4 Grupos: 1º: 1 Tanque, 1 Healer, 1 Dps[Anshal]; 2º: 1 Tanque y 1 Healer(preferiblemente pala holy porque se puede quitar los debufs); 3º 1Dps y 1 Healer [Rohash]; 4º Grupo móvil 3Dps",`, `    "* 4 grupos: 1º: 1 tanque, 1 sanador y 1 dps [Anshal]; 2º: 1 tanque y 1 sanador (preferiblemente paladín holy, porque puede quitarse los debuffs); 3º: 1 dps y 1 sanador [Rohash]; 4º: grupo móvil con 3 dps",`, 1],
	["es", `    "Optimizar el dps en los tres`, `    "* Optimizar el dps en los tres`, 1],
	["es", `    " ",`, ``, 1],
	["es", `    "Plataforma Anshal: Periódicamente`, `    "* Plataforma Anshal: periódicamente`, 1],
	["es", `silenciando raid",`, `silenciando la banda",`, 1],
	["es", `    "Castea |cff71d5ff|Hspell:85422|h[Nutrir]|h`, `    "* Castea |cff71d5ff|Hspell:85422|h[Nutrir]|h`, 1],
	["es", `    "Especial: |cff71d5ff|Hspell:84638|h[Céfiro]|h|r evitar`, `    "* Especial: |cff71d5ff|Hspell:84638|h[Céfiro]|h|r: evitar`, 1],
	["es", `    "|cff71d5ff|Hspell:86193|h[Explosión de viento]|h`, `    "* |cff71d5ff|Hspell:86193|h[Explosión de viento]|h`, 1],
	["es", `saldrá empujado a 200metros",`, `sale empujado a 200 metros",`, 1],
	["es", `    "|cff71d5ff|Hspell:86182|h[Vendaval cortante]|h`, `    "* |cff71d5ff|Hspell:86182|h[Vendaval cortante]|h`, 1],
	["es", `ataque a distacia",`, `ataque a distancia",`, 1],
	["es", `    "Especial: |cff71d5ff|Hspell:86481|h[Huracán]|h`, `    "* Especial: |cff71d5ff|Hspell:86481|h[Huracán]|h`, 1],
	["es", `es el de la caida (unos 70ks)`, `es el de la caída (unos 70k)`, 1],
	["es", `usar sus habilidades forma de gato, caida lenta, etc`, `usar formas de gato, caída lenta, etc`, 1],
	["es", `    "|cff71d5ff|Hspell:86082|h[Escarcha permanente]|h`, `    "* |cff71d5ff|Hspell:86082|h[Escarcha permanente]|h`, 1],
	["es", `    "|cff71d5ff|Hspell:93130|h[Zona de hielo]|h`, `    "* |cff71d5ff|Hspell:93130|h[Zona de hielo]|h`, 1],
	["es", `    "|cff71d5ff|Hspell:84645|h[Viento escalofriante]|h`, `    "* |cff71d5ff|Hspell:84645|h[Viento escalofriante]|h`, 1],
	["es", `curar el daño(stacks) (anshal-Nezir)",`, `curar el daño (stacks) (Anshal-Nezir)",`, 1],
	["es", `    "Especial: |cff71d5ff|Hspell:84644|h[Tormenta de granizo]|h`, `    "* Especial: |cff71d5ff|Hspell:84644|h[Tormenta de granizo]|h`, 1],
	// --- Nombres ES: fuera sufijo " HERO" --------------------------------------
	["es", `{ "Barón Ashbury HERO"`, `{ "Barón Ashbury"`, 1],
	["es", `{ "Glubtok <El Supervisor> HERO"`, `{ "Glubtok <El Supervisor>"`, 1],
	["es", `{ "Helix Rompengranajes HERO"`, `{ "Helix Rompengranajes"`, 1],
	["es", `{ "Siegaenemigos 5000 HERO"`, `{ "Siegaenemigos 5000"`, 1],
	["es", `{ "Almirante Rasgagruñido HERO"`, `{ "Almirante Rasgagruñido"`, 1],
	["es", `{ "Capitán Cocinitas HERO"`, `{ "Capitán Cocinitas"`, 1],
	["es", `{ "Vanessa VanCleef HERO"`, `{ "Vanessa VanCleef"`, 1],
	["es", `{ "Sumo profeta Barim HERO"`, `{ "Sumo profeta Barim"`, 1],
	["es", `{ "Cierrafauce HERO"`, `{ "Cierrafauce"`, 1],
	["es", `{ "General Husam HERO"`, `{ "General Husam"`, 1],
	["es", `{ "Akil'zon <Avatar de águila> HERO"`, `{ "Akil'zon <Avatar de águila>"`, 1],
	["es", `{ "Nalorakk <Avatar de oso> HERO"`, `{ "Nalorakk <Avatar de oso>"`, 1],
	["es", `{ "Jan'alai <Avatar de dracohalcón> HERO"`, `{ "Jan'alai <Avatar de dracohalcón>"`, 1],
	["es", `{ "Halazzi <Avatar de lince> HERO"`, `{ "Halazzi <Avatar de lince>"`, 1],
	["es", `{ "Señor aojador Malacrass HERO"`, `{ "Señor aojador Malacrass"`, 1],
	["es", `{ "Daakara <El Invencible> HERO"`, `{ "Daakara <El Invencible>"`, 1],
	["es", `{ "Sumo sacerdote Venoxis HERO"`, `{ "Sumo sacerdote Venoxis"`, 1],
	["es", `{ "Señor sangriento Mandokir HERO"`, `{ "Señor sangriento Mandokir"`, 1],
	["es", `{ "Suma sacerdotisa Kilnara HERO"`, `{ "Suma sacerdotisa Kilnara"`, 1],
	["es", `{ "Zanzil HERO"`, `{ "Zanzil"`, 1],
	["es", `{ "Jin'do el Sojuzgadioses HERO"`, `{ "Jin'do el Sojuzgadioses"`, 1],
	["es", `{ "Gran visir Ertan HERO"`, `{ "Gran visir Ertan"`, 1],
	["es", `{ "Altairus HERO"`, `{ "Altairus"`, 1],
	["es", `{ "Asaad <Califa de los Céfiros> HERO"`, `{ "Asaad <Califa de los Céfiros>"`, 1],
	// --- Bosses_Cata_en.lua: Cónclave a viñeta (con tabuladores) + erratas -----
	["en", `\t"This encounter consists of 3 elemental lords`, `\t"* This encounter consists of 3 elemental lords`, 1],
	["en", `difference of one minute or they resurrect",`, `difference of one minute or they resurrect.",`, 1],
	["en", `\t"The bosses have an energy bar`, `\t"* The bosses have an energy bar`, 1],
	["en", `\t"4 Groups: 1st: 1 Tank, 1 Healer, 1 Dps[Anshal]; 2nd: 1 Tank and 1 Healer (preferably holy paladin because they can remove their own debuffs); 3rd: 1 Dps and 1 Healer [Rohash]; 4th: Mobile group with 3 Dps",`, `\t"* 4 groups: 1st: 1 tank, 1 healer and 1 dps [Anshal]; 2nd: 1 tank and 1 healer (preferably holy paladin, because they can remove their own debuffs); 3rd: 1 dps and 1 healer [Rohash]; 4th: mobile group with 3 dps",`, 1],
	["en", `\t"Optimize the dps on all three`, `\t"* Optimize the dps on all three`, 1],
	["en", `\t" ",`, ``, 1],
	["en", `\t"Anshal platform: periodically`, `\t"* Anshal platform: periodically`, 1],
	["en", `silencing the raid",`, `silencing the raid.",`, 1],
	["en", `\t"He casts |cff71d5ff|Hspell:85422|h[Nurture]|h`, `\t"* He casts |cff71d5ff|Hspell:85422|h[Nurture]|h`, 1],
	["en", `\t"Special: |cff71d5ff|Hspell:84638|h[Zephyr]|h`, `\t"* Special: |cff71d5ff|Hspell:84638|h[Zephyr]|h`, 1],
	["en", `\t"|cff71d5ff|Hspell:86193|h[Wind Blast]|h`, `\t"* |cff71d5ff|Hspell:86193|h[Wind Blast]|h`, 1],
	["en", `pushed back 200 meters",`, `pushed back 200 meters.",`, 1],
	["en", `\t"|cff71d5ff|Hspell:86182|h[Slicing Gale]|h`, `\t"* |cff71d5ff|Hspell:86182|h[Slicing Gale]|h`, 1],
	["en", `ranged attack",`, `ranged attack.",`, 1],
	["en", `\t"Special: |cff71d5ff|Hspell:86481|h[Hurricane]|h`, `\t"* Special: |cff71d5ff|Hspell:86481|h[Hurricane]|h`, 1],
	["en", `from the fall (about 70Ks)`, `from the fall (about 70k)`, 1],
	["en", `cat form, slow fall, etc"`, `cat form, slow fall, etc."`, 1],
	["en", `\t"|cff71d5ff|Hspell:86082|h[Permafrost]|h`, `\t"* |cff71d5ff|Hspell:86082|h[Permafrost]|h`, 1],
	["en", `stay spread out",`, `stay spread out.",`, 1],
	["en", `\t"|cff71d5ff|Hspell:93130|h[Ice Patch]|h`, `\t"* |cff71d5ff|Hspell:93130|h[Ice Patch]|h`, 1],
	["en", `area of effect IMMEDIATELY",`, `area of effect IMMEDIATELY.",`, 1],
	["en", `\t"|cff71d5ff|Hspell:84645|h[Chilling Winds]|h`, `\t"* |cff71d5ff|Hspell:84645|h[Chilling Winds]|h`, 1],
	["en", `(stacks) (Anshal-Nezir)",`, `(stacks) (Anshal-Nezir).",`, 1],
	["en", `\t"Special: |cff71d5ff|Hspell:84644|h[Hailstorm]|h`, `\t"* Special: |cff71d5ff|Hspell:84644|h[Hailstorm]|h`, 1],
	["en", `they have no aggro and hit whatever they hit last`, `they have no aggro and hit whatever hit them last`, 1],
	["en", `When he casts |cff71d5ff|Hspell:92873|h[Devouring Flames]|h`, `When she casts |cff71d5ff|Hspell:92873|h[Devouring Flames]|h`, 1],
	["en", `When |cff71d5ff|Hspell:45336|h[Electrical Overload]|h|r lifts a player all under to avoid damage.`, `A player gets lifted for |cff71d5ff|Hspell:45336|h[Electrical Storm]|h|r: everyone stacks under them to avoid the damage.`, 1],
	["en", `He will randomly turn into 2 of the previous forms:`, `He will randomly turn into 2 of the 4 forms:`, 1],
];

const FICHEROS = { es: "Bosses_Cata/Bosses_Cata_es.lua", en: "Bosses_Cata/Bosses_Cata_en.lua" };
const textos = {};
for (const k of Object.keys(FICHEROS)) textos[k] = readFileSync(path.join(SRC, FICHEROS[k]), "utf8");

let aplicadas = 0, fallos = 0;
for (const [fich, buscar, reemplazo, esperado] of REGLAS) {
	const txt = textos[fich];
	const n = txt.split(buscar).length - 1;
	if (n !== esperado) {
		console.log(`FALLO (${fich}, esperado ${esperado}, hay ${n}): ${buscar.slice(0, 90)}`);
		fallos++;
		continue;
	}
	textos[fich] = txt.split(buscar).join(reemplazo);
	aplicadas++;
}
if (fallos === 0) for (const k of Object.keys(FICHEROS)) writeFileSync(path.join(SRC, FICHEROS[k]), textos[k], "utf8");
console.log(`\n${aplicadas}/${REGLAS.length} reglas aplicadas${fallos === 0 ? " y escritas." : ` — ${fallos} fallos, NADA escrito.`}`);