--[[
	Bosses_Legion_en.lua
		Legion pack data, GENERATED with scripts/generar-pack-legion.mjs from the Legion DBM modules in _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Telegraphic honest tactics (DBM hint-type); fine prose gets hand-curated later. Names: journal corpus (nombres-jefe) + world boss map.
		Orden del propietario 2026-10-15: los cuatro locales del tirón.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Antorus, the Burning Throne : Zona 1712 --
-- --------------------------------- --

pack["121975"] = { "Aggramar",
	"* |cff71d5ff|Hspell:245990|h[Taeshalach Reach]|h|r: stacking tank debuff - the tanks trade him before the eighth stack and the traded tank steps out of the next swing.",
	"* |cff71d5ff|Hspell:245458|h[Foe Breaker]|h|r: during his technique he plants a foe-breaking thrust - the tanks alternate the swings and the taking tank braces with a defensive.",
	"* |cff71d5ff|Hspell:245463|h[Flame Rend]|h|r: the rend swings fel flame in a cone - point him away from the raid, the melee stays behind, and the tanks trade the rend too.",
	"* |cff71d5ff|Hspell:245994|h[Scorching Blaze]|h|r: flames cling to marked players - the marked scatter from each other until the flames burn out.",
};
pack["122104"] = { "Portal Keeper Hasabel",
	"* |cff71d5ff|Hspell:244016|h[Reality Tear]|h|r: stacking tank debuff - the tanks trade her before the tears stack up.",
	"* |cff71d5ff|Hspell:244677|h[Transport Portal]|h|r: she rips open the transport portals to her platforms - split the raid through the portals and break the keepers fast.",
	"* |cff71d5ff|Hspell:243983|h[Collapsing World]|h|r: she collapses the world around her - brace each collapse and count the hits as they land.",
	"* |cff71d5ff|Hspell:244000|h[Felstorm Barrage]|h|r: fel beams hammer the chamber in long rows - get far from the lines before they fire.",
};
pack["122366"] = { "Varimathras",
	"* |cff71d5ff|Hspell:243960|h[Shadow Strike]|h|r: a heavy shadow strike lands on the tank every few seconds - the tanks trade him through it.",
	"* |cff71d5ff|Hspell:243961|h[Misery]|h|r: the misery rides the tank that took the strike - the fresh tank taunts whenever the torment element shifts.",
	"* |cff71d5ff|Hspell:243967|h[Torment of Flames]|h|r: while the flames torment rules, the raid burns steadily - brace the window with defensive cooldowns.",
	"* |cff71d5ff|Hspell:243976|h[Torment of Frost]|h|r: then the frost torment takes over and chills the whole raid - brace again and keep the misery off a single tank.",
};
bos = { "Antoran High Command",
	"* |cff71d5ff|Hspell:244892|h[Exploit Weakness]|h|r: stacking tank debuff - the tanks trade before the exploit stacks up.",
	"* |cff71d5ff|Hspell:244172|h[Psychic Assault]|h|r: the psychic assault grinds stacks onto everyone - watch your own stacks and step out over ten.",
	"* |cff71d5ff|Hspell:253040|h[Assume Command]|h|r: the next commander assumes command of the platform - switch onto the fresh commander and handle their kit.",
	"* |cff71d5ff|Hspell:244141|h[Out of Pod]|h|r: a pod cracks open and its rider climbs out - burst the rider down while they stand outside their armor.",
};
pack["122369"] = bos; pack["122333"] = bos; pack["122367"] = bos;

bos = { "The Coven of Shivarra",
	"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: one of the three activates - the tank switches onto her and the raid holds the interrupts on her chant.",
	"* |cff71d5ff|Hspell:244899|h[Fiery Strike]|h|r: the fire one pounds the tank with blazing fists - the tanks trade her before the strikes stack.",
	"* |cff71d5ff|Hspell:245518|h[Flash Freeze]|h|r: the frost one flash-freezes the tank's plate - trade the tanks and the frozen one steps away until the frost cracks.",
	"* |cff71d5ff|Hspell:245634|h[Ground Hazards]|h|r: the coven scorch and chill the floor - step out of whatever glows underfoot.",
};
pack["122468"] = bos; pack["122467"] = bos; pack["122469"] = bos;

bos = { "Felhounds of Sargeras",
	"* |cff71d5ff|Hspell:251356|h[Focusing Power]|h|r: the hounds focus their power together for 15 seconds - brace through the channel, it lights the fuse on their big casts.",
	"* |cff71d5ff|Hspell:251448|h[Burning Maw]|h|r: a hound chomps the tank with its burning maw - the tanks trade the bites before the burn climbs.",
	"* |cff71d5ff|Hspell:244768|h[Desolate Gaze]|h|r: the desolate gaze latches onto a player - the marked runs out of the raid and holds the gaze away until it ends.",
	"* |cff71d5ff|Hspell:244057|h[Enflamed Corruption]|h|r: enflamed corruption erupts from the blazing hound - a wave of fel corruption washes over the platform, brace it with cooldowns.",
};
pack["122477"] = bos; pack["122135"] = bos;

pack["124445"] = { "Eonar the Life-Binder",
	"* |cff71d5ff|Hspell:250140|h[Foul Steps]|h|r: the fel corruption seeps up through the deck and stacks foul steps on whoever stands in it - move to clean deck and keep every player's stacks low.",
	"* |cff71d5ff|Hspell:248332|h[Rain of Fel]|h|r: the fel rain marks players from above - the marked step aside from everyone and let the rain drop where they stand apart.",
	"* |cff71d5ff|Hspell:246888|h[Warp In]|h|r: reinforcements warp in around the hull - burst each warp-in down early so the decks never flood with adds.",
	"* |cff71d5ff|Hspell:250048|h[Life Force]|h|r: she channels her life force through the hull - brace each surge and keep the fight rolling through it.",
};
pack["122450"] = { "Garothi Worldbreaker",
	"* |cff71d5ff|Hspell:246220|h[Fel Bombardment]|h|r: the cannon pins the tank with the bombardment - the fresh tank steps in and the old tank walks the burning splash away from the raid.",
	"* |cff71d5ff|Hspell:244410|h[Decimation]|h|r: the decimation cannon charges a raid-wide blast - brace it together and keep spread before it fires.",
	"* |cff71d5ff|Hspell:244152|h[Apoc Drive]|h|r: the apocalypse drive spins up on one cannon - switch and break that cannon down inside its 30 second cast.",
	"* |cff71d5ff|Hspell:244969|h[Eradication]|h|r: if the drive finishes, the eradication beam scythes the whole platform - run clear of the beam's line and brace with everything you have.",
};
pack["124158"] = { "Imonar the Soulhunter",
	"* |cff71d5ff|Hspell:247367|h[Shocklance]|h|r: his shocklance jabs the tank constantly - trade the lances before the stacks bite.",
	"* |cff71d5ff|Hspell:247687|h[Sever]|h|r: the sever shears plate open with each hit - the tanks trade and the healers mind the severed.",
	"* |cff71d5ff|Hspell:247552|h[Sleep Canister]|h|r: a sleep canister latches onto a player - the marked runs away from the raid and the healers dispel the sleep before it knocks them out.",
	"* |cff71d5ff|Hspell:247565|h[Slumber Gas]|h|r: slumber gas pools around the sleepers - stand clear of the gas itself and of any player drifting off inside it.",
};
pack["122578"] = { "Kin'garoth",
	"* |cff71d5ff|Hspell:244312|h[Forging Strike]|h|r: his forging strike hammers the tank - brace with a defensive and let the fresh tank take the next hammer.",
	"* |cff71d5ff|Hspell:248375|h[Shattering Strike]|h|r: when his forge arms rise the shattering strike splits the ground - watch the forge platforms and step off each split.",
	"* |cff71d5ff|Hspell:246779|h[Diabolic Bomb]|h|r: diabolic bombs lob into the field and detonate for huge damage - soak the blast spot together rather than eating the full burst.",
	"* |cff71d5ff|Hspell:254926|h[Reverberating Strike]|h|r: the reverberating strike hurls at a player and ripples outward - the marked moves off and everyone nearby backs up from the ripples.",
};
pack["124828"] = { "Argus the Unmaker",
	"* |cff71d5ff|Hspell:248499|h[Sweeping Scythe]|h|r: stacking tank debuff - the tanks trade him before the third stack.",
	"* |cff71d5ff|Hspell:258838|h[Soul Rending Scythe]|h|r: as the fight nears its end his scythes rend souls across the whole raid - healers ramp up through the rends and nobody lets their stacks linger.",
	"* |cff71d5ff|Hspell:258039|h[Deadly Scythe]|h|r: in the final stretch every scythe turns deadly - tanks brace with defensives and rotate constantly, this one kills outright.",
	"* |cff71d5ff|Hspell:248167|h[Ground Hazards]|h|r: the soul storms scorch the platform - step out of whatever glows underfoot.",
};

-- --------------------------------- --
-- The Emerald Nightmare : Zona 1520 --
-- --------------------------------- --

pack["100497"] = { "Ursoc",
	"* |cff71d5ff|Hspell:197943|h[Overwhelm]|h|r: two tanks trade the boss every second cast - each Overwhelm stack cranks up the following Rend Flesh, and the tank who just took it moves away to shed the stack while the fresh one takes over.",
	"* |cff71d5ff|Hspell:197942|h[Rend Flesh]|h|r: lands right after the second Overwhelm stack; with a fresh tank on the boss it is a non-event, on a tank carrying stacks it can kill - taunts on time, every time.",
	"* |cff71d5ff|Hspell:198006|h[Focused Gaze]|h|r: Ursoc marks one player for a charge; the marked player runs him along the wall while the rest of the raid stays clear of the path.",
	"* |cff71d5ff|Hspell:198388|h[Blood Frenzy]|h|r: he hits harder and harder as the fight drags on (the frenzy stacks), so commit every healing cooldown and heroism early and do not let the fight drag.",
};
pack["102672"] = { "Nythendra",
	"* |cff71d5ff|Hspell:204463|h[Volatile Rot]|h|r: whoever gets it walks to the edge of the room and lets the spore burst pop away from the group; standing inside your own burst clears the rot instead of spreading it.",
	"* |cff71d5ff|Hspell:204504|h[Infested]|h|r: the rot stacks spread to anyone standing close, and they burst outward when the debuff ticks off - the raid spreads, and no one stands near the tanks, who always carry the most stacks.",
	"* |cff71d5ff|Hspell:203096|h[Rot]|h|r: a breath cone that leaves more rot stacks behind - melee fights from behind her and everyone steps out of the spore spray whenever she turns.",
	"* |cff71d5ff|Hspell:203552|h[Heart of Swarm]|h|r: when the grove starts thrumming, rings of rot burst out from her body again and again - run out with each ring and walk back in between the pulses.",
};
pack["102679"] = { "Dragons of Nightmare",
	"* |cff71d5ff|Hspell:204720|h[Nightmare Dragon]|h|r: the four corrupted dragons (Ysondre, Emeriss, Lethon, Taerar) trade places - only two are on the ground at any time, focus the active pair and the pair switches out when one of them falls.",
	"* |cff71d5ff|Hspell:204100|h[Shades of Taerar]|h|r: while Taerar is up he splits into three shades - assign one to each melee group and burn all three in sync, or he reforms early and splits again.",
	"* |cff71d5ff|Hspell:203110|h[Slumbering Nightmare]|h|r: the sleep clouds drop players into the nightmare realm; the assigned healer goes in with them and wakes each sleeper with a dispel before the sleep finishes.",
	"* |cff71d5ff|Hspell:203028|h[Corrupted Breath]|h|r: a long breath from the front of the dragon - stay behind the breathing dragon and spread out so the nightmare marks never land twice on the same target.",
};
pack["103769"] = { "Xavius",
	"* |cff71d5ff|Hspell:224649|h[Tormenting Swipe]|h|r: a big cleave in front of him - the tank points him away from the raid and steps out of each swing with a defensive, because the swipes hit much harder in phase two.",
	"* |cff71d5ff|Hspell:206651|h[Darkening Soul]|h|r: stacks of nightmare corruption that drag the player under when they tick out - the assigned healer cleansing debuffs keeps everyone below the point of being pulled under.",
	"* |cff71d5ff|Hspell:209158|h[Blackening Soul]|h|r: the phase-two version also explodes into nightmare torment around its carrier - players spread out, stagger who takes the next one, and step away from the group before it pops.",
	"* |cff71d5ff|Hspell:209443|h[Nightmare Infusion]|h|r: Xavius keeps empowering himself while the fight drags through phase two; end the fight promptly before the infusions stack his damage out of control.",
};
pack["105393"] = { "Il'gynoth, Heart of Corruption",
	"* |cff71d5ff|Hspell:210984|h[Eye of Fate]|h|r: the giant eye at the heart of the clearing shoots at random raiders - during the outer phase, healers keep on top of those hits and the raid spreads between the eyes.",
	"* |cff71d5ff|Hspell:215234|h[Nightmarish Fury]|h|r: when the outer tentacles are gone the heart opens: only players cleansed of corruption may go in - cleanse, dive through the dream bloom, kill the inner eye, and get out before the heart detonates.",
	"* |cff71d5ff|Hspell:210931|h[Nightmare Gaze]|h|r: the dark eyes cast wide gaze beams across the platform - stay out of the beams and burn the dark eyes down fast, because their damage adds up while they live.",
	"* |cff71d5ff|Hspell:210099|h[Fixate]|h|r: the nightmare horrors fixate on one player; the haunted player kites them in wide circles while the raid burns the horror from range.",
};
pack["106087"] = { "Elerethe Renferal",
	"* |cff71d5ff|Hspell:212512|h[Web Wrap]|h|r: in spider form she encases a player in webs; melee beats the cocoon open fast and the raid spreads so the next wrap lands on a fresh target.",
	"* |cff71d5ff|Hspell:215582|h[Raking Talons]|h|r: talon strikes stack hard on the boss tank - the two tanks trade her after each pair of stacks and the tank who just had them steps away.",
	"* |cff71d5ff|Hspell:210326|h[Spider Form]|h|r: she alternates between spider form (frontal webs and cleaves) and raven form (wind gusts that shove players toward the edges) - read the transition and reposition early.",
	"* |cff71d5ff|Hspell:212364|h[Feeding Time]|h|r: swarms of broodlings spawn to feed on the marked player; the marked player kites them away from the raid while everyone else burns the swarm from safe ground.",
};
pack["104636"] = { "Cenarius",
	"* |cff71d5ff|Hspell:210279|h[Creeping Nightmares]|h|r: anyone near the boss while he channels takes stacking nightmare hits - melee steps out of range during the channel and walks back in once it ends.",
	"* |cff71d5ff|Hspell:213162|h[Nightmare Blast]|h|r: in the corrupted Malfurion phase the blasts land on marked players - whoever gets marked leaves the group at once, because the blast leaves an infested crater behind.",
	"* |cff71d5ff|Hspell:214529|h[Spear of Nightmares]|h|r: in the final phase Cenarius hurls nightmare spears that a soak group must catch together - the soak group runs to each spear while the rest of the raid stays clear of it.",
	"* |cff71d5ff|Hspell:210290|h[Nightmare Brambles]|h|r: rows of thorns grow through the area and launch anyone caught in front of them - stop moving while the brambles rise and step over them once they settle.",
};

-- --------------------------------- --
-- The Nighthold : Zona 1530 --
-- --------------------------------- --

pack["101002"] = { "Krosus",
	"* |cff71d5ff|Hspell:206677|h[Searing Brand]|h|r: stacking tank debuff - the two tanks trade him before the fourth stack and the tank who just held it steps out of the follow-up hit.",
	"* |cff71d5ff|Hspell:205344|h[Expel: Orb of Destruction]|h|r: he launches a fel orb that chases one player across the bridge - the marked player drags it to the far end of the bridge and lets it pop there.",
	"* |cff71d5ff|Hspell:205862|h[Slam]|h|r: every slam shatters another chunk of the bridge off - the raid moves to the section he is not slamming, keeps well clear of the crumbling edge, and braces the shockwave with a cooldown.",
	"* |cff71d5ff|Hspell:205368|h[Fel Beam]|h|r: a beam of fel energy he sweeps toward one side of the bridge - dodge across the beam and settle on fresh ground while it burns.",
};
pack["102263"] = { "Skorpyron",
	"* |cff71d5ff|Hspell:204275|h[Arcanoslash]|h|r: a heavy tank hit that supercharges him when it lands - the tank soaks it with a defensive and the raid keeps him moving between casts.",
	"* |cff71d5ff|Hspell:204372|h[Call of Scorpid]|h|r: scorpid adds skitter out of the cracks - AoE them down fast, before their venom stacks make the room unplayable.",
	"* |cff71d5ff|Hspell:204292|h[Broken Shard]|h|r: crystal shards jutting from the ground - give them room so the shatter flings fragments wide; these same shards are the cover you hide behind when he starts the Shockwave.",
	"* |cff71d5ff|Hspell:204459|h[Vulnerable]|h|r: anyone caught by a shatter carries a fragile debuff for 15 seconds that amplifies the next arcane hit - spread out and let it fall off before his next salvo.",
};
pack["103685"] = { "Tichondrius",
	"* |cff71d5ff|Hspell:216024|h[Volatile Wound]|h|r: stacking tank debuff - the tanks trade him before the stacks pile up and the new tank steps in on time.",
	"* |cff71d5ff|Hspell:208230|h[Feast of Blood]|h|r: he starts to drain the raid's blood - everyone within 30 yards of him backs off out of range, or he feasts himself back to health.",
	"* |cff71d5ff|Hspell:206480|h[Carrion Plague]|h|r: a plague debuff that hops to anyone standing close - the plague carriers stay clear of the rest of the raid until it is gone.",
	"* |cff71d5ff|Hspell:212794|h[Brand of Argus]|h|r: he brands four players with the mark - the branded spread out and keep distance between each other while the brand still burns.",
};
pack["103758"] = { "Star Augur Etraeus",
	"* |cff71d5ff|Hspell:205984|h[Gravitational Pull]|h|r: the tank carrying the active phase (frost, fel or void) gets yanked toward him - the other tank taunts and carries the boss so the stacks never settle twice on the same tank.",
	"* |cff71d5ff|Hspell:205429|h[Star Sign: Crab]|h|r: a yellow sign - players who share it group up while everyone with a different sign moves away from them, and the two groups stay apart.",
	"* |cff71d5ff|Hspell:216344|h[Star Sign: Dragon]|h|r: a blue sign - same rule: match with players of the same sign, scatter away from everyone with a different one.",
	"* |cff71d5ff|Hspell:216345|h[Star Sign: Hunter]|h|r: a green sign - same rule again: pair up only with the same sign and give the other signs a wide berth.",
};
pack["104415"] = { "Chronomatic Anomaly",
	"* |cff71d5ff|Hspell:206607|h[Chronometric Particles]|h|r: stacking tank debuff - the tanks trade the anomaly before the stacks get heavy.",
	"* |cff71d5ff|Hspell:219823|h[Power Overwhelming]|h|r: the anomaly keeps the stacks it gains with every time shift - the longer the fight the harder everything hits, so push the damage and end it before the stacks win.",
	"* |cff71d5ff|Hspell:207012|h[Normal Time]|h|r: the room flows at normal speed again - the window to burn him down at full pace.",
	"* |cff71d5ff|Hspell:207013|h[Fast Time]|h|r: time races - every cast, bomb and beam arrives sooner than natural, so dodge a beat early.",
};
pack["104154"] = { "Gul'dan",
	"* |cff71d5ff|Hspell:206222|h[Bonds of Fel]|h|r: he chains players (and the tank) together - the bonded pair breaks apart, keeps away from the rest of the raid while the link burns, and the fresh tank taunts the boss.",
	"* |cff71d5ff|Hspell:208802|h[Soul Corrosion]|h|r: the fel from the bonds scorches deeper with every stack - the carriers peel off early so the corrosion never stacks out of control.",
	"* |cff71d5ff|Hspell:221606|h[Flames of Sargeras]|h|r: he hurls fel flames at players - the marked ones run out of the raid and leave the flames where they land.",
	"* |cff71d5ff|Hspell:206219|h[Liquid Hellfire]|h|r: lumps of molten fel he slams down - keep the puddles away from the center of the room, because they grow and burn hotter as the fight drags on.",
};
pack["104288"] = { "Trilliax",
	"* |cff71d5ff|Hspell:206641|h[Arcano Slash]|h|r: stacking tank hit - the tanks trade him after the first slash of each cycle.",
	"* |cff71d5ff|Hspell:206488|h[Arcane Seepage]|h|r: arcane sludge oozes on the floor - step out of it, because standing in the seepage burns.",
	"* |cff71d5ff|Hspell:206560|h[Cleaner Mode]|h|r: his cleaner side takes over for 45 seconds - the room fills with his sowing trails, so stand on clean ground and stay out of his path.",
	"* |cff71d5ff|Hspell:206788|h[Toxic Slice]|h|r: he sprays toxic shards (while cleaning) - the spray leaves seeping puddles behind, so dodge the spray and watch the ground it painted.",
};
pack["104881"] = { "Spellblade Aluriel",
	"* |cff71d5ff|Hspell:212492|h[Annihilate]|h|r: she swings the blade at the tank for two hard hits - the tank soaks it with a cooldown and the tanks trade her while the enchant lasts.",
	"* |cff71d5ff|Hspell:212647|h[Frostbitten]|h|r: the marked frost carriers leave frosting ticks on anyone who lingers near them - give the carriers a wide berth and the stacks fall away.",
	"* |cff71d5ff|Hspell:213864|h[Frost Phase]|h|r: she enchants the blade with frost - icy patches and frozen orbs bloom around the room; spread out and mind where the frost settles.",
	"* |cff71d5ff|Hspell:213867|h[Fire Phase]|h|r: the blade catches fire instead - burning patches trail her steps and her swings, so keep moving and leave the fires behind you.",
};
pack["106643"] = { "Grand Magistrix Elisande",
	"* |cff71d5ff|Hspell:209615|h[Ablation]|h|r: stacking tank debuff - the tanks trade her before the stacks catch up.",
	"* |cff71d5ff|Hspell:209973|h[Ablating Explosion]|h|r: the boss tank carries the bomb - the tank walks her to the edge of the room and stands away so the blast detonates without catching the raid.",
	"* |cff71d5ff|Hspell:209598|h[Conflexive Burst]|h|r: marked players hold a burst that pops hard on expiry - the marked spread out and stay clear of everyone until the burst is spent.",
	"* |cff71d5ff|Hspell:209971|h[Ablative Pulse]|h|r: an interruptable cast she pumps out - cut it whenever one is free, otherwise the pulse hammers the whole raid.",
};
pack["104528"] = { "High Botanist Tel'arn",
	"* |cff71d5ff|Hspell:218503|h[Recursive Strikes]|h|r: stacking tank debuff - the tanks trade him before the third swing.",
	"* |cff71d5ff|Hspell:218806|h[Flare]|h|r: a solar blast he hurls straight at the tank - the off-tank and anyone hugging him step aside, because the flares repeat fast.",
	"* |cff71d5ff|Hspell:218927|h[Grace of Nature]|h|r: he blooms a grove that heals and strengthens him while he stands in it - the tank drags him out of the bloom and the raid burns it down.",
	"* |cff71d5ff|Hspell:218438|h[Controlled Chaos]|h|r: he channels and spawns crawling chaos zones - watch the ground as the zones spread and move to clean tiles.",
};

-- --------------------------------- --
-- Tomb of Sargeras : Zona 1676 --
-- --------------------------------- --

pack["115844"] = { "Goroth",
	"* |cff71d5ff|Hspell:231363|h[Burning Armor]|h|r: his armor burns hotter with every swing he takes - the tanks trade him before the burn climbs and the burning tank steps back out of the follow-up hits.",
	"* |cff71d5ff|Hspell:233055|h[Infernal Spike]|h|r: spikes of infernal rock erupt up under players - step off the rising ground and mind where the spikes settle, they never melt.",
	"* |cff71d5ff|Hspell:233272|h[Shattering Star]|h|r: a colossal beam he fires through a player - the target breaks away from the raid, and nobody stands in the beam's line or behind a spike it will shatter.",
	"* |cff71d5ff|Hspell:232249|h[Crashing Comet]|h|r: comets crash down behind marked players - the marked run each comet out to the side and let it land in its burning crater away from everyone.",
};
pack["116407"] = { "Harjatan",
	"* |cff71d5ff|Hspell:231998|h[Jagged Abrasion]|h|r: his shell shreds the tank with every hit - the tanks trade him before the fourth stack.",
	"* |cff71d5ff|Hspell:233429|h[Frigid Blows]|h|r: his blows frost over as the buff stacks on him - push him down while the buff is still climbing and brace the heaviest swings.",
	"* |cff71d5ff|Hspell:231729|h[Aqueous Burst]|h|r: the wavemender adds burst water around their targets and patch him up - the player being burst moves away from the splash and the raid burns the wavemenders first.",
	"* |cff71d5ff|Hspell:234016|h[Driven Assault]|h|r: the gladiator adds fixate on a player and charge - the fixated player runs the charge off and the raid peels the add fast.",
};
pack["115767"] = { "Mistress Sassz'ine",
	"* |cff71d5ff|Hspell:230201|h[Burden of Pain]|h|r: she binds a tank under the burden of pain - the tanks trade her while the burden grinds and the healers stay glued to the burdened one.",
	"* |cff71d5ff|Hspell:230139|h[Hydra Shot]|h|r: she fires a volley from all four heads at marked players - the marked spread apart and out of the raid while the shots land.",
	"* |cff71d5ff|Hspell:230273|h[Dark Depths]|h|r: she floods patches of the floor with dark depths - the black pools rot and smother anyone standing inside them, so walk around and never linger.",
	"* |cff71d5ff|Hspell:230214|h[Burden Pulse]|h|r: the burden's pain pulses out across the room - brace every pulse with a cooldown while the burdened tank keeps the weight away from the group.",
};
pack["116939"] = { "Fallen Avatar",
	"* |cff71d5ff|Hspell:236494|h[Desolate]|h|r: his desolate touch stacks on the tank - the tanks trade him before the stacks get dangerous.",
	"* |cff71d5ff|Hspell:233556|h[Corrupted Matrix]|h|r: he teleports across to the corrupted matrix - the tank moves with him and re-anchors the fight by the beam before it fires again.",
	"* |cff71d5ff|Hspell:240728|h[Tainted Essence]|h|r: his shadowy blasts taint the essence of whoever they clip - the tainted step out until the taint fades and never let the stacks climb.",
	"* |cff71d5ff|Hspell:234059|h[Unbound Chaos]|h|r: his unbound chaos roams the platform carving burning trails - watch the ground and dodge around the streams.",
};
bos = { "Demonic Inquisition",
	"* |cff71d5ff|Hspell:233426|h[Scythe Sweep]|h|r: the demon sweeps its scythe in a wide arc in front of it - the tank points it away from the raid and steps out of each sweep.",
	"* |cff71d5ff|Hspell:248713|h[Soul Corruption]|h|r: the corruption digs in deeper with every stack - keep each player's stacks under ten by rotating who carries it.",
	"* |cff71d5ff|Hspell:233104|h[Torment]|h|r: torment builds on the imprisoned players while they wait - break the captives out before the torment maxes out.",
	"* |cff71d5ff|Hspell:233431|h[Quills]|h|r: calcified quills burst around a player - the marked player moves away from the raid and lets the quills fly loose.",
};
pack["116691"] = bos; pack["116689"] = bos;

bos = { "Sisters of the Moon",
	"* |cff71d5ff|Hspell:239264|h[Lunar Fire]|h|r: her lunar fire stacks on the tank - the tanks trade her before the stacks double up.",
	"* |cff71d5ff|Hspell:236357|h[Font of Elune]|h|r: the font of elune stacks up and flips a player's moon color - brace the flip and heal through the change.",
	"* |cff71d5ff|Hspell:236550|h[Discorporate]|h|r: when the tank's moon color no longer matches hers, the tank discorporates - the fresh tank taunts and the pair swaps on every flip.",
	"* |cff71d5ff|Hspell:236596|h[Rapid Shot]|h|r: she fires a rapid volley at a player - the targeted player runs away from the raid while the arrows fall in.",
};
pack["118523"] = bos; pack["118374"] = bos; pack["118518"] = bos;

pack["117269"] = { "Kil'jaeden",
	"* |cff71d5ff|Hspell:239932|h[Fel Claw]|h|r: the fel claw smashes the tank away across the platform - point him away from the raid, brace the claw with a defensive, and the fresh tank taunts after.",
	"* |cff71d5ff|Hspell:236710|h[Erupting Reflections]|h|r: he tags players and their shadow reflections erupt under their feet - the marked move off the spot fast and everyone stays clear of the eruptions.",
	"* |cff71d5ff|Hspell:235059|h[Rupturing Singularity]|h|r: a singularity rips open and tears the platform toward it - mind the warning, the blast drags and flings everyone, so anchor on the far side and be ready to fly.",
	"* |cff71d5ff|Hspell:238430|h[Bursting Dreadflame]|h|r: he hurls dreadflames down across the platform - keep moving off the fresh blooms and spread apart, every flame bursts outward.",
};
pack["118289"] = { "Maiden of Vigilance",
	"* |cff71d5ff|Hspell:235117|h[Unstable Soul]|h|r: your soul destabilizes to light or fel - move onto the matching infuser and hold your color until the soul settles.",
	"* |cff71d5ff|Hspell:235267|h[Mass Instability]|h|r: the mass instability detonates across the whole platform - brace it with a cooldown and keep some spread between players.",
	"* |cff71d5ff|Hspell:235271|h[Infusion]|h|r: she channels an infusion of light or fel - hold your matching color and soak the blast together on the right side.",
	"* |cff71d5ff|Hspell:236061|h[Essence Fragments]|h|r: fragments of essence scatter after every big hit - pick them up to steady an unstable soul.",
};
bos = { "The Desolate Host",
	"* |cff71d5ff|Hspell:236548|h[Torment]|h|r: the torments build fast on players inside the spirit realm - rotate the spirit-realm duty around so no one's stacks creep too high.",
	"* |cff71d5ff|Hspell:236542|h[Sundering Doom]|h|r: the doom channels and then detonates a massive blast - the raid gathers up to split it and then runs clear of the shockwave while the fresh tank takes over.",
	"* |cff71d5ff|Hspell:236544|h[Doomed Sundering]|h|r: its counterpart from the other side of the veil - the other tank carries that bomb, and neither one ever lands twice on the same tank.",
	"* |cff71d5ff|Hspell:235924|h[Spear of Anguish]|h|r: spears of anguish nail players down with a heavy bleed - the marked run out of the raid and the anguish bleeds itself out.",
};
pack["118460"] = bos; pack["118462"] = bos; pack["119072"] = bos;


-- --------------------------------- --
-- Trial of Valor : Zona 1648 --
-- --------------------------------- --

bos = { "Odyn",
	"* |cff71d5ff|Hspell:227626|h[Odyn's Test]|h|r: his test stacks on the tank holding him - the two tanks trade him while the test builds and never let one tank carry the whole gauntlet.",
	"* |cff71d5ff|Hspell:228918|h[Stormforged Spear]|h|r: he hurls a stormforged spear at the tank or a healer - run from the spear and the fresh tank taunts him off.",
	"* |cff71d5ff|Hspell:228171|h[Revivify]|h|r: the val'kyr channel a revivifying heal to patch their wounds - cut the cast every time and keep the burn rolling.",
	"* |cff71d5ff|Hspell:227503|h[Branded]|h|r: players get branded to carry his draw power - the branded line up on their marks and channel the draw power together.",
};
pack["114263"] = bos; pack["114361"] = bos; pack["114360"] = bos;

pack["114323"] = { "Guarm",
	"* |cff71d5ff|Hspell:228201|h[Off the Leash]|h|r: he snaps the leash and sprints wild for 30 seconds - hold the line through the rampage and keep the tanks braced.",
	"* |cff71d5ff|Hspell:227514|h[Fangs]|h|r: his fangs chomp the tank hard - the tanks trade him before the second chomp.",
	"* |cff71d5ff|Hspell:228253|h[Shadow Lick]|h|r: one head licks players with its shade of gloom - the licked players line up against the head whose spit matches their lick, and the shades must never mix.",
	"* |cff71d5ff|Hspell:228248|h[Frost Lick]|h|r: the frost lick chills whoever it licks and freezes them stiff - healers cleanse the frozen player as soon as the lick lands.",
};
pack["114537"] = { "Helya",
	"* |cff71d5ff|Hspell:227982|h[Bilewater Redox]|h|r: the bilewater sludge coats her armor - the fresh tank taunts her out of it and everyone keeps clear of the sludge she drags along.",
	"* |cff71d5ff|Hspell:228519|h[Anchor Slam]|h|r: her anchor slams the ground in front of her - point her away from the raid and let the fresh tank step in over each slam.",
	"* |cff71d5ff|Hspell:229119|h[Orb of Corruption]|h|r: an orb of corruption clings to a player - the bearer runs the orb away from the raid and lets it burst out at the edge.",
	"* |cff71d5ff|Hspell:228054|h[Taint of the Sea]|h|r: her taint seeps into the water around the fight - stay out of the tainted water, the fetid rot spreads through whoever it touches.",
};

-- --------------------------------- --
-- Black Rook Hold : Zona 1501 --
-- --------------------------------- --

pack["98542"] = { "The Amalgam of Souls",
	"* |cff71d5ff|Hspell:196930|h[Soulgorge]|h|r: he gorges drifting souls and grows stronger with each stack - keep the wisp adds from reaching him and burn any he gorges off him.",
	"* |cff71d5ff|Hspell:194956|h[Reap Soul]|h|r: a reap he slashes across the front of him - the tank dodges out of each reap.",
	"* |cff71d5ff|Hspell:195254|h[Swirling Scythe]|h|r: he hurls a swirling scythe at a player - the marked runs off while it spins.",
	"* |cff71d5ff|Hspell:194966|h[Soul Echoes]|h|r: soul echoes fixate a player - the marked runs away from the group as the echoes chase.",
};
pack["98696"] = { "Illysanna Ravencrest",
	"* |cff71d5ff|Hspell:197974|h[Bonebreaking Strike]|h|r: a bonebreaking strike on the tank - the taking tank braces with a defensive and the tanks trade.",
	"* |cff71d5ff|Hspell:197546|h[Brutal Glaive]|h|r: she hurls a brutal glaive that chases a player - the marked leads it away and outlasts it.",
	"* |cff71d5ff|Hspell:197478|h[Dark Rush]|h|r: she rushes a dark strike through marked players - the marked sidestep out of the rush line.",
	"* |cff71d5ff|Hspell:197418|h[Vengeful Shear]|h|r: her vengeful shear shears into the tank - heavy tank mechanic: swap and soak with a defensive.",
};
pack["98949"] = { "Smashspite the Hateful",
	"* |cff71d5ff|Hspell:198245|h[Brutal Haymaker]|h|r: he winds up a brutal haymaker on the tank - brace it hard with a defensive before it lands.",
	"* |cff71d5ff|Hspell:198079|h[Hateful Gaze]|h|r: his hateful gaze stares down a player - the marked runs from the gaze and outlasts it.",
	"* |cff71d5ff|Hspell:198073|h[Stomp]|h|r: his stomp knocks everyone back off the platform - stand away from the edges over the knock.",
	"* |cff71d5ff|Hspell:198446|h[Fel Vomit]|h|r: he vomits fel across the ground - spread out of the spatter and let each patch sit.",
};
bos = { "Lord Kur'talos Ravencrest",
	"* |cff71d5ff|Hspell:198641|h[Whirling Blade]|h|r: he whirls his blade out across the room - stay off the whirling reach.",
	"* |cff71d5ff|Hspell:198820|h[Darkblast]|h|r: dark blasts detonate at players' spots - dodge away from each blast zone.",
	"* |cff71d5ff|Hspell:199143|h[Cloud]|h|r: he calls the nightmare clouds around the area - keep moving and stay out of them.",
	"* |cff71d5ff|Hspell:201733|h[Swarm]|h|r: bats swarm one player - the marked shakes the swarm off and the raid peels it with AoE.",
};
pack["98965"] = bos; pack["98970"] = bos;


-- --------------------------------- --
-- Cathedral of Eternal Night : Zona 1677 --
-- --------------------------------- --

pack["120793"] = { "Mephistroth",
	"* |cff71d5ff|Hspell:233155|h[Carrion Swarm]|h|r: his carrion swarm sweeps out in front - melee stays behind him and the front stays clear.",
	"* |cff71d5ff|Hspell:234817|h[Dark Solitude]|h|r: the dark solitude brands a player - when it expires it punishes anyone who stood alone, so pair up with someone until it fades.",
	"* |cff71d5ff|Hspell:233206|h[Shadow Fade]|h|r: he fades into shadows and his demons pour out - stay alert through the phase and AoE the spawns.",
	"* |cff71d5ff|Hspell:233963|h[Demonic Upheaval]|h|r: a demonic upheaval cracks through the hall - brace the big hit with a cooldown.",
};
pack["119542"] = { "Domatrax",
	"* |cff71d5ff|Hspell:236543|h[Felsoul Cleave]|h|r: his felsoul cleave rakes the tank - the tanks trade the cleaves.",
	"* |cff71d5ff|Hspell:241622|h[Approaching Doom]|h|r: the approaching doom ticks the raid down steadily - heal through it and burst him before it tops out.",
	"* |cff71d5ff|Hspell:234107|h[Chaotic Energy]|h|r: he hurls chaotic energy bolts through the hall - get behind the pillars and break his line of sight.",
	"* |cff71d5ff|Hspell:200597|h[Adds]|h|r: the demons pour in around him - AoE them down fast while the tank holds them.",
};
pack["117193"] = { "Agronox",
	"* |cff71d5ff|Hspell:236524|h[Spores]|h|r: the spores bloom out around him - dodge the blooms as they spread.",
	"* |cff71d5ff|Hspell:235751|h[Timber Smash]|h|r: his timber smash knocks players back - keep off the edges and brace the hit.",
	"* |cff71d5ff|Hspell:238598|h[Choking Vine]|h|r: a choking vine roots a player - peel the rooted one out of it before the ticks pile up.",
	"* |cff71d5ff|Hspell:240065|h[Succulent Secretion]|h|r: succulent secretion pools the ground - mind the sap and never stand inside it.",
};
pack["117194"] = { "Thrashbite the Scornful",
	"* |cff71d5ff|Hspell:237726|h[Scornful Gaze]|h|r: his scornful gaze pins a player - the marked runs from the gaze while it burns.",
	"* |cff71d5ff|Hspell:243124|h[Heave Crud]|h|r: he hurls clumps of crud at players - sidestep the flying clumps and mind where they splat.",
	"* |cff71d5ff|Hspell:237276|h[Pulverizing Crudgel]|h|r: he wades in with the pulverizing crudgel - outrun the swings, never tank them.",
	"* |cff71d5ff|Hspell:238484|h[Mind Control]|h|r: his mind control seizes a player - the party burst-controls the mind-controlled one until it snaps.",
};

-- --------------------------------- --
-- Court of Stars : Zona 1571 --
-- --------------------------------- --

pack["104215"] = { "Patrol Captain Gerdo",
	"* |cff71d5ff|Hspell:219488|h[Streetsweeper]|h|r: he litters the street with trip mines - weave between them and never stand on one.",
	"* |cff71d5ff|Hspell:207815|h[Flask]|h|r: he chucks a burning flask - step out of the fire it leaves behind.",
	"* |cff71d5ff|Hspell:207261|h[Resonant Slash]|h|r: resonant slashes carve rings through the ground - move off each ring before it erupts.",
	"* |cff71d5ff|Hspell:207278|h[Arcane Lockdown]|h|r: his arcane lockdown traps whoever stands still - keep moving and stay off the runes.",
};
pack["104217"] = { "Talixae Flamewreath",
	"* |cff71d5ff|Hspell:208165|h[Withering Soul]|h|r: his withering soul leeches the tank - the fresh tank taunts and the leeched tanks step apart.",
	"* |cff71d5ff|Hspell:207906|h[Burning Intensity]|h|r: his burning intensity grows the longer he holds the stage - burn him down before the stacks peak.",
	"* |cff71d5ff|Hspell:207881|h[Infernal Eruption]|h|r: infernal eruptions rise through the ground - dodge every ring the eruptions leave.",
};
pack["104218"] = { "Advisor Melandrus",
	"* |cff71d5ff|Hspell:209602|h[Surge]|h|r: his surge rakes the front of him - the melee stays behind and the front stays clear.",
	"* |cff71d5ff|Hspell:209676|h[Slicing Maelstrom]|h|r: his slicing maelstrom rips through the room - spread out and soak the damage with heals.",
	"* |cff71d5ff|Hspell:209628|h[Gale]|h|r: gale winds tear through the platform - dodge the wind walls as they cut across.",
};

-- --------------------------------- --
-- Darkheart Thicket : Zona 1466 --
-- --------------------------------- --

pack["96512"] = { "Archdruid Glaidalis",
	"* |cff71d5ff|Hspell:196354|h[Leap]|h|r: he leaps onto a player's position - the targeted player moves out of the landing spot.",
	"* |cff71d5ff|Hspell:212464|h[Night Fall]|h|r: night falls in dark circles across the grove - dodge every fallen zone.",
	"* |cff71d5ff|Hspell:198379|h[Rampage]|h|r: his rampage piles up on the tank - tank mechanic: swap and soak with defensives.",
	"* |cff71d5ff|Hspell:198477|h[Fixate]|h|r: he fixates a player - the marked keeps moving and kites the fixate.",
};
pack["103344"] = { "Oakheart",
	"* |cff71d5ff|Hspell:204666|h[Shattered Earth]|h|r: he shatters the earth in front of him - melee fights from behind and everyone else stays off the crack.",
	"* |cff71d5ff|Hspell:204658|h[Throw Target]|h|r: he grabs a player and hurls them at the wall - the wall side stays clear and healers catch the landing.",
	"* |cff71d5ff|Hspell:212786|h[Uproot]|h|r: he uproots and changes stance - brace the change of phase.",
	"* |cff71d5ff|Hspell:204574|h[Roots]|h|r: strangling roots spread over the ground - watch your feet and step out of the growth.",
};
pack["99200"] = { "Dresaron",
	"* |cff71d5ff|Hspell:191325|h[Breath]|h|r: a breath sweeps in front of him - keep out of the front.",
	"* |cff71d5ff|Hspell:199389|h[Roar]|h|r: his roar panics everyone close - brace the roar with a fear-reducing effect.",
	"* |cff71d5ff|Hspell:199345|h[Down Draft]|h|r: his down draft drags everyone across the ground - keep moving against the pull.",
	"* |cff71d5ff|Hspell:199460|h[Falling Rocks]|h|r: rocks rain down across the area - watch the falls and dodge the impacts.",
};
pack["99192"] = { "Shade of Xavius",
	"* |cff71d5ff|Hspell:200243|h[Waking Nightmare]|h|r: the waking nightmare haunts a player - the marked moves away until the visions fade.",
	"* |cff71d5ff|Hspell:200289|h[Paranoia]|h|r: paranoia grips players and frays their nerves - the gripped stay apart from each other.",
	"* |cff71d5ff|Hspell:200050|h[Apocalyptic Nightmare]|h|r: his apocalyptic nightmare detonates across the grove - brace it with a raid cooldown.",
	"* |cff71d5ff|Hspell:200238|h[Feed on the Weak]|h|r: he feeds on the wounded - keep everyone above the bottom third so the feed never lands.",
};

-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91784"] = { "Warlord Parjesh",
	"* |cff71d5ff|Hspell:192072|h[Reinforcements]|h|r: he calls the reinforcements in - AoE them down fast before they pile on.",
	"* |cff71d5ff|Hspell:192094|h[Impaling Spear]|h|r: he hurls a spear that impales the ground - dodge the spears as they fall.",
	"* |cff71d5ff|Hspell:191900|h[Crashing Wave]|h|r: his crashing wave charges across the platform - move out of the wave's path.",
	"* |cff71d5ff|Hspell:197502|h[Restoration]|h|r: he patches himself back up - interrupt the restoration every time.",
};
pack["91789"] = { "Lady Hatecoil",
	"* |cff71d5ff|Hspell:193682|h[Adds]|h|r: she calls the seacrawlers out - the tank holds them and the raid AoEs them down.",
	"* |cff71d5ff|Hspell:193698|h[Curse of the Witch]|h|r: her curse brands players - the cursed spread away from the raid until the brand fades.",
};
pack["91797"] = { "King Deepbeard",
	"* |cff71d5ff|Hspell:193093|h[Ground Slam]|h|r: his ground slam quakes the platform - brace it and stay off the cracks.",
	"* |cff71d5ff|Hspell:193152|h[Quake]|h|r: his quake shudders out through the ground - keep moving through the shake.",
	"* |cff71d5ff|Hspell:193051|h[Call the Seas]|h|r: he calls the seas in as rolling waves - dodge each wave as it sweeps the room.",
	"* |cff71d5ff|Hspell:193018|h[Bubbles]|h|r: his bubbles swallow a player - the raid bursts the bubble open and frees them.",
};

-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91808"] = { "Serpentrix",
	"* |cff71d5ff|Hspell:191855|h[Toxic Wound]|h|r: his toxic wound stacks on the tank - the tanks trade him before it festers.",
	"* |cff71d5ff|Hspell:191798|h[Winds]|h|r: winds shear through the platform - keep moving against the gusts.",
	"* |cff71d5ff|Hspell:191873|h[Submerge]|h|r: he submerges and re-surfaces elsewhere - stay alert through the dive and re-engage cleanly.",
	"* |cff71d5ff|Hspell:191858|h[Toxic Pool]|h|r: toxic pools settle where he dives - never stand in the pools.",
};

