// web-editor/public/app.js
// Lógica del editor (vanilla JS, sin build). Estado local + fetch a /api.

const $ = (id) => document.getElementById(id);
const state = {
	meta: null,
	packs: [],
	pack: null,
	lang: "es",
	srcLang: null,     // idioma FUENTE elegido en el panel (traer y traducir con IA)
	faltanEN: 0,       // nº de entradas de EN ausentes en el idioma activo (botón importar)
	loteVacias: 0,     // nº de entradas SIN tácticas en el idioma activo (botón IA)
	loteRun: false,    // hay una traducción IA en lote corriendo
	loteCancel: false, // petición de detener la tanda (surte efecto entre jefes)
	entries: [],
	filtro: "",
	entryId: null,     // id seleccionado (o null = sin selección)
	entryData: null,   // { id, name, lines, shared, zone }
	dirty: false,
	focusedLine: null, // índice de la línea activa para el picker de spells
	nombresSpell: {},  // spell id → {es,en,fr,de,icon} resuelto (traducción al vuelo)
	nombresRef: [],    // textos de la referencia ES activa (para resolver sus spells)
	media: null,       // última respuesta del diario (banner/secciones) de la entrada activa
};

// locale del diario por pestaña: la columna DIARIO sigue el idioma que editas
const LOCALES_DIARIO = { es: "es_ES", en: "en_US", fr: "fr_FR", de: "de_DE" };

// ------------------------------------------------------------- utilidades --

function toast(msg, ok = true) {
	const el = document.createElement("div");
	el.className = `px-3 py-2 rounded text-sm frame ${ok ? "bg-emerald-900/80 text-emerald-200" : "bg-red-900/80 text-red-200"}`;
	el.textContent = msg;
	$("toast").appendChild(el);
	setTimeout(() => el.remove(), 3200);
}

async function api(path, opts) {
	const o = { headers: { "Content-Type": "application/json" }, ...opts };
	// sin cuerpo en POST/PUT, Fastify rechaza con FST_ERR_CTP_EMPTY_JSON_BODY
	if ((o.method === "POST" || o.method === "PUT") && !o.body) o.body = "{}";
	// techo de espera (4 min): sin esto, un fetch que nunca responde (IA
	// colgada en el servidor) congela la tanda sin ningún mensaje en pantalla
	o.signal ??= AbortSignal.timeout(240000);
	const res = await fetch(path, o);
	const body = await res.json().catch(() => ({ ok: false, error: "respuesta no JSON" }));
	if (!res.ok && body.ok === undefined) body.ok = false;
	return body;
}

// nombre visible de un spell: el resuelto del idioma activo (como el addon
// con localizarEnlaces) o, si no está resuelto, el texto guardado del pack
function nombreVisibleSpell(id, stored, lang) {
	const n = state.nombresSpell[String(id)]?.[lang];
	if (!n || String(n).toLowerCase() === String(stored).toLowerCase()) return stored;
	return n;
}
// Render del marcado WoW a HTML seguro (escape primero, transformación después)
function esc(s) {
	return String(s).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}
function renderWow(txt, lang = state.lang) {
	let html = esc(txt);
	// enlaces de spell CON color: |cffXXXXXX|Hspell:ID|h[Nombre]|h|r
	html = html.replace(/\|cff([0-9a-fA-F]{6})\|Hspell:(-?\d+)\|h\[([^\]|]+)\]\|h\|r/g, (_m, c, id, nombre) => {
		const visible = nombreVisibleSpell(id, nombre, lang);
		const hint = visible === nombre ? `spell ${id}` : `spell ${id} · guardado: ${nombre}`;
		return `<span class="spellchip" style="color: #${c}" title="${hint}">${esc(visible)}</span>`;
	});
	// enlaces de spell SIN color (estilo antiguo de los packs)
	html = html.replace(/(?<![\w|])\|Hspell:(-?\d+)\|h\[([^\]|]+)\]\|h\|r/g, (_m, id, nombre) => {
		const visible = nombreVisibleSpell(id, nombre, lang);
		const hint = visible === nombre ? `spell ${id}` : `spell ${id} · guardado: ${nombre}`;
		return `<span class="spellchip" title="${hint}">${esc(visible)}</span>`;
	});
	// colores planos |cff... ... |r
	html = html.replace(/\|cff([0-9a-fA-F]{6})([^|]+)\|r/g, (_m, c, texto) => `<span style="color: #${c}">${texto}</span>`);
	// enlaces de item (por si acaso, sin estilo especial)
	html = html.replace(/\|Hitem:(-?\d+)\|h\[([^\]|]+)\]\|h\|r/g, (_m, id, nombre) =>
		`<span class="spellchip" title="item ${id}">${nombre}</span>`);
	return html.replace(/\n/g, "<br>");
}

function nombreCorto(n) {
	return String(n ?? "");
}

// ---------------------------------------------------------------- meta ----

async function loadMeta() {
	state.meta = await api("/api/meta");
	const badges = [];
	if (state.meta.sandbox) badges.push(`<span class="px-2 py-0.5 rounded bg-amber-800/60 text-amber-200">SANDBOX</span>`);
	badges.push(`<span>${state.meta.sandbox ? "packs: copia en _cache/sandbox" : "packs: carpeta real"}</span>`);
	badges.push(`<span>spells en índice: ${state.meta.spells}</span>`);
	badges.push(state.meta.blizz
		? `<span class="text-emerald-400">Blizzard API ✓</span>`
		: `<span class="text-amber-500">sin .env → sin retratos</span>`);
	badges.push(state.meta.ia
		? `<span class="text-emerald-400" title="proveedor de traducción: ${state.meta.iaProvider ?? "nvidia"}${state.meta.iaModel ? " · modelo: " + state.meta.iaModel : ""}">IA ✓ (${state.meta.iaProvider ?? "nvidia"})</span>`
		: `<span class="text-amber-500">IA off → sin traducción (revisa .env)</span>`);
	$("meta").innerHTML = badges.join("");
}

// ------------------------------------------------------------ packs/lang --

async function loadPacks() {
	const r = await api("/api/packs");
	state.packs = r.packs ?? [];
	const sel = $("packSel");
	sel.innerHTML = state.packs.map((p) => `<option value="${p.name}">${p.name.replace(/^Bosses_/, "")} (${p.langs.es?.entries ?? 0} es)</option>`).join("");
	// CONSERVA el pack activo al recargar (el guardado y el alta de idioma
	// llaman loadPacks; resetear al primero desincronizaba el estado y no
	// se podía cargar otro jefe hasta cambiar de expansión y volver)
	if (state.pack && state.packs.some((p) => p.name === state.pack)) sel.value = state.pack;
	else state.pack = sel.value;
	sel.onchange = () => {
		state.pack = sel.value;
		state.entryId = null;
		selectEntryOff();
		loadEntries();
	};
}

