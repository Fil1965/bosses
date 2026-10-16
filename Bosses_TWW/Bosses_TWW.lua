--[[
	Bosses_TWW.lua
		Pack de datos de The War Within completo:
		- Bandas: Nerub'ar Palace, Liberation of Undermine, Manaforge Omega.
		- Jefes de mundo de Khaz Algar.
		- Mazmorras TWW (LittleWigs_TheWarWithin).
		Los NPC/spell IDs provienen de los módulos BigWigs/LittleWigs de TWW
		instalados en el cliente. Formato multilenguaje { ES, EN }.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack TWW.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aqui solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack TWW incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_TWW_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_TWW_zonas.lua) y alimenta
-- el desplegable del minimapa.
BossesAPI.register("TWW", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, DE = P.de, PT = P.pt, ZH = P.zh, RU = P.ru, KO = P.ko });