-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["96028"] = { "Wrath of Azshara",
	"* |cff71d5ff|Hspell:192617|h[Massive Deluge]|h|r: his massive deluge floods the whole platform - brace it with a raid cooldown.",
	"* |cff71d5ff|Hspell:192680|h[Tornado]|h|r: a tornado chases a player around the platform - the marked kites it away while it winds.",
	"* |cff71d5ff|Hspell:192706|h[Arcane Bomb]|h|r: his arcane bomb lands where it is marked - move off the spot before it pops.",
};

-- --------------------------------- --
-- Halls of Valor : Zona 1477 --
-- --------------------------------- --

pack["94960"] = { "Hymdall",
	"* |cff71d5ff|Hspell:193092|h[Sweeping Cleave]|h|r: his sweeping cleave rakes the ground - dodge the sweep and fight from the sides.",
	"* |cff71d5ff|Hspell:188404|h[Breath]|h|r: the beast he calls breathes across the ground - step out of the breath.",
	"* |cff71d5ff|Hspell:193235|h[Dancing Blade]|h|r: dancing blades spin out around him - stay off the spinning blades.",
	"* |cff71d5ff|Hspell:191284|h[Horn of Valor]|h|r: his horn calls the beast to his side - burst the beast down the moment it lands.",
};
pack["95833"] = { "Hyrja",
	"* |cff71d5ff|Hspell:192048|h[Expel Light]|h|r: she expels shards of light across the room - dodge the light shards.",
	"* |cff71d5ff|Hspell:192018|h[Shield of Light]|h|r: her shield of light pins the tank inside its beam - the tank steps free and the fresh tank taunts.",
	"* |cff71d5ff|Hspell:192307|h[Sanctify]|h|r: her sanctify floods the platform with holy fire - run out of the glowing ring.",
	"* |cff71d5ff|Hspell:200901|h[Eye of the Storm]|h|r: the eye of the storm drags players in - keep clear of the pull and off the edges.",
};
bos = { "Fenryr",
	"* |cff71d5ff|Hspell:197556|h[Leap]|h|r: he leaps onto a player's position - the targeted player clears the landing spot.",
	"* |cff71d5ff|Hspell:196838|h[Fixate]|h|r: he fixates a player and hunts them - the marked kites him around the hall.",
	"* |cff71d5ff|Hspell:196512|h[Claw Frenzy]|h|r: his claw frenzy rakes everyone in reach - spread and brace through the frenzy.",
	"* |cff71d5ff|Hspell:196543|h[Howl]|h|r: his howl panics the hall - interrupt the howl or brace the panic.",
};
pack["95674"] = bos; pack["99868"] = bos;

