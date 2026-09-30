--[[
	Bosses_Cata_enc.lua
		Índice de encuentros del pack: encounterID → NPC IDs del pack
		(estilo DBM, SetEncounterID/SetCreatureID). Generado con
		npm run comparar-dbm (fuente: _doc/DBM) y curado a mano. El core
		lo usa para resolver ENCOUNTER_START sin depender del diario (EJ).
		Los encounters triple (Deadmines/SFK 1060-1081 y 2973-2982) cubren
		también los remasters de la temporada 2 de Midnight.

		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local enc = {};

-- Mazmorras de Cataclysm (DBM-Party-Cataclysm) ------------------------------

-- Blackrock Caverns (645)
enc["1036"] = "39705"; -- Señor ascendiente Obsidius
enc["1037"] = "39700"; -- Bella
enc["1038"] = "39679"; -- Corla, Heraldo del Crepúsculo
enc["1039"] = "39698"; -- Karsh Doblacero
enc["1040"] = "39665"; -- Machacahuesos Rom'ogg

-- Deadmines (36) + remaster S2 (2973-2982)
enc["1060"] = "47739"; -- Capitán Cocinitas
enc["2973"] = "47739"; -- Capitán Cocinitas (remaster S2)
enc["2978"] = "47739"; -- Capitán Cocinitas (remaster S2)
enc["1063"] = "43778"; -- Siegaenemigos 5000
enc["2975"] = "43778"; -- Siegaenemigos 5000 (remaster S2)
enc["2980"] = "43778"; -- Siegaenemigos 5000 (remaster S2)
enc["1064"] = "47162"; -- Glubtok
enc["2976"] = "47162"; -- Glubtok (remaster S2)
enc["2981"] = "47162"; -- Glubtok (remaster S2)
enc["1065"] = "47296,47297"; -- Helix Rompengranajes
enc["2977"] = "47296,47297"; -- Helix Rompengranajes (remaster S2)
enc["2982"] = "47296,47297"; -- Helix Rompengranajes (remaster S2)
enc["1062"] = "47626"; -- Almirante Rasgagruñido
enc["2974"] = "47626"; -- Almirante Rasgagruñido (remaster S2)
enc["2979"] = "47626"; -- Almirante Rasgagruñido (remaster S2)
-- enc["1081"] = "49541"; -- Vanessa VanCleef: ENC conocida, sin entrada todavía

-- End Time (938)
enc["1881"] = "54431"; -- Eco de Baine
enc["1883"] = "54445"; -- Eco de Jaina
enc["1271"] = "54432"; -- Murozond
enc["1882"] = "54123"; -- Eco de Sylvanas
enc["1884"] = "54544"; -- Eco de Tyrande

-- Grim Batol (670)
enc["1048"] = "40319"; -- Drahga Quemasombras
enc["1049"] = "40484"; -- Erudax
enc["1050"] = "40177"; -- Maestro de forja Throngus
enc["1051"] = "39625"; -- General Umbriss

-- Halls of Origination (644)
enc["1074"] = "39731"; -- Ammunae
enc["1075"] = "39788"; -- Anraphet
enc["1077"] = "39587"; -- Isiset
enc["1078"] = "39378"; -- Rajh
enc["1079"] = "39732"; -- Setesh
enc["1080"] = "39425"; -- Guardián del templo Anhuur

-- Hour of Twilight (940)
enc["1337"] = "54590"; -- Arcurion
enc["1340"] = "54968"; -- Asira Dawnslayer
enc["1339"] = "54938"; -- Arzobispo Benedictus

-- Lost City of the Tol'vir (755)
enc["1052"] = "44577"; -- General Husam
enc["1053"] = "43612"; -- Sumo profeta Barim
enc["1055"] = "44819"; -- Siamat

-- Shadowfang Keep (33)
enc["1069"] = "46962"; -- Barón Ashbury
enc["1072"] = "46964"; -- Lord Godfrey
enc["1070"] = "3887"; -- Barón Filargenta
enc["1071"] = "4278"; -- Comandante Vallefont
enc["1073"] = "46963"; -- Lord Walden

-- The Stonecore (725)
enc["1056"] = "43438"; -- Corborus
enc["1057"] = "42333"; -- Suma Sacerdotisa Azil
enc["1058"] = "42188"; -- Ozruk
enc["1059"] = "43214"; -- Pielpétrea

-- The Vortex Pinnacle (657)
enc["1041"] = "43873"; -- Altairus
enc["1042"] = "43875"; -- Asaad
enc["1043"] = "43878"; -- Gran visir Ertan

-- Throne of the Tides (643)
enc["1044"] = "40765"; -- Comandante Ulthok
enc["1046"] = "40825,40788"; -- Erunak Hablapiedra (y Domina-mentes Ghur'sha)
enc["1045"] = "40586"; -- Lady Naz'jar
enc["1047"] = "213770,40792,42172"; -- Ozumat

-- Well of Eternity (939)
enc["1273"] = "54853"; -- Reina Azshara
enc["1274"] = "54969"; -- Mannoroth y Varo'then
enc["1272"] = "55085"; -- Peroth'arn

-- Zul'Aman (568)
enc["1189"] = "23574"; -- Akil'zon
enc["1194"] = "23863"; -- Daakara
enc["1192"] = "23577"; -- Halazzi
enc["1191"] = "23578"; -- Jan'alai
enc["1193"] = "24239"; -- Señor aojador Malacrass
enc["1190"] = "23576"; -- Nalorakk

-- Zul'Gurub (859)
enc["1182"] = "52148"; -- Jin'do el Sojuzgadioses
enc["1180"] = "52059"; -- Suma sacerdotisa Kilnara
enc["1179"] = "52151"; -- Señor sangriento Mandokir
enc["1178"] = "52155"; -- Sumo sacerdote Venoxis
enc["1181"] = "52053"; -- Zanzil

-- Evento aniversario de Cataclysm (DBM-WorldEvents) ------------------------

enc["2320"] = "43324,52409,41376"; -- Cho'gall (evento del aniversario)

-- Pendientes (sin entrada en el pack; el modo depuración los anotará):
--   Vanessa VanCleef (ENC 1081, CID 49541). Las criaturas del Zul'Gurub
--   clásico (Gri'lek, Hazza'rah, Renataki, Wushoolay, 52258-52271) y
--   Terracundo Ptah/Augh/Cierrafauce tienen entrada pero sin ENC conocida
--   en esta copia de DBM.

P.enc = enc;