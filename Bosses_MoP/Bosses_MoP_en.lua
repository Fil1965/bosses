--[[
	Bosses_MoP_en.lua
		Boss data in English for the MoP pack. Tactics hand-written
		with the owner's knowledge of the fights (2026-10-01).

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos;

-- --------------------------------- --
-- Heart of Fear : Zone 1009 --
-- --------------------------------- --

pack["63191"] = { "Garalon",
	"* NOT tanked conventionally: fixates the player with |cff71d5ff|Hspell:123081|h[Pheromones]|h|r.",
	"* The assigned player KITES along the walls; when damage becomes unbearable, ANOTHER player steps in to TAKE the debuff.",
	"* DPS break all 4 legs |cff71d5ff|Hspell:122786|h[Broken Leg]|h|r to slow him and deal heavy body damage.",
	"* NEVER go under his body (purple circle) or he triggers |cff71d5ff|Hspell:122754|h[Blind Fury]|h|r which wipes the raid!",
};

pack["62397"] = { "Wind Lord Mel'jarak",
	"* Three groups of adds: use the room item to FREEZE several at the start.",
	"* Kill one entire group at a time: the boss enrages but remaining adds lose their protections.",
	"* The Menders' |cff71d5ff|Hspell:122193|h[Mending]|h|r MUST be interrupted.",
	"* A FREE party member clicks the |cff71d5ff|Hspell:121881|h[Amber Prisons]|h|r to release.",
};

pack["62511"] = { "Amber-Shaper Un'sok",
	"* |cff71d5ff|Hspell:122784|h[Reshape Life]|h|r turns a player into an amber abomination — a VEHICLE.",
	"* The mutated player interrupts boss casts; spam your basic attack to consume amber and keep your bar below 100%.",
	"* When the boss is vulnerable, DPS bring you down to 20% to free you.",
	"* Final phase (Monstrosity): Heroism on the boss while dodging the growing amber puddles.",
};

pack["62837"] = { "Grand Empress Shek'zeer",
	"* Phase 1: split into two groups; players marked by |cff71d5ff|Hspell:123735|h[Screech]|h|r move away.",
	"* Phase 2 (Royal Guard): she shields herself and spawns adds; tanks separate the Wind Reavers.",
	"* Phase 3 (Sha, 30%-0%): dispel fears and pile ALL damage before healers run out of mana.",
	"* |cff71d5ff|Hspell:123788|h[Cry of Terror]|h|r: AoE damage in the final phase, heal through.",
};

pack["62543"] = { "Blade Lord Ta'yak",
	"* |cff71d5ff|Hspell:123474|h[Unseen Strike]|h|r marks a player and he vanishes — the ENTIRE raid STACKS on them to split the impact.",
	"* Stay away from the tornadoes he spawns across the room.",
	"* Phase 2 (20%-0%): run down the corridor dodging tornadoes with the side currents; on reaching the boss, burn him.",
};

pack["62980"] = { "Imperial Vizier Zor'lok",
	"* Three platforms, each with one ability; final central phase combines them all.",
	"* Sound rings: dodge sideways or hide in the room's protective bubbles.",
	"* |cff71d5ff|Hspell:122761|h[Exhale]|h|r fixates a player with a beam: others INTERPOSE to share the damage.",
	"* |cff71d5ff|Hspell:122740|h[Convert]|h|r mind-controls: switch targets for moderate damage or stuns to free them fast.",
};

-- --------------------------------- --
-- Mogushan Vaults : Zone 1008 --
-- --------------------------------- --

pack["60009"] = { "Feng the Accursed",
	"* Changes phase every 25%: staff, spear, shield, fists.",
	"* Tanks interact with the STATUES BEFORE the pull: they get a spell-copy shield and a mitigating bubble.",
	"* Fists phase: STACK behind the boss so heals reach the |cff71d5ff|Hspell:116784|h[Epicenter]|h|r damage.",
	"* Shield phase: |cff71d5ff|Hspell:116157|h[Storm]|h|r pulls everyone in — run in the OPPOSITE direction.",
};

bos = { "The Stone Guard",
	"* 3-4 stone lions sharing one health bar; a random boss fills the raid's |cff71d5ff|Hspell:116529|h[Petrification]|h|r bar.",
	"* The tank on the active boss STACKS it with another lion to drain energy between them. The other tank keeps the rest separated.",
	"* Everyone dodges amethyst puddles, |cff71d5ff|Hspell:129424|h[cobalt traps]|h|r and fire zones.",
};
pack["60051"] = bos; pack["60043"] = bos; pack["59915"] = bos; pack["60047"] = bos;

bos = { "Will of the Emperor",
	"* Terracotta assembly line; the real bosses are two giant armours at the end.",
	"* The raid splits: Gis (small, fixate), Janissaries (medium) and Titans (large, slow tanks).",
	"* The Devastating Combo (Strike + Stomp): tanks dodge sideways at the exact moment.",
	"* If the tank dodges all 5 combo hits perfectly, they gain a button dealing MILLIONS of damage.",
};
pack["60399"] = bos; pack["60400"] = bos;

pack["60143"] = { "Gara'jal the Spiritbinder",
	"* |cff71d5ff|Hspell:116161|h[Voodoo Dolls]|h|r link the tank to players: ALL tank damage replicates to them.",
	"* Banished players kill the shadowy adds in the spirit realm FAST.",
	"* To EXIT: step on the totems or portals before your time runs out.",
};

bos = { "The Spirit Kings",
	"* Four mogu kings by turns, each ADDING a mechanic that CARRIES OVER.",
	"* Qiang: |cff71d5ff|Hspell:118212|h[Annihilation]|h|r massive frontal — run and get BEHIND him.",
	"* Subetai: arrows that pin players — DPS switch targets IMMEDIATELY.",
	"* Zian: chasing orbs — the fixated player KITES the orb away from the group.",
	"* Meng: when his reflective shield is up, DPS STOP attacking completely.",
};
pack["60701"] = bos; pack["60708"] = bos; pack["60709"] = bos; pack["60710"] = bos;

pack["60410"] = { "Elegon",
	"* Celestial energy engine on a transparent platform over the VOID.",
	"* Inside the white circuit you deal more damage but stack a debuff — step OUT briefly to clear.",
	"* Transition: DPS destroy ALL pillar charges SIMULTANEOUSLY.",
	"* THE FLOOR DISAPPEARS during the phase change! If you're in the center, you fall into the void.",
};

-- --------------------------------- --
-- Siege of Orgrimmar : Zone 1136 --
-- --------------------------------- --

bos = { "Paragons of the Klaxxi",
	"* 9 mantid champions, jumping in 3 at a time — each with a unique devastating ability.",
	"* Follow a STRICT kill order (usually Rik'kal or Hisek first) to avoid lethal combinations.",
	"* When a champion dies, a player clicks the corpse to STEAL their ability for the rest of the fight.",
};
pack["71152"] = bos; pack["71153"] = bos; pack["71154"] = bos; pack["71155"] = bos; pack["71156"] = bos; pack["71157"] = bos; pack["71158"] = bos; pack["71160"] = bos; pack["71161"] = bos;

bos = { "Spoils of Pandaria",
	"* Race against the clock: split the raid into TWO equal groups, one per room.",
	"* Coordinate small and medium crates to control the add flow and fill the bar.",
	"* Do NOT open too many large crates at once — you'll overwhelm yourselves before the 5-minute timer.",
};
pack["73720"] = bos; pack["71512"] = bos;

pack["71454"] = { "Malkorok",
	"* Healing does NOT restore health: it builds an absorption shield (green -> yellow -> red).",
	"* When he slams the ground, run to the dark energy zones to ABSORB them — an empty zone explodes.",
	"* Rage phase: STACK UP to share the stomp damage.",
};

bos = { "The Fallen Protectors",
	"* Three guardians sharing a health PERCENTAGE — they must die nearly simultaneously.",
	"* At 66% and 33% each triggers Desperate Measures with spirit copies.",
	"* Balance damage across all three; dispel shadows, dodge poison, exit Rook's storm circles.",
};
pack["71479"] = bos; pack["71475"] = bos; pack["71480"] = bos;

pack["71529"] = { "Thok the Bloodthirsty",
	"* Phase 1: he roars and interrupts casts; the raid STACKS UP for heals.",
	"* Phase 2: if several players drop below 50%, he SMELLS blood and CHASES one to devour them — the fixated player KITES.",
	"* DPS kill the jailer to steal the key, open a cell and reset the fight.",
};

pack["71466"] = { "Iron Juggernaut",
	"* Alternates Assault Mode (mobile) and Siege Mode (anchored).",
	"* Assault: dodge tar puddles and spinning saws.",
	"* Siege: players STEP ON the tracking mines (with immunities) before they explode.",
};

pack["71504"] = { "Siegecrafter Blackfuse",
	"* An assigned team of DPS JUMPS onto the conveyor belt via the pipes and destroys weapons (lasers, magnets, missiles).",
	"* In the main room: the tank moves the boss avoiding the sawblades bouncing off walls.",
};

pack["71543"] = { "Immerseus",
	"* Corrupted water elemental: alternate damaging the boss and cleaning his tears.",
	"* Split: BLACK slimes are killed by DPS, BLUE slimes are healed to full to purify them.",
	"* Each rescued slime reduces his max health when he reappears.",
};

pack["71515"] = { "General Nazgrim",
	"* |cff71d5ff|Hspell:143589|h[Battle Stance]|h|r: normal, focus on cleaning adds.",
	"* |cff71d5ff|Hspell:143593|h[Defensive Stance]|h|r: DO NOT HIT HIM! Every hit gives him rage for his lethal Execute.",
	"* Berserker: takes more damage — ideal for strong offensive cooldowns.",
	"* Kill shamans and hunters IMMEDIATELY.",
};

pack["71734"] = { "Sha of Pride",
	"* Individual Pride bar: at 100% you mind-control or damage your allies.",
	"* Players marked with Projection run to the light runes to cleanse.",
	"* |cff71d5ff|Hspell:144574|h[Pride Prison]|h|r: TWO free players step on the buttons to release the trapped one.",
	"* The player with the Titan buff moves close to others to mitigate their pride gain.",
};

bos = { "Kor'kron Dark Shaman",
	"* Tanks SEPARATE the two bosses across the whole courtyard.",
	"* The floor is lethal: dodge ash rain, corrupt totems and the slime blobs that chase players.",
};
pack["71859"] = bos; pack["71858"] = bos;

bos = { "Galakras",
	"* On the ground: destroy add waves; tanks prioritize shamans and demolishers.",
	"* An assigned team climbs the TOWERS, clears defenders and fires the cannons to force her to land.",
	"* On the ground: the raid lines up behind the tank to split the fire debuff.",
};
pack["72311"] = bos; pack["72560"] = bos; pack["72249"] = bos; pack["73910"] = bos; pack["72302"] = bos; pack["72561"] = bos; pack["73909"] = bos;

pack["71865"] = { "Garrosh Hellscream",
	"* Phase 1: engineering wheels kill adds on their own; focus shamans.",
	"* Phase 2: desecrated weapons + Touch of Y'Shaarj — DPS switch IMMEDIATELY to free dominated allies.",
	"* Sha realm trips: move TOGETHER and clear adds quickly.",
	"* Phase 3: Heroism and burn EVERYTHING before the AoE explosions wipe the raid.",
};

pack["72276"] = { "Amalgam of Corruption",
	"* Everyone starts with 50% LESS damage due to Corruption.",
	"* Interact with the light orbs to enter an individual trial; completing it restores your full damage.",
	"* Send your strongest DPS first.",
	"* In the main room: dodge the rotating laser and kill the manifestations.",
};

-- --------------------------------- --
-- Terrace of Endless Spring : Zone 996 --
-- --------------------------------- --

bos = { "Protectors of the Endless",
	"* Three guardians: Kaolan -> Regail -> Asani (recommended kill order).",
	"* When one dies, the other two heal to 100% and gain +25% damage and a new ability.",
	"* Keep Kaolan away from the group (puddles); dispel water prisons and cleanse Asani's swiftness buffs.",
};
pack["60585"] = bos; pack["60586"] = bos; pack["60583"] = bos;

pack["62442"] = { "Tsulong",
	"* Night (damage): step briefly on the sun patches to clear your shadow stacks.",
	"* Day (heal the boss): Tsulong becomes friendly — healers top him off.",
	"* In the day phase, stand in front of his light breath: +500% mana regen and healing power.",
	"* DPS defend the dragon by killing the terror manifestations.",
};

pack["62983"] = { "Lei Shi",
	"* 'Get Away!' phase: she pushes the raid to the edges — run toward her or use speed buffs.",
	"* 'Hide!' phase: invisible and immune — AoE across the room until you hit her and she reappears.",
	"* At 80/60/40/20%: bubble + Protectors — focus ONE to break the shield; no need to kill them all.",
};

pack["60999"] = { "Sha of Fear",
	"* Everyone (except the main tank) STACKS inside the WALL OF LIGHT: it makes you immune to the lethal Breath of Fear.",
	"* Periodically banishes a group to the outer platforms.",
	"* Outside: dodge the arrow shots on the ground, kill the corrupt archer and touch the central orb to return.",
};

-- --------------------------------- --
-- Throne of Thunder : Zone 1098 --
-- --------------------------------- --

pack["69465"] = { "Jin'rokh the Breaker",
	"* Throws puddles of Flowing Water: inside you deal +80% damage and +100% healing.",
	"* Exploit the puddles to maximize damage.",
	"* When he channels Lightning Storm, GET OUT of the water immediately or you'll be electrocuted.",
};

bos = { "Council of Elders",
	"* Four troll bosses; Gara'jal possesses one sequentially.",
	"* Concentrate damage on the POSSESSED one: inflict 25% of its health to expel the spirit before its bar reaches 100%.",
	"* Dodge the sand tornadoes and floor totems.",
};
pack["69078"] = bos; pack["69132"] = bos; pack["69134"] = bos; pack["69131"] = bos;

pack["68476"] = { "Horridon",
	"* Four themed doors (Farraki, Gurubashi, Drakkari, Amani); the tank keeps him sideways.",
	"* DPS prioritize the Dinomancers at each door to force them to drop an orb.",
	"* A player clicks the orb to guide Horridon into the active door, destroying it.",
	"* Close all 4 doors, then burn the boss and the war god Jalak.",
};

pack["67977"] = { "Tortos",
	"* Ranged DPS kill the small turtles falling from the ceiling.",
	"* When they run out of health, a player kicks their |cff71d5ff|Hspell:134031|h[shell]|h|r like SOCCER at Tortos.",
	"* This interrupts his lethal Furious Stone Breath.",
	"* Healers use shields when Tortos does Deafening Stomp.",
};

bos = { "Megaera",
	"* Hydra with 3 heads: Fire (red), Frost (blue), Venom (green).",
	"* Killing one head makes two of the opposite element reappear.",
	"* Alternate killing Red and Green to avoid dangerous Frost stacks.",
	"* Players marked with Cinders run to the edges; those with Frost Torrent kite the freezing beam without stepping on fire.",
};
pack["68065"] = bos; pack["70235"] = bos; pack["70247"] = bos;

pack["69712"] = { "Ji-Kun",
	"* Nests on multiple platforms: a team of DPS and a healer jump using the wind currents.",
	"* Kill the hatchlings before Ji-Kun feeds them — if he does, they transform into giant birds.",
	"* Killing hatchlings grants feathers that allow flight.",
	"* Main platform: dodge the green slime and run against the wind during Down Draft.",
};

pack["68036"] = { "Durumu the Forgotten",
	"* The Light Ray Maze: the raid moves TOGETHER following the only safe white path between the disintegrating beams.",
	"* Falling behind or getting ahead = instant death.",
	"* Spectrum phase: three colored beams fixate on players — move them to reveal the invisible adds.",
};

pack["69017"] = { "Primordius",
	"* Immune to normal damage unless you MUTATE.",
	"* Kill the fluid slugs: they leave purple puddles (good) or red (bad).",
	"* Step in the purple puddles to mutate and gain the ability to damage the boss massively.",
	"* Prevent Primordius from absorbing the fluids or he gains permanent buffs.",
};

pack["69427"] = { "Dark Animus",
	"* Energy (Anima) management puzzle across dozens of golems.",
	"* Killing golems transfers their Anima to larger ones — a golem at 100% unleashes lethal abilities.",
	"* Coordinate the kill order to transfer Anima to controllable containers.",
	"* Do NOT let the small golems group up or they'll buff each other.",
};

bos = { "Iron Qon",
	"* Three elemental quilen by turns before fighting on foot.",
	"* Spear phase: avoid the elemental lines dividing the room based on the active quilen.",
	"* Fire phase: stack in subgroups to split the meteor explosions.",
	"* Storm phase: keep your distance to avoid spreading electric shocks.",
};
pack["68078"] = bos; pack["68079"] = bos; pack["68080"] = bos; pack["68081"] = bos;

bos = { "The Twin Consorts",
	"* Lu'lin (Moon) and Suen (Sun) alternate the spotlight.",
	"* Night: Suen vanishes; destroy the star images and dispel deep sleep.",
	"* Day: Suen attacks with stacking fire — the tank kites her near the ice comets to cool her down.",
};
pack["68905"] = bos; pack["68904"] = bos;

pack["68397"] = { "Lei Shen, the Thunder King",
	"* Four electrical conduits in the corners that empower the boss.",
	"* Tanks move him between corners to raise the conduit levels in a BALANCED way.",
	"* At 65% and 30%: invulnerable in the center — split the raid into 4 groups (one per corner).",
	"* The highest-level conduit is DESTROYED at the end of the transition, disabling that zone.",
};

pack["69473"] = { "Ra-Den",
	"* Secret boss: alternates Vita (lightning) and Anima (blood) energy.",
	"* Alternate which orb you destroy each phase.",
	"* If he absorbs Vita: line up to BOUNCE the beam between players in an orderly fashion.",
	"* At 40%: both energies unleashed — pure damage race before environmental damage overwhelms the healers.",
};

-- --------------------------------- --
-- Gate of the Setting Sun : Zone 962 --
-- --------------------------------- --

pack["56906"] = { "Saboteur Kip'tilak",
	"* |cff71d5ff|Hspell:107268|h[Sabotage]|h|r places bombs on players — run to the EDGES to drop them far away.",
	"* When they explode they launch 4 lines of fire in a CROSS (+): don't stand in your allies' paths.",
};

pack["56589"] = { "Striker Ga'dok",
	"* When flying he leaves a line of |cff71d5ff|Hspell:106933|h[Cluster Bomb]|h|r fire: move away from the center.",
	"* While he flies, Stalking Scarabs appear: the tank groups them and DPS AoE them down.",
};

pack["56636"] = { "Commander Ri'mok",
	"* Generates |cff71d5ff|Hspell:107122|h[Viscous Fluid]|h|r that expands: if the boss stands on it, he gains HUGE damage.",
	"* The tank KITES him continuously along the edge, pulling him out of each puddle immediately.",
};

pack["56877"] = { "Raigonn",
	"* Phase 1: immune to body damage — climb onto his head (cannons/jump) and destroy his Weak Point.",
	"* The tank groups the protector adds while DPS break the carapace.",
	"* Phase 2: he enrages, speeds up and fixates players — damage race before he reaches them.",
};

-- --------------------------------- --
-- Temple of the Jade Serpent : Zone 960 --
-- --------------------------------- --

pack["56448"] = { "Wise Mari",
	"* Phase 1 (invulnerable bubble): kill the waves of water elementals.",
	"* Each dead elemental leaves a permanent corrupt puddle: NEVER step on them.",
	"* Phase 2: channels a rotating |cff71d5ff|Hspell:106612|h[Hydro-laser]|h|r — run in the SAME direction as the spin to stay behind it.",
};

bos = { "Lorewalker Stonestep",
	"* Variation 1 (Five Suns): destroy the fire suns; they transform into adds when killed.",
	"* Variation 2 (Strife and Peril): two creatures with shields — STOP attacking the one with MORE charges and switch focus.",
	"* If you hit the one at maximum charges, it unleashes a lethal explosion.",
};
pack["59051"] = bos; pack["59726"] = bos; pack["58826"] = bos;

pack["56732"] = { "Liu Flameheart",
	"* Phase 1 (Dragon): dodge the fire lines crossing from her position.",
	"* Phase 2 (Serpent): leaves a healing debuff on the tank — healers stay alert.",
	"* Phase 3: summons Yu'lon's essence — IGNORE Liu (immune) and defeat the celestial dragon while dodging the fireballs from the ceiling.",
};

pack["56439"] = { "Sha of Doubt",
	"* Applies |cff71d5ff|Hspell:106113|h[Fig of Doubt]|h|r to two players: the healer DISPELS it quickly.",
	"* Copy phase: invulnerable and summons a shadowy clone of EVERY player.",
	"* Stack up and destroy all the clones with AoE before the Sha heals.",
};

-- --------------------------------- --
-- Mogu'shan Palace : Zone 994 --
-- --------------------------------- --

bos = { "Trial of the King",
	"* Three mogu champions in sequential combat.",
	"* Kuai: the quilen Mu'Shiba bites and pins — kill it FIRST.",
	"* Ming: magnet tornadoes pull you in — run in the OPPOSITE direction; interrupt his lightning casts.",
	"* Haiyan: |cff71d5ff|Hspell:123655|h[Shock Meteor]|h|r — the raid STACKS on the marked player to split the impact.",
};
pack["61442"] = bos; pack["61444"] = bos; pack["61445"] = bos;

bos = { "Gekkan",
	"* Five bosses: Gekkan + 4 followers, each giving him a passive buff while alive.",
	"* Kill order: Hexer (healer) -> Ironhide (protector) -> remaining followers -> Gekkan.",
	"* Each time a follower dies, Gekkan enrages +25% — tank uses strong defensives.",
};
pack["61243"] = bos; pack["61337"] = bos; pack["61338"] = bos; pack["61339"] = bos; pack["61340"] = bos;

pack["61398"] = { "Weaponmaster Xin",
	"* Activates mechanical traps across the room as he loses health.",
	"* Crossbows: rows of swords cross the room — stay in the empty gaps.",
	"* Flames: concentric fire circles — get away from red zones before they detonate.",
	"* Final: War Horn activates ALL traps — use speed and burn him ignoring the rest.",
};

-- --------------------------------- --
-- Siege of Niuzao Temple : Zone 1011 --
-- --------------------------------- --

pack["61567"] = { "Vizier Jin'bak",
	"* The central sap puddle grows constantly.",
	"* Step on it briefly to shrink it — without stacking more than 3-4 debuff charges.",
	"* Quickly kill the slugs trying to reach the puddle to enlarge it.",
};

pack["61634"] = { "Commander Vo'jak",
	"* A player throws tar barrels on the mantid waves to slow them down.",
	"* When Vo'jak climbs the bridge, clean his accumulated armor stacks.",
};

pack["61485"] = { "General Pa'valak",
	"* At 65% and 35% he shields himself and summons adds.",
	"* Collect the lit bombs that fall and throw them at his shield to break it quickly.",
};

pack["62205"] = { "Squad Leader Ner'onok",
	"* Flies between wall ends and channels |cff71d5ff|Hspell:121443|h[Gusting Winds]|h|r pushing you backward.",
	"* Advance HIDING behind the parapets and walls to avoid falling into the void.",
	"* Dodge the green slime bombs.",
	"* On arrival: interrupt his cast and burn him.",
};

-- --------------------------------- --
-- Scarlet Monastery (MoP) : Zone 1004 --
-- --------------------------------- --

pack["59789"] = { "Thalnos the Soulrender",
	"* |cff71d5ff|Hspell:115297|h[Evict Soul]|h|r summons the spirits of fallen Scarlet Crusaders: interrupt it or kill them fast.",
	"* Avoid the shadow zones on the ground.",
};

pack["59223"] = { "Brother Korloff",
	"* Dodge his |cff71d5ff|Hspell:113764|h[Flying Kick]|h|r by moving backward.",
	"* His |cff71d5ff|Hspell:114460|h[Firestorm]|h|r generates fire lines: get away from his front.",
};

pack["60040"] = { "Inquisitor Whitemane and Commander Durand",
	"* First you fight Durand; upon defeating him Whitemane appears.",
	"* When she gets low on health, she will REVIVE Durand to 100% with |cff71d5ff|Hspell:113134|h[Mass Resurrection]|h|r.",
	"* Priority: interrupt Whitemane's heals and mind control.",
	"* The tank keeps Durand away while the raid eliminates Whitemane first.",
};

-- Hallow's End: holiday boss of the 10.1.7 rework (ENC 2725, queue into the Scarlet Graveyard). CID 207438 with the LittleWigs kit; head phases and curses from the owner's Wowhead file.
pack["207438"] = { "The Headless Horseman",
	"* Before calling him: on the left side of the room stand five wicker man statues (four small, one big).",
	"* Talking to the BIG one accepts all four curses at once and opens Hard Mode, with its exclusive achievement and better rare loot (the Headless Horseman's Reins drop much more in the first bag of the day).",
	"* Each curse bites only the player who took it.",
	"* The four: |cff71d5ff|Hspell:415629|h[Ember Curse]|h|r opens fire circles under your feet — keep moving, no parking. |cff71d5ff|Hspell:415575|h[Cursed Hot Head]|h|r darkens your screen with hallucinations — stay calm and keep hitting.",
	"* |cff71d5ff|Hspell:415536|h[Shadow Curse]|h|r releases chained souls that chase and frighten you — take them down before they reach you. |cff71d5ff|Hspell:415611|h[Thorny Surprise]|h|r bursts thorns out of the floor — dodge them as they come.",
	"* Failing these mechanics stacks |cff71d5ff|Hspell:415864|h[Wicker Man's Shadow]|h|r: -10% max health per stack; at the 10th you lose the curses to |cff71d5ff|Hspell:418228|h[Wicker Man's Protection]|h|r — and with them the loot bonus of the attempt.",
	"* The fight lives in three identical turns: body to 1% -> it turns immune and the HEAD flies out (the body quietly heals itself back) -> full focus on the Head before it returns.",
	"* On the third turn the head never comes back: kill it and the fight ends.",
	"* While the Head is out, Blazing Heads explode around: don't stack under them.",
	"* On the last body turn arrive the Pulsing Pumpkins: the tank picks them up at once and the group AoEs them down while staying on the boss.",
	"* |cff71d5ff|Hspell:42380|h[Conflagration]|h|r sets a random player on fire for 4 s and sends him running in panic: allies steer clear while he burns.",
	"* The tank faces him with his back to the group: his burning frontal cone punishes everything in front — nobody in his face except the tank.",
	"* |cff71d5ff|Hspell:414844|h[Pumpkin Breath]|h|r comes out of his front: outside the cone except the tank.",
	"* |cff71d5ff|Hspell:415047|h[Vine March]|h|r creeps across the room floor: step off the lines.",
	"* |cff71d5ff|Hspell:415262|h[Insidious Cackle]|h|r pushes in an area: spread out of the hit.",
	"* |cff71d5ff|Hspell:423626|h[Hot Head]|h|r marks a player with the burn aura: keep walking and let it gnaw far from the group."
};

-- --------------------------------- --
-- Scarlet Halls : Zone 1001 --
-- --------------------------------- --

pack["59303"] = { "Brother Braun",
	"* At the start of the zone, pick up a meat bucket and throw it at the dogs to make them fight each other.",
	"* During the boss: dog waves — DPS AoE them down.",
	"* The tank turns him to avoid his frontal arc attack.",
};

pack["58632"] = { "Armsmaster Harlan",
	"* When he activates |cff71d5ff|Hspell:111216|h[Blades of Light]|h|r, he spins across the room chasing players.",
	"* Run to the EDGES and hide behind the stone pillars to block the line of sight.",
};

pack["59150"] = { "Flameweaver Koegler",
	"* Step on the burning book puddles to extinguish them before the whole library burns.",
	"* MANDATORY interrupt of his |cff71d5ff|Hspell:113690|h[Dragon's Breath]|h|r: it disorients and deals immense damage.",
};

-- --------------------------------- --
-- Scholomance : Zone 1007 --
-- --------------------------------- --

bos = { "Instructor Chillheart",
	"* Phase 1: dodge the ice book spinning around the room and the frost wall.",
	"* Phase 2: her soul enters her phylactery — burn it while dodging the cursed souls that explode.",
};
pack["58633"] = bos; pack["58664"] = bos;

pack["59184"] = { "Jandice Barov",
	"* Vanishes and creates dozens of identical clones across the room.",
	"* Find and interact ONLY with the clone that has Jandice's REAL face (fakes have ghostly features).",
};

pack["59153"] = { "Rattlegore",
	"* Gains damage stacks every time he hits the tank.",
	"* Interact with the blue bone piles in the room to get a bone shield that counteracts it.",
};

pack["58722"] = { "Lilian Voss",
	"* Alternates between her physical body and her burning shadow soul.",
	"* The player fixated by her soul KITES away from the group to avoid spreading the purple fire.",
};

pack["59080"] = { "Darkmaster Gandling",
	"* Teleports players to individual trial rooms full of zombies.",
	"* The teleported player quickly kills their room's adds (or dispels them if a healer) to open the door.",
};

-- --------------------------------- --
-- Shado-Pan Monastery : Zone 959 --
-- --------------------------------- --

pack["56747"] = { "Gu Cloudstrike",
	"* When the dragon charges energy (Storm Phase): STOP attacking Gu and focus the DRAGON.",
	"* If you hit Gu while his electric shield is up, you cause explosions that kill your allies.",
};

pack["56541"] = { "Master Snowdrift",
	"* If he activates his defensive stance, do NOT hit him from the front.",
	"* Dodge his spinning kicks by exiting his circle.",
	"* Quickly destroy the smoke copies he summons from the dojo corners.",
};

pack["56719"] = { "Sha of Violence",
	"* Interrupt his |cff71d5ff|Hspell:106872|h[Disorienting Smash]|h|r cast.",
	"* When he uses Smouldering Strike, he becomes immune to critical damage: leave the grey clouds to recover your damage.",
};

pack["56884"] = { "Taran Zhu",
	"* Taking damage fills your HATE bar, which reduces your accuracy and damage.",
	"* Use the special MEDITATE button to empty the bar — it roots you for a few seconds, find a safe moment.",
	"* Interrupt |cff71d5ff|Hspell:107356|h[Rising Hate]|h|r or it deals heavy damage.",
};

-- --------------------------------- --
-- Stormstout Brewery : Zone 961 --
-- --------------------------------- --

pack["56637"] = { "Ook-Ook",
	"* Throws rolling barrels across the room — dodge them.",
	"* BETTER: click on a barrel to RIDE it and steer it into the boss.",
	"* Slamming a barrel into Ook-Ook deals heavy damage and increases his damage taken.",
};

pack["56717"] = { "Hoptallus",
	"* Channels a |cff71d5ff|Hspell:112992|h[Whirlwind]|h|r that destroys melee — stay away.",
	"* During the rabbit waves: pick up the golden hammers from the floor to activate a special button that instantly clears the pests.",
};

pack["59479"] = { "Yan-Zhu the Uncasked",
	"* If he marks you with the |cff71d5ff|Hspell:106546|h[Bloat]|h|r beam: JUMP constantly to break the bubbles before they suffocate you.",
	"* Dodge the yeast walls and the bubbling elementals that try to heal the boss.",
};

-- --------------------------------- --
-- World bosses --
-- --------------------------------- --

pack["62346"] = { "Galleon",
	"* Giant mushan with a cannon: fires artillery bursts at random spots.",
	"* The raid stays very SPREAD and moves fast to exit the fire circles before impact.",
	"* Armed hozens leap from his back: the off-tank grabs them immediately and DPS AoE them down.",
	"* Drops the Scaly Regalian mushan mount.",
};

pack["60491"] = { "Sha of Anger",
	"* Kun-Lai: |cff71d5ff|Hspell:119622|h[Bellow of Rage]|h|r infects several players with mind control.",
	"* DPS use mass CC (stuns, roots) on dominated allies so they don't kill the raid.",
	"* Clouds of Anger on the ground: do NOT step in them — they silence anyone inside.",
	"* Drops the coveted Heavenly Onyx Cloud Serpent mount.",
};

pack["69099"] = { "Nalak, the Storm Lord",
	"* Isle of Thunder: |cff71d5ff|Hspell:136339|h[Lightning Tether]|h|r chains players with a beam.",
	"* Chained players run in the OPPOSITE direction from the boss to break the link — near Nalak the beam is lethal.",
	"* When he raises environmental damage with storms: healers use their strongest AoE healing CDs.",
	"* Drops the Thundering Onyx Cloud Serpent.",
};

pack["69161"] = { "Oondasta",
	"* Isle of Giants: the raid-killer for its absurd damage.",
	"* |cff71d5ff|Hspell:137504|h[Crush]|h|r reduces the tank's armour by 99%: MANDATORY two tanks swapping.",
	"* Alpha Line: beam jumps to the nearest player DOUBLING damage with each bounce — stay fully spread, minimum 10 yards between players.",
	"* |cff71d5ff|Hspell:137457|h[Piercing Roar]|h|r silences the raid.",
	"* Drops the Cobalt Primordial Direhorn.",
};

pack["71952"] = { "Chi-Ji",
	"* Celestial (Timeless Isle, the Crane): fire blasts and light cranes crossing the arena.",
	"* Dodge the birds' path.",
	"* Move away from the boss when he uses his area song.",
};

pack["71954"] = { "Niuzao",
	"* Celestial (Timeless Isle, the Ox): an endurance test.",
	"* Charges players dealing MASSIVE damage that is reduced the more total health the target has.",
	"* The tank points him away from the raid and uses strong mitigations during his earth stomps.",
};

pack["72057"] = { "Ordos",
	"* Yaungol Fire God (Timeless Isle, upper shrine).",
	"* |cff71d5ff|Hspell:144688|h[Ancient Magma]|h|r: meteors dealing millions — the ENTIRE raid stacks in one spot to split the impact.",
	"* |cff71d5ff|Hspell:144695|h[Soul of Fire]|h|r: the marked player runs IMMEDIATELY away from the raid to explode alone.",
};

pack["71953"] = { "Xuen",
	"* Celestial (Timeless Isle, the Tiger): extremely agile.",
	"* Constantly jumps at ranged players leaving energy lines behind.",
	"* The raid spreads; tanks move him when the arena fills with electric fissures.",
};

pack["71955"] = { "Yu'lon",
	"* Celestial (Timeless Isle, the Serpent): classic dragon positioning.",
	"* NEVER stand in front of her head (fire breath) or behind (tail swipes).",
	"* DPS keep moving to avoid burning in the lava puddles.",
};

bos = { "Zandalari Warbringers",
	"* World bosses (various zones): |cff71d5ff|Hspell:138042|h[Meteor Shower]|h|r — rocks from the sky, move.",
	"* |cff71d5ff|Hspell:138040|h[Horrific Visage]|h|r: AoE fear.",
};
pack["69768"] = bos; pack["69769"] = bos; pack["69841"] = bos; pack["69842"] = bos;

P.en = en;