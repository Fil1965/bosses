// web-editor/server.mjs
// Editor web de las explicaciones de los packs del addon Bosses.
// Fastify + UI estática (public/) con Tailwind por CDN. Sin pipeline de build.
//
// Arranque (con credenciales Blizzard si hay .env):
//   npm run editor          →  http://localhost:3088/
//   node web-editor/server.mjs --sandbox   →  copia de los packs en
//     _cache/sandbox/ y sirve DESDE AHÍ (pruebas de escritura sin tocar
//     los packs reales).
//
// Seguridad: corre en localhost; los secretos del .env nunca salen de la
// máquina ni se imprimen; las imágenes quedan cacheadas en _cache/ y jamás
// entran en el zip del addon.

import Fastify from "fastify";
import { copyFileSync, mkdirSync, readdirSync, readFileSync, writeFileSync } from "node:fs";
import { cpSync } from "node:fs";
import { join } from "node:path";
import { fileURLToPath } from "node:url";
import { blizzEnv, createBlizzardClient } from "../scripts/_blizzard-api.mjs";
import {
	IDIOMAS,
	docEntries,
	entryDetail,
	entryText,
	listPacks,
	loadLangFile,
	langFileSkeleton,
	registradorAddLangs,
	tocAddLang,
	validateText,
} from "./_packs.mjs";

const ROOT = fileURLToPath(new URL("..", import.meta.url));
const CACHE = join(ROOT, "web-editor", "_cache");
const PORT = Number(process.env.EDITOR_PORT ?? 3088);

// ------------------------------------------------------- raíz (o sandbox) --

let root = ROOT;
if (process.argv.includes("--sandbox")) {
	root = join(CACHE, "sandbox");
	mkdirSync(join(root), { recursive: true });
	for (const d of readdirSync(ROOT, { withFileTypes: true })) {
		if (!d.isDirectory() || !d.name.startsWith("Bosses_")) continue;
		cpSync(join(ROOT, d.name), join(root, d.name), { recursive: true });
	}
	console.log(`[editor] MODO SANDBOX: los packs se sirven desde ${root}`);
}

const backupsDir = (pack) => join(CACHE, "backups", pack);
mkBackupsDirSafe();
function mkBackupsDirSafe() {
	mkdirSync(backupsDir("__raiz"), { recursive: true });
}

// -------------------------------------------------------------- clientes --

let blizz = null;
try {
	const { clientId, clientSecret } = blizzEnv();
	blizz = createBlizzardClient({ clientId, clientSecret, region: "eu" });
	console.log("[editor] Blizzard API lista (eu); los retratos se cachearán en web-editor/_cache");
} catch {
	console.log("[editor] Sin .env: la API de Blizzard queda desactivada (solo editing local).");
}

// ----------------------------------------------------------- carga packs --

const packs = listPacks(root);
const docs = new Map(); // "pack:lang" -> doc

function docKey(pack, lang) {
	return `${pack}:${lang}`;
}
function getDoc(packName, lang) {
	const key = docKey(packName, lang);
	if (docs.has(key)) return docs.get(key);
	const p = packs.find((x) => x.name === packName);
	if (!p || !p.langs[lang]) return null;
	const doc = loadLangFile(p.folder, p.langs[lang]);
	docs.set(key, doc);
	return doc;
}
function setDoc(packName, lang, doc) {
	docs.set(docKey(packName, lang), doc);
}

// ------------------------------------------------- índice global de spells --

const spells = new Map(); // spellId(String) -> { name: { es?, en? }, refs: n }
function buildSpellIndex() {
	spells.clear();
	for (const pack of packs) {
		for (const lang of IDIOMAS) {
			if (!pack.langs[lang]) continue;
			const doc = getDoc(pack.name, lang);
			if (!doc) continue;
			for (const line of doc.lines) {
				for (const m of line.matchAll(/\|Hspell:(-?\d+)\|h\[([^\]]+)\]/g)) {
					const [, id, nombre] = m;
					const entry = spells.get(id) ?? { name: {}, refs: 0 };
					entry.name[lang] = nombre;
					entry.refs++;
					spells.set(id, entry);
				}
			}
		}
	}
}
buildSpellIndex();
const totalSpells = spells.size;
console.log(`[editor] ${packs.length} packs; índice de spells: ${totalSpells} ids`);

// -------------------------------------- nombres localizados de spells ------
// El addon traduce los nombres de los enlaces AL VUELO al mostrarlos
// (localizarEnlaces → nombreSpell, la base del cliente). El editor no tiene
// cliente WoW aquí, así que resuelve por BÚSQUEDA: los packs guardan el
// nombre del corchete (texto de respaldo, normalmente EN en TWW/Midnight) y
// /data/wow/search/spell?name.<locale>=<texto> devuelve el mapa completo de
// idiomas del spell (es/en/fr/de) + media.id → icono (hotlink zamimg).
// Caché persistente en spell-names.json; también los fallos ({miss:true}),
// para no repetir búsquedas en vano (ids negativos de la era del diario no
// son spells retail y quedan como texto de respaldo).
const spellNamesFile = join(CACHE, "spell-names.json");
const spellNames = readJson(spellNamesFile) ?? {}; // id → {es,en,fr,de,icon} | {miss:true}

