// scripts/_dbm-parse.mjs
// Parser compartido de los módulos DBM de _doc (lo usan generar-zonas.mjs y
// nombres-jefe.mjs). Extraído de generar-zonas para no duplicar la lógica.
// Incluye: normalización/fuzzy de nombres (igual que comparar-dbm), listado de
// carpetas de mazmorra, parseo de módulos (NewMod/SetZone/SetCreatureID/4º arg
// = instanceID del journal) y nombres de mod EN/esES/fr/de por segmento de
// localization.

import { readFileSync, readdirSync, existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

export const DBM = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..", "_doc", "DBM");

// Carpetas de infraestructura sin módulos de jefes
export const EXCLUIDAS = new Set(["DBM-Core", "DBM-GUI", "DBM-StatusBarTimers", "DBM-VPVEM", "DBM-Test", "DBM-Test-Dungeons"]);
// Packs de jefes de mundo (zonas al aire libre, no instancias): alimentan el
// inventario de comparar-dbm pero NO generan zonas.
export const ZONAS_EXCLUIDAS = new Set([
	"DBM-Azeroth", "DBM-Outlands", "DBM-Draenor", "DBM-BrokenIsles", "DBM-DragonIsles",
	"DBM-KhazAlgar", "DBM-Cataclysm", "DBM-BfA", "DBM-Shadowlands", "DBM-Pandaria", "DBM-Midnight",
]);

export const PACKS = [
	{ nombre: "Bosses_Vanilla", patron: /vanilla|azeroth/i },
	{ nombre: "Bosses_TBC", patron: /\bbc\b|burningcrusade|tbc|outlands/i },
	{ nombre: "Bosses_WotLK", patron: /wotlk|wrath/i },
	{ nombre: "Bosses_Cata", patron: /\bcata\b|cataclysm/i },
	{ nombre: "Bosses_MoP", patron: /pandaria|mop(?![a-z])/i },
	{ nombre: "Bosses_WoD", patron: /\bwod\b|warlords|draenor/i },
	{ nombre: "Bosses_Legion", patron: /legion|brokenisles/i },
	{ nombre: "Bosses_BfA", patron: /bfa|battleforazeroth/i },
	{ nombre: "Bosses_Shadowlands", patron: /shadowlands/i },
	{ nombre: "Bosses_Dragonflight", patron: /dragonflight|dragonisles/i },
	{ nombre: "Bosses_TWW", patron: /warwithin|khazalgar/i },
	{ nombre: "Bosses_Midnight", patron: /midnight/i },
	{ nombre: "Bosses_Forever", patron: /forever/i },
];

// Normaliza como comparar-dbm: minúsculas, solo alfanumérico
export const normalizar = (s) => (s ?? "").toLowerCase().replace(/[^a-z0-9]/g, "");

export function nombresCoinciden(a, b) {
	const na = normalizar(a);
	const nb = normalizar(b);
	if (!na || !nb) return false;
	if (na === nb) return true;
	const corta = na.length <= nb.length ? na : nb;
	const larga = na.length <= nb.length ? nb : na;
	return corta.length >= 6 && larga.length / corta.length <= 1.5 && larga.includes(corta);
}

// Tokens distintivos de un nombre: trozos alfanuméricos (sin diacríticos) de
// 6+ caracteres; rescatan nombres con traducción desigual (p. ej. "Celador
// Gargolmar" frente a "Vigía Gargolmar" comparten el token "gargolmar").
export function tokensDe(s) {
	const out = new Set();
	for (const raw of (s ?? "").split(/[^\p{L}\p{N}]+/u)) {
		const n = raw.normalize("NFD").replace(/\p{M}/gu, "").toLowerCase().replace(/[^a-z0-9]/g, "");
		if (n.length >= 6) out.add(n);
	}
	return out;
}

// Carpetas de "mazmorra": directorios que contienen .lua de módulos
// (excluye ficheros localization*). Recorre hasta depthMax niveles
// (DBM-Party-Vanilla mete Classic/Retail/Shared por encima). Un directorio
// puede ser carpeta de módulos Y contenedor a la vez (Raids-WoTLK/Icecrown
// trae Trash.lua y las salas debajo): se apunta Y se recursa.
export function carpetasDeDirs(raiz, depthMax) {
	const salida = [];
	const rec = (dir, depth) => {
		for (const e of readdirSync(dir, { withFileTypes: true })) {
			if (!e.isDirectory()) continue;
			const d = path.join(dir, e.name);
			const l = readdirSync(d);
			const mods = l.filter((f) => f.endsWith(".lua") && !/^localization/i.test(f));
			if (mods.length) salida.push(d);
			if (depth < depthMax) rec(d, depth + 1);
		}
	};
	rec(raiz, 0);
	return salida;
}

// Particiona el contenido de unos paréntesis por comas de primer nivel
// (soporta expresiones con paréntesis anidados, p. ej. "DBM:IsRetail() and 18 or 5")
export function partirArgsTop(s) {
	const vals = [];
	let cur = "", depth = 0;
	for (const ch of s) {
		if (ch === "(") depth++;
		if (ch === ")") depth--;
		if (ch === "," && depth === 0) { vals.push(cur); cur = ""; continue; }
		cur += ch;
	}
	if (cur.trim()) vals.push(cur);
	return vals;
}

export function parseModulo(file) {
	const text = readFileSync(file, "utf8");
	const mod = { fichero: path.basename(file, ".lua"), key: null, zonas: [], cids: [], instanceId: null };
	for (const linea of text.split(/\r?\n/)) {
		const t = linea.trim();
		if (t.startsWith("--")) continue;
		if (mod.key === null && mod.instanceId === null) {
			const m = /DBM:NewMod\((.*)\)/.exec(t);
			if (m) {
				const args = partirArgsTop(m[1]);
				const k = (args[0] ?? "").trim().replace(/^"|"$/g, "");
				if (k) mod.key = k;
				const a3 = (args[3] ?? "").trim();
				// 4º argumento = instanceID del journal (EJ); vía exacta de
				// agrupación cuando el módulo no lleva mod:SetZone (281=El Nexo,
				// 547=Auchindoun, 1001=Fuerte Libre...).
				if (/^\d+$/.test(a3)) mod.instanceId = a3;
			}
		}
		const mZ = /mod:SetZone\(([^)]+)\)/.exec(t);
		if (mZ) for (const n of mZ[1].matchAll(/\d+/g)) mod.zonas.push(n[0]);
		const mC = /mod:SetCreatureID\(([^)]+)\)/.exec(t);
		if (mC) for (const n of mC[1].matchAll(/\d+/g)) if (!mod.cids.includes(n[0])) mod.cids.push(n[0]);
	}
	// 99999 es el comodín de DBM para "sin criatura"; no entra en la lista de jefes
	mod.cids = mod.cids.filter((c) => c !== "99999");
	if (mod.cids.length === 0) {
		// Respaldo de los módulos BoD/warfront (BfA): atan los CIDs con líneas
		// `dungeonID, creatureID[, creatureID2] = <idMod>, <cid>` (el 1º
		// literal es id de MOD, NO de criatura; los demás sí lo son).
		for (const n of text.matchAll(/dungeonID,\s*creatureID\d?(?:\s*,\s*creatureID\d?)?\s*=\s*(\d+)\s*,\s*(\d+)(?:\s*,\s*(\d+))?/g)) {
			for (const g of [n[2], n[3]]) {
				if (g && g !== "99999" && !mod.cids.includes(g)) mod.cids.push(g);
			}
		}
	}
	return mod;
}

