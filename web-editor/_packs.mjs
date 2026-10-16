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
// es/en: los dos obligatorios de la casa (listados siempre); fr/de: idiomas
// clásicos; ru/pt/zh/ko: idiomas AÑADIDOS DESDE EL EDITOR (botón «➕ añadir
// idioma», alta 2026): locales nativos del cliente con mucha implantación en
// WoW, todos mapeables en la AUTO del core (Bosses.lua) y con locale de la
// API de Blizzard para los nombres oficiales.
export const IDIOMAS_NUEVOS = [
	{ key: "ru", label: "ruso", nativo: "Русский", api: "ru_RU", cliente: "ruRU", clave: "RU" },
	{ key: "pt", label: "portugués (Brasil)", nativo: "Português", api: "pt_BR", cliente: "ptBR", clave: "PT" },
	{ key: "zh", label: "chino simplificado", nativo: "简体中文", api: "zh_CN", cliente: "zhCN", clave: "ZH" },
	{ key: "ko", label: "coreano", nativo: "한국어", api: "ko_KR", cliente: "koKR", clave: "KO" },
];
export const IDIOMAS = ["es", "en", "fr", "de", ...IDIOMAS_NUEVOS.map((x) => x.key)];
// Los idiomas con conexión AUTOMÁTICA al crear el fichero (es/en); el resto
// son stubs y se CONECTAN con el endpoint /conectar cuando están completos.
export const LISTADO_DIRECTO = new Set(["es", "en"]);

// Clave del registrador y nombre visible de un idioma (los 4 clásicos fijos;
// el resto viene de IDIOMAS_NUEVOS). Devuelve null si el idioma no existe.
export function idiomaMeta(lang) {
	const claves = { es: ["ES", "español"], en: ["EN", "inglés"], fr: ["FR", "francés"], de: ["DE", "alemán"] };
	if (claves[lang]) return { clave: claves[lang][0], label: claves[lang][1] };
	const nuevo = IDIOMAS_NUEVOS.find((x) => x.key === lang);
	return nuevo ? { clave: nuevo.clave, label: nuevo.label } : null;
}

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
				// el name llega con los escapes Lua del fichero (\" por las dobles
				// del propio nombre, p. ej. los apodos); el editor lo trata
				// LITERAL (los demás lugares también: entryText re-escapa con
				// luaStr al escribir) — sin esto, cada guardado añade barras
				name = desescapaInterior(mN[1]);
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

