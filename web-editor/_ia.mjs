// web-editor/_ia.mjs
// Traducción IA de los consejos del editor web, con proveedor elegible en
// .env (IA_PROVIDER). "nvidia" (por omisión): NVIDIA NIM replicando el
// programa de ejemplo del propietario (Mis Fuentes/node.js/nim/index.mjs),
// SDK de OpenAI contra https://integrate.api.nvidia.com/v1 con el modelo
// nvidia/nemotron-3-super-120b-a12b y la clave en NVIDIA_API_KEY; si falta o
// el servicio la rechaza (401/403), se usa la del programa de ejemplo.
// "ollama": un Ollama LOCAL por su API OpenAI-compatible (/v1) — OLLAMA_URL
// (por omisión http://127.0.0.1:11434) y OLLAMA_MODEL en .env; si falta el
// modelo, se descubre con GET /api/tags y se toma el primero instalado
// (Ollama ignora la clave de autorización: cualquier string vale).
//
// INTEGRIDAD DEL MARCADO: los lenguajes pequeños suelen romper los códigos
// WoW |cff…|Hspell:ID|h[…]|h|r al traducir (y validateText del server
// rechaza el guardado con enlaces sin cierre |h|r). Antes de llamar a la IA
// se SUSTITUYEN los códigos por marcadores {W1}, {W2}… que el prompt ordena
// copiar verbatim y en orden; al volver, se reponen por índice y la salida
// se comprueba contra el original (mismos pipes, mismos abridores, mismos
// cierres completos, cero residuos |h*r). Si algo queda roto: reintento y,
// si persiste, devolución del ORIGINAL como borrador revisable — nunca una
// línea in-guardable.
//
// Reglas de la casa respetadas por el prompt: solo se traduce el nombre
// visible del corchete, la viñeta "* " se conserva, secuencias ASCII "->" y
// nada de emojis/flechas Unicode (no se imprimen en el cliente WoW).

import OpenAI from "openai";

export const PROVEEDOR_IA = (process.env.IA_PROVIDER || "nvidia").trim().toLowerCase();
const ES_OLLAMA = PROVEEDOR_IA === "ollama";

// NVIDIA NIM ------------------------------------------------------------------
// Clave del programa de ejemplo (fallback si .env no trae NVIDIA_API_KEY o el
// servicio la rechaza). Mejor definir NVIDIA_API_KEY en .env: esta puede
// revocarse en cualquier momento.
const CLAVE_EJEMPLO = "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";
const BASE_URL = process.env.NVIDIA_BASE_URL || "https://integrate.api.nvidia.com/v1";

// Ollama ----------------------------------------------------------------------
// URL sin barra final (la API OpenAI-compatible cuelga de /v1 y la propia de
// Ollama —tags— está en la raíz).
const OLLAMA_URL = (process.env.OLLAMA_URL || "http://127.0.0.1:11434").replace(/\/+$/, "");

export const MODELO_IA = ES_OLLAMA
	? (process.env.OLLAMA_MODEL || "") // vacío = descubrir al vuelo con /api/tags
	: (process.env.NVIDIA_MODEL || "nvidia/nemotron-3-super-120b-a12b");

// Modelos descubiertos en el Ollama local (caché por proceso; el modelo se
// resuelve UNA vez o ninguna — el bucle de reintentos no re-consulta tags)
let modeloOllamaCache = null;
async function modeloOllama() {
	if (process.env.OLLAMA_MODEL) return process.env.OLLAMA_MODEL;
	if (modeloOllamaCache) return modeloOllamaCache;
	const respuesta = await fetch(`${OLLAMA_URL}/api/tags`, { signal: AbortSignal.timeout(5000) });
	if (!respuesta.ok) throw new Error(`Ollama sin respuesta en ${OLLAMA_URL}/api/tags (¿el servidor está corriendo?)`);
	const tags = await respuesta.json();
	const nombres = (tags.models ?? []).map((m) => m.name).filter(Boolean);
	if (!nombres.length) throw new Error("Ollama no tiene modelos instalados: haz 'ollama pull <modelo>' en consola, o define OLLAMA_MODEL en .env");
	modeloOllamaCache = nombres[0];
	return modeloOllamaCache;
}

