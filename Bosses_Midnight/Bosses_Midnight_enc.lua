--[[
	Bosses_Midnight_enc.lua
		Índice de encuentros del pack: encounterID → NPC IDs (estilo DBM,
		SetEncounterID/SetCreatureID). Generado con npm run comparar-dbm
		(fuente: _doc/DBM y los módulos BigWigs/LittleWigs del cliente) y
		curado a mano. El core lo usa para resolver ENCOUNTER_START sin
		depender del diario (EJ). Varios NPC ids por encuentro = candidatos
		(primero los del pack; los extras de DBM cubren divergencias).

		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

-- Mazmorras de Midnight (DBM-Party-Midnight) -----------------------------

-- Windrunner Spire (2805)
enc["3056"] = "231606"; -- Emberdawn
enc["3057"] = "231626"; -- Derelict Duo
enc["3058"] = "231631"; -- Commander Kroluk
enc["3059"] = "231636"; -- The Restless Heart

-- Magisters' Terrace (2811)
enc["3071"] = "231861"; -- Arcanotron Custos
enc["3072"] = "231863"; -- Seranel Sunlash
enc["3073"] = "231864,239636"; -- Gemellus (DBM apunta 239636)
enc["3074"] = "231865"; -- Degentrius

-- Murder Row (2813)
enc["3101"] = "252458"; -- Kystia Manaheart
enc["3102"] = "234649"; -- Zaen Bladesorrow
enc["3103"] = "234647"; -- Xathuux the Annihilator
enc["3105"] = "237415"; -- Lithiel Cinderfury

-- The Blinding Vale (2859)
enc["3200"] = "244887"; -- Ikuzz the Light Hunter
enc["3201"] = "245912"; -- Lightwarden Ruia
enc["3202"] = "247676"; -- Ziekket
enc["3199"] = "243028"; -- Lightblossom Trinity (Meittik)

-- Den of Nalorakk (2825)
enc["3207"] = "248710"; -- The Hoardmonger
enc["3208"] = "261053,244100"; -- Sentinel of Winter (DBM apunta 244100)
enc["3209"] = "258877"; -- Nalorakk (Den of Nalorakk)

-- Maisara Caverns (2874)
enc["3212"] = "247570"; -- Muro'jin and Nekraxx
enc["3213"] = "248595"; -- Vordaza
enc["3214"] = "248605"; -- Rak'tul, Vessel of Souls

-- Voidscar Arena (2923)
enc["3285"] = "238887"; -- Taz'Rah
enc["3286"] = "239008"; -- Atroxus
enc["3287"] = "239167,248015"; -- Charonus (dos ids con la misma entrada)

-- Nexus-Point Xenas (2915)
enc["3328"] = "241539"; -- Chief Corewright Kasreth
enc["3332"] = "254227"; -- Corewarden Nysarra
enc["3333"] = "241546"; -- Lothraxion

-- Altar of Fangs (2993)
enc["3456"] = "259445"; -- Rav'i
enc["3457"] = "259446"; -- The Writhing Coil
enc["3458"] = "267797"; -- Zul'jan (Altar of Fangs)

-- Lairs (BigWigs/DBM) -----------------------------------------------------

enc["3159"] = "238693,254176"; -- Rotmire (Sporefall)
enc["3379"] = "252959"; -- Nymrissa Wavecaller (Tidebound Grotto)
enc["3513"] = "267861,259664"; -- Kith'ix (Unbinding of Kithix)

-- Jefes de mundo (DBM-Midnight) -------------------------------------------

enc["3431"] = "238015"; -- Predaxas (jefe de mundo)
enc["3436"] = "244424"; -- Cragpine (Zul'Aman)
enc["3454"] = "244762"; -- Lu'ashal (Bosque Canción Eterna)
enc["3459"] = "249776"; -- Thorm'belan (Harandar)

-- Bandas -------------------------------------------------------------------

-- March on Quel'Danas (2913)
enc["3182"] = "240387"; -- Belo'ren, Child of Al'ar
enc["3183"] = "240391,214650"; -- Midnight Falls (DBM apunta 214650)

-- The Dreamrift (2939)
enc["3306"] = "256116,245569"; -- Chimaerus the Undreamt God

-- The Venomous Abyss (3004)
enc["3420"] = "257347"; -- Sszorak
enc["3421"] = "257368,257361"; -- The Twin Fangs (Vexhul e Ithraz)
enc["3429"] = "259854,257911"; -- The Coiled Altar (Malacrass y Zul'jan)
enc["3445"] = "258557,258558"; -- Entombed Sentinels (el 258556 era un id equivocado de Wowhead: un PNJ de Ciudad de Lunargenta)
enc["3455"] = "259181"; -- Vashnik the Malignant
enc["3470"] = "259927,263050"; -- Nek'zali the Soulcoiler
enc["3492"] = "257758"; -- Ula'tek
enc["3497"] = "261835,261843,261848"; -- The Lost Explorers

-- Void Spire (2912)
enc["3176"] = "240435"; -- Imperator Averzian
enc["3177"] = "240434"; -- Vorasius
enc["3178"] = "242056,244552,250892,254109"; -- Vaelgor & Ezzorak (DBM apunta 250892/254109)
enc["3179"] = "240432"; -- Fallen-King Salhadaar
enc["3180"] = "240431,240437,240438,250589,250588,250587"; -- Lightblinded Vanguard (DBM apunta 25058x)
enc["3181"] = "244761,240430,243805,243810,243811"; -- Crown of the Cosmos

-- Delves de Midnight (DBM-Delves-Midnight r266): inventario completo de las
-- 39 ENC. Bloqueo para las entradas del pack: los ficheros del módulo NO
-- activan ninguna CID (SetCreatureID va comentado/TODO - los delves se
-- detectan por ENC + zona), asi que enc[encId] = "CID" queda sin llenar
-- hasta que las fichas de Wowhead o la captura in-game (modo depuracion +
-- /bosses sobre el jefe) traigan los NPC ids:
--   Gladius Slaurna 3307; BladeMaster Darza 3360; Infiltrator Gulkat 3361;
--   Mycomight 3362; Spinshroom 3363; Brightthorn 3364; Chief Arcanist
--   Patram 3365; Hydrangea 3367; Antenorian 3368; Infiltrator Garand 3405;
--   Voidscorned Vagrant 3404; Lumenia 3416; Esuritus Parhelion 3398;
--   Esuritus Sunkiller 3417; Spiritflayer Jin'ma 3433/3434/3435;
--   Appalling Potadpolastrophy 3477; Gralka Snakeeater 3512; Gnok
--   3514/3515; Jun'ala 3526; Sullied Revenant 3527; Sha'Kuro 3528;
--   Drakta 3535; Tarem'be 3536; Disciple of Vashnik 3522/3537/3559/3563;
--   Kindojan 3548; Ritual Pillar 3551; Den'Zara 3556; Osseous
--   Amalgamation 3560; Drill Sergeant 3622; The Undead Trollbunal 3632;
--   Grukk 3636; Treasure Hunter Taltrois 3642; Shadowhunter Jo'din 3646;
--   King of Souls 3648; Cynthra Buttonsmasher 3653; Replicating
--   Venomborne 3461/3529/3557/3595.
-- Nemesi (ficheros Nemesis/ del mismo modulo): Aztarec 3508/3525 (CID
--   comentada: mythic 252892 / normal 244752) y Nullaeus (fichero
--   TormentsRise.lua) 3372/3430 (cond IsMythic 252892/244752).
-- Zonas: 2933, 2952, 2953, 2961, 2962, 2963, 2964, 2965, 2979, 3003, 3038,
--   3077 (+ nemesi 3079 Azta'rec y 2966 Nullaeus; LittleWigs anota tambien
--   la 3043). Nombres es de las zonas: por confirmar (Wowhead/cliente).

P.enc = enc;