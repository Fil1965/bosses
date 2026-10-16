--[[
	Bosses_Legion.lua
		Pack de datos de Legion: mazmorras (Vault, Catedral, Suramar,
		Halls of Valor, Negrofaronte, Cima, Arcatraz...) y bandas
		(Tomb, EN, ToS, Antorus). Sin los megadungeons puntuales si el
		inventario de _doc no los trae.
		Fuentes previstas: DBM-Party-Legion y LittleWigs_Legion (_doc);
		las bandas Legion no tienen módulo en _doc todavía.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BossesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack Legion.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aquí solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack Legion incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_Legion_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_Legion_zonas.lua) y alimenta
-- el desplegable del minimapa.
BossesAPI.register("Legion", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, ZH = P.zh, FR = P.fr, DE = P.de, PT = P.pt, RU = P.ru, KO = P.ko });