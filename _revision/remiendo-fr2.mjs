// remiendo-fr2.mjs — limpieza de la tanda 29 de FR Cata
import { readFileSync, writeFileSync } from 'fs';

const fich = 'Bosses_Cata/Bosses_Cata_fr.lua';
let t = readFileSync(fich, 'utf8');
const antes = t;

const reglas = [
  // Umbriss: bullet inventado de más (el ES no lo tiene)
  ['    "* Attention quand il lance le |cff71d5ff|Hspell:92569|[Coup-éclair]|h|r au groupe et un DPS doit s\'éloigner."\n', ''],
  ['se déplaça', 'se déplace'],
  // Throne: "bestias" ES mezclado en fr
  ['sortent des bestias et 3 fouetteurs', 'sortent des bestes et 3 fouetteurs'],
  ['le tank de las bestia reçoive bien un soutient pour ne pas mourir', 'le tank des bestes reçoive du soutient pour ne pas mourir'],
  ['Le tank poursuit le dernier Behemoth dehors et les bestias', 'Le tank continue le dernier Behemoth dehors et las bestes'],
  ['Le tank continue le dernier Behemoth dehors et las bestes', 'Le tank garde le dernier Behemoth hors de la salle avec les bestes'],
  // Ozruk: los corchetes con id negativo y sin color (espejo del ES 82415/92410/92662/78939/92426)
  ['|cff71d5ff|Hspell:78807|h[Éclatement]|h|r', '|cff71d5ff|Hspell:78807|h[Briser]|h|r'],
  ['|cff71d5ff|Hspell:92410|[Fissure]|h|r', '|cff71d5ff|Hspell:92410|h[Fissuer]|h|r'],
  ['|cff71d5ff|Hspell:92662|[Éclatement]|h|r', '|cff71d5ff|Hspell:92662|h[Éclat]|h|r'],
  ['|cff71d5ff|Hspell:78939|[Bulwark d\'élémentium]|h|r', '|cff71d5ff|Hspell:78939|[Bastion d\'élémentium]|h|r'],
  ['|cff71d5ff|Hspell:92426|[Paralysie]|h|r', '|cff71d5ff|Hspell:92426|[Apathie]|h|r'],
  // Azil: "Agarre de force" ES mezclado
  ['[Agarre de force]', '[Emprise de force]'],
  // Erudax: estructura y títulos
  ['pour esquiver que les |cff71d5ff|Hspell:79466|[Sombras vinculadoras]|h|r n\'affectent', 'pour éviter que les |cff71d5ff|Hspell:79466|[Ombres excavatrices]|h|r n\'affectent'],
  ['|cff71d5ff|Hspell:75664|[Bourrasque d\'ombres]|h|r tout le monde se place', '|cff71d5ff|Hspell:75664|h[Rafale d\'ombres]|h|r tout le monde se place'],
  // Vórtice: títulos
  ['|cff71d5ff|Hspell:86292|[Bouclier de cyclone]|h|r', '|cff71d5ff|Hspell:86292|h[Bouclier de cyclone]|h|r'],
  ['|cff71d5ff|Hspell:87618|[Adhésion statique]|h|r', '|cff71d5ff|Hspell:87618|h[Adhésion statique]|h|r'],
  ['|cff71d5ff|Hspell:86911|[Champ de mise à l\'instable]|h|r', '|cff71d5ff|Hspell:86911|h[Champ de mise à la terre instable]|h|r'],
  // ZA: verbos ES
  ['Romper le totem de foudre', 'Rompre le totem de foudre'],
  ['Romper immédiatement les totems', 'Rompre immédiatement les totems'],
  ['2 petits lynx au plus vite', '2 félins au plus vite'],
  // ZG
  ['Éviter l\'alitement vert', 'Éviter le souffle vert'],
  ['le Décharge Voodoo', 'la Décharge vaudou'],
  ['Interrompre la Courroux', 'Interrompre la Colère'],
  ['Sortir du zone', 'Sortir de la zone'],
  ['de la |cff71d5ff|Hspell:96710|[Nuage de foudre]|h|r', 'de la |cff71d5ff|Hspell:96710|h[Nuage de foudre]|h|r'],
  ['de la |cff71d5ff|Hspell:89932|[Ligne de faille]|h|r', 'de la |cff71d5ff|Hspell:89932|h[Ligne de faille]|h|r'],
  ['la |cff71d5ff|Hspell:68987|[Poursuite]|h|r', 'la |cff71d5ff|Hspell:68987|h[Poursuite]|h|r'],
  ['des |cff71d5ff|Hspell:96645|[Mille lames]|h|r', 'des |cff71d5ff|Hspell:96645|h[Mille lames]|h|r'],
  ['la |cff71d5ff|Hspell:42402|[Charge]|h|r', 'la |cff71d5ff|Hspell:42402|h[Charge]|h|r'],
  ['la |cff71d5ff|Hspell:42395|[Entaille lacérante]|h|r', 'la |cff71d5ff|Hspell:42395|h[Entaille lacérante]|h|r'],
  ['la |cff71d5ff|Hspell:61911|[Perturbation statique]|h|r', 'la |cff71d5ff|Hspell:61911|h[Perturbation statique]|h|r'],
  ['la |cff71d5ff|Hspell:45336|[Surcharge électrique]|h|r', 'la |cff71d5ff|Hspell:45336|h[Surcharge électrique]|h|r'],
];

for (const [a, b] of reglas) {
  if (t.includes(a)) {
    t = t.replaceAll(a, b);
    console.log('ARREGLADO: ' + a.slice(0, 56));
  } else {
    console.log('no estaba: ' + a.slice(0, 56));
  }
}

writeFileSync(fich, t);
console.log('Bytes: ' + antes.length + ' -> ' + t.length);