// El bucle de reintentos de traducción recorre estas configuraciones: en
// nvidia, la clave de .env y (si 401/403) la del programa de ejemplo; en
// ollama, una sola (la clave es decorativa, Ollama la ignora).
function configsIA() {
	if (ES_OLLAMA) return [{ baseURL: `${OLLAMA_URL}/v1`, apiKey: "ollama", modelo: null }];
	const claves = [...new Set([process.env.NVIDIA_API_KEY || "", CLAVE_EJEMPLO])].filter(Boolean);
	return claves.map((clave) => ({ baseURL: BASE_URL, apiKey: clave, modelo: MODELO_IA }));
}

const NOMBRES_IDIOMA = { es: "español", en: "inglés", fr: "francés", de: "alemán", ru: "ruso", pt: "portugués", zh: "chino simplificado", ko: "coreano" };

const SYSTEM = [
	"Eres un traductor especializado en World of Warcraft: traduces consejos tácticos de jefes de mazmorra y banda entre los idiomas de los packs (español, inglés, francés, alemán, ruso, portugués, chino simplificado y coreano).",
	"Reglas estrictas:",
	"1. Devuelve SOLO la traducción del texto pedido: sin prefacios, sin comillas de envoltorio, sin explicaciones.",
	"2. El texto puede llevar marcadores {W1}, {W2}, …: son códigos de color y de enlace del juego que NO se traducen ni se reordenan. Cópialos VERBATIM, mismo número y mismo orden relativo. El nombre visible entre corchetes [Nombre] SÍ se traduce con la terminología oficial del juego; si el texto no lleva marcadores, no añadas ninguno.",
	'3. Si el texto empieza con la viñeta "* ", consérvala exacta; si no empieza con ella, no la añadas nunca.',
	"4. Para secuencias y órdenes usa la flecha ASCII ->; nada de emojis ni flechas Unicode (el cliente WoW no las renderiza).",
	"5. Usa la terminología oficial del juego en el idioma destino (habilidades, debuffs, roles). Los nombres propios de NPC se mantienen salvo traducción oficial conocida.",
	"6. No añadas ni quites información; traduce fielmente, mismo número de frases.",
].join("\n");

// Variante del SYSTEM para el bloque de líneas: mismas reglas de marcado y
// terminología, más el formato Ln: que mantiene el conteo de líneas exacto.
const SYSTEM_BLOQUE = [
	SYSTEM,
	"7. En este caso recibes VARIOS consejos, uno por línea, con prefijo \"Ln:\" (L1:, L2:…).",
	"8. La salida debe llevar EXACTAMENTE la misma cantidad de líneas que la entrada, cada una empezando por su mismo prefijo \"Ln:\" y después SOLO la traducción de esa línea (nada más en la fila).",
	"9. No fusiones, no partas, no reordenes líneas; no respondas con un solo párrafo para varias.",
].join("\n");

// --- aplanado/restauración del marcado WoW ----------------------------------------

// Códigos de control del marcado: colores |cXXXXXXXX (8 hex, p. eje. |cff71d5ff),
// abridores de enlace |Htipo:ID|h (spell, item…) y los sueltos |h / |r.
const RE_CODIGOS = /\|c[0-9a-fA-F]{8}|\|H[a-z]+:-?\d+\|h|\|h|\|r/g;

// Sustituye cada código por {Wn} secuencial y devuelve los códigos en orden.
export function aislarMarcado(texto) {
	const tokens = [];
	const pieza = String(texto ?? "").replace(RE_CODIGOS, (c) => `{W${tokens.push(c)}}`);
	return { pieza, tokens };
}

// Reponen los códigos por su índice; un marcador que el modelo perdió no
// deja residuo (y la verificación posterior lo detecta por recuento).
export function restaurarMarcado(pieza, tokens) {
	if (!tokens.length) return pieceSanear(pieza);
	return pieceSanear(pieza).replace(/\{W(\d+)\}/g, (m, i) => tokens[Number(i) - 1] ?? "");
}
function pieceSanear(s) {
	// mismo limpia-vallas/comillas que el text output (aplicado a la pieza)
	let t = String(s ?? "").trim();
	t = t.replace(/^```[a-z]*\r?\n/, "").replace(/\r?\n```\s*$/, "");
	const m = /^"((?:.|\n)*)"$/.exec(t) ?? /^«([^»]*)»$/.exec(t);
	if (m) t = m[1];
	return t.trim();
}