function saveSpellNames() {
	mkdirSync(CACHE, { recursive: true });
	writeFileSync(spellNamesFile, JSON.stringify(spellNames));
}

// nombre con el que los packs conocen al spell (texto del corchete)
function nombreDeSpellEnPacks(id) {
	const e = spells.get(String(id));
	if (!e) return null;
	return e.name.es ?? e.name.en ?? Object.values(e.name)[0] ?? null;
}

async function iconoSpell(mediaId) {
	if (!mediaId) return null;
	const r = await blizz.api(`/data/wow/media/spell/${mediaId}`);
	if (r.status !== 200) return null;
	const asset = (r.json?.assets ?? []).find((a) => a.key === "icon");
	return asset?.value ?? null;
}

// icono por spell id VÍA WOWHEAD (permiso explícito del propietario,
// 2026-10-10): la búsqueda de Blizzard no indexa los spells de mazmorra,
// pero su página de Wowhead siempre trae el nombre del icono (el hotlink
// zamimg images/wow/icons/large/{nombre}.jpg fue verificado y aprobado
// hace tiempo). Una consulta por spell, cacheada en spell-names.json.
async function iconoWowhead(spellId) {
	try {
		const res = await fetch(`https://www.wowhead.com/spell=${spellId}`, {
			headers: { "User-Agent": "Bosses-addon-editor/1.0", "Accept-Language": "es-ES,es;q=0.9,en;q=0.8" },
			signal: AbortSignal.timeout(15000),
		});
		if (!res.ok) return null;
		const html = await res.text();
		const m = /images\/wow\/icons\/large\/([a-z0-9_]+)\.jpg/i.exec(html);
		return m ? `https://wow.zamimg.com/images/wow/icons/large/${m[1]}.jpg` : null;
	} catch {
		return null;
	}
}

// asegura el icono de un spell ya conocido (sin icono de Blizzard): Wowhead
// con ritmo educado; los fallos se marcan (iconVacio) para no repetirlos
async function asegurarIcono(id) {
	const k = String(id);
	const e = spellNames[k];
	if (!e || e.miss || e.icon || e.iconVacio) return;
	const url = await iconoWowhead(k);
	if (url) e.icon = url;
	else e.iconVacio = true;
	saveSpellNames();
}

async function buscarNombresDeSpell(id, nombreStored) {
	if (!blizz || !/^\d+$/.test(String(id)) || !nombreStored) return null;
	const term = String(nombreStored).trim();
	if (!term) return null;
	// El endpoint es DIFUSO (un campo equivocado o vacío devuelve una página
	// genérica irrelevante). Por eso se consulta AMBOS campos (el idioma del
	// texto guardado no se puede presumir: las tablas ES de TWW/Midnight llevan
	// EN) y solo se aceptan hits con IGUALDAD por tokens (minúsculas, sin
	// acentos/puntuación: "Snack Time" == "Snack Time!") — preferencia al hit
	// del MISMO id (nombres repetidos entre eras, p. ej. 93712 vs 390689).
	const tNorm = nombreClave(term);
	const exactos = [];
	for (const campo of ["en_US", "es_ES"]) {
		const r = await blizz.api(`/data/wow/search/spell?namespace=static-eu&locale=es_ES&_page=1&name.${campo}=${encodeURIComponent(term)}`);
		if (r.status !== 200) continue;
		for (const hit of r.json?.results ?? []) {
			const d = hit.data ?? hit;
			if (!d.name) continue;
			const exacto = campo === "en_US"
				? nombreClave(d.name.en_US ?? "") === tNorm
				: nombreClave(d.name.es_ES ?? "") === tNorm;
			if (exacto) exactos.push(d);
		}
	}
	if (!exactos.length) return null;
	const elegido = exactos.find((d) => String(d.id) === String(id)) ?? exactos[0];
	return {
		es: elegido.name.es_ES ?? null,
		en: elegido.name.en_US ?? null,
		fr: elegido.name.fr_FR ?? null,
		de: elegido.name.de_DE ?? null,
		icon: await iconoSpell(elegido.media?.id ?? elegido.id),
	};
}

async function nombresDeSpell(id, nombreStored) {
	const k = String(id);
	const cached = spellNames[k];
	if (cached) return cached.miss ? null : cached;
	if (!blizz) return null; // sin .env: solo texto almacenado
	const res = await buscarNombresDeSpell(id, nombreStored);
	spellNames[k] = res ?? { miss: true };
	saveSpellNames();
	return res;
}

function norm(s) {
	// minúsculas y sin acentos para búsquedas
	return String(s).toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
}
// norm sin artículo inicial ("Minas de la muerte" == "Las Minas de la Muerte")
function normArt(s) {
	return norm(s).replace(/^(el|la|los|las|the|le|les|der|die|das)\s+/, "");
}
// títulos ESTRUCTURALES del diario (grupos, no habilidades): "Fase 2: …",
// "Solo en dificultad heroica", y los encabezados de rol de las bandas
// modernas ("Resumen", "DPS", "Sanadores", "Tanques"…) — se excluyen del
// cotejo de cobertura y del esqueleto
const TITULO_ESTRUCTURAL = /^(fase|phase|stage|etapa)\s*\d|^(solo|solamente|only|uniquement|nur)\b.*(dificultad|difficulty|difficult|schwierigkeit)|^(resumen|overview|dps|tanque|tanques|sanador|sanadores|healer|healers|tank|tanks)$/i;

