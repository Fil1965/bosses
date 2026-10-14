--[[
	Bosses_Shadowlands_zonas.lua
		Índice de zonas del pack Shadowlands (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de Shadowlands (generado; nombres EN del journal, fallback esES)

-- SanguineDepths
zonas["2284"] = { nombre = "Sanguine Depths", jefes = { "162103", "162099", "162102", "162100" } };

-- SpiresofAscension
zonas["2285"] = { nombre = "Spires of Ascension", jefes = { "162061", "162059", "163077", "162060", "162058" } };

-- TheNecroticWake
zonas["2286"] = { nombre = "The Necrotic Wake", jefes = { "163157", "162691", "162693", "162689" } };

-- HallsofAtonement
zonas["2287"] = { nombre = "Halls of Atonement", jefes = { "164185", "165408", "165410", "164218" } };

-- Plaguefall
zonas["2289"] = { nombre = "Plaguefall", jefes = { "164967", "164266", "164255", "164267" } };

-- MistsofTirnaScithe
zonas["2290"] = { nombre = "Mists of Tirna Scithe", jefes = { "164567", "164501", "164517" } };

-- DeOtherSide
zonas["2291"] = { nombre = "De Other Side", jefes = { "164450", "166473", "169769", "164555", "164556" } };

-- TheaterofPain
zonas["2293"] = { nombre = "Theater of Pain", jefes = { "164451", "164463", "164461", "162317", "162309", "165946", "162329" } };

-- CastleNathria
zonas["2296"] = { nombre = "Castle Nathria", jefes = { "165066", "166644", "164261", "165759", "165521", "164406", "167406", "164407", "168112", "168113", "166971", "166969", "166970" } };

-- Tazavesh
zonas["2441"] = { nombre = "Tazavesh, the Veiled Market", jefes = { "175663", "175646", "176564", "175806", "177269", "176556", "176555", "176705", "175546", "175616" } };

-- SanctumOfDomination
zonas["2450"] = { nombre = "Sanctum of Domination", jefes = { "175730", "175731", "175559", "176523", "175729", "175727", "175732", "175725", "175726", "175611" } };

-- Sepulcher
zonas["2481"] = { nombre = "Sepulcher of the First Ones", jefes = { "181954", "183501", "181224", "180906", "182169", "181398", "181399", "181548", "181551", "181546", "181549", "182777", "181395", "180990", "180773" } };

P.zonas = zonas;
