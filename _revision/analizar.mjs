// _revision/analizar.mjs
// Análisis mecánico de los packs Bosses_* (ES/EN + FR informativo) para la
// revisión de 2026-10. NO modifica nada: solo reporta.
//   node _revision/analizar.mjs [--pack Bosses_MoP]
import { readFileSync, existsSync, readdirSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SRC = path.resolve(__dirname, "..");
const argv = process.argv.slice(2);
const iPack = argv.indexOf("--pack");
const soloPack = iPack !== -1 ? argv[iPack + 1] : null;
const PACKS = soloPack
	? [soloPack]
	: readdirSync(SRC, { withFileTypes: true })
			.filter((d) => d.isDirectory() && /^Bosses_[A-Za-z]+$/.test(d.name) && existsSync(path.join(SRC, d.name, `${d.name}_es.lua`)))
			.map((d) => d.name);

// ---------------------------------------------------------------- parsing --

// Parsea un fichero de idioma completo: Map npcId -> entrada
//   { nombre, bullets: [..], lineas: [todas las cadenas], zona, linea }
function parsePackFile(fich) {
	const lines = readFileSync(fich, "utf8").split(/\r?\n/);
	const entries = new Map(); // id -> { nombre, bullets, lineas, zona, linea }
	const porLinea = new Map(); // id -> linea (1-based) donde se asigna
	let zona = null;
	const zonaDe = new Map(); // id -> zona
	const zonasCab = new Map(); // zona -> nombre cabecera

	// estado para bloques compartidos
	let bloque = null; // { bullets, lineas, nombre, desde } del bos actual
	let ultimoBos = null; // último bloque `bos = { ... };` CERRADO (las asignaciones van después)
	let pendientes = []; // ids esperando "= bos;" partido en dos líneas
	bloqueIdInline = null;

	const stringsDe = (s) => {
		const out = [];
		const re = /"((?:[^"\\]|\\.)*)"/g;
		let m;
		while ((m = re.exec(s)) !== null) out.push(m[1]);
		return out;
	};

	for (let i = 0; i < lines.length; i++) {
		const ln = lines[i];
		const mz = /^\s*--\s*(.+?)\s*:\s*Zona\s+(\d+)/.exec(ln);
		if (mz) {
			zona = mz[2];
			if (!zonasCab.has(zona)) zonasCab.set(zona, mz[1].trim());
			continue;
		}
		const mz2 = /^\s*--\s*Zona\s+(\d+)\s*(.*)$/.exec(ln);
		if (mz2) {
			zona = mz2[1];
			if (!zonasCab.has(zona)) zonasCab.set(zona, mz2[2].trim());
			continue;
		}
		if (/^\s*--/.test(ln)) continue; // resto de comentarios

		// asignaciones compartidas en la misma línea: pack["a"] = bos; pack["b"] = bos;
		const reAsign = /pack\["(\d+)"\]\s*=\s*bos\s*;/g;
		let mA;
		let asigno = false;
		while ((mA = reAsign.exec(ln)) !== null) {
			const bos = bloque ?? ultimoBos;
			if (bos) {
				entries.set(mA[1], bos);
				zonaDe.set(mA[1], zona);
				porLinea.set(mA[1], i + 1);
			}
			asigno = true;
		}
		if (asigno) continue;

		// asignación partida: pack["id"] =   (y "bos;" en la línea siguiente)
		const mPart = /^\s*pack\["(\d+)"\]\s*=\s*$/.exec(ln);
		if (mPart) { pendientes.push(mPart[1]); continue; }
		if (pendientes.length && /^\s*bos\s*;/.test(ln)) {
			const bos = bloque ?? ultimoBos;
			for (const id of pendientes) {
				if (bos) {
					entries.set(id, bos);
					zonaDe.set(id, zona);
					porLinea.set(id, i + 1);
				}
			}
			pendientes = [];
			continue;
		}
		if (pendientes.length && /^\s*\{/.test(ln)) {
			// formato: pack["id"] = { ... (abierto en la línea siguiente)
			bloque = { bullets: [], lineas: [], nombre: null, desde: i + 1 };
			continue;
		}

		// apertura de bloque compartido: bos = { ...
		const mBos = /^\s*bos\s*=\s*\{(.*)$/.exec(ln);
		if (mBos) {
			bloque = { bullets: [], lineas: [], nombre: null, desde: i + 1 };
			if (mBos[1].trim()) {
				const ss = stringsDe(mBos[1]);
				if (ss.length) bloque.nombre = ss[0];
				bloque.lineas.push(...ss);
			}
			continue;
		}

		// entrada inline: pack["id"] = { ... (posible cierre en la misma línea)
		const mIn = /^\s*pack\["(\d+)"\]\s*=\s*\{(.*)$/.exec(ln);
		if (mIn) {
			const id = mIn[1];
			const ss = stringsDe(mIn[2]);
			const e = { bullets: [], lineas: [...ss], nombre: ss[0] ?? null, desde: i + 1 };
			if (/\};\s*$/.test(mIn[2])) {
				terminar(e, id, i + 1);
			} else {
				bloque = e; // continúa hasta el }; — reaprovechamos el mecanismo
				bloqueIdInline = id;
			}
			zonaDe.set(id, zona);
			continue;
		}

		if (bloque) {
			if (/^\s*\};?\s*$/.test(ln)) {
				if (bloqueIdInline !== null) {
					terminar(bloque, bloqueIdInline, i + 1);
					bloqueIdInline = null;
					bloque = null;
				} else {
					ultimoBos = bloque; // el bloque cerrado queda listo para sus pack["id"] = bos;
					bloque = null;
				}
				continue;
			}
			const ss = stringsDe(ln);
			if (ss.length) {
				if (bloque.nombre === null) bloque.nombre = ss[0];
				bloque.lineas.push(...ss);
			}
		}
	}

	function terminar(e, id, linea) {
		for (const s of e.lineas) if (s.startsWith("*")) e.bullets.push(s);
		entries.set(id, e);
		zonaDe.set(id, zona);
		porLinea.set(id, linea);
	}
	// nombres/bullets para bloques inline que nunca cerraron explícitamente:
	for (const [id, e] of entries) {
		for (const s of e.lineas) if (s.startsWith("*") && !e.bullets.includes(s)) e.bullets.push(s);
		if (e.nombre === null && e.lineas.length) e.nombre = e.lineas[0];
	}
	return { entries, zonasCab, zonaDe, porLinea };
}
let bloqueIdInline = null;