function renderLangTabs() {
	const pack = state.packs.find((p) => p.name === state.pack);
	const langs = Object.entries(pack?.langs ?? {}); // [lang, {file,...}|null]
	$("langTabs").innerHTML = langs.map(([lang, info]) => {
		const activo = lang === state.lang ? "bg-wow-gold text-black font-semibold" : "bg-wow-panel2 text-slate-300 border border-wow-edge";
		const chip = info ? `${info.entries}` : `<span title="crear fichero de idioma">＋ crear</span>`;
		return `<button data-lang="${lang}" class="label px-3 py-1 rounded text-xs ${activo}">${lang.toUpperCase()} <span class="${
			lang === state.lang ? "text-black/60" : "text-slate-500"
		}">${chip}</span></button>`;
	}).join("");
	$("langTabs").querySelectorAll("button").forEach((b) => {
		b.onclick = async () => {
			const lang = b.dataset.lang;
			const pack = state.packs.find((p) => p.name === state.pack);
			if (!pack.langs[lang]) {
				// alta del idioma: es/en → fichero + .toc + registrador;
				// fr/de → solo fichero (stub sin listar: regla de idioma
				// incompleto — la cascada del core no debe ver tablas vacías)
				const stub = lang === "fr" || lang === "de";
				const texto = stub
					? `Crear ${pack.name}_${lang}.lua como stub del editor (SIN .toc ni registrador hasta que el idioma esté completo)?`
					: `Crear ${pack.name}_${lang}.lua y registrar ${lang.toUpperCase()} en .toc/registrador?`;
				if (!confirm(texto)) return;
				const r = await api(`/api/packs/${pack.name}/langs/${lang}`, { method: "POST" });
				if (!r.ok) return toast(`Falta crear idioma: ${r.error}`, false);
				await loadPacks();
				toast(r.stub
					? `Idioma ${lang.toUpperCase()} creado como stub (sin listar hasta completarlo; luego añade la línea al .toc y DE = P.de al registrador)`
					: `Idioma ${lang.toUpperCase()} creado en ${pack.name} (fichero + .toc + registrador)`);
			}
			state.lang = lang;
			state.entryId = null;
			selectEntryOff();
			renderLangTabs();
			loadEntries();
		};
	});
}

// ------------------------------------------------------------- entradas ---

async function loadEntries() {
	const r = await api(`/api/packs/${state.pack}/${state.lang}`);
	state.entries = r.entries ?? [];
	renderLista();
	actualizarImportar(); // visibilidad y contador del botón EN → idioma activo
	actualizarLote(); // visibilidad y contador del botón IA (entradas sin tácticas)
}

// ------------------------------------------------- importar nombres de EN --
// EN es el idioma de referencia: si describe más jefes que el idioma activo,
// el botón (junto a "cobertura") crea las que faltan con el nombre oficial
// (API de Blizzard: corpus de era → diario) y tácticas vacías.
async function actualizarImportar() {
	const btn = $("btnImportar");
	btn.classList.add("hidden");
	state.faltanEN = 0;
	if (state.lang === "en" || !state.pack) return;
	const pack = state.packs.find((p) => p.name === state.pack);
	if (!pack?.langs[state.lang]) return; // idioma sin fichero: primero se crea
	const r = await api(`/api/packs/${state.pack}/en`);
	if (!r.ok) return; // pack sin módulo EN: nada que importar
	const idsActuales = new Set(state.entries.map((e) => e.id));
	const faltan = (r.entries ?? []).filter((e) => !idsActuales.has(e.id));
	if (!faltan.length) return;
	state.faltanEN = faltan.length;
	btn.textContent = `⬇ importar de EN (${faltan.length})`;
	btn.title = `Crea en ${state.lang.toUpperCase()} ${faltan.length} entrada(s) que están en EN y faltan aquí: nombre oficial de la API de Blizzard y tácticas vacías`;
	btn.classList.remove("hidden");
}

// ------------------------------------------------ traducción IA en lote ----
// Entradas a traducir en una tanda: las SIN tácticas del idioma activo, y las
// COMPARTIDAS (un `bos` con varias CIDs) solo UNA vez — la de id menor: el
// guardado escribe el bloque entero, así que las demás CIDs del mismo bos
// quedan cubiertas y no merecen llamadas IA repetidas.
function pendientesTraduccion(entries) {
	return entries
		.filter((e) => e.vacia ?? (e.lines ?? 0) <= 0)
		.filter((e) => !e.shared || Number(e.id) === Math.min(...e.shared.map(Number)));
}

// Entradas del idioma activo SIN tácticas (las que crea "importar de EN" y
// las que editan a mano dejando vacías): el botón, a la derecha de "cobertura",
// las rellena una a una con POST /api/traducir (mismas reglas: nombre oficial
// primero, IA después) usando como FUENTE el idioma del select del panel, y
// guarda cada resultado con el PUT normal (backup automático del servidor).
function actualizarLote() {
	const btn = $("btnTraducirLotes");
	btn.classList.add("hidden");
	$("btnLimpiar").classList.add("hidden");
	$("btnLimpiar").disabled = false;
	$("btnLimpiar").textContent = "🧹 quitar tácticas";
	state.loteVacias = 0;
	if (!state.pack || !state.meta?.ok || state.meta.ia === false) return;
	const pack = state.packs.find((p) => p.name === state.pack);
	const fuentes = Object.entries(pack?.langs ?? {}).filter(([l, i]) => i && l !== state.lang).map(([l]) => l);
	if (!fuentes.length) return;
	const vacias = pendientesTraduccion(state.entries);
	if (vacias.length) {
		state.loteVacias = vacias.length;
		btn.textContent = `✨ traducir con IA (${vacias.length})`;
		btn.title = `Rellena con IA ${vacias.length} entrada(s) de ${state.lang.toUpperCase()} que están sin tácticas: trae la del idioma FUENTE del panel (${(state.srcLang ?? fuentes[0]).toUpperCase()}) y guarda cada traducción`;
		btn.classList.remove("hidden");
	}
	// botón de limpieza: ES (a voluntad del dueño) y fr/de; EN queda fuera
	if ((state.lang === "es" || state.lang === "fr" || state.lang === "de") && state.entries.length) {
		const vistas = new Set();
		let conTacticas = 0;
		for (const e of state.entries) {
			if (e.vacia || vistas.has(e.shared ? String(Math.min(...e.shared.map(Number))) : e.id)) continue;
			vistas.add(e.shared ? String(Math.min(...e.shared.map(Number))) : e.id);
			conTacticas++;
		}
		if (conTacticas > 0) {
			const btnL = $("btnLimpiar");
			btnL.textContent = `🧹 quitar tácticas (${conTacticas})`;
			btnL.title = `Vacía TODAS las tácticas de ${state.lang.toUpperCase()}: ${conTacticas} entrada(s) quedan solo con el nombre (nombre de la entrada intacto) y el lote de IA puede re-traducir el idioma entero. Con backup previo del fichero.`;
			btnL.classList.remove("hidden");
		}
	}
}

$("btnLimpiar").onclick = async () => {
	const btn = $("btnLimpiar");
	const m = /quitar tácticas \((\d+)\)/.exec(btn.textContent);
	const n = m ? Number(m[1]) : 0;
	if (!confirm(`Vaciar las tácticas de ${state.lang.toUpperCase()} (${n} entrada(s))?\n\nSe borra TODA la prosa de ${state.pack}_${state.lang}.lua; los NOMBRES se quedan. Con backup previo del fichero entero en _cache/backups. Después, «✨ traducir con IA» re-trae el idioma entero desde el FUENTE del panel.\n\n¿Continuar?`)) return;
	btn.disabled = true;
	try {
		const r = await api(`/api/packs/${state.pack}/${state.lang}/limpiar`, { method: "POST" });
		if (!r.ok) return toast(`Limpieza: ${r.error}`, false);
		toast(`${state.lang.toUpperCase()} vaciado: ${r.vinetas} línea(s) de táctica fuera, ${r.entradas} entradas con solo el nombre. Backup listo para restaurar.`);
		selectEntryOff();
		await loadEntries(); // recalcula ✨ (ahora cubre el idioma entero) y 🧹
	} finally {
		btn.disabled = false;
	}
};

