// verifica-fr-todos.mjs — paridad de ids de cada pack (es vs fr)
import { readFileSync } from 'fs';

const idsDe = f => [...new Set([...readFileSync(f, 'utf8').matchAll(/pack\["(\d+)"\]/g)].map(m => m[1]))];

for (const [pack, fichs] of [
  ['Cata', ['Bosses_Cata/Bosses_Cata_es.lua', 'Bosses_Cata/Bosses_Cata_en.lua', 'Bosses_Cata/Bosses_Cata_fr.lua']],
  ['TWW', ['Bosses_TWW/Bosses_TWW_es.lua', 'Bosses_TWW/Bosses_TWW_en.lua', 'Bosses_TWW/Bosses_TWW_fr.lua']],
  ['Midnight', ['Bosses_Midnight/Bosses_Midnight_es.lua', 'Bosses_Midnight/Bosses_Midnight_en.lua', 'Bosses_Midnight/Bosses_Midnight_fr.lua']],
  ['MoP', ['Bosses_MoP/Bosses_MoP_es.lua', 'Bosses_MoP/Bosses_MoP_en.lua', 'Bosses_MoP/Bosses_MoP_fr.lua']],
]) {
  const [es, en, fr] = fichs.map(f => { try { return idsDe(f); } catch { return null; } });
  if (!fr) { console.log(pack + ': FR no existe todavia (ES ' + (es ? es.length : '?') + '/EN ' + (en ? en.length : '?') + ')'); continue; }
  const faltanEnFr = es.filter(x => !fr.includes(x));
  const sinEs = fr.filter(x => !es.includes(x));
  console.log(pack + ': ES=' + es.length + ' EN=' + en.length + ' FR=' + fr.length + ' | FR falta: ' + (faltanEnFr.join(',') || '(ninguno)') + ' | FR de mas: ' + (sinEs.join(',') || '(ninguno)'));
}