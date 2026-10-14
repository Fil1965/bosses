// scripts/generar-pack-bfa.mjs
// Genera el pack Bosses_BfA (entradas _es/_en + ENC) a partir de los
// módulos DBM de BfA en _doc/DBM:
//   DBM-Party-BfA (mazmorras), DBM-Raids-BfA (bandas) y DBM-BfA
//   (jefes de mundo). Los IDs (encounter/criatura/zona) salen de los
//   módulos; las tácticas telegráficas se derivan de las PISTAS de los
//   propios módulos (tipo de aviso: tanque, esbirros, interrupt, suelo,
//   embestida, absorción...) — honestas y neutras; el texto fino lo curan
//   a mano después (o el editor de notas, fase 2).
//
// _zonas NO se reescribe (la del pack ya está generada y curada),
// ni .toc, ni registrador, ni _fr/_de (el esqueleto es ES/EN, como MoP).
//
// Nombres: corpus _nombres/jefes-Bosses_BfA.json (npm run nombres-jefe
// -- --pack Bosses_BfA) cuando el CID tiene par; respaldo: mapa NOMBRES
// y derivación CamelCase del fichero del módulo.
//
// Uso: node scripts/generar-pack-bfa.mjs [--revisar]

import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DOC_DBM = path.join(SRC, "_doc", "DBM");
const PACK = path.join(SRC, "Bosses_BfA");
const CORPUS = path.join(SRC, "_nombres", "jefes-Bosses_BfA.json");