pack["95675"] = { "God-King Skovald",
	"* |cff71d5ff|Hspell:193783|h[Aegis of Avaloren]|h|r: while he holds the aegis he shrugs almost everything off - press the burn until the shield shatters.",
	"* |cff71d5ff|Hspell:193659|h[Felblaze Rush]|h|r: he rushes through in felblaze - dodge the rush line as it barrels in.",
	"* |cff71d5ff|Hspell:194112|h[Claim the Aegis]|h|r: he tries to claim the aegis for himself - interrupt the claim or the fight gets harder.",
	"* |cff71d5ff|Hspell:193668|h[Savage Blade]|h|r: his savage blade carves the tank open - tank mechanic: swap and soak with a defensive.",
};
pack["95676"] = { "Odyn",
	"* |cff71d5ff|Hspell:198072|h[Spear of Light]|h|r: he hurls spear after spear into the ground - dodge the falling spears.",
	"* |cff71d5ff|Hspell:198263|h[Tempest]|h|r: his tempest scythes around him - run from the tempest rather than stand through it.",
	"* |cff71d5ff|Hspell:198077|h[Shatter Spears]|h|r: his spears shatter and fling shards - spread out from each shatter.",
	"* |cff71d5ff|Hspell:197961|h[Runic Brand]|h|r: the runic brand brands players - the branded take their marks in hand and stand on the runes.",
};
-- --------------------------------- --
-- Maw of Souls : Zona 1492 --
-- --------------------------------- --

