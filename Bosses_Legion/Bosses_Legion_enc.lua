--[[
	Bosses_Legion_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		scripts/generar-pack-legion.mjs (fuente: _doc/DBM). El core lo usa
		para resolver ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

enc["2063"] = "121975"; -- Aggramar
enc["2064"] = "122104"; -- Portal Keeper Hasabel
enc["2069"] = "122366"; -- Varimathras
enc["2070"] = "122369,122333,122367"; -- Antoran High Command
enc["2073"] = "122468,122467,122469"; -- The Coven of Shivarra
enc["2074"] = "122477,122135"; -- Felhounds of Sargeras
enc["2075"] = "124445"; -- Eonar the Life-Binder
enc["2076"] = "122450"; -- Garothi Worldbreaker
enc["2082"] = "124158"; -- Imonar the Soulhunter
enc["2088"] = "122578"; -- Kin'garoth
enc["2092"] = "124828"; -- Argus the Unmaker
enc["1841"] = "100497"; -- Ursoc
enc["1853"] = "102672"; -- Nythendra
enc["1854"] = "102679"; -- Dragons of Nightmare
enc["1864"] = "103769"; -- Xavius
enc["1873"] = "105393"; -- Il'gynoth, Heart of Corruption
enc["1876"] = "106087"; -- Elerethe Renferal
enc["1877"] = "104636"; -- Cenarius
enc["1842"] = "101002"; -- Krosus
enc["1849"] = "102263"; -- Skorpyron
enc["1862"] = "103685"; -- Tichondrius
enc["1863"] = "103758"; -- Star Augur Etraeus
enc["1865"] = "104415"; -- Chronomatic Anomaly
enc["1866"] = "104154"; -- Gul'dan
enc["1867"] = "104288"; -- Trilliax
enc["1871"] = "104881"; -- Spellblade Aluriel
enc["1872"] = "106643"; -- Grand Magistrix Elisande
enc["1886"] = "104528"; -- High Botanist Tel'arn
enc["2032"] = "115844"; -- Goroth
enc["2036"] = "116407"; -- Harjatan
enc["2037"] = "115767"; -- Mistress Sassz'ine
enc["2038"] = "116939"; -- Fallen Avatar
enc["2048"] = "116691,116689"; -- Demonic Inquisition
enc["2050"] = "118523,118374,118518"; -- Sisters of the Moon
enc["2051"] = "117269"; -- Kil'jaeden
enc["2052"] = "118289"; -- Maiden of Vigilance
enc["2054"] = "118460,118462,119072"; -- The Desolate Host
enc["1958"] = "114263,114361,114360"; -- Odyn
enc["1962"] = "114323"; -- Guarm
enc["2008"] = "114537"; -- Helya
enc["1832"] = "98542"; -- The Amalgam of Souls
enc["1833"] = "98696"; -- Illysanna Ravencrest
enc["1834"] = "98949"; -- Smashspite the Hateful
enc["1835"] = "98965,98970"; -- Lord Kur'talos Ravencrest
enc["2039"] = "120793"; -- Mephistroth
enc["2053"] = "119542"; -- Domatrax
enc["2055"] = "117193"; -- Agronox
enc["2057"] = "117194"; -- Thrashbite the Scornful
enc["1868"] = "104215"; -- Patrol Captain Gerdo
enc["1869"] = "104217"; -- Talixae Flamewreath
enc["1870"] = "104218"; -- Advisor Melandrus
enc["1836"] = "96512"; -- Archdruid Glaidalis
enc["1837"] = "103344"; -- Oakheart
enc["1838"] = "99200"; -- Dresaron
enc["1839"] = "99192"; -- Shade of Xavius
enc["1810"] = "91784"; -- Warlord Parjesh
enc["1811"] = "91789"; -- Lady Hatecoil
enc["1812"] = "91797"; -- King Deepbeard
enc["1813"] = "91808"; -- Serpentrix
enc["1814"] = "96028"; -- Wrath of Azshara
enc["1805"] = "94960"; -- Hymdall
enc["1806"] = "95833"; -- Hyrja
enc["1807"] = "95674,99868"; -- Fenryr
enc["1808"] = "95675"; -- God-King Skovald
enc["1809"] = "95676"; -- Odyn
enc["1822"] = "96756"; -- Ymiron, the Fallen King
enc["1823"] = "96754"; -- Harbaron
enc["1824"] = "96759"; -- Helya
enc["1790"] = "91003"; -- Rokmora
enc["1791"] = "91004"; -- Ularogg Cragshaper
enc["1792"] = "91005"; -- Naraxas
enc["1793"] = "91007"; -- Dargrul the Underking
enc["1954"] = "113971"; -- Maiden of Virtue
enc["1957"] = "114329,114522,114330,114328"; -- Opera Hall: Beautiful Beast
-- SIN ENC: Opera Hall: Westfall Story (114261,114260) — resolver cuando el diario traiga el encuentro
-- SIN ENC: Opera Hall: Wikket (114284,114251) — resolver cuando el diario traiga el encuentro
enc["1959"] = "114252"; -- Mana Devourer
enc["1960"] = "114262,114264"; -- Attumen the Huntsman
enc["1961"] = "114312"; -- Moroes
enc["1964"] = "114462"; -- The Curator
enc["1965"] = "114350"; -- Shade of Medivh
enc["2017"] = "114790"; -- Viz'aduum the Watcher
enc["2031"] = "114895"; -- Nightbane
enc["2065"] = "124871"; -- Zuraal the Ascended
enc["2066"] = "124872"; -- Saprish
enc["2067"] = "124874"; -- Viceroy Nezhar
enc["2068"] = "124870"; -- L'ura
enc["1825"] = "98205"; -- Corstilax
enc["1826"] = "98207"; -- Nal'tira
enc["1827"] = "98203"; -- Ivanyr
enc["1828"] = "98206"; -- General Xakal
enc["1829"] = "98208"; -- Advisor Vandros
enc["1815"] = "95885"; -- Tirathon Saltheril
enc["1816"] = "95886"; -- Ash'golm
enc["1817"] = "95887"; -- Glazer
enc["1818"] = "95888"; -- Cordana Felsong
enc["1850"] = "96015"; -- Inquisitor Tormentorum
enc["1845"] = "101951"; -- Shivermaw
enc["1846"] = "101950"; -- Mindflayer Kaahrj
enc["1847"] = "101976"; -- Millificent Manastorm
enc["1848"] = "101995"; -- Festerface
enc["1851"] = "99200"; -- Dresaron
enc["1852"] = "102246"; -- Anub'esset
enc["1855"] = "102431"; -- Blood-Princess Thal'ena
enc["1856"] = "102446"; -- Fel Lord Betrug
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Soultakers (106981,106982,106984, plaza DBM 1879)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Ana-Mouz (109943, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Apocron (121124, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Brutallus (117239, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Malificus (117303, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Nithogg (107023, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Sivash (117470, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Withered Jim (102075, plaza DBM 1880)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Shar'thos (108678, plaza DBM 1888)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Humongris (108879, plaza DBM 1917)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Drugon (110378, plaza DBM 1949)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Nazak (110321, plaza DBM 1950)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Flotsam (99929, plaza DBM 1951)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Calamir (109331, plaza DBM 1952)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Inquisitor Meto (124592, plaza DBM 1952)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Occularus (124492, plaza DBM 1952)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Sotanathor (124555, plaza DBM 1952)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Pit Lord Vilemus (124719, plaza DBM 1952)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Levantus (108829, plaza DBM 1953)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Matron Folnuna (124514, plaza DBM 2081)
-- JEFE DE MUNDO (GUID/detección de zona, sin ENC del diario): Mistress Alluradel (124625, plaza DBM 2083)

P.enc = enc;
