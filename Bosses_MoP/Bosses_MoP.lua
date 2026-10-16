--[[
	Bosses_MoP.lua
		Pack de datos de Mists of Pandaria: bandas, mazmorras y jefes de
		mundo. Generado con scripts/generar-pack-mop.mjs desde los módulos
		DBM de MoP en _doc (DBM-Raids-MoP, DBM-Party-MoP, DBM-Pandaria).
		Las tácticas telegráficas, estilo de la casa Bosses.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack MoP.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aqui solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack MoP incompleto (falta un fichero de idioma).");
	return;
end

BossesAPI.register("MoP", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, PT = P.pt, DE = P.de, ZH = P.zh, RU = P.ru, KO = P.ko });
