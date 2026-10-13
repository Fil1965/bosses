// web-editor/public/app.js
// Lógica del editor (vanilla JS, sin build). Estado local + fetch a /api.

const $ = (id) => document.getElementById(id);
const state = {
	meta: null,
	packs: [],
	pack: null,
	lang: "es",
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
				// alta del idioma: fichero + .toc + registrador (con backups)
				if (!confirm(`Crear ${pack.name}_${lang}.lua y registrar ${lang.toUpperCase()} en .toc/registrador?`)) return;
				const r = await api(`/api/packs/${pack.name}/langs/${lang}`, { method: "POST" });
				if (!r.ok) return toast(`Falta crear idioma: ${r.error}`, false);
				await loadPacks();
				toast(`Idioma ${lang.toUpperCase()} creado en ${pack.name} (fichero + .toc + registrador)`);
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
}

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

// referencia de la fuente (traducción: columna izquierda)
async function renderReferencia() {
	const e = state.entryData;
	if (!e) { $("referencia").innerHTML = ""; return; }
	if (state.lang === "es") {
		state.nombresRef = [];
		$("referencia").innerHTML = `<div class="font-ui text-xs text-wow-gold tracking-widest mb-1">REFERENCIA ES</div>
			<div class="text-xs text-slate-500">Estás editando la tabla ES (fuente). Para traducir, cambia a otro idioma en las pestañas.</div>`;
		return;
	}
	const r = await api(`/api/packs/${state.pack}/es/${e.id}`);
	const src = r.ok ? r.entry : null;
	state.nombresRef = src ? [src.name, ...(src.lines ?? [])] : [];
	$("referencia").innerHTML = `
		<div class="font-ui text-xs text-wow-gold tracking-widest mb-1">FUENTE ES <span class="text-slate-500">(solo lectura)</span></div>
		<div class="golddiv mb-2"></div>
		<div class="text-sm text-slate-300 mb-2">${src ? esc(src.name) : "—"}</div>
		<div class="space-y-2 text-xs leading-5 text-slate-400">
			${(src?.lines ?? []).map((l) => `<div class="flex gap-2"><span class="text-wow-gold select-none">•</span><span>${renderWow(String(l).replace(/^\*\s*/, ""), "es")}</span></div>`).join("")}
		</div>`;
	resolverNombresSpell(); // los spells de la referencia también se traducen
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
document.addEventListener("keydown", (ev) => { if (ev.key === "Escape") { closeSpellPicker(); $("coberturaModal").classList.add("hidden"); } });

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
	$("btnHelp").onclick = () => toast("Elige pack → idioma → entrada; edita y guarda. El botón ＋spell inserta enlaces con |h|r verificado. FR/DE se crean desde su pestaña.", true);
	// entra de lleno en la primera entrada del pack Cata como arranque cómodo
	const primera = state.entries[0];
	if (primera) selectEntry(primera.id);
})();