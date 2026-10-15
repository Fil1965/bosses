--[[
	Bosses_WotLK.lua
		Pack de datos de Wrath of the Lich King: mazmorras (Utgarde,
		Nexus, Azjol-Nerub, Ahn'kahet, Drak'Tharon, Gundrak, Halls,
		Trial, Forjaz/Piton, ICC 5-man) y bandas (Naxxramas, EoE, OS,
		VoA, Ulduar, ToC, ICC, RS).
		Fuentes previstas: DBM-Party-WotLK y LittleWigs_WrathOfTheLichKing
		(_doc); las bandas WotLK no tienen módulo en _doc todavía.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BossesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack WotLK.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aquí solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack WotLK incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_WotLK_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_WotLK_zonas.lua) y alimenta
-- el desplegable del minimapa.
BossesAPI.register("WotLK", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, DE = P.de, PT = P.pt, ZH = P.zh });