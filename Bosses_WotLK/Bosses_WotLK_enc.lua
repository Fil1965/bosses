--[[
	Bosses_WotLK_enc.lua
		Índice de encuentros del pack: encounterID → NPC ids del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Fuente: módulos DBM de WoTLK en _doc. El core lo usa para resolver
		ENCOUNTER_START sin depender del diario (EJ).
		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

enc["1084"] = "10184"; -- Onyxia
enc["1107"] = "15956"; -- Anub'Rekhan
enc["1110"] = "15953"; -- Grand Widow Faerlina
enc["1116"] = "15952"; -- Maexxna
enc["1117"] = "15954"; -- Noth the Plaguebringer
enc["1112"] = "15936"; -- Heigan the Unclean
enc["1115"] = "16011"; -- Loatheb
enc["1113"] = "16061"; -- Instructor Razuvious
enc["1109"] = "16060"; -- Gothik the Harvester
enc["1121"] = "16063"; -- Four Horsemen
enc["1118"] = "16028"; -- Patchwerk
enc["1111"] = "15931"; -- Grobbulus
enc["1108"] = "15932"; -- Gluth
enc["1120"] = "15928"; -- Thaddius
enc["1119"] = "15989"; -- Sapphiron
enc["1114"] = "15990"; -- Kel'Thuzad
enc["2026"] = "23953"; -- Prince Keleseth
enc["2024"] = "24200"; -- Skarvald and Dalronn
enc["2025"] = "23954"; -- Ingvar the Plunderer
enc["2030"] = "26668"; -- Svala Sorrowgrave
enc["2027"] = "26687"; -- Gortok Palehoof
enc["2029"] = "26693"; -- Skadi the Ruthless
enc["2028"] = "26861"; -- King Ymiron
enc["2010"] = "26731"; -- Grand Magus Telestra
enc["2009"] = "26763"; -- Anomalus
enc["2012"] = "26794"; -- Ormorok the Tree-Shaper
enc["2011"] = "26723"; -- Keristrasza
enc["2016"] = "27654"; -- Drakos the Interrogator
enc["2015"] = "27447"; -- Varos Cloudstrider
enc["2014"] = "27655"; -- Mage-Lord Urom
enc["2013"] = "27656"; -- Ley-Guardian Eregos
enc["2002"] = "26529"; -- Meathook
enc["2004"] = "26530"; -- Salramm the Fleshcrafter
enc["2003"] = "26532"; -- Chrono-Lord Epoch
enc["2005"] = "26533"; -- Mal'Ganis
enc["1994"] = "27977"; -- Krystallus
enc["1996"] = "27975"; -- Maiden of Grief
enc["1995"] = "28070"; -- Brann Event
enc["1998"] = "27978"; -- Sjonnir the Ironshaper
enc["1974"] = "26630"; -- Trollgore
enc["1976"] = "26631"; -- Novos the Summoner
enc["1977"] = "27483"; -- King Dred
enc["1975"] = "26632"; -- The Prophet Tharon'ja
enc["1971"] = "28684"; -- Krik'thir the Gatewatcher
enc["1972"] = "28921"; -- Hadronox
enc["1973"] = "29120"; -- Anub'arak (Dungeon)
enc["1987"] = "28586"; -- General Bjarngrim
enc["1985"] = "28587"; -- Volkhan
enc["1984"] = "28546"; -- Ionar
enc["1986"] = "28923"; -- Loken
enc["1142"] = "33293"; -- XT-002 Deconstructor
enc["1140"] = "32867"; -- Iron Council
enc["1137"] = "32930"; -- Kologarn
enc["1131"] = "33515"; -- Auriaya
enc["1135"] = "32845"; -- Hodir
enc["1141"] = "32865"; -- Thorim
enc["1133"] = "32906"; -- Freya
enc["1138"] = "33432"; -- Mimiron
enc["1134"] = "33271"; -- General Vezax
enc["1143"] = "33288"; -- Yogg-Saron
enc["1130"] = "32871"; -- Algalon the Observer
enc["1132"] = "33113"; -- Flame Leviathan
enc["1136"] = "33118"; -- Ignis the Furnace Master
enc["1139"] = "33186"; -- Razorscale
enc["1978"] = "29304"; -- Slad'ran
enc["1983"] = "29307"; -- Drakkari Colossus
enc["1980"] = "29305"; -- Moorabi
enc["1988"] = "29932"; -- Eck the Ferocious
enc["1981"] = "29306"; -- Gal'darah
enc["2658"] = "29315"; -- Erekem
enc["2659"] = "29316"; -- Moragg
enc["2660"] = "29313"; -- Ichoron
enc["2661"] = "29266"; -- Xevozz
enc["2662"] = "29312"; -- Lavanthor
enc["2663"] = "29314"; -- Zuramat the Obliterator
enc["2020"] = "31134"; -- Cyanigosa
enc["1090"] = "28860"; -- Sartharion
enc["1091"] = "30451"; -- Shadron
enc["1092"] = "30452"; -- Tenebron
enc["1093"] = "30449"; -- Vesperon
enc["1094"] = "28859"; -- Malygos
enc["1969"] = "29309"; -- Elder Nadox
enc["1966"] = "29308"; -- Prince Taldaram
enc["1967"] = "29310"; -- Jedoga Shadowseeker
enc["1989"] = "30258"; -- Amanitar
enc["1968"] = "29311"; -- Herald Volazj
enc["1597"] = "31125"; -- Archavon (diario)
enc["1598"] = "33993"; -- Emalon (diario)
enc["1599"] = "35013"; -- Koralon (diario)
enc["1600"] = "38433"; -- Toravon (diario)
enc["1624"] = "36612"; -- Marrowgar (diario)
enc["1625"] = "36855"; -- Deathwhisper (diario)
enc["1626"] = "37215,37540";
enc["1627"] = "37215,37540"; -- Gunship (diario, ambas naves)
enc["1628"] = "37813"; -- Deathbringer (diario)
enc["1629"] = "36626"; -- Festergut (diario)
enc["1630"] = "36627"; -- Rotface (diario)
enc["1631"] = "36678"; -- Putricide (diario)
enc["1632"] = "37970,37972,37973"; -- BPCouncil (diario)
enc["1633"] = "37955"; -- Lanathel (diario)
enc["1634"] = "36789"; -- Valithria (diario)
enc["1635"] = "36853"; -- Sindragosa (diario)
enc["1636"] = "36597"; -- LichKing (diario)
enc["2006"] = "36497"; -- Bronjahm
enc["2007"] = "36502"; -- Devourer of Souls
enc["1618"] = "34796,35144,34799,34797"; -- Beasts (diario)
enc["1619"] = "34780"; -- Jaraxxus (diario)
enc["1622"] = "34497,34496"; -- Twins (diario)
enc["1623"] = "34564"; -- Anubarak ToC (diario)
enc["1620"] = "34458,34451,34459,34448,34449,34445,34456,34447,34441,34454,34444,34455,34450,34453,34461,34460,34469,34467,34468,34471,34465,34466,34473,34472,34470,34463,34474,34475";
enc["1621"] = "34458,34451,34459,34448,34449,34445,34456,34447,34441,34454,34444,34455,34450,34453,34461,34460,34469,34467,34468,34471,34465,34466,34473,34472,34470,34463,34474,34475"; -- Faction Champions (diario, ambas facciones)
enc["2022"] = "34657"; -- Grand Champions
enc["635"] = "35119"; -- Eadric (diario)
enc["636"] = "34928"; -- Paletress (diario)
enc["2021"] = "35451"; -- The Black Knight
enc["1999"] = "36494"; -- Forgemaster Garfrost
enc["2001"] = "36476"; -- Ick and Krick
enc["2000"] = "36658"; -- Scourgelord Tyrannus
enc["1992"] = "38112"; -- Falric
enc["1993"] = "38113"; -- Marwyn
enc["1652"] = "39863"; -- Halion (diario)
-- SIN ENC (resolver por GUID o diario): Baltharus the Warborn (39751) — módulo Baltharus
-- SIN ENC (resolver por GUID o diario): Saviana Ragefire (39747) — módulo Saviana
-- SIN ENC (resolver por GUID o diario): General Zarithrian (39746) — módulo Zarithrian

-- Ulduar: ids de diario Retail (propuesta comparar, era EJ moderna)
enc["744"] = "33113"; -- Flame Leviathan (diario)
enc["745"] = "33118"; -- Ignis (diario)
enc["746"] = "33186"; -- Razorscale (diario)
enc["747"] = "33293"; -- XT-002 Deconstructor (diario)
enc["748"] = "32867,32927,32857"; -- Iron Council (diario)
enc["749"] = "32930"; -- Kologarn (diario)
enc["750"] = "33515"; -- Auriaya (diario)
enc["751"] = "32845,32926"; -- Hodir (diario)
enc["752"] = "32865"; -- Thorim (diario)
enc["753"] = "32906"; -- Freya (diario)
enc["754"] = "33432"; -- Mimiron (diario)
enc["755"] = "33271"; -- General Vezax (diario)
enc["756"] = "33288"; -- Yogg-Saron (diario)
enc["757"] = "32871"; -- Algalon (diario)

P.enc = enc;
