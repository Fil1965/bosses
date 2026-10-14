--[[
	Bosses_TBC_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		npm run comparar-dbm (fuente: _doc/DBM) y curado a mano. El core
		lo usa para resolver ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

-- Sin ENC propia (resuelven por GUID/CID): las tres bestias opcionales de los
-- criados (16179 Hyakiss, 16180 Shadikith, 16181 Rokad), los dos jefes de
-- mundo (17711 Doomwalker, 18728 Kazzak) y las tres piezas del ópera
-- (655/2447 compartido entre Lobo 17521, Romulo y Julianne 17534+17533 y
-- Mago de Oz 18168: los módulos lo marcan como NO utilizable).
-- Notas de fuente: Shahraz.lua repite por error el 2478 de EssenceOfSouls
-- (aquí 2478 queda solo para 23420); el módulo de evento TW BurningCrusade
-- (2319, comparte CIDs de jefes reales) queda fuera del índice.

enc["1889"] = "18373"; -- Exarch Maladaar
enc["1890"] = "18371"; -- Shirrak the Dead Watcher
enc["1904"] = "23035"; -- Anzu
enc["1902"] = "18473"; -- Talon King Ikiss
enc["1903"] = "18472"; -- Darkweaver Syth
enc["1908"] = "18731"; -- Ambassador Hellmaw
enc["1909"] = "18667"; -- Blackheart the Inciter
enc["1910"] = "18708"; -- Murmur
enc["1911"] = "18732"; -- Grandmaster Vorpil
enc["1900"] = "18341"; -- Pandemonius
enc["1899"] = "18344"; -- Nexus-Prince Shaffar
enc["1901"] = "18343"; -- Tavarok
enc["250"] = "22930"; -- Yor
enc["1939"] = "17941"; -- Mennu the Betrayer
enc["1940"] = "17942"; -- Quagmirran
enc["1941"] = "17991"; -- Rokmar the Crackler
enc["3317"] = "25740"; -- Ahune (evento del Festival del Fuego de Medio Verano, ENC solo retail; 40446/25740/25865/25697 resuelven por CID)
enc["1944"] = "17798"; -- Warlord Kalithresh
enc["1943"] = "17796"; -- Mekgineer Steamrigger
enc["1942"] = "17797"; -- Hydromancer Thespia
enc["1945"] = "18105"; -- Ghaz'an
enc["1946"] = "17770"; -- Hungarfen
enc["1947"] = "17826"; -- Swamplord Musel'ek
enc["1948"] = "17882"; -- The Black Stalker
enc["1919"] = "17881"; -- Aeonus
enc["1920"] = "17879"; -- Chrono Lord Deja
enc["1921"] = "17880"; -- Temporus
enc["1905"] = "17848"; -- Lieutenant Drake
enc["1906"] = "18096"; -- Epoch Hunter
enc["1907"] = "17862"; -- Captain Skarloc
enc["1924"] = "17380"; -- Broggok
enc["1923"] = "17377"; -- Keli'dan the Breaker
enc["1922"] = "17381"; -- The Maker
enc["1893"] = "17306"; -- Watchkeeper Gargolmar
enc["1891"] = "17308"; -- Omor the Unscarred
enc["1892"] = "17307,17537"; -- Nazan & Vazruden / Nazan & Vazruden
enc["1938"] = "16808"; -- Warchief Kargath Bladefist
enc["1936"] = "16807"; -- Grand Warlock Nethekurse
enc["1937"] = "16809"; -- Warbringer O'mrogg
enc["1935"] = "20923"; -- Blood Guard Porung
enc["1895"] = "24560"; -- Priestess Delrissa
enc["1894"] = "24664"; -- Kael'thas Sunstrider
enc["1897"] = "24723"; -- Selin Fireheart
enc["1898"] = "24744"; -- Vexallus
enc["1913"] = "20885"; -- Dalliah the Doomsayer
enc["1914"] = "20912"; -- Harbinger Skyriss
enc["1915"] = "20886"; -- Wrath-Scryer Soccothrates
enc["1916"] = "20870"; -- Zereketh the Unbound
enc["1926"] = "17975"; -- High Botanist Freywinn
enc["1927"] = "17980"; -- Laj
enc["1925"] = "17976"; -- Commander Sarannis
enc["1928"] = "17978"; -- Thorngrin the Tender
enc["1929"] = "17977"; -- Warp Splinter
enc["1932"] = "19219"; -- Mechano-Lord Capacitus
enc["1933"] = "19218"; -- Gatewatcher Gyro-Kill
enc["1934"] = "19710"; -- Gatewatcher Iron-Hand
enc["1931"] = "19220"; -- Pathaleon the Calculator
enc["1930"] = "19221"; -- Nethermancer Sepethrea
enc["605"] = "22948"; -- Gurtogg Bloodboil
enc["2477"] = "22948"; -- Gurtogg Bloodboil
enc["606"] = "23420"; -- Essence of Souls
enc["2478"] = "23420"; -- Essence of Souls
enc["609"] = "22917"; -- Illidan Stormrage
enc["2481"] = "22917"; -- Illidan Stormrage
enc["608"] = "22949,22950,22951,22952"; -- Illidari Council / Illidari Council / Illidari Council / Illidari Council
enc["2480"] = "22949,22950,22951,22952"; -- Illidari Council / Illidari Council / Illidari Council / Illidari Council
enc["601"] = "22887"; -- High Warlord Naj'entus
enc["2473"] = "22887"; -- High Warlord Naj'entus
enc["603"] = "22841"; -- Shade of Akama
enc["2475"] = "22841"; -- Shade of Akama
enc["607"] = "22947"; -- Mother Shahraz
enc["602"] = "22898"; -- Supremus
enc["2474"] = "22898"; -- Supremus
enc["604"] = "22871"; -- Teron Gorefiend
enc["2476"] = "22871"; -- Teron Gorefiend
enc["650"] = "19044"; -- Gruul the Dragonkiller
enc["2456"] = "19044"; -- Gruul the Dragonkiller
enc["649"] = "18831,18832,18834,18835,18836"; -- High King Maulgar / High King Maulgar / High King Maulgar / High King Maulgar / High King Maulgar
enc["2455"] = "18831,18832,18834,18835,18836"; -- High King Maulgar / High King Maulgar / High King Maulgar / High King Maulgar / High King Maulgar
enc["619"] = "17808"; -- Anetheron
enc["2469"] = "17808"; -- Anetheron
enc["622"] = "17968"; -- Archimonde
enc["2472"] = "17968"; -- Archimonde
enc["621"] = "17842"; -- Azgalor
enc["2471"] = "17842"; -- Azgalor
enc["620"] = "17888"; -- Kaz'rogal
enc["2470"] = "17888"; -- Kaz'rogal
enc["618"] = "17767"; -- Rage Winterchill
enc["2468"] = "17767"; -- Rage Winterchill
enc["652"] = "16151,16152"; -- Attumen the Huntsman / Attumen the Huntsman
enc["2444"] = "16151,16152"; -- Attumen the Huntsman / Attumen the Huntsman
enc["660"] = "21684,21752"; -- Chess Event / Chess Event
enc["2452"] = "21684,21752"; -- Chess Event / Chess Event
enc["656"] = "15691"; -- The Curator
enc["2448"] = "15691"; -- The Curator
enc["654"] = "16457"; -- Maiden of Virtue
enc["2446"] = "16457"; -- Maiden of Virtue
enc["653"] = "15687"; -- Moroes
enc["2445"] = "15687"; -- Moroes
enc["659"] = "15689"; -- Netherspite
enc["2451"] = "15689"; -- Netherspite
enc["662"] = "17225"; -- Nightbane
enc["2454"] = "17225"; -- Nightbane
enc["661"] = "15690"; -- Prince Malchezaar
enc["2453"] = "15690"; -- Prince Malchezaar
enc["658"] = "16524"; -- Shade of Aran
enc["2450"] = "16524"; -- Shade of Aran
enc["657"] = "15688"; -- Terestian Illhoof
enc["2449"] = "15688"; -- Terestian Illhoof
enc["651"] = "17257"; -- Magtheridon
enc["2457"] = "17257"; -- Magtheridon
enc["626"] = "21214"; -- Fathom-Lord Karathress
enc["2461"] = "21214"; -- Fathom-Lord Karathress
enc["623"] = "21216"; -- Hydross the Unstable
enc["2458"] = "21216"; -- Hydross the Unstable
enc["625"] = "21215"; -- Leotheras the Blind
enc["2460"] = "21215"; -- Leotheras the Blind
enc["624"] = "21217"; -- The Lurker Below
enc["2459"] = "21217"; -- The Lurker Below
enc["627"] = "21213"; -- Morogrim Tidewalker
enc["2462"] = "21213"; -- Morogrim Tidewalker
enc["628"] = "21212"; -- Lady Vashj
enc["2463"] = "21212"; -- Lady Vashj
enc["725"] = "24882"; -- Brutallus
enc["2489"] = "24882"; -- Brutallus
enc["727"] = "25165,25166"; -- Eredar Twins / Eredar Twins
enc["2491"] = "25165,25166"; -- Eredar Twins / Eredar Twins
enc["726"] = "25038"; -- Felmyst
enc["2490"] = "25038"; -- Felmyst
enc["724"] = "24850"; -- Kalecgos
enc["2488"] = "24850"; -- Kalecgos
enc["729"] = "25315"; -- Kil'jaeden
enc["2493"] = "25315"; -- Kil'jaeden
enc["728"] = "25741"; -- M'uru
enc["2492"] = "25741"; -- M'uru
enc["730"] = "19514"; -- Al'ar
enc["2464"] = "19514"; -- Al'ar
enc["733"] = "19622"; -- Kael'thas Sunstrider
enc["2467"] = "19622"; -- Kael'thas Sunstrider
enc["732"] = "18805"; -- High Astromancer Solarian
enc["2466"] = "18805"; -- High Astromancer Solarian
enc["731"] = "19516"; -- Void Reaver
enc["2465"] = "19516"; -- Void Reaver
enc["1189"] = "23574"; -- Akil'zon
enc["2482"] = "23574"; -- Akil'zon
enc["1192"] = "23577"; -- Halazzi
enc["2485"] = "23577"; -- Halazzi
enc["1191"] = "23578"; -- Jan'alai
enc["2484"] = "23578"; -- Jan'alai
enc["1193"] = "24239"; -- Hex Lord Malacrass
enc["2486"] = "24239"; -- Hex Lord Malacrass
enc["1190"] = "23576"; -- Nalorakk
enc["2483"] = "23576"; -- Nalorakk
enc["1194"] = "23863"; -- Zul'jin
enc["2487"] = "23863"; -- Zul'jin

P.enc = enc;
