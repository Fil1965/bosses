--[[
	Bosses_Vanilla_en.lua
		English data of the Vanilla (Classic) pack (data only; the
		registration is done by Bosses_Vanilla.lua, loaded after this
		file in the .toc).
		Sources: DBM-Party-Vanilla and LittleWigs_Classic from _doc +
		journal names (_nombres/jefes-Bosses_Vanilla.json).
		Filled in batches (2026): starts with classic Ragefire Chasm.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- Entry format (one per boss, decimal NPC IDs from GUID field 6):
-- pack["NPC_ID"] = { "Boss name", "* tip 1", "* tip 2" };

-- ============================= --
-- Ragefire Chasm : Zona 389 (classic) --
-- ============================= --
-- CIDs 11517-11520 are the Era client bosses; the 12.x remaster uses new
-- CIDs (61408+, pending information to write them).

pack["11520"] = { "Taragaman the Hungerer",
	"* His |cff71d5ff|Hspell:11970|h[Fire Nova]|h|r hits everything around him: melee step away before it lands; ranged and healer stay at max range.",
	"* His |cff71d5ff|Hspell:18072|h[Uppercut]|h|r sends the tank flying: position him away from the lava edges so the knockback never sends anyone into the molten rock."
};
pack["11518"] = { "Jergosh the Invoker",
	"* He comes with two minions: crowd-control one, focus damage on the other, and once both are down the rest is a plain tank-and-spank.",
	"* His |cff71d5ff|Hspell:20800|h[Immolate]|h|r burns hard (dispel it fast) and his |cff71d5ff|Hspell:18267|h[Curse of Weakness]|h|r lowers damage and strength: remove it with a magic dispel."
};
pack["11519"] = { "Bazzalan",
	"* He sits at the top of the final ramp flanked by two zealots: you can single-pull one minion before opening on the boss.",
	"* Crowd-control the remaining minion and burn the boss down; mind his |cff71d5ff|Hspell:744|h[Deadly Poison]|h|r on the tank: it never wears off, it must be cleansed (druid cleanse or antidote)."
};
pack["11517"] = { "Oggleflint",
	"* Frontal area attack (cleave/gore): the tank faces him away from the group so the frontal damage never reaches melee or the healer.",
	"* Kill his adds first."
};

-- ============================================================= --
-- Ragefire Chasm : Zona 389 (retail redo since Mists; the classic four live on CIDs 11517-11520) --
-- ============================================================= --
-- Tactics fetched by the owner (Wowhead search relayed via chat) --
pack["61408"] = { "Adarogg",
	"* He fixes his eyes on a player and charges that spot (Inferno Charge): it hits everyone on his path or near the impact; the marked one runs out of the lane and the group does not cross it.",
	"* His Flame Breath sets a random target on fire: healers stay up."
};
pack["61412"] = { "Dark Shaman Koranthal",
	"* His Twisted Elements bolt (Shadow damage) is interruptible: every cast stopped is damage that never lands.",
	"* His Shadow Storm rains twisted magic over the area: spread out with healers ready."
};
pack["61463"] = { "Slagmaw",
	"* A gentle intro fight: he spits lava on a random player's spot and it hits inside 3 yd; step out of the projectile.",
	"* After exactly five spits he submerges and pops up at another end of the ledge: reshuffle positions when he re-emerges.",
	"* His hitbox is huge: melee beats him comfortably from the platform without leaning over the lava pit."
};
pack["61528"] = { "Lava Guard Gordoth",
	"* His Seismic Slam and Ground Rupture punish the nearby area with Physical damage and knockbacks: tank and melee watch their footing near ledges and do not clump.",
	"* At 30% health he enrages (+30% attack speed and +10% damage): a final burn race with healers ready."
};

-- ============================================================= --
-- Wailing Caverns : Zona 43 (classic) --
-- ============================================================= --
-- The four zone druids (the Fanglords) share one pattern: an
-- interruptible slumber and a heal; only Cobrahn adds a dispellable
-- poison. Mutanus and his chant are the real fight.

pack["3671"] = { "Lady Anacondra",
	"* She shifts into druid form: interrupt her |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r (sleeps a player) and her |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r, or the fight drags on."
};
pack["3669"] = { "Lord Cobrahn",
	"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r.",
	"* His |cff71d5ff|Hspell:17330|h[Poison]|h|r comes off instantly with poison dispels."
};
pack["3670"] = { "Lord Pythas",
	"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r."
};
pack["3673"] = { "Lord Serpentis",
	"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r."
};
pack["3653"] = { "Kresh",
	"* A plain physical fight: no interrupts or dispels, solid tanking and burn."
};
pack["3674"] = { "Skum",
	"* He alternates a |cff71d5ff|Hspell:6254|h[Chained Bolt]|h|r that jumps between targets: do not clump the group and burn him fast."
};
pack["5775"] = { "Verdan the Everliving",
	"* Interrupt his |cff71d5ff|Hspell:8142|h[Vines]|h|r: it is the only detail of the fight, the rest is melee."
};
pack["3654"] = { "Mutanus the Devourer",
	"* |cff71d5ff|Hspell:7967|h[Naralex's Nightmare]|h|r is the heart of the fight: interrupt the chant every time it starts.",
	"* His |cff71d5ff|Hspell:7399|h[Terrify]|h|r (panic) is Magic: healers dispel the hit ones, and his |cff71d5ff|Hspell:8150|h[Thundercrack]|h|r hits the area — healers ready."
};
pack["5912"] = { "Deviate Faerie Dragon",
	"* Optional, half-hidden boss: you do not need to kill it to finish the dungeon.",
	"* Its |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r sleeps a player (dispellable Magic): if nobody kicks the cast, a healer dispels them."
};

-- ============================================================= --
-- The Stockade : Zona 34 (classic) --
-- ============================================================= --
-- The six classics are plain melee fights with no abilities flagged by
-- DBM; only Bazil Thredd adds prisoners.

pack["1696"] = { "Targorr the Dread",
	"* A plain melee fight: nothing to interrupt or dispel, tank glued and burn."
};
pack["1663"] = { "Dextren Tutor",
	"* Fear Ability: Dextren can fear the group, so it is recommended to clear the room and nearby enemies before starting combat.",
	"* Flee: When its health drops, it will try to flee, so it's advisable to control it to prevent it from pulling more enemies."
};
pack["1666"] = { "Kam Deepfury",
	"* A plain melee fight: nothing to interrupt or dispel."
};
pack["1717"] = { "Hamhock",
	"* A plain melee fight that hits hard: nothing to interrupt or dispel."
};
pack["1720"] = { "Bruegal Ironknuckle",
	"* A plain melee fight: nothing to interrupt or dispel."
};
pack["1716"] = { "Bazil Thredd",
	"* The final fight takes place in the yard and his prisoners join in as soon as it starts: kill the adds first, the boss after."
};

-- The Stockade : Zona 34 (retail redo; the classics live on their usual CIDs 1663-1720) --
pack["46254"] = { "Hogger",
	"* The legendary Elwynn villain, now head of the riot: interrupt his |cff71d5ff|Hspell:86620|h[Maddening Call]|h|r.",
	"* The rest is melee: DBM flags no other mechanics."
};
pack["46264"] = { "Lord Overheat",
	"* A direct Fireball on the tank (Fire damage): normal tank-and-heal rhythm.",
	"* His Rain of Fire leaves a spot boiling for 9 seconds: everyone within 5 meters cooks - leave the pool the moment it lands.",
	"* His Overheat burns a random player: instant Fire damage plus a burn that ticks every 3 seconds for 9 (stronger the more spell power he has): it is Magic, cleanse it in time."
};
pack["46383"] = { "Randolph Moloch",
	"* The remaster's final boss, at the head of the rebelling convicts at the end of the main tunnel.",
	"* Wildly Stabbing: an extreme-speed stabbing frenzy (a hit every 0.3 seconds) while his hit chance drops by 35% the whole time: the tank rides out the downpour.",
	"* His Sweep is a frontal cleave that hits the tank and the closest ally: nobody stands in front of him or glues to the tank.",
	"* Vanish: crossing 70-60% and 40-30% health he disappears and pops up right behind a random player: the tank snatches threat back fast."
};

-- ============================================================= --
-- Blackfathom Deeps : Zona 48 --
-- ============================================================= --
-- The fight changes by era: classic CIDs (4829-4887, 6243) are the Era
-- client; 20xxxx is the SoD rework (owner's tactics) and 74xxx/75xxx is the
-- current journal one, which also reshuffled the bosses (Bathiel, Executioner
-- Gore, Thruk... tactics still pending).

-- (SoD rework: the Era client version is simpler)
pack["202699"] = { "Baron Aquanis",
	"* Spread across the platform so his lightning storms do not chain-damage the raid; melee and tank stay glued to him.",
	"* His |cff71d5ff|Hspell:404806|h[Depth Charge]|h|r plants a deadly charge on a player: whoever is marked jumps into the water right away so the blast cannot damage or push the group.",
	"* Mind falling into the water: whirlwinds push you down; melee climb with speed orbs or by jumping, while ranged casters can keep attacking from below."
};
-- (SoD rework / current journal; the classic one is CID 4887)
bos = { "Ghamoo-Ra",
	"* He starts behind a shell that heavily reduces all damage he takes: every hit and spell grinds it down, so keep constant damage going until it breaks.",
	"* When the shell shatters he bursts, damaging the whole group (healers mitigate it) and stands exposed: the moment to pop every damage cooldown.",
	"* His |cff71d5ff|Hspell:407077|h[Triple Chomp]|h|r lands on the tank: healers mind his health."
};
pack["201722"] = bos;
pack["74446"] = bos;
-- (Era client version; the SoD rework, CIDs 201722/74446, adds the shell)
pack["4887"] = { "Ghamoo-Ra",
	"* Plain tank-and-damage fight: his |cff71d5ff|Hspell:5568|h[Trample]|h|r shakes everyone near him; melee stay close and the rest spread."
};
bos = { "Lady Sarevess",
	"* She is escorted by elite guards: crowd-control the minions (polymorph, traps) and focus damage on her.",
	"* Her |cff71d5ff|Hspell:407546|h[Freezing Arrow]|h|r freezes whoever it hits (healer frees them by dispelling) and, when she points her |cff71d5ff|Hspell:407653|h[Forked Lightning]|h|r at someone, the marked player moves out of the group.",
	"* If she puts |cff71d5ff|Hspell:407791|h[Aku'mai's Rage]|h|r on a player, dispel it as soon as the healer sees it; her ground puddles are avoided."
};
pack["4831"] = bos;
pack["204068"] = bos;
-- (Era client version; the SoD rework, CID 204921, adds phases)
pack["6243"] = { "Gelihast",
	"* Plain fight: his main annoyance is the |cff71d5ff|Hspell:6533|h[Net]|h|r that takes someone out of combat for a few seconds (break or dispel it); otherwise tank and damage."
};
-- (SoD rework; the Era client version, CID 6243, has no phases)
bos = { "Gelihast",
	"* The fight alternates damage and transition phases: each time he loses about 30% of his health he becomes immune at the center of the room.",
	"* During the transition shadow tentacles and sweeping projections appear: dodge them or destroy the tentacles until he is damageable again.",
	"* His |cff71d5ff|Hspell:411956|h[Curse of the Deep]|h|r is removed with curse dispels, and his |cff71d5ff|Hspell:412456|h[March of Murlocs]|h|r brings waves from the sides: clear them fast."
};
pack["204921"] = bos;
-- (SoD rework; the classic one never made the journal)
pack["207356"] = { "Lorgus Jett",
	"* His totems are the absolute priority: low health and brutal effects; kill them instantly (the |cff71d5ff|Hspell:419636|h[Molten Fury Totem]|h|r deals area damage and the |cff71d5ff|Hspell:414691|h[Windfury Totem]|h|r buffs his side).",
	"* If he starts healing, tank or melee interrupt him as soon as it is available.",
	"* He applies a debuff on the tank that increases the damage taken: it calls for a tank swap during the fight."
};
-- (Era client version; the SoD rework, CID 209678, has the Shadow World)
pack["4832"] = { "Twilight Lord Kelris",
	"* In the Era client this is a simple fight: dispel the |cff71d5ff|Hspell:8399|h[Sleep]|h|r he casts on a random player and keep tanking and damaging."
};
-- (SoD rework; the Era client version, CID 4832, is simpler)
bos = { "Twilight Lord Kelris",
	"* Phase 1 (100% to 35%): he sends two random players into the Shadow World; down there they kill the ghost priests fast to activate the portals and come back up; on the surface his lightning chains are ALWAYS interrupted.",
	"* Phase 2 (below 35%): he enrages and stops sending people down; it becomes a damage race with a Shadow Protection Potion taken before or during the phase: the constant shadow damage will crush the group otherwise.",
	"* His |cff71d5ff|Hspell:423135|h[Sleep]|h|r still knocks out a random player: dispel it."
};
pack["209678"] = bos;
-- (Era client version; the rework, CIDs 213334/75408, changes to two phases)
pack["4829"] = { "Aku'mai",
	"* Plain poison fight: his |cff71d5ff|Hspell:3815|h[Poison Cloud]|h|r stays where he stands; the tank keeps him away from the group and nobody stands in it.",
	"* As he dies he enters |cff71d5ff|Hspell:3490|h[Frenzied Rage]|h|r and hits faster: healers pick up the pace."
};
-- (SoD rework / current journal; the classic one is CID 4829)
bos = { "Aku'mai",
	"* Phase 1 (hydra form): the main tank stacks her poison debuff; the off-tank taunts at the third or fourth stack so the first tank cleanses himself by touching the elemental fountains of the room (they summon an add that dies instantly).",
	"* She is dodged when she casts |cff71d5ff|Hspell:429168|h[Corrosive Blast]|h|r: the marked player steps out of the cone.",
	"* Phase 2 (void form, below 50%): physical damage ramps up and she throws dark blasts (the |cff71d5ff|Hspell:429359|h[Void Blast]|h|r is dodged the same way); tanks keep rotating with more care and the group burns every cooldown to finish her."
};
pack["213334"] = bos;
pack["75408"] = bos;
pack["4830"] = { "Old Serra'kis",
	"* Plain melee fight in the shallow water pit: the tank holds him, melee watch his poisons and the group just spread damage."
};

-- ============================================================= --
-- Razorfen Downs : Zona 129 --
-- ============================================================= --
-- Mordresh keeps the graveyard: his fight (owner's info) is the same for the
-- Era client (7357) and the SoD remaster (74347).
bos = { "Mordresh Fire Eye",
	"* He fights on a bone mound amid a swarm of non-elite skeletons: the tank starts with AoE to grab them all, keeps them grouped and the group clears the swarm first; no rush to hit the boss.",
	"* Whenever he casts his fire ball, tank or melee interrupt it: every cast stopped is less damage taken.",
	"* The healer waits a few seconds until the tank secures aggro on the swarm before healing hard: early heals can peel the skeletons off and wipe the pull.",
	"* His Flame Wave (|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r) sweeps melee at his feet: step out."
};
pack["7357"] = bos;
pack["74347"] = bos;

-- Razorfen Downs : Zona 129 (classic) --
-- The five remaining classic CIDs; kits from DBM Classic\RazorfenDowns and
-- names from the corpus (dbm source of the era). Mordresh 7357 sits above shared.
pack["7355"] = { "Tuten'kash", -- (classic era)
	"* The crypt's spider: her Curse of Tut (|cff71d5ff|Hspell:12255|h[Curse of Tut]|h|r) marks a player (curse, remove it) and her Web Spray (|cff71d5ff|Hspell:12252|h[Web Spray]|h|r) punishes melee in area.",
	"* Her arachnid venom bites the tank: sustained healing."
};
pack["7356"] = { "Plaguemaw the Rotting", -- (classic era)
	"* His Withered Touch (|cff71d5ff|Hspell:11442|h[Withered Touch]|h|r) is DISEASE on a player: the druid purges it."
};
pack["7354"] = { "Ragglesnout", -- (classic era)
	"* Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) turns a player AGAINST the group: stun it or purge the magic off them."
};
pack["8567"] = { "Glutton", -- (classic era)
	"* The flesh devourer: he goes into Frenzy (|cff71d5ff|Hspell:12795|h[Frenzy]|h|r) at low health — hard DPS at the end."
};
pack["7358"] = { "Amnennar the Coldbringer", -- (classic era)
	"* The graveyard's chill: his Amnennar's Wrath (|cff71d5ff|Hspell:13009|h[Amnennar's Wrath]|h|r) bursts in area — spread and keep healing strong."
};

-- ============================================================= --
-- Blackfathom Deeps : Zona 48 (retail remake) --
-- ============================================================= --
-- (CIDs of the current journal's remake;
-- the SoD redo and Era-client CIDs sit above)
bos = { "Twilight Lord Bathiel",
	"* He scatters parts of himself around the room leaving Restorative Waters circles: if he reaches one he drinks it (Healing Absorption) recovering 5% of his health, and a bursting one (Watery Burst) flings Frost damage in 5 yd; mind the circles and never gift him the water.",
	"* His Piercing Rain ticks Frost damage on random players each second: steady chip damage the healers keep up with."
};
pack["74728"] = bos;
bos = { "Domina",
	"* Her Foul Tempest deals Shadow damage every second to random players: relentless chip damage; healers set the pace.",
	"* Her Maw of Death rakes the frontal cone with waves of Shadow damage for 2 seconds: the tank angles her away from the group and nobody strays in front."
};
pack["74476"] = bos;
bos = { "Subjugator Kor'ul",
	"* Leviathan's Grip crushes its victim with Physical damage each second for 8 seconds: the healer rides that target.",
	"* His Darkness Calls summons Aku'mai to feed: the Aku'mai entry applies to the minion too."
};
pack["74565"] = bos;
bos = { "Executioner Gore",
	"* His Devouring Blackness (interruptible) immobilizes a target and drains its health every 0.8s for 6 seconds, feeding him: interrupt whenever it is up; if it lands, the healer out-cures the drain.",
	"* His Executioner's Strike slams the axe: Shadow damage to everyone with extra in the frontal cone, and it leaves a lingering vortex that grinds whoever stays inside; keep the cone away and step out of the vortex."
};
pack["74988"] = bos;
bos = { "Thruk",
	"* His Catch of the Day hooks a random player up to 45 yd away and drags them to his feet: the hooked one scatters the moment they let go and nobody crosses the pull.",
	"* His Fillet of Flesh slams the axe into the ground: 500% weapon damage to all enemies within 10 yd; spread around with healers ready."
};
pack["74505"] = bos;
bos = { "Guardian of the Deep",
	"* His Spore Cloud egg-sacs land at random spots (Physical damage) and hatch Guardian Hatchlings: stay off the blotches and clean the hatchlings fast.",
	"* He Devours a nearby Blue Shale Crawler recovering 25% of his health: no crawlers left standing within his reach.",
	"* His Shattering Song punishes the whole room: constant area damage; healers stay on it."
};
pack["75410"] = bos;

-- ============================================================= --
-- Razorfen Downs : Zona 129 (modern retail rework) --
-- ============================================================= --
-- (Modern retail replacements; the zone classics keep their usual CIDs)
bos = { "Aarux",
	"* His Web Strand hooks a ranged player, drags them into melee and plants Plagued Bite at once (Nature damage for 10s and -50% movement speed): the healer clears it or hard-heals the snagged one.",
	"* His Bursting Pustule detonates Nature damage on the close ones: distance and spread."
};
pack["74412"] = bos;
bos = { "Mushlump",
	"* A direct physical brawl: his noisy Stomp lashes the whole group and can clip casters mid-spell; healers stay up and casters mind their timing.",
	"* He dribbles out blob and zombie adds on a whim: the tank gathers them right away and the DPS burn them down (DoTs or AoE) before they maul the healer."
};
pack["74435"] = bos;
bos = { "Death Speaker Blackhorn",
	"* His discharges (shadow and lightning) chain between players: interrupt the casts whenever possible.",
	"* He opens dark blotches on the ground: step out immediately, they grind down whoever lingers.",
	"* Now and then he shields himself with a soul shield and channels behind it: break the barrier with direct damage to cut the channel."
};
pack["74875"] = bos;
-- (Amnennar redo from the retail restructuring; his classic 7358 only
-- cast Frost Shock, Frost Nova and called adds)
bos = { "Amnenar the Coldbringer",
	"* Allied Koristrasza opens pools of Redeemed Soil: kite him right across them, the ground Overwhelms and stuns him for 6 seconds.",
	"* His Soul Leech drains the marked player (75% of the drain lands on him) and pelts nearby players with Shadow: the marked one stepping on the Redeemed Soil strips the debuff at once, and it stuns him as well.",
	"* His Frozen Bomb bursts into a spattering Frost pool: away from the icy one the moment it lands."
};
pack["74434"] = bos;

-- ============================================================= --
-- Blackrock Depths : Zona 2792 (10-15 band remaster) --
-- ============================================================= --
-- (Blackrock Depths as a 10-15 band of the anniversary remaster; the classic
-- dungeon run comes later with its usual CIDs)
pack["226315"] = { "Lord Roccor",
	"* Ground Tremor stuns the whole group for 2 seconds within 20 meters: no blobbing around the chamber.",
	"* Earth Shock smacks whoever is mid-cast: casters push their casts with margin.",
	"* Flame Shock: instant Fire hit plus a burn every 3 seconds for 12: healers mind the burn."
};
pack["226303"] = { "Bael'Gar",
	"* Magma Splash: a burn every 3 seconds for 24, stacking up to 3 times on the tank: tank rotation or dispels if at hand.",
	"* Summon Spawn: a Fire blast at random with a mud add thrown in: the tank grabs it and it dies fast."
};
pack["226304"] = { "Lord Incendius",
	"* Curse of the Elemental Lord: cuts 100-132 Fire resistance, 30 seconds and up to three times: the marked one stays away from the flames.",
	"* Powerful Blow: a strike that sends the tank flying backwards (lava all around): back against the wall.",
	"* Firestorm punishes the nearby area for 30 seconds and his Blast Wave rolls 20 meters: melee steps out and healers cover the hit."
};
-- (the corpus pairs this entry through the trons 230219/230217/230218; the DBM
-- comment adds Golem Lord 226306 and Magmatron 230216)
bos = { "Golem Lord Argelmach",
	"* Chain Lightning jumps between close players: spread out while it lasts.",
	"* He fights alongside two of his constructs: the tank splits them and shares the threat.",
	"* Mind the band version: his soul can possess fallen golems, a downed body does not always end the fight."
};
pack["226306"] = bos;
pack["230219"] = bos;
pack["230216"] = bos;
pack["230217"] = bos;
pack["230218"] = bos;
bos = { "The Seven",
	"* Waves of seven ghost dwarves across the forge hall, one after another, each with his classic class kit.",
	"* The warrior Anger'rel: Heroic Strike and Sunder Armor on the tank, Battle Shout and Shockwave in his turns.",
	"* The warlock Doom'rel: Shadow Bolt and Curse of Agony, summons an Incubus or a Voidwalker and flings Fear: dispel the Fear and kill the summon.",
	"* The rogue Dope'rel: poisoned Gouge biting from behind and Vanish: nobody stands with his back loose.",
	"* The shaman Gloom'rel: totems, Earth Shock and buff purges: totems die as soon as they pop.",
	"* The mage Hate'rel: Frost Shock, Blizzard and Polymorph: cut the Polymorph and walk out of the Blizzard.",
	"* The hunter Seeth'rel: fires from range, seeds traps and looses a wild pet: close the gap carefully.",
	"* The priest Vile'rel: heals his kin with Flash Heal, shields up with Power Word: Shield and casts Mind Control: his heals get interrupted first of all."
};
pack["226307"] = bos;
pack["226310"] = bos;
pack["226309"] = bos;
pack["226313"] = bos;
pack["226311"] = bos;
pack["226312"] = bos;
pack["226308"] = bos;
pack["226316"] = { "General Angerforge",
	"* Sunder Armor progressively strips the tank: rotate tanks when it stacks.",
	"* Flurry: his crits speed up his swings, and his Enrage raises the physical pain: healers ride the streak with him.",
	"* Intruder Alert! at 40%: he calls the fortress reinforcements (Anvilrage Reservists and Medics) and the medics heal him: kill them first, medics before everyone."
};
pack["226302"] = { "Ambassador Flamelash",
	"* Constant Fire Blast on the melee: rotation or rhythmic heals.",
	"* Burning Spirits: he calls elementals from the room's runes; whoever reaches him sacrifices itself for a +5% damage and size buff, up to 50 stacks: block their path and finish them on the way."
};
-- (226314 is Princess Moira Bronzebeard; the journal pairs the emperor's name
-- to both ids)
bos = { "Emperor Dagran Thaurissan",
	"* Avatar of Flame: 10 seconds fully immune to magic and his swings add Fire: casters hold back while it lasts.",
	"* Hand of Thaurissan: a Fire blast that stuns for 5 seconds: better without a clump, so nobody loses several at once.",
	"* Ironfoe: a passive from his legendary mace, chaining up to 3 extra swings with his crit raised by 10% for 5 seconds: the tank rides the streak with heals.",
	"* Princess Moira Bronzebeard fights at his side: she heals him every so often and punishes with Holy and Shadow magic: control her or, if the group races, kill her before him."
};
pack["226305"] = bos;
pack["226314"] = bos;

-- Blackrock Depths : Zona 230 (classic) --
-- 18 classic entries (29 CIDs of the dungeon); names from the journal corpus;
-- tactics adapted from the remaster batch (same fights). Moira 8929 stays IN
-- PROSE inside the emperor's entry, as the housestyle does.
pack["9018"] = { "High Interrogator Gerstahn", -- (classic era)
	"* The interrogation rooms' boss: her shadow bolts punish the casters — attentive healing and the room spread."
};
pack["9025"] = { "Lord Roccor", -- (classic era)
	"* His War Stomp (2 s) punishes everything close and his Earth Shock interrupts casts: spread out and don't cast into it.",
	"* The Flame Wave comes every ~12 s: melee steps out of the radius and comes back."
};
pack["9319"] = { "Houndmaster Grebmar", -- (classic era)
	"* The chained pack comes first: AoE and control on the dogs; the master on the tank."
};
bos = { "Ring of Law", -- (classic era)
	"* The arena event: the ring spawns ONE of the six champions (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor or Leftok) — the tank grabs it and the fight is a straight slog."
};
pack["9028"] = bos;
pack["9031"] = bos;
pack["9029"] = bos;
pack["9030"] = bos;
pack["9032"] = bos;
pack["9027"] = bos;
pack["9024"] = { "Pyromancer Loregrain", -- (classic era)
	"* The enclosure's pyromancer: area fire on the group — spread out and heal through it."
};
pack["9017"] = { "Lord Incendius", -- (classic era)
	"* The elemental lord's curse: strips 100-132 Fire resist, 30 s and up to three times: the marked steps away from the flames.",
	"* Mighty slam: hurls the tank backwards (lava everywhere): back to a wall.",
	"* Firestorm punishes the nearby area ~30 s and his flame burst rolls 20 m: melee steps out and the healer covers the hit."
};
pack["9041"] = { "Warder Stilgiss", -- (classic era)
	"* The vault's warden: his ogre Verek fights at his side — the tank separates or holds them apart; constant healing."
};
pack["9056"] = { "Fineous Darkvire", -- (classic era)
	"* The foundry gnome: a flat fight behind a good tank."
};
pack["9016"] = { "Bael'Gar", -- (classic era)
	"* His Magma splash stacks up to 3 times in 24 s on the tank: tank rotation or a purge if available.",
	"* The brood summoning throws Fire at random with a mud minion as a gift: the tank grabs it and it dies fast."
};
pack["9033"] = { "General Angerforge", -- (classic era)
	"* His Sunder keeps stripping the tank's armor as it stacks: rotation if it piles up.",
	"* Crits speed up his hand and the Enrage raises physical punishment: the healers hold the streak with him."
};
pack["8983"] = { "Golem Lord Argelmach", -- (classic era)
	"* A Chain Lightning that jumps between the close ones: spread out while it lasts.",
	"* He fights with two of his constructs active: the tank separates them and splits the grip.",
	"* No rush: fallen golems do not close the fight — sweep the whole hall."
};
pack["9537"] = { "Hurley Blackbreath", -- (classic era)
	"* The tavern cave's drunkard: a straight slog behind a good tank."
};
pack["9502"] = { "Phalanx", -- (classic era)
	"* The forge hall's mechanical guard: hard melee on the tank."
};
pack["9499"] = { "Plugger Spazzring", -- (classic era)
	"* The Guzzler's barkeep: when he falls the WHOLE tavern piles in — patrons come in waves: tank AoE and no slip-ups."
};
pack["9156"] = { "Ambassador Flamelash", -- (classic era)
	"* Constant Fire Blast on the melee: rotation or heals on rhythm.",
	"* Blazing spirits: elementals through the hall's runes; the one that reaches him gives +5% damage and size up to 50 stacks: block their path and finish them on the way."
};
bos = { "The Seven", -- (classic era)
	"* Waves of seven ghost dwarves in the forge hall, one after another, each with his classic class kit.",
	"* The warrior Anger'rel: Heroic Strike and Sunder Armor on the tank, with Battle Shout and Shockwave on his timers.",
	"* The warlock Doom'rel: Shadow Bolt and Curse of Agony, summons a Succubus or Voidwalker and throws Fear: dispel the Fear and finish the summon.",
	"* The rogue Dope'rel: Poisoned Gouge biting from behind and Vanish: nobody stands loose-backs.",
	"* The shaman Gloom'rel: totems, Earth Shock and buff purges: totems die as they sprout.",
	"* The mage Hate'rel: Frost Bolt, Blizzard and Polymorph: interrupt the Polymorph and step out of Blizzard.",
	"* The hunter Seeth'rel: shoots from range, seeds traps and drops a wild pet: close distance carefully.",
	"* The priest Vile'rel: heals his own with Flash Heal and casts Power Word: Shield and Mind Blast: interrupts on his heals first."
};
pack["9035"] = bos;
pack["9039"] = bos;
pack["9040"] = bos;
pack["9037"] = bos;
pack["9034"] = bos;
pack["9038"] = bos;
pack["9036"] = bos;
pack["9938"] = { "Magmus", -- (classic era)
	"* The citadel giant: heavy melee on the tank and constant healing."
};
bos = { "Emperor Dagran Thaurissan", -- (classic era)
	"* Avatar of Flame: 10 s fully magic-immune with Fire added to his hits: casters hold while it lasts.",
	"* Hand of Thaurissan: a Fire hit that stuns 5 s — better without a pile so several don't lose control at once.",
	"* Iron Rage: his mace chains up to 3 extra hits and raises his crit 10% for 5 s: the tank holds the streak with heals.",
	"* Princess Moira Bronzebeard fights at his side: she heals him over and over and punishes with Holy and Shadow magic: control her or, if the group burns fast, finish her before him."
};
pack["9019"] = bos;

-- ============================================================= --
-- Razorfen Kraul : Zona 47 (classic) --
-- ============================================================= --
-- (The 44xx and 4842 CIDs are the usual classics; the 75xxx ones and 74462
-- are modern-journal variants with their element-1 names)
pack["4424"] = { "Aggem Thorncurse",
	"* He summons boars (|cff71d5ff|Hspell:8286|h[Summon Boar]|h|r) at odd times: kill them as soon as they show.",
	"* His Healing Wave (|cff71d5ff|Hspell:14900|h[Healing Wave]|h|r) is interruptible: cut it without mercy or the tank wears out."
};
pack["4422"] = { "Agathelos the Raging",
	"* He enrages (|cff71d5ff|Hspell:8269|h[Enrage]|h|r) and his punishment spikes: the tank rides the climb with focused heals."
};
pack["4425"] = { "Blind Hunter",
	"* A plain brawler flagged by DBM: hits up close and nothing else: tank, burn and heals."
};
pack["75247"] = { "Groyat, the Blind Hunter",
	"* The modern remake of the blind hunter: another plain brawler, DBM flags nothing on him."
};
bos = { "Roogug",
	"* He calls earth rumblers (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): the tank grabs them and they die on the spot."
};
pack["6168"] = bos;
pack["74948"] = bos;
pack["4420"] = { "Overlord Ramtusk",
	"* He channels a whirling barrage (|cff71d5ff|Hspell:8259|h[Whirling Barrage]|h|r): interrupt it or, if it goes off, step clear of the swirl while it falls.",
	"* A rough fight: he hits hard and comes flanked by two guardians; the tank peels them aside and heals squeeze."
};
pack["74462"] = { "Warlord Ramtusk",
	"* The modern remake of the supreme Ramtusk: a plain brawler with nothing flagged by DBM: tank, burn and heals."
};
pack["4421"] = { "Charlga Razorflank",
	"* The Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) is interruptible: the kick saves the whole group.",
	"* Hexes get cleansed off as soon as they land (|cff71d5ff|Hspell:8361|h[Purity]|h|r): physical damage is the way in."
};
pack["4428"] = { "Death Speaker Jargba",
	"* Dominates the mind of a player (|cff71d5ff|Hspell:14515|h[Dominate]|h|r): normal interrupts do not cut it; a stun stops it, though the recast comes the moment it breaks: beat the dominated player down until it drops."
};
pack["4842"] = { "Earthcaller Halmgar",
	"* Calls earth rumblers (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): split them up and finish them quickly."
};
pack["75001"] = { "Hunter Bonetusk",
	"* One more plain brawler of the modern Kraul: tank, burn and heals in a row."
};

-- ============================================================= --
-- Gnomeregan : Zona 90 (classic and modern journal) --
-- ============================================================= --
-- (The 7xx and 6xxx CIDs are the usual classics; the 21xxxx are SoD/journal
-- variants with the same name: shared entries)
bos = { "Grubbis",
	"* A plain fight flagged by DBM: tank, burn and heals, minding the add that pops up beside him (his Chomper)."
};
pack["7361"] = bos;
pack["217280"] = bos;
bos = { "Viscous Fallout",
	"* Toxic Volley (|cff71d5ff|Hspell:21687|h[Toxic Volley]|h|r): periodic poison on anyone close; the poison dispeller cleanses and keeps going."
};
pack["7079"] = bos;
pack["220007"] = bos;
bos = { "Electrocutioner 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) and Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r) are interruptible: cut them at the root.",
	"* The Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r) pounds the tank: heals on watch."
};
pack["6235"] = bos;
pack["220072"] = bos;
bos = { "Crowd Pummeler 9-60",
	"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): a stomp that flings the melee through the air: only the tank stays inside, everyone else out of range.",
	"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) on the tank: normal tank-and-heal rhythm."
};
pack["6229"] = bos;
pack["215728"] = bos;
bos = { "Mekgineer Thermaplugg",
	"* He attaches a living bomb to a random player (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): the marked one runs away from the group until it bursts.",
	"* The Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) sends the tank flying: mind where he lands.",
	"* From Cata on he adds an interruptible Steam Blast and pounds on the tank: cut the blast in time."
};
pack["7800"] = bos;
pack["218538"] = bos;
pack["218970"] = bos;
pack["218972"] = bos;
pack["218974"] = bos;
pack["218537"] = bos;
bos = { "Mechanical Menagerie",
	"* Four mechanical pieces together: the black dragon (STX-04/BD), the lamb (STX-13/LL), the squirrel (STX-25/NB) and the chicken (STX-37/CN).",
	"* All share Self-Repair and Frayed Wiring: burn each piece down fast so it cannot recover, and mind the passive wiring damage.",
	"* The lamb bleats in binary, the squirrel volleys widgets, overheats and shields up behind its nutty shield, and the chicken pecks between clucks: constant damage, then the next one."
};
pack["218242"] = bos;
pack["218243"] = bos;
pack["218244"] = bos;
pack["218245"] = bos;
-- (Mechanical Menagerie: the journal carries the encounter name on all 4 pieces,
-- like The Seven; abilities brought by the owner, no spell ids nor links)

-- ============================================================= --
-- Scarlet Monastery : Zone 189 (classic) --
-- ============================================================= --
-- Wings: Graveyard (Vishas, Thalnos and the hidden Fairbanks), Library
-- (Loksey, Doan), Armory (Herod) and Cathedral (Mograine and Whitemane).
-- The journal carries no instance for it: element-1 names come from the
-- classic DBM localization; owner-confirmed via Wowhead (2026-10, classic client).
pack["3983"] = { "Interrogator Vishas",
	"* A short, plain fight: his only flagged trick is Immolate (|cff71d5ff|Hspell:9034|h[Immolate]|h|r) on a player, magic damage that lingers; dispel it or heal that mark carefully."
};
pack["4543"] = { "Bloodmage Thalnos",
	"* Flame Spike (|cff71d5ff|Hspell:8814|h[Flame Spike]|h|r) at range and Fire Nova (|cff71d5ff|Hspell:12470|h[Fire Nova]|h|r) around him: melee breaks contact when he flares the nova.",
	"* No other mechanics: stand him up, drop him and the graveyard is done."
};
pack["4542"] = { "High Inquisitor Fairbanks",
	"* An inquisitor hidden among the graveyard tombs: most groups leave him for later; if you pull him, it is a plain fight.",
	"* His Curse of Blood (|cff71d5ff|Hspell:8282|h[Curse of Blood]|h|r) is a curse: strip it with curse removal."
};
pack["3974"] = { "Houndmaster Loksey",
	"* He fights flanked by his hounds and casts Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r) on the pack: they hit faster, so clear dogs as fast as you can while the tank pins him.",
	"* Nothing else to it: if the dogs pile up, kill them first and he falls soon after."
};
pack["6487"] = { "Arcanist Doan",
	"* He casts Polymorph (|cff71d5ff|Hspell:13323|h[Polymorph]|h|r) on a player and repeats Arcane Explosion (|cff71d5ff|Hspell:9433|h[Arcane Explosion]|h|r) around him: nobody casts glued to him.",
	"* His area Silence (|cff71d5ff|Hspell:8988|h[Silence]|h|r) cuts nearby casts: stand away from the arcanist to keep casting.",
	"* Detonate (|cff71d5ff|Hspell:9435|h[Detonate]|h|r) is the real hit: when he charges it, run out of the radius or break line of sight behind the room's bookshelves before it bursts."
};
pack["3975"] = { "Herod",
	"* His Whirlwind (|cff71d5ff|Hspell:8989|h[Whirlwind]|h|r) spins every ~18 s: melee steps out of the radius and returns once the spin ends.",
	"* At low health he takes Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): more damage, bear down on tank and heals.",
	"* When Herod falls, a swarm of scarlet trainees floods through the door: no slacking until they are swept."
};
pack["3976"] = { "Scarlet Commander Mograine",
	"* A plain cleave fight, starting with him: Whitemane only leaves her balcony once he falls.",
	"* After his first death, Whitemane's Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) on him gets interrupted: without the cut he is back with full health.",
	"* With the heal handled and the resurrection survived, the fight is dropping both, no rush."
};
pack["3977"] = { "High Inquisitor Whitemane",
	"* She descends when Mograine falls and casts Deep Sleep (|cff71d5ff|Hspell:9256|h[Deep Sleep]|h|r) on a player for 10 s: the curtain that covers Mograine's return.",
	"* She then casts Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) to refill the revived one: interrupt it every time.",
	"* Once she revives him, she falls first; the revived Mograine is the last trophy."
};
-- Zone 349: Maraudon (two entry branches converging before the Princess's
-- hall). Kit and CIDs from the DBM Shared\Maraudon modules in _doc;
-- element-1 names from the 4-locale corpus (journal).
pack["12203"] = { "Landslide",
	"* First big rock golem of the cave: plain fight with heavy physical damage on the tank.",
	"* Knock Away (|cff71d5ff|Hspell:11130|h[Knock Away]|h|r) hurls the tank backward and shakes off threat: the tank grabs it back at once while everyone holds position.",
	"* Landslide (|cff71d5ff|Hspell:21808|h[Landslide]|h|r) area-knocks everyone around him down: melee gets up and keeps going, running is pointless.",
	"* Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) pounds the ground next to him: keeping him pinned makes it harmless."
};
pack["13282"] = { "Noxxion",
	"* Emerald elemental of the crystal hall: static fight at its nest.",
	"* Uppercut (|cff71d5ff|Hspell:10966|h[Uppercut]|h|r) launches the tank high: heal on your feet and back to position.",
	"* Periodic minion summons (|cff71d5ff|Hspell:21707|h[Noxxion's Minions]|h|r): AoE them as soon as they pile up, before they add pressure."
};
pack["12258"] = { "Razorlash",
	"* Giant thorny plant of the green paths: plain fight, mauls the tank and little else.",
	"* No mechanics flagged by DBM: tank, heal, fell it."
};
pack["12236"] = { "Lord Vyletongue",
	"* Ghost satyr: caster fight with shadow damage and his Smoke Bomb (|cff71d5ff|Hspell:7964|h[Smoke Bomb]|h|r) that shrouds him out of sight.",
	"* Through the fog the tank pins him by threat while melee waits for the smoke to clear."
};
pack["12225"] = { "Celebras the Cursed",
	"* Keeper guarding the portal toward the princess: his Wrath (|cff71d5ff|Hspell:21807|h[Wrath]|h|r) gets interrupted every time, serious nature damage if it lands whole.",
	"* Entangling Roots (|cff71d5ff|Hspell:12747|h[Entangling Roots]|h|r) roots a player: it is magic, dispel it or break it with damage.",
	"* DBM flags Corrupt Forces (|cff71d5ff|Hspell:21968|h[Corrupt Forces]|h|r): push the damage and he falls flat; nothing to dodge."
};
pack["13601"] = { "Tinkerer Gizlock",
	"* Goblin engineer of the deep cave: his Goblin Dragon Gun (|cff71d5ff|Hspell:21833|h[Goblin Dragon Gun]|h|r) spits fire in a frontal cone.",
	"* The tank pins him facing away from the group: nobody stands in front of the gun and he falls plain."
};
pack["13596"] = { "Rotgrip",
	"* Crocolisk of the pool before the princess's hall: plain fight in the pond water.",
	"* Fatal Bite (|cff71d5ff|Hspell:16495|h[Fatal Bite]|h|r) crushes the tank: heal in turns with the emergency held in reserve."
};
pack["12201"] = { "Princess Theradras",
	"* Final boss, colossal: static fight in her hall.",
	"* Repulsive Gaze (|cff71d5ff|Hspell:21869|h[Repulsive Gaze]|h|r) sows panic around (fear): spread out a bit; a shaman's tremor totem clears it at once.",
	"* Boulder (|cff71d5ff|Hspell:21832|h[Boulder]|h|r) flies at the far ones: ranged spread positions and never clump.",
	"* Dust Field (|cff71d5ff|Hspell:21909|h[Dust Field]|h|r) whips the area around her: melee runs out of the radius (DBM yells run) and returns when it ends."
};

-- Zone 70: Uldaman (the titan vault beneath the Badlands). Kit and CIDs from
-- the DBM Shared\Uldaman modules in _doc; element-1 names from the corpus
-- (journal; the dwarf trio carries the ENCOUNTER name, no per-piece names,
-- like the Menagerie).
pack["6910"] = { "Revelosh",
	"* Entry-hall trogg shaman: his Chain Lightning (|cff71d5ff|Hspell:16006|h[Chain Lightning]|h|r) gets interrupted every time.",
	"* If a Lightning Bolt (|cff71d5ff|Hspell:15801|h[Lightning Bolt]|h|r) slips through, interrupt it as well if the group can."
};
bos = { "The Lost Dwarves",
	"* Trio of dwarves (Baelog, Eric «the Swift» and Olaf) in the craftsmen's hall: all three in one pull, plain fight.",
	"* Three at once with no DBM-flagged mechanics: the tank gathers them and AoE + cleave drops them."
};
pack["6906"] = bos;
pack["6907"] = bos;
pack["6908"] = bos;
pack["7206"] = { "Ancient Stone Keeper",
	"* Stone keeper of the central halls: static fight with heavy physical damage.",
	"* Sand Storms (|cff71d5ff|Hspell:10132|h[Sand Storms]|h|r) never stop: area damage, ranged never clump and healers divide it."
};
pack["7023"] = { "Obsidian Sentinel",
	"* Obsidian sentinel golem: his Reflection (|cff71d5ff|Hspell:9941|h[Reflection]|h|r) throws spells back at the caster — casters hold casts while it runs.",
	"* Splintered Obsidian (|cff71d5ff|Hspell:10072|h[Splintered Obsidian]|h|r): bursts cleared as soon as they spawn."
};
pack["7291"] = { "Galgann Firehammer",
	"* Fire shaman of the craftsmen halls: Flame Spike (|cff71d5ff|Hspell:6725|h[Flame Spike]|h|r) and Flame Lash (|cff71d5ff|Hspell:3356|h[Flame Lash]|h|r), both interrupted every time.",
	"* Fire Nova (|cff71d5ff|Hspell:11969|h[Fire Nova]|h|r) bursts around: melee leaves the radius and returns."
};
pack["4854"] = { "Grimlok",
	"* Shaman trogg boss of the lower caverns: Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) interrupted always and Lightning Bolt (|cff71d5ff|Hspell:12167|h[Lightning Bolt]|h|r) as a bonus cut.",
	"* Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r): whoever carries it, him or an add, falls first.",
	"* Crystalline Slumber (|cff71d5ff|Hspell:3636|h[Crystalline Slumber]|h|r) sleeps a player (magic): dispel or damage wakes them.",
	"* Reflection (|cff71d5ff|Hspell:9906|h[Reflection]|h|r): no casts while it lasts, same spell-return rule."
};
pack["7228"] = { "Ironaya",
	"* Woken guardian of the map room: static fight, tanked in place.",
	"* Her Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) is frontal: melee never stands straight ahead of her.",
	"* War Stomp (|cff71d5ff|Hspell:11876|h[War Stomp]|h|r) around her: area stun, melee rides it out and healing keeps going."
};
pack["2748"] = { "Archaedas",
	"* The sleeping titan of the vault: a long fight of clearing summons while wearing him down.",
	"* Awaken Earthen Guardians (|cff71d5ff|Hspell:10252|h[Awaken Earthen Guardians]|h|r) and Awaken Vault Warder (|cff71d5ff|Hspell:10258|h[Awaken Vault Warder]|h|r): adds arrive in waves — cleave them, the boss stays on the tank.",
	"* Ground Tremor (|cff71d5ff|Hspell:6524|h[Ground Tremor]|h|r) pounds the area around him: melee holds on with heals, nothing to dodge.",
	"* Classic rule: the tank pins him on his pedestal, damage sweeps the guardians and Archaedas falls last."
};

-- Zone 209: Zul'Farrak (the sand city of the Sandfury trolls in Tanaris).
-- Kit and CIDs from the DBM Shared\ZulFarrak modules in _doc; element-1
-- names from the corpus (journal; the Nekrum+Sezz'ziz pair carries the
-- shared ENCOUNTER name, like the Menagerie); Ward of Zum'rah 11086 and the
-- enrage of his right hand Ruuzlu 7797 (no entry of its own) verified by
-- the owner via Wowhead 2026-10.
pack["8127"] = { "Antu'sul",
	"* First boss, in the entrance pit: troll healer who props himself up with totems and minions.",
	"* His Healing Waves get interrupted: the self-cast one (|cff71d5ff|Hspell:11895|h[Healing Wave]|h|r) and the one sent to minions (|cff71d5ff|Hspell:15982|h[Healing Wave]|h|r).",
	"* His totems pop as soon as they sprout: the Earthgrab one (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) roots the group and the Healing Ward (|cff71d5ff|Hspell:4971|h[Healing Ward]|h|r) feeds the boss and his crew.",
	"* The minions he raises (|cff71d5ff|Hspell:11894|h[Minions]|h|r) fall first: damage sweeps them while the tank holds the boss."
};
pack["7272"] = { "Theka the Martyr",
	"* Single-target fight: his Fevered Plague (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) is a curable disease — dispel as soon as it lands.",
	"* Mid-fight he transforms (|cff71d5ff|Hspell:11089|h[Transformation]|h|r): the tank holds him and he keeps falling all the same."
};
pack["7271"] = { "Witch Doctor Zum'rah",
	"* Healer of the courtyard with his acolytes: every cast gets interrupted — the Healing Wave (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) and, above all, the Shadow Bolt Volley (|cff71d5ff|Hspell:15245|h[Shadow Bolt Volley]|h|r), which punishes the whole group at 30 yards.",
	"* His Ward of Zum'rah (|cff71d5ff|Hspell:11086|h[Ward of Zum'rah]|h|r) plants a totem at his feet that raises a skeleton every 5 s: pop it as soon as it sprouts.",
	"* Awaken Zombie: he raises Zul'Farrak Zombies from the nearby tombs of the room — skeletons and zombies fall as soon as they surface."
};
pack["7273"] = { "Gahz'rilla",
	"* The giant beast of the plaza: the tank pins her in place and ranged never clump behind her.",
	"* Her Slam (|cff71d5ff|Hspell:11902|h[Slam]|h|r) crashes into the ground: area damage the melee rides out with heals.",
	"* Freeze Solid (|cff71d5ff|Hspell:11836|h[Freeze Solid]|h|r) freezes whoever it catches solid: healing covers while it lasts."
};
pack["7795"] = { "Hydromancer Velratha",
	"* Mage of the upper tier: plain fight with a single detail — every Healing Wave (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) gets interrupted."
};
bos = { "Nekrum & Sezz'ziz",
	"* Pair of the pyramid event (the freed prisoners turn on you): dispatch them when they show up, after the minion wave.",
	"* Sezz'ziz's heals — Renew (|cff71d5ff|Hspell:8362|h[Renew]|h|r) and Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) — interrupted every time or the pair drags the fight out.",
	"* Divine Shield (|cff71d5ff|Hspell:13704|h[Divine Shield]|h|r) blocks damage outright: while it lasts, damage doesn't waste the effort.",
	"* Fevered Plague (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) shows up here too: curable disease, dispel available."
};
pack["7796"] = bos;
pack["7275"] = bos;
pack["7267"] = { "Chief Ukorz Sandscalp",
	"* The warlord atop the pyramid, with his right hand Ruuzlu (no entry of its own): head-on fight, tanked in place with hard physical damage.",
	"* Ruuzlu falls FIRST: when the chief dies he enrages (+30% damage and +40% attack speed) and punishes whatever is left of the room.",
	"* As his health drops he pops his Enrage (|cff71d5ff|Hspell:8269|h[Enrage]|h|r): the tank tightens up and healing carries the final stretch."
};

-- Zone 109: Sunken Temple (the Temple of Atal'Hakkar, in the Swamp of
-- Sorrows), covering BOTH eras: the classic one (kit from DBM
-- Shared\SunkenTemple) and the 10-man SoD raid remake (DBM-Raids-Vanilla
-- \VanillaSoD_SunkenTemple). The classic Zolo 5712 (optional troll mini-boss
-- of the Atal'ai guard, kit confirmed by the owner via Wowhead 2026-10) goes
-- in WITHOUT links (no verified ids); Bloodlord Mandokir and his minion
-- Ohgan have no id in the corpus: no entry (a gap to ask the owner for);
-- Ogom (5711), Jammal'an's bodyguard in the classic run, goes in prose (like
-- Ruuzlu).

pack["5710"] = { "Jammal'an the Prophet", -- (classic era)
	"* The prophet of the hall, with his bodyguard Ogom (no entry of its own) beside him: duo fight in the open.",
	"* Jammal'an plants his Earthgrab Totem (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) — it roots the group — and marks a player with Hex of Jammal'an (|cff71d5ff|Hspell:12479|h[Hex of Jammal'an]|h|r), who waits covered up; he also casts Healing Wave (12492) and Flamestrike (12468).",
	"* Ogom punishes with Shadow Bolts (|cff71d5ff|Hspell:12471|h[Shadow Bolt]|h|r) ALWAYS interrupted and paints Shadow Word: Pain (|cff71d5ff|Hspell:11639|h[Shadow Word: Pain]|h|r) (magic) and Curse of Weakness (|cff71d5ff|Hspell:12493|h[Curse of Weakness]|h|r) (curse)."
};

pack["5719"] = { "Morphaz", -- (classic era)
	"* Green drake of the flooded pit: the kit is twin to the temple's four warders.",
	"* Plain fight: his Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front and the Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) knocks back — tank planted and group behind him."
};

pack["5720"] = { "Weaver", -- (classic era)
	"* Green drake of the upper floor, beside Dreamscythe: twin warder kit.",
	"* Plain fight: Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front and Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) knocks back — tank holds, group tucked behind him."
};

pack["5721"] = { "Dreamscythe", -- (classic era)
	"* Green drake of the upper floor, beside Weaver: twin warder kit.",
	"* Plain fight: his Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front cone and leaves a nature wound, and the Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) shoves backward — tank holds, group tucked behind him."
};

pack["5722"] = { "Hazzas", -- (classic era)
	"* Green drake of the flooded pit, paired with Morphaz: twin warder kit.",
	"* Plain fight: Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front and Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) knocks back — tank holds, group tucked behind him."
};

pack["5712"] = { "Zolo", -- (classic era, optional troll mini-boss of the Atal'ai guard; owner kit via Wowhead 2026-10)
	"* Optional, hard-hitting troll mini-boss of the Atal'ai guard: his Chain Lightning leaps between bunched-up players — spread out after every cast.",
	"* He plants a totem beside him that keeps pumping skeletons: pop it as soon as it sprouts.",
	"* His area debuff strips 10 of every stat and STACKS if the fight drags — kill him fast."
};

pack["5709"] = { "Shade of Eranikus", -- (classic era)
	"* The shade of the green dragon the altar ritual wakes in the pit: the classic temple's final summon.",
	"* His Deep Slumber (|cff71d5ff|Hspell:12890|h[Deep Slumber]|h|r) sleeps whoever it catches, the Acid Breath (|cff71d5ff|Hspell:12533|h[Acid Breath]|h|r) punishes the tank and the War Stomp (|cff71d5ff|Hspell:24375|h[War Stomp]|h|r) lands in melee range."
};

pack["8443"] = { "Avatar of Hakkar", -- (classic era)
	"* The shade of the serpent god the temple ritual wakes: short, venomous fight.",
	"* His Curse of Tongues (|cff71d5ff|Hspell:12889|h[Curse of Tongues]|h|r) (curse) drags out the group's casts and his Cause Insanity (|cff71d5ff|Hspell:12888|h[Cause Insanity]|h|r) lands on a player — the DBM's loudest warning, handle it fast."
};

pack["218624"] = { "Atal'alarion", -- (SoD era, 10-man raid)
	"* The gatekeeper of the remake's first bridge: flat, hard giant.",
	"* His Pillars of Might (|cff71d5ff|Hspell:437503|h[Pillars of Might]|h|r) punish on a fixed cadence (~12 s) and the Demolishing Smash (|cff71d5ff|Hspell:437597|h[Demolishing Smash]|h|r) every ~27 s catches half the group: run BEHIND a pillar."
};

pack["218819"] = { "Festering Rotslime", -- (SoD era, 10-man raid)
	"* The slime of the canal: his Devour (|cff71d5ff|Hspell:448824|h[Devour]|h|r) swallows a player OR the room's props (the drum, slab, mask and candle) — healing keeps the eaten one up.",
	"* His Slime Time (|cff71d5ff|Hspell:446311|h[Slime Time]|h|r) stacks up on him: once it's REMOVED he turns sluggish — that's when the DPS presses hard.",
	"* Gunk (|cff71d5ff|Hspell:438142|h[Gunk]|h|r) and Nauseous Gas (|cff71d5ff|Hspell:438130|h[Nauseous Gas]|h|r) on a cadence; dodge the punished ground."
};

-- Atal'ai Defenders (SoD era): the courtyard's six trolls, one id each; the
-- same table for all six.
bos = { "Atal'ai Defenders",
	"* The remake's courtyard troll guard: six bosses IN A ROW, fought one by one, and each DEATH spawns its undead counterpart with the same kit (no links) — the rune doors on the sides are to ignore.",
	"* Zul'Lor 221640: his Charge (446369) precedes the Corrupted Slam (446372) — dodge it after the charge — and he paints Frailty (446364).",
	"* Mijan 218868: his Thorns (438294) (magic) reflect damage onto melee — dispel them and the melee STOPS — plus his Healing Ward (438335) drops; pop the Atal'ai Serpent Totem (445912).",
	"* Zolo 221639: his whole spellwheel gets INTERRUPTED — Chain Lightning (446338), Renew (438341) and Healing Wave (438339) — and his Atal'ai Skeleton Totem (446339) gets popped; the Unstable Cask (445940) can stun the tank.",
	"* Gasher 221637: Spinning Axes (445289) punish melee and his Fervor (445284) stacks up if the fight drags — kill him fast.",
	"* Loro 221638: Demoralizing Shout (23511) on a cadence and Shield Slam (446354) on the tank.",
	"* Hukku 223586: Shadow Bolts (446361) ALWAYS interrupted and his Guardians (446360) drop into the fight."
};
pack["221640"] = bos; -- Zul'Lor
pack["218868"] = bos; -- Mijan
pack["221639"] = bos; -- Zolo
pack["221637"] = bos; -- Gasher
pack["221638"] = bos; -- Loro
pack["223586"] = bos; -- Hukku

-- Dreamscythe and Weaver (SoD era): green drake pair.
bos = { "Dreamscythe and Weaver",
	"* The remake's green drake pair: both share the same room.",
	"* Acid Breath (|cff71d5ff|Hspell:442622|h[Acid Breath]|h|r) STACKS on the tank — swap with taunt after each cast — and the Wing Flap (|cff71d5ff|Hspell:442620|h[Wing Flap]|h|r) rides along.",
	"* Wing Buffet (|cff71d5ff|Hspell:443766|h[Wing Buffet]|h|r) flings people airborne: hold tight and stay away from the edge.",
	"* Stage 2: Dreamscythe shields himself with his Emerald Ward (|cff71d5ff|Hspell:443302|h[Emerald Ward]|h|r) — batter it down and stage 3 arrives with the Buffets tighter."
};
pack["220833"] = bos; -- Dreamscythe
pack["220864"] = bos; -- Weaver

pack["221394"] = { "Avatar of Hakkar", -- (SoD era, 10-man raid)
	"* The remake's serpent god, in two stages: the ritual first, then the beast.",
	"* Spirit stage: the Spirit Chains (|cff71d5ff|Hspell:443975|h[Spirit Chains]|h|r) mark a player with a pull — the chained one BREAKS AWAY — and the Frightsome Howl (|cff71d5ff|Hspell:443990|h[Frightsome Howl]|h|r) is ALWAYS interrupted, while the Hakkari blood keepers drop with the rite.",
	"* Beast stage: Blood Nova (|cff71d5ff|Hspell:444050|h[Blood Nova]|h|r) every ~8 s, the Corrupted Blood (|cff71d5ff|Hspell:444253|h[Corrupted Blood]|h|r) jumps from player to player — the marked one BREAKS AWAY —, Insanity (|cff71d5ff|Hspell:444039|h[Insanity]|h|r) on a marked one, Curse of Tongues (|cff71d5ff|Hspell:444046|h[Curse of Tongues]|h|r) (curse) and the Drain Blood (|cff71d5ff|Hspell:444132|h[Drain Blood]|h|r): whoever carries Corrupted Blood steps in front of the tank."
};

-- Jammal'an and Ogom (SoD era): hall pair, two stages.
bos = { "Jammal'an and Ogom",
	"* The remake's hall pair: the two trolls devour one another and the survivor grows empowered.",
	"* Stage 1: Smite (437805) ALWAYS interrupted; Holy Nova (437817) is dodged in range and his Holy Fire (437809) (magic) lands on a cadence; Mortal Lash (437847) on the tank and Agonizing Weakness (437868) on the group.",
	"* Stage 2 (the devoured one falls): Jammal'an with Psychic Screams (437928) (fear), his Shadow Sermon: Pain (437927) (magic), Power Word: Shield (437930) (gets dispelled) and Mass Penance (437921); Ogom with Hammers of Justice (437915) (stun), Consecration (437884) — stay off the ground — and Divine Storm (437920) (1.5 s cast)."
};
pack["218721"] = bos; -- Jammal'an
pack["218718"] = bos; -- Ogom

-- Morphaz and Hazzas (SoD era): pit drake pair.
bos = { "Morphaz and Hazzas",
	"* The remake's pit drake pair: the SoD temple's longest fight.",
	"* Corrupted Breath (|cff71d5ff|Hspell:446487|h[Corrupted Breath]|h|r) STACKS on the tank and Animated Flames (|cff71d5ff|Hspell:446661|h[Animate Flame]|h|r) rise from the ground.",
	"* The stage rides on Lucid Dreaming: the first ~20 s channel (|cff71d5ff|Hspell:445235|h[Lucid Dreaming]|h|r) sends the group into the Emerald Dream — the flames die mid-cast; the second channel (4 s) arrives already burning, and after it his Eternal Slumber (|cff71d5ff|Hspell:446144|h[Eternal Slumber]|h|r) of 30 s kills everyone unless they escape through the portal in time."
};
pack["221942"] = bos; -- Morphaz
pack["221943"] = bos; -- Hazzas

pack["218571"] = { "Shade of Eranikus", -- (SoD era, 10-man raid)
	"* The remake's final boss: the Emerald Dream's green drake in the pit.",
	"* Corrosive Breath (|cff71d5ff|Hspell:437353|h[Corrosive Breath]|h|r) punishes the tank — swap with taunt after the cast — and Deep Slumber (|cff71d5ff|Hspell:437301|h[Deep Slumber]|h|r) sweeps the room on a cadence.",
	"* His Waking Nightmare (|cff71d5ff|Hspell:437398|h[Waking Nightmare]|h|r) every ~66 s is lethal: run TOWARD the Deep Slumber spot and off the punished ground.",
	"* His Lethargic Poison (|cff71d5ff|Hspell:437390|h[Lethargic Poison]|h|r) is poison (dispel it); at 70% and 40% his Dream adds spawn (they get marked) and their channeled Lethargic Poison (|cff71d5ff|Hspell:437425|h[Lethargic Poison]|h|r) is ALWAYS interrupted, same as the Bellowing Roar (|cff71d5ff|Hspell:445498|h[Bellowing Roar]|h|r)."
};

-- ========================= --
-- Zul'Gurub : Zone 309 (classic raid) --
-- ========================= --
-- No journal instance (like the Monastery): no corpus, and the element-1
-- names stay PROVISIONAL until the client confirms; the CIDs come from the
-- VanillaZG modules of DBM-Raids-Vanilla. The band closes with the owner's
-- classic Wowhead sheet (Mandokir and Ohgan 2026-10) and the rest on DBM
-- kits; the EDGE OF MADNESS altar (15083) stays OUT: one DBM id for four
-- rotating trolls with no safe name — to ask the owner. Note: zonas[309] is
-- commented out in _zonas — curate by hand when the band is done.

pack["11382"] = { "Bloodlord Mandokir", -- (classic era, optional; owner kit)
	"* The bloodlord of the platform: two-unit fight, and the raptor Ohgan (14988) carries his own entry.",
	"* His Charges (no verified id) hook the far players (8-30 yards): a far-off hunter eats them with Feign Death or a designated ranged soaks the hit.",
	"* His Whirlwind punishes melee: step out of the radius the moment it starts.",
	"* His Threatening Gaze (|cff71d5ff|Hspell:24314|h[Threatening Gaze]|h|r) marks a player for 6 s: STOP EVERYTHING (casts, damage and movement) or it's a one-shot!",
	"* Every 3 player DEATHS (Chained Spirits) grow his size and damage: not dying is part of the tactic.",
	"* When Ohgan falls his one-minute Frenzy (|cff71d5ff|Hspell:24318|h[Frenzy]|h|r) comes down — decide BEFORE: either drop the raptor first and ride out the enrage with heavy healing, or park him apart with his tank and kill him last."
};

pack["14988"] = { "Ohgan", -- (classic era, Mandokir's raptor mount; owner kit)
	"* Mandokir's raptor: as the fight starts his rider dismounts and they split — his tank keeps him away from the group.",
	"* His Mortal Wound (|cff71d5ff|Hspell:16856|h[Mortal Wound]|h|r) stacks on the tank: two-tank rotation.",
	"* His death ENRAGES Mandokir for a minute — plan the strategy before opening (see the Bloodlord Mandokir entry)."
};

pack["14507"] = { "High Priest Venoxis", -- (classic raid)
	"* Starts as a shadow priest: his Renew (|cff71d5ff|Hspell:23895|h[Renew]|h|r) goes ON HIMSELF and gets PURGED (endless self-healing otherwise); his Holy Fire (|cff71d5ff|Hspell:23860|h[Holy Fire]|h|r) hits players — magic, dispel or it burns.",
	"* At ~55% he turns serpent (|cff71d5ff|Hspell:23849|h[Form of the Serpent]|h|r) and opens his final phase.",
	"* Then he drops his Toxic Cloud (|cff71d5ff|Hspell:23861|h[Toxic Cloud]|h|r), 10 s on the floor: step out of the spray.",
	"* His snake venom (|cff71d5ff|Hspell:23865|h[Snake Venom]|h|r) marks a player: purge it or hold it with healing."
};

pack["14517"] = { "High Priestess Jeklik", -- (classic raid)
	"* Her Greater Heal (|cff71d5ff|Hspell:23954|h[Greater Heal]|h|r) ALWAYS gets kicked (~20 s cooldown).",
	"* Her Sonic Burst (|cff71d5ff|Hspell:23918|h[Sonic Burst]|h|r) hits the nearby melee: magic, dispel or step away.",
	"* Her Panic (|cff71d5ff|Hspell:22884|h[Panic]|h|r) scatters the close ranks 4 s: melee steps back when she winds it.",
	"* Her Shadow Word: Pain (|cff71d5ff|Hspell:23952|h[Shadow Word: Pain]|h|r) is sustained magic damage: dispel it.",
	"* At half life she lands with a swarm of bats: AoE it down and the DPS keeps going."
};

pack["14510"] = { "High Priestess Mar'li", -- (classic raid)
	"* Her Enlarge (|cff71d5ff|Hspell:24109|h[Enlarge]|h|r) grows her bigger and meaner: magic that gets DISPELLED off her (special warning).",
	"* Her Drain Life (|cff71d5ff|Hspell:24300|h[Drain Life]|h|r) hits a player: magic, and she feeds on it — purge fast.",
	"* Her Corrosive Poison (|cff71d5ff|Hspell:24111|h[Corrosive Poison]|h|r) sticks 30 s on the player: purge.",
	"* Her Poison Volley (|cff71d5ff|Hspell:24099|h[Poison Volley]|h|r) hits everyone: antidotes and healing ready.",
	"* She summons spiders (|cff71d5ff|Hspell:24083|h[Summon Spiders]|h|r): sweep them with AoE while the DPS stays on her."
};

pack["14515"] = { "High Priestess Arlokk", -- (classic raid)
	"* Her Mark (|cff71d5ff|Hspell:24210|h[Mark of Arlokk]|h|r) pins a player (special warning if it is you).",
	"* She Vanishes (|cff71d5ff|Hspell:24223|h[Vanish]|h|r) shortly after the pull — she returns onto a player; melee re-pins her by hitting.",
	"* Her Shadow Word: Pain (|cff71d5ff|Hspell:24212|h[Shadow Word: Pain]|h|r) is magic: dispel it."
};

pack["14509"] = { "High Priest Thekal", -- (classic raid, trio with his zealots)
	"* The fight runs on three: his two zealots, Lor'Khan (11348, healer) and Zath (11347, rogue).",
	"* Bring ALL of them low at once: when the three drop in a burst they play dead and Thekal wakes ~15 s later in tiger form with adds — the pull opens with even pressure on all three.",
	"* His Greater Heal (|cff71d5ff|Hspell:24208|h[Greater Heal]|h|r) ALWAYS gets kicked (him and Lor'Khan).",
	"* Zath leaves melees Blind (|cff71d5ff|Hspell:21060|h[Blind]|h|r) and Gouged (|cff71d5ff|Hspell:12540|h[Gouge]|h|r) — keep control on him."
};

pack["15114"] = { "Gahz'ranka", -- (classic raid, optional fishing boss)
	"* Optional: he erupts from the swamp fishing hole with the right bait.",
	"* His Frost Breath (|cff71d5ff|Hspell:16099|h[Frost Breath]|h|r) sweeps a cone to his front: nobody crosses the spray.",
	"* His Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) launches those standing in the water: fight at the rim."
};

pack["11380"] = { "Jin'do the Hexxer", -- (classic raid)
	"* His Delusion (|cff71d5ff|Hspell:24306|h[Delusion of Jin'do]|h|r) lies to the marked one — he sees ghosts that are not there: purge (curse dispel).",
	"* His Brain Wash (|cff71d5ff|Hspell:24261|h[Brain Wash]|h|r) enslaves a player: curse, remove NOW.",
	"* His Hex (|cff71d5ff|Hspell:17172|h[Hex]|h|r) pins a player 5 s: magic, dispel.",
	"* His TOTEMS get broken immediately: the Healing Ward (|cff71d5ff|Hspell:24309|h[Healing Ward]|h|r) keeps patching him and the Brain Wash Totem (|cff71d5ff|Hspell:24262|h[Brain Wash Totem]|h|r) washes brains around it.",
	"* His Banish (|cff71d5ff|Hspell:24466|h[Banish]|h|r) pulls a player out of the fight a few seconds — hold it."
};

pack["14834"] = { "Hakkar the Soulflayer", -- (classic raid, final boss)
	"* His Blood Siphon (|cff71d5ff|Hspell:24324|h[Blood Siphon]|h|r) every 90 s drains the WHOLE raid and heals him — this is the DPS clock: win before the drains grind the raid down.",
	"* His Insanity (|cff71d5ff|Hspell:24327|h[Insanity]|h|r) comes every ~21 s and deranges a player 10 s: kept clear of the ranks it fades by itself.",
	"* His Corrupted Blood (|cff71d5ff|Hspell:24328|h[Corrupted Blood]|h|r) hops between players: purge the moment it lands.",
	"* Hard mode (the band's priests alive): the Aspects loop — Jeklik's (|cff71d5ff|Hspell:24687|h[Aspect of Jeklik]|h|r) silences casters, Venoxis' (24688) scatters poison, Mar'li's (24686) drains, Arlokk's (24690) marks, and Thekal's (|cff71d5ff|Hspell:24689|h[Aspect of Thekal]|h|r) sends him RAGING — that one gets DISPELLED off him (enrage dispel, special warning). Killing the priests before shuts ALL Aspects off.",
	"* In the SoD remake the Aspects ALWAYS come (every 20 s, random order).",
	"* At ~9:45 he lets the final enrage loose: the fight cannot run past 10 minutes."
};

pack["15082"] = { "Gri'lek", -- (classic era, Edge of Madness; owner sheets 2026-10)
	"* He is summoned on the Corner's brazier with the Gurubashi Mojo Madness potion on his fortnight; on death he drops his Blood of Gri'lek for the ZG class trinkets.",
	"* His Avatar (|cff71d5ff|Hspell:24646|h[Avatar]|h|r) ENLARGES him, wipes the tank's threat and detonates his physical damage — and he moves SLOWER: the pinned one runs out of his radius until he shrinks again."
};
pack["15083"] = { "Hazza'rah", -- (classic era, Edge of Madness; owner sheets 2026-10)
	"* The Corner's brazier summons the ACTIVE troll of the two-week rotation with the Gurubashi Mojo Madness potion (alchemy: 1 Blood of Heroes, 1 Massive Mojo, 6 Powerful Mojo, 1 Black Lotus); on death it drops its reagent for the ZG class trinkets (here, Hazza'rah's Dream-Thread).",
	"* His Nightmare Illusions (|cff71d5ff|Hspell:24728|h[Nightmare Illusion]|h|r) are slow copies with small health pools but hits worth over 5,000: kill them AT ONCE (an instant spell is enough) — top priority of the encounter.",
	"* His chained Mana Burn (|cff71d5ff|Hspell:24684|h[Mana Burn]|h|r) drains the raid in a chain — he barely carries mana (about 5,000), so hunters with Viper Sting and warlocks with Mana Drain keep him DRY and the ability starves itself.",
	"* His Sleep (|cff71d5ff|Hspell:24664|h[Sleep]|h|r) is area-wide, 6 s: spread the group and nobody naps mid-raid.",
	"* Its rotation-mates Gri'lek, Renataki and Wushoolay carry their own entries: the brazier only calls the active troll of the fortnight."
};
pack["15084"] = { "Renataki", -- (classic era, Edge of Madness; owner sheets 2026-10)
	"* He is summoned on the Corner's brazier with the Gurubashi Mojo Madness potion on his fortnight; on death he drops his Renataki's Tooth for the ZG class trinkets.",
	"* He Vanishes (|cff71d5ff|Hspell:24699|h[Vanish]|h|r) and reappears on a target with a LETHAL strike: AoE reveals him and PETS keep track of him even in stealth."
};
pack["15085"] = { "Wushoolay", -- (classic era, Edge of Madness; owner sheets 2026-10)
	"* He is summoned on the Corner's brazier with the Gurubashi Mojo Madness potion on his fortnight; on death he drops his Mane of Wushoolay for the ZG class trinkets.",
	"* His Chain Lightning strikes a FRONTAL cone (no verified id): melee stays BEHIND him at all times.",
	"* He seeds lightning Clouds (|cff71d5ff|Hspell:24683|h[Lightning Cloud]|h|r) for 15 s on the floor: step out of them AT ONCE or they eat the raid."
};

-- Classic Scholomance : Zone 289 --
-- No journal instance (corpus missing, like the Monastery): element-1 names
-- confirmed by the owner via Wowhead 2026-10 (13/13). Kit of the DBM
-- Shared\Scholomance_Old (13 CIDs; only Gandling 17950 and Alexei 17820
-- carry warnings) + the owner's sheet of 2026-10; the rest are flat fights.
-- Watch out: the owner's message carried crossed name-id pairs
-- (Krastinov/10507, Polkelt/10503, Vectus/Marduk swapped) and the name table
-- repeated the cross (10507/11261 and 10432/10433); the DBM CIDs rule.

pack["10506"] = { "Kirtonos the Herald", -- (classic era)
	"* He is summoned on the balcony by placing the Blood of the Innocents (from the entrance mobs) on its pedestal.",
	"* In gargoyle form he casts a curse that dries up the damage dealt: curse, purged on sight.",
	"* His knockback throws people off the balcony: the tank positions him BACK to the group and far from the rim."
};
pack["10505"] = { "Instructor Malicia", -- (classic era)
	"* She lectures surrounded by undead students: AoE (and Shackle Undead) clears the waves as soon as they come.",
	"* Her heals, ALWAYS interrupted."
};
pack["11622"] = { "Rattlegore", -- (classic era)
	"* The ossuary giant arrives surrounded by skeletons: the guard clears before him.",
	"* He strikes with a CLEAVE — NOBODY in front but the tank.",
	"* He keeps dropping the tank's threat: DPS throttle instead of stealing aggro."
};
pack["10503"] = { "Jandice Barov", -- (classic era)
	"* She duplicates herself into identical illusions: the group hunts the REAL body (or crushes the copies with AoE) before the combined damage melts the healer."
};
pack["10504"] = { "Lord Alexei Barov", -- (classic era)
	"* He arrives with two guards: take them out first or the aggro splits in two.",
	"* His Veil of shadow (|cff71d5ff|Hspell:17820|h[Veil of shadow]|h|r) is a CURSE that cuts healing received by 75%: purge it on sight (the DBM announces the target)."
};
pack["10507"] = { "The Ravenian", -- (classic era)
	"* The crypt ghoul giant: BRUTAL hits on the tank — healing stays glued to him the whole fight."
};
pack["11261"] = { "Doctor Theolen Krastinov", -- (classic era)
	"* The Butcher: endless melee; enraged, he goes into FRENZY with damage and attack speed through the roof — tank on defensives, priority healing while it lasts."
};
pack["10502"] = { "Lady Illucia Barov", -- (classic era)
	"* MIND-controls a player: stun, fear or polymorph WITHOUT killing the controlled one.",
	"* Her Shadow Bolts ALWAYS get interrupted; her area silence pushes casters and healers behind the tank."
};
pack["10901"] = { "Lorekeeper Polkelt", -- (classic era)
	"* He opens with minions at his sides: clear them first, then him.",
	"* He seeds acid/venom puddles on the floor: don't stand in them, and dispel his toxins fast."
};
pack["10433"] = { "Marduk Blackpool", -- (classic era)
	"* In the necromancy classroom, next to Vectus: engage slowly so you don't grab both at once; his skeleton summons get cleared fast."
};
pack["10432"] = { "Vectus", -- (classic era)
	"* The other of the necromancy classroom: flat caster — his minions and soul fragments get cleared on sight."
};
pack["10508"] = { "Ras Frostwhisper", -- (classic era)
	"* Frost lich: his Nova freezes the melee — take the hit, back off, and strike between blasts.",
	"* His Frost Armor slows his attackers, and his frost Throw hurls the tank away and wipes the threat: the tank strolls back, nobody overtakes him."
};
pack["1853"] = { "Darkmaster Gandling", -- (classic era)
	"* His Shadow Portal (|cff71d5ff|Hspell:17950|h[Shadow Portal]|h|r) TOSSES a player into one of the locked rooms full of students (the warning announces the cast, not the target).",
	"* The isolated one fights the room's students ALONE until the door opens; the rest soaks his Shadow Bolts and keeps hammering without stopping the DPS.",
	"* It repeats until he drops: a DPS clock while the rooms keep spitting people."
};

-- Classic Stratholme : Zone 329 --
-- No journal instance (corpus missing): element-1 names verified with
-- DBM-Party-Vanilla\Classic + BigWigs Encounters_Classic + the owner's Wowhead;
-- only the flagged ones stay provisional. Kits of the DBM Shared\Stratholme
-- and of LittleWigs_Classic\Stratholme (15 CIDs): Scarlet and undead wings.

pack["10516"] = { "The Unforgiven", -- (classic era)
	"^ The gatehouse ghost: flat fight; his Frost Nova (|cff71d5ff|Hspell:14907|h[Frost Nova]|h|r) freezes the melee — step out and return to him."
};
pack["11032"] = { "Malor the Zealous", -- (classic era)
	"* His Ground Smash (|cff71d5ff|Hspell:12734|h[Ground Smash]|h|r) bashes an area and STUNS for 2 s — casters keep distance and healing glued on the tank; his Head Crack (|cff71d5ff|Hspell:16172|h[Head Crack]|h|r) punishes the tank.",
	"* His Holy Light (|cff71d5ff|Hspell:15493|h[Holy Light]|h|r) ALWAYS gets interrupted: he heals himself."
};
pack["10808"] = { "Timmy the Cruel", -- (classic era)
	"* The giant abomination: his Ravenous Claw (|cff71d5ff|Hspell:17470|h[Ravenous Claw]|h|r) hits in front and HEALS him — only the tank forward; at 50% he ENRAGES (|cff71d5ff|Hspell:8599|h[Enrage]|h|r) — out-damage the fury."
};
pack["10997"] = { "Cannon Master Willey", -- (classic era; classic name, the DBM title is the remastered one)
	"* From the parapet: artillery in area spots and Risen Riflemen (|cff71d5ff|Hspell:17279|h[Summon Risen Rifleman]|h|r) in waves: cleared on sight.",
	"* His Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) hurls the tank away: he strolls back and nobody overtakes him."
};
pack["10558"] = { "Hearthsinger Forresten", -- (classic era)
	"* His Enchanting Lullaby (|cff71d5ff|Hspell:16798|h[Enchanting Lullaby]|h|r) area-sleeps the whole group: ALWAYS gets interrupted.",
	"* His Demoralizing Shout (|cff71d5ff|Hspell:16244|h[Demoralizing Shout]|h|r) saps the melee; the rest, flat."
};
pack["10811"] = { "Archivist Galford", -- (classic era)
	"* The fire instructor: his Fire Nova (|cff71d5ff|Hspell:17366|h[Fire Nova]|h|r) bashes EVERYTHING around him — the melee dips out to strike.",
	"* His Burning Winds (|cff71d5ff|Hspell:17293|h[Burning Winds]|h|r) land on a player: the group spreads.",
	"* His Pyroblast (|cff71d5ff|Hspell:17274|h[Pyroblast]|h|r) ALWAYS gets interrupted."
};
bos = { "Balnazzar", -- (classic era; the fight opens as Grand Crusader Dathrohan)
	"* The fight opens as Grand Crusader Dathrohan with his Crusader's Hammer (|cff71d5ff|Hspell:17286|h[Crusader's Hammer]|h|r); halfway through he MORPHS into the demon Balnazzar.",
	"* Balnazzar: his Sleep (|cff71d5ff|Hspell:12098|h[Sleep]|h|r) is MAGIC — purge it; his Mind Blast (|cff71d5ff|Hspell:17287|h[Mind Blast]|h|r) hits one caster and his Psychic Scream (|cff71d5ff|Hspell:13704|h[Psychic Scream]|h|r) fears the group — spread so the panic doesn't chain."
};
pack["10812"] = bos;
pack["10813"] = bos;
pack["11143"] = { "Postmaster Malown", -- (classic era)
	"* Optional at the market square (he watches the mail): his Backhand (|cff71d5ff|Hspell:6253|h[Backhand]|h|r) stuns and his Curse of Weakness (|cff71d5ff|Hspell:12741|h[Curse of Weakness]|h|r) is a curse to purge."
};
pack["10435"] = { "Magistrate Barthilas", -- (classic era)
	"* His Crowd Pummel (|cff71d5ff|Hspell:10887|h[Crowd Pummel]|h|r) bashes the melee: the group spreads.",
	"* His Furious Anger (|cff71d5ff|Hspell:16791|h[Furious Anger]|h|r) stacks VERY FAST in the classic: DPS don't dawdle.",
	"* His Mighty Blow (|cff71d5ff|Hspell:14099|h[Mighty Blow]|h|r) punishes the tank with healing glued on.",
	"* He RUNS to the back of the room as soon as he is engaged: the surrounding pulls, cleared BEFORE."
};
pack["10437"] = { "Nerub'enkan", -- (classic era)
	"* The giant spider summons undead scarabs (|cff71d5ff|Hspell:17235|h[Raise Undead Scarab]|h|r) nonstop: the AoE sweeps them.",
	"* His Pierce Armor (|cff71d5ff|Hspell:6016|h[Pierce Armor]|h|r) leaves the tank WITHOUT armor: defensives or a second tank.",
	"* His Encasing Webs (|cff71d5ff|Hspell:4962|h[Encasing Webs]|h|r) tangle a player for a while: heal through and keep fighting."
};
pack["10436"] = { "Baroness Anastari", -- (classic era)
	"* POSSESSES a player (|cff71d5ff|Hspell:17244|h[Possess]|h|r): the possessed fights the party — bring them DOWN TO HALF HEALTH to free them, without killing them.",
	"* Her Silence (|cff71d5ff|Hspell:18327|h[Silence]|h|r) is area-wide: spread so it doesn't eat everyone.",
	"* Her Banshee Curse (|cff71d5ff|Hspell:16867|h[Banshee Curse]|h|r) is a curse that CUTS HEALING on the marked one: purge it NOW."
};
pack["10438"] = { "Maleki the Pallid", -- (classic era)
	"* His Ice Tomb (|cff71d5ff|Hspell:16869|h[Ice Tomb]|h|r) freezes a player for seconds: heal them through and the fight never stops.",
	"* His Drain Life (|cff71d5ff|Hspell:17620|h[Drain Life]|h|r) siphons a player — attentive healing.",
	"* His frost volleys slow the caster and drain their mana."
};
pack["10439"] = { "Ramstein the Gorger", -- (classic era)
	"* The one before the Baron's room: BRUTAL hits on the tank with sustained healing; his Knockout (|cff71d5ff|Hspell:17307|h[Knockout]|h|r) STUNS the whole party and his Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) punishes the melee.",
	"* When he drops, the wave of undead guards floods the plaza: group up and sweep them before the Baron."
};
pack["10440"] = { "Baron Rivendare", -- (classic era)
	"* The final baron: his Raise Dead (|cff71d5ff|Hspell:17473|h[Raise Dead]|h|r) summons skeletons that MARCH toward him and heal him on contact, and ~12 s later he finishes with Death Pact (|cff71d5ff|Hspell:17471|h[Death Pact]|h|r) — AoE them down from range BEFORE.",
	"* His Shadow Bomb (|cff71d5ff|Hspell:17434|h[Shadow Bomb]|h|r) lands on a player: the group spreads.",
	"* His unholy aura bites anyone close and puts Mortal Wounds on the tank: constant healing on the band."
};

-- Dire Maul : Zona 429 (classic) --
-- Element-1 names from the 4-locale journal corpus, journal order; kits from
-- DBM Shared\DireMaul and LittleWigs_Classic\DireMaul.
pack["11489"] = { "Tendris Warpwood", -- (classic era)
	"* The ancient tree: his Grasping Vines (|cff71d5ff|Hspell:22924|h[Grasping Vines]|h|r) weave and his roots (|cff71d5ff|Hspell:22994|h[Entangle]|h|r) GRAB the melee — purge them (magic and movement).",
	"* His Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) punishes the melee."
};
pack["11488"] = { "Illyanna Ravenoak", -- (classic era)
	"* The archer: her Charge (|cff71d5ff|Hspell:22911|h[Charge]|h|r) flies at the farthest and nobody stands on the Immolation Trap (|cff71d5ff|Hspell:22910|h[Immolation Trap]|h|r).",
	"* Concussive Shot (|cff71d5ff|Hspell:22914|h[Concussive Shot]|h|r) slows and her Volley (|cff71d5ff|Hspell:30933|h[Volley]|h|r) hits in area: the group spreads."
};
pack["11487"] = { "Magister Kalendris", -- (classic era)
	"* The magister: at 50% he takes Shadowform (|cff71d5ff|Hspell:22917|h[Shadowform]|h|r) and hits harder.",
	"* His Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) STEALS a player: purge the magic off them."
};
pack["11496"] = { "Immol'thar", -- (classic era)
	"* The demon imprisoned by the five pylons: he goes FREE when the pylons burst — the whole room is the arena.",
	"* His Eyes (|cff71d5ff|Hspell:22899|h[Eyes of Immol'thar]|h|r) burn one player and Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) sweeps the melee.",
	"* He opens Portals (|cff71d5ff|Hspell:22950|h[Portal of Immol'thar]|h|r) that spit minions: AoE the ring while the tank holds."
};
pack["11486"] = { "Prince Tortheldrin", -- (classic era)
	"* The prince guarding the pylons: his escort falls first, then him.",
	"* His Summons (|cff71d5ff|Hspell:22995|h[Summon]|h|r) fill the room and the Whirling Strike (|cff71d5ff|Hspell:67037|h[Whirling Strike]|h|r) pounds in an area — step out."
};
pack["11492"] = { "Alzzin the Wildshaper", -- (classic era)
	"* The shapeshifter: he takes Tree Form (|cff71d5ff|Hspell:22688|h[Tree Form]|h|r) then Dire Wolf Form (|cff71d5ff|Hspell:22660|h[Dire Wolf Form]|h|r) — the fight changes face with each shift.",
	"* His Wild Regeneration (|cff71d5ff|Hspell:7948|h[Wild Regeneration]|h|r) ALWAYS interruptible: if it lands, he floods with health.",
	"* Enervate (|cff71d5ff|Hspell:22661|h[Enervate]|h|r) and Wither (|cff71d5ff|Hspell:22662|h[Wither]|h|r) are DISEASES: the druid purges them.",
	"* Mangle (|cff71d5ff|Hspell:22689|h[Mangle]|h|r) bleeds the tank, his roots (|cff71d5ff|Hspell:22415|h[Entangling Roots]|h|r) pin casters and Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) flings them."
};
pack["14325"] = { "Captain Kromcrush", -- (classic era)
	"* A Gordok guard captain with no logged specials — tank up front and the group alert."
};
pack["14324"] = { "Cho'Rush the Observer", -- (classic era)
	"* The court's healer: his heals carry no alert — interrupt every green cast on sight.",
	"* For the tribute run it pays to LEAVE HIM ALIVE: standing guards when the king falls fatten Mizzle's chest."
};
pack["14321"] = { "Guard Fengus", -- (classic era)
	"* A court guard with no logged specials — a straight slugfest behind a steady tank on clean pulls."
};
pack["14326"] = { "Guard Mol'dar", -- (classic era)
	"* Shield Bash (|cff71d5ff|Hspell:11972|h[Shield Bash]|h|r) interrupts and Shield Charge (|cff71d5ff|Hspell:15749|h[Shield Charge]|h|r) STAMPS the guard onto his target: keep distance and a clear back.",
	"* His Strike (|cff71d5ff|Hspell:14516|h[Strike]|h|r) hammers the tank and at 50% he goes into Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): hard DPS at the end."
};
pack["14323"] = { "Guard Slip'kik", -- (classic era)
	"* Another court guard with no logged specials — melee on the tank and zero slip-ups."
};
pack["13280"] = { "Hydrospawn", -- (classic era)
	"* The water bomb of the shrine: his Riptide (|cff71d5ff|Hspell:22419|h[Riptide]|h|r) slams in area — the melee spreads.",
	"* His Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) bursts underfoot: step off the pool.",
	"* AT 66% and 33% he SUMMONS hydrolings (|cff71d5ff|Hspell:22714|h[Summon Hydroling]|h|r): AoE the minions and back to the tank."
};
pack["11501"] = { "King Gordok", -- (classic era)
	"* The king's Berserker Charge (|cff71d5ff|Hspell:22886|h[Berserker Charge]|h|r) flings the marked, his Mortal Strike (|cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r) CRUSHES the tank (rotate two) and War Stomp (|cff71d5ff|Hspell:16727|h[War Stomp]|h|r) stuns in area.",
	"* His Sunder Armor (|cff71d5ff|Hspell:15572|h[Sunder Armor]|h|r) STACKS on the tank: strong attentive heals.",
	"* For the tribute run: every guard ALIVE when he falls fattens Mizzle's chest."
};
pack["14327"] = { "Lethtendris", -- (classic era)
	"* Her Shadow Bolt Volleys (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) rain in area: the melee spreads.",
	"* Her curses (|cff71d5ff|Hspell:13338|h[Curse of Thorns]|h|r and |cff71d5ff|Hspell:16247|h[Curse of Tongues]|h|r) get removed and Immolate (|cff71d5ff|Hspell:11962|h[Immolate]|h|r) burns the marked.",
	"* Her imp Pimgib ENLARGES (|cff71d5ff|Hspell:22710|h[Enlarge]|h|r, purge it), spits the Flame Buffet (|cff71d5ff|Hspell:22713|h[Flame Buffet]|h|r) that STACKS and his Blast Wave (|cff71d5ff|Hspell:15744|h[Blast Wave]|h|r) flattens in area."
};
pack["14322"] = { "Stomper Kreeg", -- (classic era)
	"* The court's drunkard: his Booze Spit (|cff71d5ff|Hspell:22833|h[Booze Spit]|h|r) goes in a cone and his War Stomp (|cff71d5ff|Hspell:16740|h[War Stomp]|h|r) quakes in area.",
	"* Whirlwind (|cff71d5ff|Hspell:15578|h[Whirlwind]|h|r) hammers the melee and at 50% the Drunken Rage (|cff71d5ff|Hspell:22835|h[Drunken Rage]|h|r) LIGHTS him up: heals ready."
};
pack["11490"] = { "Zevrim Thornhoof", -- (classic era)
	"* His Sacrifice (|cff71d5ff|Hspell:22651|h[Sacrifice]|h|r) hooks a player and SENDS a demon: kill the demon NOW while the marked gets care.",
	"* Intense Pain (|cff71d5ff|Hspell:22478|h[Intense Pain]|h|r) beats the marked: healing.",
	"* His Shadow Bolt Volleys (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) punish in area: the melee spreads its back."
};

-- Lower/Upper Blackrock Spire : Zona 229 (classic) --
-- 9 CIDs of LBRS + 9 of UBRS (Rend shares his entry with Gyth 10339); kits from
-- DBM Shared\LowerBlackrockSpire and Classic\UpperBlackrockSpire; names from
-- the corpus (journal for LBRS; era dbm for UBRS).
pack["9196"] = { "Highlord Omokk", -- (classic era)
	"* The ogre lord of the stairway: vicious melee on the tank, constant healing."
};
pack["9236"] = { "Shadow Hunter Vosh'gajin", -- (classic era)
	"* The shadow priestess: her shadow bolts punish the casters — attentive healing on them."
};
pack["9237"] = { "War Master Voone", -- (classic era)
	"* The war master: a straight slog with a firm tank."
};
pack["10596"] = { "Mother Smolderweb", -- (classic era)
	"* The spider mother: her crystallization petrifies one of the group and her venom bites the melee — attentive healing."
};
pack["10584"] = { "Urok Doomhowl", -- (classic era)
	"* Born from the cave altar's rite: the summoning brings swarms — AoE and clear the melee before engaging."
};
pack["9736"] = { "Quartermaster Zigris", -- (classic era)
	"* The quartermaster: a straight slog behind a good tank."
};
pack["10220"] = { "Halycon", -- (classic era)
	"* The web daughter: melee on the tank, no logged specials."
};
pack["10268"] = { "Gizrul the Slavener", -- (classic era)
	"* The slaver: melee on the tank, no logged specials."
};
pack["9568"] = { "Overlord Wyrmthalak", -- (classic era)
	"* The den's overlord: sustained melee and constant healing."
};
pack["10363"] = { "General Drakkisath", -- (classic era)
	"* The general of the Upper wing: his Conflagration (|cff71d5ff|Hspell:16805|h[Conflagration]|h|r) sets a player ablaze — the marked leaves the group NOW while it burns."
};
pack["10899"] = { "Goraluk Anvilcrack", -- (classic era)
	"* The drakonid blacksmith: a flat fight behind a good tank."
};
pack["10509"] = { "Jed Runewatcher", -- (classic era)
	"* The runewatcher: flat melee on the tank."
};
pack["16042"] = { "Lord Valthalak", -- (classic era)
	"* The rite lord: his summons (|cff71d5ff|Hspell:27249|h[Summon Assassin]|h|r) bring assassins — the tank picks them up and melee keeps hitting."
};
pack["9816"] = { "Pyroguard Emberseer", -- (classic era)
	"* The forge warden: once his rite opens he falls like the rest — a straight slog."
};
pack["10264"] = { "Solakar Flamewreath", -- (classic era)
	"* The hatchery lord: opening the eggs spawns drakonid swarms — AoE the swarm and sustained melee on the boss."
};
pack["10430"] = { "The Beast", -- (classic era)
	"* The Beast: its roar terrifies the group and it hammers the tank — constant healing."
};
bos = { "Warchief Rend Blackhand", -- (classic era; module name — the client may carry another spelling, confirm in-game)
	"* The warchief goes down with his drake Gyth in the fight: strong healing on the tank and mind the drake's fire."
};
pack["10339"] = bos;
pack["10429"] = bos;

-- Onyxia's Lair : Zona 249 (classic) --
-- Kit from DBM-Raids-Vanilla\VanillaOnyxia (classic ids); name from the corpus (journal).
pack["10184"] = { "Onyxia", -- (classic era)
	"* Phase 1 on the ground: her Flame Breath (|cff71d5ff|Hspell:18435|h[Flame Breath]|h|r) punishes the tank, her Wing Buffet (|cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r) sends melee backwards and her Knock Away (|cff71d5ff|Hspell:19633|h[Knock Away]|h|r) breaks the tank's grip.",
	"* Phase 2 airborne: Fireballs (|cff71d5ff|Hspell:18392|h[Fireball]|h|r) on the marked and her Deep Breaths (|cff71d5ff|Hspell:17086|h[Deep Breath]|h|r) sweep half the lair — the chat warning rules: run to the opposite side.",
	"* Phase 3 on landing: all of it comes back and, on top, her Bellowing Roar (|cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r) FEARS half the group; the cave broods rise — AoE the swarm without losing the boss rhythm."
};

-- Molten Core : Zona 409 (classic) --
-- Kits from DBM-Raids-Vanilla\MC with the module's classic ids; the SoD Garr/Domo
-- share the remake's kit. 227939 ("The Molten Core") is the remake's zone-wide
-- event, NOT a boss: left out of the pack (curate _zonas by hand).
-- Bracket texts are our own wording: the id's tooltip rules live.
bos = { "Garr", -- (classic era)
	"* His Magma Shackles (|cff71d5ff|Hspell:19496|h[Magma Shackles]|h|r) ROOT the area: melee drops the rhythm and comes back; his Immolate (|cff71d5ff|Hspell:15732|h[Immolate]|h|r) bites one player with sustained fire.",
	"* The Anti-Magic Pulse (|cff71d5ff|Hspell:19492|h[Anti-Magic Pulse]|h|r) WIPES the group's magic buffs: shields go back up after each pulse.",
	"* His firesworn explode on death (|cff71d5ff|Hspell:20506|h[Firesworn]|h|r): melee steps off the corpses — steady AoE until all are swept."
};
pack["12057"] = bos;
pack["12099"] = bos;
pack["12118"] = { "Lucifron", -- (classic era)
	"* His Impending Doom (|cff71d5ff|Hspell:19702|h[Impending Doom]|h|r) bursts over the whole group seconds after landing: healing holds the line.",
	"* His curse (|cff71d5ff|Hspell:19703|h[Lucifron's Curse]|h|r) makes spells cost more — dispel it fast; casters keep mana margins.",
	"* His Mind Control (|cff71d5ff|Hspell:20604|h[Mind Control]|h|r) takes a player: the group's interrupts break it and the marked survives on heals."
};
pack["11982"] = { "Magmadar", -- (classic era)
	"* His Lava Breath sows Panic (|cff71d5ff|Hspell:19408|h[Panic]|h|r): the tank angles him away from the group; the feared runners head for fire — attentive healing.",
	"* His Frenzy (|cff71d5ff|Hspell:19451|h[Frenzy]|h|r) at low health spikes his damage: the hunter Tranquilizing Shots it down or the tank holds with heals."
};
pack["12259"] = { "Gehennas", -- (classic era)
	"* His curse (|cff71d5ff|Hspell:19716|h[Gehennas' Curse]|h|r) GUTS healing — dispel it NOW; casters suffer his rain's range.",
	"* The Rain of Fire (|cff71d5ff|Hspell:19717|h[Rain of Fire]|h|r) falls in patches: spread out; his Fist (|cff71d5ff|Hspell:20277|h[Fist of Gehennas]|h|r) pounds the marked.",
	"* His two shadow guards come with him: a tank apart, AoE with a head, nobody strays from the grip."
};
pack["12056"] = { "Baron Geddon", -- (classic era)
	"* His Ignite Mana (|cff71d5ff|Hspell:19659|h[Ignite Mana]|h|r) bites casters and, if the mana runs dry, bursts on top of them: casters manage their tank of mana.",
	"* The BOMB (|cff71d5ff|Hspell:20475|h[Inferno]|h|r) primes one player to blow: the marked sprints OUT of the group before detonation."
};
pack["12264"] = { "Shazzrah", -- (classic era)
	"* His curse (|cff71d5ff|Hspell:19713|h[Shazzrah's Curse]|h|r) leaves the group brittle to magic: dispel it.",
	"* His Deaden Magic (|cff71d5ff|Hspell:19714|h[Deaden Magic]|h|r) punishes marked casters: attentive healing; and his Counterspell (|cff71d5ff|Hspell:19715|h[Counterspell]|h|r) silences casters.",
	"* He strides across the group (|cff71d5ff|Hspell:23138|h[Gate of Shazzrah]|h|r): the tank re-grounds him without losing the grip."
};
pack["12098"] = { "Sulfuron", -- (classic era)
	"* His 4 flamewaker healers go FIRST: interrupt their heals every time they sprout and drop them before him.",
	"* His Inspire (|cff71d5ff|Hspell:19779|h[Inspire]|h|r) comes off the moment it lands: the hunter shoots it down or it gets purged.",
	"* The Hand of Ragnaros (|cff71d5ff|Hspell:19780|h[Hand of Ragnaros]|h|r) stuns and scatters in area — spread out; his Shadow Word: Pain (|cff71d5ff|Hspell:19776|h[Shadow Word: Pain]|h|r) and Immolate (|cff71d5ff|Hspell:20294|h[Immolate]|h|r) bite the marked into heals."
};
pack["11988"] = { "Golemagg", -- (classic era)
	"* His Earthquake (|cff71d5ff|Hspell:19798|h[Earthquake]|h|r) rocks the melee: melee holds on with a head.",
	"* The two lava ragers come with him: the tank parks them apart, they get no reckless touches and the DPS stays on the boss."
};
pack["11502"] = { "Ragnaros", -- (classic era)
	"* His Wrath of Ragnaros (|cff71d5ff|Hspell:20566|h[Wrath of Ragnaros]|h|r) punishes the front ranks: the tank holds with heals and melee stays unclumped.",
	"* He SUBMERGES every ~3 minutes: his Sons of Flame rise from the depths — the tank angles them away and they die before he returns (~90 s)."
};
bos = { "Majordomo Executus", -- (classic era)
	"* The Teleport (|cff71d5ff|Hspell:20534|h[Teleport]|h|r) reshuffles the WHOLE group: regroup without dropping DPS and melee walks back into position.",
	"* The Damage Shield (|cff71d5ff|Hspell:21075|h[Damage Shield]|h|r) bites melee while it runs: melee HALTS while it lasts.",
	"* His flamewakers heal and shield themselves: interrupts first on the heals, the finish goes to the majordomo at the end."
};
pack["12018"] = bos;
pack["11663"] = bos;
pack["11664"] = bos;
bos = { "Garr", -- (SoD remake)
	"* The same Magma Shackles (19496), marked Immolate (15732) and Anti-Magic Pulse (19492) as the classic: the remake hits harder — healing and spread hold the line.",
	"* Firesworn still explode on death: melee steps off the corpses."
};
pack["228432"] = bos;
pack["228834"] = bos;
bos = { "Majordomo Executus", -- (SoD remake)
	"* The Teleport (20534) reshuffles the group like the classic and his Damage Shield (21075) halts melee: same reflexes, heavier blows.",
	"* His flamewakers heal: interrupt their heals first."
};
pack["228437"] = bos;
pack["228836"] = bos;
pack["228837"] = bos;

-- Blackwing Lair : Zona 469 (classic) --
-- Kits from DBM-Raids-Vanilla\BWL (classic ids); names from the corpus (journal/dbm).
pack["12435"] = { "Razorgore the Untamed", -- (classic era)
	"* Phase 1: the group breaks the corral's EGGS one by one; waves of minions and drakes pour in meanwhile — AoE with a head and healing on the tank.",
	"* Phase 2, eggs gone, the boss drops on his own: his Fireball Volley (|cff71d5ff|Hspell:22425|h[Fireball Volley]|h|r) punishes in area and his Conflagration (|cff71d5ff|Hspell:23023|h[Conflagration]|h|r) sets the marked ablaze — spread and heal through."
};
pack["13020"] = { "Vaelastrasz the Corrupt", -- (classic era)
	"* His Flame Breath (|cff71d5ff|Hspell:23461|h[Flame Breath]|h|r) hammers the tank: strong healing and a rotation if it bites.",
	"* The Essence of the Red (|cff71d5ff|Hspell:18173|h[Essence of the Red]|h|r) bathes the WHOLE group in mana and speed: the fight runs full throttle, the DPS never drops a beat."
};
pack["12017"] = { "Broodlord Lashlayer", -- (classic era)
	"* His Blast Wave (|cff71d5ff|Hspell:23331|h[Blast Wave]|h|r) punts anyone near him across the room: spread the hall and melee with margin.",
	"* The Knock Away (|cff71d5ff|Hspell:18670|h[Knock Away]|h|r) flings the close ones and his Mortal Wound (|cff71d5ff|Hspell:24573|h[Mortal Wound]|h|r) stacks on the tank: two tanks trading turns."
};
pack["11983"] = { "Firemaw", -- (classic era)
	"* His Shadow Flame (|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r) sweeps the front: casters behind the pillars cut the line of sight.",
	"* The Flame Buffet (|cff71d5ff|Hspell:23341|h[Flame Buffet]|h|r) stacks magic damage on all that stay visible: hold behind the pillar, and the Wing Buffet (|cff71d5ff|Hspell:23339|h[Wing Buffet]|h|r) sends the tank flying."
};
pack["14601"] = { "Ebonroc", -- (classic era)
	"* His Shadow Flame (22539) and the Wing Buffet (23339) mirror Firemaw: behind the pillars.",
	"* His Shadow (|cff71d5ff|Hspell:23340|h[Shadow of Ebonroc]|h|r) marks the tank: with the mark up, EVERY hit against him HEALS the dragon — two tanks and a handover the moment it runs."
};
pack["11981"] = { "Flamegor", -- (classic era)
	"* His Shadow Flame (22539) and the Wing Buffet (23339): the same pillar game.",
	"* His Frenzy (|cff71d5ff|Hspell:23342|h[Frenzy]|h|r) calms under a Tranquilizing Shot: the hunter silences it the moment it shows."
};
pack["14020"] = { "Chromaggus", -- (classic era)
	"* His two breaths rotate at random across the hall: each paints its own lane — melee repositions to whichever lands.",
	"* The four Brood Afflictions: Red (|cff71d5ff|Hspell:23155|h[Brood Affliction: Red]|h|r) is DISEASE and HEALS him if nobody purges it; Green (|cff71d5ff|Hspell:23169|h[Brood Affliction: Green]|h|r) is poison; Blue (|cff71d5ff|Hspell:23153|h[Brood Affliction: Blue]|h|r) is magic; Black (|cff71d5ff|Hspell:23154|h[Brood Affliction: Black]|h|r) is a curse — dispels of every stripe on deck.",
	"* His Frenzy (|cff71d5ff|Hspell:23128|h[Frenzy]|h|r) calms under a Tranquilizing Shot and the Enrage (|cff71d5ff|Hspell:23537|h[Enrage]|h|r) arrives at the end: the DPS races the clock."
};
pack["11583"] = { "Nefarian", -- (classic era)
	"* Phase 1: waves of minions drop from the hall's side walls — the tank holds them and they get cleared without losing the thread.",
	"* The Class Calls arrive every ~30 s: each one squeezes a different class — read the chat warning and keep composure.",
	"* His Shadow Flame (|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r) punishes the front and his Roar (|cff71d5ff|Hspell:22686|h[Roar]|h|r) FEARS the group: spread, constant healing and a firm tank.",
	"* Phase 3 on landing: the bone piles release skeletons — AoE with a head."
};

-- Ruins of Ahn'Qiraj : Zona 509 (classic) --
-- Kits from DBM-Raids-Vanilla\AQ20 (classic ids); names from the corpus (journal).
pack["15348"] = { "Kurinnaxx", -- (classic era)
	"* His Sand Traps (|cff71d5ff|Hspell:25656|h[Sand Trap]|h|r) swallow the marked: the tank moves when it lands on him and healing to the fallen.",
	"* His Mortal Wound (|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r) stacks on the tank: two tanks trading turns; and his Frenzy (|cff71d5ff|Hspell:26527|h[Frenzy]|h|r) at the end of the line — DPS does its thing."
};
pack["15341"] = { "General Rajaxx", -- (classic era)
	"* The WAVE march of the banner: the first ones with their captains, the last one with the general himself — the tank opens each wave and it gets cleared in order.",
	"* His Thunder Crash (|cff71d5ff|Hspell:25599|h[Thunder Crash]|h|r) punishes in area: spread; the plague clouds splash the ground — out of the pool."
};
pack["15340"] = { "Moam", -- (classic era)
	"* His aura's mana drain squeezes the casters: mana drains and watchful DPS.",
	"* His Stone Form (|cff71d5ff|Hspell:25685|h[Stone Form]|h|r) freezes his fight at low health and wakes his minions: PUSH the DPS before he petrifies."
};
pack["15370"] = { "Buru the Gorger", -- (classic era)
	"* He CHOOSES a player and gives chase: the hunted kites him away from the group.",
	"* His eggs burst on his path and hurt him: the hunted walks him over them into the finish.",
	"* His Dismember (|cff71d5ff|Hspell:96|h[Dismember]|h|r) stacks on the tank he reaches: strong hold when it bites."
};
pack["15369"] = { "Ayamiss the Hunter", -- (classic era)
	"* His Paralyze (|cff71d5ff|Hspell:25725|h[Paralyze]|h|r) marks the ALTAR sacrifice: immediate healing on the paralyzed while they last.",
	"* At low health he hangs in the air: up there only range hits him — melee stays on the ground."
};
pack["15339"] = { "Ossirian the Unscarred", -- (classic era)
	"* His Supreme Mode (|cff71d5ff|Hspell:25176|h[Supreme Mode]|h|r) untouchable until the next crystal: the room sprints to light them.",
	"* Every crystal drops a weakness (Fire 25177, Frost 25178, Nature 25180, Arcane 25181, Shadow 25183): the DPS hits with the hot school the moment it lands.",
	"* The Cyclone (|cff71d5ff|Hspell:25189|h[Cyclone]|h|r) spins the marked and his Curse of Tongues (|cff71d5ff|Hspell:25195|h[Curse of Tongues]|h|r) slows the casters — curse to remove."
};

-- Temple of Ahn'Qiraj : Zona 531 (classic) --
-- Kits from DBM-Raids-Vanilla\AQ40 (classic ids); names from the corpus (journal/dbm).
pack["15263"] = { "Prophet Skeram", -- (classic era; module carries it even though _zonas left it unpaired)
	"* He teleports across the room (|cff71d5ff|Hspell:20449|h[Teleport]|h|r) and spawns a band of DUPLICATES (|cff71d5ff|Hspell:747|h[Summon Duplicate]|h|r) in his own image: the tank holds the original and the clones fall to the finish.",
	"* His Mind Control (|cff71d5ff|Hspell:785|h[Mind Control]|h|r) takes a player: the marked rides it out on heals while the group frees them."
};
bos = { "Silithid Royalty", -- (classic era)
	"* Three royals at once: the tank opens in order and melee clears one by one.",
	"* Their heals (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r) get interrupted EVERY time; the Fear (|cff71d5ff|Hspell:26580|h[Fear]|h|r) scatters the group — spread and hold.",
	"* The Toxic Volley (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r) bites the melee: poison to heal through."
};
pack["15544"] = bos;
pack["15511"] = bos;
pack["15543"] = bos;
pack["15516"] = { "Battleguard Sartura", -- (classic era)
	"* Her Whirlwind (|cff71d5ff|Hspell:26083|h[Whirlwind]|h|r) spins across the room and changes her mark on the fly: melee steps away when it starts and the tank re-grounds her when she switches.",
	"* At low health she rages (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): the DPS pushes and the healer holds the streak.",
	"* Her royal guards come with her: a tank apart."
};
pack["15510"] = { "Fankriss the Unyielding", -- (classic era)
	"* His Entangle (|cff71d5ff|Hspell:720|h[Entangle]|h|r) leaves several wrapped: cut the webs without dropping the thread.",
	"* The Mortal Wound (|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r) stacks the tank: two tanks; his summoned worms (|cff71d5ff|Hspell:25831|h[Worm Call]|h|r|cff71d5ff|Hspell:26631|h[Worm Spawn]|h|r) come in round after round — AoE with a head."
};
pack["15509"] = { "Princess Huhuran", -- (classic era)
	"* Her sting (|cff71d5ff|Hspell:26180|h[Wyvern Sting]|h|r) marks a player and her venom wash (|cff71d5ff|Hspell:26053|h[Noxious Poison]|h|r) covers the group: heal through and step off the pool.",
	"* The acid stacks the tank (|cff71d5ff|Hspell:26050|h[Acid Spit]|h|r) and her Frenzy (|cff71d5ff|Hspell:26051|h[Frenzy]|h|r) hushes under a Tranquilizing Shot — the hunter on watch.",
	"* At 30% she goes into FURY (|cff71d5ff|Hspell:26068|h[Berserk]|h|r): full throttle until she drops — DPS and healing at the edge."
};
pack["15299"] = { "Viscidus", -- (classic era)
	"* The poison volley (|cff71d5ff|Hspell:25991|h[Poison Bolt Volley]|h|r) punishes in waves: healers keep the rhythm.",
	"* The FROST freezes him: the Frost school hammers him until he frosts over; the physical BREAKS him — melee wades in to shatter when the frost runs.",
	"* He reforms and the cycle repeats: patience with the room and mana heals."
};
bos = { "Twin Emperors", -- (classic era)
	"* The twins SWAP places all the time (|cff71d5ff|Hspell:800|h[Teleport]|h|r): the tank re-grounds and the DPS spreads.",
	"* The melee twin unbalances the tank (|cff71d5ff|Hspell:26613|h[Unbalancing Strike]|h|r) and the other hammers the casters — two tanks, one per twin.",
	"* The mutated bugs (|cff71d5ff|Hspell:802|h[Mutate Bug]|h|r) crawl out on the floor — AoE with a head without forgetting the twins."
};
pack["15276"] = bos;
pack["15275"] = bos;
pack["15517"] = { "Ouro", -- (classic era)
	"* His Sweep (|cff71d5ff|Hspell:26103|h[Sweep]|h|r) flings the tank across the room: back to a wall so the grip never drops.",
	"* He SUBMERGES every ~3 minutes and leaves the floor swarming with scarabs: AoE at leisure while he's gone.",
	"* His Fury (|cff71d5ff|Hspell:26615|h[Berserk]|h|r) looms at the end: the DPS sprints to close before it."
};
bos = { "C'Thun", -- (classic era)
	"* The eye opens with its rotating beam: the group spreads around and nobody stands in the line of fire.",
	"* Claw and eye tentacles sprout every few seconds: the claws go to melee and the eyes to range — clear them without delay and the giants on the tank.",
	"* Every weaken window (~45 s) is the DPS's turn at full throttle: empty out whatever's left."
};
pack["15589"] = bos;
pack["15727"] = bos;

-- Naxxramas : Zona 533 (classic) --
-- Kits from DBM-Raids-Vanilla\VanillaNaxx by quarter (classic ids); names from the corpus.
pack["15956"] = { "Anub'Rekhan", -- (classic era)
	"* His Locust Swarm (|cff71d5ff|Hspell:28785|h[Locust Swarm]|h|r) sweeps the room: step into the center CIRCLE at the call and return to the grip when it passes.",
	"* His Impale (|cff71d5ff|Hspell:28783|h[Impale]|h|r) flings the close ones: melee with margin and a firm tank."
};
pack["15953"] = { "Grand Widow Faerlina", -- (classic era)
	"* The Widow's Embrace (|cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r) SILENCES her while it lasts: dropping her followers strengthens her.",
	"* Once the embrace expires her Frenzy (|cff71d5ff|Hspell:28131|h[Frenzy]|h|r) takes hold: strong healing and the DPS to close."
};
pack["15952"] = { "Maexxna", -- (classic era)
	"* Her Web Wrap (|cff71d5ff|Hspell:28622|h[Web Wrap]|h|r) cocoons a player: cut the web immediately.",
	"* Her spiderlings (|cff71d5ff|Hspell:29434|h[Summon Spiderlings]|h|r) come in with every web turn: AoE in their path.",
	"* The spray (|cff71d5ff|Hspell:29484|h[Web Spray]|h|r) stuns the WHOLE group every turn and her Frenzy (|cff71d5ff|Hspell:28747|h[Frenzy]|h|r) bites at the end: the DPS runs at 30%."
};
pack["15954"] = { "Noth the Plaguebringer", -- (classic era)
	"* He TELEPORTS to the balconies (|cff71d5ff|Hspell:29208|h[Blink]|h|r) every turn: skeleton minions stay below — the AoE clears them meanwhile.",
	"* His plague curse (|cff71d5ff|Hspell:29213|h[Curse of the Plaguebringer]|h|r) bites the marked: remove it NOW or it detonates on his return."
};
pack["15936"] = { "Heigan the Unclean", -- (classic era)
	"* The floor ERUPTS in rounds: his unclean dance (|cff71d5ff|Hspell:29350|h[Unclean Dance]|h|r) walks the group through the four-arc pattern — learn the steps and keep eyes on the floor.",
	"* Now and then he leaps beside a player (|cff71d5ff|Hspell:30211|h[Teleport]|h|r): the marked runs and healing on the fly.",
	"* His unclean affliction (|cff71d5ff|Hspell:29998|h[Unclean Affliction]|h|r) builds on the touched: disease off early."
};
pack["16011"] = { "Loatheb", -- (classic era)
	"* The healing spores (|cff71d5ff|Hspell:29234|h[Fungal Creep]|h|r) pop on rhythm: melee eats them the moment they drop — that's the fight's healing.",
	"* The Inevitable Doom (|cff71d5ff|Hspell:29204|h[Inevitable Doom]|h|r) gnaws the marked against the necrotic aura's clock: healing muzzled and the DPS runs."
};
pack["16061"] = { "Instructor Razuvious", -- (classic era)
	"* The UNDERSTUDIES take him with taunt: two on rotation, the real tank never reaches him.",
	"* His disrupting shout (|cff71d5ff|Hspell:29107|h[Disrupting Shout]|h|r) sweeps melee: step out of range at the call."
};
pack["16060"] = { "Gothik the Harvester", -- (classic era)
	"* The room is SPLIT between living and dead: each side holds its half until the merge.",
	"* His hops cross the room (|cff71d5ff|Hspell:28025|h[Teleport]|h|r to |cff71d5ff|Hspell:28026|h[Teleport Dead]|h|r): once joined, the tank pins him and the DPS drops."
};
bos = { "The Four Horsemen", -- (classic era)
	"* Four in a quartet, each with a corner: tanks gather them in pairs and the DPS spreads by wheel.",
	"* The Meteor (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) flies at it: the closest of each rider — tanks on watch.",
	"* The Void Zones (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) open underfoot: out of the circle at once."
};
pack["16062"] = bos;
pack["16063"] = bos;
pack["16064"] = bos;
pack["16065"] = bos;
pack["16028"] = { "Patchwerk", -- (classic era)
	"* His Hateful Strike hunts the HIGHEST-health melee in range: everyone at the same health level and even healing.",
	"* At half health his Frenzy (|cff71d5ff|Hspell:28131|h[Frenzy]|h|r) takes hold: the tank holds strong and healing doubles."
};
pack["15931"] = { "Grobbulus", -- (classic era)
	"* The Mutating Injection (|cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r) marks a player and its Cloud (|cff71d5ff|Hspell:28240|h[Poison Cloud]|h|r) sits toxic when it bursts: the marked steps AWAY from the group before it blows."
};
pack["15932"] = { "Gluth", -- (classic era)
	"* The Decimate (|cff71d5ff|Hspell:28374|h[Decimate]|h|r) drops the whole group to 5% health: strong healing at the call.",
	"* The room's zombies MARCH toward it and heal it on touch: cut the path and let the AoE finish them.",
	"* Its Frenzy (|cff71d5ff|Hspell:28371|h[Frenzy]|h|r) hushes under a Tranquilizing Shot and its Enrage (|cff71d5ff|Hspell:26662|h[Enrage]|h|r) looms at the end: the DPS to close."
};
pack["15928"] = { "Thaddius", -- (classic era)
	"* The two constructs open with blasts on the tank: spread and even healing.",
	"* The Polarity Shift (|cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r) charges the WHOLE group: plus on one side, minus on the other — NOBODY crosses sides."
};
pack["15989"] = { "Sapphiron", -- (classic era)
	"* His Life Drain (|cff71d5ff|Hspell:28542|h[Life Drain]|h|r) bites the marked: remove the curse NOW.",
	"* His ice blocks (|cff71d5ff|Hspell:28522|h[Icebolt]|h|r) stay standing: hug one when the dragon lifts, because his deep breath sweeps the room on return."
};
pack["15990"] = { "Kel'Thuzad", -- (classic era)
	"* His Mind Control chains (|cff71d5ff|Hspell:28410|h[Chains of Kel'Thuzad]|h|r) take several: the chained get CC'd without mercy until it drops.",
	"* The Shadow Fissure (|cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r) stuns whoever it lands on: out of the pool NOW.",
	"* The Frost Blast (|cff71d5ff|Hspell:27808|h[Frost Blast]|h|r) freezes its target with the room in line: even healing.",
	"* At the end the crypt guardians enter: the tank peels them and the thread keeps going."
};

P.en = en;