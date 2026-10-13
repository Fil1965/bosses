--[[
	Bosses_MoP_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM). Generado con scripts/generar-pack-mop.mjs.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local enc = {};

enc["1463"] = "63191"; -- Garalon
enc["1498"] = "62397"; -- Wind Lord Mel'jarak
enc["1499"] = "62511"; -- Amber-Shaper Un'sok
enc["1501"] = "62837"; -- Empress Shek'zeer
enc["1504"] = "62543"; -- Blade Lord Ta'yak
enc["1507"] = "62980"; -- Zor'lok
enc["1390"] = "60009"; -- Feng the Accursed
enc["1395"] = "60051,60043,59915,60047"; -- The Stone Guard
enc["1407"] = "60399,60400"; -- Will of the Emperor
enc["1434"] = "60143"; -- Gara'jal the Spiritbinder
enc["1436"] = "60701,60708,60709,60710"; -- The Spirit Kings
enc["1500"] = "60410"; -- Elegon
enc["1593"] = "71152,71153,71154,71155,71156,71157,71158,71160,71161"; -- Paragons of the Klaxxi
enc["1594"] = "73720,71512"; -- Spoils of Pandaria
enc["1595"] = "71454"; -- Malkorok
enc["1598"] = "71479,71475,71480"; -- The Fallen Protectors
enc["1599"] = "71529"; -- Thok the Bloodthirsty
enc["1600"] = "71466"; -- Iron Juggernaut
enc["1601"] = "71504"; -- Siegecrafter Blackfuse
enc["1602"] = "71543"; -- Immerseus
enc["1603"] = "71515"; -- General Nazgrim
enc["1604"] = "71734"; -- Sha of Pride
enc["1606"] = "71859,71858"; -- Kor'kron Dark Shaman
enc["1622"] = "72311,72560,72249,73910,72302,72561,73909"; -- Galakras
enc["1623"] = "71865"; -- Garrosh Hellscream
enc["866"] = "72276"; -- Prueba del Amalgama (Norushen)
enc["1409"] = "60585,60586,60583"; -- Protectors of Endless
enc["1431"] = "60999"; -- Sha of Fear
enc["1505"] = "62442"; -- Tsulong
enc["1506"] = "62983"; -- Lei Shi
enc["1559"] = "68078,68079,68080,68081"; -- Iron Qon
enc["1560"] = "68905,68904"; -- The Twin Empyreans
enc["1565"] = "67977"; -- Tortos
enc["1570"] = "69078,69132,69134,69131"; -- Council of Elders
enc["1572"] = "68036"; -- Durumu the Forgotten
enc["1573"] = "69712"; -- Ji-Kun
enc["1574"] = "69017"; -- Primordius
enc["1575"] = "68476"; -- Horridon
enc["1576"] = "69427"; -- Dark Animus
enc["1577"] = "69465"; -- Jin'rokh the Breaker
enc["1578"] = "68065,70235,70247"; -- Megaera
enc["1579"] = "68397"; -- Lei Shen
enc["1580"] = "69473"; -- Ra-Den (heroic/heroic25)
enc["1581"] = "69473"; -- Ra-Den (LFR)
enc["1397"] = "56906"; -- Kiptilak
enc["1405"] = "56589"; -- Striker Ga'dok
enc["1406"] = "56636"; -- Commander Ri'mok
enc["1419"] = "56877"; -- Raigonn
enc["1416"] = "56732"; -- Liu Flameheart
enc["1417"] = "59051,59726,58826"; -- Library Event
enc["1418"] = "56448"; -- Wise Mari
enc["1439"] = "56439"; -- Sha of Doubt
enc["1441"] = "61398"; -- Weaponmaster Xin
enc["1442"] = "61442,61444,61445"; -- Trial of the King
enc["1509"] = "61243,61337,61338,61339,61340"; -- Gekkan (Mogu'Shan Palace)
enc["1510"] = "61243,61337,61338,61339,61340"; -- Gekkan (Mogu'Shan Palace, segunda variante)
-- Nota: los 1509/1510 de los CIDs de Gekkan valen en retail remaster.
enc["1447"] = "61485"; -- General Pavalak
enc["1464"] = "62205"; -- Neronok
enc["1465"] = "61567"; -- Vizier Jin'bak
enc["1502"] = "61634"; -- Commander Vo'jak
enc["1423"] = "59789"; -- Thalnos the Soulrender
enc["1424"] = "59223"; -- Brother Korloff
enc["1425"] = "60040"; -- Commander Durand
enc["1420"] = "59150"; -- Flameweaver Koegler
enc["1421"] = "58632"; -- Armsmaster Harlan
enc["1422"] = "59303"; -- Brother Braun
enc["1426"] = "58633,58664"; -- Instructor Chillheart
enc["1427"] = "59184"; -- Jandice Barov
enc["1428"] = "59153"; -- Rattlegore
enc["1429"] = "58722"; -- Lilian Voss
enc["1430"] = "59080"; -- Darkmaster Gandling
enc["1303"] = "56747"; -- Gu Cloudstrike
enc["1304"] = "56541"; -- Master Snowdrift
enc["1305"] = "56719"; -- Sha of Violence
enc["1306"] = "56884"; -- Taran Zhu
enc["1412"] = "56637"; -- Ook-Ook
enc["1413"] = "56717"; -- Hoptallus
enc["1414"] = "59479"; -- Yan-Zhu the Uncasked
enc["1563"] = "62346"; -- Salyis
enc["1564"] = "60491"; -- Anger
enc["1571"] = "69099"; -- Nalak
enc["1587"] = "69161"; -- Oondasta
-- SIN ENC: Chi Ji (71952)
-- SIN ENC: Niuzao (71954)
-- SIN ENC: Ordos (72057)
-- SIN ENC: Xuen (71953)
-- SIN ENC: Yu'lon (71955)
-- SIN ENC: Zandalari Warbringers (69768,69769,69841,69842)

P.enc = enc;