// Nombres EN de respaldo por fichero de módulo (cuando el corpus no trae
// el par). Los que no están aquí, se derivan del CamelCase del módulo.
const NOMBRES = {
	// Atal'Dazar
	Alunza: "Priestess Alun'za",
	Rezan: "Rezan",
	Volkaal: "Vol'kaal",
	Yazma: "Yazma",
	// Freehold
	CounciloCaptains: "Council of Captains",
	HarlanSweete: "Harlan Sweete",
	RingofBooty: "Ring of Booty",
	SkycapnKragg: "Sky Captain Kragg",
	// Kings' Rest
	CouncilofTribes: "The Council of Tribes",
	Dazar: "King Dazar",
	GoldenSerpent: "The Golden Serpent",
	Mchimba: "Mchimba Ritualbinder",
	// Mechagon (mazmorra)
	Gunker: "Gunker",
	HK8: "HK-8 Aerial Annotation Unit",
	KingGobbamak: "King Gobbamak",
	KingMechagon: "King Mechagon",
	KUJ0: "K.U.-J0.",
	MachinistGarden: "Machinist's Garden",
	Trixie_Naeno: "Trixie and Naeno",
	TussleTonks: "Tussle Tonks",
	// Shrine of the Storm
	Agusirr: "Augh'zirr",
	Stormsong: "Vol'zith the Whisperer",
	TidesageCouncil: "Tidesage Council",
	Volzith: "Vol'zith the Whisperer",
	// Siege of Boralus
	Darkfathom: "Dread Captain Darkfathom",
	Lockwood: "Captain Lockwood",
	Redhook_Bainbridge: "Sergeant Bainbridge",
	ViqGoth: "Viq'Goth",
	// Temple of Sethraliss
	AdderisandAspix: "Adderis and Aspix",
	AvatarofSethraliss: "Avatar of Sethraliss",
	Galvazzt: "Gal'vazzt",
	Merektha: "Merektha",
	// The MOTHERLODE!!
	Azerokk: "Azerokk",
	CrowdPummeler: "Crowd Pummeler 9-60",
	MogulRazzdunk: "Mogul Razdunk",
	RixxaFluxflame: "Rixxa Fluxflame",
	// The Underrot
	ElderLeaxa: "Elder Leaxa",
	InfestedCrawg: "Infested Crawg",
	SporecallerZancha: "Sporecaller Zancha",
	Unbound: "Unbound Abomination",
	// Tol Dagor
	JesHowlis: "Jes Howlis",
	Korgus: "Overseer Korgus",
	TheSandQueen: "The Sand Queen",
	Valyri: "Knight Captain Valyri",
	// Waycrest Manor
	GorakTul: "Gorak Tul",
	HeartsbaneTriad: "Heartsbane Triad",
	RaaltheGlut: "Raal the Gluttonous",
	SoulboundGoliath: "Soulbound Goliath",
	Waycrests: "Lord and Lady Waycrest",
	// Uldir
	Taloc: "Taloc the Corrupted",
	Mother: "MOTHER",
	FetidDevourer: "Fetid Devourer",
	Vectis: "Vectis",
	Zekvhozj: "Zek'voz, Herald of N'zoth",
	Zul: "Zul, Reborn",
	Mythrax: "Mythrax the Unraveler",
	Ghuun: "G'huun",
	// Battle of Dazar'alor
	ChampionofLight: "Champion of the Light",
	Grong: "Grong",
	JadefireMasters: "Jadefire Masters",
	Mekkatorque: "High Tinker Mekkatorque",
	Opulence: "Opulence",
	Rastakhan: "King Rastakhan",
	StormwallBlockade: "Stormwall Blockade",
	Jaina: "Grand Admiral Jaina Proudmoore",
	ConclaveoftheChosen: "Conclave of the Chosen",
	// Crucible of Storms
	RestlessCabal: "The Restless Cabal",
	Uunat: "Uu'nat, Herald of the Void",
	// Eternal Palace
	AbyssalCommanderSivara: "Abyssal Commander Sivara",
	BlackwaterBehemoth: "Blackwater Behemoth",
	LadyPriscillaAshvane: "Lady Priscilla Ashvane",
	Orgozoa: "Orgozoa",
	TheQueensCourt: "The Queen's Court",
	Zaqul: "Za'qul, Herald of Ny'alotha",
	RadianceofAzshara: "Radiance of Azshara",
	QueenAzshara: "Queen Azshara",
	// Ny'alotha
	Maut: "Maut",
	TheProphetSkitra: "The Prophet Skitra",
	DarkInquisitorXanesh: "Dark Inquisitor Xanesh",
	ShadharTheInsatiable: "Shad'har the Insatiable",
	Drestagath: "Drest'agath",
	IlgynothCorruptionReborn: "Il'gynoth, Corruption Reborn",
	NZothTheCorruptor: "N'Zoth the Corruptor",
	TheHivemind: "The Hivemind",
	RadenTheDespoiled: "Ra-den the Despoiled",
	Vexiona: "Vexiona",
	Wrathion: "Wrathion, the Black Emperor",
	CarapaceofNZoth: "The Carapace of N'Zoth",
	// Jefes de mundo (títulos EN de localization.en.lua)
	Azurethos: "Azurethos, The Winged Typhoon",
	DoomsHowl: "Doom's Howl",
	HailstoneConstruct: "Hailstone Construct",
	Ivus: "Ivus",
	Jiarak: "Ji'arak",
	Kraulok: "Dunegorger Kraulok",
	Shekzara: "Grand Empress Shek'zara",
	Tzane: "T'zane",
	Ulmath: "Ulmath, the Soulbinder",
	Vuklaz: "Vuk'laz the Earthbreaker",
	Wekemara: "Wekemara",
	Yenajz: "Warbringer Yenajz",
};