$("btnImportar").onclick = async () => {
	if (!state.faltanEN) return;
	if (!confirm(`Importar ${state.faltanEN} entrada(s) de EN a ${state.lang.toUpperCase()}?\n\nNombre oficial de la API de Blizzard (corpus de era o diario); las tácticas quedan vacías para rellenar después.`)) return;
	const btn = $("btnImportar");
	btn.disabled = true;
	try {
		const r = await api(`/api/packs/${state.pack}/${state.lang}/importar`, { method: "POST" });
		if (!r.ok) return toast(`Importación: ${r.error}`, false);
		const porFuente = {};
		for (const i of r.importados ?? []) porFuente[i.fuente] = (porFuente[i.fuente] ?? 0) + 1;
		const detalle = Object.entries(porFuente).map(([f, c]) => `${c} ${f === "en" ? "sin nombre (EN)" : f}`).join(", ");
		toast(`Importadas ${r.total} entradas (${detalle}); tácticas pendientes`);
		await loadPacks();
		renderLangTabs();
		await loadEntries(); // recalcula el botón: ya no debe faltar nada
	} finally {
		btn.disabled = false;
	}
};

function renderLista() {
	const q = norm(state.filtro);
	const lista = state.entries.filter((e) => !q || e.id.includes(q) || norm(e.name).includes(q));
	$("cuentaLista").textContent = `${lista.length}/${state.entries.length}`;
	$("lista").innerHTML = lista.map((e) => {
		const sel = e.id === state.entryId;
		return `<button data-id="${e.id}" class="w-full text-left px-2 py-1.5 rounded text-sm flex gap-2 items-center ${
			sel ? "bg-wow-gold/20 border border-wow-gold/40" : "hover:bg-wow-panel2 border border-transparent"
		}">
			<span class="text-xs text-slate-500 tabular-nums">${e.id}</span>
			<span class="truncate ${sel ? "text-wow-gold" : ""}">${esc(e.name)}</span>
			${e.shared ? `<span class="ml-auto text-[10px] text-slate-500" title="entradas compartidas: ${e.shared.join(", ")}">compartida</span>` : ""}
		</button>`;
	}).join("");
	$("lista").querySelectorAll("button").forEach((b) => (b.onclick = () => selectEntry(b.dataset.id)));
}
function norm(s) {
	return String(s ?? "").toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
}

function selectEntryOff() {
	state.entryData = null;
	$("editorVacio").classList.remove("hidden");
	$("editorWrap").classList.add("hidden");
	$("banner").classList.add("hidden");
	$("editorVacio").textContent = "Elige una entrada de la lista (o crea una nueva).";
}

async function selectEntry(id) {
	state.entryId = id;
	const r = await api(`/api/packs/${state.pack}/${state.lang}/${id}`);
	if (!r.ok) return toast(r.error, false);
	state.entryData = r.entry;
	state.dirty = false;
	renderEditor();
	renderLista();
	await cargarMedia(id); // el diario enseña nombres de spells: primero él
	resolverNombresSpell(); // y ahora la traducción al vuelo con todo el mapa
	renderReferencia(); // referencia ES + resolución (idempotente)
}

// --------------------------------------------------------------- editor ---

function renderEditor() {
	const e = state.entryData;
	$("editorVacio").classList.add("hidden");
	$("editorWrap").classList.remove("hidden");

	// cabecera: nombre + zona + aviso compartido
	const compartido = e.shared && e.shared.length > 1
		? `<div class="mt-2 text-xs text-amber-300">⚠ entrada COMPARTIDA: editarla cambia ${e.shared.length} ids (${e.shared.join(", ")})</div>`
		: "";
	$("cabeceraEntrada").innerHTML = `
		<div class="flex items-center gap-2">
			<span class="text-xs text-slate-500">NPC</span>
			<span class="text-sm text-wow-gold tabular-nums">${e.id}</span>
			<span class="text-xs text-slate-500 ml-auto">zona ${e.zone ?? "?"}</span>
		</div>
		<input id="inpNombre" value="${esc(e.name)}" class="mt-2 w-full rounded border border-wow-edge px-2 py-1.5 text-sm font-medium focus:border-wow-gold outline-none">
		${compartido}`;

	// líneas del consejo
	$("lineas").innerHTML = e.lines.map((l, i) => `
		<div class="flex gap-1 items-start" data-i="${i}">
			<textarea rows="1" class="linea flex-1 rounded border border-wow-edge px-2 py-1.5 text-sm leading-5 resize-y focus:border-wow-gold outline-none">${esc(l)}</textarea>
			<div class="flex flex-col gap-0.5">
				<button class="up text-slate-500 hover:text-wow-gold text-xs px-1" title="subir">▲</button>
				<button class="down text-slate-500 hover:text-wow-gold text-xs px-1" title="bajar">▼</button>
			</div>
			<button class="del text-slate-500 hover:text-red-400 text-xs px-1" title="quitar línea">✕</button>
		</div>`).join("");

	wireLines();
	renderPreview();
	renderReferencia();
	$("btnGuardar").disabled = false;
}

function wireLines() {
	$("lineas").querySelectorAll("div[data-i]").forEach((row) => {
		const i = Number(row.dataset.i);
		const ta = row.querySelector("textarea");
		ta.oninput = () => { state.entryData.lines[i] = ta.value; state.dirty = true; renderPreview(); };
		ta.onfocus = () => { state.focusedLine = i; };
		row.querySelector(".up").onclick = () => moveLine(i, -1);
		row.querySelector(".down").onclick = () => moveLine(i, +1);
		row.querySelector(".del").onclick = () => { state.entryData.lines.splice(i, 1); state.dirty = true; renderEditor(); };
	});
	$("inpNombre").oninput = (ev) => { state.entryData.name = ev.target.value; state.dirty = true; renderLista(); };
}

function moveLine(i, d) {
	const l = state.entryData.lines;
	const j = i + d;
	if (j < 0 || j >= l.length) return;
	[l[i], l[j]] = [l[j], l[i]];
	state.dirty = true;
	renderEditor();
}

function addLine(texto = "* ") {
	state.entryData.lines.push(texto);
	state.dirty = true;
	renderEditor();
	const rows = $("lineas").querySelectorAll("textarea");
	rows[rows.length - 1]?.focus();
}

$("btnAnadeLinea").onclick = () => (state.entryData ? addLine() : toast("Selecciona una entrada primero", false));
$("btnPicker").onclick = () => (state.entryData ? openSpellPicker() : toast("Selecciona una entrada primero", false));

