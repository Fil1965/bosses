--[[
	Bosses_BfA_zonas.lua
		Índice de zonas del pack Battle for Azeroth (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de Battle for Azeroth (generado; nombres EN del journal, fallback esES)

-- TheMotherload
zonas["1594"] = { nombre = "The MOTHERLODE!!", jefes = { "129227", "129214", "129232", "132713", "129231" } };

-- Freehold
zonas["1754"] = { nombre = "Freehold", jefes = { "126845", "126847", "126848", "126983", "126969", "126832" } };

-- KingsRest
zonas["1762"] = { nombre = "Kings' Rest", jefes = { "135475", "135470", "135472", "136160", "135322", "134993" } };

-- AtalDazar
zonas["1763"] = { nombre = "Atal'Dazar", jefes = { "122967", "122963", "122965", "122968" } };

-- TolDagor
zonas["1771"] = { nombre = "Tol Dagor", jefes = { "127484", "127503", "127479", "127490" } };

-- SiegeofBoralus
zonas["1822"] = { nombre = "Siege of Boralus", jefes = { "128651", "129208", "120553", "128650", "130834" } };

-- TheUnderrot
zonas["1841"] = { nombre = "The Underrot", jefes = { "131318", "131817", "131383", "133007" } };

-- Uldir
zonas["1861"] = { nombre = "Uldir", jefes = { "133298", "132998", "135452", "134546", "137119", "134442", "134445", "138967" } };

-- WaycrestManor
zonas["1862"] = { nombre = "Waycrest Manor", jefes = { "131864", "135358", "135359", "135360", "131823", "131824", "131825", "131863", "260551", "131527", "131545" } };

-- ShrineoftheStorm
zonas["1864"] = { nombre = "Shrine of the Storm", jefes = { "134056", "134060", "134063", "134058", "134069" } };

-- TempleofSethraliss
zonas["1877"] = { nombre = "Temple of Sethraliss", jefes = { "133379", "133944", "133392", "133389", "133384" } };

-- BattleofDazaralor
zonas["2070"] = { nombre = "Battle of Dazar'alor", jefes = { "144683", "144680", "144747", "144767", "144963", "144941", "144638", "144637", "144691", "144692", "144693", "144690", "145261", "145616", "144796", "146251", "146253", "146256", "146409" } };

-- CrucibleofStorms
zonas["2096"] = { nombre = "Crucible of Storms", jefes = { "144755", "144754", "145371" } };

-- Mechagon
zonas["2097"] = { nombre = "Operation: Mechagon", jefes = { "150222", "150190", "150159", "150396", "144249", "150397", "144246", "144248", "153755", "150712", "144244", "145185" } };

-- EternalPalace
zonas["2164"] = { nombre = "The Eternal Palace", jefes = { "151881", "150653", "152236", "152128", "152910", "152364", "152852", "152853", "150859" } };

-- Nyalotha
zonas["2217"] = { nombre = "Ny'alotha, the Waking City", jefes = { "157439", "156575", "157602", "158328", "156523", "158041", "156866", "157231", "157253", "157254", "157620", "157354", "156818" } };

-- Curada a mano 2026-10 (esqueleto BfA): 2070 + las variantes de facción de BoD (Campeón/Conclaves/Grong/Jadefire; antes quedaban sin emparejar y un "2" artificio) y 1822 + Redhook/Bainbridge (128650/130834).

P.zonas = zonas;
