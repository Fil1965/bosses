--[[
	Bosses_WotLK_zonas.lua
		Índice de zonas del pack Wrath of the Lich King (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de Wrath of the Lich King (generado; nombres EN del journal, fallback esES)

-- Onyxia
zonas["249"] = { nombre = "Onyxia's Lair", jefes = { "10184" } };

-- Naxx/ArachnidQuarter, Naxx/PlagueQuarter, Naxx/MilitaryQuarter, Naxx/ConstructQuarter, Naxx/FrostwyrmLair
zonas["533"] = { nombre = "Naxxramas", jefes = { "15956", "15953", "15952", "15954", "15936", "16011", "16061", "16060", "16063", "16064", "16065", "30549", "16028", "15931", "15932", "15928", "15989", "15990" } };

-- UtgardeKeep
zonas["574"] = { nombre = "Utgarde Keep", jefes = { "23953", "24200", "24201", "23954" } };

-- UtgardePinnacle
zonas["575"] = { nombre = "Utgarde Pinnacle", jefes = { "26668", "26687", "26693", "26861" } };

-- TheNexus
zonas["576"] = { nombre = "The Nexus", jefes = { "26731", "26763", "26794", "26723" } };

-- TheOculus
zonas["578"] = { nombre = "The Oculus", jefes = { "27654", "27447", "27655", "27656" } };

-- OldStratholme
zonas["595"] = { nombre = "The Culling of Stratholme", jefes = { "26529", "26530", "26532", "26533" } };

-- HallsOfStone
zonas["599"] = { nombre = "Halls of Stone", jefes = { "27977", "27975", "28070", "27978" } };

-- DrakTharon
zonas["600"] = { nombre = "Drak'Tharon Keep", jefes = { "26630", "26631", "27483", "26632" } };

-- AzjolNerub
zonas["601"] = { nombre = "Azjol-Nerub", jefes = { "28684", "28921", "29120" } };

-- HallsOfLightning
zonas["602"] = { nombre = "Halls of Lightning", jefes = { "28586", "28587", "28546", "28923" } };

-- Ulduar
zonas["603"] = { nombre = "Ulduar", jefes = { "33293", "32867", "32927", "32857", "32930", "33515", "32845", "32926", "32865", "32906", "33432", "33271", "33288", "32871", "33113", "33118", "33186" } };

-- Gundrak
zonas["604"] = { nombre = "Gundrak", jefes = { "29304", "29307", "29305", "29932", "29306" } };

-- VioletHold
zonas["608"] = { nombre = "The Violet Hold", jefes = { "29315", "29316", "29313", "29266", "29312", "29314", "31134" } };

-- ObsidianSanctum
zonas["615"] = { nombre = "The Obsidian Sanctum", jefes = { "28860", "30451", "30452", "30449" } };

-- EyeOfEternity
zonas["616"] = { nombre = "The Eye of Eternity", jefes = { "28859" } };

-- AhnKahet
zonas["619"] = { nombre = "Ahn'kahet: The Old Kingdom", jefes = { "29309", "29308", "29310", "30258", "29311" } };

-- VoA
zonas["624"] = { nombre = "Vault of Archavon", jefes = { "31125", "33993", "35013", "38433" } };

-- Icecrown/TheLowerSpire, Icecrown/ThePlagueworks, Icecrown/TheCrimsonHall, Icecrown/FrostwingHalls, Icecrown/TheFrozenThrone
zonas["631"] = { nombre = "Icecrown Citadel", jefes = { "36612", "36855", "37215", "37540", "37813", "36626", "36627", "36678", "37970", "37972", "37973", "37955", "36789", "36853", "36597" } };

-- ForgeofSouls
zonas["632"] = { nombre = "The Forge of Souls", jefes = { "36497", "36502" } };

-- Coliseum
zonas["649"] = { nombre = "Trial of the Crusader", jefes = { "34796", "35144", "34799", "34797", "34780", "34497", "34496", "34564", "34458", "34451", "34459", "34448", "34449", "34445", "34456", "34447", "34441", "34454", "34444", "34455", "34450", "34453", "34461", "34460", "34469", "34467", "34468", "34471", "34465", "34466", "34473", "34472", "34470", "34463", "34474", "34475" } };

-- TrialoftheChampion
zonas["650"] = { nombre = "Trial of the Champion", jefes = { "34657", "34701", "34702", "34703", "34705", "35569", "35570", "35571", "35572", "35617", "35119", "34928", "35451" } };

-- PitofSaron
zonas["658"] = { nombre = "Pit of Saron", jefes = { "36494", "36476", "36658", "36661" } };

-- HallsofReflection
zonas["668"] = { nombre = "Halls of Reflection", jefes = { "38112", "38113" } };

-- RubySanctum
zonas["724"] = { nombre = "The Ruby Sanctum", jefes = { "39863", "39751", "39747", "39746" } };

-- Pendientes de curar a mano (sin journal o sin solape de encuentros):
--   zonas["603"] — "Ulduar": restos sin emparejar: Flame Leviathan (33113); Ignis the Furnace Master (33118); Razorscale (33186) (orden provisional al final)
--   zonas["615"] — "The Obsidian Sanctum": restos sin emparejar: Shadron (30451); Tenebron (30452); Vesperon (30449) (orden provisional al final)
--   zonas["649"] — "Trial of the Crusader": restos sin emparejar: Faction Champions (34458/34451/34459/34448/34449/34445/34456/34447/34441/34454/34444/34455/34450/34453/34461/34460/34469/34467/34468/34471/34465/34466/34473/34472/34470/34463/34474/34475) (orden provisional al final)
--   zonas["724"] — "The Ruby Sanctum": restos sin emparejar: Baltharus the Warborn (39751); Saviana Ragefire (39747); General Zarithrian (39746) (orden provisional al final)

P.zonas = zonas;
