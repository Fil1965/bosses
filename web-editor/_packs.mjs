// web-editor/_packs.mjs
// Parser completo y escritor QUIRÚRGICO de los packs de datos del addon Bosses.
//
// Filosofía: los ficheros de datos (Bosses_<X>_<idioma>.lua) se editan
// bloque a bloque — se reescribe SOLO el bloque de la entrada tocada y el
// resto del fichero queda byte a byte (cabeceras de zona, comentarios,
// orden). Formato verificado en los packs: entradas SIEMPRE multi-línea
// (2026-10-02, greps de comprobación), cerrando con `};`, con nombre como
// elemento 1 y consejo por línea. Estilos soportados:
//   pack["ID"] = { "Nombre", "* línea", ... };
//   bos = { "Nombre", ... };  pack["ID"] = bos;  (compartidas y alias)
// Los payloads NO se re-escapan: el editor trabaja sobre la forma cruda del
// fichero (con sus escapes legítimos |cff...|Hspell:ID|h[...]|h|r intactos).
// Solo el NOMBRE usa escapado de comillas (nunca ocurre en los datos).

import { readdirSync, readFileSync } from "node:fs";
import { join } from "node:path";

// Idiomas de datos soportados (clave en la subtabla del registrador: ES/EN/...)
export const IDIOMAS = ["es", "en", "fr", "de"];

// ---------------------------------------------------------------- parser --

// Doc = modelo de un fichero de idioma de un pack.
// { eol, lines[], blocks[], byId, zones, exportLineIndex }
//   blocks[k] = { kind: 'inline'|'shared', start, end, ids[], name }
//   (start/end = índices de línea 0-based, inclusive; start = línea de apertura)
export function parseDoc(text) {
	const doc = {
		text,
		eol: text.includes("\r\n") ? "\r\n" : "\n",
		lines: text.split(/\r?\n/),
		blocks: [],
		byId: new Map(), // id -> block
		zones: new Map(), // id -> zoneId | null ("Zona NNNN" del comentario de cabecera)
		zoneLabels: new Map(), // id -> etiqueta del comentario (nombre de instancia de la era del pack)
		exportLineIndex: -1,
	};
	let currentZone = null;
	let currentZoneLabel = null;
	let open = null; // bloque en curso { kind, start, text }
	let lastClosedShared = null;

	const close = () => {
		if (!open) return;
		// Nombre: primera cadena citada DESPUÉS de "= {" (la clave pack["ID"] no
		// cuenta); en bloques compartidos la apertura puede ir sola y el nombre
		// venir en líneas siguientes. Se recuerda SI la apertura la traía.
		let name = null;
		let nameLine = -1;
		for (let i = open.start; i < doc.lines.length; i++) {
			const l = doc.lines[i];
			const cut = i === open.start ? l.slice(l.indexOf("= {") + 3) : l;
			const mN = /"((?:[^"\\]|\\.)*)"/.exec(cut);
			if (mN) {
				name = mN[1];
				nameLine = i;
				break;
			}
			if (/^\s*\};/.test(l)) break;
		}
		// fin real del bloque: primera línea exactamente `};`
		let end = doc.lines.length - 1;
		for (let i = open.start + 1; i < doc.lines.length; i++) {
			if (/^\s*\};\s*$/.test(doc.lines[i])) {
				end = i;
				break;
			}
		}
		// Estilo del bloque (lo captura el round-trip):
		//   indent: sangría de las líneas de contenido ("    " o "\t")
		//   trailingComma: la ÚLTIMA línea de contenido lleva coma (estilo 2011)
		//   nameOnOpening: el nombre va en LA línea de apertura (o en la siguiente)
		const firstContent = end > open.start + 1 ? open.start + 1 : open.start;
		const mIndent = /^(\s*)\S/.exec(doc.lines[firstContent] ?? "");
		const lastLine = (doc.lines[end - 1] ?? "").trimEnd();
		const block = {
			kind: open.kind,
			start: open.start,
			end,
			ids: open.kind === "inline" ? [open.id] : [],
			name: name ?? "",
			nameOnOpening: nameLine === open.start,
			indent: mIndent ? mIndent[1] : "    ",
			trailingComma: /,\s*$/.test(lastLine),
		};
		doc.blocks.push(block);
		if (block.kind === "inline") {
			doc.byId.set(open.id, block);
			doc.zones.set(open.id, currentZone);
			doc.zoneLabels.set(open.id, currentZoneLabel);
		} else {
			lastClosedShared = block;
		}
		open = null;
	};

	for (let i = 0; i < doc.lines.length; i++) {
		const line = doc.lines[i];
		const mZone = /^--\s*([^:\d][^-]*?)\s*:\s*Zona\s+(\d+)/.exec(line);
		if (mZone) {
			currentZoneLabel = mZone[1].trim(); // p. ej. "Castillo de Colmillo Oscuro", "Zul'Aman"
			currentZone = mZone[2];
		}

		// export final: P.es = es;  /  P.fr = fr;
		const mExp = /^P\.(\w+)\s*=\s*(\w+)\s*;\s*$/.exec(line);
		if (mExp) doc.exportLineIndex = i;

		// asignación compartida: pack["ID"] = bos;  (una o varias en la línea)
		for (const mA of line.matchAll(/pack\["(\d+)"\]\s*=\s*(?:bos|local\s+bos)\s*;/g)) {
			if (lastClosedShared) {
				lastClosedShared.ids.push(mA[1]);
				doc.byId.set(mA[1], lastClosedShared);
				doc.zones.set(mA[1], currentZone);
				doc.zoneLabels.set(mA[1], currentZoneLabel);
			}
			continue;
		}

		if (open) {
			if (/^\s*\};\s*$/.test(line)) close();
			continue;
		}

		const mS = /^\s*bos\s*=\s*\{/.exec(line);
		if (mS) {
			open = { kind: "shared", start: i };
			continue;
		}
		const mI = /^\s*pack\["(\d+)"\]\s*=\s*\{/.exec(line);
		if (mI) {
			open = { kind: "inline", start: i, id: mI[1] };
			continue;
		}
	}
	return doc;
}