// Resumen de entradas para la lista de la UI (sin líneas). `lines` cuenta SOLO
// consejos: si el nombre va en su propia línea (bloques sin nombre en la
// apertura) se descuenta; `vacia` marca las entradas SIN tácticas (las crea
// "importar de EN") para el botón de traducción IA en lote del editor.
export function docEntries(doc) {
	const out = [];
	for (const block of doc.blocks) {
		for (const id of block.ids) {
			const consejos = block.end - block.start - 1 - (block.nameOnOpening ? 0 : 1);
			out.push({
				id,
				name: block.name,
				zone: doc.zones.get(id) ?? null,
				zoneLabel: doc.zoneLabels.get(id) ?? null, // nombre de instancia del banner (lista agrupada del editor)
				orden: out.length, // posición del bloque EN EL FICHERO: el agrupado respeta la progresión del journal
				lines: consejos, // consejos (sin apertura, cierre ni la línea del nombre)
				vacia: consejos <= 0,
				shared: block.kind === "shared" ? block.ids : null,
			});
		}
	}
	// orden numérico por NPC id (el `orden` de bloque queda en cada entrada
	// para que la UI agrupada presente el recorrido del propio fichero)
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

// Des-escape de un interior de string Lua capturado con regex: la barra
// LITERAL va primero (con placeholder) para que el des-escape genérico de
// \X no se la coma (caso raro en nombres de WoW, pero el des-escape genérico
// debe quedarse bien para el round-trip).
function desescapaInterior(s) {
	return String(s).replace(/\\\\/g, "\u0000").replace(/\\(.)/g, "$1").replace(/\u0000/g, "\\");
}

// Entrada GEMELA ya traducida en el DESTINO: OTRA entrada del docFuente con el
// MISMO contenido de consejo (byte a byte, sin el nombre) cuyo bloque en
// docDst ya lleva contenido (a mano, en tanda previa o guardado segundos
// antes). Devuelve SU detalle del destino para reusar LÍNEAS; el NOMBRE no
// va con ella (es por-CID y difiere entre gemelas: cada llamada lo resuelve
// aparte, por corpus/API/IA). Las gemelas de la casa: bestias de kit
// idéntico, warders gemelos, planos con la misma línea.
export function gemelaTraducida(docSrc, docDst, id) {
	if (!docSrc || !docDst) return null;
	const det = entryDetail(docSrc, id);
	if (!det || !det.lines.length) return null;
	const clave = det.lines.join("\u0001");
	for (const e of docEntries(docDst)) {
		if (String(e.id) === String(id)) continue;
		const dst = entryDetail(docDst, e.id);
		if (!dst || !dst.lines.length) continue;
		const src = entryDetail(docSrc, e.id);
		if (src && src.lines.join("\u0001") === clave) return dst;
	}
	return null;
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
		// Creación: en el punto pedido (opts.insertAt: tras la cabecera de su
		// zona) o antes de la export final, con nota del editor y — en las
		// importaciones — la cabecera de zona copiada de EN si el fichero
		// destino aún no la tenía (la etiqueta EN la resuelven el parser y el
		// pareo por nombre igual que una etiqueta ES).
		const insertAt = opts.insertAt ?? (doc.exportLineIndex >= 0 ? doc.exportLineIndex : doc.lines.length);
		const fecha = opts.author ?? new Date().toISOString().slice(0, 10);
		const zona = doc.zones.get(id) ?? opts.zoneId ?? null;
		const nota = opts.nota ?? (zona ? "Entrada añadida (zona heredada del bloque anterior)" : "Entrada añadida sin zona conocida");
		const inserto = [];
		if (opts.cabeceraZona) {
			inserto.push("");
			inserto.push(opts.cabeceraZona);
		}
		inserto.push("");
		inserto.push(`-- [editor web ${fecha}] ${nota} --`);
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
	// Guardia anti-basura IA (2026-10-14): el modelo a veces estampa guías de
	// estrategia markdown (Fases con **, viñetas anidadas, roles [Tank]/[Healers])
	// en el nombre —partiendo el Lua del pack— o en las líneas. Nada de eso es
	// contenido legítimo de los packs: el guardado se RECHAZA con aviso. OJO:
	// [Heal] es además el nombre legítimo del hechizo de sacerdote — roles sin
	// envoltorio y para bare se excluye "heal".
	for (const e of docEntries(doc)) {
		const n = String(entryDetail(doc, e.id)?.name ?? "");
		if (n.length > 90 || /[*•▪‣]|\[(?:tank|healers?|dps|cc)\]/i.test(n)) {
			problems.push(`entrada ${e.id}: nombre con adorno de guía IA`);
		}
	}
	for (const b of doc.blocks) {
		const vistas = new Map();
		for (let j = b.start + 1; j < b.end; j++) {
			const l = doc.lines[j];
			if (/\*\*/.test(l) || /^\s*\*[ \t]{2,}\S/.test(l) || /\[(?:tank|healers?|dps|cc)\]/i.test(l)) {
				problems.push(`línea ${j + 1}: guía IA en el contenido (markdown o roles)`);
			}
			// repeticiones del modelo (una línea n veces, 2026-10-14): tanda
			// consecutiva ≥2 o línea repetida ≥3 veces dentro del bloque
			const s = l.trim();
			if (s) {
				const c = (vistas.get(s) ?? 0) + 1;
				vistas.set(s, c);
				const laPrevia = doc.lines[j - 1]?.trim();
				if (laPrevia === s || c >= 3) {
					problems.push(`línea ${j + 1}: línea repetida en el bloque`);
				}
			}
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

// Lista los packs del raíz: { name, folder, langs: {es: file|null,...},
// listados: {es: true,...} (lo que dice el .toc), tocFile, registrador }
export function listPacks(root) {
	const out = [];
	const altern = IDIOMAS.join("|");
	for (const d of readdirSync(root, { withFileTypes: true })) {
		if (!d.isDirectory() || !d.name.startsWith("Bosses_")) continue;
		const folder = join(root, d.name);
		const files = readdirSync(folder);
		const langs = {};
		const listados = {};
		for (const lang of IDIOMAS) {
			langs[lang] = null;
			listados[lang] = false;
		}
		let tocFile = null;
		let registrador = null;
		let tocText = null;
		for (const f of files) {
			const m = new RegExp(`^${d.name}_(${altern})\\.lua$`).exec(f);
			if (m) langs[m[1]] = f;
			if (f.endsWith(".toc")) {
				tocFile = f;
				try {
					tocText = readFileSync(join(folder, f), "utf8");
				} catch {
					tocText = null;
				}
			}
			if (f === `${d.name}.lua`) registrador = f;
		}
		// Idiomas realmente LISTADOS en el .toc (la regla de la casa: un idioma
		// solo se lista cuando su traducción está completa — el core cae a EN
		// con los no listados).
		if (tocText) {
			for (const l of tocText.split(/\r?\n/)) {
				const m = new RegExp(`^${d.name}_(${altern})\\.lua\\s*$`).exec(l.trim());
				if (m) listados[m[1]] = true;
			}
		}
		if (!tocFile) continue; // carpetas sin addon propio no son packs del editor
		out.push({ name: d.name, folder, langs, listados, tocFile, registrador });
	}
	out.sort((a, b) => a.name.localeCompare(b.name));
	return out;
}

// Carga un fichero de idioma concreto de un pack
export function loadLangFile(packFolder, file) {
	const text = readFileSync(join(packFolder, file), "utf8");
	return parseDoc(text);
}

// ------------------------------------------------- idiomas nuevos ----------

// Esqueleto de fichero de idioma nuevo, al estilo de los existentes.
// nombreVar: cualquier idioma de IDIOMAS -> tabla `local <var> = {};` y
// `P.<var> = <var>;` (la clave del registrador sale de idiomaMeta/lang).
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

// Añade FR = P.fr / DE = P.de / RU = P.ru… a la llamada de registro del
// registrador (por defecto los dos clásicos del editor web; el endpoint de
// conexión pasa el idioma concreto que completa el pack).
// Inofensivo si el fichero aún no existe: P.<x> será nil y el core lo salta.
export function registradorAddLangs(text, langs = ["fr", "de"]) {
	const re = /BossesAPI\.register\(\s*("([^"]+)")\s*,\s*\{([^}]*)\}\s*\)\s*;/;
	const m = re.exec(text);
	if (!m) throw new Error("llamada BossesAPI.register no encontrada en el registrador");
	let args = m[3];
	for (const lang of langs) {
		const clave = String(lang).toUpperCase();
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