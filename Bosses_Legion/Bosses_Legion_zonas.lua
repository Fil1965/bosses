--[[
	Bosses_Legion_zonas.lua
		Índice de zonas del pack Legion (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de Legion (generado; nombres EN del journal, fallback esES)

-- EyeOfAzshara
zonas["1456"] = { nombre = "Eye of Azshara", jefes = { "91789", "91797", "91784", "91808", "96028" } };

-- NeltharionsLair
zonas["1458"] = { nombre = "Neltharion's Lair", jefes = { "91007", "91005", "91003", "91004" } };

-- DarkheartThicket
zonas["1466"] = { nombre = "Darkheart Thicket", jefes = { "99200", "96512", "103344", "99192" } };

-- HallsOfValor
zonas["1477"] = { nombre = "Halls of Valor", jefes = { "95674", "99868", "94960", "95833", "95675", "95676" } };

-- MawOfSouls
zonas["1492"] = { nombre = "Maw of Souls", jefes = { "96754", "96759", "96756" } };

-- VaultOfWarden
zonas["1493"] = { nombre = "Vault of the Wardens", jefes = { "95886", "95888", "95887", "95885", "96015" } };

-- BlackRookHold
zonas["1501"] = { nombre = "Black Rook Hold", jefes = { "98542", "98696", "98965", "98970", "98949" } };

-- TheArcway
zonas["1516"] = { nombre = "The Arcway", jefes = { "98205", "98206", "98203", "98207", "98208" } };

-- EmeraldNightmare
zonas["1520"] = { nombre = "The Emerald Nightmare", jefes = { "104636", "105393", "102679", "102672", "106087", "100497", "103769" } };

-- Nighthold
zonas["1530"] = { nombre = "The Nighthold", jefes = { "104881", "104415", "106643", "103758", "104154", "101002", "102263", "104528", "103685", "104288" } };

-- VioletHold
zonas["1544"] = { nombre = "Assault on Violet Hold", jefes = { "102246", "102446", "101995", "101976", "101950", "102431", "101951" } };

-- CourtofStars
zonas["1571"] = { nombre = "Court of Stars", jefes = { "104215", "104218", "104217" } };

-- TrialofValor
zonas["1648"] = { nombre = "Trial of Valor", jefes = { "114323", "114537", "114263", "114361", "114360" } };

-- ReturnToKarazhan
zonas["1651"] = { nombre = "Return to Karazhan", jefes = { "114462", "114262", "114264", "113971", "114252", "114350", "114312", "114329", "114522", "114330", "114328", "114261", "114260", "114284", "114251", "114790" } };

-- TombofSargeras
zonas["1676"] = { nombre = "Tomb of Sargeras", jefes = { "116691", "116689", "118460", "118462", "119072", "116939", "115844", "116407", "117269", "118289", "115767", "118523", "118374", "118518" } };

-- CathedralofEternalNight
zonas["1677"] = { nombre = "Cathedral of Eternal Night", jefes = { "117193", "119542", "120793", "117194" } };

-- AntorusBurningThrone
zonas["1712"] = { nombre = "Antorus, the Burning Throne", jefes = { "121975", "122369", "122333", "122367", "124828", "124445", "122450", "122104", "122477", "122135", "124158", "122578", "122468", "122467", "122469", "122366" } };

-- SeatofTriumvirate
zonas["1753"] = { nombre = "Seat of the Triumvirate", jefes = { "124870", "124872", "124874", "124871" } };

P.zonas = zonas;
