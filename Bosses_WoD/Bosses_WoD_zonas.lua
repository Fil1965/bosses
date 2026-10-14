--[[
	Bosses_WoD_zonas.lua
		Índice de zonas del pack Warlords of Draenor (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de Warlords of Draenor (generado; nombres EN del journal, fallback esES)

-- BloodmaulSlagMines
zonas["1175"] = { nombre = "Bloodmaul Slag Mines", jefes = { "74787", "74790", "74366", "74475", "75786" } };

-- SMBurialGrounds
zonas["1176"] = { nombre = "Shadowmoon Burial Grounds", jefes = { "75452", "76407", "75829", "75509" } };

-- Auchindoun
zonas["1182"] = { nombre = "Auchindoun", jefes = { "75927", "76177", "75839", "77734" } };

-- IronDocks
zonas["1195"] = { nombre = "Iron Docks", jefes = { "80805", "80816", "80808", "81297", "81305", "79852", "83612" } };

-- BlackrockFoundry
zonas["1205"] = { nombre = "Blackrock Foundry", jefes = { "77325", "76809", "76806", "76865", "76877", "76974", "76973", "77557", "77231", "77477", "76814", "77692", "77182", "76906" } };

-- GrimRailDepot
zonas["1208"] = { nombre = "Grimrail Depot", jefes = { "79545", "77803", "77816", "80005" } };

-- Skyreach
zonas["1209"] = { nombre = "Skyreach", jefes = { "76141", "75964", "76143", "76266" } };

-- Highmaul
zonas["1228"] = { nombre = "Highmaul", jefes = { "78491", "78714", "79015", "77428", "78623", "78948", "80557", "80551", "77404", "78238", "78237" } };

-- EverBloom
zonas["1279"] = { nombre = "The Everbloom", jefes = { "83894", "83892", "83893", "82682", "81522", "84550", "83846" } };

-- UBRS
zonas["1358"] = { nombre = "Upper Blackrock Spire", jefes = { "76413", "76021", "76585", "79912", "80098", "77120" } };

-- HellfireCitadel
zonas["1448"] = { nombre = "Hellfire Citadel", jefes = { "91331", "90199", "90019", "92142", "92144", "92146", "90284", "90316", "90378", "90435", "91349", "92330", "90269", "93068", "89890" } };

P.zonas = zonas;
