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

-- Operation: Floodgate (2773) — Geezle (remaster: el NPC live de DBM es 236950,
-- el del GUID/BigWigs es 226404; los dos van de candidatos, el primero tiene entrada)
enc["3054"] = "226404,236950"; -- Geezle Gigazap

-- Pendientes (sin entrada en el pack; el modo depuración los anotará):
--   Goldie Baronbottom (ENC 2930, CID de DBM 218523; nuestra entrada es
--   214661, pendiente de confirmar) y
--   los delves de TWW: Underpin's Lair (3126/3138), Voidrazor Sanctuary
--   (3326/3325), Zekvir's Lair (2987/2985).

-- Bandas (curado de BigWigs_TheWarWithin — SetEncounterID/RegisterEnableMob;
-- el módulo DBM-Raids-WarWithin no está en _doc) --

-- Nerub'ar Palace (2657)
enc["2898"] = "214503"; -- Sikran, Capitán de los Sureki
enc["2902"] = "215657"; -- Ulgrax el Devorador
enc["2917"] = "214502"; -- The Bloodbound Horror
enc["2918"] = "214504"; -- Rasha'nan
enc["2919"] = "214506"; -- Broodtwister Ovi'nax
enc["2920"] = "217748"; -- Nexus-Princess Ky'veza
enc["2921"] = "217489,217491"; -- The Silken Court (Anub'arash y Takazj)
enc["2922"] = "218370"; -- Reina Ansurek

-- Liberation of Undermine (2769)
enc["3009"] = "225821,225822"; -- Vexie and the Geargrinders
enc["3010"] = "229181,229177"; -- Cauldron of Carnage (Flarendo y Torq)
enc["3011"] = "228648"; -- Rik Reverb
enc["3012"] = "230322"; -- Stix Bunkjunker
enc["3013"] = "230583"; -- Sprocketmonger Lockenstock
enc["3014"] = "228458"; -- The One-Armed Bandit
enc["3015"] = "229953"; -- Mug'Zee, Heads of Security
enc["3016"] = "231075"; -- Chrome King Gallywix

-- Manaforge Omega (2810)
enc["3122"] = "237661,237660,237662"; -- The Soul Hunters (las tres cazadoras)
enc["3129"] = "233814"; -- Plexus Sentinel
enc["3130"] = "233816"; -- Soulbinder Naazindhri
enc["3131"] = "233815"; -- Loom'ithar
enc["3132"] = "233817"; -- Forgeweaver Araz
enc["3133"] = "237861"; -- Fractillus
enc["3134"] = "237763"; -- Nexus-King Salhadaar
enc["3135"] = "241517,234478,233824"; -- Dimensius, the All-Devouring (P1/P2/P3)

P.enc = enc;