pack["96756"] = { "Ymiron, the Fallen King",
	"* |cff71d5ff|Hspell:193460|h[Bane]|h|r: his bane bolts streak at players - dodge the bolts as they fly.",
	"* |cff71d5ff|Hspell:193211|h[Dark Slash]|h|r: his dark slash carves the tank open - tank mechanic: swap and soak with a defensive.",
	"* |cff71d5ff|Hspell:193364|h[Screams of the Dead]|h|r: the dead screams through the ship - brace the screams rather than stand in them.",
	"* |cff71d5ff|Hspell:193977|h[Winds]|h|r: the winds gale across the deck - keep off the edges through the knock.",
};
pack["96754"] = { "Harbaron",
	"* |cff71d5ff|Hspell:194327|h[Summon the Fragment]|h|r: he summons the fragment to his side - burst the fragment down before it lands.",
	"* |cff71d5ff|Hspell:194231|h[Servitor of the Tide]|h|r: his servitors rise with the tide - AoE them down fast.",
	"* |cff71d5ff|Hspell:194266|h[Void Snap]|h|r: his void snap wrenches the group in - interrupt the snap whenever one is free.",
	"* |cff71d5ff|Hspell:194216|h[Scythe]|h|r: his scythe shockwave crashes out - jump the wave or stand clear of it.",
};
pack["96759"] = { "Helya",
	"* |cff71d5ff|Hspell:197262|h[Taint of the Sea]|h|r: her taint seeps into the water - stay out of the tainted water as it pools.",
	"* |cff71d5ff|Hspell:196947|h[Submerged]|h|r: she submerges and shifts phases - re-group cleanly and stay alert through the dive.",
	"* |cff71d5ff|Hspell:202088|h[Brackwater Barrage]|h|r: her brackwater barrage crashes in front - the melee stays behind her.",
	"* |cff71d5ff|Hspell:227233|h[Breath]|h|r: her breath scorches in front of her - keep out of the front.",
};