// inserta el enlace de spell en la línea enfocada (o al final); sin nombre
// explícito, usa el resuelto para el idioma activo (la "traducción al vuelo"
// del picker: inserta el enlace con el nombre que el CLIENTE mostrará)
function insertSpell(id, nombre) {
	const e = state.entryData;
	if (!e) return;
	nombre = nombre || state.nombresSpell[String(id)]?.[state.lang] || "?";
	const link = `|cff71d5ff|Hspell:${id}|h[${nombre}]|h|r`;
	const idx = state.focusedLine ?? e.lines.length - 1;
	if (idx >= 0 && idx < e.lines.length) e.lines[idx] += link;
	else e.lines.push(link);
	state.dirty = true;
	renderEditor();
	resolverNombresSpell(); // refresco al vuelo de la preview y el diario
}

// vista previa con el marcado tal como sale en el frame de alerta del addon
function renderPreview() {
	const e = state.entryData;
	$("preview").innerHTML = e ? `
		<div class="font-ui text-xs text-wow-gold tracking-widest mb-1">VISTA PREVIA <span class="text-slate-500">(${state.lang.toUpperCase()}, spells al vuelo)</span></div>
		<div class="golddiv mb-2"></div>
		<div class="font-ui text-lg text-wow-gold mb-2">${esc(nombreCorto(e.name))}</div>
		<div class="space-y-2 text-sm leading-5">
			${e.lines.map((l) => `<div class="flex gap-2"><span class="text-wow-gold select-none">•</span><span class="min-w-0">${renderWow(String(l).replace(/^\*\s*/, ""))}</span></div>`).join("")}
		</div>` : "";
}

// resolución en lote de los spells de la entrada (y de su referencia ES):
// ida al servidor con los ids pendientes → mapa de idiomas {es,en,fr,de,icon}
async function resolverNombresSpell() {
	const e = state.entryData;
	if (!e) return;
	const fuentes = [e.name, ...e.lines, ...state.nombresRef];
	const pendientes = [];
	const vistos = new Set();
	for (const txt of fuentes) {
		for (const m of String(txt).matchAll(/\|Hspell:(\d+)\|h/g)) {
			const id = m[1];
			if (!state.nombresSpell[id] && !vistos.has(id)) {
				vistos.add(id);
				pendientes.push({ id, nombre: "" });
			}
		}
	}
	if (!pendientes.length) return;
	const r = await api("/api/spells/nombres", { method: "POST", body: JSON.stringify({ items: pendientes }) });
	if (r.ok && Object.keys(r.names ?? {}).length) {
		Object.assign(state.nombresSpell, r.names);
		renderPreview();
		if (state.entryId) cargarMedia(state.entryId); // el diario ya cacheado
	}
}

// panel FUENTE (columna izquierda): para el boss en pantalla se elige el
// idioma que está MEJOR redactado, se muestra su explicación tal cual (solo
// lectura) y con un click la IA la traduce al idioma que se está editando
// (proveedor de IA del servidor vía /api/traducir: NVIDIA NIM u Ollama,
// IA_PROVIDER del .env). Sirve en ambas direcciones:
// EN -> ES para traer un texto bueno a la tabla española y ES -> EN/FR/DE para
// sembrar los demás idiomas desde la fuente.
async function renderReferencia() {
	const e = state.entryData;
	if (!e) { $("referencia").innerHTML = ""; return; }
	const pack = state.packs.find((p) => p.name === state.pack);
	const fuentes = Object.entries(pack?.langs ?? {})
		.filter(([lang, info]) => info && lang !== state.lang)
		.map(([lang]) => lang);
	if (!state.srcLang || !fuentes.includes(state.srcLang)) state.srcLang = fuentes[0] ?? null;
	if (!state.srcLang) {
		state.nombresRef = [];
		$("referencia").innerHTML = `<div class="font-ui text-xs text-wow-gold tracking-widest mb-1">FUENTE</div>
			<div class="text-xs text-slate-500">Este pack no tiene otro idioma con fichero: nada que traer ni traducir.</div>`;
		return;
	}
	const r = await api(`/api/packs/${state.pack}/${state.srcLang}/${e.id}`);
	const src = r.ok ? r.entry : null;
	state.nombresRef = src ? [src.name, ...(src.lines ?? [])] : [];
	const opciones = fuentes
		.map((l) => `<option value="${l}" ${l === state.srcLang ? "selected" : ""}>${l.toUpperCase()}</option>`)
		.join("");
	$("referencia").innerHTML = `
		<div class="flex items-center gap-2 mb-1">
			<div class="font-ui text-xs text-wow-gold tracking-widest">FUENTE <span class="text-slate-500">(solo lectura)</span></div>
			<div class="flex-1"></div>
			<select id="selFuente" class="rounded border border-wow-edge px-1 py-0.5 text-xs" title="idioma del que se trae la explicación">${opciones}</select>
		</div>
		<button id="btnTraducir" class="w-full mb-2 py-1.5 rounded border border-wow-gold/60 text-wow-gold text-xs font-medium hover:bg-wow-gold/20 disabled:opacity-40" title="trae la explicación del idioma fuente, la traduce con la IA al idioma que estás editando y la deja como borrador: revisa y guarda">⇄ traer y traducir con IA -> ${state.lang.toUpperCase()}</button>
		<div class="golddiv mb-2"></div>
		<div class="text-sm text-slate-300 mb-2">${src ? esc(src.name) : "—"}</div>
		<div class="space-y-2 text-xs leading-5 text-slate-400">
			${(src?.lines ?? []).map((l) => `<div class="flex gap-2"><span class="text-wow-gold select-none">•</span><span>${renderWow(String(l).replace(/^\*\s*/, ""), state.srcLang)}</span></div>`).join("")}
		</div>`;
	$("selFuente").onchange = (ev) => { state.srcLang = ev.target.value; renderReferencia(); };
	$("btnTraducir").onclick = traerYTraducir;
	resolverNombresSpell(); // los spells de la referencia también se traducen
}

// botón del panel FUENTE: pide al servidor la entrada en el idioma fuente
// traducida por la IA al idioma activo y la vuelca en el editor como borrador
// (state.dirty); el traductor la revisa y guarda con el flujo normal
async function traerYTraducir() {
	const e = state.entryData;
	if (!e || !state.srcLang) return;
	if (state.dirty && !confirm(`Hay cambios sin guardar en ${state.lang.toUpperCase()}; se perderán al traer la traducción. ¿Continuar?`)) return;
	const btn = $("btnTraducir");
	const previo = btn.textContent;
	btn.disabled = true;
	btn.textContent = "traduciendo con IA…";
	try {
		const r = await api("/api/traducir", { method: "POST", body: JSON.stringify({ pack: state.pack, id: e.id, from: state.srcLang, to: state.lang }) });
		if (!r.ok) {
			toast(`Traducción IA: ${r.error}`, false);
			return;
		}
		state.entryData.name = r.name;
		state.entryData.lines = r.lines;
		state.dirty = true;
		renderEditor();
		resolverNombresSpell();
		// el nombre puede venir oficial de la API (diario/corpus) o de la IA,
		// y las LÍNEAS pueden venir reusadas de una entrada gemela ya traducida
		// (mismo texto fuente): el traductor debe saber qué revisar
		const aviso = [
			r.nameSource === "api" ? " · nombre oficial de la API"
				: r.nameSource === "ia" ? " · nombre por IA: confírmalo" : "",
			r.reusedFrom ? ` · líneas reusadas de ${r.reusedFrom}` : "",
		].filter(Boolean).join("");
		toast(`Traducido ${r.from.toUpperCase()} -> ${r.to.toUpperCase()}; revisa y guarda${aviso}`);
	} finally {
		btn.disabled = false;
		btn.textContent = previo;
	}
}

