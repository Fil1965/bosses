// scripts/_constantes.mjs
// Constantes compartidas por package.mjs y update.mjs (antes duplicadas
// idénticamente en los dos; añadir un localization.xx.lua obligaba a tocar
// los dos ficheros y package.json -> files a la vez — riesgo real de olvido).
//
// La fuente de verdad de ADDON_FILES es package.json -> files (los ficheros
// que van en el zip y en AddOns); aquí se deriva y se añaden las libs, que no
// están en "files" porque no son del paquete npm sino del addon.

import { readFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const SRC_DIR = join(__dirname, "..");

const pkg = JSON.parse(readFileSync(join(SRC_DIR, "package.json"), "utf8"));

// Archivos del core que se copian al staging del zip y a AddOns: los de
// package.json -> files + las librerías embebidas (libs/).
export const ADDON_FILES = [
	...pkg.files,
	"libs/LibStub/LibStub.lua",
	"libs/CallbackHandler-1.0/CallbackHandler-1.0.lua",
	"libs/LibDataBroker-1.1/LibDataBroker-1.1.lua",
	"libs/LibDBIcon-1.0/LibDBIcon-1.0.lua",
];

// Las dos líneas de empaquetado/instalación: el core es el MISMO en los dos
// zips; los packs van solo a su línea (los de retail no declaran 16001 y en
// Forever no cargan; el zip de Forever lleva solo los suyos).
export const LINEAS = [
	{
		id: "retail",
		carpeta: "_retail_", // update.mjs: carpeta del cliente dentro de WOW_ROOT
		packs: [
			"Bosses_Vanilla",
			"Bosses_TBC",
			"Bosses_WotLK",
			"Bosses_Cata",
			"Bosses_MoP",
			"Bosses_WoD",
			"Bosses_Legion",
			"Bosses_BfA",
			"Bosses_Shadowlands",
			"Bosses_Dragonflight",
			"Bosses_TWW",
			"Bosses_Midnight",
		],
	},
	{
		// WoW Forever (rama Camelot / Classic+, cliente 1.60.1 → interfaz 16001)
		id: "forever",
		carpeta: "_forever_",
		packs: ["Bosses_Forever"],
	},
];