// Nombres de MOD/pelea a 4 locales (datos del dueño por chat, 2026-10; los
// apóstrofes van RECTOS por convención de la casa; EN = títulos verificables
// de localization.en.lua del DBM). Prioridad sobre corpus.
const NOMBRES_MOD4 = {
	ChampionofLight: {
		es: "Ra'wani Kanae y Frida Fuelleférreo",
		en: "Ra'wani Kanae and Frida Ironbellows",
		fr: "Ra'wani Kanae et Frida Souffrefer",
		de: "Ra'wani Kanae und Frida Eisenbalg",
	},
	Grong: { es: "Grong", en: "Grong", fr: "Grong", de: "Grong" }, // variante de facción de BoD, igual en los 4 (del dueño)
	// Jefes de mundo (nombre del dueño en ES/FR/DE + título EN del DBM)
	Azurethos: { es: "Azurethos", en: "Azurethos, The Winged Typhoon", fr: "Azurethos", de: "Azurethos" },
	HailstoneConstruct: { es: "Ensamblaje de granizo", en: "Hailstone Construct", fr: "Assemblage de grêlons", de: "Hagelkonstrukt" }, // ES del dueño («Constructo Piedrahelada» era provisional)
	Jiarak: { es: "Ji'arak", en: "Ji'arak", fr: "Ji'arak", de: "Ji'arak" },
	Kraulok: { es: "Tragadunas Kraulok", en: "Dunegorger Kraulok", fr: "Kraulok Mange-dunes", de: "Dünenfresser Kraulok" },
	Shekzara: { es: "Gran emperatriz Shek'zara", en: "Grand Empress Shek'zara", fr: "Grande impératrice Shek'zara", de: "Großkaiserin Shek'zara" },
	Tzane: { es: "T'zane", en: "T'zane", fr: "T'zane", de: "T'zane" },
	Ulmath: { es: "Ulmath", en: "Ulmath, the Soulbinder", fr: "Ulmath", de: "Ulmath" },
	Wekemara: { es: "Wekemara", en: "Wekemara", fr: "Wekemara", de: "Wekemara" },
	Vuklaz: { es: "Vuk'laz el Rompetierras", en: "Vuk'laz the Earthbreaker", fr: "Vuk'laz le Brise-Terre", de: "Vuk'laz der Erdenbrecher" },
	Yenajz: { es: "Belisario Yenajz", en: "Warbringer Yenajz", fr: "Tresse-guerre Yenajz", de: "Kriegshetzer Yenajz" },
};

// Divisiones de módulo que juntan DOS variantes de facción con criaturas
// DISTINTAS (dos encuentros): el pack las separa — decisión del dueño
// (2026-10) para Redhook/Bainbridge, Jadefire Masters, Ivus y Aullido/Rugido.
// Las piezas SIN `enc` heredan el enc del módulo (los jefes de mundo van
// solos por comentario; el resto declara su encuentro).
const SPLIT_MODS = {
	Redhook_Bainbridge: [
		{ cids: ["128650"], enc: ["2098"], nombres: { es: "Cortador Ganchorrojo", en: "Chopper Redhook", fr: "Hachoir Rougecrochet", de: "Rothaken der Häcksler" } },
		{ cids: ["130834"], enc: ["2097"], nombres: { es: "Sargento Bainbridge", en: "Sergeant Bainbridge", fr: "Sergent Bainbridge", de: "Sergeant Bainbridge" } },
	],
	JadefireMasters: [
		{ cids: ["144691", "144692"], enc: ["2266"], nombres: { es: "Ma'ra Colmillotétrico y Anathos Fuego Llamado", en: "Ma'ra Grimfang and Anathos Firecaller", fr: "Ma'ra Balafre-d'effroi et Anathos Invocateur de feu", de: "Ma'ra Schreckenszahn und Anathos Flammenruf" } },
		{ cids: ["144693", "144690"], enc: ["2285"], nombres: { es: "Manceroy Puño Llama y Mestrah", en: "Manceroy Flamefist and Mestrah", fr: "Manceroy Poing-de-flammes et Mestrah", de: "Manceroy Flammfaust und Mestrah" } },
	],
	Ivus: [
		{ cids: ["148295"], nombres: { es: "Ivus el Descomunal", en: "Ivus the Decayed", fr: "Ivus le Purulent", de: "Ivus der Zerrüttete" } },
		{ cids: ["144946"], nombres: { es: "Ivus el Señor del Bosque", en: "Ivus the Forest Lord", fr: "Ivus le Seigneur de la forêt", de: "Ivus der Waldlord" } },
	],
	DoomsHowl: [
		{ cids: ["138122"], nombres: { es: "Aullido del Destino", en: "Doom's Howl", fr: "Hurlesang", de: "Brüllende Klinge" } },
		{ cids: ["137374"], nombres: { es: "Rugido del León", en: "Lion's Roar", fr: "Rugissement du lion", de: "Brüllen des Löwen" } },
	],
};