-- --------------------------------- --
-- Neltharion's Lair : Zona 1458 --
-- --------------------------------- --

pack["91003"] = { "Rokmora",
	"* |cff71d5ff|Hspell:188169|h[Razor Shards]|h|r: razor shards fly out from his crystal - dodge the shards as they scatter.",
	"* |cff71d5ff|Hspell:188114|h[Shatter]|h|r: he shatters the rock apart - give the burst space and step around the rubble.",
	"* |cff71d5ff|Hspell:192800|h[Toxic Gas]|h|r: toxic gas seeps through the hall - stay out of the drifting clouds.",
};
pack["91004"] = { "Ularogg Cragshaper",
	"* |cff71d5ff|Hspell:216290|h[Strike of the Mountain]|h|r: his strikes crash down from the mountain - dodge the crashing strike.",
	"* |cff71d5ff|Hspell:193375|h[Bellow of the Deeps]|h|r: his bellow calls the troggs in - AoE the adds before they swarm.",
	"* |cff71d5ff|Hspell:216249|h[Stance of the Mountain]|h|r: he raises his stance and shifts the fight - brace the phase change.",
	"* |cff71d5ff|Hspell:198496|h[Sunder]|h|r: his sunder splits the tank's plate open - tank mechanic: swap and soak with a defensive.",
};
pack["91005"] = { "Naraxas",
	"* |cff71d5ff|Hspell:209906|h[Fixate]|h|r: his fixate hooks a player - the hooked gets peeled free and the add bursts down.",
	"* |cff71d5ff|Hspell:199176|h[Spiked Tongue]|h|r: his spiked tongue lashes out in front - the front stays clear of the lash.",
	"* |cff71d5ff|Hspell:199817|h[Adds]|h|r: the ritualists pour in to feed her - break the ritual and AoE them down fast.",
	"* |cff71d5ff|Hspell:188494|h[Rancid Maw]|h|r: her rancid maw pools on the ground - never stand inside the maw.",
};
pack["91007"] = { "Dargrul the Underking",
	"* |cff71d5ff|Hspell:200700|h[Molten Landslide]|h|r: his molten landslide rips across the cave - dodge the slide as it rolls in.",
	"* |cff71d5ff|Hspell:200551|h[Crystal Spikes]|h|r: crystal spikes erupt under players - move off the spikes as they rise.",
	"* |cff71d5ff|Hspell:200154|h[Burning Hatred]|h|r: his burning hatred stacks as he rages - push the burn before the stacks peak.",
	"* |cff71d5ff|Hspell:200732|h[Molten Overload]|h|r: his molten overload hammers the tank - tank mechanic: swap and soak with a defensive.",
};