// Nombres de cada mod por idioma desde las localizations (por defecto EN/es;
// se puede pedir más: "fr", "de"). Un bloque de mod va desde su
// GetModLocalization hasta el siguiente: el scoping por segmento evita
// asignar el name= de otro mod (los packs nuevos suelen NO llevar
// SetGeneralLocalization y solo traer cabeceras de comentario).
export function nombresLocalizacion(dir, idiomas = ["en", "es"]) {
	const res = {};
	for (const id of idiomas) res[id] = {};
	const ficheros = [];
	if (idiomas.some((id) => existsSync(path.join(dir, `localization.${id}.lua`)))) ficheros.push(dir);
	for (const f of readdirSync(dir, { withFileTypes: true })) {
		if (f.isDirectory() && idiomas.some((id) => existsSync(path.join(dir, f.name, `localization.${id}.lua`)))) ficheros.push(path.join(dir, f.name));
	}
	for (const f of ficheros) {
		for (const [lang, fich] of idiomas.map((id) => [id, `localization.${id}.lua`])) {
			const p = path.join(f, fich);
			if (!existsSync(p)) continue;
			const text = readFileSync(p, "utf8");
			const re = /GetModLocalization\(\s*(?:"([^"]+)"|(\d+))\s*\)/g;
			const matches = [...text.matchAll(re)];
			for (let i = 0; i < matches.length; i++) {
				const key = matches[i][1] ?? matches[i][2];
				const hasta = i + 1 < matches.length ? matches[i + 1].index : text.length;
				const seg = text.slice(matches[i].index, hasta);
				const mn = /SetGeneralLocalization[^{]*\{[^}]*?name\s*=\s*"((?:[^"\\]|\\.)*)"/s.exec(seg);
				if (mn && !res[lang][key]) res[lang][key] = mn[1];
			}
		}
	}
	return res;
}

// Raíces DBM de un pack (por patrón como comparar-dbm); pueden ser VARIAS
// (Party + Raids + Delves + Lairs). Excluye infraestructura y packs de mundo.
export function raicesDePack(nombre) {
	const pack = PACKS.find((p) => p.nombre === nombre);
	if (!pack) return [];
	const raices = [];
	for (const dir of readdirSync(DBM, { withFileTypes: true })) {
		if (!dir.isDirectory() || EXCLUIDAS.has(dir.name) || ZONAS_EXCLUIDAS.has(dir.name)) continue;
		if (pack.patron.test(dir.name)) raices.push(path.join(DBM, dir.name));
	}
	return raices;
}