// ------------------------------------------------------ caché de Blizzard --

// instances.json: índice COMPLETO del diario (id → instancia con map/area/
// encounters) por región; lo usa el mapa zona→encuentro. 213 llamadas una vez.
const instFile = join(CACHE, "instances.json");
const TTL_INSTANCIAS = 24 * 3600 * 1000;
let instIndex = null;
let instIndexLoading = null;

function readJson(file) {
	try {
		return JSON.parse(readFileSync(file, "utf8"));
	} catch {
		return null;
	}
}

async function ensureInstances() {
	if (instIndex && Date.now() - instIndex.fetched < TTL_INSTANCIAS) return instIndex;
	if (!blizz) throw new Error("Blizzard API no disponible (falta .env)");
	if (!instIndexLoading) {
		instIndexLoading = async () => {
			const cached = readJson(instFile);
			if (cached && Date.now() - cached.fetched < TTL_INSTANCIAS) {
				instIndex = cached;
				return instIndex;
			}
			console.log("[editor] construyendo índice de instancias del diario (una vez, ~213 llamadas)...");
			const col = await blizz.api("/data/wow/journal-instance/index");
			if (col.status !== 200) throw new Error(`journal-instance/index HTTP ${col.status}`);
			const byId = {};
			const lista = col.json?.instances ?? [];
			for (let i = 0; i < lista.length; i++) {
				const r = await blizz.api(`/data/wow/journal-instance/${lista[i].id}`);
				if (r.status === 200) {
					byId[r.json.id] = {
						id: r.json.id,
						name: r.json.name,
						map: r.json.map?.id ?? null,
						area: r.json.area?.id ?? null,
						category: r.json.category ?? null,
						encounters: (r.json.encounters ?? []).map((e) => ({ id: e.id, name: e.name })),
					};
				}
				if (i % 50 === 49) console.log(`[editor]   instancias ${i + 1}/${lista.length}`);
			}
			instIndex = { fetched: Date.now(), byId };
			mkdirSync(CACHE, { recursive: true });
			writeFileSync(instFile, JSON.stringify(instIndex));
			console.log(`[editor] índice de instancias listo (${Object.keys(byId).length}) → _cache/instances.json`);
			return instIndex;
		};
	}
	await instIndexLoading();
	return instIndex;
}

// encuentros de una instancia POR LOCALE (caché en memoria): la instancia del
// índice global trae los nombres en el locale con que se construyó (es_ES);
// para emparejar con nombres EN de los packs se pide también en_US bajo
// demanda. Guarda también el NOMBRE de la instancia en ese locale (banner).
const encCacheLocale = new Map(); // "instanciaId:locale" -> { name, encounters[] }
async function encuentrosDe(instanciaId, locale) {
	const k = `${instanciaId}:${locale}`;
	if (encCacheLocale.has(k)) return encCacheLocale.get(k);
	const r = await blizz.api(`/data/wow/journal-instance/${instanciaId}`, { locale });
	const d = r.status === 200
		? {
			name: r.json?.name ?? "",
			encounters: (r.json?.encounters ?? []).map((e) => ({ id: e.id, name: e.name })),
		}
		: { name: "", encounters: [] };
	encCacheLocale.set(k, d);
	return d;
}

// media-map.json: mapa por entrada (pack:npcId → datos del diario API),
// construido bajo demanda y cacheado. v = forma de los datos (v2: secciones
// planas con corte por hermano): lo cacheado por una forma anterior se
// descarta una vez, sin tocar lo que la forma actual va escribiendo.
const mapFile = join(CACHE, "media-map.json");
const mediaMap = readJson(mapFile) ?? { byKey: {} };
if (!mediaMap.byKey || mediaMap.v !== 2) mediaMap.byKey = {};
mediaMap.v = 2;

function saveMediaMap() {
	mkdirSync(CACHE, { recursive: true });
	writeFileSync(mapFile, JSON.stringify(mediaMap));
}

// empareja nombres de eras/idiomas distintos, por tokens (sin cifras ni
// sufijos <...> y (…)); exacta, prefijo bidireccional o primera palabra común
function claveTokens(s) {
	return norm(String(s ?? ""))
		.replace(/<[^>]*>/g, "") // sufijos <El Supervisor>
		.replace(/\([^)]*\)/g, "") // paréntesis de contexto (Well of Eternity)…
		.replace(/[^a-z]+/g, " ").trim().split(/\s+/).filter((w) => w.length >= 3);
}
function nombreClave(s) {
	return claveTokens(s).join("");
}
function casaNombre(a, b) {
	// prefijo por TOKENS: "Rajh" casa con "Rajh, Ensamblaje del Sol" aunque
	// el nombre corto no llegue a 6 caracteres (vieja regla que lo impedía)
	const ta = claveTokens(a), tb = claveTokens(b);
	if (!ta.length || !tb.length) return false;
	const [corto, largo] = ta.length <= tb.length ? [ta, tb] : [tb, ta];
	if (corto.join("").length < 3) return false;
	for (let i = 0; i < corto.length; i++) if (corto[i] !== largo[i]) return false;
	return true;
}
function primeraPalabra(s) {
	return claveTokens(s).find((w) => w.length >= 6) ?? "";
}

// splash de instancia por id (una imagen por mazmorra; evita una llamada por jefe)
const splashCache = new Map();