// ------------------------------------------------------------- guardar ----

$("btnGuardar").onclick = async () => {
	const e = state.entryData;
	if (!e) return;
	const body = { name: e.name, lines: e.lines };
	const r = await api(`/api/packs/${state.pack}/${state.lang}/${e.id}`, { method: "PUT", body: JSON.stringify(body) });
	if (!r.ok) {
		$("estadoGuardado").textContent = r.problems ? r.problems.join(" · ") : r.error;
		return toast("Error al guardar", false);
	}
	state.entryData = r.entry;
	state.dirty = false; // guardado: se acaba de persistir lo que hay en pantalla
	renderEditor();
	$("estadoGuardado").textContent = `guardado ${r.created ? "(creado)" : ""}`;
	await loadPacks();
	renderLangTabs();
	toast(`Entrada ${e.id} guardada en ${state.lang.toUpperCase()} ✓`);
};

// ------------------------------------------------------------ spell picker

function openSpellPicker() {
	$("spellModal").classList.remove("hidden");
	$("spellQ").value = "";
	$("spellRes").innerHTML = "";
	$("spellQ").focus();
	$("spellQ").oninput = debounceBuscar;
}
function debounceBuscar() {
	clearTimeout(debounceBuscar.t);
	debounceBuscar.t = setTimeout(buscarSpells, 220);
}
async function buscarSpells() {
	const q = $("spellQ").value.trim();
	if (!q) return ($("spellRes").innerHTML = "");
	const r = await api(`/api/spells?q=${encodeURIComponent(q)}`);
	$("spellRes").innerHTML = (r.spells ?? []).map((s) => {
		// icono (si ya está resuelto) y nombres por idioma, el activo primero
		const icono = s.icon ? `<img src="${s.icon}" alt="" class="inline h-5 w-5 rounded align-middle mr-1">` : "";
		const orden = [state.lang, "es", "en", "fr", "de"];
		const names = Object.entries(s.name)
			.sort((a, b) => orden.indexOf(a[0]) - orden.indexOf(b[0]))
			.map(([l, n]) => `${l.toUpperCase()}: ${esc(n)}`).join(" · ");
		// ¿falta la traducción del idioma activo? (no está o sospechosamente
		// repite el EN: tablas ES de Midnight/TWW con la esES pendiente)
		const faltaTrad = !s.name?.[state.lang] || (state.lang !== "en" && s.name[state.lang] === s.name.en);
		const marcaApi = s.api ? ` <span class="text-[10px] text-slate-500" title="parte de estos nombres viene de la API de Blizzard o se enseñó a mano (el pack guarda otro texto)">◆</span>` : "";
		return `<div class="flex items-center gap-1 group">
			<button data-id="${s.id}" class="flex-1 min-w-0 text-left px-2 py-1.5 text-sm hover:bg-wow-panel2 rounded">
				${icono}<span class="tabular-nums text-slate-400 text-xs">${s.id}</span> · ${names}${marcaApi}
			</button>
			${faltaTrad ? `<button data-ensenar="${s.id}" class="shrink-0 text-xs px-1.5 py-1 rounded border border-wow-edge opacity-60 hover:opacity-100 hover:border-wow-gold" title="enseñar la traducción ${state.lang.toUpperCase()} de este spell (no está en la API de Blizzard)">✎</button>` : ""}
		</div>`;
	}).join("") || `<div class="px-2 py-2 text-xs text-slate-500">sin resultados — usa el campo de id manual</div>`;
	$("spellRes").querySelectorAll("button[data-id]").forEach((b) => (b.onclick = () => {
		const s = r.spells.find((x) => x.id === b.dataset.id);
		const nombre = s?.name?.[state.lang] ?? s?.name?.es ?? s?.name?.en ?? "";
		insertSpell(s.id, nombre);
		closeSpellPicker();
	}));
	$("spellRes").querySelectorAll("button[data-ensenar]").forEach((b) => (b.onclick = () => {
		const s = r.spells.find((x) => x.id === b.dataset.ensenar);
		if (s) ensenarTraduccion(s);
	}));
}

// enseñar a mano la traducción de un spell que la API de Blizzard no indexa
// (habilidades de jefes de mazmorra de Midnight): queda en spell-names.json,
// lo usan picker, preview y cobertura; corregir el corchete en el pack sigue
// siendo el arreglo definitivo (la pasada esES enseña al índice al guardar)
async function ensenarTraduccion(s) {
	const guardado = s.name?.[state.lang] ?? s.name?.en ?? "";
	const nombre = prompt(`Traducción ${state.lang.toUpperCase()} del spell ${s.id}\n(guardado ahora: "${guardado}")`, guardado);
	if (nombre === null) return;
	const texto = nombre.trim();
	if (!texto) return toast("nombre vacío — no se ha enseñado nada", false);
	const r = await api("/api/spells/nombre-manual", { method: "POST", body: JSON.stringify({ id: s.id, lang: state.lang, nombre: texto }) });
	if (!r.ok) return toast(`No se pudo enseñar: ${r.error}`, false);
	state.nombresSpell[s.id] = r.nombres;
	renderPreview();
	toast(`Spell ${s.id}: ${state.lang.toUpperCase()} "${texto}" aprendido (picker, preview y cobertura)`);
	buscarSpells(); // la fila pierde el ✎ y muestra la traducción
}
function closeSpellPicker() { $("spellModal").classList.add("hidden"); }
$("spellClose").onclick = closeSpellPicker;
document.addEventListener("keydown", (ev) => { if (ev.key === "Escape") {
	closeSpellPicker();
	$("coberturaModal").classList.add("hidden");
	// lote: mientras corre, Esc pide detención limpia entre jefes; parado, cierra
	if (state.loteRun) { if (!$("loteCancelar").disabled) $("loteCancelar").onclick(); }
	else $("traducirModal").classList.add("hidden");
} });

// inserción manual de id
$("spellManualBtn").onclick = () => {
	const id = $("spellManual").value.trim();
	if (!id) return;
	insertSpell(id, $("spellManualName").value.trim() || "?");
	$("spellManual").value = $("spellManualName").value = "";
	closeSpellPicker();
};

// -------------------------------------------------------------- diario ----

