--[[
	Bosses_BfA_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		scripts/generar-pack-bfa.mjs (fuente: _doc/DBM). El core lo usa
		para resolver ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

enc["2265"] = "144683,144680"; -- Ra'wani Kanae and Frida Ironbellows
enc["2268"] = "144747,144767,144963,144941"; -- Conclave of the Chosen
enc["2263"] = "144638,144637"; -- Grong
enc["2284"] = "144638,144637"; -- Grong
enc["2266"] = "144691,144692"; -- Ma'ra Grimfang and Anathos Firecaller
enc["2271"] = "145261"; -- Opulence
enc["2272"] = "145616"; -- King Rastakhan
enc["2276"] = "144796"; -- High Tinker Mekkatorque
enc["2280"] = "146251,146253,146256"; -- Stormwall Blockade
enc["2281"] = "146409"; -- Lady Jaina Proudmoore
enc["2285"] = "144693,144690"; -- Manceroy Flamefist and Mestrah
enc["2269"] = "144755,144754"; -- The Restless Cabal
enc["2273"] = "145371"; -- Uu'nat, Harbinger of the Void
enc["2289"] = "150653"; -- Blackwater Behemoth
enc["2293"] = "150859"; -- Za'qul, Harbinger of Ny'alotha
enc["2298"] = "151881"; -- Abyssal Commander Sivara
enc["2299"] = "152910"; -- Queen Azshara
enc["2303"] = "152128"; -- Orgozoa
enc["2304"] = "152236"; -- Lady Ashvane
enc["2305"] = "152364"; -- Radiance of Azshara
enc["2311"] = "152852,152853"; -- The Queen's Court
enc["2327"] = "156523"; -- Maut
enc["2328"] = "156575"; -- Dark Inquisitor Xanesh
enc["2329"] = "156818"; -- Wrathion, the Black Emperor
enc["2331"] = "156866"; -- Ra-den the Despoiled
enc["2333"] = "157253,157254"; -- The Hivemind
enc["2334"] = "157620"; -- The Prophet Skitra
enc["2335"] = "157231"; -- Shad'har the Insatiable
enc["2336"] = "157354"; -- Vexiona
enc["2337"] = "157439"; -- Carapace of N'Zoth
enc["2343"] = "157602"; -- Drest'agath
enc["2344"] = "158041"; -- N'Zoth the Corruptor
enc["2345"] = "158328"; -- Il'gynoth, Corruption Reborn
enc["2122"] = "132998"; -- G'huun
enc["2128"] = "133298"; -- Fetid Devourer
enc["2134"] = "134442"; -- Vectis
enc["2135"] = "134546"; -- Mythrax the Unraveler
enc["2136"] = "134445"; -- Zek'voz, Herald of N'Zoth
enc["2141"] = "135452"; -- MOTHER
enc["2144"] = "137119"; -- Taloc
enc["2145"] = "138967"; -- Zul, Reborn
enc["2084"] = "122967"; -- Priestess Alun'za
enc["2085"] = "122965"; -- Vol'kaal
enc["2086"] = "122963"; -- Rezan
enc["2087"] = "122968"; -- Yazma
enc["2093"] = "126832"; -- Skycap'n Kragg
enc["2094"] = "126845,126847,126848"; -- Council o' Captains
enc["2095"] = "126969"; -- Ring of Booty
enc["2096"] = "126983"; -- Harlan Sweete
enc["2139"] = "135322"; -- The Golden Serpent
enc["2140"] = "135475,135470,135472"; -- The Council of Tribes
enc["2142"] = "134993"; -- Mchimba the Embalmer
enc["2143"] = "136160"; -- Dazar, The First King
enc["2257"] = "144244,145185"; -- Tussle Tonks
enc["2258"] = "144246"; -- K.U.-J.0.
enc["2259"] = "144248"; -- Machinist's Garden
enc["2260"] = "150396,144249,150397"; -- King Mechagon
enc["2290"] = "150159"; -- King Gobbamak
enc["2291"] = "150190"; -- HK-8 Aerial Oppression Unit
enc["2292"] = "150222"; -- Gunker
enc["2312"] = "153755,150712"; -- Trixie & Naeno
enc["2130"] = "134056"; -- Aqu'sirr
enc["2131"] = "134063,134058"; -- Tidesage Council
enc["2132"] = "134060"; -- Lord Stormsong
enc["2133"] = "134069"; -- Vol'zith the Whisperer
enc["2097"] = "130834"; -- Sergeant Bainbridge
enc["2098"] = "128650"; -- Chopper Redhook
enc["2099"] = "128651"; -- Hadal Darkfathom
enc["2100"] = "120553"; -- Viq'Goth
enc["2109"] = "129208"; -- Dread Captain Lockwood
enc["2124"] = "133379,133944"; -- Adderis and Aspix
enc["2125"] = "133384"; -- Merektha
enc["2126"] = "133389"; -- Galvazzt
enc["2127"] = "133392"; -- Avatar of Sethraliss
enc["2105"] = "129214"; -- Coin-Operated Crowd Pummeler
enc["2106"] = "129227"; -- Azerokk
enc["2107"] = "129231"; -- Rixxa Fluxflame
enc["2108"] = "129232,132713"; -- Mogul Razdunk
enc["2111"] = "131318"; -- Elder Leaxa
enc["2112"] = "131383"; -- Sporecaller Zancha
enc["2118"] = "131817"; -- Cragmaw the Infested
enc["2123"] = "133007"; -- Unbound Abomination
enc["2101"] = "127479"; -- The Sand Queen
enc["2102"] = "127484"; -- Jes Howlis
enc["2103"] = "127490"; -- Knight Captain Valyri
enc["2104"] = "127503"; -- Overseer Korgus
enc["2113"] = "135358,135359,135360,131823,131824,131825"; -- Heartsbane Triad
enc["2114"] = "260551"; -- Soulbound Goliath
enc["2115"] = "131863"; -- Raal the Gluttonous
enc["2116"] = "131527,131545"; -- Lord and Lady Waycrest
enc["2117"] = "131864"; -- Gorak Tul
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Azurethos, The Winged Typhoon (136385, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Hailstone Construct (140252, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Ji'arak (132253, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Dunegorger Kraulok (138794, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): T'zane (132701, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Warbringer Yenajz (140163, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Ivus the Decayed (148295, plaza DBM 2263)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Ivus the Forest Lord (144946, plaza DBM 2263)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Ulmath, the Soulbinder (152697, plaza DBM 2317)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Wekemara (152671, plaza DBM 2318)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Grand Empress Shek'zara (154638, plaza DBM 2351)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Vuk'laz the Earthbreaker (160970, plaza DBM 2353)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Doom's Howl (138122)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Lion's Roar (137374)

P.enc = enc;
