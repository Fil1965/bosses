--[[
	Boses_TWW.lua
		Pack de datos de The War Within completo:
		- Bandas: Nerub'ar Palace, Liberation of Undermine, Manaforge Omega.
		- Jefes de mundo de Khaz Algar.
		- Mazmorras TWW (LittleWigs_TheWarWithin).
		Los NPC/spell IDs provienen de los módulos BigWigs/LittleWigs de TWW
		instalados en el cliente. Formato multilenguaje { ES, EN }.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Boses en el .toc)
if BosesAPI == nil or BosesAPI.register == nil then
	print( "|cff33ff99Boses|r: core de Boses demasiado antiguo para el pack TWW." );
	return;
end

local es = {};
local en = {};
local pack = es; -- el bloque español escribe en es, el inglés en en

-- ========================================================= --
-- Nerub'ar Palace : Zona 2657 --
-- ========================================================= --

pack["214503"] = { "Sikran, Capitán de los Sureki",
	"* Las |cff71d5ff|Hspell:433517|h[Phase Blades]|h|r cargan: repartíos el impacto.",
	"* |cff71d5ff|Hspell:442428|h[Decimate]|h|r y las |cff71d5ff|Hspell:459273|h[Cosmic Shards]|h|r: cuidado con los esquirlas.",
	"* |cff71d5ff|Hspell:439559|h[Rain of Arrows]|h|r: daño de banda, curas."
};

pack["214502"] = { "The Bloodbound Horror",
	"* |cff71d5ff|Hspell:444497|h[Invoke Terrors]|h|r: salen adds, prioridad.",
	"* |cff71d5ff|Hspell:443042|h[Grasp From Beyond]|h|r: el marcado se aleja.",
	"* |cff71d5ff|Hspell:442530|h[Goresplatter]|h|r: corre lejos cuando lo castea.",
	"* |cff71d5ff|Hspell:443203|h[Crimson Rain]|h|r: daño de banda, curas."
};

local ulgrax = { "Ulgrax el Devorador",
	"* El marcado por |cff71d5ff|Hspell:434803|h[Carnivorous Contest]|h|r hace el soak.",
	"* |cff71d5ff|Hspell:435138|h[Digestive Acid]|h|r: el marcado se aleja del grupo.",
	"* |cff71d5ff|Hspell:434697|h[Brutal Crush]|h|r es del tanque.",
};
pack["215657"] = ulgrax;

local corteSeda = { "The Silken Court",
	"* Dúo: Anub'arash (tanque) y Takazj; cuidado con el |cff71d5ff|Hspell:440246|h[Reckless Charge]|h|r.",
	"* |cff71d5ff|Hspell:441791|h[Burrowed Eruption]|h|r y la |cff71d5ff|Hspell:438656|h[Venomous Rain]|h|r se esquivan.",
	"* |cff71d5ff|Hspell:438218|h[Piercing Strike]|h|r y |cff71d5ff|Hspell:438200|h[Poison Bolt]|h|r son del tanque."
};
pack["217489"] = corteSeda; pack["217491"] = corteSeda;

local rashanan = { "Rasha'nan",
	"* |cff71d5ff|Hspell:439789|h[Rolling Acid]|h|r: cuidado con las olas ácidas.",
	"* |cff71d5ff|Hspell:455373|h[Infested Spawn]|h|r: adds, control y prioridad.",
	"* El |cff71d5ff|Hspell:439795|h[Web Reave]|h|r hay que soakearlo lejos del grupo."
};
pack["214504"] = rashanan;

local ovinax = { "Broodtwister Ovi'nax",
	"* El marcado por |cff71d5ff|Hspell:442526|h[Experimental Dosage]|h|r debe alejarse y ser curado.",
	"* Bebe la |cff71d5ff|Hspell:442432|h[Ingest Black Blood]|h|r del contenedor siguiente.",
	"* |cff71d5ff|Hspell:446349|h[Sticky Web]|h|r: el marcado se aparta del grupo."
};
pack["214506"] = ovinax;

pack["217748"] = { "Nexus-Princess Ky'veza",
	"* |cff71d5ff|Hspell:436867|h[Assassination]|h|r: los fantasmas marcan, alejaos.",
	"* |cff71d5ff|Hspell:439409|h[Dark Viscera]|h|r: daño dirigido, curas.",
	"* Fase 2: |cff71d5ff|Hspell:435405|h[Starless Night]|h|r: oscuridad total, agrupaos con luz."
};

local ansurek = { "Reina Ansurek",
	"* Jefa final de la banda, tres fases.",
	"* El marcado por |cff71d5ff|Hspell:437592|h[Reactive Toxin]|h|r se aleja y salta para no contagiar.",
	"* |cff71d5ff|Hspell:437417|h[Venom Nova]|h|r: soaks en orden, cuidado con el |cff71d5ff|Hspell:447076|h[Predation]|h|r."
};
pack["218370"] = ansurek;

-- ========================================================= --
-- Liberation of Undermine : Zona 2769 --
-- ========================================================= --

local vexie = { "Vexie and the Geargrinders",
	"* Fase 1 en moto: cuidado con el |cff71d5ff|Hspell:468216|h[Incendiary Fire]|h|r y las bombas.",
	"* |cff71d5ff|Hspell:459943|h[Call Bikers]|h|r: adds, matadlos.",
	"* Fase 2-3: el coche se debilita con el |cff71d5ff|Hspell:460116|h[Tune-Up]|h|r, a por él.",
};
pack["225821"] = vexie; pack["225822"] = vexie;

local caldero = { "Cauldron of Carnage (Flarendo y Torq)",
	"* Dos jefes: fuego y tormenta; |cff71d5ff|Hspell:465833|h[Colossal Clash]|h|r al centro.",
	"* |cff71d5ff|Hspell:472233|h[Blastburn Roarcannon]|h|r y el |cff71d5ff|Hspell:1214190|h[Eruption Stomp]|h|r se marcan y se esquivan.",
	"* |cff71d5ff|Hspell:466178|h[Lightning Bash]|h|r es del tanque."
};
pack["229181"] = caldero; pack["229177"] = caldero;

pack["228648"] = { "Rik Reverb",
	"* |cff71d5ff|Hspell:473748|h[Amplification!]|h|r: los amplificadores hay que destruirlos.",
	"* |cff71d5ff|Hspell:467606|h[Sound Cannon]|h|r: el marcado se aleja del grupo.",
	"* |cff71d5ff|Hspell:472306|h[Sparkblast Ignition]|h|r: cuidado con los barriles."
};

pack["230322"] = { "Stix Bunkjunker",
	"* |cff71d5ff|Hspell:461536|h[Rolling Rubbish]|h|r: el marcado rueda lejos del grupo.",
	"* |cff71d5ff|Hspell:464149|h[Incinerator]|h|r: la basura arde, aléjate.",
	"* |cff71d5ff|Hspell:464112|h[Demolish]|h|r es del tanque."
};

pack["230583"] = { "Sprocketmonger Lockenstock",
	"* |cff71d5ff|Hspell:468791|h[Gigadeath]|h|r: casteo largo, interrumpid o protegeos.",
	"* |cff71d5ff|Hspell:1216509|h[Screw Up]|h|r: el marcado sale del grupo.",
	"* Cuidado con las |cff71d5ff|Hspell:1217231|h[Foot-Blasters]|h|r."
};

pack["228458"] = { "The One-Armed Bandit",
	"* Máquina tragaperras: cada tirada añade una mecánica nueva.",
	"* |cff71d5ff|Hspell:460181|h[Pay-Line]|h|r: fuera de la línea.",
	"* |cff71d5ff|Hspell:461060|h[Spin To Win!]|h|r: cuidado con los giratorios."
};

pack["229953"] = { "Mug'Zee, Heads of Security",
	"* Dos jefes; |cff71d5ff|Hspell:466385|h[Moxie]|h|r los enfurece alternativamente.",
	"* |cff71d5ff|Hspell:472631|h[Earthshaker Gaol]|h|r: el marcado se aleja del grupo.",
	"* Cuidado con las |cff71d5ff|Hspell:466539|h[Unstable Crawler Mines]|h|r."
};

pack["231075"] = { "Chrome King Gallywix",
	"* Tres fases con añadidos de |cff71d5ff|Hspell:1220761|h[Mechengineer's Canisters]|h|r.",
	"* |cff71d5ff|Hspell:465952|h[Big Bad Buncha Bombs]|h|r: cuidado con las explosiones y los |cff71d5ff|Hspell:466165|h[1500-Pound Dud]|h|r.",
	"* |cff71d5ff|Hspell:467182|h[Suppression]|h|r: daño de banda, curas."
};

-- ========================================================= --
-- Manaforge Omega : Zona 2810 --
-- ========================================================= --

local sentinel = { "Plexus Sentinel",
	"* |cff71d5ff|Hspell:1219223|h[Atomize]|h|r: cuidado con el desintegrador.",
	"* Las |cff71d5ff|Hspell:1219450|h[Manifest Matrices]|h|r crean los |cff71d5ff|Hspell:1218625|h[Displacement Matrix]|h|r: cruzadlos con orden."
};
pack["233814"] = sentinel;

local cazadores = { "The Soul Hunters",
	"* Trío de cazadores del Vacío: tanques separados para |cff71d5ff|Hspell:1227355|h[Voidstep]|h|r.",
	"* El |cff71d5ff|Hspell:1227809|h[The Hunt]|h|r de Velaryn carga al marcado, kiteadlo.",
	"* |cff71d5ff|Hspell:1242259|h[Spirit Bomb]|h|r de Ilyssa: cuidado con las almas."
};
pack["237661"] = cazadores; pack["237660"] = cazadores; pack["237662"] = cazadores;

pack["233815"] = { "Loom'ithar",
	"* |cff71d5ff|Hspell:1226311|h[Infusion Tether]|h|r: el enlazado recibe daño hasta romper el vínculo.",
	"* |cff71d5ff|Hspell:1226395|h[Overinfusion Burst]|h|r: casteo largo, interrumpid.",
	"* |cff71d5ff|Hspell:1226867|h[Primal Spellstorm]|h|r: daño masivo, curas."
};

pack["233816"] = { "Soulbinder Naazindhri",
	"* |cff71d5ff|Hspell:1225582|h[Soul Calling]|h|r: añade esbirros, prioridad a los |cff71d5ff|Hspell:1227048|h[Voidblade Ambush]|h|r.",
	"* |cff71d5ff|Hspell:1227276|h[Soulfray Annihilation]|h|r: líneas dirigidas, apartaos.",
	"* |cff71d5ff|Hspell:1223859|h[Arcane Expulsion]|h|r: empujón, sal de la zona."
};

pack["233817"] = { "Forgeweaver Araz",
	"* |cff71d5ff|Hspell:1228214|h[Astral Harvest]|h|r: el marcado absorbe los rayos, alejaos de él.",
	"* |cff71d5ff|Hspell:1228216|h[Arcane Obliteration]|h|r: casteo largo, interrumpid.",
	"* |cff71d5ff|Hspell:1228502|h[Overwhelming Power]|h|r es del tanque."
};

pack["237861"] = { "Fractillus",
	"* |cff71d5ff|Hspell:1232130|h[Nexus Shrapnel]|h|r: cuidado con las esquirlas al romper los muros.",
	"* El marcado por |cff71d5ff|Hspell:1247424|h[Null Consumption]|h|r es la bomba: alejaos del grupo.",
	"* |cff71d5ff|Hspell:1233416|h[Crystalline Shockwave]|h|r: muros que avanzan, cruzad las grietas."
};

pack["237763"] = { "Nexus-King Salhadaar",
	"* Dos fases; en la segunda monta el |cff71d5ff|Hspell:1227734|h[Coalesce Voidwing]|h|r.",
	"* El marcado por |cff71d5ff|Hspell:1224767|h[King's Thrall]|h|r queda vinculado: alejaos.",
	"* |cff71d5ff|Hspell:1224812|h[Vanquish]|h|r es del tanque."
};

local dimensius = { "Dimensius, the All-Devouring",
	"* Jefe final de Manaforge Omega, tres fases.",
	"* |cff71d5ff|Hspell:1230087|h[Massive Smash]|h|r y el |cff71d5ff|Hspell:1229038|h[Devour]|h|r: cuidado con el vacío.",
	"* |cff71d5ff|Hspell:1243577|h[Reverse Gravity]|h|r: el marcado vuela, curas al descender."
};
pack["241517"] = dimensius; pack["234478"] = dimensius; pack["233824"] = dimensius;

-- ========================================================= --
-- Jefes de mundo de Khaz Algar --
-- ========================================================= --

pack["220999"] = { "Aggregation of Horrors (jefe de mundo)",
	"* |cff71d5ff|Hspell:452205|h[Crystalline Barrage]|h|r: cuidado con las esquirlas de vacío.",
	"* |cff71d5ff|Hspell:452980|h[Voidquake]|h|r: daño masivo, curas."
};

pack["231821"] = { "The Gobfather (jefe de mundo)",
	"* |cff71d5ff|Hspell:1216687|h[Flaming Flames]|h|r: fuera del frontal.",
	"* |cff71d5ff|Hspell:1216709|h[Death From Above]|h|r: esquiva la caída."
};

pack["221084"] = { "Kordac, the Dormant Protector (jefe de mundo)",
	"* |cff71d5ff|Hspell:458423|h[Arcane Bombardment]|h|r: esquiva.",
	"* |cff71d5ff|Hspell:458695|h[Overcharged Lasers]|h|r: el marcado se aparta."
};

pack["221067"] = { "Orta, the Broken Mountain (jefe de mundo)",
	"* |cff71d5ff|Hspell:450407|h[Colossal Slam]|h|r: fuera del frontal.",
	"* |cff71d5ff|Hspell:450677|h[Rupturing Runes]|h|r: cuidado con las runas."
};

pack["238319"] = { "Reshanor, The Untethered (jefe de mundo)",
	"* |cff71d5ff|Hspell:1237905|h[Twilight Breath]|h|r: fuera del frontal.",
	"* |cff71d5ff|Hspell:1237893|h[Veilshatter Roar]|h|r: daño masivo, curas."
};

pack["221224"] = { "Shurrai, Atrocity of the Undersea (jefe de mundo)",
	"* |cff71d5ff|Hspell:453618|h[Abyssal Strike]|h|r deja absorción de curas: cuidado.",
	"* |cff71d5ff|Hspell:453733|h[Briny Vomit]|h|r: esquiva."
};

-- ========================================================= --
-- Mazmorras de The War Within --
-- ========================================================= --

-- ------------------------------------ --
-- Ara-Kara, Ciudad de Ecos : Zona 2660 --
-- ------------------------------------ --

pack["215405"] = { "Anub'zekt",
	"* |cff71d5ff|Hspell:435012|h[Impale]|h|r carga al marcado.",
	"* |cff71d5ff|Hspell:439506|h[Burrow Charge]|h|r: embiste al marcado, salid del camino.",
	"* |cff71d5ff|Hspell:433740|h[Infestation]|h|r: solo tú, cura al infectado."
};

pack["213179"] = { "Avanoxx",
	"* |cff71d5ff|Hspell:438471|h[Voracious Bite]|h|r es del tanque y sanador.",
	"* El |cff71d5ff|Hspell:438476|h[Alerting Shrill]|h|r despierta: cuidado."
};

pack["215407"] = { "Ki'katal the Harvester",
	"* |cff71d5ff|Hspell:432117|h[Cosmic Singularity]|h|r atrae: alejaos del centro.",
	"* El marcado por |cff71d5ff|Hspell:432031|h[Grasping Blood]|h|r se aparta.",
	"* |cff71d5ff|Hspell:432130|h[Erupting Webs]|h|r: cuidado con las telas."
};

-- ------------------------------------ --
-- Cinderbrew Meadery : Zona 2661 --
-- ------------------------------------ --

pack["218000"] = { "Benk Abejorro",
	"* |cff71d5ff|Hspell:438025|h[Snack Time]|h|r: cuidado con las abejas enfurecidas."
};

pack["210271"] = { "Maestro cervecero Aldryr",
	"* |cff71d5ff|Hspell:442525|h[Happy Hour]|h|r: cuidado con el desbordamiento.",
	"* |cff71d5ff|Hspell:432198|h[Blazing Belch]|h|r: fuera del frontal.",
	"* |cff71d5ff|Hspell:432229|h[Keg Smash]|h|r: cuidado con los barriles."
};

pack["214661"] = { "Goldie Baronbottom",
	"* |cff71d5ff|Hspell:435560|h[Spread the Love!]|h|r: daño dirigido, curas.",
	"* |cff71d5ff|Hspell:435622|h[Let It Hail!]|h|r: cuidado con el granizo."
};

pack["210267"] = { "I'pa",
	"* |cff71d5ff|Hspell:439365|h[Spouting Stout]|h|r: cuidado con la espuma.",
	"* |cff71d5ff|Hspell:439031|h[Bottoms Uppercut]|h|r es del tanque.",
	"* |cff71d5ff|Hspell:440087|h[Oozing Honey]|h|r: cuidado con la miel."
};

-- ------------------------------------ --
-- City of Threads : Zona 2669 --
-- ------------------------------------ --

local colmillos = { "Fangs of the Queen",
	"* Dúo en dos fases: Nx y Vx; cuidado con el |cff71d5ff|Hspell:439621|h[Shade Slash]|h|r.",
	"* El marcado por |cff71d5ff|Hspell:441298|h[Freezing Blood]|h|r se aleja del grupo.",
	"* |cff71d5ff|Hspell:440218|h[Ice Sickles]|h|r se disipa."
};
pack["216648"] = colmillos; pack["216649"] = colmillos;

pack["216658"] = { "Izo, the Grand Splicer",
	"* |cff71d5ff|Hspell:439401|h[Shifting Anomalies]|h|r: cuidado con las anomalías.",
	"* |cff71d5ff|Hspell:437700|h[Tremor Slam]|h|r: daño de banda, curas.",
	"* |cff71d5ff|Hspell:438860|h[Umbral Weave]|h|r: cuidado con las telas del Vacío."
};

pack["216619"] = { "Orator Krix'vizk",
	"* |cff71d5ff|Hspell:434722|h[Subjugate]|h|r es del tanque y sanador.",
	"* El |cff71d5ff|Hspell:434779|h[Terrorize]|h|r asusta: cuidado."
};

pack["216320"] = { "The Coaglamation",
	"* |cff71d5ff|Hspell:441289|h[Viscous Darkness]|h|r: cuidado con la oscuridad viscosa.",
	"* |cff71d5ff|Hspell:461842|h[Oozing Smash]|h|r es del tanque y sanador.",
	"* El |cff71d5ff|Hspell:461825|h[Black Blood]|h|r deja charcos."
};

-- ------------------------------------ --
-- Darkflame Cleft : Zona 2651 --
-- ------------------------------------ --

pack["208743"] = { "Blazikon",
	"* |cff71d5ff|Hspell:421817|h[Wicklighter Barrage]|h|r: cuidado con las barras.",
	"* La |cff71d5ff|Hspell:423109|h[Enkindling Inferno]|h|r: cuidado con el fuego.",
	"* El |cff71d5ff|Hspell:425394|h[Dousing Breath]|h|r apaga, alejaos."
};

pack["210149"] = { "Ol' Waxbeard",
	"* El marcado por |cff71d5ff|Hspell:422116|h[Reckless Charge]|h|r debe salir del camino.",
	"* |cff71d5ff|Hspell:422245|h[Rock Buster]|h|r es del tanque y sanador.",
	"* |cff71d5ff|Hspell:422163|h[Luring Candleflame]|h|r: cuidado con las llamas señuelo."
};

pack["208745"] = { "The Candle King",
	"* El marcado por |cff71d5ff|Hspell:422648|h[Darkflame Pickaxe]|h|r se aparta.",
	"* |cff71d5ff|Hspell:426145|h[Paranoid Mind]|h|r: cuidado con la mente paranoica.",
	"* |cff71d5ff|Hspell:420696|h[Throw Darkflame]|h|r: esquiva."
};

local oscuridad = { "The Darkness",
	"* |cff71d5ff|Hspell:426943|h[Rising Gloom]|h|r: cuidado con la oscuridad creciente.",
	"* El marcado por |cff71d5ff|Hspell:427011|h[Shadowblast]|h|r se aleja (solo tú).",
	"* |cff71d5ff|Hspell:427157|h[Call Darkspawn]|h|r: añade oscuros, prioridad."
};
pack["212777"] = oscuridad; pack["208747"] = oscuridad;

-- -------------------------------------- --
-- Eco-Dome Aldani : Zona 2830 --
-- -------------------------------------- --

pack["234893"] = { "Azhiccar",
	"* |cff71d5ff|Hspell:1217232|h[Devour]|h|r: casteo largo, interrumpid.",
	"* El marcado por |cff71d5ff|Hspell:1227745|h[Toxic Regurgitation]|h|r se aleja del grupo.",
	"* |cff71d5ff|Hspell:1231811|h[Uncontrolled]|h|r: añade salvajes, cuidado."
};

pack["234935"] = { "Soul-Scribe",
	"* |cff71d5ff|Hspell:1236703|h[Eternal Weave]|h|r: cuidado con el tejido eterno.",
	"* El |cff71d5ff|Hspell:1225218|h[Dread of the Unknown]|h|r deja charcos.",
	"* La |cff71d5ff|Hspell:1225174|h[Ceremonial Dagger]|h|r es del tanque."
};

local taahbat = { "Taah'bat and A'wazj",
	"* Dos fases: |cff71d5ff|Hspell:1236130|h[Binding Javelin]|h|r lanza al marcado.",
	"* |cff71d5ff|Hspell:1227918|h[Warp Strike]|h|r embiste, salid del camino.",
	"* Fase 2: |cff71d5ff|Hspell:1219700|h[Arcane Blitz]|h|r: daño de banda, curas.",
	"* |cff71d5ff|Hspell:1219482|h[Rift Claws]|h|r es del tanque."
};
pack["234933"] = taahbat; pack["237514"] = taahbat;

-- ------------------------------------ --
-- Operation: Floodgate : Zona 2773 --
-- ------------------------------------ --

pack["226398"] = { "Big M.O.M.M.A.",
	"* El |cff71d5ff|Hspell:460156|h[Jumpstart]|h|r castea largo: interrumpid.",
	"* |cff71d5ff|Hspell:473287|h[Excessive Electrification]|h|r: daño de banda, curas.",
	"* |cff71d5ff|Hspell:471585|h[Mobilize Mechadrones]|h|r: añade drones, prioridad.",
	"* |cff71d5ff|Hspell:473351|h[Electrocrush]|h|r es del tanque y sanador."
};

local duodemo = { "Demolition Duo (Keeza y Bront)",
	"* |cff71d5ff|Hspell:460867|h[Big Bada BOOM!]|h|r: cuidado con la explosión.",
	"* |cff71d5ff|Hspell:461994|h[Deflagration]|h|r: explota, alejaos.",
	"* El marcado por |cff71d5ff|Hspell:459779|h[Barreling Charge]|h|r debe salir del camino.",
	"* |cff71d5ff|Hspell:459799|h[Wallop]|h|r es del tanque."
};
pack["226403"] = duodemo; pack["226402"] = duodemo;

pack["226404"] = { "Geezle Gigazap",
	"* |cff71d5ff|Hspell:465463|h[Turbo Charge]|h|r: acelera, cuidado.",
	"* El marcado por |cff71d5ff|Hspell:468813|h[Gigazap]|h|r recibe el zap, alejaos del grupo.",
	"* |cff71d5ff|Hspell:468841|h[Leaping Sparks]|h|r: cuidado con las chispas."
};

pack["226396"] = { "Swampface",
	"* |cff71d5ff|Hspell:473070|h[Awaken the Swamp]|h|r: despertad el pantano, cuidado.",
	"* |cff71d5ff|Hspell:473114|h[Mudslide]|h|r: esquiva el lodazal.",
	"* |cff71d5ff|Hspell:469478|h[Sludge Claws]|h|r es del tanque y sanador."
};

-- ---------------------------------------------- --
-- Priory of the Sacred Flame : Zona 2649 --
-- ---------------------------------------------- --

pack["207939"] = { "Baron Braunpyke",
	"* |cff71d5ff|Hspell:422969|h[Vindictive Wrath]|h|r: cuidado con la ira.",
	"* El |cff71d5ff|Hspell:423015|h[Castigator's Shield]|h|r hay que romperlo.",
	"* |cff71d5ff|Hspell:423051|h[Burning Light]|h|r: cuidado con la luz."
};

local dailcry = { "Captain Dailcry",
	"* El |cff71d5ff|Hspell:424419|h[Battle Cry]|h|r empodera a los adds: cuidado.",
	"* |cff71d5ff|Hspell:1238780|h[Earthshattering Spear]|h|r: el marcado se aleja.",
	"* |cff71d5ff|Hspell:424414|h[Pierce Armor]|h|r es del tanque y sanador."
};
pack["207946"] = dailcry; pack["211291"] = dailcry; pack["211290"] = dailcry; pack["211289"] = dailcry;

pack["207940"] = { "Prioress Murrpray",
	"* La |cff71d5ff|Hspell:423588|h[Barrier of Light]|h|r hay que romperla.",
	"* |cff71d5ff|Hspell:425556|h[Sanctified Ground]|h|r: cuidado con el suelo sagrado.",
	"* El |cff71d5ff|Hspell:444546|h[Purify]|h|r marca: solo tú, alejaos."
};

-- ------------------------------------ --
-- The Dawnbreaker : Zona 2662 --
-- ------------------------------------ --

pack["211089"] = { "Anub'ikkaj",
	"* El |cff71d5ff|Hspell:427001|h[Terrifying Slam]|h|r: cuidado con el pisotón.",
	"* El marcado por |cff71d5ff|Hspell:426860|h[Dark Orb]|h|r se aleja del grupo (solo tú).",
	"* |cff71d5ff|Hspell:427378|h[Dark Scars]|h|r: cuidado con las cicatrices."
};

pack["213937"] = { "Rasha'nan (The Dawnbreaker)",
	"* Las |cff71d5ff|Hspell:434655|h[Arathi Bomb]|h|r caen: repartíos.",
	"* El |cff71d5ff|Hspell:448888|h[Erosive Spray]|h|r: cuidado con el rocío erosivo.",
	"* |cff71d5ff|Hspell:449528|h[Radiant Light]|h|r: usad la luz en el intermedio."
};

pack["211087"] = { "Speaker Shadowcrown",
	"* El |cff71d5ff|Hspell:451026|h[Darkness Comes]|h|r castea largo: interrumpid.",
	"* |cff71d5ff|Hspell:426735|h[Burning Shadows]|h|r se disipa.",
	"* |cff71d5ff|Hspell:425264|h[Obsidian Blast]|h|r: daño de banda, curas."
};

-- --------------------------------- --
-- The Rookery : Zona 2648 --
-- --------------------------------- --

pack["209230"] = { "Kyrioss",
	"* El |cff71d5ff|Hspell:444123|h[Lightning Torrent]|h|r se disipa.",
	"* |cff71d5ff|Hspell:1214325|h[Crashing Thunder]|h|r: cuidado con el trueno.",
	"* |cff71d5ff|Hspell:474018|h[Wild Lightning]|h|r: cuidado con los rayos."
};

pack["207205"] = { "Stormguard Gorren",
	"* El marcado por |cff71d5ff|Hspell:424737|h[Chaotic Corruption]|h|r se aleja del grupo.",
	"* |cff71d5ff|Hspell:425048|h[Dark Gravity]|h|r: cuidado con la gravedad.",
	"* |cff71d5ff|Hspell:424958|h[Crush Reality]|h|r: daño de banda, curas."
};

local monstrosity = { "Voidstone Monstrosity",
	"* |cff71d5ff|Hspell:423305|h[Null Upheaval]|h|r: daño de banda, curas.",
	"* El marcado por |cff71d5ff|Hspell:429493|h[Unleash Corruption]|h|r se aleja del grupo.",
	"* |cff71d5ff|Hspell:423393|h[Entropy]|h|r: cuidado con la entropía."
};
pack["207207"] = monstrosity;

-- ------------------------------------- --
-- The Stonevault : Zona 2652 --
-- ------------------------------------- --

pack["210108"] = { "E.D.N.A.",
	"* El marcado por |cff71d5ff|Hspell:424795|h[Refracting Beam]|h|r recibe el rayo (solo tú).",
	"* |cff71d5ff|Hspell:424888|h[Seismic Smash]|h|r es del tanque y sanador.",
	"* |cff71d5ff|Hspell:424903|h[Volatile Spike]|h|r: cuidado con las púas."
};

local machinists = { "Master Machinists (Brokk y Dorlita)",
	"* Dúo de oradores; |cff71d5ff|Hspell:445541|h[Exhaust Vents]|h|r de Brokk empuja.",
	"* |cff71d5ff|Hspell:430097|h[Molten Metal]|h|r de Brokk: cuidado con el metal fundido.",
	"* |cff71d5ff|Hspell:428508|h[Blazing Crescendo]|h|r de Dorlita: daño masivo, curas.",
	"* |cff71d5ff|Hspell:428711|h[Igneous Hammer]|h|r de Dorlita es del tanque."
};
pack["213217"] = machinists; pack["213216"] = machinists;

pack["210156"] = { "Skarmorak",
	"* |cff71d5ff|Hspell:422233|h[Crystalline Smash]|h|r: cuidado con el golpe.",
	"* El |cff71d5ff|Hspell:423200|h[Fortified Shell]|h|r lo escuda: rompedlo.",
	"* |cff71d5ff|Hspell:423538|h[Unstable Crash]|h|r: cuidado con el desestabilizado."
};

pack["213119"] = { "Void Speaker Eirich",
	"* |cff71d5ff|Hspell:427461|h[Void Corruption]|h|r: cuidado con la corrupción del Vacío.",
	"* |cff71d5ff|Hspell:427852|h[Entropic Reckoning]|h|r: cuidado con los rayos.",
	"* |cff71d5ff|Hspell:427869|h[Unbridled Void]|h|r: daño masivo, curas."
};

local en = {};
pack = en;

-- ========================================================= --
-- Nerub'ar Palace : Zone 2657 --
-- ========================================================= --

pack["214503"] = { "Sikran, Captain of the Sureki",
	"* |cff71d5ff|Hspell:433517|h[Phase Blades]|h|r charge: spread the impact.",
	"* Mind |cff71d5ff|Hspell:442428|h[Decimate]|h|r and the |cff71d5ff|Hspell:459273|h[Cosmic Shards]|h|r.",
	"* |cff71d5ff|Hspell:439559|h[Rain of Arrows]|h|r: raid damage, heals."
};

pack["214502"] = { "The Bloodbound Horror",
	"* |cff71d5ff|Hspell:444497|h[Invoke Terrors]|h|r: adds spawn, priority.",
	"* The marked by |cff71d5ff|Hspell:443042|h[Grasp From Beyond]|h|r moves away.",
	"* Run away from |cff71d5ff|Hspell:442530|h[Goresplatter]|h|r.",
	"* |cff71d5ff|Hspell:443203|h[Crimson Rain]|h|r: raid damage, heals."
};

local ulgrax = { "Ulgrax the Devourer",
	"* The player marked by |cff71d5ff|Hspell:434803|h[Carnivorous Contest]|h|r does the soak.",
	"* The marked by |cff71d5ff|Hspell:435138|h[Digestive Acid]|h|r moves away from the group.",
	"* |cff71d5ff|Hspell:434697|h[Brutal Crush]|h|r is a tank mechanic."
};
pack["215657"] = ulgrax;

local silken = { "The Silken Court",
	"* Two bosses: Anub'arash (tank) and Takazj; mind the |cff71d5ff|Hspell:440246|h[Reckless Charge]|h|r.",
	"* Dodge |cff71d5ff|Hspell:441791|h[Burrowed Eruption]|h|r and the |cff71d5ff|Hspell:438656|h[Venomous Rain]|h|r.",
	"* |cff71d5ff|Hspell:438218|h[Piercing Strike]|h|r and |cff71d5ff|Hspell:438200|h[Poison Bolt]|h|r are tank mechanics."
};
pack["217489"] = silken; pack["217491"] = silken;

local rashanan = { "Rasha'nan",
	"* Watch the acid waves from |cff71d5ff|Hspell:439789|h[Rolling Acid]|h|r.",
	"* |cff71d5ff|Hspell:455373|h[Infested Spawn]|h|r: adds, control and priority.",
	"* The |cff71d5ff|Hspell:439795|h[Web Reave]|h|r needs a soak."
};
pack["214504"] = rashanan;

local ovinax = { "Broodtwister Ovi'nax",
	"* The player marked by |cff71d5ff|Hspell:442526|h[Experimental Dosage]|h|r must move away and be healed.",
	"* Drink the |cff71d5ff|Hspell:442432|h[Ingest Black Blood]|h|r from the next container.",
	"* The marked by |cff71d5ff|Hspell:446349|h[Sticky Web]|h|r steps out of the group."
};
pack["214506"] = ovinax;

pack["217748"] = { "Nexus-Princess Ky'veza",
	"* |cff71d5ff|Hspell:436867|h[Assassination]|h|r: phantoms chase the marked, spread.",
	"* |cff71d5ff|Hspell:439409|h[Dark Viscera]|h|r: targeted damage, heals.",
	"* Stage 2: |cff71d5ff|Hspell:435405|h[Starless Night]|h|r, group with the light."
};

local ansurek = { "Queen Ansurek",
	"* Three stages.",
	"* The marked by |cff71d5ff|Hspell:437592|h[Reactive Toxin]|h|r jumps to avoid spreading.",
	"* |cff71d5ff|Hspell:437417|h[Venom Nova]|h|r: ordered soaks; mind the |cff71d5ff|Hspell:447076|h[Predation]|h|r."
};
pack["218370"] = ansurek;

-- ========================================================= --
-- Liberation of Undermine : Zone 2769 --
-- ========================================================= --

local vexie = { "Vexie and the Geargrinders",
	"* Stage 1 on the bike: mind the |cff71d5ff|Hspell:468216|h[Incendiary Fire]|h|r and the bombs.",
	"* |cff71d5ff|Hspell:459943|h[Call Bikers]|h|r: adds, kill them.",
	"* Stages 2-3: the |cff71d5ff|Hspell:460116|h[Tune-Up]|h|r weakens them, burn."
};
pack["225821"] = vexie; pack["225822"] = vexie;

local cauldron = { "Cauldron of Carnage (Flarendo and Torq)",
	"* |cff71d5ff|Hspell:465833|h[Colossal Clash]|h|r at the center.",
	"* |cff71d5ff|Hspell:472233|h[Blastburn Roarcannon]|h|r and |cff71d5ff|Hspell:1214190|h[Eruption Stomp]|h|r are dodgeable.",
	"* |cff71d5ff|Hspell:466178|h[Lightning Bash]|h|r is a tank mechanic."
};
pack["229181"] = cauldron; pack["229177"] = cauldron;

pack["228648"] = { "Rik Reverb",
	"* |cff71d5ff|Hspell:473748|h[Amplification!]|h|r: kill the amplifiers.",
	"* |cff71d5ff|Hspell:467606|h[Sound Cannon]|h|r: the marked dodges.",
	"* |cff71d5ff|Hspell:472306|h[Sparkblast Ignition]|h|r: mind the barrels."
};

pack["230322"] = { "Stix Bunkjunker",
	"* |cff71d5ff|Hspell:461536|h[Rolling Rubbish]|h|r: the marked rolls away from the group.",
	"* Stay out of the |cff71d5ff|Hspell:464149|h[Incinerator]|h|r.",
	"* |cff71d5ff|Hspell:464112|h[Demolish]|h|r is a tank mechanic."
};

pack["230583"] = { "Sprocketmonger Lockenstock",
	"* |cff71d5ff|Hspell:468791|h[Gigadeath]|h|r: long cast, get out.",
	"* The marked by |cff71d5ff|Hspell:1216509|h[Screw Up]|h|r steps out of the group.",
	"* Mind the |cff71d5ff|Hspell:1217231|h[Foot-Blasters]|h|r."
};

pack["228458"] = { "The One-Armed Bandit",
	"* Each spin adds a mechanic to the slot machine.",
	"* |cff71d5ff|Hspell:460181|h[Pay-Line]|h|r: out of the line.",
	"* |cff71d5ff|Hspell:461060|h[Spin To Win!]|h|r: mind the spinners."
};

pack["229953"] = { "Mug'Zee, Heads of Security",
	"* |cff71d5ff|Hspell:466385|h[Moxie]|h|r empowers them alternately; mind the |cff71d5ff|Hspell:472631|h[Earthshaker Gaol]|h|r.",
	"* Kill the |cff71d5ff|Hspell:466539|h[Unstable Crawler Mines]|h|r.",
	"* |cff71d5ff|Hspell:467380|h[Goblin-guided Rocket]|h|r: the marked dodges."
};

pack["231075"] = { "Chrome King Gallywix",
	"* Three stages with |cff71d5ff|Hspell:1220761|h[Mechengineer's Canisters]|h|r adds.",
	"* |cff71d5ff|Hspell:465952|h[Big Bad Buncha Bombs]|h|r and the |cff71d5ff|Hspell:466165|h[1500-Pound Dud]|h|r: mind the detonations.",
	"* |cff71d5ff|Hspell:467182|h[Suppression]|h|r: raid damage, heals."
};

-- ========================================================= --
-- Manaforge Omega : Zone 2810 --
-- ========================================================= --

pack["233814"] = { "Plexus Sentinel",
	"* Mind the |cff71d5ff|Hspell:1219223|h[Atomize]|h|r.",
	"* The |cff71d5ff|Hspell:1219450|h[Manifest Matrices]|h|r create |cff71d5ff|Hspell:1218625|h[Displacement Matrix]|h|r zones: cross them in order."
};

local soulhunters = { "The Soul Hunters",
	"* Trio: tanks separated for |cff71d5ff|Hspell:1227355|h[Voidstep]|h|r.",
	"* Velaryn's |cff71d5ff|Hspell:1227809|h[The Hunt]|h|r charges the marked, kite it.",
	"* Ilyssa's |cff71d5ff|Hspell:1242259|h[Spirit Bomb]|h|r: mind the spirits."
};
pack["237661"] = soulhunters; pack["237660"] = soulhunters; pack["237662"] = soulhunters;

pack["233815"] = { "Loom'ithar",
	"* |cff71d5ff|Hspell:1226311|h[Infusion Tether]|h|r: break the tether away from the boss.",
	"* |cff71d5ff|Hspell:1226395|h[Overinfusion Burst]|h|r: long cast, interrupt.",
	"* |cff71d5ff|Hspell:1226867|h[Primal Spellstorm]|h|r: heavy damage, heals."
};

pack["233816"] = { "Soulbinder Naazindhri",
	"* |cff71d5ff|Hspell:1225582|h[Soul Calling]|h|r spawns adds: priority on the |cff71d5ff|Hspell:1227048|h[Voidblade Ambush]|h|r.",
	"* |cff71d5ff|Hspell:1227276|h[Soulfray Annihilation]|h|r: lines, spread out.",
	"* |cff71d5ff|Hspell:1223859|h[Arcane Expulsion]|h|r: knockback, out of the area."
};

pack["233817"] = { "Forgeweaver Araz",
	"* The marked by |cff71d5ff|Hspell:1228214|h[Astral Harvest]|h|r pulls the beams, move away from them.",
	"* |cff71d5ff|Hspell:1228216|h[Arcane Obliteration]|h|r: long cast, interrupt.",
	"* |cff71d5ff|Hspell:1228502|h[Overwhelming Power]|h|r is a tank mechanic."
};

pack["237861"] = { "Fractillus",
	"* |cff71d5ff|Hspell:1232130|h[Nexus Shrapnel]|h|r when the walls break, dodge.",
	"* The marked by |cff71d5ff|Hspell:1247424|h[Null Consumption]|h|r is the bomb: away from the group.",
	"* The |cff71d5ff|Hspell:1233416|h[Crystalline Shockwave]|h|r walls advance."
};

pack["237763"] = { "Nexus-King Salhadaar",
	"* Two stages; in stage 2 he mounts the |cff71d5ff|Hspell:1227734|h[Coalesce Voidwing]|h|r.",
	"* The marked by |cff71d5ff|Hspell:1224767|h[King's Thrall]|h|r moves away.",
	"* |cff71d5ff|Hspell:1224812|h[Vanquish]|h|r is a tank mechanic."
};

local dimensius = { "Dimensius, the All-Devouring",
	"* Three stages.",
	"* |cff71d5ff|Hspell:1230087|h[Massive Smash]|h|r and the |cff71d5ff|Hspell:1229038|h[Devour]|h|r: mind the void.",
	"* |cff71d5ff|Hspell:1243577|h[Reverse Gravity]|h|r: the marked goes airborne."
};
pack["241517"] = dimensius; pack["234478"] = dimensius; pack["233824"] = dimensius;

-- ========================================================= --
-- Khaz Algar world bosses --
-- ========================================================= --

pack["220999"] = { "Aggregation of Horrors (world boss)",
	"* Mind the void shards from |cff71d5ff|Hspell:452205|h[Crystalline Barrage]|h|r.",
	"* |cff71d5ff|Hspell:452980|h[Voidquake]|h|r: heavy damage, heals."
};

pack["231821"] = { "The Gobfather (world boss)",
	"* |cff71d5ff|Hspell:1216687|h[Flaming Flames]|h|r: out of the frontal.",
	"* Dodge the |cff71d5ff|Hspell:1216709|h[Death From Above]|h|r."
};

pack["221084"] = { "Kordac, the Dormant Protector (world boss)",
	"* Dodge |cff71d5ff|Hspell:458423|h[Arcane Bombardment]|h|r.",
	"* |cff71d5ff|Hspell:458695|h[Overcharged Lasers]|h|r: mind the lasers."
};

pack["221067"] = { "Orta, the Broken Mountain (world boss)",
	"* |cff71d5ff|Hspell:450407|h[Colossal Slam]|h|r: out of the frontal.",
	"* Mind the |cff71d5ff|Hspell:450677|h[Rupturing Runes]|h|r."
};

pack["238319"] = { "Reshanor, The Untethered (world boss)",
	"* |cff71d5ff|Hspell:1237905|h[Twilight Breath]|h|r: out of the frontal.",
	"* |cff71d5ff|Hspell:1237893|h[Veilshatter Roar]|h|r: heavy damage, heals."
};

pack["221224"] = { "Shurrai, Atrocity of the Undersea (world boss)",
	"* |cff71d5ff|Hspell:453618|h[Abyssal Strike]|h|r leaves a heal absorb: beware.",
	"* Dodge the |cff71d5ff|Hspell:453733|h[Briny Vomit]|h|r."
};

-- ========================================================= --
-- The War Within dungeons --
-- ========================================================= --

-- ------------------------------------ --
-- Ara-Kara, City of Echoes : Zone 2660 --
-- ------------------------------------ --

pack["215405"] = { "Anub'zekt",
	"* |cff71d5ff|Hspell:435012|h[Impale]|h|r charges the marked.",
	"* |cff71d5ff|Hspell:439506|h[Burrow Charge]|h|r charges the marked, stay out of the path.",
	"* |cff71d5ff|Hspell:433740|h[Infestation]|h|r is ME_ONLY, heal the infested."
};

pack["213179"] = { "Avanoxx",
	"* |cff71d5ff|Hspell:438471|h[Voracious Bite]|h|r is tank/healer.",
	"* Mind the |cff71d5ff|Hspell:438476|h[Alerting Shrill]|h|r."
};

pack["215407"] = { "Ki'katal the Harvester",
	"* |cff71d5ff|Hspell:432117|h[Cosmic Singularity]|h|r pulls: get away from the center.",
	"* The marked by |cff71d5ff|Hspell:432031|h[Grasping Blood]|h|r steps out.",
	"* Mind the |cff71d5ff|Hspell:432130|h[Erupting Webs]|h|r."
};

-- ------------------------------------ --
-- Cinderbrew Meadery : Zone 2661 --
-- ------------------------------------ --

pack["218000"] = { "Benk Buzzbee",
	"* Mind the enraged bees from |cff71d5ff|Hspell:438025|h[Snack Time]|h|r."
};

pack["210271"] = { "Brew Master Aldryr",
	"* |cff71d5ff|Hspell:442525|h[Happy Hour]|h|r: mind the overflow.",
	"* |cff71d5ff|Hspell:432198|h[Blazing Belch]|h|r: out of the frontal.",
	"* Mind the |cff71d5ff|Hspell:432229|h[Keg Smash]|h|r barrels."
};

pack["214661"] = { "Goldie Baronbottom",
	"* |cff71d5ff|Hspell:435560|h[Spread the Love!]|h|r: targeted damage, heals.",
	"* Mind the |cff71d5ff|Hspell:435622|h[Let It Hail!]|h|r."
};

pack["210267"] = { "I'pa",
	"* Mind the |cff71d5ff|Hspell:439365|h[Spouting Stout]|h|r.",
	"* |cff71d5ff|Hspell:439031|h[Bottoms Uppercut]|h|r is a tank mechanic.",
	"* Mind the |cff71d5ff|Hspell:440087|h[Oozing Honey]|h|r."
};

-- ------------------------------------ --
-- City of Threads : Zone 2669 --
-- ------------------------------------ --

local fangs = { "Fangs of the Queen",
	"* Two stages: Nx and Vx; mind the |cff71d5ff|Hspell:439621|h[Shade Slash]|h|r.",
	"* The marked by |cff71d5ff|Hspell:441298|h[Freezing Blood]|h|r moves away from the group.",
	"* |cff71d5ff|Hspell:440218|h[Ice Sickles]|h|r gets dispelled."
};
pack["216648"] = fangs; pack["216649"] = fangs;

pack["216658"] = { "Izo, the Grand Splicer",
	"* Mind the |cff71d5ff|Hspell:439401|h[Shifting Anomalies]|h|r.",
	"* |cff71d5ff|Hspell:437700|h[Tremor Slam]|h|r: raid damage, heals.",
	"* Mind the |cff71d5ff|Hspell:438860|h[Umbral Weave]|h|r."
};

pack["216619"] = { "Orator Krix'vizk",
	"* |cff71d5ff|Hspell:434722|h[Subjugate]|h|r is tank/healer.",
	"* The |cff71d5ff|Hspell:434779|h[Terrorize]|h|r fears: be careful."
};

pack["216320"] = { "The Coaglamation",
	"* Mind the |cff71d5ff|Hspell:441289|h[Viscous Darkness]|h|r.",
	"* |cff71d5ff|Hspell:461842|h[Oozing Smash]|h|r is tank/healer.",
	"* The |cff71d5ff|Hspell:461825|h[Black Blood]|h|r leaves pools."
};

-- ------------------------------------ --
-- Darkflame Cleft : Zone 2651 --
-- ------------------------------------ --

pack["208743"] = { "Blazikon",
	"* Mind the |cff71d5ff|Hspell:421817|h[Wicklighter Barrage]|h|r.",
	"* The |cff71d5ff|Hspell:423109|h[Enkindling Inferno]|h|r: mind the fire.",
	"* The |cff71d5ff|Hspell:425394|h[Dousing Breath]|h|r douses, move away."
};

pack["210149"] = { "Ol' Waxbeard",
	"* The marked by |cff71d5ff|Hspell:422116|h[Reckless Charge]|h|r must leave the path.",
	"* |cff71d5ff|Hspell:422245|h[Rock Buster]|h|r is tank/healer.",
	"* Mind the |cff71d5ff|Hspell:422163|h[Luring Candleflame]|h|r."
};

pack["208745"] = { "The Candle King",
	"* The marked by |cff71d5ff|Hspell:422648|h[Darkflame Pickaxe]|h|r steps out.",
	"* Mind the |cff71d5ff|Hspell:426145|h[Paranoid Mind]|h|r.",
	"* Dodge |cff71d5ff|Hspell:420696|h[Throw Darkflame]|h|r."
};

local darkness = { "The Darkness",
	"* |cff71d5ff|Hspell:426943|h[Rising Gloom]|h|r: mind the rising darkness.",
	"* The marked by |cff71d5ff|Hspell:427011|h[Shadowblast]|h|r moves away (ME_ONLY).",
	"* |cff71d5ff|Hspell:427157|h[Call Darkspawn]|h|r: adds, priority."
};
pack["212777"] = darkness; pack["208747"] = darkness;

-- -------------------------------------- --
-- Eco-Dome Aldani : Zone 2830 --
-- -------------------------------------- --

pack["234893"] = { "Azhiccar",
	"* |cff71d5ff|Hspell:1217232|h[Devour]|h|r: long cast, interrupt.",
	"* The marked by |cff71d5ff|Hspell:1227745|h[Toxic Regurgitation]|h|r moves away from the group.",
	"* |cff71d5ff|Hspell:1231811|h[Uncontrolled]|h|r spawns savages, be careful."
};

pack["234935"] = { "Soul-Scribe",
	"* Mind the |cff71d5ff|Hspell:1236703|h[Eternal Weave]|h|r.",
	"* The |cff71d5ff|Hspell:1225218|h[Dread of the Unknown]|h|r leaves pools.",
	"* The |cff71d5ff|Hspell:1225174|h[Ceremonial Dagger]|h|r is tank."
};

local taahbat = { "Taah'bat and A'wazj",
	"* Two stages: |cff71d5ff|Hspell:1236130|h[Binding Javelin]|h|r throws the marked.",
	"* |cff71d5ff|Hspell:1227918|h[Warp Strike]|h|r charges, get out of the path.",
	"* Stage 2: |cff71d5ff|Hspell:1219700|h[Arcane Blitz]|h|r: raid damage, heals.",
	"* |cff71d5ff|Hspell:1219482|h[Rift Claws]|h|r is a tank mechanic."
};
pack["234933"] = taahbat; pack["237514"] = taahbat;

-- ------------------------------------ --
-- Operation: Floodgate : Zone 2773 --
-- ------------------------------------ --

pack["226398"] = { "Big M.O.M.M.A.",
	"* |cff71d5ff|Hspell:460156|h[Jumpstart]|h|r: long cast, interrupt.",
	"* |cff71d5ff|Hspell:473287|h[Excessive Electrification]|h|r: raid damage, heals.",
	"* |cff71d5ff|Hspell:471585|h[Mobilize Mechadrones]|h|r: adds, priority.",
	"* |cff71d5ff|Hspell:473351|h[Electrocrush]|h|r is tank/healer."
};

local duodemo = { "Demolition Duo (Keeza and Bront)",
	"* |cff71d5ff|Hspell:460867|h[Big Bada BOOM!]|h|r: mind the explosion.",
	"* |cff71d5ff|Hspell:461994|h[Deflagration]|h|r: explodes, move away.",
	"* The marked by |cff71d5ff|Hspell:459779|h[Barreling Charge]|h|r leaves the path.",
	"* |cff71d5ff|Hspell:459799|h[Wallop]|h|r is a tank mechanic."
};
pack["226403"] = duodemo; pack["226402"] = duodemo;

pack["226404"] = { "Geezle Gigazap",
	"* |cff71d5ff|Hspell:465463|h[Turbo Charge]|h|r: speeds up, be careful.",
	"* The marked by |cff71d5ff|Hspell:468813|h[Gigazap]|h|r gets the zap, away from the group.",
	"* Mind the |cff71d5ff|Hspell:468841|h[Leaping Sparks]|h|r."
};

pack["226396"] = { "Swampface",
	"* |cff71d5ff|Hspell:473070|h[Awaken the Swamp]|h|r: mind the awakening.",
	"* Dodge the |cff71d5ff|Hspell:473114|h[Mudslide]|h|r.",
	"* |cff71d5ff|Hspell:469478|h[Sludge Claws]|h|r is tank/healer."
};

-- ---------------------------------------------- --
-- Priory of the Sacred Flame : Zone 2649 --
-- ---------------------------------------------- --

pack["207939"] = { "Baron Braunpyke",
	"* Mind the |cff71d5ff|Hspell:422969|h[Vindictive Wrath]|h|r.",
	"* Break the |cff71d5ff|Hspell:423015|h[Castigator's Shield]|h|r.",
	"* Mind the |cff71d5ff|Hspell:423051|h[Burning Light]|h|r."
};

local dailcry = { "Captain Dailcry",
	"* The |cff71d5ff|Hspell:424419|h[Battle Cry]|h|r empowers the adds: be careful.",
	"* The marked by |cff71d5ff|Hspell:1238780|h[Earthshattering Spear]|h|r moves away.",
	"* |cff71d5ff|Hspell:424414|h[Pierce Armor]|h|r is tank/healer."
};
pack["207946"] = dailcry; pack["211291"] = dailcry; pack["211290"] = dailcry; pack["211289"] = dailcry;

pack["207940"] = { "Prioress Murrpray",
	"* Break the |cff71d5ff|Hspell:423588|h[Barrier of Light]|h|r.",
	"* |cff71d5ff|Hspell:425556|h[Sanctified Ground]|h|r: mind the ground.",
	"* The marked by |cff71d5ff|Hspell:444546|h[Purify]|h|r steps out (ME_ONLY)."
};

-- ------------------------------------ --
-- The Dawnbreaker : Zone 2662 --
-- ------------------------------------ --

pack["211089"] = { "Anub'ikkaj",
	"* Mind the |cff71d5ff|Hspell:427001|h[Terrifying Slam]|h|r.",
	"* The marked by |cff71d5ff|Hspell:426860|h[Dark Orb]|h|r moves away from the group (ME_ONLY).",
	"* Mind the |cff71d5ff|Hspell:427378|h[Dark Scars]|h|r."
};

pack["213937"] = { "Rasha'nan (The Dawnbreaker)",
	"* The |cff71d5ff|Hspell:434655|h[Arathi Bomb]|h|r fall: spread out.",
	"* Mind the |cff71d5ff|Hspell:448888|h[Erosive Spray]|h|r.",
	"* Use the |cff71d5ff|Hspell:449528|h[Radiant Light]|h|r during the intermission."
};

pack["211087"] = { "Speaker Shadowcrown",
	"* The |cff71d5ff|Hspell:451026|h[Darkness Comes]|h|r is a long cast: interrupt.",
	"* |cff71d5ff|Hspell:426735|h[Burning Shadows]|h|r gets dispelled.",
	"* |cff71d5ff|Hspell:425264|h[Obsidian Blast]|h|r: raid damage, heals."
};

-- --------------------------------- --
-- The Rookery : Zone 2648 --
-- --------------------------------- --

pack["209230"] = { "Kyrioss",
	"* |cff71d5ff|Hspell:444123|h[Lightning Torrent]|h|r gets dispelled.",
	"* Mind the |cff71d5ff|Hspell:1214325|h[Crashing Thunder]|h|r.",
	"* Mind the |cff71d5ff|Hspell:474018|h[Wild Lightning]|h|r."
};

pack["207205"] = { "Stormguard Gorren",
	"* The marked by |cff71d5ff|Hspell:424737|h[Chaotic Corruption]|h|r moves away from the group.",
	"* Mind the |cff71d5ff|Hspell:425048|h[Dark Gravity]|h|r.",
	"* |cff71d5ff|Hspell:424958|h[Crush Reality]|h|r: raid damage, heals."
};

local monstrosity = { "Voidstone Monstrosity",
	"* |cff71d5ff|Hspell:423305|h[Null Upheaval]|h|r: raid damage, heals.",
	"* The marked by |cff71d5ff|Hspell:429493|h[Unleash Corruption]|h|r moves away from the group.",
	"* Mind the |cff71d5ff|Hspell:423393|h[Entropy]|h|r."
};
pack["207207"] = monstrosity;

-- ------------------------------------- --
-- The Stonevault : Zone 2652 --
-- ------------------------------------- --

pack["210108"] = { "E.D.N.A.",
	"* The marked by |cff71d5ff|Hspell:424795|h[Refracting Beam]|h|r receives the beam (ME_ONLY).",
	"* |cff71d5ff|Hspell:424888|h[Seismic Smash]|h|r is tank/healer.",
	"* Mind the |cff71d5ff|Hspell:424903|h[Volatile Spike]|h|r."
};

local machinists = { "Master Machinists (Brokk and Dorlita)",
	"* Speaker duo; |cff71d5ff|Hspell:445541|h[Exhaust Vents]|h|r from Brokk pushes.",
	"* |cff71d5ff|Hspell:430097|h[Molten Metal]|h|r from Brokk: mind the molten metal.",
	"* |cff71d5ff|Hspell:428508|h[Blazing Crescendo]|h|r from Dorlita: heavy damage, heals.",
	"* |cff71d5ff|Hspell:428711|h[Igneous Hammer]|h|r from Dorlita is a tank mechanic."
};
pack["213217"] = machinists; pack["213216"] = machinists;

pack["210156"] = { "Skarmorak",
	"* Mind the |cff71d5ff|Hspell:422233|h[Crystalline Smash]|h|r.",
	"* The |cff71d5ff|Hspell:423200|h[Fortified Shell]|h|r shields it: break it.",
	"* Mind the |cff71d5ff|Hspell:423538|h[Unstable Crash]|h|r."
};

pack["213119"] = { "Void Speaker Eirich",
	"* Mind the |cff71d5ff|Hspell:427461|h[Void Corruption]|h|r.",
	"* Watch the beams from |cff71d5ff|Hspell:427852|h[Entropic Reckoning]|h|r.",
	"* |cff71d5ff|Hspell:427869|h[Unbridled Void]|h|r: heavy damage, heals."
};

BosesAPI.register( "TWW", { ES = es, EN = en } );