--[[
	Bosses_Dragonflight_zonas.lua
		Índice de zonas del pack Dragonflight (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de Dragonflight (generado; nombres EN del journal, fallback esES)

-- UldamanLegacyofTyr
zonas["2451"] = { nombre = "Uldaman: Legacy of Tyr", jefes = { "184018", "184125", "184422", "184124", "184580", "184581", "184582" } };

-- TheAzurevault
zonas["2515"] = { nombre = "The Azure Vault", jefes = { "186739", "186644", "186737", "186738" } };

-- TheNokhudOffensive
zonas["2516"] = { nombre = "The Nokhud Offensive", jefes = { "186151", "186616", "186339", "186338", "186615" } };

-- Neltharus
zonas["2519"] = { nombre = "Neltharus", jefes = { "189340", "181861", "189478", "189901" } };

-- BrackenhideHollow
zonas["2520"] = { nombre = "Brackenhide Hollow", jefes = { "186121", "186116", "186122", "186124", "186125", "186120" } };

-- RubyLifePools
zonas["2521"] = { nombre = "Ruby Life Pools", jefes = { "189232", "190484", "190485", "188252" } };

-- VaultoftheIncarnates
zonas["2522"] = { nombre = "Vault of the Incarnates", jefes = { "190245", "189813", "184972", "184986", "189492", "187967", "190496", "187771", "187768", "187772", "187767" } };

-- AlgetharAcademy
zonas["2526"] = { nombre = "Algeth'ar Academy", jefes = { "191736", "190609", "186951", "194181" } };

-- HallsofInfusion
zonas["2527"] = { nombre = "Halls of Infusion", jefes = { "189722", "189727", "189729", "189719" } };

-- Amirdrassil
zonas["2549"] = { nombre = "Amirdrassil, the Dream's Hope", jefes = { "208363", "208365", "208367", "204931", "209333", "200926", "208445", "206172", "200927", "209090", "208478" } };

-- Aberrus
zonas["2569"] = { nombre = "Aberrus, the Shadowed Crucible", jefes = { "199659", "201668", "201261", "201579", "201320", "201754", "201774", "201773", "201934", "200912", "200913", "200918", "202375" } };

-- DawnoftheInfinite
zonas["2579"] = { nombre = "Dawn of the Infinite", jefes = { "198997", "201792", "201788", "201790", "198995", "199000", "198933", "198996", "198999", "198998" } };

P.zonas = zonas;
