--[[
	Bosses_Dragonflight_fr.lua
		Datos en français of the Dragonflight
		pack: the three raids (Vault of the Incarnates, Aberrus, Amirdrassil),
		the dungeons and Dawn of the Infinite, plus the Dragon Isles world
		bosses. Sources: DBM-Raids/Party-Dragonflight and DBM-DragonIsles
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Uldaman: Legacy of Tyr : Zona 2451 --
-- --------------------------------- --

pack["184018"] = { "Bromach",
"* |cff71d5ff|Hspell:369605|h[Appel des Profondeurs]|h|r : Il invoque les profondeurs et les trogs répondent - Déchaînez les trogs rapidement.",
"* |cff71d5ff|Hspell:369754|h[Bloodlust]|h|r: Son Bloodlust pousse le clan à la folie - attaquez-les et maintenez le buff.",
"* |cff71d5ff|Hspell:369700|h[Totem tremblant]|h|r : le totem tremblant secoue la pièce - éliminez-le avant qu'il ne termine.",
"* |cff71d5ff|Hspell:369675|h[Chain Lightning]|h|r: son chain lightning saltent entre les cibles regroupées - interrompez-le à chaque fois.",
"* |cff71d5ff|Hspell:369703|h[Thundering Slam]|h|r: le coup de foudre fissure le sol - sortez de l'impact.",
};

pack["184125"] = { "Chronoseigneur Déios",
"* |cff71d5ff|Hspell:376292|h[Eternal Orb]|h|r: les orbes éternels se déplacent dans la salle - évitez-les.",
"* |cff71d5ff|Hspell:376208|h[Rewind Timeflow]|h|r: il inverse le flux temporel et l'arène revient à son état initial - repérez votre position.",
"* |cff71d5ff|Hspell:377405|h[Time Sink]|h|r: le Time Sink tire ses victimes vers lui - sortez de sa portée immédiatement.",
"* |cff71d5ff|Hspell:376049|h[Wing Buffet]|h|r: le Wing Buffet repousse tout le monde - préparez-vous avant l'attaque.",
"* |cff71d5ff|Hspell:375727|h[Sand Breath]|h|r: sand breath brûle le devant de lui - gardez-vous de l'avant.",
};

pack["184422"] = { "Pyron",
"* |cff71d5ff|Hspell:369049|h[Seeking Flame]|h|r: le Seeking Flame poursuit sa cible - utilisez le déplacement pour éloigner le Seeking Flame du groupe.",
"* |cff71d5ff|Hspell:369110|h[Unstable Embers]|h|r: les braises orbitent autour de lui et se dispersent ensuite - laissez les étincelles avoir de la place.",
"* |cff71d5ff|Hspell:368990|h[Purging Flames]|h|r: une vague de flammes purifiants balaie la salle - sortez de sa trajectoire.",
"* |cff71d5ff|Hspell:369061|h[Searing Clap]|h|r: Searing Clap brûle tout ce qui se trouve devant lui - soyez prêt ou éloignez-vous.",
};

pack["184124"] = { "Sentinelle Talondras",
"* |cff71d5ff|Hspell:372600|h[Inexorable]|h|r: elle devient Inexorable et rien ne l'arrête - restez à distance jusqu'à ce qu'elle se termine.",
"* |cff71d5ff|Hspell:382071|h[Resonating Orb]|h|r: les orbes résonnants traversent la salle - esquivez les orbes et leur onde.",
"* |cff71d5ff|Hspell:372718|h[Écailles d'écorce]|h|r: les écailles d'écorce tombent sur les marques - esquivez les écailles.",
"* |cff71d5ff|Hspell:372719|h[Titanique Empowerment]|h|r : Votre pouvoir titain atteint son apogée - anticipez le coup de poing ou la détruisez avant qu'il ne frappe.",
"* |cff71d5ff|Hspell:372701|h[Crushing Stomp]|h|r: le crushing stomp atterrit avec un coup de pied -> anticiper le effet de recul.",
};

bos = { "Les Nains perdus",
"* |cff71d5ff|Hspell:369563|h[Wild Cleave]|h|r: l'attaque Wild Cleave cible tous ceux devant - rester à l'arrière.",
"* |cff71d5ff|Hspell:369573|h[Heavy Arrow]|h|r: le coup puissant coupe une ligne - éloignez-vous du coup.",
"* |cff71d5ff|Hspell:369791|h[Skullcracker]|h|r: Skullcracker charge son attaque - éloignez-vous de la trajectoire d'attaque.",
"* |cff71d5ff|Hspell:369677|h[Ricocheting Shield]|h|r: the shield ricochets between players - spread so it stops bouncing.",
"* |cff71d5ff|Hspell:369602|h[Bouclier défensif]|h|r : le bouclier bloque leurs défenses - l'interrompre à chaque fois.",
};
pack["184580"] = bos; pack["184581"] = bos; pack["184582"] = bos;

-- --------------------------------- --
-- The Azure Vault : Zona 2515 --
-- --------------------------------- --

pack["186739"] = { "Lame-Azur",
"* |cff71d5ff|Hspell:372222|h[Arcane Cleave]|h|r: son arcane cleave attaque vers l'avant - à éviter.",
"* |cff71d5ff|Hspell:385578|h[Orbe ancien]|h|r : les orbes anciens suivent leur cible - la cible marquée s'éloigne du groupe.",
"* |cff71d5ff|Hspell:373932|h[Illusionary Bolt]|h|r: interrompre toujours le sort.",
"* |cff71d5ff|Hspell:384132|h[Overwhelming Energy]|h|r: sa puissance augmente pendant la phase - soyez prêt pour l'attaque.",
"* |cff71d5ff|Hspell:384223|h[Summon Draconic Image]|h|r: ses illusions draconiques se séparent du combat - brûlez les images.",
};

pack["186644"] = { "Tellumor",
"* |cff71d5ff|Hspell:374364|h[Leyline Sprouts]|h|r: les sprouts de leyline éclosent sur le sol - ne vous tenez pas sur les lignes.",
"* |cff71d5ff|Hspell:374567|h[Explosive Eruption]|h|r: l'éruption se déclenche par rafales - éliminez les ennemis au moment de l'explosion.",
"* |cff71d5ff|Hspell:374720|h[Consuming Stomp]|h|r: son attaque dévastatrice qui touche tout le monde à proximité - se disperser et soigner rapidement.",
"* |cff71d5ff|Hspell:386660|h[Fissure Éruptive]|h|r: les fissures éclatent vers l'extérieur - évitez les fissures.",
"* |cff71d5ff|Hspell:374789|h[Infusion]|h|r: son coup d'infusion, qui touche le tank - alterner les tanks.",
};

pack["186737"] = { "Telash Ailegrise",
"* |cff71d5ff|Hspell:386781|h[Frost Bomb]|h|r: lance des bombes sur un joueur pour le ralentir - les autres doivent s'éloigner du groupe.",
"* |cff71d5ff|Hspell:387151|h[Icy Devastator]|h|r: le Icy Devastator coupe une ligne de givre - sortez de la ligne.",
"* |cff71d5ff|Hspell:388008|h[Guerre de l'Absolue Zéro]|h|r : la guerre de l'Absolue Zéro recouvre la salle - prenez le refuge que l'arène offre.",
};

pack["186738"] = { "Krânombrel",
"* |cff71d5ff|Hspell:384978|h[Dragon Strike]|h|r: le Dragon Strike marque son porteur - éliminez le debuff du porteur marqué.",
"* |cff71d5ff|Hspell:385399|h[Unleashed Destruction]|h|r: il vole et déchaîne la destruction en plein vol - soyez prêt à le contrer.",
"* |cff71d5ff|Hspell:384699|h[Crystalline Roar]|h|r: le cri de cristal se propage - restezz-vous à distance de la vague.",
"* |cff71d5ff|Hspell:385075|h[Éruption Arcane]|h|r: le fragment se décharge avec une force arcana - ne jamais toucher l'éruption.",
};

-- --------------------------------- --
-- The Nokhud Offensive : Zona 2516 --
-- --------------------------------- --

pack["186151"] = { "Khan Balakar",
"* |cff71d5ff|Hspell:376634|h[Iron Spear]|h|r: les épées de fer attaquent de l'extérieur - esquivez les lignes de l'épée.",
"* |cff71d5ff|Hspell:376864|h[Lance statique]|h|r: la lance statique marque sa victime - la cible s'éloigne du groupe.",
"* |cff71d5ff|Hspell:376725|h[Storm Bolt]|h|r: interrompre le Storm Bolt à chaque fois.",
"* |cff71d5ff|Hspell:375943|h[Upheaval]|h|r: son attaque provoque des fissures dans le sol - bougez-vous en suivant les fissures.",
"* |cff71d5ff|Hspell:375937|h[Rending Strike]|h|r: son coup de Rending inflige de lourds dégâts - la mitigation aide.",
};

pack["186616"] = { "Granyth",
"* |cff71d5ff|Hspell:388817|h[Shards of Stone]|h|r: lance de [Shards of Stone] vers l'extérieur - sortez des éclats.",
"* |cff71d5ff|Hspell:387155|h[Lance]|h|r: le lance s'enfonce dans sa cible - la cible recule pour éviter le lance.",
"* |cff71d5ff|Hspell:388283|h[Eruption]|h|r: interrompre l'éruption lorsqu'elle se construit.",
"* |cff71d5ff|Hspell:385916|h[Tectonic Stomp]|h|r: le stomp tectonique - éloignez-vous du centre de l'impact.",
};

bos = { "Teera et Maruuk",
"* |cff71d5ff|Hspell:382670|h[Gale Arrow]|h|r: le Gale Arrow coupe une ligne dans la pièce - sortez de la flèche.",
"* |cff71d5ff|Hspell:386547|h[Repulser]|h|r: l'onde de repoussement pousse tout le monde en arrière - soyez prêt à encaisser le coup.",
"* |cff71d5ff|Hspell:385339|h[Earthsplitter]|h|r: Earthsplitter déchirera le sol devant – éloignez-vous des lignes de fissure.",
"* |cff71d5ff|Hspell:386063|h[Frightful Roar]|h|r: le cri terrifiant - éloignez-vous du cri.",
"* |cff71d5ff|Hspell:382836|h[Brutalize]|h|r: les coups de brutalisation infligent des dégâts importants - atténuez-les.",
};
pack["186339"] = bos; pack["186338"] = bos;

pack["186615"] = { "Tempête déchaînée",
"* |cff71d5ff|Hspell:384686|h[Energy Surge]|h|r : son effet d'énergie la rend plus puissante - désactivez-la sur le boss.",
"* |cff71d5ff|Hspell:384620|h[Tempête électrique]|h|r: la tempête électrique frappe tout le monde à proximité - étalez-vous et soignez-la.",
"* |cff71d5ff|Hspell:384316|h[Lightning Strike]|h|r: les coups de foudre frappent aux cibles - étalement des coups.",
};

-- --------------------------------- --
-- Neltharus : Zona 2519 --
-- --------------------------------- --

pack["189340"] = { "Chargath, Fléau d’écailles",
"* |cff71d5ff|Hspell:373424|h[Grounding Spear]|h|r: le Grounding Spear marque sa victime - éloignez la cible avec le Spear.",
"* |cff71d5ff|Hspell:374655|h[Fetter]|h|r: le collier immobilise les joueurs - restez dégagés car il les lie.",
"* |cff71d5ff|Hspell:373742|h[Magma Wave]|h|r: la vague de magma traverse la salle - esquivez la vague pendant qu'elle se déplace.",
"* |cff71d5ff|Hspell:375056|h[Fiery Focus]|h|r: son focus enflammé réduit sa ligne de vue - restez hors de son regard.",
};

pack["181861"] = { "Magmodonte",
"* |cff71d5ff|Hspell:375068|h[Magma Lob]|h|r: Magma lobs crash down at marked positions - dodge the lobs.",
"* |cff71d5ff|Hspell:375251|h[Lava Spray]|h|r: son jets de lave sortent de l'avant - rester à l'arrière.",
"* |cff71d5ff|Hspell:375436|h[Blazing Charge]|h|r: il utilise Blazing Charge - éloignez-vous du trajet de l'attaque.",
"* |cff71d5ff|Hspell:374365|h[Mutation Volatile]|h|r: la mutation volatile agite sa progéniture - donnez de l'espace à la progéniture agitée.",
};

pack["189478"] = { "Maître-forge Gorek",
"* |cff71d5ff|Hspell:374842|h[Blazing Aegis]|h|r: le Blazing Aegis tourne autour de la pièce - esquivez le bouclier volant.",
"* |cff71d5ff|Hspell:374534|h[Attaques enflammés]|h|r : ses attaques enflammées se cumulent sur le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:374635|h[Might of the Forge]|h|r: la puissance de la forge s'active - anticipez le coup et soignez.",
"* |cff71d5ff|Hspell:374969|h[Forgestorm]|h|r: le coup de fouet de la tempête de forge frappe le sol - sortez de la tempête.",
};

pack["189901"] = { "Dame de guerre Sargha",
"* |cff71d5ff|Hspell:376780|h[Bouclier de Magma]|h|r: son bouclier de magma le bloque - le faites fondre avec le canon de feu draconique de la salle.",
"* |cff71d5ff|Hspell:377522|h[Burning Pursuit]|h|r: Burning Pursuit traque son objectif - le maintenir en mouvement.",
"* |cff71d5ff|Hspell:377018|h[Or purifiant]|h|r: les poches d'or purifiant se répandent sur le sol - ne vous tenez jamais dans l'or.",
"* |cff71d5ff|Hspell:377204|h[Dragon's Kiln]|h|r: le four du dragon explose vers l'extérieur - sortez de l'explosion.",
};

-- --------------------------------- --
-- Brackenhide Hollow : Zona 2520 --
-- --------------------------------- --

pack["186121"] = { "Décatriarche Occulâcre",
"* |cff71d5ff|Hspell:373944|h[Totem de explosion de podredumbre]|h|r: détruire le totem avant qu'il n'explose.",
"* |cff71d5ff|Hspell:376170|h[Choking Rotcloud]|h|r: les nuages de  se déplacent - ne vous tenez jamais dans le nuage.",
"* |cff71d5ff|Hspell:373917|h[Decaystrike]|h|r: Votre Decaystrike inflige de lourds dégâts - la mitigation aide.",
};

pack["186116"] = { "Tir-Tripes",
"* |cff71d5ff|Hspell:384827|h[Appeler les hyènes]|h|r : il appelle ses hyènes - éliminer rapidement le groupe.",
"* |cff71d5ff|Hspell:384425|h[Smell Like Meat]|h|r: l'odeur \"Smell Like Meat\" attire les hyènes, donc éloignez-vous de la cible.",
"* |cff71d5ff|Hspell:384148|h[Piège d'enfermement]|h|r: les pièges d'enfermement se dispersent sur le sol - passez devant les pièges.",
"* |cff71d5ff|Hspell:384638|h[Master's Call]|h|r: son contrôle du groupe - l'interrompre.",
};

bos = { "Bataillon de Griffentaille",
"* |cff71d5ff|Hspell:381461|h[Savage Charge]|h|r: Le Savage Charge fonce sur sa cible - dégager le chemin ou se positionner pour encaisser le coup.",
"* |cff71d5ff|Hspell:377827|h[Bladestorm]|h|r: le bladestorm tourne autour des combattants en mêlée - les combattants sortent de la zone de tourbillon.",
"* |cff71d5ff|Hspell:378229|h[Marqué pour Butchery]|h|r : le [Marqué pour Butchery] prend l'épée du groupe - préparez-vous au coup.",
"* |cff71d5ff|Hspell:381379|h[Sens décomposés]|h|r : les sens décomposés - retirer le debuff du joueur ciblé.",
"* |cff71d5ff|Hspell:381466|h[Hextrick]|h|r: le hex - dissiper le hexé instantanément.",
};
pack["186122"] = bos; pack["186124"] = bos; pack["186125"] = bos;

pack["186120"] = { "Arbec",
"* |cff71d5ff|Hspell:377222|h[Consume]|h|r: il se divise et avale sa cible - libérer la cible avalée avant la digestion.",
"* |cff71d5ff|Hspell:376933|h[Grasping Vines]|h|r: grasping vines lash out - pull your feet out of their reach.",
"* |cff71d5ff|Hspell:376811|h[Decay Spray]|h|r: le spray de pourriture se propage vers l'extérieur - restez à l'écart du jet.",
"* |cff71d5ff|Hspell:381770|h[Gushing Ooze]|h|r: interrompre le flux de boue.",
};

-- --------------------------------- --
-- Ruby Life Pools : Zona 2521 --
-- --------------------------------- --

pack["189232"] = { "Kokia Foulebraise",
"* |cff71d5ff|Hspell:372110|h[Molten Boulder]|h|r: la grosse roche fondue roule à son emplacement - esquivez la roche.",
"* |cff71d5ff|Hspell:372864|h[Rituel de liaison au feu]|h|r : le rituel reste en place tant que le djaradin est vivant - brûlez le djaradin pour le détruire.",
"* |cff71d5ff|Hspell:372858|h[Searing Blows]|h|r: ses coups brûlants s'accumulent sur le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:384823|h[Inferno]|h|r: l'inferno couvre la pièce - étendez-le et soignez-le.",
};

bos = { "Kyrakka et Erkhart Foudreveine",
"* |cff71d5ff|Hspell:381517|h[Winds of Change]|h|r: les vents du changement font bouger la pièce - soyez prêt à encaisser le coup.",
"* |cff71d5ff|Hspell:381525|h[Roaring Firebreath]|h|r: L'explosion de feu rugissante de Kyrakka frappe son front - restez à l'écart.",
"* |cff71d5ff|Hspell:381516|h[Interrupting Cloudburst]|h|r: Erkhart's cloudburst cuts your casts - interrupt it every time.",
"* |cff71d5ff|Hspell:381862|h[Cœur de l'Enfer]|h|r: le cœur de l'enfer explose - sortez du cœur.",
"* |cff71d5ff|Hspell:381512|h[Stormslam]|h|r: Stormslam inflige de lourds dégâts - la mitigation aide.",
};
pack["190484"] = bos; pack["190485"] = bos;

pack["188252"] = { "Mélidrussa Manteglace",
"* |cff71d5ff|Hspell:373046|h[Awaken Whelps]|h|r: elle réveille ses chiots - éliminez rapidement les chiots.",
"* |cff71d5ff|Hspell:372851|h[Tempête de froid]|h|r: la tempête de froid souffle autour d'elle - sortez de la tempête.",
"* |cff71d5ff|Hspell:372988|h[Ice Bulwark]|h|r: le bouclier de glace la protège - détruisez le bouclier.",
"* |cff71d5ff|Hspell:372682|h[Primal Chill]|h|r: le stack de Primal Chill s'applique aux porteurs - surveillez les stacks et minimisez les dégâts.",
"* |cff71d5ff|Hspell:373022|h[Gelé]|h|r: le gel immobilise un joueur - libérez-le immédiatement.",
};

-- --------------------------------- --
-- Vault of the Incarnates : Zona 2522 --
-- --------------------------------- --

pack["190245"] = { "Garde-couvée Diurna",
"* |cff71d5ff|Hspell:376073|h[Rapide Incubation]|h|r : les œufs éclosent automatiquement - assurez-vous de maintenir les nouveau-nés sous contrôle.",
"* |cff71d5ff|Hspell:378782|h[Blessure mortelle]|h|r : ses blessures mortelles provoquent des saignements sur le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:390561|h[Regard de Diurna]|h|r: son regard brûle celui qui le porte - la marche marquée est claire.",
"* |cff71d5ff|Hspell:375889|h[Greatstaff's Wrath]|h|r: son coup de sa grande épée dévastatrice - préparez-vous à l'assaut.",
"* |cff71d5ff|Hspell:388716|h[Icy Shroud]|h|r: le manteau de glace refroidit tout le monde - étalez-le et soignez-le.",
};

pack["189813"] = { "Dathéa, transcendée",
"* |cff71d5ff|Hspell:391686|h[Conductive Mark]|h|r: le marque conducteur se déplace vers la personne la plus proche - étalez-vous pour qu'il cesse de se déplacer.",
"* |cff71d5ff|Hspell:388410|h[Crosswinds]|h|r: les vents coupent en lignes - sortez des lignes des vents.",
"* |cff71d5ff|Hspell:375580|h[Zephyr Slam]|h|r: le Zephyr Slam envoie le tank dans les airs - alterner les tanks.",
"* |cff71d5ff|Hspell:395501|h[Blowback]|h|r : le effet de retour projette tout - préparez-vous à l'effet.",
"* |cff71d5ff|Hspell:376943|h[Cyclone]|h|r: le cyclone attire les joueurs - éloignez-vous du cyclone.",
"* |cff71d5ff|Hspell:387849|h[Coalescing Storm]|h|r: elle invoque ses élémentaux de tempête - éliminez-les rapidement.",
};

pack["184972"] = { "Éranog",
"* |cff71d5ff|Hspell:390715|h[Flamerift]|h|r: le flamerift marque son porteur - le porteur reste marqué jusqu'à ce qu'il saute.",
"* |cff71d5ff|Hspell:396094|h[Greater Flamerift]|h|r: le Greater Flamerift cible le second tank - alterner les tanks.",
"* |cff71d5ff|Hspell:394906|h[Burning Wound]|h|r: his burning wound stacks up fast - swap the tank before the stacks bite.",
"* |cff71d5ff|Hspell:370615|h[Molten Cleave]|h|r: son coup de Molten Cleave coupe le sol - esquivez le coup.",
"* |cff71d5ff|Hspell:396023|h[Incinerating Roar]|h|r: l'incinérant, étendez-le et soigne-le.",
"* |cff71d5ff|Hspell:396022|h[Épée de point chaud]|h|r: lance d'épée de point chaud sur les cibles - esquivez les épées.",
};

pack["184986"] = { "Kurog Totem-Sinistre",
"* |cff71d5ff|Hspell:372158|h[Sunder's Strike]|h|r: Sunder's Strike frappe le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:373329|h[Molten Rupture]|h|r: son attaque de feu qui projette un cercle de feu - se déplacer entre les cercles.",
"* |cff71d5ff|Hspell:374023|h[Searing Carnage]|h|r: le Searing Carnage explose aux marques - éloignez-vous de la zone d'explosion.",
"* |cff71d5ff|Hspell:372458|h[Absolute Zero]|h|r: Absolute Zero marque son porteur - il marque le kite loin du groupe.",
"* |cff71d5ff|Hspell:373678|h[Biting Chill]|h|r: le Biting Chill reste en place où il a atterri - évitez le froid persistant.",
};

pack["189492"] = { "Raszageth la Mange-tempêtes",
"* |cff71d5ff|Hspell:381615|h[Charge statique]|h|r: la charge statique se déplace vers la cible la plus proche - étalez-vous pour l'empêcher de se déplacer.",
"* |cff71d5ff|Hspell:377612|h[Aile de tempête]|h|r: l'aile de tempête projette tout le monde en arrière - se protéger contre l'aile.",
"* |cff71d5ff|Hspell:388643|h[Volatile Current]|h|r: les courants instables dispersent des étincelles - se déplacer pour intercepter les étincelles.",
"* |cff71d5ff|Hspell:395906|h[Mâchoires électrifiées]|h|r: ses mâchoires électrifiées attaquent le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:377594|h[Lightning Breath]|h|r: her lightning breath sears her front - keep out of the breath.",
};

pack["187967"] = { "Sennarth, la Glaciale",
"* |cff71d5ff|Hspell:371976|h[Chilling Blast]|h|r: le Chilling Blast se déplace vers la cible la plus proche - étalez-vous pour empêcher qu'il ne se déplace.",
"* |cff71d5ff|Hspell:372082|h[Enveloping Webs]|h|r: les toiles enveloppantes immobilisent un joueur - coupez le joueur de la toile.",
"* |cff71d5ff|Hspell:372238|h[Appeler les araignées]|h|r: elle appelle ses araignées - éliminez rapidement la progéniture.",
"* |cff71d5ff|Hspell:372030|h[Coller de Toile]|h|r: le coller de toile ralentit les cibles enveloppées - éliminez rapidement les toiles.",
"* |cff71d5ff|Hspell:373405|h[Gossamer Burst]|h|r: le Gossamer Burst tire tout le monde vers elle – préparez-vous à la traction.",
};

pack["190496"] = { "Terros",
"* |cff71d5ff|Hspell:380487|h[Explosion de roche]|h|r : l'explosion de roche lance des roches sur les cibles - esquivez les roches.",
"* |cff71d5ff|Hspell:381253|h[Awakened Earth]|h|r: l'Awakened Earth explose sous son coup - la cible se déplace de l'explosion.",
"* |cff71d5ff|Hspell:376279|h[Concussive Slam]|h|r: son coup concussif - anticiper le coup et soigner le pic.",
"* |cff71d5ff|Hspell:377166|h[Resonating Annihilation]|h|r: la Resonating Annihilation est son attaque la plus puissante - anticipez l'attaque et soignez intensivement.",
"* |cff71d5ff|Hspell:383073|h[Shattering Impact]|h|r: les impacts de destruction provoquent des tremblements -> évitez les impacts.",
};

bos = { "Le Conseil primordial",
"* |cff71d5ff|Hspell:371591|h[Tombes de la glace]|h|r: les tombes de glace ciblent un joueur - brisez la tombe immédiatement.",
"* |cff71d5ff|Hspell:386440|h[Convocación Glacial]|h|r: la convocation glaciale - préparez-vous au rituel glacial et soignez.",
"* |cff71d5ff|Hspell:373059|h[Primal Blizzard]|h|r: la tempête primale frappe la pièce - étalez-vous et soignez-vous.",
"* |cff71d5ff|Hspell:371624|h[Conductive Mark]|h|r: chaque marque conductrice revend son propre pilier - apportez votre marque à son pilier.",
"* |cff71d5ff|Hspell:372315|h[Frost Spike]|h|r: interrompez toujours le [Frost Spike].",
};
pack["187771"] = bos; pack["187768"] = bos; pack["187772"] = bos; pack["187767"] = bos;

-- --------------------------------- --
-- Algeth'ar Academy : Zona 2526 --
-- --------------------------------- --

pack["191736"] = { "Tricérabec",
"* |cff71d5ff|Hspell:377004|h[Cri de terreur]|h|r: le cri de terreur - se disperser à partir du cri.",
"* |cff71d5ff|Hspell:377034|h[Tempête dévastatrice]|h|r : sa tempête dévastatrice pousse les joueurs vers l'avant - se protéger contre la tempête ou se retirer de l'avant.",
"* |cff71d5ff|Hspell:376997|h[Coup sauvage]|h|r : le coup sauvage frappe fort - la mitigation aide.",
"* |cff71d5ff|Hspell:376448|h[Tempête de feu]|h|r: la tempête de feu se déchaîne – évitez les flammes tombantes.",
};

pack["190609"] = { "Écho de Doragosa",
"* |cff71d5ff|Hspell:374352|h[Energy Bomb]|h|r: les bombes d'énergie se dispersent sur les cibles - émanent des explosions.",
"* |cff71d5ff|Hspell:374361|h[Astrale souffle]|h|r : son souffle astral la frappe - gardez-la hors du souffle.",
"* |cff71d5ff|Hspell:388820|h[Power Vacuum]|h|r: le vide de pouvoir attire tout le monde - éloignez-vous de l'attraction.",
};

pack["186951"] = { "Ancien embroussaillé",
"* |cff71d5ff|Hspell:388796|h[Germinate]|h|r: les graines germent en créatures, éliminez les pousses avant qu'elles ne grandissent.",
"* |cff71d5ff|Hspell:396640|h[Healing Touch]|h|r: son soin restaure sa santé - interrompez-le à chaque fois.",
"* |cff71d5ff|Hspell:388544|h[Barkbreaker]|h|r: son coup de son inflige des dégâts importants - la mitigation aide.",
"* |cff71d5ff|Hspell:388923|h[Burst Forth]|h|r : le burst forth - se préparer et soigner.",
};

pack["194181"] = { "Vexamus",
"* |cff71d5ff|Hspell:385974|h[Arcane Orbs]|h|r: les orbes arcani flottent librement - interceptez les orbes avant qu'ils ne flottent dans la pièce.",
"* |cff71d5ff|Hspell:386173|h[Mana Bombs]|h|r: les bombes de mana suivent leurs cibles - éparpillez-les.",
"* |cff71d5ff|Hspell:385958|h[Arcane Expulsion]|h|r: l'arcane expulsion touche tout le monde à proximité - atténuer et soigner.",
"* |cff71d5ff|Hspell:388537|h[Arcane Fissure]|h|r: les fissures arcannes déchirent le sol - éviter les fissures.",
};

-- --------------------------------- --
-- Halls of Infusion : Zona 2527 --
-- --------------------------------- --

pack["189722"] = { "Goliath gobeur",
"* |cff71d5ff|Hspell:385551|h[Gulp]|h|r: il avale sa cible - le groupe récupère la cible de la gorge.",
"* |cff71d5ff|Hspell:385531|h[Body Slam]|h|r: effectuer un coup de corps -> sortir de la trajectoire du coup de corps.",
"* |cff71d5ff|Hspell:374389|h[Venom de Swog]|h|r: le venom de Swog s'accumule sur le tank - réduire les stacks.",
"* |cff71d5ff|Hspell:385187|h[Cri de dévastation]|h|r : son cri de dévastation - étendre et le soigner.",
};

pack["189727"] = { "Khajin l’Inflexible",
"* |cff71d5ff|Hspell:390111|h[Cyclone de glace]|h|r : les cyclones de glace traversent la pièce - ne vous tenez jamais dans les cyclones.",
"* |cff71d5ff|Hspell:386757|h[Hailstorm]|h|r: la tempête de grêle recouvre l'arène - prenez le couvert que l'arène offre.",
"* |cff71d5ff|Hspell:386559|h[Glacial Surge]|h|r: la attaque de glace se déploie - esquivez l'attaque.",
"* |cff71d5ff|Hspell:385963|h[Frost Shock]|h|r: désactiver le Frost Shock sur la cible indiquée.",
};

pack["189729"] = { "Tsunami primordial",
"* |cff71d5ff|Hspell:387571|h[Focused Deluge]|h|r: le focused deluge frappe son coup - préparez-vous au déluge.",
"* |cff71d5ff|Hspell:387474|h[Globule infusé]|h|r : les globules infusés flottent librement - faites exploser les globules avant qu'ils ne touchent le groupe.",
"* |cff71d5ff|Hspell:388424|h[Tempest's Fury]|h|r: Tempest's Fury inflige des dégâts à toute la zone - résistez à la fureur et soignez.",
"* |cff71d5ff|Hspell:387504|h[Squall Buffet]|h|r: le Squall Buffet repousse tout le monde -> préparez-vous à l'éjection.",
};

pack["189719"] = { "Garde Iridéus",
"* |cff71d5ff|Hspell:389179|h[Power Overload]|h|r: his power overload surges wild - run clear of the overload.",
"* |cff71d5ff|Hspell:383840|h[Ablative Barrier]|h|r: le bouclier absorbant le dégât le protège - détruisez le bouclier.",
"* |cff71d5ff|Hspell:384014|h[Static Surge]|h|r: le Static Surge frappe tout le monde - étalez-vous et soignez-le.",
"* |cff71d5ff|Hspell:384524|h[Gants de Titan]|h|r: ses gants de titan tremblent à l'avant - restez à l'arrière.",
};

-- --------------------------------- --
-- Amirdrassil, the Dream's Hope : Zona 2549 --
-- --------------------------------- --

bos = { "Conseil des rêves",
"* |cff71d5ff|Hspell:418187|h[Renaissance]|h|r: le garde tombé se relève à moins qu'il ne soit brûlé - brûlez-le rapidement.",
"* |cff71d5ff|Hspell:421022|h[Griffes douloureuses]|h|r: les griffes douloureuses attaquent le tank principal - alterner les tanks.",
"* |cff71d5ff|Hspell:420948|h[Barreling Charge]|h|r: la charge de barreling charge à sa cible - nettoyer le chemin de la charge.",
"* |cff71d5ff|Hspell:420525|h[Rage furieuse]|h|r : la rage furieuse - étendez-la et soignez-la.",
"* |cff71d5ff|Hspell:420671|h[Noxious Blossom]|h|r: les fleurs toxiques apparaissent au sol - éviter les fleurs.",
};
pack["208363"] = bos; pack["208365"] = bos; pack["208367"] = bos;

pack["204931"] = { "Fyrakka le Flamboyant",
"* |cff71d5ff|Hspell:417443|h[Marque de Fyralath]|h|r: sa marque inflige des dégâts au tank principal - alterner les tanks.",
"* |cff71d5ff|Hspell:419506|h[Firestorm]|h|r: la tempête de feu brûle la pièce – préparez-vous à la tempête et soignez intensément.",
"* |cff71d5ff|Hspell:430441|h[Ombres de flamme noire]|h|r: ses ombres de flamme noire se rapprochent – brûlez rapidement les ombres.",
"* |cff71d5ff|Hspell:417455|h[Dream Rend]|h|r: le dream rend - s'éloigner du rend.",
"* |cff71d5ff|Hspell:420422|h[Wild Fire]|h|r: le sort [Wild Fire] inflige des dégâts sur une zone, il est donc important de se positionner pour minimiser les dégâts reçus et de se soigner rapidement.",
"* |cff71d5ff|Hspell:414186|h[Blaze]|h|r: le chemin enflammé persiste derrière lui - éviter le chemin.",
};

pack["209333"] = { "Racine-Noueuse",
"* |cff71d5ff|Hspell:421898|h[Flaming Pestilence]|h|r: la peste ardiente répand sa flamme nauséabonde - atténuer la peste.",
"* |cff71d5ff|Hspell:422053|h[Épine d'ombre]|h|r: son épines de son épée sortent - esquivez les épines.",
"* |cff71d5ff|Hspell:421972|h[Controlled Burn]|h|r: le Controlled Burn utilise sa capacité de bombe pour se positionner et infliger des dégâts - la cible marquée permet de disperser l'explosion.",
"* |cff71d5ff|Hspell:424352|h[Dreadfire Barrage]|h|r: le dreadfire barrage - les tanks alternent sur celui-ci.",
"* |cff71d5ff|Hspell:422026|h[Tortured Scream]|h|r: la cried déchirante - étendez-la et soigne-la.",
"* |cff71d5ff|Hspell:425816|h[Blazing Pollen]|h|r: interrompre [Blazing Pollen] à chaque fois.",
};

pack["200926"] = { "Igira la Cruelle",
"* |cff71d5ff|Hspell:414340|h[Drenched Blades]|h|r: ses lames mouillées infligent des dégâts de saignement au tank - alterner les tanks.",
"* |cff71d5ff|Hspell:414888|h[Blistering Spear]|h|r: her blistering spears skewer their marks - dodge the spears.",
"* |cff71d5ff|Hspell:414367|h[Gathering Torment]|h|r: le Gathering Torment chasse sa proie - atténuer l'effet avant qu'il ne soit maximal.",
"* |cff71d5ff|Hspell:416048|h[Umbral Destruction]|h|r: le umbral destruction - anticiper la destruction et soigner intensément.",
"* |cff71d5ff|Hspell:419462|h[Flesh Mortification]|h|r: la Flesh Mortification profite de son porteur - la détruire quand elle est au maximum.",
};

pack["208445"] = { "Larodar, gardien de la flamme",
"* |cff71d5ff|Hspell:417653|h[Force of Nature]|h|r : ses forces de la nature se rassemblent - éliminez-les rapidement.",
"* |cff71d5ff|Hspell:418520|h[Blistering Splinters]|h|r: the blistering splinters spear out - dodge the splinters.",
"* |cff71d5ff|Hspell:422614|h[Scorching Roots]|h|r: ses racines brûlantes immobilisent leurs porteurs - brûlez les racines pour les désactiver.",
"* |cff71d5ff|Hspell:417667|h[Charred Treant]|h|r: les charred treants bloquent le chemin - les détruire.",
"* |cff71d5ff|Hspell:429032|h[Everlasting Blaze]|h|r : Everlasting Blaze brûle tout - soyez prêt à encaisser la brûlure et soignez intensément.",
};

pack["206172"] = { "Nymue, la trame du cercle",
"* |cff71d5ff|Hspell:420846|h[Continuum]|h|r: le anneau Continuum balaye le sol - déplacez-vous sur la piste déjà balayée.",
"* |cff71d5ff|Hspell:420554|h[Verdant Matrix]|h|r: le réseau verdant s'étend sur le sol - ne vous tenez jamais dans le réseau.",
"* |cff71d5ff|Hspell:430563|h[Ephemeral Flora]|h|r : l'éphéméral partage son éclosion - la soigner ensemble.",
"* |cff71d5ff|Hspell:429615|h[Impending Loom]|h|r: le impending loom se aligne - sortez des lignes.",
"* |cff71d5ff|Hspell:420907|h[Pluie verte]|h|r: la pluie verte - éviter la pluie.",
};

pack["200927"] = { "Fumeron",
"* |cff71d5ff|Hspell:421656|h[Brûlure]|h|r: la brûlure brûle le tank principal - alterner les tanks.",
"* |cff71d5ff|Hspell:422577|h[Searing Aftermath]|h|r: Searing Aftermath inflige des dégâts, éloignez-vous de l'effet.",
"* |cff71d5ff|Hspell:425885|h[Seeking Inferno]|h|r: les Seeking Infernos traquent leurs cibles - ils les chassent et les éloignent.",
"* |cff71d5ff|Hspell:421343|h[Marque de Damnation]|h|r : la marque de Damnation est montée sur son porteur - préparez la marque.",
"* |cff71d5ff|Hspell:421455|h[Overheated]|h|r : Il surchauffe et augmente ses dégâts - soignez intensément pendant la phase d'overheat.",
};

pack["209090"] = { "Tindral Vifsage, prophète de flamme",
"* |cff71d5ff|Hspell:422000|h[Searing Wrath]|h|r: sonner sur [Searing Wrath] - alterner les tanks.",
"* |cff71d5ff|Hspell:423260|h[Blazing Mushroom]|h|r: his blazing mushrooms bloom - burst the mushrooms before they burst.",
"* |cff71d5ff|Hspell:420236|h[Falling Stars]|h|r: les étoiles frappent sur les cibles - esquivez les étoiles.",
"* |cff71d5ff|Hspell:424581|h[Fiery Growth]|h|r: le Fiery Growth suit son porteur - éloignez le porteur du groupe.",
"* |cff71d5ff|Hspell:424495|h[Mass Entanglement]|h|r : l'entanglement massif immobilise le groupe - libérez rapidement ceux qui sont immobilisés.",
};

pack["208478"] = { "Volcoross",
"* |cff71d5ff|Hspell:421207|h[Coiling Flames]|h|r: les flammes enroulées frappent - les frappés se dispersent avant que les enroulements n'explosent.",
"* |cff71d5ff|Hspell:427201|h[Coiling Eruption]|h|r: l'explosion de Coiling Eruption cible ses porteurs - les porteurs absorbent l'explosion.",
"* |cff71d5ff|Hspell:420933|h[Inondation des Terres du Feu]|h|r: l'inondation des Terres du Feu partage son coup - absorbez-le ensemble.",
"* |cff71d5ff|Hspell:421616|h[Volcanic Disgorge]|h|r: son volantes disgorge s'abat - évitez les flammes tombants.",
"* |cff71d5ff|Hspell:421703|h[Serpent's Wrath]|h|r: l'attaque de la colère du serpent atteint son apogée - préparez-vous à affronter la colère.",
};

-- --------------------------------- --
-- Aberrus, the Shadowed Crucible : Zona 2569 --
-- --------------------------------- --

pack["199659"] = { "Assaut des Zaqalis",
"* |cff71d5ff|Hspell:401258|h[Coudable lourd]|h|r: le coudable lourd frappe le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:401108|h[Phoenix Rush]|h|r: le Phoenix Rush - sortez de la ligne d'attaque.",
"* |cff71d5ff|Hspell:397383|h[Mystique de Magma]|h|r: les mystiques de magma s'allument rapidement, brûlez-les rapidement.",
"* |cff71d5ff|Hspell:401381|h[Concentration éveillée]|h|r : la concentration éveillée - éloignez-vous de la concentration.",
"* |cff71d5ff|Hspell:407009|h[Vigorous Gale]|h|r: le coup de vent puissant pousse la salle - anticipez le coup.",
};

pack["201668"] = { "Écho de Neltharion",
"* |cff71d5ff|Hspell:402902|h[Twisted Earth]|h|r: les murs de Twisted Earth vous enferment – ne vous tenez jamais dans les murs.",
"* |cff71d5ff|Hspell:407221|h[Rushing Darkness]|h|r: le Rushing Darkness poursuit sa cible - la cible peut échapper au Rushing Darkness.",
"* |cff71d5ff|Hspell:402115|h[Fissure échoante]|h|r : la fissure échoante - fuir de la fissure.",
"* |cff71d5ff|Hspell:401998|h[Calamitous Strike]|h|r: son coup dévastateur repousse le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:410953|h[Cœur volcanique]|h|r : les cœurs volcaniques éclatent sous vos pieds - évitez les cœurs.",
};

pack["201261"] = { "Kazzara, née des enfers",
"* |cff71d5ff|Hspell:407196|h[Dread Rifts]|h|r: les Dread Rifts traversent la pièce - sortez des Rift.",
"* |cff71d5ff|Hspell:402253|h[Ray of Anguish]|h|r: son rayon d'angoisse brûle celui qui le porte - le marque coupe le faisceau.",
"* |cff71d5ff|Hspell:400430|h[Hellbeam]|h|r: son rayon de  balaie le sol - sortez du rayon.",
"* |cff71d5ff|Hspell:404743|h[Griffes de terreur]|h|r : Les griffes de terreur attaquent le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:403326|h[Winds of Extinction]|h|r: les vents de l'extinction repoussent - soyez prêt à les contrer.",
};

pack["201579"] = { "Magmorax",
"* |cff71d5ff|Hspell:408839|h[Accumulation de chaleur]|h|r : sa chaleur continue de s'accumuler sur tous - préparez-vous à la brûlure et essayez de terminer le combat rapidement.",
"* |cff71d5ff|Hspell:402994|h[Molten Spittle]|h|r: son attaque de spittle, partage son effet de dégâts - absorbez ensemble.",
"* |cff71d5ff|Hspell:403740|h[Igniting Roar]|h|r: l'Igniting Roar - étendez et soigne.",
"* |cff71d5ff|Hspell:407879|h[Blazing Tantrum]|h|r: son accès infligent des dégâts sur le sol autour de lui - le tank doit le déplacer.",
"* |cff71d5ff|Hspell:409093|h[Blazing Breath]|h|r: his blazing breath washes his front - keep out of the breath.",
};

pack["201320"] = { "Rashok, l’Ancien",
"* |cff71d5ff|Hspell:401419|h[Siphon Energy]|h|r: S'agit de drainer sa charge à partir de la colonne - drainez-le rapidement ou il se recharge.",
"* |cff71d5ff|Hspell:405316|h[Ancient Fury]|h|r: le Ancient Fury - anticipez les pics d'attaque et utilisez la rage quand il est disponible ; maintenez sa charge au minimum.",
"* |cff71d5ff|Hspell:400777|h[Charged Smash]|h|r: le Charged Smash partage son coup - absorbez-le ensemble.",
"* |cff71d5ff|Hspell:406851|h[Flamme de la Destruction]|h|r : la flamme de la destruction partage son attaque - concentrez-vous pour la contrer.",
"* |cff71d5ff|Hspell:405821|h[Searing Slam]|h|r: son coup brûlant frappe fort - alterner les tanks.",
};

pack["201754"] = { "Squammandant Sarkareth",
"* |cff71d5ff|Hspell:401951|h[Oblivion]|h|r: ses stacks d'Oblivion remplissent la salle - préparez-vous à encaisser les dégâts.",
"* |cff71d5ff|Hspell:401215|h[Emptiness Between Stars]|h|r: le vide entre les étoiles téléporte son porteur - le marqueur forme le vide.",
"* |cff71d5ff|Hspell:407576|h[Astral Flare]|h|r: les flares astrals - se propagent à partir des flares.",
"* |cff71d5ff|Hspell:401383|h[Cri de Oppression]|h|r : son cri de oppression exerce une pression - anticipez le cri.",
"* |cff71d5ff|Hspell:401810|h[Glittering Surge]|h|r: Utilisez le Glittering Surge pour étendre et soigner.",
};

bos = { "Chambre d’amalgamation",
"* |cff71d5ff|Hspell:401809|h[Ombre Corrompue]|h|r: l'ombre corrompue affecte son porteur - le pas marqué sort de l'ombre.",
"* |cff71d5ff|Hspell:405036|h[Umbral Detonation]|h|r: l'explosion de l'Umbral Detonation se déclenche à sa cible - le point cible.",
"* |cff71d5ff|Hspell:407640|h[Convergence de l'ombre]|h|r : la convergence de l'ombre - restez à distance de son trajet.",
"* |cff71d5ff|Hspell:404732|h[Météore enflammée]|h|r : la météore enflammée partage son effet - absorbez-la ensemble.",
"* |cff71d5ff|Hspell:403459|h[Coalescing Void]|h|r: le void en coalescence - étendez-le et sois-le.",
};
pack["201774"] = bos; pack["201773"] = bos; pack["201934"] = bos;

bos = { "Les expériences oubliées",
"* |cff71d5ff|Hspell:406311|h[Frappes infusées]|h|r: les frappes infusées s'accumulent sur le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:406358|h[Rending Charge]|h|r: les charges de Rending se dirigent vers les cibles - esquivez les charges.",
"* |cff71d5ff|Hspell:404472|h[Massive Slam]|h|r: le coup massif se propage - sortez de l'impact.",
"* |cff71d5ff|Hspell:404713|h[Bellowing Roar]|h|r: le coup de rugissement repousse – anticipez le rugissement.",
"* |cff71d5ff|Hspell:407327|h[Essence instable]|h|r: l'essence instable marque son porteur - éloignez l'essence du groupe.",
};
pack["200912"] = bos; pack["200913"] = bos; pack["200918"] = bos;

pack["202375"] = { "Zskarn, l’Intendant vigilant",
"* |cff71d5ff|Hspell:405736|h[Pièges de feu draconique]|h|r : les pièges de feu draconique se déclenchent - passez devant les pièges activés.",
"* |cff71d5ff|Hspell:405812|h[Animer les golems]|h|r : ses golems se réveillent - éliminez rapidement les golems.",
"* |cff71d5ff|Hspell:405919|h[Activer le piège]|h|r : activation du piège - l'interrompre avant qu'il ne se déclenche.",
"* |cff71d5ff|Hspell:403978|h[Onde de choc]|h|r : l'onde de choc repulse - préparez-vous à l'onde.",
"* |cff71d5ff|Hspell:404010|h[Embruns instables]|h|r: les embruns instables se dispersent – éviter les embruns.",
};

-- --------------------------------- --
-- Dawn of the Infinite : Zona 2579 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["203678"] = { "Grommash Hellscream",
"* |cff71d5ff|Hspell:410235|h[Tempête d'acier]|h|r : les lames tournent dans le mêlée - sortez du tourbillon.",
"* |cff71d5ff|Hspell:410254|h[Décapiter]|h|r : la décapitation affaiblit le tank - défenses sur le coup marqué.",
"* |cff71d5ff|Hspell:408227|h[Shockwave]|h|r: la onde de choque traverse le champ - éloignez-vous de son trajet.",
"* |cff71d5ff|Hspell:418046|h[FOR THE HORDE!]|h|r: the cry rouses his army - clear the charged soldiers fast.",
"* |cff71d5ff|Hspell:407122|h[Pluie de feu]|h|r : ses soldats crachent du feu par rafales - sortez de chaque rafale.",
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["203679"] = { "Anduin Lothar",
"* |cff71d5ff|Hspell:410235|h[Tempête d'acier]|h|r: les lames tournent dans le mêlée - sortez du tourbillon.",
"* |cff71d5ff|Hspell:418059|h[Mortal Strikes]|h|r: les coups brisent le tank - défenses sur le coup marqué.",
"* |cff71d5ff|Hspell:418054|h[Shockwave]|h|r : la onde de choque traverse le champ - éloignez-vous de son trajet.",
"* |cff71d5ff|Hspell:418047|h[FOR THE ALLIANCE!]|h|r: the cry rouses his army - clear the charged soldiers fast.",
"* |cff71d5ff|Hspell:417018|h[Blizzard]|h|r: ses soldats invoquent des tempêtes glaciales - sortez de chaque tempête.",
};
-- --------------------------------- --

bos = { "Chancre de Galakrond",
"* |cff71d5ff|Hspell:407406|h[Corrosion]|h|r: la corrosion se transmet à son porteur - le porteur doit maintenir la blight à l'écart du groupe.",
"* |cff71d5ff|Hspell:407159|h[Reclamation]|h|r: la reclamation - éloignez-vous de l'explosion.",
"* |cff71d5ff|Hspell:407978|h[Vents nécrotiques]|h|r : les vents nécrotiques - étendez-les et sois conscient de leur effet.",
"* |cff71d5ff|Hspell:406886|h[Corrosive Infusion]|h|r: la infusion corrosive se forme sous les pieds - éviter l'infusion.",
"* |cff71d5ff|Hspell:408141|h[Souffle de la pourriture]|h|r: le souffle de la pourriture lave son front - éloignez-vous du souffle.",
};
pack["198997"] = bos; pack["201792"] = bos; pack["201788"] = bos; pack["201790"] = bos;

pack["198995"] = { "Chronikar",
"* |cff71d5ff|Hspell:413142|h[Eon Shatter]|h|r: l'Eon Shatter détruit le sol - sortez de l'explosion.",
"* |cff71d5ff|Hspell:413013|h[Chrono Shear]|h|r: son chrono shear frappe fort le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:401421|h[Sand Stomp]|h|r: le sand stomp se disperse - étendez-vous à partir de l'impact.",
};

pack["199000"] = { "Chronoseigneur Déios",
"* |cff71d5ff|Hspell:416152|h[Summon Infinite Keeper]|h|r: ses Keepers infinis se réveillent - brûlez les Keepers rapidement.",
"* |cff71d5ff|Hspell:410904|h[Infinity Orb]|h|r: l'Infinity Orb se déplace de manière aléatoire - ne jamais toucher l'orbite.",
"* |cff71d5ff|Hspell:411763|h[Infinite Blast]|h|r: interrompre [Infinite Blast] à chaque fois.",
"* |cff71d5ff|Hspell:416139|h[Temporal Breath]|h|r: son souffle temporaire touche sa face - éloignez-vous du souffle.",
"* |cff71d5ff|Hspell:412027|h[Chronal Burn]|h|r: Chronal Burn - purgez-la sur les cibles marquées.",
};

pack["198933"] = { "Iridikron le Pierre-Écaille",
"* |cff71d5ff|Hspell:409261|h[Extinction Blast]|h|r: son extinction blast est trop grand pour être esquivé - prenez le couvert que l'arène offre.",
"* |cff71d5ff|Hspell:409456|h[Earthsurge]|h|r: son earthsurge provoque des chutes de roches - soyez prêt à encaisser.",
"* |cff71d5ff|Hspell:414535|h[Stonecracker Barrage]|h|r: le Stonecracker Barrage partage son coup - absorbez-le ensemble.",
"* |cff71d5ff|Hspell:409635|h[Pulverizing Breath]|h|r: son souffle dévastateur le frappe sur le devant - éloignez-vous du souffle.",
"* |cff71d5ff|Hspell:414184|h[Cataclysmic Obliteration]|h|r: Cataclysmic Obliteration est son attaque la plus puissante - anticipez et soignez intensivement.",
};

pack["198996"] = { "Voies temporelles matérialisées",
"* |cff71d5ff|Hspell:405696|h[Chrono-faded]|h|r: le chrono-faded agrippe son porteur - préparez-vous à la disparition.",
"* |cff71d5ff|Hspell:405431|h[Fragments of Time]|h|r : les fragments de temps flottent librement - restez à l'écart des fragments.",
};

pack["198999"] = { "Morchie",
"* |cff71d5ff|Hspell:403891|h[Plus de problèmes]|h|r : Ses anciennes versions arrivent - éliminez-les rapidement.",
"* |cff71d5ff|Hspell:401200|h[Fixate]|h|r: le fixate cible sa proie - la proie marquée continue de courir.",
"* |cff71d5ff|Hspell:404364|h[Dragon Breath]|h|r: son souffle de dragon la frappe sur le devant - gardez-la hors du souffle.",
"* |cff71d5ff|Hspell:406481|h[Time Traps]|h|r: les pièges temporels apparaissent sur le sol - ne jamais vous mettre dans les pièges.",
"* |cff71d5ff|Hspell:401667|h[Time Stasis]|h|r: la Time Stasis gèle celui qui la utilise - éviter la Time Stasis.",
};

pack["198998"] = { "Tyr le Gardien infini",
"* |cff71d5ff|Hspell:400681|h[Étincelle de Tyr]|h|r : les étincelles de Tyr se dispersent sur les cibles - se déplacer des étincelles.",
"* |cff71d5ff|Hspell:400642|h[Siphon Oath]|h|r: le shield de Siphon Oath le protège - brûlez le shield.",
"* |cff71d5ff|Hspell:401248|h[Titanic Blow]|h|r: son coup titanesque projette le tank - alterner les tanks.",
"* |cff71d5ff|Hspell:400641|h[Dividing Strike]|h|r : le coup divisant partage son effet - absorbez-le ensemble.",
"* |cff71d5ff|Hspell:401482|h[Infinite Annihilation]|h|r: l'infinite annihilation - éloignez-vous de l'explosion.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["209574"] = { "Aurostor, Le Hibernateur",
"* |cff71d5ff|Hspell:421059|h[Cranky Tantrum]|h|r: son cri de colère s'intensifie lorsqu'il est dérangé - restez stable pendant la crise.",
"* |cff71d5ff|Hspell:420895|h[Groggy Bash]|h|r: ses coups de Groggy Bash sont larges - restez à l'écart de l'attaque.",
"* |cff71d5ff|Hspell:420925|h[Pulverizing Outburst]|h|r: le pulvérisation - sortir de la pulvérisation.",
"* |cff71d5ff|Hspell:421260|h[Trembling Roar]|h|r: son tremblement dévastateur fait trembler le sol - continuez à sauter pour éviter les ondes de choc.",
};

pack["193535"] = { "Basrikron, l'aile de schiste",
"* |cff71d5ff|Hspell:385506|h[Awaken the Crag]|h|r: the crag wakes to fight - clear the crag fast.",
"* |cff71d5ff|Hspell:385270|h[Fracturing Tremor]|h|r: the fracturing tremor - brace the tremor.",
"* |cff71d5ff|Hspell:385137|h[Shale Breath]|h|r: le souffle de shale le nettoie - rester à l'extérieur du souffle.",
"* |cff71d5ff|Hspell:386259|h[Sundering Crash]|h|r: le Sundering Crash - éloignez-vous de l'impact.",
"* |cff71d5ff|Hspell:385652|h[Earth Bolt]|h|r: utilisez votre interrupteur sur son [Earth Bolt] à chaque fois.",
};

pack["193532"] = { "Bazual, La Flamme Terrible",
"* |cff71d5ff|Hspell:389725|h[Éruption de magma]|h|r: l'éruption de magma - éviter l'éruption.",
"* |cff71d5ff|Hspell:389431|h[Détruire le Feu]|h|r: le feu déterrent repousse - préparez-vous au feu.",
"* |cff71d5ff|Hspell:389514|h[Souffle de lave]|h|r: son souffle de lave le frappe - rester à l'écart du souffle.",
"* |cff71d5ff|Hspell:390635|h[Pluie de Destruction]|h|r : la pluie de destruction - préparez-vous à la pluie.",
};

pack["193533"] = { "Liskanoth",
"* |cff71d5ff|Hspell:389954|h[Liaison de glace]|h|r: la liaison de glace immobilise son porteur - la liaison se libère.",
"* |cff71d5ff|Hspell:388925|h[Chilling Breath]|h|r: l'hale de froid le frappe sur le devant - rester à l'écart de l'hale.",
"* |cff71d5ff|Hspell:389289|h[Tempête Glacée]|h|r: la tempête glacée souffle - ne vous tenez jamais dans la tempête.",
"* |cff71d5ff|Hspell:389762|h[Deep Freeze]|h|r: le deep freeze - ne vous tenez pas dans le froid.",
};

pack["193534"] = { "Strunraan, la misère du ciel",
"* |cff71d5ff|Hspell:385980|h[Thunder Vortex]|h|r: le Thunder Vortex tourne - restez à l'extérieur du vortex.",
"* |cff71d5ff|Hspell:387199|h[Tempest]|h|r: son coup de tempête marque son porteur - le porteur de l'armure marque le coup de tempête.",
"* |cff71d5ff|Hspell:389951|h[Arcing Expulsion]|h|r: l'Arcing Expulsion - maintenir la distance sur son devant.",
};

bos = { "Les anciens Zaqali",
"* |cff71d5ff|Hspell:403779|h[Burning Shadows]|h|r: les effets de brûlure s'accumulent - réduisez les effets de brûlure et continuez à bouger.",
"* |cff71d5ff|Hspell:403855|h[Blazing Pitch]|h|r: les zones de [Blazing Pitch] recouvrent le sol - éviter le [Blazing Pitch].",
"* |cff71d5ff|Hspell:404171|h[Enveloping Darkness]|h|r: the enveloping darkness closes in - run from the darkness.",
"* |cff71d5ff|Hspell:404517|h[Scorching Eclipse]|h|r: le Scorching Eclipse - soyez attentif au sol sous son ombre.",
};
pack["199855"] = bos; pack["199853"] = bos;

P.fr = fr;
