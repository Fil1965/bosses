// nombres-fr-midnight.mjs — actualiza los 8 UNKNOWN del map fr de Midnight (Wowhead)
import { readFileSync, writeFileSync } from 'fs';

const f = '_nombres/fr-Bosses_Midnight.json';
const m = JSON.parse(readFileSync(f, 'utf8'));
const fix = {
  '240387': "Belo'ren",
  '241539': 'Kasreth',
  '244424': 'Pincombe',
  '244762': "Lu'ashal",
  '249776': "Thorm'belan",
  '252959': 'Nymrissa Mande-vagues',
  '259181': 'Vashnik',
  '267861': "Kith'ix",
};
let n = 0;
for (const [k, v] of Object.entries(fix)) {
  if (typeof m[k] === 'string') m[k] = {}; // "UNKNOWN" era string simple
  if (m[k] && typeof m[k] === 'object') {
    m[k].fr = v;
    m[k].criaturas = [v];
    m[k].fuente = 'wowhead-fr';
    n++;
  } else {
    console.log('Aviso: ' + k + ' no estaba en el map');
  }
}
writeFileSync(f, JSON.stringify(m, null, 1) + '\n');
console.log('actualizados: ' + n);