// Resumen de entradas para la lista de la UI (sin líneas)
export function docEntries(doc) {
	const out = [];
	for (const block of doc.blocks) {
		for (const id of block.ids) {
			out.push({
				id,
				name: block.name,
				zone: doc.zones.get(id) ?? null,
				lines: block.end - block.start - 1, // consejos (sin apertura ni cierre)
				shared: block.kind === "shared" ? block.ids : null,
			});
		}
	}
	// orden numérico por NPC id
	out.sort((a, b) => Number(a.id) - Number(b.id));
	return out;
}

// Detalle de una entrada: líneas crudas del bloque (payloads sin comillas).
// Si el nombre NO va en la apertura, su línea es el elemento 1 y no es un consejo.
export function entryDetail(doc, id) {
	const block = doc.byId.get(id);
	if (!block) return null;
	const payloads = [];
	for (let i = block.start + 1; i < block.end; i++) {
		if (i === block.start + 1 && !block.nameOnOpening) continue; // línea del nombre
		const raw = doc.lines[i].trim().replace(/,\s*$/, ""); // coma final de línea
		if (raw === "") continue;
		if (/^\};$/.test(raw)) continue;
		payloads.push(unluaStr(raw));
	}
	return {
		id,
		name: block.name,
		zone: doc.zones.get(id) ?? null,
		zoneLabel: doc.zoneLabels.get(id) ?? null,
		shared: block.kind === "shared" ? block.ids : null,
		kind: block.kind,
		lines: payloads,
	};
}

// El elemento 1 va escapado en el fichero; aquí lo devolvemos sin escapar
function unluaStr(s) {
	const m = /^"((?:[^"\\]|\\.)*)"$/.exec(s);
	return m ? m[1].replace(/\\"/g, '"').replace(/\\\\/g, "\\") : s;
}
function luaStr(s) {
	return `"${String(s).replace(/\\/g, "\\\\").replace(/"/g, '\\"')}"`;
}

// -------------------------------------------------------------- escritor --

// Reconstruye las líneas de un bloque respetando EL ESTILO DEL BLOQUE capturado
// por el parser (round-trip byte a byte): sangría, coma de la última línea,
// y si el nombre va en la línea de apertura o en la siguiente.
// sty = { lead, name, payloads, nameOnOpening, trailingComma, indent }
function renderBlock(sty) {
	const { lead, name, payloads, nameOnOpening, trailingComma, indent } = sty;
	const out = [];
	// ¿el nombre lleva coma? Siempre que haya más contenido detrás; si es el
	// último elemento (solo-nombre), decide trailingComma.
	if (nameOnOpening) {
		const comaNombre = payloads.length > 0 || trailingComma;
		out.push({ text: `${lead} = { ${luaStr(name)}${comaNombre ? "," : ""}` });
	} else {
		out.push({ text: `${lead} = {` });
		// el nombre es el elemento 1 y va como primera línea de contenido
		if (payloads.length > 0) {
			out.push({ text: `${indent}${luaStr(name)},` });
		} else {
			out.push({ text: `${indent}${luaStr(name)}${trailingComma ? "," : ""}` });
		}
	}
	payloads.forEach((l, idx) => {
		const isLast = idx === payloads.length - 1;
		out.push({ text: `${indent}${luaStr(l)}${isLast && !trailingComma ? "" : ","}` });
	});
	out.push({ text: "};" });
	return out;
}

