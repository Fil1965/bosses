--[[
	Bosses_BfA.lua
		Pack de datos de Battle for Azeroth: mazmorras (Freehold,
		Torreones, Atal'Dazar, Rey Silbador, Asedio de Boralus,
		Polillas de Nazmir...) y bandas (Uldir, BoD, EP, Nya'lotha).
		Fuentes previstas: DBM-Party-BfA y LittleWigs_BattleForAzeroth
		(_doc); las bandas BfA no tienen módulo en _doc todavía.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BossesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack BfA.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aquí solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack BfA incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_BfA_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_BfA_zonas.lua) y alimenta
-- el desplegable del minimapa.
BossesAPI.register("BfA", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, DE = P.de, PT = P.pt, ZH = P.zh, RU = P.ru, KO = P.ko });