// ¿la salida conservó la estructura del marcado del original? (alineada con
// el validateText del server: todo abridor cierra por completo; + residuos)
function marcadoIntacto(salida, original) {
	const cuenta = (t, re) => (t.match(re) ?? []).length;
	if (cuenta(salida, /\|/g) !== cuenta(original, /\|/g)) return false; // pipes totales
	const RE_ABRIDOR = /\|H[a-z]+:-?\d+\|h\[/g;
	const RE_CIERRE = /\|H[a-z]+:-?\d+\|h\[[^\]]*\]\|h\|r/g;
	if (cuenta(salida, RE_ABRIDOR) !== cuenta(original, RE_ABRIDOR)) return false;
	if (cuenta(salida, RE_CIERRE) !== cuenta(original, RE_CIERRE)) return false;
	if (/\|h[^\[|]/.test(salida)) return false; // residuo tipo |h*r (cierre roto)
	return true;
}

// Pule de la salida los adornos que el modelo improvisa por estilo markdown:
// - prefijo de lista ("* ", "- ", "**", "• "…) añadido o perdido: el ORIGINAL
//   manda (con viñeta → "* " exacto; sin viñeta, como los NOMBRES de jefe →
//   fuera el asterisco que a veces estampa delante del título);
// - códigos de color/enlace inventados: solo se quitam cuando el original no
//   lleva NINGUNO (tokens vacío); pipes sueltas no formando código quedan y
//   hacen fallar marcadoIntacto → reintento.
export function puleSalida(salida, original, tokens) {
	let s = String(salida ?? "").trim();
	// fuere TODOS los prefijos de lista de la salida y repongo la del original
	s = s.replace(/^[ \t]*(?:[-*•·‣▪✦]+[ \t]*)+/, "").trim();
	if (/^\*\s?/.test(original)) s = "* " + s;
	if (!tokens.length && /\|/.test(s)) {
		s = s.replace(RE_CODIGOS, "").replace(/\|+/g, "").trim();
		if (!s) return "";
	}
	return s;
}

const clientes = new Map(); // clave base|apiKey → cliente OpenAI (uno por combinación)
// timeout por llamada SIN reintentos del SDK: un cuelgue de Ollama/NIM (modelo
// cargando, memoria llena…) no puede bloquear la cola de lote minutos sin dar
// señal — el error sale a tiempo y los reintentos reales (salida inválida, el
// bucle de configs) ya viven en cada función, VISIBLES en el log; con el
// maxRetries 1 del SDK el reintento tras un timeout se doblaba en silencio
// (90+90, 150+150 s) y duplicaba la espera real.
// Con el Ollama LOCAL el margen es mayor: el bloque entero de un jefe puede
// generar 130-200 s en GPUs modestas (medido: 131.4 s con 4 líneas) y el
// techo de 90 s casi nunca pasaba — caía SIEMPRE al camino línea a línea
// (4+ llamadas más) y el dueño lo veía como «el editor se atasca en
// traducciones de un solo boss».
const IA_TIMEOUT = ES_OLLAMA ? 240_000 : 90_000;
function clienteIA(apiKey, baseURL) {
	const k = `${baseURL}|${apiKey}`;
	if (!clientes.has(k)) clientes.set(k, new OpenAI({ apiKey, baseURL, timeout: IA_TIMEOUT, maxRetries: 0 }));
	return clientes.get(k);
}

// ¿hay IA para traducir? (badge del UI en /api/meta). En ollama se presume
// disponible (la verificación real ocurre en la primera llamada, donde un
// Ollama parado o sin modelos da un error accionable en el log del UI).
export function iaDisponible() {
	if (ES_OLLAMA) return true;
	return Boolean(process.env.NVIDIA_API_KEY || CLAVE_EJEMPLO);
}

// --- bloque de líneas: UNA llamada para TODO el jefe ----------------------------
// Traduce varias líneas en un solo viaje: el marcado {Wn} se renumera GLOBAL
// (W1..Wk atraviesa todas las líneas) y cada línea sale con prefijo "Ln:" que
// el prompt exige conservar. Verificación línea a línea con la MISMA
// maquinaria (marcadoIntacto + puleSalida con el original de CADA línea); si
// cualquier línea falla, devuelve null y/el llamador repite el camino clásico
// línea a línea — la integridad manda sobre la velocidad.
export async function traducirBloqueIA(textos, de, a, { signal } = {}) {
	if (!NOMBRES_IDIOMA[de] || !NOMBRES_IDIOMA[a]) {
		throw new Error(`idiomas soportados: ${Object.keys(NOMBRES_IDIOMA).join("/")}`);
	}
	const originales = (textos ?? []).map((t) => String(t ?? "").trim()).filter(Boolean);
	if (!originales.length) return null;
	if (originales.length === 1) return null; // una línea: camino clásico (igual de rápido)
	// renumeración global de {Wn}: aislo cada línea, desplazo sus índices por el
	// total acumulado y acumulo los códigos en un único array
	const tokensGlobal = [];
	const piezas = [];
	for (const limpio of originales) {
		const { pieza, tokens } = aislarMarcado(limpio);
		const desplazamiento = tokensGlobal.length;
		piezas.push(pieza.replace(/\{W(\d+)\}/g, (m, i) => `{W${Number(i) + desplazamiento}}`));
		tokensGlobal.push(...tokens);
	}
	const cuerpo = piezas.map((p, i) => `L${i + 1}: ${p}`).join("\n");
	return enCola(async () => {
		// el pedido ya está cancelado (recarga del navegador, techo…): el turno
		// se libera al momento, sin llamar al modelo
		if (signal?.aborted) throw new Error("traducción cancelada antes de llamar al modelo");
		for (const cfg of configsIA()) {
			let ultimoError = null;
			try {
				for (let intento = 0; intento < 2; intento++) {
					const modelo = ES_OLLAMA ? await modeloOllama() : cfg.modelo;
					const t0Llamada = Date.now();
					console.log(`[editor] IA: llamada del bloque en vuelo (${modelo}, intento ${intento + 1})…`);
					const completion = await clienteIA(cfg.apiKey, cfg.baseURL).chat.completions.create({
						model: modelo,
						messages: [
							{ role: "system", content: SYSTEM_BLOQUE },
							{
								role: "user",
								content: `Son ${originales.length} consejos de UN mismo jefe de World of Warcraft. Traduce al ${NOMBRES_IDIOMA[a]} cada uno (escritos en ${NOMBRES_IDIOMA[de]}), manteniendo el prefijo "Ln:" de cada línea y el conteo exacto de líneas:\n\n${cuerpo}`,
							},
						],
						temperature: 0.2,
						top_p: 1,
						max_tokens: 1024 * originales.length + 128,
						stream: false,
						...(ES_OLLAMA ? { reasoning_effort: "none" } : {}),
					}, { signal });
					const crudo = String(completion.choices[0]?.message?.content ?? "");
					console.log(`[editor] IA: llamada del bloque acabó (${((Date.now() - t0Llamada) / 1000).toFixed(1)}s, ${completion.usage?.completion_tokens ?? "?"} tokens de salida)`);
					// partido por prefijos "Ln:" flexibles (L1:, l1., L1)... en
					// orden de número, tolerando líneas de relleno del modelo
					const secciones = new Map();
					let actual = 0;
					for (const fila of crudo.split(/\r?\n/)) {
						const m = /^\s*L\s*(\d+)\s*[:.)\-]\s*(.*)$/.exec(fila) ?? /^\s*L\s*(\d+)\s*[:.)\-]?\s*$/.exec(fila);
						if (m) {
							actual = Number(m[1]);
							if (m[2] !== undefined) secciones.set(actual, (secciones.get(actual) ?? "") + " " + m[2]);
						} else if (fila.trim() && actual) {
							secciones.set(actual, (secciones.get(actual) ?? "") + " " + fila.trim());
						}
					}
					if (secciones.size !== originales.length) continue; // conteo roto → reintento
					// reconstrucción línea a línea con la verificación de SIEMPRE
					const resultado = [];
					let bien = true;
					for (let i = 0; i < originales.length; i++) {
						const pieza = (secciones.get(i + 1) ?? "").trim();
						const salida = restaurarMarcado(pieza, tokensGlobal);
						const pulida = puleSalida(salida, originales[i], tokensGlobal).replace(/\s*\r?\n\s*/g, " ").trim();
						if (!pulida || !marcadoIntacto(pulida, originales[i])) { bien = false; break; }
						resultado.push(pulida);
					}
					if (bien) return resultado;
				}
				return null; // dos intentos sin bloque limpio → camino clásico
			} catch (err) {
				ultimoError = err;
				const estado = err?.status ?? err?.response?.status;
				if (signal?.aborted) throw err; // el que pedía se fue / techo: parar ya
				if (estado !== 401 && estado !== 403) break;
			}
		}
		return null; // fallo del bloque NUNCA tumba la entrada: el llamador cae al camino por línea
	});
}

