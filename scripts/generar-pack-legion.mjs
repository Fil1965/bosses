// scripts/generar-pack-legion.mjs
// Genera el pack Bosses_Legion (entradas _es/_en/_fr/_de + ENC) a partir de
// los módulos DBM de Legion en _doc/DBM:
//   DBM-Party-Legion (mazmorras), DBM-Raids-Legion (bandas) y
//   DBM-BrokenIsles (jefes de mundo).
// Orden del propietario (2026-10-15, «si el script puede generar del tirón
// todos los idiomas hazlo»): los CUATRO locales de una vez, con tácticas
// telegráficas derivadas de las pistas DBM — el texto fino lo curan a
// mano después (oleada de tácticas reales).
//
// _zonas NO se reescribe (la del pack ya está generada), ni .toc, ni
// registrador (el ES/EN del esqueleto van vacíos en disco: la casa los
// rellena, los _fr/_de NO se listan en el .toc hasta estar COMPLETOS).
//
// Nombres: corpus _nombres/jefes-Bosses_Legion.json (npm run nombres-jefe
// -- --pack Bosses_Legion; 124 jefes a 4 idiomas). Respaldo: mapa NOMBRES
// (world bosses, 4 locales de los banners/localizations del DBM y nombres
// propios idénticos con flag) y derivación CamelCase del fichero.
//
// Uso: node scripts/generar-pack-legion.mjs [--revisar]

import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DOC_DBM = path.join(SRC, "_doc", "DBM");
const PACK = path.join(SRC, "Bosses_Legion");
const CORPUS = path.join(SRC, "_nombres", "jefes-Bosses_Legion.json");

// World bosses de Legion: NO van en el journal (sin corpus por CID).
// 4 locales: los 6 de invasion con el nombre idéntico de las 4
// localizations de DBM-BrokenIsles (en/es/fr/de banners); el resto,
// nombres propios idénticos a los 4 (flag a confirmar in-game).
const NOMBRES_WB4 = {
	Alluradel: { es: "Mistress Alluradel", en: "Mistress Alluradel", fr: "Mistress Alluradel", de: "Mistress Alluradel" },
	AnaMouz: { es: "Ana-Mouz", en: "Ana-Mouz", fr: "Ana-Mouz", de: "Ana-Mouz" },
	Apocron: { es: "Apocron", en: "Apocron", fr: "Apocron", de: "Apocron" },
	Brutallus: { es: "Brutallus", en: "Brutallus", fr: "Brutallus", de: "Brutallus" },
	Calamir: { es: "Calamir", en: "Calamir", fr: "Calamir", de: "Calamir" },
	Drugon: { es: "Drugon", en: "Drugon", fr: "Drugon", de: "Drugon" },
	Flotsam: { es: "Flotsam", en: "Flotsam", fr: "Flotsam", de: "Flotsam" },
	Folnuna: { es: "Matron Folnuna", en: "Matron Folnuna", fr: "Matron Folnuna", de: "Matron Folnuna" },
	Humongris: { es: "Humongris", en: "Humongris", fr: "Humongris", de: "Humongris" },
	Levantus: { es: "Levantus", en: "Levantus", fr: "Levantus", de: "Levantus" },
	Malificus: { es: "Malificus", en: "Malificus", fr: "Malificus", de: "Malificus" },
	Meto: { es: "Inquisitor Meto", en: "Inquisitor Meto", fr: "Inquisitor Meto", de: "Inquisitor Meto" },
	Nazak: { es: "Nazak", en: "Nazak", fr: "Nazak", de: "Nazak" },
	Nithogg: { es: "Nithogg", en: "Nithogg", fr: "Nithogg", de: "Nithogg" },
	Occularus: { es: "Occularus", en: "Occularus", fr: "Occularus", de: "Occularus" },
	Sharthos: { es: "Shar'thos", en: "Shar'thos", fr: "Shar'thos", de: "Shar'thos" },
	Sivash: { es: "Sivash", en: "Sivash", fr: "Sivash", de: "Sivash" },
	Sotanathor: { es: "Sotanathor", en: "Sotanathor", fr: "Sotanathor", de: "Sotanathor" },
	Soultakers: { es: "Soultakers", en: "Soultakers", fr: "Soultakers", de: "Soultakers" },
	Vilemus: { es: "Pit Lord Vilemus", en: "Pit Lord Vilemus", fr: "Pit Lord Vilemus", de: "Pit Lord Vilemus" },
	WitheredJim: { es: "Withered Jim", en: "Withered Jim", fr: "Withered Jim", de: "Withered Jim" },
	// Nightbane (jefe oculto del Return to Karazhan, CID 114895) — el
	// in-game traduce el nombre: a confirmar por el propietario (flag).
	Nightbane: { es: "Nightbane", en: "Nightbane", fr: "Nightbane", de: "Nightbane" },
};

