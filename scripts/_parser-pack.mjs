// scripts/_parser-pack.mjs
// Parser compartido de los ficheros de datos de un pack (Bosses_<X>_es.lua / _en.lua).
// Lo usan pendientes.mjs y comparar-dbm.mjs; el fichero de idioma es la fuente
// de verdad y este parser NO se mantiene a mano aparte de los formatos nuevos.
import { readFileSync } from "node:fs";

// Devuelve Map npcId -> nombre (elemento 1 de la entrada).
// Soporta: entradas inline (pack["ID"] = { ... };), compartidas (bos = { ... };
// seguido de pack["ID"] = bos;) y asignaciones partidas en dos líneas.
export function parseEntries(file) {
	const map = new Map();
	const lines = readFileSync(file, "utf8").split(/\r?\n/);
	const reInline = /^\s*pack\["(\d+)"\]\s*=\s*\{(.*)$/;
	const reSharedOpen = /^\s*bos\s*=\s*\{(.*)$/;
	const reSharedAssign = /pack\["(\d+)"\]\s*=\s*bos\s*;/g;
	const reWrapped = /^\s*pack\["(\d+)"\]\s*=\s*$/;
	const reClose = /^\s*\};\s*$/;
	const firstName = (s) => {
		const m = /"((?:[^"\\]|\\.)*)"/.exec(s);
		return m ? m[1] : null;
	};

	let block = null; // 'inline' | 'shared' | null
	let inlineKey = null;
	let curName = null; // nombre en captura del bloque en curso
	let sharedName = null; // nombre del último bloque compartido cerrado
	let pendingCont = null; // id con RHS en la línea siguiente

	for (const line of lines) {
		const mA = [...line.matchAll(reSharedAssign)];
		if (mA.length) {
			if (sharedName !== null) for (const m of mA) map.set(m[1], sharedName);
			continue;
		}
		if (pendingCont !== null) {
			if (/^\s*bos\s*;/.test(line)) map.set(pendingCont, sharedName);
			pendingCont = null;
			continue;
		}
		const mW = reWrapped.exec(line);
		if (mW) { pendingCont = mW[1]; continue; }

		const mS = reSharedOpen.exec(line);
		if (mS) { block = "shared"; curName = firstName(mS[1]); continue; }

		const mI = reInline.exec(line);
		if (mI) {
			block = "inline";
			inlineKey = mI[1];
			const nm = firstName(mI[2]);
			if (nm !== null) { map.set(inlineKey, nm); block = null; inlineKey = null; }
			continue;
		}

		if (block !== null && curName === null) {
			const nm = firstName(line);
			if (nm !== null) curName = nm;
		}

		if (reClose.test(line)) {
			if (block === "shared") sharedName = curName;
			if (block === "inline" && inlineKey !== null && curName !== null) map.set(inlineKey, curName);
			block = null; inlineKey = null; curName = null;
		}
	}
	return map;
}