-- --------------------------------- --
-- Return to Karazhan : Zona 1651 --
-- --------------------------------- --

pack["113971"] = { "Maiden of Virtue",
	"* |cff71d5ff|Hspell:227789|h[Sacred Ground]|h|r: her sacred ground burns whoever stands on the consecrated ring - stay off the ring.",
	"* |cff71d5ff|Hspell:227823|h[Holy Wrath]|h|r: her holy wrath cracks out - spread apart from each other and the tank through the blast.",
	"* |cff71d5ff|Hspell:227800|h[Holy Shock]|h|r: she shocks herself back up - interrupt the holy shock every time.",
	"* |cff71d5ff|Hspell:227508|h[Repentance]|h|r: her repentance seizes players' minds - purge the mind-controlled ones fast and brace the cast.",
};
bos = { "Opera Hall: Beautiful Beast",
	"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: the brooms sweep out with severe dusting - AoE the brooms and let the dust die with them.",
	"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: the kara kazham hexes players - break the hexed ones out before the hex lands.",
	"* |cff71d5ff|Hspell:228193|h[Burning Blaze]|h|r: burning blazes scatter over the stage - dodge the fires and spread.",
	"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: the wand channels its heat wave - interrupt the cast every time.",
};
pack["114329"] = bos; pack["114522"] = bos; pack["114330"] = bos; pack["114328"] = bos;

bos = { "Opera Hall: Westfall Story",
	"* |cff71d5ff|Hspell:227568|h[Leg Sweep]|h|r: his leg sweep scythes everyone near - outrun the sweep rather than eat it.",
	"* |cff71d5ff|Hspell:227777|h[Thunder Ritual]|h|r: the thunder ritual marks players - spread out of each marked spot.",
	"* |cff71d5ff|Hspell:227420|h[Bubble Blast]|h|r: the parrot channels its bubble blast - interrupt the cast.",
	"* |cff71d5ff|Hspell:227783|h[Wash Away]|h|r: his wash away crashes across the deck - jump the wave or stand clear.",
};
pack["114261"] = bos; pack["114260"] = bos;

bos = { "Opera Hall: Wikket",
	"* |cff71d5ff|Hspell:227477|h[Summon Adds]|h|r: the critters pour in around them - AoE the adds down fast.",
	"* |cff71d5ff|Hspell:227776|h[Magnificent Magical]|h|r: his magnificent magic blasts through the stage - get behind cover and break his line of sight.",
	"* |cff71d5ff|Hspell:227416|h[Wondrous Radiance]|h|r: his wondrous radiance floods the hall - turn away from the radiance and brace the blindness.",
};
pack["114284"] = bos; pack["114251"] = bos;

pack["114252"] = { "Mana Devourer",
	"* |cff71d5ff|Hspell:227523|h[Energy Void]|h|r: his energy void drains the casters dry - healers manage mana and let the voids sit where they spawned.",
	"* |cff71d5ff|Hspell:227618|h[Arcane Bomb]|h|r: his arcane bomb lands at a marked spot - move off before it pops.",
	"* |cff71d5ff|Hspell:227507|h[Decimating Essence]|h|r: the decimating essence rips out over the room - spread and heal through the burst.",
	"* |cff71d5ff|Hspell:227297|h[Coalesce Power]|h|r: his coalesced orbs build into one massive ball - share the ball's blast together rather than eat it whole.",
};
bos = { "Attumen the Huntsman",
	"* |cff71d5ff|Hspell:227363|h[Mighty Stomp]|h|r: his mighty stomp shatters the ground - interrupt the stomp whenever one is free.",
	"* |cff71d5ff|Hspell:227365|h[Spectral Charge]|h|r: his spectral charge barrels through the room - dodge the charging path.",
	"* |cff71d5ff|Hspell:227339|h[Mezair]|h|r: his mezair sweeps the room from horseback - clear the path of the mounted charge.",
	"* |cff71d5ff|Hspell:227493|h[Mortal Strike]|h|r: his mortal strike wrecks the tank - tank mechanic: swap and soak with a defensive.",
};
pack["114262"] = bos; pack["114264"] = bos;

pack["114312"] = { "Moroes",
	"* |cff71d5ff|Hspell:227672|h[Will Breaker]|h|r: his will breaker hammers the tank's guard down - the tanks trade the hammer.",
	"* |cff71d5ff|Hspell:227737|h[Vanish]|h|r: he vanishes into the shadows and ambushes from them - stay spread as he disappears.",
	"* |cff71d5ff|Hspell:227872|h[Ghastly Purge]|h|r: his ghastly purge calls the guests in - AoE the guests down before they stack up.",
	"* |cff71d5ff|Hspell:227545|h[Mana Drain]|h|r: his mana drain siphons the casters - kick it or brace the drain.",
};
pack["114462"] = { "The Curator",
	"* |cff71d5ff|Hspell:227267|h[Adds]|h|r: the flares pour in around him - AoE them down but never chase them out of position.",
	"* |cff71d5ff|Hspell:227254|h[Evocation]|h|r: he evocates to restore himself - burn him down hard through the window.",
	"* |cff71d5ff|Hspell:227465|h[Power Discharge]|h|r: his power discharge blasts out from the flares - spread clear of each discharge.",
};
pack["114350"] = { "Shade of Medivh",
	"* |cff71d5ff|Hspell:227615|h[Inferno Bolt]|h|r: his inferno bolts streak across the hall - dodge the bolts as they fly.",
	"* |cff71d5ff|Hspell:228269|h[Flame Wreath]|h|r: his flame wreath rings the ground - never cross the wreath, it detonates on touch.",
	"* |cff71d5ff|Hspell:227628|h[Arcane Missiles]|h|r: his arcane missiles hammer the tank - the tanks trade through the missiles.",
	"* |cff71d5ff|Hspell:227592|h[Frostbite]|h|r: his frostbite freezes the tank's plate - interrupt the frostbite.",
};
pack["114790"] = { "Viz'aduum the Watcher",
	"* |cff71d5ff|Hspell:229159|h[Chaotic Shadows]|h|r: the chaotic shadows close in on players - AoE the shadows away from the fight.",
	"* |cff71d5ff|Hspell:229242|h[Fel Beam]|h|r: his fel beam scythes across the battlements - dodge the beam line.",
	"* |cff71d5ff|Hspell:229151|h[Disintegrate]|h|r: his disintegrate rips down the whole platform - watch the line and get out of it.",
	"* |cff71d5ff|Hspell:229083|h[Burning Blast]|h|r: his burning blast sears the front of him - the melee stays behind.",
};
pack["114895"] = { "Nightbane",
	"* |cff71d5ff|Hspell:228796|h[Ignite Soul]|h|r: his ignite soul burns the closest players - spread out of the burn and away from the tank.",
	"* |cff71d5ff|Hspell:228785|h[Breath]|h|r: his breath scorches in front of him - keep out of the front.",
	"* |cff71d5ff|Hspell:229307|h[Reverb Shadows]|h|r: the reverb shadows echo across the rookery - AoE the shadows down.",
	"* |cff71d5ff|Hspell:228808|h[Charred Earth]|h|r: his charred earth blazes the ground - never stand on the charred patches.",
};

-- --------------------------------- --
-- Seat of the Triumvirate : Zona 1753 --
-- --------------------------------- --

pack["124871"] = { "Zuraal the Ascended",
	"* |cff71d5ff|Hspell:1263282|h[Decimate]|h|r: his decimate crushes the room - brace the big hit with a cooldown.",
	"* |cff71d5ff|Hspell:1268916|h[Null Palm]|h|r: his null palm slams down in front - the melee stays behind him.",
	"* |cff71d5ff|Hspell:1263399|h[Oozing Slam]|h|r: his oozing slam leaves oozelings behind - AoE the adds as they ooze up.",
	"* |cff71d5ff|Hspell:1263440|h[Void Slash]|h|r: his void slash carves the tank open - tank mechanic: swap and soak with a defensive.",
};
pack["124872"] = { "Saprish",
	"* |cff71d5ff|Hspell:1280064|h[Phase Dash]|h|r: he phase-dashes between his pet platforms - re-engage wherever he reappears.",
	"* |cff71d5ff|Hspell:245738|h[Shadow Pounce]|h|r: his shadow pet pounces on a player - the targeted player clears the pounce.",
	"* |cff71d5ff|Hspell:247175|h[Void Bomb]|h|r: his void bomb marks a spot - move away from the mark before the blast.",
	"* |cff71d5ff|Hspell:1263523|h[Overload]|h|r: his overload rips through the room - heal through the burst and spread some.",
};
pack["124874"] = { "Viceroy Nezhar",
	"* |cff71d5ff|Hspell:244750|h[Mind Blast]|h|r: his mind blasts pierce the tank - the tanks trade the blasts.",
	"* |cff71d5ff|Hspell:1263542|h[Mass Void Infusion]|h|r: his mass void infusion surges over the room - brace it with a cooldown.",
	"* |cff71d5ff|Hspell:1263538|h[Umbral Tentacles]|h|r: umbral tentacles rise around him - burst the tentacles down fast.",
	"* |cff71d5ff|Hspell:1263528|h[Repulse]|h|r: his repulse shoves everyone back - keep off the edges through the knock.",
};
pack["124870"] = { "L'ura",
	"* |cff71d5ff|Hspell:1265426|h[Discordant Beam]|h|r: her discordant beam sweeps the hold - stay out of the beam line.",
	"* |cff71d5ff|Hspell:1265421|h[Dirge]|h|r: her dirge tolls across the room - spread out and heal through the toll.",
	"* |cff71d5ff|Hspell:1264151|h[Disintegrate]|h|r: her disintegrate rips down its line - get far from the line.",
	"* |cff71d5ff|Hspell:1265689|h[Grim Chorus]|h|r: the grim chorus rises around her - break the chorus and AoE the spawns.",
};

-- --------------------------------- --
-- The Arcway : Zona 1516 --
-- --------------------------------- --

pack["98205"] = { "Corstilax",
	"* |cff71d5ff|Hspell:196070|h[Suppression]|h|r: his suppression field pins players down - break out of the field and reposition.",
	"* |cff71d5ff|Hspell:195804|h[Quarantine]|h|r: his quarantine cages a player - break the cage open and free them.",
	"* |cff71d5ff|Hspell:196115|h[Cleansing]|h|r: his cleansing pulse rakes the room - spread and heal through the pulse.",
};
pack["98207"] = { "Nal'tira",
	"* |cff71d5ff|Hspell:199811|h[Blink]|h|r: she blinks onto a player's spot - the targeted player clears the landing.",
	"* |cff71d5ff|Hspell:200284|h[Web]|h|r: her web snags a player - the raid frees the snagged one fast.",
	"* |cff71d5ff|Hspell:200040|h[Venom]|h|r: her venom pools the ground - never stand inside the venom.",
};
pack["98203"] = { "Ivanyr",
	"* |cff71d5ff|Hspell:196562|h[Volatile Magic]|h|r: his volatile magic orbs drift among players - spread out so no one takes two.",
	"* |cff71d5ff|Hspell:196805|h[Nether Link]|h|r: his nether link tethers two players - the tethered pull apart until the link snaps.",
	"* |cff71d5ff|Hspell:196392|h[Overcharge Mana]|h|r: he overcharges his mana and empowers - interrupt the overcharge every time.",
};
pack["98206"] = { "General Xakal",
	"* |cff71d5ff|Hspell:197776|h[Fissure]|h|r: his fissure cracks the floor open - dodge the cracks as they split.",
	"* |cff71d5ff|Hspell:212030|h[Darkfall]|h|r: his darkfall shockwave rolls out - jump the wave or stand clear.",
	"* |cff71d5ff|Hspell:197810|h[Slam]|h|r: his slam knocks everyone back - keep off the edges through the knock.",
};
pack["98208"] = { "Advisor Vandros",
	"* |cff71d5ff|Hspell:203957|h[Time Lock]|h|r: his time lock freezes players in place - brace the lock and re-engage when it lifts.",
	"* |cff71d5ff|Hspell:203176|h[Unstable Mana]|h|r: his unstable mana orbs burst out - dodge the orbs as they fly.",
	"* |cff71d5ff|Hspell:203833|h[Time Split]|h|r: he splits time and a second him walks the room - burn the copy down like the original.",
	"* |cff71d5ff|Hspell:202974|h[Force Bomb]|h|r: his force bomb knocks everyone off their feet - keep off the edges through the knock.",
};

-- --------------------------------- --
-- Vault of the Wardens : Zona 1493 --
-- --------------------------------- --

pack["95885"] = { "Tirathon Saltheril",
	"* |cff71d5ff|Hspell:204151|h[Dark Strikes]|h|r: his dark strikes stack on the tank - tank mechanic: swap and soak with a defensive.",
	"* |cff71d5ff|Hspell:191823|h[Furious Blast]|h|r: his furious blast detonates over the room - interrupt the blast every time.",
	"* |cff71d5ff|Hspell:202913|h[Fel Mortar]|h|r: his fel motars lob across the field - dodge the lobbed motes and their splats.",
	"* |cff71d5ff|Hspell:202919|h[Fel Mortar Burn]|h|r: the landed motes keep burning - never stand on the burning patches.",
};
pack["95886"] = { "Ash'golm",
	"* |cff71d5ff|Hspell:192522|h[Fissure]|h|r: his fissure cracks the floor open - dodge the cracks as they split.",
	"* |cff71d5ff|Hspell:192621|h[Volcano]|h|r: his volcano erupts through the ground - move off the eruption before it blows.",
	"* |cff71d5ff|Hspell:192631|h[Lava Wreath]|h|r: his lava wreath spins out across the hall - stay off the spinning fire.",
};
pack["95887"] = { "Glazer",
	"* |cff71d5ff|Hspell:194942|h[Gaze]|h|r: his gaze sweeps the arena - keep off the glowing sweep line.",
	"* |cff71d5ff|Hspell:194289|h[Focused]|h|r: his focused gaze locks onto one player - everyone stays clear of the sweeping beam.",
	"* |cff71d5ff|Hspell:194945|h[Gaze Burn]|h|r: the gathered gaze burns the ground - never stand on the burn.",
};
pack["95888"] = { "Cordana Felsong",
	"* |cff71d5ff|Hspell:197251|h[Kick]|h|r: her kick shatters the tank's plate - the tanks trade through the kicks.",
	"* |cff71d5ff|Hspell:213583|h[Deepening Shadows]|h|r: her deepening shadows swallow the cell block - keep to the lit ground and burst the shadows.",
	"* |cff71d5ff|Hspell:205004|h[Vengeance]|h|r: her vengeance stacks up as she rages - burn her down before the stacks peak.",
	"* |cff71d5ff|Hspell:192750|h[Hidden]|h|r: she slips into the shadows for her final phase - re-group and burst her from each reveal.",
};
pack["96015"] = { "Inquisitor Tormentorum",
	"* |cff71d5ff|Hspell:200898|h[Teleport]|h|r: he teleports around the study - re-engage wherever he reappears and keep the adds in check.",
	"* |cff71d5ff|Hspell:200905|h[Sap Soul]|h|r: his sap soul siphons a player dry - interrupt the sap every time.",
	"* |cff71d5ff|Hspell:201488|h[Fear]|h|r: his fear rakes through the room - brace the fear with a fear-reducing effect.",
	"* |cff71d5ff|Hspell:212564|h[Stare]|h|r: his stare pins a player - the marked keeps moving and kites the stare.",
};

-- --------------------------------- --
-- The Violet Hold : Zona 1544 --
-- --------------------------------- --

pack["101951"] = { "Shivermaw",
	"* |cff71d5ff|Hspell:201379|h[Breath]|h|r: his breath freezes across the hall - keep out of the front.",
	"* |cff71d5ff|Hspell:201672|h[Relentless Storm]|h|r: her relentless storm shreds rings across the cell block - dodge every storm ring.",
	"* |cff71d5ff|Hspell:201960|h[Ice Bomb]|h|r: her ice bombs drop around players - get behind cover as the bombs land.",
};
pack["101950"] = { "Mindflayer Kaahrj",
	"* |cff71d5ff|Hspell:201920|h[Shadow Crash]|h|r: his shadow crash splatters the ground - dodge the splats and spread.",
	"* |cff71d5ff|Hspell:201148|h[Doom]|h|r: his doom pounds the tank - tank mechanic: swap and soak with a defensive.",
	"* |cff71d5ff|Hspell:201153|h[Eternal Darkness]|h|r: his eternal darkness floods the hold - brace the whole wave with heals.",
};
pack["101976"] = { "Millificent Manastorm",
	"* Spinsaw: she grinds the tank with a stacking bleed - pop defensives early or kite her once the stacks climb too high.",
	"* |cff71d5ff|Hspell:201159|h[Delta Finger Laser X-treme]|h|r: marks a player with an instant fire bolt that leaves a burn ticking - top the marked up.",
	"* |cff71d5ff|Hspell:201240|h[Elementium Squirrel Bomb]|h|r: she litters the floor with bombs channeling a massive raid-wide blast - right-click each bomb to disarm it before it goes off.",
	"* |cff71d5ff|Hspell:201392|h[Thorium Rocket Chicken]|h|r: a mechachicken storms in spraying rockets - burn it down fast or dodge its barrages.",
	"* |cff71d5ff|Hspell:201572|h[Millificent's Rage]|h|r: she enrages and her gadgets fire faster and tougher - overloaded bombs, reinforced chicken; push the damage.",
	"* Ledge crossfire: her ally assists from the upper ledge - the dangerous channels (like Diabolical Doom) get cut with Millificent's laser or your control spells.",
};

pack["101995"] = { "Festerface",
	"* |cff71d5ff|Hspell:202266|h[Ooze]|h|r: his ooze puddles the ground - never stand inside the ooze.",
};

pack["102246"] = { "Anub'esset",
	"* |cff71d5ff|Hspell:202341|h[Impale]|h|r: his impale spears up under players - move off the spears as they rise.",
	"* |cff71d5ff|Hspell:201863|h[Swarm]|h|r: the swarm spills out around him - AoE the bugs down fast.",
	"* |cff71d5ff|Hspell:202480|h[Fixate]|h|r: a spider fixates on a player - the marked kites it away until the add dies.",
	"* |cff71d5ff|Hspell:202217|h[Mandible Strike]|h|r: his mandible strike shatters the tank - tank mechanic: swap and soak with a defensive.",
};
pack["102431"] = { "Blood-Princess Thal'ena",
	"* |cff71d5ff|Hspell:202779|h[Essence of the Blood Queen]|h|r: the blood queen's essence rides a player - the essence-bearer stays away from everyone until it feeds out.",
	"* |cff71d5ff|Hspell:202792|h[Bloodthirst]|h|r: her bloodthirst builds her power fast - healers press the raid and burst her down before it peaks.",
	"* |cff71d5ff|Hspell:202804|h[Mind Control]|h|r: her mind control seizes a player - purge the mind-controlled one and brace the cast.",
	"* |cff71d5ff|Hspell:203381|h[Call Blood]|h|r: she calls her blood bats in - AoE the bats down before they swarm.",
};
pack["102446"] = { "Fel Lord Betrug",
	"* |cff71d5ff|Hspell:203641|h[Fel Slash]|h|r: his fel slash rakes the tank open - tank mechanic: swap and soak with a defensive.",
	"* |cff71d5ff|Hspell:210879|h[Seed of Destruction]|h|r: his seeds sprout and detonate - dodge every sprouting seed.",
	"* |cff71d5ff|Hspell:205233|h[Execute]|h|r: he executes whoever stands low - healers keep the raid well above the cutoff.",
	"* |cff71d5ff|Hspell:202328|h[Mighty Smash]|h|r: his mighty smash knocks everyone back - keep off the edges through the knock.",
};

-- --------------------------------- --
-- World bosses --
-- --------------------------------- --

bos = { "Soultakers",
	"* |cff71d5ff|Hspell:213420|h[Tentacle Bash]|h|r: their tentacles bash across the wreck - the melee stays clear of each bash.",
	"* |cff71d5ff|Hspell:213532|h[Shatter Crew]|h|r: the shatter crew sweeps the deck - AoE the crew down while they board.",
	"* |cff71d5ff|Hspell:213665|h[Marauding Mists]|h|r: the marauding mists drift over players - keep moving out of the mists.",
	"* |cff71d5ff|Hspell:213522|h[Cursed Crew]|h|r: the cursed crew crawls aboard - kill the cursed ones fast before they multiply.",
};
pack["106981"] = bos; pack["106982"] = bos; pack["106984"] = bos;

pack["109943"] = { "Ana-Mouz",
	"* |cff71d5ff|Hspell:218888|h[Impish Flames]|h|r: his impish flames scorch out - the tank braces the flames with a defensive.",
	"* |cff71d5ff|Hspell:219045|h[Mother's Embrace]|h|r: his mother's embrace grips a player - healers dispel the embrace quickly.",
	"* |cff71d5ff|Hspell:219068|h[Mother's Embrace Fail]|h|r: the embrace's failure detonates hard on the gripped - dispel before it ever reaches the failure.",
	"* |cff71d5ff|Hspell:219254|h[Gaseous Breath]|h|r: his gaseous breath washes across the isle - keep out of the gas.",
};
pack["121124"] = { "Apocron",
	"* |cff71d5ff|Hspell:241518|h[Sear]|h|r: his sear burns down wherever it passes - the marked step clear of the burn.",
	"* |cff71d5ff|Hspell:241498|h[Felfire Missiles]|h|r: his felfire missiles rain around players - dodge the missiles as they land.",
	"* |cff71d5ff|Hspell:241458|h[Quake]|h|r: his quake knocks everyone back - keep off the edges through the knock.",
};
pack["117239"] = { "Brutallus",
	"* |cff71d5ff|Hspell:233484|h[Meteor Slash]|h|r: his meteor slash crushes everything nearby - pile in close and split the slash together.",
	"* |cff71d5ff|Hspell:233515|h[Crashing Embers]|h|r: crashing embers rain across the shore - dodge the embers as they fall.",
	"* |cff71d5ff|Hspell:233566|h[Rupture]|h|r: the ground ruptures where it lands - keep off the ruptured ground.",
};
pack["117303"] = { "Malificus",
	"* |cff71d5ff|Hspell:233568|h[Incite Panic]|h|r: his panic rakes through the group - brace the panic with a fear-reducing effect.",
	"* |cff71d5ff|Hspell:234452|h[Shadow Barrage]|h|r: his shadow barrage hammers players - spread out and heal through the barrage.",
	"* |cff71d5ff|Hspell:233850|h[Virulent Infection]|h|r: her virulent infection rides players - the infected keep apart until the disease fades.",
};
pack["107023"] = { "Nithogg",
	"* |cff71d5ff|Hspell:212852|h[Breath]|h|r: his breath rakes across the hillside - dodge the breath as it sweeps.",
	"* |cff71d5ff|Hspell:212887|h[Static Charge]|h|r: the static charge clings to players - the charged run out and away until it grounds.",
	"* |cff71d5ff|Hspell:212943|h[Lightning Rod]|h|r: the lightning rod anchors a player - the rod-bearer runs clear of everyone while it grounds.",
	"* |cff71d5ff|Hspell:212841|h[Crackling Jolt]|h|r: his crackling jolts crackle across the ground - dodge each jolt impact.",
};
pack["117470"] = { "Sivash",
	"* |cff71d5ff|Hspell:241433|h[Submerge]|h|r: she submerges and surfaces under players - dodge each surfacing.",
	"* |cff71d5ff|Hspell:233968|h[Summon Honor Guard]|h|r: her honor guard wades in - AoE them down fast before they swarm.",
	"* |cff71d5ff|Hspell:233996|h[Tidal Wave]|h|r: her tidal wave crashes along the shore - dodge the wave as it rolls.",
};
pack["102075"] = { "Withered J'im",
	"* Withered Presence: stepping into his field lands a debuff that cuts your damage dealt by 90% and shrinks and slows you - his puny health pool exists to offset it.",
	"* Nightshifted Bolts: he flings arcane energy that hits within 4 m of each impact - spread out from the impacts.",
	"* Nightstable Energy: he summons arcane energy orbs that pulse periodic area damage - stay clear of them and pop them if you need the room back.",
	"* Resonance: he braces himself with a 15 s bulwark that cuts incoming damage by 30% and spawns Unstable Resonances that burst after 20 s within a 5 m radius.",
	"* MORE, MORE, MORE!: while the Resonance shield is active do NOT damage him - any damage he takes summons a clone that repeats his abilities.",
	"* Unstable Resonances: AoE them down fast before they burst.",
};

pack["108678"] = { "Shar'thos",
	"* |cff71d5ff|Hspell:215821|h[Breath]|h|r: his breath scorches the front of him - keep out of the front while it burns.",
	"* |cff71d5ff|Hspell:215876|h[Burning Earth]|h|r: the earth burns where he passes - keep off the burning ground.",
	"* |cff71d5ff|Hspell:216044|h[Fear]|h|r: his fear rakes the island - brace the fear with a fear-reducing effect.",
};
pack["108879"] = { "Humongris",
	"* |cff71d5ff|Hspell:216817|h[Bang]|h|r: his bang slams the tank around - the tanks trade over the slams.",
	"* |cff71d5ff|Hspell:216432|h[Ice Fist]|h|r: his ice fist chases a player - the marked runs it out and outlasts the chill.",
	"* |cff71d5ff|Hspell:216467|h[Snow]|h|r: snow mounds pile across the area - dodge the piled snow as it rises.",
	"* |cff71d5ff|Hspell:216428|h[Fire Boom]|h|r: his fire boom bursts under a player - the marked runs out and the nearby step back.",
};
pack["110378"] = { "Drugon",
	"* |cff71d5ff|Hspell:219542|h[Avalanche]|h|r: his avalanche crashes down on a player - the marked runs clear of the fall.",
	"* |cff71d5ff|Hspell:219602|h[Snow Plow]|h|r: his snow plow barrels across the slope - run from the plow and re-engage after it passes.",
	"* |cff71d5ff|Hspell:219493|h[Snow Crash]|h|r: his snow crash knocks the melee back - the melee braces and stays off the edges.",
};
pack["110321"] = { "Nazak",
	"* |cff71d5ff|Hspell:219349|h[Corroding Spray]|h|r: her corroding spray eats away at players - stay out of the spray.",
	"* |cff71d5ff|Hspell:219865|h[Web Wrap]|h|r: her web wrap cocoons a player - break the wrapped one free fast.",
	"* |cff71d5ff|Hspell:219591|h[Foundation]|h|r: her foundation shudders the ground - brace the shake and keep moving.",
};
pack["99929"] = { "Flotsam",
	"* |cff71d5ff|Hspell:220340|h[Getsam]|h|r: getsam swings shockwaves at the tank - the tank dodges each swing.",
	"* |cff71d5ff|Hspell:223373|h[Yaksam]|h|r: yaksam lashes out at players - give the lash room and sidestep it.",
	"* |cff71d5ff|Hspell:220295|h[Jetsam]|h|r: jetsam targets a player across the shore - the targeted sidesteps its landing.",
	"* |cff71d5ff|Hspell:223317|h[Break Sam]|h|r: breaksam flings the melee across the shore - the melee stays out of its reach.",
};
pack["109331"] = { "Calamir",
	"* |cff71d5ff|Hspell:217563|h[Ancient Rage: Fire]|h|r: his ancient rage burns fire across the ground - dodge the fire as it sweeps.",
	"* |cff71d5ff|Hspell:217877|h[Burning Bomb]|h|r: his burning bomb lands at a spot - move off the bomb before it pops.",
	"* |cff71d5ff|Hspell:217831|h[Ancient Rage: Frost]|h|r: his ancient rage turns to frost and chills the ground - dodge the frost.",
	"* |cff71d5ff|Hspell:217966|h[Howling Gale]|h|r: his howling gale drags players across - brace the gust and move against the pull.",
};
pack["124592"] = { "Inquisitor Meto",
	"* |cff71d5ff|Hspell:247495|h[Sow]|h|r: she sows dread across the battlefield - dodge the growth of the sowed seeds.",
	"* |cff71d5ff|Hspell:247492|h[Reap]|h|r: she reaps through the front of her - keep out of the reaping arc.",
	"* |cff71d5ff|Hspell:247632|h[Death Field]|h|r: her death field floods the landing zone - get out of the field before it claims anyone.",
	"* |cff71d5ff|Hspell:247585|h[Seedsof Chaos]|h|r: her seeds of chaos sprout across the ground - burst the seeds down before they bloom.",
};
pack["124492"] = { "Occularus",
	"* |cff71d5ff|Hspell:247318|h[Gushing Wound]|h|r: his gushing wound stacks on the tank - the tanks trade him over the wounds.",
	"* |cff71d5ff|Hspell:247325|h[Lash]|h|r: his lashes crack across the group - dodge the lash and spread.",
	"* |cff71d5ff|Hspell:247320|h[Searing Gaze]|h|r: his searing gaze sears him open - interrupt the gaze every time.",
	"* |cff71d5ff|Hspell:247393|h[Phantasm]|h|r: his phantasms split off from him - burn down the true form and AoE the copies.",
};
pack["124555"] = { "Sotanathor",
	"* |cff71d5ff|Hspell:247410|h[Soul Cleave]|h|r: his soul cleave rakes everything in front - the front stays clear of the cleave.",
	"* |cff71d5ff|Hspell:247444|h[Cloven Soul]|h|r: his cloven soul splits a player's spirit - the cloven one braces and pushes through it.",
	"* |cff71d5ff|Hspell:247437|h[Seedof Destruction]|h|r: his seeds of destruction sprout and blow out - dodge the sprouting seeds.",
	"* |cff71d5ff|Hspell:247698|h[Silence]|h|r: his silence buries the ground in dead air - never stand inside the silence.",
};
pack["124719"] = { "Pit Lord Vilemus",
	"* |cff71d5ff|Hspell:247742|h[Drain]|h|r: his drain siphons the closest players - keep some spread so the drain never doubles up.",
	"* |cff71d5ff|Hspell:247731|h[Fel Breath]|h|r: his fel breath scorches in front - keep out of the front.",
	"* |cff71d5ff|Hspell:247733|h[Stomp]|h|r: his stomp knocks everyone back - keep off the edges through the knock.",
};
pack["108829"] = { "Levantus",
	"* |cff71d5ff|Hspell:217235|h[Rending Whirl]|h|r: his rending whirl rips across the water - the melee stays clear of the whirl.",
	"* |cff71d5ff|Hspell:217344|h[Electrify]|h|r: his electrify charges players - the charged stay apart from the group.",
	"* |cff71d5ff|Hspell:217249|h[Massive Spout]|h|r: his massive spout erupts in a wave - dodge the wave as it rolls in.",
	"* |cff71d5ff|Hspell:217352|h[Electrify Dispel]|h|r: the electrify build-up dispels off the charged - healers dispel it as soon as it lands.",
};
pack["124514"] = { "Matron Folnuna",
	"* |cff71d5ff|Hspell:247361|h[Infected Claws]|h|r: her infected claws fester on the tank - the tanks trade her over the fester.",
	"* |cff71d5ff|Hspell:247389|h[Slumbering Gasp]|h|r: her slumbering gasp puts players to sleep - shake the sleepers awake and brace the gasp.",
	"* |cff71d5ff|Hspell:247443|h[Grotesque Spawn]|h|r: her grotesque spawn pour from her - kill the spawn fast before they pile on.",
	"* |cff71d5ff|Hspell:247379|h[Slumbering Gasp Cone]|h|r: her gasp washes out in a cone in front - the melee stays behind her.",
};
pack["124625"] = { "Mistress Alluradel",
	"* |cff71d5ff|Hspell:247544|h[Sadist Other]|h|r: her sadist streak spikes against whoever tanks her - the tanks trade over the spikes.",
	"* |cff71d5ff|Hspell:247549|h[Beguiling Charm]|h|r: her beguiling charm snags players - break the charmed ones free fast.",
	"* |cff71d5ff|Hspell:247604|h[Fel Lash]|h|r: her fel lash cracks across the group - dodge the lash.",
	"* |cff71d5ff|Hspell:247517|h[Heart Breaker]|h|r: her heart breaker crushes her mark - brace the crush with a defensive.",
};
P.en = en;