// Estilo por defecto para entradas NUEVAS: el del último bloque del fichero
// (coherente con su entorno); fallback moderno si el fichero está vacío.
export function docDefaultStyle(doc) {
	const last = doc.blocks[doc.blocks.length - 1];
	if (!last) return { nameOnOpening: true, trailingComma: false, indent: "    " };
	return { nameOnOpening: last.nameOnOpening, trailingComma: last.trailingComma, indent: last.indent };
}

// Edita/crea una entrada devolviendo el texto COMPLETO nuevo del fichero.
// opts: { create?: bool, title?: "pack"|"bos", zoneId?: string|null, author?: string }
// - inline: se reescribe el bloque in situ con su apertura original.
// - shared: se reescribe el bloque `bos` (afecta a TODAS las ids alias).
// - create: se inserta antes de la línea de export con comentario de fecha.
export function entryText(doc, id, { name, lines: payloadsIn }, opts = {}) {
	const create = opts.create ?? false;
	const block = doc.byId.get(id);
	if (!block && !create) throw new Error(`Entrada ${id} no existe (y no es creación)`);
	if (block && create && !opts.force) throw new Error(`Entrada ${id} ya existe`);

	const lead = block && block.kind === "shared" ? "bos" : `pack["${id}"]`;
	const sty = block
		? { nameOnOpening: block.nameOnOpening, trailingComma: block.trailingComma, indent: block.indent }
		: docDefaultStyle(doc);
	const nuevos = renderBlock({
		lead,
		name: name ?? block?.name ?? "?",
		payloads: payloadsIn ?? [],
		nameOnOpening: sty.nameOnOpening,
		trailingComma: sty.trailingComma,
		indent: sty.indent,
	});

	const antes = doc.lines.slice();
	let lines;

	if (block) {
		// Edición in situ: sustituye el rango del bloque por la forma canónica
		// (el renderBlock ya lleva la indentación de la casa)
		lines = [...antes];
		lines.splice(block.start, block.end - block.start + 1, ...nuevos.map((n) => n.text));
	} else {
		// Creación: antes de la export final, con cabecera de zona o nota del editor
		const insertAt = doc.exportLineIndex >= 0 ? doc.exportLineIndex : doc.lines.length;
		const fecha = opts.author ?? new Date().toISOString().slice(0, 10);
		const zona = doc.zones.get(id) ?? opts.zoneId ?? null;
		const inserto = [];
		inserto.push("");
		if (zona) {
			inserto.push(`-- [editor web ${fecha}] Entrada añadida (zona heredada del bloque anterior) --`);
		} else {
			inserto.push(`-- [editor web ${fecha}] Entrada añadida sin zona conocida --`);
		}
		for (const n of nuevos) inserto.push(n.text);
		lines = [...antes.slice(0, insertAt), ...inserto, ...antes.slice(insertAt)];
	}

	const eol = doc.eol;
	let text;
	if (!lines[lines.length - 1]?.trim() && doc.text.endsWith(eol)) {
		text = lines.slice(0, -1).join(eol) + eol;
	} else {
		text = lines.join(eol);
	}
	return text;
}

// Validación sobre el texto resultante de un guardado.
// - re-parse completo (estado de bloques coherente)
// - TODOS los enlaces de spell cierran |h|r (regla de la casa contra el residuo *r)
// - recuento de entradas conocido (delta esperado pasado por el llamador)
export function validateText(text, { deltaEntries = 0, oldCount = null } = {}) {
	const doc = parseDoc(text);
	const count = docEntries(doc).length;
	const problems = [];
	if (oldCount !== null && count !== oldCount + deltaEntries) {
		problems.push(`recuento de entradas: ${oldCount} → ${count} (esperado ${oldCount + deltaEntries})`);
	}
	for (let i = 0; i < doc.lines.length; i++) {
		const line = doc.lines[i];
		const abiertas = (line.match(/\|Hspell:/g) ?? []).length;
		if (abiertas === 0) continue;
		const cerradas = (line.match(/\|Hspell:-?\d+\|h\[[^\]]*\]\|h\|r/g) ?? []).length; // -? para los spell ids negativos del diario (verificados en End Time)
		if (abiertas !== cerradas) {
			problems.push(`línea ${i + 1}: ${abiertas - cerradas} enlace(s) de spell sin cierre |h|r`);
		}
	}
	if (problems.length) {
		const err = new Error(problems.join("; "));
		err.problems = problems;
		err.doc = doc;
		throw err;
	}
	return doc;
}