// fondos genéricos del banner cuando el diario no trae splash: paletas WoW
// elegidas por hash del npc id (determinista: cada jefe luce siempre igual)
const PALETAS_BANNER = [
	"linear-gradient(135deg,#3b2409,#8a5a12 55%,#281b06)", // bronce/oro
	"linear-gradient(135deg,#221037,#5b2a86 55%,#170a26)", // arcano
	"linear-gradient(135deg,#2b0b0b,#7a1f1f 55%,#1e0707)", // raid carmesí
	"linear-gradient(135deg,#0b2430,#1f5b7a 55%,#071822)", // escarcha
	"linear-gradient(135deg,#12250f,#2f6b1f 55%,#091708)", // fel
	"linear-gradient(135deg,#2b2410,#6b5e1f 55%,#1c1808)", // arena sagrada
];
function gradienteDe(id) {
	let h = 0;
	for (const c of String(id)) h = (h * 31 + c.charCodeAt(0)) >>> 0;
	return PALETAS_BANNER[h % PALETAS_BANNER.length];
}
// url de atributo/html seguro: solo de hosts Blizzard, pero quitamos comillas
function urlSegura(u) {
	return String(u ?? "").replace(/["'()]/g, "");
}
// caja de retrato SIEMPRE presente, con imagen del diario o con emblema
// genérico (inicial dorada sobre el tono del banner): sin saltos de layout
function cajaRetrato(url, letra, fondo) {
	return `<div class="relative h-20 w-20 shrink-0 rounded border border-wow-gold/70 overflow-hidden bg-black">
		<div class="absolute inset-0 grid place-items-center font-ui text-3xl text-wow-gold/70 select-none" style="background:${fondo}">${esc(letra ?? "?")}</div>
		${url ? `<img src="${urlSegura(url)}" class="absolute inset-0 h-full w-full object-cover" alt="retrato" onerror="this.style.display='none'">` : ""}
	</div>`;
}
function renderBanner(id, m, nota) {
	const nombre = m?.encounter?.name ?? state.entryData?.name ?? "";
	const banner = $("banner");
	banner.classList.remove("hidden");
	if (m?.splash) {
		banner.style.backgroundImage = `url("${urlSegura(m.splash)}")`;
	} else {
		banner.style.backgroundImage = gradienteDe(id); // respaldo genérico
	}
	const letra = (nombreCorto(nombre).trim().match(/[a-z0-9]/i)?.[0] ?? "?").toUpperCase();
	const fondo = gradienteDe(id);
	banner.innerHTML = `
		<div class="absolute inset-0 bg-gradient-to-t from-wow-dark/95 to-transparent"></div>
		<div class="absolute bottom-2 left-3 right-3 flex items-end gap-3">
			${cajaRetrato(m?.portrait, letra, fondo)}
			<div class="min-w-0 pb-0.5">
				<div class="text-[10px] text-slate-400">${m ? `${esc(m.instance?.name ?? "")} · zona ${esc(m.zone)}` : esc(nota ?? "sin coincidencia en el diario")}</div>
				<div class="font-ui text-wow-gold text-lg truncate">${esc(nombreCorto(nombre))}</div>
			</div>
		</div>`;
}
async function cargarMedia(id) {
	const locale = LOCALES_DIARIO[state.lang] ?? "es_ES";
	$("diario").innerHTML = `<div class="text-xs text-slate-500">buscando en el diario…</div>`;
	let m = null;
	const r = await api(`/api/media/${state.pack}/${id}?locale=${locale}`);
	if (r.ok) m = r.media;
	state.media = m;
	// nombres que el diario del jefe acaba de enseñar (spells sin índice en
	// la búsqueda de Blizzard): se funden y la vista previa traduce ya mismo
	if (r.ok && r.spellnames) {
		Object.assign(state.nombresSpell, r.spellnames);
		renderPreview();
	}
	// con o sin datos del diario el banner respira igual: nada de saltos
	renderBanner(id, m, r.ok ? null : (r.error ?? "sin coincidencia"));
	if (!r.ok) {
		$("diario").innerHTML = `<div class="font-ui text-xs text-wow-gold tracking-widest mb-1">DIARIO</div>
			<div class="text-xs text-slate-500">${esc(r.error ?? "sin coincidencia")}</div>`;
		return;
	}
	// habilidades del diario (secciones) para redactar, en el idioma de la
	// pestaña; los [nombres de habilidad] lucen como chips con id cuando se conoce
	const mapa = mapaNombreSpell();
	$("diario").innerHTML = `
		<div class="flex items-center mb-1">
			<div class="font-ui text-xs text-wow-gold tracking-widest">HABILIDADES DEL DIARIO <span class="text-slate-500">(encounter API ${m.encounter?.id} · ${locale})</span></div>
			<div class="flex-1"></div>
			<button id="btnEsqueleto" class="text-xs px-2 py-1 rounded border border-wow-edge hover:border-wow-gold" title="añade las habilidades del diario como líneas borrador para pulir a mano">＋ esqueleto</button>
		</div>
		<div class="golddiv mb-2"></div>
		${m.description ? `<div class="text-xs text-slate-400 leading-5 mb-2">${renderDiario(m.description, mapa)}</div>` : ""}
		<div class="space-y-1 text-xs leading-5 max-h-72 overflow-y-auto">
			${(m.sections ?? []).map((s) => `<div>${s.title ? `<span class="text-slate-200">${renderDiario(s.title, mapa)}</span>: ` : ""}${s.bullet ? renderDiario(s.bullet, mapa) : ""}</div>`).join("") || `<div class="text-slate-500">sin secciones</div>`}
		</div>`;
	$("btnEsqueleto").onclick = insertarEsqueleto;
}

// mapa inverso nombre(normalizado) → id de spell, con los corchetes de la
// entrada y los nombres resueltos/aprendidos — da tooltip con id a los
// [nombres de habilidad] del diario
function mapaNombreSpell() {
	const mapa = new Map();
	const añade = (nombre, id) => {
		const k = norm(nombre);
		if (k && !mapa.has(k)) mapa.set(k, String(id));
	};
	const e = state.entryData;
	for (const l of [...(e?.lines ?? []), ...(state.nombresRef ?? [])]) {
		for (const m of String(l).matchAll(/\|Hspell:(\d+)\|h\[([^\]]+)\]/g)) añade(m[2], m[1]);
	}
	for (const [id, n] of Object.entries(state.nombresSpell)) for (const lang of ["es", "en", "fr", "de"]) if (n?.[lang]) añade(n[lang], id);
	return mapa;
}

// texto del diario con los [nombres de habilidad] remarcados como chips
// (color de spell del addon, icono y tooltip con el id cuando se conocen)
function renderDiario(txt, mapa) {
	let html = renderWow(limpiarTextoDiario(txt));
	html = html.replace(/\[([^\]<][^\]]*)\]/g, (_m, nombre) => {
		const id = mapa.get(norm(nombre));
		const icono = id && state.nombresSpell[id]?.icon;
		return `<span class="spellchip" style="color:#71d5ff" title="${id ? `spell ${id}` : "habilidad del diario"}">${icono ? `<img src="${urlSegura(icono)}" alt="" class="inline h-4 w-4 rounded mr-0.5 align-[-3px]">` : ""}${nombre}</span>`;
	});
	return html;
}

// esqueleto de entrada: las habilidades del diario como líneas borrador —
// la táctica la escribes tú; esto arranca el hueco (delves, Predaxas…)
function insertarEsqueleto() {
	const m = state.media;
	const e = state.entryData;
	if (!m || !e) return toast("sin datos del diario para esta entrada", false);
	const vistos = new Set();
	const secciones = (m.sections ?? [])
		.filter((s) => String(s.title ?? "").trim() && !esTituloEstructural(s.title))
		.filter((s) => { const k = String(s.title).trim().toLowerCase(); if (vistos.has(k)) return false; vistos.add(k); return true; }) // sin duplicados por rol
		.slice(0, 24);
	if (!secciones.length) return toast("el diario no trae habilidades para esta entrada", false);
	const lineas = secciones.map((s) => {
		const titulo = limpiarTextoDiario(s.title);
		const cuerpo = limpiarTextoDiario(s.bullet).slice(0, 160);
		return `* ${titulo}${cuerpo ? ": " : ""}${cuerpo}`;
	});
	e.lines.push(...lineas);
	state.dirty = true;
	renderEditor();
	toast(`esqueleto: ${lineas.length} líneas borrador añadidas — púlelas antes de guardar`);
}