// Cola propia: una llamada a la vez (el botón del UI se deshabilita, pero dos
// clicks rápidos o dos pestañas no deben reventar el límite de peticiones)
let cola = Promise.resolve();
function enCola(tarea) {
	const siguiente = cola.then(tarea, tarea);
	cola = siguiente.catch(() => {});
	return siguiente;
}

// Traduce un texto (una línea de consejo o el nombre del jefe) de un idioma a
// otro. de/a: "es" | "en" | "fr" | "de". Devuelve el texto traducido.
export async function traducirTextoIA(texto, de, a, { signal } = {}) {
	if (!NOMBRES_IDIOMA[de] || !NOMBRES_IDIOMA[a]) {
		throw new Error(`idiomas soportados: ${Object.keys(NOMBRES_IDIOMA).join("/")}`);
	}
	const limpio = String(texto ?? "").trim();
	if (!limpio) return "";
	const { pieza, tokens } = aislarMarcado(limpio);
	return enCola(async () => {
		if (signal?.aborted) throw new Error("traducción cancelada antes de llamar al modelo");
		let ultimoError = null;
		for (const cfg of configsIA()) {
			try {
				// dos intentos (la salida VACÍA y la salida con marcado roto son
				// fallos puntuales conocidos de NIM y de los modelos locales);
				// si ninguno sale limpio, se devuelve el ORIGINAL (borrador
				// revisable) en vez de tumbar la entrada con una línea
				// inguardable
				for (let intento = 0; intento < 2; intento++) {
					const modelo = ES_OLLAMA ? await modeloOllama() : cfg.modelo;
					const t0Llamada = Date.now();
					console.log(`[editor] IA: llamada de línea en vuelo (${modelo}, intento ${intento + 1})…`);
					const completion = await clienteIA(cfg.apiKey, cfg.baseURL).chat.completions.create({
						model: modelo,
						messages: [
							{ role: "system", content: SYSTEM },
							{
								role: "user",
								content: `Traduce al ${NOMBRES_IDIOMA[a]} este consejo de jefe de World of Warcraft (escrito en ${NOMBRES_IDIOMA[de]}):\n\n${pieza}`,
							},
						],
						temperature: 0.2, // baja: fidelidad al original (el ejemplo usaba 0.5, orientado a juego)
						top_p: 1,
						max_tokens: 1024,
						stream: false,
						// Ollama: los modelos de razonamiento (qwen3, deepseek-r1…)
						// devuelven content VACÍO y su razonamiento en el campo
						// "reasoning" (agotando max_tokens pensando): con
						// reasoning_effort "none" la API OpenAI-compatible los
						// hace responder directo; los modelos sin thinking y el
						// NIM lo ignoran.
						...(ES_OLLAMA ? { reasoning_effort: "none" } : {}),
					}, { signal });
					const salida = restaurarMarcado(completion.choices[0]?.message?.content, tokens);
					console.log(`[editor] IA: llamada de línea acabó (${((Date.now() - t0Llamada) / 1000).toFixed(1)}s, ${completion.usage?.completion_tokens ?? "?"} tokens de salida)`);
					// los adornos markdown del modelo (asteriscos añadidos,
					// comillas, códigos inventados si el original no lleva) se
					// puelen ANTES de verificar; los saltos de línea que el
					// modelo estampa a lo guía se colapsan: una línea de
					// consejo es UNA línea
					const pulida = puleSalida(salida, limpio, tokens).replace(/\s*\r?\n\s*/g, " ").trim();
					if (pulida && marcadoIntacto(pulida, limpio)) return pulida;
				}
				return limpio;
			} catch (err) {
				ultimoError = err;
				const estado = err?.status ?? err?.response?.status;
				if (signal?.aborted) throw err; // el que pedía se fue / techo: parar ya
				// clave rechazada → siguiente configuración; los demás errores
				// (red, servidor Ollama parado, modelo ausente…) no se reintentan
				if (estado !== 401 && estado !== 403) break;
			}
		}
		throw ultimoError ?? new Error("traducción fallida");
	});
}

