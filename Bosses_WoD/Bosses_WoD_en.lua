--[[
	Bosses_WoD_en.lua
		Datos in English of the WoD
		pack: the two raids (Highmaul, Blackrock Foundry), Hellfire Citadel, the
		dungeons and the Draenor world bosses. Sources: DBM-Raids/Party-WoD and DBM-Draenor
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Bloodmaul Slag Mines : Zona 1175 --
-- --------------------------------- --

pack["74787"] = { "Slave Watcher Crushto",
	"* |cff71d5ff|Hspell:150751|h[Crushing Leap]|h|r: his crushing leap jumps at its mark - the marked clear out.",
	"* |cff71d5ff|Hspell:150759|h[Ferocious Yell]|h|r: his ferocious yell - interrupt it every time.",
	"* |cff71d5ff|Hspell:150801|h[Raise Miners]|h|r: he raises his miners - kill the miners fast.",
	"* |cff71d5ff|Hspell:153679|h[Earth Crush]|h|r: his earth crush breaks the ground - step out of the crush.",
	"* |cff71d5ff|Hspell:150753|h[Wild Slam]|h|r: his wild slam flings the close back - brace the slam.",
};
pack["74790"] = { "Gug'rokk",
	"* |cff71d5ff|Hspell:150678|h[Molten Core]|h|r: his molten core burns inside him - purge it at once.",
	"* |cff71d5ff|Hspell:150677|h[Molten Blast]|h|r: his molten blast - stun or stop it at every cast.",
	"* |cff71d5ff|Hspell:150755|h[Unstable Slag]|h|r: the unstable slags kindle in - burn them before they burst.",
	"* |cff71d5ff|Hspell:150784|h[Magma Eruption]|h|r: her magma eruption bubbles the floor - never stand in the eruption.",
};
bos = { "Magmolatus",
	"* |cff71d5ff|Hspell:149975|h[Dancing Flames]|h|r: his dancing flames ride their bearer - purge them fast.",
	"* |cff71d5ff|Hspell:150038|h[Molten Impact]|h|r: his molten impact lands heavy - alternate tanks.",
	"* |cff71d5ff|Hspell:150011|h[Magma Barrage]|h|r: the magma barrage rains down - dodge the barrage.",
	"* |cff71d5ff|Hspell:149941|h[Rough Smash]|h|r: his rough smash blows out - run from the smash.",
	"* |cff71d5ff|Hspell:149997|h[Firestorm]|h|r: his firestorm - stun or stop it at every cast.",
};
pack["74366"] = bos; pack["74475"] = bos;

pack["75786"] = { "Roltall",
	"* |cff71d5ff|Hspell:152940|h[Heat Wave]|h|r: his heat wave scorches whoever stands close - keep away.",
	"* |cff71d5ff|Hspell:152939|h[Burning Slag]|h|r: the burning slag spreads underfoot - avoid the slag.",
	"* |cff71d5ff|Hspell:153247|h[Fiery Boulder]|h|r: the fiery boulder lands at its mark - run from the boulder.",
};
-- --------------------------------- --
-- Shadowmoon Burial Grounds : Zona 1176 --
-- --------------------------------- --

pack["75452"] = { "Bonemaw",
	"* |cff71d5ff|Hspell:154175|h[Body Slam]|h|r: his body slams crash the room - dodge the slams.",
	"* |cff71d5ff|Hspell:165578|h[Corpse Breath]|h|r: his corpse breath exhales out front - keep out of the exhale.",
	"* |cff71d5ff|Hspell:177694|h[Submerge]|h|r: he submerges beneath the goo - brace the resurface.",
	"* |cff71d5ff|Hspell:153692|h[Necrotic Pitch]|h|r: the necrotic pitch pools the floor - avoid the pitch.",
};
pack["76407"] = { "Ner'zhul",
	"* |cff71d5ff|Hspell:154350|h[Omen of Death]|h|r: the omen of death - get out of the omen's line.",
	"* |cff71d5ff|Hspell:154671|h[Ritual of Bones]|h|r: the ritual of bones is his peak - brace the ritual.",
	"* |cff71d5ff|Hspell:154442|h[Malevolence]|h|r: his malevolence rakes the ground - dodge the rake.",
};
pack["75829"] = { "Nhallish",
	"* |cff71d5ff|Hspell:152801|h[Void Vortex]|h|r: the void vortex yanks everyone in - run from the pull.",
	"* |cff71d5ff|Hspell:152979|h[Soul Shred]|h|r: the soul shred takes a player's spirit - kill the spirit to give it back.",
	"* |cff71d5ff|Hspell:153067|h[Void Devastation]|h|r: the void devastation - spread and heal it through.",
};
pack["75509"] = { "Sadana Bloodfury",
	"* |cff71d5ff|Hspell:153240|h[Dagger Fall]|h|r: her dagger falls spear down at marks - dodge the daggers.",
	"* |cff71d5ff|Hspell:153153|h[Dark Communion]|h|r: her dark communion feeds on its worshippers - cut the worshippers down.",
	"* |cff71d5ff|Hspell:153094|h[Whispers]|h|r: the whispers claw everyone - spread and heal.",
	"* |cff71d5ff|Hspell:164974|h[Dark Eclipse]|h|r: the dark eclipse rides its bearer - brace the eclipse.",
};
-- --------------------------------- --
-- Auchindoun : Zona 1182 --
-- --------------------------------- --

pack["75927"] = { "Azzakel",
	"* |cff71d5ff|Hspell:153396|h[Curtain of Flame]|h|r: the curtain of flame sweeps out - get out of the curtain.",
	"* |cff71d5ff|Hspell:153234|h[Fel Lash]|h|r: the fel lash cracks out - keep clear of the lash.",
	"* |cff71d5ff|Hspell:157173|h[Fel Stomp]|h|r: his fel stomp quake out - brace the stomp.",
	"* |cff71d5ff|Hspell:153764|h[Claws of Argus]|h|r: the claws of argus rake in - burn the claws fast.",
};
pack["76177"] = { "Soulbinder Nyami",
	"* |cff71d5ff|Hspell:154477|h[Shadow Word: Pain]|h|r: her pains ride their bearers - purge them fast.",
	"* |cff71d5ff|Hspell:155327|h[Soul Vessel]|h|r: her soul vessel - brace the pull around the vessel.",
	"* |cff71d5ff|Hspell:153991|h[Torn Spirits]|h|r: she calls her torn spirits - burn the spirits fast.",
};
pack["75839"] = { "Vigilant Kaathar",
	"* |cff71d5ff|Hspell:153006|h[Consecrated Light]|h|r: the consecrated light rains down - take cover behind the holy shield.",
	"* |cff71d5ff|Hspell:153002|h[Holy Shield]|h|r: his holy shield stands between the group and the light - hold it up in time.",
	"* |cff71d5ff|Hspell:161457|h[Sanctified Ground]|h|r: the sanctified ground sears underfoot - avoid the ground.",
};
pack["77734"] = { "Teron'gor",
	"* |cff71d5ff|Hspell:156854|h[Drain Life]|h|r: his drain life mends him - interrupt it every time.",
	"* |cff71d5ff|Hspell:157168|h[Fixate]|h|r: his fixate locks onto its mark - the marked keep running.",
	"* |cff71d5ff|Hspell:156965|h[Doom]|h|r: his doom - brace the doom and heal hard.",
	"* |cff71d5ff|Hspell:156857|h[Rain of Fire]|h|r: his rain of fire - avoid the falling fire.",
	"* |cff71d5ff|Hspell:156842|h[Corruption]|h|r: his corruption rides its bearer - purge it fast.",
};
-- --------------------------------- --
-- Iron Docks : Zona 1195 --
-- --------------------------------- --

bos = { "Grimrail Enforcers",
	"* |cff71d5ff|Hspell:163689|h[Sanguine Sphere]|h|r: the sanguine sphere wraps one of them - stop attacking the sphere.",
	"* |cff71d5ff|Hspell:163665|h[Flaming Slash]|h|r: his flaming slash cuts a burning line - dodge the slash.",
	"* |cff71d5ff|Hspell:165152|h[Lava Swipe]|h|r: the lava swipe rakes the ground - step out of the swipe.",
	"* |cff71d5ff|Hspell:163379|h[Big Boom]|h|r: the big boom - get out of the blast.",
};
pack["80805"] = bos; pack["80816"] = bos; pack["80808"] = bos;

bos = { "Fleshrender Nok'gar",
	"* |cff71d5ff|Hspell:164426|h[Reckless Provocation]|h|r: his reckless provocation goads him - stop attacking while it holds.",
	"* |cff71d5ff|Hspell:164835|h[Bloodletting Howl]|h|r: his bloodletting howl - brace the howl and heal.",
	"* |cff71d5ff|Hspell:164635|h[Burning Arrows]|h|r: the burning arrows rain down - avoid the arrows.",
};
pack["81297"] = bos; pack["81305"] = bos;

pack["79852"] = { "Oshir",
	"* |cff71d5ff|Hspell:162415|h[Time to Feed]|h|r: his time to feed grips its victim - heal the victim hard to outlast it.",
	"* |cff71d5ff|Hspell:161239|h[Rending Slashes]|h|r: the rending slashes sweep his front - dodge the slashes.",
	"* |cff71d5ff|Hspell:163054|h[Roar]|h|r: his roar shatters out - spread and heal it through.",
	"* |cff71d5ff|Hspell:178156|h[Acid Splash]|h|r: the acid splash pools underfoot - avoid the splash.",
};
pack["83612"] = { "Skulloc",
	"* |cff71d5ff|Hspell:168398|h[Rapid Fire]|h|r: his rapid fire batters its mark - the marked kite it clear.",
	"* |cff71d5ff|Hspell:168929|h[Cannon Barrage]|h|r: the cannon barrage hammers the deck - take the cover the deck gives.",
	"* |cff71d5ff|Hspell:168227|h[Gron Smash]|h|r: his gron smash flings back - brace the smash.",
};
-- --------------------------------- --
-- Blackrock Foundry : Zona 1205 --
-- --------------------------------- --

pack["77325"] = { "Blackhand",
	"* |cff71d5ff|Hspell:156479|h[Massive Demolition]|h|r: the massive demolitions rain down - get out of the demolitions.",
	"* |cff71d5ff|Hspell:156096|h[Marked for Death]|h|r: his mark of doom rides its bearer - the marked brace the barrage.",
	"* |cff71d5ff|Hspell:156667|h[Siegemaker]|h|r: his siegemakers wake up - burn the siegemakers fast.",
	"* |cff71d5ff|Hspell:157000|h[Attach Slag Bombs]|h|r: his slag bombs land at marks - the marked haul away.",
	"* |cff71d5ff|Hspell:155992|h[Shattering Smash]|h|r: his shattering smash lands brutal - alternate tanks.",
};
bos = { "The Blast Furnace",
	"* |cff71d5ff|Hspell:155192|h[Bomb]|h|r: the blast bombs land on marks - the marked drop them fast.",
	"* |cff71d5ff|Hspell:176121|h[Volatile Fire]|h|r: the volatile fire leaps to whoever stands close - spread so it stops leaping.",
	"* |cff71d5ff|Hspell:155179|h[Engineer]|h|r: she calls her engineers - burn the engineers fast.",
	"* |cff71d5ff|Hspell:155196|h[Fixate]|h|r: the fixate locks onto its mark - the marked keep running.",
};
pack["76809"] = bos; pack["76806"] = bos;

pack["76865"] = { "Beastlord Darmac",
	"* |cff71d5ff|Hspell:154960|h[Pin Down]|h|r: his pin down spikes the ground at marks - dodge the spikes.",
	"* |cff71d5ff|Hspell:154975|h[Call the Pack]|h|r: he calls the pack - kill the beasts fast.",
	"* |cff71d5ff|Hspell:155236|h[Crush Armor]|h|r: his crushing armor grinds its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:155247|h[Stampede]|h|r: the stampede thunders through - get out of the run.",
	"* |cff71d5ff|Hspell:154989|h[Inferno Breath]|h|r: his inferno breath sears the front - keep out of the breath.",
};
pack["76877"] = { "Gruul",
	"* |cff71d5ff|Hspell:155078|h[Overwhelming Blows]|h|r: his overwhelming blows pile on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:155080|h[Inferno Slice]|h|r: his inferno slice shares its burn - line up in front and take the slice together.",
	"* |cff71d5ff|Hspell:155326|h[Petrifying Slam]|h|r: his petrifying slam stones the group - the petrified burst free.",
	"* |cff71d5ff|Hspell:155730|h[Crumbling Roar]|h|r: his crumbling roar - spread and heal it through.",
	"* |cff71d5ff|Hspell:173192|h[Cave In]|h|r: the cave ins crash down - dodge the falls.",
};
bos = { "Hans'gar and Franzok",
	"* |cff71d5ff|Hspell:153470|h[Skullcracker]|h|r: his skullcracker bashes its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:160838|h[Disrupting Roar]|h|r: his disrupting roar - stop casting while it roars.",
	"* |cff71d5ff|Hspell:156938|h[Crippling Supplex]|h|r: his crippling supplex grabs its tank hard - alternate tanks.",
	"* |cff71d5ff|Hspell:161570|h[Searing Plates]|h|r: the searing plates blaze the floor - avoid the plates.",
	"* |cff71d5ff|Hspell:174825|h[Stampers]|h|r: the floor stampers slam down - never stand under a stamper.",
};
pack["76974"] = bos; pack["76973"] = bos;

bos = { "The Iron Maidens",
	"* |cff71d5ff|Hspell:157854|h[Bombardment Alpha]|h|r: the bombardment hammers the deck - brace the bombardment.",
	"* |cff71d5ff|Hspell:156631|h[Rapid Fire]|h|r: her rapid fire hunts its mark - the marked kite it clear.",
	"* |cff71d5ff|Hspell:156214|h[Convulsive Shadows]|h|r: the convulsive shadows mark their bearer - the marked keep out of the group.",
	"* |cff71d5ff|Hspell:158707|h[Protective Earth]|h|r: her protective earth shields her - burst the shield down.",
	"* |cff71d5ff|Hspell:158315|h[Dark Hunt]|h|r: the dark hunt charges its mark - out of the hunt's path.",
};
pack["77557"] = bos; pack["77231"] = bos; pack["77477"] = bos;

pack["76814"] = { "Flamebender Ka'graz",
	"* |cff71d5ff|Hspell:155318|h[Lava Slash]|h|r: her lava slash sweeps out - run from the slash.",
	"* |cff71d5ff|Hspell:155277|h[Blazing Radiance]|h|r: the blazing radiance marks its bearer - the bearer keeps their distance.",
	"* |cff71d5ff|Hspell:156724|h[Summon Enchanted Armaments]|h|r: her enchanted armaments take up arms - burn the armaments fast.",
	"* |cff71d5ff|Hspell:154932|h[Molten Torrent]|h|r: her molten torrent spews at its mark - the marked haul away.",
	"* |cff71d5ff|Hspell:155074|h[Charring Breath]|h|r: his charring breath sears the front - keep out of the breath.",
};
pack["77692"] = { "Kromog",
	"* |cff71d5ff|Hspell:161923|h[Crushing Earth]|h|r: the crushing earth hands slam down - dodge the hands.",
	"* |cff71d5ff|Hspell:158130|h[Stone Geyser]|h|r: the stone geysers spear up at marks - dodge the geysers.",
	"* |cff71d5ff|Hspell:157060|h[Grasping Earth]|h|r: the grasping earth hands reach out - get clear before they close.",
	"* |cff71d5ff|Hspell:157054|h[Thundering Blows]|h|r: his thundering blows blast the room off - brace the blows.",
	"* |cff71d5ff|Hspell:156852|h[Stone Breath]|h|r: his stone breath washes his front - keep out of the breath.",
	"* |cff71d5ff|Hspell:156766|h[Warped Armor]|h|r: his warped armor grinds its tank - alternate tanks.",
};
pack["77182"] = { "Oregorger",
	"* |cff71d5ff|Hspell:156240|h[Acid Torrent]|h|r: his acid torrent grinds the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:156179|h[Retched Blackrock]|h|r: his retched vomit streams out - run from the stream.",
	"* |cff71d5ff|Hspell:155898|h[Rolling Fury]|h|r: his rolling fury bowls across the room - keep off the rolling path.",
	"* |cff71d5ff|Hspell:156877|h[Blackrock Barrage]|h|r: his barrages hammer the close - spread and heal.",
};
pack["76906"] = { "Operator Thogar",
	"* |cff71d5ff|Hspell:176312|h[Train]|h|r: the trains barrel down their lanes - never stand in a train's lane.",
	"* |cff71d5ff|Hspell:155864|h[Proto Grenade]|h|r: the proto grenades blow at their marks - the marked clear the blast.",
	"* |cff71d5ff|Hspell:155921|h[Enkindle]|h|r: his enkindle stacks on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:159481|h[Delayed Siege Bomb]|h|r: the delayed siege bombs land at marks - the marked spread from the blast.",
};
-- --------------------------------- --
-- Grimrail Depot : Zona 1208 --
-- --------------------------------- --

pack["79545"] = { "Nitrogg Thundertower",
	"* |cff71d5ff|Hspell:163550|h[Mortar]|h|r: his mortars shell the ground at marks - dodge the shells.",
	"* |cff71d5ff|Hspell:160681|h[Suppressive Fire]|h|r: the suppressive fire sweeps wide - take the cover the ground gives.",
	"* |cff71d5ff|Hspell:160943|h[Shrapnel Blast]|h|r: his shrapnel blast rakes out front - step out of the blast.",
};
bos = { "Rocketspark and Borka",
	"* |cff71d5ff|Hspell:162407|h[X21-01A Missile]|h|r: the missiles blitz out - spread from the falls.",
	"* |cff71d5ff|Hspell:161090|h[Mad Dash]|h|r: the mad dash burns a line - get out of the dash line.",
	"* |cff71d5ff|Hspell:162500|h[VX18-B]|h|r: his vx bomb bounces out - dodge the bomb.",
};
pack["77803"] = bos; pack["77816"] = bos;

pack["80005"] = { "Skylord Tovra",
	"* |cff71d5ff|Hspell:162066|h[Freezing Snare]|h|r: the freezing snares spear down at marks - dodge the snares.",
	"* |cff71d5ff|Hspell:163447|h[Mark of Frost]|h|r: the marks of frost ride their bearers - the marked keep running.",
	"* |cff71d5ff|Hspell:162058|h[Spinning Spear]|h|r: his spinning spear rakes the ground - step out of the spear.",
};
-- --------------------------------- --
-- Skyreach : Zona 1209 --
-- --------------------------------- --

pack["76141"] = { "Araknath",
	"* |cff71d5ff|Hspell:154115|h[Fiery Smash]|h|r: his fiery smashes blaze out front - keep off the front.",
	"* |cff71d5ff|Hspell:154162|h[Energize]|h|r: he drinks from his conduit - smash the conduit to break the feed.",
	"* |cff71d5ff|Hspell:154135|h[Supernova]|h|r: the supernova - spread and heal it through.",
};
pack["75964"] = { "Ranjit",
	"* |cff71d5ff|Hspell:153757|h[Fan of Blades]|h|r: his blade fans cut out at marks - dodge the fans.",
	"* |cff71d5ff|Hspell:156793|h[Chakram Vortex]|h|r: the chakram vortex spins wild - get out of the spinning.",
	"* |cff71d5ff|Hspell:153315|h[Wind Fall]|h|r: the wind falls rake the floor - dodge the falls.",
	"* |cff71d5ff|Hspell:154043|h[Lens Flare]|h|r: the lens flares scorch out - avoid the flares.",
};
pack["76143"] = { "Rukhran",
	"* |cff71d5ff|Hspell:1253510|h[Sunbreak]|h|r: the sunbreaks shatter out - spread and heal.",
	"* |cff71d5ff|Hspell:1253527|h[Searing Quills]|h|r: the searing quills - break the sightline until they pass.",
	"* |cff71d5ff|Hspell:153810|h[Solar Flare]|h|r: the solar flare - brace the flare and heal.",
	"* |cff71d5ff|Hspell:153794|h[Pierce Armor]|h|r: his piercing armor grinds its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:159382|h[Quills]|h|r: the quills shred up at marks - break the sightline and heal.",
};
pack["76266"] = { "High Sage Viryx",
	"* |cff71d5ff|Hspell:1253538|h[Scorching Ray]|h|r: her scorching rays burn their bearers - the burned keep apart.",
	"* |cff71d5ff|Hspell:1253998|h[Cast Down]|h|r: her cast down hunts its mark - the marked brace the spear.",
	"* |cff71d5ff|Hspell:154396|h[Solar Blast]|h|r: her solar blast - interrupt it every time.",
	"* |cff71d5ff|Hspell:154055|h[Shielding]|h|r: her shield mends her - interrupt it at every cast.",
};
-- --------------------------------- --
-- Highmaul : Zona 1228 --
-- --------------------------------- --

pack["78491"] = { "Brackenspore",
	"* |cff71d5ff|Hspell:159219|h[Necrotic Breath]|h|r: his necrotic breath washes his front - keep out of the breath.",
	"* |cff71d5ff|Hspell:163241|h[Rot]|h|r: his rot stacks on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:160022|h[Living Mushroom]|h|r: his living mushrooms mend whoever stands on them - keep the good fungi alive.",
	"* |cff71d5ff|Hspell:163590|h[Creeping Moss]|h|r: his creeping moss feeds him - shred the moss off his path.",
	"* |cff71d5ff|Hspell:159996|h[Infesting Spores]|h|r: the infesting spores - brace the spores and heal hard.",
};
pack["78714"] = { "Kargath Bladefist",
	"* |cff71d5ff|Hspell:159947|h[Chain Hurl]|h|r: his chain hurls its victim into the stands - the thrown fight the tigers and drop the spikes.",
	"* |cff71d5ff|Hspell:159178|h[Open Wounds]|h|r: his open wounds gash the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:158986|h[Berserker Rush]|h|r: his berserker rush charges out front - get out of the rush.",
	"* |cff71d5ff|Hspell:159113|h[Impale]|h|r: his impale drives into its tank - brace the impale.",
	"* |cff71d5ff|Hspell:159413|h[Mauling Brew]|h|r: the mauling brews soak the floor - avoid the brew.",
};
pack["79015"] = { "Ko'ragh",
	"* |cff71d5ff|Hspell:161411|h[Expel Magic: Frost]|h|r: his expel magic of frost freezes its mark - the marked brace the deep frost.",
	"* |cff71d5ff|Hspell:162186|h[Expel Magic: Arcane]|h|r: the arcane balls fly loose - their marks catch the balls.",
	"* |cff71d5ff|Hspell:156803|h[Null Barrier]|h|r: his null barrier soaks everything - burn the barrier down and catch his falter.",
	"* |cff71d5ff|Hspell:163101|h[Trample]|h|r: his trample charges through - out of the charge path.",
};
bos = { "Imperator Mar'gok",
	"* |cff71d5ff|Hspell:158605|h[Mark of Chaos]|h|r: the mark of chaos rides its bearer - the bearer keeps clear of the group.",
	"* |cff71d5ff|Hspell:156225|h[Branded]|h|r: the branded mark rides its bearer - the branded brace the phase's twist.",
	"* |cff71d5ff|Hspell:158553|h[Crush Armor]|h|r: his crushing armor grinds its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:165243|h[Glimpse of Madness]|h|r: the glimpses of madness tear loose - get out of the glimpses.",
	"* |cff71d5ff|Hspell:178607|h[Dark Star]|h|r: the dark stars drift out - don't touch the stars.",
};
pack["77428"] = bos; pack["78623"] = bos;

bos = { "Tectus",
	"* |cff71d5ff|Hspell:162346|h[Crystalline Barrage]|h|r: the crystalline barrage chases its marks - the marked kite the shards.",
	"* |cff71d5ff|Hspell:162475|h[Tectonic Upheaval]|h|r: the tectonic upheaval - brace the upheaval and heal.",
	"* |cff71d5ff|Hspell:162518|h[Earthen Pillar]|h|r: the earthen pillars spear up at marks - dodge the pillars.",
	"* |cff71d5ff|Hspell:162968|h[Earthen Flechettes]|h|r: the earthen flechettes rake outward - step out of the rake.",
	"* |cff71d5ff|Hspell:162894|h[Gift of Earth]|h|r: his gift of earth shields him - burst the shield down.",
};
pack["78948"] = bos; pack["80557"] = bos; pack["80551"] = bos;

pack["77404"] = { "The Butcher",
	"* |cff71d5ff|Hspell:156157|h[Cleave]|h|r: his cleaves sweep his front - the melee holds behind.",
	"* |cff71d5ff|Hspell:156151|h[Tenderizer]|h|r: his tenderizers stack on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:156152|h[Gushing Wounds]|h|r: the gushing wounds leap to whoever stands close - spread so they stop leaping.",
	"* |cff71d5ff|Hspell:156160|h[Bounding Cleave]|h|r: the bounding cleave - gather in front and share the cleave.",
	"* |cff71d5ff|Hspell:156598|h[Frenzy]|h|r: his frenzy peaks at low life - burn him down through it.",
};
bos = { "Twin Ogron",
	"* |cff71d5ff|Hspell:157943|h[Whirl Wind]|h|r: the whirlwind spins wild - get out of the spinning.",
	"* |cff71d5ff|Hspell:158385|h[Pulverize]|h|r: the pulverize blows out front huge - spread from the blast.",
	"* |cff71d5ff|Hspell:158057|h[Enfeebling Roar]|h|r: his enfeebling roar - brace the roar and heal.",
	"* |cff71d5ff|Hspell:158241|h[Blaze]|h|r: the blaze rolls along a line - dodge the line.",
	"* |cff71d5ff|Hspell:158134|h[Shield Charge]|h|r: his shield charge barrels its mark - clear the charge path.",
	"* |cff71d5ff|Hspell:163372|h[Arcane Volatility]|h|r: the arcane volatility rides its bearer - the bearer stands apart.",
};
pack["78238"] = bos; pack["78237"] = bos;

-- --------------------------------- --
-- The Everbloom : Zona 1279 --
-- --------------------------------- --

bos = { "Ancient Protectors",
	"* |cff71d5ff|Hspell:168082|h[Revitalize]|h|r: her revitalizing waters mend him - interrupt them at every cast.",
	"* |cff71d5ff|Hspell:427510|h[Noxious Charge]|h|r: his noxious charge barrels its mark - clear the charge path.",
	"* |cff71d5ff|Hspell:427459|h[Toxic Bloom]|h|r: the toxic blooms bloom - avoid the blooms.",
	"* |cff71d5ff|Hspell:167977|h[Bramble]|h|r: the brambles snag the floor - avoid the brambles.",
};
pack["83894"] = bos; pack["83892"] = bos; pack["83893"] = bos;

pack["82682"] = { "Archmage Sol",
	"* |cff71d5ff|Hspell:427899|h[Cinderbolt Storm]|h|r: her cinderbolt storm pelts the room - dodge the bolts.",
	"* |cff71d5ff|Hspell:428082|h[Glacial Fusion]|h|r: her glacial fusion orbs out - avoid the fused orbs.",
	"* |cff71d5ff|Hspell:428139|h[Spatial Compression]|h|r: her spatial compression yanks everyone in - run from the pull.",
	"* |cff71d5ff|Hspell:427863|h[Frostbolt]|h|r: her frostbolts - interrupt them at every cast.",
};
pack["81522"] = { "Witherbark",
	"* |cff71d5ff|Hspell:164294|h[Unchecked Growth]|h|r: her unchecked growth rides its bearer - burn the growth out before it sprouts.",
	"* |cff71d5ff|Hspell:164275|h[Brittle Bark]|h|r: his bark turns brittle after the growth - the melee burns him down through it.",
	"* |cff71d5ff|Hspell:164357|h[Parched Grasp]|h|r: his parched grasp sears out front - keep out of the grasp.",
};
pack["84550"] = { "Xeri'tac",
	"* |cff71d5ff|Hspell:169233|h[Inhale]|h|r: his inhale drags everyone in - brace the pull.",
	"* |cff71d5ff|Hspell:169382|h[Gaseous Volley]|h|r: her gaseous volleys cloud out - get out of the clouds.",
	"* |cff71d5ff|Hspell:169223|h[Toxic Gas]|h|r: the toxic gas lingers underfoot - avoid the gas.",
};
pack["83846"] = { "Yalnu",
	"* |cff71d5ff|Hspell:428746|h[Brushfire]|h|r: his brushfires race along their lines - dodge the lines.",
	"* |cff71d5ff|Hspell:428823|h[Verdant Eruption]|h|r: his verdant eruption sprouts lashers - burn the lashers fast.",
	"* |cff71d5ff|Hspell:169179|h[Colossal Blow]|h|r: his colossal blow rakes the ground - step out of the blow.",
	"* |cff71d5ff|Hspell:169251|h[Entanglement]|h|r: the entanglement roots a player - free the rooted.",
	"* |cff71d5ff|Hspell:173563|h[Lasher Venom]|h|r: the lasher venom - interrupt it at every cast.",
};
-- --------------------------------- --
-- Upper Blackrock Spire : Zona 1358 --
-- --------------------------------- --

pack["76413"] = { "Orebender Gor'ashan",
	"* |cff71d5ff|Hspell:166168|h[Power Conduit]|h|r: his power conduits hum around him - smash the conduits to break his cast.",
	"* |cff71d5ff|Hspell:154448|h[Shrapnel Nova]|h|r: his shrapnel nova blows out - run from the nova.",
};
pack["76021"] = { "Kyrak",
	"* |cff71d5ff|Hspell:161203|h[Rejuvenating Serum]|h|r: her rejuvenating serum mends him - interrupt the serum at every cast.",
	"* |cff71d5ff|Hspell:161199|h[Debilitating Fixation]|h|r: her debilitating fixation - interrupt it at every cast.",
	"* |cff71d5ff|Hspell:155037|h[Eruption]|h|r: the eruptions blow underfoot - never stand in the blow.",
	"* |cff71d5ff|Hspell:161288|h[Vileblood Serum]|h|r: the vileblood serum pools the floor - avoid the pools.",
};
pack["76585"] = { "Ragewing the Untamed",
	"* |cff71d5ff|Hspell:155620|h[Burning Rage]|h|r: his burning rage flares at low life - burn him down through it.",
	"* |cff71d5ff|Hspell:155051|h[Magma Spit]|h|r: his magma spits at its mark - the marked dodge the spit.",
	"* |cff71d5ff|Hspell:155057|h[Magma Pool]|h|r: the magma pools spread underfoot - avoid the pools.",
	"* |cff71d5ff|Hspell:154996|h[Engulfing Fire]|h|r: his engulfing fire washes his front - keep out of the fire.",
};
bos = { "Commander Tharbek",
	"* |cff71d5ff|Hspell:161989|h[Iron Reaver]|h|r: his iron reaver charges through - out of the charge path.",
	"* |cff71d5ff|Hspell:162090|h[Imbued Iron Axe]|h|r: his imbued iron axe flies out at marks - dodge the axe.",
	"* |cff71d5ff|Hspell:161833|h[Noxious Spit]|h|r: his noxious spit pools underfoot - avoid the spit.",
};
pack["79912"] = bos; pack["80098"] = bos;

pack["77120"] = { "Warlord Zaela",
	"* |cff71d5ff|Hspell:155673|h[Destructive Smite]|h|r: her destructive smite lands heavy - alternate tanks.",
	"* |cff71d5ff|Hspell:155705|h[Rebounding Blade]|h|r: her rebounding blade caroms out - dodge the blade.",
	"* |cff71d5ff|Hspell:155721|h[Black Iron Cyclone]|h|r: her black iron cyclone spins through - get out of the spin.",
};
-- --------------------------------- --
-- Hellfire Citadel : Zona 1448 --
-- --------------------------------- --

pack["91331"] = { "Archimonde",
	"* |cff71d5ff|Hspell:182879|h[Doomfire Fixate]|h|r: the doomfire chases its mark - the marked kite it until it gutters.",
	"* |cff71d5ff|Hspell:183254|h[Allure of Flames]|h|r: the allure shoves the whole room - brace the shove.",
	"* |cff71d5ff|Hspell:183817|h[Fel Burst]|h|r: the fel bursts blow at their marks - the marked brace away.",
	"* |cff71d5ff|Hspell:184964|h[Shackled Torment]|h|r: the shackled torment grip their bearers - the shackled break out one after another.",
	"* |cff71d5ff|Hspell:184265|h[Wrought Chaos]|h|r: the wrought chaos fires between its links - don't cross the chaos lines.",
	"* |cff71d5ff|Hspell:186574|h[Dread Fixate]|h|r: the dread hunts its mark - the marked kite the dread.",
};
pack["90199"] = { "Gorefiend",
	"* |cff71d5ff|Hspell:179864|h[Shadow of Death]|h|r: the shadow of death swallows its mark whole - the swallowed burn the feast out from inside.",
	"* |cff71d5ff|Hspell:179977|h[Touch of Doom]|h|r: the touch of doom leaps to whoever stands close - the touched stand apart.",
	"* |cff71d5ff|Hspell:179995|h[Doom Well]|h|r: the doom wells pool the floor - avoid the wells.",
	"* |cff71d5ff|Hspell:179909|h[Shared Fate]|h|r: the shared fate tethers its pair - keep the tether stretched.",
	"* |cff71d5ff|Hspell:180148|h[Hunger for Life]|h|r: his hunger for life grows as the spirits live - burn the spirits fast.",
};
pack["90019"] = { "Hellfire Assault",
	"* |cff71d5ff|Hspell:180079|h[Felfire Munitions]|h|r: the felfire munitions pile up - burst them before the fuse catches.",
	"* |cff71d5ff|Hspell:160240|h[Felfire Crusher]|h|r: his felfire crushers roll in - kill the crushers fast.",
	"* |cff71d5ff|Hspell:181155|h[Fel Caster]|h|r: the fel casters keep their channel - interrupt the casters.",
	"* |cff71d5ff|Hspell:184369|h[Howling Axe]|h|r: the howling axes whirl in - dodge the axes.",
	"* |cff71d5ff|Hspell:180945|h[Nova]|h|r: the cannon novas blow out - brace the nova.",
};
bos = { "Hellfire High Council",
	"* |cff71d5ff|Hspell:184449|h[Mark of the Necromancer]|h|r: the marks leap to whoever stands close - spread so they stop leaping.",
	"* |cff71d5ff|Hspell:184476|h[Reap]|h|r: the reap shears its mark's ground - get out of the reap.",
	"* |cff71d5ff|Hspell:184360|h[Fel Rage]|h|r: his fel rage burns him up - brace the rage.",
	"* |cff71d5ff|Hspell:184847|h[Acidic Wound]|h|r: his acidic wounds gash the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:184681|h[Darkness]|h|r: his darkness - keep away from the darkness.",
};
pack["92142"] = bos; pack["92144"] = bos; pack["92146"] = bos;

pack["90284"] = { "Iron Reaver",
	"* |cff71d5ff|Hspell:182280|h[Artillery]|h|r: the artillery shells out at marks - the marked run from the shells.",
	"* |cff71d5ff|Hspell:182001|h[Unstable Orb]|h|r: the unstable orbs drift out - dodge the orbs.",
	"* |cff71d5ff|Hspell:182020|h[Pounding]|h|r: his pounding fists batter the room - brace the pounding.",
	"* |cff71d5ff|Hspell:179889|h[Blitz]|h|r: his blitz charges across the field - out of the blitz path.",
	"* |cff71d5ff|Hspell:182074|h[Immolation]|h|r: the immolation burns the ground - avoid the burn.",
};
pack["90316"] = { "Shadow-Lord Iskar",
	"* |cff71d5ff|Hspell:179202|h[Eye of Anzu]|h|r: the eye of anzu unblinds its holder - pass the eye to whoever needs sight.",
	"* |cff71d5ff|Hspell:181957|h[Phantasmal Winds]|h|r: the phantasmal winds blind their bearer - the bearer leans on the eye.",
	"* |cff71d5ff|Hspell:182178|h[Fel Chakram]|h|r: his fel chakrams fly out at marks - dodge the chakrams.",
	"* |cff71d5ff|Hspell:182582|h[Laser]|h|r: his laser sweeps its mark - the marked keep clear of the beam.",
	"* |cff71d5ff|Hspell:179219|h[Phantasmal Fel Bomb]|h|r: the fel bomb blows at its mark - the marked clear the blast.",
};
pack["90378"] = { "Kilrogg Deadeye",
	"* |cff71d5ff|Hspell:180372|h[Heartseeker]|h|r: the heartseeker rides its marks - the marked keep running apart.",
	"* |cff71d5ff|Hspell:180313|h[Demonic Possession]|h|r: the deaths open demonic possessions - kill the possessed fast.",
	"* |cff71d5ff|Hspell:180199|h[Shred]|h|r: his shredding claws tear armor - alternate tanks.",
	"* |cff71d5ff|Hspell:181488|h[Vision of Death]|h|r: the visions of death call the sightless - burn the visions fast.",
	"* |cff71d5ff|Hspell:180224|h[Death Throes]|h|r: his death throes - spread and heal it through.",
};
pack["90435"] = { "Kormrok",
	"* |cff71d5ff|Hspell:180244|h[Pound]|h|r: his pounds blow the room apart - spread so the pounds land apart.",
	"* |cff71d5ff|Hspell:181306|h[Explosive Burst]|h|r: the explosive hands blow up at their marks - the marked flee the burst.",
	"* |cff71d5ff|Hspell:181292|h[Fel Outpouring]|h|r: the fel outpouring rolls out in waves - sidestep the waves.",
	"* |cff71d5ff|Hspell:181305|h[Swat]|h|r: his swat flings its tank flying - alternate tanks.",
	"* |cff71d5ff|Hspell:186882|h[Enrage]|h|r: his enrage peaks at low life - burn him down through it.",
};
pack["91349"] = { "Mannoroth",
	"* |cff71d5ff|Hspell:181275|h[Curse of the Legion]|h|r: the curse rides its bearers - the bearers keep apart.",
	"* |cff71d5ff|Hspell:181099|h[Mark of Doom]|h|r: the mark of doom chases its bearer - the marked haul away.",
	"* |cff71d5ff|Hspell:181735|h[Fel Seeker]|h|r: his fel seekers tear at their marks - dodge the tear.",
	"* |cff71d5ff|Hspell:181180|h[Inferno]|h|r: the infernos crash down at marks - dodge the falls.",
	"* |cff71d5ff|Hspell:186362|h[Wrath of Gul'dan]|h|r: the wrath of gul'dan peaks - brace the wrath and heal hard.",
};
pack["92330"] = { "Socrethar the Eternal",
	"* |cff71d5ff|Hspell:183017|h[Fel Prison]|h|r: his fel prisons bag their bearers - free the bagged at once.",
	"* |cff71d5ff|Hspell:180221|h[Volatile Fel Orb]|h|r: the volatile fel orbs chase their marks - the marked steer them away.",
	"* |cff71d5ff|Hspell:182051|h[Fel Charge]|h|r: his fel charge - get out of the charge line.",
	"* |cff71d5ff|Hspell:182769|h[Ghastly Fixation]|h|r: the ghastly fixations chase their bearers - the bearers kite them.",
};
pack["90269"] = { "Tyrant Velhari",
	"* |cff71d5ff|Hspell:180166|h[Touch of Harm]|h|r: her touch of harm heals her off the touched - dispel it fast.",
	"* |cff71d5ff|Hspell:180260|h[Annihilation Strike]|h|r: her annihilation strikes grind their tank - alternate tanks.",
	"* |cff71d5ff|Hspell:180000|h[Seal of Decay]|h|r: her seal of decay rides its bearer - the bearer keeps away.",
	"* |cff71d5ff|Hspell:180600|h[Bulwark of the Tyrant]|h|r: her bulwark soaks everything - burn the bulwark down.",
};
pack["93068"] = { "Xhul'horac",
	"* |cff71d5ff|Hspell:186134|h[Fel Touched]|h|r: the fel touch marks its bearer - the marked keep their flames away.",
	"* |cff71d5ff|Hspell:186490|h[Fel Chains]|h|r: the fel chains lash out - dodge the chains.",
	"* |cff71d5ff|Hspell:112866|h[Imps]|h|r: his imps swarm in - burn the imps fast.",
	"* |cff71d5ff|Hspell:187204|h[Overwhelming Chaos]|h|r: the overwhelming chaos peaks - brace the chaos and heal hard.",
	"* |cff71d5ff|Hspell:186073|h[Fel Singed]|h|r: the fel singed lingers on the floor - avoid the singed.",
};
pack["89890"] = { "Fel Lord Zakuun",
	"* |cff71d5ff|Hspell:179407|h[Disembodied]|h|r: his disembodied souls mark their bearers - the marked keep clear of the group.",
	"* |cff71d5ff|Hspell:179711|h[Befouled]|h|r: the befouled pools the floor at its bearers - avoid the pools.",
	"* |cff71d5ff|Hspell:181508|h[Seed of Destruction]|h|r: the seeds of destruction blow up underfoot - dodge the seeds.",
	"* |cff71d5ff|Hspell:179406|h[Soul Cleave]|h|r: his soul cleave splits its damage across the room - spread to split the cleave.",
	"* |cff71d5ff|Hspell:179681|h[Enrage]|h|r: his enrage peaks at low life - burn him down through it.",
};
-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["90802"] = { "Annihilon",
	"* |cff71d5ff|Hspell:180939|h[Void Bomb]|h|r: his void bombs blow at their marks - the marked flee the blast.",
	"* |cff71d5ff|Hspell:180932|h[Whirling Void]|h|r: his whirling voids spin out - keep out of the whirls.",
	"* |cff71d5ff|Hspell:180950|h[Twist of Mind]|h|r: his twist of mind hijacks a player - the group strips the hijack.",
};
pack["90841"] = { "Drogan",
	"* |cff71d5ff|Hspell:180882|h[Whirling Axe]|h|r: his whirling axes carom wild - dodge the axes.",
	"* |cff71d5ff|Hspell:180880|h[Chain Grasp]|h|r: his chain grasp leashes its victims - break the chains fast.",
};
pack["81252"] = { "Drov the Ruiner",
	"* |cff71d5ff|Hspell:175791|h[Colossal Slam]|h|r: his colossal slam rakes the ground - step out of the slam.",
	"* |cff71d5ff|Hspell:175827|h[Call of Earth]|h|r: his call of the earth - brace the call and heal.",
};
pack["90943"] = { "Gaur",
	"* |cff71d5ff|Hspell:180879|h[Goren]|h|r: his gorens dig in - clear the gorens fast.",
	"* |cff71d5ff|Hspell:180868|h[Earthen Slam]|h|r: his earthen slam flings the close - brace the slam.",
	"* |cff71d5ff|Hspell:180830|h[Runic Spike]|h|r: the runic spikes spear up - dodge the spikes.",
};
pack["90995"] = { "Goggnathog",
	"* |cff71d5ff|Hspell:180908|h[Unleashed Energy]|h|r: his unleashed energy blows out - run from the burst.",
	"* |cff71d5ff|Hspell:180815|h[Wild Polymorph]|h|r: the wild polymorph turns its bearer - dispel it early.",
	"* |cff71d5ff|Hspell:180819|h[Arcane Orb]|h|r: the arcane orbs drift out - dodge the orbs.",
	"* |cff71d5ff|Hspell:180816|h[Arcane Surge]|h|r: his arcane surge - interrupt it at every cast.",
};
pack["94015"] = { "Supreme Lord Kazzak",
	"* |cff71d5ff|Hspell:187668|h[Mark of Kazzak]|h|r: his mark leaps to whoever stands close - spread so it stops leaping.",
	"* |cff71d5ff|Hspell:187466|h[Doom]|h|r: his doom - brace the doom and heal hard.",
};
pack["91012"] = { "Lady Fleshsear",
	"* |cff71d5ff|Hspell:180774|h[Rain of Fire]|h|r: her rain of fire - spread and heal it through.",
	"* |cff71d5ff|Hspell:180776|h[Overwhelming Flames]|h|r: her overwhelming flames blow out - run from the flames.",
	"* |cff71d5ff|Hspell:180779|h[Call of Flame]|h|r: her call of flame - brace the call.",
};
pack["83746"] = { "Rukhmar",
	"* |cff71d5ff|Hspell:167615|h[Pierced Armor]|h|r: her piercing armor grinds its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:167647|h[Loose Quills]|h|r: her loose quills rain down - spread and heal.",
	"* |cff71d5ff|Hspell:167679|h[Solar Breath]|h|r: her solar breath washes her front - keep out of the breath.",
	"* |cff71d5ff|Hspell:167630|h[Explode]|h|r: her explode blows out - run from the blast.",
};
pack["81535"] = { "Tarlna Gorosi",
	"* |cff71d5ff|Hspell:176004|h[Savage Vines]|h|r: his savage vines rake out - get out of the vines.",
	"* |cff71d5ff|Hspell:175973|h[Colossal Blow]|h|r: his colossal blow rakes the ground - step out of the blow.",
	"* |cff71d5ff|Hspell:175979|h[Genesis]|h|r: his genesis floods the roots - clear the sprouting roots fast.",
	"* |cff71d5ff|Hspell:176013|h[Grow Untamed Mandragora]|h|r: his mandragoras wake up - kill them fast.",
	"* |cff71d5ff|Hspell:176037|h[Noxious Spit]|h|r: his noxious spit pools underfoot - avoid the spit.",
};
pack["90946"] = { "Teluur",
	"* |cff71d5ff|Hspell:180849|h[Podling Swarm]|h|r: his podling swarms pile in - burn the podlings fast.",
	"* |cff71d5ff|Hspell:180836|h[Entanglement]|h|r: the entanglements root the floor - never stand in the roots.",
	"* |cff71d5ff|Hspell:180825|h[Spore]|h|r: the spores drift out - avoid the spores.",
};
P.en = en;
