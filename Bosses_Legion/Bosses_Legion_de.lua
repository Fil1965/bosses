--[[
	Bosses_Legion_de.lua
		Bosses_Legion-Daten, GENERIERT mit scripts/generar-pack-legion.mjs aus den Legion-DBM-Modulen in _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Telegrafische ehrliche Taktiken (DBM-Hinweistyp); die feine Prosa wird später von Hand gepflegt. Namen: Journal-Korpus (nombres-jefe) + Weltboss-Karte.
		Orden del propietario 2026-10-15: los cuatro locales del tirón.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Antorus, the Burning Throne : Zona 1712 --
-- --------------------------------- --

pack["121975"] = { "Aggramar",
	"* |cff71d5ff|Hspell:245990|h[Taeshalach Reach]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:245458|h[Foe Breaker Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:245463|h[Flame Rend Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:245994|h[Scorching Blaze]|h|r: Vorsicht.",
};

pack["122104"] = { "Portalhüterin Hasabel",
	"* |cff71d5ff|Hspell:244016|h[Reality Tear]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244677|h[Transport Portal]|h|r: Adds: schnell besiegen.",
	"* |cff71d5ff|Hspell:243983|h[Collapsing World]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:244000|h[Felstorm Barrage]|h|r: weit weg von der Linie.",
};

pack["122366"] = { "Varimathras",
	"* |cff71d5ff|Hspell:243960|h[Shadow Strike]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:243961|h[Misery Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:243967|h[Tormentof Flames]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:243976|h[Tormentof Frost]|h|r: Vorsicht.",
};

bos = { "Antorisches Oberkommando",
	"* |cff71d5ff|Hspell:244892|h[Exploit Weakness]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244172|h[Psychic Assault]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:253040|h[Assume Command]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244141|h[Outof Pod]|h|r: Vorsicht.",
};
pack["122369"] = bos; pack["122333"] = bos; pack["122367"] = bos;

bos = { "Der Zirkel der Shivarra",
	"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244899|h[Fiery Strike]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:245518|h[Flash Freeze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:245634|h[GTFO]|h|r: Vorsicht.",
};
pack["122468"] = bos; pack["122467"] = bos; pack["122469"] = bos;

bos = { "Teufelshunde des Sargeras",
	"* |cff71d5ff|Hspell:251356|h[Focusing Power]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:251448|h[Burning Maw]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244768|h[Desolate Gaze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244057|h[Enflamed Corruption]|h|r: Vorsicht.",
};
pack["122477"] = bos; pack["122135"] = bos;

pack["124445"] = { "Eonar die Lebensbinderin",
	"* |cff71d5ff|Hspell:250140|h[Foul Steps]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:248332|h[Rainof Fel]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:246888|h[Warp In]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:250048|h[Life Force]|h|r: Vorsicht.",
};

pack["122450"] = { "Weltenbrecher der Garothi",
	"* |cff71d5ff|Hspell:246220|h[Fel Bombardment Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244410|h[Decimation]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244152|h[Apoc Drive]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:244969|h[Eradication]|h|r: weglaufen.",
};

pack["124158"] = { "Imonar der Seelenjäger",
	"* |cff71d5ff|Hspell:247367|h[Shocklance]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247687|h[Sever]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247552|h[Sleep Canister]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247565|h[Slumber Gas]|h|r: Vorsicht.",
};

pack["122578"] = { "Kin'garoth",
	"* |cff71d5ff|Hspell:244312|h[Forging Strike Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:248375|h[Shattering Strike]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:246779|h[Diabolic Bomb]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:254926|h[Reverberating Strike]|h|r: Vorsicht.",
};

pack["124828"] = { "Argus, der Zerrütter",
	"* |cff71d5ff|Hspell:248499|h[Sweeping Scythe]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:258838|h[Soul Rending Scythe]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:258039|h[Deadly Scythe]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:248167|h[GTFO]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- The Emerald Nightmare : Zona 1520 --
-- --------------------------------- --

pack["100497"] = { "Ursoc",
	"* |cff71d5ff|Hspell:197943|h[Overwhelm]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:197942|h[Rend Flesh]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198006|h[Focused Gaze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198388|h[Blood Frenzy]|h|r: Vorsicht.",
};

pack["102672"] = { "Nythendra",
	"* |cff71d5ff|Hspell:204463|h[Volatile Rot Swap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:204504|h[Infested Stack]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:203096|h[Rot]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:203552|h[Heartof Swarm]|h|r: Vorsicht.",
};

pack["102679"] = { "Drachen des Alptraums",
	"* |cff71d5ff|Hspell:204720|h[Dragon]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:204100|h[Shades Of Taerar]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:203110|h[Slumbering Nightmare]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:203028|h[Breath]|h|r: Vorsicht.",
};

pack["103769"] = { "Xavius",
	"* |cff71d5ff|Hspell:224649|h[Tormenting Swipe]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:206651|h[Darkening Soul]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:209158|h[Blackening Soul]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:209443|h[Nightmare Infusion]|h|r: Vorsicht.",
};

pack["105393"] = { "Il'gynoth, Herz der Verderbnis",
	"* |cff71d5ff|Hspell:210984|h[Eye Of Fate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:215234|h[Nightmarish Fury]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:210931|h[Nightmare Gaze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:210099|h[Fixate]|h|r: Vorsicht.",
};

pack["106087"] = { "Elerethe Renferal",
	"* |cff71d5ff|Hspell:212512|h[Web Wrap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:215582|h[Raking Talon Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:210326|h[Spider Form]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212364|h[Feeding Time]|h|r: Vorsicht.",
};

pack["104636"] = { "Cenarius",
	"* |cff71d5ff|Hspell:210279|h[Creeping Nightmares]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:213162|h[Nightmare Blast Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:214529|h[Spear Of Nightmares Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:210290|h[Nightmare Brambles]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- The Nighthold : Zona 1530 --
-- --------------------------------- --

pack["101002"] = { "Krosus",
	"* |cff71d5ff|Hspell:206677|h[Searing Brand]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:205344|h[Expel Orb Destro]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:205862|h[Slam Soon]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:205368|h[Fel Beam]|h|r: Vorsicht.",
};

pack["102263"] = { "Skorpyron",
	"* |cff71d5ff|Hspell:204275|h[Arcanoslash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:204372|h[Callof Scorp]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:204292|h[Broken Shard]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:204459|h[Vulnerable]|h|r: Vorsicht.",
};

pack["103685"] = { "Tichondrius",
	"* |cff71d5ff|Hspell:216024|h[Volatile Wound]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:208230|h[Feast Of Blood Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:206480|h[Carrion Plague]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212794|h[Brand Of Argus]|h|r: Vorsicht.",
};

pack["103758"] = { "Sterndeuter Etraeus",
	"* |cff71d5ff|Hspell:205984|h[Gravitational Pull]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:205429|h[Star Sign Crab]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:216344|h[Star Sign Dragon]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:216345|h[Star Sign Hunter]|h|r: Vorsicht.",
};

pack["104415"] = { "Chronomatische Anomalie",
	"* |cff71d5ff|Hspell:206607|h[Chronometric Part]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219823|h[Power Overwhelming Stack]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:207012|h[Normal]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:207013|h[Fast]|h|r: Vorsicht.",
};

pack["104154"] = { "Gul'dan",
	"* |cff71d5ff|Hspell:206222|h[Bondsof Fel Tank]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:208802|h[Soul Corrosion]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:221606|h[Flames Of Sargeras Tank]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:206219|h[Liquid Hellfire]|h|r: Achtung, am Boden.",
};

pack["104288"] = { "Trilliax",
	"* |cff71d5ff|Hspell:206641|h[Arcano Slash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:206488|h[Arcane Seepage]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:206560|h[Cleaner Mode]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:206788|h[Toxic Slice]|h|r: Vorsicht.",
};

pack["104881"] = { "Aluriel die Zauberklinge",
	"* |cff71d5ff|Hspell:212492|h[Annihilate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212647|h[Frostbitten]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:213864|h[Frost Phase]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:213867|h[Fire Phase]|h|r: Vorsicht.",
};

pack["106643"] = { "Großmagistrix Elisande",
	"* |cff71d5ff|Hspell:209615|h[Ablation]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:209973|h[Ablating Explosion]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:209598|h[Conflexive Burst Tank]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:209971|h[Ablative Pulse]|h|r: Vorsicht.",
};

pack["104528"] = { "Hochbotaniker Tel'arn",
	"* |cff71d5ff|Hspell:218503|h[Recursive Strikes]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:218806|h[Flare]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:218927|h[Graceof Nature]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:218438|h[Controlled Chaos]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- Tomb of Sargeras : Zona 1676 --
-- --------------------------------- --

pack["115844"] = { "Goroth",
	"* |cff71d5ff|Hspell:231363|h[Burning Armor Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233055|h[Infernal Spike]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233272|h[Shattering Star]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:232249|h[Crashing Comet]|h|r: Vorsicht.",
};

pack["116407"] = { "Harjatan",
	"* |cff71d5ff|Hspell:231998|h[Jagged Abrasion]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233429|h[Frigid Blows]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:231729|h[Aqueous Burst]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:234016|h[Driven Assault]|h|r: Vorsicht.",
};

pack["115767"] = { "Herrin Sassz'ine",
	"* |cff71d5ff|Hspell:230201|h[Burdenof Pain Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:230139|h[Hydra Shot]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:230273|h[Dark Depths]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:230214|h[Burden All]|h|r: Vorsicht.",
};

pack["116939"] = { "Gefallener Avatar",
	"* |cff71d5ff|Hspell:236494|h[Desolate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233556|h[Corrupted Matrix]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:240728|h[Tainted Essence]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:234059|h[Unbound Chaos]|h|r: Vorsicht.",
};

bos = { "Dämonische Inquisition",
	"* |cff71d5ff|Hspell:233426|h[Scythe Sweep]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:248713|h[Soul Corruption]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233104|h[Torment]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233431|h[Quills]|h|r: Vorsicht.",
};
pack["116691"] = bos; pack["116689"] = bos;

bos = { "Schwestern des Mondes",
	"* |cff71d5ff|Hspell:239264|h[Lunar Fire]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:236357|h[Fontof Elune]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:236550|h[Discorporate Swap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:236596|h[Rapid Shot]|h|r: Vorsicht.",
};
pack["118523"] = bos; pack["118374"] = bos; pack["118518"] = bos;

pack["117269"] = { "Kil'jaeden",
	"* |cff71d5ff|Hspell:239932|h[Fel Claw]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:236710|h[Erupting Relections]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:235059|h[Singularity Soon]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:238430|h[Bursting Dread Flame]|h|r: Vorsicht.",
};

pack["118289"] = { "Wachsame Maid",
	"* |cff71d5ff|Hspell:235117|h[Unstable Soul]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:235267|h[Mass Shit]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:235271|h[Infusion]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:236061|h[Essence Fragments]|h|r: Vorsicht.",
};

bos = { "Die trostlose Heerschar",
	"* |cff71d5ff|Hspell:236548|h[Torment]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:236542|h[Sundering Doom Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:236544|h[Doomed Sundering Taunt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:235924|h[Spearof Anguish]|h|r: Vorsicht.",
};
pack["118460"] = bos; pack["118462"] = bos; pack["119072"] = bos;


-- --------------------------------- --
-- Trial of Valor : Zona 1648 --
-- --------------------------------- --

bos = { "Odyn",
	"* |cff71d5ff|Hspell:227626|h[Odyns Test Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228918|h[Stormforged Spear Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228171|h[Revivify]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227503|h[Branded]|h|r: Vorsicht.",
};
pack["114263"] = bos; pack["114361"] = bos; pack["114360"] = bos;

pack["114323"] = { "Guarm",
	"* |cff71d5ff|Hspell:228201|h[Off Leash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227514|h[Fangs]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228253|h[Shadow Lick]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228248|h[Frost Lick]|h|r: Vorsicht.",
};

pack["114537"] = { "Helya",
	"* |cff71d5ff|Hspell:227982|h[Bilewater Redox]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228519|h[Anchor Slam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:229119|h[Orb Of Corruption]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228054|h[Taint Of Sea]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- Black Rook Hold : Zona 1501 --
-- --------------------------------- --

pack["98542"] = { "Das Amalgam der Seelen",
	"* |cff71d5ff|Hspell:196930|h[Soulgorge]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:194956|h[Reap Soul]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:195254|h[Swirling Scythe]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:194966|h[Soul Echoes]|h|r: Vorsicht.",
};

pack["98696"] = { "Illysanna Rabenkrone",
	"* |cff71d5ff|Hspell:197974|h[Bonebreaking Strike]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:197546|h[Brutal Glaive]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:197478|h[Dark Rush]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:197418|h[Vengeful Shear]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
};

pack["98949"] = { "Stachelfaust der Verhasste",
	"* |cff71d5ff|Hspell:198245|h[Brutal Haymaker Soon]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198079|h[Hateful Gaze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198073|h[Stomp]|h|r: Rückstoß: Rand beachten.",
	"* |cff71d5ff|Hspell:198446|h[Fel Vomit]|h|r: auseinander.",
};

bos = { "Lord Kur'talos Rabenkrone",
	"* |cff71d5ff|Hspell:198641|h[Whirling Blade]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198820|h[Darkblast]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:199143|h[Cloud]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:201733|h[Swarm]|h|r: Vorsicht.",
};
pack["98965"] = bos; pack["98970"] = bos;


-- --------------------------------- --
-- Cathedral of Eternal Night : Zona 1677 --
-- --------------------------------- --

pack["120793"] = { "Mephistroth",
	"* |cff71d5ff|Hspell:233155|h[Carrion Swarm]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:234817|h[Dark Solitude]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233206|h[Shadow Fade]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233963|h[Demonic Upheaval]|h|r: Vorsicht.",
};

pack["119542"] = { "Domatrax",
	"* |cff71d5ff|Hspell:236543|h[Felsoul Cleave]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:241622|h[Approaching Doom]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:234107|h[Chaotic Energy]|h|r: in Deckung gehen.",
	"* |cff71d5ff|Hspell:200597|h[Adds]|h|r: Adds: schnell besiegen.",
};

pack["117193"] = { "Agronox",
	"* |cff71d5ff|Hspell:236524|h[Spores]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:235751|h[Timber Smash]|h|r: Rückstoß: Rand beachten.",
	"* |cff71d5ff|Hspell:238598|h[Choking Vine]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:240065|h[Succulent Secretion]|h|r: Vorsicht.",
};

pack["117194"] = { "Dreschzahn der Spöttische",
	"* |cff71d5ff|Hspell:237726|h[Scornful Gaze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:243124|h[Heave Crud]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:237276|h[Pulv Crudgel]|h|r: weglaufen.",
	"* |cff71d5ff|Hspell:238484|h[Mind Control]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- Court of Stars : Zona 1571 --
-- --------------------------------- --

pack["104215"] = { "Patrouillenoffizier Gerdo",
	"* |cff71d5ff|Hspell:219488|h[Streetsweeper]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:207815|h[Flask]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:207261|h[Resonant Slash]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:207278|h[Arcane Lockdown]|h|r: immer in Bewegung bleiben.",
};

pack["104217"] = { "Talixae Flammenkranz",
	"* |cff71d5ff|Hspell:208165|h[Withering Soul]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:207906|h[Burning Intensity]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:207881|h[Infernal Eruption]|h|r: Achtung, am Boden.",
};

pack["104218"] = { "Berater Melandrus",
	"* |cff71d5ff|Hspell:209602|h[Surge]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:209676|h[Slicing Maelstrom]|h|r: Flächenschaden: Heilung und Abstand.",
	"* |cff71d5ff|Hspell:209628|h[Gale]|h|r: Achtung, am Boden.",
};


-- --------------------------------- --
-- Darkheart Thicket : Zona 1466 --
-- --------------------------------- --

pack["96512"] = { "Erzdruide Glaidalis",
	"* |cff71d5ff|Hspell:196354|h[Leap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212464|h[Night Fall]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198379|h[Rampage]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
	"* |cff71d5ff|Hspell:198477|h[Fixate]|h|r: der Markierte weicht der Gruppe aus.",
};

pack["103344"] = { "Eichenherz",
	"* |cff71d5ff|Hspell:204666|h[Shattered Earth]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:204658|h[Throw Target]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212786|h[Uproot]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:204574|h[Roots]|h|r: Achtung, am Boden.",
};

pack["99200"] = { "Dresaron",
	"* |cff71d5ff|Hspell:191325|h[Breath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:199389|h[Roar]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:199345|h[Down Draft]|h|r: immer in Bewegung bleiben.",
	"* |cff71d5ff|Hspell:199460|h[Falling Rocks]|h|r: Achtung, am Boden.",
};

pack["99192"] = { "Schemen von Xavius",
	"* |cff71d5ff|Hspell:200243|h[Waking Nightmare]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200289|h[Paranoia]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200050|h[Apoc Nightmare]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200238|h[Feed On The Weak]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91784"] = { "Kriegsherr Parjesh",
	"* |cff71d5ff|Hspell:192072|h[Reinforcements]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192094|h[Impaling Spear]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:191900|h[Crashingwave]|h|r: Ansturm: aus der Linke heraus.",
	"* |cff71d5ff|Hspell:197502|h[Restoration]|h|r: unterbrechen.",
};

pack["91789"] = { "Lady Hassnatter",
	"* |cff71d5ff|Hspell:193682|h[Adds]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193698|h[Curseof Witch]|h|r: Vorsicht.",
};

pack["91797"] = { "König Klafterbart",
	"* |cff71d5ff|Hspell:193093|h[Ground Slam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193152|h[Quake]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193051|h[Call Seas]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:193018|h[Bubbles]|h|r: spezielle Boss-Mechanik.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91808"] = { "Serpentrix",
	"* |cff71d5ff|Hspell:191855|h[Toxic Wound]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:191798|h[Winds]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:191873|h[Submerge]|h|r: Phasenwechsel: aufgepasst.",
	"* |cff71d5ff|Hspell:191858|h[Toxic Pool]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["96028"] = { "Azsharas Zorn",
	"* |cff71d5ff|Hspell:192617|h[Massive Deluge]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192680|h[Mythic Tornado]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192706|h[Arcane Bomb]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- Halls of Valor : Zona 1477 --
-- --------------------------------- --

pack["94960"] = { "Hymdall",
	"* |cff71d5ff|Hspell:193092|h[Sweep]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:188404|h[Breath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193235|h[Dancing Blade]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:191284|h[Horn Of Valor]|h|r: Frontal: der Nahkampf dahinter.",
};

pack["95833"] = { "Hyrja",
	"* |cff71d5ff|Hspell:192048|h[Expel Light]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192018|h[Shield Of Light]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
	"* |cff71d5ff|Hspell:192307|h[Sanctify]|h|r: spezielle Boss-Mechanik.",
	"* |cff71d5ff|Hspell:200901|h[Eyeof Storm]|h|r: in Deckung gehen.",
};

bos = { "Fenryr",
	"* |cff71d5ff|Hspell:197556|h[Leap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:196838|h[Fixate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:196512|h[Claw Frenzy]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:196543|h[Howl]|h|r: unterbrechen.",
};
pack["95674"] = bos; pack["99868"] = bos;

pack["95675"] = { "Gottkönig Skovald",
	"* |cff71d5ff|Hspell:193783|h[Aegis]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193659|h[Felblaze Rush]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:194112|h[Claim Aegis]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193668|h[Savage Blade]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
};

pack["95676"] = { "Odyn",
	"* |cff71d5ff|Hspell:198072|h[Spear]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198263|h[Tempest]|h|r: weglaufen.",
	"* |cff71d5ff|Hspell:198077|h[Shatter Spears]|h|r: spezielle Boss-Mechanik.",
	"* |cff71d5ff|Hspell:197961|h[Runic Brand]|h|r: Vorsicht.",
};

-- --------------------------------- --
-- Maw of Souls : Zona 1492 --
-- --------------------------------- --

pack["96756"] = { "Ymiron, der gefallene König",
	"* |cff71d5ff|Hspell:193460|h[Bane]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193211|h[Dark Slash]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
	"* |cff71d5ff|Hspell:193364|h[Screams]|h|r: weglaufen.",
	"* |cff71d5ff|Hspell:193977|h[Winds]|h|r: Rückstoß: Rand beachten.",
};

pack["96754"] = { "Harbaron",
	"* |cff71d5ff|Hspell:194327|h[Fragment]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:194231|h[Servitor]|h|r: Adds: schnell besiegen.",
	"* |cff71d5ff|Hspell:194266|h[Void Snap]|h|r: unterbrechen.",
	"* |cff71d5ff|Hspell:194216|h[Scythe]|h|r: Schockwelle: springen oder weg.",
};

pack["96759"] = { "Helya",
	"* |cff71d5ff|Hspell:197262|h[Taintof Sea]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:196947|h[Submerged]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:202088|h[Brackwater Barrage]|h|r: Frontal: der Nahkampf dahinter.",
	"* |cff71d5ff|Hspell:227233|h[Breath]|h|r: Frontal: der Nahkampf dahinter.",
};


-- --------------------------------- --
-- Neltharion's Lair : Zona 1458 --
-- --------------------------------- --

pack["91003"] = { "Rokmora",
	"* |cff71d5ff|Hspell:188169|h[Razor Shards]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:188114|h[Shatter]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192800|h[Gas]|h|r: Achtung, am Boden.",
};

pack["91004"] = { "Ularogg Klippenformer",
	"* |cff71d5ff|Hspell:216290|h[Strikeof Mountain]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:193375|h[Bellowof Deeps]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:216249|h[Stanceof Mountain]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:198496|h[Sunder]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
};

pack["91005"] = { "Naraxas",
	"* |cff71d5ff|Hspell:209906|h[Fixate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:199176|h[Spiked Tongue Over]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:199817|h[Adds]|h|r: Adds kommen.",
	"* |cff71d5ff|Hspell:188494|h[Rancid Maw]|h|r: Achtung, am Boden.",
};

pack["91007"] = { "Dargrul der Unterkönig",
	"* |cff71d5ff|Hspell:200700|h[Land Slide]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200551|h[Crystal Spikes]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200154|h[Burning Hatred]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200732|h[Molten Crash]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
};


-- --------------------------------- --
-- Return to Karazhan : Zona 1651 --
-- --------------------------------- --

pack["113971"] = { "Tugendhafte Maid",
	"* |cff71d5ff|Hspell:227789|h[Sacred Ground]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227823|h[Holy Wrath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227800|h[Holy Shock]|h|r: unterbrechen.",
	"* |cff71d5ff|Hspell:227508|h[Repentance]|h|r: Vorsicht.",
};

bos = { "Opernsaal: Das schöne Biest",
	"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228193|h[Burning Blaze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: unterbrechen.",
};
pack["114329"] = bos; pack["114522"] = bos; pack["114330"] = bos; pack["114328"] = bos;

bos = { "Der Opernsaal: Westfall Story",
	"* |cff71d5ff|Hspell:227568|h[Leg Sweep]|h|r: weglaufen.",
	"* |cff71d5ff|Hspell:227777|h[Thunder Ritual]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227420|h[Bubble Blast]|h|r: unterbrechen.",
	"* |cff71d5ff|Hspell:227783|h[Wash Away]|h|r: Schockwelle: springen oder weg.",
};
pack["114261"] = bos; pack["114260"] = bos;

bos = { "Der Opernsaal: Wikket",
	"* |cff71d5ff|Hspell:227477|h[Summon Adds]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227776|h[Magic Magnificent]|h|r: in Deckung gehen.",
	"* |cff71d5ff|Hspell:227416|h[Wondrous Radiance]|h|r: Vorsicht.",
};
pack["114284"] = bos; pack["114251"] = bos;

pack["114252"] = { "Manaschlinger",
	"* |cff71d5ff|Hspell:227523|h[Energy Void]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227618|h[Arcane Bomb]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227507|h[Decimating Essence]|h|r: Flächenschaden: Heilung und Abstand.",
	"* |cff71d5ff|Hspell:227297|h[Coalesce Power]|h|r: absorbieren, teilt den Schaden.",
};

bos = { "Attumen der Jäger",
	"* |cff71d5ff|Hspell:227363|h[Mighty Stomp]|h|r: unterbrechen.",
	"* |cff71d5ff|Hspell:227365|h[Spectral Charge]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:227339|h[Mezair]|h|r: Ansturm: aus der Linke heraus.",
	"* |cff71d5ff|Hspell:227493|h[Mortal Strike]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
};
pack["114262"] = bos; pack["114264"] = bos;

pack["114312"] = { "Moroes",
	"* |cff71d5ff|Hspell:227672|h[Will Breaker]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227737|h[Vanish]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227872|h[Ghastly Purge]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227545|h[Mana Drain]|h|r: Vorsicht.",
};

pack["114462"] = { "Der Kurator",
	"* |cff71d5ff|Hspell:227267|h[Adds]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227254|h[Evo]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227465|h[Power Discharge]|h|r: Achtung, am Boden.",
};

pack["114350"] = { "Medivhs Schemen",
	"* |cff71d5ff|Hspell:227615|h[Inferno Bolt]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228269|h[Flame Wreath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:227628|h[Arcane Missiles]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
	"* |cff71d5ff|Hspell:227592|h[Frostbite]|h|r: unterbrechen.",
};

pack["114790"] = { "Viz'aduum der Beobachter",
	"* |cff71d5ff|Hspell:229159|h[Chaotic Shadows]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:229242|h[Fel Beam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:229151|h[Disintegrate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:229083|h[Burning Blast]|h|r: Vorsicht.",
};

pack["114895"] = { "Nightbane",
	"* |cff71d5ff|Hspell:228796|h[Ignite Soul]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228785|h[Breath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:229307|h[Reverb Shadows]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:228808|h[Charred Earth]|h|r: Achtung, am Boden.",
};


-- --------------------------------- --
-- Seat of the Triumvirate : Zona 1753 --
-- --------------------------------- --

pack["124871"] = { "Zuraal der Aufgestiegene",
	"* |cff71d5ff|Hspell:1263282|h[Decimate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:1268916|h[Null Palm]|h|r: Frontal: der Nahkampf dahinter.",
	"* |cff71d5ff|Hspell:1263399|h[Oozing Slam]|h|r: Adds kommen.",
	"* |cff71d5ff|Hspell:1263440|h[Void Slash]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
};

pack["124872"] = { "Saprish",
	"* |cff71d5ff|Hspell:1280064|h[Phase Dash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:245738|h[Shadow Pounce]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247175|h[Void Bomb]|h|r: Bombe kommt: weg von der Marke.",
	"* |cff71d5ff|Hspell:1263523|h[Overload]|h|r: Flächenschaden: Heilung und Abstand.",
};

pack["124874"] = { "Vizekönig Nezhar",
	"* |cff71d5ff|Hspell:244750|h[Mind Blast]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:1263542|h[Mass Void Infusion]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:1263538|h[Umbral Tentacles]|h|r: Adds kommen.",
	"* |cff71d5ff|Hspell:1263528|h[Repulse]|h|r: Rückstoß: Rand beachten.",
};

pack["124870"] = { "L'ura",
	"* |cff71d5ff|Hspell:1265426|h[Discordantbeam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:1265421|h[Dirge]|h|r: Flächenschaden: Heilung und Abstand.",
	"* |cff71d5ff|Hspell:1264151|h[Disintegrate]|h|r: weit weg von der Linie.",
	"* |cff71d5ff|Hspell:1265689|h[Grim Chorus]|h|r: Vorsicht.",
};


-- --------------------------------- --
-- The Arcway : Zona 1516 --
-- --------------------------------- --

pack["98205"] = { "Corstilax",
	"* |cff71d5ff|Hspell:196070|h[Supression]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:195804|h[Quarantine]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:196115|h[Cleansing]|h|r: Flächenschaden: Heilung und Abstand.",
};

pack["98207"] = { "Nal'tira",
	"* |cff71d5ff|Hspell:199811|h[Blink]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200284|h[Web]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200040|h[Venom GTFO]|h|r: Vorsicht.",
};

pack["98203"] = { "Ivanyr",
	"* |cff71d5ff|Hspell:196562|h[Volatile Magic]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:196805|h[Nether Link]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:196392|h[Overcharge Mana]|h|r: unterbrechen.",
};

pack["98206"] = { "General Xakal",
	"* |cff71d5ff|Hspell:197776|h[Fissure]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:212030|h[Slash]|h|r: Schockwelle: springen oder weg.",
	"* |cff71d5ff|Hspell:197810|h[Slam]|h|r: Rückstoß: Rand beachten.",
};

pack["98208"] = { "Berater Vandros",
	"* |cff71d5ff|Hspell:203957|h[Time Lock]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:203176|h[Unstable Mana]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:203833|h[Time Split]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:202974|h[Force Bomb]|h|r: Rückstoß: Rand beachten.",
};


-- --------------------------------- --
-- Vault of the Wardens : Zona 1493 --
-- --------------------------------- --

pack["95885"] = { "Tirathon Saltheril",
	"* |cff71d5ff|Hspell:204151|h[Dark Strikes]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
	"* |cff71d5ff|Hspell:191823|h[Furious Blast]|h|r: unterbrechen.",
	"* |cff71d5ff|Hspell:202913|h[Fel Mortar]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:202919|h[Fel Mortar GTFO]|h|r: Achtung, am Boden.",
};

pack["95886"] = { "Ash'Golm",
	"* |cff71d5ff|Hspell:192522|h[Fissure]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192621|h[Volcano]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192631|h[Lava Wreath]|h|r: Achtung, am Boden.",
};

pack["95887"] = { "Der Starrer",
	"* |cff71d5ff|Hspell:194942|h[Gaze]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:194289|h[Focused]|h|r: spezielle Boss-Mechanik.",
	"* |cff71d5ff|Hspell:194945|h[Gaze GTFO]|h|r: Achtung, am Boden.",
};

pack["95888"] = { "Cordana Teufelsang",
	"* |cff71d5ff|Hspell:197251|h[Kick]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:213583|h[Deepening Shadows]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:205004|h[Vengeance]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:192750|h[Hidden Started]|h|r: Phasenwechsel: aufgepasst.",
};

pack["96015"] = { "Inquisitor Foltyrium",
	"* |cff71d5ff|Hspell:200898|h[Teleport]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:200905|h[Sap Soul]|h|r: unterbrechen.",
	"* |cff71d5ff|Hspell:201488|h[Fear]|h|r: Furcht kommt: Defensiven.",
	"* |cff71d5ff|Hspell:212564|h[Stare]|h|r: der Markierte weicht der Gruppe aus.",
};


-- --------------------------------- --
-- The Violet Hold : Zona 1544 --
-- --------------------------------- --

pack["101951"] = { "Zitterschlund",
	"* |cff71d5ff|Hspell:201379|h[Breath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:201672|h[Relentless Storm]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:201960|h[Ice Bomb]|h|r: in Deckung gehen.",
};

pack["101950"] = { "Gedankenschinder Kaahrj",
	"* |cff71d5ff|Hspell:201920|h[Shadow Crash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:201148|h[Doom]|h|r: Tank-Mechanik: wechselt und nutzt Defensiven.",
	"* |cff71d5ff|Hspell:201153|h[Eternal Darkness]|h|r: Vorsicht.",
};

pack["101976"] = { "Millificent Manasturm",
"* Zirkelsäge: Konzentriere den Schaden auf den Tank mit kontinuierlichem Blutverlust – sei bereit, ihn schnell zu kontrollieren oder zu kite, wenn die Angriffe zu hoch werden.",
"* |cff71d5ff|Hspell:201159|h[Delta's Finger Ray]|h|r: Mark a player with fire — initial damage plus burn over time; keep the marked player covered.",
"* |cff71d5ff|Hspell:201240|h[Experimentelle Eichhörnchen-Bombe]|h|r: Verteile Bomben, die eine ENORME Explosion auf die gesamte Gruppe auslösen – Rechtsklick auf jede Bombe (deaktivieren) BEVOR sie explodiert.",
"* |cff71d5ff|Hspell:201392|h[Pollo de torio mecánico]|h|r: Ein mechanischer Hühner-ähnlicher Gegner erscheint und feuert Raketen ab – es schnell ausschalten oder die Schüsse vermeiden.",
"* |cff71d5ff|Hspell:201572|h[Wut von Malifica]|h|r: Sie wird wütend und ihre Zauber wirken schneller und stärker – überladene Bomben und verstärkter Hühner-Angriff; Konzentrieren Sie den Schaden.",
"* Feuerstrahl (Oberer Bereich): Ein Verbündeter von Malifica steht auf der oberen Plattform – unterbrechen Sie gefährliche Zauber (wie Diabolical Doom) mit dem Laser oder Kontrollfähigkeiten.",
};

pack["101995"] = { "Faulmiene",
	"* |cff71d5ff|Hspell:202266|h[Ooze GTFO]|h|r: Vorsicht.",
};


pack["102246"] = { "Anub'esset",
	"* |cff71d5ff|Hspell:202341|h[Impale]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:201863|h[Swarm]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:202480|h[Fixate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:202217|h[Mandible Strike]|h|r: Vorsicht.",
};

pack["102431"] = { "Blutprinzessin Thal'ena",
	"* |cff71d5ff|Hspell:202779|h[Essenceofthe Blood Queen]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:202792|h[Bloodthirst]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:202804|h[Mind Controlled]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:203381|h[Call Blood]|h|r: Vorsicht.",
};

pack["102446"] = { "Teufelslord Betrugg",
	"* |cff71d5ff|Hspell:203641|h[Fel Slash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:210879|h[Seedof Destruction]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:205233|h[Execute]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:202328|h[Mighty Smash]|h|r: Rückstoß: Rand beachten.",
};


-- --------------------------------- --
-- Weltnnoss --
-- --------------------------------- --

bos = { "Soultakers",
	"* |cff71d5ff|Hspell:213420|h[Tentacle Bash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:213532|h[Shatter Crew]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:213665|h[Marauding Mists]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:213522|h[Cursed Crew]|h|r: Adds: schnell besiegen.",
};
pack["106981"] = bos; pack["106982"] = bos; pack["106984"] = bos;

pack["109943"] = { "Ana-Mouz",
	"* |cff71d5ff|Hspell:218888|h[Impish Flames]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219045|h[Mothers Embrace]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219068|h[Mothers Embrace Fail]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219254|h[Gaseous Breath]|h|r: Vorsicht.",
};

pack["121124"] = { "Apocron",
	"* |cff71d5ff|Hspell:241518|h[Sear]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:241498|h[Felfire Missiles]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:241458|h[Quake]|h|r: Rückstoß: Rand beachten.",
};

pack["117239"] = { "Brutallus",
	"* |cff71d5ff|Hspell:233484|h[Meteor Slash]|h|r: absorbieren, teilt den Schaden.",
	"* |cff71d5ff|Hspell:233515|h[Crashing Embers]|h|r: Achtung, am Boden.",
	"* |cff71d5ff|Hspell:233566|h[Rupture]|h|r: Achtung, am Boden.",
};

pack["117303"] = { "Malificus",
	"* |cff71d5ff|Hspell:233568|h[Incite Panic]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:234452|h[Shadow Barrage]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233850|h[Virulent Infection]|h|r: Vorsicht.",
};

pack["107023"] = { "Nithogg",
	"* |cff71d5ff|Hspell:212852|h[Breath Swap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212887|h[Static Charge]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212943|h[Lightning Rod]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:212841|h[Crackling Jolt]|h|r: Achtung, am Boden.",
};

pack["117470"] = { "Sivash",
	"* |cff71d5ff|Hspell:241433|h[Submerge]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233968|h[Summon Honor Guard]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:233996|h[Tidal Wave]|h|r: Schockwelle: springen oder weg.",
};

pack["102075"] = { "Withered J'im",
"* Verges: Wenn du in sein Feld gehst, erleidest du einen Debuff, der deinen Schaden um 10 % reduziert und dich verlangsamt — deshalb hat der Boss wenig Leben.",
"* Nachtschatten-Angriffe: Wirft einen magischen Angriff, der in einem Radius von 4 m um den Treffpunkt wirkt — Abstand halten.",
"* Nachtschatten-Energie: Beschwöre periodisch Flächenangriffe mit magischer Energie – halte Abstand und zerstöre sie, um Platz zu gewinnen.",
"* Resonanz: Ummant sich mit einer 15-sekündigen Bastion, die den verursachten Schaden um 30 % reduziert und instabile Resonanzen erzeugt, die sich nach 20 Sekunden in einem Radius von 5 Metern explodieren.",
"* MEHR, MEHR, MEHR!: während der Resonanz-Schutz aktiv ist, greifen Sie den Boss nicht an – der verursachte Schaden ruft einen Klon auf, der seine Fähigkeiten wiederholt.",
"* Instabile Resonanzen: Sie mit schnellem AoE ausschalten, bevor sie explodieren.",
};

pack["108678"] = { "Shar'thos",
	"* |cff71d5ff|Hspell:215821|h[Breath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:215876|h[Burning Earth]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:216044|h[Fear]|h|r: Furcht kommt: Defensiven.",
};

pack["108879"] = { "Humongris",
	"* |cff71d5ff|Hspell:216817|h[Go Bang Swap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:216432|h[Ice Fist]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:216467|h[Snow]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:216428|h[Fire Boom]|h|r: Vorsicht.",
};

pack["110378"] = { "Drugon",
	"* |cff71d5ff|Hspell:219542|h[Avalanche]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219602|h[Snow Plow]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219493|h[Snow Crash]|h|r: Schockwelle: springen oder weg.",
};

pack["110321"] = { "Nazak",
	"* |cff71d5ff|Hspell:219349|h[Corroding Spray]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219865|h[Web Wrap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:219591|h[Foundation]|h|r: Vorsicht.",
};

pack["99929"] = { "Flotsam",
	"* |cff71d5ff|Hspell:220340|h[Getsam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:223373|h[Yaksam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:220295|h[Jetsam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:223317|h[Break Sam]|h|r: Rückstoß: Rand beachten.",
};

pack["109331"] = { "Calamir",
	"* |cff71d5ff|Hspell:217563|h[Ancient Rage Fire]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:217877|h[Burning Bomb]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:217831|h[Ancient Rage Frost]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:217966|h[Howling Gale]|h|r: Vorsicht.",
};

pack["124592"] = { "Inquisitor Meto",
	"* |cff71d5ff|Hspell:247495|h[Sow]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247492|h[Reap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247632|h[Death Field]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247585|h[Seedsof Chaos]|h|r: Vorsicht.",
};

pack["124492"] = { "Occularus",
	"* |cff71d5ff|Hspell:247318|h[Gushing Wound]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247325|h[Lash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247320|h[Searing Gaze]|h|r: unterbrechen.",
	"* |cff71d5ff|Hspell:247393|h[Phantasm]|h|r: spezielle Boss-Mechanik.",
};

pack["124555"] = { "Sotanathor",
	"* |cff71d5ff|Hspell:247410|h[Soul Cleave]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247444|h[Cloven Soul]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247437|h[Seedof Destruction]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247698|h[Silence]|h|r: spezielle Boss-Mechanik.",
};

pack["124719"] = { "Pit Lord Vilemus",
	"* |cff71d5ff|Hspell:247742|h[Drain]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247731|h[Fel Breath]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247733|h[Stomp]|h|r: Rückstoß: Rand beachten.",
};

pack["108829"] = { "Levantus",
	"* |cff71d5ff|Hspell:217235|h[Rending Whirl]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:217344|h[Electrify]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:217249|h[Massive Spout]|h|r: Schockwelle: springen oder weg.",
	"* |cff71d5ff|Hspell:217352|h[Electrify Dispel]|h|r: Vorsicht.",
};

pack["124514"] = { "Matron Folnuna",
	"* |cff71d5ff|Hspell:247361|h[Infected Claws]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247389|h[Slumbering Gasp]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247443|h[Grotesque Spawn]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247379|h[Slumbering Gasp]|h|r: Frontal: der Nahkampf dahinter.",
};

pack["124625"] = { "Mistress Alluradel",
	"* |cff71d5ff|Hspell:247544|h[Sadist Other]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247549|h[Beguiling Charm]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247604|h[Fel Lash]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:247517|h[Heart Breaker]|h|r: Vorsicht.",
};

P.de = de;
