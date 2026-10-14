// verifica-de-todos.mjs — paridad de ids de cada pack (es vs de)
import { readFileSync } from 'fs';

const idsDe = f => [...new Set([...readFileSync(f, 'utf8').matchAll(/pack\["(\d+)"\]/g)].map(m => m[1]))];

for (const [pack, fichs] of [
  ['Cata', ['Bosses_Cata/Bosses_Cata_es.lua', 'Bosses_Cata/Bosses_Cata_en.lua', 'Bosses_Cata/Bosses_Cata_de.lua']],
  ['TWW', ['Bosses_TWW/Bosses_TWW_es.lua', 'Bosses_TWW/Bosses_TWW_en.lua', 'Bosses_TWW/Bosses_TWW_de.lua']],
  ['Midnight', ['Bosses_Midnight/Bosses_Midnight_es.lua', 'Bosses_Midnight/Bosses_Midnight_en.lua', 'Bosses_Midnight/Bosses_Midnight_de.lua']],
  ['MoP', ['Bosses_MoP/Bosses_MoP_es.lua', 'Bosses_MoP/Bosses_MoP_en.lua', 'Bosses_MoP/Bosses_MoP_de.lua']],
]) {
  const [es, en, de] = fichs.map(f => { try { return idsDe(f); } catch { return null; } });
  if (!de) { console.log(pack + ': DE no existe todavia (ES ' + (es ? es.length : '?') + '/EN ' + (en ? en.length : '?') + ')'); continue; }
  const faltanEnDe = es.filter(x => !de.includes(x));
  const sinEs = de.filter(x => !es.includes(x));
  console.log(pack + ': ES=' + es.length + ' EN=' + en.length + ' DE=' + de.length + ' | DE falta: ' + (faltanEnDe.join(',') || '(ninguno)') + ' | DE de mas: ' + (sinEs.join(',') || '(ninguno)'));
}