// Zona de respaldo por carpeta (los módulos que no traen SetZone). Las
// bandas traidas del journal real: EN 1520 / NH 1530 / ToV 1537 / ToS 1677 / AN 1712.
const ZONA_CARPETA = {
	EyeOfAzshara: "1456",
	DarkheartThicket: "1466",
	HallsOfValor: "1477",
	MawOfSouls: "1492",
	NeltharionsLair: "1458",
	VaultOfWarden: "1493",
	VioletHold: "1544",
	BlackRookHold: "1501",
	CourtofStars: "1571",
	TheArcway: "1516",
	CathedralofEternalNight: "1677",
	SeatofTriumvirate: "1753",
	ReturnToKarazhan: "1651",
	EmeraldNightmare: "1520",
	Nighthold: "1530",
	TrialofValor: "1648",
	TombofSargeras: "1676",
	AntorusBurningThrone: "1712",
};

// Nombres EN de zona (para el banner del fichero de idioma).
const NOMBRES_ZONA = {
	"1456": "Eye of Azshara",
	"1458": "Neltharion's Lair",
	"1466": "Darkheart Thicket",
	"1477": "Halls of Valor",
	"1492": "Maw of Souls",
	"1493": "Vault of the Wardens",
	"1501": "Black Rook Hold",
	"1516": "The Arcway",
	"1520": "The Emerald Nightmare",
	"1530": "The Nighthold",
	"1544": "Assault on Violet Hold",
	"1571": "Court of Stars",
	"1648": "Trial of Valor",
	"1651": "Return to Karazhan",
	"1676": "Tomb of Sargeras",
	"1677": "Cathedral of Eternal Night",
	"1712": "Antorus, the Burning Throne",
	"1753": "Seat of the Triumvirate",
};

// Banners de zona: nombre EN del journal para los cuatro ficheros (la
// prosa fina ES/FR/DE la cura la pasada de nombres del propietario).
const TITULOS_ZONA4 = {
	"1456": { es: "Eye of Azshara", en: "Eye of Azshara", fr: "Eye of Azshara", de: "Eye of Azshara" },
	"1458": { es: "Neltharion's Lair", en: "Neltharion's Lair", fr: "Neltharion's Lair", de: "Neltharion's Lair" },
	"1466": { es: "Darkheart Thicket", en: "Darkheart Thicket", fr: "Darkheart Thicket", de: "Darkheart Thicket" },
	"1477": { es: "Halls of Valor", en: "Halls of Valor", fr: "Halls of Valor", de: "Halls of Valor" },
	"1492": { es: "Maw of Souls", en: "Maw of Souls", fr: "Maw of Souls", de: "Maw of Souls" },
	"1493": { es: "Vault of the Wardens", en: "Vault of the Wardens", fr: "Vault of the Wardens", de: "Vault of the Wardens" },
	"1501": { es: "Black Rook Hold", en: "Black Rook Hold", fr: "Black Rook Hold", de: "Black Rook Hold" },
	"1516": { es: "The Arcway", en: "The Arcway", fr: "The Arcway", de: "The Arcway" },
	"1520": { es: "The Emerald Nightmare", en: "The Emerald Nightmare", fr: "The Emerald Nightmare", de: "The Emerald Nightmare" },
	"1530": { es: "The Nighthold", en: "The Nighthold", fr: "The Nighthold", de: "The Nighthold" },
	"1544": { es: "Assault on Violet Hold", en: "Assault on Violet Hold", fr: "Assault on Violet Hold", de: "Assault on Violet Hold" },
	"1571": { es: "Court of Stars", en: "Court of Stars", fr: "Court of Stars", de: "Court of Stars" },
	"1648": { es: "Trial of Valor", en: "Trial of Valor", fr: "Trial of Valor", de: "Trial of Valor" },
	"1651": { es: "Return to Karazhan", en: "Return to Karazhan", fr: "Return to Karazhan", de: "Return to Karazhan" },
	"1676": { es: "Tomb of Sargeras", en: "Tomb of Sargeras", fr: "Tomb of Sargeras", de: "Tomb of Sargeras" },
	"1677": { es: "Cathedral of Eternal Night", en: "Cathedral of Eternal Night", fr: "Cathedral of Eternal Night", de: "Cathedral of Eternal Night" },
	"1712": { es: "Antorus, the Burning Throne", en: "Antorus, the Burning Throne", fr: "Antorus, the Burning Throne", de: "Antorus, the Burning Throne" },
	"1753": { es: "Seat of the Triumvirate", en: "Seat of the Triumvirate", fr: "Seat of the Triumvirate", de: "Seat of the Triumvirate" },
};

