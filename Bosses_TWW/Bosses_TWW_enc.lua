--[[
	Bosses_TWW_enc.lua
		Índice de encuentros del pack: encounterID → NPC IDs del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		npm run comparar-dbm (fuente: _doc/DBM) y curado a mano. El core
		lo usa para resolver ENCOUNTER_START sin depender del diario (EJ).

		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

-- Mazmorras de The War Within (DBM-Party-WarWithin) ------------------------

-- Ara-Kara, City of Echoes (2660)
enc["2906"] = "215405"; -- Anub'zekt
enc["2926"] = "213179"; -- Avanoxx
enc["2901"] = "215407"; -- Ki'katal the Harvester

-- Cinderbrew Meadery (2661)
enc["2931"] = "218000"; -- Benk Abejorro
enc["2900"] = "210271"; -- Maestro cervecero Aldryr
enc["2929"] = "210267"; -- I'pa

-- City of Threads (2669)
enc["2908"] = "216648,216649"; -- Fangs of the Queen
enc["2909"] = "216658"; -- Izo, the Grand Splicer
enc["2907"] = "216619"; -- Orator Krix'vizk
enc["2905"] = "216320"; -- The Coaglamation

-- Darkflame Cleft (2651)
enc["2826"] = "208743"; -- Blazikon
enc["2829"] = "210149"; -- Ol' Waxbeard
enc["2787"] = "208745"; -- The Candle King
enc["2788"] = "208747"; -- The Darkness

-- Eco-Dome Aldani (2830)
enc["3107"] = "234893"; -- Azhiccar
enc["3109"] = "234935"; -- Soul-Scribe
enc["3108"] = "234933,237514"; -- Taah'bat and A'wazj

-- Operation: Floodgate (2773)
enc["3020"] = "226398"; -- Big M.O.M.M.A.
enc["3019"] = "226403,226402"; -- Demolition Duo (Keeza y Bront)
enc["3053"] = "226396"; -- Swampface

-- Priory of the Sacred Flame (2649)
enc["2835"] = "207939"; -- Baron Braunpyke
enc["2847"] = "207946"; -- Captain Dailcry
enc["2848"] = "207940"; -- Prioress Murrpray

-- The Dawnbreaker (2662)
enc["2838"] = "211089"; -- Anub'ikkaj
enc["2839"] = "213937"; -- Rasha'nan
enc["2837"] = "211087"; -- Speaker Shadowcrown

-- The Rookery (2648)
enc["2816"] = "209230"; -- Kyrioss
enc["2861"] = "207205"; -- Stormguard Gorren
enc["2836"] = "207207"; -- Voidstone Monstrosity

-- The Stonevault (2652)
enc["2854"] = "210108"; -- E.D.N.A.
enc["2888"] = "213217,213216"; -- Master Machinists (Brokk y Dorlita)
enc["2883"] = "213119"; -- Void Speaker Eirich
enc["2880"] = "210156"; -- Skarmorak

-- Pendientes (sin entrada en el pack; el modo depuración los anotará):
--   Goldie Baronbottom (ENC 2930, CID de DBM 218523; nuestra entrada es
--   214661, pendiente de confirmar), Geez Nuts (ENC 3054, CID 236950) y
--   los delves de TWW: Underpin's Lair (3126/3138), Voidrazor Sanctuary
--   (3326/3325), Zekvir's Lair (2987/2985).

P.enc = enc;