--[[
	Bosses_TBC_zonas.lua
		Índice de zonas del pack The Burning Crusade (opcional):
		instanceID → zona con nombre y ids de los jefes del pack, en orden
		de progresión de la instancia. Alimenta el radar de instancia y el
		desplegable del minimapa; el core solo lista los jefes con entrada.
		Generado con npm run generar-zonas (fuente: _doc/DBM + caché
		_nombres del journal); revisar nombres y orden a mano.
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras e instancias de The Burning Crusade (generado; nombres EN del journal, fallback esES)

-- CoT_BlackMorass
zonas["269"] = { nombre = "The Black Morass", jefes = { "17879", "17880", "17881" } };

-- Karazhan
zonas["532"] = { nombre = "Karazhan", jefes = { "16151", "16152", "15687", "16457", "15691", "16524", "15688", "15689", "15690", "17521", "21752", "21684", "17225", "17534", "17533", "18168", "16179", "16180", "16181" } };

-- Hyjal
zonas["534"] = { nombre = "The Battle for Mount Hyjal", jefes = { "17767", "17808", "17888", "17842", "17968" } };

-- Hellfire_ShatteredHalls
zonas["540"] = { nombre = "The Shattered Halls", jefes = { "16807", "20923", "16809", "16808" } };

-- Hellfire_BloodFurnace
zonas["542"] = { nombre = "The Blood Furnace", jefes = { "17381", "17380", "17377" } };

-- Hellfire_Ramp
zonas["543"] = { nombre = "Hellfire Ramparts", jefes = { "17306", "17308", "17537", "17307" } };

-- MagtheridonsLair
zonas["544"] = { nombre = "Magtheridon's Lair", jefes = { "17257" } };

-- Coil_Steamvault
zonas["545"] = { nombre = "The Steamvault", jefes = { "17797", "17796", "17798" } };

-- Coil_Underbog
zonas["546"] = { nombre = "The Underbog", jefes = { "17770", "18105", "17826", "17882" } };

-- Coil_Slavepens
zonas["547"] = { nombre = "The Slave Pens", jefes = { "17941", "17991", "17942", "40446", "25740", "25865", "25697" } };

-- Serpentshrine
zonas["548"] = { nombre = "Serpentshrine Cavern", jefes = { "21216", "21217", "21215", "21214", "21213", "21212" } };

-- TheEye
zonas["550"] = { nombre = "The Eye", jefes = { "19514", "19516", "18805", "19622" } };

-- TK_Arcatraz
zonas["552"] = { nombre = "The Arcatraz", jefes = { "20870", "20885", "20886", "20912" } };

-- TK_Botanica
zonas["553"] = { nombre = "The Botanica", jefes = { "17976", "17975", "17978", "17980", "17977" } };

-- TK_Mechanar
zonas["554"] = { nombre = "The Mechanar", jefes = { "19219", "19221", "19220", "19218", "19710" } };

-- Auct_ShadowLabyrinth
zonas["555"] = { nombre = "Shadow Labyrinth", jefes = { "18731", "18667", "18732", "18708" } };

-- Auct_SethekkHalls
zonas["556"] = { nombre = "Sethekk Halls", jefes = { "18472", "23035", "18473" } };

-- Auct_Tombs
zonas["557"] = { nombre = "Mana-Tombs", jefes = { "18341", "18343", "22930", "18344" } };

-- Auct_Crypts
zonas["558"] = { nombre = "Auchenai Crypts", jefes = { "18371", "18373" } };

-- CoT_OldHillsbrad
zonas["560"] = { nombre = "Old Hillsbrad Foothills", jefes = { "17848", "17862", "18096" } };

-- BlackTemple
zonas["564"] = { nombre = "Black Temple", jefes = { "22887", "22898", "22841", "22871", "22948", "23420", "22947", "22949", "22950", "22951", "22952", "22917" } };

-- GruulsLair
zonas["565"] = { nombre = "Gruul's Lair", jefes = { "18831", "18832", "18834", "18835", "18836", "19044" } };

-- Sunwell
zonas["580"] = { nombre = "Sunwell Plateau", jefes = { "24850", "24882", "25038", "25165", "25166", "25741", "25315" } };

-- MagistersTerrace
zonas["585"] = { nombre = "Magisters' Terrace", jefes = { "24723", "24744", "24560", "24664" } };

-- ZulAman (banda de TBC; el generador no la emparejó: curada a mano)
zonas["568"] = { nombre = "Zul'Aman", jefes = { "23574", "23576", "23578", "23577", "24239", "23863" } };

-- Pendientes de curar a mano (sin journal o sin solape de encuentros):
--   zonas["532"] — "Karazhan": restos sin emparejar: The Big Bad Wolf (17521); Chess Event (21752/21684); Nightbane (Raid) (17225); Romulo and Julianne (17534/17533); Wizard of Oz (18168) (orden provisional al final)
--   zonas["554"] — "The Mechanar": restos sin emparejar: Gatewatcher Gyro-Kill (19218); Gatewatcher Iron-Hand (19710) (orden provisional al final)

P.zonas = zonas;