async function mediaDeEntrada(packName, npcId, locale) {
	const key = `${packName}:${locale}:${npcId}`;
	const hit = mediaMap.byKey[key];
	if (hit) return hit; // cache total (la forma cambia poco; purga manual con _purga-cache.mjs)

	const docES = getDoc(packName, "es");
	const entry = docES ? entryDetail(docES, npcId) : null;
	if (!entry) throw new Error(`entrada ${npcId} no está en ${packName}`);

	const inst = await ensureInstances();
	// zona de la entrada (cabeceras "Zona NNNN" + su etiqueta); si la entrada
	// no la trae, probamos la copia EN (los alias compartidos viven ahí)
	let zona = entry.zone;
	let zonaLabel = entry.zoneLabel;
	if (!zona) {
		const docEN = getDoc(packName, "en");
		const e2 = docEN ? entryDetail(docEN, npcId) : null;
		zona = e2?.zone ?? null;
		zonaLabel = zonaLabel ?? e2?.zoneLabel ?? null;
	}
	if (!zona) throw new Error(`entrada ${npcId} sin zona en las cabeceras del pack`);

	// zona → instancia del diario: PRIORIDAD al NOMBRE de la cabecera del pack
	// (exacto, sin artículos), porque los ids "Zona NNNN" de 2011 pueden chocar
	// con el map/area de OTRA instancia (visto: zona 209 y 1581 casaban con
	// instancias ajenas). Después map (era actual), area y por último el
	// prefijo del nombre (Zul'Aman 3805 en el pack, 568 en el diario).
	const candidatos = Object.values(inst.byId);
	let instancia = null;
	if (zonaLabel) {
		const nl = normArt(zonaLabel);
		instancia = candidatos.find((i) => normArt(i.name) === nl && nl !== "");
	}
	if (!instancia) instancia = candidatos.find((i) => String(i.map) === String(zona));
	if (!instancia) instancia = candidatos.find((i) => String(i.area) === String(zona));
	if (!instancia && zonaLabel) {
		const nl = normArt(zonaLabel);
		instancia = candidatos.find((i) => normArt(i.name).startsWith(nl) || nl.startsWith(normArt(i.name)));
	}
	if (!instancia) throw new Error(`zona ${zona} (${zonaLabel ?? "sin etiqueta"}) sin instancia en el diario (${packName})`);

	// encuentro por nombre en VARIOS locales del diario: los packs Midnight/TWW
	// aún llevan nombres EN en la tabla ES (pasada esES pendiente), así que se
	// prueba es_ES y en_US, con caché por locale. Tres pasadas: exacta (tokens),
	// prefijo bidireccional y primera palabra compartida.
	const docEN = getDoc(packName, "en");
	const entryEN = docEN ? entryDetail(docEN, npcId) : null;
	const objetivos = [entry.name, entryEN?.name].filter(Boolean);
	let encuentro = null;
	for (const localeIntento of ["es_ES", "en_US"]) {
		const { encounters: encs } = await encuentrosDe(instancia.id, localeIntento);
		if (!encs.length) continue;
		encuentro = encs.find((e) => objetivos.some((n) => nombreClave(n) === nombreClave(e.name) && nombreClave(n) !== ""))
			?? encs.find((e) => objetivos.some((n) => casaNombre(n, e.name)))
			?? encs.find((e) => {
				const p = primeraPalabra(e.name);
				return p !== "" && objetivos.some((n) => primeraPalabra(n) === p);
			});
		if (encuentro) break;
	}
	if (!encuentro) {
		const { encounters: encsES } = await encuentrosDe(instancia.id, "es_ES");
		const err = new Error(`ningún encuentro del diario casa con "${objetivos[0]}" en ${instancia.name}. Nombres del diario: ${encsES.map((e) => e.name).join(" | ")}`);
		err.diario = encsES.map((e) => ({ id: e.id, name: e.name }));
		throw err;
	}

	// detalles del encuentro: criaturas + secciones (locale pedido)
	const det = await blizz.api(`/data/wow/journal-encounter/${encuentro.id}`, { locale });
	if (det.status !== 200) throw new Error(`journal-encounter/${encuentro.id} HTTP ${det.status}`);
	const criatura = det.json?.creatures?.[0] ?? null;
	let portrait = null;
	if (criatura?.creature_display?.key?.href) {
		const m = await blizz.media(criatura.creature_display.key.href);
		portrait = m.json?.assets?.find((a) => a.key.endsWith("zoom"))?.value ?? m.json?.assets?.[0]?.value ?? null;
	}
	// splash de la instancia (imagen de la zona para la cabecera; por instancia)
	let splash = null;
	if (instancia.id) {
		if (!splashCache.has(instancia.id)) {
			const sm = await blizz.api(`/data/wow/media/journal-instance/${instancia.id}`, { locale: "es_ES" });
			splashCache.set(instancia.id, sm.json?.assets?.[0]?.value ?? null);
		}
		splash = splashCache.get(instancia.id);
	}
	// texto: body_text en el diario moderno (bullet era el campo del formato
	// viejo). Secciones PLANCHAS (todos los niveles): las habilidades viven
	// en las hijas y los padres son grupos "Fase N"/"Solo en dificultad…"
	const sections = [];
	const walk = (arr) => {
		for (const s of arr ?? []) {
			if (sections.length >= 80) return;
			sections.push({ title: s.title ?? "", bullet: s.body_text ?? s.bullet ?? "" });
			walk(s.sections);
		}
	};
	walk(det.json?.sections ?? []);
	// CORTE por hermano: el diario de las mazmorras clásicas remozadas lista
	// dentro del PRIMER jefe las secciones de los siguientes (visto en SFK:
	// Barón Filargenta arrastra a Odo, Rethilgore, Nandos…). Dos cortes:
	// al primer título que sea otro ENCUENTRO de la instancia, y al primero
	// que sea otro JEFE DEL PROPIO PACK en la misma zona (cubre el caso del
	// diario heroico que mezcla el flujo clásico). LOCALE-CONSCIENTE: los
	// cortes se calculan con los nombres del locale pedido para que el
	// aplanado quede IDÉNTICO entre locales (aprenderDelDiario los alinea).
	const { encounters: hermanos } = await encuentrosDe(instancia.id, locale);
	const clavesHermanos = new Set(hermanos
		.filter((e) => e.id !== encuentro.id)
		.map((e) => nombreClave(e.name))
		.filter(Boolean));
	const langDoc = { es_ES: "es", en_US: "en", fr_FR: "fr", de_DE: "de" }[locale] ?? "es";
	const docCorte = getDoc(packName, langDoc) ?? docES;
	const otrosNombresPack = [];
	for (const t of docEntries(docCorte)) if (t.id !== npcId && t.zone === zona) otrosNombresPack.push(t.name);
	const corte = sections.findIndex((s) =>
		clavesHermanos.has(nombreClave(s.title))
		|| otrosNombresPack.some((n) => casaNombre(n, s.title)));
	if (corte > 0) sections.length = corte;

	// nombre del encuentro y de la instancia EN EL LOCALE PEDIDO (el de la
	// lista de emparejamiento venía en es/en; el detalle va localizado)
	const instLocale = await encuentrosDe(instancia.id, locale);
	const data = {
		fetchedAt: Date.now(),
		npcId,
		pack: packName,
		zone: zona,
		instance: { id: instancia.id, name: instLocale.name || instancia.name },
		encounter: { id: encuentro.id, name: det.json?.name ?? encuentro.name },
		description: det.json?.description ?? "",
		creatures: (det.json?.creatures ?? []).map((c) => ({ id: c.id, name: c.name })),
		sections,
		portrait,
		splash,
	};
	mediaMap.byKey[key] = data;
	saveMediaMap();
	return data;
}