// --- nombre de jefe: ruta APARTE, mucho más estricta ----------------------------
// El nombre (elemento 1 = cómo nombra al NPC el CLIENTE) NO puede ir por el
// prompt de consejos: un modelo al que solo se le da "Nithogg" con reglas de
// estrategia a veces se inventa una guía entera (Fases 1/2, [Tank], viñetas
// anidadas…). Además ese texto multilínea se guardaba como string crudo del
// nombre y PARTÍA el Lua del pack. Prompt dedicado, validación dura y, si no
// pasa, salida vacía para que el llamador se quede con el nombre original.
const SYSTEM_NOMBRE = [
	"Eres un traductor de nombres de World of Warcraft: traduces el nombre de UN jefe/NPC entre español, inglés, francés y alemán.",
	"Reglas estrictas:",
	"1. Devuelve SOLO el nombre: una única línea corta, sin viñetas, sin asteriscos ni ningún otro markdown, sin comillas de envoltorio, sin explicaciones, sin estrategias ni fases.",
	"2. Si el nombre es igual en los cuatro idiomas o es un nombre propio sin traducción oficial, devuélvelo tal cual.",
	"3. Nada de corchetes ni roles ([Tank], [Heal]…): un nombre y nada más. Para títulos traducibles usa la terminología oficial del juego en el idioma destino.",
].join("\n");

