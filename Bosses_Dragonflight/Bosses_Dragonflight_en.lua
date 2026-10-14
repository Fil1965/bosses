--[[
	Bosses_Dragonflight_en.lua
		Datos in English of the Dragonflight
		pack: the three raids (Vault of the Incarnates, Aberrus, Amirdrassil),
		the dungeons and Dawn of the Infinite, plus the Dragon Isles world
		bosses. Sources: DBM-Raids/Party-Dragonflight and DBM-DragonIsles
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Uldaman: Legacy of Tyr : Zona 2451 --
-- --------------------------------- --

pack["184018"] = { "Bromach",
	"* |cff71d5ff|Hspell:369605|h[Call of the Deep]|h|r: he calls the deep and troggs answer - AoE the troggs down fast.",
	"* |cff71d5ff|Hspell:369754|h[Bloodlust]|h|r: his Bloodlust sends the clan into a frenzy - cleave them down and hold out the buff.",
	"* |cff71d5ff|Hspell:369700|h[Quaking Totem]|h|r: the quaking totem rattles the room - kill it before it finishes.",
	"* |cff71d5ff|Hspell:369675|h[Chain Lightning]|h|r: his chain lightning jumps between the bunched - interrupt it every time.",
	"* |cff71d5ff|Hspell:369703|h[Thundering Slam]|h|r: the thundering slam cracks the ground - step out of the slam.",
};
pack["184125"] = { "Chrono-Lord Deios",
	"* |cff71d5ff|Hspell:376292|h[Eternal Orb]|h|r: eternal orbs drift through the room - keep clear of them.",
	"* |cff71d5ff|Hspell:376208|h[Rewind Timeflow]|h|r: he rewinds the timeways and the arena snaps back - keep your bearings.",
	"* |cff71d5ff|Hspell:377405|h[Time Sink]|h|r: the time sink drags its victims in - run out of it at once.",
	"* |cff71d5ff|Hspell:376049|h[Wing Buffet]|h|r: the wing buffet blows everyone back - brace yourself before the push.",
	"* |cff71d5ff|Hspell:375727|h[Sand Breath]|h|r: sand breath burns the front of him - keep out of the front.",
};
pack["184422"] = { "Emberon",
	"* |cff71d5ff|Hspell:369049|h[Seeking Flame]|h|r: the seeking flame chases its mark - the marked kite it away from the group.",
	"* |cff71d5ff|Hspell:369110|h[Unstable Embers]|h|r: the embers orbit him and then scatter - give the sparks their room.",
	"* |cff71d5ff|Hspell:368990|h[Purging Flames]|h|r: a wave of purging flames sweeps the hall - step out of its line.",
	"* |cff71d5ff|Hspell:369061|h[Searing Clap]|h|r: the searing clap sears everything before him - brace it or step away.",
};
pack["184124"] = { "Sentinel Talondras",
	"* |cff71d5ff|Hspell:372600|h[Inexorable]|h|r: she turns Inexorable and nothing stops her push - keep clear until it runs out.",
	"* |cff71d5ff|Hspell:382071|h[Resonating Orb]|h|r: resonating orbs roll through the room - dodge the orbs and their wake.",
	"* |cff71d5ff|Hspell:372718|h[Earthen Shards]|h|r: earthen shards rain down at marks - dodge the shards.",
	"* |cff71d5ff|Hspell:372719|h[Titanic Empowerment]|h|r: her titanic power peaks - brace the spike or burn her down before it.",
	"* |cff71d5ff|Hspell:372701|h[Crushing Stomp]|h|r: the crushing stomp lands with a push - brace the knockback.",
};
bos = { "The Lost Dwarves",
	"* |cff71d5ff|Hspell:369563|h[Wild Cleave]|h|r: the wild cleave rips everyone in front - keep out of the front.",
	"* |cff71d5ff|Hspell:369573|h[Heavy Arrow]|h|r: the heavy arrow cuts a line - step aside of the arrow.",
	"* |cff71d5ff|Hspell:369791|h[Skullcracker]|h|r: the skullcracker charges its mark - get out of the charge path.",
	"* |cff71d5ff|Hspell:369677|h[Ricocheting Shield]|h|r: the shield ricochets between players - spread so it stops bouncing.",
	"* |cff71d5ff|Hspell:369602|h[Defensive Bulwark]|h|r: the bulwark locks their defenses - interrupt it every time.",
};
pack["184580"] = bos; pack["184581"] = bos; pack["184582"] = bos;

-- --------------------------------- --
-- The Azure Vault : Zona 2515 --
-- --------------------------------- --

pack["186739"] = { "Azureblade",
	"* |cff71d5ff|Hspell:372222|h[Arcane Cleave]|h|r: his arcane cleave rips out front - keep out of the front.",
	"* |cff71d5ff|Hspell:385578|h[Ancient Orb]|h|r: ancient orbs track their targets - the marked dodge away from the group.",
	"* |cff71d5ff|Hspell:373932|h[Illusionary Bolt]|h|r: the illusionary bolt - interrupt it every time.",
	"* |cff71d5ff|Hspell:384132|h[Overwhelming Energy]|h|r: his power surges with the phase - brace the spike.",
	"* |cff71d5ff|Hspell:384223|h[Summon Draconic Image]|h|r: his draconic illusions split off the fight - burn the images down.",
};
pack["186644"] = { "Leymor",
	"* |cff71d5ff|Hspell:374364|h[Leyline Sprouts]|h|r: leyline sprouts bloom across the floor - do not stand on the lines.",
	"* |cff71d5ff|Hspell:374567|h[Explosive Eruption]|h|r: the eruption goes off in bursts - clear the ground as it pops.",
	"* |cff71d5ff|Hspell:374720|h[Consuming Stomp]|h|r: his consuming stomp hits everyone near - spread out and heal it through.",
	"* |cff71d5ff|Hspell:386660|h[Erupting Fissure]|h|r: fissures erupt outward from him - dodge the cracks.",
	"* |cff71d5ff|Hspell:374789|h[Infused Strike]|h|r: his infused strike lands hard on the tank - alternate tanks.",
};
pack["186737"] = { "Telash Greywing",
	"* |cff71d5ff|Hspell:386781|h[Frost Bomb]|h|r: he bombs a player with frost - the marked run away from the group.",
	"* |cff71d5ff|Hspell:387151|h[Icy Devastator]|h|r: the icy devastator cuts a line of frost - step out of the line.",
	"* |cff71d5ff|Hspell:388008|h[War of Absolute Zero]|h|r: the war of absolute zero blankets the room - take the shelter the arena gives.",
};
pack["186738"] = { "Umbrelskul",
	"* |cff71d5ff|Hspell:384978|h[Dragon Strike]|h|r: the dragon strike marks its bearer - purge the debuff off the marked.",
	"* |cff71d5ff|Hspell:385399|h[Unleashed Destruction]|h|r: he flies and unleashes destruction on the way - brace the pass.",
	"* |cff71d5ff|Hspell:384699|h[Crystalline Roar]|h|r: the crystalline roar cracks outward - keep clear of the wave.",
	"* |cff71d5ff|Hspell:385075|h[Arcane Eruption]|h|r: the shard erupts with arcane force - never touch the eruption.",
};
-- --------------------------------- --
-- The Nokhud Offensive : Zona 2516 --
-- --------------------------------- --

pack["186151"] = { "Balakar Khan",
	"* |cff71d5ff|Hspell:376634|h[Iron Spear]|h|r: iron spears spear outward from him - dodge the spear lines.",
	"* |cff71d5ff|Hspell:376864|h[Static Spear]|h|r: the static spear marks its victim - the marked run far from the group.",
	"* |cff71d5ff|Hspell:376725|h[Storm Bolt]|h|r: the storm bolt - interrupt it every time.",
	"* |cff71d5ff|Hspell:375943|h[Upheaval]|h|r: his upheaval shatters the ground beneath - move as the floor cracks.",
	"* |cff71d5ff|Hspell:375937|h[Rending Strike]|h|r: his rending strike lands heavy - mitigation helps.",
};
pack["186616"] = { "Granyth",
	"* |cff71d5ff|Hspell:388817|h[Shards of Stone]|h|r: shards of stone spear outward - step out of the shards.",
	"* |cff71d5ff|Hspell:387155|h[Lanced]|h|r: the lance impales its mark - the marked step aside of the lance.",
	"* |cff71d5ff|Hspell:388283|h[Eruption]|h|r: the eruption - interrupt it when it builds.",
	"* |cff71d5ff|Hspell:385916|h[Tectonic Stomp]|h|r: the tectonic stomp - run away from the epicenter.",
};
bos = { "Teera and Maruuk",
	"* |cff71d5ff|Hspell:382670|h[Gale Arrow]|h|r: the gale arrow cuts a line across the room - step out of the arrow.",
	"* |cff71d5ff|Hspell:386547|h[Repel]|h|r: the repelling burst shoves everyone back - brace the shove.",
	"* |cff71d5ff|Hspell:385339|h[Earthsplitter]|h|r: the earthsplitter tears the ground ahead - move out of the crack lines.",
	"* |cff71d5ff|Hspell:386063|h[Frightful Roar]|h|r: the frightful roar - run from the roar.",
	"* |cff71d5ff|Hspell:382836|h[Brutalize]|h|r: the brutalizing blows land hard - mitigate them.",
};
pack["186339"] = bos; pack["186338"] = bos;

pack["186615"] = { "The Raging Tempest",
	"* |cff71d5ff|Hspell:384686|h[Energy Surge]|h|r: her energy surge empowers her - dispel it off the boss.",
	"* |cff71d5ff|Hspell:384620|h[Electrical Storm]|h|r: the electrical storm batters everyone near - spread and heal it through.",
	"* |cff71d5ff|Hspell:384316|h[Lightning Strike]|h|r: lightning strikes land at marks - spread from the strikes.",
};
-- --------------------------------- --
-- Neltharus : Zona 2519 --
-- --------------------------------- --

pack["189340"] = { "Chargath, Bane of Scales",
	"* |cff71d5ff|Hspell:373424|h[Grounding Spear]|h|r: the grounding spear marks its victim - the marked kite the spear away.",
	"* |cff71d5ff|Hspell:374655|h[Fetter]|h|r: the fetter pins players down - keep clear as it binds.",
	"* |cff71d5ff|Hspell:373742|h[Magma Wave]|h|r: the magma wave rolls across the room - dodge the wave as it rolls.",
	"* |cff71d5ff|Hspell:375056|h[Fiery Focus]|h|r: his fiery focus burns down his line of sight - stay off his gaze.",
};
pack["181861"] = { "Magmatusk",
	"* |cff71d5ff|Hspell:375068|h[Magma Lob]|h|r: lobs of magma crash down at marks - dodge the lobs.",
	"* |cff71d5ff|Hspell:375251|h[Lava Spray]|h|r: his lava spray bursts out front - keep out of the front.",
	"* |cff71d5ff|Hspell:375436|h[Blazing Charge]|h|r: he charges blazing hot - get out of the charge path.",
	"* |cff71d5ff|Hspell:374365|h[Volatile Mutation]|h|r: the volatile mutation stirs his brood - give the stirred room.",
};
pack["189478"] = { "Forgemaster Gorek",
	"* |cff71d5ff|Hspell:374842|h[Blazing Aegis]|h|r: the blazing aegis careens around the room - dodge the flying shield.",
	"* |cff71d5ff|Hspell:374534|h[Heated Swings]|h|r: his heated swings stack on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:374635|h[Might of the Forge]|h|r: the might of the forge surges - brace the spike and heal through.",
	"* |cff71d5ff|Hspell:374969|h[Forgestorm]|h|r: the forgestorm whips the floor - step out of the storm.",
};
pack["189901"] = { "Warlord Sargha",
	"* |cff71d5ff|Hspell:376780|h[Magma Shield]|h|r: his magma shield bars him - melt it with the hall's dragonfire cannon.",
	"* |cff71d5ff|Hspell:377522|h[Burning Pursuit]|h|r: the burning pursuit hunts its mark - the marked keep running.",
	"* |cff71d5ff|Hspell:377018|h[Molten Gold]|h|r: molten gold pools across the floor - never stand in the gold.",
	"* |cff71d5ff|Hspell:377204|h[Dragon's Kiln]|h|r: the dragon's kiln bursts outward - step out of the burst.",
};
-- --------------------------------- --
-- Brackenhide Hollow : Zona 2520 --
-- --------------------------------- --

pack["186121"] = { "Decatriarch Wratheye",
	"* |cff71d5ff|Hspell:373944|h[Rotburst Totem]|h|r: the rotburst totem - kill the totem before it bursts.",
	"* |cff71d5ff|Hspell:376170|h[Choking Rotcloud]|h|r: choking rotclouds roll through - never stand in the cloud.",
	"* |cff71d5ff|Hspell:373917|h[Decaystrike]|h|r: her decaystrike lands heavy - mitigation helps.",
};
pack["186116"] = { "Gutshot",
	"* |cff71d5ff|Hspell:384827|h[Call Hyenas]|h|r: he calls his hyenas - kill the pack fast.",
	"* |cff71d5ff|Hspell:384425|h[Smell Like Meat]|h|r: the marked smells like meat and the hyenas give chase - run the mark away.",
	"* |cff71d5ff|Hspell:384148|h[Ensnaring Trap]|h|r: ensnaring traps scatter across the floor - step past the traps.",
	"* |cff71d5ff|Hspell:384638|h[Master's Call]|h|r: his command over the pack - interrupt it.",
};
bos = { "Hackclaw's War-Band",
	"* |cff71d5ff|Hspell:381461|h[Savage Charge]|h|r: the savage charge barrels at its mark - clear the path or soak for the marked.",
	"* |cff71d5ff|Hspell:377827|h[Bladestorm]|h|r: the bladestorm spins among the melee - melee step out of the spin.",
	"* |cff71d5ff|Hspell:378229|h[Marked for Butchery]|h|r: the marked for butchery takes the pack's blade - brace for the hit.",
	"* |cff71d5ff|Hspell:381379|h[Decayed Senses]|h|r: the decayed senses - purge the debuff off the marked.",
	"* |cff71d5ff|Hspell:381466|h[Hextrick]|h|r: the hex - dispel the hexed at once.",
};
pack["186122"] = bos; pack["186124"] = bos; pack["186125"] = bos;

pack["186120"] = { "Treemouth",
	"* |cff71d5ff|Hspell:377222|h[Consume]|h|r: he splits open and swallows his mark - free the swallowed before digestion.",
	"* |cff71d5ff|Hspell:376933|h[Grasping Vines]|h|r: grasping vines lash out - pull your feet out of their reach.",
	"* |cff71d5ff|Hspell:376811|h[Decay Spray]|h|r: the decay spray showers outward - keep clear of the spray.",
	"* |cff71d5ff|Hspell:381770|h[Gushing Ooze]|h|r: the gushing ooze - interrupt the ooze.",
};
-- --------------------------------- --
-- Ruby Life Pools : Zona 2521 --
-- --------------------------------- --

pack["189232"] = { "Kokia Blazehoof",
	"* |cff71d5ff|Hspell:372110|h[Molten Boulder]|h|r: the molten boulder rolls at its mark - dodge the boulder.",
	"* |cff71d5ff|Hspell:372864|h[Ritual of Blazebinding]|h|r: the ritual holds while its djaradin lives - burn the djaradin down to break it.",
	"* |cff71d5ff|Hspell:372858|h[Searing Blows]|h|r: her searing blows stack on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:384823|h[Inferno]|h|r: the inferno washes the room - spread and heal it through.",
};
bos = { "Kyrakka and Erkhart Stormvein",
	"* |cff71d5ff|Hspell:381517|h[Winds of Change]|h|r: the winds of change shove the room around - brace the shove.",
	"* |cff71d5ff|Hspell:381525|h[Roaring Firebreath]|h|r: Kyrakka's roaring firebreath washes her front - keep out of the breath.",
	"* |cff71d5ff|Hspell:381516|h[Interrupting Cloudburst]|h|r: Erkhart's cloudburst cuts your casts - interrupt it every time.",
	"* |cff71d5ff|Hspell:381862|h[Inferno Core]|h|r: the inferno core blows up - run out of the core.",
	"* |cff71d5ff|Hspell:381512|h[Stormslam]|h|r: the stormslam lands heavy - mitigation helps.",
};
pack["190484"] = bos; pack["190485"] = bos;

pack["188252"] = { "Melidrussa Chillworn",
	"* |cff71d5ff|Hspell:373046|h[Awaken Whelps]|h|r: she wakes her whelps - kill the whelps fast.",
	"* |cff71d5ff|Hspell:372851|h[Chill Storm]|h|r: the chill storm whips up around her - run out of the storm.",
	"* |cff71d5ff|Hspell:372988|h[Ice Bulwark]|h|r: the ice bulwark shields her - burst the bulwark down.",
	"* |cff71d5ff|Hspell:372682|h[Primal Chill]|h|r: the primal chill stacks on its bearers - watch the stacks and mitigate.",
	"* |cff71d5ff|Hspell:373022|h[Frozen Solid]|h|r: the frost encases a player solid - free the frozen at once.",
};
-- --------------------------------- --
-- Vault of the Incarnates : Zona 2522 --
-- --------------------------------- --

pack["190245"] = { "Broodkeeper Diurna",
	"* |cff71d5ff|Hspell:376073|h[Rapid Incubation]|h|r: the clutches hatch on their own - keep the newborn broodlings cleared.",
	"* |cff71d5ff|Hspell:378782|h[Mortal Wounds]|h|r: her mortal wounds bleed the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:390561|h[Diurna's Gaze]|h|r: her gaze burns its bearer - the marked step clear.",
	"* |cff71d5ff|Hspell:375889|h[Greatstaff's Wrath]|h|r: her greatstaff's wrath lashes out - brace the wrath.",
	"* |cff71d5ff|Hspell:388716|h[Icy Shroud]|h|r: the icy shroud chills everyone - spread and heal it through.",
};
pack["189813"] = { "Dathea, Ascended",
	"* |cff71d5ff|Hspell:391686|h[Conductive Mark]|h|r: the conductive mark jumps to whoever stands close - spread so it stops jumping.",
	"* |cff71d5ff|Hspell:388410|h[Crosswinds]|h|r: the crosswinds shear in lines - get out of the winds' lines.",
	"* |cff71d5ff|Hspell:375580|h[Zephyr Slam]|h|r: the zephyr slam sends its tank flying - alternate tanks.",
	"* |cff71d5ff|Hspell:395501|h[Blowback]|h|r: the blowback flings everyone off - brace the fling.",
	"* |cff71d5ff|Hspell:376943|h[Cyclone]|h|r: the cyclone drags players in - run from the cyclone.",
	"* |cff71d5ff|Hspell:387849|h[Coalescing Storm]|h|r: she coalesces her storm elementals - clear them fast.",
};
pack["184972"] = { "Eranog",
	"* |cff71d5ff|Hspell:390715|h[Flamerift]|h|r: the flamerift marks its bearer - the marked keep clear until it jumps away.",
	"* |cff71d5ff|Hspell:396094|h[Greater Flamerift]|h|r: the greater flamerift lands on the other tank - alternate tanks.",
	"* |cff71d5ff|Hspell:394906|h[Burning Wound]|h|r: his burning wound stacks up fast - swap the tank before the stacks bite.",
	"* |cff71d5ff|Hspell:370615|h[Molten Cleave]|h|r: his molten cleave shears the ground - dodge the cleave.",
	"* |cff71d5ff|Hspell:396023|h[Incinerating Roar]|h|r: the incinerating roar - spread and heal it through.",
	"* |cff71d5ff|Hspell:396022|h[Molten Spikes]|h|r: molten spikes spear up at marks - dodge the spikes.",
};
pack["184986"] = { "Kurog Grimtotem",
	"* |cff71d5ff|Hspell:372158|h[Sunder's Strike]|h|r: sunder's strike lands heavy on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:373329|h[Molten Rupture]|h|r: his molten rupture rolls a ring of fire out - step between the rings.",
	"* |cff71d5ff|Hspell:374023|h[Searing Carnage]|h|r: the searing carnage pops at marks - move out of the carnage.",
	"* |cff71d5ff|Hspell:372458|h[Absolute Zero]|h|r: the absolute zero marks its bearer - the marked kite it far from the group.",
	"* |cff71d5ff|Hspell:373678|h[Biting Chill]|h|r: the biting chill lingers where it landed - avoid the lingering frost.",
};
pack["189492"] = { "Raszageth the Storm-Eater",
	"* |cff71d5ff|Hspell:381615|h[Static Charge]|h|r: the static charge leaps to the close - spread so it stops leaping.",
	"* |cff71d5ff|Hspell:377612|h[Hurricane Wing]|h|r: the hurricane wing blasts everyone back - brace the wing.",
	"* |cff71d5ff|Hspell:388643|h[Volatile Current]|h|r: the volatile currents scatter sparks - spread from the sparks.",
	"* |cff71d5ff|Hspell:395906|h[Electrified Jaws]|h|r: her electrified jaws maul the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:377594|h[Lightning Breath]|h|r: her lightning breath sears her front - keep out of the breath.",
};
pack["187967"] = { "Sennarth, the Cold Breath",
	"* |cff71d5ff|Hspell:371976|h[Chilling Blast]|h|r: the chilling blast leaps to whoever stands close - spread so it stops leaping.",
	"* |cff71d5ff|Hspell:372082|h[Enveloping Webs]|h|r: the enveloping webs bag a player - cut the wrapped out of the webs.",
	"* |cff71d5ff|Hspell:372238|h[Call Spiderlings]|h|r: she calls her spiderlings - kill the brood fast.",
	"* |cff71d5ff|Hspell:372030|h[Sticky Webbing]|h|r: the sticky webbing stacks slow anyone wrapped - clear the webs fast.",
	"* |cff71d5ff|Hspell:373405|h[Gossamer Burst]|h|r: the gossamer burst yanks everyone to her - brace the pull.",
};
pack["190496"] = { "Terros",
	"* |cff71d5ff|Hspell:380487|h[Rock Blast]|h|r: the rock blast hurls boulders at marks - dodge the boulders.",
	"* |cff71d5ff|Hspell:381253|h[Awakened Earth]|h|r: the awakened earth erupts under its mark - the marked move off the eruption.",
	"* |cff71d5ff|Hspell:376279|h[Concussive Slam]|h|r: his concussive slam - brace the slam and heal the spike.",
	"* |cff71d5ff|Hspell:377166|h[Resonating Annihilation]|h|r: the resonating annihilation is his peak - brace the annihilation and heal hard.",
	"* |cff71d5ff|Hspell:383073|h[Shattering Impact]|h|r: the shattering impacts quake out - dodge the impacts.",
};
bos = { "The Primal Council",
	"* |cff71d5ff|Hspell:371591|h[Frost Tomb]|h|r: the frost tombs a player - break the tomb open at once.",
	"* |cff71d5ff|Hspell:386440|h[Glacial Convocation]|h|r: the glacial convocation - brace the icy ritual and heal.",
	"* |cff71d5ff|Hspell:373059|h[Primal Blizzard]|h|r: the primal blizzard batters the room - spread and heal it through.",
	"* |cff71d5ff|Hspell:371624|h[Conductive Mark]|h|r: each conductive mark claims its own pillar - take your mark to its pillar.",
	"* |cff71d5ff|Hspell:372315|h[Frost Spike]|h|r: the frost spike - interrupt it every time.",
};
pack["187771"] = bos; pack["187768"] = bos; pack["187772"] = bos; pack["187767"] = bos;

-- --------------------------------- --
-- Algeth'ar Academy : Zona 2526 --
-- --------------------------------- --

pack["191736"] = { "Crawth",
	"* |cff71d5ff|Hspell:377004|h[Deafening Screech]|h|r: the deafening screech - spread out from the screech.",
	"* |cff71d5ff|Hspell:377034|h[Overpowering Gust]|h|r: his overpowering gust blows the front away - brace the gust or get off the front.",
	"* |cff71d5ff|Hspell:376997|h[Savage Peck]|h|r: the savage peck hammers hard - mitigation helps.",
	"* |cff71d5ff|Hspell:376448|h[Firestorm]|h|r: the firestorm rains down - avoid the falling flames.",
};
pack["190609"] = { "Echo of Doragosa",
	"* |cff71d5ff|Hspell:374352|h[Energy Bomb]|h|r: the energy bombs scatter out at marks - spread from the bursts.",
	"* |cff71d5ff|Hspell:374361|h[Astral Breath]|h|r: her astral breath washes her front - keep out of the breath.",
	"* |cff71d5ff|Hspell:388820|h[Power Vacuum]|h|r: the power vacuum pulls everyone in - run from the pull.",
};
pack["186951"] = { "Overgrown Ancient",
	"* |cff71d5ff|Hspell:388796|h[Germinate]|h|r: seeds germinate into lashers - clear the sprouts before they grow.",
	"* |cff71d5ff|Hspell:396640|h[Healing Touch]|h|r: his healing touch mends him - interrupt it every time.",
	"* |cff71d5ff|Hspell:388544|h[Barkbreaker]|h|r: his barkbreaker lands heavy - mitigation helps.",
	"* |cff71d5ff|Hspell:388923|h[Burst Forth]|h|r: the burst forth - brace and heal through.",
};
pack["194181"] = { "Vexamus",
	"* |cff71d5ff|Hspell:385974|h[Arcane Orbs]|h|r: the arcane orbs drift loose - intercept the orbs before they drift loose on the room.",
	"* |cff71d5ff|Hspell:386173|h[Mana Bombs]|h|r: the mana bombs chase their marks - spread out from the marks.",
	"* |cff71d5ff|Hspell:385958|h[Arcane Expulsion]|h|r: the arcane expulsion hits everyone close - mitigate and heal through.",
	"* |cff71d5ff|Hspell:388537|h[Arcane Fissure]|h|r: arcane fissures tear the floor - avoid the fissures.",
};
-- --------------------------------- --
-- Halls of Infusion : Zona 2527 --
-- --------------------------------- --

pack["189722"] = { "Gulping Goliath",
	"* |cff71d5ff|Hspell:385551|h[Gulp]|h|r: he gulps his mark down - the group gets the mark back out of the gullet.",
	"* |cff71d5ff|Hspell:385531|h[Body Slam]|h|r: he body slams through - get out of the slam path.",
	"* |cff71d5ff|Hspell:374389|h[Swog Toxin]|h|r: the swog toxin stacks up on the tank - mitigate the stacks.",
	"* |cff71d5ff|Hspell:385187|h[Overpowering Croak]|h|r: his overpowering croak - spread and heal it through.",
};
pack["189727"] = { "Khajin the Unyielding",
	"* |cff71d5ff|Hspell:390111|h[Frost Cyclone]|h|r: frost cyclones whip through the room - never stand in the cyclones.",
	"* |cff71d5ff|Hspell:386757|h[Hailstorm]|h|r: the hailstorm blankets the arena - take the shelter the arena gives.",
	"* |cff71d5ff|Hspell:386559|h[Glacial Surge]|h|r: the glacial surge rolls out - dodge the surge.",
	"* |cff71d5ff|Hspell:385963|h[Frost Shock]|h|r: the frost shock - dispel it off the marked.",
};
pack["189729"] = { "Primal Tsunami",
	"* |cff71d5ff|Hspell:387571|h[Focused Deluge]|h|r: the focused deluge hammers its mark - brace the deluge.",
	"* |cff71d5ff|Hspell:387474|h[Infused Globule]|h|r: infused globules drift loose - burst the globules before they drift onto the group.",
	"* |cff71d5ff|Hspell:388424|h[Tempest's Fury]|h|r: the tempest's fury batters the whole room - brace the fury and heal.",
	"* |cff71d5ff|Hspell:387504|h[Squall Buffet]|h|r: the squall buffet blows everyone back - brace the push.",
};
pack["189719"] = { "Watcher Irideus",
	"* |cff71d5ff|Hspell:389179|h[Power Overload]|h|r: his power overload surges wild - run clear of the overload.",
	"* |cff71d5ff|Hspell:383840|h[Ablative Barrier]|h|r: the ablative barrier shields him - burst the barrier down.",
	"* |cff71d5ff|Hspell:384014|h[Static Surge]|h|r: the static surge batters everyone - spread and heal it through.",
	"* |cff71d5ff|Hspell:384524|h[Titan Fists]|h|r: his titan fists quake out front - keep out of the front.",
};
-- --------------------------------- --
-- Amirdrassil, the Dream's Hope : Zona 2549 --
-- --------------------------------- --

bos = { "Council of Dreams",
	"* |cff71d5ff|Hspell:418187|h[Rebirth]|h|r: the fallen warden rises again unless burned - burn the risen fast.",
	"* |cff71d5ff|Hspell:421022|h[Agonizing Claws]|h|r: the agonizing claws maul their tank - alternate tanks.",
	"* |cff71d5ff|Hspell:420948|h[Barreling Charge]|h|r: the barreling charge barrels at its mark - clear the charge path.",
	"* |cff71d5ff|Hspell:420525|h[Blinding Rage]|h|r: the blinding rage - spread and heal it through.",
	"* |cff71d5ff|Hspell:420671|h[Noxious Blossom]|h|r: noxious blossoms bloom on the floor - avoid the blossoms.",
};
pack["208363"] = bos; pack["208365"] = bos; pack["208367"] = bos;

pack["204931"] = { "Fyrakk the Blazing",
	"* |cff71d5ff|Hspell:417443|h[Fyralath's Mark]|h|r: his mark mauls its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:419506|h[Firestorm]|h|r: the firestorm scorches the room - brace the storm and heal hard.",
	"* |cff71d5ff|Hspell:430441|h[Darkflame Shades]|h|r: his darkflame shades creep in - burn the shades fast.",
	"* |cff71d5ff|Hspell:417455|h[Dream Rend]|h|r: the dream rend - run from the rend.",
	"* |cff71d5ff|Hspell:420422|h[Wild Fire]|h|r: the wild fire races wild - spread and heal it through.",
	"* |cff71d5ff|Hspell:414186|h[Blaze]|h|r: the blazing trail lingers behind him - avoid the trail.",
};
pack["209333"] = { "Gnarlroot",
	"* |cff71d5ff|Hspell:421898|h[Flaming Pestilence]|h|r: the flaming pestilence spreads its sickening flame - mitigate the pestilence.",
	"* |cff71d5ff|Hspell:422053|h[Shadow Spines]|h|r: his shadow spines spear out - dodge the spines.",
	"* |cff71d5ff|Hspell:421972|h[Controlled Burn]|h|r: the controlled burn rides its mark as a bomb - the marked clear the blast away.",
	"* |cff71d5ff|Hspell:424352|h[Dreadfire Barrage]|h|r: the dreadfire barrage - the tanks alternate against it.",
	"* |cff71d5ff|Hspell:422026|h[Tortured Scream]|h|r: the tortured scream - spread and heal it through.",
	"* |cff71d5ff|Hspell:425816|h[Blazing Pollen]|h|r: the blazing pollen - interrupt it every time.",
};
pack["200926"] = { "Igira the Cruel",
	"* |cff71d5ff|Hspell:414340|h[Drenched Blades]|h|r: her drenched blades bleed the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:414888|h[Blistering Spear]|h|r: her blistering spears skewer their marks - dodge the spears.",
	"* |cff71d5ff|Hspell:414367|h[Gathering Torment]|h|r: the gathering torment hunts its mark - mitigate the mark before it peaks.",
	"* |cff71d5ff|Hspell:416048|h[Umbral Destruction]|h|r: the umbral destruction - brace the destruction and heal hard.",
	"* |cff71d5ff|Hspell:419462|h[Flesh Mortification]|h|r: the flesh mortification rides its bearer - clear it when it peaks.",
};
pack["208445"] = { "Larodar, Keeper of the Flame",
	"* |cff71d5ff|Hspell:417653|h[Force of Nature]|h|r: his forces of nature pile in - clear the forces fast.",
	"* |cff71d5ff|Hspell:418520|h[Blistering Splinters]|h|r: the blistering splinters spear out - dodge the splinters.",
	"* |cff71d5ff|Hspell:422614|h[Scorching Roots]|h|r: his scorching roots root their bearers - burn the roots free.",
	"* |cff71d5ff|Hspell:417667|h[Charred Treant]|h|r: the charred treants stand in the way - burn them down.",
	"* |cff71d5ff|Hspell:429032|h[Everlasting Blaze]|h|r: the everlasting blaze scorches everything - brace the blaze and heal hard.",
};
pack["206172"] = { "Nymue, Weaver of the Cycle",
	"* |cff71d5ff|Hspell:420846|h[Continuum]|h|r: the continuum ring sweeps the floor - move onto the trail the sweep already cleared.",
	"* |cff71d5ff|Hspell:420554|h[Verdant Matrix]|h|r: the verdant matrix webs across the floor - never stand in the web.",
	"* |cff71d5ff|Hspell:430563|h[Ephemeral Flora]|h|r: the ephemeral flora shares its bloom - soak it together.",
	"* |cff71d5ff|Hspell:429615|h[Impending Loom]|h|r: the impending loom lines up - get out of the lines.",
	"* |cff71d5ff|Hspell:420907|h[Viridian Rain]|h|r: the viridian rain - avoid the rain.",
};
pack["200927"] = { "Smolderon",
	"* |cff71d5ff|Hspell:421656|h[Cauterizing Wound]|h|r: the cauterizing wound burns its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:422577|h[Searing Aftermath]|h|r: the searing aftermath blows hot - run from the aftermath.",
	"* |cff71d5ff|Hspell:425885|h[Seeking Inferno]|h|r: the seeking infernos hunt their marks - the marked kite them away.",
	"* |cff71d5ff|Hspell:421343|h[Brand of Damnation]|h|r: the brand of damnation rides its bearer - brace the brand.",
	"* |cff71d5ff|Hspell:421455|h[Overheated]|h|r: he overheats and spikes his damage - heal hard through the overheat.",
};
pack["209090"] = { "Tindral Sageswift, Seer of the Flame",
	"* |cff71d5ff|Hspell:422000|h[Searing Wrath]|h|r: his searing wrath - alternate tanks.",
	"* |cff71d5ff|Hspell:423260|h[Blazing Mushroom]|h|r: his blazing mushrooms bloom - burst the mushrooms before they burst.",
	"* |cff71d5ff|Hspell:420236|h[Falling Stars]|h|r: the falling stars hammer down at marks - dodge the stars.",
	"* |cff71d5ff|Hspell:424581|h[Fiery Growth]|h|r: the fiery growth rides its bearer - keep the bearer away from the group.",
	"* |cff71d5ff|Hspell:424495|h[Mass Entanglement]|h|r: the mass entanglement roots the group - free the rooted fast.",
};
pack["208478"] = { "Volcoross",
	"* |cff71d5ff|Hspell:421207|h[Coiling Flames]|h|r: the coiling flames wrap their bearers - the wrapped disperse before the coils burst.",
	"* |cff71d5ff|Hspell:427201|h[Coiling Eruption]|h|r: the coiling eruption blows up at its bearers - the bearers clear the blast.",
	"* |cff71d5ff|Hspell:420933|h[Flood of the Firelands]|h|r: the flood of the firelands shares its blast - soak it together.",
	"* |cff71d5ff|Hspell:421616|h[Volcanic Disgorge]|h|r: his volcanic disgorge rains down - avoid the falling fire.",
	"* |cff71d5ff|Hspell:421703|h[Serpent's Wrath]|h|r: the serpent's wrath peaks - brace the wrath.",
};
-- --------------------------------- --
-- Aberrus, the Shadowed Crucible : Zona 2569 --
-- --------------------------------- --

pack["199659"] = { "Assault of the Zaqali",
	"* |cff71d5ff|Hspell:401258|h[Heavy Cudgel]|h|r: the heavy cudgel batters its tank - alternate tanks.",
	"* |cff71d5ff|Hspell:401108|h[Phoenix Rush]|h|r: the phoenix rush - get out of the rush line.",
	"* |cff71d5ff|Hspell:397383|h[Magma Mystic]|h|r: the magma mystics kindle in - burn the mystics fast.",
	"* |cff71d5ff|Hspell:401381|h[Awakened Focus]|h|r: the awakened focus - run from the focus.",
	"* |cff71d5ff|Hspell:407009|h[Vigorous Gale]|h|r: the vigorous gale shoves the room - brace the shove.",
};
pack["201668"] = { "Echo of Neltharion",
	"* |cff71d5ff|Hspell:402902|h[Twisted Earth]|h|r: the twisted earth walls up - never stand in the walls.",
	"* |cff71d5ff|Hspell:407221|h[Rushing Darkness]|h|r: the rushing darkness chases its mark - the marked outrun the darkness.",
	"* |cff71d5ff|Hspell:402115|h[Echoing Fissure]|h|r: the echoing fissure - run from the fissure.",
	"* |cff71d5ff|Hspell:401998|h[Calamitous Strike]|h|r: his calamitous strike knocks its tank back - alternate tanks.",
	"* |cff71d5ff|Hspell:410953|h[Volcanic Heart]|h|r: the volcanic hearts bloom underfoot - avoid the hearts.",
};
pack["201261"] = { "Kazzara, the Hellforged",
	"* |cff71d5ff|Hspell:407196|h[Dread Rifts]|h|r: the dread rifts shear across the room - step out of the rifts.",
	"* |cff71d5ff|Hspell:402253|h[Ray of Anguish]|h|r: her ray of anguish burns down its bearer's line - the marked cut the beam away.",
	"* |cff71d5ff|Hspell:400430|h[Hellbeam]|h|r: her hellbeam sweeps the floor - get out of the beam.",
	"* |cff71d5ff|Hspell:404743|h[Terror Claws]|h|r: her terror claws maul the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:403326|h[Winds of Extinction]|h|r: the winds of extinction shove back - brace the shove.",
};
pack["201579"] = { "Magmorax",
	"* |cff71d5ff|Hspell:408839|h[Heat Stacks]|h|r: his heat keeps stacking on everyone - brace the burn and push the fight fast.",
	"* |cff71d5ff|Hspell:402994|h[Molten Spittle]|h|r: his molten spittle shares its splatter - soak it together.",
	"* |cff71d5ff|Hspell:403740|h[Igniting Roar]|h|r: the igniting roar - spread and heal it through.",
	"* |cff71d5ff|Hspell:407879|h[Blazing Tantrum]|h|r: his tantrum burns the floor around him - the tank moves him clear.",
	"* |cff71d5ff|Hspell:409093|h[Blazing Breath]|h|r: his blazing breath washes his front - keep out of the breath.",
};
pack["201320"] = { "Rashok, the Elder",
	"* |cff71d5ff|Hspell:401419|h[Siphon Energy]|h|r: he siphons his charge out of the pillar - drain him fast or he peaks.",
	"* |cff71d5ff|Hspell:405316|h[Ancient Fury]|h|r: the ancient fury - brace the fury when he peaks; keep his charge drained.",
	"* |cff71d5ff|Hspell:400777|h[Charged Smash]|h|r: the charged smash shares its blast - soak it together.",
	"* |cff71d5ff|Hspell:406851|h[Doom Flame]|h|r: the doom flame shares its blast - soak it together.",
	"* |cff71d5ff|Hspell:405821|h[Searing Slam]|h|r: his searing slam lands heavy - alternate tanks.",
};
pack["201754"] = { "Scalecommander Sarkareth",
	"* |cff71d5ff|Hspell:401951|h[Oblivion]|h|r: his oblivion stacks up the room - brace the mounting dark.",
	"* |cff71d5ff|Hspell:401215|h[Emptiness Between Stars]|h|r: the emptiness between the stars teleports its bearer - the marked brace the void.",
	"* |cff71d5ff|Hspell:407576|h[Astral Flare]|h|r: the astral flares - spread from the flares.",
	"* |cff71d5ff|Hspell:401383|h[Oppressing Howl]|h|r: his oppressing howl presses down - brace the howl.",
	"* |cff71d5ff|Hspell:401810|h[Glittering Surge]|h|r: the glittering surge - spread and heal it through.",
};
bos = { "The Amalgamation Chamber",
	"* |cff71d5ff|Hspell:401809|h[Corrupting Shadow]|h|r: the corrupting shadow sludges its bearer - the marked step off the sludge.",
	"* |cff71d5ff|Hspell:405036|h[Umbral Detonation]|h|r: the umbral detonation blows up at its mark - the marked clear out.",
	"* |cff71d5ff|Hspell:407640|h[Shadow's Convergence]|h|r: the shadow's convergence - keep clear of its path.",
	"* |cff71d5ff|Hspell:404732|h[Fiery Meteor]|h|r: the fiery meteor shares its blast - soak it together.",
	"* |cff71d5ff|Hspell:403459|h[Coalescing Void]|h|r: the coalescing void - spread and heal it through.",
};
pack["201774"] = bos; pack["201773"] = bos; pack["201934"] = bos;

bos = { "The Forgotten Experiments",
	"* |cff71d5ff|Hspell:406311|h[Infused Strikes]|h|r: the infused strikes stack on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:406358|h[Rending Charge]|h|r: the rending charges barrel at marks - dodge the charges.",
	"* |cff71d5ff|Hspell:404472|h[Massive Slam]|h|r: the massive slam cracks outward - step out of the slam.",
	"* |cff71d5ff|Hspell:404713|h[Bellowing Roar]|h|r: the bellowing roar flings back - brace the roar.",
	"* |cff71d5ff|Hspell:407327|h[Unstable Essence]|h|r: the unstable essence marks its bearer - keep the essence away from the group.",
};
pack["200912"] = bos; pack["200913"] = bos; pack["200918"] = bos;

pack["202375"] = { "The Vigilant Steward, Zskarn",
	"* |cff71d5ff|Hspell:405736|h[Dragonfire Traps]|h|r: the dragonfire traps arm themselves - step past the armed traps.",
	"* |cff71d5ff|Hspell:405812|h[Animate Golems]|h|r: his golems wake - kill the golems fast.",
	"* |cff71d5ff|Hspell:405919|h[Activate Trap]|h|r: the trap's activation - interrupt it before it fires.",
	"* |cff71d5ff|Hspell:403978|h[Blast Wave]|h|r: the blast wave flings back - brace the blast.",
	"* |cff71d5ff|Hspell:404010|h[Unstable Embers]|h|r: the unstable embers scatter out - avoid the embers.",
};
-- --------------------------------- --
-- Dawn of the Infinite : Zona 2579 --
-- --------------------------------- --

bos = { "Blight of Galakrond",
	"* |cff71d5ff|Hspell:407406|h[Corrosion]|h|r: the corrosion rides its bearer - the marked keep the blight off the group.",
	"* |cff71d5ff|Hspell:407159|h[Reclamation]|h|r: the reclamation - get out of the blast.",
	"* |cff71d5ff|Hspell:407978|h[Necrotic Winds]|h|r: the necrotic winds - spread and heal them through.",
	"* |cff71d5ff|Hspell:406886|h[Corrosive Infusion]|h|r: the corrosive infusion bubbles underfoot - avoid the infusion.",
	"* |cff71d5ff|Hspell:408141|h[Blight Breath]|h|r: the blight breath washes his front - keep out of the breath.",
};
pack["198997"] = bos; pack["201792"] = bos; pack["201788"] = bos; pack["201790"] = bos;

pack["198995"] = { "Chronikar",
	"* |cff71d5ff|Hspell:413142|h[Eon Shatter]|h|r: the eon shatter rips the ground - step out of the shatter.",
	"* |cff71d5ff|Hspell:413013|h[Chrono Shear]|h|r: her chrono shear lands heavy on the tank - alternate tanks.",
	"* |cff71d5ff|Hspell:401421|h[Sand Stomp]|h|r: the sand stomp scatters out - spread from the stomp.",
};
pack["199000"] = { "Chrono-Lord Deios",
	"* |cff71d5ff|Hspell:416152|h[Summon Infinite Keeper]|h|r: his infinite keepers wake - burn the keepers fast.",
	"* |cff71d5ff|Hspell:410904|h[Infinity Orb]|h|r: the infinity orb rolls wild - never touch the orb.",
	"* |cff71d5ff|Hspell:411763|h[Infinite Blast]|h|r: the infinite blast - interrupt it every time.",
	"* |cff71d5ff|Hspell:416139|h[Temporal Breath]|h|r: his temporal breath washes his front - keep out of the breath.",
	"* |cff71d5ff|Hspell:412027|h[Chronal Burn]|h|r: the chronal burn - purge it off the marked.",
};
pack["198933"] = { "Iridikron the Stonescaled",
	"* |cff71d5ff|Hspell:409261|h[Extinction Blast]|h|r: his extinction blast is too big to dodge - take the shelter the arena gives.",
	"* |cff71d5ff|Hspell:409456|h[Earthsurge]|h|r: his earthsurge rains the rocks - brace the surge.",
	"* |cff71d5ff|Hspell:414535|h[Stonecracker Barrage]|h|r: the stonecracker barrage shares its blast - soak it together.",
	"* |cff71d5ff|Hspell:409635|h[Pulverizing Breath]|h|r: his pulverizing breath washes his front - keep out of the breath.",
	"* |cff71d5ff|Hspell:414184|h[Cataclysmic Obliteration]|h|r: the cataclysmic obliteration is his peak - brace the obliteration and heal hard.",
};
pack["198996"] = { "Manifested Timeways",
	"* |cff71d5ff|Hspell:405696|h[Chrono-faded]|h|r: the chrono-faded grips its bearer - brace the fading.",
	"* |cff71d5ff|Hspell:405431|h[Fragments of Time]|h|r: the fragments of time drift loose - keep clear of the fragments.",
};
pack["198999"] = { "Morchie",
	"* |cff71d5ff|Hspell:403891|h[More Problems]|h|r: her past selves pile in - clear them fast.",
	"* |cff71d5ff|Hspell:401200|h[Fixate]|h|r: the fixate locks onto its mark - the marked keep running.",
	"* |cff71d5ff|Hspell:404364|h[Dragon Breath]|h|r: her dragon breath washes her front - keep out of the breath.",
	"* |cff71d5ff|Hspell:406481|h[Time Traps]|h|r: time traps bloom across the floor - never step in the traps.",
	"* |cff71d5ff|Hspell:401667|h[Time Stasis]|h|r: the time stasis freezes its bearer - avoid the stasis.",
};

-- (era ...) the Time-Lost Battlefield sets ONE boss by the party faction:
-- the Alliance face Anduin Lothar and the Horde Grommash Hellscream,
-- same arena and mechanics, different warrior
pack["203679"] = { "Anduin Lothar",
	"* |cff71d5ff|Hspell:410235|h[Bladestorm]|h|r: the blades spin through the melee - step out of the whirl.",
	"* |cff71d5ff|Hspell:418059|h[Mortal Strikes]|h|r: the strikes crush the tank - defenses on the marked swing.",
	"* |cff71d5ff|Hspell:418054|h[Shockwave]|h|r: the shockwave rolls across the field - move off its path.",
	"* |cff71d5ff|Hspell:418047|h[FOR THE ALLIANCE!]|h|r: the cry rouses his army - clear the charged soldiers fast.",
	"* |cff71d5ff|Hspell:417018|h[Blizzard]|h|r: his soldiers call freezing storms - walk out of every storm.",
};
pack["203678"] = { "Grommash Hellscream",
	"* |cff71d5ff|Hspell:410235|h[Bladestorm]|h|r: the blades spin through the melee - step out of the whirl.",
	"* |cff71d5ff|Hspell:410254|h[Decapitate]|h|r: the decapitation crushes the tank - defenses on the marked swing.",
	"* |cff71d5ff|Hspell:408227|h[Shockwave]|h|r: the shockwave rolls across the field - move off its path.",
	"* |cff71d5ff|Hspell:418046|h[FOR THE HORDE!]|h|r: the cry rouses his army - clear the charged soldiers fast.",
	"* |cff71d5ff|Hspell:407122|h[Rain of Fire]|h|r: his soldiers rain fire in patches - step out of every patch.",
};

pack["198998"] = { "Tyr, the Infinite Keeper",
	"* |cff71d5ff|Hspell:400681|h[Spark of Tyr]|h|r: the sparks of tyr scatter out at marks - spread from the sparks.",
	"* |cff71d5ff|Hspell:400642|h[Siphon Oath]|h|r: the siphon oath shields him - burn the shield down.",
	"* |cff71d5ff|Hspell:401248|h[Titanic Blow]|h|r: his titanic blow sends its tank flying - alternate tanks.",
	"* |cff71d5ff|Hspell:400641|h[Dividing Strike]|h|r: the dividing strike shares its blast - soak it together.",
	"* |cff71d5ff|Hspell:401482|h[Infinite Annihilation]|h|r: the infinite annihilation - get out of the blast.",
};
-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["209574"] = { "Aurostor, The Hibernator",
	"* |cff71d5ff|Hspell:421059|h[Cranky Tantrum]|h|r: his cranky tantrum flares when he stirs - stay steady through the tantrum.",
	"* |cff71d5ff|Hspell:420895|h[Groggy Bash]|h|r: his groggy bash swings wide - keep off the swing.",
	"* |cff71d5ff|Hspell:420925|h[Pulverizing Outburst]|h|r: the pulverizing outburst - get out of the outburst.",
	"* |cff71d5ff|Hspell:421260|h[Shaking Roar]|h|r: his shaking roar quakes the ground - keep jumping over the shock.",
};
pack["193535"] = { "Basrikron, The Shale Wing",
	"* |cff71d5ff|Hspell:385506|h[Awaken the Crag]|h|r: the crag wakes to fight - clear the crag fast.",
	"* |cff71d5ff|Hspell:385270|h[Fracturing Tremor]|h|r: the fracturing tremor - brace the tremor.",
	"* |cff71d5ff|Hspell:385137|h[Shale Breath]|h|r: the shale breath washes his front - keep out of the breath.",
	"* |cff71d5ff|Hspell:386259|h[Sundering Crash]|h|r: the sundering crash - move out of the crash.",
	"* |cff71d5ff|Hspell:385652|h[Earth Bolt]|h|r: his earth bolt - interrupt it every time.",
};
pack["193532"] = { "Bazual, The Dreaded Flame",
	"* |cff71d5ff|Hspell:389725|h[Magma Eruption]|h|r: the magma eruption - avoid the eruption.",
	"* |cff71d5ff|Hspell:389431|h[Deterring Flame]|h|r: the deterring flame shoves back - brace the flame.",
	"* |cff71d5ff|Hspell:389514|h[Lava Breath]|h|r: his lava breath washes his front - keep out of the breath.",
	"* |cff71d5ff|Hspell:390635|h[Rain of Destruction]|h|r: the rain of destruction - brace the rain.",
};
pack["193533"] = { "Liskanoth",
	"* |cff71d5ff|Hspell:389954|h[Binding Ice]|h|r: the binding ice roots its bearer - the bound break free.",
	"* |cff71d5ff|Hspell:388925|h[Chilling Breath]|h|r: the chilling breath washes his front - keep out of the breath.",
	"* |cff71d5ff|Hspell:389289|h[Glacial Storm]|h|r: the glacial storm whips up - never stand in the storm.",
	"* |cff71d5ff|Hspell:389762|h[Deep Freeze]|h|r: the deep freeze - don't stand in the freeze.",
};
pack["193534"] = { "Strunraan, The Sky's Misery",
	"* |cff71d5ff|Hspell:385980|h[Thunder Vortex]|h|r: the thunder vortex spins out - keep out of the vortex.",
	"* |cff71d5ff|Hspell:387199|h[Tempest]|h|r: his tempest marks its bearer - the marked brace the tempest.",
	"* |cff71d5ff|Hspell:389951|h[Arcing Expulsion]|h|r: the arcing expulsion - keep off his front.",
};
bos = { "The Zaqali Elders",
	"* |cff71d5ff|Hspell:403779|h[Burning Shadows]|h|r: the burning shadows stack their burn - mitigate the burn and keep moving.",
	"* |cff71d5ff|Hspell:403855|h[Blazing Pitch]|h|r: the blazing pitch pools the floor - avoid the pitch.",
	"* |cff71d5ff|Hspell:404171|h[Enveloping Darkness]|h|r: the enveloping darkness closes in - run from the darkness.",
	"* |cff71d5ff|Hspell:404517|h[Scorching Eclipse]|h|r: the scorching eclipse - watch the ground under its shadow.",
};
pack["199855"] = bos; pack["199853"] = bos;

P.en = en;
