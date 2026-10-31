[English](README.md) · [Español](README.es.md) · **Français** · [Deutsch](README.de.md) · [Português](README.pt.md) · [中文](README.zh.md) · [Русский](README.ru.md) · [한국어](README.ko.md)

**Comprendre la bataille avant de se lancer. Survivre pendant.**

Bosses vous explique comment se déroule une phase de combat contre un boss — en quelques lignes claires, au moment opportun, sur le bon canal. Marquez le boss (ou laissez l'addon détecter le début de l'épreuve) et obtenez les informations tactiques essentielles : ce que le tank doit surveiller, qui doit esquiver quoi, ce qu'il faut interrompre, ce qu'il ne faut jamais faire. L'addon vous laisse la base toute faite : structure et suggestions pour chaque raid, donjon et boss mondial, prêtes à l'emploi sans rien écrire. Le vrai jeu vient par-dessus : les corrections et les explications qu'apportent chaque joueur — ou chaque guilde — transforment cette base en la tactique de votre groupe.

## Couverture — toutes les extensions de World of Warcraft

**13 packs de données · ~1 810 ennemis · Espagnol / Anglais / Français / Allemand / Portugais (Brésil) / Chinois (simplifié) / Russe / Coréen.** De Molten Core à Midnight et tout ce qui se trouve entre les deux, plus la ligne WoW Forever (Classic+) :

| Extension | Packs | Boss | Langues |
|---|---|---|---|
| Vanilla | Molten Core, BWL, AQ20/40, Naxxramas, Onyxia + the classic dungeons (Gnomeregan, Scarlet Monastery, Maraudon, Uldaman, Zul'Farrak, Sunken Temple SoD, Stratholme, Dire Maul, Scholomance, Zul'Gurub…) | 336 | EN · ES · FR · DE · PT · ZH · RU · KO |
| The Burning Crusade | Karazhan to Sunwell, Heroic dungeons, Zul'Aman | 130 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Wrath of the Lich King | Naxxramas, Ulduar, ICC + 11 dungeons, Onyxia, Trial of the Champion | 173 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Cataclysm | Firelands, Dragon Soul, BWD + dungeons, ZA/ZG remakes | 113 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Mists of Pandaria | All 5 raids, 9 dungeons, world bosses | 135 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Warlords of Draenor | Highmaul, Blackrock Foundry, Hellfire Citadel + 8 dungeons, Tanaan elites | 91 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Legion | All 5 raids, 12 dungeons, 20 world bosses | 147 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Battle for Azeroth | Uldir → Ny'alotha, 12 dungeons, warfront bosses | 133 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Shadowlands | Castle Nathria, Sanctum, Sepulcher + 9 dungeons + Tazavesh + world bosses | 90 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Dragonflight | Aberrus, Amirdrassil, Vault of the Incarnates + 9 dungeons + world bosses | 92 | EN · ES · FR · DE · PT · ZH · RU · KO |
| The War Within | The raids and dungeons of Khaz Algar | 80 | EN · ES · FR · DE · PT · ZH · RU · KO |
| Midnight | Current-expansion raids, dungeons, lairs and world bosses | 71 | EN · ES · FR · DE · PT · ZH · RU · KO |
| WoW Forever (Classic+) | La ligne Camelot : City of Dalaran, Excavation Site, Ruins of Lordaeron, Hall of Thanes + 18 donjons classiques | 222 | EN · ES · FR · DE · PT · ZH · RU · KO |

Chacun des treize packs ci-dessus embarque **les huit langues complètes** ; une localisation n'est listée dans le jeu qu'une fois que toutes les entrées de ce pack ont été terminées, donc ce que vous voyez fonctionne.

## Points forts

- Explique **le PNJ ciblé** en quelques lignes concises — une commande, ou entièrement automatique dès le début de chaque rencontre (sans compteurs, sans automatisation du combat ; le mode automatique peut être désactivé)
- **Suggestions prêtes à l'emploi et corrigibles** avec des liens de sorts vérifiés : chaque puce nomme l'aptitude réelle, envoyée directement dans votre chat
- **Votre propre cadre d'alerte** : pendant le combat, le jeu bloque le chat des addons, de sorte que l'explication complète reste à l'écran — déplaçable, fermable (X / ESC), **redimensionnable**, repliable en une simple barre de titre, à position verrouillable, avec des boutons précédent/suivant pour revenir aux explications déjà vues, et une opacité, une hauteur maximale et une taille de police réglables (section « Cadre d'alerte » du panneau, avec l'option de le garder toujours visible au lieu de le masquer automatiquement après 15 s) ; hors combat, un bouton "**Au chat**" la partage avec le groupe, et en mode cadre seul un bouton "**Au groupe**" l'envoie vers votre chat de raid / instance / groupe / say
- **Noms des sorts dans la langue du lecteur**, résolus en direct contre la base de données du jeu (l'infobulle affiche l'aptitude au survol)
- **Choix intelligent du canal** : sortie automatique par le chat de raid / groupe / instance LFG — ou force gilde / local / cadre uniquement
- **Bouton de la mini-carte**: à l'intérieur d'une instance, il ouvre une liste déroulante contenant tous les boss de cette zone ; à l'extérieur, il explique votre cible
- **Vos notes ont priorité sur la base de données**: `/bosses + texte` ajoute votre propre ligne à tout PNJ, dans n'importe quelle langue, par personnage
- **Modifiez n'importe quelle explication en jeu**: le bouton **éditer** du cadre d'alerte (ou `/bosses EDITAR [id]`) ouvre l'éditeur de notes — ajoutez des liens et des lignes, réorganisez-les ou supprimez-les, et testez le résultat sur le cadre ; un PNJ sans entrée apparaît lui aussi dans le cadre, prêt à être rédigé de zéro
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

- Créé sous le nom de *Boses* en 2011 ; le membre fondateur de la famille : essayez également **[Nas](https://www.curseforge.com/wow/addons/nas)** (salutations automatiques) et **[MarcoPolo](https://www.curseforge.com/wow/addons/marcopolo)** (automatisation du commerce)
- Fonctionne sur **retail (Midnight 12.1)** et **Classic**: MoP Classic, TBC Classic, Classic Era et **WoW Forever (1.60.1, Classic+)**
- Le dépôt embarque aussi un **éditeur web** local pour retoucher les packs de données (outil de développement ; s'exécute en local avec `npm start`)
- Conforme à la politique des addons de Modern: information sous votre contrôle, jamais d'automatisation de combat
- **Mise à niveau à partir de l'ancien addon Boses ?** Copiez `WTF\Account\<account>\SavedVariables\Boses.lua` → `Bosses.lua` (ainsi que les copies par caractère), rechargez, et vos notes, paramètres et journal de débogage seront transférés automatiquement.
