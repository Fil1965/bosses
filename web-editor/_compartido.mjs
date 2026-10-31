// web-editor/_compartido.mjs
// Utilidades PURAS (sin dependencias de Node) compartidas entre el servidor
// (server.mjs vía _packs.mjs) y el cliente (public/app.js vía import de este
// módulo servido en /_compartido.mjs). Así el navegador no rompe al importar
// node:fs.

// minúsculas y sin acentos para búsquedas
export function norm(s) {
	return String(s ?? "").toLowerCase().normalize("NFD").replace(/[̀-ͯ]/g, "");
}
// norm sin artículo inicial ("Minas de la muerte" == "Las Minas de la Muerte")
export function normArt(s) {
	return norm(s).replace(/^(el|la|los|las|the|le|les|der|die|das)\s+/, "");
}
// locale del diario de Blizzard por idioma de pack (misma tabla en server y app)
export const LOCALES_DIARIO = {
	es: "es_ES", en: "en_US", fr: "fr_FR", de: "de_DE",
	ru: "ru_RU", pt: "pt_BR", zh: "zh_CN", ko: "ko_KR",
};
// títulos ESTRUCTURALES del diario (grupos, no habilidades): "Fase 2: …",
// "Solo en dificultad heroica", y los encabezados de rol de las bandas
// modernas ("Resumen", "DPS", "Sanadores", "Tanques"…)
export const TITULO_ESTRUCTURAL = /^(fase|phase|stage|etapa)\s*\d|^(solo|solamente|only|uniquement|nur)\b.*(dificultad|difficulty|difficult|schwierigkeit)|^(resumen|overview|dps|tanque|tanques|sanador|sanadores|healer|healers|tank|tanks)$/i;
export function esTituloEstructural(t) {
	return TITULO_ESTRUCTURAL.test(String(t ?? "").trim());
}
