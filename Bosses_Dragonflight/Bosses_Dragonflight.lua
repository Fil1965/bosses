--[[
	Bosses_Dragonflight.lua
		Pack de datos de Dragonflight: mazmorras (Algeth'ar, Nokhud,
		Coalescing, Rubí, Halls of Infusion...), los megadungeons de
		temporada y bandas (Vault, Aberrus, Amirdrassil).
		Fuentes previstas: DBM-Party-Dragonflight y
		LittleWigs_Dragonflight (_doc); las bandas Dragonflight no
		tienen módulo en _doc todavía.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BossesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack Dragonflight.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aquí solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack Dragonflight incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_Dragonflight_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_Dragonflight_zonas.lua) y
-- alimenta el desplegable del minimapa.
BossesAPI.register("Dragonflight", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas });