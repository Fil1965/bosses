--[[
	Bosses_Midnight_zonas.lua
		Índice de zonas del pack Midnight (opcional): instanceID → zona
		con nombre y ids de los jefes del pack. Los ids de zona de los
		lairs vienen del SetZone de los módulos DBM (1592 Sporefall,
		3095 Unbinding of Kith'ix, 2987 Tidebound Grotto).

		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Bandas
zonas["2912"] = { nombre = "The Voidspire", jefes = { "240431", "240435", "242056", "240434", "240432", "240430" } };
zonas["2939"] = { nombre = "The Dreamrift", jefes = { "245569" } };
zonas["2913"] = { nombre = "March on Quel'Danas", jefes = { "240387", "240391" } };
zonas["3004"] = { nombre = "The Venomous Abyss", jefes = { "257911", "261835", "259927", "258557", "257347", "257361", "259181", "257758" } };

-- Lairs
zonas["1592"] = { nombre = "Sporefall", jefes = { "238693" } };
zonas["3095"] = { nombre = "The Unbinding of Kith'ix", jefes = { "267861" } };
zonas["2987"] = { nombre = "Tidebound Grotto", jefes = { "252959" } };

-- Mazmorras
zonas["2993"] = { nombre = "Altar of Fangs", jefes = { "259445", "259446", "267797" } };
zonas["2825"] = { nombre = "Den of Nalorakk", jefes = { "258877", "261053", "248710" } };
zonas["2811"] = { nombre = "Magisters' Terrace", jefes = { "231861", "231865", "231864", "231863" } };
zonas["2874"] = { nombre = "Maisara Caverns", jefes = { "247570", "248605", "248595" } };
zonas["2813"] = { nombre = "Murder Row", jefes = { "252458", "237415", "234647", "234649" } };
zonas["2915"] = { nombre = "Nexus-Point Xenas", jefes = { "241539", "241546", "254227" } };
zonas["2859"] = { nombre = "The Blinding Vale", jefes = { "243028", "244887", "245912", "247676" } };
zonas["2923"] = { nombre = "Voidscar Arena", jefes = { "239008", "239167", "238887" } };
zonas["2805"] = { nombre = "Windrunner Spire", jefes = { "231606", "231626", "231631", "231636" } };

P.zonas = zonas;