// aprende nombres localizados de spells DESDE EL DIARIO DEL PROPIO ENCUENTRO:
// los títulos de las secciones vienen traducidos en cada locale y el
// emparejamiento es por contexto (mismo jefe, mismo orden tras el aplanado
// idéntico), sin el riesgo de homónimos de la búsqueda global. ES LA FUENTE
// que cubre los spells de mazmorra que Blizzard NO indexa en search (visto:
// "Snack Time" 438025, "Flaming Updraft" 466556) y que el addon sí traduce
// in-game con la base del cliente. Aprendidos → spell-names.json (deshacen
// marcas de fallo); los usan picker, preview y cobertura como los de API.
// localesBase: los que se traen para alinear con el EN (por omisión los 4).
async function aprenderDelDiario(packName, npcId, localesBase = ["es_ES", "en_US", "fr_FR", "de_DE"]) {
	if (!blizz) return {};
	// enlaces de spell de ESTA entrada (tabla es y en: los corchetes guardados)
	const enlaces = [];
	for (const lang of ["es", "en"]) {
		const doc = getDoc(packName, lang);
		const det = doc ? entryDetail(doc, npcId) : null;
		for (const l of det?.lines ?? []) {
			for (const m of String(l).matchAll(/\|Hspell:(\d+)\|h\[([^\]]+)\]/g)) enlaces.push({ id: m[1], nombre: m[2] });
		}
	}
	if (!enlaces.length) return {};
	let medios = {};
	try {
		for (const loc of new Set([...localesBase, "en_US"])) medios[loc] = await mediaDeEntrada(packName, npcId, loc);
	} catch { return {}; }
	const secsEN = medios["en_US"]?.sections ?? [];
	if (!secsEN.length) return {};
	const nuevos = {};
	// solo se alinea por índice cuando el aplanado tiene la MISMA longitud en
	// ambos locales (estructura idéntica); si difiere, se salta por prudencia
	for (const loc of localesBase) {
		if (loc === "en_US") continue;
		const secsLoc = medios[loc]?.sections ?? [];
		if (secsLoc.length !== secsEN.length) continue;
		const campo = { es_ES: "es", fr_FR: "fr", de_DE: "de" }[loc];
		for (let i = 0; i < secsEN.length; i++) {
			const tEN = String(secsEN[i]?.title ?? "").trim();
			const tLoc = String(secsLoc[i]?.title ?? "").trim();
			if (!tEN || !tLoc || tEN === tLoc) continue;
			for (const e of enlaces) {
				if (nombreClave(e.nombre) !== nombreClave(tEN) || !nombreClave(e.nombre)) continue;
				const previo = spellNames[e.id];
				if (!previo || previo.miss || !previo[campo]) {
					const entrada = previo && !previo.miss ? previo : {};
					delete entrada.miss;
					entrada[campo] = tLoc;
					entrada.diario = true;
					spellNames[e.id] = entrada;
					nuevos[e.id] = entrada;
				}
				break;
			}
		}
	}
	if (Object.keys(nuevos).length) saveSpellNames();
	// iconos de los spells de la entrada (Wowhead, permiso del propietario):
	// uno por id nuevo, con pausa educada; los ya resueltos por la búsqueda
	// de Blizzard (que trae los suyos) y los vacíos no se reintentan
	const idsUnicos = [...new Set(enlaces.map((e) => e.id))];
	for (const id of idsUnicos) {
		const e = spellNames[id];
		if (e && !e.miss && !e.icon && !e.iconVacio) {
			await asegurarIcono(id);
			await new Promise((r) => setTimeout(r, 250));
		}
	}
	return nuevos;
}

