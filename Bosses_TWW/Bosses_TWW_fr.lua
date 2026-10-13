--[[
	Bosses_TWW_fr.lua
		Datos en FR del pack TWW.
		Fichero creado por el editor web (2026-10-12); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- ========================================================= --
-- Palais Nerub-ar : Zona 2657 --
-- ========================================================= --

pack["214503"] = { "Sikran",
	"* Les |cff71d5ff|Hspell:433517|h[Phase Blades]|h|r chargent: repartissez-vous l'impact.",
	"* |cff71d5ff|Hspell:442428|h[Decimate]|h|r et les |cff71d5ff|Hspell:459273|h[Cosmic Shards]|h|r: attention aux éclats.",
	"* |cff71d5ff|Hspell:439559|h[Rain of Arrows]|h|r: dégâts de raid, soins."
};

pack["214502"] = { "The Bloodbound Horror",
	"* |cff71d5ff|Hspell:444497|h[Invoke Terrors]|h|r: des adds sortent, priorité.",
	"* |cff71d5ff|Hspell:443042|h[Grasp From Beyond]|h|r: le marqué s'éloigne.",
	"* |cff71d5ff|Hspell:442530|h[Goresplatter]|h|r: courez loin quand il le caste.",
	"* |cff71d5ff|Hspell:443203|h[Crimson Rain]|h|r: dégâts de raid, soins."
};

pack["215657"] = { "Ulgrax",
	"* Le marqué par |cff71d5ff|Hspell:434803|h[Carnivorous Contest]|h|r fait l'absorption.",
	"* |cff71d5ff|Hspell:435138|h[Digestive Acid]|h|r: le marqué s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:434697|h[Brutal Crush]|h|r est pour le tank.",
};

bos = { "La Cour de Soie",
	"* Duo: Anub'arash (tank) et Takazj; attention au |cff71d5ff|Hspell:440246|h[Reckless Charge]|h|r.",
	"* |cff71d5ff|Hspell:441791|h[Burrowed Eruption]|h|r et la |cff71d5ff|Hspell:438656|h[Venomous Rain]|h|r s'esquivent.",
	"* |cff71d5ff|Hspell:438218|h[Piercing Strike]|h|r et |cff71d5ff|Hspell:438200|h[Poison Bolt]|h|r sont pour le tank."
};
pack["217489"] = bos; pack["217491"] = bos;

pack["214504"] = { "Rasha'nan",
	"* |cff71d5ff|Hspell:439789|h[Rolling Acid]|h|r: attention aux vagues acides.",
	"* |cff71d5ff|Hspell:455373|h[Infested Spawn]|h|r: des adds, contrôle et priorité.",
	"* Le |cff71d5ff|Hspell:439795|h[Web Reave]|h|r s'absorbe loin du groupe."
};

pack["214506"] = { "Ovi'nax",
	"* Le marqué par |cff71d5ff|Hspell:442526|h[Experimental Dosage]|h|r doit s'écarter et être soigné.",
	"* Buvez la |cff71d5ff|Hspell:442432|h[Ingest Black Blood]|h|r du contenant suivant.",
	"* |cff71d5ff|Hspell:446349|h[Sticky Web]|h|r: le marqué s'écarte du groupe."
};

pack["217748"] = { "Ky'veza",
	"* |cff71d5ff|Hspell:436867|h[Assassination]|h|r: les fantômes marquent, éloignez-vous.",
	"* |cff71d5ff|Hspell:439409|h[Dark Viscera]|h|r: dégâts dirigés, soins.",
	"* Phase 2: |cff71d5ff|Hspell:435405|h[Starless Night]|h|r: obscurité totale, regroupez-vous avec de la lumière."
};

pack["218370"] = { "Reine Ansurek",
	"* Boss final de la raid, trois phases.",
	"* Le marqué par |cff71d5ff|Hspell:437592|h[Reactive Toxin]|h|r s'éloigne et saute pour ne pas contaminer.",
	"* |cff71d5ff|Hspell:437417|h[Venom Nova]|h|r: absorptions en ordre, attention à la |cff71d5ff|Hspell:447076|h[Predation]|h|r."
};

-- ========================================================= --
-- Libération de Undermine : Zona 2769 --
-- ========================================================= --

bos = { "Vexie et les chaînes",
	"* Phase 1 en moto: attention à l'|cff71d5ff|Hspell:468216|h[Incendiary Fire]|h|r et aux bombes.",
	"* |cff71d5ff|Hspell:459943|h[Call Bikers]|h|r: des adds, tuez-les.",
	"* Phases 2-3: la voiture s'affaiblit avec le |cff71d5ff|Hspell:460116|h[Tune-Up]|h|r, à vous de jouer.",
};
pack["225821"] = bos; pack["225822"] = bos;

bos = { "Chaudron de Carnage",
	"* Deux bosses: feu et tempête; le |cff71d5ff|Hspell:465833|h[Colossal Clash]|h|r se met au centre.",
	"* |cff71d5ff|Hspell:472233|h[Blastburn Roarcannon]|h|r et l'|cff71d5ff|Hspell:1214190|h[Eruption Stomp]|h|r se marquent et s'esquivent.",
	"* |cff71d5ff|Hspell:466178|h[Lightning Bash]|h|r est pour le tank."
};
pack["229181"] = bos; pack["229177"] = bos;

pack["228648"] = { "Rik Reverbium",
	"* |cff71d5ff|Hspell:473748|h[Amplification!]|h|r: les amplificateurs doivent être détruits.",
	"* |cff71d5ff|Hspell:467606|h[Sound Cannon]|h|r: le marqué s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:472306|h[Sparkblast Ignition]|h|r: attention aux barils."
};

pack["230322"] = { "Stix Bunkjunker",
	"* |cff71d5ff|Hspell:461536|h[Rolling Rubbish]|h|r: le marqué roule loin du groupe.",
	"* |cff71d5ff|Hspell:464149|h[Incinerator]|h|r: la poubelle brûle, éloignez-vous.",
	"* |cff71d5ff|Hspell:464112|h[Demolish]|h|r est pour le tank."
};

pack["230583"] = { "Electronique Incinefaze",
	"* |cff71d5ff|Hspell:468791|h[Gigadeath]|h|r: longue incantation, interrompez ou protègez-vous.",
	"* |cff71d5ff|Hspell:1216509|h[Screw Up]|h|r: le marqué sort du groupe.",
	"* Attention aux |cff71d5ff|Hspell:1217231|h[Foot-Blasters]|h|r."
};

pack["228458"] = { "Le Bandido Manchot",
	"* Machine à sous: chaque tirage ajoute une mécanique nouvelle.",
	"* |cff71d5ff|Hspell:460181|h[Pay-Line]|h|r: hors de la ligne.",
	"* |cff71d5ff|Hspell:461060|h[Spin To Win!]|h|r: attention aux giratoires."
};

pack["229953"] = { "Mug'Zee, chef de la sécurité",
	"* Deux bosses; le |cff71d5ff|Hspell:466385|h[Moxie]|h|r les enrage alternativement.",
	"* |cff71d5ff|Hspell:472631|h[Earthshaker Gaol]|h|r: le marqué s'éloigne du groupe.",
	"* Attention aux |cff71d5ff|Hspell:466539|h[Unstable Crawler Mines]|h|r; les |cff71d5ff|Hspell:467380|h[Goblin-guided Rocket]|h|r frappent le marqué: les esquiver."
};

pack["231075"] = { "Gallywix",
	"* Trois phases avec des ajouts de |cff71d5ff|Hspell:1220761|h[Mechengineer's Canisters]|h|r.",
	"* |cff71d5ff|Hspell:465952|h[Big Bad Buncha Bombs]|h|r: attention aux explosions et aux |cff71d5ff|Hspell:466165|h[1500-Pound Dud]|h|r.",
	"* |cff71d5ff|Hspell:467182|h[Suppression]|h|r: dégâts de raid, soins."
};

-- ========================================================= --
-- Manaforge Omega : Zona 2810 --
-- ========================================================= --

pack["233814"] = { "Plexus Sentinel",
	"* |cff71d5ff|Hspell:1219223|h[Atomize]|h|r: attention au désintégrateur.",
	"* Les |cff71d5ff|Hspell:1219450|h[Manifest Matrices]|h|r créent les |cff71d5ff|Hspell:1218625|h[Displacement Matrix]|h|r: les traversez avec ordre."
};

bos = { "Les soulhunters",
	"* Trio de chasseurs du Vide: tanks séparés pour le |cff71d5ff|Hspell:1227355|h[Voidstep]|h|r.",
	"* Le |cff71d5ff|Hspell:1227809|h[The Hunt]|h|r de Velaryn charge le marqué, kitez-le.",
	"* |cff71d5ff|Hspell:1242259|h[Spirit Bomb]|h|r d'Ilyssa: attention aux âmes."
};
pack["237661"] = bos; pack["237660"] = bos; pack["237662"] = bos;

pack["233815"] = { "Loom'ithar",
	"* |cff71d5ff|Hspell:1226311|h[Infusion Tether]|h|r: le lié encaisse jusqu'à rompre le lien.",
	"* |cff71d5ff|Hspell:1226395|h[Overinfusion Burst]|h|r: longue incantation, interrompez.",
	"* |cff71d5ff|Hspell:1226867|h[Primal Spellstorm]|h|r: dégâts massifs, soins."
};

pack["233816"] = { "Naazindhri",
	"* |cff71d5ff|Hspell:1225582|h[Soul Calling]|h|r: ajoute des sbires, priorité aux |cff71d5ff|Hspell:1227048|h[Voidblade Ambush]|h|r.",
	"* |cff71d5ff|Hspell:1227276|h[Soulfray Annihilation]|h|r: lignes dirigées, écartez-vous.",
	"* |cff71d5ff|Hspell:1223859|h[Arcane Expulsion]|h|r: coup de poussée, sortez de la zone."
};

pack["233817"] = { "Forgeweaver Araz",
	"* |cff71d5ff|Hspell:1228214|h[Astral Harvest]|h|r: le marqué absorbe les rayons, éloignez-vous de lui.",
	"* |cff71d5ff|Hspell:1228216|h[Arcane Obliteration]|h|r: longue incantation, interrompez.",
	"* |cff71d5ff|Hspell:1228502|h[Overwhelming Power]|h|r est pour le tank."
};

pack["237861"] = { "Fractillus",
	"* |cff71d5ff|Hspell:1232130|h[Nexus Shrapnel]|h|r: attention aux éclats en cassant les murs.",
	"* Le marqué par |cff71d5ff|Hspell:1247424|h[Null Consumption]|h|r est la bombe: éloignez-vous du groupe.",
	"* |cff71d5ff|Hspell:1233416|h[Crystalline Shockwave]|h|r: murs qui avancent, traversez les fissures."
};

pack["237763"] = { "Nexus-King Salhadaar",
	"* Deux phases; dans la seconde il monte le |cff71d5ff|Hspell:1227734|h[Coalesce Voidwing]|h|r.",
	"* Le marqué par |cff71d5ff|Hspell:1224767|h[King's Thrall]|h|r reste lié: éloignez-vous.",
	"* |cff71d5ff|Hspell:1224812|h[Vanquish]|h|r est pour le tank."
};

bos = { "Dimensius le Tout-Dévorant",
	"* Boss final de Manaforge Omega, trois phases.",
	"* |cff71d5ff|Hspell:1230087|h[Massive Smash]|h|r et le |cff71d5ff|Hspell:1229038|h[Devour]|h|r: attention au vide.",
	"* |cff71d5ff|Hspell:1243577|h[Reverse Gravity]|h|r: le marqué s'envole, soins en descendant."
};
pack["241517"] = bos; pack["234478"] = bos; pack["233824"] = bos;

-- ========================================================= --
-- Bosses du monde de Khaz Algar --
-- ========================================================= --

pack["220999"] = { "Agrégation d'horreurs",
	"* |cff71d5ff|Hspell:452205|h[Crystalline Barrage]|h|r: attention aux éclats de vide.",
	"* |cff71d5ff|Hspell:452980|h[Voidquake]|h|r: dégâts massifs, soins."
};

pack["231821"] = { "Gobleone",
	"* |cff71d5ff|Hspell:1216687|h[Flaming Flames]|h|r: hors du frontal.",
	"* |cff71d5ff|Hspell:1216709|h[Death From Above]|h|r: esquive la chute."
};

pack["221084"] = { "Kordac",
	"* |cff71d5ff|Hspell:458423|h[Arcane Bombardment]|h|r: esquive.",
	"* |cff71d5ff|Hspell:458695|h[Overcharged Lasers]|h|r: le marqué s'écarte."
};

pack["221067"] = { "Orta",
	"* |cff71d5ff|Hspell:450407|h[Colossal Slam]|h|r: hors du frontal.",
	"* |cff71d5ff|Hspell:450677|h[Rupturing Runes]|h|r: attention aux runes."
};

pack["238319"] = { "Reshanor",
	"* |cff71d5ff|Hspell:1237905|h[Twilight Breath]|h|r: hors du frontal.",
	"* |cff71d5ff|Hspell:1237893|h[Veilshatter Roar]|h|r: dégâts massifs, soins."
};

pack["221224"] = { "Shurrai",
	"* |cff71d5ff|Hspell:453618|h[Abyssal Strike]|h|r laisse une absorption de soins: attention.",
	"* |cff71d5ff|Hspell:453733|h[Briny Vomit]|h|r: esquive."
};

-- ========================================================= --
-- Donjons de The War Within --
-- ========================================================= --

-- ------------------------------------ --
-- Ara-Kara, Cité des Échos : Zona 2660 --
-- ------------------------------------ --

pack["215405"] = { "Anub'zekt",
	"* |cff71d5ff|Hspell:435012|h[Impale]|h|r charge le marqué.",
	"* |cff71d5ff|Hspell:439506|h[Burrow Charge]|h|r: embosse le marqué, sortez du chemin.",
	"* |cff71d5ff|Hspell:433740|h[Infestation]|h|r: solo vous, soignez l'infecté."
};

pack["213179"] = { "Avanoxx",
	"* |cff71d5ff|Hspell:438471|h[Voracious Bite]|h|r est pour le tank et le soigneur.",
	"* Le |cff71d5ff|Hspell:438476|h[Alerting Shrill]|h|r réveille: attention."
};

pack["215407"] = { "Ki'katal",
	"* |cff71d5ff|Hspell:432117|h[Cosmic Singularity]|h|r attire: éloignez-vous du centre.",
	"* Le marqué par |cff71d5ff|Hspell:432031|h[Grasping Blood]|h|r s'écarte.",
	"* |cff71d5ff|Hspell:432130|h[Erupting Webs]|h|r: attention aux toiles."
};

-- ------------------------------------ --
-- Cinderbrew Meadery : Zona 2661 --
-- ------------------------------------ --

pack["218000"] = { "Benk Bumblebuzz",
	"* |cff71d5ff|Hspell:438025|h[Snack Time]|h|r: attention aux abeilles enragées."
};

pack["210271"] = { "Brewmaster Aldryr",
	"* |cff71d5ff|Hspell:442525|h[Happy Hour]|h|r: attention au débordement.",
	"* |cff71d5ff|Hspell:432198|h[Blazing Belch]|h|r: hors du frontal.",
	"* |cff71d5ff|Hspell:432229|h[Keg Smash]|h|r: attention aux barils."
};

pack["214661"] = { "Goldie Baronbottom",
	"* |cff71d5ff|Hspell:435560|h[Spread the Love!]|h|r: dégâts dirigés, soins.",
	"* |cff71d5ff|Hspell:435622|h[Let It Hail!]|h|r: attention au grêle."
};

pack["210267"] = { "I'pa",
	"* |cff71d5ff|Hspell:439365|h[Spouting Stout]|h|r: attention à la mousse.",
	"* |cff71d5ff|Hspell:439031|h[Bottoms Uppercut]|h|r est pour le tank.",
	"* |cff71d5ff|Hspell:440087|h[Oozing Honey]|h|r: attention au miel."
};

-- ------------------------------------ --
-- City of Threads : Zona 2669 --
-- ------------------------------------ --

bos = { "Croc-reine",
	"* Duo en deux phases: Nx et Vx; attention au |cff71d5ff|Hspell:439621|h[Shade Slash]|h|r.",
	"* Le marqué par |cff71d5ff|Hspell:441298|h[Freezing Blood]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:440218|h[Ice Sickles]|h|r se dissipe."
};
pack["216648"] = bos; pack["216649"] = bos;

pack["216658"] = { "Izo la Grande Assembleuse",
	"* |cff71d5ff|Hspell:439401|h[Shifting Anomalies]|h|r: attention aux anomalies.",
	"* |cff71d5ff|Hspell:437700|h[Tremor Slam]|h|r: dégâts de raid, soins.",
	"* |cff71d5ff|Hspell:438860|h[Umbral Weave]|h|r: attention aux toiles du Vide."
};

pack["216619"] = { "Orateur Krix'vizk",
	"* |cff71d5ff|Hspell:434722|h[Subjugate]|h|r est pour le tank et le soigneur.",
	"* Le |cff71d5ff|Hspell:434779|h[Terrorize]|h|r effraie: attention."
};

pack["216320"] = { "Coaglamation",
	"* |cff71d5ff|Hspell:441289|h[Viscous Darkness]|h|r: attention à l'obscurité visqueuse.",
	"* |cff71d5ff|Hspell:461842|h[Oozing Smash]|h|r est pour le tank et le soigneur.",
	"* Le |cff71d5ff|Hspell:461825|h[Black Blood]|h|r laisse des flaques."
};

-- ------------------------------------ --
-- Darkflame Cleft : Zona 2651 --
-- ------------------------------------ --

pack["208743"] = { "Blazeknocker",
	"* |cff71d5ff|Hspell:421817|h[Wicklighter Barrage]|h|r: attention aux bouchons.",
	"* L'|cff71d5ff|Hspell:423109|h[Enkindling Inferno]|h|r: attention au feu.",
	"* Le |cff71d5ff|Hspell:425394|h[Dousing Breath]|h|r éteint, éloignez-vous."
};

pack["210149"] = { "Vieux Barbocuir",
	"* Le marqué par |cff71d5ff|Hspell:422116|h[Reckless Charge]|h|r doit sortir du chemin.",
	"* |cff71d5ff|Hspell:422245|h[Rock Buster]|h|r est pour le tank et le soigneur.",
	"* |cff71d5ff|Hspell:422163|h[Luring Candleflame]|h|r: attention aux flammes appâts."
};

pack["208745"] = { "Rey Cierre",
	"* Le marqué par |cff71d5ff|Hspell:422648|h[Darkflame Pickaxe]|h|r s'écarte.",
	"* |cff71d5ff|Hspell:426145|h[Paranoid Mind]|h|r: attention à l'esprit paranoïaque.",
	"* |cff71d5ff|Hspell:420696|h[Throw Darkflame]|h|r: esquive."
};

bos = { "L'Obscurité",
	"* |cff71d5ff|Hspell:426943|h[Rising Gloom]|h|r: attention à l'obscurité croissante.",
	"* Le marqué par |cff71d5ff|Hspell:427011|h[Shadowblast]|h|r s'éloigne (seul vous).",
	"* |cff71d5ff|Hspell:427157|h[Call Darkspawn]|h|r: ajoute des sombres, priorité."
};
pack["212777"] = bos; pack["208747"] = bos;

-- -------------------------------------- --
-- Eco-Dome Aldani : Zona 2830 --
-- -------------------------------------- --

pack["234893"] = { "Azhiccar",
	"* |cff71d5ff|Hspell:1217232|h[Devour]|h|r: longue incantation, interrompez.",
	"* Le marqué par |cff71d5ff|Hspell:1227745|h[Toxic Regurgitation]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:1231811|h[Uncontrolled]|h|r: ajoute des sauvages, attention."
};

pack["234935"] = { "Écrivain d'âmes",
	"* |cff71d5ff|Hspell:1236703|h[Eternal Weave]|h|r: attention au tissage éternel.",
	"* Le |cff71d5ff|Hspell:1225218|h[Dread of the Unknown]|h|r laisse des flaques.",
	"* La |cff71d5ff|Hspell:1225174|h[Ceremonial Dagger]|h|r est pour le tank."
};

bos = { "Taah'bat et A'wazj",
	"* Deux phases: |cff71d5ff|Hspell:1236130|h[Binding Javelin]|h|r lance le marqué.",
	"* |cff71d5ff|Hspell:1227918|h[Warp Strike]|h|r embosse, sortez du chemin.",
	"* Phase 2: |cff71d5ff|Hspell:1219700|h[Arcane Blitz]|h|r: dégâts de raid, soins.",
	"* |cff71d5ff|Hspell:1219482|h[Rift Claws]|h|r est pour le tank."
};
pack["234933"] = bos; pack["237514"] = bos;

-- ------------------------------------ --
-- Operation: Floodgate : Zona 2773 --
-- ------------------------------------ --

pack["226398"] = { "Gran M.A.M.A.",
	"* Le |cff71d5ff|Hspell:460156|h[Jumpstart]|h|r s'incante long: interrompez.",
	"* |cff71d5ff|Hspell:473287|h[Excessive Electrification]|h|r: dégâts de raid, soins.",
	"* |cff71d5ff|Hspell:471585|h[Mobilize Mechadrones]|h|r: ajoute des drones, priorité.",
	"* |cff71d5ff|Hspell:473351|h[Electrocrush]|h|r est pour le tank et le soigneur."
};

bos = { "Duo de Déstruction",
	"* |cff71d5ff|Hspell:460867|h[Big Bada BOOM!]|h|r: attention à l'explosion.",
	"* |cff71d5ff|Hspell:461994|h[Deflagration]|h|r: explose, éloignez-vous.",
	"* Le marqué par |cff71d5ff|Hspell:459779|h[Barreling Charge]|h|r doit sortir du chemin.",
	"* |cff71d5ff|Hspell:459799|h[Wallop]|h|r est pour le tank."
};
pack["226403"] = bos; pack["226402"] = bos;

pack["226404"] = { "Geezle Gigazap'Zap",
	"* |cff71d5ff|Hspell:465463|h[Turbo Charge]|h|r: accélère, attention.",
	"* Le marqué par |cff71d5ff|Hspell:468813|h[Gigazap]|h|r prend le zap, éloignez-vous du groupe.",
	"* |cff71d5ff|Hspell:468841|h[Leaping Sparks]|h|r: attention aux étincelles."
};

pack["226396"] = { "Carapantano",
	"* |cff71d5ff|Hspell:473070|h[Awaken the Swamp]|h|r: éveillez le marécage, attention.",
	"* |cff71d5ff|Hspell:473114|h[Mudslide]|h|r: esquive la boue.",
	"* |cff71d5ff|Hspell:469478|h[Sludge Claws]|h|r est pour le tank et le soigneur."
};

-- ---------------------------------------------- --
-- Priory of the Sacred Flame : Zona 2649 --
-- ---------------------------------------------- --

pack["207939"] = { "Barón Braunpyke",
	"* |cff71d5ff|Hspell:422969|h[Vindictive Wrath]|h|r: attention à la colère.",
	"* Le |cff71d5ff|Hspell:423015|h[Castigator's Shield]|h|r doit être brisé.",
	"* |cff71d5ff|Hspell:423051|h[Burning Light]|h|r: attention à la lumière."
};

bos = { "Capitaine Gritoldía",
	"* Le |cff71d5ff|Hspell:424419|h[Battle Cry]|h|r rend plus forts les adds: attention.",
	"* |cff71d5ff|Hspell:1238780|h[Earthshattering Spear]|h|r: le marqué s'éloigne.",
	"* |cff71d5ff|Hspell:424414|h[Pierce Armor]|h|r est pour le tank et le soigneur."
};
pack["207946"] = bos; pack["211291"] = bos; pack["211290"] = bos; pack["211289"] = bos;

-- ---------------------------------------------- --
-- Priora de la Llama Sagrada (resto) --
-- ---------------------------------------------- --

pack["207940"] = { "Prieure Murrezo",
	"* La |cff71d5ff|Hspell:423588|h[Barrier of Light]|h|r doit être brisée.",
	"* |cff71d5ff|Hspell:425556|h[Sanctified Ground]|h|r: attention au sol consacré.",
	"* Le |cff71d5ff|Hspell:444546|h[Purify]|h|r marque: solo vous, éloignez-vous."
};

-- ------------------------------------ --
-- Le Brise-Aube : Zona 2662 --
-- ------------------------------------ --

pack["211089"] = { "Anub’ikkaj",
	"* Le |cff71d5ff|Hspell:427001|h[Terrifying Slam]|h|r: attention au piétinement.",
	"* Le marqué par l'|cff71d5ff|Hspell:426860|h[Dark Orb]|h|r s'éloigne du groupe (solo vous).",
	"* |cff71d5ff|Hspell:427378|h[Dark Scars]|h|r: attention aux cicatrices."
};

pack["213937"] = { "Rasha’nan",
	"* Les |cff71d5ff|Hspell:434655|h[Arathi Bomb]|h|r tombent: repartissez-vous.",
	"* Le |cff71d5ff|Hspell:448888|h[Erosive Spray]|h|r: attention au pulvérisateur érosif.",
	"* |cff71d5ff|Hspell:449528|h[Radiant Light]|h|r: la lumière dans l'intermède."
};

pack["211087"] = { "Mandataire Couronne d’ombre",
	"* Le |cff71d5ff|Hspell:451026|h[Darkness Comes]|h|r s'incante long: interrompez.",
	"* |cff71d5ff|Hspell:426735|h[Burning Shadows]|h|r se dissipe.",
	"* |cff71d5ff|Hspell:425264|h[Obsidian Blast]|h|r: dégâts de raid, soins."
};

-- --------------------------------- --
-- La Poussinière : Zona 2648 --
-- --------------------------------- --

pack["209230"] = { "Kyrioss",
	"* Le |cff71d5ff|Hspell:444123|h[Lightning Torrent]|h|r se dissipe.",
	"* |cff71d5ff|Hspell:1214325|h[Crashing Thunder]|h|r: attention au tonnerre.",
	"* |cff71d5ff|Hspell:474018|h[Wild Lightning]|h|r: attention aux foudres."
};

pack["207205"] = { "Garde de la tempête Gorren",
	"* Le marqué par la |cff71d5ff|Hspell:424737|h[Corruption chaotique]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:425048|h[Gravité obscure]|h|r: attention à la gravité.",
	"* |cff71d5ff|Hspell:424958|h[Crush Reality]|h|r: dégâts de raid, soins."
};

pack["207207"] = { "Monstruosité de pierre du Vide",
	"* |cff71d5ff|Hspell:423305|h[Null Upheaval]|h|r: dégâts de raid, soins.",
	"* Le marqué par |cff71d5ff|Hspell:429493|h[Unleash Corruption]|h|r s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:423393|h[Entropie]|h|r: attention à l'entropie."
};

-- ------------------------------------- --
-- The Stonevault : Zona 2652 --
-- ------------------------------------- --

pack["210108"] = { "E.D.N.A.",
	"* Le marqué par |cff71d5ff|Hspell:424795|h[Refracting Beam]|h|r reçoit le rayon (solo vous).",
	"* |cff71d5ff|Hspell:424888|h[Seismic Smash]|h|r est pour le tank et le soigneur.",
	"* |cff71d5ff|Hspell:424903|h[Volatile Spike]|h|r: attention aux piques."
};

bos = { "Machinistes en chef",
	"* Duo d'oradores; |cff71d5ff|Hspell:445541|h[Exhaust Vents]|h|r de Brokk pousse.",
	"* |cff71d5ff|Hspell:430097|h[Molten Metal]|h|r de Brokk: attention au métal fondu.",
	"* |cff71d5ff|Hspell:428508|h[Blazing Crescendo]|h|r de Dorlita: dégâts massifs, soins.",
	"* |cff71d5ff|Hspell:428711|h[Igneous Hammer]|h|r de Dorlita est pour le tank."
};
pack["213217"] = bos; pack["213216"] = bos;

pack["210156"] = { "Skarmorak",
	"* |cff71d5ff|Hspell:422233|h[Crystalline Smash]|h|r: attention au coup.",
	"* Le |cff71d5ff|Hspell:423200|h[Fortified Shell]|h|r le bouclie: brisez-le.",
	"* |cff71d5ff|Hspell:423538|h[Unstable Crash]|h|r: attention au déstabilisable."
};

pack["213119"] = { "Orateur du Vide Eirich",
	"* |cff71d5ff|Hspell:427461|h[Void Corruption]|h|r: attention à la corruption du Vide.",
	"* |cff71d5ff|Hspell:427852|h[Entropic Reckoning]|h|r: attention aux rayons.",
	"* |cff71d5ff|Hspell:427869|h[Unbridled Void]|h|r: dégâts massifs, soins."
};

P.fr = fr;