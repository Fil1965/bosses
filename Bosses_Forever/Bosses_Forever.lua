--[[
	Bosses_Forever.lua
		Pack de datos: mazmorras y bandas de WoW Forever (rama Camelot,
		Classic+; cliente 1.60.1 → interfaz 16001).

		Forever es una línea temporal PROPIA: sus NPC ids y encounterIDs no
		son los de retail ni los del Clásico, así que este pack vive
		separado y su .toc declara solo 16001 (así el cliente Forever lo
		carga y los packs retail/clásico —que no declaran 16001— no).

		Fuentes: módulo DBM-Party-Forever del cliente (encounterIDs y map
		ids de zona); los NPC ids se capturan in-game (el modo depuración
		del core los resuelve por el diario: /bosses DEBUG on + /bosses log).

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Bosses en el .toc)
if BossesAPI == nil or BossesAPI.register == nil then
	print("|cff33ff99Bosses|r: core de Bosses demasiado antiguo para el pack Forever.");
	return;
end

-- Los datos viven en los ficheros de idioma (_es/_en); aquí solo se registran.
local _, P = ...;
if P.es == nil or P.en == nil or P.ko == nil then
	print("|cff33ff99Bosses|r: pack Forever incompleto (falta un fichero de idioma).");
	return;
end

-- El índice ENC (encounterID → NPC ids) y el de zonas (map id → jefes) son
-- opcionales: el pack sigue funcionando sin ellos (el core resuelve por las
-- vías clásicas: unidades boss1..bossN, diario e índice de nombres).
BossesAPI.register("Forever", { ES = P.es, EN = P.en, ENC = P.enc, ZON = P.zonas, FR = P.fr, DE = P.de, RU = P.ru, PT = P.pt, ZH = P.zh, KO = P.ko });