// ---------------------------------------------------- inventario de packs --

// Lista los packs del raíz: { name, folder, langs: {es: file|null,...}, tocFile, registrador }
export function listPacks(root) {
	const out = [];
	for (const d of readdirSync(root, { withFileTypes: true })) {
		if (!d.isDirectory() || !d.name.startsWith("Bosses_")) continue;
		const folder = join(root, d.name);
		const files = readdirSync(folder);
		const langs = {};
		for (const lang of IDIOMAS) langs[lang] = null;
		let tocFile = null;
		let registrador = null;
		for (const f of files) {
			const m = new RegExp(`^${d.name}_(es|en|fr|de)\\.lua$`).exec(f);
			if (m) langs[m[1]] = f;
			if (f.endsWith(".toc")) tocFile = f;
			if (f === `${d.name}.lua`) registrador = f;
		}
		if (!tocFile) continue; // carpetas sin addon propio no son packs del editor
		out.push({ name: d.name, folder, langs, tocFile, registrador });
	}
	out.sort((a, b) => a.name.localeCompare(b.name));
	return out;
}

// Carga un fichero de idioma concreto de un pack
export function loadLangFile(packFolder, file) {
	const text = readFileSync(join(packFolder, file), "utf8");
	return parseDoc(text);
}

// ------------------------------------------------- idiomas nuevos (FR/DE) --

// Esqueleto de fichero de idioma nuevo, al estilo de los existentes.
// nombreVar: es|en|fr|de -> tabla `local <var> = {};` y `P.<var> = <var>;`
export function langFileSkeleton(packName, lang, fecha = new Date().toISOString().slice(0, 10)) {
	const nombre = lang.toUpperCase(); // ES/EN/FR/DE clave del registrador
	return `--[[
	${packName}_${lang}.lua
		Datos en ${nombre} del pack ${packName.replace("Bosses_", "")}.
		Fichero creado por el editor web (${fecha}); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ${lang} = {};
local pack = ${lang};

P.${lang} = ${lang};
`;
}

// Añade la línea del fichero de idioma al .toc (tras el _en existente o antes
// del registrador). Solo se llama cuando el fichero ya existe en la carpeta.
export function tocAddLang(tocText, packName, lang) {
	const file = `${packName}_${lang}.lua`;
	if (tocText.split(/\r?\n/).some((l) => l.trim() === file)) return tocText; // ya está
	const lines = tocText.split(/\r?\n/);
	const eol = tocText.includes("\r\n") ? "\r\n" : "\n";
	const idxEn = lines.findIndex((l) => l.trim() === `${packName}_en.lua`);
	const idxReg = lines.findIndex((l) => l.trim() === `${packName}.lua`);
	const at = idxEn >= 0 ? idxEn + 1 : idxReg >= 0 ? idxReg : lines.length;
	lines.splice(at, 0, file);
	return lines.join(eol);
}

// Añade FR = P.fr / DE = P.de a la llamada de registro del registrador.
// Inofensivo si el fichero aún no existe: P.<x> será nil y el core lo salta.
export function registradorAddLangs(text) {
	const re = /BossesAPI\.register\(\s*("([^"]+)")\s*,\s*\{([^}]*)\}\s*\)\s*;/;
	const m = re.exec(text);
	if (!m) throw new Error("llamada BossesAPI.register no encontrada en el registrador");
	let args = m[3];
	for (const lang of ["fr", "de"]) {
		const clave = lang.toUpperCase();
		if (!new RegExp(`${clave}\\s*=`,).test(args)) {
			// inserta tras EN si existe, o después del último argumento
			args = args.replace(/(\bEN\s*=\s*P\.en\s*,?)\s*$/i, `$1 ${clave} = P.${lang},`);
			if (!new RegExp(`${clave}\\s*=`).test(args)) {
				args = args.trimEnd().replace(/,\s*$/, "") + `, ${clave} = P.${lang}`;
			}
		}
	}
	return text.slice(0, m.index) + `BossesAPI.register(${m[1]}, {${args} });` + text.slice(m.index + m[0].length);
}