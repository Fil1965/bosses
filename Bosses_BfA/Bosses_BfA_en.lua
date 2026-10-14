--[[
 Bosses_BfA_en.lua
 English data of the Battle for Azeroth pack. Skeleton generated with
 scripts/generar-pack-bfa.mjs; ALL fight tactics REWRITTEN BY HAND
 2026-10 (real tactics, not telegraphic hints). Registered by
 Bosses_BfA.lua, loaded later in the .toc.
 Spell names re-localize by id in every client.
 aviso de DBM); los tooltips de los hechizos localizan por sí solos.
 Nombres: corpus del journal (nombres-jefe) + respaldo del mapa.
 In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Battle of Dazar'alor : Zona 2070 --
-- --------------------------------- --

bos = { "Ra'wani Kanae and Frida Ironbellows",
	"* |cff71d5ff|Hspell:283573|h[Sacred Blade]|h|r: brutal sacred strike on the tank — swap and use defensives.",
	"* |cff71d5ff|Hspell:283662|h[Call to Arms]|h|r: reinforcements arrive: the tank peels them off the raid and kill them as priority.",
	"* |cff71d5ff|Hspell:283598|h[Wave of Light]|h|r: waves of light crossing the room: dodge them on the pass.",
	"* |cff71d5ff|Hspell:283933|h[Judgment: Righteousness]|h|r: sacred judgment on marked ground: get out of the circle.",
};
pack["144683"] = bos; pack["144680"] = bos;

bos = { "Conclave of the Chosen",
	"* |cff71d5ff|Hspell:282444|h[Lacerating Claws]|h|r: lacerating claws on the tank: swap and use defensives.",
	"* |cff71d5ff|Hspell:285945|h[Hastening Winds]|h|r: hastening winds buff the enemy casters: purge them.",
	"* |cff71d5ff|Hspell:282098|h[Gift of Wind]|h|r: ALWAYS interrupt — it heals all four conclave members.",
	"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: in the spiritual form they are untouchable: bring them all down near- evenly and finish them together.",
};
pack["144747"] = bos; pack["144767"] = bos; pack["144963"] = bos; pack["144941"] = bos;

bos = { "Grong",
	"* |cff71d5ff|Hspell:285671|h[Crushed]|h|r: grabs the tank and crushes with rising damage: heal the grabbed one to the max.",
	"* |cff71d5ff|Hspell:285875|h[Rending Bite]|h|r: rending bite on the tank: swap after each bite.",
	"* |cff71d5ff|Hspell:289292|h[Throw]|h|r: the throw target breaks away from the raid immediately.",
	"* |cff71d5ff|Hspell:289307|h[Throw Target]|h|r: the marked runs far from the raid; the minions Grong channels raise his damage — interrupt priority.",
};
pack["144638"] = bos; pack["144637"] = bos;

bos = { "Ma'ra Grimfang and Anathos Firecaller",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: rising flames on the marked: move away from the raid until they expire.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: magma traps on the floor: never step on them.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: the spirits of Xuen attack in waves: kill them as priority or they pile up.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: when the shield projects, break it or the duel drags on.",
	"* The duo fights together: alternate targets carefully and clean the fire goo between waves.",
};
pack["144691"] = bos; pack["144692"] = bos;

pack["145261"] = { "Opulence",
	"* |cff71d5ff|Hspell:287037|h[Coin Sweep]|h|r: coin sweep on the tank: swap on every sweep.",
	"* |cff71d5ff|Hspell:284798|h[Grossly Incandescent]|h|r: incandescent beam on the marked: spread out and cross the line just as it hits.",
	"* |cff71d5ff|Hspell:283507|h[Volatile Charge]|h|r: the volatile charge marks two players: spread so the burst touches nobody.",
	"* |cff71d5ff|Hspell:289383|h[Chaotic Displacement]|h|r: displacements swap positions on the fly: keep distance between you.",
	"* Phase 1 in the treasure vault: kill the Hand of In'Zashi and its animated treasures; the marked player's gold curse passes nearby — move away or you inherit it.",
};

pack["145616"] = { "King Rastakhan",
	"* |cff71d5ff|Hspell:284831|h[Scorching Detonation]|h|r: scorching detonation on the marked: spread so the burst stands alone.",
	"* |cff71d5ff|Hspell:288415|h[Caress of Death]|h|r: the caress of death stacks damage on the raid: heal through it — phase 3 is a race.",
	"* |cff71d5ff|Hspell:286742|h[Necrotic Smash]|h|r: big necrotic smash on the tank: swap with defensives.",
	"* Loa phases: a loa joins his side in phase 2 (each loa brings a different kit) — kill the loa as priority before returning to the king.",
};

pack["144796"] = { "High Tinker Mekkatorque",
	"* |cff71d5ff|Hspell:286646|h[Giga-Volt Charge]|h|r: gigavolt charge on the tank: swap and never carry it into the raid on expiry.",
	"* |cff71d5ff|Hspell:284168|h[Shrunk]|h|r: the shrink beam marks the floor: never cross the ray or you get shrunk.",
	"* |cff71d5ff|Hspell:289699|h[Electroshock Amp]|h|r: electroshocks pop around the room: keep distance while dodging.",
	"* |cff71d5ff|Hspell:287114|h[Mis Tele]|h|r: the teleports change his position on the fly: reposition fast.",
	"* Phases: first the suit with the exploding sheep you must kite (they charge to burst); when the suit drops he fights on foot; at the end he flies the jetpack/hoverboard — keep moving.",
};

bos = { "Stormwall Blockade",
	"* |cff71d5ff|Hspell:285000|h[Kelp Wrapped]|h|r: the kelp wraps the marked: free them immediately — the wrap drowns.",
	"* |cff71d5ff|Hspell:284393|h[Translocate]|h|r: the minions translocate away: the tank re-tanks them immediately.",
	"* |cff71d5ff|Hspell:288205|h[Crackling Lightning]|h|r: lightning sweeping the room in areas: dodge each sweep.",
	"* |cff71d5ff|Hspell:287995|h[Elec Shroud]|h|r: the ship's electric shroud: never cross its area while it moves.",
	"* Ship duel: phase 1 kill the crew boarding you; in phase 2 the cannons and the sea jellies decide it — minion priority.",
};
pack["146251"] = bos; pack["146253"] = bos; pack["146256"] = bos;

pack["146409"] = { "Lady Jaina Proudmoore",
	"* |cff71d5ff|Hspell:287993|h[Chilling Stack]|h|r: her chilling aura stacks damage on EVERYONE: the phase's DPS rules — never let it grow.",
	"* |cff71d5ff|Hspell:287565|h[Avalanche]|h|r: massive avalanche on the tank: swap at the edge and heal the burst.",
	"* |cff71d5ff|Hspell:285177|h[Freezing Blast]|h|r: the freezing blast marks an area: get out of it as the cast screams.",
	"* |cff71d5ff|Hspell:285253|h[Ice Shard]|h|r: ice shards rain on the barge: dodge the impacts.",
	"* Phases: barge with bombardments first; then the ice island with the Chilling aura, avalanches and the ice walls to break through; the fight is a race against the chill stacking.",
};

bos = { "Manceroy Flamefist and Mestrah",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: rising flames on the marked: move away from the raid until they expire.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: magma traps on the floor: never step on them.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: the spirits of Xuen attack in waves: kill them as priority or they pile up.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: when the shield projects, break it or the duel drags on.",
	"* The duo fights together: alternate targets carefully and clean the fire goo between waves.",
};
pack["144693"] = bos; pack["144690"] = bos;


-- --------------------------------- --
-- Crucible of Storms : Zona 2096 --
-- --------------------------------- --

bos = { "The Restless Cabal",
	"* |cff71d5ff|Hspell:282384|h[Shear Mind]|h|r: brutal mind shear on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:282566|h[Power Stack]|h|r: every living minion channels power into the ritual and STACKS the calamity: absolute kill priority.",
	"* |cff71d5ff|Hspell:282741|h[Umbral Shell]|h|r: the umbral shell makes them untouchable while the ritual advances: kill the umbral stuff to break it.",
	"* |cff71d5ff|Hspell:284772|h[Custody of the Deep]|h|r: the custody marks the tank: the marked moves away from the raid until it expires.",
	"* Two priests at once: alternate targets, ALWAYS interrupt what can be interrupted and never let the ritual power grow.",
};
pack["144755"] = bos; pack["144754"] = bos;

pack["145371"] = { "Uu'nat, Harbinger of the Void",
	"* |cff71d5ff|Hspell:284851|h[Touch of the End]|h|r: touch of the end on the tank, a brutal bleed: swap with defensives.",
	"* |cff71d5ff|Hspell:286310|h[Void Shield]|h|r: during the shield the relics come out — the boss takes no damage: kill the relics fast.",
	"* |cff71d5ff|Hspell:284684|h[Void Relic]|h|r: the void relic channels and must ALWAYS die NOW.",
	"* |cff71d5ff|Hspell:284768|h[Ocean Relic]|h|r: the ocean relic feeds the boss if it survives: priority too.",
};


-- --------------------------------- --
-- The Eternal Palace : Zona 2164 --
-- --------------------------------- --

pack["150653"] = { "Blackwater Behemoth",
	"* |cff71d5ff|Hspell:298424|h[Feeding Frenzy]|h|r: the frenzy stacks on the tank: swap and heal the marked to the max.",
	"* |cff71d5ff|Hspell:292205|h[Bioluminescent Cloud]|h|r: the bioluminescent cloud marks the ground: get out of it as it drops.",
	"* |cff71d5ff|Hspell:292167|h[Toxic Spine]|h|r: toxic spines on the marked: move away from the raid until they expire.",
	"* |cff71d5ff|Hspell:301494|h[Piercing Barb]|h|r: the barb pierces the marked hard: immediate healing on the hit.",
	"* The fight happens in the dark: stay near the lit areas and away from the jaws; the feeding frenzy comes with minions from the bottom fauna.",
};

pack["150859"] = { "Za'qul, Harbinger of Ny'alotha",
	"* |cff71d5ff|Hspell:292971|h[Hysteria]|h|r: hysteria stacks panic on the raid: heal through it — never let it grow.",
	"* |cff71d5ff|Hspell:300133|h[Snapped]|h|r: the marked snaps: when it breaks they turn AGAINST the raid — control them and don't kill them inside the melee.",
	"* |cff71d5ff|Hspell:292996|h[Maddening Eruption]|h|r: the maddening eruption marks areas: spread when they drop.",
	"* |cff71d5ff|Hspell:292981|h[Disciple of N'Zoth]|h|r: the disciples of N'Zoth channel the madness: kill them NOW.",
	"* Phases: the nightmare swallows the room; in the dark phase kill the nightmare spirits before they feed Za'qul.",
};

pack["151881"] = { "Abyssal Commander Sivara",
	"* |cff71d5ff|Hspell:300701|h[Rimefrost]|h|r: rimefrost on the marked: CROSS to the other side of the boss to cleanse it — Sivara's dance rules.",
	"* |cff71d5ff|Hspell:300705|h[Septic Taint]|h|r: septic taint on the marked: cross back to the other side to cleanse it.",
	"* |cff71d5ff|Hspell:294726|h[Chimeric Marks]|h|r: the chimeric marks drop in pairs: each touched crosses when it's their turn, never crossing into each other.",
	"* |cff71d5ff|Hspell:295348|h[Overflowing Chill]|h|r: the overflowing chill hits an area: spread around the boss.",
	"* In the last phase the frost and taint pools flood the floor: the crossing dance decides the fight.",
};

pack["152910"] = { "Queen Azshara",
	"* |cff71d5ff|Hspell:298569|h[Drained Soul]|h|r: drained soul on the marked: heal them carefully until it passes.",
	"* |cff71d5ff|Hspell:297937|h[Painful Memories]|h|r: the painful memories mark areas: spread and never share the damage.",
	"* |cff71d5ff|Hspell:298014|h[Cold Blast]|h|r: the cold blast sweeps a cone: never stand in front.",
	"* |cff71d5ff|Hspell:302999|h[Arcane Vulnerability]|h|r: the arcane vulnerability marks the tank: swap after each one.",
	"* Phases: watch the court's minions while the queen punishes, and priority on the waves coming through the water.",
};

pack["152128"] = { "Orgozoa",
	"* |cff71d5ff|Hspell:298156|h[Desensitizing Sting]|h|r: desensitizing sting on the tank, rising damage: swap.",
	"* |cff71d5ff|Hspell:298306|h[Incubation Fluid]|h|r: the incubation fluid hatches inside the marked: the hatchlings come out — kill them away from the boss.",
	"* |cff71d5ff|Hspell:305057|h[Call of the Tender]|h|r: the call brings minions: priority over the boss.",
	"* |cff71d5ff|Hspell:295825|h[Arcing Current]|h|r: the arcing current jumps between players: spread out.",
};

pack["152236"] = { "Lady Ashvane",
	"* |cff71d5ff|Hspell:296725|h[Barnacle Bash]|h|r: the barnacle bash on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:297324|h[Bubble]|h|r: the bubbles trap: break the allies' ones immediately.",
	"* |cff71d5ff|Hspell:296650|h[Shield]|h|r: the shield protects her: break it or the fight stalls.",
	"* |cff71d5ff|Hspell:298055|h[Upsurge]|h|r: the upsurge sweeps the floor: dodge the sweep as it rises.",
};

pack["152364"] = { "Radiance of Azshara",
	"* |cff71d5ff|Hspell:296566|h[Tide Fist]|h|r: the tide fist on the tank: swap.",
	"* |cff71d5ff|Hspell:296430|h[Arcanado Burst]|h|r: arcanado bursts on the floor: spread and never share them.",
	"* |cff71d5ff|Hspell:296459|h[Squall Trap]|h|r: the squall traps catch whoever steps on them: never cross them.",
	"* |cff71d5ff|Hspell:296737|h[Arcane Bomb]|h|r: the arcane bomb bursts on the marked: spread so it drops alone.",
	"* The tide minions come in waves: priority over them between traps and bombs.",
};

bos = { "The Queen's Court",
	"* |cff71d5ff|Hspell:301244|h[Repeat Performance]|h|r: the performance repeats: the marked duels hit twice — spread out.",
	"* |cff71d5ff|Hspell:297585|h[Obey or Suffer]|h|r: obey or suffer on the marked: do what the duel asks or the punishment bursts on the raid.",
	"* |cff71d5ff|Hspell:244899|h[Silivaz Touch]|h|r: Silivaz's touch stacks on the tank: swap on both duelists.",
	"* |cff71d5ff|Hspell:301828|h[Silivaz Touch]|h|r: the second strand keeps stacking: watch the count and swap without delays.",
	"* Two duelists at once: kill them almost together and control the stacked touch damage on the tanks.",
};
pack["152852"] = bos; pack["152853"] = bos;


-- --------------------------------- --
-- Ny'alotha : Zona 2217 --
-- --------------------------------- --

pack["156523"] = { "Maut",
	"* |cff71d5ff|Hspell:307399|h[Shadow Wounds]|h|r: shadow wounds on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:307805|h[Devour Magic]|h|r: devours the marked player's magic: casters watch for the cast timing.",
	"* |cff71d5ff|Hspell:315025|h[Ancient Curse]|h|r: the ancient curse bursts on expiry: the marked breaks away from the raid.",
	"* |cff71d5ff|Hspell:308044|h[Stygian Annihilation]|h|r: the stygian annihilation is a BIG area bomb: spread while it channels.",
	"* The dark acolytes he summons feed his ritual: kill them as priority before the floor damage grows.",
};

pack["156575"] = { "Dark Inquisitor Xanesh",
	"* |cff71d5ff|Hspell:311551|h[Abyssal Strike]|h|r: the abyssal strike lands in an area: spread away from the impact.",
	"* |cff71d5ff|Hspell:314179|h[Fanaticism]|h|r: the fanaticized minions raise their damage: kill them NOW.",
	"* |cff71d5ff|Hspell:312336|h[Void Ritual]|h|r: the void ritual advances while its obelisks live: kill them fast.",
	"* |cff71d5ff|Hspell:306495|h[Summon Ritual Obelisk]|h|r: the ritual obelisks drop across the room: absolute priority on them.",
};

pack["156818"] = { "Wrathion, the Black Emperor",
	"* |cff71d5ff|Hspell:306015|h[Searing Armor]|h|r: searing armor on the tank: swap after each stack.",
	"* |cff71d5ff|Hspell:306111|h[Incineration]|h|r: the incineration marks fire areas: get out of the circle.",
	"* |cff71d5ff|Hspell:306289|h[Gale Blast]|h|r: the gale blast knocks far away: never stand at the room's edge.",
	"* |cff71d5ff|Hspell:306735|h[Burning Cataclysm]|h|r: the burning cataclysm drops big damage in areas: dodge the circle as it falls.",
};

pack["156866"] = { "Ra-den the Despoiled",
	"* |cff71d5ff|Hspell:306819|h[Nullifying Strike]|h|r: the nullifying strike empties the tank: swap and heal hard.",
	"* |cff71d5ff|Hspell:306634|h[Unstable Void]|h|r: the unstable void jumps to the marked: move away from the raid while carrying it.",
	"* |cff71d5ff|Hspell:313227|h[Decaying Wound]|h|r: the decaying wound stacks on the touched: heal it before it bursts.",
	"* |cff71d5ff|Hspell:306091|h[Call Essence]|h|r: the call brings minion essences: kill them before they reach the raid.",
};

bos = { "The Hivemind",
	"* |cff71d5ff|Hspell:307569|h[Dark Recon]|h|r: the dark recon drops in areas: dodge each sweep.",
	"* |cff71d5ff|Hspell:307213|h[Tek'riss Hive Control]|h|r: the hive control shuts the marked down: the allies snap them out of the trance.",
	"* |cff71d5ff|Hspell:307201|h[Kaz'riss Hive Control]|h|r: the second control keeps breaking wills: watch both and free fast.",
	"* |cff71d5ff|Hspell:313672|h[GTFO]|h|r: pools on the floor: out of them immediately.",
	"* Two minds in unison: alternate targets and kill the hive's drones if they clump up.",
};
pack["157253"] = bos; pack["157254"] = bos;

pack["157620"] = { "The Prophet Skitra",
	"* |cff71d5ff|Hspell:308059|h[Shadow Shock]|h|r: shadow shock on the tank: swap.",
	"* |cff71d5ff|Hspell:307937|h[Shred Psyche]|h|r: the psyche shreds the marked tank: swap with defensives.",
	"* |cff71d5ff|Hspell:309687|h[Psychic Outburst]|h|r: the psychic outburst marks areas: spread out.",
	"* |cff71d5ff|Hspell:313239|h[Images of Absolution]|h|r: the prophet's fakes appear: kill them fast — they scramble the DPS focus.",
};

pack["157231"] = { "Shad'har the Insatiable",
	"* |cff71d5ff|Hspell:312328|h[Hunger]|h|r: his hunger grows over time: DPS rules — kill him fast.",
	"* |cff71d5ff|Hspell:307471|h[Crush]|h|r: the crush on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:307472|h[Dissolve]|h|r: the dissolve marks the floor with acid: never cross the pool.",
	"* |cff71d5ff|Hspell:306930|h[Entropic Breath]|h|r: the entropic breath sweeps a cone: get out of the front.",
};

pack["157354"] = { "Vexiona",
	"* |cff71d5ff|Hspell:306981|h[Gift of the Void]|h|r: the gift of the void marks at random: move away from the raid until it passes.",
	"* |cff71d5ff|Hspell:307729|h[Fanatical Ascension]|h|r: the minions' fanatical ascension: ALWAYS interrupt.",
	"* |cff71d5ff|Hspell:307075|h[Power of the Chosen]|h|r: the power of the chosen boosts minion damage: kill them before they earn it.",
	"* |cff71d5ff|Hspell:307396|h[Spiteful Assault]|h|r: the spiteful assault on the tank: swap.",
	"* The dragon and her cult: the void minions drive the agenda — priority on their casts between phases.",
};

pack["157439"] = { "Carapace of N'Zoth",
	"* |cff71d5ff|Hspell:315954|h[Black Scar]|h|r: the black scar marks areas: never cross them.",
	"* |cff71d5ff|Hspell:313334|h[Gift of N'Zoth]|h|r: the gift of N'Zoth drops to the side: spread out.",
	"* |cff71d5ff|Hspell:307831|h[Will Broken]|h|r: the marked one's will breaks: have them run far away or they turn on you.",
	"* |cff71d5ff|Hspell:307832|h[Servant of N'Zoth]|h|r: the servants of N'Zoth strike the allies: control them until the effect passes.",
};

pack["157602"] = { "Drest'agath",
	"* |cff71d5ff|Hspell:310246|h[Void Grip]|h|r: the void grip pulls the raid to the center: move away while it channels.",
	"* |cff71d5ff|Hspell:310563|h[Mutterings of Betrayal]|h|r: the mutterings mark areas: spread out.",
	"* |cff71d5ff|Hspell:310277|h[Volatile Seed]|h|r: the volatile seed bursts on the marked: let it drop alone, away from the raid.",
	"* |cff71d5ff|Hspell:310361|h[Unleashed Insanity]|h|r: the unleashed sanity minions arrive: kill them NOW.",
	"* The body pieces keep casting: alternate targets by what channels and clean the ooze.",
};

pack["158041"] = { "N'Zoth the Corruptor",
	"* |cff71d5ff|Hspell:313184|h[Synaptic Shock]|h|r: the synaptic shock stacks on everyone: never let it grow.",
	"* |cff71d5ff|Hspell:316711|h[Mindwrack]|h|r: the mindwrack on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:310184|h[Creeping Anguish]|h|r: the creeping anguish marks the floor: get out of the areas.",
	"* |cff71d5ff|Hspell:310042|h[Tumultuous Burst]|h|r: the tumultuous burst marks at random: spread out.",
	"* The psyche phases: kill the mind minions before they feed the Corruptor and clean the floor between waves.",
};

pack["158328"] = { "Il'gynoth, Corruption Reborn",
	"* |cff71d5ff|Hspell:309961|h[Eye of N'Zoth]|h|r: the eye of N'Zoth: kill it as priority whenever it drops.",
	"* |cff71d5ff|Hspell:311367|h[Touch of the Corruptor]|h|r: the corruptor's touch on the tank: swap.",
	"* |cff71d5ff|Hspell:315094|h[Fixate]|h|r: the fixate marks: the marked runs away from the raid.",
	"* |cff71d5ff|Hspell:310319|h[Corruptor's Gaze]|h|r: the corruptor's gaze sweeps the floor: out of its areas.",
	"* The corruption minions feed the eye: alternate between killing them and hitting the eye in its windows.",
};


-- --------------------------------- --
-- Uldir : Zona 1861 --
-- --------------------------------- --

pack["132998"] = { "G'huun",
	"* |cff71d5ff|Hspell:267412|h[Massive Smash]|h|r: brutal tank slam with raid-wide damage — tank swap and heal the raid.",
	"* |cff71d5ff|Hspell:270447|h[Growing Corruption]|h|r: the Wave of Corruption orbs leave stains that GROW — keep the raid away.",
	"* |cff71d5ff|Hspell:272506|h[Explosive Corruption]|h|r: those stains end up detonating: run to the edge when the orb closes in.",
	"* |cff71d5ff|Hspell:267409|h[Dark Bargain]|h|r: kill the bargain minions as soon as they spawn.",
	"* The key mechanic: use Uldir's pylons to knock the orbs back; when the platform drops, kill Crawling Corruption and dodge the reorigination rays of the last phase.",
};

pack["133298"] = { "Fetid Devourer",
	"* |cff71d5ff|Hspell:262313|h[Malodorous Miasma]|h|r: frontal breath that leaves miasma pools: the tank drags them AWAY from the raid and never steps in them.",
	"* |cff71d5ff|Hspell:262314|h[Putrid Paroxysm]|h|r: the miasma pools burst when stepped on: keep the floor clean.",
	"* |cff71d5ff|Hspell:262277|h[Thrash]|h|r: sweeps the nearest players that are NOT tanking: spread out around him.",
	"* |cff71d5ff|Hspell:262378|h[Frenzy]|h|r: his damage climbs — tank keeps defensives and healing focuses on him.",
};

pack["134442"] = { "Vectis",
	"* |cff71d5ff|Hspell:265127|h[Lingering Infection]|h|r: infection that stacks damage on the target: healers watch it and drop the larva on time.",
	"* |cff71d5ff|Hspell:265178|h[Evolving Affliction]|h|r: the evolving affliction marks players in pairs: the marked move away from the raid.",
	"* |cff71d5ff|Hspell:265212|h[Gestate]|h|r: plants a larva inside the target: when it hatches, kill it far from the raid before it reaches the boss.",
	"* |cff71d5ff|Hspell:266926|h[Plague Bomb]|h|r: plague bombs land in areas: get out of the green stains.",
};

pack["134546"] = { "Mythrax the Unraveler",
	"* |cff71d5ff|Hspell:274693|h[Essence Shear]|h|r: brutal bleed on the tank for 20 s: the other one swaps in with defensives.",
	"* |cff71d5ff|Hspell:272407|h[Oblivion Sphere]|h|r: opens the oblivion threshold and leaves the area invulnerable: spread to the corners between waves.",
	"* |cff71d5ff|Hspell:279157|h[Void Echoes]|h|r: void echoes advancing from the walls: kill them BEFORE they reach the threshold.",
	"* |cff71d5ff|Hspell:273538|h[Obliteration Blast]|h|r: the giant beam spins in circles from his sphere: run around it.",
};

pack["134445"] = { "Zek'voz, Herald of N'Zoth",
	"* |cff71d5ff|Hspell:265264|h[Void Lash]|h|r: chained void lash on the tank (two swings): the other one swaps in with defensives.",
	"* |cff71d5ff|Hspell:264382|h[Eye Beam]|h|r: beam that spins in circles from him: move with the rotation, never stand in front.",
	"* |cff71d5ff|Hspell:265360|h[Roiling Deceit]|h|r: roiling deceit on the marked: leave the void goo away from the raid.",
	"* The Annihilation Spheres channel a lethal beam at the raid: kill them as soon as they drop and never cross their line.",
};

pack["135452"] = { "MOTHER",
	"* |cff71d5ff|Hspell:267787|h[Sanitizing Strike]|h|r: surgical strike on the tank and the void steals his healing: tank swaps with defensives.",
	"* |cff71d5ff|Hspell:267945|h[Wind Tunnel]|h|r: frontal wind tunnel that knocks far away: never stand in front of it.",
	"* |cff71d5ff|Hspell:274205|h[Depleted Energy]|h|r: after the purge MOTHER is drained: moment to squeeze the damage.",
	"* |cff71d5ff|Hspell:268095|h[Cleansing Purge]|h|r: the purge sweeps the room with waves of purifying rays from the door: dodge the lines — they hurt and strip buffs.",
};

pack["137119"] = { "Taloc",
	"* |cff71d5ff|Hspell:275205|h[Enlarged Heart]|h|r: the enlarged heart hits the tank with growing damage every 10 s: constant healing on the target and the other one swaps in.",
	"* |cff71d5ff|Hspell:271225|h[Plasma Discharge]|h|r: plasma bursts in ground areas: get out of the stains as they drop.",
	"* |cff71d5ff|Hspell:271965|h[Powering Down]|h|r: when he powers down, kill the defense bot and the volatile pod while he cannot hurt you.",
	"* |cff71d5ff|Hspell:275270|h[Fixate]|h|r: the volatile pod fixates one player and bursts on arrival: drag it away from the raid and kill it.",
};

pack["138967"] = { "Zul, Reborn",
	"* |cff71d5ff|Hspell:274358|h[Rupturing Blood]|h|r: the tank's blood bursts on ending and leaves a pool: tank swap and move the pool away from the raid.",
	"* |cff71d5ff|Hspell:273361|h[Poolof Darkness]|h|r: pools of darkness over the floor: never step on them.",
	"* |cff71d5ff|Hspell:273365|h[Dark Rev]|h|r: dark revelation lands if an orb arrives: kill the void orbs marching toward Zul before they touch him.",
	"* Phase 1 with no orbs: heal, spread and clean pools; in phase 2 the orbs advance from the walls in waves and feed the revelation if they arrive.",
};


-- --------------------------------- --
-- Atal'Dazar : Zona 1763 --
-- --------------------------------- --

pack["122967"] = { "Priestess Alun'za",
	"* |cff71d5ff|Hspell:255579|h[Claws]|h|r: claws on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:255577|h[Transfusion]|h|r: ALWAYS interruptible - she heals off the marked player's blood.",
	"* |cff71d5ff|Hspell:255582|h[Molten Gold]|h|r: the molten gold marks the floor: never cross it.",
	"* |cff71d5ff|Hspell:259205|h[Spirits of Gold]|h|r: the golden spirits go first: kill them before the boss.",
};

pack["122965"] = { "Vol'kaal",
	"* |cff71d5ff|Hspell:250190|h[Totems Left]|h|r: the totems channel while alive: smash every one that drops NOW.",
	"* |cff71d5ff|Hspell:250258|h[Leap]|h|r: he leaps and slams an area: move away from the impact.",
	"* |cff71d5ff|Hspell:259572|h[Noxious Stench]|h|r: ALWAYS interruptible.",
	"* |cff71d5ff|Hspell:250585|h[GTFO]|h|r: puddles on the floor: out of them immediately.",
};

pack["122963"] = { "Rezan",
	"* |cff71d5ff|Hspell:257407|h[Pursuit]|h|r: he chases one player: the chased runs apart from the group; never cross or stun them.",
	"* |cff71d5ff|Hspell:255434|h[Teeth]|h|r: the teeth bite the tank hard: swap and use defensives.",
	"* |cff71d5ff|Hspell:255371|h[Fear]|h|r: the fear bursts in an area: the marked moves away from the group.",
	"* |cff71d5ff|Hspell:260683|h[Bone Quake]|h|r: the bone quake brings adds: kill them.",
};

pack["122968"] = { "Yazma",
	"* |cff71d5ff|Hspell:259187|h[Soul Rend]|h|r: the soul rend marks at random: spread out.",
	"* |cff71d5ff|Hspell:250096|h[Wracking Pain]|h|r: the pain stacks on the marked: heal them as it builds.",
	"* |cff71d5ff|Hspell:249919|h[Skewer]|h|r: the skewer on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:250050|h[Echoes]|h|r: the echoes leave pools on the floor: out of them.",
};


-- --------------------------------- --
-- Freehold : Zona 1754 --
-- --------------------------------- --

pack["126832"] = { "Skycap'n Kragg",
	"* |cff71d5ff|Hspell:256005|h[Vile Bombardment]|h|r: the bombardment drops across areas: dodge each impact.",
	"* |cff71d5ff|Hspell:256106|h[Powder Shot]|h|r: the powder shot hits in a cone: never stand in front of it.",
	"* |cff71d5ff|Hspell:255952|h[Charge]|h|r: he charges a line: the target moves out of the way.",
	"* |cff71d5ff|Hspell:272046|h[Dive Bomb]|h|r: he dives onto his marked area: out of the circle.",
};

bos = { "Council o' Captains",
	"* |cff71d5ff|Hspell:265088|h[Good Brew]|h|r: the good brew leaves a safe pool: stand in it and keep enemies out.",
	"* |cff71d5ff|Hspell:265168|h[Caustic Brew]|h|r: the caustic brew burns: never cross it.",
	"* |cff71d5ff|Hspell:278467|h[Caustic Brew On Boss]|h|r: the brew lands on the boss himself: move away from his splashes.",
	"* |cff71d5ff|Hspell:257117|h[Lucky Sevens]|h|r: the dice rolls hit the marked in an area: spread out.",
};
pack["126845"] = bos; pack["126847"] = bos; pack["126848"] = bos;

pack["126969"] = { "Ring of Booty",
	"* |cff71d5ff|Hspell:256358|h[Shark Toss]|h|r: the shark sweeps in an area: dodge the swipe.",
	"* |cff71d5ff|Hspell:257829|h[Greasy]|h|r: the floor gets greasy and slippery: careful while kiting the shark.",
	"* |cff71d5ff|Hspell:256489|h[Rearm]|h|r: the cannon rearms: move away from its sweep when it fires.",
	"* |cff71d5ff|Hspell:256405|h[Sharknado]|h|r: the sharknado sweeps the ring: RUN away from it.",
};

pack["126983"] = { "Harlan Sweete",
	"* |cff71d5ff|Hspell:257314|h[Black Powder]|h|r: the powder bombs burst in areas: move away from each blast.",
	"* |cff71d5ff|Hspell:257305|h[Cannon Barrage]|h|r: the barrage sweeps the floor in lines: dodge them.",
	"* |cff71d5ff|Hspell:413131|h[Whirling Dagger]|h|r: the dagger whirl spins around him: never cross it.",
	"* |cff71d5ff|Hspell:257278|h[Swiftwind Saber]|h|r: the saber hits the tank: swap with defensives.",
};


-- --------------------------------- --
-- Kings' Rest : Zona 1762 --
-- --------------------------------- --

pack["135322"] = { "The Golden Serpent",
	"* |cff71d5ff|Hspell:265773|h[Spit Gold]|h|r: the golden spit lands in areas: move out of the splash.",
	"* |cff71d5ff|Hspell:265910|h[Tail Thrash]|h|r: the tail thrash hits the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:265923|h[Lucre Call]|h|r: the call brings golden adds: kill them as priority.",
	"* |cff71d5ff|Hspell:1311987|h[Serpentine]|h|r: the serpentine leaps across the floor: watch its path.",
};

bos = { "The Council of Tribes",
	"* |cff71d5ff|Hspell:266206|h[Whirling Axes]|h|r: the whirling axes sweep the floor: dodge them.",
	"* |cff71d5ff|Hspell:267494|h[Barrel Through]|h|r: the barrel is SHARED damage: at least two soak it together.",
	"* |cff71d5ff|Hspell:266237|h[Debilitating Backhand]|h|r: the backhand reaches its marked target: run far away.",
	"* |cff71d5ff|Hspell:267273|h[Poison Nova]|h|r: the poison nova: ALWAYS interruptible.",
};
pack["135475"] = bos; pack["135470"] = bos; pack["135472"] = bos;

pack["134993"] = { "Mchimba the Embalmer",
	"* |cff71d5ff|Hspell:267618|h[Drain Fluids]|h|r: the drain marks areas and drains life: heal the marked immediately.",
	"* |cff71d5ff|Hspell:267639|h[Burn Corruption]|h|r: the corruption burns in its area: move away from the flames.",
	"* |cff71d5ff|Hspell:267702|h[Entomb]|h|r: THE ENTOMBMENT - it seals a player inside a mummy: the group breaks the tomb immediately.",
	"* |cff71d5ff|Hspell:1312146|h[Awakening Slam]|h|r: the awakening slam: heavy AoE - heal the group after the hit.",
};

pack["136160"] = { "Dazar, The First King",
	"* |cff71d5ff|Hspell:1303115|h[Aerial Smash]|h|r: the aerial smash marks areas: dodge the circle as it falls.",
	"* |cff71d5ff|Hspell:269230|h[Hunting Leap]|h|r: he leaps onto the marked: the target moves away from the group.",
	"* |cff71d5ff|Hspell:1303488|h[Savage Maul]|h|r: the savage maul hits in an area: heal the group.",
	"* |cff71d5ff|Hspell:268586|h[Blade Combo]|h|r: the blade combo chains fast on the tank: swap WITHOUT delays.",
};


-- --------------------------------- --
-- Operation: Mechagon : Zona 2097 --
-- --------------------------------- --

bos = { "Tussle Tonks",
	"* |cff71d5ff|Hspell:1216443|h[Electrical Storm]|h|r: the electrical storm marks areas: out of them.",
	"* |cff71d5ff|Hspell:282801|h[Plating Cast]|h|r: the tonk plating rises: shred it with steady damage.",
	"* |cff71d5ff|Hspell:1215065|h[Platinum Pummel]|h|r: the pummels on the tank: swap.",
	"* |cff71d5ff|Hspell:1215102|h[Ground Pound]|h|r: the ground pound: heavy AoE - heal the group.",
};
pack["144244"] = bos; pack["145185"] = bos;

pack["144246"] = { "K.U.-J.0.",
	"* |cff71d5ff|Hspell:294929|h[Blazing Chomp]|h|r: watch out.",
	"* |cff71d5ff|Hspell:291930|h[Air Drop]|h|r: watch out.",
	"* |cff71d5ff|Hspell:291972|h[Explosive Leap]|h|r: watch out.",
	"* |cff71d5ff|Hspell:291946|h[Venting Flames]|h|r: watch out.",
};

pack["144248"] = { "Machinist's Garden",
	"* |cff71d5ff|Hspell:285454|h[Discom Bomb]|h|r: the bomb bursts in its radius: out of the circle.",
	"* |cff71d5ff|Hspell:294954|h[Self Trimming Hedge]|h|r: the hedge trims itself and rolls: never cross it.",
	"* |cff71d5ff|Hspell:294853|h[Plant]|h|r: the plants grow across the garden: kill them before they bloom.",
	"* |cff71d5ff|Hspell:285440|h[Flame Cannon]|h|r: the flame cannon: AoE - heal the group.",
};

bos = { "King Mechagon",
	"* |cff71d5ff|Hspell:291928|h[Mega Zap]|h|r: watch out.",
	"* |cff71d5ff|Hspell:291865|h[Recalibrate]|h|r: watch out.",
	"* |cff71d5ff|Hspell:291626|h[Cutting Beam]|h|r: watch out.",
	"* |cff71d5ff|Hspell:283143|h[Magneto Arm Soon]|h|r: watch out.",
};
pack["150396"] = bos; pack["144249"] = bos; pack["150397"] = bos;

pack["150159"] = { "King Gobbamak",
	"* |cff71d5ff|Hspell:297257|h[Electrical Charge]|h|r: the electrical charge marks: spread out.",
	"* |cff71d5ff|Hspell:297254|h[Charged Smash]|h|r: the smash is SHARED: at least two soak it.",
	"* |cff71d5ff|Hspell:297261|h[Rumble]|h|r: the rumble hits in an area: heal the group.",
};

pack["150190"] = { "HK-8 Aerial Oppression Unit",
	"* |cff71d5ff|Hspell:301351|h[Reinforcement Relay]|h|r: the relay brings reinforcements: kill them NOW.",
	"* |cff71d5ff|Hspell:302274|h[Fulminating Zap]|h|r: the fulminating zap hits those close: spread out.",
	"* |cff71d5ff|Hspell:295536|h[Cannon Blast]|h|r: the cannon blast marks an area: out of the circle.",
	"* |cff71d5ff|Hspell:302279|h[Wreck]|h|r: the wreck on the tank: swap with defensives.",
};

pack["150222"] = { "Gunker",
	"* |cff71d5ff|Hspell:298259|h[Gooped]|h|r: the goop marks the target: move apart from the group.",
	"* |cff71d5ff|Hspell:297985|h[Splatter]|h|r: the splatter marks the floor: never cross it.",
	"* |cff71d5ff|Hspell:297834|h[Toxic Wave]|h|r: the toxic wave sweeps: dodge it.",
	"* |cff71d5ff|Hspell:297913|h[Toxic Goop Dispel]|h|r: the goop is carried away BEFORE the dispel - purging it together leaves a pool.",
};

bos = { "Trixie & Naeno",
	"* |cff71d5ff|Hspell:298940|h[Bolt Buster]|h|r: the bolt buster leaps at the group: careful with the discharge.",
	"* |cff71d5ff|Hspell:302682|h[Mega Taze]|h|r: the mega taze on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:298897|h[Jump Start]|h|r: the jump start recharges her power: ALWAYS interrupt it.",
	"* |cff71d5ff|Hspell:298669|h[Taze]|h|r: the taze: ALWAYS interruptible.",
};
pack["153755"] = bos; pack["150712"] = bos;


-- --------------------------------- --
-- Shrine of the Storm : Zona 1864 --
-- --------------------------------- --

pack["134056"] = { "Aqu'sirr",
	"* |cff71d5ff|Hspell:264144|h[Undertow]|h|r: the undertow pulls the raid to the center: move away while it casts.",
	"* |cff71d5ff|Hspell:264560|h[Choking Brine]|h|r: the brine chokes in its area: never cross it.",
	"* |cff71d5ff|Hspell:264903|h[Erupting Waters]|h|r: the erupting waters: out of each bubble.",
	"* |cff71d5ff|Hspell:264101|h[Surging Rush]|h|r: the rush sweeps in a line: never cross it.",
};

bos = { "Tidesage Council",
	"* |cff71d5ff|Hspell:267901|h[Blessing of Ironsides]|h|r: the blessing armor-plates the sage: shred it with steady damage.",
	"* |cff71d5ff|Hspell:267830|h[Blessing of Tempest]|h|r: the tempest blessing raises its damage: purge it.",
	"* |cff71d5ff|Hspell:267891|h[Swiftness Ward]|h|r: the swiftness ward speeds its cast: kill it NOW.",
	"* |cff71d5ff|Hspell:267818|h[Slicing Blast]|h|r: the slicing blast: ALWAYS interruptible.",
};
pack["134063"] = bos; pack["134058"] = bos;

pack["134060"] = { "Lord Stormsong",
	"* |cff71d5ff|Hspell:268347|h[Void Bolt]|h|r: the void bolt: ALWAYS interruptible.",
	"* |cff71d5ff|Hspell:268896|h[Mind Rend]|h|r: the mind rend marks: spread away from the marked.",
	"* |cff71d5ff|Hspell:269097|h[Wake the Void]|h|r: the awakened void marks areas: never cross them.",
	"* |cff71d5ff|Hspell:269131|h[Ancient Mindbender]|h|r: the mindbender CONTROLS the marked: the allies snap them out of it.",
};

pack["134069"] = { "Vol'zith the Whisperer",
	"* |cff71d5ff|Hspell:267299|h[Call the Abyss]|h|r: the call of the abyss brings tentacles: kill them as priority.",
	"* |cff71d5ff|Hspell:267385|h[Tentacle Slam]|h|r: the tentacle slam marks areas: dodge.",
	"* |cff71d5ff|Hspell:269399|h[Yawning Gate]|h|r: the yawning gate pulls in and blasts out: RUN from its radius.",
	"* |cff71d5ff|Hspell:267360|h[Grasp]|h|r: the grasp grips the marked: heal them immediately.",
};


-- --------------------------------- --
-- Siege of Boralus : Zona 1822 --
-- --------------------------------- --

pack["130834"] = { "Sergeant Bainbridge",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: the hook brings its marked to the boss: heal them immediately.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: the meat hook stacks on the marked: continuous healing.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: the iron hook on the tank: swap.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: the iron gaze marks an area: spread out.",
};

pack["128650"] = { "Chopper Redhook",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: the hook brings its marked to the boss: heal them immediately.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: the meat hook stacks on the marked: continuous healing.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: the iron hook on the tank: swap.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: the iron gaze marks an area: spread out.",
};

pack["128651"] = { "Hadal Darkfathom",
	"* |cff71d5ff|Hspell:261563|h[Crashing Tide]|h|r: the crashing tide sweeps in areas: dodge each wave.",
	"* |cff71d5ff|Hspell:257882|h[Break Water]|h|r: the breakwater marks the floor: out of its radius.",
	"* |cff71d5ff|Hspell:276068|h[Tidal Surge]|h|r: the surge grows across the room: keep ahead of the rising edge.",
};

pack["120553"] = { "Viq'Goth",
	"* |cff71d5ff|Hspell:275014|h[Putrid Waters]|h|r: the putrid waters flood the floor: never cross them.",
	"* |cff71d5ff|Hspell:269366|h[Repair]|h|r: the gunner's repair: ALWAYS interruptible.",
	"* |cff71d5ff|Hspell:269456|h[Eradication]|h|r: the eradication sweeps the group: spread out.",
	"* |cff71d5ff|Hspell:270185|h[Call of the Deep]|h|r: the call of the deep brings adds: kill them.",
};

pack["129208"] = { "Dread Captain Lockwood",
	"* |cff71d5ff|Hspell:269029|h[Clear the Deck]|h|r: she clears the deck with cannons across areas: dodge them.",
	"* |cff71d5ff|Hspell:268260|h[Broadside]|h|r: the broadside sweeps one side: switch sides in time.",
	"* |cff71d5ff|Hspell:268752|h[Withdraw]|h|r: she withdraws to her cast: priority on the guards she leaves behind.",
	"* |cff71d5ff|Hspell:268230|h[Crimson Swipe]|h|r: the crimson swipe on the tank: swap.",
};


-- --------------------------------- --
-- Temple of Sethraliss : Zona 1877 --
-- --------------------------------- --

bos = { "Adderis and Aspix",
	"* |cff71d5ff|Hspell:1288049|h[Thunder and Lightning]|h|r: the thunder-light is SHARED: at least two soak it.",
	"* |cff71d5ff|Hspell:1311804|h[Overload]|h|r: the overload on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:1311805|h[Tempest Winds]|h|r: the winds push across the room: careful at the ledge.",
	"* |cff71d5ff|Hspell:1289059|h[Gale Force]|h|r: the gale sweeps areas: dodge it.",
};
pack["133379"] = bos; pack["133944"] = bos;

pack["133384"] = { "Merektha",
	"* |cff71d5ff|Hspell:264172|h[Burrow]|h|r: she burrows and surfaces charged: careful when she rises.",
	"* |cff71d5ff|Hspell:1290029|h[Knot of Snakes]|h|r: the knot of snakes attacks in a bunch: kill it before it binds.",
	"* |cff71d5ff|Hspell:1289109|h[Thunderspit]|h|r: the spit lands on the marked: move away from the group at once.",
	"* |cff71d5ff|Hspell:1289205|h[Hatch]|h|r: the eggs hatch: kill the brood as they spawn.",
};

pack["133389"] = { "Galvazzt",
	"* |cff71d5ff|Hspell:266923|h[Galvanize]|h|r: the galvanize raises its damage: control the charges until it dies.",
	"* |cff71d5ff|Hspell:1309525|h[Induction]|h|r: the induction hits in an area: heal the group.",
	"* |cff71d5ff|Hspell:1291618|h[Lightning Spire]|h|r: the spire SOAK: at least two absorb it.",
	"* |cff71d5ff|Hspell:266511|h[Capacitance]|h|r: the capacitance marks the floor: never cross it.",
};

pack["133392"] = { "Avatar of Sethraliss",
	"* |cff71d5ff|Hspell:1301963|h[Cleansed]|h|r: the cleansed ones stay marked: careful with their movement.",
	"* |cff71d5ff|Hspell:1301202|h[Defiling Taint]|h|r: the defiling taint marks the floor: out of the stains.",
	"* |cff71d5ff|Hspell:273677|h[Taint]|h|r: the taint on the marked: move away from the group until it expires.",
	"* |cff71d5ff|Hspell:268024|h[Pulse]|h|r: the pulse hits in an area: heal the group.",
};


-- --------------------------------- --
-- The MOTHERLODE!! : Zona 1594 --
-- --------------------------------- --

pack["129214"] = { "Coin-Operated Crowd Pummeler",
	"* |cff71d5ff|Hspell:271784|h[Throw Coins]|h|r: the coin slaps land in areas: dodge.",
	"* |cff71d5ff|Hspell:269493|h[Footbomb Launcher]|h|r: the footbomb launcher marks the floor: out of the radius.",
	"* |cff71d5ff|Hspell:271903|h[Coin Magnet]|h|r: the magnet pulls coins that burst: never cross its firing line.",
	"* |cff71d5ff|Hspell:262347|h[Static Pulse]|h|r: the static pulse marks in an area: spread out.",
};

pack["129227"] = { "Azerokk",
	"* |cff71d5ff|Hspell:257582|h[Raging Gaze]|h|r: the raging gaze marks at random: the marked moves apart.",
	"* |cff71d5ff|Hspell:258622|h[Pulse]|h|r: the pulse hits the group in an area: heal.",
	"* |cff71d5ff|Hspell:257593|h[Call Earth Rager]|h|r: the earth ragers enter: kill them NOW (they stack damage onto the boss if alive).",
	"* |cff71d5ff|Hspell:271698|h[Infusion]|h|r: the infusion feeds the ragers: ALWAYS interrupt the cast.",
};

pack["129231"] = { "Rixxa Fluxflame",
	"* |cff71d5ff|Hspell:259022|h[Azerite Catalyst]|h|r: the catalyst powers her up: kill it before it grows.",
	"* |cff71d5ff|Hspell:259940|h[Propellant Blast]|h|r: the propellant blast marks the target: run away on the cast.",
	"* |cff71d5ff|Hspell:259853|h[Chem Burn]|h|r: the chemical burn stacks on the marked: continuous healing.",
};

bos = { "Mogul Razdunk",
	"* |cff71d5ff|Hspell:260189|h[Drill]|h|r: the drill charges in a carousel: run with the spin, never cross it.",
	"* |cff71d5ff|Hspell:262515|h[Heartseeker]|h|r: the heartseeker marks its target: run from the group on the cast.",
	"* |cff71d5ff|Hspell:260811|h[Homing Missile]|h|r: the missiles follow the marked: run from the group and soak the hits.",
	"* |cff71d5ff|Hspell:271456|h[Drill Smash]|h|r: the drill smash: AoE - heal the group.",
};
pack["129232"] = bos; pack["132713"] = bos;


-- --------------------------------- --
-- The Underrot : Zona 1841 --
-- --------------------------------- --

pack["131318"] = { "Elder Leaxa",
	"* |cff71d5ff|Hspell:260879|h[Blood Bolt]|h|r: the blood bolt: ALWAYS interruptible.",
	"* |cff71d5ff|Hspell:260894|h[Creeping Rot]|h|r: the creeping rot crawls across the floor: out of the stains.",
	"* |cff71d5ff|Hspell:264757|h[Sanguine Feast]|h|r: the sanguine feast marks the floor: out of its radius when it lands.",
};

pack["131383"] = { "Sporecaller Zancha",
	"* |cff71d5ff|Hspell:272457|h[Shockwave]|h|r: the shockwave hits in front: turn the boss away from the group.",
	"* |cff71d5ff|Hspell:259718|h[Upheaval]|h|r: the upheaval marks areas on the floor: out of them.",
	"* |cff71d5ff|Hspell:273271|h[Volatile Pods]|h|r: the volatile pods burst: kill them IMMEDIATELY.",
	"* |cff71d5ff|Hspell:259732|h[Festering Harvest]|h|r: the festering harvest brings spores: careful with the ones landing near the group.",
};

pack["131817"] = { "Cragmaw the Infested",
	"* |cff71d5ff|Hspell:260793|h[Indigestion]|h|r: the indigestion bursts in its radius: melee exits the circle on the cast.",
	"* |cff71d5ff|Hspell:260292|h[Charge]|h|r: he charges a line at the marked: never cross its path.",
	"* |cff71d5ff|Hspell:260333|h[Tantrum]|h|r: the tantrum hits in an area: heal the group.",
};

pack["133007"] = { "Unbound Abomination",
	"* |cff71d5ff|Hspell:269692|h[Visage]|h|r: the visage marks the target: run from the group on the cast.",
	"* |cff71d5ff|Hspell:269843|h[Vile Expulsion]|h|r: the vile expulsion leaves areas: dodge them as they land.",
	"* |cff71d5ff|Hspell:269310|h[Cleansing Light]|h|r: the light cleanses the corridor in stages: move stage to stage in time.",
	"* |cff71d5ff|Hspell:269838|h[GTFO]|h|r: puddles on the floor: out of them immediately.",
};


-- --------------------------------- --
-- Tol Dagor : Zona 1771 --
-- --------------------------------- --

pack["127479"] = { "The Sand Queen",
	"* |cff71d5ff|Hspell:257617|h[Upheaval]|h|r: the upheaval marks areas on the floor: out of them.",
	"* |cff71d5ff|Hspell:257092|h[Sand Trap]|h|r: the sand traps swallow: never stand in the forming circle.",
	"* |cff71d5ff|Hspell:257495|h[Sandstorm]|h|r: the sandstorm hits in an area: heal the group.",
};

pack["127484"] = { "Jes Howlis",
	"* |cff71d5ff|Hspell:257793|h[Smoke Powder]|h|r: the smoke powder darkens: careful with his strikes through the haze.",
	"* |cff71d5ff|Hspell:257827|h[Motivating Cry]|h|r: the cry emboldens the prisoners: kill them NOW.",
	"* |cff71d5ff|Hspell:260067|h[Vicious Mauling]|h|r: the vicious mauling on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:257777|h[Crip Shiv]|h|r: the shiv cripples the marked: heal them immediately.",
};

pack["127490"] = { "Knight Captain Valyri",
	"* |cff71d5ff|Hspell:256955|h[Cinderflame]|h|r: the cinderflame leaves pools on the floor: never cross them.",
	"* |cff71d5ff|Hspell:257028|h[Fuselighter]|h|r: the fuselighter marks the target: run far from the group on the cast.",
	"* |cff71d5ff|Hspell:256970|h[Ignition]|h|r: the ignition bursts at the end of the cast: dodge the marked radius.",
};

pack["127503"] = { "Overseer Korgus",
	"* |cff71d5ff|Hspell:256199|h[AZBlast]|h|r: the azerite blast marks an area: out of the radius.",
	"* |cff71d5ff|Hspell:256198|h[AZIncendiary]|h|r: the incendiary rounds follow the marked: run from the group when the dot is on you.",
	"* |cff71d5ff|Hspell:256038|h[Deadeye]|h|r: the deadeye aims and fires: the marked sidesteps the shot.",
	"* |cff71d5ff|Hspell:256105|h[Explosive Burst]|h|r: the burst blows on expiry: heal the marked before it pops.",
};


-- --------------------------------- --
-- Waycrest Manor : Zona 1862 --
-- --------------------------------- --

bos = { "Heartsbane Triad",
	"* |cff71d5ff|Hspell:260741|h[Jagged Nettles]|h|r: the nettles stack on the marked: do not share the debuff.",
	"* |cff71d5ff|Hspell:260703|h[Unstable Mark]|h|r: the unstable mark bursts on the marked: move away from the group on the cast.",
	"* |cff71d5ff|Hspell:268086|h[Aura of Dread]|h|r: the dread aura presses on the group: heal continuously.",
	"* |cff71d5ff|Hspell:260907|h[Soul Manipulation]|h|r: the soul manipulation CONTROLS the marked: the allies snap them out of it.",
};
pack["135358"] = bos; pack["135359"] = bos; pack["135360"] = bos; pack["131823"] = bos; pack["131824"] = bos; pack["131825"] = bos;

pack["260551"] = { "Soulbound Goliath",
	"* |cff71d5ff|Hspell:260512|h[Soul Harvest]|h|r: the soul harvest drains the group: heal strongly during the cast.",
	"* |cff71d5ff|Hspell:260541|h[Burning Bush]|h|r: the burning bushes mark the floor: never cross them.",
	"* |cff71d5ff|Hspell:260508|h[Crush]|h|r: the crush on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:267907|h[Thorns]|h|r: the thorns punish melee: melee stays out while they stack.",
};

pack["131863"] = { "Raal the Gluttonous",
	"* |cff71d5ff|Hspell:264923|h[Tenderize]|h|r: the tenderize chains on the tank: swap fast.",
	"* |cff71d5ff|Hspell:264734|h[Consume All]|h|r: the devour swallows the marked: run from the mouth's radius.",
	"* |cff71d5ff|Hspell:264931|h[Servant]|h|r: the servants enter: kill them NOW.",
	"* |cff71d5ff|Hspell:264694|h[Rotten Expulsion]|h|r: the rotten expulsion marks areas: dodge them.",
};

bos = { "Lord and Lady Waycrest",
	"* |cff71d5ff|Hspell:261440|h[Virulent Pathogen]|h|r: the pathogen jumps by proximity: keep the marked apart.",
	"* |cff71d5ff|Hspell:261446|h[Vitality Transfer]|h|r: the vitality transfer between the two: ALWAYS interruptible.",
	"* |cff71d5ff|Hspell:268306|h[Discordant Cadenza]|h|r: the cadenza sweeps out from the piano: move away from its sound radius.",
};
pack["131527"] = bos; pack["131545"] = bos;

pack["131864"] = { "Gorak Tul",
	"* |cff71d5ff|Hspell:268202|h[Deathlens]|h|r: the deathlens marks the target: run from the group on the cast.",
	"* |cff71d5ff|Hspell:266198|h[Rising Flames]|h|r: the rising flames burn the floor: out of the areas.",
	"* |cff71d5ff|Hspell:266266|h[Summon Slaver]|h|r: the slavers enter: kill them as priority.",
	"* |cff71d5ff|Hspell:266181|h[Dread Essence]|h|r: the dread essence hits in an area: heal the group.",
};


-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["136385"] = { "Azurethos",
	"* |cff71d5ff|Hspell:274829|h[Gale Force]|h|r: the gale pushes toward the edge: careful with the cliff drop.",
	"* |cff71d5ff|Hspell:274839|h[Azurethos Fury]|h|r: the fury leaves areas on the floor: out of them.",
	"* |cff71d5ff|Hspell:274832|h[Wing Buffet]|h|r: the wing buffet pushes far: hug the center on the cast.",
};

pack["140252"] = { "Hailstone Construct",
	"* |cff71d5ff|Hspell:274896|h[Permafrost Spike]|h|r: the permafrost spikes erupt in areas: never cross them.",
	"* |cff71d5ff|Hspell:274891|h[Glacial Breath]|h|r: the glacial breath sweeps in a cone: stay behind it.",
	"* |cff71d5ff|Hspell:274895|h[Freezing Tempest]|h|r: the freezing tempest circles the group: keep the safe radius.",
};

pack["132253"] = { "Ji'arak",
	"* |cff71d5ff|Hspell:260908|h[Storm Wing]|h|r: the storm wing hits in an area: heal the group.",
	"* |cff71d5ff|Hspell:261088|h[Hurricane Crash]|h|r: he dives onto a point: RUN from the marked circle.",
	"* |cff71d5ff|Hspell:261467|h[Matriarchs Call]|h|r: the matriarch brings brood: kill them as priority.",
};

pack["138794"] = { "Dunebreaker Kraulok",
	"* |cff71d5ff|Hspell:275200|h[Primal Rage]|h|r: the primal rage raises his damage over time: kill him before it stacks.",
	"* |cff71d5ff|Hspell:276046|h[Shake Loose]|h|r: he shakes loose and flings the close: careful with the knockdown.",
	"* |cff71d5ff|Hspell:275175|h[Sonic Bellow]|h|r: the sonic bellow hits in an area: heal the group.",
	"* |cff71d5ff|Hspell:275194|h[Earth Spike]|h|r: the earth spikes erupt on the floor: out of the circles.",
};

pack["132701"] = { "T'zane",
	"* |cff71d5ff|Hspell:262004|h[Crushing Slam]|h|r: the crushing slam on the tank: swap.",
	"* |cff71d5ff|Hspell:261605|h[Consuming Spirits]|h|r: the consuming spirits devour: kill them NOW.",
	"* |cff71d5ff|Hspell:261600|h[Coalesced Essence]|h|r: the coalesced essence marks areas: out of them.",
	"* |cff71d5ff|Hspell:261552|h[Terror Wall]|h|r: the terror wall advances: cross it with defensives or run.",
};

pack["140163"] = { "Warbringer Yenajz",
	"* |cff71d5ff|Hspell:274842|h[Void Nova]|h|r: the void nova marks at random: spread out.",
	"* |cff71d5ff|Hspell:274932|h[Endless Abyss]|h|r: the endless abyss advances devouring: RUN from its radius.",
};

pack["148295"] = { "Ivus the Decayed",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: the petrify marks the group: spread away from the marked.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: the shockwave hits in a line: dodge it.",
	"* A Darkshore warfront boss: careful with the opposing faction's reinforcements during the fight.",
};

pack["144946"] = { "Ivus the Forest Lord",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: the petrify marks the group: spread away from the marked.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: the shockwave hits in a line: dodge it.",
	"* A Darkshore warfront boss: careful with the opposing faction's reinforcements during the fight.",
};

pack["152697"] = { "Ulmath, the Soulbinder",
	"* |cff71d5ff|Hspell:301748|h[Endless Doom]|h|r: the endless doom stacks continuous damage: heal strongly.",
	"* |cff71d5ff|Hspell:301773|h[Mental Collapse]|h|r: the mental collapse marks the target: RUN from the radius before the burst.",
	"* |cff71d5ff|Hspell:301840|h[Void Dance]|h|r: the void dance marks the floor: out of the areas.",
};

pack["152671"] = { "Wekemara",
	"* |cff71d5ff|Hspell:303451|h[Electric Discharge]|h|r: the discharge jumps between the close: spread out.",
	"* |cff71d5ff|Hspell:303319|h[Bioelectric Blast]|h|r: the bioelectric blast marks the floor: out of the circle.",
	"* |cff71d5ff|Hspell:303488|h[Shock Burst]|h|r: the shock burst on the marked: move away from the group on the cast.",
};

pack["154638"] = { "Grand Empress Shek'zara",
	"* |cff71d5ff|Hspell:314304|h[Song of the Empress]|h|r: the empress song marks in an area: spread out.",
	"* |cff71d5ff|Hspell:314333|h[Force and Verve]|h|r: the force and verve mark areas: dodge them.",
	"* |cff71d5ff|Hspell:314307|h[Summon Swarmguard]|h|r: the swarmguard enters: kill it as priority.",
};

pack["160970"] = { "Vuk'laz the Earthbreaker",
	"* |cff71d5ff|Hspell:314618|h[Crushing Claws]|h|r: the claws on the tank: swap with defensives.",
	"* |cff71d5ff|Hspell:314698|h[Razor Spines]|h|r: the razor spines erupt all around: melee careful with the radius.",
	"* |cff71d5ff|Hspell:314527|h[Tremor Wave]|h|r: the tremor wave advances: jump it as it arrives.",
	"* |cff71d5ff|Hspell:314659|h[Writhing Sands]|h|r: the writhing sands bring beasts: kill them NOW.",
};

pack["138122"] = { "Doom's Howl",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: the shattering pulse marks in areas: spread out.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: siege mode changes its kit: careful with the areas it opens.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: the mortar falls on the marked point: out of the circle.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: the flame exhausts sweep in stages: move stage to stage in time.",
};

pack["137374"] = { "Lion's Roar",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: the shattering pulse marks in areas: spread out.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: siege mode changes its kit: careful with the areas it opens.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: the mortar falls on the marked point: out of the circle.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: the flame exhausts sweep in stages: move stage to stage in time.",
};

P.en = en;