// ------------------------------------------------------------- Fastify ----

const fastify = Fastify({ logger: false });

// estáticos mínimos (dos ficheros, mime manual, nada de plugins)
const MIME = { ".html": "text/html; charset=utf-8", ".js": "text/javascript; charset=utf-8", ".css": "text/css; charset=utf-8", ".json": "application/json" };
function serveStatic(reply, file) {
	const full = join(ROOT, "web-editor", "public", file);
	try {
		const data = readFileSync(full);
		// extensión SIEMPRE con punto ("index.html" → ".html"), o el navegador
		// recibe application/octet-stream y descarga en vez de mostrar (bug real)
		const ext = "." + String(file).split(".").pop().toLowerCase();
		reply.type(MIME[ext] ?? "application/octet-stream").send(data);
	} catch {
		reply.code(404).send("no encontrado");
	}
}
fastify.get("/", (req, reply) => serveStatic(reply, "index.html"));
fastify.get("/app.js", (req, reply) => serveStatic(reply, "app.js"));
fastify.get("/favicon.ico", (req, reply) => reply.code(204).send());

// --- meta -----------------------------------------------------------------
fastify.get("/api/meta", async () => ({
	ok: true,
	version: process.env.npm_package_version ?? null,
	blizz: blizz !== null,
	sandbox: root !== ROOT,
	spells: spells.size,
	packs: packs.map((p) => p.name),
}));

// --- packs y entradas (lectura) -------------------------------------------
fastify.get("/api/packs", async () => {
	return {
		ok: true,
		packs: packs.map((p) => {
			const langs = {};
			for (const lang of IDIOMAS) {
				langs[lang] = p.langs[lang] ? { file: p.langs[lang], entries: docEntries(getDoc(p.name, lang) ?? { blocks: [], byId: new Map(), zones: new Map() }).length } : null;
			}
			return { name: p.name, langs };
		}),
	};
});

fastify.get("/api/packs/:pack/:lang", async (req) => {
	const { pack, lang } = req.params;
	const doc = getDoc(pack, lang);
	if (!doc) return { ok: false, error: "pack o idioma no disponible" };
	return { ok: true, entries: docEntries(doc) };
});

fastify.get("/api/packs/:pack/:lang/:id", async (req) => {
	const { pack, lang, id } = req.params;
	const doc = getDoc(pack, lang);
	if (!doc) return { ok: false, error: "pack o idioma no disponible" };
	const det = entryDetail(doc, id);
	if (!det) return { ok: false, error: `entrada ${id} no encontrada` };
	return { ok: true, entry: det };
});

// --- guardado (escritor quirúrgico + backup + validación) ------------------
fastify.put("/api/packs/:pack/:lang/:id", async (req, reply) => {
	const { pack: packName, lang, id } = req.params;
	const body = req.body ?? {};
	if (!IDIOMAS.includes(lang)) return reply.code(400).send({ ok: false, error: `idioma ${lang} no soportado` });
	const p = packs.find((x) => x.name === packName);
	if (!p || !p.langs[lang]) return reply.code(400).send({ ok: false, error: "pack o idioma no disponible" });

	const file = p.langs[lang];
	const full = join(p.folder, file);
	const doc = getDoc(packName, lang);
	const oldCount = docEntries(doc).length;
	const existe = doc.byId.has(id);
	const name = String(body.name ?? "?");
	const lines = Array.isArray(body.lines) ? body.lines.map(String) : [];

	// texto nuevo con el escritor quirúrgico y validación con delta esperado
	let newText;
	try {
		newText = entryText(doc, id, { name, lines }, { create: !existe, force: Boolean(body.force), zoneId: body.zoneId ?? null });
		validateText(newText, { oldCount, deltaEntries: existe ? 0 : 1 });
	} catch (err) {
		return reply.code(400).send({ ok: false, error: err.message, problems: err.problems ?? null });
	}

	// backup del original antes de escribir (en _cache/backups/<pack>/; el
	// sandbox del workspace no permite borrados, así que no se recorta el
	// histórico — conviene limpiarlo a mano de vez en cuando)
	mkdirSync(backupsDir(packName), { recursive: true });
	const stamp = new Date().toISOString().replace(/[:.]/g, "-");
	copyFileSync(full, join(backupsDir(packName), `${file}.${stamp}.bak`));

	// escritura directa tras validación
	writeFileSync(full, newText, "utf8");

	// recarga honesta del doc desde disco y devolución del estado
	setDoc(packName, lang, loadLangFile(p.folder, file));
	buildSpellIndex();
	return { ok: true, id, created: !existe, entry: entryDetail(getDoc(packName, lang), id) };
});

