// Sonda: estructura cruda de una página de spell de Wowhead — ¿dónde está el icono?
import process from "node:process";

const UA = { "User-Agent": "Bosses-addon-editor/1.0 (contacto: pming@gmail.com)", "Accept-Language": "es-ES,es;q=0.9,en;q=0.8" };

for (const id of ["1251386", "438025"]) {
	const res = await fetch(`https://www.wowhead.com/spell=${id}`, { headers: UA, signal: AbortSignal.timeout(15000) });
	const html = res.ok ? await res.text() : "";
	console.log(`spell=${id} → HTTP ${res.status}, ${html.length} bytes`);
	const patrones = [
		[/images\/wow\/icons\/large\/([a-z0-9_]+)\.jpg/gi, "zamimg large"],
		[/images\/wow\/icons\/56\/([a-z0-9_]+)\.jpg/gi, "zamimg 56"],
		[/"icon"\s*:\s*"([a-z0-9_]+)"/gi, "json icon"],
		[/data-icon="([a-z0-9_]+)"/gi, "data-icon"],
	];
	for (const [re, etiqueta] of patrones) {
		const m = [...html.matchAll(re)].slice(0, 3).map((x) => x[1]);
		if (m.length) console.log(`   ${etiqueta}: ${m.join(", ")}`);
	}
	await new Promise((r) => setTimeout(r, 400));
}
process.exit(0);