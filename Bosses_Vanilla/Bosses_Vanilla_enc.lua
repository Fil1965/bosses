--[[
	Bosses_Vanilla_enc.lua
		Índice de encuentros del pack: encounterID → NPC IDs del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		npm run comparar-dbm (fuente: _doc/DBM) y curado a mano. El core
		lo usa para resolver ENCOUNTER_START sin depender del diario (EJ).
		Esqueleto inicial: vacío hasta poblar los datos (_es/_en) y
		regenerar la propuesta.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

-- SIN ENC: Jefe festivo de Hallow's End (23682 cuerpo, 23775 cabeza) — resuelve por GUID.

P.enc = enc;