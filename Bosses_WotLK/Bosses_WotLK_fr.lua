--[[
	Bosses_WotLK_fr.lua
		Datos en français of the WoTLK
		pack: the Northrend dungeons and its era raids,
		Onyxia and the sancta. Sources: DBM-Raids-WoTLK and DBM-Party-WotLK
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Onyxia's Lair : Zona 249 --
-- --------------------------------- --

pack["10184"] = { "Onyxia",
"* |cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r: Fort grosse coup en avant - maintenir le raid derrière le tank.",
"* |cff71d5ff|Hspell:18392|h[Fireball]|h|r: Lancer répétitif de fireball sur un joueur aléatoire - les soigneurs doivent être prêts.",
"* |cff71d5ff|Hspell:18584|h[Deep Breath]|h|r: À 66 %, elle s'élève et inflige des dégâts sur une ligne dans la salle - quittez immédiatement la ligne marquée.",
"* |cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r: À 40 %, elle lance une attaque AoE qui provoque la peur, donc placez des totems de tremblement et des boucliers anti-peur dès le début.",
"* |cff71d5ff|Hspell:68959|h[Whelps]|h|r: À 40 %, les whelps éclosent des œufs autour de la zone - Utilisez des attaques à zone pour les éliminer loin du tank.",
};

-- --------------------------------- --
-- Naxxramas : Zona 533 --
-- --------------------------------- --

pack["15956"] = { "Anub’Rekhan",
"* |cff71d5ff|Hspell:28785|h[Nid d'insectes]|h|r: Il creuse et envoie une nuée de locusts qui étouffent et drainent - restez devant son cercle en expansion.",
"* |cff71d5ff|Hspell:28783|h[Impale]|h|r: Les lignes de projectiles traversent la guilde - se disperser de tous.",
};

pack["15953"] = { "Grande veuve Faerlina",
"* |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r: Tuer un serviteur près d'elle déclenche l'étreinte - cela silencie Faerlina, elle et le raid, et retarde la frénésie.",
"* |cff71d5ff|Hspell:28798|h[Frenzy]|h|r: Si l'étreinte expire, elle entre en état de fureur - tank, défenses et soins importants.",
};

pack["15952"] = { "Maexxna",
"* |cff71d5ff|Hspell:28622|h[Enveloppement Web]|h|r: Un joueur est emprisonné contre le mur - libérez-le rapidement.",
"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: L'attaque à large spectre la stunne à portée de mêlée - les attaques à courte portée juste derrière elle.",
"* |cff71d5ff|Hspell:17332|h[Araignées]|h|r: Les araignées se multiplient en vagues - Éliminez-les rapidement avant qu'elles ne se regroupent.",
};

pack["15954"] = { "Noth le Porte-Peste",
"* |cff71d5ff|Hspell:29213|h[Malédiction du Plaguebringer]|h|r: Les malédictions se propagent dans le raid - décurer rapidement, les malédictions en chaîne explosent.",
"* |cff71d5ff|Hspell:29208|h[Blink]|h|r: Utilise {Blink} pour cibler un joueur au hasard - le forcer à revenir vers le tank.",
"* |cff71d5ff|Hspell:29212|h[Squelettes]|h|r: Il se téléporte au-dessus avec une vague de squelettes - éliminez les ennemis avant qu'il ne revienne.",
};

pack["15936"] = { "Heigan l’Impur",
"* |cff71d5ff|Hspell:29350|h[Eruption]|h|r: Il quitte la pièce et le sol se met à exploser de manière cyclique - restez dans les coins sûrs autour de la plateforme.",
};

pack["16011"] = { "Horreb",
"* |cff71d5ff|Hspell:29234|h[Spores]|h|r: Les spores apparaissent dans la salle - éliminez-en une près du groupe, sa nuée confère un grand bonus de critique.",
"* |cff71d5ff|Hspell:29204|h[Doom]|h|r: Doom touche un joueur au hasard et explose - Déplacez-vous avant qu'il ne se déclenche.",
"* |cff71d5ff|Hspell:55593|h[Aura nécrosée]|h|r: Le soin est bloqué pendant 10 secondes à chaque pulse - utilisez les grands soins et les sorts pour combler les lacunes.",
};

pack["16061"] = { "Instructeur Razuvious",
"* |cff71d5ff|Hspell:29107|h[Unbalancing Strike]|h|r: Coup massif sur le tank actuel - contrôle mental des remplaçants avec les orbes osseux et faites pivoter leurs chants.",
};

pack["16060"] = { "Gothik le Moissonneur",
"* |cff71d5ff|Hspell:28025|h[Téléport: Côté vivant]|h|r: La guilde se divise : le côté vivant combat ses gardes tandis que le côté mort gère les ombres - maintenez les vagues étroites.",
"* |cff71d5ff|Hspell:28026|h[Téléportation : Côté Mort]|h|r : Je me déplace entre les pièces pendant que les ombres se rassemblent - la porte s'ouvre à 4 minutes, fusionnez-vous ensuite et le brûlez.",
};

bos = { "Les quatre Cavaliers",
"* |cff71d5ff|Hspell:28835|h[Marque de Khan]|h|r: Chaque cavalier applique une marque de son quart - faites pivoter dans le sens des aiguilles d'une montre pour que les marques ne se concentrent jamais sur les mêmes cibles.",
"* |cff71d5ff|Hspell:57467|h[Meteor]|h|r: Frappez un joueur au hasard avec un coup de météore - zone nettoyée.",
"* |cff71d5ff|Hspell:28883|h[Holy Wrath]|h|r: Holy wrath rebondit sur les joueurs regroupés - étalez-vous dans la salle.",
};
pack["16063"] = bos; pack["16064"] = bos; pack["16065"] = bos; pack["30549"] = bos;

pack["16028"] = { "Le Recousu",
"* |cff71d5ff|Hspell:28131|h[Frenzy]|h|r: À 10% de vie, il entre en état de fureur - tank, défenses et soins d'urgence.",
"* |cff71d5ff|Hspell:28311|h[Slime Bolt]|h|r: Les projectiles de Slime sont lancés au hasard par les lanceurs, tandis que les menaces suivantes utilisent ses attaques Hateful Strikes - maintenez une rotation de lanceurs bien répartie.",
};

pack["15931"] = { "Grobbulus",
"* |cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r: Le joueur touché laisse une nuage de slime nuisible à l'endroit où il se tient - dirigez-le contre le mur.",
"* |cff71d5ff|Hspell:28240|h[Nuage de poison]|h|r: Les nuages de poison se développent à chaque injection - éloignez-les du groupe.",
};

pack["15932"] = { "Gluth",
"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: Tout tombe à 5% de santé - les zombies ajoutent ensuite de se diriger vers lui pour se nourrir, les maintenir morts ou éloignés.",
"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r: Utilisez Frenzy périodiquement - augmente les défenses du tank.",
};

pack["15928"] = { "Thaddius",
"* |cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r: La moitié de la guilde obtient une charge positive et l'autre négative - séparez les côtés de la polarité pour que les joueurs chargés ne se touchent jamais, toute charge croisée provoque une explosion.",
"* |cff71d5ff|Hspell:28338|h[Chain Lightning]|h|r: Chain lightning frappe le joueur le plus éloigné de lui - un coup à distance loin du reste du groupe.",
};

pack["15989"] = { "Saphiron",
"* |cff71d5ff|Hspell:28522|h[Ice Block]|h|r: Un joueur aléatoire se transforme en bloc de glace - il devient un abri, planifiez la position.",
"* |cff71d5ff|Hspell:28524|h[Respire profondément]|h|r: Respirer profondément permet de nettoyer la pièce - se tenir près de la couverture gelée.",
"* |cff71d5ff|Hspell:28542|h[Life Drain]|h|r: Life drain siphons a random player - keep heals up.",
"* |cff71d5ff|Hspell:28547|h[Blizzard]|h|r: Blizzard tire sur le sol - sortez de sa portée.",
};

pack["15990"] = { "Kel’Thuzad",
"* |cff71d5ff|Hspell:27808|h[Frost Blast]|h|r: Frost Blast gèle et inflige des dégâts en chaîne à travers le groupe - étalez-le jusqu'à ce qu'il touche, puis détruisez la pile gelée.",
"* |cff71d5ff|Hspell:27819|h[Detonate Mana]|h|r: Quand le mana d'un joueur est épuisé, maintenez la distance pour que l'explosion reste contenue.",
"* |cff71d5ff|Hspell:27810|h[Fissure d'ombre]|h|r: À 25% de vie, une zone de vide s'ouvre sous un joueur - sortez rapidement.",
"* |cff71d5ff|Hspell:28410|h[Contrôle Mental]|h|r: Les chaînes ensorbent les joueurs aléatoires - maintenez-les sous contrôle jusqu'à ce que les chaînes se brisent.",
};

-- --------------------------------- --
-- Utgarde Keep : Zona 574 --
-- --------------------------------- --

pack["23953"] = { "Prince Keleseth",
"* |cff71d5ff|Hspell:48400|h[Tomb of the Frost]|h|r: Froid un joueur dans un tombe de glace - libérez-le rapidement, et utilisez des attaques à zone sur les gardes squelettiques qui arrivent en vagues.",
};

bos = { "Skarvald et Dalronn",
"* |cff71d5ff|Hspell:43650|h[Affaiblir]|h|r: Le debuff de ténèbres draine son porteur - gardez le soin prêt.",
"* |cff71d5ff|Hspell:52611|h[Shades]|h|r: Quand ils tombent, leurs ombres se lèvent - faites tomber les ombres avant qu'ils se regroupent.",
};
pack["24200"] = bos; pack["24201"] = bos;

pack["23954"] = { "Ingvar le Pilleur",
"* |cff71d5ff|Hspell:42730|h[Woe Strike]|h|r: Le {Woe Strike} drain le tank - change de position et gardez des sorts de soin prêts.",
"* |cff71d5ff|Hspell:42729|h[Cri de déséquilibre]|h|r: L'appel déséquilibre la salle - soyez prêt et interrompez-le.",
"* |cff71d5ff|Hspell:42723|h[Smash]|h|r: Dans la forme squelettique, Smash fait trembler toute la pièce - les personnages de mêlée doivent se retirer.",
};

-- --------------------------------- --
-- Utgarde Pinnacle : Zona 575 --
-- --------------------------------- --

pack["26668"] = { "Svala Tristetombe",
"* |cff71d5ff|Hspell:48267|h[Sacrifice]|h|r: L'objectif se dirige vers l'autel : interrompez le rituel avant que le sacrifice n'ait lieu.",
};

pack["26687"] = { "Gortok Pâle-Sabot",
"* |cff71d5ff|Hspell:48261|h[Hit]|h|r: Le rhinocéros attaque le tank - les soisseurs doivent être prêts.",
"* |cff71d5ff|Hspell:48256|h[Withering Roar]|h|r: Le rugissement affaiblit le groupe - maintenez les soins.",
};

pack["26693"] = { "Skadi le Brutal",
"* |cff71d5ff|Hspell:59322|h[Whirlwind]|h|r: Son whirlwind attaque largement – les personnages qui attaquent en corps à corps doivent reculer.",
"* |cff71d5ff|Hspell:59331|h[Venom]|h|r: Le venin suit le chemin de la piège - cours entre les nuages.",
};

pack["26861"] = { "Roi Ymiron",
"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: The bane channel punishes casters - stop casting while it runs.",
"* |cff71d5ff|Hspell:48291|h[Fetid Rot]|h|r: Fetid Rot brûle celui qui le détient - purgez-le.",
};

-- --------------------------------- --
-- The Nexus : Zona 576 --
-- --------------------------------- --

pack["26731"] = { "Grand magus Telestra",
"* |cff71d5ff|Hspell:47731|h[Congeler]|h|r: Congèle un joueur complètement - interrompt le sort et fais attention à ses clones : trois clones se dispersent, celui de glace recouvre la pièce de glace.",
};

pack["26763"] = { "Anomalus",
"* |cff71d5ff|Hspell:47743|h[Trou de Chaos]|h|r: Le trou canalise l'énergie - détruis le trou rapidement.",
};

pack["26794"] = { "Ormorok le Sculpte-arbre",
"* |cff71d5ff|Hspell:47981|h[Reflejo de hechizos]|h|r: Reflejo de hechizos: los lanzadores de hechizos deben dejar de lanzar hechizos mientras el efecto esté activo.",
"* |cff71d5ff|Hspell:47958|h[Épines]|h|r: Les lignes d'épines balayent la salle - esquivez les marques.",
"* |cff71d5ff|Hspell:48017|h[Frenesí]|h|r: Quand il est à faible santé, il entre en état de furie ; attaque rapidement.",
"* |cff71d5ff|Hspell:61564|h[Arbres]|h|r : Les arbres se dressent autour de vous – Détruisez-les avec des attaques à zone.",
};

pack["26723"] = { "Keristrasza",
"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: Les chaînes empêchent le déplacement - disperse le groupe et garde les soigneurs actifs.",
"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: La [Frost Nova] se déplace autour d'elle - les personnages au corps à corps doivent reculer.",
"* |cff71d5ff|Hspell:8599|h[Frenesí]|h|r: À la fin, entre en Frenesie - utilisez-la au maximum.",
};

-- --------------------------------- --
-- The Oculus : Zona 578 --
-- --------------------------------- --

pack["27654"] = { "Drakos l'Interrogateur",
"* |cff71d5ff|Hspell:50774|h[Thundering Stomp]|h|r: Le coup de pied fait trembler la salle - anticipez-le.",
};

pack["27447"] = { "Varos Arpentenuée",
"* |cff71d5ff|Hspell:51002|h[Capitaine de l'Anneau d'Azur]|h|r: Les capitaines appellent le groupe – éliminez d'abord les capitaines.",
"* |cff71d5ff|Hspell:51021|h[Arcane Beam]|h|r: Le faisceau brûle le long de sa trajectoire - éloignez-vous.",
"* |cff71d5ff|Hspell:51054|h[Amplify Magic]|h|r: Amplify magic marque un joueur - effacez-le.",
};

pack["27655"] = { "Seigneur-mage Urom",
"* |cff71d5ff|Hspell:51121|h[Time Bomb]|h|r: La bombe temporelle explose sur son porteur - courez loin avant qu'elle ne détonne.",
"* |cff71d5ff|Hspell:51110|h[Explosion Arcane Renforcée]|h|r : La grosse explosion arcana - interrompre son lancement ou se préparer à encaisser.",
"* |cff71d5ff|Hspell:51103|h[Frostbomb]|h|r: Les Frostbombs refroidissent le sol - évitez de marcher dessus.",
};

pack["27656"] = { "Gardien-tellurique Eregos",
"* |cff71d5ff|Hspell:51162|h[Planar Shift]|h|r: Je change de plan et les dragons doivent rester proches - gardez le groupe ensemble pendant le changement de plan.",
"* |cff71d5ff|Hspell:51170|h[Enraged Assault]|h|r: Je le provoque pour le déstabiliser rapidement avant que le changement de phase ne le ramène à la normale.",
};

-- --------------------------------- --
-- The Culling of Stratholme : Zona 595 --
-- --------------------------------- --

pack["26529"] = { "Grancrochet",
"* |cff71d5ff|Hspell:52696|h[Constricting Chains]|h|r: Les chaînes restreignent un joueur - gardez le soin prêt.",
};

pack["26530"] = { "Salramm le Façonneur de chair",
"* |cff71d5ff|Hspell:58845|h[Curse of Twisted Flesh]|h|r: La malédiction transforme celui qui la porte - la supprimer.",
"* |cff71d5ff|Hspell:52451|h[Ghouls]|h|r: He raises ghouls - AoE them down.",
};

pack["26532"] = { "Chronoseigneur Epoque",
"* |cff71d5ff|Hspell:52772|h[Curse of Exertion]|h|r: La malédiction affaiblit son porteur - la neutraliser.",
"* |cff71d5ff|Hspell:58848|h[Time Warp]|h|r: Le Time Warp modifie le rythme de la salle - maintenez les soins constants pendant son utilisation.",
};

pack["26533"] = { "Mal’Ganis",
"* |cff71d5ff|Hspell:52721|h[Sleep]|h|r: Il endort les joueurs - réveillez-les rapidement et maintenez le groupe dispersé.",
"* |cff71d5ff|Hspell:52723|h[Touch vampirique]|h|r: Le contact drain le porteur - purgez-le.",
};

-- --------------------------------- --
-- Halls of Stone : Zona 599 --
-- --------------------------------- --

pack["27977"] = { "Krystallus",
"* |cff71d5ff|Hspell:50833|h[Ground Slam]|h|r: Le coup de sol fait exploser la pièce - écartez-vous.",
"* |cff71d5ff|Hspell:50810|h[Shatter]|h|r: Après le coup, il se brise - gardez tout le monde séparé ou le coup va détruire le groupe.",
};

pack["27975"] = { "Damoiselle de peine",
"* |cff71d5ff|Hspell:50761|h[Woe Strike]|h|r: Woe s'écoule sur le tank - changez-le.",
"* |cff71d5ff|Hspell:50752|h[Tempête de chagrin]|h|r: La tempête balaie la pièce - restez hors des zones.",
"* |cff71d5ff|Hspell:50760|h[Shock of Sorrow]|h|r: Le choc stune le groupe - se disperser avant qu'il n'atteigne sa cible.",
};

pack["28070"] = { "Tribunal des Âges",
"* |cff71d5ff|Hspell:51012|h[Dark Matter]|h|r: La matière sombre est vulnérable au groupe - éloignez-vous des cibles.",
"* |cff71d5ff|Hspell:51125|h[Searing Gaze]|h|r: Le regard brûlant est lancé par les gardiens – faites face à eux.",
};

pack["27978"] = { "Sjonnir le Sculptefer",
"* |cff71d5ff|Hspell:50840|h[Anneau de foudre]|h|r: L'anneau de foudre tourne autour de lui - reculez avant qu'il n'atteigne.",
"* |cff71d5ff|Hspell:50834|h[Charge statique]|h|r: La charge s'accumule sur celui qui le touche - gardez le groupe à l'écart de son anneau.",
};

-- --------------------------------- --
-- Drak'Tharon Keep : Zona 600 --
-- --------------------------------- --

pack["26630"] = { "Trollétripe",
"* |cff71d5ff|Hspell:49637|h[Infected Wound]|h|r: Infected wounds bleed his tank - keep heals ready.",
"* |cff71d5ff|Hspell:49639|h[Crush]|h|r: Crush attaque le tank - buffs activés.",
"* |cff71d5ff|Hspell:49380|h[Consommez]|h|r : Utilisez les buffs sur les corps autour de lui - éloignez les combats pendant qu'il utilise ses capacités.",
};

pack["26631"] = { "Novos l'Invocateur",
"* |cff71d5ff|Hspell:50089|h[Wrath of Misery]|h|r: Wrath affaiblit le groupe - purgez-le.",
"* |cff71d5ff|Hspell:47346|h[Dark Wounds]|h|r : Les blessures sombres se répandent sur le sol - évitez de marcher dessus.",
"* |cff71d5ff|Hspell:59910|h[Créatures]|h|r: Les créatures arrivent en groupe pendant son attaque - éliminez-les avant qu'elles n'atteignent [Nom du boss].",
};

pack["27483"] = { "Roi Dred",
"* |cff71d5ff|Hspell:48878|h[Coupe Perçante]|h|r: La coupe saigne son porteur - soignants, soyez prêts.",
"* |cff71d5ff|Hspell:59416|h[Raptor Call]|h|r: He calls raptors into the room - AoE the pack fast.",
};

pack["26632"] = { "Le prophète Tharon'ja",
"* |cff71d5ff|Hspell:49356|h[Decay Flesh]|h|r: Il se transforme en squelette - faites attention à la pluie de feu qu'il déverse pendant qu'il est squelette.",
"* |cff71d5ff|Hspell:49518|h[Pluie de Feu]|h|r: La pluie de feu brûle la pièce - éloignez-vous.",
"* |cff71d5ff|Hspell:49527|h[Malédiction de la Vie]|h|r: La malédiction affecte son porteur - la neutraliser.",
};

-- --------------------------------- --
-- Azjol-Nerub : Zona 601 --
-- --------------------------------- --

pack["28684"] = { "Krik'thir le Gardien de porte",
"* |cff71d5ff|Hspell:52592|h[Curse of Fatigue]|h|r: La malédiction de la fatigue draine son porteur - la neutralise; son éclaireurs se déversent par la porte - cible-les et utilise des sorts d'area d'effet.",
};

pack["28921"] = { "Hadronox",
"* |cff71d5ff|Hspell:53400|h[Acid Cloud]|h|r: Acid clouds pool the floor - step off them.",
"* |cff71d5ff|Hspell:53030|h[Leech Poison]|h|r: Le leech poison soigne pendant qu'elle inflige des dégâts à son porteur - nettoyez-la rapidement ; elle bloque une porte avec des toiles, utilisez le moment où elle est occupée à lancer pour attaquer.",
};

pack["29120"] = { "Anub'arak",
"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: L'attaque \"Pound\" frappe largement sous les cibles - éloignez-vous des cibles; les essaims de scarabs déferlent dans les tunnels lors de la première phase - ciblez-les avec des attaques à zone.",
};

-- --------------------------------- --
-- Halls of Lightning : Zona 602 --
-- --------------------------------- --

pack["28586"] = { "Général Bjarngrim",
"* |cff71d5ff|Hspell:52027|h[Whirlwind]|h|r: Son whirlwind couvre la voie - les personnages au corps à corps doivent se retirer; il passe en position de combat, de tempête et de berserker entre les phases.",
"* |cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r: Mortal Strike inflige des dégâts sur le tank - échangez et soignez.",
};

pack["28587"] = { "Volkhan",
"* |cff71d5ff|Hspell:52237|h[Shattering Stomp]|h|r: Le coup de pied fait trembler le sol de la forge - les personnages au corps à corps doivent se retirer; il forge des golems de lave dans le magma, laissez-les refroidir et écrasez-les.",
};

pack["28546"] = { "Ionar",
"* |cff71d5ff|Hspell:52770|h[Disperse]|h|r: Utilisez Disperse pour créer des étincelles, puis ciblez-les rapidement avec des attaques à zone pour les éliminer avant l'explosion.",
"* |cff71d5ff|Hspell:52658|h[Static Overload]|h|r: L'overload brûle celui qui le tient - les mouvements marqués sont effectués.",
};

pack["28923"] = { "Loken",
"* |cff71d5ff|Hspell:52960|h[Nova Fulminante]|h|r: La onde pulse plus largement à chaque coup - sortez avant qu'elle n'atteigne son apogée.",
};

-- --------------------------------- --
-- Ulduar : Zona 603 --
-- --------------------------------- --

pack["33293"] = { "Déconstructeur XT-002",
"* |cff71d5ff|Hspell:65121|h[Light Bomb]|h|r: Les bomb Light explosent à la hauteur des pieds du joueur - éloignez-vous de la cible.",
"* |cff71d5ff|Hspell:64234|h[Gravity Bomb]|h|r: Les bombes de gravité s'éparpillent autour de la cible - rester à l'écart.",
"* |cff71d5ff|Hspell:64206|h[Consommation]|h|r : La phase avec le cœur exposé crée des zones de consommation - évitez-les et brûlez le cœur.",
};

bos = { "Assemblée du Fer",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: Quand un gardien tombe, les autres se renforcent - concentrez-vous sur la meilleure paire ou répartissez les tueries.",
"* |cff71d5ff|Hspell:64215|h[Lightning Bolt]|h|r: Chain Lightning frappe le groupe - étaler et interrompre.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: Brundir lance un tourbillon de foudre - interrompre le tourbillon.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: Brundir déclenche une surcharge massive - éloignez-vous.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: Overpower s'accumule sur le tank - échanger de tank.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Les runes de mort brûlent le sol - éloignez-vous d'elles.",
"* |cff71d5ff|Hspell:63489|h[Bouclier des runes]|h|r : Un bouclier de runes protège leur santé - désactivez-le ou retirez-le.",
};
pack["32867"] = bos; pack["32927"] = bos; pack["32857"] = bos;

pack["32930"] = { "Kologarn",
"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: Les Eyebeams suivent un joueur - le faire courir autour de la plateforme jusqu'à ce qu'ils disparaissent.",
"* |cff71d5ff|Hspell:64292|h[Grip]|h|r: Les bras de pierre agrippent les joueurs - brisez-les rapidement.",
"* |cff71d5ff|Hspell:64002|h[Armure de Crunch]|h|r: Applique des stacks d'armure sur son tank - échangez de tank.",
};

pack["33515"] = { "Auriaya",
"* |cff71d5ff|Hspell:64386|h[Sonic Screech]|h|r: Son cri des sons - maintenez un interrupte sur chaque lancement.",
"* |cff71d5ff|Hspell:64396|h[Nidaucle de Gardiens]|h|r: Le feral se relève encore et encore - cible le nidaucle, élimine les orbes du gardien.",
"* |cff71d5ff|Hspell:64675|h[Zone du Vide]|h|r: Les zones du vide poursuivent un joueur - déplacement rapide.",
};

bos = { "Hodir",
"* |cff71d5ff|Hspell:65123|h[Storm Cloud]|h|r: Les nuages orageux confèrent un buff à celui qui les tient et à tous ceux à proximité - partagez-les avec les lanceurs de sorts.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: La glace recouvre le sol - sautez sur un bloc de glace pour vous en servir de moyen de transport.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: Le froid intense frappe tous ceux qui restent immobiles – ne cessez jamais de bouger.",
};
pack["32845"] = bos; pack["32926"] = bos;

pack["32865"] = { "Thorim",
"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: Le marteau stuns tous ceux dans son cône de face - restez derrière une colonne.",
"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: Utilisez Lightning Charge pour attaquer rapidement les nouveaux ennemis et ensuite, concentrez-vous sur le boss dans le couloir.",
"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: Coup brutal sur le tank - contre et défenses.",
};

pack["32906"] = { "Freya",
"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: Les racines immobilisent les joueurs, il faut les briser.",
"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: Les Sunbeams explosent sur une grande surface - éloignez-vous de la cible.",
};

pack["33432"] = { "Mimiron",
"* |cff71d5ff|Hspell:63631|h[Shock Blast]|h|r: Grande explosion depuis le côté du tank - les personnages au corps à corps doivent se retirer.",
"* |cff71d5ff|Hspell:64402|h[Rocket Strike]|h|r: Les roquettes descendent le long du chemin indiqué - quittez immédiatement.",
"* |cff71d5ff|Hspell:63274|h[Laser Barrage]|h|r: Il tourne et tire des faisceaux laser - courez le long de l'orbite.",
"* |cff71d5ff|Hspell:64529|h[Plasma Blast]|h|r: Plasma Blast le tank - soins défensifs.",
"* |cff71d5ff|Hspell:64623|h[Frost Bomb]|h|r: Une bombe de glace descend - détruisez-la avant qu'elle n'atterre.",
};

pack["33271"] = { "Général Vezax",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Shadow Crash poursuit un joueur - faites-le courir jusqu'au mur.",
"* |cff71d5ff|Hspell:63276|h[Vie Siphon]|h|r: Le siphon cible la cible marquée - la cible marquée reste à distance.",
"* |cff71d5ff|Hspell:62662|h[Surge of Darkness]|h|r: La surcharge augmente ses dégâts - tank, utilisez des défenses.",
"* |cff71d5ff|Hspell:62661|h[Flammes brûlantes]|h|r: Les flammes brûlantes le buffent - interrompez chaque lancement.",
};

pack["33288"] = { "Yogg-Saron",
"* |cff71d5ff|Hspell:63050|h[Sanity]|h|r: Les drains de Sanity se produisent près de chaque ombre - surveillez le jauge, sortez de la pièce si vous avez moins de 30.",
"* |cff71d5ff|Hspell:63802|h[Brain Link]|h|r: Les joueurs liés doivent être attirés l'un vers l'autre - maintenez les liens tendus.",
"* |cff71d5ff|Hspell:57687|h[Brain Portal]|h|r: Les portails s'ouvrent pour la poursuite du cerveau - envoyez le groupe marqué à travers et terminez l'illusion.",
"* |cff71d5ff|Hspell:62979|h[Gardien de Yogg]|h|r : Les Gardiens se lèvent des ombres - Frappez-les rapidement avec des attaques à zone.",
};

pack["32871"] = { "Algalon l’Observateur",
"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: Big Bang consomme toute la salle - plongez dans un trou noir et faites le tour.",
"* |cff71d5ff|Hspell:65108|h[Black Hole]|h|r: Les étoiles en supernova créent des trous noirs - entrez-vous, sortez après l'explosion.",
"* |cff71d5ff|Hspell:64412|h[Phase Punch]|h|r: Phase punch sur le tank - changer de tank.",
"* |cff71d5ff|Hspell:64596|h[Cosmic Smash]|h|r: Cosmic smash marque le sol - déplace-toi pour esquiver.",
};

pack["33113"] = { "Léviathan des flammes",
"* |cff71d5ff|Hspell:62374|h[Pursued]|h|r: Il poursuit un véhicule - celui-ci se déplace en cercle pendant que les autres l'attaquent par le côté.",
"* |cff71d5ff|Hspell:62475|h[Arrêt du système]|h|r: L'arrêt le gèle - brûlez tout ensuite.",
"* |cff71d5ff|Hspell:62297|h[Hodir's Fury]|h|r: Les buffs des tours rendent le combat plus facile - détruisez les tours avant le combat pour affaiblir Hodir.",
};

pack["33118"] = { "Ignis le maître de la Fournaise",
"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: On prend un joueur dans le tas de gravats - soignez-le vigoureusement jusqu'à ce qu'il tombe.",
"* |cff71d5ff|Hspell:62488|h[Iron Constructs]|h|r: Les constructs arrivent par les évents - noyez-les dans l'eau et laissez son Scorch les briser.",
"* |cff71d5ff|Hspell:63472|h[Jets de flammes]|h|r: Les jets interrompent les sorts qu'il lance - les lanceurs doivent rester en mouvement.",
};

pack["33186"] = { "Tranchécaille",
"* |cff71d5ff|Hspell:48642|h[Harpon Turrets]|h|r : Construisez les harpon turrets autour de l'arène - attachez-la entre les vols.",
"* |cff71d5ff|Hspell:64733|h[Devouring Flame]|h|r: Les flaques de flammes se répandent sur le sol - sortez-en.",
"* |cff71d5ff|Hspell:64771|h[Armure Fusionnée]|h|r: L'armure fusionnée s'accumule sur le tank - échanger de tank.",
};

-- --------------------------------- --
-- Gundrak : Zona 604 --
-- --------------------------------- --

pack["29304"] = { "Slad'ran",
"* |cff71d5ff|Hspell:55081|h[Poison Nova]|h|r: La Poison Nova crée des zones de poison sur le sol - sortez et étendez-vous.",
};

pack["29307"] = { "Colosse drakkari",
"* |cff71d5ff|Hspell:54850|h[Émerge]|h|r : Il se fonde avec l'élément - détruisez l'élément avant qu'il ne se reforme.",
"* |cff71d5ff|Hspell:54878|h[Fusionner]|h|r : La fusion reconstruit le colosse - l'élémentaire meurt en premier.",
"* |cff71d5ff|Hspell:59451|h[Mojo Puddle]|h|r: Les flaques de Mojo brûlent le sol - évitez de marcher dessus.",
};

pack["29305"] = { "Moorabi",
"* |cff71d5ff|Hspell:55098|h[Transformation]|h|r: Je me transforme en un mammoth - interrompre le sort ou la bataille sera doublée.",
};

pack["29932"] = { "Eck le Féroce",
"* |cff71d5ff|Hspell:55817|h[Eck's Residue]|h|r: La résine brûle là où il se tient - restez à l'écart de ses flaques.",
};

pack["29306"] = { "Gal'darah",
"* |cff71d5ff|Hspell:54956|h[Impaling Charge]|h|r: L'attaque d'impalement projette un joueur - les parenthèses soulignées.",
"* |cff71d5ff|Hspell:55249|h[Whirling Slash]|h|r: Le coup tournant applique son effet sur la cible - échangez.",
};

-- --------------------------------- --
-- The Violet Hold : Zona 608 --
-- --------------------------------- --

pack["29315"] = { "Erekem",
"* |cff71d5ff|Hspell:54481|h[Guérison en chaîne]|h|r: Ses gardes guérissent en chaîne - les interrompre.",
"* |cff71d5ff|Hspell:54479|h[Earth Shield]|h|r : Les boucliers de terre protègent le groupe - désactivez-les.",
"* |cff71d5ff|Hspell:54516|h[Bloodlust]|h|r: Les pouvoirs de Bloodlust le renforcent - le neutralisez.",
};

pack["29316"] = { "Moragg",
"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: Le lien de l'œil attache et poursuit les joueurs - éloignez-vous du groupe.",
};

pack["29313"] = { "Ichoron",
"* |cff71d5ff|Hspell:54306|h[Boule protectrice]|h|r: La bulle le rend immunisé - faites-la éclater.",
"* |cff71d5ff|Hspell:54241|h[Volée de projectiles d'eau]|h|r: La volée bombarde la salle - interrompre ou se mettre à couvert.",
};

pack["29266"] = { "Xevozz",
"* |cff71d5ff|Hspell:54102|h[Sphère éthérée]|h|r: Les sphères orbitent et tirent - éliminez-les et empêchez-les de rester avec le groupe.",
"* |cff71d5ff|Hspell:54160|h[Arcane Power]|h|r: Arcane power le donne beaucoup de mana - augmente les défenses du tank.",
};

pack["29312"] = { "Lavanthor",
"* |cff71d5ff|Hspell:54282|h[Flame Breath]|h|r: Cone de flammes - le faire face.",
"* |cff71d5ff|Hspell:54249|h[Lava Burn]|h|r: Lava burn détruit le groupe - étalage.",
};

pack["29314"] = { "Zuramat l'Oblitérateur",
"* |cff71d5ff|Hspell:59743|h[Void Shift]|h|r: Le sort consomme fortement celui qui le lance - les soigneurs doivent être prêts.",
"* |cff71d5ff|Hspell:59745|h[Névoque des ténèbres]|h|r: La névoque masque son attirer - gardez des \"Cleanse\" prêts.",
};

pack["31134"] = { "Cyanigosa",
"* |cff71d5ff|Hspell:58693|h[Blizzard]|h|r: Les tempêtes de neige balayent la pièce - éloignez-vous de la neige.",
"* |cff71d5ff|Hspell:58694|h[Vacuum]|h|r: Le aspirateur attire tout le groupe vers elle - soyez prêt et écartez-vous, elle arrive en dernier après que les vagues de portail se soient dissipées.",
"* |cff71d5ff|Hspell:59374|h[Mana Burn]|h|r: La capacité Mana Burn draine la cible - la dispellez.",
};

-- --------------------------------- --
-- The Obsidian Sanctum : Zona 615 --
-- --------------------------------- --

pack["28860"] = { "Sartharion",
"* |cff71d5ff|Hspell:59127|h[Fissure de l'ombre]|h|r: Les zones de vide s'ouvrent sous les joueurs - sortez rapidement ; sa respiration envoie également des vagues de flammes sur la plateforme derrière la prochaine respiration.",
};

pack["30451"] = { "Obscuron",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Les zones de vide explosent sous les joueurs - sortez; son disciple et les démons passent par le portail - éliminez le disciple avant que son buff n'atteigne son maître.",
};

pack["30452"] = { "Ténébron",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Les zones de l'ombre explosent sous les joueurs - sortez; les œufs d'ombre le long des murs éclatent - détruisez les petits.",
};

pack["30449"] = { "Vespéron",
"* |cff71d5ff|Hspell:59127|h[Fissure d'ombre]|h|r: Les zones de vide explosent sous les joueurs - sortez ; son disciple émerge - détruisez-le avant que son buff de dégâts ne se cumule sur le dragon.",
};

-- --------------------------------- --
-- The Eye of Eternity : Zona 616 --
-- --------------------------------- --

pack["28859"] = { "Malygos",
"* |cff71d5ff|Hspell:56105|h[Vortex]|h|r: Every 60 s, he swirls the raid and deals pulses of damage - heal through it.",
"* |cff71d5ff|Hspell:56505|h[Deep Breath]|h|r: Pendant la phase 2, sa respiration brûle une section de plateforme - laissez cette zone.",
"* |cff71d5ff|Hspell:60936|h[Surge of Power]|h|r: Surge inévitable sur la plateforme - utiliser des compétences de défense.",
"* |cff71d5ff|Hspell:57430|h[Champ d'énergie]|h|r: Les champs d'énergie flottent autour de la plateforme - éloignez-vous d'eux.",
};

-- --------------------------------- --
-- Ahn'kahet: The Old Kingdom : Zona 619 --
-- --------------------------------- --

pack["29309"] = { "Ancien Nadox",
"* |cff71d5ff|Hspell:56130|h[Brood Plague]|h|r: La peste affaiblit son porteur - purgez-la; sa progéniture se déploie en vagues - ciblez-les.",
};

pack["29308"] = { "Prince Taldaram",
"* |cff71d5ff|Hspell:55959|h[Embrace of the Vampyr]|h|r: L'embrace canalise son porteur - soins puissants pour briser la prise.",
"* |cff71d5ff|Hspell:55931|h[Sphere de feu]|h|r: La sphère de feu se déplace dans la salle - restez à l'écart de son trajet.",
};

pack["29310"] = { "Jedoga Cherchelombre",
"* |cff71d5ff|Hspell:56926|h[Thundershock]|h|r: Le Thundershock a une portée large - répartissez-vous.",
"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: Le Twister traverse le groupe - éloignez-vous du mur.",
};

pack["30258"] = { "Amanitar",
"* |cff71d5ff|Hspell:57055|h[Mini]|h|r: Je réduis la taille de celui qui le tient - le petit se sent très mal, et des champignons poussent et le soignent : coupés dès qu'ils apparaissent.",
};

pack["29311"] = { "Héraut Volazj",
"* |cff71d5ff|Hspell:57496|h[Insanity]|h|r: L'insanity crée des copies de toute la pack - éliminez rapidement les copies.",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Les Shadow Crashs explosent sous les joueurs - éloignez-vous.",
"* |cff71d5ff|Hspell:57949|h[Shiver]|h|r: Le effet de Shiver inflige des dégâts à son porteur - neutralisez-le.",
};

-- --------------------------------- --
-- Vault of Archavon : Zona 624 --
-- --------------------------------- --

pack["31125"] = { "Archavon le Gardien des pierres",
"* |cff71d5ff|Hspell:58678|h[Débris de roche]|h|r: Il lance des éclats de roche sur les deux cibles marquées - les soigneurs, préparez-vous.",
"* |cff71d5ff|Hspell:53041|h[Choking Grab]|h|r: Attaque de saisie et de suffocation sur un joueur, le forçant à se déplacer - les autres joueurs doivent rester à distance.",
"* |cff71d5ff|Hspell:60894|h[Saut]|h|r: Il saute sur un joueur aléatoire - se disperser et se repositionner rapidement.",
"* |cff71d5ff|Hspell:60880|h[Stomp]|h|r: Stomp large sur le groupe - se disperser.",
};

pack["33993"] = { "Emalon le Guetteur d’orage",
"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: Le construct de tempête charge - éliminez-le avant que l'explosion n'atteigne.",
"* |cff71d5ff|Hspell:65279|h[Nova de foudre]|h|r : Lance la nova autour de lui - les personnages de mêlée sortent.",
};

pack["35013"] = { "Koralon le Veilleur des flammes",
"* |cff71d5ff|Hspell:66665|h[Flame Breath]|h|r: Cone de flammes - le faire face depuis le groupe.",
"* |cff71d5ff|Hspell:66725|h[Gants de météore]|h|r : Frappes sur le tank - changer de tank.",
"* |cff71d5ff|Hspell:66721|h[Burning Fury]|h|r: Il se buffe avec cette compétence au fil du temps.",
"* |cff71d5ff|Hspell:66684|h[Cendre]|h|r : Les cendres de flamme suivent un joueur - déplacez-les vers le mur.",
};

pack["38433"] = { "Toravon la Sentinelle de glace",
"* |cff71d5ff|Hspell:72090|h[Freezing Ground]|h|r: La glace se propage sur le sol - sortez.",
"* |cff71d5ff|Hspell:72034|h[Whiteout]|h|r: Large whiteout blast - clear the area.",
"* |cff71d5ff|Hspell:72091|h[Orbule]|h|r: Les orbules de glace l'entourent - détruisez-les avant qu'ils n'explosent.",
"* |cff71d5ff|Hspell:72004|h[Frostbite]|h|r: Frostbite s'accumule à chaque coup avec l'orbite - maintenez les orbites au sol.",
};

-- --------------------------------- --
-- Icecrown Citadel : Zona 631 --
-- --------------------------------- --

pack["36612"] = { "Seigneur Gargamoelle",
"* |cff71d5ff|Hspell:69076|h[Bone Storm]|h|r: Il déploie des tempêtes de squelettes, dispersant des éclats d'os - se positionner largement et éviter de se retrouver sur le dos.",
"* |cff71d5ff|Hspell:69057|h[Bone Spike]|h|r: Three players get impaled on spikes - break them free fast.",
"* |cff71d5ff|Hspell:69146|h[Coldflame]|h|r: Lignes de flammes glaciales balaient le sol - évitez-les.",
};

pack["36855"] = { "Dame Murmemort",
"* |cff71d5ff|Hspell:71289|h[Dominate Mind]|h|r: Elle contrôle les joueurs - utilisez des effets de contrôle de foule sur les ciblés jusqu'à ce qu'ils disparaient.",
"* |cff71d5ff|Hspell:61131|h[Adds]|h|r: Vagues de culte l'escortent - Ciblez le groupe et arrêtez la réanimation.",
"* |cff71d5ff|Hspell:70674|h[Vampric Might]|h|r: Le buff du culte les renforce - désactivez-le rapidement.",
"* |cff71d5ff|Hspell:71001|h[Death and Decay]|h|r: Decay brûle le sol - sortez.",
"* |cff71d5ff|Hspell:71204|h[Touch of Insignificance]|h|r: Applique l'effet sur le tank - changer de tank.",
"* |cff71d5ff|Hspell:71236|h[Dark Martyrdom]|h|r: Un culte détonne - éloignez-vous de la cible marquée.",
"* |cff71d5ff|Hspell:34018|h[Résurrection]|h|r : Les cultistes tombés se réaniment - brûlez-les à nouveau.",
};

bos = { "La Bataille aérienne en Canonnière",
"* |cff71d5ff|Hspell:69638|h[Battle Fury]|h|r: L'équipage ennemi applique des buffs pendant le combat - éliminez rapidement les ennemis situés à la périphérie.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: Une rafale glaciale stuns le deck - éloignez-vous.",
"* |cff71d5ff|Hspell:69652|h[Bladestorm]|h|r: Le bladestorm frappe le pont - éloignez-vous.",
"* |cff71d5ff|Hspell:23334|h[Borderes]|h|r: Les Borderes swingent vers le haut - éliminez-les avant qu'ils n'atteignent les canons.",
};
pack["37215"] = bos; pack["37540"] = bos;

pack["37813"] = { "Porte-mort Saurcroc",
"* |cff71d5ff|Hspell:72293|h[Marque du Champion Déchu]|h|r: Le joueur marqué inflige des dégâts à toute la guilde - les soins importants couvrent la chaîne.",
"* |cff71d5ff|Hspell:72378|h[Blood Nova]|h|r: La Blood Nova se déploie largement - éloignez-vous.",
"* |cff71d5ff|Hspell:72385|h[Boiling Blood]|h|r: Boiling blood inflige des dégâts à la foule - étaler les dégâts.",
"* |cff71d5ff|Hspell:72410|h[Rune of Blood]|h|r: La rune draine le tank - échanger de tank.",
"* |cff71d5ff|Hspell:72737|h[Frenzy]|h|r: À 30 %, il entre en Frenzy - le brûlez.",
"* |cff71d5ff|Hspell:72173|h[Blood Beasts]|h|r: Les Blood Beasts se lèvent - Frappez-les à distance avant qu'ils n'atteignent le groupe.",
};

pack["36626"] = { "Pulentraille",
"* |cff71d5ff|Hspell:69279|h[Poussière de gaz]|h|r: Les poussières de gaz marquent les joueurs - touchez l'explosion une fois pour obtenir votre inoculation.",
"* |cff71d5ff|Hspell:69166|h[Inhalé de la maladie]|h|r: Chaque inhalation augmente ses dégâts - avec trois couches, toute la guilde doit utiliser des sorts de protection.",
"* |cff71d5ff|Hspell:69240|h[Vile Gas]|h|r: Le gaz toxique se disperse et affecte les cibles à distance, maintenez les cibles à distance éloignées.",
"* |cff71d5ff|Hspell:69195|h[Pungent Blight]|h|r: L'explosion de Pungent Blight se déclenche avec la troisième inspiration - cooldowns défensifs activés.",
"* |cff71d5ff|Hspell:72219|h[Gastric Bloat]|h|r: Le Gastric Bloat s'applique au tank - changer de tank.",
};

pack["36627"] = { "Trognepus",
"* |cff71d5ff|Hspell:69508|h[Slime Spray]|h|r: Cone de slime - restez derrière lui.",
"* |cff71d5ff|Hspell:69674|h[Mutating Infection]|h|r: Le infecté la élimine en courant vers le gros liquide - l'explosion spawne un add de liquide, le brûlez pour le séparer du groupe.",
"* |cff71d5ff|Hspell:69774|h[Léchement]|h|r: Les puddres de léchement poursuivent les joueurs - sortez.",
"* |cff71d5ff|Hspell:69558|h[Unstable Ooze]|h|r: Les oozes fusionnés créent la grande mare - gardez les petits éloignés.",
};

pack["36678"] = { "Professeur Putricide",
"* |cff71d5ff|Hspell:70341|h[Puddle de boue]|h|r: Les puddles de boue se développent partout où ils atterrissent - évitez de vous y tenir et ne combattez jamais dessus.",
"* |cff71d5ff|Hspell:70447|h[Volatile Ooze]|h|r: L'écume colle un joueur - faites éclater l'écume pour le libérer.",
"* |cff71d5ff|Hspell:70672|h[Gaseux]|h|r: Le gaz gonfle un joueur - faites éclater le gaz.",
"* |cff71d5ff|Hspell:71255|h[Choking Gas Bomb]|h|r: Les bombes de gaz asphyxiant apparaissent – sortez immédiatement.",
"* |cff71d5ff|Hspell:70911|h[Plague non maîtrisée]|h|r : La plague non maîtrisée se transmet entre joueurs - transmettez-la avant qu'elle ne tue le porteur.",
"* |cff71d5ff|Hspell:72840|h[Volatile Experiment]|h|r: Pendant la phase 3, les deux expériences volent simultanément - planifiez à l'avance les attaques de boue et les stations de gaz.",
};

bos = { "Princes de Sang",
"* |cff71d5ff|Hspell:70952|h[Changer de cible]|h|r: Leur cible se déplace vers le prince protégé - ne jamais attaquer le personnage protégé.",
"* |cff71d5ff|Hspell:72040|h[Flammes Amourcées]|h|r: Les Flammes Amourcées suivent un joueur - suivez la trajectoire.",
"* |cff71d5ff|Hspell:72037|h[Shock Vortex]|h|r: Le vortex de choc rebondit à travers le groupe - étaler largement.",
"* |cff71d5ff|Hspell:72053|h[Kinetic Bombs]|h|r: Les bombs explosives flottent et rebondissent – faites-les exploser avant qu'elles ne touchent le sol.",
};
pack["37970"] = bos; pack["37972"] = bos; pack["37973"] = bos;

pack["37955"] = { "Reine de sang Lana’thel",
"* |cff71d5ff|Hspell:71340|h[Pacte des Darkfallen]|h|r: Les trois corrompus partagent la douleur – se rapprocher et détruire le pacte.",
"* |cff71d5ff|Hspell:70946|h[Vampric Bite]|h|r: Le joueur mordu gagne l'essence - gardez un soigneur non mordu et prévoyez un plan de remplacement.",
"* |cff71d5ff|Hspell:70877|h[Bloodthirst]|h|r: L'essence provoque une soif - la créature mord une autre joueur avant que la soif n'explose.",
"* |cff71d5ff|Hspell:71266|h[Swarming Shadows]|h|r: Les ombres suivent le joueur ciblé - courez pour éloigner les cibles.",
"* |cff71d5ff|Hspell:71772|h[Blood Bolt]|h|r: Les Blood Bolts explosent largement - se disperser.",
"* |cff71d5ff|Hspell:71510|h[Blood Mirror]|h|r: The mirror links damage - keep the mirrored pair apart.",
};

pack["36789"] = { "Valithria Marcherêve",
"* |cff71d5ff|Hspell:72483|h[Nightmare Portal]|h|r: Les portails s'ouvrent sur le rêve - les soigneurs traversent, récupèrent le buff et retournent soigner Valithria.",
"* |cff71d5ff|Hspell:70588|h[Suppression]|h|r: Les nuages de suppression bloquent le soin - détruisez-les.",
"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay waste déclenche la salle - sortez des zones ciblées.",
"* |cff71d5ff|Hspell:71179|h[Mana Vide]|h|r: Les Mana Vide drainent les lanceurs de sorts - éloignez-vous des cibles.",
"* |cff71d5ff|Hspell:70751|h[Corrosion]|h|r: Les zombies brûlés se lèvent en vagues - Éliminez-les de la voie du dragon.",
};

pack["36853"] = { "Sindragosa",
"* |cff71d5ff|Hspell:70126|h[Frost Beacon]|h|r: Beaconed players rise as ice tombs - the tombs become cover, plan their spots.",
"* |cff71d5ff|Hspell:69766|h[Instabilité]|h|r : L'instabilité s'accumule avec les sorts - arrêtez de lancer à 5 stacks et laissez-la se dissiper.",
"* |cff71d5ff|Hspell:70128|h[Mystic Buffet]|h|r: Les buffs s'accumulent grâce à sa respiration - échangez les tanks avant 5 stacks.",
"* |cff71d5ff|Hspell:69762|h[Unchained Magic]|h|r: L'effet \"Unchained Magic\" immobilise les lanceurs de sorts - arrêtez de lancer jusqu'à ce qu'il disparaisse.",
"* |cff71d5ff|Hspell:43810|h[Phase aérienne]|h|r: Elle se lève pour une phase aérienne - étaler et soigner les attaques.",
};

pack["36597"] = { "Le roi-liche",
"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: Defile s'étend partout où quelqu'un se tient dessus - ne jamais y mettre le pied et ne pas l'étendre, car il détruit la plateforme.",
"* |cff71d5ff|Hspell:70337|h[Plague nécrotique]|h|r: La peste se transmet entre les cibles - concentrez-vous sur les monstres et ne jamais la dissiper.",
"* |cff71d5ff|Hspell:70372|h[Shambling Horror]|h|r: Les Shamblings apparaissent entre les phases - éliminez-les et maintenez la peste sur eux.",
"* |cff71d5ff|Hspell:69200|h[Esprit Furieux]|h|r: Les Esprits Furieux apparaissent en hiver - détruisez-les avant qu'ils n'atteignent le groupe.",
"* |cff71d5ff|Hspell:68981|h[Remorseless Winter]|h|r: La tempête hivernale tire les joueurs vers l'intérieur - restez à l'extérieur du cercle.",
"* |cff71d5ff|Hspell:71844|h[Valkyr]|h|r: Les Valkyries attrapent les joueurs - brûlez-les avant qu'elles ne les éliminent.",
"* |cff71d5ff|Hspell:72262|h[Quake]|h|r: Le tremblement de terre détruit la plateforme - se déplacer le long du côté sûr.",
};

-- --------------------------------- --
-- The Forge of Souls : Zona 632 --
-- --------------------------------- --

pack["36497"] = { "Bronjahm",
"* |cff71d5ff|Hspell:68839|h[Âme Corrompue]|h|r: L'âme corrompue revient vers lui - éliminez le globe de l'âme avant qu'il ne se nourrisse.",
"* |cff71d5ff|Hspell:68872|h[Tempête d'âme]|h|r: À faible santé, la tempête détruit la salle - rapprochez-vous des bords pendant qu'elle tourne.",
};

pack["36502"] = { "Dévoreur d'âmes",
"* |cff71d5ff|Hspell:68820|h[Source des Âmes]|h|r: La source forme une zone sur le sol - sortez-en.",
"* |cff71d5ff|Hspell:69051|h[Esprit Miroir]|h|r: Le miroir lie un joueur à lui - arrêtez d'attaquer tant que la liaison est active.",
"* |cff71d5ff|Hspell:68982|h[Phantom Blast]|h|r: Le Phantom Blast détruit la pièce - l'interrompre.",
"* |cff71d5ff|Hspell:68899|h[Wailing Souls]|h|r: Les Wailing Souls balayent la pièce - courez le chemin le plus sûr.",
};

-- --------------------------------- --
-- Trial of the Crusader : Zona 649 --
-- --------------------------------- --

bos = { "Les Bêtes du Norfendre",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: Les attaques à distance doivent cibler le tank - brûlez d'abord les snobolds sur le dos du tank.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Les Fire Bombs se dispersent sur le groupe - éloignez-vous des cibles.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: L'animal charge sur l'arène - esquivez la charge et attaquez-le pendant qu'il est étourdi.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: L'haleine glaciale balaie la pièce - restez hors du cône.",
"* |cff71d5ff|Hspell:66883|h[Piscine de boue]|h|r: Les piscines de boue se répandent sous les vers - évitez de marcher dessus.",
"* |cff71d5ff|Hspell:66823|h[Paralytique]|h|r: Le toxine paralyse la cible marquée - gardez les soins prêts.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: Le Burning Bile se propage au contact - maintenez une distance par rapport aux cibles marquées.",
};
pack["34796"] = bos; pack["35144"] = bos; pack["34799"] = bos; pack["34797"] = bos;

pack["34780"] = { "Seigneur Jaraxxus",
"* |cff71d5ff|Hspell:66197|h[Legion Flame]|h|r: Flame trails wherever the marked walks - run the trail out to the wall.",
"* |cff71d5ff|Hspell:66237|h[Incinerate Flesh]|h|r: Le marque entre dans un concours de soins - soins puissants jusqu'à ce que le sceau se brise.",
"* |cff71d5ff|Hspell:66269|h[Portail infernal]|h|r: Un portail s'ouvre - éliminez rapidement la maîtresse et les petits monstres.",
"* |cff71d5ff|Hspell:66258|h[Volcan des Enfers]|h|r: Un volcan entre en éruption - détruisez-le avant que les boules de feu inondent la salle.",
"* |cff71d5ff|Hspell:67009|h[Nether Power]|h|r: Il se buffe - dispelle le boss.",
"* |cff71d5ff|Hspell:66532|h[Fel Fireball]|h|r: Fel Fireball bombarde le tank - l'interrompre à chaque lancement.",
};

bos = { "Soeurs Val'kyr",
"* |cff71d5ff|Hspell:65950|h[Essence de lumière]|h|r: La moitié du raid doit porter l'essence de lumière - ne toucher que les orbes de la couleur appropriée, les orbes de couleur opposée infligent des dégâts.",
"* |cff71d5ff|Hspell:66001|h[Dark Essence]|h|r: The other half carries dark essence - only touch dark orbs.",
"* |cff71d5ff|Hspell:39089|h[Special]|h|r: Sur l'appel spécial, les essences se inversent - traversez vers les orbites opposées simultanément.",
"* |cff71d5ff|Hspell:65875|h[Le pacte des jumeaux]|h|r: Un jumeau soigne l'autre - interrompre le pacte.",
"* |cff71d5ff|Hspell:65916|h[Power of the Twins]|h|r: Le deuxième attaquant subit moins de dégâts - échangez vos attaques avec l'autre.",
};
pack["34497"] = bos; pack["34496"] = bos;

pack["34564"] = { "Anub’arak",
"* |cff71d5ff|Hspell:45419|h[Nerubian Burrowers]|h|r: Les Burrowers montent depuis le sol - éliminez-les rapidement et interrompez leurs attaques.",
"* |cff71d5ff|Hspell:67574|h[Pursued]|h|r: Les essaims poursuivent le joueur marqué - éloignez-vous et utilisez des attaques à zone sur le déplacement.",
"* |cff71d5ff|Hspell:66013|h[Penetrating Cold]|h|r: Dans la dernière phase, le froid s'applique à tous - soignez les effets.",
"* |cff71d5ff|Hspell:66012|h[Freezing Slash]|h|r: Freezing Slash marque un joueur - les soigneurs doivent être prêts.",
"* |cff71d5ff|Hspell:65919|h[Burrow]|h|r: Utilisez Burrow avec les vagues d'adds - éliminez le groupe, il remonte à côté de la cible marquée.",
};

bos = { "Champion des Factions",
"* |cff71d5ff|Hspell:65947|h[Tempête de lames]|h|r: Le guerrier lance l'attaque - les personnages au corps à corps doivent se retirer.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Leurs buffs de bravoure renforcent le groupe – éliminez-les rapidement.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Hellfire brûle le sol - sortez des zones dangereuses.",
"* |cff71d5ff|Hspell:65801|h[Agneaux]|h|r : Leurs effets de contrôle de foule - gardez les dispels prêts.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Death Grip attrape un joueur - les brasures marquées et le groupe se dispersent.",
};
pack["34458"] = bos; pack["34451"] = bos; pack["34459"] = bos; pack["34448"] = bos; pack["34449"] = bos; pack["34445"] = bos; pack["34456"] = bos; pack["34447"] = bos; pack["34441"] = bos; pack["34454"] = bos; pack["34444"] = bos; pack["34455"] = bos; pack["34450"] = bos; pack["34453"] = bos; pack["34461"] = bos; pack["34460"] = bos; pack["34469"] = bos; pack["34467"] = bos; pack["34468"] = bos; pack["34471"] = bos; pack["34465"] = bos; pack["34466"] = bos; pack["34473"] = bos; pack["34472"] = bos; pack["34470"] = bos; pack["34463"] = bos; pack["34474"] = bos; pack["34475"] = bos;

-- --------------------------------- --
-- Trial of the Champion : Zona 650 --
-- --------------------------------- --

bos = { "Grands champions",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Leur soigneur lance des vagues de soins - restez sur lui pour les interrompre.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Le mage utilise Polymorph - dispellez-la rapidement.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Les sorts du shaman - annuler le sort.",
"* |cff71d5ff|Hspell:66045|h[Vitesse]|h|r: Le buff de vitesse les renforce - éliminez le boss.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Les flaques de poison se répandent - évitez les marques.",
};
pack["34657"] = bos; pack["34701"] = bos; pack["34702"] = bos; pack["34703"] = bos; pack["34705"] = bos; pack["35569"] = bos; pack["35570"] = bos; pack["35571"] = bos; pack["35572"] = bos; pack["35617"] = bos;

pack["35119"] = { "Eadric le Pur",
"* |cff71d5ff|Hspell:66935|h[Radiance]|h|r: La radiance aveugle quiconque se trouve face à lui - ne jamais regarder la lumière.",
"* |cff71d5ff|Hspell:66905|h[Marteau]|h|r: Il lance son marteau - le marqué le attrape et le renvoie.",
"* |cff71d5ff|Hspell:66889|h[Vengeance]|h|r: Sa vengeance augmente sa puissance - frappez-le entre les coups.",
};

pack["34928"] = { "Confesseur d'argent Paletress",
"* |cff71d5ff|Hspell:66620|h[Mémoire]|h|r: La mémoire se manifeste et combat - la détruisez, esquivez les dégâts qu'elle inflige.",
"* |cff71d5ff|Hspell:66515|h[Bouclier Réfléchi]|h|r: Le bouclier renvoie les sorts - les lanceurs doivent éviter de l'utiliser.",
"* |cff71d5ff|Hspell:66538|h[Holy Fire]|h|r: Holy fire brûle la cible marquée - annule le sort.",
"* |cff71d5ff|Hspell:66537|h[Renew]|h|r: Elle se régénère - désactiver la régénération.",
};

pack["35451"] = { "Le Chevalier noir",
"* |cff71d5ff|Hspell:67781|h[Desecration]|h|r: Desecration se déplace sur le sol - sortez de sa portée.",
"* |cff71d5ff|Hspell:67751|h[Explosion]|h|r: Le gobelot détonne près du groupe - éloignez-vous.",
"* |cff71d5ff|Hspell:67823|h[Marked]|h|r: Je marque un joueur pour la peste - les soigneurs restent sur la cible.",
};

-- --------------------------------- --
-- Pit of Saron : Zona 658 --
-- --------------------------------- --

pack["36494"] = { "Maître-forge Gargivre",
"* |cff71d5ff|Hspell:70381|h[Deep Freeze]|h|r: Le Deep Freeze immobilise celui qui le tient - gardez des sorts de soin prêts ; les rochers de saronite qu'il lance servent de couverture contre le froid.",
};

pack["36476"] = { "Ick et Krick",
"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: Ick chases a player and barrages - run wide of the marks.",
"* |cff71d5ff|Hspell:69024|h[Déchets toxiques]|h|r: Les zones de déchets toxiques recouvrent le sol – évitez de vous y tenir.",
"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: Les pools de Poison Nova sont larges - éloignez-vous.",
};

bos = { "Seigneur du Fléau Tyrannus",
"* |cff71d5ff|Hspell:69172|h[Overlord's Brand]|h|r: La marque renvoie chaque coup infligé au groupe, et la marque bloque les attaques.",
"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: La attaque de Rimefang vise un joueur - évitez de la toucher avant que l'explosion n'atteigne.",
};
pack["36658"] = bos; pack["36661"] = bos;

-- --------------------------------- --
-- Halls of Reflection : Zona 668 --
-- --------------------------------- --

pack["38112"] = { "Falric",
"* |cff71d5ff|Hspell:72422|h[Quivering Strike]|h|r: L'attaque provoque une dépression sur le porteur - gardez le soin prêt.",
"* |cff71d5ff|Hspell:72426|h[Impending Despair]|h|r: La peur de la désespoir affecte son porteur - éliminez-la rapidement ; des vagues d'esprits maudits attaquent entre les deux.",
};

pack["38113"] = { "Marwyn",
"* |cff71d5ff|Hspell:72363|h[Corrupted Flesh]|h|r: The corrupted flesh burns its holder - keep the cleanse ready.",
"* |cff71d5ff|Hspell:72368|h[Shared Suffering]|h|r: Shared suffering chains the pack - keep the bonded apart.",
"* |cff71d5ff|Hspell:72383|h[Corrupted Touch]|h|r: Le contact drain le porteur - purifie-le.",
"* |cff71d5ff|Hspell:72362|h[Well of Corruption]|h|r: Corruption pools the floor - step off it.",
};

-- --------------------------------- --
-- The Ruby Sanctum : Zona 724 --
-- --------------------------------- --

pack["39863"] = { "Halion the Twilight Destroyer",
"* |cff71d5ff|Hspell:74562|h[Fiery Combustion]|h|r: Les builds à base de Combustion utilisent les sorts de feu et laissent une traînée de feu derrière eux - apportez-la jusqu'au bord du royaume.",
"* |cff71d5ff|Hspell:74792|h[Shadow Consumption]|h|r: Les mêmes traces sur le côté ombre - les stocker au bord du royaume.",
"* |cff71d5ff|Hspell:74648|h[Meteor Strike]|h|r: Un météore s'abat sur le royaume des flammes - éloignez-vous de la cible.",
"* |cff71d5ff|Hspell:74769|h[Twilight Cutter]|h|r: The rotating cutter rakes the twilight realm - keep the beam off you.",
"* |cff71d5ff|Hspell:74525|h[Souffle de flammes]|h|r: Souffle de flammes sur le tank adverse - faites-le face.",
"* |cff71d5ff|Hspell:74806|h[Dark Breath]|h|r: Utiliser Dark Breath sur le tank côté Twilight - le faire face à l'ennemi.",
};

pack["39751"] = { "Baltharus the Warborn",
"* |cff71d5ff|Hspell:75125|h[Tempête d'Épées]|h|r: Whirlwind inflige des dégâts aux ennemis proches - éloignez-vous.",
"* |cff71d5ff|Hspell:74509|h[Onde de repoussement]|h|r : Une onde pousse tout le monde en arrière - restez à l'écart des murs.",
"* |cff71d5ff|Hspell:74505|h[Splitting Brand]|h|r: La marque marque un joueur - le clone en copie, regardez le dédoublement.",
};

pack["39747"] = { "Saviana Ragefire",
"* |cff71d5ff|Hspell:74453|h[Beacon of Flames]|h|r: Elle marque un joueur pour son prochain souffle - prenez la marque loin du groupe.",
"* |cff71d5ff|Hspell:74403|h[Respiration de flammes]|h|r: Respiration de flammes étendue - la faire se retourner.",
"* |cff71d5ff|Hspell:78722|h[Enrage]|h|r: Elle entre en rage - calm her down.",
};

pack["39746"] = { "General Zarithrian",
"* |cff71d5ff|Hspell:74367|h[Armure de coup]|h|r: Les stacks d'armure de coup sur son tank - changer de tank.",
"* |cff71d5ff|Hspell:74398|h[Drakes]|h|r: Les drakes d'onyx entrent dans la salle - les éliminez, soyez prêts à interrompre.",
"* |cff71d5ff|Hspell:74384|h[Cri de terreur]|h|r : Cri de terreur - interrompez-le ou subissez à la terreur.",
};

P.fr = fr;
