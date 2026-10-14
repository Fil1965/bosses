--[[
	Bosses_Shadowlands_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Fuente: módulos DBM de Shadowlands en _doc. El core lo usa para resolver
		ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

enc["2361"] = "162103"; -- Executor Tarvold
enc["2363"] = "162099"; -- General Kaal
enc["2362"] = "162102"; -- Grand Proctor Beryllia
enc["2360"] = "162100"; -- Kryxis the Voracious
enc["2359"] = "162061"; -- Devos, Paragon of Doubt
enc["2357"] = "162059"; -- Kin-Tara
enc["2358"] = "162060"; -- Oryphrion
enc["2356"] = "162058"; -- Ventunax
enc["2388"] = "163157"; -- Amarth, The Harvester
enc["2387"] = "162691"; -- Blightbone
enc["2390"] = "162693"; -- Nalthor the Rimebinder
enc["2389"] = "162689"; -- Surgeon Stitchflesh
enc["2380"] = "164185"; -- Echelon
enc["2401"] = "165408"; -- Halkias, the Sin-Stained Goliath
enc["2403"] = "165410"; -- High Adjudicator Aleez
enc["2381"] = "164218"; -- Lord Chamberlain
enc["2384"] = "164967"; -- Doctor Ickus
enc["2385"] = "164266"; -- Domina Venomblade
enc["2382"] = "164255"; -- Globgrog
enc["2386"] = "164267"; -- Margrave Stradama
enc["2397"] = "164567"; -- Ingra Maloch
enc["2392"] = "164501"; -- Mistcaller
enc["2393"] = "164517"; -- Tred'ova
enc["2400"] = "164450"; -- Dealer Xy'exa
enc["2395"] = "166473"; -- Hakkar the Soulflayer
enc["2396"] = "169769"; -- Mueh'zala
enc["2394"] = "164555"; -- The Manastorms
enc["2391"] = "164451"; -- An Affront of Challengers
enc["2365"] = "162317"; -- Gorechop
enc["2364"] = "162309"; -- Kul'tharok
enc["2404"] = "165946"; -- Mordretha, the Endless Empress
enc["2366"] = "162329"; -- Xav the Unfallen
enc["2418"] = "165066"; -- Huntsman Altimor
enc["2405"] = "166644"; -- Artificer Xy'mox
enc["2383"] = "164261"; -- Hungering Destroyer
enc["2402"] = "165759"; -- Sun King's Salvation
enc["2406"] = "165521"; -- Lady Inerva Darkvein
enc["2398"] = "164406"; -- Shriekwing
enc["2407"] = "167406"; -- Sire Denathrius
enc["2399"] = "164407"; -- Sludgefist
enc["2417"] = "168112"; -- Stone Legion Generals
enc["2412"] = "166971"; -- The Council of Blood
enc["2426"] = "175663"; -- Hylbrande
enc["2424"] = "175646"; -- Mailroom Mayhem
enc["2440"] = "176564"; -- Myza's Oasis
enc["2437"] = "175806"; -- So'azmi
enc["2442"] = "177269"; -- So'leah
enc["2441"] = "176556"; -- The Grand Menagerie
enc["2419"] = "175546"; -- Timecap'n Hooktail
enc["2425"] = "175616"; -- Zo'phex the Sentinel
enc["2431"] = "175730"; -- Fatescribe Roh-Kalo
enc["2436"] = "175731"; -- Guardian of the First Ones
enc["2422"] = "175559"; -- Kel'Thuzad
enc["2430"] = "176523"; -- Painsmith Raznal
enc["2432"] = "175729"; -- Remnant of Ner'zhul
enc["2434"] = "175727"; -- Soulrender Dormazain
enc["2435"] = "175732"; -- Sylvanas Windrunner
enc["2433"] = "175725"; -- The Eye of the Jailer
enc["2429"] = "175726"; -- The Nine
enc["2423"] = "175611"; -- The Tarragrue
enc["2546"] = "181954"; -- Anduin Wrynn
enc["2553"] = "183501"; -- Artificer Xy'mox
enc["2540"] = "181224"; -- Dausegne, the Fallen Oracle
enc["2529"] = "180906"; -- Halondrus the Reclaimer
enc["2539"] = "182169"; -- Lihuvim, Principal Architect
enc["2543"] = "181398"; -- Lords of Dread
enc["2544"] = "181548"; -- Prototype Pantheon
enc["2549"] = "182777"; -- Rygelon
enc["2542"] = "181395"; -- Skolex, the Insatiable Ravener
enc["2537"] = "180990"; -- The Jailer
enc["2512"] = "180773"; -- Vigilant Guardian
enc["2550"] = "182466"; -- Antros (mundo)
enc["2496"] = "178958"; -- Morgeth (mundo)
enc["2410"] = "167525"; -- Mortanis (mundo)
enc["2408"] = "167526"; -- Nurgash (mundo)
enc["2409"] = "167527"; -- Oranomonos (mundo)
enc["2411"] = "167524"; -- Valinor (mundo)

P.enc = enc;
