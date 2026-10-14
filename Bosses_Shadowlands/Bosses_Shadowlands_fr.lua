--[[
	Bosses_Shadowlands_fr.lua
		Datos en français of the Shadowlands
		pack: the zones' dungeons, Tazavesh and its three raids, plus
		the world bosses. Sources: DBM-Raids-Shadowlands, DBM-Party-Shadowlands
		and DBM-Shadowlands (_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the
		tactics were filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Sanguine Depths : Zona 2284 --
-- --------------------------------- --

pack["162103"] = { "Exécuteur Tarvold",
"* |cff71d5ff|Hspell:322554|h[Castigate]|h|r: Castigate brûle le joueur ciblé - gardez les soins prêts.",
"* |cff71d5ff|Hspell:322574|h[Manifestation malveillante]|h|r: Une manifestation apparaît - éliminez-la avant qu'elle ne lance son sort.",
"* |cff71d5ff|Hspell:328494|h[Sin-touched Anima]|h|r: L'anima les renforce - désactivez-la rapidement.",
};

pack["162099"] = { "Général Kaal",
"* |cff71d5ff|Hspell:323845|h[Wicked Rush]|h|r: Les lignes de charge se croisent dans la pièce - sortez de la voie.",
"* |cff71d5ff|Hspell:324086|h[Rayon de Lumière]|h|r: Le rayon protège ses sbires - le désactiver.",
"* |cff71d5ff|Hspell:322903|h[Tempête d'ombre]|h|r: La tempête assombrit la pièce - cachez-vous derrière les piliers.",
};

pack["162102"] = { "Grande déléguée Beryllia",
"* |cff71d5ff|Hspell:325360|h[Rite of Supremacy]|h|r: Le rituel canalise la phase finale - continuez à infliger des dégâts et faites attention aux zones.",
"* |cff71d5ff|Hspell:325254|h[Épines de fer]|h|r: Les épines percentrent le sol - activer les compétences défensives.",
"* |cff71d5ff|Hspell:326039|h[Endless Torment]|h|r: Les sorts de tourment - interrompez-les rapidement.",
};

pack["162100"] = { "Kryxis le Vorace",
"* |cff71d5ff|Hspell:319650|h[Vicious Headbutt]|h|r: Frappe fort le tank avec un coup de tête - augmente ses défenses.",
"* |cff71d5ff|Hspell:319654|h[Hungering Drain]|h|r: Le drain attaque son porteur - purgez-le et soignez-le.",
"* |cff71d5ff|Hspell:319685|h[Severing Smash]|h|r: L'attaque le fait vaciller - préparez-vous.",
"* |cff71d5ff|Hspell:319713|h[Juggernaut Charge]|h|r: L'attaque marque un joueur - le groupe se regroupe pour partager les dégâts.",
};

-- --------------------------------- --
-- Spires of Ascension : Zona 2285 --
-- --------------------------------- --

pack["162061"] = { "Déva, parangon du doute",
"* |cff71d5ff|Hspell:323943|h[Course rapide]|h|r : Elle lance son épée à travers la cible marquée - la cible se déplace constamment.",
"* |cff71d5ff|Hspell:322818|h[Perte de confiance]|h|r : La confiance épuise le groupe - soignez à travers le désespoir.",
"* |cff71d5ff|Hspell:334625|h[Explosion abyssale]|h|r : L'explosion remplit la pièce - détruisez-la derrière les piliers.",
};

bos = { "Kin-Tara",
"* |cff71d5ff|Hspell:321009|h[Lance chargée]|h|r: La lance se dirige vers le joueur ciblé - éloignez-vous.",
"* |cff71d5ff|Hspell:320966|h[Coup au-dessus]|h|r: Le coup sur le tank - buffs activés.",
"* |cff71d5ff|Hspell:327481|h[Dark Lance]|h|r: Interrompre le sort -> Interrompre le sort.",
"* |cff71d5ff|Hspell:324368|h[Barrage]|h|r: Le barrage poursuit sa cible - restez à distance de l'aura.",
};
pack["162059"] = bos; pack["163077"] = bos;

pack["162060"] = { "Oryphrione",
"* |cff71d5ff|Hspell:338731|h[Charged Stomp]|h|r: Le coup de pied fait trembler la pièce – préparez-vous.",
"* |cff71d5ff|Hspell:334053|h[Purifying Blast]|h|r: L'explosion se déplace sur une grande distance.",
"* |cff71d5ff|Hspell:324427|h[Empyreal Ordnance]|h|r: L'artillerie s'abat - éloignez-vous de la cible.",
"* |cff71d5ff|Hspell:324392|h[Anima Field]|h|r: Crée un champ autour de lui - le faire sortir de l'aura.",
};

pack["162058"] = { "Ventunax",
"* |cff71d5ff|Hspell:324205|h[Blinding Flash]|h|r: Le flash la stune devant elle - restez à l'écart de ses flancs.",
"* |cff71d5ff|Hspell:334485|h[Recharge]|h|r: La recharge se nourrit de l'anima - position toi à l'écart de l'aura.",
};

-- --------------------------------- --
-- The Necrotic Wake : Zona 2286 --
-- --------------------------------- --

pack["163157"] = { "Amarth, le Moissonneur",
"* |cff71d5ff|Hspell:321226|h[Land of the Dead]|h|r: Les squelettes se lèvent autour de lui - Les éliminez tous.",
"* |cff71d5ff|Hspell:321247|h[Final Harvest]|h|r: La récolte balaie la salle - préparez-vous.",
"* |cff71d5ff|Hspell:333493|h[Souffle nécro]|h|r: Attaque imminente - les personnages au corps à corps se retirent.",
"* |cff71d5ff|Hspell:320170|h[Proj. de nécrose]|h|r : Interrompre le sort.",
"* |cff71d5ff|Hspell:322493|h[Volée de givre]|h|r: Interrupt.",
};

pack["162691"] = { "Chancros",
"* |cff71d5ff|Hspell:320637|h[Fetid Gas]|h|r: Les nuages de gaz recouvrent le sol - évitez de marcher dessus.",
"* |cff71d5ff|Hspell:320596|h[Heaving Retch]|h|r: Rétch dans un cône large - rester loin de son visage.",
"* |cff71d5ff|Hspell:320655|h[Crunch]|h|r: Inflige de lour dégâts au tank - compétences défensives actives.",
};

pack["162693"] = { "Nalthor le Lieur-de-Givre",
"* |cff71d5ff|Hspell:321754|h[Bouclier de glace]|h|r: Le bouclier est protégé - brisez le bouclier.",
"* |cff71d5ff|Hspell:323730|h[Frozen Binds]|h|r: Les liens marquent un joueur - brisez rapidement la glace.",
"* |cff71d5ff|Hspell:321894|h[Dark Exile]|h|r: Exiler un joueur vers le pont inférieur - survivre et remonter.",
"* |cff71d5ff|Hspell:320772|h[Tempête de comètes]|h|r : Les comètes frappent le sol - restez à l'écart des cibles.",
};

pack["162689"] = { "Docteur Sutur",
"* |cff71d5ff|Hspell:320358|h[Stitched Creation]|h|r: La créature se relève - éliminez-la rapidement.",
"* |cff71d5ff|Hspell:320376|h[Mutilate]|h|r: Mutilate le tank - rester prêt pour les soins.",
"* |cff71d5ff|Hspell:322681|h[Crochet]|h|r: Le crochet attrape un joueur - se libérer rapidement.",
"* |cff71d5ff|Hspell:327664|h[Embalming Ichor]|h|r: Les pocs d'Ichor se forment sur le sol - évitez de les toucher.",
};

-- --------------------------------- --
-- Halls of Atonement : Zona 2287 --
-- --------------------------------- --

pack["164185"] = { "Échelon",
"* |cff71d5ff|Hspell:319941|h[Stone Shattering Leap]|h|r: Elle saute sur la zone marquée - le groupe la laisse passer.",
"* |cff71d5ff|Hspell:319733|h[Stone Call]|h|r: Les pierres se lèvent autour d'elle - Ciblez le groupe.",
"* |cff71d5ff|Hspell:328206|h[Curse of Stone]|h|r: La malédiction transforme la cible en pierre - la soigner.",
"* |cff71d5ff|Hspell:326389|h[Blood Torrent]|h|r: The torrent bursts wide - spread out.",
};

pack["165408"] = { "Halkias, le goliath vicié",
"* |cff71d5ff|Hspell:322943|h[Heave Debris]|h|r: Les débris sont lancés sur le groupe - éliminez les tirs.",
"* |cff71d5ff|Hspell:322936|h[Crumbling Slam]|h|r: Le coup de marteau fissure le sol - déplacez-le le long de la voie.",
"* |cff71d5ff|Hspell:322711|h[Refracted Sinlight]|h|r: Les faisceaux de lumière sinisée balaient - sortez du faisceau.",
};

pack["165410"] = { "Grande adjudicatrice Alize",
"* |cff71d5ff|Hspell:323650|h[Fixate]|h|r: Elle cible un joueur - courez pour la poursuivre dans la salle.",
"* |cff71d5ff|Hspell:1236512|h[Unstable Anima]|h|r: L'anima se disperse - éparpillez-vous.",
"* |cff71d5ff|Hspell:323538|h[Anima Bolt]|h|r: Le projectile est lancé - interrompez-le.",
};

pack["164218"] = { "Grand chambellan",
"* |cff71d5ff|Hspell:323142|h[Telekinetic Toss]|h|r: Lance des débris sur le groupe - éliminez-les.",
"* |cff71d5ff|Hspell:323236|h[Souffrance Déchaînée]|h|r : La Souffrance se déchaîne en une onde de choc - écartez-vous.",
"* |cff71d5ff|Hspell:329113|h[Frappe télékinésique]|h|r : Les Frappes balayent la pièce - soyez attentif aux marques.",
"* |cff71d5ff|Hspell:328791|h[Rituel de la Souffrance]|h|r: Le rituel crée une explosion - le groupe se tient ensemble pour l'absorber.",
};

-- --------------------------------- --
-- Plaguefall : Zona 2289 --
-- --------------------------------- --

pack["164967"] = { "Professeur Ickus",
"* |cff71d5ff|Hspell:329110|h[Injection de mucus]|h|r: L'injection grandit - désactivez-la rapidement.",
"* |cff71d5ff|Hspell:329217|h[Attaque de mucus]|h|r: L'attaque swinge largement - soyez attentif à la zone d'effet.",
"* |cff71d5ff|Hspell:321406|h[Explosion virulente]|h|r: L'explosion se construit - étalez-vous avant qu'elle n'explose.",
"* |cff71d5ff|Hspell:319070|h[Grunk corrosif]|h|r: Le drunk corrode son porteur - gardez le soin prêt.",
};

pack["164266"] = { "Domina Lamevenin",
"* |cff71d5ff|Hspell:325245|h[Attaque surprise]|h|r : Elle attaque en ambush depuis l'ombre - soyez prêt à soigner.",
"* |cff71d5ff|Hspell:336258|h[Proie solitaire]|h|r: Le proie solitaire isole un joueur - le groupe se disperse autour de lui.",
"* |cff71d5ff|Hspell:325552|h[Cytotoxic Slash]|h|r: Le poison s'accumule sur votre tank - échangez de tank.",
};

pack["164255"] = { "Globgrog",
"* |cff71d5ff|Hspell:324527|h[Plague Stomp]|h|r: Le coup de pied fait trembler le boss - anticipez-le.",
"* |cff71d5ff|Hspell:324667|h[Onde de Slime]|h|r: Les ondes de slime frappent la pièce - restez à l'écart.",
"* |cff71d5ff|Hspell:327608|h[Beckon Slime]|h|r: Attirer les Slimes vers lui - les brûler avant qu'ils n'atteignent.",
"* |cff71d5ff|Hspell:324652|h[Plague dévastatrice]|h|r: La peste affaiblit son porteur - purgez-la.",
};

pack["164267"] = { "Margrave Stradama",
"* |cff71d5ff|Hspell:322304|h[Malignant Growth]|h|r: Les créatures apparaissent et le nourrissent - détruisez-les dès qu'elles apparaissent.",
"* |cff71d5ff|Hspell:322236|h[Touch of Slime]|h|r: Le toucher nécessite un absorbeur - travaillez en équipe et partagez-le.",
"* |cff71d5ff|Hspell:322473|h[Plague Crash]|h|r: Les ondes de slime détruisent les points de vie - restez à l'écart.",
};

-- --------------------------------- --
-- Mists of Tirna Scithe : Zona 2290 --
-- --------------------------------- --

pack["164567"] = { "Ingra Maloch",
"* |cff71d5ff|Hspell:321005|h[Soul Shackle]|h|r: La chaîne lie celui qui la tient - brisez-la rapidement.",
"* |cff71d5ff|Hspell:323059|h[Droman's Wrath]|h|r: Droman lance depuis la clairière - interrompez ses sorts.",
"* |cff71d5ff|Hspell:328756|h[Repulsive Visage]|h|r: Le visage craint le groupe - positionnez-vous et étalez-vous.",
"* |cff71d5ff|Hspell:323137|h[Bewildering Pollen]|h|r: Le pollen stune la cible en première ligne - évitez son visage.",
};

pack["164501"] = { "Mandebrume",
"* |cff71d5ff|Hspell:336499|h[Jeu de devinettes]|h|r: Le jeu de devinettes génère des doubles - trouvez la vraie et la détruisez.",
"* |cff71d5ff|Hspell:321891|h[Fixate]|h|r: Fixate marque un joueur - le joueur marqué reste en mouvement.",
"* |cff71d5ff|Hspell:321834|h[Dodge Ball]|h|r: Les balles de esquive déferlent dans la pièce - restez loin de la ligne.",
"* |cff71d5ff|Hspell:321828|h[Patty Cake]|h|r: Les claquements de \"Patty Cake\" - interrompez-les.",
};

pack["164517"] = { "Tred’ova",
"* |cff71d5ff|Hspell:322563|h[Cible Marquée]|h|r: La cible marquée est consommée - la cible se déplace dans la salle.",
"* |cff71d5ff|Hspell:322550|h[Incubation accélérée]|h|r : Les cocon se brisent - détruisez la source avant qu'ils ne pient.",
"* |cff71d5ff|Hspell:322648|h[Mind Link]|h|r: Le lien mental lie deux joueurs - séparez le lien.",
"* |cff71d5ff|Hspell:322450|h[Consommation]|h|r : La consommation détruit le sol - sortez des positions.",
};

-- --------------------------------- --
-- De Other Side : Zona 2291 --
-- --------------------------------- --

pack["164450"] = { "Marchande Xy’exa",
"* |cff71d5ff|Hspell:319619|h[Piège de téléportation]|h|r: Le piège téléporte les joueurs - trouvez rapidement une position stable.",
"* |cff71d5ff|Hspell:321948|h[Explosion locale]|h|r: L'arme explosif d'un joueur - éloignez-le du groupe.",
"* |cff71d5ff|Hspell:323687|h[Arcane Lightning]|h|r: Les arcs électriques se déplacent entre les joueurs - espacez-vous.",
"* |cff71d5ff|Hspell:320230|h[Appareil explosif]|h|r: L'appareil explose sur une large zone - se cacher derrière les cristaux.",
};

pack["166473"] = { "Hakkar, l’écorcheur d’âmes",
"* |cff71d5ff|Hspell:322773|h[Barrière de sang]|h|r: La barrière le protège - stun pour la détruire.",
"* |cff71d5ff|Hspell:322746|h[Sang corrompu]|h|r: Les éclaboussures sont larges - se disperser.",
"* |cff71d5ff|Hspell:332329|h[Offrande dévouée]|h|r: Un sacrifice rejoint le combat - le réduire en cendres.",
"* |cff71d5ff|Hspell:323064|h[Barrage de sang]|h|r: Les sorts de barrage - l'interrompre.",
};

pack["169769"] = { "Mueh’zala",
"* |cff71d5ff|Hspell:325725|h[Cosmic Artifice]|h|r: L'artefact marque un joueur - éloignez-le.",
"* |cff71d5ff|Hspell:326171|h[Shatter Reality]|h|r: La réalité se brise autour du groupe - cachez-vous derrière les ruines.",
"* |cff71d5ff|Hspell:325258|h[Master of Death]|h|r: Le maître libère une onde de choc - étalez-vous.",
"* |cff71d5ff|Hspell:327646|h[Soulcrusher]|h|r: Le Soulcrusher atterrit sur le tank - préparez-vous.",
};

bos = { "Les Tempête-de-Mana",
"* |cff71d5ff|Hspell:320787|h[Summon Power Crystal]|h|r: Le cristal vibre près du boss - détruisez-le rapidement.",
"* |cff71d5ff|Hspell:320168|h[Throw Buzz Saw]|h|r: Les scies à bois coupent dans la pièce - restez hors des rails.",
"* |cff71d5ff|Hspell:320147|h[Bleeding]|h|r: Les saignements s'accumulent sur le tank - échangez de tank.",
"* |cff71d5ff|Hspell:320141|h[Doom]|h|r: La doom explose près du groupe - répartissez-vous.",
"* |cff71d5ff|Hspell:323877|h[Laser]|h|r: Le laser balaie devant - restez derrière le boss.",
};
pack["164555"] = bos; pack["164556"] = bos;

-- --------------------------------- --
-- Theater of Pain : Zona 2293 --
-- --------------------------------- --

bos = { "L’affrontement",
"* |cff71d5ff|Hspell:320069|h[Mortal Strike]|h|r: Utiliser [Mortal Strike] sur le tank - être prêt à soigner.",
"* |cff71d5ff|Hspell:1215741|h[Mighty Smash]|h|r: L'attaque provoque une explosion - se disperser.",
"* |cff71d5ff|Hspell:1215738|h[Décaissement]|h|r: L'haleine balaie vers l'avant - éloignez-vous.",
"* |cff71d5ff|Hspell:333231|h[Searing Death]|h|r: Les zones de [Searing Death] suivent les joueurs - éloignez-les.",
"* |cff71d5ff|Hspell:1215600|h[Withering Touch]|h|r: Le withering s'accroche à son porteur - nettoyez-le.",
};
pack["164451"] = bos; pack["164463"] = bos; pack["164461"] = bos;

pack["162317"] = { "Trancheboyau",
"* |cff71d5ff|Hspell:322795|h[Crochets]|h|r: Les crochets attrapent les joueurs et les projettent dans le broyeur - les briser rapidement.",
"* |cff71d5ff|Hspell:318406|h[Tenderizing Smash]|h|r: Le coup fait voler tout le monde - restez loin de sa face.",
"* |cff71d5ff|Hspell:323515|h[Hateful Strike]|h|r: Utiliser des attaques sur le tank - buffs activés.",
};

pack["162309"] = { "Kul’tharok",
"* |cff71d5ff|Hspell:473540|h[Source of Darkness]|h|r: La source répand l'obscurité - écartez-vous pour éviter qu'elle ne vous affecte.",
"* |cff71d5ff|Hspell:474298|h[Attirer l'âme]|h|r: L'attirer ramasse le paquet - rassemblez et absorbez.",
"* |cff71d5ff|Hspell:1216474|h[Death Spiral]|h|r: Le tourbillon balaie la arène - soyez attentif aux marques.",
"* |cff71d5ff|Hspell:474087|h[Éruption nécro]|h|r: L'éruption se déclenche devant – restez hors de son visage.",
};

pack["165946"] = { "Mordretha, l’impératrice immortelle",
"* |cff71d5ff|Hspell:323831|h[Death Grasp]|h|r: La prise tire les joueurs vers elle - soyez prêts à encaisser.",
"* |cff71d5ff|Hspell:324079|h[Reaping Scythe]|h|r: La faux tranche le tank - préparez vos défenses.",
"* |cff71d5ff|Hspell:324449|h[Manifest Death]|h|r: La mort se manifeste autour du groupe - répartissez-vous.",
"* |cff71d5ff|Hspell:324589|h[Death Bolt]|h|r: Le projectile est lancé - interrompez-le.",
"* |cff71d5ff|Hspell:323685|h[Grasping Rift]|h|r: Le trou aspire tout vers l'intérieur - restez à distance.",
};

pack["162329"] = { "Xav l’Invaincu",
"* |cff71d5ff|Hspell:317231|h[Crushing Slam]|h|r: Le coup atterrit sur le tank - buffs activés.",
"* |cff71d5ff|Hspell:320729|h[Massive Cleave]|h|r: Son attaque dé coup large - rester derrière lui.",
"* |cff71d5ff|Hspell:339415|h[Deafening Crash]|h|r: Le coup interrompt doit être interrompu.",
"* |cff71d5ff|Hspell:320102|h[Sang et Gloire]|h|r: Il marque un champion pour la gloire - gardez le marqué en sécurité.",
"* |cff71d5ff|Hspell:331618|h[Drapeau oppressant]|h|r: Le drapeau opprime le champ de bataille - attaque-le rapidement.",
};

-- --------------------------------- --
-- Castle Nathria : Zona 2296 --
-- --------------------------------- --

pack["165066"] = { "Altimor le Veneur",
"* |cff71d5ff|Hspell:335114|h[Sinseeker]|h|r: Les sinseekers poursuivent leur proie - le groupe interrompt la poursuite.",
"* |cff71d5ff|Hspell:334971|h[Jagged Claws]|h|r: Les griffes se regroupent autour du tank - changer de tank.",
"* |cff71d5ff|Hspell:334945|h[Vicious Lunge]|h|r: Le coup de lunge nécessite un joueur pour le soutenir - former une paire et le partager.",
};

pack["166644"] = { "Artificier Xy’mox",
"* |cff71d5ff|Hspell:328437|h[Dimensional Tear]|h|r: Ouvre des failles - soigne en absorbant.",
"* |cff71d5ff|Hspell:325361|h[Glyph of Destruction]|h|r: Le glyphe marque son porteur - utilise-le à grande échelle.",
"* |cff71d5ff|Hspell:326271|h[Stasis Trap]|h|r: Les pièges gèlent le sol - évite les marques.",
"* |cff71d5ff|Hspell:335013|h[Rift Blast]|h|r: Le coup balaie la zone - reste hors de la ligne.",
};

pack["164261"] = { "Destructeur affamé",
"* |cff71d5ff|Hspell:329298|h[Gluttonous Miasma]|h|r: Le miasme se nourrit des autres ennemis - se disperser et utiliser des soins de zone.",
"* |cff71d5ff|Hspell:334266|h[Ejection explosive]|h|r: L'explosion affecte le joueur ciblé - éloignez-vous.",
"* |cff71d5ff|Hspell:334522|h[Consume]|h|r: He consumes a low player - keep everyone topped up.",
"* |cff71d5ff|Hspell:329725|h[Expunge]|h|r: L'expunge éjecte largement - se positionner de manière dispersée.",
};

pack["165759"] = { "Salut du roi-soleil",
"* |cff71d5ff|Hspell:328885|h[Greater Castigation]|h|r: Le coup de castigation brûle sur une grande surface.",
"* |cff71d5ff|Hspell:326456|h[Burning Remnants]|h|r: Les restes se concentrent sur le tank - changer de tank.",
"* |cff71d5ff|Hspell:325877|h[Ember Blast]|h|r: Le coup de feu nécessite un tank - former une paire et le partager.",
"* |cff71d5ff|Hspell:329509|h[Blazing Surge]|h|r: L'onde balaye la plateforme - descendre de celle-ci.",
"* |cff71d5ff|Hspell:337865|h[Unleashed Pyroclasm]|h|r: Le pyroclasm est lancé - l'interrompre.",
};

pack["165521"] = { "Dame Inerva Sombreveine",
"* |cff71d5ff|Hspell:325936|h[Shared Cognition]|h|r: Les chaînes de Cognition ciblent les lanceurs - se disperser.",
"* |cff71d5ff|Hspell:340452|h[Change of Heart]|h|r: Le cœur se retourne contre son porteur - le faire fuir.",
"* |cff71d5ff|Hspell:335396|h[Hidden Desire]|h|r: Le désir marque un joueur - maintenir le joueur marqué à distance.",
"* |cff71d5ff|Hspell:325769|h[Bottled Anima]|h|r: Les consoles se remplissent de désir - maintenir la console du groupe vide.",
};

pack["164406"] = { "Hurlaile",
"* |cff71d5ff|Hspell:328897|h[Exsanguiné]|h|r: Les stacks d'Exsanguination sont sur le tank - échangez de tank.",
"* |cff71d5ff|Hspell:342074|h[Écholocation]|h|r : Écholocation cible un joueur - éloignez le son.",
"* |cff71d5ff|Hspell:345936|h[Earsplitting Shriek]|h|r: Le cri rend les ennemis sourds - l'interrompre.",
"* |cff71d5ff|Hspell:328921|h[Bloodshroud]|h|r: Le voile la fait chasser - le groupe se disperse et survit.",
"* |cff71d5ff|Hspell:345397|h[Wave of Blood]|h|r: Blood waves lap the room - keep off the wash.",
};

pack["167406"] = { "Sire Denathrius",
"* |cff71d5ff|Hspell:326851|h[Blood Price]|h|r: La capacité Blood Price affaiblit le groupe - soignez pour contrer l'effet.",
"* |cff71d5ff|Hspell:327039|h[Feeding Time]|h|r: La capacité Feeding marque un joueur - utilisez la capacité à grande échelle.",
"* |cff71d5ff|Hspell:327796|h[Night Hunter]|h|r: Le chasseur a besoin de se concentrer - formez un couple et partagez la capacité.",
"* |cff71d5ff|Hspell:326707|h[Cleansing Pain]|h|r: La douleur se libère en une onde de choc - répartissez-vous.",
"* |cff71d5ff|Hspell:327227|h[Command: Ravage]|h|r: La capacité Ravage balaie la pièce - préparez-vous.",
};

pack["164407"] = { "Fangepoing",
"* |cff71d5ff|Hspell:331209|h[Regard haineux]|h|r: Son regard bloque une ligne - personne ne se tient sur la ligne d'attaque.",
"* |cff71d5ff|Hspell:335300|h[Lien de chaîne]|h|r: Les liens de chaîne sont des partenaires - restez séparés de votre lien.",
"* |cff71d5ff|Hspell:335470|h[Chain Slam]|h|r: Le coup de force projette vers votre partenaire - formez un duo et préparez-vous.",
"* |cff71d5ff|Hspell:341250|h[Fureur monstrueuse]|h|r: Construire la fureur - le terminer avant que la fureur atteigne son maximum.",
};

bos = { "Généraux de la Légion de pierre",
"* |cff71d5ff|Hspell:329636|h[Forme de pierre durcie]|h|r : La forme de pierre divise les généraux - perdez la pierre.",
"* |cff71d5ff|Hspell:333376|h[Épée maléfique]|h|r : L'épée frappe le tank - changez de tank.",
"* |cff71d5ff|Hspell:334765|h[Cœur brisé]|h|r : Le coup de cœur nécessite un tank - formez un couple et partagez-le.",
"* |cff71d5ff|Hspell:342256|h[Forces de l'ombre]|h|r : Les forces de l'ombre rejoignent le combat - ciblez le groupe.",
};
pack["168112"] = bos; pack["168113"] = bos;

bos = { "Le conseil du Sang",
"* |cff71d5ff|Hspell:328497|h[Danse Macabre]|h|r: La danse prend la place - faites attention aux angles et restez éloignés des cibles.",
"* |cff71d5ff|Hspell:346690|h[Duelists' Riposte]|h|r: La riposte cible les tanks - échangez les tanks.",
"* |cff71d5ff|Hspell:346698|h[Dutiful Attendant]|h|r: Les Attendants rejoignent le groupe - détruisez-les.",
"* |cff71d5ff|Hspell:330978|h[Dredger Servants]|h|r: Les Dredgers arrivent en masse - ciblez-les avec des attaques AoE.",
};
pack["166971"] = bos; pack["166969"] = bos; pack["166970"] = bos;

-- --------------------------------- --
-- Tazavesh, the Veiled Market : Zona 2441 --
-- --------------------------------- --

pack["175663"] = { "Hylbrande",
"* |cff71d5ff|Hspell:346959|h[Purged by Fire]|h|r: Le feu purge le joueur ciblé - éloignez-vous.",
"* |cff71d5ff|Hspell:353312|h[Purifying Burst]|h|r: L'explosion purifie à distance - étalez-vous.",
"* |cff71d5ff|Hspell:358131|h[Lightning Nova]|h|r: La nova frappe - interrompez-la.",
"* |cff71d5ff|Hspell:347094|h[Titanic Crash]|h|r: La chute fait trembler le sol - préparez-vous.",
};

pack["175646"] = { "Courrier chaotique",
"* |cff71d5ff|Hspell:346286|h[Liquides dangereux]|h|r : Les liquides s'accumulent dans le hall de livraison - éviter les éclaboussures.",
"* |cff71d5ff|Hspell:369133|h[Articles instables]|h|r : Les articles deviennent instables - débarrasser rapidement les colis.",
"* |cff71d5ff|Hspell:346293|h[Courrier]|h|r : Le courrier explose - se disperser.",
"* |cff71d5ff|Hspell:346962|h[Chèque]|h|r : Les chèques nécessitent un temps de préparation - former des paires et partager la tâche.",
};

pack["176564"] = { "Oasis d’Au’myza",
"* |cff71d5ff|Hspell:350916|h[Security Slam]|h|r: Le coup atterrit sur le tank - les défenses sont activées.",
"* |cff71d5ff|Hspell:350922|h[Menacing Shout]|h|r: L'appel construit - interrompez-le.",
"* |cff71d5ff|Hspell:350919|h[Crowd Control]|h|r: Le contrôle frappe la foule - étalez-vous.",
"* |cff71d5ff|Hspell:357436|h[Infectious Solo]|h|r: Le solo court dans la salle - éloignez-vous.",
};

pack["175806"] = { "So’azmi",
"* |cff71d5ff|Hspell:347249|h[Divide]|h|r: Divise la salle en une ligne de lames - restez hors de la portée de l'attaque.",
"* |cff71d5ff|Hspell:347623|h[Quickblade]|h|r: Quickblade punit les échanges lents - les tanks doivent échanger rapidement.",
"* |cff71d5ff|Hspell:347481|h[Shuriken Storm]|h|r: Les shurikens traversent la salle - restez en mouvement.",
};

pack["177269"] = { "So’leah",
"* |cff71d5ff|Hspell:353635|h[Collapsing Star]|h|r: L'étoile s'effondre sur sa cible - éloignez-vous.",
"* |cff71d5ff|Hspell:351124|h[Summon Assassins]|h|r: Les assassins se rapprochent - maintenez la position et éliminez-les.",
"* |cff71d5ff|Hspell:351086|h[Power Overwhelming]|h|r: Il boit le pouvoir du cartel - stun le sort.",
"* |cff71d5ff|Hspell:351646|h[Hyperlight Nova]|h|r: La nova se propage - éloignez-vous de son centre.",
};

bos = { "Grandiose Ménagerie",
"* |cff71d5ff|Hspell:349627|h[Gluttony]|h|r: Gluttony marque un joueur - éloignez la faim.",
"* |cff71d5ff|Hspell:349663|h[Grip of Hunger]|h|r: La prise tire les joueurs vers elle - restez à distance.",
"* |cff71d5ff|Hspell:349797|h[Grand Consumption]|h|r: La consommation le nourrit - éliminez d'abord les autres ennemis.",
"* |cff71d5ff|Hspell:349954|h[Purification Protocol]|h|r: Le protocole le soigne - désactivez-le rapidement.",
"* |cff71d5ff|Hspell:350101|h[Chains of Damnation]|h|r: Les chaînes attachent leur porteur - brisez-les rapidement.",
};
pack["176556"] = bos; pack["176555"] = bos; pack["176705"] = bos;

pack["175546"] = { "Chronocapitaine Harpagone",
"* |cff71d5ff|Hspell:347149|h[Infinite Breath]|h|r: Attaque avec une respiration - éloignez-la du groupe.",
"* |cff71d5ff|Hspell:352345|h[Anchor Shot]|h|r: Le tir d'ancrage touche un joueur - dégagez-vous rapidement.",
"* |cff71d5ff|Hspell:1240097|h[Time Bomb]|h|r: La bombe inflige des dégâts à son porteur - nettoyez-la rapidement.",
};

pack["175616"] = { "Zo’phex la sentinelle",
"* |cff71d5ff|Hspell:345990|h[Containment Cell]|h|r: Les cellules enferment les joueurs - brisez-les rapidement.",
"* |cff71d5ff|Hspell:345770|h[Impound Contraband]|h|r: Les marchandises sont confisquées - éliminez les caisses avant qu'il ne les utilise.",
"* |cff71d5ff|Hspell:348350|h[Interrogation]|h|r: L'interrogatoire cible un joueur - le groupe en profite.",
"* |cff71d5ff|Hspell:1236348|h[Charged Slash]|h|r: La tranche attaque en avant - restez hors de sa portée.",
};

-- --------------------------------- --
-- Sanctum of Domination : Zona 2450 --
-- --------------------------------- --

pack["175730"] = { "Scribe du destin Roh-Kalo",
"* |cff71d5ff|Hspell:354365|h[Grim Portent]|h|r: Le marque indique les joueurs - attention à l'explosion imminente.",
"* |cff71d5ff|Hspell:351680|h[Invoke Destiny]|h|r: Destiny lie le tank - changer de tank.",
"* |cff71d5ff|Hspell:353432|h[Burden of Destiny]|h|r: Le fardeau s'accroche à son porteur - le marqué le transporte.",
"* |cff71d5ff|Hspell:353931|h[Twist Fate]|h|r: Fate déplace le groupe - soigner à travers le changement.",
};

pack["175731"] = { "Gardien des Fondateurs",
"* |cff71d5ff|Hspell:352833|h[Disintegration]|h|r: Le faisceau se propage sur le sol - personne ne doit y rester.",
"* |cff71d5ff|Hspell:350455|h[Radiant Energy]|h|r: L'énergie inonde le sol - se cacher derrière les générateurs.",
"* |cff71d5ff|Hspell:352589|h[Meltdown]|h|r: La détonation se produit - fuir.",
"* |cff71d5ff|Hspell:352538|h[Purging Protocol]|h|r: Le protocole purifie la pièce - se disperser.",
"* |cff71d5ff|Hspell:350732|h[Sunder]|h|r: Le \"Sunder\" touche le tank - préparer les défenses.",
};

pack["175559"] = { "Kel’Thuzad",
"* |cff71d5ff|Hspell:353808|h[Glacial Wrath]|h|r: La fureur glaciale lance des sphères gelées - détruisez-les avant qu'elles n'atteignent le groupe.",
"* |cff71d5ff|Hspell:348756|h[Frost Blast]|h|r: L'explosion gèle ses porteurs - brisez-les pour les libérer.",
"* |cff71d5ff|Hspell:352530|h[Dark Evocation]|h|r: L'invocation draine tous - interrompez-la vigoureusement.",
"* |cff71d5ff|Hspell:348978|h[Soul Exhaustion]|h|r: L'épuisement s'accumule sur le tank - échangez de tank.",
"* |cff71d5ff|Hspell:355389|h[Corpse Detonation]|h|r: Les corps explosent à l'approche - gardez-vous à l'écart.",
};

pack["176523"] = { "Mal-ferrant Raznal",
"* |cff71d5ff|Hspell:355568|h[Cruciform Axe]|h|r: L'épée marque sa trajectoire - courez la faire sortir.",
"* |cff71d5ff|Hspell:348508|h[Reverberating Hammer]|h|r: Le marteau frappe le joueur marqué - le groupe vide l'espace.",
"* |cff71d5ff|Hspell:355505|h[Shadowsteel Chains]|h|r: Les chaînes lient les joueurs - brisez-les rapidement.",
"* |cff71d5ff|Hspell:348456|h[Flameclasp Trap]|h|r: Les pièges enflamment le sol - évitez les marques.",
};

pack["175729"] = { "Vestige de Ner’zhul",
"* |cff71d5ff|Hspell:349908|h[Orb of Torment]|h|r: Les orbes de Torment attaquent le groupe - détruisez-les avant qu'ils n'explosent.",
"* |cff71d5ff|Hspell:350469|h[Malevolence]|h|r: Malevolence s'accroche au porteur - éloignez-le.",
"* |cff71d5ff|Hspell:351066|h[Shatter]|h|r: Le Shatter crée des fissures dans la salle - interrompez-le.",
"* |cff71d5ff|Hspell:350894|h[Suffering]|h|r: La souffrance s'accumule sur le tank - changez de tank.",
};

pack["175727"] = { "Étripeur d’âme Dormazain",
"* |cff71d5ff|Hspell:350647|h[Brand of Torment]|h|r: Les marques de Torment affectent leurs porteurs - soignez en passant.",
"* |cff71d5ff|Hspell:350422|h[Ruinblade]|h|r: La Ruinblade s'applique au tank - échangez de tank.",
"* |cff71d5ff|Hspell:352158|h[Torment]|h|r: Son sort de Torment frappe le groupe - soyez prêts à soigner.",
"* |cff71d5ff|Hspell:351779|h[Agonizing Spike]|h|r: Le sort de pic lance - interrompez-le.",
};

pack["175732"] = { "Sylvanas Coursevent",
"* |cff71d5ff|Hspell:347504|h[Windrunner]|h|r: Le Windrunner traverse le groupe - restez à distance de son attaque.",
"* |cff71d5ff|Hspell:353935|h[Shadow Dagger]|h|r: Les dagues marquent leurs porteurs - restez séparés.",
"* |cff71d5ff|Hspell:348064|h[Wailing Arrow]|h|r: La flèche trace sa trajectoire - personne ne doit s'y trouver.",
"* |cff71d5ff|Hspell:347704|h[Veil of Darkness]|h|r: Le voile obscurcit le groupe - regroupez-vous et soignez à travers.",
"* |cff71d5ff|Hspell:349419|h[Domination Chains]|h|r: Les chaînes attachent les joueurs - brisez-les rapidement.",
};

pack["175725"] = { "L’œil du Geôlier",
"* |cff71d5ff|Hspell:350803|h[Piercing Lens]|h|r: Le faisceau frappe sa trajectoire - restez à l'écart.",
"* |cff71d5ff|Hspell:358609|h[Dragging Chains]|h|r: Les chaînes tirent les joueurs - brisez-les rapidement.",
"* |cff71d5ff|Hspell:350604|h[Hopeless Lethargy]|h|r: Lethargy marque un joueur - courez pour l'éloigner.",
"* |cff71d5ff|Hspell:350764|h[Annihilating Glare]|h|r: Le faisceau balaie la pièce - courez en cercle devant.",
"* |cff71d5ff|Hspell:350828|h[Death Link]|h|r: Le lien de mort lie les tanks - échangez les tanks.",
};

pack["175726"] = { "Les Neuf",
"* |cff71d5ff|Hspell:350202|h[Unending Strike]|h|r: L'attaque s'accumule sur le tank - échangez de tank.",
"* |cff71d5ff|Hspell:350342|h[Formless Mass]|h|r: La masse se forme autour d'eux - ciblez-la avec un AoE.",
"* |cff71d5ff|Hspell:350365|h[Wings of Rage]|h|r: Les ailes projettent le groupe - défendez-vous contre la poussée.",
"* |cff71d5ff|Hspell:350385|h[Reverberating Refrain]|h|r: Le refrain remplit la salle - cachez-vous derrière les piliers.",
"* |cff71d5ff|Hspell:350283|h[Soulful Blast]|h|r: Le coup est lancé - interrompez-le.",
};

pack["175611"] = { "Le Naphtrémens",
"* |cff71d5ff|Hspell:347274|h[Annihilating Smash]|h|r: Le coup projette le tank - le maintenir.",
"* |cff71d5ff|Hspell:347283|h[Predator's Howl]|h|r: Le hurlement disperse le groupe - rester stable.",
"* |cff71d5ff|Hspell:347369|h[The Jailer's Gaze]|h|r: Le regard marque le porteur - esquiver le regard.",
"* |cff71d5ff|Hspell:347269|h[Chains of Eternity]|h|r: Les chaînes attachent le porteur - les briser rapidement.",
};

-- --------------------------------- --
-- Sepulcher of the First Ones : Zona 2481 --
-- --------------------------------- --

pack["181954"] = { "Anduin Wrynn",
"* |cff71d5ff|Hspell:365295|h[Béfouled Barrier]|h|r: Une barrière protège ses alliés - détruisez-la rapidement.",
"* |cff71d5ff|Hspell:365030|h[Wicked Star]|h|r: Les étoiles suivent leur cible - éloignez-les.",
"* |cff71d5ff|Hspell:362405|h[Kingsmourne Hungers]|h|r: L'épée affame le groupe - préparez le tir.",
"* |cff71d5ff|Hspell:361989|h[Blasphemy]|h|r: Blasphemy déchire le groupe - rassemblez-vous rapidement.",
"* |cff71d5ff|Hspell:364031|h[Malignant Ward]|h|r: Le bouclier malin s'accroche - désactivez-le.",
};

pack["183501"] = { "Artificier Xy’mox",
"* |cff71d5ff|Hspell:363520|h[Anneaux de Forerunner]|h|r: Les anneaux se propagent - restez à l'écart des vagues.",
"* |cff71d5ff|Hspell:362615|h[Dimensional Tear]|h|r: Les larmes drainent la salle - soigner en continu.",
"* |cff71d5ff|Hspell:362882|h[Piège de Stase]|h|r: Les pièges gèlent le sol - évitez les marques.",
"* |cff71d5ff|Hspell:362803|h[Glyphe de Relocation]|h|r : Le glyphe déplace son porteur – le tank échange la marque.",
};

pack["181224"] = { "Dausegne, l’Oracle déchu",
"* |cff71d5ff|Hspell:361966|h[Infused Strikes]|h|r: Les coups s'accumulent sur le tank - échangez de tank.",
"* |cff71d5ff|Hspell:361018|h[Staggering Barrage]|h|r: Les barrages nécessitent des soins - formez des paires et partagez-les.",
"* |cff71d5ff|Hspell:359483|h[Domination Core]|h|r: Le noyau est suspendu - repoussez-le vers elle.",
"* |cff71d5ff|Hspell:365373|h[Disintegration Halo]|h|r: L'anneau entoure la pièce - restez à l'extérieur de l'anneau.",
};

pack["180906"] = { "Halondrus le Récupérateur",
"* |cff71d5ff|Hspell:367079|h[Seismic Tremors]|h|r: Les tremblements secouent la pièce - préparez-vous à l'explosion.",
"* |cff71d5ff|Hspell:368957|h[Volatile Charge]|h|r: Charges volatiles sur les joueurs - éloignez-les du groupe.",
"* |cff71d5ff|Hspell:361676|h[Earthbreaker Missiles]|h|r: Les missiles tombent largement - écartez-vous.",
"* |cff71d5ff|Hspell:365297|h[Crushing Prism]|h|r: Les prismes détruisent le sol - évitez les zones.",
};

pack["182169"] = { "Lihuvim, architecte principal",
"* |cff71d5ff|Hspell:368738|h[Harmonic Alignment]|h|r: Harmony appelle le groupe - regroupez-vous autour du cercle.",
"* |cff71d5ff|Hspell:368740|h[Melodic Alignment]|h|r: Melody appelle le groupe - éparpillez-vous autour du cercle.",
"* |cff71d5ff|Hspell:362622|h[Unstable Mote]|h|r: Les mote explosent sur leur porteur - emportez-les avec vous.",
"* |cff71d5ff|Hspell:363088|h[Cosmic Shift]|h|r: Le shift projette tout - préparez-vous à l'attraction.",
};

bos = { "Seigneurs de l’effroi",
"* |cff71d5ff|Hspell:360012|h[Cloud of Carrion]|h|r: La nuée se déplace sur le groupe - étalez-vous pour éviter.",
"* |cff71d5ff|Hspell:361913|h[Manifest Shadows]|h|r: Des ombres se manifestent autour d'eux - ciblez-les.",
"* |cff71d5ff|Hspell:360319|h[Unto Darkness]|h|r: L'obscurité envahit la pièce - préparez-vous à l'explosion.",
"* |cff71d5ff|Hspell:359960|h[Leeching Claws]|h|r: Les griffes drainent le tank - mettez des soins.",
};
pack["181398"] = bos; pack["181399"] = bos;

bos = { "Panthéon des prototypes",
"* |cff71d5ff|Hspell:360687|h[Runecarver's Deathtouch]|h|r: Deathtouch marque les personnes ciblées - transférez les marques séparément.",
"* |cff71d5ff|Hspell:360295|h[Necrotic Ritual]|h|r: Le rituel réanime les morts - brisez-le rapidement.",
"* |cff71d5ff|Hspell:362352|h[Pinned]|h|r: La mise en cage immobilise les personnes ciblées - libérez-les rapidement.",
"* |cff71d5ff|Hspell:365272|h[Humbling Strikes]|h|r: Les coups s'accumulent sur le tank - échangez de tank.",
};
pack["181548"] = bos; pack["181551"] = bos; pack["181546"] = bos; pack["181549"] = bos;

pack["182777"] = { "Rygelon",
"* |cff71d5ff|Hspell:362275|h[Celestial Collapse]|h|r: Les explosions se déclenchent en séquence - faites attention à l'ordre.",
"* |cff71d5ff|Hspell:362206|h[Event Horizon]|h|r: L'horizon attire le groupe - soyez prêt à la traction.",
"* |cff71d5ff|Hspell:362390|h[Manifest Cosmos]|h|r: Le cosmos se manifeste autour de lui - ciblez-les avec des attaques à zone.",
"* |cff71d5ff|Hspell:363108|h[Celestial Terminator]|h|r: Le terminateur balaie la pièce - soyez prêt.",
};

pack["181395"] = { "Skolex, l’Insatiable vorace",
"* |cff71d5ff|Hspell:359829|h[Dust Flail]|h|r: Les fouets explosent largement - se disperser.",
"* |cff71d5ff|Hspell:359979|h[Rend]|h|r: Les rends s'accumulent sur les tanks - changer de tanks.",
"* |cff71d5ff|Hspell:359770|h[Ravening Burrow]|h|r: Ils creusent pour s'éloigner - se préparer à l'arrivée.",
"* |cff71d5ff|Hspell:360448|h[Retch]|h|r: Le retch crée une onde de choc - rester en retrait.",
};

pack["180990"] = { "Le Geôlier",
"* |cff71d5ff|Hspell:362075|h[Domination]|h|r: Domination écrase le groupe - résistez au poids.",
"* |cff71d5ff|Hspell:360281|h[Rune of Damnation]|h|r: Damnation marque les joueurs - séparez les marques.",
"* |cff71d5ff|Hspell:366374|h[World Crusher]|h|r: Le briseur frappe largement - étalez-vous.",
"* |cff71d5ff|Hspell:362631|h[Chains of Oppression]|h|r: Les chaînes lient les joueurs ensemble - brisez-les.",
"* |cff71d5ff|Hspell:362028|h[Relenting Domination]|h|r: Domination inonde la pièce - cachez-vous derrière la colonne.",
};

pack["180773"] = { "Gardien vigilant",
"* |cff71d5ff|Hspell:361001|h[Onde de Disintegration]|h|r: L'onde bala la pièce - restez hors du faisceau.",
"* |cff71d5ff|Hspell:359610|h[Désintégration]|h|r: Le faisceau bala la pièce - courez en cercle devant.",
"* |cff71d5ff|Hspell:364447|h[Dissonance]|h|r: La dissonance s'applique au tank - changez de tank.",
"* |cff71d5ff|Hspell:360658|h[Sentinelle Préfabriquée]|h|r: Les sentinelles se déploient - les détruisez.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["182466"] = { "Antre",
"* |cff71d5ff|Hspell:361632|h[Banishment Mark]|h|r: La marque bannit son porteur - faites attention à la marque.",
"* |cff71d5ff|Hspell:361390|h[Dark Deterrence]|h|r: Deterrence s'accumule sur le tank - échangez de tank.",
"* |cff71d5ff|Hspell:361209|h[Furious Slam]|h|r: Le coup fait trembler le sol - étalez-vous.",
"* |cff71d5ff|Hspell:361341|h[Destruction Cores]|h|r: Les cœurs tombent sur la zone - éloignez-vous des marques.",
};

pack["178958"] = { "Morgeth",
"* |cff71d5ff|Hspell:353741|h[Cries of Anguish]|h|r: Les cris d'angoisse résonnent - préparez-vous à les affronter.",
"* |cff71d5ff|Hspell:353800|h[Torment]|h|r: Les stacks de Torment sur le tank - échangez de tank.",
"* |cff71d5ff|Hspell:356430|h[Iron Golem]|h|r: Un golem de fer rejoint le combat - détruisez-le.",
"* |cff71d5ff|Hspell:355456|h[Damnation]|h|r: Les explosions de Damnation se propagent - étalez-vous.",
};

pack["167525"] = { "Mortanis",
"* |cff71d5ff|Hspell:338847|h[Unholy Frenzy]|h|r: La Frenzy le rend, - calmé-la.",
"* |cff71d5ff|Hspell:338851|h[Screaming Skull]|h|r: Les crânes ont besoin d'être protégés - formez des paires et partagez-les.",
"* |cff71d5ff|Hspell:338846|h[Bone Cleave]|h|r: Le coup de clef est large - les personnages de mêlée restent derrière.",
"* |cff71d5ff|Hspell:338849|h[Unruly Remains]|h|r: Les restes tournent autour de lui - ciblez-les avec des attaques à zone.",
};

pack["167526"] = { "Nurgash",
"* |cff71d5ff|Hspell:338858|h[Stone Fist]|h|r: Les coups de poing frappent le tank - défenses augmentées.",
"* |cff71d5ff|Hspell:338863|h[Stone Stomp]|h|r: Le coup de pied fait trembler le sol - se disperser.",
"* |cff71d5ff|Hspell:338868|h[Deep Slumber]|h|r: Le sommeil fait tomber le groupe - se réveiller rapidement.",
"* |cff71d5ff|Hspell:338867|h[Hail of Stones]|h|r: Les pierres frappent sur les bords - se tenir au centre.",
};

pack["167527"] = { "Oranomonos",
"* |cff71d5ff|Hspell:339040|h[Stone Stomp]|h|r: Le coup fait trembler la clairière - se disperser.",
"* |cff71d5ff|Hspell:338852|h[Implant]|h|r: Les implants se cumulent sur le tank - changer de tank.",
"* |cff71d5ff|Hspell:338857|h[Regrowth]|h|r: La régénération le soigne - l'interrompre.",
"* |cff71d5ff|Hspell:338855|h[Seeds of Sorrow]|h|r: Les graines explosent largement - fuir de l'éclosion.",
};

pack["167524"] = { "Valinor",
"* |cff71d5ff|Hspell:327256|h[Vent Anima]|h|r: Les vents Anima sur le sol - ne pas utiliser les vents.",
"* |cff71d5ff|Hspell:327255|h[Mark of Penitence]|h|r: Les stacks de Penitence sur le tank - changer de tank.",
"* |cff71d5ff|Hspell:339278|h[Lysonia's Call]|h|r: L'appel marque son porteur - maintenir le porteur marqué dégagé.",
"* |cff71d5ff|Hspell:327262|h[Charged Anima Blast]|h|r: L'explosion charge son marque - la faire sortir loin.",
};

P.fr = fr;
