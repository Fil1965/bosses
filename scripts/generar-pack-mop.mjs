// scripts/generar-pack-mop.mjs
// Genera el pack Bosses_MoP (entradas _es/_en + ENC + zonas + .toc del
// registrador) a partir de los módulos DBM de MoP en _doc/DBM:
//   DBM-Party-MoP (mazmorras), DBM-Raids-MoP (bandas) y DBM-Pandaria
//   (jefes de mundo). Los IDs (encounter/criatura/zona) salen de los
//   módulos; las tácticas telegráficas se derivan de las PISTAS de los
//   propios módulos (tipo de aviso: tanque, esbirros, interrupt, suelo,
//   embestida, absorción...) — honestas y neutras; el texto fino lo curan
//   a mano después (o el editor de notas, fase 2).
//
// Uso: node scripts/generar-pack-mop.mjs [--revisar] (con --revisar solo
// muestra el informe; sin él, escribe el pack).

import { promises as fs } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DOC_DBM = path.join(SRC, "_doc", "DBM");
const PACK = path.join(SRC, "Bosses_MoP");

// Nombres reales (EN) por fichero de módulo: el elemento 1 de las
// entradas. Los que no están aquí, se derivan del CamelCase del módulo.
const NOMBRES = {
	// Mazmorras
	Gadok: "Striker Ga'dok",
	Kiptilak: "Kiptilak", // pendiente de confirmar nombre in-game
	Rimok: "Commander Ri'mok",
	Raigonn: "Raigonn",
	WiseMari: "Wise Mari",
	LibraryEvent: "Library Event",
	LiuFlameheart: "Liu Flameheart",
	ShaofDoubt: "Sha of Doubt",
	Gekkan: "Gekkan",
	TrialoftheKing: "Trial of the King",
	WeaponmasterXin: "Weaponmaster Xin",
	Jinbak: "Vizier Jin'bak",
	Vojak: "Commander Vo'jak",
	Pavalak: "General Pavalak", // pendiente de confirmar
	Neronok: "Neronok", // pendiente de confirmar
	ThalnosSoulrender: "Thalnos the Soulrender",
	Korlof: "Brother Korloff",
	Durand: "Commander Durand",
	FlameweaverKoegler: "Flameweaver Koegler",
	Braun: "Brother Braun",
	Harlan: "Armsmaster Harlan",
	Chillheart: "Instructor Chillheart",
	JandiceBarov: "Jandice Barov",
	Rattlegore: "Rattlegore",
	LillianVoss: "Lilian Voss",
	DarkmasterGandling: "Darkmaster Gandling",
	GuCloudstrike: "Gu Cloudstrike",
	Snowdrift: "Master Snowdrift",
	ShaofViolence: "Sha of Violence",
	TaranZhu: "Taran Zhu",
	OokOok: "Ook-Ook",
	Hoptallus: "Hoptallus",
	YanZhu: "Yan-Zhu the Uncasked",
	// Bandas
	StoneGuard: "The Stone Guard",
	Feng: "Feng the Accursed",
	GarajalTheSpiritBinder: "Gara'jal the Spiritbinder",
	SpiritKings: "The Spirit Kings",
	Elegon: "Elegon",
	WillofEmperor: "Will of the Emperor",
	Zorlok: "Zor'lok",
	Tayak: "Blade Lord Ta'yak",
	Garalon: "Garalon",
	Meljarak: "Wind Lord Mel'jarak",
	Unsok: "Amber-Shaper Un'sok",
	Shekzeer: "Empress Shek'zeer",
	ProtectorsofEndless: "Protectors of Endless",
	Tsulong: "Tsulong",
	LeiShi: "Lei Shi",
	ShaofFear: "Sha of Fear",
	Jinrokh: "Jin'rokh the Breaker",
	Horridon: "Horridon",
	CouncilofElders: "Council of Elders",
	Tortos: "Tortos",
	Megaera: "Megaera",
	JiKun: "Ji-Kun",
	Durumu: "Durumu the Forgotten",
	Primordius: "Primordius",
	DarkAnimus: "Dark Animus",
	IronQon: "Iron Qon",
	TwinEmpyreans: "The Twin Empyreans",
	LeiShen: "Lei Shen",
	Raden: "Ra-Den",
	Immerseus: "Immerseus",
	FallenProtectors: "The Fallen Protectors",
	Norushen: "Norushen",
	ShaofPride: "Sha of Pride",
	Galakras: "Galakras",
	IronJuggernaut: "Iron Juggernaut",
	KorkronDarkShaman: "Kor'kron Dark Shaman",
	GeneralNazgrim: "General Nazgrim",
	Malkorok: "Malkorok",
	SpoilsOfPandria: "Spoils of Pandaria",
	ThokTheBloodthirsty: "Thok the Bloodthirsty",
	SiegecrafterBlackfuse: "Siegecrafter Blackfuse",
	ParagonsOfTheKlaxxi: "Paragons of the Klaxxi",
	GarroshHellscream: "Garrosh Hellscream",
	// Jefes de mundo
	Anger: "Anger",
	ChiJi: "Chi Ji",
	Nalak: "Nalak",
	Niuzao: "Niuzao",
	Oondasta: "Oondasta",
	Ordos: "Ordos",
	Salyis: "Salyis",
	Xuen: "Xuen",
	Yulon: "Yu'lon",
	Zandalari: "Zandalari Warbringers",
};

