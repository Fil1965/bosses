[English](README.md) · [Español](README.es.md) · **Français** · [Deutsch](README.de.md) · [Português](README.pt.md) · [中文](README.zh.md)

**Comprendre la bataille avant de se lancer. Survivre pendant.**

Bosses vous explique comment se déroule une phase de combat contre un boss — en quelques lignes claires, au moment opportun, sur le bon canal. Marquez le boss (ou laissez l'addon détecter le début de l'épreuve) et obtenez les informations tactiques essentielles : ce que le tank doit surveiller, qui doit esquiver quoi, ce qu'il faut interrompre, ce qu'il ne faut jamais faire. Il s'agit de connaissances écrites par des humains, testées au combat, et non d'une simple compilation de wiki : chaque raid, donjon et boss mondial possède des tactiques élaborées.

## Couverture — toutes les extensions de World of Warcraft

**12 packs de données · ~1 590 ennemis · Espagnol / Anglais / Français / Allemand / Portugais (Brésil) / Chinois (simplifié).** De Molten Core à Midnight et tout ce qui se trouve entre les deux :

| Extension | Packs | Boss | Langues |
|---|---|---|---|
| Vanilla | Molten Core, BWL, AQ20/40, Naxxramas, Onyxia + the classic dungeons (Gnomeregan, Scarlet Monastery, Maraudon, Uldaman, Zul'Farrak, Sunken Temple SoD, Stratholme, Dire Maul, Scholomance, Zul'Gurub…) | 334 | EN · ES · FR · DE · PT · ZH |
| The Burning Crusade | Karazhan to Sunwell, Heroic dungeons, Zul'Aman | 130 | EN · ES · FR · DE · PT · ZH |
| Wrath of the Lich King | Naxxramas, Ulduar, ICC + 11 dungeons, Onyxia, Trial of the Champion | 173 | EN · ES · FR · DE · PT · ZH |
| Cataclysm | Firelands, Dragon Soul, BWD + dungeons, ZA/ZG remakes | 113 | EN · ES · FR · DE · PT · ZH |
| Mists of Pandaria | All 5 raids, 9 dungeons, world bosses | 134 | EN · ES · FR · DE · PT · ZH |
| Warlords of Draenor | Highmaul, Blackrock Foundry, Hellfire Citadel + 8 dungeons, Tanaan elites | 91 | EN · ES · FR · DE · PT · ZH |
| Legion | All 5 raids, 12 dungeons, 20 world bosses | 147 | EN · ES · FR · DE · PT · ZH |
| Battle for Azeroth | Uldir → Ny'alotha, 12 dungeons, warfront bosses | 133 | EN · ES · FR · DE · PT · ZH |
| Shadowlands | Castle Nathria, Sanctum, Sepulcher + 9 dungeons + Tazavesh + world bosses | 90 | EN · ES · FR · DE · PT · ZH |
| Dragonflight | Aberrus, Amirdrassil, Vault of the Incarnates + 9 dungeons + world bosses | 92 | EN · ES · FR · DE · PT · ZH |
| The War Within | The raids and dungeons of Khaz Algar | 80 | EN · ES · FR · DE · PT · ZH |
| Midnight | Current-expansion raids, dungeons, lairs and world bosses | 71 | EN · ES · FR · DE · PT · ZH |

Chacun des douze packs ci-dessus embarque **les six langues complètes** ; une localisation n'est listée dans le jeu qu'une fois que toutes les entrées de ce pack ont été terminées, donc ce que vous voyez fonctionne.

## Points forts

- Explique **le PNJ ciblé** en quelques lignes concises — une commande, ou entièrement automatique dès le début de chaque rencontre (sans compteurs, sans automatisation du combat ; le mode automatique peut être désactivé)
- **Tactiques écrites à la main** avec des liens de sorts vérifiés : chaque puce nomme l'aptitude réelle, envoyée directement dans votre chat
- **Votre propre cadre d'alerte** : pendant le combat, le jeu bloque le chat des addons, de sorte que l'explication complète reste à l'écran — déplaçable, fermable (X / ESC), se cache automatiquement 15 s après le combat et, hors combat, un bouton "**Au chat**" la partage avec le groupe
- **Noms des sorts dans la langue du lecteur**, résolus en direct contre la base de données du jeu (l'infobulle affiche l'aptitude au survol)
- **Choix intelligent du canal** : sortie automatique par le chat de raid / groupe / instance LFG — ou force gilde / local / cadre uniquement
- **Bouton de la mini-carte**: à l'intérieur d'une instance, il ouvre une liste déroulante contenant tous les boss de cette zone ; à l'extérieur, il explique votre cible
- **Vos notes ont priorité sur la base de données**: `/bosses + texte` ajoute votre propre ligne à tout PNJ, dans n'importe quelle langue, par personnage
- **Modifiez n'importe quelle explication en jeu**: le bouton **éditer** du cadre d'alerte (ou `/bosses EDITAR [id]`) ouvre l'éditeur de notes — ajoutez des liens et des lignes, réorganisez-les ou supprimez-les, et testez le résultat sur le cadre
- Le mode **débogage** facultatif écrit un journal de détection dans votre dossier `WTF`, ce qui permet de signaler facilement un boss silencieux.

## Commandes

```text
/bosses               explique le PNJ ciblé
/bosses <id>          explique le PNJ portant cet id
/bosses + texte       ajoute ta propre ligne au PNJ ciblé
/bosses !             retire l'explication du PNJ ciblé
/bosses CANAL auto    sortie raid / groupe / LFG (par défaut)
/bosses CANAL guild   sortie en guilde
/bosses CANAL local   seulement votre fenêtre de chat
/bosses CANAL frame   seulement votre cadre d'alerte (briefings privés)
/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko   langue de l'explication (auto = suit votre jeu)
/bosses DEBUG on|off  journal de détection dans WTF ; /bosses log l'affiche
/bosses EDITAR [id]   ouvre l'éditeur d'explications (l'interface pour vos propres notes)
/bosses ?             aide complète
```

**À tester :** `/bosses 23576` — Nalorakk, Zul'Aman.

## Plus de ressources

Le projet **GitHub** associé contient le journal des modifications complet, les listes de contrôle et la documentation supplémentaire : [github.com/Fil1965/bosses](https://github.com/Fil1965/bosses). Un boss que vous aimeriez voir expliqué ? Tout est stocké par personnage — envoyez-moi votre fichier `Bosses.lua` sauvegardé et vos connaissances voyageront dans la prochaine version.

## Bon à savoir

- Créé sous le nom de *Boses* en 2011 ; le membre fondateur de la famille : essayez également **Nas** (salutations automatiques) et **MarcoPolo** (automatisation du commerce)
- Fonctionne sur **retail (Midnight 12.1)** et **Classic**: MoP Classic, TBC Classic et Classic Era
- Le dépôt embarque aussi un **éditeur web** local pour retoucher les packs de données (outil de développement ; s'exécute en local avec `npm start`)
- Conforme à la politique des addons de Modern: information sous votre contrôle, jamais d'automatisation de combat
- **Mise à niveau à partir de l'ancien addon Boses ?** Copiez `WTF\Account\<account>\SavedVariables\Boses.lua` → `Bosses.lua` (ainsi que les copies par caractère), rechargez, et vos notes, paramètres et journal de débogage seront transférés automatiquement.
