// verifica-fr.mjs — integridad de los packs de idioma de Cata (ES/EN/FR)
import { readFileSync } from 'fs';

const carga = (f, clave) => {
  const t = readFileSync(f, 'utf8');
  const ids = [...t.matchAll(/pack\["(\d+)"\]/g)].map(m => m[1]);
  const uniq = [...new Set(ids)];
  return { t, ids, uniq };
};

const fr = carga('Bosses_Cata/Bosses_Cata_fr.lua');
const es = carga('Bosses_Cata/Bosses_Cata_es.lua');
const en = carga('Bosses_Cata/Bosses_Cata_en.lua');

console.log('FR entradas:', fr.ids.length, 'unicas:', fr.uniq.length);
console.log('ES unicas:', es.uniq.length, 'EN unicas:', en.uniq.length);
console.log('cierre roto "|h r":', (fr.t.match(/\|h r/g) || []).length);
console.log('garrapatas:', (fr.t.match(/hmm|MMM/g) || []).length);
console.log('llaves abiertas/cerradas:', (fr.t.match(/\{/g) || []).length, '/', (fr.t.match(/\}/g) || []).length);

const sf = fr.uniq.filter(x => !es.uniq.includes(x));
const df = es.uniq.filter(x => !fr.uniq.includes(x));
console.log('FR sin ES:', sf.join(',') || '(ninguno)');
console.log('ES sin FR:', df.join(',') || '(ninguno)');

// enlaces con apertura sin id (el caso Beth que arreglé)
const enlacesRotos = [...fr.t.matchAll(/\([^)]*\|h\[/g)].length;
console.log('posibles aperturas incompletas "|h[":', [...fr.t.matchAll(/\|h\[/g)].filter(m => !/\|Hspell:/.test(fr.t.slice(Math.max(0, m.index - 60), m.index + 6))).length);