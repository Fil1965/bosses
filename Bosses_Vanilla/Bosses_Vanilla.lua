--[[
	Bosses_Vanilla.lua
		Pack de datos de Vanilla (Classic): mazmorras (SFK, Deadmines...)
		y bandas (MC, BWL, AQ, Naxxramas).
		Fuentes previstas: DBM-Party-Vanilla y LittleWigs_Classic (_doc);
		las bandas del Classic no tienen módulo en _doc todavía.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BossesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack Vanilla.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en/_fr/_de); aquí solo se registran.
-- FR/DE (2026-10): el pack Vanilla quedó COMPLETO en los cuatro idiomas
-- (334 entradas idénticas ×4, paridad exacta) → conectados a .toc y registro.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack Vanilla incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_Vanilla_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_Vanilla_zonas.lua) y alimenta
-- el desplegable del minimapa.
BossesAPI.register("Vanilla", { ES = P.es, EN = P.en, FR = P.fr, DE = P.de, ENC = P.enc, ZON = P.zonas, PT = P.pt, ZH = P.zh });