// Zona de respaldo por carpeta (los módulos que no traen SetZone).
const ZONA_CARPETA = {
	AtalDazar: "1763",
	Freehold: "1754",
	KingsRest: "1762",
	Mechagon: "2097",
	ShrineoftheStorm: "1864",
	SiegeofBoralus: "1822",
	TempleofSethraliss: "1877",
	TheMotherload: "1594",
	TheUnderrot: "1841",
	TolDagor: "1771",
	WaycrestManor: "1862",
	BattleofDazaralor: "2070",
	CrucibleofStorms: "2096",
	EternalPalace: "2164",
	Nyalotha: "2217",
	Uldir: "1861",
};

// Nombres EN de zona (para el banner del fichero de idioma).
const NOMBRES_ZONA = {
	"1763": "Atal'Dazar",
	"1754": "Freehold",
	"1762": "Kings' Rest",
	"2097": "Operation: Mechagon",
	"1864": "Shrine of the Storm",
	"1822": "Siege of Boralus",
	"1877": "Temple of Sethraliss",
	"1594": "The MOTHERLODE!!",
	"1841": "The Underrot",
	"1771": "Tol Dagor",
	"1862": "Waycrest Manor",
	"2070": "Battle of Dazar'alor",
	"2096": "Crucible of Storms",
	"2164": "The Eternal Palace",
	"2217": "Ny'alotha",
	"1861": "Uldir",
};

// Consejo (ES/EN) según la pista del módulo. Honesto y neutro: el detalle
// fino lo lleva el tooltip del hechizo (el cliente lo localiza por id).
const CONSEJOS = [
	{ clave: /"tank"|"Tank|TANKBUSTER|TANK\b|tauntboss|stackhigh|defensive/, es: "del tanque: alternad y defensivas.", en: "tank mechanic: swap and use defensives." },
	{ clave: /killmob|bigmob/, es: "esbirros, prioridad.", en: "adds, kill them fast." },
	{ clave: /chargemove/, es: "embestida, fuera de su línea.", en: "charge, move out of the way." },
	{ clave: /watchfeet|watchstep|orbrun/, es: "fuera del suelo.", en: "watch the ground." },
	{ clave: /kickcast/, es: "interrumpir.", en: "interrupt." },
	{ clave: /justrun/, es: "correr, escape.", en: "run, do not fight it." },
	{ clave: /aesoon/, es: "daño de área, curas.", en: "AoE damage, heals." },
	{ clave: /debuffyou|targetyou/, es: "el marcado se aleja del grupo.", en: "the marked moves away from the group." },
	{ clave: /absorbyou|helpsoak|soak/, es: "se absorbe, compartir daño.", en: "soak it, share the damage." },
	{ clave: /lineyou|lineapart|scattersoon|catchballs/, es: "separarse en línea.", en: "spread out in a line." },
	{ clave: /runout/, es: "sal de ti, aléjate del grupo.", en: "get away from the group." },
	{ clave: /mobsoon/, es: "esbirros por venir.", en: "adds incoming." },
];

function consejoDe(pista) {
	for (const c of CONSEJOS) {
		if (c.clave.test(pista)) {
			return c;
		}
	}
	return { es: "cuidado.", en: "watch out." };
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
		let rolTank = /"Tank[^"]*"|TANKBUSTER|TANK\b/.test(m[0]) || /tauntboss|stackhigh/.test(pista);
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
		{ carpeta: "DBM-Party-BfA", tipo: "mazmorra" },
		{ carpeta: "DBM-Raids-BfA", tipo: "banda" },
		{ carpeta: "DBM-BfA", tipo: "mundo" },
	];

	const jefes = []; // { id, nombre, tipo, zona, cids[], enc, avisos[] }

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
			// Primer SetCreatureID con ids numéricos reales (algunos módulos
			// llevan antes la línea-plantilla mod:SetCreatureID(creatureID, creatureID2));
			const cidRe = /mod:SetCreatureID\(([^)]+)\)/g;
			let cids = [];
			let cm;
			while ((cm = cidRe.exec(texto)) !== null) {
				const cand = cm[1].split(",").map((s) => s.trim()).filter((s) => /^\d+$/.test(s) && s !== "99999");
				if (cand.length > 0) { cids = cand; break; }
			}
			if (cids.length === 0) {
				// II pasadas: los módulos BoD/warfront atan los CIDs con
				// líneas `dungeonID, creatureID[, creatureID2] = <mod>, <cid>` —
				// el 2º/3º literal = criatura real; el 1º es id de MOD, NO de jornal.
				const cidRe2 = /dungeonID,\s*creatureID\d?(?:\s*,\s*creatureID\d?)?\s*=\s*(\d+)\s*,\s*(\d+)(?:\s*,\s*(\d+))?/g;
				let cm2;
				while ((cm2 = cidRe2.exec(texto)) !== null) {
					for (const g of [cm2[2], cm2[3]]) {
						if (g && /^\d+$/.test(g) && g !== "99999" && !cids.includes(g)) { cids.push(g); }
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
				if (ids && ids.length > 0) { enc = ids; break; } // primer SetEncounterID; admite listas (variante de facción con 2+ encuentros)
			}
			const zonMatch = texto.match(/mod:SetZone\((\d+)\)/);
			const zona = zonMatch ? zonMatch[1] : (ZONA_CARPETA[subCarpeta] || null);
			const avisos = extraerAvisos(texto);
			jefes.push({ fichero: base, tipo: g.tipo, orden: subCarpeta, nombre: NOMBRES[base] || etiquetaDeCamel(base).replace(/\b(\w)/g, (r) => r.toUpperCase()), cids, enc, zona, avisos });
		}
	}

	// Divisiones de variantes de facción (criaturas distintas por encuentro).
	const jefesFinales = [];
	for (const j of jefes) {
		const piezas = SPLIT_MODS[j.fichero];
		if (!piezas) { jefesFinales.push(j); continue; }
		for (const pieza of piezas) {
			jefesFinales.push({ ...j, cids: pieza.cids, enc: pieza.enc !== undefined ? pieza.enc : j.enc, nombre4: pieza.nombres });
		}
	}
	jefes.length = 0;
	jefes.push(...jefesFinales);

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

	// Pareo con el corpus (4 idiomas) por el primer CID presente; los
	// nombres a mano (NOMBRES_MOD4 y las piezas SPLIT) ganan al corpus.
	function nombreIdioma(j) {
		const aMano = NOMBRES_MOD4[j.fichero];
		if (aMano) { return aMano; }
		for (const cid of j.cids) {
			const c = corpus[cid];
			if (c) {
				return { es: c.es || c.en, en: c.en, fr: c.fr || c.en, de: c.de || c.en, fuente: c.en ? "corpus" : "corpus?" };
			}
		}
		return null;
	}
	let conCorpus = 0;
	for (const j of jefes) {
		if (j.nombre4) { conCorpus++; continue; } // las piezas SPLIT ya llevan su nombre
		j.nombre4 = nombreIdioma(j);
		if (j.nombre4) { conCorpus++; }
	}
	console.log("  con corpus 4l: " + conCorpus + " de " + jefes.length);

	if (soloRevisar) {
		for (const j of jefes) {
			const avisos = j.avisos.slice(0, 4).map((a) => a.id + "/" + a.pista + (a.rolTank ? "/T" : ""));
			const nom = j.nombre4 ? "ES=" + j.nombre4.es : j.nombre;
			console.log(`  [${j.tipo}] ${nom} (${j.cids.join(",")}${j.enc ? " enc=" + j.enc : ""}${j.zona ? " zona=" + j.zona : ""}): ${avisos.join(", ")}`);
		}
		return;
	}

	// ---- Escribe el pack ----
	await fs.mkdir(PACK, { recursive: true });

	function bullet(a, idioma) {
		const c = consejoDe(a.rolTank ? "tank" : a.pista);
		const etiqueta = (a.etiqueta && a.etiqueta.length > 0 && a.etiqueta !== a.id) ? a.etiqueta : a.id;
		const texto = idioma === "es" ? c.es : c.en;
		return `\t"* |cff71d5ff|Hspell:${a.id}|h[${etiqueta}]|h|r: ${texto}",`;
	}

	// agrupa por zona para el banner
	const zonas = {};
	for (const j of jefes) {
		if (j.zona == null) { continue; }
		if (zonas[j.zona] == null) { zonas[j.zona] = { nombre: NOMBRES_ZONA[j.zona] || j.zona, jefes: [] }; }
		zonas[j.zona].jefes.push(j);
	}

	function ficheroIdioma(idioma) {
		let out = `--[[
	Bosses_BfA_${idioma}.lua
		Datos ${idioma === "es" ? "en español" : "en inglés"} del pack Battle for Azeroth, GENERADO con
		scripts/generar-pack-bfa.mjs desde los módulos DBM de BfA en _doc
		(DBM-Party-BfA, DBM-Raids-BfA, DBM-BfA). El registro lo hace
		Bosses_BfA.lua, que se carga después en el .toc.
		Las tácticas son telegráficas y honestas (derivadas del tipo de
		aviso de DBM); los tooltips de los hechizos localizan por sí solos.
		Nombres: corpus del journal (nombres-jefe) + respaldo del mapa.
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
				const nom = zonas[j.zona]?.nombre ?? (j.tipo === "mundo" ? "Jefes de mundo" : j.zona);
				const esMundo = j.tipo === "mundo";
				out += `-- --------------------------------- --
-- ${nom}${j.zona && !esMundo ? " : Zona " + j.zona : ""} --
-- --------------------------------- --

`;
				zonaUltima = j.zona;
			}
			const nombre = (j.nombre4 && j.nombre4[idioma]) ? j.nombre4[idioma] : j.nombre;
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

	const esOut = ficheroIdioma("es");
	const enOut = ficheroIdioma("en");
	await fs.writeFile(path.join(PACK, "Bosses_BfA_es.lua"), esOut, "utf8");
	await fs.writeFile(path.join(PACK, "Bosses_BfA_en.lua"), enOut, "utf8");

	// ENC
	let encOut = `--[[
	Bosses_BfA_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		scripts/generar-pack-bfa.mjs (fuente: _doc/DBM). El core lo usa
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
		// Los jefes de mundo comparten el ENC-plaza 1880 de DBM (colisión);
		// no resuelven por diario sino por GUID, así que solo comentario.
		if (nuevos.length > 0 && j.tipo !== "mundo") {
			for (const e of nuevos) {
				vistoEnc.add(e);
				encOut += `enc["${e}"] = "${j.cids.join(",")}"; -- ${(j.nombre4 && j.nombre4.en) || j.nombre}\n`;
			}
		} else if (j.tipo === "mundo") {
			encOut += `-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): ${(j.nombre4 && j.nombre4.en) || j.nombre} (${j.cids.join(",")}${encIds.length > 0 ? ", plaza DBM " + encIds.join(",") : ""})\n`;
		} else {
			encOut += `-- SIN ENC: ${j.nombre} (${j.cids.join(",")}) — resolver cuando el diario traiga el encuentro\n`;
		}
	}
	encOut += "\nP.enc = enc;\n";
	await fs.writeFile(path.join(PACK, "Bosses_BfA_enc.lua"), encOut, "utf8");

	console.log("\nPack escrito en " + PACK);
	console.log("  Bosses_BfA_es.lua, Bosses_BfA_en.lua, Bosses_BfA_enc.lua (_zonas/.toc/registrador intactos)");
}

main().catch((err) => {
	console.error("Error:", err);
	process.exit(1);
});