// grupos del diario que no son habilidades ("Fase 2: …", "Solo en
// dificultad heroica", encabezados de rol "Resumen/DPS/Sanadores/Tanques")
// — no van al esqueleto ni cuentan en cobertura
function esTituloEstructural(t) {
	return /^(fase|phase|stage|etapa)\s*\d/i.test(String(t))
		|| /^(solo|solamente|only|uniquement|nur)\b.*(dificultad|difficulty|difficult|schwierigkeit)/i.test(String(t))
		|| /^(resumen|overview|dps|tanque|tanques|sanador|sanadores|healer|healers|tank|tanks)$/i.test(String(t).trim());
}

// el body_text del diario trae marcado interno (<tau...>, |n, $bullet;): se limpia
function limpiarTextoDiario(s) {
	return String(s ?? "")
		.replace(/\$bullet;?/gi, " — ") // separador de viñetas del diario
		.replace(/<[^>]*>/g, " ") // etiquetas internas del diario
		.replace(/\|n|\$n/g, " ") // saltos de línea del diario
		.replace(/\s+/g, " ")
		.trim();
}

// --------------------------------------------------------- nueva entrada --

$("btnNueva").onclick = () => {
	$("nuevaModal").classList.remove("hidden");
	$("nuevaId").value = "";
	$("nuevaErr").textContent = "";
	$("nuevaId").focus();
};
$("nuevaClose").onclick = () => $("nuevaModal").classList.add("hidden");
$("nuevaOk").onclick = () => {
	const id = $("nuevaId").value.trim();
	if (!/^\d+$/.test(id)) return ($("nuevaErr").textContent = "solo dígitos decimales");
	if (state.entries.some((e) => e.id === id)) return ($("nuevaErr").textContent = "ese id ya existe en este idioma");
	$("nuevaModal").classList.add("hidden");
	state.entryId = id;
	state.entryData = { id, name: "", lines: [], zone: null, shared: null, kind: "nueva" };
	renderEditor();
	$("estadoGuardado").textContent = "entrada nueva: se crea al guardar";
};

// --------------------------------------------------------- cobertura -------

// coteja las tácticas del pack contra las habilidades del diario (heurístico
// por nombre): señala entradas con huecos o sin diario — dónde mirar, no veredicto
$("btnCobertura").onclick = async () => {
	$("coberturaModal").classList.remove("hidden");
	$("coberturaRes").innerHTML = `<div class="text-xs text-slate-500">calculando… la primera vez por pack trae el diario de todos sus jefes y aprende nombres+iconos de sus spells (con ritmo educado ante Wowhead): puede tardar VARIOS MINUTOS y no hay barra — a partir de ahí es instantáneo.</div>`;
	const r = await api(`/api/cobertura/${state.pack}`);
	if (!r.ok) { $("coberturaRes").innerHTML = `<div class="text-xs text-red-400">${esc(r.error)}</div>`; return; }
	const huecos = r.informe.filter((f) => !f.sinDiario && f.faltan.length);
	const sinDiario = r.informe.filter((f) => f.sinDiario);
	const alDia = r.informe.length - huecos.length - sinDiario.length;
	const fila = (f, cuerpo) => `<button data-id="${f.id}" class="coberturaFila w-full text-left px-2 py-1.5 rounded hover:bg-wow-panel2">
		<span class="text-wow-gold text-sm">${esc(f.name || f.id)}</span> <span class="text-slate-500 text-xs">${f.id}</span>
		${cuerpo}
	</button>`;
	$("coberturaRes").innerHTML = `
		<div class="text-xs text-slate-400 mb-2">${r.resumen.entradas} entradas · <span class="text-emerald-300">${alDia} al día</span> · <span class="text-amber-300">${huecos.length} con huecos</span> · <span class="text-slate-500">${sinDiario.length} sin diario</span></div>
		${huecos.map((f) => fila(f, `<span class="text-xs text-slate-400"> · ${f.cubiertas}/${f.total}</span>
			<div class="text-xs text-amber-300/80">faltan: ${f.faltan.slice(0, 6).map(esc).join(" · ")}${f.faltan.length > 6 ? ` · +${f.faltan.length - 6} más` : ""}</div>`)).join("")}
		${huecos.length === 0 && sinDiario.length === 0 ? `<div class="text-emerald-300 text-sm px-2 py-2">✓ el diario no señala huecos en este pack</div>` : ""}
		${sinDiario.map((f) => fila(f, `<div class="text-xs text-slate-500">sin coincidencia en el diario (${esc(String(f.sinDiario).slice(0, 120))})</div>`)).join("")}
		${alDia > 0 ? `<div class="text-xs text-slate-500 px-2 py-1">…y ${alDia} entradas más sin huecos señalados.</div>` : ""}`;
	$("coberturaRes").querySelectorAll("button").forEach((b) => (b.onclick = () => {
		$("coberturaModal").classList.add("hidden");
		selectEntry(b.dataset.id);
	}));
};
$("coberturaClose").onclick = () => $("coberturaModal").classList.add("hidden");

// ------------------------------------------- traducción IA en lote (modal) --

// fila del registro de progreso
function loteFila(tipo, id, nombre, nota) {
	$("loteLog").insertAdjacentHTML("beforeend", `<div class="flex gap-2 items-baseline">
		<span class="tabular-nums shrink-0 text-slate-500">${id}</span>
		<span class="shrink-0 ${tipo === "ok" ? "text-emerald-300" : tipo === "err" ? "text-red-300" : "text-slate-400"}">${tipo === "ok" ? "✓" : tipo === "err" ? "✖" : "⏭"}</span>
		<span class="shrink-0 text-slate-300 truncate max-w-[45%]">${esc(nombre || id)}</span>
		<span class="text-slate-500 truncate">${esc(nota)}</span>
	</div>`);
	$("loteLog").scrollTop = $("loteLog").scrollHeight;
}

$("btnTraducirLotes").onclick = traducirLote;

