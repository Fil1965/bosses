--[[
	Bosses_Forever_enc.lua
		Índice de encuentros del pack: encounterID → NPC IDs (estilo DBM,
		SetEncounterID/SetCreatureID). El core lo usa para resolver
		ENCOUNTER_START sin depender del diario (EJ).

		PENDIENTE: los NPC ids de Forever no son públicos todavía (los
		módulos DBM-Party-Forever del cliente traen el SetCreatureID
		comentado: --mod:SetCreatureID(11517)). Los ids se capturan
		in-game con el modo depuración del core (/bosses DEBUG on +
		/bosses log: línea «explicado (EJ)» con el id que resuelve el
		diario del cliente). Cada encounter de la lista se completa con:

			enc["<encounterID>"] = "<npc id>"; -- <nombre>

		En los packs: los nombres son element-1 (el del jefe, no el del
		encuentro) y un encounter puede llevar varios ids separados por
		coma (candidatos).

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local enc = {};

-- Mazmorras de Forever (DBM-Party-Forever) -------------------------------
-- Lista de trabajo (encounterID · zona · nombre EN / ES):
--
--   Dalaran · 2959
--     3298 · Arcane Anomaly / Anomalía Arcana
--     3299 · Fel Ancient / Anciano vil
--     3300 · Mana Devourer / Devorador de maná
--     3301 · Mana Elemental / Elemental de maná
--     3302 · Unstable Sentinel / Centinela inestable
--     3303 · Shade of the Archmage / Sombra del archimago
--     3310 · Lyn the Ignored / Lyn el Ignorado
--     3311 · Atrexis the Grave Knight / Atrexis el Caballero de la Tumba
--     3312 · Mana Wraith / Ánima de maná
--
--   Excavation Site · 2998
--     3480 · Saltspine / Espinasal
--     3481 · Shadetooth / Sombradiente
--     3482 · Relic Guardian / Guardián de reliquias
--     3644 · Highland Horror / Horror de las Tierras Altas
--
--   Ruins of Lordaeron · 2999
--     3353 · Witherfang / Colmimarchito
--     3354 · Rath'mael / Rath'mael
--     3355 · The Butcher / El Carnicero
--     3357 · The Abandoned / El Abandonado
--     3408 · Lordaeron Captain / Capitán de Lordaeron
--     3411 · Viktor the Vile / Viktor el Abyecto
--     3412 · Bjork / Bjork
--
--   Hall of Thanes · 3065
--     3493 · Faldrim Anvilmar / Faldrim Yunquemar
--     3494 · Plunder / Saqueo
--     3495 · Infurnus / Infurnus
--     3496 · Durgen Dirgehammer / Durgen Martillo Funesto
--
-- (La banda de Forever —el Núcleo Fundido— aún no está en el módulo DBM:
-- cuando aparezca, sus encounterIDs y map ids se añaden aquí.)

P.enc = enc;
