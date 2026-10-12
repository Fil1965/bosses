// web-editor/_purga-cache.mjs — purga claves del media-map por subcadena.
// Uso: node web-editor/_purga-cache.mjs ":fr_FR:"   (vacío = solo informe)
import { readFileSync, writeFileSync } from "node:fs";
import { fileURLToPath } from "node:url";

const file = fileURLToPath(new URL("./_cache/media-map.json", import.meta.url));
const suf = process.argv[2] ?? "";
const j = JSON.parse(readFileSync(file, "utf8"));
const antes = Object.keys(j.byKey ?? {}).length;
if (suf) for (const k of Object.keys(j.byKey)) if (k.includes(suf)) delete j.byKey[k];
if (suf) writeFileSync(file, JSON.stringify(j));
console.log(`media-map: ${antes} claves${suf ? ` → ${Object.keys(j.byKey).length} (purgadas las que contenían '${suf}')` : " (solo informe)"}`);
