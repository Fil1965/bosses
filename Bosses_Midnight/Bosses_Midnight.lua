--[[
	Bosses_Midnight.lua
		Pack de datos: bandas, mazmorras y jefes de mundo de Midnight.
		Los NPC IDs y spell IDs provienen de los módulos BigWigs/LittleWigs
		de Midnight instalados en el cliente y de Wowhead (créditos a sus
		contribuidores); las tácticas telegráficas, estilo de la casa Bosses.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack Midnight.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aqui solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack Midnight incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional: si falta, el pack
-- sigue funcionando y el core resuelve por las vías clásicas. El de zonas
-- (instanceID → jefes, Bosses_Midnight_zonas.lua) alimenta el desplegable
-- del minimapa.
BossesAPI.register("Midnight", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, DE = P.de });
