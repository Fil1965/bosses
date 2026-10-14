--[[
	Bosses_Vanilla_zonas.lua
		Índice de zonas del pack Vanilla (Classic) (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de Vanilla (Classic) (generado; nombres EN del journal, fallback esES)

-- Retail/StormwindStockaid
zonas["34"] = { nombre = "The Stockade", jefes = { "46254", "46264", "46383", "1716", "1720", "1663", "1717", "1666", "1696" } };

-- Shared/WailingCaverns
zonas["43"] = { nombre = "Wailing Caverns", jefes = { "3671", "3670", "3669", "3653", "3674", "3673", "5775", "3654", "5912" } };

-- Retail/RazorfenKraul, Classic/RazorfenKraul
zonas["47"] = { nombre = "Razorfen Kraul", jefes = { "75001", "6168", "74948", "74462", "75247", "4421", "4422", "4424", "4425", "4428", "4842", "4420" } };

-- Classic/BlackfathomDeeps, Retail/BlackfathomDeeps, VanillaSoD_BFD
zonas["48"] = { nombre = "Blackfathom Deeps", jefes = { "4887", "74446", "201722", "74476", "74565", "74505", "75410", "74988", "74728", "4829", "75408", "213334", "6243", "204921", "4831", "204068", "4830", "4832", "209678", "202699", "207356" } };

-- Shared/Uldaman
zonas["70"] = { nombre = "Uldaman", jefes = { "6910", "6906", "6907", "6908", "7228", "7023", "7206", "7291", "4854", "2748" } };

-- Shared/Gnomeregan, VanillaSoD_Gnomeregan
zonas["90"] = { nombre = "Gnomeregan", jefes = { "7361", "217280", "7079", "220007", "6235", "220072", "6229", "215728", "7800", "218538", "218970", "218972", "218974", "218537", "218245", "218244", "218243", "218242" } };

-- Shared/SunkenTemple, VanillaSoD_SunkenTemple
zonas["109"] = { nombre = "The Temple of Atal'hakkar", jefes = { "8443", "221394", "5710", "5709", "218571", "5721", "5722", "5719", "5720", "221640", "218868", "221639", "221637", "221638", "223586", "218624", "220833", "220864", "218819", "218721", "218718", "221942", "221943" } };

-- Retail/RazorfenDowns, Classic/RazorfenDowns
zonas["129"] = { nombre = "Razorfen Downs", jefes = { "74412", "7357", "74347", "74435", "74875", "7358", "74434", "8567", "7356", "7354", "7355" } };

-- Shared/ZulFarrak
zonas["209"] = { nombre = "Zul'Farrak", jefes = { "7272", "8127", "7795", "7271", "7273", "7796", "7275", "7267" } };

-- Monasterio Escarlata clásico (sin instancia en el journal; mapa 189; kit escrito a mano)
zonas["189"] = { nombre = "Scarlet Monastery", jefes = { "3983", "4543", "3974", "6487", "3975", "4542", "3976", "3977" } };

-- Rincón de la Locura de Zul'Gurub clásico (sin instancia en el journal; mapa 309; kit escrito a mano)
zonas["309"] = { nombre = "Zul'Gurub", jefes = { "14507", "14517", "14510", "14515", "14509", "11380", "14834", "15114", "5712", "15082", "15083", "15084", "15085", "11382", "14988" } };

-- Scholomance clásica (sin instancia en el journal; mapa 289; kit escrito a mano)
zonas["289"] = { nombre = "Scholomance", jefes = { "10506", "10505", "11622", "10503", "10504", "10507", "11261", "10502", "10901", "10433", "10432", "10508", "1853" } };

-- Shared/LowerBlackrockSpire
zonas["229"] = { nombre = "Lower Blackrock Spire", jefes = { "9196", "9236", "9237", "10596", "10584", "9736", "10220", "10268", "9568", "10363", "10899", "10509", "16042", "9816", "10264", "10430", "10339", "10429" } };

-- Shared/BlackrockDepths
zonas["230"] = { nombre = "Blackrock Depths", jefes = { "9018", "9025", "9319", "9028", "9031", "9029", "9030", "9032", "9027", "9024", "9017", "9041", "9056", "9016", "9033", "8983", "9537", "9502", "9499", "9156", "9035", "9039", "9040", "9037", "9034", "9038", "9036", "9938", "9019" } };

-- VanillaOnyxia
zonas["249"] = { nombre = "Onyxia's Lair", jefes = { "10184" } };

-- Shared/Stratholme
zonas["329"] = { nombre = "Stratholme - Main Gate", jefes = { "10558", "10516", "11143", "10808", "11032", "10997", "10811", "10813", "10812", "10436", "10435", "10438", "10437", "10439", "10440" } };

-- Shared/Maraudon
zonas["349"] = { nombre = "Maraudon", jefes = { "13282", "12258", "13601", "12236", "12225", "12203", "13596", "12201" } };

-- Retail/RagefireChasm
zonas["389"] = { nombre = "Ragefire Chasm", jefes = { "61408", "61412", "61463", "61528", "11519", "11518", "11517", "11520" } };

-- MC (era clásica de los módulos + los pares SoD del remake; 227939 es el evento de banda, NO un jefe)
zonas["409"] = { nombre = "Molten Core", jefes = { "228432", "228834", "12057", "12099", "228437", "228836", "228837", "12018", "11663", "11664", "12118", "11982", "12259", "12056", "12264", "12098", "11988", "11502" } };

-- Shared/DireMaul
zonas["429"] = { nombre = "Dire Maul - Capital Gardens", jefes = { "11489", "11488", "11487", "11496", "11486", "11492", "14325", "14324", "14321", "14326", "14323", "13280", "11501", "14327", "14322", "11490" } };

-- BWL
zonas["469"] = { nombre = "Blackwing Lair", jefes = { "12435", "13020", "12017", "11983", "14601", "11981", "14020", "11583" } };

-- AQ20
zonas["509"] = { nombre = "Ruins of Ahn'Qiraj", jefes = { "15348", "15341", "15340", "15370", "15369", "15339" } };

-- AQ40 (con el Profeta Skeram del módulo, sin par del generador)
zonas["531"] = { nombre = "Temple of Ahn'Qiraj", jefes = { "15263", "15544", "15511", "15543", "15516", "15510", "15299", "15509", "15276", "15275", "15517", "15589", "15727" } };

-- VanillaNaxx/ArachnidQuarter, VanillaNaxx/PlagueQuarter, VanillaNaxx/MilitaryQuarter, VanillaNaxx/ConstructQuarter, VanillaNaxx/FrostwyrmLair
zonas["533"] = { nombre = "Naxxramas", jefes = { "15956", "15953", "15952", "15954", "15936", "16011", "16061", "16060", "16062", "16063", "16064", "16065", "16028", "15931", "15932", "15928", "15989", "15990" } };

-- BlackrockDepths
zonas["2792"] = { nombre = "Blackrock Depths", jefes = { "226302", "226303", "226305", "226314", "226316", "230219", "230217", "230218", "226304", "226315", "226307", "226310", "226309", "226313", "226311", "226312", "226308" } };

-- Pendientes de curar a mano (sin journal o sin solape de encuentros):
--   zonas["189"], zonas["289"] y zonas["309"] CURADAS a mano (las 3 bandas/desgranadas sin journal ya tienen fila);
--   las listas "sin emparejar" anteriores ya viven en su fila (generador resuelto por los módulos).
--   zonas["2784"] — sin instancia en el journal (mapa 2784; módulos: Azgaloth, Destructor's Wraith, Diathorus the Seeker, Grimroot, Hellscream's Phantom, Pyranis, Zilbagob)
--   zonas["2856"] — sin instancia en el journal (mapa 2856; módulos: Balnazzar, Beastmaster, Beatrix, Caldoran, Lillian Voss, Mason, Reborn Council, Solistrasza)

P.zonas = zonas;
