--[[
	Bosses_Cata.lua
		Pack de datos de Cataclysm completo:
		- Base histórica 2011-2013 (mazmorras heroicas, ZA/ZG 4.1, raids),
		  migrada desde localization.es.lua (backup en _backups).
		- Mazmorras 4.3 (End Time, Hour of Twilight, Well of Eternity) y
		  Throne of the Tides remasterizada (12.x), de LittleWigs_Cataclysm.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BossesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack Cata.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aqui solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil then
	print("|cff33ff99Bosses|r: pack Cata incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) es opcional (ver Bosses_Cata_enc.lua);
-- el de zonas (instanceID → jefes) también (Bosses_Cata_zonas.lua) y alimenta
-- el desplegable del minimapa.
BossesAPI.register("Cata", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, DE = P.de  });
