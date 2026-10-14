--[[
	Bosses_WoD_fr.lua
		Datos en français of the WoD
		pack: the two raids (Highmaul, Blackrock Foundry), Hellfire Citadel, the
		dungeons and the Draenor world bosses. Sources: DBM-Raids/Party-WoD and DBM-Draenor
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Bloodmaul Slag Mines : Zona 1175 --
-- --------------------------------- --

pack["74787"] = { "Surveillant des esclaves Crushto",
"* |cff71d5ff|Hspell:150751|h[Saut écrasant]|h|r: son saut écrasant touche la cible: la cible marquée.",
"* |cff71d5ff|Hspell:150759|h[Cri féroce]|h|r : Interrompre à chaque utilisation.",
"* |cff71d5ff|Hspell:150801|h[Élever les mineurs]|h|r: Élevez les mineurs - éliminez rapidement les mineurs.",
"* |cff71d5ff|Hspell:153679|h[Earth Crush]|h|r: Son Earth Crush brise le sol - sortez de la zone affectée.",
"* |cff71d5ff|Hspell:150753|h[Attaque Sauvage]|h|r: son attaque sauvage le fait reculer - préparez-vous à l'impact.",
};

pack["74790"] = { "Gug’rokk",
"* |cff71d5ff|Hspell:150678|h[Núcleo de Fuego]|h|r: son noyau de feu brûle à l'intérieur – détruisez-le immédiatement.",
"* |cff71d5ff|Hspell:150677|h[Molten Blast]|h|r: utilisez votre [Molten Blast] pour le surprendre, essayez de le stuffer ou de l'interrompre à chaque lancement.",
"* |cff71d5ff|Hspell:150755|h[Unstable Slag]|h|r: the unstable slags kindle in - burn them before they burst.",
"* |cff71d5ff|Hspell:150784|h[Éruption de Magma]|h|r: ses bulles d'éruption de magma font gonfler le sol - ne vous mettez jamais dans la zone de l'éruption.",
};

bos = { "Magmolatus",
"* |cff71d5ff|Hspell:149975|h[Danse de Feu]|h|r : Ses attaques de Danse de Feu sont transférées au porteur - éliminez-les rapidement.",
"* |cff71d5ff|Hspell:150038|h[Impacto Fundido]|h|r: son impactos fundidos, causan beaucoup de dégâts - alterner les tanks.",
"* |cff71d5ff|Hspell:150011|h[Torrent de Magma]|h|r: le Torrent de Magma frappe - esquivez le Torrent.",
"* |cff71d5ff|Hspell:149941|h[Assaut]|h|r: son attaque cause de gros dégâts; éloignez-vous de l'attaque.",
"* |cff71d5ff|Hspell:149997|h[Tempête de feu]|h|r : son sort de tempête de feu - stun ou arrêtez-le à chaque lancement.",
};
pack["74366"] = bos; pack["74475"] = bos;

pack["75786"] = { "Roltall",
"* |cff71d5ff|Hspell:152940|h[Onda de calor]|h|r: Son attaque de chaleur qui inflige des dégâts à tous ceux qui sont à proximité - restez à distance.",
"* |cff71d5ff|Hspell:152939|h[Burning Slag]|h|r: le burning slag se propage sous les pieds - éviter le slag.",
"* |cff71d5ff|Hspell:153247|h[Piedra Ardiente]|h|r: la piedra ardiente impacta en su posición - corre lejos de la piedra.",
};

-- --------------------------------- --
-- Shadowmoon Burial Grounds : Zona 1176 --
-- --------------------------------- --

pack["75452"] = { "Ossegueule",
"* |cff71d5ff|Hspell:154175|h[Hit]|h|r: son golpe fait que la zone tremble - esquiver le coup.",
"* |cff71d5ff|Hspell:165578|h[Souffle de cadavre]|h|r : son souffle de cadavre exhale vers l'avant - restez à distance du souffle.",
"* |cff71d5ff|Hspell:177694|h[Submerge]|h|r: Plongez dans le mucus - préparez-vous à remonter.",
"* |cff71d5ff|Hspell:153692|h[Necrotic Pitch]|h|r: les flaques de Necrotic Pitch recouvrent le sol - évitez le flaques.",
};

pack["76407"] = { "Ner’zhul",
"* |cff71d5ff|Hspell:154350|h[Omen of Death]|h|r: l'omène de la mort - sortez de la ligne de l'omène.",
"* |cff71d5ff|Hspell:154671|h[Rituel des Os]|h|r : le rituel des os est sa principale attaque - préparez-vous au rituel.",
"* |cff71d5ff|Hspell:154442|h[Malevolence]|h|r : Sa malévolité frappe le sol - Esquivez le coup.",
};

pack["75829"] = { "Nhallish",
"* |cff71d5ff|Hspell:152801|h[Void Vortex]|h|r: the void vortex yanks everyone in - run from the pull.",
"* |cff71d5ff|Hspell:152979|h[Déchirer l'âme]|h|r: Déchirer l'âme vole l'essence du joueur; tuez l'essence pour la récupérer.",
"* |cff71d5ff|Hspell:153067|h[Devastación del Vacío]|h|r: Devastation of the Void - Spread it and heal.",
};

pack["75509"] = { "Sadana Rougefurie",
"* |cff71d5ff|Hspell:153240|h[Dagger Fall]|h|r: lance votre lance vers les ennemis ciblés - esquivez les dagues.",
"* |cff71d5ff|Hspell:153153|h[Dark Communion]|h|r: Son alimentés par leurs adorateurs, donc éliminez les adorateurs.",
"* |cff71d5ff|Hspell:153094|h[Susurros]|h|r: Les murmures attaquent tous - se disperser et soigner.",
"* |cff71d5ff|Hspell:164974|h[Eclipse Oscuro]|h|r: L'Eclipse Oscure se déplace avec son porteur – préparez-vous à l'Eclipse.",
};

-- --------------------------------- --
-- Auchindoun : Zona 1182 --
-- --------------------------------- --

pack["75927"] = { "Azzakel",
"* |cff71d5ff|Hspell:153396|h[Flamme Éclair]|h|r: Flamme Éclair s'étend - sortez de la Flamme Éclair.",
"* |cff71d5ff|Hspell:153234|h[Fel Lash]|h|r: Fel Lash frappe - maintenez la distance pour éviter le coup.",
"* |cff71d5ff|Hspell:157173|h[Passage de Fel]|h|r: Son passage de fel fait trembler le sol - préparez-vous à l'attaque.",
"* |cff71d5ff|Hspell:153764|h[Griffes d'Argus]|h|r : Les griffes d'Argus infligent des dégâts continus ; éliminez rapidement les griffes.",
};

pack["76177"] = { "Lieuse d’âme Nyami",
"* |cff71d5ff|Hspell:154477|h[Palabra Sombría: Douleur]|h|r: Sa douleur est transférée par ses porteurs, éliminez-les rapidement.",
"* |cff71d5ff|Hspell:155327|h[Vaisseau de l'âme]|h|r: utilisez son vaisseau de l'âme - anticipez la force qui s'abat sur le vaisseau.",
"* |cff71d5ff|Hspell:153991|h[Esprits Déchirés]|h|r: invoque ses esprits déchirés - inflige rapidement des dégâts aux esprits.",
};

pack["75839"] = { "Kaathar le Vigilant",
"* |cff71d5ff|Hspell:153006|h[Lumière Consacrée]|h|r : La Lumière Consacrée frappe - se cacher derrière le bouclier sacré.",
"* |cff71d5ff|Hspell:153002|h[Bouclier Sacré]|h|r : son bouclier sacré protège le groupe contre la lumière — gardez-le en main au bon moment.",
"* |cff71d5ff|Hspell:161457|h[Terre Sacrée]|h|r : La terre sacrée brûle sous les pieds - évitez le sol.",
};

pack["77734"] = { "Teron’gor",
"* |cff71d5ff|Hspell:156854|h[Drenar Vida]|h|r: interrompre son capacité de drain de vie toujours.",
"* |cff71d5ff|Hspell:157168|h[Être attentif]|h|r : Son attention est focalisée sur la cible : la cible désignée, le bastion.",
"* |cff71d5ff|Hspell:156965|h[Doom]|h|r: son Doom - préparez-vous au Doom et soignez intensément.",
"* |cff71d5ff|Hspell:156857|h[Pluie de Feu]|h|r : Évitez les dégâts de feu.",
"* |cff71d5ff|Hspell:156842|h[Corrupción]|h|r : Sa corruption affecte son porteur ; éliminez-la rapidement.",
};

-- --------------------------------- --
-- Iron Docks : Zona 1195 --
-- --------------------------------- --

bos = { "Massacreurs du Tristerail",
"* |cff71d5ff|Hspell:163689|h[Sphere Sanguine]|h|r : La sphere sanguine enveloppe l'un d'eux – arrêtez d'attaquer la sphere.",
"* |cff71d5ff|Hspell:163665|h[Flaming Slash]|h|r: son tranch tranch enflammé qui crée une ligne brûlante - esquivez le tranch.",
"* |cff71d5ff|Hspell:165152|h[Lava Strike]|h|r: Lava Strike frappe le sol - sortez de la zone d'attaque.",
"* |cff71d5ff|Hspell:163379|h[Grande Explosion]|h|r : Grande Explosion - éloignez-vous de la zone d'effet.",
};
pack["80805"] = bos; pack["80816"] = bos; pack["80808"] = bos;

bos = { "Tranchechair Nok’gar",
"* |cff71d5ff|Hspell:164426|h[Provocation imprudente]|h|r : Sa provocation imprudente le rend enrage ; arrêtez l'attaque tant qu'elle dure.",
"* |cff71d5ff|Hspell:164835|h[Appel de saignement]|h|r: son appel de saignement - préparez-vous à l'appel et soignez.",
"* |cff71d5ff|Hspell:164635|h[Flèches enflammées]|h|r : les flèches enflammées tombent - évitez les flèches.",
};
pack["81297"] = bos; pack["81305"] = bos;

pack["79852"] = { "Oshir",
"* |cff71d5ff|Hspell:162415|h[Time to Feed]|h|r : son moment de attaquer, il se nourrit de sa victime - soigner la victime pour la maintenir en vie.",
"* |cff71d5ff|Hspell:161239|h[Rending Slashes]|h|r: Les attaques de déchirure ciblent son visage - esquivez les attaques.",
"* |cff71d5ff|Hspell:163054|h[Rugido]|h|r: son rugido provoque une onde d'explosion - se disperser et utiliser la guérison.",
"* |cff71d5ff|Hspell:178156|h[Jet d'acide]|h|r : les flaques d'acide sont au sol — évitez qu'elles ne vous éclaboussent.",
};

pack["83612"] = { "Crânoc",
"* |cff71d5ff|Hspell:168398|h[Rapid Fire]|h|r: son attaque rapide touche sa cible - la cible doit l'éviter.",
"* |cff71d5ff|Hspell:168929|h[Canon]|h|r: Le canon frappe le pont – profitez de la couverture qu'il offre.",
"* |cff71d5ff|Hspell:168227|h[Gron's Strike]|h|r: son attaque retourne le projectile - soyez prêt pour l'impact.",
};

-- --------------------------------- --
-- Blackrock Foundry : Zona 1205 --
-- --------------------------------- --

pack["77325"] = { "Main-Noire",
"* |cff71d5ff|Hspell:156479|h[Déflagration Massive]|h|r : Les Déflagrations Massives explosent - éloignez-vous des Déflagrations Massives.",
"* |cff71d5ff|Hspell:156096|h[Marked for Death]|h|r: Sa marque de la mort le accompagne - le marqué doit résister à la vague.",
"* |cff71d5ff|Hspell:156667|h[Siegemaker]|h|r: ses Siegemaker se réveillent – inflige des dégâts aux Siegemaker rapidement.",
"* |cff71d5ff|Hspell:157000|h[Lancer des bombes de débris]|h|r : ses bombes de débris atterrissent sur les cibles - les cibles ramassent.",
"* |cff71d5ff|Hspell:155992|h[Shattering Smash]|h|r: son coup dévastateur, à utiliser sur différents tanks.",
};

bos = { "Le Haut-fourneau",
"* |cff71d5ff|Hspell:155192|h[Bombe]|h|r : Les bombes à fragmentation touchent les zones marquées – récupérez-les rapidement.",
"* |cff71d5ff|Hspell:176121|h[Fuego Volátil]|h|r: el fuego volátil salta hacia quien está cerca - extiéndete para que deje de saltar.",
"* |cff71d5ff|Hspell:155179|h[Ingénieur]|h|r : appelle ses ingénieurs - éliminez rapidement les ingénieurs.",
"* |cff71d5ff|Hspell:155196|h[Observer]|h|r: Observer cible l'objectif : l'objectif ciblé se déplace.",
};
pack["76809"] = bos; pack["76806"] = bos;

pack["76865"] = { "Seigneur des bêtes Darmac",
"* |cff71d5ff|Hspell:154960|h[Attraper]|h|r: ses épines de prise endommagent le sol aux points d'attaque - esquiver les épines.",
"* |cff71d5ff|Hspell:154975|h[Call the Pack]|h|r: he calls the pack - kill the beasts fast.",
"* |cff71d5ff|Hspell:155236|h[Briser l'armure]|h|r : son talent réduit la défense du tank principal - alterner avec d'autres tanks.",
"* |cff71d5ff|Hspell:155247|h[Stampede]|h|r: L'estampede traverse la zone - éloignez-vous de l'estampede.",
"* |cff71d5ff|Hspell:154989|h[Souffle de l'Enfer]|h|r: son souffle de l'Enfer brûle la première ligne - restez hors de la portée du souffle.",
};

pack["76877"] = { "Gruul",
"* |cff71d5ff|Hspell:155078|h[Golpe Devastador]|h|r: son coup dévastateur inflige des dégâts au tank - alterner les tanks.",
"* |cff71d5ff|Hspell:155080|h[Coup de l'Enfer]|h|r : son coup de l'Enfer partagent les dégâts des brûlures. Se aligner dans la première ligne et attaquer ensemble.",
"* |cff71d5ff|Hspell:155326|h[Stone Strike]|h|r: Son attaque de Stone Strike touche le groupe - Stoneform est déclenchée.",
"* |cff71d5ff|Hspell:155730|h[Rugido desmoronándose]|h|r: Utilisez son rugissement dévastateur pour étendre et se soigner.",
"* |cff71d5ff|Hspell:173192|h[Rupture]|h|r: La rupture provoque l'effondrement du sol - évitez de tomber.",
};

bos = { "Hans’gar et Franzok",
"* |cff71d5ff|Hspell:153470|h[Skullcracker]|h|r: son attaque \"Skullcracker\" cible le tank principal - alterner les tanks.",
"* |cff71d5ff|Hspell:160838|h[Rugissement perturbateur]|h|r : son rugissement perturbateur - arrêtez de lancer des sorts pendant qu'il rugit.",
"* |cff71d5ff|Hspell:156938|h[Grip de Suppression]|h|r: Le grip de suppression affecte fortement le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:161570|h[Placas ardientes]|h|r: les plaques ardientes enflamment le sol - éviter les plaques.",
"* |cff71d5ff|Hspell:174825|h[Stampers]|h|r: Les Stampers frappent le sol - ne vous mettez jamais sous un Stamber.",
};
pack["76974"] = bos; pack["76973"] = bos;

bos = { "Les Vierges de Fer",
"* |cff71d5ff|Hspell:157854|h[Bombardment Alpha]|h|r: l'attaque frappe le pont - préparez-vous à l'attaque.",
"* |cff71d5ff|Hspell:156631|h[Rapid Fire]|h|r: il utilise son attaque rapide pour cibler - il poursuit la cible et la élimine.",
"* |cff71d5ff|Hspell:156214|h[Ombres convulsives]|h|r: Les ombres convulsives marquent leur porteur : le marqué est sorti du groupe.",
"* |cff71d5ff|Hspell:158707|h[Protection Terrestre]|h|r : elle utilise son bouclier de protection terrestre pour se protéger - détruisez le bouclier.",
"* |cff71d5ff|Hspell:158315|h[Chasse Sombre]|h|r : La chasse sombre attaque sa cible - éloignez-vous du chemin de la chasse.",
};
pack["77557"] = bos; pack["77231"] = bos; pack["77477"] = bos;

pack["76814"] = { "Courbe-flamme Ka’graz",
"* |cff71d5ff|Hspell:155318|h[Coup de lave]|h|r : Son coup de lave s'étend - éloignez-vous du coup.",
"* |cff71d5ff|Hspell:155277|h[Blazing Radiance]|h|r: le rayon ardent marque son porteur - le porteur maint une distance.",
"* |cff71d5ff|Hspell:156724|h[Invoque des Armes Enchantées]|h|r : Vos armes enchantées prennent les armes - brûlez rapidement les armes.",
"* |cff71d5ff|Hspell:154932|h[Torrent de Feu]|h|r : Utilisez Torrent de Feu pour que votre cible attaque.",
"* |cff71d5ff|Hspell:155074|h[Souffle de brûlure]|h|r : son souffle de brûlure brûle la partie avant - gardez-la hors de portée du souffle.",
};

pack["77692"] = { "Kromog",
"* |cff71d5ff|Hspell:161923|h[Crushing Earth]|h|r: l'attaque \"Crushing Earth\" frappe avec les deux mains - esquiver les coups.",
"* |cff71d5ff|Hspell:158130|h[Geyser de piedra]|h|r: Les projectiles du geyser visent les cibles - esquivez les projectiles.",
"* |cff71d5ff|Hspell:157060|h[Grasping Earth]|h|r: Les mains de Grasping Earth s'étendent - maintenez la distance avant qu'elles ne se referment.",
"* |cff71d5ff|Hspell:157054|h[Attaques Trompeurs]|h|r: Ses attaques trompeuses explosent la salle -> préparez-vous à encaisser les coups.",
"* |cff71d5ff|Hspell:156852|h[Stone Breath]|h|r: his stone breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:156766|h[Armadura Distorsionada]|h|r: son armadura distorsionada inflige des à la cible principale - alterner les cibles.",
};

pack["77182"] = { "Mangeroc",
"* |cff71d5ff|Hspell:156240|h[Acid Torrent]|h|r: his acid torrent grinds the tank - alternate tanks.",
"* |cff71d5ff|Hspell:156179|h[Retched Blackrock]|h|r: his retched vomit streams out - run from the stream.",
"* |cff71d5ff|Hspell:155898|h[Rolling Fury]|h|r: Son attaque de furie le fait rouler dans la salle - évitez de vous trouver sur son trajet.",
"* |cff71d5ff|Hspell:156877|h[Blackrock Barrage]|h|r: ses attaques au marteau frappent de près ; se disperser et soigner.",
};

pack["76906"] = { "Conducteur Thogar",
"* |cff71d5ff|Hspell:176312|h[Entrenamiento]|h|r: Les trains avancent sur leurs voies - ne vous mettez jamais sur le chemin d'un train.",
"* |cff71d5ff|Hspell:155864|h[Grenade de Proto]|h|r: Les grenades de Proto explosent sur la cible - la cible touchée déclenche l'explosion.",
"* |cff71d5ff|Hspell:155921|h[Enkindle]|h|r: Maintenir les stacks d'Enkindle sur le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:159481|h[Grenade de siège retardée]|h|r : Les grenades de siège retardées affectent les zones marquées - l'effet de zone résultant de l'explosion.",
};

-- --------------------------------- --
-- Grimrail Depot : Zona 1208 --
-- --------------------------------- --

pack["79545"] = { "Nitrogg Tour-de-Tonnerre",
"* |cff71d5ff|Hspell:163550|h[Mortar]|h|r: Ses mortiers lancent des projectiles sur le sol vers les ennemis - Esquiver les projectiles.",
"* |cff71d5ff|Hspell:160681|h[Flamme de suppression]|h|r : La flamme de suppression couvre une grande zone – profitez de la couverture offerte par le terrain.",
"* |cff71d5ff|Hspell:160943|h[Explosion de fragments]|h|r: Son explosion de fragments, affecte le devant - sortez de l'explosion.",
};

bos = { "Fusétincelle et Borka",
"* |cff71d5ff|Hspell:162407|h[X21-01A Missile]|h|r: Les missiles sont tirés en rafale - ils sortent des cascades.",
"* |cff71d5ff|Hspell:161090|h[Carrera Salvaje]|h|r: La carrera salvaje inflige desgarros sur - sortez de la ligne de la course sauvage.",
"* |cff71d5ff|Hspell:162500|h[VX18-B]|h|r: son projectile VX rebondissant - esquivez le projectile.",
};
pack["77803"] = bos; pack["77816"] = bos;

pack["80005"] = { "Seigneur du ciel Tovra",
"* |cff71d5ff|Hspell:162066|h[Freezing Snare]|h|r: les flèches de [Freezing Snare] visent les cibles - esquivez les pièges.",
"* |cff71d5ff|Hspell:163447|h[Marque de Glace]|h|r: Les marques de glace suivent leurs porteurs - les créatures marquées restent en mouvement.",
"* |cff71d5ff|Hspell:162058|h[Spinning Spear]|h|r: son lance giratoria frappe le sol - sortez de la trajectoire de la lance.",
};

-- --------------------------------- --
-- Skyreach : Zona 1209 --
-- --------------------------------- --

pack["76141"] = { "Araknath",
"* |cff71d5ff|Hspell:154115|h[Flamme]|h|r: leurs attaques de flammes explosent vers l'avant – restez à l'écart.",
"* |cff71d5ff|Hspell:154162|h[Energizar]|h|r: bebe de su conducto - destruye el conducto para cortar el suministro.",
"* |cff71d5ff|Hspell:154135|h[Supernova]|h|r: Utilisez la supernova - étendez-la et soignez.",
};

pack["75964"] = { "Ranjit",
"* |cff71d5ff|Hspell:153757|h[Fan of Blades]|h|r: his blade fans cut out at marks - dodge the fans.",
"* |cff71d5ff|Hspell:156793|h[Vortex de Chakrams]|h|r: le vortex de chakrams tourne de manière incontrôlée – éloignez-vous de la rotation.",
"* |cff71d5ff|Hspell:153315|h[Wind Fall]|h|r: le vent souffle sur le sol, esquivez les attaques.",
"* |cff71d5ff|Hspell:154043|h[Explosion]|h|r : Les explosions causent des dégâts ; évitez les explosions.",
};

pack["76143"] = { "Rukhran",
"* |cff71d5ff|Hspell:1253510|h[Sunbreak]|h|r: Les Sunbreaks se brisent et se propagent - déplacez-vous et soignez.",
"* |cff71d5ff|Hspell:1253527|h[Écailles brûlantes]|h|r: Écailles brûlantes - brisez la ligne de vue jusqu'à ce qu'elles disparaient.",
"* |cff71d5ff|Hspell:153810|h[Explosion solaire]|h|r : L'explosion solaire - Préparez-vous à l'explosion et soignez.",
"* |cff71d5ff|Hspell:153794|h[Briser l'armure]|h|r : son attaque d'armure inflige des dégâts au tank principal - alterner avec d'autres tanks.",
"* |cff71d5ff|Hspell:159382|h[Quills]|h|r: las púas dañan a los objetivos marcados - rompe la línea de visión y cura.",
};

pack["76266"] = { "Grand sage Viryx",
"* |cff71d5ff|Hspell:1253538|h[Rayon brûlant]|h|r : son rayons brûlants brûlent ceux qui les utilisent - les brûlés se tiennent à distance.",
"* |cff71d5ff|Hspell:1253998|h[Cast Down]|h|r: Son skill Cast Down cible l'objectif : l'objectif ciblé protège la lance.",
"* |cff71d5ff|Hspell:154396|h[Solar Blast]|h|r: utilisez votre Solar Blast - interrompez-le à chaque fois.",
"* |cff71d5ff|Hspell:154055|h[Bouclier]|h|r : son bouclier se répare - interrompt chaque attaque.",
};

-- --------------------------------- --
-- Highmaul : Zona 1228 --
-- --------------------------------- --

pack["78491"] = { "Fougerme",
"* |cff71d5ff|Hspell:159219|h[Necrotic Breath]|h|r: his necrotic breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:163241|h[Rot]|h|r: Les stacks de rot du tank - alterner entre les tanks.",
"* |cff71d5ff|Hspell:160022|h[Living Mushroom]|h|r: his living mushrooms mend whoever stands on them - keep the good fungi alive.",
"* |cff71d5ff|Hspell:163590|h[Musgo Asfixiante]|h|r: el musgo asfixiante lo alimenta, elimina el musgo de su camino.",
"* |cff71d5ff|Hspell:159996|h[Sponges infectées]|h|r : Les sponges infectées – Préparez les sponges et soignez intensément.",
};

pack["78714"] = { "Kargath Lamepoing",
"* |cff71d5ff|Hspell:159947|h[Attaque en chaîne]|h|r : son attaque en chaîne projette la cible vers les gradins - l'attaque avec l'épée, les tigres et les projectiles.",
"* |cff71d5ff|Hspell:159178|h[Open Wounds]|h|r : ses plaies ouvertes lacèrent le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:158986|h[Berserker Rush]|h|r: son attaque de rage se lance vers l'avant - éloignez-vous de l'attaque.",
"* |cff71d5ff|Hspell:159113|h[Frappe]|h|r: utilisez Frappe pour attaquer le tank — soyez prêt pour Frappe.",
"* |cff71d5ff|Hspell:159413|h[Mauling Brew]|h|r: les potions de maul absorbent le sol - évitez la potion.",
};

pack["79015"] = { "Ko’ragh",
"* |cff71d5ff|Hspell:161411|h[Expulse la magie: Glace]|h|r: Son expulsion de magie de glace gèle la cible - la cible affectée se protège contre le froid profond.",
"* |cff71d5ff|Hspell:162186|h[Expulse Magie: Arcane]|h|r: les sphères arcani volent librement : leurs marques capturent les sphères.",
"* |cff71d5ff|Hspell:156803|h[Bouclier de Force]|h|r: Utilisez votre bouclier de force pour absorber les dégâts. Détruisez le bouclier et profitez de sa vulnérabilité.",
"* |cff71d5ff|Hspell:163101|h[Trample]|h|r: son attaque de trample traverse -> hors du chemin de l'attaque.",
};

bos = { "Imperator Mar’gok",
"* |cff71d5ff|Hspell:158605|h[Mark of Chaos]|h|r: le marque de chaos est attaché à son porteur - le porteur reste à l'écart du groupe.",
"* |cff71d5ff|Hspell:156225|h[Branded]|h|r: La marque de brûlure affecte le porteur - l'armure de brûlure, un changement de phase.",
"* |cff71d5ff|Hspell:158553|h[Briser l'armure]|h|r : Son compétence de briser l'armure inflige des dégâts au tank principal - alterner avec d'autres tanks.",
"* |cff71d5ff|Hspell:165243|h[Vision de la Folie]|h|r : Les visions de la folie infligent des dégâts ; éloignez-vous des visions.",
"* |cff71d5ff|Hspell:178607|h[Étoile Noire]|h|r: les étoiles noires se déplacent - ne touchez pas les étoiles.",
};
pack["77428"] = bos; pack["78623"] = bos;

bos = { "Tectus",
"* |cff71d5ff|Hspell:162346|h[Torrent Cristalino]|h|r: Le Torrent Cristalino poursuit ses cibles – esquiver les éclats.",
"* |cff71d5ff|Hspell:162475|h[Tectónica]|h|r : La Tectónica - Préparez-vous à l'explosion et soignez.",
"* |cff71d5ff|Hspell:162518|h[Piliers de terre]|h|r : Les piliers de terre visent les cibles – esquiver les piliers.",
"* |cff71d5ff|Hspell:162968|h[Flèches de Terre]|h|r : Les flèches de terre se déplacent vers l'extérieur – sautez hors de la portée des flèches.",
"* |cff71d5ff|Hspell:162894|h[Gift of Earth]|h|r: son don de la terre le protège - brisez le bouclier.",
};
pack["78948"] = bos; pack["80557"] = bos; pack["80551"] = bos;

pack["77404"] = { "Le Boucher",
"* |cff71d5ff|Hspell:156157|h[Cleave]|h|r : Ses attaques à zone couvrent son visage - les personnages de mêlée doivent rester derrière.",
"* |cff71d5ff|Hspell:156151|h[Tenderizer]|h|r: les Tenderizers s'accumulent sur le tank - alterner entre différents tanks.",
"* |cff71d5ff|Hspell:156152|h[Gushing Wounds]|h|r: Les Gushing Wounds se dirigent vers la cible la plus proche - étalez-vous pour qu'ils cessent de sauter.",
"* |cff71d5ff|Hspell:156160|h[Attaque en zone]|h|r: l'attaque en zone - se regrouper et partager l'attaque.",
"* |cff71d5ff|Hspell:156598|h[Frenzy]|h|r: Son frenzied, son plus efficace quand ils ont peu de vie - éliminez-le pendant qu'il est en état de furie.",
};

bos = { "Les ogrons jumeaux",
"* |cff71d5ff|Hspell:157943|h[Whirl Wind]|h|r: l'attaque Whirl Wind tourne rapidement - éloignez-vous de l'attaque.",
"* |cff71d5ff|Hspell:158385|h[Pulverizar]|h|r: l'attaque de Pulverizar inflige de lourds dégâts sur une grande zone, se propageant à partir de l'explosion.",
"* |cff71d5ff|Hspell:158057|h[Rugido debilitante]|h|r: Utilisez son rugissement dévastateur - préparez-vous au rugissement et soignez.",
"* |cff71d5ff|Hspell:158241|h[Blaze]|h|r: le feu se propage le long d'une ligne - esquivez la ligne.",
"* |cff71d5ff|Hspell:158134|h[Shield Charge]|h|r: son attaque de charge qui frappe directement - dégager le chemin de la charge.",
"* |cff71d5ff|Hspell:163372|h[Volatilidad Arcana]|h|r: La volatilité arcana suit son porteur – le porteur reste séparé.",
};
pack["78238"] = bos; pack["78237"] = bos;

-- --------------------------------- --
-- The Everbloom : Zona 1279 --
-- --------------------------------- --

bos = { "Anciens protecteurs",
"* |cff71d5ff|Hspell:168082|h[Revitalize]|h|r: ses eaux de régénération le soignent - interrompez-le à chaque lancement.",
"* |cff71d5ff|Hspell:427510|h[Dégâts directs]|h|r: Ses dégâts directs marquent la cible - nettoyez le chemin des dégâts.",
"* |cff71d5ff|Hspell:427459|h[Toxic Bloom]|h|r: Les toxines éclatent - Évitez les toxines.",
"* |cff71d5ff|Hspell:167977|h[Bramble]|h|r: Les épines agrippent le sol - évitez les épines.",
};
pack["83894"] = bos; pack["83892"] = bos; pack["83893"] = bos;

pack["82682"] = { "Archimage Sol",
"* |cff71d5ff|Hspell:427899|h[Tempête de Cinderbolt]|h|r: Esquivez les projectiles de sa Tempête de Cinderbolt.",
"* |cff71d5ff|Hspell:428082|h[Fusion Glaciale]|h|r : Utilisez vos sphères de fusion glaciale, mais évitez les sphères fusionnées.",
"* |cff71d5ff|Hspell:428139|h[Compression Spatiale]|h|r : Son raid, il attire tout le monde - courez pour éviter le pull.",
"* |cff71d5ff|Hspell:427863|h[Frostbolt]|h|r: interrompez ses Frostbolts dès qu'il les lance.",
};

pack["81522"] = { "Fanécorce",
"* |cff71d5ff|Hspell:164294|h[Croissance incontrôlée]|h|r : sa croissance incontrôlée profite à son porteur : détruire la croissance avant qu'elle ne se développe.",
"* |cff71d5ff|Hspell:164275|h[Brittle Bark]|h|r: son écorce devient fragile après la croissance - les attaques au corps à corps le brûlent à travers.",
"* |cff71d5ff|Hspell:164357|h[Dry Strike]|h|r: Dry Strike inflige des dégâts en premier - restez hors de sa portée.",
};

pack["84550"] = { "Xeri’tac",
"* |cff71d5ff|Hspell:169233|h[Inhale]|h|r: Son souffle attire tous les joueurs — soyez prêts à être attiré.",
"* |cff71d5ff|Hspell:169382|h[Ráfaga gaseosa]|h|r: sus ráfagas gaseosas crean una nube; aléjate de la nube.",
"* |cff71d5ff|Hspell:169223|h[Gaz toxique]|h|r : Le gaz toxique reste au sol - évitez le gaz.",
};

pack["83846"] = { "Yalnu",
"* |cff71d5ff|Hspell:428746|h[Feu]|h|r: Ses attaques enflammées se propageant le long de ses lignes - esquivez les lignes.",
"* |cff71d5ff|Hspell:428823|h[Éruption Verte]|h|r : son éruption verte crée des attaques de [Lashers] - éliminez rapidement les [Lashers].",
"* |cff71d5ff|Hspell:169179|h[Colossal Smash]|h|r: son Colossal Smash impacte le sol - sortez de la zone de l'impact.",
"* |cff71d5ff|Hspell:169251|h[Entanglement]|h|r: L'effet d'enveloppement affecte un joueur - libérez celui qui est enroulé.",
"* |cff71d5ff|Hspell:173563|h[Veneno de lasher]|h|r: Interrompez le poison de Lasher à chaque lancement.",
};

-- --------------------------------- --
-- Upper Blackrock Spire : Zona 1358 --
-- --------------------------------- --

pack["76413"] = { "Tord-minerai Gor’ashan",
"* |cff71d5ff|Hspell:166168|h[Power Conduit]|h|r : ses conduits d'énergie vibrent autour de lui - détruisez les conduits pour interrompre son sort.",
"* |cff71d5ff|Hspell:154448|h[Shrapnel Nova]|h|r: Sa Nova de fragments cause une explosion; éloignez-vous de l'explosion.",
};

pack["76021"] = { "Kyrak",
"* |cff71d5ff|Hspell:161203|h[Rejuvenating Serum]|h|r: her rejuvenating serum mends him - interrupt the serum at every cast.",
"* |cff71d5ff|Hspell:161199|h[Attachement affaiblissant]|h|r : interrompez son attachement affaiblissant à chaque lancement.",
"* |cff71d5ff|Hspell:155037|h[Éruption]|h|r : Les éruptions frappent sous les pieds - ne vous placez jamais dans la portée de l'attaque.",
"* |cff71d5ff|Hspell:161288|h[Vileblood Serum]|h|r: le pool de Vileblood Serum recouvre le sol - évitez les pools.",
};

pack["76585"] = { "Ragevolée l’Indomptable",
"* |cff71d5ff|Hspell:155620|h[Burning Rage]|h|r: his burning rage flares at low life - burn him down through it.",
"* |cff71d5ff|Hspell:155051|h[Sortie de Magma]|h|r : Son sal de magma inflige des à la cible indiquée; esquiver l'attaque.",
"* |cff71d5ff|Hspell:155057|h[Lac de Magma]|h|r: Les lacs de magma s'étendent sur le sol - éviter les lacs.",
"* |cff71d5ff|Hspell:154996|h[Engulfing Fire]|h|r: son engulfing fire le baigne le devant - rester à l'extérieur de la flamme.",
};

bos = { "Commandant Tharbek",
"* |cff71d5ff|Hspell:161989|h[Iron Reaver]|h|r: son arme en fer en acier qui traverse et frappe le long de la trajectoire de l'attaque.",
"* |cff71d5ff|Hspell:162090|h[Imbued Iron Axe]|h|r: his imbued iron axe flies out at marks - dodge the axe.",
"* |cff71d5ff|Hspell:161833|h[Splash nocive]|h|r : Son splash nocive s'accumulent sur le sol - évitez le splash.",
};
pack["79912"] = bos; pack["80098"] = bos;

pack["77120"] = { "Seigneur de guerre Zaela",
"* |cff71d5ff|Hspell:155673|h[Destructive Smite]|h|r: son attaque destructrice frappe fort - alterner les tanks.",
"* |cff71d5ff|Hspell:155705|h[Rebounding Blade]|h|r: son hoja rebondissante rebondit - esquivez la hoja.",
"* |cff71d5ff|Hspell:155721|h[Cyclone de Fer]|h|r: son cyclone de fer - éloignez-vous de la rotation.",
};

-- --------------------------------- --
-- Hellfire Citadel : Zona 1448 --
-- --------------------------------- --

pack["91331"] = { "Archimonde",
"* |cff71d5ff|Hspell:182879|h[Doomfire Fixate]|h|r: Le doomfire poursuit sa cible - esquivez jusqu'à ce qu'il épuise son mana.",
"* |cff71d5ff|Hspell:183254|h[Bouclier des Flammes]|h|r: le bouclier pousse tous les ennemis de la salle - soyez prêt pour le déplacement.",
"* |cff71d5ff|Hspell:183817|h[Explosion de Feu]|h|r: Les explosions de feu ciblent les cibles marquées; les cibles marquées se défendent.",
"* |cff71d5ff|Hspell:184964|h[Shackled Torment]|h|r: Les Shackled Torment agrippent leurs porteurs - les Shackled se libèrent les uns après les autres.",
"* |cff71d5ff|Hspell:184265|h[Wrought Chaos]|h|r: Utilisez les flammes de Wrought Chaos entre ses liens - ne traversez pas les lignes de chaos.",
"* |cff71d5ff|Hspell:186574|h[Dread Fixate]|h|r: Le Dread poursuit sa cible - la cible doit esquiver le Dread.",
};

pack["90199"] = { "Fielsang",
"* |cff71d5ff|Hspell:179864|h[Ombre de la Mort]|h|r : L'ombre de la mort absorbe complètement sa cible - le feu consommé cause des dégâts internes.",
"* |cff71d5ff|Hspell:179977|h[Touch of the Death]|h|r: Le Touch of the Death saute vers la cible la plus proche - la cible doit rester à distance.",
"* |cff71d5ff|Hspell:179995|h[Bassin de la mort]|h|r: les bassins de la mort absorbent le sol - éviter les bassins.",
"* |cff71d5ff|Hspell:179909|h[Shared Fate]|h|r: Shared Fate unit les deux – maintenez le nœud tendu.",
"* |cff71d5ff|Hspell:180148|h[Appétit pour la vie]|h|r : Son appétit pour la vie augmente à mesure que les esprits vivent - brûlez rapidement les esprits.",
};

pack["90019"] = { "Assaut des Flammes infernales",
"* |cff71d5ff|Hspell:180079|h[Felfire Munitions]|h|r: Accumulation de felfire munitions - Utilisez-les avant que la mécanique ne se déclenche.",
"* |cff71d5ff|Hspell:160240|h[Felfire Crusher]|h|r: Ses attaques de Felfire Crusher approchent - éliminez rapidement les Crushers.",
"* |cff71d5ff|Hspell:181155|h[Mage Fel]|h|r : Les mages Fel maintiennent leur sort - interromprent les mages.",
"* |cff71d5ff|Hspell:184369|h[Hurlant d'haches]|h|r: les haches hurler tourbillonnent -> évitez les haches.",
"* |cff71d5ff|Hspell:180945|h[Nova]|h|r: Les explosions de Nova sont dévastatrices, soyez prêt.",
};

bos = { "Haut conseil des Flammes infernales",
"* |cff71d5ff|Hspell:184449|h[Marque du Nécromancien]|h|r : les marques se déplacent vers la personne la plus proche - étalez-vous pour qu'elles ne se déplacent plus.",
"* |cff71d5ff|Hspell:184476|h[Récolte]|h|r: la récolte marque le sol de son ennemi - sortez de la récolte.",
"* |cff71d5ff|Hspell:184360|h[Fureur de Fel]|h|r: sa fureur de fel le consume – maîtrisez la rage.",
"* |cff71d5ff|Hspell:184847|h[Acidic Wound]|h|r: his acidic wounds gash the tank - alternate tanks.",
"* |cff71d5ff|Hspell:184681|h[Darkness]|h|r: Gardez vos distances par rapport à l'obscurité.",
};
pack["92142"] = bos; pack["92144"] = bos; pack["92146"] = bos;

pack["90284"] = { "Saccageur de Fer",
"* |cff71d5ff|Hspell:182280|h[Artillery]|h|r: Les projectiles d'artillerie ciblent les cibles marquées - les cibles marquées fuient des projectiles.",
"* |cff71d5ff|Hspell:182001|h[Unstable Orb]|h|r: the unstable orbs drift out - dodge the orbs.",
"* |cff71d5ff|Hspell:182020|h[Attaques]|h|r: Ses attaques puissantes frappent la salle - soyez prêt pour les coups.",
"* |cff71d5ff|Hspell:179889|h[Blitz]|h|r: son attaque de Blitz traverse le champ - hors de la trajectoire de Blitz.",
"* |cff71d5ff|Hspell:182074|h[Immolation]|h|r : L'Immolation brûle le sol, à éviter.",
};

pack["90316"] = { "Seigneur de l’ombre Iskar",
"* |cff71d5ff|Hspell:179202|h[Eye of Anzu]|h|r: the eye of anzu unblinds its holder - pass the eye to whoever needs sight.",
"* |cff71d5ff|Hspell:181957|h[Vents Fantômes]|h|r: Les vents fantômes aveuglent le porteur - Le porteur se tient sur l'œil.",
"* |cff71d5ff|Hspell:182178|h[Fel Chakram]|h|r: lance ses chakrams de feu vers les cibles - esquivez les chakrams.",
"* |cff71d5ff|Hspell:182582|h[Laser]|h|r: son rayon, maintenez la cible hors du rayon.",
"* |cff71d5ff|Hspell:179219|h[Bomba Felígen]|h|r: La bomba felígen explose sur sa cible, et les cibles marquées subissent également des dégâts.",
};

pack["90378"] = { "Kilrogg Oeil-Mort",
"* |cff71d5ff|Hspell:180372|h[Heartseeker]|h|r: Heartseeker utilise ses cibles comme boucliers, forçant les marqués à courir séparément.",
"* |cff71d5ff|Hspell:180313|h[Possession Démoniaque]|h|r : La mort provoque des possessions démoniaques - éliminez rapidement les possédés.",
"* |cff71d5ff|Hspell:180199|h[Déchirement]|h|r: ses griffes qui lacèrent infligent des dégâts à l'armure - alterner les tanks.",
"* |cff71d5ff|Hspell:181488|h[Vision de la Muerte]|h|r: Les visions de la mort attirent les aveugles – consommez rapidement les visions.",
"* |cff71d5ff|Hspell:180224|h[Death Throes]|h|r : son attaque finale - étendez-la et soigne.",
};

pack["90435"] = { "Kormrok",
"* |cff71d5ff|Hspell:180244|h[Hit]|h|r: ses attaques détruisent la salle complètement ; répartissez-les pour qu'elles aient un effet séparé.",
"* |cff71d5ff|Hspell:181306|h[Explosion]|h|r: Les attaques explosives explosent sur leurs cibles - les cibles fuient de l'attaque.",
"* |cff71d5ff|Hspell:181292|h[Sal de Fuego]|h|r: Le Sal de Fuego est lancé en vagues – esquivez les vagues.",
"* |cff71d5ff|Hspell:181305|h[Swat]|h|r: son attaque de Swat déclenche son attaque de vol sur le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:186882|h[Enrage]|h|r: his enrage peaks at low life - burn him down through it.",
};

pack["91349"] = { "Mannoroth",
"* |cff71d5ff|Hspell:181275|h[La malédiction de la Légion]|h|r : la malédiction est transférée aux porteurs - les porteurs doivent rester séparés.",
"* |cff71d5ff|Hspell:181099|h[Mark of Doom]|h|r: le marque de la mort suit son porteur - le marqué doit s'éloigner.",
"* |cff71d5ff|Hspell:181735|h[Chasseur des Ombres]|h|r : ses chasseurs d'ombres attaquent les cibles - esquivez l'attaque.",
"* |cff71d5ff|Hspell:181180|h[Infernos]|h|r : Les Infernos tombent aux points d'impact - éviter les chutes.",
"* |cff71d5ff|Hspell:186362|h[Rage de Gul'dan]|h|r : La rage de Gul'dan atteint son pic – préparez-vous à la rage et soignez intensément.",
};

pack["92330"] = { "Socrethar l’Éternel",
"* |cff71d5ff|Hspell:183017|h[Fel Prison]|h|r: his fel prisons bag their bearers - free the bagged at once.",
"* |cff71d5ff|Hspell:180221|h[Esfera Felín Volátil]|h|r : Les sphères félines volantes poursuivent leurs cibles – les sphères marquées les détournent.",
"* |cff71d5ff|Hspell:182051|h[Fel Charge]|h|r: son attaque de Fel Charge - éloignez-vous de la ligne d'attaque.",
"* |cff71d5ff|Hspell:182769|h[Obsession Spectrale]|h|r : Les Obsessions Spectrales poursuivent leurs porteurs – les porteurs doivent esquiver.",
};

pack["90269"] = { "Velhari la Despote",
"* |cff71d5ff|Hspell:180166|h[Touch of Corruption]|h|r: Son Touch of Corruption, ils la soignent, donc annulez l'effet rapidement.",
"* |cff71d5ff|Hspell:180260|h[Gouge de Destruction]|h|r: Ses attaques de Destruction ciblent le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:180000|h[Sceau de pourriture]|h|r: son sceau de pourriture est lié à son porteur - le porteur reste à distance.",
"* |cff71d5ff|Hspell:180600|h[Bastion du Tyrant]|h|r: Son bastion absorbe tout - brûle le bastion.",
};

pack["93068"] = { "Xhul’horac",
"* |cff71d5ff|Hspell:186134|h[Toge de Fel]|h|r: Le toge de Fel marque le porteur : le porteur maintient les Flammes à distance.",
"* |cff71d5ff|Hspell:186490|h[Chaînes du Fel]|h|r: Les chaînes du Fel attaquent – Esquivez les chaînes.",
"* |cff71d5ff|Hspell:112866|h[Imps]|h|r: leurs imps attaquent - éliminez rapidement les imps.",
"* |cff71d5ff|Hspell:187204|h[Caos Abrumador]|h|r: Caos Abrumador atteint son pic – préparez-vous au chaos et soignez intensément.",
"* |cff71d5ff|Hspell:186073|h[Fel Singed]|h|r: Le fel singed reste au sol, évitez la zone affectée.",
};

pack["89890"] = { "Gangreseigneur Zakuun",
"* |cff71d5ff|Hspell:179407|h[Âme Désincarnée]|h|r : Ses âmes désincarnées marquent leurs porteurs - les marqués sont sortis du groupe.",
"* |cff71d5ff|Hspell:179711|h[Befouled]|h|r: Befouled contamine le sol autour de ses cibles - évitez qu'il vous contamine.",
"* |cff71d5ff|Hspell:181508|h[Seed of Destruction]|h|r: les graines de destruction explosent sous vos pieds – esquivez les graines.",
"* |cff71d5ff|Hspell:179406|h[Soul Cleave]|h|r: Son Soul Cleave divise le dégât dans toute la salle, dispersant l'attaque.",
"* |cff71d5ff|Hspell:179681|h[Enrage]|h|r: his enrage peaks at low life - burn him down through it.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["90802"] = { "Annihilon",
"* |cff71d5ff|Hspell:180939|h[Void Bomb]|h|r: ses bombes de vide explosent à leur cible - la cible fuit l'explosion.",
"* |cff71d5ff|Hspell:180932|h[Whirling Void]|h|r: Ses attaques de vide tournant créent des vortex — restez à l'extérieur.",
"* |cff71d5ff|Hspell:180950|h[Twist of Mind]|h|r: Twist of Mind cible un joueur - le groupe élimine la cible.",
};

pack["90841"] = { "Drogan",
"* |cff71d5ff|Hspell:180882|h[Whirling Axe]|h|r: ses haches rotatifs rebondissent, causant des dégâts en zone - esquiver les haches.",
"* |cff71d5ff|Hspell:180880|h[Attaque en chaîne]|h|r : L'attaque en chaîne attache les victimes ; brisez rapidement les chaînes.",
};

pack["81252"] = { "Drov le Destructeur",
"* |cff71d5ff|Hspell:175791|h[Colossal Smash]|h|r: son coup colossal frappe le sol - sortez du coup.",
"* |cff71d5ff|Hspell:175827|h[Appel à la Terre]|h|r : Utilisez son Appel à la Terre - Préparez-vous au sort et soignez.",
};

pack["90943"] = { "Gaur",
"* |cff71d5ff|Hspell:180879|h[Goren]|h|r: les Goren attaquent - éliminez rapidement les Goren.",
"* |cff71d5ff|Hspell:180868|h[Earth Strike]|h|r: Son attaque de terre, elle projette la cible. Soyez prêt à encaisser le coup.",
"* |cff71d5ff|Hspell:180830|h[Runic Spike]|h|r: the runic spikes spear up - dodge the spikes.",
};

pack["90995"] = { "Goggnathog",
"* |cff71d5ff|Hspell:180908|h[Énergie Déchaînée]|h|r : son énergie déchaînée provoque une explosion ; éloignez-vous de l'impact.",
"* |cff71d5ff|Hspell:180815|h[Polymorph Wild]|h|r: La polymorphie sauvage transforme le porteur; annulez-la dès que possible.",
"* |cff71d5ff|Hspell:180819|h[Arcane Orb]|h|r: the arcane orbs drift out - dodge the orbs.",
"* |cff71d5ff|Hspell:180816|h[Arcane Surge]|h|r: Interrompez-la à chaque lancement.",
};

pack["94015"] = { "Supremo Señor Kazzak",
"* |cff71d5ff|Hspell:187668|h[Mark of Kazzak]|h|r: his mark leaps to whoever stands close - spread so it stops leaping.",
"* |cff71d5ff|Hspell:187466|h[Doom]|h|r : son doom - préparez-vous à son doom et soignez intensément.",
};

pack["91012"] = { "Dame Fleshsear",
"* |cff71d5ff|Hspell:180774|h[Pluie de Feu]|h|r : utilisez votre Pluie de Feu pour l'étendre et la maintenir active.",
"* |cff71d5ff|Hspell:180776|h[Appels accablants]|h|r: ses flammes accablantes éteignent le feu -> éloignez-vous des flammes.",
"* |cff71d5ff|Hspell:180779|h[Appel de la Flamme]|h|r : Utilisez votre Appel de la Flamme - préparez-vous à l'attaque.",
};

pack["83746"] = { "Rukhmar",
"* |cff71d5ff|Hspell:167615|h[Armure perforante]|h|r : Utilisez l'attaque \"Armure perforante\" pour infliger des dégâts au tank principal - cela déplace les tanks.",
"* |cff71d5ff|Hspell:167647|h[Plumas sueltas]|h|r: Ses plumes lâchées infligent des dégâts en zone et soignent les ennemis.",
"* |cff71d5ff|Hspell:167679|h[Souffle solaire]|h|r : Utilisez votre souffle solaire pour la toucher - gardez-la hors de portée de votre attaque.",
"* |cff71d5ff|Hspell:167630|h[Explosion]|h|r: L'attaque explosive provoque une grande explosion ; éloignez-vous de l'impact.",
};

pack["81535"] = { "Tarlna Gorosi",
"* |cff71d5ff|Hspell:176004|h[Lian Sauvage]|h|r: ses lian sauvages attaquent -> Sortez des lian.",
"* |cff71d5ff|Hspell:175973|h[Colossal Smash]|h|r: son Colossal Smash impacte le sol - sortez de la zone de l'impact.",
"* |cff71d5ff|Hspell:175979|h[Genesis]|h|r: sa phase initiale inonde les racines - éliminez rapidement les racines qui apparaissent.",
"* |cff71d5ff|Hspell:176013|h[Réveiller Mandragore Sauvage]|h|r : ses mandragores se réveillent - éliminez-les rapidement.",
"* |cff71d5ff|Hspell:176037|h[Splash nocive]|h|r : Son splash nocive s'accumulent sur le sol - évitez le splash.",
};

pack["90946"] = { "Teluur",
"* |cff71d5ff|Hspell:180849|h[Nid d'Enjambre]|h|r: son groupe de Podlings - éliminez rapidement les Podlings.",
"* |cff71d5ff|Hspell:180836|h[Entanglement]|h|r: les sorts d'enveloppement fixent le sol – ne vous mettez jamais à l'intérieur des racines.",
"* |cff71d5ff|Hspell:180825|h[Éponges]|h|r : Les éponges se dispersent - éviter les éponges.",
};

P.fr = fr;