// --- alta de idioma (es/en/fr/de) con .toc y registrador -------------------
fastify.post("/api/packs/:pack/langs/:lang", async (req, reply) => {
	const { pack: packName, lang } = req.params;
	if (!IDIOMAS.includes(lang)) return reply.code(400).send({ ok: false, error: `idioma ${lang} no soportado` });
	const p = packs.find((x) => x.name === packName);
	if (!p) return reply.code(404).send({ ok: false, error: "pack no encontrado" });
	if (p.langs[lang]) return reply.code(400).send({ ok: false, error: `${lang} ya existe en ${packName}` });

	const stamp = new Date().toISOString().replace(/[:.]/g, "-");
	// 1) fichero de idioma nuevo
	const skeleton = langFileSkeleton(packName, lang);
	const file = `${packName}_${lang}.lua`;
	writeFileSync(join(p.folder, file), skeleton, "utf8");

	// 2) .toc: lista el fichero tras el _en (solo ahora que el fichero existe)
	const tocFull = join(p.folder, p.tocFile);
	copyFileSync(tocFull, join(backupsDir(packName), `${p.tocFile}.${stamp}.bak`));
	writeFileSync(tocFull, tocAddLang(readFileSync(tocFull, "utf8"), packName, lang), "utf8");

	// 3) registrador: FR = P.fr / DE = P.de inofensivos si aún no hay fichero
	if (p.registrador) {
		const regFull = join(p.folder, p.registrador);
		copyFileSync(regFull, join(backupsDir(packName), `${p.registrador}.${stamp}.bak`));
		writeFileSync(regFull, registradorAddLangs(readFileSync(regFull, "utf8")), "utf8");
	}

	// re-carga del inventario del pack
	const fresh = listPacks(root).find((x) => x.name === packName);
	const idx = packs.findIndex((x) => x.name === packName);
	packs[idx] = fresh;
	setDoc(packName, lang, loadLangFile(fresh.folder, file));
	return { ok: true, file, toc: fresh.tocFile, registrador: fresh.registrador };
});

// --- spells ----------------------------------------------------------------
// resultado del buscador: nombre observado por idioma ENRUTADO con el mapa
// resuelto (spell-names.json: API de Blizzard o enseñado a mano) + icono
fastify.get("/api/spells", async (req) => {
	const q = String(req.query.q ?? "").trim();
	if (!q) return { ok: true, spells: [] };
	const qn = norm(q);
	const out = [];
	for (const [id, s] of spells) {
		const names = Object.entries(s.name); // [lang, nombre]
		const res = spellNames[id];
		const resuelto = res && !res.miss ? IDIOMAS.map((l) => res[l]).filter(Boolean) : [];
		// la búsqueda casa por los nombres GUARDADOS y también por los
		// RESUELTOS (diario/API/Wowhead): "astillaestrellas" encuentra al
		// spell cuyo pack guarda "Starsplinter"
		if (id.startsWith(q) || names.some(([, n]) => norm(n).includes(qn)) || resuelto.some((n) => norm(n).includes(qn))) {
			if (res && !res.miss) {
				for (const l of IDIOMAS) {
					// cubre el idioma FALTANTE y el SOSPECHOSO (tabla ES que
					// guarda el nombre EN: Midnight/TWW con la esES pendiente)
					if (res[l] && (!s.name[l] || s.name[l] === s.name.en)) {
						s.name[l] = res[l];
						s.apiOverlay = true;
					}
				}
			}
			out.push({ id, name: s.name, refs: s.refs, icon: res && !res.miss ? (res.icon ?? null) : null, api: s.apiOverlay ?? false });
			if (out.length >= 30) break;
		}
	}
	return { ok: true, spells: out.sort((a, b) => Number(a.id) - Number(b.id)) };
});

// nombre ENSEÑADO a mano: las habilidades de jefes de mazmorra de Midnight
// (p. ej. 466556 "Flaming Updraft" / "Corriente ascendente flameante") no
// están en el índice de búsqueda de Blizzard — solo en la base del cliente.
// El propietario lo enseña UNA vez, queda en spell-names.json (deshace la
// marca de fallo) y lo usan picker, preview y cobertura igual que los
// resueltos por API. No sustituye corregir el corchete en el pack: lo
// adelanta para las entradas aún pendientes.
fastify.post("/api/spells/nombre-manual", async (req) => {
	const { id, lang, nombre } = req.body ?? {};
	if (!/^\d+$/.test(String(id ?? ""))) return { ok: false, error: "id de spell no válido" };
	if (!IDIOMAS.includes(lang)) return { ok: false, error: `idioma ${lang} desconocido` };
	const texto = String(nombre ?? "").trim();
	if (!texto) return { ok: false, error: "nombre vacío" };
	const previo = spellNames[String(id)] ?? {};
	delete previo.miss; // una lección deshace la marca de fallo de la API
	previo[lang] = texto;
	previo.manual = true;
	spellNames[String(id)] = previo;
	saveSpellNames();
	await asegurarIcono(id); // icono vía Wowhead si Blizzard no lo trae
	return { ok: true, nombres: spellNames[String(id)] };
});