// ¿la salida tiene FORMA de nombre? (una línea, sin adorno, creible)
export function nombreIAValido(s, original) {
	const t = String(s ?? "").trim();
	if (!t) return false;
	if (/[\n\r]/.test(t)) return false;
	if (/[*•▪‣|]|\{W\d?\}|\[(?:tank|healer|healers|dps|cc|heal)\]/i.test(t)) return false;
	if (/^\s*[-*•]/.test(t)) return false;
	const max = Math.max((String(original ?? "").length) * 3 + 20, 60);
	if (t.length > max) return false;
	return true;
}

export async function traducirNombreIA(texto, de, a, { signal } = {}) {
	if (!NOMBRES_IDIOMA[de] || !NOMBRES_IDIOMA[a]) {
		throw new Error(`idiomas soportados: ${Object.keys(NOMBRES_IDIOMA).join("/")}`);
	}
	const limpio = String(texto ?? "").trim();
	if (!limpio) return "";
	return enCola(async () => {
		if (signal?.aborted) throw new Error("traducción cancelada antes de llamar al modelo");
		for (const cfg of configsIA()) {
			try {
				const modelo = ES_OLLAMA ? await modeloOllama() : cfg.modelo;
				const t0Nombre = Date.now();
				const completion = await clienteIA(cfg.apiKey, cfg.baseURL).chat.completions.create({
					model: modelo,
					messages: [
						{ role: "system", content: SYSTEM_NOMBRE },
						{
							role: "user",
							content: `Traduce al ${NOMBRES_IDIOMA[a]} SOLO el nombre de este jefe de World of Warcraft (escrito en ${NOMBRES_IDIOMA[de]}):\n\n${limpio}`,
						},
					],
					temperature: 0.1,
					top_p: 1,
					max_tokens: 64,
					stream: false,
					...(ES_OLLAMA ? { reasoning_effort: "none" } : {}),
				}, { signal });
				const salida = restaurarMarcado(completion.choices[0]?.message?.content, []);
				console.log(`[editor] IA: llamada del nombre acabó (${((Date.now() - t0Nombre) / 1000).toFixed(1)}s)`);
				if (nombreIAValido(salida, limpio)) return salida;
				return ""; // salida inválida: el llamador usa el ORIGINAL
			} catch (err) {
				if (signal?.aborted) throw err; // el que pedía se fue: parar ya
				const estado = err?.status ?? err?.response?.status;
				if (estado === 401 || estado === 403) continue; // clave rechazada → siguiente
				return ""; // fallo puntual (red, Ollama parado…): se usa el original
			}
		}
		return "";
	});
}