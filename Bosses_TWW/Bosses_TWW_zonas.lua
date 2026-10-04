--[[
	Bosses_TWW_zonas.lua
		Índice de zonas del pack TWW (opcional): instanceID → zona con
		nombre y ids de los jefes del pack, en el orden del fichero de
		datos. Alimenta el radar de instancia y el desplegable del
		minimapa; el core solo lista los jefes con entrada.

		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Bandas
zonas["2657"] = { nombre = "Nerub'ar Palace", jefes = { "214503", "214502", "215657", "214504", "214506", "217748", "217489", "218370" } };
zonas["2769"] = { nombre = "Liberation of Undermine", jefes = { "225821", "229181", "228648", "230322", "230583", "228458", "229953", "231075" } };
zonas["2810"] = { nombre = "Manaforge Omega", jefes = { "233814", "233815", "233816", "233817", "237661", "237861", "237763", "241517" } };

-- Mazmorras
zonas["2660"] = { nombre = "Ara-Kara, City of Echoes", jefes = { "215405", "213179", "215407" } };
zonas["2661"] = { nombre = "Cinderbrew Meadery", jefes = { "218000", "210271", "214661", "210267" } };
zonas["2669"] = { nombre = "City of Threads", jefes = { "216648", "216658", "216619", "216320" } };
zonas["2651"] = { nombre = "Darkflame Cleft", jefes = { "208743", "210149", "208745", "212777" } };
zonas["2830"] = { nombre = "Eco-Dome Aldani", jefes = { "234893", "234935", "234933" } };
zonas["2773"] = { nombre = "Operation: Floodgate", jefes = { "226398", "226403", "226404", "226396" } };
zonas["2649"] = { nombre = "Priory of the Sacred Flame", jefes = { "207939", "207946", "207940" } };
zonas["2662"] = { nombre = "The Dawnbreaker", jefes = { "211089", "213937", "211087" } };
zonas["2648"] = { nombre = "The Rookery", jefes = { "209230", "207205", "207207" } };
zonas["2652"] = { nombre = "The Stonevault", jefes = { "210108", "213217", "210156", "213119" } };

P.zonas = zonas;