// lote de nombres localizados para la vista previa (traducción al vuelo como
// el addon): POST { items: [{ id, nombre }] } → { names: { id: {es,en,fr,de,icon} } }
fastify.post("/api/spells/nombres", async (req, reply) => {
	const items = (Array.isArray(req.body?.items) ? req.body.items : [])
		.filter((it) => /^\d+$/.test(String(it?.id ?? "")))
		.slice(0, 12);
	const out = {};
	for (const it of items) {
		const stored = nombreDeSpellEnPacks(it.id) ?? String(it.nombre ?? "");
		const r = await nombresDeSpell(it.id, stored || it.nombre);
		if (r) out[String(it.id)] = r;
	}
	return reply.send({ ok: true, names: out });
});

// estado del mapa de nombres (para la inicialización del UI)
fastify.get("/api/spellnames", async () => {
	const names = {};
	for (const [id, v] of Object.entries(spellNames)) if (!v.miss) names[id] = v;
	return { ok: true, names };
});

// --- media (Blizzard, con caché) -------------------------------------------
fastify.get("/api/media/:pack/:id", async (req, reply) => {
	if (!blizz) return reply.code(503).send({ ok: false, error: "Blizzard API no disponible (falta .env)" });
	const { pack, id } = req.params;
	const locale = String(req.query.locale ?? "es_ES");
	try {
		const data = await mediaDeEntrada(pack, id, locale);
		// el diario del jefe ENSEÑA los nombres localizados de sus spells
		// (fuente para los que la búsqueda global no indexa)
		const spellnames = await aprenderDelDiario(pack, id);
		return { ok: true, media: data, spellnames };
	} catch (err) {
		return reply.code(404).send({ ok: false, error: err.message });
	}
});

// --- cobertura táctica (diario vs pack) -------------------------------------
// Coteja las habilidades del diario (secciones es_ES) contra cada entrada del
// pack: una habilidad queda "cubierta" si el texto de la entrada la menciona
// (comparación por tokens normalizados) o si algún enlace de spell resuelve a
// su nombre (índice local + spell-names). HEURÍSTICO: dice dónde mirar, no
// que falte de verdad (una habilidad menor o cubierta con otras palabras
// puede dar falso "falta"). La primera pasada por pack trae y cachea el
// diario de todos sus jefes (lenta); luego es instantánea.
fastify.get("/api/cobertura/:pack", async (req, reply) => {
	if (!blizz) return reply.code(503).send({ ok: false, error: "Blizzard API no disponible (falta .env)" });
	const { pack } = req.params;
	if (!packs.some((p) => p.name === pack)) return reply.code(404).send({ ok: false, error: `pack ${pack} desconocido` });
	const doc = getDoc(pack, "es"); // la tabla ES es la referencia de redacción
	if (!doc) return reply.code(503).send({ ok: false, error: `pack ${pack} sin tabla ES` });
	const informe = [];
	let alDia = 0, conHuecos = 0, sinDiario = 0;
	for (const ent of docEntries(doc)) {
		const det = entryDetail(doc, ent.id);
		const fila = { id: ent.id, name: ent.name, total: 0, cubiertas: 0, faltan: [], sinDiario: null };
		// texto de la entrada por tokens (para búsqueda contigua de nombres)
		const textoClave = nombreClave([det?.name ?? "", ...(det?.lines ?? [])].join(" "));
		// nombres de spell: los guardados en los corchetes + los resueltos (es/en)
		const nombresClave = [];
		for (const l of det?.lines ?? []) {
			for (const m of String(l).matchAll(/\|Hspell:(-?\d+)\|h\[([^\]]+)\]/g)) {
				const c = nombreClave(m[2]);
				if (c) nombresClave.push(c);
				const res = spellNames[m[1]];
				if (res && !res.miss) for (const k of ["es", "en"]) { const c2 = nombreClave(res[k]); if (c2) nombresClave.push(c2); }
			}
		}
		try {
			const media = await mediaDeEntrada(pack, ent.id, "es_ES");
			// de paso, el barrido enseña al caché los nombres ES de los spells
			// del jefe desde su propio diario (búsqueda global no los indexa)
			await aprenderDelDiario(pack, ent.id, ["es_ES", "en_US"]);
			// solo habilidades de verdad: fuera grupos "Fase N", avisos de
			// dificultad y encabezados de rol; sin duplicados por rol
			const secciones = (media.sections ?? []).filter((s) => String(s.title ?? "").trim() && !TITULO_ESTRUCTURAL.test(s.title));
			const vistos = new Set();
			fila.total = 0;
			for (const s of secciones) {
				const clave = nombreClave(s.title);
				if (!clave || vistos.has(clave)) continue;
				vistos.add(clave);
				fila.total++;
				if (textoClave.includes(clave) || nombresClave.includes(clave)) fila.cubiertas++;
				else fila.faltan.push(s.title);
			}
			if (fila.faltan.length) conHuecos++; else alDia++;
		} catch (err) {
			fila.sinDiario = err.message;
			sinDiario++;
		}
		informe.push(fila);
	}
	return { ok: true, informe, resumen: { entradas: informe.length, alDia, conHuecos, sinDiario } };
});

// --- arranque ---------------------------------------------------------------
await fastify.listen({ port: PORT, host: "127.0.0.1" });
console.log(`[editor] listo en http://localhost:${PORT}/  (Ctrl+C para salir)`);