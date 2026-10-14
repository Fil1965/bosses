--[[
	Bosses_Midnight_fr.lua
		Datos en FR del pack Midnight.
		Fichero creado por el editor web (2026-10-12); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr; -- el bloque de datos escribe en fr
local bos;       -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- ----------------------------- --
-- The Voidspire : Zona 2912 --
-- ----------------------------- --

bos = {
	"Avant-garde lumaveuglée",
	"* Conseil de trois paladins (Lightblood, Bellamy et Senn) ; chaque aura (Ira/Dévotion/Paix) active des talents différents.",
	"* Esquive les boucliers de |cff71d5ff|Hspell:1248644|h[Divine Toll]|h|r et le joueur marqué par |cff71d5ff|Hspell:1248983|h[Execution Sentence]|h|r.",
	"* |cff71d5ff|Hspell:1248674|h[Sacred Shield]|h|r doit être brisée ; |cff71d5ff|Hspell:1255738|h[Searing Radiance]|h|r exige des soins.",
	"* Les |cff71d5ff|Hspell:1246736|h[Judgement]|h|r sont des mécaniques de tank.",
};
pack["240431"] = bos; pack["240437"] = bos; pack["240438"] = bos;

pack["240435"] = { "Imperator Averzian",
	"* Le joueur marqué par |cff71d5ff|Hspell:1280015|h[Void Marked]|h|r s'éloigne du groupe.",
	"* Attention à |cff71d5ff|Hspell:1249262|h[Umbral Collapse]|h|r et à |cff71d5ff|Hspell:1258883|h[Void Fall]|h|r.",
	"* |cff71d5ff|Hspell:1260712|h[Oblivion's Wrath]|h|r : dégâts massifs, soins prêts.",
};

bos = {
	"Vaelgor et Ezzorak",
	"* Deux drakes : attention aux zones frontales ; |cff71d5ff|Hspell:1244221|h[Dread Breath]|h|r de Vaelgor.",
	"* |cff71d5ff|Hspell:1244672|h[Nullzone]|h|r : sors de la zone marquée.",
	"* |cff71d5ff|Hspell:1249748|h[Midnight Flames]|h|r laisse du feu au sol.",
	"* Tanks : alterner |cff71d5ff|Hspell:1262623|h[Nullbeam]|h|r et |cff71d5ff|Hspell:1245645|h[Rakfang]|h|r.",
};
pack["242056"] = bos; pack["244552"] = bos;

pack["240434"] = { "Vorasius",
	"* |cff71d5ff|Hspell:1260052|h[Primordial Roar]|h|r : dégâts massifs, soins prêts.",
	"* Si |cff71d5ff|Hspell:1254113|h[Fixate]|h|r te fixe : kite le boss.",
	"* |cff71d5ff|Hspell:1254199|h[Parasite Expulsion]|h|r fait apparaître des parasites : DPS maximum sur les adds.",
	"* |cff71d5ff|Hspell:1243220|h[Dark Goo]|h|r tombe sous toi : sors-en.",
};

pack["240432"] = { "Roi déchu Salhadaar",
	"* Attention à |cff71d5ff|Hspell:1247738|h[Void Convergence]|h|r et aux copies de |cff71d5ff|Hspell:1254081|h[Fractured Projection]|h|r.",
	"* |cff71d5ff|Hspell:1248697|h[Despotic Command]|h|r : obéis à ce que le roi ordonne.",
	"* |cff71d5ff|Hspell:1250686|h[Twisting Obscurity]|h|r : attention à ce qui se cache.",
};

bos = {
	"Couronne du cosmos",
	"* Phase 1 avec trois adds : Morium, Demiar et Vorélus ; |cff71d5ff|Hspell:1243743|h[Interrupting Tremor]|h|r de Demiar peut être interrompu.",
	"* |cff71d5ff|Hspell:1232467|h[Grasp of Emptiness]|h|r : sors de la zone sous toi.",
	"* Interlude : esquive la |cff71d5ff|Hspell:1243982|h[Silverstrike Barrage]|h|r.",
	"* Phase finale : |cff71d5ff|Hspell:1238843|h[Devouring Cosmos]|h|r derrière la |cff71d5ff|Hspell:1246918|h[Cosmic Barrier]|h|r.",
};
pack["240430"] = bos; pack["243805"] = bos; pack["243810"] = bos; pack["243811"] = bos; pack["244761"] = bos;

-- ------------------------------ --
-- The Dreamrift : Zona 2939 --
-- ------------------------------ --

bos = {
	"Chimaerus, la divinité ineffable",
	"* |cff71d5ff|Hspell:1245396|h[Consume]|h|r : DPS maximum pour freiner la dévoration.",
	"* Le joueur marqué par |cff71d5ff|Hspell:1257087|h[Consuming Miasma]|h|r s'éloigne du groupe.",
	"* Phase 2 : il vole ; |cff71d5ff|Hspell:1245406|h[Ravenous Dive]|h|r doit être esquivée.",
};
pack["245569"] = bos; pack["256116"] = bos;

-- ---------------------------------- --
-- March on Quel'Danas : Zona 2913 --
-- ---------------------------------- --

pack["240387"] = { "Belo'ren",
	"* Phénix : il meurt et renaît avec |cff71d5ff|Hspell:1241313|h[Rebirth]|h|r ; surveille les résurrections.",
	"* Les plumes de |cff71d5ff|Hspell:1242260|h[Infused Quills]|h|r sont à éviter.",
	"* |cff71d5ff|Hspell:1246709|h[Death Drop]|h|r : le joueur marqué se place loin du groupe.",
};

pack["240391"] = { "Glas de minuit",
	"* Trois phases ; la transformation finale est |cff71d5ff|Hspell:1250898|h[The Dark Archangel]|h|r.",
	"* |cff71d5ff|Hspell:1251386|h[Safeguard Prism]|h|r : prête attention aux prismes.",
	"* |cff71d5ff|Hspell:1282441|h[Starsplinter]|h|r et |cff71d5ff|Hspell:1281194|h[Dark Meltdown]|h|r : esquive et soins.",
};

-- ---------------------- --
-- Sporefall : Zona 1592 --
-- ---------------------- --

bos = {
	"Embourbe-pourri",
	"* Le joueur marqué par |cff71d5ff|Hspell:1222088|h[Festering Vines]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:1221787|h[Bursting Pustules]|h|r : les pustules explosent, éloigne-toi.",
	"* |cff71d5ff|Hspell:1221781|h[Putrid Fist]|h|r est pour le tank : alternez.",
};
pack["238693"] = bos; pack["254176"] = bos;

-- ------------------------------------- --
-- The Venomous Abyss : Zona 3004 (S2) --
-- ------------------------------------- --

bos = {
	"L’Autel annelé",
	"* Trois phases ; à la fin ils fusionnent avec |cff71d5ff|Hspell:1298381|h[Defilement of the Coiled Altar]|h|r.",
	"* |cff71d5ff|Hspell:1283489|h[Guillotine]|h|r : la guillotine tombe, sors du chemin.",
	"* Le joueur marqué par |cff71d5ff|Hspell:1285911|h[Unnerving Fixation]|h|r court loin du groupe.",
};
pack["257911"] = bos; pack["259854"] = bos;

bos = {
	"L’expédition perdue",
	"* Conseil de trois ; le pire est |cff71d5ff|Hspell:1292779|h[Final Ascension]|h|r de Mor’zahi.",
	"* |cff71d5ff|Hspell:1290711|h[Blink Nova]|h|r d'Iku : évite la nova.",
	"* |cff71d5ff|Hspell:1295886|h[Frostfire Volley]|h|r : dégâts de raid, soins.",
};
pack["261835"] = bos; pack["261843"] = bos; pack["261848"] = bos;

bos = {
	"Nek’zali l’Entortillâme",
	"* |cff71d5ff|Hspell:1295397|h[Restless Amani]|h|r fait apparaître des adds : DPS maximum sur les esprits.",
	"* |cff71d5ff|Hspell:1292036|h[Possession Barrage]|h|r : attention aux possessions.",
	"* |cff71d5ff|Hspell:1299673|h[Invoke]|h|r a une incantation longue : préparez les interruptions.",
};
pack["259927"] = bos; pack["263050"] = bos;

bos = {
	"Sentinelles inhumées",
	"* Deux sentinelles : |cff71d5ff|Hspell:1284434|h[Toxic Droplets]|h|r et |cff71d5ff|Hspell:1288232|h[Unstable Miasma]|h|r empoisonnent.",
	"* Tanks : alterner |cff71d5ff|Hspell:1284458|h[Empowering Slam]|h|r et |cff71d5ff|Hspell:1284487|h[Bloodvenom Injection]|h|r.",
};
pack["258557"] = bos; pack["258558"] = bos;

pack["257347"] = { "Sszorak",
	"* |cff71d5ff|Hspell:1277025|h[Apex Predator]|h|r te fixe : kite.",
	"* |cff71d5ff|Hspell:1285732|h[Howling Maelstrom]|h|r : dégâts massifs, soins.",
	"* Esquive |cff71d5ff|Hspell:1305959|h[Venomous Surge]|h|r et |cff71d5ff|Hspell:1285425|h[Raging Crosswinds]|h|r.",
};

bos = {
	"Les crochets jumeaux",
	"* Ils plongent avec |cff71d5ff|Hspell:1308556|h[Submerge]|h|r et réapparaissent par surprise.",
	"* |cff71d5ff|Hspell:1290956|h[Stir the Depths]|h|r lance des vagues : esquive-les.",
	"* |cff71d5ff|Hspell:1288538|h[Stone Breaker]|h|r frappe le tank et le repousse.",
	"* |cff71d5ff|Hspell:1303230|h[Blood Torrent]|h|r absorbe les soins : soigneurs attentifs.",
};
pack["257361"] = bos; pack["257368"] = bos;

pack["259181"] = { "Vashnik",
	"* |cff71d5ff|Hspell:1283164|h[Imbibe]|h|r absorbe le poison des sources : contrôlez-le.",
	"* |cff71d5ff|Hspell:1280935|h[Dripping Fangs]|h|r est pour le tank.",
	"* |cff71d5ff|Hspell:1281907|h[Plague Froth]|h|r : dégâts de raid, soins.",
};

pack["257758"] = {
	"Ula’tek",
	"* Trois phases ; la mère serpent monte à la fin avec |cff71d5ff|Hspell:1286905|h[Fury Unleashed]|h|r.",
	"* |cff71d5ff|Hspell:1300530|h[Spectral Coils]|h|r : place-toi du côté qui t'est assigné (gauche/droite).",
	"* Esquive les vagues de |cff71d5ff|Hspell:1292188|h[Caustic Waves]|h|r.",
	"* |cff71d5ff|Hspell:1296301|h[Mephitic Thrash]|h|r et |cff71d5ff|Hspell:1301510|h[Circling Prey]|h|r : à incanter avec prudence.",
};

-- ----------------------------- --
-- Jefes de mundo y Lairs --
-- ----------------------------- --

pack["244424"] = { "Pincombe",
	"* |cff71d5ff|Hspell:1235144|h[War Club]|h|r est pour le tank.",
	"* |cff71d5ff|Hspell:1235131|h[Rootquake]|h|r : attention au sol.",
};

pack["244762"] = { "Lu'ashal",
	"* |cff71d5ff|Hspell:1258427|h[Radiant Flare]|h|r : s'éloigner.",
	"* |cff71d5ff|Hspell:1276247|h[Dawnfire Breath]|h|r : hors du frontal.",
};

pack["249776"] = { "Thorm'belan",
	"* Le joueur marqué par |cff71d5ff|Hspell:1258641|h[Shredding Tendrils]|h|r s'éloigne.",
	"* |cff71d5ff|Hspell:1257325|h[Radiant Mote]|h|r : attention aux particules.",
};

pack["252959"] = { "Nymrissa Mande-vagues",
	"* |cff71d5ff|Hspell:1258668|h[Swirling Whirlpools]|h|r : esquive les tourbillons.",
	"* |cff71d5ff|Hspell:1260837|h[Abyssal Rain]|h|r : dégâts de raid, soins.",
	"* La |cff71d5ff|Hspell:1276710|h[Alluring Bubble]|h|r : attention à la bulle.",
};

-- Prédaxas réécrit avec les infos du propriétaire (Wowhead via le chat)
pack["238015"] = { "Prédaxas",
	"* Sa charge de |cff71d5ff|Hspell:34994|h[Dévorer]|h|r vise une zone : dégâts de Nature et étourdit 3 s tout ce qui est proche ; la cible court loin du groupe pendant la durée.",
	"* La |cff71d5ff|Hspell:34929|h[Regurgitation]|h|r vomit en cône frontal (coup plus dégâts sur la durée de 12 s) et des sbires sortent du vomi : personne ne se place devant et on les balaye vite.",
	"* Attention aux types de sbires du vomi : les porteurs de sang passent en Rage bestiale (dégâts doublés 18 s, à dissiper ou tuer en premier), ceux ingérés crachent du venin en zone et les tiques du Vide éparpillent une pluie cosmique quand le coup sismique les secoue.",
	"* Le |cff71d5ff|Hspell:34933|h[Heurt sismique]|h|r frappe en zone et repousse : loin de l'impact et attentif à où il déplace les sbires."
};

pack["267861"] = { "Kith'ix",
	"* |cff71d5ff|Hspell:1304930|h[Dark Devastation]|h|r : frontal du tank, défensives.",
	"* |cff71d5ff|Hspell:1301511|h[Voidswarm]|h|r : sbires du Vide, priorité.",
	"* |cff71d5ff|Hspell:1302951|h[Suffocating Darkness]|h|r : obscurité, se réfugier derrière le bouclier d'Extinguish.",
	"* |cff71d5ff|Hspell:1303681|h[Twisted Appendage]|h|r : appendices, hors du sol.",
	"* |cff71d5ff|Hspell:1308873|h[Nullgate]|h|r : hors de la porte nulle.",
};

-- --------------------------- --
-- Mazmorras de Midnight --
-- --------------------------- --
-- NPC IDs de Wowhead. Ojo: Zul'jan 267797 (página PTR), Zaen 234649 y
-- Lothraxion 241546 son de confianza media; verificar in-game.
-- Sin ID aún: Nekraxx (pareja de Muro'jin).

-- ---------------------------- --
-- Altar of Fangs : Zona 2993 --
-- ---------------------------- --

pack["259445"] = { "Rav’i",
	"* |cff71d5ff|Hspell:1296220|h[Triple Shot]|h|r : flèches ciblées, répartissez les dégâts.",
	"* Le joueur marqué par |cff71d5ff|Hspell:1296050|h[Regurgitate]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:1307894|h[Ravenous Stomp]|h|r : attention au piétinement.",
};

pack["259446"] = { "L’Ophidien ondulant",
	"* Deux phases ; dans la seconde arrivent |cff71d5ff|Hspell:1310358|h[Toxic Atrophy]|h|r et |cff71d5ff|Hspell:1300686|h[Assimilation]|h|r.",
	"* |cff71d5ff|Hspell:1299154|h[Synchronized Venom]|h|r : écartez-vous pour répartir les dégâts.",
	"* |cff71d5ff|Hspell:1298949|h[Tail Scythe]|h|r est pour le tank ; |cff71d5ff|Hspell:1300044|h[Venom Jet]|h|r est à esquiver.",
};

pack["267797"] = { "Zul’jan",
	"* |cff71d5ff|Hspell:1300876|h[Ritual of the Fang]|h|r : interrompez le rituel.",
	"* |cff71d5ff|Hspell:1301111|h[Axegrinder]|h|r et |cff71d5ff|Hspell:1301413|h[Boneslicer]|h|r : dégâts ciblés, soins.",
	"* |cff71d5ff|Hspell:1301350|h[Chop Down]|h|r est pour le tank.",
};

-- --------------------------------- --
-- Den of Nalorakk : Zona 2825 --
-- --------------------------------- --

pack["258877"] = { "Nalorakk",
	"* |cff71d5ff|Hspell:1243569|h[Overwhelming Onslaught]|h|r : dégâts ciblés, soins.",
	"* |cff71d5ff|Hspell:1242860|h[Echoing Maul]|h|r est pour le tank.",
	"* |cff71d5ff|Hspell:1243011|h[Fury of the War God]|h|r : furie, défensives prêtes.",
};

pack["261053"] = { "Sentinelle de l’hiver",
	"* Le joueur marqué par |cff71d5ff|Hspell:1235548|h[Glacial Torment]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:1235783|h[Shattering Frostspike]|h|r : attention aux pointes de givre.",
	"* |cff71d5ff|Hspell:1235656|h[Frozen Tempest]|h|r : dégâts de raid, soins.",
};

pack["248710"] = { "Le Thésauriseur",
	"* |cff71d5ff|Hspell:1235118|h[Ravenous Bellow]|h|r : dégâts massifs, soins.",
	"* |cff71d5ff|Hspell:1253268|h[Earthshatter Slam]|h|r frappe et repousse le tank.",
	"* |cff71d5ff|Hspell:1234233|h[Spoiled Supplies]|h|r : attention aux provisions.",
};

-- ---------------------------------- --
-- Magisters' Terrace : Zona 2811 --
-- ---------------------------------- --

pack["231861"] = { "Assemblage arcanique de dispersion des foules",
	"* |cff71d5ff|Hspell:1214081|h[Arcane Expulsion]|h|r : dégâts ciblés, soins.",
	"* |cff71d5ff|Hspell:1214032|h[Ethereal Shackles]|h|r : attention aux chaînes.",
	"* |cff71d5ff|Hspell:474345|h[Refueling Protocol]|h|r : incantation longue ; utilise l'Orbe de contrôle qui apparaît.",
};

pack["231865"] = { "Dégentrius",
	"* Le joueur marqué par |cff71d5ff|Hspell:1215897|h[Devouring Entropy]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:1280113|h[Hulking Fragment]|h|r et |cff71d5ff|Hspell:1215087|h[Unstable Void Essence]|h|r : à esquiver.",
};

pack["231864"] = { "Gémellus",
	"* |cff71d5ff|Hspell:1223847|h[Triplicate]|h|r : il se divise en trois, répartissez-vous sur les copies.",
	"* Le joueur marqué par |cff71d5ff|Hspell:1253709|h[Neural Link]|h|r et |cff71d5ff|Hspell:1224299|h[Astral Grasp]|h|r agit vite.",
};

pack["231863"] = { "Séranel Cinglesoleil",
	"* Le joueur marqué par |cff71d5ff|Hspell:1225787|h[Runic Mark]|h|r sort du groupe.",
	"* |cff71d5ff|Hspell:1224903|h[Suppression Zone]|h|r : sors de la zone.",
	"* |cff71d5ff|Hspell:1225193|h[Wave of Silence]|h|r : incantation qui applique un silence, soyez attentifs.",
};

-- ---------------------------------- --
-- Maisara Caverns : Zona 2874 --
-- ---------------------------------- --

pack["247570"] = { "Muro’jin et Nekraxx",
	"* Le joueur marqué par |cff71d5ff|Hspell:1260643|h[Barrage]|h|r kite.",
	"* |cff71d5ff|Hspell:1260731|h[Freezing Trap]|h|r gèle : libérez celui qui est piégé.",
	"* |cff71d5ff|Hspell:1243900|h[Fetid Quillstorm]|h|r et |cff71d5ff|Hspell:1246666|h[Infected Pinions]|h|r : esquive les plumes.",
};

pack["248605"] = { "Rak’tul, réceptacle des âmes",
	"* Le joueur marqué par |cff71d5ff|Hspell:1252676|h[Crush Souls]|h|r meurt sans soins : éloigne-toi.",
	"* |cff71d5ff|Hspell:1251023|h[Spiritbreaker]|h|r : dégâts puissants, soins.",
	"* |cff71d5ff|Hspell:1253788|h[Soulrending Roar]|h|r : dégâts de raid.",
};

pack["248595"] = { "Vordaza",
	"* |cff71d5ff|Hspell:1251554|h[Drain Soul]|h|r draine : soins sur la cible.",
	"* |cff71d5ff|Hspell:1251204|h[Wrest Phantoms]|h|r et |cff71d5ff|Hspell:1252054|h[Unmake]|h|r : attention aux fantômes.",
	"* Le joueur marqué par |cff71d5ff|Hspell:1251775|h[Final Pursuit]|h|r court loin.",
};

-- ------------------------------ --
-- Murder Row : Zona 2813 --
-- ------------------------------ --

pack["252458"] = { "Kystia Coeur-de-Mana",
	"* |cff71d5ff|Hspell:474240|h[Fel Nova]|h|r : éloigne-toi pendant l'incantation.",
	"* |cff71d5ff|Hspell:1264095|h[Mirror Images]|h|r : des copies, trouve la vraie.",
	"* |cff71d5ff|Hspell:1253811|h[Fel Spray]|h|r : dégâts ciblés, soins.",
};

pack["237415"] = { "Lithiel Fureur-de-Cendre",
	"* |cff71d5ff|Hspell:474408|h[Summon Vilefiend]|h|r : des adds, contrôle-les et tue-les.",
	"* |cff71d5ff|Hspell:1218203|h[Fingers of Gul'dan]|h|r : hors de la zone.",
	"* |cff71d5ff|Hspell:1224478|h[Malefic Wave]|h|r : dégâts de raid, soins.",
};

pack["234647"] = { "Xathuux l’Annihilateur",
	"* |cff71d5ff|Hspell:473898|h[Legion Strike]|h|r est pour le tank.",
	"* |cff71d5ff|Hspell:474197|h[Demonic Rage]|h|r : incantation longue, interrompez ou défensives.",
	"* |cff71d5ff|Hspell:1214637|h[Axe Toss]|h|r : attention à la hache.",
};

pack["234649"] = { "Zaen Tristelame",
	"* |cff71d5ff|Hspell:474478|h[Killing Spree]|h|r charge le joueur marqué, soins.",
	"* |cff71d5ff|Hspell:474765|h[Same-Day Delivery]|h|r et |cff71d5ff|Hspell:1214357|h[Fire Bomb]|h|r : esquive les bombes.",
	"* |cff71d5ff|Hspell:1218347|h[Murder in a Row]|h|r : incantation longue, interrompez.",
};

-- --------------------------------- --
-- Nexus-Point Xenas : Zona 2915 --
-- --------------------------------- --

pack["241539"] = { "Kasreth",
	"* |cff71d5ff|Hspell:1251579|h[Leyline Array]|h|r : surveille les lignes d'énergie.",
	"* Le joueur marqué par |cff71d5ff|Hspell:1251772|h[Reflux Charge]|h|r s'éloigne.",
	"* |cff71d5ff|Hspell:1257509|h[Corespark Detonation]|h|r : incantation longue, interrompez ou éloignez-vous.",
};

pack["241546"] = { "Lothraxion",
	"* |cff71d5ff|Hspell:1253950|h[Searing Rend]|h|r : dégâts ciblés, soins.",
	"* Le joueur marqué par |cff71d5ff|Hspell:1253855|h[Brilliant Dispersion]|h|r s'éloigne.",
	"* |cff71d5ff|Hspell:1255531|h[Flicker]|h|r : il se téléporte, reste attentif.",
};

pack["254227"] = { "Garde-cœur Nysarra",
	"* |cff71d5ff|Hspell:1247937|h[Umbral Lash]|h|r : tank et soigneurs attentifs.",
	"* |cff71d5ff|Hspell:1264439|h[Lightscar Flare]|h|r : incantation longue, interrompez.",
	"* |cff71d5ff|Hspell:1271684|h[Devour the Unworthy]|h|r : le joueur marqué meurt sans soins.",
};

-- --------------------------------- --
-- The Blinding Vale : Zona 2859 --
-- --------------------------------- --

pack["243028"] = { "Trinité du lumiflore",
	"* |cff71d5ff|Hspell:1234753|h[Bedrock Slam]|h|r est pour le tank : défensives.",
	"* |cff71d5ff|Hspell:1235564|h[Lightblossom Beam]|h|r : les rayons sont absorbés, dégâts partagés.",
	"* |cff71d5ff|Hspell:1234850|h[Light'sower Dash]|h|r : charge, hors de son chemin.",
	"* |cff71d5ff|Hspell:1235828|h[Light-Scorched Earth]|h|r : hors du sol brûlé.",
};

pack["244887"] = { "Chasselumière Ikuzz",
	"* |cff71d5ff|Hspell:1236746|h[Verdant Stomp]|h|r : attention au piétinement.",
	"* |cff71d5ff|Hspell:1237090|h[Bloodthirsty Gaze]|h|r : hors du regard.",
	"* |cff71d5ff|Hspell:1236709|h[Thorncaller Roar]|h|r : dégâts de raid, soins.",
};

pack["245912"] = { "Gardelumière Ruia",
	"* Change de forme : Moonkin, Ours et Haranir ; chaque forme apporte des talents différents.",
	"* |cff71d5ff|Hspell:1240098|h[Lightfall]|h|r : dégâts de raid, soins.",
	"* |cff71d5ff|Hspell:1241058|h[Grievous Thrash]|h|r sur le tank : blessures graves.",
};

pack["247676"] = { "Ziekket",
	"* |cff71d5ff|Hspell:1246372|h[Awaken the Lightbloom]|h|r : réveille la fleur, priorité.",
	"* |cff71d5ff|Hspell:1247685|h[Thornspike]|h|r : attention aux épines.",
	"* |cff71d5ff|Hspell:1246607|h[Concentrated Lightbeam]|h|r : hors du rayon.",
};

-- --------------------------------- --
-- Voidscar Arena : Zona 2923 --
-- --------------------------------- --

pack["239008"] = { "Atroxus",
	"* |cff71d5ff|Hspell:1222642|h[Hulking Claw]|h|r est pour le tank.",
	"* |cff71d5ff|Hspell:1222721|h[Noxious Breath]|h|r : hors du frontal.",
	"* |cff71d5ff|Hspell:1226120|h[Poison Splash]|h|r : attention au poison.",
};

bos = { "Charonus",
	"* |cff71d5ff|Hspell:1282770|h[Unstable Singularity]|h|r : attention à la singularité.",
	"* |cff71d5ff|Hspell:1263982|h[Gravitic Orbs]|h|r : esquive les orbes.",
	"* |cff71d5ff|Hspell:1311923|h[Dark Waves]|h|r : dégâts de raid, soins.",
};
pack["239167"] = bos; pack["248015"] = bos;

pack["238887"] = { "Taz’Rah",
	"* |cff71d5ff|Hspell:1222098|h[Nether Dash]|h|r : il charge, sors de sa ligne.",
	"* |cff71d5ff|Hspell:1296963|h[Umbral Rupture]|h|r et |cff71d5ff|Hspell:1300259|h[Dark Bloom]|h|r : à esquiver.",
	"* |cff71d5ff|Hspell:1297017|h[Void Blast]|h|r : dégâts ciblés, soins.",
};

-- --------------------------------- --
-- Windrunner Spire : Zona 2805 --
-- --------------------------------- --

pack["231606"] = { "Emberdawn",
	"* Le joueur marqué par |cff71d5ff|Hspell:466556|h[Courant ascendant enflammé]|h|r est projeté en l'air : faites attention à votre position.",
	"* |cff71d5ff|Hspell:466064|h[Bec incendiaire]|h|r est une mécanique de tank.",
	"* |cff71d5ff|Hspell:465904|h[Rafale ardente]|h|r: incantation longue, préparez vos protections.",
};

pack["231626"] = { "Duo abandonné",
	"* Duo de morts-vivants : |cff71d5ff|Hspell:472745|h[Splattering Spew]|h|r laisse du poison au sol.",
	"* |cff71d5ff|Hspell:472888|h[Bone Hack]|h|r est pour le tank.",
	"* Le joueur marqué par |cff71d5ff|Hspell:474105|h[Curse of Darkness]|h|r et |cff71d5ff|Hspell:472793|h[Heaving Yank]|h|r agit vite.",
};

pack["231631"] = { "Commandant Kroluk",
	"* |cff71d5ff|Hspell:467620|h[Rampage]|h|r sur le tank : alterne l'agressivité.",
	"* |cff71d5ff|Hspell:1250851|h[Shield Wall]|h|r : attends le mur pour les dégâts.",
	"* |cff71d5ff|Hspell:470963|h[Bladestorm]|h|r : éloignez-vous du tourbillon.",
};

pack["231636"] = { "Le cœur fébrile",
	"* |cff71d5ff|Hspell:472556|h[Arrow Rain]|h|r et |cff71d5ff|Hspell:472662|h[Tempest Slash]|h|r : dégâts ciblés, dispersez-vous.",
	"* Le joueur marqué par |cff71d5ff|Hspell:474528|h[Bolt Gale]|h|r s'écarte.",
	"* |cff71d5ff|Hspell:468429|h[Bullseye Windblast]|h|r : attention à la visée.",
};

P.fr = fr;