// Consejo según la pista del módulo. Honesto y neutro: el detalle fino lo
// lleva el tooltip del hechizo (el cliente lo localiza por id).
const CONSEJOS = [
	{ clave: /"tank"|"Tank|TANKBUSTER|TANK\b|tauntboss|stackhigh|defensive/, es: "mecánica del tanque: alternad y defensivas.", en: "tank mechanic: swap and use defensives.", fr: "mécanique de tank: échangez et défensifs.", de: "Tank-Mechanik: wechselt und nutzt Defensiven." },
	{ clave: /killmob|bigmob/, es: "esbirros, prioridad de daño.", en: "adds, kill them fast.", fr: "sbires: tuez-les vite.", de: "Adds: schnell besiegen." },
	{ clave: /chargemove/, es: "embestida: fuera de su línea.", en: "charge: move out of the way.", fr: "charge: quittez sa ligne.", de: "Ansturm: aus der Linke heraus." },
	{ clave: /watchfeet|watchstep|orbrun/, es: "fuera del suelo.",
		en: "watch the ground.", fr: "regardez le sol.", de: "Achtung, am Boden." },
	{ clave: /kickcast|stopcast/, es: "interrumpir.", en: "interrupt.", fr: "interruption.", de: "unterbrechen." },
	{ clave: /justrun|runout/, es: "correr, no se le enfrene.", en: "run, do not fight it.", fr: "courez, ne la combattez pas.", de: "weglaufen." },
	{ clave: /aesoon/, es: "daño de área: curas y distancia.", en: "AoE damage: heals and spread.", fr: "dégâts de zone: soins et écartez-vous.", de: "Flächenschaden: Heilung und Abstand." },
	{ clave: /debuffyou|targetyou|behindmob/, es: "el marcado se aleja del grupo.", en: "the marked moves away from the group.", fr: "le marqué s'éloigne du groupe.", de: "der Markierte weicht der Gruppe aus." },
	{ clave: /absorbyou|helpsoak|soak|gathershare/, es: "se absorbe, compartid el daño.", en: "soak it, share the damage.", fr: "absorbez-le, partagez les dégâts.", de: "absorbieren, teilt den Schaden." },
	{ clave: /lineyou|lineapart|scattersoon|scatter/, es: "separarse.", en: "spread out.", fr: "dispersion.", de: "auseinander." },
	{ clave: /mobsoon|bigmobsoon/, es: "esbirros por venir.", en: "adds incoming.", fr: "sbires en approche.", de: "Adds kommen." },
	{ clave: /shockwave|watchwave/, es: "onda expansiva: salta o aléjate.", en: "shockwave: jump or move away.", fr: "onde de choc: sautez ou écartez-vous.", de: "Schockwelle: springen oder weg." },
	{ clave: /findshelter|findshield/, es: "a cubierto.", en: "get behind cover.", fr: "à l'abri.", de: "in Deckung gehen." },
	{ clave: /carefly|forcenovacoming/, es: "empujón: cuidado al filo.", en: "knockback: watch edges.", fr: "repoussé: attention au bord.", de: "Rückstoß: Rand beachten." },
	{ clave: /breathsoon|frontal|beamyou/, es: "frontal: el cuerpo a cuerpo detrás.", en: "frontal: melee stays behind.", fr: "frontal: le corps à corps derrière.", de: "Frontal: der Nahkampf dahinter." },
	{ clave: /fearsoon/, es: "temor próximo: defensivas.", en: "fear incoming: defensives.", fr: "peur imminente: défensifs.", de: "Furcht kommt: Defensiven." },
	{ clave: /keepjump|keepmove/, es: "en movimiento continuo.", en: "keep moving.", fr: "restez en mouvement.", de: "immer in Bewegung bleiben." },
	{ clave: /takedamage|watchorb|specialsoon|bringshield|burnlighttostadow/, es: "mecánica especial de la pelea.", en: "special fight mechanic.", fr: "mécanique spéciale de la bagarre.", de: "spezielle Boss-Mechanik." },
	{ clave: /farfromline/, es: "lejos de la línea.", en: "far from the line.", fr: "loin de la ligne.", de: "weit weg von der Linie." },
	{ clave: /bombsoon/, es: "bomba próxima: aléjate de la marca.", en: "bomb soon: move away from the mark.", fr: "bombe imminente: loin de la marque.", de: "Bombe kommt: weg von der Marke." },
	{ clave: /phasechange/, es: "cambio de fase: atentos.", en: "phase change: stay alert.", fr: "changement de phase: restez attentifs.", de: "Phasenwechsel: aufgepasst." },
];

function consejoDe(pista) {
	for (const c of CONSEJOS) {
		if (c.clave.test(pista)) {
			return c;
		}
	}
	return { es: "cuidado.", en: "watch out.", fr: "méfiance.", de: "Vorsicht." };
}

// camelCase → palabras (etiqueta de respaldo del enlace)
function etiquetaDeCamel(base) {
	return base
		.replace(/([a-z])([A-Z0-9])/g, "$1 $2")
		.replace(/([A-Z]+)([A-Z][a-z])/g, "$1 $2");
}

// Extrae una lista de avisos (spellId + pista) del módulo; la etiqueta
// del enlace sale del nombre de la variable (etiqueta de respaldo: el
// cliente la sustituye por su propio nombre al mostrar).
function extraerAvisos(texto) {
	const avisos = [];
	const patron = /(?:^|\n)[ \t]*local\s+(\w+)\s*=\s*mod:(NewSpecialWarning\w*|New\w*Announce|NewStackAnnounce|NewTargetTimer|New\w*Yell)\(([^)\n]+)\)/g;
	let m;
	while ((m = patron.exec(texto)) !== null) {
		const tipo = m[2];
		const args = m[3];
		const idMatch = args.match(/(?:^|,)\s*(\d{4,7})/);
		if (!idMatch) { continue; }
		const id = idMatch[1];
		let pista = "default";
		const pistas = args.match(/"([a-z]+)"/g) || [];
		if (pistas.length > 0) {
			pista = pistas[pistas.length - 1];
		}
		if (/NewSpecialWarningTaunt|NewSpecialWarningStack|NewStackAnnounce/.test(tipo)) {
			pista = "stackhigh";
		}
		const rolTank = /"Tank[^"]*"|TANKBUSTER|TANK\b/.test(m[0]) || /tauntboss|stackhigh/.test(pista);
		const etiqueta = m[1]
			.replace(/^(specWarn|warn|yell|timer|spec)/, "")
			.replace(/([a-z0-9])([A-Z])/g, "$1 $2")
			.replace(/([a-z])([A-Z0-9])/g, "$1 $2");
		avisos.push({ id, tipo, pista, rolTank, etiqueta, linea: m[0] });
	}
	return avisos;
}

