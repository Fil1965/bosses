--[[
	Bosses_Dragonflight_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Fuente: módulos DBM de
		Dragonflight en _doc. El core lo usa para resolver
		ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

enc["2556"] = "184018"; -- Bromach
enc["2559"] = "184125"; -- Chrono-Lord Deios
enc["2558"] = "184422"; -- Emberon
enc["2557"] = "184124"; -- Sentinel Talondras
enc["2555"] = "184580"; -- The Lost Dwarves
enc["2585"] = "186739"; -- Azureblade
enc["2582"] = "186644"; -- Leymor
enc["2583"] = "186737"; -- Telash Greywing
enc["2584"] = "186738"; -- Umbrelskul
enc["2580"] = "186151"; -- Balakar Khan
enc["2637"] = "186616"; -- Granyth
enc["2581"] = "186339"; -- Teera and Maruuk
enc["2636"] = "186615"; -- The Raging Tempest
enc["2613"] = "189340"; -- Chargath, Bane of Scales
enc["2610"] = "181861"; -- Magmatusk
enc["2612"] = "189478"; -- Forgemaster Gorek
enc["2611"] = "189901"; -- Warlord Sargha
enc["2569"] = "186121"; -- Decatriarch Wratheye
enc["2567"] = "186116"; -- Gutshot
enc["2570"] = "186122"; -- Hackclaw's War-Band
enc["2568"] = "186120"; -- Treemouth
enc["2606"] = "189232"; -- Kokia Blazehoof
enc["2623"] = "190484"; -- Kyrakka and Erkhart Stormvein
enc["2609"] = "188252"; -- Melidrussa Chillworn
enc["2614"] = "190245"; -- Broodkeeper Diurna
enc["2635"] = "189813"; -- Dathea, Ascended
enc["2587"] = "184972"; -- Eranog
enc["2605"] = "184986"; -- Kurog Grimtotem
enc["2607"] = "189492"; -- Raszageth the Storm-Eater
enc["2592"] = "187967"; -- Sennarth, the Cold Breath
enc["2639"] = "190496"; -- Terros
enc["2590"] = "187771"; -- The Primal Council
enc["2564"] = "191736"; -- Crawth
enc["2565"] = "190609"; -- Echo of Doragosa
enc["2563"] = "186951"; -- Overgrown Ancient
enc["2562"] = "194181"; -- Vexamus
enc["2616"] = "189722"; -- Gulping Goliath
enc["2617"] = "189727"; -- Khajin the Unyielding
enc["2618"] = "189729"; -- Primal Tsunami
enc["2615"] = "189719"; -- Watcher Irideus
enc["2728"] = "208363"; -- Council of Dreams
enc["2677"] = "204931"; -- Fyrakk the Blazing
enc["2820"] = "209333"; -- Gnarlroot
enc["2709"] = "200926"; -- Igira the Cruel
enc["2731"] = "208445"; -- Larodar, Keeper of the Flame
enc["2708"] = "206172"; -- Nymue, Weaver of the Cycle
enc["2824"] = "200927"; -- Smolderon
enc["2786"] = "209090"; -- Tindral Sageswift, Seer of the Flame
enc["2737"] = "208478"; -- Volcoross
enc["2682"] = "199659"; -- Assault of the Zaqali
enc["2684"] = "201668"; -- Echo of Neltharion
enc["2688"] = "201261"; -- Kazzara, the Hellforged
enc["2683"] = "201579"; -- Magmorax
enc["2680"] = "201320"; -- Rashok, the Elder
enc["2685"] = "201754"; -- Scalecommander Sarkareth
enc["2687"] = "201774"; -- The Amalgamation Chamber
enc["2693"] = "200912"; -- The Forgotten Experiments
enc["2689"] = "202375"; -- The Vigilant Steward, Zskarn
enc["2668"] = "198997"; -- Blight of Galakrond
enc["2666"] = "198995"; -- Chronikar
enc["2673"] = "199000"; -- Chrono-Lord Deios
enc["2669"] = "198933"; -- Iridikron the Stonescaled
enc["2667"] = "198996"; -- Manifested Timeways
enc["2671"] = "198999"; -- Morchie
enc["2670"] = "198998"; -- Tyr, the Infinite Keeper
enc["2828"] = "209574"; -- Aurostor, The Hibernator (mundo)
enc["2640"] = "193535"; -- Basrikron, The Shale Wing (mundo)
enc["2653"] = "193532"; -- Bazual, The Dreaded Flame (mundo)
enc["2652"] = "193533"; -- Liskanoth (mundo)
enc["2651"] = "193534"; -- Strunraan, The Sky's Misery (mundo)
enc["2696"] = "199855"; -- The Zaqali Elders (mundo)

P.enc = enc;