async function traducirLote() {
	if (state.loteRun || !state.pack) return;
	if (!state.meta?.ok || state.meta.ia === false) return toast(`La IA no está disponible en este servidor (revisa IA_PROVIDER y la sección del proveedor en .env).`, false);
	const pack = state.packs.find((p) => p.name === state.pack);
	const fuentes = Object.entries(pack?.langs ?? {}).filter(([l, i]) => i && l !== state.lang).map(([l]) => l);
	// la FUENTE es la del select del panel; si todavía no se eligió ninguna,
	// cae en el idioma mejor redactado de la casa (es, luego en, luego el que haya)
	const src = state.srcLang && fuentes.includes(state.srcLang) ? state.srcLang :
		(fuentes.find((l) => l === "es") ?? fuentes.find((l) => l === "en") ?? fuentes[0]);
	if (!src) return toast("Este pack no tiene otro idioma con fichero: no hay FUENTE para la IA.", false);
	const pendientes = pendientesTraduccion(state.entries);
	if (!pendientes.length) return;
	if (!confirm(`Traducir ${pendientes.length} entrada(s) sin tácticas de ${src.toUpperCase()} a ${state.lang.toUpperCase()} con la IA?\n\nFuente: el idioma del select FUENTE (${src.toUpperCase()}).\nCada traducción se GUARDA en disco (el servidor deja backup automático).\nLa entrada abierta en el editor se refresca al terminar si no tienes cambios sin guardar.`)) return;

	state.loteRun = true;
	state.loteCancel = false;
	$("btnTraducirLotes").disabled = true;
	$("traducirModal").classList.remove("hidden");
	$("loteRuta").textContent = `${src.toUpperCase()} → ${state.lang.toUpperCase()}`;
	$("loteSrcTxt").textContent = src.toUpperCase();
	$("loteDstTxt").textContent = state.lang.toUpperCase();
	$("loteTot").textContent = pendientes.length;
	$("loteNum").textContent = "0";
	$("loteOk").textContent = "0";
	$("loteErr").textContent = "0";
	$("loteSkip").textContent = "0";
	$("loteLog").innerHTML = "";
	$("lotePct").style.width = "0%";
	$("loteSpin").classList.remove("hidden");
	$("loteBoss").textContent = "preparando tanda…";
	$("loteCancelar").classList.remove("hidden");
	$("loteCancelar").disabled = false;
	$("loteCerrar").classList.add("hidden");
	$("loteNota").textContent = "cada jefe: traer → IA traduce → guardar; se detiene limpio entre jefes.";

	// entradas de la fuente: para saltar las que allí tampoco tienen tácticas
	const rsrc = await api(`/api/packs/${state.pack}/${src}`);
	const vaciaDe = (e) => e.vacia ?? (e.lines ?? 0) <= 0;
	const idsSrc = new Set((rsrc.entries ?? []).map((e) => e.id));
	const vaciasSrc = new Set((rsrc.entries ?? []).filter(vaciaDe).map((e) => e.id));

	// valores capturados: aunque el usuario cambie de pack/pestaña no puede
	// (el modal bloquea la página), y así la tanda usa SIEMPRE lo que arrancó
	const packName = state.pack;
	const dstLang = state.lang;
	const dstLabel = dstLang.toUpperCase();
	const srcLabel = src.toUpperCase();
	let idx = 0, ok = 0, err = 0, skip = 0;

	for (const e of pendientes) {
		if (state.loteCancel) { loteFila("skip", e.id, e.name, "tanda detenida por el usuario"); break; }
		idx++;
		$("loteNum").textContent = String(idx);
		$("loteBoss").textContent = e.name || e.id;
		$("lotePct").style.width = `${Math.round((idx / pendientes.length) * 100)}%`;
		if (!idsSrc.has(e.id)) {
			skip++;
			loteFila("skip", e.id, e.name, `no existe en ${srcLabel}; rellena aquí a mano o trae la entrada antes`);
		} else if (vaciasSrc.has(e.id)) {
			skip++;
			loteFila("skip", e.id, e.name, `sin tácticas tampoco en ${srcLabel}`);
		} else {
			try {
				const t = await api("/api/traducir", { method: "POST", body: JSON.stringify({ pack: packName, id: e.id, from: src, to: dstLang }) });
				if (!t.ok) throw new Error(t.error ?? "error IA");
				const g = await api(`/api/packs/${packName}/${dstLang}/${e.id}`, { method: "PUT", body: JSON.stringify({ name: t.name, lines: t.lines }) });
				if (!g.ok) throw new Error(g.problems ? g.problems.join(" · ") : (g.error ?? "error al guardar"));
				ok++;
				const fuenteNombre = t.nameSource === "api" ? "· nombre oficial (API)"
					: t.nameSource === "ia" ? "· nombre por IA, revisa"
					: t.nameSource === "original" ? "· nombre sin cambio" : "";
				const reuse = t.reusedFrom ? `· líneas reusadas de ${t.reusedFrom}` : "";
				loteFila("ok", e.id, t.name, `${t.lines.length} línea(s) guardadas ${[fuenteNombre, reuse].filter(Boolean).join(" ")}`.trim());
				// si el jefe traducido está abierto y sin cambios propios, se
				// refresca en el editor al vuelo con lo recién guardado
				if (state.entryId === e.id && state.entryData && !state.dirty) {
					state.entryData = g.entry;
					state.dirty = false;
					renderEditor();
				}
			} catch (ex) {
				err++;
				loteFila("err", e.id, e.name, String(ex.message ?? ex).slice(0, 200));
			}
		}
		$("loteOk").textContent = String(ok);
		$("loteErr").textContent = String(err);
		$("loteSkip").textContent = String(skip);
	}

	// cierre
	state.loteRun = false;
	$("loteSpin").classList.add("hidden");
	$("loteBoss").textContent = state.loteCancel ? "tanda detenida" : "tanda finalizada";
	$("loteCancelar").classList.add("hidden");
	$("loteCerrar").classList.remove("hidden");
	$("btnTraducirLotes").disabled = false;
	const partes = [`${ok} traducidas`, err ? `${err} con fallo` : "", skip ? `${skip} saltadas` : ""].filter(Boolean).join(" · ");
	$("loteNota").textContent = state.loteCancel
		? `${partes} — quedaron pendientes ${Math.max(pendientes.length - idx, 0)}; puedes relanzar cuando quieras.`
		: `${partes} — ${dstLabel} completado; revisa y pule lo que quieras.`;
	// la recarga reevalúa ambos botones de la barra (importar + IA)
	await loadPacks();
	renderLangTabs();
	await loadEntries();
	if (state.entryId && !state.dirty) selectEntry(state.entryId);
	toast(`IA en lote: ${partes}`, err === 0 || ok > 0);
}

$("loteCancelar").onclick = () => {
	state.loteCancel = true;
	$("loteCancelar").disabled = true;
	$("loteNota").textContent = "deteniendo tras el jefe en curso…";
};
$("loteCerrar").onclick = () => $("traducirModal").classList.add("hidden");

// -------------------------------------------------------------- arranque --

(async () => {
	await loadMeta();
	// precarga del mapa de spells ya resuelto (traducción al vuelo como el addon)
	const noms = await api("/api/spellnames");
	if (noms.ok) state.nombresSpell = noms.names ?? state.nombresSpell;
	await loadPacks();
	renderLangTabs();
	await loadEntries();
	selectEntryOff();
	$("filtro").oninput = (ev) => { state.filtro = ev.target.value; renderLista(); };
	$("btnHelp").onclick = () => toast("Elige pack → idioma → entrada; edita y guarda. El botón ＋spell inserta enlaces con |h|r verificado. FR/DE se crean desde su pestaña. El panel FUENTE trae la explicación de otro idioma y la traduce con IA (revisa y guarda). «✨ traducir con IA» rellena solo las entradas sin tácticas del idioma activo, usando el FUENTE del panel, y las guarda.", true);
	// entra de lleno en la primera entrada del pack Cata como arranque cómodo
	const primera = state.entries[0];
	if (primera) selectEntry(primera.id);
})();