// remiendo-fr.mjs — remiendo tras las tandas FR de Cata:
// 1) cierres de enlace rotos `|h r` → `|h|r`
// 2) gramática y redacciones rotas detectadas en la revisión
// 3) títulos del diario frFR exactos donde el calco quedó torcido
import { readFileSync, writeFileSync } from 'fs';

const fich = 'Bosses_Cata/Bosses_Cata_fr.lua';
let t = readFileSync(fich, 'utf8');
const antes = t;

// 1) cierres rotos
t = t.replaceAll(']|h r', ']|h|r');
t = t.replaceAll(' ]h r', ']|h|r'); // residuos raros si los hubiera

// 2/3) arreglos de redacción
const reglas = [
  ['[Vils ratés]', '[Vil rata]'],                                    // título diario frFR exacto (-2946)
  ['la fièvre des sangs', 'la Furie sanguinaire'],                   // Bloodlust frFR
  ['150 de dégâts', '150k de dégâts'],
  ['se placèrent', 'se placent'],
  ['il bless les proches', 'il blesse les proches'],
  ['qui flaquettent avec', 'qui marquent le sol avec'],
  ['sortir INMÉDIATEMENT', 'sortir IMMÉDIATEMENT'],
  ['(poussiblement un paladin sacré', '(idéalement un paladin sacré'],
  ['se esquivent', 's\'esquivent'],
  ['le groupe taper son pied', 'le groupe tape son pied'],
  ['pour accélérer leur dégât tant que dure le buff', 'pour augmenter les dégâts qu\'ils font tant que dure le buff'],
  // Nefarian FASE 1: redacción rota de la subyugación -> espejo del ES
  ["invoque des |cff71d5ff|Hspell:-3280|h[Grêle d'os]|h|r avant d'atterrir |cff71d5ff|Hspell:-3295|h[Assujettissement]|h|r sur un joueur (leur |cff71d5ff|Hspell:-3297|h[Puissance dérobée]|h|r se soigne, ils ne doivent pas prendre de dégâts)",
   "invoque des |cff71d5ff|Hspell:-3280|h[Grêle d'os]|h|r à l'atterrissage et applique l'|cff71d5ff|Hspell:-3295|h[Assujettissement]|h|r sur un joueur (sa |cff71d5ff|Hspell:-3297|h[Puissance dérobée]|h|r se soigne, le joueur ne doit pas être touché)"],
  // Toxitron: clara la condición de los nubes
  ['(dedans +50% de dégâts subis: personne)', '(personne dedans: +50% de dégâts subis)'],
  // Beth'tilac: la frase de "elles font leur ..." rota
  ['elles font leur |cff71d5ff|Hspell:-2778|h[Jeunes araignées braisetoile]',
   'elles mangent les |cff71d5ff|Hspell:-2778|h[Jeunes araignées braisetoile]'],
  // Beth'tilac: "provocateur" correcto
  ['Le tank provocateur une', 'Le tank provoque une'],
];

for (const [a, b] of reglas) {
  if (t.includes(a)) {
    t = t.replaceAll(a, b);
    console.log('ARREGLADO: ' + a.slice(0, 60));
  }
}

// residuos del borrador que sigan
for (const mal of ['hmm', 'MMM ', 'mmm\n']) {
  if (t.includes(mal)) console.log('RESIDUO PRESENTE: ' + mal);
}

writeFileSync(fich, t);
console.log('Bytes: ' + antes.length + ' -> ' + t.length);