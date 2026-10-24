// scripts/limite-chat.mjs
// Reparte las viñetas de los packs que pesan más de lo que el chat del
// cliente acepta: el límite real son 255 caracteres POR MENSAJE y el cliente
// moderno ya no trunca — RECHAZA el envío con «Chat message limits exceeded»
// (2026-10: las viñetas del Jinete decapitado murieron enteras en
// INSTANCE_CHAT). La medida es la del CABLE — texto saneado, en BYTES UTF-8:
// el cirílico pesa ×2 y el CJK ×3 — y el presupuesto de la casa es
// LIMITE_CHAT = 240 (web-editor/_packs.mjs, cuyo partirPorLimiteChat es el
// mismo algoritmo que aquí se aplica; el core trocea lo que se le escape con
// partirAlCable en salida()).
//
// Uso:
//   node scripts/limite-chat.mjs --dry    ensaya: informe sin escribir
//   node scripts/limite-chat.mjs          aplica y escribe el informe
//   node scripts/limite-chat.mjs --check  solo verifica (exit 1 si > 255)
//
// Idempotente: una segunda pasada sobre lo ya repartido no cambia nada.
// Informe: scripts/informe-limite-chat.txt.

import { readFileSync, writeFileSync, readdirSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { LIMITE_CHAT, luaStr, unluaStr, partirPorLimiteChat, saneaCable } from "../web-editor/_packs.mjs";

const RAIZ = dirname(dirname(fileURLToPath(import.meta.url)));
const DRY = process.argv.includes("--dry");
const CHECK = process.argv.includes("--check");
const LIMITE_DURO = 255; // el límite REAL del cliente

// Viñeta por línea del FICHERO: contenido escapado tal cual está en disco
const RE_VINYETA = /^(\s*)"((?:[^"\\]|\\.)*)"(,)?\s*$/;
// Viñeta en la MISMA línea que la apertura del bloque (`pack["X"] = { "Nom",
// "* ..." };`): formato que este script NO toca por seguridad — aviso y a mano.
const RE_INLINE = /=\s*\{[^}]*"\*[^"]*"/;

const informe = [];
let ficherosConCambios = 0;
let lineasPartidas = 0;
let sobreDuro = 0;
let avisosInline = 0;

for (const d of readdirSync(RAIZ, { withFileTypes: true })) {
	if (!d.isDirectory() || !d.name.startsWith("Bosses_")) continue;
	const carpeta = join(RAIZ, d.name);
	for (const f of readdirSync(carpeta)) {
		const mf = new RegExp(`^${d.name}_(es|en|fr|de|pt|ru|zh|ko)\\.lua$`).exec(f);
		if (!mf) continue;
		const fich = join(carpeta, f);
		const texto = readFileSync(fich, "utf8");
		const eol = texto.includes("\r\n") ? "\r\n" : "\n";
		const lineas = texto.split(/\r?\n/);
		const cambios = new Map(); // idx → líneas nuevas
		let avisos = 0;

		lineas.forEach((linea, idx) => {
			// líneas inline de apertura; los COMENTARIOS de ejemplo (-- pack[... =
			// { ... "* consejo 1" ... }) no son datos: fuera
			const esComentario = linea.trimStart().startsWith("--");
			if (!esComentario && RE_INLINE.test(linea)) {
				avisos++;
				avisosInline++;
				informe.push(`AVISO  ${d.name}/${f}:${idx + 1}: viñeta en la línea de apertura del bloque — repártela a mano`);
				return;
			}
			if (esComentario) return;
			const mm = RE_VINYETA.exec(linea);
			if (!mm || !mm[2].startsWith("* ")) return;
			const semantica = unluaStr(`"${mm[2]}"`);
			const peso = Buffer.byteLength(saneaCable(semantica), "utf8");
			if (peso <= LIMITE_CHAT) return;
			if (peso > LIMITE_DURO) sobreDuro++;
			const partes = partirPorLimiteChat(semantica);
			const nuevas = partes.map((p, k) => {
				const ultima = k === partes.length - 1;
				return `${mm[1]}${luaStr(p)}${ultima ? (mm[3] ?? "") : ","}`;
			});
			cambios.set(idx, nuevas);
			lineasPartidas++;
			informe.push(`${d.name}/${f}:${idx + 1}  ${peso} → ${partes.map((p) => Buffer.byteLength(saneaCable(p), "utf8")).join(" + ")} B`);
			for (const p of partes) informe.push(`    ${p.length > 150 ? p.slice(0, 150) + "…" : p}`);
		});

		if (!cambios.size) continue;
		const salida = [];
		for (let i = 0; i < lineas.length; i++) {
			if (cambios.has(i)) salida.push(...cambios.get(i));
			else salida.push(lineas[i]);
		}
		if (!DRY && !CHECK) writeFileSync(fich, salida.join(eol), "utf8");
		ficherosConCambios++;
		if (avisos) informe.push(`AVISO  ${d.name}/${f}: ${avisos} línea(s) inline sin tocar`);
		if (DRY) informe.push(`DRY    ${d.name}/${f}: ${cambios.size} línea(s) partidas — NO escrito`);
	}
}

const resumen = `ficheros con cambios: ${ficherosConCambios} · viñetas partidas: ${lineasPartidas} · sobre el límite duro de ${LIMITE_DURO}: ${sobreDuro} · inline a mano: ${avisosInline}`;
if (!CHECK) {
	writeFileSync(join(RAIZ, "scripts", "informe-limite-chat.txt"), informe.join("\n") + "\n" + resumen + "\n", "utf8");
}
console.log(resumen);
if (CHECK) {
	if (sobreDuro > 0) {
		console.log(`--check: FALLA (${sobreDuro} viñeta(s) por encima de ${LIMITE_DURO} al cable)`);
		process.exit(1);
	}
	console.log(`--check: OK (nada por encima de ${LIMITE_DURO} al cable)`);
}