async function main() {
	const args = process.argv.slice(2);
	const soloRevisar = args.includes("--revisar");

	let corpus = {};
	try {
		corpus = JSON.parse(await fs.readFile(CORPUS, "utf8"));
	} catch {
		console.log("Corpus ausente (" + CORPUS + "): solo respaldo NOMBRES/CamelCase.");
	}

	const grupos = [
		{ carpeta: "DBM-Party-Legion", tipo: "mazmorra" },
		{ carpeta: "DBM-Raids-Legion", tipo: "banda" },
		{ carpeta: "DBM-BrokenIsles", tipo: "mundo" },
	];

	const jefes = []; // { fichero, tipo, orden, cids[], enc, zona, avisos[] }

	for (const g of grupos) {
		const raiz = path.join(DOC_DBM, g.carpeta);
		let modulos = [];
		if (g.tipo === "mundo") {
			modulos = (await fs.readdir(raiz))
				.filter((f) => f.endsWith(".lua") && !f.startsWith("localization"))
				.map((f) => path.join(raiz, f));
		} else {
			const subcarpetas = await fs.readdir(raiz, { withFileTypes: true });
			for (const sub of subcarpetas) {
				if (!sub.isDirectory()) { continue; }
				const dir = path.join(raiz, sub.name);
				const fichs = (await fs.readdir(dir)).filter((f) => f.endsWith(".lua") && !/^localization/i.test(f) && !/Trash/i.test(f));
				for (const fich of fichs) {
					modulos.push(path.join(dir, fich));
				}
			}
		}
		for (const fich of modulos) {
			const base = path.basename(fich, ".lua");
			const subCarpeta = path.basename(path.dirname(fich));
			const texto = await fs.readFile(fich, "utf8");
			// Primer SetCreatureID con ids numéricos reales.
			const cidRe = /mod:SetCreatureID\(([^)]+)\)/g;
			let cids = [];
			let cm;
			while ((cm = cidRe.exec(texto)) !== null) {
				const cand = cm[1].split(",").map((s) => s.trim()).filter((s) => /^\d+$/.test(s) && s !== "99999" && s !== "999999" && !/^99\d{4}$/.test(s));
				if (cand.length > 0) { cids = cand; break; }
			}
			if (cids.length === 0) {
				// II pasada: módulos que atan los CIDs con líneas
				// `dungeonID, creatureID[, creatureID2] = <mod>, <cid>`.
				const cidRe3 = /dungeonID,\s*creatureID\d?(?:\s*,\s*creatureID\d?)?\s*=\s*(\d+)\s*,\s*(\d+)(?:\s*,\s*(\d+))?/g;
				let cm2;
				while ((cm2 = cidRe3.exec(texto)) !== null) {
					for (const g2 of [cm2[2], cm2[3]]) {
						if (g2 && /^\d+$/.test(g2) && g2 !== "99999" && !cids.includes(g2)) { cids.push(g2); }
					}
				}
			}
			if (cids.length === 0) {
				console.log("SIN CIDs: " + base);
				continue;
			}
			const encMatches = [...texto.matchAll(/mod:SetEncounterID\(([^)\n]+)\)/g)];
			let enc = null;
			for (const em of encMatches) {
				const ids = em[1].match(/\d+/g);
				if (ids && ids.length > 0) { enc = ids; break; }
			}
			const zonMatch = texto.match(/mod:SetZone\((\d+)\)/);
			const zona = zonMatch ? zonMatch[1] : (ZONA_CARPETA[subCarpeta] || null);
			const avisos = extraerAvisos(texto);
			jefes.push({ fichero: base, tipo: g.tipo, orden: subCarpeta, cids, enc, zona, avisos });
		}
	}

	// Sin divisiones de facción: Legion no trae variantes de facción por
	// encuentro (LFR/mythic llevan los mismos CIDs).

	// Orden de salida: bandas (por enc), mazmorras (por enc), mundo (por enc)
	jefes.sort((a, b) => {
		const gRank = (t) => (t === "banda" ? 0 : t === "mazmorra" ? 1 : 2);
		if (gRank(a.tipo) !== gRank(b.tipo)) { return gRank(a.tipo) - gRank(b.tipo); }
		if (a.orden !== b.orden) { return a.orden < b.orden ? -1 : 1; }
		return (a.enc || 99999) - (b.enc || 99999);
	});

	console.log("Módulos leídos: " + jefes.length);
	console.log("  banda: " + jefes.filter((j) => j.tipo === "banda").length);
	console.log("  mazmorra: " + jefes.filter((j) => j.tipo === "mazmorra").length);
	console.log("  mundo: " + jefes.filter((j) => j.tipo === "mundo").length);
	console.log("  sin ENC: " + jefes.filter((j) => !j.enc).length);
	console.log("  sin zona: " + jefes.filter((j) => !j.zona).length);

	// Nombre a 4 locales: corpus por CID; respaldo NOMBRES_WB4 (world
	// bosses, 4 locales) y CamelCase (todos los locales iguales: flag).
	function nombreIdioma(j) {
		for (const cid of j.cids) {
			const c = corpus[cid];
			if (c) {
				return { es: c.es || c.en, en: c.en, fr: c.fr || c.en, de: c.de || c.en, fuente: "corpus" };
			}
		}
		if (NOMBRES_WB4[j.fichero]) {
			return { ...NOMBRES_WB4[j.fichero], fuente: "mapa" };
		}
		const camel = etiquetaDeCamel(j.fichero).replace(/\b(\w)/g, (r) => r.toUpperCase());
		return { es: camel, en: camel, fr: camel, de: camel, fuente: "camel" };
	}
	const fuentes = { corpus: 0, mapa: 0, camel: 0 };
	for (const j of jefes) {
		j.nombre4 = nombreIdioma(j);
		fuentes[j.nombre4.fuentes || j.nombre4.fuente]++;
	}
	console.log("  nombres por fuente: corpus=" + fuentes.corpus + " mapa=" + fuentes.mapa + " camel=" + fuentes.camel);

	if (soloRevisar) {
		for (const j of jefes) {
			const avisos = j.avisos.slice(0, 4).map((a) => a.id + "/" + a.pista + (a.rolTank ? "/T" : ""));
			console.log(`  [${j.tipo}] ${j.nombre4.es} (${j.cids.join(",")}${j.enc ? " enc=" + j.enc : ""}${j.zona ? " zona=" + j.zona : ""}) [${j.nombre4.fuente}]: ${avisos.join(", ")}`);
		}
		return;
	}

	// ---- Escribe el pack ----
	await fs.mkdir(PACK, { recursive: true });

	function bullet(a, idioma) {
		const c = consejoDe(a.rolTank ? "tank" : a.pista);
		const etiqueta = (a.etiqueta && a.etiqueta.length > 0 && a.etiqueta !== a.id) ? a.etiqueta : a.id;
		return `\t"* |cff71d5ff|Hspell:${a.id}|h[${etiqueta}]|h|r: ${c[idioma] || c.en}",`;
	}

	// agrupa por zona para el banner
	const zonas = {};
	for (const j of jefes) {
		if (j.zona == null) { continue; }
		if (zonas[j.zona] == null) { zonas[j.zona] = { t4: TITULOS_ZONA4[j.zona] || { es: NOMBRES_ZONA[j.zona] || j.zona, en: NOMBRES_ZONA[j.zona] || j.zona, fr: NOMBRES_ZONA[j.zona] || j.zona, de: NOMBRES_ZONA[j.zona] || j.zona }, jefes: [] }; }
		zonas[j.zona].jefes.push(j);
	}

	const NOTAS = {
		es: "Datos del pack Legion, GENERADOS con scripts/generar-pack-legion.mjs desde los módulos DBM de Legion en _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Tácticas telegráficas honestas (tipo de aviso DBM); la prosa fina se cura a mano después. Nombres: corpus del journal (nombres-jefe) + mapa de world bosses.",
		en: "Legion pack data, GENERATED with scripts/generar-pack-legion.mjs from the Legion DBM modules in _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Telegraphic honest tactics (DBM hint-type); fine prose gets hand-curated later. Names: journal corpus (nombres-jefe) + world boss map.",
		fr: "Données du pack Legion, GÉNÉRÉES avec scripts/generar-pack-legion.mjs depuis les modules DBM de Legion dans _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Tactiques télégraphiques honnêtes (type d'alerte DBM); la prose fine est soignée à la main ensuite. Noms: corpus du journal (nombres-jefe) + carte des bosses de monde.",
		de: "Bosses_Legion-Daten, GENERIERT mit scripts/generar-pack-legion.mjs aus den Legion-DBM-Modulen in _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Telegrafische ehrliche Taktiken (DBM-Hinweistyp); die feine Prosa wird später von Hand gepflegt. Namen: Journal-Korpus (nombres-jefe) + Weltboss-Karte.",
	};

	function ficheroIdioma(idioma) {
		let out = `--[[
	Bosses_Legion_${idioma}.lua
		${NOTAS[idioma]}
		Orden del propietario 2026-10-15: los cuatro locales del tirón.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ${idioma} = {};
local pack = ${idioma};
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

`;
		let zonaUltima = null;
		for (const j of jefes) {
			if (j.zona !== zonaUltima) {
				if (zonaUltima !== null) { out += "\n"; }
				const nom = zonas[j.zona]?.t4?.[idioma] ?? (j.tipo === "mundo" ? { es: "Jefes de mundo", en: "World bosses", fr: "Bosses de monde", de: "Weltnnoss" }[idioma] : j.zona);
				const esMundo = j.tipo === "mundo";
				out += `-- --------------------------------- --
-- ${nom}${j.zona && !esMundo ? " : Zona " + j.zona : ""} --
-- --------------------------------- --

`;
				zonaUltima = j.zona;
			}
			const nombre = j.nombre4[idioma] || j.nombre4.en;
			const ids = j.cids;
			const avisos = elegirAvisos(j);
			if (ids.length === 1) {
				out += `pack["${ids[0]}"] = { "${nombre}",\n`;
				for (const a of avisos) { out += bullet(a, idioma) + "\n"; }
				out += "};\n\n";
			} else {
				out += `bos = { "${nombre}",\n`;
				for (const a of avisos) { out += bullet(a, idioma) + "\n"; }
				out += "};\n";
				for (const id of ids) { out += `pack["${id}"] = bos; `; }
				out = out.replace(/\s+$/, "") + "\n\n";
			}
		}
		out += `P.${idioma} = ${idioma};\n`;
		return out;
	}

	function elegirAvisos(j) {
		// prioridad: tanque primero, luego por orden de aparición; tope 4
		const vistos = new Set();
		const sel = [];
		const tanque = j.avisos.filter((a) => a.rolTank);
		const resto = j.avisos.filter((a) => !a.rolTank);
		for (const a of [...tanque, ...resto]) {
			if (vistos.has(a.id)) { continue; }
			vistos.add(a.id);
			if (a.id.length < 4) { continue; }
			sel.push(a);
			if (sel.length >= 4) { break; }
		}
		return sel;
	}

	for (const idioma of ["es", "en", "fr", "de"]) {
		await fs.writeFile(path.join(PACK, `Bosses_Legion_${idioma}.lua`), ficheroIdioma(idioma), "utf8");
	}

	// ENC
	let encOut = `--[[
	Bosses_Legion_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		scripts/generar-pack-legion.mjs (fuente: _doc/DBM). El core lo usa
		para resolver ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

`;
	let vistoEnc = new Set();
	for (const j of jefes) {
		const encIds = Array.isArray(j.enc) ? j.enc : (j.enc ? [j.enc] : []);
		const nuevos = encIds.filter((e) => !vistoEnc.has(e));
		if (nuevos.length > 0 && j.tipo !== "mundo") {
			for (const e of nuevos) {
				vistoEnc.add(e);
				encOut += `enc["${e}"] = "${j.cids.join(",")}"; -- ${j.nombre4.en}\n`;
			}
		} else if (j.tipo === "mundo") {
			encOut += `-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): ${j.nombre4.en} (${j.cids.join(",")}${encIds.length > 0 ? ", plaza DBM " + encIds.join(",") : ""})\n`;
		} else {
			encOut += `-- SIN ENC: ${j.nombre4.en || j.nombre4.es} (${j.cids.join(",")}) — resolver cuando el diario traiga el encuentro\n`;
		}
	}
	encOut += "\nP.enc = enc;\n";
	await fs.writeFile(path.join(PACK, "Bosses_Legion_enc.lua"), encOut, "utf8");

	console.log("\nPack escrito en " + PACK);
	console.log("  Bosses_Legion_es.lua, Bosses_Legion_en.lua, Bosses_Legion_fr.lua, Bosses_Legion_de.lua, Bosses_Legion_enc.lua (_zonas/.toc/registrador intactos)");
}

main().catch((err) => {
	console.error("Error:", err);
	process.exit(1);
});