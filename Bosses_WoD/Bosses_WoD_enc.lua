--[[
	Bosses_WoD_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Fuente: módulos DBM de WoD en _doc. El core lo usa para resolver
		ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

enc["1653"] = "74787"; -- Slave Watcher Crushto
enc["1654"] = "74790"; -- Gug'rokk
enc["1655"] = "74366"; -- Magmolatus
enc["1652"] = "75786"; -- Roltall
enc["1679"] = "75452"; -- Bonemaw
enc["1682"] = "76407"; -- Ner'zhul
enc["1688"] = "75829"; -- Nhallish
enc["1677"] = "75509"; -- Sadana Bloodfury
enc["1678"] = "75927"; -- Azzakel
enc["1685"] = "76177"; -- Soulbinder Nyami
enc["1686"] = "75839"; -- Vigilant Kaathar
enc["1714"] = "77734"; -- Teron'gor
enc["1748"] = "80805"; -- Grimrail Enforcers
enc["1749"] = "81297"; -- Fleshrender Nok'gar
enc["1750"] = "79852"; -- Oshir
enc["1754"] = "83612"; -- Skulloc
enc["1704"] = "77325"; -- Blackhand
enc["1690"] = "76809"; -- The Blast Furnace
enc["1694"] = "76865"; -- Beastlord Darmac
enc["1691"] = "76877"; -- Gruul
enc["1693"] = "76974"; -- Hans'gar and Franzok
enc["1695"] = "77557"; -- The Iron Maidens
enc["1689"] = "76814"; -- Flamebender Ka'graz
enc["1713"] = "77692"; -- Kromog
enc["1696"] = "77182"; -- Oregorger
enc["1692"] = "76906"; -- Operator Thogar
enc["1732"] = "79545"; -- Nitrogg Thundertower
enc["1715"] = "77803"; -- Rocketspark and Borka
enc["1736"] = "80005"; -- Skylord Tovra
enc["1699"] = "76141"; -- Araknath
enc["1698"] = "75964"; -- Ranjit
enc["1700"] = "76143"; -- Rukhran
enc["1701"] = "76266"; -- High Sage Viryx
enc["1720"] = "78491"; -- Brackenspore
enc["1721"] = "78714"; -- Kargath Bladefist
enc["1723"] = "79015"; -- Ko'ragh
enc["1705"] = "77428"; -- Imperator Mar'gok
enc["1722"] = "78948"; -- Tectus
enc["1706"] = "77404"; -- The Butcher
enc["1719"] = "78238"; -- Twin Ogron
enc["1757"] = "83894"; -- Ancient Protectors
enc["1751"] = "82682"; -- Archmage Sol
enc["1746"] = "81522"; -- Witherbark
enc["1752"] = "84550"; -- Xeri'tac
enc["1756"] = "83846"; -- Yalnu
enc["1761"] = "76413"; -- Orebender Gor'ashan
enc["1758"] = "76021"; -- Kyrak
enc["1760"] = "76585"; -- Ragewing the Untamed
enc["1759"] = "79912"; -- Commander Tharbek
enc["1762"] = "77120"; -- Warlord Zaela
enc["1799"] = "91331"; -- Archimonde
enc["1783"] = "90199"; -- Gorefiend
enc["1778"] = "90019"; -- Hellfire Assault
enc["1785"] = "90284"; -- Iron Reaver
enc["1788"] = "90316"; -- Shadow-Lord Iskar
enc["1786"] = "90378"; -- Kilrogg Deadeye
enc["1787"] = "90435"; -- Kormrok
enc["1795"] = "91349"; -- Mannoroth
enc["1794"] = "92330"; -- Socrethar the Eternal
enc["1784"] = "90269"; -- Tyrant Velhari
enc["1800"] = "93068"; -- Xhul'horac
enc["1777"] = "89890"; -- Fel Lord Zakuun
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Annihilon (90802)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Drogan (90841)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Drov the Ruiner (81252)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Gaur (90943)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Goggnathog (90995)
enc["1801"] = "94015"; -- Supreme Lord Kazzak (mundo)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Lady Fleshsear (91012)
enc["1755"] = "83746"; -- Rukhmar (mundo)
enc["1770"] = "81535"; -- Tarlna Gorosi (mundo)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Teluur (90946)

P.enc = enc;
