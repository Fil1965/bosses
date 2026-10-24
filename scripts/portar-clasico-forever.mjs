// scripts/portar-clasico-forever.mjs
// Porta el catálogo clásico (cliente Classic) del pack Bosses_Vanilla al
// pack Bosses_Forever: la línea Forever (Classic+, cliente 1.60.1) juega el
// contenido clásico con los MISMOS NPC ids, así que las entradas y sus
// tácticas son válidas tal cual.
//
// Regla de seguridad: solo se portan las entradas cuyo NPC id aparece en los
// módulos DBM Classic/Shared de _doc (ids del cliente clásico). Los ids de
// SoD/remake/retail (74xxx, 20xxx-22xxx, 2xxxxx) NO existen en el cliente
// Forever y quedan fuera: si se colaran, un id puede apuntar a otra criatura
// en ese cliente y explicar al jefe equivocado.
//
// La instancia de cada entrada se decide por NPC id (referencia: el fichero
// ES de origen, con el banner de zona), no por el banner de cada idioma: los
// ficheros fr/de no llevan banner en todas las secciones, pero los ocho
// idiomas tienen EXACTAMENTE el mismo conjunto de ids.
//
// Lo que NO se porta:
//   · la tabla ENC (la del cliente clásico no aplica: el journal de Forever
//     es propio; el core resuelve por diario/nombre/GUID),
//   · los map ids quedan como provisionales (son los clásicos, el cliente
//     Forever puede usar otros: se confirman in-game),
//   · las bandas clásicas que la guía de Forever no lista (MC, BWL, AQ, Naxx,
//     ZG) — solo Onyxia's Lair, que sí aparece en la guía.
//
// Uso: node scripts/portar-clasico-forever.mjs [--dry]

