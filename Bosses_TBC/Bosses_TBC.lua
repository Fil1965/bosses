--[[
	Bosses_TBC.lua
		Pack de datos de The Burning Crusade: mazmorras (Hellfire,
		Coilfang, Auchindoun, Tempest Keep, Magisters) y bandas (Karazhan,
		Gruul, Magtheridon, SSC, Hyjal, BT, Sunwell).
		Fuentes previstas: DBM-Party-BC y LittleWigs_BurningCrusade (_doc);
		las bandas TBC no tienen módulo en _doc todavía.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BossesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack TBC.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en/_de/_fr); aquí solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack TBC incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_TBC_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_TBC_zonas.lua) y alimenta
-- el desplegable del minimapa.
BossesAPI.register("TBC", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, DE = P.de, PT = P.pt, ZH = P.zh, RU = P.ru, KO = P.ko });