// Nombres de zona (EN) por id; los que no quedan, del SetZone o del nombre
// de carpeta.
const NOMBRES_ZONA = {
	"1008": "Mogushan Vaults",
	"1009": "Heart of Fear",
	"996": "Terrace of Endless Spring",
	"1098": "Throne of Thunder",
	"1136": "Siege of Orgrimmar",
	"962": "Gate of the Setting Sun",
	"960": "Temple of the Jade Serpent",
	"994": "Mogu'shan Palace",
	"1011": "Siege of Niuzao Temple",
	"1004": "Scarlet Monastery (MoP)",
	"1001": "Scarlet Halls",
	"1007": "Scholomance",
	"959": "Shado-Pan Monastery",
	"961": "Stormstout Brewery",
};

// Zona de respaldo por carpeta (los módulos que no traen SetZone: los ids
// de mapa los dan los módulos de LittleWigs).
const ZONA_CARPETA = {
	GateSettingSun: "962",
	JadeSerpentTemple: "960",
	MogushanPalace: "994",
	NiuzaoTemple: "1011",
	Scholomance: "1007",
	ScarletCathedral: "1004",
	ScarletHalls: "1001",
	ShadoPanMonastery: "959",
	StormstoutBrewery: "961",
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

	const grupos = [
		{ carpeta: "DBM-Party-MoP", tipo: "mazmorra" },
		{ carpeta: "DBM-Raids-MoP", tipo: "banda" },
		{ carpeta: "DBM-Pandaria", tipo: "mundo" },
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
			const cidsMatch = texto.match(/mod:SetCreatureID\(([^)]+)\)/);
		 const cids = cidsMatch
				? cidsMatch[1].split(",").map((s) => s.trim()).filter((s) => /^\d+$/.test(s) && s !== "99999")
				: [];
			if (cids.length === 0) { continue; }
			const encMatch = texto.match(/mod:SetEncounterID\((\d+)\)/);
			const enc = encMatch ? encMatch[1] : null;
			const zonMatch = texto.match(/mod:SetZone\((\d+)\)/);
			const zona = zonMatch ? zonMatch[1] : (ZONA_CARPETA[subCarpeta] || null);
			const avisos = extraerAvisos(texto);
			jefes.push({ fichero: base, tipo: g.tipo, orden: subCarpeta, nombre: NOMBRES[base] || etiquetaDeCamel(base).replace(/\b(\w)/g, (r) => r.toUpperCase()), cids, enc, zona, avisos });
		}
	}

	// Orden de salida: bandas (por enc), mazmorras (por enc), mundo (por enc)
	jefes.sort((a, b) => {
		const gRank = (t) => (t === "banda" ? 0 : t === "mazmorra" ? 1 : 2);
		if (gRank(a.tipo) !== gRank(b.tipo)) { return gRank(a.tipo) - gRank(b.tipo); }
		if (a.orden !== b.orden) { return a.orden < b.orden ? -1 : 1; }
		return (a.enc || 99999) - (b.enc || 99999);
	});

	console.log("Moduleos leídos: " + jefes.length);
	console.log("  banda: " + jefes.filter((j) => j.tipo === "banda").length);
	console.log("  mazmorra: " + jefes.filter((j) => j.tipo === "mazmorra").length);
	console.log("  mundo: " + jefes.filter((j) => j.tipo === "mundo").length);
	console.log("  sin ENC: " + jefes.filter((j) => !j.enc).length);
	console.log("  sin zona: " + jefes.filter((j) => !j.zona).length);

	if (soloRevisar) {
		for (const j of jefes) {
			const avisos = j.avisos.slice(0, 4).map((a) => a.id + "/" + a.pista + (a.rolTank ? "/T" : ""));
			console.log(`  [${j.tipo}] ${j.nombre} (${j.cids.join(",")}${j.enc ? " enc=" + j.enc : ""}${j.zona ? " zona=" + j.zona : ""}): ${avisos.join(", ")}`);
		}
		return;
	}

	// ---- Escribe el pack ----
	await fs.mkdir(PACK, { recursive: true });

	function bullet(a) {
		const c = consejoDe(a.rolTank ? "tank" : a.pista);
		const etiqueta = (a.etiqueta && a.etiqueta.length > 0 && a.etiqueta !== a.id) ? a.etiqueta : a.id;
		return { es: `\t"* |cff71d5ff|Hspell:${a.id}|h[${etiqueta}]|h|r: ${c.es}",`, en: `\t"* |cff71d5ff|Hspell:${a.id}|h[${etiqueta}]|h|r: ${c.en}",` };
	}

	function tablaId(j) {
		return j.cids.map((c) => `"${c}"`);
	}

	// agrupa por zona para los ficheros de idioma
	const zonas = {};
	for (const j of jefes) {
		if (j.zona == null) { continue; }
		if (zonas[j.zona] == null) { zonas[j.zona] = { nombre: NOMBRES_ZONA[j.zona] || j.zona, jefes: [] }; }
		zonas[j.zona].jefes.push(j);
	}

	function ficheroIdioma(idioma) {
		let out = `--[[
	Bosses_Mop_${idioma}_GENERADO.lua -> Bosses_MoP_${idioma}.lua
		Datos ${idioma === "es" ? "en español" : "en inglés"} del pack MoP, GENERADO con
		scripts/generar-pack-mop.mjs desde los módulos DBM de MoP en _doc.
		Las tácticas son telegráficas y honestas (derivadas del tipo de
		aviso de DBM); los tooltips de los hechizos localizan por sí solos.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ${idioma} = {};
local pack = ${idioma};
local bos;

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
			const ids = j.cids;
			const avisos = elegirAvisos(j);
			if (ids.length === 1) {
				out += `pack["${ids[0]}"] = { "${j.nombre}",\n`;
				for (const a of avisos) { out += bullet(a)[idioma] + "\n"; }
				out += "};\n\n";
			} else {
				out += `bos = { "${j.nombre}",\n`;
				for (const a of avisos) { out += bullet(a)[idioma] + "\n"; }
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

	const es = ficheroIdioma("es");
	const en = ficheroIdioma("en");
	await fs.writeFile(path.join(PACK, "Bosses_MoP_es.lua"), es, "utf8");
	await fs.writeFile(path.join(PACK, "Bosses_MoP_en.lua"), en, "utf8");

	// ENC
	let encOut = `--[[
	Bosses_MoP_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM). Generado con scripts/generar-pack-mop.mjs.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local enc = {};

`;
	for (const j of jefes) {
		if (j.enc) {
			encOut += `enc["${j.enc}"] = "${j.cids.join(",")}"; -- ${j.nombre}\n`;
		} else {
			encOut += `-- SIN ENC: ${j.nombre} (${j.cids.join(",")})\n`;
		}
	}
	encOut += "\nP.enc = enc;\n";
	await fs.writeFile(path.join(PACK, "Bosses_MoP_enc.lua"), encOut, "utf8");

	// zonas
	let zonOut = `--[[
	Bosses_MoP_zonas.lua
		Índice de zonas del pack: instanceID (mapa MoP Classic) → nombre
		y jefes del pack. Generado con scripts/generar-pack-mop.mjs.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local zonas = {};

`;
	const zonPorId = {};
	for (const j of jefes) {
		if (j.zona == null || j.tipo === "mundo") { continue; }
		if (zonPorId[j.zona] == null) { zonPorId[j.zona] = []; }
		// solo el id primario (el primero con entrada)
		zonPorId[j.zona].push(j.cids[0]);
	}
	for (const idZona of Object.keys(zonPorId).sort((a, b) => Number(a) - Number(b))) {
		zonOut += `zonas["${idZona}"] = { nombre = "${NOMBRES_ZONA[idZona] || idZona}", jefes = { ${zonPorId[idZona].map((id) => `"${id}"`).join(", ")} } };\n`;
	}
	zonOut += "\nP.zonas = zonas;\n";
	await fs.writeFile(path.join(PACK, "Bosses_MoP_zonas.lua"), zonOut, "utf8");

	// registrador
	const reg = `--[[
	Bosses_MoP.lua
		Pack de datos de Mists of Pandaria: bandas, mazmorras y jefes de
		mundo. Generado con scripts/generar-pack-mop.mjs desde los módulos
		DBM de MoP en _doc (DBM-Raids-MoP, DBM-Party-MoP, DBM-Pandaria).
		Las tácticas telegráficas, estilo de la casa Bosses.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack MoP.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aqui solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack MoP incompleto (falta un fichero de idioma).");
	return;
end

BossesAPI.register("MoP", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas });
`;
	await fs.writeFile(path.join(PACK, "Bosses_MoP.lua"), reg, "utf8");

	const pkg = JSON.parse(await fs.readFile(path.join(SRC, "package.json"), "utf8"));
	const toc = `## Interface: 120100, 50504, 20506, 11509
## Title: Bosses - Mists of Pandaria
## Notes: Boss explanations for Mists of Pandaria raids, dungeons and world bosses (ES/EN)
## Notes-esES: Explicaciones de las bandas, mazmorras y jefes de mundo de Mists of Pandaria (ES/EN)
## Author: Philippe Mingo pmingo AT gmail DOT com
## Version: ${pkg.version}
## IconTexture: Interface\\Icons\\INV_Misc_OgrePinata
## Dependencies: Bosses
Bosses_MoP_es.lua
Bosses_MoP_en.lua
Bosses_MoP_enc.lua
Bosses_MoP_zonas.lua
Bosses_MoP.lua
`;
	await fs.writeFile(path.join(PACK, "Bosses_MoP.toc"), toc, "utf8");

	console.log("\nPack escrito en " + PACK);
	console.log("  Bosses_MoP_es.lua, Bosses_MoP_en.lua, Bosses_MoP_enc.lua, Bosses_MoP_zonas.lua, Bosses_MoP.lua, Bosses_MoP.toc");
}

main().catch((err) => {
	console.error("Error:", err);
	process.exit(1);
});