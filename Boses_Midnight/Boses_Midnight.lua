--[[
	Boses_Midnight.lua
		Pack de datos: bandas, mazmorras y jefes de mundo de Midnight.
		Los NPC IDs y spell IDs provienen de los módulos BigWigs/LittleWigs
		de Midnight instalados en el cliente y de Wowhead (créditos a sus
		contribuidores); las tácticas telegráficas, estilo de la casa Boses.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Boses en el .toc)
if BosesAPI == nil or BosesAPI.register == nil then
	print( "|cff33ff99Boses|r: core de Boses demasiado antiguo para el pack Midnight." );
	return;
end

local es = {};
local en = {};
local pack = es; -- el bloque español escribe en es, el inglés en en

	-- ----------------------------- --
	-- The Voidspire : Zona 2912 --
	-- ----------------------------- --

	local vanguardia = {
		"Vanguardia Resplandeciente (Lightblinded Vanguard)",
		"* Consejo de tres paladines (Lightblood, Bellamy y Senn); cada aura (Ira/Devoción/Paz) activa habilidades distintas.",
		"* Esquiva los escudos de |cff71d5ff|Hspell:1248644|h[Divine Toll]|h|r y al marcado por |cff71d5ff|Hspell:1248983|h[Execution Sentence]|h|r.",
		"* |cff71d5ff|Hspell:1248674|h[Sacred Shield]|h|r hay que romperla; |cff71d5ff|Hspell:1255738|h[Searing Radiance]|h|r exige curas.",
		"* Los |cff71d5ff|Hspell:1246736|h[Judgement]|h|r son mecánicas de tanque.",
	};
	pack["240431"] = vanguardia; pack["240437"] = vanguardia; pack["240438"] = vanguardia;

	pack["240435"] = { "Imperator Averzian",
		"* El marcado por |cff71d5ff|Hspell:1280015|h[Void Marked]|h|r se aleja del grupo.",
		"* Atención a |cff71d5ff|Hspell:1249262|h[Umbral Collapse]|h|r y a |cff71d5ff|Hspell:1258883|h[Void Fall]|h|r.",
		"* |cff71d5ff|Hspell:1260712|h[Oblivion's Wrath]|h|r: daño masivo, curas listas.",
	};

	local vaelgor = {
		"Vaelgor & Ezzorak",
		"* Dos dracos: cuidado con los frontales; |cff71d5ff|Hspell:1244221|h[Dread Breath]|h|r de Vaelgor.",
		"* |cff71d5ff|Hspell:1244672|h[Nullzone]|h|r: sal de la zona marcada.",
		"* |cff71d5ff|Hspell:1249748|h[Midnight Flames]|h|r deja fuego en el suelo.",
		"* Tanques: alternar |cff71d5ff|Hspell:1262623|h[Nullbeam]|h|r y |cff71d5ff|Hspell:1245645|h[Rakfang]|h|r.",
	};
	pack["242056"] = vaelgor; pack["244552"] = vaelgor;

	pack["240434"] = { "Vorasius",
		"* |cff71d5ff|Hspell:1260052|h[Primordial Roar]|h|r: daño masivo, curas listas.",
		"* Si |cff71d5ff|Hspell:1254113|h[Fixate]|h|r te fija: kitea al boss.",
		"* |cff71d5ff|Hspell:1254199|h[Parasite Expulsion]|h|r saca parásitos: full DPS a los adds.",
		"* |cff71d5ff|Hspell:1243220|h[Dark Goo]|h|r cae bajo ti: sal de él.",
	};

	pack["240432"] = { "Fallen-King Salhadaar",
		"* Atención a |cff71d5ff|Hspell:1247738|h[Void Convergence]|h|r y a las copias de |cff71d5ff|Hspell:1254081|h[Fractured Projection]|h|r.",
		"* |cff71d5ff|Hspell:1248697|h[Despotic Command]|h|r: obedece lo que el rey mande.",
		"* |cff71d5ff|Hspell:1250686|h[Twisting Obscurity]|h|r: cuidado con lo que se esconde.",
	};

	local corona = {
		"Crown of the Cosmos (Alleria Windrunner)",
		"* Fase 1 con tres adds: Morium, Demiar y Vorelus; |cff71d5ff|Hspell:1243743|h[Interrupting Tremor]|h|r de Demiar es interrumpible.",
		"* |cff71d5ff|Hspell:1232467|h[Grasp of Emptiness]|h|r: sal de la zona bajo ti.",
		"* Intermedio: esquiva la |cff71d5ff|Hspell:1243982|h[Silverstrike Barrage]|h|r.",
		"* Fase final: |cff71d5ff|Hspell:1238843|h[Devouring Cosmos]|h|r detrás de |cff71d5ff|Hspell:1246918|h[Cosmic Barrier]|h|r.",
	};
	pack["240430"] = corona; pack["243805"] = corona; pack["243810"] = corona; pack["243811"] = corona; pack["244761"] = corona;

	-- ------------------------------ --
	-- The Dreamrift : Zona 2939 --
	-- ------------------------------ --

	local chimaerus = {
		"Chimaerus the Undreamt God",
		"* |cff71d5ff|Hspell:1245396|h[Consume]|h|r: full DPS para frenar el devorar.",
		"* El marcado por |cff71d5ff|Hspell:1257087|h[Consuming Miasma]|h|r se aleja del grupo.",
		"* Fase 2: vuela; |cff71d5ff|Hspell:1245406|h[Ravenous Dive]|h|r se esquiva.",
	};
	pack["245569"] = chimaerus; pack["256116"] = chimaerus;

	-- ---------------------------------- --
	-- March on Quel'Danas : Zona 2913 --
	-- ---------------------------------- --

	pack["240387"] = { "Belo'ren, Child of Al'ar",
		"* Fénix: muere y renace con |cff71d5ff|Hspell:1241313|h[Rebirth]|h|r; controla las resurrecciones.",
		"* Las plumas de |cff71d5ff|Hspell:1242260|h[Infused Quills]|h|r se evitan.",
		"* |cff71d5ff|Hspell:1246709|h[Death Drop]|h|r: el marcado se coloca lejos del grupo.",
	};

	pack["240391"] = { "Midnight Falls (L'ura)",
		"* Tres fases; la transformación final es |cff71d5ff|Hspell:1250898|h[The Dark Archangel]|h|r.",
		"* |cff71d5ff|Hspell:1251386|h[Safeguard Prism]|h|r: presta atención a los prismas.",
		"* |cff71d5ff|Hspell:1282441|h[Starsplinter]|h|r y |cff71d5ff|Hspell:1281194|h[Dark Meltdown]|h|r: esquiva y curas.",
	};

	-- ---------------------- --
	-- Sporefall : Zona 1592 --
	-- ---------------------- --

	local rotmire = {
		"Rotmire",
		"* El marcado por |cff71d5ff|Hspell:1222088|h[Festering Vines]|h|r se aleja del grupo.",
		"* |cff71d5ff|Hspell:1221787|h[Bursting Pustules]|h|r: las pústulas explotan, aléjate.",
		"* |cff71d5ff|Hspell:1221781|h[Putrid Fist]|h|r es del tanque: alternad.",
	};
	pack["238693"] = rotmire; pack["254176"] = rotmire;

	-- ------------------------------------- --
	-- The Venomous Abyss : Zona 3004 (S2) --
	-- ------------------------------------- --

	local altar = {
		"The Coiled Altar (Zul'jan y Hex Lord Malacrass)",
		"* Tres fases; al final se fusionan con |cff71d5ff|Hspell:1298381|h[Defilement of the Coiled Altar]|h|r.",
		"* |cff71d5ff|Hspell:1283489|h[Guillotine]|h|r: la guillotina cae, sal del camino.",
		"* El marcado por |cff71d5ff|Hspell:1285911|h[Unnerving Fixation]|h|r corre lejos del grupo.",
	};
	pack["257911"] = altar; pack["259854"] = altar;

	local exploradores = {
		"The Lost Explorers",
		"* Consejo de tres; lo peor es |cff71d5ff|Hspell:1292779|h[Final Ascension]|h|r de Mor'zahi.",
		"* |cff71d5ff|Hspell:1290711|h[Blink Nova]|h|r de Iku: evita la nova.",
		"* |cff71d5ff|Hspell:1295886|h[Frostfire Volley]|h|r: daño de banda, curas.",
	};
	pack["261835"] = exploradores; pack["261843"] = exploradores; pack["261848"] = exploradores;

	local nekzali = {
		"Nek'zali the Soulcoiler",
		"* |cff71d5ff|Hspell:1295397|h[Restless Amani]|h|r saca adds: full DPS a los espíritus.",
		"* |cff71d5ff|Hspell:1292036|h[Possession Barrage]|h|r: cuidado con las posesiones.",
		"* |cff71d5ff|Hspell:1299673|h[Invoke]|h|r castea largo: preparad interrupciones.",
	};
	pack["259927"] = nekzali; pack["263050"] = nekzali;

	local sentinelas = {
		"Entombed Sentinels",
		"* Dos centinelas: |cff71d5ff|Hspell:1284434|h[Toxic Droplets]|h|r y |cff71d5ff|Hspell:1288232|h[Unstable Miasma]|h|r envenenan.",
		"* Tanques: alternar |cff71d5ff|Hspell:1284458|h[Empowering Slam]|h|r y |cff71d5ff|Hspell:1284487|h[Bloodvenom Injection]|h|r.",
	};
	pack["258557"] = sentinelas; pack["258556"] = sentinelas;

	pack["257347"] = { "Sszorak",
		"* |cff71d5ff|Hspell:1277025|h[Apex Predator]|h|r te fija: kitea.",
		"* |cff71d5ff|Hspell:1285732|h[Howling Maelstrom]|h|r: daño masivo, curas.",
		"* Esquiva |cff71d5ff|Hspell:1305959|h[Venomous Surge]|h|r y |cff71d5ff|Hspell:1285425|h[Raging Crosswinds]|h|r.",
	};

	local twinfangs = {
		"The Twin Fangs (Vexhul e Ithraz)",
		"* Se hunden con |cff71d5ff|Hspell:1308556|h[Submerge]|h|r y emergen por sorpresa.",
		"* |cff71d5ff|Hspell:1290956|h[Stir the Depths]|h|r lanza olas: esquívalas.",
		"* |cff71d5ff|Hspell:1288538|h[Stone Breaker]|h|r golpea al tanque y lo empuja.",
		"* |cff71d5ff|Hspell:1303230|h[Blood Torrent]|h|r absorbe curas: healers atentos.",
	};
	pack["257361"] = twinfangs; pack["257368"] = twinfangs;

	pack["259181"] = { "Vashnik the Malignant",
		"* |cff71d5ff|Hspell:1283164|h[Imbibe]|h|r absorbe el veneno de las fuentes: controladlo.",
		"* |cff71d5ff|Hspell:1280935|h[Dripping Fangs]|h|r es del tanque.",
		"* |cff71d5ff|Hspell:1281907|h[Plague Froth]|h|r: daño de banda, curas.",
	};

	local ulatek = {
		"Ula'tek",
		"* Tres fases; la madre serpiente asciende al final con |cff71d5ff|Hspell:1286905|h[Fury Unleashed]|h|r.",
		"* |cff71d5ff|Hspell:1300530|h[Spectral Coils]|h|r: hazte a tu lado asignado (izquierda/derecha).",
		"* Esquiva las olas de |cff71d5ff|Hspell:1292188|h[Caustic Waves]|h|r.",
		"* |cff71d5ff|Hspell:1296301|h[Mephitic Thrash]|h|r y |cff71d5ff|Hspell:1301510|h[Circling Prey]|h|r: castear con cuidado.",
	};
	pack["257758"] = ulatek;

	-- ----------------------------- --
	-- Jefes de mundo y Lairs --
	-- ----------------------------- --

	pack["244424"] = { "Cragpine (jefe de mundo, Zul'Aman)",
		"* |cff71d5ff|Hspell:1235144|h[War Club]|h|r es del tanque.",
		"* |cff71d5ff|Hspell:1235131|h[Rootquake]|h|r: cuidado con el suelo.",
	};

	pack["244762"] = { "Lu'ashal (jefe de mundo, Bosque Canción Eterna)",
		"* |cff71d5ff|Hspell:1258427|h[Radiant Flare]|h|r: alejarse.",
		"* |cff71d5ff|Hspell:1276247|h[Dawnfire Breath]|h|r: fuera del frontal.",
	};

	pack["249776"] = { "Thorm'belan (jefe de mundo, Harandar)",
		"* El marcado por |cff71d5ff|Hspell:1258641|h[Shredding Tendrils]|h|r se aleja.",
		"* |cff71d5ff|Hspell:1257325|h[Radiant Mote]|h|r: cuidado con las motas.",
	};

	pack["252959"] = { "Nymrissa Wavecaller (Lair)",
		"* |cff71d5ff|Hspell:1258668|h[Swirling Whirlpools]|h|r: esquiva los remolinos.",
		"* |cff71d5ff|Hspell:1260837|h[Abyssal Rain]|h|r: daño de banda, curas.",
		"* La |cff71d5ff|Hspell:1276710|h[Alluring Bubble]|h|r: cuidado con la burbuja.",
	};

	-- --------------------------- --
	-- Mazmorras de Midnight --
	-- --------------------------- --
	-- NPC IDs de Wowhead. Ojo: Zul'jan 267797 (página PTR), Zaen 234649 y
	-- Lothraxion 241546 son de confianza media; verificar in-game.
	-- Sin ID aún: Nekraxx (pareja de Muro'jin) y la Lightblossom Trinity.

	-- ---------------------------- --
	-- Altar of Fangs : Zona 2993 --
	-- ---------------------------- --

	pack["259445"] = { "Rav'i",
		"* |cff71d5ff|Hspell:1296220|h[Triple Shot]|h|r: flechas dirigidas, repartid el daño.",
		"* El marcado por |cff71d5ff|Hspell:1296050|h[Regurgitate]|h|r se aleja del grupo.",
		"* |cff71d5ff|Hspell:1307894|h[Ravenous Stomp]|h|r: cuidado con el pisotón.",
	};

	pack["259446"] = { "The Writhing Coil",
		"* Dos fases; en la segunda llegan |cff71d5ff|Hspell:1310358|h[Toxic Atrophy]|h|r y |cff71d5ff|Hspell:1300686|h[Assimilation]|h|r.",
		"* |cff71d5ff|Hspell:1299154|h[Synchronized Venom]|h|r: repartirse para repartir el daño.",
		"* |cff71d5ff|Hspell:1298949|h[Tail Scythe]|h|r es del tanque; |cff71d5ff|Hspell:1300044|h[Venom Jet]|h|r se esquiva.",
	};

	pack["267797"] = { "Zul'jan (Altar of Fangs)",
		"* |cff71d5ff|Hspell:1300876|h[Ritual of the Fang]|h|r: interrumpid el ritual.",
		"* |cff71d5ff|Hspell:1301111|h[Axegrinder]|h|r y |cff71d5ff|Hspell:1301413|h[Boneslicer]|h|r: daño dirigido, curas.",
		"* |cff71d5ff|Hspell:1301350|h[Chop Down]|h|r es del tanque.",
	};

	-- --------------------------------- --
	-- Den of Nalorakk : Zona 2825 --
	-- --------------------------------- --

	pack["258877"] = { "Nalorakk (Den of Nalorakk)",
		"* |cff71d5ff|Hspell:1243569|h[Overwhelming Onslaught]|h|r: daño dirigido, curas.",
		"* |cff71d5ff|Hspell:1242860|h[Echoing Maul]|h|r es del tanque.",
		"* |cff71d5ff|Hspell:1243011|h[Fury of the War God]|h|r: furia, defensas listas.",
	};

	pack["261053"] = { "Sentinel of Winter",
		"* El marcado por |cff71d5ff|Hspell:1235548|h[Glacial Torment]|h|r se aleja del grupo.",
		"* |cff71d5ff|Hspell:1235783|h[Shattering Frostspike]|h|r: cuidado con las puntas de escarcha.",
		"* |cff71d5ff|Hspell:1235656|h[Frozen Tempest]|h|r: daño de banda, curas.",
	};

	pack["248710"] = { "The Hoardmonger",
		"* |cff71d5ff|Hspell:1235118|h[Ravenous Bellow]|h|r: daño masivo, curas.",
		"* |cff71d5ff|Hspell:1253268|h[Earthshatter Slam]|h|r golpea y empuja al tanque.",
		"* |cff71d5ff|Hspell:1234233|h[Spoiled Supplies]|h|r: cuidado con las provisiones.",
	};

	-- ---------------------------------- --
	-- Magisters' Terrace : Zona 2811 --
	-- ---------------------------------- --

	pack["231861"] = { "Arcanotron Custos",
		"* |cff71d5ff|Hspell:1214081|h[Arcane Expulsion]|h|r: daño dirigido, curas.",
		"* |cff71d5ff|Hspell:1214032|h[Ethereal Shackles]|h|r: cuidado con las cadenas.",
		"* |cff71d5ff|Hspell:474345|h[Refueling Protocol]|h|r: casteo largo; usa el Orbe de Control que aparece.",
	};

	pack["231865"] = { "Degentrius",
		"* El marcado por |cff71d5ff|Hspell:1215897|h[Devouring Entropy]|h|r se aleja del grupo.",
		"* |cff71d5ff|Hspell:1280113|h[Hulking Fragment]|h|r y |cff71d5ff|Hspell:1215087|h[Unstable Void Essence]|h|r: esquiva.",
	};

	pack["231864"] = { "Gemellus",
		"* |cff71d5ff|Hspell:1223847|h[Triplicate]|h|r: se divide en tres, repartíos las copias.",
		"* El marcado por |cff71d5ff|Hspell:1253709|h[Neural Link]|h|r y |cff71d5ff|Hspell:1224299|h[Astral Grasp]|h|r actúa rápido.",
	};

	pack["231863"] = { "Seranel Sunlash",
		"* El marcado por |cff71d5ff|Hspell:1225787|h[Runic Mark]|h|r sale del grupo.",
		"* |cff71d5ff|Hspell:1224903|h[Suppression Zone]|h|r: sal de la zona.",
		"* |cff71d5ff|Hspell:1225193|h[Wave of Silence]|h|r: casteo que silencia, atentos.",
	};

	-- ---------------------------------- --
	-- Maisara Caverns : Zona 2874 --
	-- ---------------------------------- --

	pack["247570"] = { "Muro'jin y Nekraxx",
		"* El marcado por |cff71d5ff|Hspell:1260643|h[Barrage]|h|r kitea.",
		"* |cff71d5ff|Hspell:1260731|h[Freezing Trap]|h|r congela: liberad al pillado.",
		"* |cff71d5ff|Hspell:1243900|h[Fetid Quillstorm]|h|r y |cff71d5ff|Hspell:1246666|h[Infected Pinions]|h|r: esquiva las plumas.",
	};

	pack["248605"] = { "Rak'tul, Vessel of Souls",
		"* El marcado por |cff71d5ff|Hspell:1252676|h[Crush Souls]|h|r muere sin curas: aléjate.",
		"* |cff71d5ff|Hspell:1251023|h[Spiritbreaker]|h|r: daño fuerte, curas.",
		"* |cff71d5ff|Hspell:1253788|h[Soulrending Roar]|h|r: daño de banda.",
	};

	pack["248595"] = { "Vordaza",
		"* |cff71d5ff|Hspell:1251554|h[Drain Soul]|h|r drena: curas al objetivo.",
		"* |cff71d5ff|Hspell:1251204|h[Wrest Phantoms]|h|r y |cff71d5ff|Hspell:1252054|h[Unmake]|h|r: cuidado con los fantasmas.",
		"* El marcado por |cff71d5ff|Hspell:1251775|h[Final Pursuit]|h|r corre lejos.",
	};

	-- ------------------------------ --
	-- Murder Row : Zona 2813 --
	-- ------------------------------ --

	pack["252458"] = { "Kystia Manaheart",
		"* |cff71d5ff|Hspell:474240|h[Fel Nova]|h|r: aléjate al castear.",
		"* |cff71d5ff|Hspell:1264095|h[Mirror Images]|h|r: copias, busca a la real.",
		"* |cff71d5ff|Hspell:1253811|h[Fel Spray]|h|r: daño dirigido, curas.",
	};

	pack["237415"] = { "Lithiel Cinderfury",
		"* |cff71d5ff|Hspell:474408|h[Summon Vilefiend]|h|r: adds, controla y mátalos.",
		"* |cff71d5ff|Hspell:1218203|h[Fingers of Gul'dan]|h|r: fuera de la zona.",
		"* |cff71d5ff|Hspell:1224478|h[Malefic Wave]|h|r: daño de banda, curas.",
	};

	pack["234647"] = { "Xathuux the Annihilator",
		"* |cff71d5ff|Hspell:473898|h[Legion Strike]|h|r es del tanque.",
		"* |cff71d5ff|Hspell:474197|h[Demonic Rage]|h|r: casteo largo, interrumpid o defensas.",
		"* |cff71d5ff|Hspell:1214637|h[Axe Toss]|h|r: cuidado con el hacha.",
	};

	pack["234649"] = { "Zaen Bladesorrow",
		"* |cff71d5ff|Hspell:474478|h[Killing Spree]|h|r embiste al marcado, curas.",
		"* |cff71d5ff|Hspell:474765|h[Same-Day Delivery]|h|r y |cff71d5ff|Hspell:1214357|h[Fire Bomb]|h|r: esquiva las bombas.",
		"* |cff71d5ff|Hspell:1218347|h[Murder in a Row]|h|r: casteo largo, interrumpid.",
	};

	-- --------------------------------- --
	-- Nexus-Point Xenas : Zona 2915 --
	-- --------------------------------- --

	pack["241539"] = { "Chief Corewright Kasreth",
		"* |cff71d5ff|Hspell:1251579|h[Leyline Array]|h|r: cuida las líneas de energía.",
		"* El marcado por |cff71d5ff|Hspell:1251772|h[Reflux Charge]|h|r se aleja.",
		"* |cff71d5ff|Hspell:1257509|h[Corespark Detonation]|h|r: casteo largo, interrumpid o alejaos.",
	};

	pack["241546"] = { "Lothraxion",
		"* |cff71d5ff|Hspell:1253950|h[Searing Rend]|h|r: daño dirigido, curas.",
		"* El marcado por |cff71d5ff|Hspell:1253855|h[Brilliant Dispersion]|h|r se aleja.",
		"* |cff71d5ff|Hspell:1255531|h[Flicker]|h|r: se teletransporta, atento.",
	};

	pack["254227"] = { "Corewarden Nysarra",
		"* |cff71d5ff|Hspell:1247937|h[Umbral Lash]|h|r: tanque y healers atentos.",
		"* |cff71d5ff|Hspell:1264439|h[Lightscar Flare]|h|r: casteo largo, interrumpid.",
		"* |cff71d5ff|Hspell:1271684|h[Devour the Unworthy]|h|r: el marcado muere sin curas.",
	};

	-- --------------------------------- --
	-- The Blinding Vale : Zona 2859 --
	-- --------------------------------- --

	pack["244887"] = { "Ikuzz the Light Hunter",
		"* |cff71d5ff|Hspell:1236746|h[Verdant Stomp]|h|r: cuidado con el pisotón.",
		"* |cff71d5ff|Hspell:1237090|h[Bloodthirsty Gaze]|h|r: fuera de la mirada.",
		"* |cff71d5ff|Hspell:1236709|h[Thorncaller Roar]|h|r: daño de banda, curas.",
	};

	pack["245912"] = { "Lightwarden Ruia",
		"* Cambia de forma: Moonkin, Oso y Haranir; cada forma trae habilidades distintas.",
		"* |cff71d5ff|Hspell:1240098|h[Lightfall]|h|r: daño de banda, curas.",
		"* |cff71d5ff|Hspell:1241058|h[Grievous Thrash]|h|r del tanque: heridas graves.",
	};

	pack["247676"] = { "Ziekket",
		"* |cff71d5ff|Hspell:1246372|h[Awaken the Lightbloom]|h|r: despierta la flor, prioridad.",
		"* |cff71d5ff|Hspell:1247685|h[Thornspike]|h|r: cuidado con las espinas.",
		"* |cff71d5ff|Hspell:1246607|h[Concentrated Lightbeam]|h|r: fuera del rayo.",
	};

	-- --------------------------------- --
	-- Voidscar Arena : Zona 2923 --
	-- --------------------------------- --

	pack["239008"] = { "Atroxus",
		"* |cff71d5ff|Hspell:1222642|h[Hulking Claw]|h|r es del tanque.",
		"* |cff71d5ff|Hspell:1222721|h[Noxious Breath]|h|r: fuera del frontal.",
		"* |cff71d5ff|Hspell:1226120|h[Poison Splash]|h|r: cuidado con el veneno.",
	};

	local charonus = { "Charonus",
		"* |cff71d5ff|Hspell:1282770|h[Unstable Singularity]|h|r: cuidado con la singularidad.",
		"* |cff71d5ff|Hspell:1263982|h[Gravitic Orbs]|h|r: esquiva los orbes.",
		"* |cff71d5ff|Hspell:1311923|h[Dark Waves]|h|r: daño de banda, curas.",
	};
	pack["239167"] = charonus; pack["248015"] = charonus;

	pack["238887"] = { "Taz'Rah",
		"* |cff71d5ff|Hspell:1222098|h[Nether Dash]|h|r: embiste, sal de la línea.",
		"* |cff71d5ff|Hspell:1296963|h[Umbral Rupture]|h|r y |cff71d5ff|Hspell:1300259|h[Dark Bloom]|h|r: esquiva.",
		"* |cff71d5ff|Hspell:1297017|h[Void Blast]|h|r: daño dirigido, curas.",
	};

	-- --------------------------------- --
	-- Windrunner Spire : Zona 2805 --
	-- --------------------------------- --

	pack["231606"] = { "Emberdawn",
		"* El marcado por |cff71d5ff|Hspell:466556|h[Flaming Updraft]|h|r sale volando: cuidado con la posición.",
		"* |cff71d5ff|Hspell:466064|h[Searing Beak]|h|r es del tanque.",
		"* |cff71d5ff|Hspell:465904|h[Burning Gale]|h|r: casteo largo, protegeos.",
	};

	pack["231626"] = { "Derelict Duo",
		"* Pareja de no-muertos: |cff71d5ff|Hspell:472745|h[Splattering Spew]|h|r deja veneno en el suelo.",
		"* |cff71d5ff|Hspell:472888|h[Bone Hack]|h|r es del tanque.",
		"* El marcado por |cff71d5ff|Hspell:474105|h[Curse of Darkness]|h|r y |cff71d5ff|Hspell:472793|h[Heaving Yank]|h|r actúa rápido.",
	};

	pack["231631"] = { "Commander Kroluk",
		"* |cff71d5ff|Hspell:467620|h[Rampage]|h|r del tanque: alterna agresión.",
		"* |cff71d5ff|Hspell:1250851|h[Shield Wall]|h|r: espera al muro para el daño.",
		"* |cff71d5ff|Hspell:470963|h[Bladestorm]|h|r: alejaos del remolino.",
	};

	pack["231636"] = { "Restless Heart",
		"* |cff71d5ff|Hspell:472556|h[Arrow Rain]|h|r y |cff71d5ff|Hspell:472662|h[Tempest Slash]|h|r: daño dirigido, repartíos.",
		"* El marcado por |cff71d5ff|Hspell:474528|h[Bolt Gale]|h|r se aparta.",
		"* |cff71d5ff|Hspell:468429|h[Bullseye Windblast]|h|r: cuidado con la puntería.",
	};

pack = en;

	-- -------------------------- --
	-- The Voidspire : Zone 2912 --
	-- -------------------------- --

	local vanguard = {
		"Lightblinded Vanguard",
		"* Council of three paladins (Lightblood, Bellamy, Senn); each aura (Wrath/Devotion/Peace) enables different abilities.",
		"* Dodge the shields from |cff71d5ff|Hspell:1248644|h[Divine Toll]|h|r and stay away from the |cff71d5ff|Hspell:1248983|h[Execution Sentence]|h|r target.",
		"* Break |cff71d5ff|Hspell:1248674|h[Sacred Shield]|h|r; |cff71d5ff|Hspell:1255738|h[Searing Radiance]|h|r needs healing.",
		"* The |cff71d5ff|Hspell:1246736|h[Judgement]|h|r abilities are tank mechanics.",
	};
	pack["240431"] = vanguard; pack["240437"] = vanguard; pack["240438"] = vanguard;

	pack["240435"] = { "Imperator Averzian",
		"* The player marked by |cff71d5ff|Hspell:1280015|h[Void Marked]|h|r moves away from the group.",
		"* Watch out for |cff71d5ff|Hspell:1249262|h[Umbral Collapse]|h|r and |cff71d5ff|Hspell:1258883|h[Void Fall]|h|r.",
		"* |cff71d5ff|Hspell:1260712|h[Oblivion's Wrath]|h|r: heavy raid damage, get heals ready.",
	};

	local drakes = {
		"Vaelgor & Ezzorak",
		"* Two drakes: mind the frontals; |cff71d5ff|Hspell:1244221|h[Dread Breath]|h|r from Vaelgor.",
		"* |cff71d5ff|Hspell:1244672|h[Nullzone]|h|r: leave the marked area.",
		"* |cff71d5ff|Hspell:1249748|h[Midnight Flames]|h|r leaves fire on the ground.",
		"* Tanks: alternate |cff71d5ff|Hspell:1262623|h[Nullbeam]|h|r and |cff71d5ff|Hspell:1245645|h[Rakfang]|h|r.",
	};
	pack["242056"] = drakes; pack["244552"] = drakes;

	pack["240434"] = { "Vorasius",
		"* |cff71d5ff|Hspell:1260052|h[Primordial Roar]|h|r: massive damage, heals ready.",
		"* If |cff71d5ff|Hspell:1254113|h[Fixate]|h|r targets you: kite the boss.",
		"* |cff71d5ff|Hspell:1254199|h[Parasite Expulsion]|h|r spawns parasites: full DPS on adds.",
		"* |cff71d5ff|Hspell:1243220|h[Dark Goo]|h|r falls under you: step out.",
	};

	pack["240432"] = { "Fallen-King Salhadaar",
		"* Watch for |cff71d5ff|Hspell:1247738|h[Void Convergence]|h|r and the copies from |cff71d5ff|Hspell:1254081|h[Fractured Projection]|h|r.",
		"* |cff71d5ff|Hspell:1248697|h[Despotic Command]|h|r: obey what the king commands.",
		"* |cff71d5ff|Hspell:1250686|h[Twisting Obscurity]|h|r: mind what hides.",
	};

	local crown = {
		"Crown of the Cosmos (Alleria Windrunner)",
		"* Stage 1 has three adds: Morium, Demiar and Vorelus; Demiar's |cff71d5ff|Hspell:1243743|h[Interrupting Tremor]|h|r can be interrupted.",
		"* |cff71d5ff|Hspell:1232467|h[Grasp of Emptiness]|h|r: step out of the area under you.",
		"* Intermission: dodge the |cff71d5ff|Hspell:1243982|h[Silverstrike Barrage]|h|r.",
		"* Final phase: |cff71d5ff|Hspell:1238843|h[Devouring Cosmos]|h|r behind |cff71d5ff|Hspell:1246918|h[Cosmic Barrier]|h|r.",
	};
	pack["240430"] = crown; pack["243805"] = crown; pack["243810"] = crown; pack["243811"] = crown; pack["244761"] = crown;

	-- --------------------------- --
	-- The Dreamrift : Zone 2939 --
	-- --------------------------- --

	local chimaerus = {
		"Chimaerus the Undreamt God",
		"* |cff71d5ff|Hspell:1245396|h[Consume]|h|r: full DPS to break the devour.",
		"* The player marked by |cff71d5ff|Hspell:1257087|h[Consuming Miasma]|h|r moves away from the group.",
		"* Stage 2: it flies; |cff71d5ff|Hspell:1245406|h[Ravenous Dive]|h|r is dodgeable.",
	};
	pack["245569"] = chimaerus; pack["256116"] = chimaerus;

	-- -------------------------------- --
	-- March on Quel'Danas : Zone 2913 --
	-- -------------------------------- --

	pack["240387"] = { "Belo'ren, Child of Al'ar",
		"* Phoenix: dies and is reborn with |cff71d5ff|Hspell:1241313|h[Rebirth]|h|r; control the resurrections.",
		"* Avoid the quills from |cff71d5ff|Hspell:1242260|h[Infused Quills]|h|r.",
		"* |cff71d5ff|Hspell:1246709|h[Death Drop]|h|r: the marked player positions far from the group.",
	};

	pack["240391"] = { "Midnight Falls (L'ura)",
		"* Three stages; the final transformation is |cff71d5ff|Hspell:1250898|h[The Dark Archangel]|h|r.",
		"* Pay attention to the |cff71d5ff|Hspell:1251386|h[Safeguard Prism]|h|r.",
		"* |cff71d5ff|Hspell:1282441|h[Starsplinter]|h|r and |cff71d5ff|Hspell:1281194|h[Dark Meltdown]|h|r: dodge and heal.",
	};

	-- ----------------------- --
	-- Sporefall : Zone 1592 --
	-- ----------------------- --

	local rotmire = {
		"Rotmire",
		"* The player marked by |cff71d5ff|Hspell:1222088|h[Festering Vines]|h|r moves away from the group.",
		"* |cff71d5ff|Hspell:1221787|h[Bursting Pustules]|h|r: the pustules explode, get away.",
		"* |cff71d5ff|Hspell:1221781|h[Putrid Fist]|h|r is a tank mechanic: alternate tanks.",
	};
	pack["238693"] = rotmire; pack["254176"] = rotmire;

	-- ------------------------------------- --
	-- The Venomous Abyss : Zone 3004 (S2) --
	-- ------------------------------------- --

	local altar = {
		"The Coiled Altar (Zul'jan and Hex Lord Malacrass)",
		"* Three stages; they merge at the end with |cff71d5ff|Hspell:1298381|h[Defilement of the Coiled Altar]|h|r.",
		"* |cff71d5ff|Hspell:1283489|h[Guillotine]|h|r: the blade falls, step out.",
		"* The player marked by |cff71d5ff|Hspell:1285911|h[Unnerving Fixation]|h|r runs far away.",
	};
	pack["257911"] = altar; pack["259854"] = altar;

	local explorers = {
		"The Lost Explorers",
		"* Council of three; the worst is Mor'zahi's |cff71d5ff|Hspell:1292779|h[Final Ascension]|h|r.",
		"* Iku's |cff71d5ff|Hspell:1290711|h[Blink Nova]|h|r: dodge the nova.",
		"* |cff71d5ff|Hspell:1295886|h[Frostfire Volley]|h|r: raid damage, get heals.",
	};
	pack["261835"] = explorers; pack["261843"] = explorers; pack["261848"] = explorers;

	local nekzali = {
		"Nek'zali the Soulcoiler",
		"* |cff71d5ff|Hspell:1295397|h[Restless Amani]|h|r spawns adds: full DPS on the spirits.",
		"* |cff71d5ff|Hspell:1292036|h[Possession Barrage]|h|r: mind the possessions, control them.",
		"* |cff71d5ff|Hspell:1299673|h[Invoke]|h|r has a long cast: get interrupts ready.",
	};
	pack["259927"] = nekzali; pack["263050"] = nekzali;

	local sentinels = {
		"Entombed Sentinels",
		"* Two sentinels: |cff71d5ff|Hspell:1284434|h[Toxic Droplets]|h|r and |cff71d5ff|Hspell:1288232|h[Unstable Miasma]|h|r poison; spread the tanks.",
		"* Tanks: alternate |cff71d5ff|Hspell:1284458|h[Empowering Slam]|h|r and |cff71d5ff|Hspell:1284487|h[Bloodvenom Injection]|h|r.",
	};
	pack["258557"] = sentinels; pack["258556"] = sentinels;

	pack["257347"] = { "Sszorak",
		"* |cff71d5ff|Hspell:1277025|h[Apex Predator]|h|r fixes on you: kite.",
		"* |cff71d5ff|Hspell:1285732|h[Howling Maelstrom]|h|r: heavy damage, heals.",
		"* Dodge |cff71d5ff|Hspell:1305959|h[Venomous Surge]|h|r and |cff71d5ff|Hspell:1285425|h[Raging Crosswinds]|h|r.",
	};

	local twinfangs = {
		"The Twin Fangs (Vexhul and Ithraz)",
		"* They submerge with |cff71d5ff|Hspell:1308556|h[Submerge]|h|r and emerge by surprise.",
		"* |cff71d5ff|Hspell:1290956|h[Stir the Depths]|h|r throws waves: dodge them.",
		"* |cff71d5ff|Hspell:1288538|h[Stone Breaker]|h|r hits the tank and knocks them back.",
		"* |cff71d5ff|Hspell:1303230|h[Blood Torrent]|h|r absorbs healing: healers beware.",
	};
	pack["257361"] = twinfangs; pack["257368"] = twinfangs;

	pack["259181"] = { "Vashnik the Malignant",
		"* |cff71d5ff|Hspell:1283164|h[Imbibe]|h|r absorbs venom from the fountains: don't let it grow.",
		"* |cff71d5ff|Hspell:1280935|h[Dripping Fangs]|h|r is a tank mechanic.",
		"* |cff71d5ff|Hspell:1281907|h[Plague Froth]|h|r: raid damage, heals.",
	};

	local ulatek = {
		"Ula'tek",
		"* Three stages; the serpent mother ascends at the end with |cff71d5ff|Hspell:1286905|h[Fury Unleashed]|h|r.",
		"* |cff71d5ff|Hspell:1300530|h[Spectral Coils]|h|r: go to your assigned side (left/right).",
		"* Dodge the poison waves from |cff71d5ff|Hspell:1292188|h[Caustic Waves]|h|r.",
		"* |cff71d5ff|Hspell:1296301|h[Mephitic Thrash]|h|r and |cff71d5ff|Hspell:1301510|h[Circling Prey]|h|r: interrupts and movement.",
	};
	pack["257758"] = ulatek;

	-- -------------------------------- --
	-- World bosses and Lairs --
	-- -------------------------------- --

	pack["244424"] = { "Cragpine (world boss, Zul'Aman)",
		"* |cff71d5ff|Hspell:1235144|h[War Club]|h|r is a tank mechanic.",
		"* Watch the ground for |cff71d5ff|Hspell:1235131|h[Rootquake]|h|r.",
	};

	pack["244762"] = { "Lu'ashal (world boss, Eversong Woods)",
		"* |cff71d5ff|Hspell:1258427|h[Radiant Flare]|h|r: move away.",
		"* |cff71d5ff|Hspell:1276247|h[Dawnfire Breath]|h|r: out of the frontal.",
	};

	pack["249776"] = { "Thorm'belan (world boss, Harandar)",
		"* The player marked by |cff71d5ff|Hspell:1258641|h[Shredding Tendrils]|h|r moves away.",
		"* Watch out for |cff71d5ff|Hspell:1257325|h[Radiant Mote]|h|r.",
	};

	pack["252959"] = { "Nymrissa Wavecaller (Lair)",
		"* |cff71d5ff|Hspell:1258668|h[Swirling Whirlpools]|h|r: dodge the whirlpools.",
		"* |cff71d5ff|Hspell:1260837|h[Abyssal Rain]|h|r: raid damage, heals.",
		"* Mind the |cff71d5ff|Hspell:1276710|h[Alluring Bubble]|h|r.",
	};

	-- ----------------------------- --
	-- Midnight dungeons --
	-- ----------------------------- --
	-- NPC IDs from Wowhead. Note: Zul'jan 267797 (PTR page), Zaen 234649 and
	-- Lothraxion 241546 are medium-confidence; verify in-game.
	-- No ID yet: Nekraxx (Muro'jin's partner) and the Lightblossom Trinity.

	-- ------------------------------ --
	-- Altar of Fangs : Zone 2993 --
	-- ------------------------------ --

	pack["259445"] = { "Rav'i",
		"* |cff71d5ff|Hspell:1296220|h[Triple Shot]|h|r: targeted arrows, spread the damage.",
		"* The player marked by |cff71d5ff|Hspell:1296050|h[Regurgitate]|h|r moves away from the group.",
		"* Watch out for |cff71d5ff|Hspell:1307894|h[Ravenous Stomp]|h|r.",
	};

	pack["259446"] = { "The Writhing Coil",
		"* Two stages; stage two brings |cff71d5ff|Hspell:1310358|h[Toxic Atrophy]|h|r and |cff71d5ff|Hspell:1300686|h[Assimilation]|h|r.",
		"* |cff71d5ff|Hspell:1299154|h[Synchronized Venom]|h|r: spread out to split the damage.",
		"* |cff71d5ff|Hspell:1298949|h[Tail Scythe]|h|r is a tank mechanic; dodge |cff71d5ff|Hspell:1300044|h[Venom Jet]|h|r.",
	};

	pack["267797"] = { "Zul'jan (Altar of Fangs)",
		"* |cff71d5ff|Hspell:1300876|h[Ritual of the Fang]|h|r: interrupt the ritual.",
		"* |cff71d5ff|Hspell:1301111|h[Axegrinder]|h|r and |cff71d5ff|Hspell:1301413|h[Boneslicer]|h|r: targeted damage, heals.",
		"* |cff71d5ff|Hspell:1301350|h[Chop Down]|h|r is a tank mechanic.",
	};

	-- ---------------------------------- --
	-- Den of Nalorakk : Zone 2825 --
	-- ---------------------------------- --

	pack["258877"] = { "Nalorakk (Den of Nalorakk)",
		"* |cff71d5ff|Hspell:1243569|h[Overwhelming Onslaught]|h|r: targeted damage, heals.",
		"* |cff71d5ff|Hspell:1242860|h[Echoing Maul]|h|r is a tank mechanic.",
		"* |cff71d5ff|Hspell:1243011|h[Fury of the War God]|h|r: enrage, get defensives ready.",
	};

	pack["261053"] = { "Sentinel of Winter",
		"* The player marked by |cff71d5ff|Hspell:1235548|h[Glacial Torment]|h|r moves away from the group.",
		"* Watch out for |cff71d5ff|Hspell:1235783|h[Shattering Frostspike]|h|r.",
		"* |cff71d5ff|Hspell:1235656|h[Frozen Tempest]|h|r: raid damage, heals.",
	};

	pack["248710"] = { "The Hoardmonger",
		"* |cff71d5ff|Hspell:1235118|h[Ravenous Bellow]|h|r: heavy damage, heals.",
		"* |cff71d5ff|Hspell:1253268|h[Earthshatter Slam]|h|r hits and knocks the tank back.",
		"* Mind the |cff71d5ff|Hspell:1234233|h[Spoiled Supplies]|h|r.",
	};

	-- ----------------------------------- --
	-- Magisters' Terrace : Zone 2811 --
	-- ----------------------------------- --

	pack["231861"] = { "Arcanotron Custos",
		"* |cff71d5ff|Hspell:1214081|h[Arcane Expulsion]|h|r: targeted damage, heals.",
		"* Mind the |cff71d5ff|Hspell:1214032|h[Ethereal Shackles]|h|r.",
		"* |cff71d5ff|Hspell:474345|h[Refueling Protocol]|h|r: long cast; use the Control Orb that spawns.",
	};

	pack["231865"] = { "Degentrius",
		"* The player marked by |cff71d5ff|Hspell:1215897|h[Devouring Entropy]|h|r moves away from the group.",
		"* Dodge |cff71d5ff|Hspell:1280113|h[Hulking Fragment]|h|r and |cff71d5ff|Hspell:1215087|h[Unstable Void Essence]|h|r.",
	};

	pack["231864"] = { "Gemellus",
		"* |cff71d5ff|Hspell:1223847|h[Triplicate]|h|r: splits into three, assign the copies.",
		"* The player marked by |cff71d5ff|Hspell:1253709|h[Neural Link]|h|r and |cff71d5ff|Hspell:1224299|h[Astral Grasp]|h|r should act fast.",
	};

	pack["231863"] = { "Seranel Sunlash",
		"* The player marked by |cff71d5ff|Hspell:1225787|h[Runic Mark]|h|r leaves the group.",
		"* |cff71d5ff|Hspell:1224903|h[Suppression Zone]|h|r: leave the area.",
		"* |cff71d5ff|Hspell:1225193|h[Wave of Silence]|h|r is a silencing cast, be careful.",
	};

	-- ----------------------------------- --
	-- Maisara Caverns : Zone 2874 --
	-- ----------------------------------- --

	pack["247570"] = { "Muro'jin and Nekraxx",
		"* The player marked by |cff71d5ff|Hspell:1260643|h[Barrage]|h|r kites.",
		"* |cff71d5ff|Hspell:1260731|h[Freezing Trap]|h|r freezes: free the trapped player.",
		"* Dodge the feathers from |cff71d5ff|Hspell:1243900|h[Fetid Quillstorm]|h|r and |cff71d5ff|Hspell:1246666|h[Infected Pinions]|h|r.",
	};

	pack["248605"] = { "Rak'tul, Vessel of Souls",
		"* The player marked by |cff71d5ff|Hspell:1252676|h[Crush Souls]|h|r dies without heals: get away.",
		"* |cff71d5ff|Hspell:1251023|h[Spiritbreaker]|h|r: heavy damage, heals.",
		"* |cff71d5ff|Hspell:1253788|h[Soulrending Roar]|h|r: raid damage.",
	};

	pack["248595"] = { "Vordaza",
		"* |cff71d5ff|Hspell:1251554|h[Drain Soul]|h|r drains: heal the target.",
		"* Mind the ghosts from |cff71d5ff|Hspell:1251204|h[Wrest Phantoms]|h|r and |cff71d5ff|Hspell:1252054|h[Unmake]|h|r.",
		"* The player marked by |cff71d5ff|Hspell:1251775|h[Final Pursuit]|h|r runs far away.",
	};

	-- ------------------------------ --
	-- Murder Row : Zone 2813 --
	-- ------------------------------ --

	pack["252458"] = { "Kystia Manaheart",
		"* |cff71d5ff|Hspell:474240|h[Fel Nova]|h|r: move away while it casts.",
		"* |cff71d5ff|Hspell:1264095|h[Mirror Images]|h|r: clones, find the real one.",
		"* |cff71d5ff|Hspell:1253811|h[Fel Spray]|h|r: targeted damage, heals.",
	};

	pack["237415"] = { "Lithiel Cinderfury",
		"* |cff71d5ff|Hspell:474408|h[Summon Vilefiend]|h|r: adds, control and kill them.",
		"* |cff71d5ff|Hspell:1218203|h[Fingers of Gul'dan]|h|r: out of the area.",
		"* |cff71d5ff|Hspell:1224478|h[Malefic Wave]|h|r: raid damage, heals.",
	};

	pack["234647"] = { "Xathuux the Annihilator",
		"* |cff71d5ff|Hspell:473898|h[Legion Strike]|h|r is a tank mechanic.",
		"* |cff71d5ff|Hspell:474197|h[Demonic Rage]|h|r: long cast, interrupt or use defensives.",
		"* Mind the |cff71d5ff|Hspell:1214637|h[Axe Toss]|h|r.",
	};

	pack["234649"] = { "Zaen Bladesorrow",
		"* |cff71d5ff|Hspell:474478|h[Killing Spree]|h|r leaps to the marked player, heals.",
		"* Dodge the bombs from |cff71d5ff|Hspell:474765|h[Same-Day Delivery]|h|r and |cff71d5ff|Hspell:1214357|h[Fire Bomb]|h|r.",
		"* |cff71d5ff|Hspell:1218347|h[Murder in a Row]|h|r: long cast, interrupt it.",
	};

	-- ---------------------------------- --
	-- Nexus-Point Xenas : Zone 2915 --
	-- ---------------------------------- --

	pack["241539"] = { "Chief Corewright Kasreth",
		"* Mind the energy lines from |cff71d5ff|Hspell:1251579|h[Leyline Array]|h|r.",
		"* The player marked by |cff71d5ff|Hspell:1251772|h[Reflux Charge]|h|r moves away.",
		"* |cff71d5ff|Hspell:1257509|h[Corespark Detonation]|h|r: long cast, interrupt or get away.",
	};

	pack["241546"] = { "Lothraxion",
		"* |cff71d5ff|Hspell:1253950|h[Searing Rend]|h|r: targeted damage, heals.",
		"* The player marked by |cff71d5ff|Hspell:1253855|h[Brilliant Dispersion]|h|r moves away.",
		"* |cff71d5ff|Hspell:1255531|h[Flicker]|h|r: it teleports, stay sharp.",
	};

	pack["254227"] = { "Corewarden Nysarra",
		"* |cff71d5ff|Hspell:1247937|h[Umbral Lash]|h|r: tanks and healers beware.",
		"* |cff71d5ff|Hspell:1264439|h[Lightscar Flare]|h|r: long cast, interrupt it.",
		"* |cff71d5ff|Hspell:1271684|h[Devour the Unworthy]|h|r: the marked player dies without heals.",
	};

	-- ---------------------------------- --
	-- The Blinding Vale : Zone 2859 --
	-- ---------------------------------- --

	pack["244887"] = { "Ikuzz the Light Hunter",
		"* Watch out for |cff71d5ff|Hspell:1236746|h[Verdant Stomp]|h|r.",
		"* |cff71d5ff|Hspell:1237090|h[Bloodthirsty Gaze]|h|r: out of the gaze.",
		"* |cff71d5ff|Hspell:1236709|h[Thorncaller Roar]|h|r: raid damage, heals.",
	};

	pack["245912"] = { "Lightwarden Ruia",
		"* She shapeshifts: Moonkin, Bear and Haranir; each form brings different abilities.",
		"* |cff71d5ff|Hspell:1240098|h[Lightfall]|h|r: raid damage, heals.",
		"* |cff71d5ff|Hspell:1241058|h[Grievous Thrash]|h|r is a tank mechanic: grievous wounds.",
	};

	pack["247676"] = { "Ziekket",
		"* |cff71d5ff|Hspell:1246372|h[Awaken the Lightbloom]|h|r: wakes the bloom, priority target.",
		"* Watch out for |cff71d5ff|Hspell:1247685|h[Thornspike]|h|r.",
		"* |cff71d5ff|Hspell:1246607|h[Concentrated Lightbeam]|h|r: out of the beam.",
	};

	-- ---------------------------------- --
	-- Voidscar Arena : Zone 2923 --
	-- ---------------------------------- --

	pack["239008"] = { "Atroxus",
		"* |cff71d5ff|Hspell:1222642|h[Hulking Claw]|h|r is a tank mechanic.",
		"* |cff71d5ff|Hspell:1222721|h[Noxious Breath]|h|r: out of the frontal.",
		"* Mind the poison from |cff71d5ff|Hspell:1226120|h[Poison Splash]|h|r.",
	};

	local charonus = { "Charonus",
		"* Mind the |cff71d5ff|Hspell:1282770|h[Unstable Singularity]|h|r.",
		"* Dodge the |cff71d5ff|Hspell:1263982|h[Gravitic Orbs]|h|r.",
		"* |cff71d5ff|Hspell:1311923|h[Dark Waves]|h|r: raid damage, heals.",
	};
	pack["239167"] = charonus; pack["248015"] = charonus;

	pack["238887"] = { "Taz'Rah",
		"* |cff71d5ff|Hspell:1222098|h[Nether Dash]|h|r: it charges, out of the line.",
		"* Dodge |cff71d5ff|Hspell:1296963|h[Umbral Rupture]|h|r and |cff71d5ff|Hspell:1300259|h[Dark Bloom]|h|r.",
		"* |cff71d5ff|Hspell:1297017|h[Void Blast]|h|r: targeted damage, heals.",
	};

	-- ---------------------------------- --
	-- Windrunner Spire : Zone 2805 --
	-- ---------------------------------- --

	pack["231606"] = { "Emberdawn",
		"* The player marked by |cff71d5ff|Hspell:466556|h[Flaming Updraft]|h|r gets knocked up: mind your position.",
		"* |cff71d5ff|Hspell:466064|h[Searing Beak]|h|r is a tank mechanic.",
		"* |cff71d5ff|Hspell:465904|h[Burning Gale]|h|r: long cast, get protections ready.",
	};

	pack["231626"] = { "Derelict Duo",
		"* Undead pair: |cff71d5ff|Hspell:472745|h[Splattering Spew]|h|r leaves poison on the ground.",
		"* |cff71d5ff|Hspell:472888|h[Bone Hack]|h|r is a tank mechanic.",
		"* The player marked by |cff71d5ff|Hspell:474105|h[Curse of Darkness]|h|r and |cff71d5ff|Hspell:472793|h[Heaving Yank]|h|r should act fast.",
	};

	pack["231631"] = { "Commander Kroluk",
		"* |cff71d5ff|Hspell:467620|h[Rampage]|h|r is a tank mechanic: alternate aggression.",
		"* Wait out |cff71d5ff|Hspell:1250851|h[Shield Wall]|h|r before bursting damage.",
		"* |cff71d5ff|Hspell:470963|h[Bladestorm]|h|r: get away from the whirlwind.",
	};

	pack["231636"] = { "Restless Heart",
		"* |cff71d5ff|Hspell:472556|h[Arrow Rain]|h|r and |cff71d5ff|Hspell:472662|h[Tempest Slash]|h|r: targeted damage, spread out.",
		"* The player marked by |cff71d5ff|Hspell:474528|h[Bolt Gale]|h|r steps aside.",
		"* Watch out for |cff71d5ff|Hspell:468429|h[Bullseye Windblast]|h|r.",
	};

BosesAPI.register( "Midnight", { ES = es, EN = en } );