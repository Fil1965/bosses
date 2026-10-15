--[[
	Bosses_WotLK_en.lua
		Datos in English of the WoTLK
		pack: the Northrend dungeons and its era raids,
		Onyxia and the sancta. Sources: DBM-Raids-WoTLK and DBM-Party-WotLK
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Onyxia's Lair : Zona 249 --
-- --------------------------------- --

pack["10184"] = { "Onyxia",
	"* |cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r: Large knock in front of her - keep the raid behind the tank.",
	"* |cff71d5ff|Hspell:18392|h[Fireball]|h|r: Repeating fireball on a random player - healers stay ready on the mark.",
	"* |cff71d5ff|Hspell:18584|h[Deep Breath]|h|r: At 66% she lifts off and burns a lane across the lair - leave the marked lane at once.",
	"* |cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r: At 40% she lands - AoE fear, so tremor totems and fear wards go up early.",
	"* |cff71d5ff|Hspell:68959|h[Whelps]|h|r: At 40% whelps hatch from the eggs all around the lair - AoE them down away from the tank.",
};
-- --------------------------------- --
-- Naxxramas : Zona 533 --
-- --------------------------------- --

pack["15956"] = { "Anub'Rekhan",
	"* |cff71d5ff|Hspell:28785|h[Locust Swarm]|h|r: He burrows and sends a locust swarm that silences and drains - stay ahead of its expanding circle.",
	"* |cff71d5ff|Hspell:28783|h[Impale]|h|r: Spike lines burst through the raid - spread out from everyone.",
};
pack["15953"] = { "Grand Widow Faerlina",
	"* |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r: Killing a worshiper near her casts the embrace - it silences Faerlina, her and the raid, and delays the frenzy.",
	"* |cff71d5ff|Hspell:28798|h[Frenzy]|h|r: If the embrace expires she frenzies - tank defensives and heavy healing.",
};
pack["15952"] = { "Maexxna",
	"* |cff71d5ff|Hspell:28622|h[Web Wrap]|h|r: A random player is cocooned against the wall - free them fast.",
	"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: The room-wide spray stuns her melee range - melee time attacks just behind it.",
	"* |cff71d5ff|Hspell:17332|h[Spiderlings]|h|r: Spiderlings rise in waves - AoE them down before they pile on.",
};
pack["15954"] = { "Noth the Plaguebringer",
	"* |cff71d5ff|Hspell:29213|h[Curse of the Plaguebringer]|h|r: Curses spread through the raid - decurse fast, chained curses burst.",
	"* |cff71d5ff|Hspell:29208|h[Blink]|h|r: Blinks to a random player - taunt him back to the tank.",
	"* |cff71d5ff|Hspell:29212|h[Skeletons]|h|r: He teleports above with a wave of skeletons - clear the room adds before he returns.",
};
pack["15936"] = { "Heigan the Unclean",
	"* |cff71d5ff|Hspell:29350|h[Eruption]|h|r: He leaves the room and the floor quarters erupt in rotation - ride the safe corners around the platform.",
};
pack["16011"] = { "Loatheb",
	"* |cff71d5ff|Hspell:29234|h[Spores]|h|r: Spores sprout in the room - kill one near the group, its cloud grants a big crit buff.",
	"* |cff71d5ff|Hspell:29204|h[Doom]|h|r: Doom lands on a random player and detonates - decurse it before it pops.",
	"* |cff71d5ff|Hspell:55593|h[Necrotic Aura]|h|r: Healing is blocked for 10 s on each pulse - stage big heals and hots into the gaps.",
};
pack["16061"] = { "Instructor Razuvious",
	"* |cff71d5ff|Hspell:29107|h[Unbalancing Strike]|h|r: Massive hit on his current tank - mind-control the understudies with the bone orbs and rotate their taunts.",
};
pack["16060"] = { "Gothik the Harvester",
	"* |cff71d5ff|Hspell:28025|h[Teleport: Living Side]|h|r: The raid splits: the living side fights his escorts while the dead side handles the shades - hold the waves thin.",
	"* |cff71d5ff|Hspell:28026|h[Teleport: Dead Side]|h|r: He hops rooms while the shades pile up - the gate opens at four minutes, merge then and burn him.",
};
pack["16063"] = { "Sir Zeliek",
	"* His Mark of Zeliek (|cff71d5ff|Hspell:28835|h[Mark of Zeliek]|h|r) lands every ~15 s up to 45 yd from his corner and hits harder on every refresh: 650, 1950, 4550, 9750, 16250 - whoever tanks it rotates out before the stacks grow too high.",
	"* His Holy Wrath (|cff71d5ff|Hspell:28883|h[Holy Wrath]|h|r) bounces between bunched players and grows with every jump: melee steps in right after a cast, stay at MAXIMUM range and never bridge the gap between melee and ranged, or the chain sweeps the raid.",
	"* He parks in the back-right corner and never moves: with nobody at his range Condemnation rains down on the whole raid, so a healer and a ranged soak it from the start, well apart so each one only takes HIS rider's mark.",
	"* He is the last rider down, right after Lady Blaumeux.",
};
pack["16064"] = { "Thane Korth'azz",
	"* His Mark of Korth'azz (|cff71d5ff|Hspell:28832|h[Mark of Korth'azz]|h|r) lands every ~15 s up to 45 yd from his corner and hits harder on every refresh: 650, 1950, 4550, 9750, 16250 - the front eats it whole: burn him down fast.",
	"* His Meteor (|cff71d5ff|Hspell:57467|h[Meteor]|h|r) splits its brutal blast between everyone stacked on the marked player: stack the FULL melee on them and the hit barely registers, instead of wiping one player alone.",
	"* He charges the front-left corner, ignores threat until he arrives and fights like any melee boss - FIRST rider down, burst cooldowns while all four live.",
};
pack["16065"] = { "Lady Blaumeux",
	"* Her Mark of Blaumeux (|cff71d5ff|Hspell:28833|h[Mark of Blaumeux]|h|r) lands every ~15 s up to 45 yd from her corner and hits harder on every refresh: 650, 1950, 4550, 9750, 16250 - the back soaker rotates as soon as the stacks grow.",
	"* Void Zones (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) open underfoot around her: step out of the circle NOW, and her soaker watches the floor the whole fight.",
	"* She parks in the back-left corner and never moves: a healer and a ranged hold her at distance, well apart so each one only takes her rider's mark, or she empties the raid with Condemnation.",
	"* Third to fall, after the two front riders.",
};
pack["30549"] = { "Baron Rivendare",
	"* His Mark of Rivendare (|cff71d5ff|Hspell:28834|h[Mark of Rivendare]|h|r) lands every ~15 s up to 45 yd from his corner and hits harder on every refresh: 650, 1950, 4550, 9750, 16250 - the front eats it whole: follow the kill order.",
	"* His Unholy Shadow (|cff71d5ff|Hspell:57369|h[Unholy Shadow]|h|r) bleeds HIS tank every ~15 s: extra healing on that tank for the whole fight.",
	"* He charges the front-right corner just like Thane - SECOND rider down, right behind Thane.",
};

pack["16028"] = { "Patchwerk",
	"* |cff71d5ff|Hspell:28131|h[Frenzy]|h|r: At 10% he frenzies - tank defensives and emergency heals.",
	"* |cff71d5ff|Hspell:28311|h[Slime Bolt]|h|r: Slime bolts fly at random casters while the next threats eat his Hateful Strikes - keep a caster rotation stacked.",
};
pack["15931"] = { "Grobbulus",
	"* |cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r: The injected player leaves a damaging slime cloud where they stand - take it to the wall.",
	"* |cff71d5ff|Hspell:28240|h[Poison Cloud]|h|r: Clouds of poison grow with every injection - kite them clear of the pack.",
};
pack["15932"] = { "Gluth",
	"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: Everything drops to 5% of health - the zombie adds then shuffle toward him to feed, keep them dead or far.",
	"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r: He frenzies periodically - tank defensives up.",
};
pack["15928"] = { "Thaddius",
	"* |cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r: Half the raid gains positive and half negative charge - separate the polarity sides so charged players never touch an opposite, any cross-charge detonates.",
	"* |cff71d5ff|Hspell:28338|h[Chain Lightning]|h|r: Chain lightning hits the player furthest from him - one ranged bates far from the rest of the group.",
};
pack["15989"] = { "Sapphiron",
	"* |cff71d5ff|Hspell:28522|h[Ice Block]|h|r: A random player freezes into an ice block - it becomes cover, plan the position.",
	"* |cff71d5ff|Hspell:28524|h[Deep Breath]|h|r: The deep breath sweeps the room - hug the frozen cover.",
	"* |cff71d5ff|Hspell:28542|h[Life Drain]|h|r: Life drain siphons a random player - keep heals up.",
	"* |cff71d5ff|Hspell:28547|h[Blizzard]|h|r: Blizzard drags across the floor - step out of it.",
};
pack["15990"] = { "Kel'Thuzad",
	"* |cff71d5ff|Hspell:27808|h[Frost Blast]|h|r: Frost blast freezes and chains damage through the group - spread until it lands, then burst the frozen stack down.",
	"* |cff71d5ff|Hspell:27819|h[Detonate Mana]|h|r: A player's mana detonates - keep yards apart so the blast stays contained.",
	"* |cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r: At 25% a void zone opens under a player - step out fast.",
	"* |cff71d5ff|Hspell:28410|h[Mind Control]|h|r: Chains enslave random players - keep them crowd-controlled until the chains break.",
};
-- --------------------------------- --
-- Utgarde Keep : Zona 574 --
-- --------------------------------- --

pack["23953"] = { "Prince Keleseth",
	"* |cff71d5ff|Hspell:48400|h[Frost Tomb]|h|r: He freezes a player into a tomb of ice - break them free fast, and AoE the skeleton guards pouring in waves.",
};
bos = { "Skarvald and Dalronn",
	"* |cff71d5ff|Hspell:43650|h[Debilitate]|h|r: The shadow debuff drains its holder - keep the cleanse ready.",
	"* |cff71d5ff|Hspell:52611|h[Shades]|h|r: When they fall their shades rise - drop the shades before they regroup.",
};
pack["24200"] = bos; pack["24201"] = bos;

pack["23954"] = { "Ingvar the Plunderer",
	"* |cff71d5ff|Hspell:42730|h[Woe Strike]|h|r: Woe drains his tank - swap it and keep cleans ready.",
	"* |cff71d5ff|Hspell:42729|h[Staggering Shout]|h|r: The shout staggers the room - brace and interrupt it.",
	"* |cff71d5ff|Hspell:42723|h[Smash]|h|r: In the undead form the smash shakes the whole room - melee step out.",
};
-- --------------------------------- --
-- Utgarde Pinnacle : Zona 575 --
-- --------------------------------- --

pack["26668"] = { "Svala Sorrowgrave",
	"* |cff71d5ff|Hspell:48267|h[Sacrifice]|h|r: The marked rises to the altar - burst the ritual down before the sacrifice lands.",
};
pack["26687"] = { "Gortok Palehoof",
	"* |cff71d5ff|Hspell:48261|h[Impale]|h|r: The rhino's impale skewers its tank - healers braced.",
	"* |cff71d5ff|Hspell:48256|h[Withering Roar]|h|r: The roar weakens the pack - keep heals up.",
};
pack["26693"] = { "Skadi the Ruthless",
	"* |cff71d5ff|Hspell:59322|h[Whirlwind]|h|r: His whirlwind spins wide - melee step out.",
	"* |cff71d5ff|Hspell:59331|h[Poison]|h|r: Poison trails the gauntlet lane - run between the clouds.",
};
pack["26861"] = { "King Ymiron",
	"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: The bane channel punishes casters - stop casting while it runs.",
	"* |cff71d5ff|Hspell:48291|h[Fetid Rot]|h|r: Fetid rot burns its holder - cleanse it.",
};
-- --------------------------------- --
-- The Nexus : Zona 576 --
-- --------------------------------- --

pack["26731"] = { "Grand Magus Telestra",
	"* |cff71d5ff|Hspell:47731|h[Freeze]|h|r: She freezes a player solid - break it and mind her split: three clones fan out, the frost one blizzards the room.",
};
pack["26763"] = { "Anomalus",
	"* |cff71d5ff|Hspell:47743|h[Chaos Rift]|h|r: The rift channels power into him - burst the rift down fast.",
};
pack["26794"] = { "Ormorok the Tree-Shaper",
	"* |cff71d5ff|Hspell:47981|h[Spell Reflection]|h|r: He reflects spells - casters stop casting while it stands.",
	"* |cff71d5ff|Hspell:47958|h[Spikes]|h|r: Spike lines sweep the room - dodge the marks.",
	"* |cff71d5ff|Hspell:48017|h[Frenzy]|h|r: At low health he frenzies - burst him down.",
	"* |cff71d5ff|Hspell:61564|h[Treants]|h|r: Treants rise around him - AoE them out.",
};
pack["26723"] = { "Keristrasza",
	"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: The chains ensnare movement - spread the raid and keep heals up.",
	"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: Frost nova bursts around her - melee step out.",
	"* |cff71d5ff|Hspell:8599|h[Frenzy]|h|r: At the end she frenzies - burn through it.",
};
-- --------------------------------- --
-- The Oculus : Zona 578 --
-- --------------------------------- --

pack["27654"] = { "Drakos the Interrogator",
	"* |cff71d5ff|Hspell:50774|h[Thundering Stomp]|h|r: The stomp knocks the room around - brace it.",
};
pack["27447"] = { "Varos Cloudstrider",
	"* |cff71d5ff|Hspell:51002|h[Azure Ring Captain]|h|r: Ring captains call the pack in - kill the captains first.",
	"* |cff71d5ff|Hspell:51021|h[Arcane Beam]|h|r: The beam burns along its line - move off it.",
	"* |cff71d5ff|Hspell:51054|h[Amplify Magic]|h|r: Amplify magic marks a player - cleanse it.",
};
pack["27655"] = { "Mage-Lord Urom",
	"* |cff71d5ff|Hspell:51121|h[Time Bomb]|h|r: The time bomb detonates on its holder - run clear before it pops.",
	"* |cff71d5ff|Hspell:51110|h[Empowered Arcane Explosion]|h|r: The big arcane blast - break its cast or brace hard.",
	"* |cff71d5ff|Hspell:51103|h[Frostbomb]|h|r: Frostbombs chill the floor - step off them.",
};
pack["27656"] = { "Ley-Guardian Eregos",
	"* |cff71d5ff|Hspell:51162|h[Planar Shift]|h|r: He shifts planes and the drakes must stay close - keep the pack together through the shift.",
	"* |cff71d5ff|Hspell:51170|h[Enraged Assault]|h|r: He enrages - burst him down before the shift returns him.",
};
-- --------------------------------- --
-- The Culling of Stratholme : Zona 595 --
-- --------------------------------- --

pack["26529"] = { "Meathook",
	"* |cff71d5ff|Hspell:52696|h[Constricting Chains]|h|r: Chains constrict a player - keep the cleanse ready.",
};
pack["26530"] = { "Salramm the Fleshcrafter",
	"* |cff71d5ff|Hspell:58845|h[Curse of Twisted Flesh]|h|r: The curse twists its holder - cleanse it.",
	"* |cff71d5ff|Hspell:52451|h[Ghouls]|h|r: He raises ghouls - AoE them down.",
};
pack["26532"] = { "Chrono-Lord Epoch",
	"* |cff71d5ff|Hspell:52772|h[Curse of Exertion]|h|r: The curse weakens its holder - cleanse it.",
	"* |cff71d5ff|Hspell:58848|h[Time Warp]|h|r: The timewarp twists the room's pace - keep heals steady through it.",
};
pack["26533"] = { "Mal'Ganis",
	"* |cff71d5ff|Hspell:52721|h[Sleep]|h|r: He puts players to sleep - wake them fast and keep the pack spread.",
	"* |cff71d5ff|Hspell:52723|h[Vampiric Touch]|h|r: The touch drains its holder - cleanse it.",
};
-- --------------------------------- --
-- Halls of Stone : Zona 599 --
-- --------------------------------- --

pack["27977"] = { "Krystallus",
	"* |cff71d5ff|Hspell:50833|h[Ground Slam]|h|r: The ground slam scatters the room - spread out hard.",
	"* |cff71d5ff|Hspell:50810|h[Shatter]|h|r: After the slam he shatters - keep everyone apart or the shatter shreds the group.",
};
pack["27975"] = { "Maiden of Grief",
	"* |cff71d5ff|Hspell:50761|h[Woe Strike]|h|r: Woe drips on her tank - swap it.",
	"* |cff71d5ff|Hspell:50752|h[Storm of Grief]|h|r: The storm sweeps the room - stay off the marks.",
	"* |cff71d5ff|Hspell:50760|h[Shock of Sorrow]|h|r: The shock stuns the pack - spread before it lands.",
};
pack["28070"] = { "Brann Event",
	"* |cff71d5ff|Hspell:51012|h[Dark Matter]|h|r: Dark matter burns under the pack - step off the marks.",
	"* |cff71d5ff|Hspell:51125|h[Searing Gaze]|h|r: The searing gaze fires from the guardians - face them away.",
};
pack["27978"] = { "Sjonnir the Ironshaper",
	"* |cff71d5ff|Hspell:50840|h[Lightning Ring]|h|r: The ring of lightning whips around him - step out before it lands.",
	"* |cff71d5ff|Hspell:50834|h[Static Charge]|h|r: The charge stacks on whoever touches him - keep the pack off his ring.",
};
-- --------------------------------- --
-- Drak'Tharon Keep : Zona 600 --
-- --------------------------------- --

pack["26630"] = { "Trollgore",
	"* |cff71d5ff|Hspell:49637|h[Infected Wound]|h|r: Infected wounds bleed his tank - keep heals ready.",
	"* |cff71d5ff|Hspell:49639|h[Crush]|h|r: Crush slams his tank - defensives up.",
	"* |cff71d5ff|Hspell:49380|h[Consume]|h|r: He channels on the corpses around him - drag the fights away while it runs.",
};
pack["26631"] = { "Novos the Summoner",
	"* |cff71d5ff|Hspell:50089|h[Wrath of Misery]|h|r: Wrath debuffs the pack - cleanse it.",
	"* |cff71d5ff|Hspell:47346|h[Dark Wounds]|h|r: Dark wounds spread on the floor - step off them.",
	"* |cff71d5ff|Hspell:59910|h[Minions]|h|r: Minions stream in during his channel - drop them before they reach him.",
};
pack["27483"] = { "King Dred",
	"* |cff71d5ff|Hspell:48878|h[Piercing Slash]|h|r: The slash bleeds its holder - healers up.",
	"* |cff71d5ff|Hspell:59416|h[Raptor Call]|h|r: He calls raptors into the room - AoE the pack fast.",
};
pack["26632"] = { "The Prophet Tharon'ja",
	"* |cff71d5ff|Hspell:49356|h[Decay Flesh]|h|r: He strips into a skeleton - mind the rain of fire he pours down while bone.",
	"* |cff71d5ff|Hspell:49518|h[Rain of Fire]|h|r: Rain of fire burns the room - move clear.",
	"* |cff71d5ff|Hspell:49527|h[Curse of Life]|h|r: The curse marks its holder - cleanse it.",
};
-- --------------------------------- --
-- Azjol-Nerub : Zona 601 --
-- --------------------------------- --

pack["28684"] = { "Krik'thir the Gatewatcher",
	"* |cff71d5ff|Hspell:52592|h[Curse of Fatigue]|h|r: The curse of fatigue drains its holder - cleanse it; his watcher packs stream through the gate - AoE them and pace the webs.",
};
pack["28921"] = { "Hadronox",
	"* |cff71d5ff|Hspell:53400|h[Acid Cloud]|h|r: Acid clouds pool the floor - step off them.",
	"* |cff71d5ff|Hspell:53030|h[Leech Poison]|h|r: The leech poison heals her while it burns its holder - cleanse it fast; she webs a door shut, pace the stream of nerubians while she holds it.",
};
pack["29120"] = { "Anub'arak (Dungeon)",
	"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: The pound slams wide under its marks - run clear of the marks; swarms of scarabs stream the tunnels in the first phase - AoE them down.",
};
-- --------------------------------- --
-- Halls of Lightning : Zona 602 --
-- --------------------------------- --

pack["28586"] = { "General Bjarngrim",
	"* |cff71d5ff|Hspell:52027|h[Whirlwind]|h|r: His whirlwind sweeps the lane - melee step out; he flips into storm, battle and berserker stances between phases.",
	"* |cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r: The mortal strike wounds his tank - swap it and heal through.",
};
pack["28587"] = { "Volkhan",
	"* |cff71d5ff|Hspell:52237|h[Shattering Stomp]|h|r: The stomp shakes the forge floor - melee step out; he forges molten golems in the lava, let them cool brittle and smash them.",
};
pack["28546"] = { "Ionar",
	"* |cff71d5ff|Hspell:52770|h[Disperse]|h|r: He disperses into sparks - the sparks regroup fast, AoE them down before the burst.",
	"* |cff71d5ff|Hspell:52658|h[Static Overload]|h|r: The overload burns its holder - the marked moves clear.",
};
pack["28923"] = { "Loken",
	"* |cff71d5ff|Hspell:52960|h[Lightning Nova]|h|r: The nova pulses wider with every beat - step out before it crests.",
};
-- --------------------------------- --
-- Ulduar : Zona 603 --
-- --------------------------------- --

pack["33293"] = { "XT-002 Deconstructor",
	"* |cff71d5ff|Hspell:65121|h[Light Bomb]|h|r: Light bombs explode wide at a player's feet - run clear of the mark.",
	"* |cff71d5ff|Hspell:64234|h[Gravity Bomb]|h|r: Gravity bombs collapse around the mark - keep off it.",
	"* |cff71d5ff|Hspell:64206|h[Consumption]|h|r: The exposed heart phase leaves consumption zones - stay off them and burn the heart.",
};
bos = { "Iron Council",
	"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: When one watchman falls the others power up - burst the strongest pair or pace the kills.",
	"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: Chain lightning rakes the pack - spread and interrupt.",
	"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: Brundir whirls lightning - interrupt the whirl.",
	"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: Brundir overloads with a huge nova - run out.",
	"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: Overpower stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Death runes burn the ground - move off them.",
	"* |cff71d5ff|Hspell:63489|h[Shield of Runes]|h|r: A rune shield guards their health - dispel or strip it.",
};
pack["32867"] = bos; pack["32927"] = bos; pack["32857"] = bos;

pack["32930"] = { "Kologarn",
	"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: Eyebeams track a player - kite them around the platform until they fade.",
	"* |cff71d5ff|Hspell:64292|h[Grip]|h|r: The stone arms grab players - break them free fast.",
	"* |cff71d5ff|Hspell:64002|h[Crunch Armor]|h|r: Crunch armor stacks on his tank - swap tanks.",
};
pack["33515"] = { "Auriaya",
	"* |cff71d5ff|Hspell:64386|h[Sonic Screech]|h|r: Her screech fears the room - keep an interrupt on every cast.",
	"* |cff71d5ff|Hspell:64396|h[Guardian Swarm]|h|r: The feral defender rises again and again - AoE the swarm, kill the guardian orbs.",
	"* |cff71d5ff|Hspell:64675|h[Void Zone]|h|r: Void zones chase a player - step clear.",
};
bos = { "Hodir",
	"* |cff71d5ff|Hspell:65123|h[Storm Cloud]|h|r: Storm clouds buff whoever holds them and anyone nearby - share them around the casters.",
	"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: The freeze fills the floor - hop on an ice block to ride it out.",
	"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: The deep cold bites anyone who stands still - never stop moving.",
};
pack["32845"] = bos; pack["32926"] = bos;

pack["32865"] = { "Thorim",
	"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: The hammer stuns anyone in his face cone - stay behind a pillar.",
	"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: Charges build as adds fall - clear the gauntlet fast and burst him down the corridor.",
	"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: Brutal strike on his tank - swaps and defensives.",
};
pack["32906"] = { "Freya",
	"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: Roots hold players in place - break them out.",
	"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: Sunbeams explode wide - run out of the mark.",
};
pack["33432"] = { "Mimiron",
	"* |cff71d5ff|Hspell:63631|h[Shock Blast]|h|r: Huge nova blast from his tank side - the melee steps out.",
	"* |cff71d5ff|Hspell:64402|h[Rocket Strike]|h|r: Rockets sweep down the marked lane - leave it at once.",
	"* |cff71d5ff|Hspell:63274|h[Laser Barrage]|h|r: He spins and fires the lasers - run the orbit wide.",
	"* |cff71d5ff|Hspell:64529|h[Plasma Blast]|h|r: Plasma blasts the tank - defensive heals.",
	"* |cff71d5ff|Hspell:64623|h[Frost Bomb]|h|r: A frost bomb descends - break it before it lands.",
};
pack["33271"] = { "General Vezax",
	"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Shadow crashes chase a player - run it out to the wall.",
	"* |cff71d5ff|Hspell:63276|h[Life Siphon]|h|r: The siphon drains his marked target - the marked keeps away.",
	"* |cff71d5ff|Hspell:62662|h[Surge of Darkness]|h|r: The surge pumps his damage - tank defensives up.",
	"* |cff71d5ff|Hspell:62661|h[Searing Flames]|h|r: Searing flames buffs him - interrupt every cast.",
};
pack["33288"] = { "Yogg-Saron",
	"* |cff71d5ff|Hspell:63050|h[Sanity]|h|r: Sanity drains near every shadow - watch the meter, pull out of the room under 30.",
	"* |cff71d5ff|Hspell:63802|h[Brain Link]|h|r: Linked players drag toward each other - keep the bonds stretched apart.",
	"* |cff71d5ff|Hspell:57687|h[Brain Portal]|h|r: Portals open for the brain chase - send the marked group through and end the illusion.",
	"* |cff71d5ff|Hspell:62979|h[Guardian of Yogg]|h|r: Guardians rise from the shadows - AoE them fast.",
};
pack["32871"] = { "Algalon the Observer",
	"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: The big bang eats the whole room - dive into a black hole and ride it out.",
	"* |cff71d5ff|Hspell:65108|h[Black Hole]|h|r: Collapsing stars leave black holes behind - enter them, step out after the bang.",
	"* |cff71d5ff|Hspell:64412|h[Phase Punch]|h|r: Phase punch stacks on his tank - swap tanks.",
	"* |cff71d5ff|Hspell:64596|h[Cosmic Smash]|h|r: Cosmic smash marks the floor - move clear.",
};
pack["33113"] = { "Flame Leviathan",
	"* |cff71d5ff|Hspell:62374|h[Pursued]|h|r: He chases one vehicle - that one runs circles while the rest close on the flank.",
	"* |cff71d5ff|Hspell:62475|h[System Shutdown]|h|r: The shutdown freezes him - burn everything down then.",
	"* |cff71d5ff|Hspell:62297|h[Hodir's Fury]|h|r: Tower buffs empower the fight - break the towers before the pull to soften him.",
};
pack["33118"] = { "Ignis the Furnace Master",
	"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: He scoops a player into the slag - heal them hard until they drop.",
	"* |cff71d5ff|Hspell:62488|h[Iron Constructs]|h|r: Constructs pour in from the vents - drown them in the water and let his Scorch quench them brittle.",
	"* |cff71d5ff|Hspell:63472|h[Flame Jets]|h|r: The jets interrupt casts around him - casters stay moving.",
};
pack["33186"] = { "Razorscale",
	"* |cff71d5ff|Hspell:48642|h[Harpoon Turrets]|h|r: Build the harpoon turrets around the arena - chain her down between flights.",
	"* |cff71d5ff|Hspell:64733|h[Devouring Flame]|h|r: Flame pools spread along the ground - step out of them.",
	"* |cff71d5ff|Hspell:64771|h[Fused Armor]|h|r: Fused armor stacks on her tank - swap tanks.",
};
-- --------------------------------- --
-- Gundrak : Zona 604 --
-- --------------------------------- --

pack["29304"] = { "Slad'ran",
	"* |cff71d5ff|Hspell:55081|h[Poison Nova]|h|r: The poison nova pools the floor wide - step out and spread.",
};
pack["29307"] = { "Drakkari Colossus",
	"* |cff71d5ff|Hspell:54850|h[Emerge]|h|r: He breaks into the elemental - burst the elemental before it merges back.",
	"* |cff71d5ff|Hspell:54878|h[Merge]|h|r: The merge rebuilds the colossus - the elemental dies first.",
	"* |cff71d5ff|Hspell:59451|h[Mojo Puddle]|h|r: Mojo puddles burn the floor - step off them.",
};
pack["29305"] = { "Moorabi",
	"* |cff71d5ff|Hspell:55098|h[Transformation]|h|r: He transforms into a mammoth - interrupt the cast or the fight doubles.",
};
pack["29932"] = { "Eck the Ferocious",
	"* |cff71d5ff|Hspell:55817|h[Eck's Residue]|h|r: The residue burns where he stands - keep off his puddles.",
};
pack["29306"] = { "Gal'darah",
	"* |cff71d5ff|Hspell:54956|h[Impaling Charge]|h|r: The impaling charge flings a player - the marked braces.",
	"* |cff71d5ff|Hspell:55249|h[Whirling Slash]|h|r: The whirling slash stacks on its target - swap it.",
};
-- --------------------------------- --
-- The Violet Hold : Zona 608 --
-- --------------------------------- --

pack["29315"] = { "Erekem",
	"* |cff71d5ff|Hspell:54481|h[Chain Heal]|h|r: His guards chain heal - interrupt them.",
	"* |cff71d5ff|Hspell:54479|h[Earth Shield]|h|r: Earth shields guard the pack - dispel them.",
	"* |cff71d5ff|Hspell:54516|h[Bloodlust]|h|r: The bloodlust powers him - purge it.",
};
pack["29316"] = { "Moragg",
	"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: The eye link binds and chases players - run it wide of the pack.",
};
pack["29313"] = { "Ichoron",
	"* |cff71d5ff|Hspell:54306|h[Protective Bubble]|h|r: The bubble makes him immune - burst it down.",
	"* |cff71d5ff|Hspell:54241|h[Water Bolt Volley]|h|r: The volley bombs the room - interrupt or take cover.",
};
pack["29266"] = { "Xevozz",
	"* |cff71d5ff|Hspell:54102|h[Ethereal Sphere]|h|r: The spheres orbit and fire - kill them and keep them off the pack.",
	"* |cff71d5ff|Hspell:54160|h[Arcane Power]|h|r: Arcane power pumps him - tank defensives up.",
};
pack["29312"] = { "Lavanthor",
	"* |cff71d5ff|Hspell:54282|h[Flame Breath]|h|r: Cone of flame - face him out.",
	"* |cff71d5ff|Hspell:54249|h[Lava Burn]|h|r: Lava burn pops the pack - spread.",
};
pack["29314"] = { "Zuramat the Obliterator",
	"* |cff71d5ff|Hspell:59743|h[Void Shift]|h|r: The shift drains its holder hard - healers ready.",
	"* |cff71d5ff|Hspell:59745|h[Shroud of Darkness]|h|r: The shroud hides his pull - keep cleans ready.",
};
pack["31134"] = { "Cyanigosa",
	"* |cff71d5ff|Hspell:58693|h[Blizzard]|h|r: Blizzards sweep the room - move off the snow.",
	"* |cff71d5ff|Hspell:58694|h[Vacuum]|h|r: The vacuum pulls the whole pack to her - brace and spread, she comes last after the portal waves clear.",
	"* |cff71d5ff|Hspell:59374|h[Mana Burn]|h|r: The mana burn drains its holder - dispel it.",
};
-- --------------------------------- --
-- The Obsidian Sanctum : Zona 615 --
-- --------------------------------- --

pack["28860"] = { "Sartharion",
	"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones open under players - step out fast; his breath also sends flame waves across the platform behind the next breath.",
};
pack["30451"] = { "Shadron",
	"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones burst under players - step out; his disciple and the fiends come through the portal - drop the disciple before its buff lands on him.",
};
pack["30452"] = { "Tenebron",
	"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones burst under players - step out; the twilight eggs along the walls crack open - break the whelps.",
};
pack["30449"] = { "Vesperon",
	"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones burst under players - step out; her disciple emerges - burst it before its damage buff stacks on the drake.",
};
-- --------------------------------- --
-- The Eye of Eternity : Zona 616 --
-- --------------------------------- --

pack["28859"] = { "Malygos",
	"* |cff71d5ff|Hspell:56105|h[Vortex]|h|r: Every 60 s he swirls the raid and pulses damage - heal through it.",
	"* |cff71d5ff|Hspell:56505|h[Deep Breath]|h|r: In phase 2 his breath burns one platform section - leave that quadrant.",
	"* |cff71d5ff|Hspell:60936|h[Surge of Power]|h|r: Unavoidable surge across the platform - defensive cooldowns up.",
	"* |cff71d5ff|Hspell:57430|h[Static Field]|h|r: Electric fields float around the platform - move clear of them.",
};
-- --------------------------------- --
-- Ahn'kahet: The Old Kingdom : Zona 619 --
-- --------------------------------- --

pack["29309"] = { "Elder Nadox",
	"* |cff71d5ff|Hspell:56130|h[Brood Plague]|h|r: The plague drains its holder - cleanse it; his brood rises in packs - AoE them.",
};
pack["29308"] = { "Prince Taldaram",
	"* |cff71d5ff|Hspell:55959|h[Embrace of the Vampyr]|h|r: The embrace channels on its holder - burst heals to break the hold.",
	"* |cff71d5ff|Hspell:55931|h[Flame Sphere]|h|r: The flame sphere roams the room - keep clear of its path.",
};
pack["29310"] = { "Jedoga Shadowseeker",
	"* |cff71d5ff|Hspell:56926|h[Thundershock]|h|r: The thundershock drops wide - spread out.",
	"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: A twister rips through the pack - move out of the wall.",
};
pack["30258"] = { "Amanitar",
	"* |cff71d5ff|Hspell:57055|h[Mini]|h|r: He shrinks its holder down - the tiny feel extra hurt, and mushrooms sprout and heal him: cut them the moment they pop.",
};
pack["29311"] = { "Herald Volazj",
	"* |cff71d5ff|Hspell:57496|h[Insanity]|h|r: The insanity spawns doubles of the whole pack - burn the doubles fast.",
	"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Shadow crashes burst under players - step off.",
	"* |cff71d5ff|Hspell:57949|h[Shiver]|h|r: The shiver ticks its holder - cleanse it.",
};
-- --------------------------------- --
-- Vault of Archavon : Zona 624 --
-- --------------------------------- --

pack["31125"] = { "Archavon the Stone Watcher",
	"* |cff71d5ff|Hspell:58678|h[Rock Shards]|h|r: He hurls rock shards at his marked pair - healers brace.",
	"* |cff71d5ff|Hspell:53041|h[Choking Grab]|h|r: He chokes and grabs a player to his side - the crowd keeps away from the marked.",
	"* |cff71d5ff|Hspell:60894|h[Leap]|h|r: He leaps to a random player - spread and reseat fast.",
	"* |cff71d5ff|Hspell:60880|h[Stomp]|h|r: Wide stomp on the pack - spread out.",
};
pack["33993"] = { "Emalon the Storm Watcher",
	"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: The storm construct charges up - kill it before the burst lands.",
	"* |cff71d5ff|Hspell:65279|h[Lightning Nova]|h|r: Nova around him - the melee steps out.",
};
pack["35013"] = { "Koralon the Flame Watcher",
	"* |cff71d5ff|Hspell:66665|h[Flame Breath]|h|r: Cone of flame - face him out from the pack.",
	"* |cff71d5ff|Hspell:66725|h[Meteor Fists]|h|r: Hammering fists on his tank - swap tanks.",
	"* |cff71d5ff|Hspell:66721|h[Burning Fury]|h|r: His fury buffs him over time.",
	"* |cff71d5ff|Hspell:66684|h[Cinder]|h|r: Cinders of flame track a player - move them out to the wall.",
};
pack["38433"] = { "Toravon the Ice Watcher",
	"* |cff71d5ff|Hspell:72090|h[Freezing Ground]|h|r: Ground frost spreads under the raid - step out.",
	"* |cff71d5ff|Hspell:72034|h[Whiteout]|h|r: Wide whiteout blast - spread clear.",
	"* |cff71d5ff|Hspell:72091|h[Orb]|h|r: Frost orbs orbit him - break them before they burst.",
	"* |cff71d5ff|Hspell:72004|h[Frostbite]|h|r: Frostbite stacks with every orb hit - keep the orbs down.",
};
-- --------------------------------- --
-- Icecrown Citadel : Zona 631 --
-- --------------------------------- --

pack["36612"] = { "Lord Marrowgar",
	"* |cff71d5ff|Hspell:69076|h[Bone Storm]|h|r: He storms the room scattering bone shards - spread wide and stay off his back.",
	"* |cff71d5ff|Hspell:69057|h[Bone Spike]|h|r: Three players get impaled on spikes - break them free fast.",
	"* |cff71d5ff|Hspell:69146|h[Coldflame]|h|r: Lines of cold flame sweep the floor - step off them.",
};
pack["36855"] = { "Lady Deathwhisper",
	"* |cff71d5ff|Hspell:71289|h[Dominate Mind]|h|r: She enslaves players - crowd-control the marked until it fades.",
	"* |cff71d5ff|Hspell:61131|h[Adds]|h|r: Waves of cultists escort her - AoE the pack and stop the reanimating.",
	"* |cff71d5ff|Hspell:70674|h[Vampric Might]|h|r: The cultist buff empowers them - dispel it fast.",
	"* |cff71d5ff|Hspell:71001|h[Death and Decay]|h|r: Decay burns the floor - step out.",
	"* |cff71d5ff|Hspell:71204|h[Touch of Insignificance]|h|r: Touch stacks down her tank - swap tanks.",
	"* |cff71d5ff|Hspell:71236|h[Dark Martyrdom]|h|r: A cultist detonates - run away from the marked.",
	"* |cff71d5ff|Hspell:34018|h[Reanimation]|h|r: Fallen cultists reanimate - burn them again.",
};
bos = { "Gunship Battle",
	"* |cff71d5ff|Hspell:69638|h[Battle Fury]|h|r: The enemy crew buffs up over the fight - burn the boarders fast.",
	"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: A freezing blast stuns the deck - spread out of it.",
	"* |cff71d5ff|Hspell:69652|h[Bladestorm]|h|r: The bladestorm cleaves the deck - step away.",
	"* |cff71d5ff|Hspell:23334|h[Boarders]|h|r: Boarders swing over - kill them before they reach the cannons.",
};
pack["37215"] = bos; pack["37540"] = bos;

pack["37813"] = { "Deathbringer Saurfang",
	"* |cff71d5ff|Hspell:72293|h[Mark of the Fallen Champion]|h|r: The marked player pulses damage to the whole raid - heavy raid healing covers the chain.",
	"* |cff71d5ff|Hspell:72378|h[Blood Nova]|h|r: Blood nova bursts wide - spread out.",
	"* |cff71d5ff|Hspell:72385|h[Boiling Blood]|h|r: Boiling blood burns the pack - spread clear.",
	"* |cff71d5ff|Hspell:72410|h[Rune of Blood]|h|r: The rune drains his tank - swap tanks.",
	"* |cff71d5ff|Hspell:72737|h[Frenzy]|h|r: At 30% he frenzies - burn him down.",
	"* |cff71d5ff|Hspell:72173|h[Blood Beasts]|h|r: Blood beasts rise - AoE them before they reach the pack.",
};
pack["36626"] = { "Festergut",
	"* |cff71d5ff|Hspell:69279|h[Gas Spore]|h|r: Gas spores mark players - touch the burst once to gain your inoculation.",
	"* |cff71d5ff|Hspell:69166|h[Inhaled Blight]|h|r: Each inhale pumps his damage - at three stacks the whole raid takes defensives.",
	"* |cff71d5ff|Hspell:69240|h[Vile Gas]|h|r: Vile gas scatters the ranged - keep the ranged spread wide.",
	"* |cff71d5ff|Hspell:69195|h[Pungent Blight]|h|r: The pungent blast comes with the third inhale - defensive cooldowns up.",
	"* |cff71d5ff|Hspell:72219|h[Gastric Bloat]|h|r: Gastric bloat stacks on his tank - swap tanks.",
};
pack["36627"] = { "Rotface",
	"* |cff71d5ff|Hspell:69508|h[Slime Spray]|h|r: Cone of slime - stay behind him.",
	"* |cff71d5ff|Hspell:69674|h[Mutating Infection]|h|r: The infected clears it by running to the big ooze - the burst spawns an ooze add, burn it away from the pack.",
	"* |cff71d5ff|Hspell:69774|h[Sticky Ooze]|h|r: Sticky ooze pools chase players - step out.",
	"* |cff71d5ff|Hspell:69558|h[Unstable Ooze]|h|r: Merged oozes grow the big puddle - keep the small ones apart from it.",
};
pack["36678"] = { "Professor Putricide",
	"* |cff71d5ff|Hspell:70341|h[Slime Puddle]|h|r: Slime puddles grow wherever they land - step off and never fight on them.",
	"* |cff71d5ff|Hspell:70447|h[Volatile Ooze]|h|r: The ooze glues a player - burst the ooze down to free them.",
	"* |cff71d5ff|Hspell:70672|h[Gaseous Bloat]|h|r: The gas inflates a player - burst the gas down.",
	"* |cff71d5ff|Hspell:71255|h[Choking Gas Bomb]|h|r: Choking gas bombs drop - step out at once.",
	"* |cff71d5ff|Hspell:70911|h[Unbound Plague]|h|r: The unbound plague jumps between players - pass it along before it kills the holder.",
	"* |cff71d5ff|Hspell:72840|h[Volatile Experiment]|h|r: In phase 3 both experiments fly at once - preplan the ooze and the gas stations.",
};
bos = { "Blood Prince Council",
	"* |cff71d5ff|Hspell:70952|h[Target Switch]|h|r: Their target shifts to the shielded prince - never attack the shielded one.",
	"* |cff71d5ff|Hspell:72040|h[Empowered Flames]|h|r: Empowered flames track a player - run the trail out.",
	"* |cff71d5ff|Hspell:72037|h[Shock Vortex]|h|r: Shock vortex bounces through the pack - spread wide.",
	"* |cff71d5ff|Hspell:72053|h[Kinetic Bombs]|h|r: Kinetic bombs float and bounce - pop them before they drop.",
};
pack["37970"] = bos; pack["37972"] = bos; pack["37973"] = bos;

pack["37955"] = { "Blood-Queen Lana'thel",
	"* |cff71d5ff|Hspell:71340|h[Pact of the Darkfallen]|h|r: The cursed three share the pain - gather shoulder to shoulder and burn the pact down.",
	"* |cff71d5ff|Hspell:70946|h[Vampric Bite]|h|r: The bitten player gains the essence - keep one unbiten healer and a swap plan.",
	"* |cff71d5ff|Hspell:70877|h[Bloodthirst]|h|r: The essence grows a craving - the bitten bites another player before the craving explodes.",
	"* |cff71d5ff|Hspell:71266|h[Swarming Shadows]|h|r: Shadows trail the marked player - run the marks wide.",
	"* |cff71d5ff|Hspell:71772|h[Blood Bolt]|h|r: Blood bolts burst wide - spread out.",
	"* |cff71d5ff|Hspell:71510|h[Blood Mirror]|h|r: The mirror links damage - keep the mirrored pair apart.",
};
pack["36789"] = { "Valithria Dreamwalker",
	"* |cff71d5ff|Hspell:72483|h[Nightmare Portal]|h|r: Portals open into the dream - healers cross, grab the buff and return to heal Valithria hard.",
	"* |cff71d5ff|Hspell:70588|h[Suppression]|h|r: Suppression clouds block healing - break them out.",
	"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay waste detonates the room - run out of the marks.",
	"* |cff71d5ff|Hspell:71179|h[Mana Void]|h|r: Mana voids drain casters - step off the marks.",
	"* |cff71d5ff|Hspell:70751|h[Corrosion]|h|r: Blistering zombies rise in waves - AoE them out of the dragon's way.",
};
pack["36853"] = { "Sindragosa",
	"* |cff71d5ff|Hspell:70126|h[Frost Beacon]|h|r: Beaconed players rise as ice tombs - the tombs become cover, plan their spots.",
	"* |cff71d5ff|Hspell:69766|h[Instability]|h|r: Instability stacks with casting - stop casting at five stacks and let it burn off.",
	"* |cff71d5ff|Hspell:70128|h[Mystic Buffet]|h|r: Buffets stack through her breath - swap tanks before five stacks.",
	"* |cff71d5ff|Hspell:69762|h[Unchained Magic]|h|r: The unchained debuff locks casters - stop casting until it fades.",
	"* |cff71d5ff|Hspell:43810|h[Air Phase]|h|r: She rises for an air phase - spread and heal the bombardment.",
};
pack["36597"] = { "The Lich King",
	"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: Defile grows wherever anyone stands in it - never step in and spread wide or it eats the platform.",
	"* |cff71d5ff|Hspell:70337|h[Necrotic Plague]|h|r: The plague jumps between targets - park it on the adds and never dispel the stack.",
	"* |cff71d5ff|Hspell:70372|h[Shambling Horror]|h|r: Shamblings rise between phases - kill them and keep the plague stacked on them.",
	"* |cff71d5ff|Hspell:69200|h[Raging Spirit]|h|r: Raging spirits rise in the winter - burst them before they reach the pack.",
	"* |cff71d5ff|Hspell:68981|h[Remorseless Winter]|h|r: The winter storm drags players inward - stay out of the ring.",
	"* |cff71d5ff|Hspell:71844|h[Valkyr]|h|r: The valkyrs grab players - burn them down before they carry the marked off.",
	"* |cff71d5ff|Hspell:72262|h[Quake]|h|r: The quake crumbles the platform - spread along the safe side.",
};
-- --------------------------------- --
-- The Forge of Souls : Zona 632 --
-- --------------------------------- --

pack["36497"] = { "Bronjahm",
	"* |cff71d5ff|Hspell:68839|h[Corrupt Soul]|h|r: The corrupted soul drifts back to him - kill the soul orb before it feeds him.",
	"* |cff71d5ff|Hspell:68872|h[Soul Storm]|h|r: At low health the storm tears the room apart - hug the edges while it spins.",
};
pack["36502"] = { "Devourer of Souls",
	"* |cff71d5ff|Hspell:68820|h[Well of Souls]|h|r: The well pools the floor - step off it.",
	"* |cff71d5ff|Hspell:69051|h[Mirrored Soul]|h|r: The mirror binds a player to him - stop attacking while the bind stands.",
	"* |cff71d5ff|Hspell:68982|h[Phantom Blast]|h|r: The phantom blast tears the room - interrupt it.",
	"* |cff71d5ff|Hspell:68899|h[Wailing Souls]|h|r: Wailing souls sweep the room - run the safe lane.",
};
-- --------------------------------- --
-- Trial of the Crusader : Zona 649 --
-- --------------------------------- --

bos = { "Northrend Beasts",
	"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: Impales stack through the tank - burn the snobolds off the tank's back first.",
	"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Fire bombs scatter over the pack - step off the marks.",
	"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: The beast charges across the arena - dodge the run and pile on while it lies stunned.",
	"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: Breath of frost sweeps the room - stay out of the cone.",
	"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: Slime pools spread under the worms - step off them.",
	"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: The toxin paralyzes the marked - keep the cleans ready.",
	"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: The burning bile spreads on contact - keep distance from the marked.",
};
pack["34796"] = bos; pack["35144"] = bos; pack["34799"] = bos; pack["34797"] = bos;

pack["34780"] = { "Lord Jaraxxus",
	"* |cff71d5ff|Hspell:66197|h[Legion Flame]|h|r: Flame trails wherever the marked walks - run the trail out to the wall.",
	"* |cff71d5ff|Hspell:66237|h[Incinerate Flesh]|h|r: The marked enters a healing contest - burst heals until the seal pops.",
	"* |cff71d5ff|Hspell:66269|h[Nether Portal]|h|r: A portal tears open - kill the mistress and the adds fast.",
	"* |cff71d5ff|Hspell:66258|h[Nether Volcano]|h|r: A volcano erupts - kill it before the fireballs flood the room.",
	"* |cff71d5ff|Hspell:67009|h[Nether Power]|h|r: He empowers himself - dispel the boss.",
	"* |cff71d5ff|Hspell:66532|h[Fel Fireball]|h|r: Fel fireball bombs the tank - interrupt it at every cast.",
};
bos = { "Val'kyr Twins",
	"* |cff71d5ff|Hspell:65950|h[Light Essence]|h|r: Half the raid carries light essence - only touch light orbs, the opposite color burns.",
	"* |cff71d5ff|Hspell:66001|h[Dark Essence]|h|r: The other half carries dark essence - only touch dark orbs.",
	"* |cff71d5ff|Hspell:39089|h[Special]|h|r: On the special call the essences flip - cross to the opposite orbs as one.",
	"* |cff71d5ff|Hspell:65875|h[Twin's Pact]|h|r: One twin heals the other - interrupt the pact.",
	"* |cff71d5ff|Hspell:65916|h[Power of the Twins]|h|r: The powered twin takes reduced damage - swap your damage to the other.",
};
pack["34497"] = bos; pack["34496"] = bos;

pack["34564"] = { "Anub'arak",
	"* |cff71d5ff|Hspell:45419|h[Nerubian Burrowers]|h|r: Burrowers rise through the floor - kill them fast and interrupt their strikes.",
	"* |cff71d5ff|Hspell:67574|h[Pursued]|h|r: The swarms pursue their marked player - run them wide and AoE on the move.",
	"* |cff71d5ff|Hspell:66013|h[Penetrating Cold]|h|r: In the last phase the cold stacks on everyone - heal through the ticks.",
	"* |cff71d5ff|Hspell:66012|h[Freezing Slash]|h|r: Freezing slash marks a player - healers ready.",
	"* |cff71d5ff|Hspell:65919|h[Burrow]|h|r: He burrows with add waves - clear the pack, he surfaces beside the marked.",
};
bos = { "Faction Champions",
	"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: The warrior storms - melee step out.",
	"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Their heroism buffs the pack - purge it fast.",
	"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Hellfire burns the floor - step off the marks.",
	"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Their crowd control lands - keep dispels ready.",
	"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: The death grip snags a player - the marked braces and the group keeps spread.",
};
pack["34458"] = bos; pack["34451"] = bos; pack["34459"] = bos; pack["34448"] = bos; pack["34449"] = bos; pack["34445"] = bos; pack["34456"] = bos; pack["34447"] = bos; pack["34441"] = bos; pack["34454"] = bos; pack["34444"] = bos; pack["34455"] = bos; pack["34450"] = bos; pack["34453"] = bos; pack["34461"] = bos; pack["34460"] = bos; pack["34469"] = bos; pack["34467"] = bos; pack["34468"] = bos; pack["34471"] = bos; pack["34465"] = bos; pack["34466"] = bos; pack["34473"] = bos; pack["34472"] = bos; pack["34470"] = bos; pack["34463"] = bos; pack["34474"] = bos; pack["34475"] = bos;

-- --------------------------------- --
-- Trial of the Champion : Zona 650 --
-- --------------------------------- --

bos = { "Grand Champions",
	"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Their healer channels waves - keep interrupts on him.",
	"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: The mage polymorphs - dispel it fast.",
	"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: The shaman hexes - dispel the hex.",
	"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: The haste buff empowers them - purge the boss.",
	"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Poison puddles spread - step off the marks.",
};
pack["34657"] = bos; pack["34701"] = bos; pack["34702"] = bos; pack["34703"] = bos; pack["34705"] = bos; pack["35569"] = bos; pack["35570"] = bos; pack["35571"] = bos; pack["35572"] = bos; pack["35617"] = bos;

pack["35119"] = { "Eadric the Pure",
	"* |cff71d5ff|Hspell:66935|h[Radiance]|h|r: The radiance dazzles anyone facing him - never look at the flash.",
	"* |cff71d5ff|Hspell:66905|h[Hammer]|h|r: He throws his hammer - the marked catches it and hurls it back.",
	"* |cff71d5ff|Hspell:66889|h[Vengeance]|h|r: His vengeance stacks his power - burn him between hammers.",
};
pack["34928"] = { "Argent Confessor Paletress",
	"* |cff71d5ff|Hspell:66620|h[Memory]|h|r: The memory manifests and fights - burst it down, dodge the wounds it leaves.",
	"* |cff71d5ff|Hspell:66515|h[Reflective Shield]|h|r: The shield bounces spells - casters keep off it.",
	"* |cff71d5ff|Hspell:66538|h[Holy Fire]|h|r: Holy fire burns the marked - dispel the burn.",
	"* |cff71d5ff|Hspell:66537|h[Renew]|h|r: She renews herself - dispel the renew.",
};
pack["35451"] = { "The Black Knight",
	"* |cff71d5ff|Hspell:67781|h[Desecration]|h|r: Desecration crawls across the floor - step out of it.",
	"* |cff71d5ff|Hspell:67751|h[Explode]|h|r: The ghoul detonates near the pack - run out.",
	"* |cff71d5ff|Hspell:67823|h[Marked]|h|r: He marks a player for the plague - healers stay on the mark.",
};
-- --------------------------------- --
-- Pit of Saron : Zona 658 --
-- --------------------------------- --

pack["36494"] = { "Forgemaster Garfrost",
	"* |cff71d5ff|Hspell:70381|h[Deep Freeze]|h|r: The deep freeze locks its holder - keep cleans ready; the saronite boulders he hurls stay behind as cover against his frost.",
};
pack["36476"] = { "Ick and Krick",
	"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: Ick chases a player and barrages - run wide of the marks.",
	"* |cff71d5ff|Hspell:69024|h[Toxic Waste]|h|r: Toxic waste pools the floor - step off it.",
	"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: The poison nova pools wide - step out.",
};
bos = { "Scourgelord Tyrannus",
	"* |cff71d5ff|Hspell:69172|h[Overlord's Brand]|h|r: The brand mirrors every hit the branded lands back on the pack - the branded holds their attacks.",
	"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: Rimefang's grasp chases a player - run it off before the blast lands.",
};
pack["36658"] = bos; pack["36661"] = bos;

-- --------------------------------- --
-- Halls of Reflection : Zona 668 --
-- --------------------------------- --

pack["38112"] = { "Falric",
	"* |cff71d5ff|Hspell:72422|h[Quivering Strike]|h|r: The quiver drains its holder - keep the cleanse ready.",
	"* |cff71d5ff|Hspell:72426|h[Impending Despair]|h|r: The despair dread grips its holder - cleanse it fast; waves of wretched spirits storm between the pair.",
};
pack["38113"] = { "Marwyn",
	"* |cff71d5ff|Hspell:72363|h[Corrupted Flesh]|h|r: The corrupted flesh burns its holder - keep the cleanse ready.",
	"* |cff71d5ff|Hspell:72368|h[Shared Suffering]|h|r: Shared suffering chains the pack - keep the bonded apart.",
	"* |cff71d5ff|Hspell:72383|h[Corrupted Touch]|h|r: The touch drains its holder - cleanse it.",
	"* |cff71d5ff|Hspell:72362|h[Well of Corruption]|h|r: Corruption pools the floor - step off it.",
};
-- --------------------------------- --
-- The Ruby Sanctum : Zona 724 --
-- --------------------------------- --

pack["39863"] = { "Halion the Twilight Destroyer",
	"* |cff71d5ff|Hspell:74562|h[Fiery Combustion]|h|r: Combustion builds on the fire side and then drops a fire trail from you - take it to the realm's edge.",
	"* |cff71d5ff|Hspell:74792|h[Shadow Consumption]|h|r: The same trails on the shadow side - bank them at the edge of the realm.",
	"* |cff71d5ff|Hspell:74648|h[Meteor Strike]|h|r: A meteor crashes into the fire realm - away from the mark.",
	"* |cff71d5ff|Hspell:74769|h[Twilight Cutter]|h|r: The rotating cutter rakes the twilight realm - keep the beam off you.",
	"* |cff71d5ff|Hspell:74525|h[Flame Breath]|h|r: Flame breath on the fire-side tank - face him away.",
	"* |cff71d5ff|Hspell:74806|h[Dark Breath]|h|r: Dark breath on the twilight-side tank - face him away.",
};
pack["39751"] = { "Baltharus the Warborn",
	"* |cff71d5ff|Hspell:75125|h[Blade Tempest]|h|r: Whirlwind shreds the melee - step out.",
	"* |cff71d5ff|Hspell:74509|h[Repelling Wave]|h|r: A wave knocks everyone back - keep clear of the walls.",
	"* |cff71d5ff|Hspell:74505|h[Splitting Brand]|h|r: The brand marks a player - the clone gains its copy, watch the split.",
};
pack["39747"] = { "Saviana Ragefire",
	"* |cff71d5ff|Hspell:74453|h[Beacon of Flames]|h|r: She marks a player for the next breath - take the mark far from the pack.",
	"* |cff71d5ff|Hspell:74403|h[Flame Breath]|h|r: Wide flame breath - face her out.",
	"* |cff71d5ff|Hspell:78722|h[Enrage]|h|r: She enrages - tranq it down.",
};
pack["39746"] = { "General Zarithrian",
	"* |cff71d5ff|Hspell:74367|h[Cleave Armor]|h|r: Cleave armor stacks on his tank - swap tanks.",
	"* |cff71d5ff|Hspell:74398|h[Drakes]|h|r: Onyx drakes join the room - kill them, interrupters ready.",
	"* |cff71d5ff|Hspell:74384|h[Fearful Roar]|h|r: Fearful roar - interrupt it or face the fear.",
};
P.en = en;
