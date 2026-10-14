// scripts/generar-zonas.mjs
// Genera (o rellena) las tablas P.zonas de los packs: agupa los módulos de
// DBM por su mod:SetZone (instanceID/map id), los casa con el índice de
// instancias del journal cacheado en _nombres (nombre esES + orden de los
// encuentros) y emite los ficheros Bosses_<X>_zonas.lua.
//
// Todo el pareo es LOCAL:
//   _doc/DBM/<pack>/<mazmorra>/*.lua        → mod key, SetZone, SetCreatureID
//   _doc/DBM/<pack>/localization.en.lua     → nombre EN de cada mod (y en su
//                                             caso, la de la mazmorra)
//   _nombres/_instancias.json               → mapa (instanceID) → { nombre esES,
//                                             encounters[] en orden de juego }
//   _nombres/_encuentros.json               → encounter id → { es, en, criaturas[] }
//
// Reglas de seguridad:
//   - Una zona se emite SOLO si el journal la trae Y al menos un módulo
//     empareja por nombre con los encuentros de la instancia (protege de
//     remakes que comparten map id en eras distintas, p. ej. UBRS de WoD
//     frente a Cámaras Escarlata).
//   - Los map id YA reclamados por el ZON de otro pack (Cata/MoP/TWW/Midnight)
//     se saltan para no duplicar el desplegable del minimapa entre packs.
//   - Los módulos sin pareja van al FINAL del array "jefes" (orden
//     provisional) y se listan en el informe.
//   - Las zonas sin journal o sin solape quedan listadas como PENDIENTES al
//     final del fichero, comentadas, para curar a mano.
//
// Uso: npm run generar-zonas                       (por defecto los 8 esqueletos)
//      npm run generar-zonas -- --pack Bosses_TBC  (uno concreto)
//      npm run generar-zonas -- --pack Bosses_TWW --forzar (regenerar un pack
//      con datos a mano: SE PIERDE la curación manual del fichero)
import { readFileSync, readdirSync, existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import {
	DBM as DBM_DOC, EXCLUIDAS, ZONAS_EXCLUIDAS, PACKS as PACKS_DBM, normalizar,
	nombresCoinciden, tokensDe, carpetasDeDirs, partirArgsTop, parseModulo,
	nombresLocalizacion, raicesDePack,
} from "./_dbm-parse.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const DBM = DBM_DOC;
const NOMBRES = path.join(SRC, "_nombres");

// Packs con datos a mano: se requieren --forzar para regenerarlos
const PACKS_CON_DATOS = new Set(["Bosses_Cata", "Bosses_MoP", "Bosses_TWW", "Bosses_Midnight"]);

const TITULOS = {
	Bosses_Vanilla: "Vanilla (Classic)",
	Bosses_TBC: "The Burning Crusade",
	Bosses_WotLK: "Wrath of the Lich King",
	Bosses_Cata: "Cataclysm",
	Bosses_MoP: "Mists of Pandaria",
	Bosses_WoD: "Warlords of Draenor",
	Bosses_Legion: "Legion",
	Bosses_BfA: "Battle for Azeroth",
	Bosses_Shadowlands: "Shadowlands",
	Bosses_Dragonflight: "Dragonflight",
	Bosses_TWW: "The War Within",
	Bosses_Midnight: "Midnight",
};

const argv = process.argv.slice(2);
const iPack = argv.indexOf("--pack");
const soloPack = iPack !== -1 ? argv[iPack + 1] : null;
const forzar = argv.includes("--forzar");
const PACKS = PACKS_DBM; // el mapeo carpeta→pack vive en _dbm-parse (compartido con nombres-jefe)
const objetivos = soloPack ? [PACKS.find((p) => p.nombre === soloPack)] : PACKS.filter((p) => !PACKS_CON_DATOS.has(p.nombre));

// --- Caches del journal ------------------------------------------------------
const instancias = JSON.parse(readFileSync(path.join(NOMBRES, "_instancias.json"), "utf8"));
const encuentrosCache = (() => {
	try { return JSON.parse(readFileSync(path.join(NOMBRES, "_encuentros.json"), "utf8")); }
	catch { return {}; }
})();

// Cargadores de instancias por mapa (puede haber más de una con el mismo map id)
const porMapa = new Map();
for (const ins of instancias) {
	if (ins.mapa == null) continue;
	const k = String(ins.mapa);
	if (!porMapa.has(k)) porMapa.set(k, []);
	porMapa.get(k).push(ins);
}
const porId = new Map();
for (const ins of instancias) porId.set(String(ins.id), ins);

// --- Zonas ya reclamadas por otros packs (evitar duplicar el desplegable) -----
function zonasReclamadas() {
	const saltar = new Set();
	for (const pack of PACKS_CON_DATOS) {
		const fz = path.join(SRC, pack, `${pack}_zonas.lua`);
		if (!existsSync(fz)) continue;
		for (const m of readFileSync(fz, "utf8").matchAll(/zonas\["(\d+)"\]\s*=/g)) saltar.add(m[1]);
	}
	return saltar;
}
const RECLAMADAS = zonasReclamadas();

// --- Parsing de módulos DBM: vive en _dbm-parse.mjs (compartido con
// nombres-jefe.mjs); aquí solo quedan las funciones de agrupación por pack. ---

// --- Generación por pack -----------------------------------------------------
function modulosDePack(pack) {
	// { zonaId → Map(normalizedName → { nombreEn, nombreEs, cids[], ficheros[], claves[] }) }
	const zonas = new Map();
	const sinZona = [];
	// El nombre de carpeta DBM se resuelve con el patrón del pack (igual que
	// comparar-dbm); puede haber VARIAS raíces por expansión (Party-Raids-Delves).
	const raices = [];
	for (const dir of readdirSync(DBM, { withFileTypes: true })) {
		if (!dir.isDirectory() || EXCLUIDAS.has(dir.name) || ZONAS_EXCLUIDAS.has(dir.name)) continue;
		if (pack.patron.test(dir.name)) raices.push(path.join(DBM, dir.name));
	}
	if (!raices.length) return { zonas, sinZona, raiz: null };

	// La localization vive a nivel de cada raíz (y a veces también en la mazmorra)
	const loc = { en: {}, es: {} };
	for (const r of raices) {
		const l = nombresLocalizacion(r);
		for (const k of Object.keys(l.en)) if (!loc.en[k]) loc.en[k] = l.en[k];
		for (const k of Object.keys(l.es)) if (!loc.es[k]) loc.es[k] = l.es[k];
	}

	for (const raizReal of raices) {
	for (const carpeta of carpetasDeDirs(raizReal, 2)) {
		const rel = path.relative(raizReal, carpeta).replace(/\\/g, "/");
		for (const f of readdirSync(carpeta)) {
			if (!f.endsWith(".lua") || /^localization/i.test(f)) continue;
			const mod = parseModulo(path.join(carpeta, f));
			if (mod.cids.length === 0) continue;
			let nombreEn = (mod.key !== null && loc.en[mod.key]) || null;
			let nombreEs = (mod.key !== null && loc.es[mod.key]) || null;
			if (!nombreEn && !(mod.key !== null && /^\d+$/.test(mod.key))) {
				// fallback: clave con camel/underscores → nombre en EN
				nombreEn = mod.fichero.replace(/([a-z0-9])([A-Z])/g, "$1 $2").replace(/_/g, " ");
			}
			// SIN gate de nombres: los packs nuevos (Legion+) no llevan name= para
			// sus mods; el pareo exacto por id de encuentro (canal 0) no los necesita.
			// Agrupación: primero por instanceID del journal (vía exacta, el 4º
			// argumento de NewMod); si no hay id o no está en la caché, por los
			// mod:SetZone (map id) de la vía clásica.
			const anadir = (zonaId, instancia) => {
				if (!zonas.has(zonaId)) zonas.set(zonaId, new Map());
				const dentro = zonas.get(zonaId);
				const k = normalizar(nombreEn ?? nombreEs);
				const existente = dentro.get(k);
				if (existente) {
					for (const c of mod.cids) if (!existente.cids.includes(c)) existente.cids.push(c);
					if (!existente.claves.includes(mod.key ?? mod.fichero)) existente.claves.push(mod.key ?? mod.fichero);
					if (!existente.ficheros.includes(`${rel}/${f}`)) existente.ficheros.push(`${rel}/${f}`);
					if (instancia && !existente.journal) existente.journal = instancia;
				} else {
					dentro.set(k, { nombreEn, nombreEs, cids: [...mod.cids], claves: [mod.key ?? mod.fichero], ficheros: [`${rel}/${f}`], journal: instancia ?? null });
				}
			};
			if (mod.instanceId !== null && porId.has(mod.instanceId)) {
				anadir(String(porId.get(mod.instanceId).mapa), porId.get(mod.instanceId));
			} else if (mod.zonas.length) {
				for (const z of mod.zonas) anadir(z, (porMapa.get(z) ?? [])[0] ?? null);
			} else {
				sinZona.push({ rel, fichero: f, motivo: `sin mod:SetZone y su instanceID ${mod.instanceId ?? "ausente"} no está en el journal` });
			}
		}
	}
	}
	return { zonas, sinZona, raiz: raices.join(", ") };
}

function candidatosDeEncuentro(encId, nombreEs) {
	const cache = encuentrosCache[String(encId)];
	const strs = [nombreEs];
	if (cache) {
		strs.push(cache.es); strs.push(cache.en);
		for (const c of cache.criaturas ?? []) { strs.push(c.es); strs.push(c.en); }
	}
	const cands = new Set();
	for (const s of strs) { const n = normalizar(s); if (n) cands.add(n); }
	return { strs: strs.filter(Boolean), cands };
}

function emparejarModulos(mods, inst) {
	// devuelve { orden: [mods], restos: [mods] } en orden del journal.
	// Tres canales por encuentro, por orden de confianza: 1) nombre exacto
	// (EN o esES normalizados), 2) token distintivo compartido, 3) difuso.
	const quedan = new Map(mods); // copia
	const variantesDe = (mod) => [normalizar(mod.nombreEn), normalizar(mod.nombreEs)].filter(Boolean);
	const preTokens = new Map(); // módulo → Set tokens
	const tokensDeMod = (mod) => {
		if (!preTokens.has(mod)) {
			const s = new Set();
			for (const nm of [mod.nombreEn, mod.nombreEs]) for (const t of tokensDe(nm)) s.add(t);
			preTokens.set(mod, s);
		}
		return preTokens.get(mod);
	};
	const orden = [];
	for (const enc of inst.encuentros ?? []) {
		let hit = null;
		// 0) EXACTO por id: el id numérico del mod (NewMod) es el encounter id del
		//    journal en los packs nuevos; el id del encuentro del journal es enc.id
		for (const [, mod] of quedan) {
			const k = String(mod.claves[0] ?? "");
			if (/^\d+$/.test(k) && k === String(enc.id)) { hit = mod; break; }
		}
		const { strs, cands } = candidatosDeEncuentro(enc.id, enc.nombre);
		if (!hit && !cands.size) continue;
		// 1) exacto: nombre EN o esES del módulo dentro de los nombres del encuentro
		if (!hit) {
			for (const [, mod] of quedan) {
				if (variantesDe(mod).some((v) => cands.has(v))) { hit = mod; break; }
			}
		}
		// 2) token distintivo compartido (traducciones desiguales)
		if (!hit) {
			const encTokens = new Set();
			for (const s of strs) for (const t of tokensDe(s)) encTokens.add(t);
			let mejorToken = "";
			for (const [, mod] of quedan) {
				for (const t of tokensDeMod(mod)) {
					if (encTokens.has(t) && t.length > mejorToken.length) { hit = mod; mejorToken = t; }
				}
			}
		}
		// 3) difuso (comparar-dbm style) contra cualquier variante
		if (!hit) {
			for (const [, mod] of quedan) {
				for (const v of variantesDe(mod)) {
					for (const c of cands) { if (nombresCoinciden(v, c)) { hit = mod; break; } }
					if (hit) break;
				}
				if (hit) break;
			}
		}
		if (hit) {
			if (!orden.includes(hit)) orden.push(hit);
			for (const [k, mod] of quedan) if (mod === hit) { quedan.delete(k); break; }
		}
	}
	return { orden, restos: [...quedan.values()] };
}

function luaDePack(pack, datos, informes) {
	const L = [];
	L.push(`--[[`);
	L.push(`\t${pack.nombre}_zonas.lua`);
	L.push(`\t\tÍndice de zonas del pack ${TITULOS[pack.nombre] ?? pack.nombre} (opcional):`);
	L.push(`\t\tinstanceID → zona con nombre y ids de los jefes del pack, en orden`);
	L.push(`\t\tde progresión de la instancia. Alimenta el radar de instancia y el`);
	L.push(`\t\tdesplegable del minimapa; el core solo lista los jefes con entrada.`);
	L.push(`\t\tGenerado con npm run generar-zonas (fuente: _doc/DBM + caché`);
	L.push(`\t\t_nombres del journal); revisar nombres y orden a mano.`);
	L.push(`\t\tIn memory of Romy 1996 - 25th May 2011`);
	L.push(`--]]`);
	L.push(``);
	L.push(`local _, P = ...;`);
	L.push(`local zonas = {};`);
	L.push(``);
	if (datos.length) {
		L.push(`-- Mazmorras e instancias de ${TITULOS[pack.nombre] ?? pack.nombre} (generado; nombres EN del journal, fallback esES)`);
		L.push(``);
	}
	for (const d of datos) {
		L.push(`-- ${d.origen}`);
		L.push(`zonas["${d.zona}"] = { nombre = "${d.nombre}", jefes = { ${d.jefes.map((j) => `"${j}"`).join(", ")} } };`);
		L.push(``);
	}
	if (informes.length) {
		L.push(`-- Pendientes de curar a mano (sin journal o sin solape de encuentros):`);
		for (const inf of informes) L.push(`--   ${inf}`);
		L.push(``);
	}
	L.push(`P.zonas = zonas;`);
	return L.join("\n") + "\n";
}

// --- Main --------------------------------------------------------------------
for (const pack of objetivos) {
	if (pack === undefined) { console.log(`--pack desconocido`); process.exit(1); }
	if (PACKS_CON_DATOS.has(pack.nombre) && !forzar) {
		console.log(`== ${pack.nombre}: SKIPPED (pack con datos a mano; usa --forzar para regenerar) ==\n`);
		continue;
	}
	const { zonas, sinZona, raiz } = modulosDePack(pack);
	if (!raiz) { console.log(`== ${pack.nombre}: sin carpetas DBM en _doc ==\n`); continue; }

	const datos = [];
	const pendientes = [];
	const saltadas = [];
	let okCompleta = 0, okParcial = 0;

	for (const [zona, modsMap] of [...zonas.entries()].sort((a, b) => Number(a[0]) - Number(b[0]))) {
		if (RECLAMADAS.has(zona)) {
			saltadas.push(`zonas["${zona}"] ya reclamada por el ZON de otro pack (módulos: ${[...modsMap.values()].map((m) => m.nombreEn ?? m.nombreEs).join(", ")})`);
			continue;
		}
		const regs = [...modsMap.values()];
		// Vía 1: alguna variante del módulo trae instanceID del journal → instancia exacta.
		// Vía 2: mapa (SetZone) → journal por mapa, elegido entre candidatas por solape.
		const pinned = (regs.find((m) => m.journal) ?? {}).journal ?? null;
		let escogida = null, mejorRes = null, via = "";
		if (pinned) {
			escogida = pinned;
			mejorRes = emparejarModulos(modsMap, pinned);
			via = "instanceID";
		} else {
			const candidatosInst = porMapa.get(zona) ?? [];
			if (!candidatosInst.length) {
				pendientes.push(`zonas["${zona}"] — sin instancia en el journal (mapa ${zona}; módulos: ${regs.map((m) => m.nombreEn ?? m.nombreEs).join(", ")})`);
				continue;
			}
			let mejorH = -1;
			for (const inst of candidatosInst) {
				const res = emparejarModulos(modsMap, inst);
				if (res.orden.length > mejorH) { escogida = inst; mejorRes = res; mejorH = res.orden.length; }
			}
			if (mejorH === 0) {
				pendientes.push(`zonas["${zona}"] — "${escogida.en || escogida.nombre}" (mapa ${zona}) sin solape de nombres (¿remake de otra era?; módulos: ${regs.map((m) => m.nombreEn ?? m.nombreEs).join(", ")})`);
				continue;
			}
			via = "mapa";
		}
		const nombreZona = escogida.en || escogida.nombre;
		const jefes = [];
		for (const m of mejorRes.orden) for (const c of m.cids) if (!jefes.includes(c)) jefes.push(c);
		for (const m of mejorRes.restos) for (const c of m.cids) if (!jefes.includes(c)) jefes.push(c);
		const origen = [...new Set(mejorRes.orden.flatMap((m) => m.ficheros.map((f) => path.dirname(f))))].join(", ") || "DBM";
		const nota = mejorRes.restos.length
			? ` -- ${mejorRes.restos.length} módulo(s) sin emparejar al final de la lista`
			: ``;
		datos.push({ zona, nombre: nombreZona, jefes, origen, nota, via });
		if (mejorRes.restos.length) okParcial++; else okCompleta++;
		if (mejorRes.restos.length) {
			pendientes.push(`zonas["${zona}"] — "${nombreZona}": restos sin emparejar: ${mejorRes.restos.map((m) => `${m.nombreEn ?? m.nombreEs} (${m.cids.join("/")})`).join("; ")} (orden provisional al final)`);
		}
	}

	const fichero = path.join(SRC, pack.nombre, `${pack.nombre}_zonas.lua`);
	await (await import("node:fs/promises")).writeFile(fichero, luaDePack(pack, datos, pendientes), "utf8");

	console.log(`== ${pack.nombre} (${TITULOS[pack.nombre] ?? pack.nombre}) ==`);
	console.log(`   zonas generadas: ${datos.length} (${okCompleta} completas, ${okParcial} con restos)`);
	for (const d of datos) console.log(`   mapa ${d.zona}: ${d.nombre} — ${d.jefes.length} jefes (${d.via})${d.nota.replace(/^ -- /, " ")}`);
	if (saltadas.length) console.log(`   saltadas (reclamadas por otro pack): ${saltadas.length}`);
	for (const s of saltadas) console.log(`     ${s}`);
	if (pendientes.length) console.log(`   pendientes de curar: ${pendientes.length} (anotadas al final del fichero)`);
	for (const m of sinZona) console.log(`   módulo sin zona/nombre: [${m.rel}] ${m.fichero} — ${m.motivo}`);
	console.log(``);
}