--[[
	Bosses_MoP_zonas.lua
		Índice de zonas del pack: instanceID (mapa MoP Classic) → nombre
		y jefes del pack. Generado con scripts/generar-pack-mop.mjs.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local zonas = {};

zonas["959"] = { nombre = "Shado-Pan Monastery", jefes = { "56747", "56541", "56719", "56884" } };
zonas["960"] = { nombre = "Temple of the Jade Serpent", jefes = { "56732", "59051", "56448", "56439" } };
zonas["961"] = { nombre = "Stormstout Brewery", jefes = { "56637", "56717", "59479" } };
zonas["962"] = { nombre = "Gate of the Setting Sun", jefes = { "56906", "56589", "56636", "56877" } };
zonas["994"] = { nombre = "Mogu'shan Palace", jefes = { "61398", "61442", "61243" } };
zonas["996"] = { nombre = "Terrace of Endless Spring", jefes = { "60585", "60999", "62442", "62983" } };
zonas["1001"] = { nombre = "Scarlet Halls", jefes = { "59150", "58632", "59303" } };
zonas["1004"] = { nombre = "Scarlet Monastery (MoP)", jefes = { "59789", "59223", "60040" } };
zonas["1007"] = { nombre = "Scholomance", jefes = { "58633", "59184", "59153", "58722", "59080" } };
zonas["1008"] = { nombre = "Mogushan Vaults", jefes = { "60009", "60051", "60399", "60143", "60701", "60410" } };
zonas["1009"] = { nombre = "Heart of Fear", jefes = { "63191", "62397", "62511", "62837", "62543", "62980" } };
zonas["1011"] = { nombre = "Siege of Niuzao Temple", jefes = { "61485", "62205", "61567", "61634" } };
zonas["1098"] = { nombre = "Throne of Thunder", jefes = { "68078", "68905", "67977", "69078", "68036", "69712", "69017", "68476", "69427", "69465", "68065", "68397", "69473" } };
zonas["1136"] = { nombre = "Siege of Orgrimmar", jefes = { "71152", "73720", "71454", "71479", "71529", "71466", "71504", "71543", "71515", "71734", "71859", "72311", "71865", "72276" } };

P.zonas = zonas;