import { readFileSync, writeFileSync, readdirSync, existsSync, statSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const RAIZ = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const DBM = path.join(RAIZ, "_doc", "DBM");
const FUENTE = "Bosses_Vanilla";
const DESTINO = "Bosses_Forever";
const IDIOMAS = ["es", "en", "fr", "de", "pt", "ru", "zh", "ko"];
const DRY = process.argv.includes("--dry");

// Ids clásicos que el inventario DBM no cubre (añadidos a mano en la casa).
const EXTRAS_CLASICOS = new Set([
	"23682", "23775", // Jinete decapitado (Hallow's End) — cuerpo y cabeza
	"5712", // Zolo, mini-jefe opcional de la guardia Atal'ai (Templo Sumergido clásico)
]);

// Instancias clásicas que la guía de Forever lista (nivel ascendente).
const INSTANCIAS = [
	{ zona: "389", etiqueta: "Ragefire Chasm" },
	{ zona: "43", etiqueta: "Wailing Caverns" },
	{ zona: "48", etiqueta: "Blackfathom Deeps" },
	{ zona: "34", etiqueta: "The Stockade" },
	{ zona: "90", etiqueta: "Gnomeregan" },
	{ zona: "47", etiqueta: "Razorfen Kraul" },
	{ zona: "189", etiqueta: "Scarlet Monastery" },
	{ zona: "129", etiqueta: "Razorfen Downs" },
	{ zona: "70", etiqueta: "Uldaman" },
	{ zona: "209", etiqueta: "Zul'Farrak" },
	{ zona: "349", etiqueta: "Maraudon" },
	{ zona: "109", etiqueta: "Sunken Temple" },
	{ zona: "289", etiqueta: "Scholomance" },
	{ zona: "230", etiqueta: "Blackrock Depths" },
	{ zona: "429", etiqueta: "Dire Maul" },
	{ zona: "229", etiqueta: "Lower/Upper Blackrock Spire" },
	{ zona: "329", etiqueta: "Stratholme" },
	{ zona: "249", etiqueta: "Onyxia's Lair" },
];

// ---------------------------------------------------------------- inventario
// Clasificación de ids por ERA. Criterio:
//   · la ruta del módulo manda (Classic/Shared = cliente clásico;
//     Retail/ y VanillaSoD_* = SoD o retail),
//   · el CONTEXTO DE RAMA manda: los módulos declaran la era con
//     `if DBM:IsRetail() then mod:SetCreatureID(A) else mod:SetCreatureID(B) end`
//     (la rama "then" es la de esa era, la "else" la base) y también con
//     `mod:SetCreatureID(DBM:IsRetail() and A or B)` (la última cifra es la base),
//   · un id que el retail reutiliza (p. ej. Charlga 4421) NO se descarta: se
//     queda clásico porque el módulo Classic lo declara como suyo.
const COND = /Is(Retail|SoD|Cata|TBC|MoP|Legion|WoD|Modern|Legacy)\w*\s*\(\s*\)/;
function idsDeModulo(file) {
	const text = readFileSync(file, "utf8");
	const lineas = text.split(/\r?\n/);
	const pila = []; // bloques abiertos: "sabor-then" | "sabor-else" | "otro"
	const deSabor = []; // ids de la rama específica de sabor
	const base = []; // ids de la rama base/clásica
	const pilaRama = []; // por cada bloque: la rama actual
	for (const l of lineas) {
		const code = l.replace(/--.*$/, "");
		const abreIf = /\bif\b/.test(code) && !/\belseif\b/.test(code);
		if (abreIf) pila.push(COND.test(code) ? "sabor-then" : "otro");
		if (/^\s*(else|elseif)\b/.test(code)) {
			const i = pila.length - 1;
			if (i >= 0 && pila[i] === "sabor-then") pila[i] = "sabor-else";
		}
		const enRamaDeSabor = pila.includes("sabor-then");
		for (const m of code.matchAll(/SetCreatureID\((.*)\)/g)) {
			const expr = m[1];
			const nums = [...expr.matchAll(/\d+/g)].map((n) => n[0]).filter((n) => n !== "0" && n !== "99999");
			if (!nums.length) continue;
			if (COND.test(expr)) {
				// "A or B": la última cifra es la base, las anteriores la de sabor.
				for (const n of nums.slice(0, -1)) deSabor.push(n);
				base.push(nums[nums.length - 1]);
			} else if (enRamaDeSabor) {
				deSabor.push(...nums);
			} else {
				base.push(...nums);
			}
		}
		if (/\bend\b/.test(code)) pila.pop();
	}
	if (!base.length && !deSabor.length) {
		for (const n of text.matchAll(/dungeonID,\s*creatureID\d?(?:\s*,\s*creatureID\d?)?\s*=\s*(\d+)\s*,\s*(\d+)(?:\s*,\s*(\d+))?/g)) {
			for (const g of [n[2], n[3]]) if (g && g !== "99999") base.push(g);
		}
	}
	return { base, deSabor };
}
function ficherosLua(dir) {
	const out = [];
	for (const e of readdirSync(dir, { withFileTypes: true })) {
		const p = path.join(dir, e.name);
		if (e.isDirectory()) out.push(...ficherosLua(p));
		else if (e.name.endsWith(".lua") && !/^localization/i.test(e.name)) out.push(p);
	}
	return out;
}
const clasicos = new Set();
{
	const party = path.join(DBM, "DBM-Party-Vanilla");
	// Solo cuentan los módulos de la familia clásica; los ids de otras eras
	// (Retail/, VanillaSoD_*) quedan fuera por su ruta.
	const clasica = (f) => {
		const r = idsDeModulo(f);
		for (const d of r.base) clasicos.add(d);
	};
	for (const sub of ["Classic", "Shared"]) {
		const d = path.join(party, sub);
		if (existsSync(d)) for (const f of ficherosLua(d)) clasica(f);
	}
	// Ficheros sueltos de la raíz de DBM-Party-Vanilla (NO las subcarpetas:
	// Retail/ y las carpetas de soaked son de otra era).
	for (const e of readdirSync(party, { withFileTypes: true })) {
		if (e.isFile() && e.name.endsWith(".lua") && !/^localization/i.test(e.name)) clasica(path.join(party, e.name));
	}
	const raids = path.join(DBM, "DBM-Raids-Vanilla");
	if (existsSync(raids)) {
		for (const f of ficherosLua(raids)) {
			if (/SoD/i.test(f)) continue; // carpetas VanillaSoD_*: era SoD
			clasica(f);
		}
	}
	for (const e of EXTRAS_CLASICOS) clasicos.add(e);
}

// ------------------------------------------------------------- parseo fuente
function parseFichero(txt) {
	const lineas = txt.split(/\r?\n/);
	const bloques = [];
	let i = 0;
	const esComentario = (l) => /^\s*--/.test(l);
	while (i < lineas.length) {
		const l = lineas[i];
		if (esComentario(l)) {
			const buf = [];
			while (i < lineas.length && esComentario(lineas[i])) { buf.push(lineas[i]); i++; }
			bloques.push({ tipo: "comentario", lineas: buf });
			continue;
		}
		if (/^bos\s*=\s*\{/.test(l)) {
			const cuerpo = [lineas[i]]; i++;
			while (i < lineas.length && !/^\};?\s*$/.test(lineas[i])) { cuerpo.push(lineas[i]); i++; }
			if (i < lineas.length) { cuerpo.push(lineas[i]); i++; }
			// Las líneas pack["X"] = bos; siguen al cuerpo. Un comentario
			// SOLO se absorbe si detrás viene otra línea de ids: si no, es el
			// banner de la sección siguiente y no debe tragárselo (si no, las
			// entradas se quedan en la sección anterior).
			const ids = [];
			while (i < lineas.length) {
				const m = /^pack\["(\d+)"\]\s*=\s*bos;/.exec(lineas[i]);
				if (m) { ids.push(m[1]); i++; continue; }
				if (esComentario(lineas[i])) {
					let j = i + 1;
					while (j < lineas.length && (esComentario(lineas[j]) || lineas[j].trim() === "")) j++;
					if (j < lineas.length && /^pack\["\d+"\]\s*=\s*bos;/.test(lineas[j])) { i = j; continue; }
				}
				break;
			}
			bloques.push({ tipo: "bos", cuerpo, ids });
			continue;
		}
		const m = /^pack\["(\d+)"\]\s*=\s*\{/.exec(l);
		if (m) {
			const cuerpo = [lineas[i]]; i++;
			while (i < lineas.length && !/^\};?\s*$/.test(lineas[i])) { cuerpo.push(lineas[i]); i++; }
			if (i < lineas.length) { cuerpo.push(lineas[i]); i++; }
			bloques.push({ tipo: "inline", id: m[1], cuerpo });
			continue;
		}
		i++;
	}
	return bloques;
}

// Agrupa los bloques en secciones (cada banner de zona abre una sección).
function secciones(bloques) {
	const secs = [];
	let actual = null;
	for (const b of bloques) {
		if (b.tipo === "comentario") {
			let encontrado = null;
			for (const l of b.lineas) {
				const m = /^--\s+(.+?)\s*:\s*Zona\s+(\d+)/.exec(l);
				if (m) { encontrado = { etiqueta: m[1], zona: m[2] }; break; }
				const mc = /^--\s*Zona\s+(\d+)\s*:\s*(.+)$/.exec(l);
				if (mc) { encontrado = { etiqueta: mc[2].trim(), zona: mc[1] }; break; }
			}
			if (encontrado) {
				actual = { ...encontrado, banner: b.lineas, bloques: [] };
				secs.push(actual);
				continue;
			}
		}
		if (actual) actual.bloques.push(b);
	}
	return secs;
}

// Referencia id → zona: sale de los ficheros ES/EN de origen (tienen todos
// los banners). Los ocho idiomas comparten el mismo conjunto de ids.
const refZona = new Map();
for (const idioma of ["es", "en"]) {
	const f = path.join(RAIZ, FUENTE, `${FUENTE}_${idioma}.lua`);
	if (!existsSync(f)) continue;
	for (const sec of secciones(parseFichero(readFileSync(f, "utf8")))) {
		for (const b of sec.bloques) {
			const ids = b.tipo === "inline" ? [b.id] : b.tipo === "bos" ? b.ids : [];
			for (const id of ids) if (!refZona.has(id)) refZona.set(id, sec.zona);
		}
	}
}

// ------------------------------------------------------------- portar
const informe = { portados: 0, caidos: [], porIdioma: {} };

function banner(etiqueta, zona) {
	const linea = `-- ${etiqueta} : Zona ${zona} (clásica) --`;
	const dashes = "-".repeat(linea.length - 6);
	return [`-- ${dashes} --`, linea, `-- ${dashes} --`];
}

// Cabecera de los ficheros de idioma que aún no existen en el pack Forever.
function cabeceraNueva(idioma) {
	const nombre = { es: "español", en: "inglés", fr: "francés", de: "alemán", pt: "portugués", ru: "ruso", zh: "chino", ko: "coreano" }[idioma] || idioma;
	return [
		"--[[",
		`\t${DESTINO}_${idioma}.lua`,
		`\t\tDatos en ${nombre} del pack WoW Forever (datos; el registro lo hace`,
		`\t\t${DESTINO}.lua, que se carga después en el .toc).`,
		"",
		"\t\tCatálogo clásico portado desde Bosses_Vanilla (ids NPC del cliente",
		"\t\tClassic; contenido que Forever también juega). Los jefes nuevos de",
		"\t\tForever (los 24 de DBM-Party-Forever) se añaden con el editor: la",
		"\t\tbase se escribe en EN y se traduce a los demás idiomas.",
		"\t\tIdioma INCOMPLETO: hasta que esté entero no se lista en el .toc.",
		"",
		"\t\tIn memory of Romy 1996 - 25th May 2011",
		"--]]",
		"local _, P = ...;",
		`local ${idioma} = {};`,
		`local pack = ${idioma};`,
		"local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)",
		"",
		"-- Formato de entrada (una por jefe, NPC ID decimal del campo 6 del GUID):",
		'-- pack["NPC_ID"] = { "Nombre del jefe", "* consejo 1", "* consejo 2" };',
		"",
	].join("\n");
}

function portarIdioma(idioma) {
	const fichFuente = path.join(RAIZ, FUENTE, `${FUENTE}_${idioma}.lua`);
	if (!existsSync(fichFuente)) return null;
	const bloques = parseFichero(readFileSync(fichFuente, "utf8"));
	const fichDestino = path.join(RAIZ, DESTINO, `${DESTINO}_${idioma}.lua`);
	const nuevoIdioma = !existsSync(fichDestino);
	const destinoTxt = nuevoIdioma ? `${cabeceraNueva(idioma)}\nP.${idioma} = ${idioma};\n` : readFileSync(fichDestino, "utf8");

	// Idempotencia: si el destino ya tiene el catálogo clásico portado, no se
	// vuelve a insertar (habría duplicados).
	const yaPresente = /pack\["11520"\]/.test(destinoTxt);
	if (yaPresente) {
		informe.porIdioma[idioma] = { estado: "ya portado" };
		return null;
	}

	const ya = new Set();
	const porZona = new Map();
	for (const b of bloques) {
		const ids = b.tipo === "inline" ? [b.id] : b.tipo === "bos" ? b.ids : [];
		if (!ids.length) continue;
		const zona = refZona.get(ids[0]);
		if (!zona) continue;
		const keep = ids.filter((id) => clasicos.has(id) && !ya.has(id));
		if (!keep.length) continue;
		for (const id of keep) ya.add(id);
		if (!porZona.has(zona)) porZona.set(zona, []);
		porZona.get(zona).push({ tipo: b.tipo, cuerpo: b.cuerpo, ids: keep });
	}

	const piezas = [];
	const idsPorZona = {};
	for (const inst of INSTANCIAS) {
		const unidades = porZona.get(inst.zona);
		if (!unidades || !unidades.length) continue;
		idsPorZona[inst.zona] = unidades.flatMap((u) => u.ids);
		piezas.push(banner(inst.etiqueta, inst.zona).join("\n"));
		for (const u of unidades) {
			piezas.push(u.cuerpo.join("\n"));
			if (u.tipo === "bos") for (const id of u.ids) piezas.push(`pack["${id}"] = bos;`);
		}
	}
	if (!piezas.length) return null;

	// El destino: insertar antes del pie (P.<idioma> = <idioma>;)
	const pie = new RegExp(`^P\\.${idioma} = ${idioma};$`, "m");
	const mPie = pie.exec(destinoTxt);
	if (!mPie) throw new Error(`no encuentro el pie P.${idioma} = ${idioma}; en el destino`);
	const antes = destinoTxt.slice(0, mPie.index).replace(/\s+$/, "");
	const despues = destinoTxt.slice(mPie.index);
	const salida = `${antes}\n\n${piezas.join("\n\n")}\n\n${despues}`.replace(/\r?\n/g, "\r\n");
	if (!DRY) writeFileSync(fichDestino, salida, "utf8");
	informe.porIdioma[idioma] = { entradas: Object.values(idsPorZona).flat().length, instancias: Object.keys(idsPorZona).length };
	informe.portados = Object.values(idsPorZona).flat().length;
	return idsPorZona;
}

// ¿Qué ids del origen no se portan y por qué?
function informeCaidos() {
	for (const idioma of ["es"]) {
		const f = path.join(RAIZ, FUENTE, `${FUENTE}_${idioma}.lua`);
		for (const b of parseFichero(readFileSync(f, "utf8"))) {
			const ids = b.tipo === "inline" ? [b.id] : b.tipo === "bos" ? b.ids : [];
			for (const id of ids) if (!clasicos.has(id)) informe.caidos.push(`${refZona.get(id) || "?"} · ${id}`);
		}
	}
}

informeCaidos();
const idsPorIdioma = {};
for (const idioma of IDIOMAS) {
	const r = portarIdioma(idioma);
	if (r) idsPorIdioma[idioma] = r;
}

// Índice de zonas del pack Forever: filas nuevas con los ids clásicos.
if (!DRY) {
	const fichZonas = path.join(RAIZ, DESTINO, `${DESTINO}_zonas.lua`);
	let z = readFileSync(fichZonas, "utf8");
	const ref = idsPorIdioma.es || idsPorIdioma.en || {};
	const filas = [];
	for (const inst of INSTANCIAS) {
		const ids = ref[inst.zona];
		if (!ids || !ids.length) continue;
		if (z.includes(`zonas["${inst.zona}"]`)) continue; // ya está
		filas.push(`zonas["${inst.zona}"] = { nombre = "${inst.etiqueta}", jefes = { ${ids.map((i) => `"${i}"`).join(", ")} } };`);
	}
	if (filas.length) {
		const ancla = "\nP.zonas = zonas;";
		const bloque = `\n-- Mazmorras clásicas (contenido de Classic que Forever también juega).\n-- Los map ids son los del cliente clásico: PROVISIONALES hasta confirmarlos\n-- in-game en el cliente Forever.\n${filas.join("\n")}\n`;
		z = z.replace(ancla, `${bloque}${ancla}`);
	}
	// CRLF y sin BOM
	writeFileSync(fichZonas, z.replace(/\r?\n/g, "\r\n"), "utf8");
}

console.log(`ids en el inventario clásico DBM: ${clasicos.size}`);
console.log("por idioma:", JSON.stringify(informe.porIdioma));
const refFinal = idsPorIdioma.es || {};
for (const inst of INSTANCIAS) {
	const ids = refFinal[inst.zona] || [];
	console.log(`  Zona ${String(inst.zona).padEnd(5)} ${inst.etiqueta.padEnd(30)} ${String(ids.length).padStart(3)} entradas${ids.length ? "" : "  ← SIN ENTRADAS"}`);
	if (process.argv.includes("--ids")) console.log(`        ${ids.join(",")}`);
}
console.log(`\nids NO portados (SoD/remake/retail o sin fuente DBM) — ${informe.caidos.length}:`);
for (const c of informe.caidos) console.log("  " + c);
if (DRY) console.log("\n(--dry: no se ha escrito nada)");