// ------------------------------------------------------------- validación --

const ALLOWED_EXTRA = new Set(["\u2014"]); // em-dash — (además de Latin-1)
function charsRaros(s) {
	const raros = [];
	for (const ch of s) {
		const c = ch.codePointAt(0);
		if (c <= 0xff || ALLOWED_EXTRA.has(ch)) continue;
		raros.push(`U+${c.toString(16).toUpperCase().padStart(4, "0")} ${ch}`);
	}
	return [...new Set(raros)];
}

function escapesMalos(s) {
	const probs = [];
	// residuo |h*r o cierres invertidos
	if (/\|h\*r/.test(s)) probs.push("residuo |h*r");
	// todo |Hspell:ID debe tener |h después y cerrar con |h|r
	const links = [...s.matchAll(/\|Hspell:(-?\d+)\|h(\[[^\]]*\])\|h(\|r)?/g)];
	for (const m of links) if (!m[3]) probs.push(`|Hspell:${m[1]} sin |r de cierre`);
	const opens = [...s.matchAll(/\|Hspell:(-?\d+)\|h/g)].length;
	const closes = [...s.matchAll(/\|h/g)].length;
	if (opens * 2 !== closes && probs.length === 0) probs.push(`posible desbalance |h (abre=${opens} cierra-totales=${closes})`);
	// |cff sin |r en la misma cadena
	if (/\|cff[0-9A-Fa-f]{6}/.test(s) && !/\|r/.test(s)) probs.push("|cff sin |r");
	// | suelto que no inicia ninguno de los escapes válidos
	for (const m of s.matchAll(/\|(.)/g)) {
		const sig = m[1];
		if (!/[crHh]/.test(sig)) probs.push(`| suelto seguido de ${JSON.stringify(sig)}`);
	}
	return [...new Set(probs)];
}

