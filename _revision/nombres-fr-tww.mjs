// nombres-fr-tww.mjs — actualiza los world bosses TWW con Wowhead fr
import { readFileSync, writeFileSync } from 'fs';

const f = '_nombres/fr-Bosses_TWW.json';
const m = JSON.parse(readFileSync(f, 'utf8'));
const fix = {
  '220999': "Agrégation d'horreurs",
  '221067': 'Orta',
  '221084': 'Kordac',
  '221224': 'Shurrai',
  '231821': 'Gobleone',
  '238319': 'Reshanor',
};
let n = 0;
for (const [k, v] of Object.entries(fix)) {
  if (typeof m[k] === 'string') m[k] = {};
  m[k].fr = v;
  m[k].criaturas = [v];
  m[k].fuente = 'wowhead-fr';
  n++;
}
writeFileSync(f, JSON.stringify(m, null, 1) + '\n');
console.log('actualizados: ' + n);