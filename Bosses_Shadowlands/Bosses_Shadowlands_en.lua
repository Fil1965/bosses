--[[
	Bosses_Shadowlands_en.lua
		Datos in English of the Shadowlands
		pack: the zones' dungeons, Tazavesh and its three raids, plus
		the world bosses. Sources: DBM-Raids-Shadowlands, DBM-Party-Shadowlands
		and DBM-Shadowlands (_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the
		tactics were filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Sanguine Depths : Zona 2284 --
-- --------------------------------- --

pack["162103"] = { "Executor Tarvold",
	"* |cff71d5ff|Hspell:322554|h[Castigate]|h|r: Castigate burns the marked player - keep heals ready.",
	"* |cff71d5ff|Hspell:322574|h[Spiteful Manifestation]|h|r: A manifestation rises - kill it before it casts.",
	"* |cff71d5ff|Hspell:328494|h[Sin-touched Anima]|h|r: The anima empowers them - dispel it fast.",
};
pack["162099"] = { "General Kaal",
	"* |cff71d5ff|Hspell:323845|h[Wicked Rush]|h|r: The rush lines up across the room - step out of the lane.",
	"* |cff71d5ff|Hspell:324086|h[Shining Radiance]|h|r: The radiance shields her adds - dispel it.",
	"* |cff71d5ff|Hspell:322903|h[Gloom Squall]|h|r: The squall darkens the room - hide behind the pillars.",
};
pack["162102"] = { "Grand Proctor Beryllia",
	"* |cff71d5ff|Hspell:325360|h[Rite of Supremacy]|h|r: The rite channels the final phase - keep the burst coming and mind the pools.",
	"* |cff71d5ff|Hspell:325254|h[Iron Spikes]|h|r: Spikes burst through the floor - defensive cooldowns up.",
	"* |cff71d5ff|Hspell:326039|h[Endless Torment]|h|r: The torment casts - interrupt it fast.",
};
pack["162100"] = { "Kryxis the Voracious",
	"* |cff71d5ff|Hspell:319650|h[Vicious Headbutt]|h|r: Headbutts his tank hard - defensives up.",
	"* |cff71d5ff|Hspell:319654|h[Hungering Drain]|h|r: The drain chews its holder - cleanse it and heal through.",
	"* |cff71d5ff|Hspell:319685|h[Severing Smash]|h|r: The smash staggers his tank - brace it.",
	"* |cff71d5ff|Hspell:319713|h[Juggernaut Charge]|h|r: The charge marks a player - the pack gathers to share the hit.",
};
-- --------------------------------- --
-- Spires of Ascension : Zona 2285 --
-- --------------------------------- --

pack["162061"] = { "Devos, Paragon of Doubt",
	"* |cff71d5ff|Hspell:323943|h[Run Through]|h|r: She runs her spear through the marked - the marked keeps on the move.",
	"* |cff71d5ff|Hspell:322818|h[Lost Confidence]|h|r: Confidence drains the pack - heal through the despair.",
	"* |cff71d5ff|Hspell:334625|h[Abyssal Detonation]|h|r: The detonation fills the room - break it behind the pillars.",
};
bos = { "Kin-Tara",
	"* |cff71d5ff|Hspell:321009|h[Charged Spear]|h|r: The spear charges at the marked player - run it out wide.",
	"* |cff71d5ff|Hspell:320966|h[Overhead Slash]|h|r: The slash on her tank - defensives up.",
	"* |cff71d5ff|Hspell:327481|h[Dark Lance]|h|r: The lance casts - interrupt it.",
	"* |cff71d5ff|Hspell:324368|h[Barrage]|h|r: The barrage chases its mark - keep clear of the glow.",
};
pack["162059"] = bos; pack["163077"] = bos;

pack["162060"] = { "Oryphrion",
	"* |cff71d5ff|Hspell:338731|h[Charged Stomp]|h|r: The stomp shakes the room - brace it.",
	"* |cff71d5ff|Hspell:334053|h[Purifying Blast]|h|r: The blast detonates wide - spread out.",
	"* |cff71d5ff|Hspell:324427|h[Empyreal Ordnance]|h|r: The ordnance crashes down - run out of the mark.",
	"* |cff71d5ff|Hspell:324392|h[Anima Field]|h|r: A field builds around him - pull him out of the glow.",
};
pack["162058"] = { "Ventunax",
	"* |cff71d5ff|Hspell:324205|h[Blinding Flash]|h|r: The flash stuns in front of her - keep off her flanks.",
	"* |cff71d5ff|Hspell:334485|h[Recharge]|h|r: The recharge feeds on the anima - step wide of the glow.",
};
-- --------------------------------- --
-- The Necrotic Wake : Zona 2286 --
-- --------------------------------- --

pack["163157"] = { "Amarth, The Harvester",
	"* |cff71d5ff|Hspell:321226|h[Land of the Dead]|h|r: Skeletons rise around him - AoE them down.",
	"* |cff71d5ff|Hspell:321247|h[Final Harvest]|h|r: The harvest sweeps the room - brace.",
	"* |cff71d5ff|Hspell:333493|h[Necrotic Breath]|h|r: Breath incoming - the melee steps aside.",
	"* |cff71d5ff|Hspell:320170|h[Necrotic Bolt]|h|r: The bolt casts - interrupt it.",
	"* |cff71d5ff|Hspell:322493|h[Frostbolt Volley]|h|r: Volley of frost bolts - interrupt.",
};
pack["162691"] = { "Blightbone",
	"* |cff71d5ff|Hspell:320637|h[Fetid Gas]|h|r: Gas pools the floor - step off.",
	"* |cff71d5ff|Hspell:320596|h[Heaving Retch]|h|r: Retch in a wide cone - stay off her face.",
	"* |cff71d5ff|Hspell:320655|h[Crunch]|h|r: Crunches the tank hard - defensives up.",
};
pack["162693"] = { "Nalthor the Rimebinder",
	"* |cff71d5ff|Hspell:321754|h[Icebound Aegis]|h|r: The aegis holds - break through the shield.",
	"* |cff71d5ff|Hspell:323730|h[Frozen Binds]|h|r: The binds mark a player - shatter the ice fast.",
	"* |cff71d5ff|Hspell:321894|h[Dark Exile]|h|r: He exiles a player to the lower deck - survive and climb back.",
	"* |cff71d5ff|Hspell:320772|h[Comet Storm]|h|r: Comets rain the floor - keep off the marks.",
};
pack["162689"] = { "Surgeon Stitchflesh",
	"* |cff71d5ff|Hspell:320358|h[Stitched Creation]|h|r: The creation rises - kill it fast.",
	"* |cff71d5ff|Hspell:320376|h[Mutilate]|h|r: Mutilates his tank - keep heals ready.",
	"* |cff71d5ff|Hspell:322681|h[Meat Hook]|h|r: The hook snags a player - break free fast.",
	"* |cff71d5ff|Hspell:327664|h[Embalming Ichor]|h|r: Ichor pools the floor - run out of it.",
};
-- --------------------------------- --
-- Halls of Atonement : Zona 2287 --
-- --------------------------------- --

pack["164185"] = { "Echelon",
	"* |cff71d5ff|Hspell:319941|h[Stone Shattering Leap]|h|r: She leaps onto the marked - the pack clears the spot.",
	"* |cff71d5ff|Hspell:319733|h[Stone Call]|h|r: Stones rise around her - AoE the pack.",
	"* |cff71d5ff|Hspell:328206|h[Curse of Stone]|h|r: The curse petrifies its holder - cleanse it.",
	"* |cff71d5ff|Hspell:326389|h[Blood Torrent]|h|r: The torrent bursts wide - spread out.",
};
pack["165408"] = { "Halkias, the Sin-Stained Goliath",
	"* |cff71d5ff|Hspell:322943|h[Heave Debris]|h|r: Debris hurls at the pack - clear the throws.",
	"* |cff71d5ff|Hspell:322936|h[Crumbling Slam]|h|r: The slam cracks the floor - move him along the lane.",
	"* |cff71d5ff|Hspell:322711|h[Refracted Sinlight]|h|r: The sinlight beams sweep - step off the beam.",
};
pack["165410"] = { "High Adjudicator Aleez",
	"* |cff71d5ff|Hspell:323650|h[Fixate]|h|r: She fixates a player - run the chase around the room.",
	"* |cff71d5ff|Hspell:1236512|h[Unstable Anima]|h|r: Anima bursts scattered - spread out.",
	"* |cff71d5ff|Hspell:323538|h[Anima Bolt]|h|r: The bolt casts - interrupt it.",
};
pack["164218"] = { "Lord Chamberlain",
	"* |cff71d5ff|Hspell:323142|h[Telekinetic Toss]|h|r: Tosses debris at the pack - clear it.",
	"* |cff71d5ff|Hspell:323236|h[Unleashed Suffering]|h|r: Suffering releases in a shockwave - spread out.",
	"* |cff71d5ff|Hspell:329113|h[Telekinetic Onslaught]|h|r: Onslaughts sweep the room - watch the marks.",
	"* |cff71d5ff|Hspell:328791|h[Ritual of Woe]|h|r: The ritual builds a blast - the pack soaks it together.",
};
-- --------------------------------- --
-- Plaguefall : Zona 2289 --
-- --------------------------------- --

pack["164967"] = { "Doctor Ickus",
	"* |cff71d5ff|Hspell:329110|h[Slime Injection]|h|r: The injection grows - dispel it fast.",
	"* |cff71d5ff|Hspell:329217|h[Slime Lunge]|h|r: The lunge swings wide - watch the sweep.",
	"* |cff71d5ff|Hspell:321406|h[Virulent Explosion]|h|r: The explosion builds - spread out before it pops.",
	"* |cff71d5ff|Hspell:319070|h[Corrosive Gunk]|h|r: Gunk corrodes its holder - keep the cleanse ready.",
};
pack["164266"] = { "Domina Venomblade",
	"* |cff71d5ff|Hspell:325245|h[Ambush]|h|r: She ambushes the marked from the shadows - keep heals ready.",
	"* |cff71d5ff|Hspell:336258|h[Solitary Prey]|h|r: Solitary prey isolates a player - the pack spreads off them.",
	"* |cff71d5ff|Hspell:325552|h[Cytotoxic Slash]|h|r: The poison stacks on his tank - swap tanks.",
};
pack["164255"] = { "Globgrog",
	"* |cff71d5ff|Hspell:324527|h[Plague Stomp]|h|r: The stomp shakes the pen - brace it.",
	"* |cff71d5ff|Hspell:324667|h[Slime Wave]|h|r: Slime waves lap the room - keep off the wash.",
	"* |cff71d5ff|Hspell:327608|h[Beckon Slime]|h|r: He beckons slimes close - burn them before they reach him.",
	"* |cff71d5ff|Hspell:324652|h[Debilitating Plague]|h|r: The plague drains its holder - cleanse it.",
};
pack["164267"] = { "Margrave Stradama",
	"* |cff71d5ff|Hspell:322304|h[Malignant Growth]|h|r: Growths sprout and feed him - break them the moment they pop.",
	"* |cff71d5ff|Hspell:322236|h[Touch of Slime]|h|r: The touch needs a soak - pair up and share it.",
	"* |cff71d5ff|Hspell:322473|h[Plague Crash]|h|r: The crash pools slime - stay off the marks.",
};
-- --------------------------------- --
-- Mists of Tirna Scithe : Zona 2290 --
-- --------------------------------- --

pack["164567"] = { "Ingra Maloch",
	"* |cff71d5ff|Hspell:321005|h[Soul Shackle]|h|r: The shackle binds its holder - break it fast.",
	"* |cff71d5ff|Hspell:323059|h[Droman's Wrath]|h|r: Murkhals casts from the grove - break his casts.",
	"* |cff71d5ff|Hspell:328756|h[Repulsive Visage]|h|r: The visage fears the pack - brace and spread.",
	"* |cff71d5ff|Hspell:323137|h[Bewildering Pollen]|h|r: The pollen stuns its marked front - stay off her face.",
};
pack["164501"] = { "Mistcaller",
	"* |cff71d5ff|Hspell:336499|h[Guessing Game]|h|r: The guessing game spawns doubles - find the real one and burst it.",
	"* |cff71d5ff|Hspell:321891|h[Fixate]|h|r: Fixate marks a player - the marked keeps on the move.",
	"* |cff71d5ff|Hspell:321834|h[Dodge Ball]|h|r: Dodge balls streak the room - stay far off the line.",
	"* |cff71d5ff|Hspell:321828|h[Patty Cake]|h|r: The patty cake claps - interrupt it.",
};
pack["164517"] = { "Tred'ova",
	"* |cff71d5ff|Hspell:322563|h[Marked Prey]|h|r: The marked prey gets consumed - the marked runs the room.",
	"* |cff71d5ff|Hspell:322550|h[Accelerated Incubation]|h|r: Cocoons crack open - break the spawn before it hatches.",
	"* |cff71d5ff|Hspell:322648|h[Mind Link]|h|r: The mind link binds two players - run the bond apart.",
	"* |cff71d5ff|Hspell:322450|h[Consumption]|h|r: The consumption chews the floor - step off the marks.",
};
-- --------------------------------- --
-- De Other Side : Zona 2291 --
-- --------------------------------- --

pack["164450"] = { "Dealer Xy'exa",
	"* |cff71d5ff|Hspell:319619|h[Displacement Trap]|h|r: The trap teleports players away - find footing fast.",
	"* |cff71d5ff|Hspell:321948|h[Localized Explosive]|h|r: The explosive arms on a player - carry it away from the pack.",
	"* |cff71d5ff|Hspell:323687|h[Arcane Lightning]|h|r: Lightning arcs between players - spread out.",
	"* |cff71d5ff|Hspell:320230|h[Explosive Contrivance]|h|r: The contrivance detonates wide - hide behind the crystals.",
};
pack["166473"] = { "Hakkar the Soulflayer",
	"* |cff71d5ff|Hspell:322773|h[Blood Barrier]|h|r: The barrier holds him - stun the casts to strip it.",
	"* |cff71d5ff|Hspell:322746|h[Corrupted Blood]|h|r: Blood sprays wide - spread out.",
	"* |cff71d5ff|Hspell:332329|h[Devoted Sacrifice]|h|r: A sacrifice joins the fight - burn it down.",
	"* |cff71d5ff|Hspell:323064|h[Blood Barrage]|h|r: The barrage casts - interrupt it.",
};
pack["169769"] = { "Mueh'zala",
	"* |cff71d5ff|Hspell:325725|h[Cosmic Artifice]|h|r: The artifice marks a player - run it out wide.",
	"* |cff71d5ff|Hspell:326171|h[Shatter Reality]|h|r: Reality shatters around the pack - hide behind the ruins.",
	"* |cff71d5ff|Hspell:325258|h[Master of Death]|h|r: The master releases a shockwave - spread out.",
	"* |cff71d5ff|Hspell:327646|h[Soulcrusher]|h|r: The soulcrusher lands on his tank - defensives up.",
};
bos = { "The Manastorms",
	"* |cff71d5ff|Hspell:320787|h[Summon Power Crystal]|h|r: The crystal hums by the boss - break it fast.",
	"* |cff71d5ff|Hspell:320168|h[Throw Buzz Saw]|h|r: Buzz saws cut across the room - keep off the tracks.",
	"* |cff71d5ff|Hspell:320147|h[Bleeding]|h|r: The bleeding stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:320141|h[Doom]|h|r: The doom detonates near the pack - spread out.",
	"* |cff71d5ff|Hspell:323877|h[Laser]|h|r: The laser sweeps in front - stay behind the boss.",
};
pack["164555"] = bos; pack["164556"] = bos;

-- --------------------------------- --
-- Theater of Pain : Zona 2293 --
-- --------------------------------- --

bos = { "An Affront of Challengers",
	"* |cff71d5ff|Hspell:320069|h[Mortal Strike]|h|r: Mortal strikes on the tank - keep heals ready.",
	"* |cff71d5ff|Hspell:1215741|h[Mighty Smash]|h|r: The smash bursts wide - spread out.",
	"* |cff71d5ff|Hspell:1215738|h[Decaying Breath]|h|r: Breath sweeps a front - step off it.",
	"* |cff71d5ff|Hspell:333231|h[Searing Death]|h|r: Searing pools track players - run them out wide.",
	"* |cff71d5ff|Hspell:1215600|h[Withering Touch]|h|r: The withering clings to its holder - cleanse it.",
};
pack["164451"] = bos; pack["164463"] = bos; pack["164461"] = bos;

pack["162317"] = { "Gorechop",
	"* |cff71d5ff|Hspell:322795|h[Meat Hooks]|h|r: Hooks drag players into the grinder - break them fast.",
	"* |cff71d5ff|Hspell:318406|h[Tenderizing Smash]|h|r: The smash sends everyone flying - keep off his front.",
	"* |cff71d5ff|Hspell:323515|h[Hateful Strike]|h|r: Hateful strikes on his tank - defensives up.",
};
pack["162309"] = { "Kul'tharok",
	"* |cff71d5ff|Hspell:473540|h[Well of Darkness]|h|r: The well spreads darkness - spread out of it.",
	"* |cff71d5ff|Hspell:474298|h[Draw Soul]|h|r: The draw pulls the pack - gather up and soak it.",
	"* |cff71d5ff|Hspell:1216474|h[Death Spiral]|h|r: The spiral sweeps the arena - watch the marks.",
	"* |cff71d5ff|Hspell:474087|h[Necrotic Eruption]|h|r: The eruption bursts in front - stay off his face.",
};
pack["165946"] = { "Mordretha, the Endless Empress",
	"* |cff71d5ff|Hspell:323831|h[Death Grasp]|h|r: The grasp yanks players to her - brace the pull.",
	"* |cff71d5ff|Hspell:324079|h[Reaping Scythe]|h|r: The scythe cleaves the tank - defensives up.",
	"* |cff71d5ff|Hspell:324449|h[Manifest Death]|h|r: Death manifests around the pack - spread out.",
	"* |cff71d5ff|Hspell:324589|h[Death Bolt]|h|r: The bolt casts - interrupt it.",
	"* |cff71d5ff|Hspell:323685|h[Grasping Rift]|h|r: The rift pulls everything inward - keep away from it.",
};
pack["162329"] = { "Xav the Unfallen",
	"* |cff71d5ff|Hspell:317231|h[Crushing Slam]|h|r: The slam lands on his tank - defensives up.",
	"* |cff71d5ff|Hspell:320729|h[Massive Cleave]|h|r: His cleave cuts wide - melee stays behind him.",
	"* |cff71d5ff|Hspell:339415|h[Deafening Crash]|h|r: The crash casts - interrupt it.",
	"* |cff71d5ff|Hspell:320102|h[Blood and Glory]|h|r: He marks a champion for glory - keep the marked safe.",
	"* |cff71d5ff|Hspell:331618|h[Oppressive Banner]|h|r: The banner oppresses the arena - attack it fast.",
};
-- --------------------------------- --
-- Castle Nathria : Zona 2296 --
-- --------------------------------- --

pack["165066"] = { "Huntsman Altimor",
	"* |cff71d5ff|Hspell:335114|h[Sinseeker]|h|r: The sinseekers chase their mark - the pack intercepts the chase.",
	"* |cff71d5ff|Hspell:334971|h[Jagged Claws]|h|r: Claws stack on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:334945|h[Vicious Lunge]|h|r: The lunge needs a soak - pair up and share it.",
};
pack["166644"] = { "Artificer Xy'mox",
	"* |cff71d5ff|Hspell:328437|h[Dimensional Tear]|h|r: Tears open rifts - heal through the drain.",
	"* |cff71d5ff|Hspell:325361|h[Glyph of Destruction]|h|r: The glyph marks its holder - run it out wide.",
	"* |cff71d5ff|Hspell:326271|h[Stasis Trap]|h|r: Traps freeze their ground - step off the marks.",
	"* |cff71d5ff|Hspell:335013|h[Rift Blast]|h|r: The blast rakes its lane - keep off the line.",
};
pack["164261"] = { "Hungering Destroyer",
	"* |cff71d5ff|Hspell:329298|h[Gluttonous Miasma]|h|r: The miasma feeds him from the pack - spread out and stagger heals.",
	"* |cff71d5ff|Hspell:334266|h[Volatile Ejection]|h|r: The ejection erupts on the marked player - get clear.",
	"* |cff71d5ff|Hspell:334522|h[Consume]|h|r: He consumes a low player - keep everyone topped up.",
	"* |cff71d5ff|Hspell:329725|h[Expunge]|h|r: The expunge expels wide - spread out.",
};
pack["165759"] = { "Sun King's Salvation",
	"* |cff71d5ff|Hspell:328885|h[Greater Castigation]|h|r: The castigation burns wide - spread out.",
	"* |cff71d5ff|Hspell:326456|h[Burning Remnants]|h|r: Remnants stack on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:325877|h[Ember Blast]|h|r: The blast needs a soak - pair up and share it.",
	"* |cff71d5ff|Hspell:329509|h[Blazing Surge]|h|r: The surge sweeps the platform - step off it.",
	"* |cff71d5ff|Hspell:337865|h[Unleashed Pyroclasm]|h|r: The pyroclasm casts - interrupt it.",
};
pack["165521"] = { "Lady Inerva Darkvein",
	"* |cff71d5ff|Hspell:325936|h[Shared Cognition]|h|r: Cognition chains the casters - spread out.",
	"* |cff71d5ff|Hspell:340452|h[Change of Heart]|h|r: The heart turns on its holder - run it out wide.",
	"* |cff71d5ff|Hspell:335396|h[Hidden Desire]|h|r: Desire marks a player - keep the marked clear.",
	"* |cff71d5ff|Hspell:325769|h[Bottled Anima]|h|r: Consoles fill with desire - keep the pack's console drained.",
};
pack["164406"] = { "Shriekwing",
	"* |cff71d5ff|Hspell:328897|h[Exsanguinated]|h|r: Exsanguination stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:342074|h[Echolocation]|h|r: Echolocation marks a player - run the sound out wide.",
	"* |cff71d5ff|Hspell:345936|h[Earsplitting Shriek]|h|r: The shriek deafens the pack - interrupt it.",
	"* |cff71d5ff|Hspell:328921|h[Bloodshroud]|h|r: The shroud sends her hunting - the pack spreads apart and survives.",
	"* |cff71d5ff|Hspell:345397|h[Wave of Blood]|h|r: Blood waves lap the room - keep off the wash.",
};
pack["167406"] = { "Sire Denathrius",
	"* |cff71d5ff|Hspell:326851|h[Blood Price]|h|r: Blood price taxes the pack - heal through the drain.",
	"* |cff71d5ff|Hspell:327039|h[Feeding Time]|h|r: Feeding marks a player - run the feed out wide.",
	"* |cff71d5ff|Hspell:327796|h[Night Hunter]|h|r: The hunter needs a soak - pair up and share it.",
	"* |cff71d5ff|Hspell:326707|h[Cleansing Pain]|h|r: The pain releases in a shockwave - spread out.",
	"* |cff71d5ff|Hspell:327227|h[Command: Ravage]|h|r: The ravage sweeps the room - brace it.",
};
pack["164407"] = { "Sludgefist",
	"* |cff71d5ff|Hspell:331209|h[Hateful Gaze]|h|r: His gaze locks a lane - nobody stands in the charge line.",
	"* |cff71d5ff|Hspell:335300|h[Chain Link]|h|r: The chain links partners - stay split from your link.",
	"* |cff71d5ff|Hspell:335470|h[Chain Slam]|h|r: The slam hurls into your partner - pair up and brace.",
	"* |cff71d5ff|Hspell:341250|h[Gruesome Rage]|h|r: The rage builds - finish him before the fury tops out.",
};
bos = { "Stone Legion Generals",
	"* |cff71d5ff|Hspell:329636|h[Hardened Stone Form]|h|r: The stone form splits the generals - break through the stone.",
	"* |cff71d5ff|Hspell:333376|h[Wicked Blade]|h|r: The blade lands on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:334765|h[Heart Rend]|h|r: The rend needs a soak - pair up and share it.",
	"* |cff71d5ff|Hspell:342256|h[Shadow Forces]|h|r: Shadow forces join the fight - AoE the pack down.",
};
pack["168112"] = bos; pack["168113"] = bos;

bos = { "The Council of Blood",
	"* |cff71d5ff|Hspell:328497|h[Danse Macabre]|h|r: The danse takes the floor - mind the lanes and stay apart from the marks.",
	"* |cff71d5ff|Hspell:346690|h[Duelists' Riposte]|h|r: The riposte stacks on the tanks - swap tanks.",
	"* |cff71d5ff|Hspell:346698|h[Dutiful Attendant]|h|r: Attendants join the party - burn them down.",
	"* |cff71d5ff|Hspell:330978|h[Dredger Servants]|h|r: Dredgers swarm in - AoE them down.",
};
pack["166971"] = bos; pack["166969"] = bos; pack["166970"] = bos;

-- --------------------------------- --
-- Tazavesh, the Veiled Market : Zona 2441 --
-- --------------------------------- --

pack["175663"] = { "Hylbrande",
	"* |cff71d5ff|Hspell:346959|h[Purged by Fire]|h|r: Fire purges the marked player - run it out wide.",
	"* |cff71d5ff|Hspell:353312|h[Purifying Burst]|h|r: The burst purifies wide - spread out.",
	"* |cff71d5ff|Hspell:358131|h[Lightning Nova]|h|r: The nova casts - interrupt it.",
	"* |cff71d5ff|Hspell:347094|h[Titanic Crash]|h|r: The crash shakes the floor - brace it.",
};
pack["175646"] = { "Mailroom Mayhem",
	"* |cff71d5ff|Hspell:346286|h[Hazardous Liquids]|h|r: Liquids pool the mailroom - keep off the spills.",
	"* |cff71d5ff|Hspell:369133|h[Unstable Goods]|h|r: Goods go unstable - clear the parcels fast.",
	"* |cff71d5ff|Hspell:346293|h[Fan Mail]|h|r: Mail bursts wide - spread out.",
	"* |cff71d5ff|Hspell:346962|h[Money Order]|h|r: Orders need a soak - pair up and share it.",
};
pack["176564"] = { "Myza's Oasis",
	"* |cff71d5ff|Hspell:350916|h[Security Slam]|h|r: The slam lands on the tank - defensives up.",
	"* |cff71d5ff|Hspell:350922|h[Menacing Shout]|h|r: The shout builds - interrupt it.",
	"* |cff71d5ff|Hspell:350919|h[Crowd Control]|h|r: Control sweeps the crowd - spread out.",
	"* |cff71d5ff|Hspell:357436|h[Infectious Solo]|h|r: The solo races the room - run from it.",
};
pack["175806"] = { "So'azmi",
	"* |cff71d5ff|Hspell:347249|h[Divide]|h|r: Divides the room in a blade line - stay off the cut.",
	"* |cff71d5ff|Hspell:347623|h[Quickblade]|h|r: Quickblade punishes slow swaps - tanks trade fast.",
	"* |cff71d5ff|Hspell:347481|h[Shuriken Storm]|h|r: Shurikens streak the room - keep on the move.",
};
pack["177269"] = { "So'leah",
	"* |cff71d5ff|Hspell:353635|h[Collapsing Star]|h|r: The star collapses into its mark - run it out wide.",
	"* |cff71d5ff|Hspell:351124|h[Summon Assassins]|h|r: Assassins close in - hold the line and kill them.",
	"* |cff71d5ff|Hspell:351086|h[Power Overwhelming]|h|r: He drinks the cartel's power - stun the cast.",
	"* |cff71d5ff|Hspell:351646|h[Hyperlight Nova]|h|r: The nova ripples outward - step wide of it.",
};
bos = { "The Grand Menagerie",
	"* |cff71d5ff|Hspell:349627|h[Gluttony]|h|r: Gluttony marks a player - run the hunger out wide.",
	"* |cff71d5ff|Hspell:349663|h[Grip of Hunger]|h|r: The grip drags players in - keep away from it.",
	"* |cff71d5ff|Hspell:349797|h[Grand Consumption]|h|r: The consumption feeds him - finish the adds first.",
	"* |cff71d5ff|Hspell:349954|h[Purification Protocol]|h|r: The protocol cleanses him - dispel it hard.",
	"* |cff71d5ff|Hspell:350101|h[Chains of Damnation]|h|r: Chains leash their holder - break them fast.",
};
pack["176556"] = bos; pack["176555"] = bos; pack["176705"] = bos;

pack["175546"] = { "Timecap'n Hooktail",
	"* |cff71d5ff|Hspell:347149|h[Infinite Breath]|h|r: Breath baits a lane - bait it away from the pack.",
	"* |cff71d5ff|Hspell:352345|h[Anchor Shot]|h|r: The anchor hooks a player - break free fast.",
	"* |cff71d5ff|Hspell:1240097|h[Time Bomb]|h|r: The bomb ticks on its holder - cleanse it fast.",
};
pack["175616"] = { "Zo'phex the Sentinel",
	"* |cff71d5ff|Hspell:345990|h[Containment Cell]|h|r: Cells cage players - break them open fast.",
	"* |cff71d5ff|Hspell:345770|h[Impound Contraband]|h|r: Contraband gets impounded - kill the crates before he feeds.",
	"* |cff71d5ff|Hspell:348350|h[Interrogation]|h|r: Interrogation turns on a target - the pack takes it off him.",
	"* |cff71d5ff|Hspell:1236348|h[Charged Slash]|h|r: The slash cuts in front - stay off his face.",
};
-- --------------------------------- --
-- Sanctum of Domination : Zona 2450 --
-- --------------------------------- --

pack["175730"] = { "Fatescribe Roh-Kalo",
	"* |cff71d5ff|Hspell:354365|h[Grim Portent]|h|r: The portent marks players - mind the coming blast.",
	"* |cff71d5ff|Hspell:351680|h[Invoke Destiny]|h|r: Destiny binds the tank - swap tanks.",
	"* |cff71d5ff|Hspell:353432|h[Burden of Destiny]|h|r: The burden clings to its holder - the marked carries it away.",
	"* |cff71d5ff|Hspell:353931|h[Twist Fate]|h|r: Fate twists the pack - heal through the shift.",
};
pack["175731"] = { "Guardian of the First Ones",
	"* |cff71d5ff|Hspell:352833|h[Disintegration]|h|r: The beam rakes its lane - nobody stands in it.",
	"* |cff71d5ff|Hspell:350455|h[Radiant Energy]|h|r: Energy floods the floor - hide behind the generators.",
	"* |cff71d5ff|Hspell:352589|h[Meltdown]|h|r: The meltdown detonates - run from it.",
	"* |cff71d5ff|Hspell:352538|h[Purging Protocol]|h|r: The protocol purges the room - spread out.",
	"* |cff71d5ff|Hspell:350732|h[Sunder]|h|r: The sunder lands on the tank - defensives up.",
};
pack["175559"] = { "Kel'Thuzad",
	"* |cff71d5ff|Hspell:353808|h[Glacial Wrath]|h|r: Wrath hurls frozen orbs - break them before they reach the pack.",
	"* |cff71d5ff|Hspell:348756|h[Frost Blast]|h|r: The blast freezes its holders - shatter them free.",
	"* |cff71d5ff|Hspell:352530|h[Dark Evocation]|h|r: The evocation drains all - interrupt it hard.",
	"* |cff71d5ff|Hspell:348978|h[Soul Exhaustion]|h|r: Exhaustion stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:355389|h[Corpse Detonation]|h|r: Corpses detonate on reach - keep away from them.",
};
pack["176523"] = { "Painsmith Raznal",
	"* |cff71d5ff|Hspell:355568|h[Cruciform Axe]|h|r: The axe marks its lane - run it out wide.",
	"* |cff71d5ff|Hspell:348508|h[Reverberating Hammer]|h|r: The hammer rings its marked player - the pack clears the spot.",
	"* |cff71d5ff|Hspell:355505|h[Shadowsteel Chains]|h|r: Chains bind players - break them fast.",
	"* |cff71d5ff|Hspell:348456|h[Flameclasp Trap]|h|r: Traps flare the ground - step off the marks.",
};
pack["175729"] = { "Remnant of Ner'zhul",
	"* |cff71d5ff|Hspell:349908|h[Orb of Torment]|h|r: Orbs torment the pack - break them before they burst.",
	"* |cff71d5ff|Hspell:350469|h[Malevolence]|h|r: Malevolence clings to its holder - carry it apart.",
	"* |cff71d5ff|Hspell:351066|h[Shatter]|h|r: The shatter cracks the room - interrupt it.",
	"* |cff71d5ff|Hspell:350894|h[Suffering]|h|r: Suffering stacks on the tank - swap tanks.",
};
pack["175727"] = { "Soulrender Dormazain",
	"* |cff71d5ff|Hspell:350647|h[Brand of Torment]|h|r: Brands torment their holders - heal through the drain.",
	"* |cff71d5ff|Hspell:350422|h[Ruinblade]|h|r: The ruinblade stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:352158|h[Torment]|h|r: His torment lashes the pack - keep the heals ready.",
	"* |cff71d5ff|Hspell:351779|h[Agonizing Spike]|h|r: The spike casts - interrupt it.",
};
pack["175732"] = { "Sylvanas Windrunner",
	"* |cff71d5ff|Hspell:347504|h[Windrunner]|h|r: The windrunner rides through the pack - stay clear of her charge.",
	"* |cff71d5ff|Hspell:353935|h[Shadow Dagger]|h|r: Daggers mark their holders - keep apart.",
	"* |cff71d5ff|Hspell:348064|h[Wailing Arrow]|h|r: The arrow rakes its lane - nobody stands in it.",
	"* |cff71d5ff|Hspell:347704|h[Veil of Darkness]|h|r: The veil darkens the pack - stack and heal through it.",
	"* |cff71d5ff|Hspell:349419|h[Domination Chains]|h|r: Chains leash players - break them fast.",
};
pack["175725"] = { "The Eye of the Jailer",
	"* |cff71d5ff|Hspell:350803|h[Piercing Lens]|h|r: The lens rakes its lane - keep off the beam.",
	"* |cff71d5ff|Hspell:358609|h[Dragging Chains]|h|r: Chains drag players in - break them fast.",
	"* |cff71d5ff|Hspell:350604|h[Hopeless Lethargy]|h|r: Lethargy marks a player - run it out wide.",
	"* |cff71d5ff|Hspell:350764|h[Annihilating Glare]|h|r: The glare sweeps the room - run the circle ahead of it.",
	"* |cff71d5ff|Hspell:350828|h[Death Link]|h|r: The death link binds the tanks - swap tanks.",
};
pack["175726"] = { "The Nine",
	"* |cff71d5ff|Hspell:350202|h[Unending Strike]|h|r: The strike stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:350342|h[Formless Mass]|h|r: The mass forms around them - AoE it down.",
	"* |cff71d5ff|Hspell:350365|h[Wings of Rage]|h|r: The wings hurl the pack - brace the push.",
	"* |cff71d5ff|Hspell:350385|h[Reverberating Refrain]|h|r: The refrain fills the hall - hide behind the pillars.",
	"* |cff71d5ff|Hspell:350283|h[Soulful Blast]|h|r: The blast casts - interrupt it.",
};
pack["175611"] = { "The Tarragrue",
	"* |cff71d5ff|Hspell:347274|h[Annihilating Smash]|h|r: The smash hurls the tank - brace it.",
	"* |cff71d5ff|Hspell:347283|h[Predator's Howl]|h|r: The howl scatters the pack - brace and stay put.",
	"* |cff71d5ff|Hspell:347369|h[The Jailer's Gaze]|h|r: Gaze marks its holder - run the gaze out wide.",
	"* |cff71d5ff|Hspell:347269|h[Chains of Eternity]|h|r: Chains leash their holder - break them fast.",
};
-- --------------------------------- --
-- Sepulcher of the First Ones : Zona 2481 --
-- --------------------------------- --

pack["181954"] = { "Anduin Wrynn",
	"* |cff71d5ff|Hspell:365295|h[Befouled Barrier]|h|r: A barrier shields his allies - strip it fast.",
	"* |cff71d5ff|Hspell:365030|h[Wicked Star]|h|r: Stars chase their marks - run them out wide.",
	"* |cff71d5ff|Hspell:362405|h[Kingsmourne Hungers]|h|r: The blade hungers for the pack - brace the pull.",
	"* |cff71d5ff|Hspell:361989|h[Blasphemy]|h|r: Blasphemy rips the pack apart - gather up fast.",
	"* |cff71d5ff|Hspell:364031|h[Malignant Ward]|h|r: The malignant ward clings - dispel it.",
};
pack["183501"] = { "Artificer Xy'mox",
	"* |cff71d5ff|Hspell:363520|h[Forerunner Rings]|h|r: Rings ripple outward - keep off the waves.",
	"* |cff71d5ff|Hspell:362615|h[Dimensional Tear]|h|r: Tears drain the room - heal through.",
	"* |cff71d5ff|Hspell:362882|h[Stasis Trap]|h|r: Traps freeze their ground - step off the marks.",
	"* |cff71d5ff|Hspell:362803|h[Glyph of Relocation]|h|r: The glyph moves its holder - the tank trades the mark.",
};
pack["181224"] = { "Dausegne, the Fallen Oracle",
	"* |cff71d5ff|Hspell:361966|h[Infused Strikes]|h|r: Strikes stack on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:361018|h[Staggering Barrage]|h|r: Barrages need soaks - pair up and share them.",
	"* |cff71d5ff|Hspell:359483|h[Domination Core]|h|r: The core hangs loose - push it back into her.",
	"* |cff71d5ff|Hspell:365373|h[Disintegration Halo]|h|r: The halo rings the room - keep off the ring.",
};
pack["180906"] = { "Halondrus the Reclaimer",
	"* |cff71d5ff|Hspell:367079|h[Seismic Tremors]|h|r: Tremors shake the room - brace the burst.",
	"* |cff71d5ff|Hspell:368957|h[Volatile Charge]|h|r: Charges volatile on players - clear them away from the pack.",
	"* |cff71d5ff|Hspell:361676|h[Earthbreaker Missiles]|h|r: Missiles rain wide - spread out.",
	"* |cff71d5ff|Hspell:365297|h[Crushing Prism]|h|r: Prisms crush the ground - step off the marks.",
};
pack["182169"] = { "Lihuvim, Principal Architect",
	"* |cff71d5ff|Hspell:368738|h[Harmonic Alignment]|h|r: Harmony calls the pack in - gather up at the ring.",
	"* |cff71d5ff|Hspell:368740|h[Melodic Alignment]|h|r: Melody calls the pack out - spread apart from the ring.",
	"* |cff71d5ff|Hspell:362622|h[Unstable Mote]|h|r: Motes burst on their holder - carry them away.",
	"* |cff71d5ff|Hspell:363088|h[Cosmic Shift]|h|r: The shift throws everything - brace the pull.",
};
bos = { "Lords of Dread",
	"* |cff71d5ff|Hspell:360012|h[Cloud of Carrion]|h|r: The cloud drifts over the pack - spread out clear of it.",
	"* |cff71d5ff|Hspell:361913|h[Manifest Shadows]|h|r: Shadows manifest around them - AoE them down.",
	"* |cff71d5ff|Hspell:360319|h[Unto Darkness]|h|r: Darkness claims the room - brace the coming burst.",
	"* |cff71d5ff|Hspell:359960|h[Leeching Claws]|h|r: Claws leech the tank - defensives up.",
};
pack["181398"] = bos; pack["181399"] = bos;

bos = { "Prototype Pantheon",
	"* |cff71d5ff|Hspell:360687|h[Runecarver's Deathtouch]|h|r: Deathtouch marks its holders - carry the marks apart.",
	"* |cff71d5ff|Hspell:360295|h[Necrotic Ritual]|h|r: The ritual raises the dead - break it fast.",
	"* |cff71d5ff|Hspell:362352|h[Pinned]|h|r: Pinning pins its holders - break free fast.",
	"* |cff71d5ff|Hspell:365272|h[Humbling Strikes]|h|r: Strikes stack on the tank - swap tanks.",
};
pack["181548"] = bos; pack["181551"] = bos; pack["181546"] = bos; pack["181549"] = bos;

pack["182777"] = { "Rygelon",
	"* |cff71d5ff|Hspell:362275|h[Celestial Collapse]|h|r: Collapses burst in sequence - mind the order.",
	"* |cff71d5ff|Hspell:362206|h[Event Horizon]|h|r: The horizon pulls the pack in - brace the drag.",
	"* |cff71d5ff|Hspell:362390|h[Manifest Cosmos]|h|r: Cosmos manifest around him - AoE them down.",
	"* |cff71d5ff|Hspell:363108|h[Celestial Terminator]|h|r: The terminator sweeps the room - brace it.",
};
pack["181395"] = { "Skolex, the Insatiable Ravener",
	"* |cff71d5ff|Hspell:359829|h[Dust Flail]|h|r: Flails burst wide - spread out.",
	"* |cff71d5ff|Hspell:359979|h[Rend]|h|r: Rends stack on the tanks - swap tanks.",
	"* |cff71d5ff|Hspell:359770|h[Ravening Burrow]|h|r: They burrow away - brace the burst on return.",
	"* |cff71d5ff|Hspell:360448|h[Retch]|h|r: The retch rakes a shockwave - keep off the front.",
};
pack["180990"] = { "The Jailer",
	"* |cff71d5ff|Hspell:362075|h[Domination]|h|r: Domination crushes the pack - brace the weight.",
	"* |cff71d5ff|Hspell:360281|h[Rune of Damnation]|h|r: Damnation marks players - carry the marks apart.",
	"* |cff71d5ff|Hspell:366374|h[World Crusher]|h|r: The crusher slams wide - spread out.",
	"* |cff71d5ff|Hspell:362631|h[Chains of Oppression]|h|r: Chains bind players together - break them apart.",
	"* |cff71d5ff|Hspell:362028|h[Relenting Domination]|h|r: Domination floods the room - hide behind the pillar.",
};
pack["180773"] = { "Vigilant Guardian",
	"* |cff71d5ff|Hspell:361001|h[Wave of Disintegration]|h|r: The wave rakes the room - keep off the beam.",
	"* |cff71d5ff|Hspell:359610|h[Deresolution]|h|r: The beam sweeps the room - run the circle ahead of it.",
	"* |cff71d5ff|Hspell:364447|h[Dissonance]|h|r: Dissonance stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:360658|h[Prefabricated Sentry]|h|r: Sentries deploy into the fight - burn them down.",
};
-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["182466"] = { "Antros",
	"* |cff71d5ff|Hspell:361632|h[Banishment Mark]|h|r: The mark banishes its holder - mind the mark.",
	"* |cff71d5ff|Hspell:361390|h[Dark Deterrence]|h|r: Deterrence stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:361209|h[Furious Slam]|h|r: The slam shakes the ground - spread out.",
	"* |cff71d5ff|Hspell:361341|h[Destruction Cores]|h|r: Cores rain the clearing - step off the marks.",
};
pack["178958"] = { "Morgeth",
	"* |cff71d5ff|Hspell:353741|h[Cries of Anguish]|h|r: Anguish rings out - brace the cries.",
	"* |cff71d5ff|Hspell:353800|h[Torment]|h|r: Torment stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:356430|h[Iron Golem]|h|r: An iron golem joins the fight - burn it down.",
	"* |cff71d5ff|Hspell:355456|h[Damnation]|h|r: Damnation bursts wide - spread out.",
};
pack["167525"] = { "Mortanis",
	"* |cff71d5ff|Hspell:338847|h[Unholy Frenzy]|h|r: Frenzy enrages him - soothe it.",
	"* |cff71d5ff|Hspell:338851|h[Screaming Skull]|h|r: Skulls need a soak - pair up and share them.",
	"* |cff71d5ff|Hspell:338846|h[Bone Cleave]|h|r: The cleave cuts wide - melee stays behind.",
	"* |cff71d5ff|Hspell:338849|h[Unruly Remains]|h|r: Remains stir around him - AoE them down.",
};
pack["167526"] = { "Nurgash",
	"* |cff71d5ff|Hspell:338858|h[Stone Fist]|h|r: Fists pummel the tank - defensives up.",
	"* |cff71d5ff|Hspell:338863|h[Stone Stomp]|h|r: The stomp shakes the ground - spread out.",
	"* |cff71d5ff|Hspell:338868|h[Deep Slumber]|h|r: The slumber drops the pack - wake up fast.",
	"* |cff71d5ff|Hspell:338867|h[Hail of Stones]|h|r: Stones hail the edges - stand at the center.",
};
pack["167527"] = { "Oranomonos",
	"* |cff71d5ff|Hspell:339040|h[Stone Stomp]|h|r: The stomp shakes the grove - spread out.",
	"* |cff71d5ff|Hspell:338852|h[Implant]|h|r: Implants stack on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:338857|h[Regrowth]|h|r: Regrowth heals him - interrupt it.",
	"* |cff71d5ff|Hspell:338855|h[Seeds of Sorrow]|h|r: Seeds burst wide - run from the bloom.",
};
pack["167524"] = { "Valinor",
	"* |cff71d5ff|Hspell:327256|h[Vent Anima]|h|r: Anima vents across the floor - keep off the vents.",
	"* |cff71d5ff|Hspell:327255|h[Mark of Penitence]|h|r: Penitence stacks on the tank - swap tanks.",
	"* |cff71d5ff|Hspell:339278|h[Lysonia's Call]|h|r: The call marks its holder - keep the marked clear.",
	"* |cff71d5ff|Hspell:327262|h[Charged Anima Blast]|h|r: The blast charges its mark - run it out wide.",
};
P.en = en;
