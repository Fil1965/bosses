// remiendo-fr3.mjs — ajustes finales de género/redacción en FR Cata
import { readFileSync, writeFileSync } from 'fs';

const fich = 'Bosses_Cata/Bosses_Cata_fr.lua';
let t = readFileSync(fich, 'utf8');
const antes = t;

const reglas = [
  ['Tempête de Fèu abject', 'Tempête de Feu abject'],
  ['Il faut s\'écarter des |cff71d5ff|Hspell:79340', 'S\'écarter des |cff71d5ff|Hspell:79340'],
  ['Le tenir dos au groupe', 'Le tank le garde dos au groupe'],
  ['|h[Bombe de fumée étouffante]|h|r: un fumée qui étourdit, sortie de là', '|h[Bombe de fumée étouffante]|h|r: une fumée qui étourdit, sort de là'],
  ['ne la traverses pas', 'ne la traverse pas'],
  ['buffe qui le piétine', 'buffe celui qui le piétine'],
  ['buffe le groupe et full DPS final', 'buffe le raid et full DPS final'],
  ['ce joueur courir loin du groupe', 'ce joueur court loin du groupe'],
  ['tous rentrer dans le triangle', 'tout le monde rentre dans le triangle'],
  ['|h[Vision terrifiante]|h|r s\'incante long: interrompez-la', '|h[Vision terrifiante]|h|r a une longue incantation: interrompez-la'],
];

for (const [a, b] of reglas) {
  if (t.includes(a)) {
    t = t.replaceAll(a, b);
    console.log('ARREGLADO: ' + a.slice(0, 56));
  } else {
    console.log('no estaba: ' + a.slice(0, 56));
  }
}

// El P.fr = fr; debe quedar una sola vez al final
const finales = [...t.matchAll(/P\.fr = fr;/g)].length;
if (finales !== 1) {
  console.log('AVISO: P.fr = fr; aparece ' + finales + ' veces');
}

writeFileSync(fich, t);
console.log('Bytes: ' + antes.length + ' -> ' + t.length);