const spellsDe = (s) => [...s.matchAll(/\|Hspell:(-?\d+)\|/g)].map((m) => m[1]);

// ------------------------------------------------------------------- main --

const report = [];
const say = (t) => { report.push(t); console.log(t); };

const vistosGlobal = new Map(); // npcId -> [pack, ...]
for (const pack of PACKS) {
	say(`\n=================== ${pack} ===================`);
	const dir = path.join(SRC, pack);
	const resES = parsePackFile(path.join(dir, `${pack}_es.lua`));
	const resEN = parsePackFile(path.join(dir, `${pack}_en.lua`));
	const es = resES.entries, en = resEN.entries;

	// duplicados globales
	for (const id of es.keys()) {
		if (!vistosGlobal.has(id)) vistosGlobal.set(id, []);
		vistosGlobal.get(id).push(pack + ":es");
	}
	for (const id of en.keys()) {
		if (!vistosGlobal.has(id)) vistosGlobal.set(id, []);
		vistosGlobal.get(id).push(pack + ":en");
	}

	// A. paridad de ids
	const soloES = [...es.keys()].filter((k) => !en.has(k));
	const soloEN = [...en.keys()].filter((k) => !es.has(k));
	if (soloES.length) say(`  [A] Solo en ES (${soloES.length}): ${soloES.join(", ")}`);
	if (soloEN.length) say(`  [A] Solo en EN (${soloEN.length}): ${soloEN.join(", ")}`);

	// FR informativo
	const frFich = path.join(dir, `${pack}_fr.lua`);
	if (existsSync(frFich)) {
		const resFR = parsePackFile(frFich);
		const dif = [...es.keys()].filter((k) => !resFR.entries.has(k)).length;
		say(`  [INFO] FR: ${resFR.entries.size} entradas (faltan ${dif} respecto a ES)`);
	}

	// B. paridad por entrada
	const paridad = [];
	for (const [id, e] of es) {
		const o = en.get(id);
		if (!o) continue;
		if (e.bullets.length !== o.bullets.length) {
			paridad.push(`${id} (${e.nombre ?? "?"}): ES ${e.bullets.length} bullets / EN ${o.bullets.length}`);
		} else {
			for (let i = 0; i < e.bullets.length; i++) {
				const s1 = spellsDe(e.bullets[i]).sort().join(",");
				const s2 = spellsDe(o.bullets[i]).sort().join(",");
				if (s1 !== s2) {
					paridad.push(`${id} (${e.nombre ?? "?"}) bullet ${i + 1}: spells ES=[${s1}] EN=[${s2}]`);
				}
			}
		}
	}
	if (paridad.length) {
		say(`  [B] Paridad ES/EN con diferencias (${paridad.length}):`);
		for (const p of paridad) say(`      ${p}`);
	} else {
		say(`  [B] Paridad ES/EN: OK (${es.size} entradas, bullets y spells idénticos)`);
	}

	// C. nombres idénticos ES==EN (informativo, la mayoría legítimos)
	const idem = [...es.keys()].filter((k) => en.has(k) && es.get(k).nombre === en.get(k).nombre);
	say(`  [C] Nombres ES==EN: ${idem.length}`);

	// D. caracteres no renderizables
	let charsTotal = 0;
	for (const [lang, res] of [["ES", resES], ["EN", resEN]]) {
		for (const [id, e] of res.entries) {
			for (const s of [e.nombre, ...e.lineas].filter(Boolean)) {
				const raros = charsRaros(s);
				if (raros.length) {
					charsTotal++;
					say(`  [D] ${lang} ${id} (${e.nombre}): ${raros.join(" | ")} en: ${s.slice(0, 90)}`);
				}
			}
		}
	}
	if (!charsTotal) say(`  [D] Caracteres no renderizables: ninguno`);

	// E. escapes
	let escTotal = 0;
	for (const [lang, res] of [["ES", resES], ["EN", resEN]]) {
		for (const [id, e] of res.entries) {
			for (const s of [e.nombre, ...e.lineas].filter(Boolean)) {
				const probs = escapesMalos(s);
				if (probs.length) {
					escTotal++;
					say(`  [E] ${lang} ${id} (${e.nombre}): ${probs.join("; ")} en: ${s.slice(0, 90)}`);
				}
			}
		}
	}
	if (!escTotal) say(`  [E] Escapes: OK`);

	// F. entradas con 0-1 bullets (posibles mejoras de táctica)
	const finos = [...es.entries()].filter(([, e]) => e.bullets.length < 2).map(([id, e]) => `${id} (${e.nombre}, ${e.bullets.length})`);
	if (finos.length) say(`  [F] Entradas con <2 bullets (${finos.length}): ${finos.join(", ")}`);

	// G. ENC -> entradas
	const encFich = path.join(dir, `${pack}_enc.lua`);
	if (existsSync(encFich)) {
		const encTxt = readFileSync(encFich, "utf8");
		let sinEntrada = 0, extraIds = 0;
		for (const m of encTxt.matchAll(/^(\s*)enc\["(\d+)"\]\s*=\s*"([^"]+)"/gm)) {
			const ids = m[3].split(",").map((x) => x.trim());
			const conEntrada = ids.filter((x) => es.has(x) || en.has(x));
			if (!conEntrada.length) {
				sinEntrada++;
				say(`  [G] ENC ${m[2]} = "${m[3]}": NINGÚN id con entrada de datos`);
			} else if (conEntrada.length < ids.length) {
				extraIds++;
				say(`      [G-info] ENC ${m[2]}: candidatos sin entrada: ${ids.filter((x) => !es.has(x) && !en.has(x)).join(",")}`);
			}
		}
		if (!sinEntrada && !extraIds) say(`  [G] ENC: todas las entradas activas apuntan a datos`);
	}

	// H. zonas
	const zonFich = path.join(dir, `${pack}_zonas.lua`);
	if (existsSync(zonFich)) {
		const zonTxt = readFileSync(zonFich, "utf8");
		let prob = 0;
		const zonasEnFile = new Set();
		for (const m of zonTxt.matchAll(/zonas\["(\d+)"\]/g)) zonasEnFile.add(m[1]);
		for (const m of zonTxt.matchAll(/zonas\["(\d+)"\]\s*=\s*\{([^}]*)\}/g)) {
			const zona = m[1];
			const ids = [...m[2].matchAll(/"(\d+)"/g)].map((x) => x[1]);
			for (const id of ids) {
				if (!es.has(id) && !en.has(id)) {
					prob++;
					say(`  [H] zonas ${zona}: id ${id} SIN entrada de datos`);
				}
			}
			// cabeceras del pack de esa zona: ids que deberían estar
			const cabIds = [...resES.zonaDe.entries()].filter(([, z]) => z === zona).map(([k]) => k);
			const faltan = cabIds.filter((k) => !ids.includes(k));
			if (faltan.length) {
				prob++;
				say(`      [H-info] zonas ${zona}: ids con entrada pero FUERA del índice: ${faltan.join(",")}`);
			}
		}
		// zonas de cabecera sin entrada en el índice zonas
		const cabZonas = [...resES.zonasCab.keys()];
		const sinZona = cabZonas.filter((z) => !zonasEnFile.has(z));
		if (sinZona.length) say(`      [H-info] cabeceras Zona sin entrada en zonas: ${sinZona.map((z) => `${z} (${resES.zonasCab.get(z)})`).join(", ")}`);
		if (!prob) say(`  [H] zonas: índice consistente con los datos`);
	} else {
		say(`  [H] SIN fichero de zonas (el desplegable de minimapa no funciona en las zonas de este pack)`);
	}
}

// duplicados entre packs (regla anti-duplicado)
const dups = [...vistosGlobal.entries()].filter(([, lst]) => new Set(lst.map((x) => x.split(":")[0])).size > 1);
if (dups.length) {
	say(`\n[I] IDS DUPLICADOS ENTRE PACKS (${dups.length}):`);
	for (const [id, lst] of dups) say(`    ${id}: ${lst.join(", ")}`);
} else {
	say(`\n[I] Sin ids duplicados entre packs.`);
}

import { writeFileSync } from "node:fs";
writeFileSync(path.join(__dirname, "analisis-mecanico.txt"), report.join("\n") + "\n", "utf8");
say(`\nInforme guardado en _revision/analisis-mecanico.txt`);
