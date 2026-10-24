--[[
	Bosses_Forever_zonas.lua
		Índice de zonas del pack Forever (opcional): map id → zona con
		nombre y ids de los jefes del pack. Los ids de zona vienen del
		SetZone de los módulos DBM-Party-Forever (2959, 2998, 2999, 3065:
		map ids propios de Forever, distintos de los de retail).

		PENDIENTE: la lista de jefes por zona se rellena con los NPC ids
		capturados in-game (misma captura que el índice ENC).

		Los nombres de instancia son los del módulo DBM (rev 20261019); en
		la revisión anterior se llamaban «The Shaper's Terrace» (2959) y
		«Kroldok Stronghold» (2998). El nombre definitivo es el del
		cliente (ES): se confirma in-game.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local zonas = {};

-- Mazmorras de Forever (DBM-Party-Forever)
zonas["2959"] = { nombre = "City of Dalaran", jefes = { } };
zonas["2998"] = { nombre = "Excavation Site", jefes = { } };
zonas["2999"] = { nombre = "Ruins of Lordaeron", jefes = { } };
zonas["3065"] = { nombre = "Hall of Thanes", jefes = { } };

-- Mazmorras clásicas (contenido de Classic que Forever también juega).
-- Los map ids son los del cliente clásico: PROVISIONALES hasta confirmarlos
-- in-game en el cliente Forever.
zonas["389"] = { nombre = "Ragefire Chasm", jefes = { "11520", "11518", "11519", "11517" } };
zonas["43"] = { nombre = "Wailing Caverns", jefes = { "3671", "3669", "3670", "3673", "3653", "3674", "5775", "3654", "5912" } };
zonas["48"] = { nombre = "Blackfathom Deeps", jefes = { "4887", "4831", "6243", "4832", "4829", "4830" } };
zonas["34"] = { nombre = "The Stockade", jefes = { "1696", "1663", "1666", "1717", "1720", "1716" } };
zonas["90"] = { nombre = "Gnomeregan", jefes = { "7361", "7079", "6235", "6229", "7800" } };
zonas["47"] = { nombre = "Razorfen Kraul", jefes = { "4424", "4422", "4425", "6168", "4420", "4421", "4428", "4842" } };
zonas["189"] = { nombre = "Scarlet Monastery", jefes = { "3983", "4543", "4542", "3974", "6487", "3975", "3976", "3977", "23682", "23775" } };
zonas["129"] = { nombre = "Razorfen Downs", jefes = { "7357", "7355", "7356", "7354", "8567", "7358" } };
zonas["70"] = { nombre = "Uldaman", jefes = { "6910", "6906", "6907", "6908", "7206", "7023", "7291", "4854", "7228", "2748" } };
zonas["209"] = { nombre = "Zul'Farrak", jefes = { "8127", "7272", "7271", "7273", "7795", "7796", "7275", "7267" } };
zonas["349"] = { nombre = "Maraudon", jefes = { "12203", "13282", "12258", "12236", "12225", "13601", "13596", "12201" } };
zonas["109"] = { nombre = "Sunken Temple", jefes = { "5710", "5719", "5720", "5721", "5722", "5712", "5709", "8443" } };
zonas["289"] = { nombre = "Scholomance", jefes = { "10506", "10505", "11622", "10503", "10504", "10507", "11261", "10502", "10901", "10433", "10432", "10508", "1853" } };
zonas["230"] = { nombre = "Blackrock Depths", jefes = { "9018", "9025", "9319", "9028", "9031", "9029", "9030", "9032", "9027", "9024", "9017", "9041", "9056", "9016", "9033", "8983", "9537", "9502", "9499", "9156", "9035", "9039", "9040", "9037", "9034", "9038", "9036", "9938", "9019" } };
zonas["429"] = { nombre = "Dire Maul", jefes = { "11489", "11488", "11487", "11496", "11486", "11492", "14325", "14324", "14321", "14326", "14323", "13280", "11501", "14327", "14322", "11490" } };
zonas["229"] = { nombre = "Lower/Upper Blackrock Spire", jefes = { "9196", "9236", "9237", "10596", "10584", "9736", "10220", "10268", "9568", "10363", "10899", "10509", "16042", "9816", "10264", "10430", "10339", "10429" } };
zonas["329"] = { nombre = "Stratholme", jefes = { "10516", "11032", "10808", "10997", "10558", "10811", "10812", "10813", "11143", "10435", "10437", "10436", "10438", "10439", "10440" } };
zonas["249"] = { nombre = "Onyxia's Lair", jefes = { "10184" } };

zonas["36"] = { nombre = "Deadmines", jefes = { "644", "642", "643", "1763", "646", "647", "639", "3586", "645" } };
zonas["33"] = { nombre = "Shadowfang Keep", jefes = { "3887", "3886", "4275", "4278", "3872", "4274", "4279", "3914", "3927" } };

P.zonas = zonas;
