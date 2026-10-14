--[[
	Bosses_TBC_en.lua
		English data of the The Burning Crusade pack (data only; the
		registration is done by Bosses_TBC.lua, loaded after this file
		in the .toc).
		Sources: DBM-Party-BC, DBM-Raids-BC, DBM-Outlands and
		LittleWigs_BurningCrusade (_doc).
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- The Black Morass : Zona 269 --
-- --------------------------------- --

pack["17879"] = { "Chrono Lord Deja",
	"* |cff71d5ff|Hspell:38539|h[Arcane Blast]|h|r: ALWAYS interrupt — it hits hard and stacks on the tank.",
	"* |cff71d5ff|Hspell:31467|h[Time Lapse]|h|r: the time lapse stuns in an area: spread away from the stunned.",
	"* |cff71d5ff|Hspell:31472|h[Arcane Discharge]|h|r: the discharge bounces around the room: heal the group after each one.",
};

pack["17880"] = { "Temporus",
	"* |cff71d5ff|Hspell:31458|h[Hasten]|h|r: haste on himself: DISPEL it or he starts swapping very fast.",
	"* |cff71d5ff|Hspell:38592|h[Wing Buffet]|h|r: the wing buffet knocks the tank back: keep his back to the wall.",
	"* Portals of the rift keep spawning trash behind you: the tank points him away from them and nobody pulls them.",
};

pack["17881"] = { "Aeonus",
	"* |cff71d5ff|Hspell:31422|h[Time Stop]|h|r: the time stop stuns the WHOLE group: pop trinkets and defensives to survive it.",
	"* |cff71d5ff|Hspell:37605|h[Sand Breath]|h|r: the sand breath is frontal: tank him facing away from the group.",
	"* Never stand near the open portals: the timer is unforgiving and the trash swarms eat the medics.",
};

-- --------------------------------- --
-- Karazhan : Zona 532 --
-- --------------------------------- --

bos = { "Attumen the Huntsman",
	"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: the charge flies at the furthest one: nobody stands away from the horse.",
	"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: the knockdown cleaves the melee: melee step out of the front.",
	"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: the intangible presence is a hit-debuff curse: get it removed from the marked.",
	"* Burn Midnight down: the huntsman mounts and dismounts at his health thresholds — all the damage goes to the same pool.",
};
pack["16151"] = bos; pack["16152"] = bos;

pack["15687"] = { "Moroes",
	"* |cff71d5ff|Hspell:29448|h[Vanish]|h|r: he vanishes and heals: AoE the spot to bring him out.",
	"* |cff71d5ff|Hspell:29425|h[Gouge]|h|r: the gouge knocks the tank out: second tank picks him up immediately.",
	"* |cff71d5ff|Hspell:29562|h[Blind]|h|r: the blind lands on the marked: get it removed.",
	"* |cff71d5ff|Hspell:29405|h[Garrote]|h|r: the garrote bleed lasts through the whole fight: heal the marked up to the max.",
	"* He enters with four random guests: the possible healers get interrupted FIRST and die first; the warrior whirlwinds the melee.",
};

pack["16457"] = { "Maiden of Virtue",
	"* |cff71d5ff|Hspell:29511|h[Repentance]|h|r: the repentance stuns the WHOLE raid: step in and break it on purpose, or you eat the next one.",
	"* |cff71d5ff|Hspell:29522|h[Holy Wrath]|h|r: the holy wrath chains between people: spread away from each other.",
	"* |cff71d5ff|Hspell:29512|h[Consecration]|h|r: the consecration burns the ground under her: melee step out of it.",
	"* Her holy fire aura hurts the melee at close range: fire resistance helps — healers stay far.",
};

pack["15691"] = { "The Curator",
	"* |cff71d5ff|Hspell:30235|h[Hateful Bolt]|h|r: the hateful bolt flies at the SECOND highest health: keep that health up at all times.",
	"* |cff71d5ff|Hspell:30403|h[Summon Astral Flare]|h|r: the astral flares spawn in pairs: AoE them down before their volley stacks up.",
	"* |cff71d5ff|Hspell:30254|h[Evocation]|h|r: during the evocation he takes DOUBLE damage: burn him hard, save the burst for it.",
};

pack["16524"] = { "Shade of Aran",
	"* |cff71d5ff|Hspell:29973|h[Flame Wreath]|h|r: DO NOT MOVE a single step or the ring explodes and wipes the group — wait for it to fade.",
	"* |cff71d5ff|Hspell:29991|h[Counterspell]|h|r: the counterspell silences one school for 10 s: stop casting, healers only push with caution.",
	"* |cff71d5ff|Hspell:30004|h[Pyroblast]|h|r: the pyroblasts come in pairs: interrupt BOTH or someone dies.",
	"* |cff71d5ff|Hspell:29951|h[Blizzard]|h|r: the blizzard sweeps the room: WALK out of it — running gets you hit again.",
	"* The drink phase is a trap: do not damage him while he drinks or the raid eats a wall of pyroblasts.",
};

pack["15688"] = { "Terestian Illhoof",
	"* |cff71d5ff|Hspell:30066|h[Summon Kil'rek]|h|r: the imp comes back when it dies: kill it first and keep the AoE on it.",
	"* |cff71d5ff|Hspell:30065|h[Sacrifice]|h|r: the sacrifice marks a player and shields Illhoof: kill Kil'rek to break the shield.",
	"* The imps pile up around the group: a dedicated AoE keeps them from eating the healers.",
};

pack["15689"] = { "Netherspite",
	"* |cff71d5ff|Hspell:30400|h[Perseverance]|h|r: the red beam hardens the tank and kills healers: ONLY the tank stands in it.",
	"* |cff71d5ff|Hspell:30401|h[Serenity]|h|r: the green beam heals everything on it: rotate the group through it in turns.",
	"* |cff71d5ff|Hspell:30402|h[Dominance]|h|r: the blue beam empowers casters: spread it — standing together shares the downside.",
	"* |cff71d5ff|Hspell:38523|h[Nether Breath]|h|r: the nether breath is frontal: tank him pointing away from the group.",
	"* At the banish phase he becomes untargetable: save cooldowns, stop the dots.",
};

pack["15690"] = { "Prince Malchezaar",
	"* |cff71d5ff|Hspell:30843|h[Enfeeble]|h|r: the enfeeble drops you to 1 hp with NO healing for 8 s: survive it, nobody casts saves on you.",
	"* |cff71d5ff|Hspell:30852|h[Shadow Nova]|h|r: the shadow nova lands RIGHT after the enfeeble: run OUT of the prince immediately.",
	"* |cff71d5ff|Hspell:30859|h[Summon Infernal]|h|r: infernals rain from the sky all fight: watch the floor and move at the impacts.",
};

pack["17521"] = { "The Big Bad Wolf",
	"* |cff71d5ff|Hspell:30752|h[Little Red Riding Hood]|h|r: the marked one turns into the hood: kites the wolf around the pillars.",
	"* The wolf breaks line of sight to chase the hood: use the stage to keep him spinning, the rest burns him down.",
};

bos = { "Romulo and Julianne",
	"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: ALWAYS interrupt — her heals keep the whole performance alive.",
	"* One falls, the other enrages: bring both down near-evenly and finish them together.",
	"* The poison thrusts leave a DoT on the marked: healers watch the sword arm of Romulo.",
};
pack["17534"] = bos; pack["17533"] = bos;

pack["18168"] = { "Wizard of Oz",
	"* The four players of the play spawn together: Tito dies first, then Dorothee, then Strawman down FAST.",
	"* Tinhead crawls: one player kites him backwards while everyone keeps the rest down.",
	"* When Roar dies the Crone lands: the tornados spin across the stage — dodge them on the pass and kill her.",
};

bos = { "Chess Event",
	"* The pieces stand still: move them or the fire under their feet eats them — one square per turn.",
	"* Keep the cooldowns ticking: the pawns soak, the king tanks, the healers heal YOUR side only.",
	"* When your piece dies you get a burst of power: use it, then grab a new piece from the bench.",
};
pack["21752"] = bos; pack["21684"] = bos;

pack["17225"] = { "Nightbane",
	"* |cff71d5ff|Hspell:30129|h[Charred Earth]|h|r: the charred earth leaves fire zones under people: move out of them.",
	"* |cff71d5ff|Hspell:36922|h[Bellowing Roar]|h|r: the roar fears the WHOLE group on the ground: fear ward or tremor on the tank.",
	"* |cff71d5ff|Hspell:37098|h[Rain of Bones]|h|r: the bone rain falls during the flight: spread out to eat the least of it.",
	"* The flight cycle is strict: everyone runs to the middle on the ground phases, the tank faces the tail sweeps away.",
};

pack["16179"] = { "Hyakiss the Lurker",
	"* The lurker crawls out of its hole with a poison bite: tank and spank, cleanse the bite on the tank.",
	"* Optional beast on the way up the Servants Quarters: skip it or kill it for the extra chest.",
};

pack["16180"] = { "Shadikith the Glider",
	"* The glider bursts in a sonic circle around itself: melee step out of the radius between bursts.",
	"* Optional beast of the Servants Quarters: plain fight, low risk if the tank keeps it still.",
};

pack["16181"] = { "Rokad the Ravager",
	"* The ravager cleaves hard in the front: melee stay behind it and the tank faces it away.",
	"* Optional beast of the Servants Quarters: plain fight; nobody stands in front of the jaws.",
};

-- --------------------------------- --
-- The Battle for Mount Hyjal : Zona 534 --
-- --------------------------------- --

pack["17767"] = { "Rage Winterchill",
	"* |cff71d5ff|Hspell:31249|h[Death and Decay]|h|r: the decay spreads fire zones on the ground: everyone keeps moving out.",
	"* |cff71d5ff|Hspell:31258|h[Frost Nova]|h|r: the frost nova roots the group in place: trinkets or the healers eat D&D rooted.",
};

pack["17808"] = { "Anetheron",
	"* |cff71d5ff|Hspell:31298|h[Carrion Swarm]|h|r: the carrion swarm is a frontal cone that silences: tank him facing away from the group.",
	"* |cff71d5ff|Hspell:31299|h[Sleep]|h|r: the sleep takes one player down: wake the sleeper immediately or D&D eats them.",
	"* |cff71d5ff|Hspell:31306|h[Inferno]|h|r: the inferno summons burning infernals: AoE them before they reach the medics.",
};

pack["17888"] = { "Kaz'rogal",
	"* |cff71d5ff|Hspell:31447|h[Mark of Kaz'rogal]|h|r: the mark siphons mana: at zero the marked EXPLODES — casters stop casting when their mana runs low.",
	"* The cleave is brutal in the front: melee stay behind and the tank faces him away from the wall of bodies.",
};

pack["17842"] = { "Azgalor",
	"* |cff71d5ff|Hspell:31340|h[Howl of Azgalor]|h|r: the howl fears the WHOLE raid: tremor or fear ward on the tank to hold position.",
	"* |cff71d5ff|Hspell:31344|h[Unending Pain]|h|r: the unending pain is a wide DoT: heal it up, it does not cleanse.",
	"* On his death he casts a curse on one player: the marked runs FAR away so the pit lord that spawns eats nobody.",
};

pack["17968"] = { "Archimonde",
	"* |cff71d5ff|Hspell:32014|h[Doomfire]|h|r: the doomfire trails chase people across the ground: kite it AWAY from the raid.",
	"* |cff71d5ff|Hspell:31970|h[Air Burst]|h|r: the air burst throws half the raid to the sky: keep the feathery buff up before each cast.",
	"* |cff71d5ff|Hspell:31972|h[Fear]|h|r: the fear lands on random people: defensives on the tank so he holds while feared.",
};

-- --------------------------------- --
-- The Shattered Halls : Zona 540 --
-- --------------------------------- --

pack["16807"] = { "Grand Warlock Nethekurse",
	"* |cff71d5ff|Hspell:30496|h[Death Coil]|h|r: the death coil bounces on the tank: heal it up, it cannot be interrupted.",
	"* Below 20 percent he starts spinning with blades: melee step OUT and let the ranged finish him.",
	"* Trash before him feeds the packs: pull him into a clean hallway or the fel hounds join the fight.",
};

pack["16809"] = { "Warbringer O'mrogg",
	"* His two heads swap the threat target on their own: the tanks taunt him back immediately when the beat down lands.",
	"* The stomp knocks the melee down: step out of the radius or lose the swing uptime.",
};

pack["20923"] = { "Blood Guard Porung",
	"* Heroic-only guard at the start of the room: he cleaves with the pack, kill him mid-pull before the hordes pile.",
	"* Plain fight: nothing special beyond the cleave and the adds that trail him.",
};

pack["16808"] = { "Warchief Kargath Bladefist",
	"* |cff71d5ff|Hspell:5927|h[Sweep]|h|r: the sweep cleaves hard in the front: melee stay behind the blades.",
	"* |cff71d5ff|Hspell:30739|h[Blade Dance]|h|r: the blade dance bounces on random people: keep the spread so it eats nobody twice.",
	"* The two adds at his sides get CC or a quick kill: free the tank from the second pair of blades.",
};

-- --------------------------------- --
-- The Blood Furnace : Zona 542 --
-- --------------------------------- --

pack["17381"] = { "The Maker",
	"* |cff71d5ff|Hspell:30923|h[Dominate Mind]|h|r: the dominate mind steals one player: stun him, do not kill him, and wait it out.",
	"* The acid pools spread under the group: nobody stands on the green.",
};

pack["17380"] = { "Broggok",
	"* The prisoners unlock in waves: clear them fast or the tank eats two packs at once.",
	"* The poison gas fills the cells in zones: move to the clean gap — the DoT stacks fast in the wrong spot.",
};

pack["17377"] = { "Keli'dan the Breaker",
	"* The blast wave lands right after his blink: run OUT the moment he teleports to the center of the room.",
	"* He repeats the teleport cycle: healers keep the group topped between them, the blast punishes low health.",
};

-- --------------------------------- --
-- Hellfire Ramparts : Zona 543 --
-- --------------------------------- --

pack["17306"] = { "Watchkeeper Gargolmar",
	"* The wounds on his arms heal him per swing: interrupt the wound or the fight grows long.",
	"* The surge knocks the tank into adds: keep his back clean and clear the hallway first.",
};

pack["17308"] = { "Omor the Unscarred",
	"* |cff71d5ff|Hspell:37566|h[Whip of Despair]|h|r: the whip is a shadow curse on the tank: cure it or the medics drown in it.",
	"* The hound packs join him at the pull: CC one pack, kill the other before they stack the healers.",
	"* He hovers out of melee range in bursts: ranged pick him up, the melee re-engage after each hop.",
};

bos = { "Nazan & Vazruden",
	"* The herald rides the wyvern: burn the pair together, the rider does not dismount until the health drops.",
	"* When Vazruden lands the tank picks him at once: nobody else stands in front of the fire breath.",
	"* Nazan keeps strafing the group: ranged interrupt the fireballs between passes.",
};
pack["17537"] = bos; pack["17307"] = bos;

-- --------------------------------- --
-- Magtheridon's Lair : Zona 544 --
-- --------------------------------- --

pack["17257"] = { "Magtheridon",
	"* The five channelers open the room: kill them first, one pack at a time or the banish never lands.",
	"* |cff71d5ff|Hspell:30616|h[Blast Nova]|h|r: the blast nova wipes the room: all five players click their cubes at the banish to interrupt it.",
	"* |cff71d5ff|Hspell:30511|h[Quake]|h|r: the quake throws the melee into the walls: healers top the group after each one.",
	"* The flames on the floor burn in patches: move instantly, the DoT is not mild.",
};

-- --------------------------------- --
-- The Steamvault : Zona 545 --
-- --------------------------------- --

pack["17797"] = { "Hydromancer Thespia",
	"* |cff71d5ff|Hspell:31481|h[Lightning Cloud]|h|r: the cloud spreads under random people: step out of it before the ticks stack.",
	"* |cff71d5ff|Hspell:25033|h[Enveloping Winds]|h|r: the winds wrap one caster in silence: dispel the magic or keep the second healer ready.",
	"* Her bolts hit hard on the tank: healers pre-shield the pull, the first seconds hit the hardest.",
};

pack["17796"] = { "Mekgineer Steamrigger",
	"* |cff71d5ff|Hspell:35107|h[Summon Mechanics]|h|r: three mechanics spawn around him: AoE them fast or they shred the healers.",
	"* The machine fluid gushes on the marked: move at the gush and keep the floor clean of the puddles.",
};

pack["17798"] = { "Warlord Kalithresh",
	"* |cff71d5ff|Hspell:6001|h[Disarm]|h|r: the disarm wipes the tank's weapon: carry a backup weapon or the off-tank steps in.",
	"* The Water Spout orb spawns and he channels on it: the tank drags him AWAY — inside the orb his damage snowballs.",
	"* Spell reflections bounce the casts back on players: casters hold the big nukes while the shimmer is up.",
};

-- --------------------------------- --
-- The Underbog : Zona 546 --
-- --------------------------------- --

pack["17770"] = { "Hungarfen",
	"* |cff71d5ff|Hspell:31673|h[Foul Spores]|h|r: the spore clouds GROW HIM below half health: drag him out of the cloud or burst him through the window.",
	"* The underspores ring the area: AoE them before they swarm the healers.",
};

pack["18105"] = { "Ghaz'an",
	"* |cff71d5ff|Hspell:15716|h[Terrifying Roar]|h|r: the roar sends the melee running: fear defenses on, or accept the flight and re-engage.",
	"* The acid breath is frontal: the tank faces him away and the melee stay behind the legs.",
};

pack["17826"] = { "Swamplord Musel'ek",
	"* |cff71d5ff|Hspell:31429|h[Freeze]|h|r: the freeze roots one melee on the spot: break it free or heal through the burst that follows.",
	"* One player keeps the owl locked down: the wing buffet of the bird throws the melee around otherwise.",
	"* His aimed shot punishes the marked far one: nobody stands away from the group uncovered.",
};

pack["17882"] = { "The Black Stalker",
	"* |cff71d5ff|Hspell:31704|h[Static Charge]|h|r: the orb follows one player around: KITE it far from the group until it fades.",
	"* |cff71d5ff|Hspell:31715|h[Chain Lightning]|h|r: the chain bounces through stacked people: keep the spread and the healers ready.",
};

-- --------------------------------- --
-- The Slave Pens : Zona 547 --
-- --------------------------------- --

pack["17941"] = { "Mennu the Betrayer",
	"* |cff71d5ff|Hspell:31985|h[Corrupted Healing Totem]|h|r: the healing totem mends him every second: destroy it FIRST.",
	"* |cff71d5ff|Hspell:34980|h[Corrupted Nova Totem]|h|r: the nova totem detonates close by: kill it on sight or keep the range.",
	"* The stoneskin totem hardens the pack: AoE the totems at the start, then burn the boss.",
};

pack["17942"] = { "Quagmirran",
	"* |cff71d5ff|Hspell:39340|h[Acid Geyser]|h|r: the acid geyser blasts in the front: NOBODY stands in front of the jaws.",
	"* The fungal decay lands as a stacking poison: cleanse it before the second stack or the healer drowns.",
};

pack["17991"] = { "Rokmar the Crackler",
	"* |cff71d5ff|Hspell:31956|h[Grievous Wound]|h|r: the grievous wound cuts HALF the healing on the tank: heal to full or swap tanks.",
	"* |cff71d5ff|Hspell:34970|h[Water Spit]|h|r: the water spit is frontal: tank faces away from the group.",
	"* |cff71d5ff|Hspell:38801|h[Ensnaring Moss]|h|r: the moss roots people to the ground: spread apart so it never chains two at once.",
};

-- Ahune: evento estacional del Festival del Fuego de Medio Verano (LittleWigs TheSlavePens)
bos = { "Ahune",
	"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: the shield makes him untargetable at the pull — every cycle it holds, the group burns the Frozen Core to peel it off.",
	"* The summon starts at the ice stone: clear the cave ring first and trigger the ritual, the fight opens the moment the stone melts.",
	"* Water elementals pour out of the pond while the shield holds: AoE them between cycles and nobody stands still on the icy floor.",
};
pack["40446"] = bos;
pack["25740"] = bos;
pack["25865"] = bos;
pack["25697"] = bos;

-- --------------------------------- --
-- Serpentshrine Cavern : Zona 548 --
-- --------------------------------- --

pack["21216"] = { "Hydross the Unstable",
	"* |cff71d5ff|Hspell:38219|h[Frost Tomb]|h|r: the frost tomb freezes one player solid: heal the rest through it, the frozen one is safe.",
	"* The tank crosses the threshold to shift the element: cross it ONLY on the mark or the wrong element stacks the debuffs.",
	"* On the poison side the corruption piles fast: move out of the pools and keep the stacks counted.",
};

pack["21217"] = { "The Lurker Below",
	"* |cff71d5ff|Hspell:37660|h[Spout]|h|r: the spout rotates around him like a clock hand: run WITH the beam, never through it.",
	"* |cff71d5ff|Hspell:21873|h[Whirl]|h|r: the whirl knocks the melee into the pool: step out of the radius at the cast.",
	"* The nagas spawn from the pool mid-fight: AoE them down and the ranged pick the ambushers off.",
};

pack["21215"] = { "Leotheras the Blind",
	"* |cff71d5ff|Hspell:37749|h[Whirlwind]|h|r: the whirlwind bleeds anyone in melee: STOP attacking and wait it out.",
	"* |cff71d5ff|Hspell:37640|h[Chaos Blast]|h|r: the chaos blast chains through casters: spread and break the chain.",
	"* In the demon phase copies of the group spawn: everyone kills their OWN copy first, the raid does the rest.",
	"* The banish window opens on the human form: the warlock saves the banish for the split of the phases.",
};

pack["21213"] = { "Morogrim Tidewalker",
	"* |cff71d5ff|Hspell:37730|h[Tidal Wave]|h|r: the tidal wave is a frontal slam: the tank faces him away from the group.",
	"* |cff71d5ff|Hspell:37850|h[Watery Graves]|h|r: the graves summon murlocs from the pool: AoE the spawns between the waves.",
	"* The water globule chases one player and grows: kite it away — it stacks damage on anyone it touches.",
};

pack["21214"] = { "Fathom-Lord Karathress",
	"* |cff71d5ff|Hspell:38236|h[Cataclysmic Bolt]|h|r: the bolt flies at the SECOND highest health: keep that health topped at all times.",
	"* |cff71d5ff|Hspell:38330|h[Tidal Surge]|h|r: the surge knocks the whole group back on the platform: plant yourself or heal through.",
	"* The three carriers fall first: Sharkkis, then Tideress, then Caribdis — the lord alone melts afterwards.",
};

pack["21212"] = { "Lady Vashj",
	"* |cff71d5ff|Hspell:38575|h[Entangle]|h|r: the entangle roots several people: heal through it, nobody fights the roots alone.",
	"* |cff71d5ff|Hspell:38511|h[Shock Blast]|h|r: the shock blast stuns in an area: spread out of the blast line.",
	"* Phase two runs on the tainted cores: grab one, pass it to the generator, break all four shields in order.",
	"* The striders kite down the platform and the nagas die in place: nobody dies to the trash while the cores run.",
};

-- --------------------------------- --
-- The Eye : Zona 550 --
-- --------------------------------- --

pack["19514"] = { "Al'ar",
	"* |cff71d5ff|Hspell:35410|h[Melt Armor]|h|r: the melt armor strips the tank bare: swap tanks right after each melt.",
	"* |cff71d5ff|Hspell:35383|h[Flame Quills]|h|r: the quills rain fire over the platform: hide under her at the cast.",
	"* The spawnlings hatch on the platforms she abandons: AoE them before they pile on the healers.",
	"* She hops ledge to ledge: the tank follows fast and the raid never camps the wrong platform.",
};

pack["19516"] = { "Void Reaver",
	"* |cff71d5ff|Hspell:34162|h[Pounding Slam]|h|r: the pound silences and throws the melee: melee step OUT at the slam.",
	"* |cff71d5ff|Hspell:34172|h[Arcane Orb]|h|r: the arcane orbs drop on random ranged: nobody stands where a bomb lands.",
	"* He ignores taunts: the tank pulls clean and everyone watches their threat against the knockback.",
};

pack["18805"] = { "High Astromancer Solarian",
	"* |cff71d5ff|Hspell:33045|h[Wrath of the Astromancer]|h|r: the wrath bomb marks one player: run AWAY from people until it detonates.",
	"* The agents spawn around the room mid-fight: AoE them fast, they head for the healers first.",
	"* At low health she splits into copies: kill the REAL one — the priestesses revive her if left alive.",
};

pack["19622"] = { "Kael'thas Sunstrider",
	"* The four advisors fall one at a time: crowd-control the priest and burst the rest by the raid call.",
	"* The weapons phase spawns the arsenal: pick the epics up, they carry the whole fight after.",
	"* |cff71d5ff|Hspell:36819|h[Pyroblast]|h|r: ALWAYS interrupt — the pyroblast of phase five deletes whoever it lands on.",
	"* |cff71d5ff|Hspell:36735|h[Flame Strike]|h|r: the flame strike scorches zones on the floor: move the moment it marks.",
	"* |cff71d5ff|Hspell:34341|h[Gravity Lapse]|h|r: the gravity lapse lifts the raid: rotate around him and grab the orbs of power.",
};

-- --------------------------------- --
-- The Arcatraz : Zona 552 --
-- --------------------------------- --

pack["20870"] = { "Zereketh the Unbound",
	"* |cff71d5ff|Hspell:30533|h[Void Zone]|h|r: the void zones burn the ground under people: step out the moment they open.",
	"* |cff71d5ff|Hspell:32863|h[Seed of Corruption]|h|r: the seed detonates on the marked: heal the burst or the blast chains the group.",
	"* The void fiends spawn at his side: AoE them before they reach the medics.",
};

pack["20885"] = { "Dalliah the Doomsayer",
	"* |cff71d5ff|Hspell:36142|h[Gift of the Naaru]|h|r: ALWAYS interrupt — her gift heals her back nearly whole.",
	"* |cff71d5ff|Hspell:36173|h[Whirlwind]|h|r: the whirlwind cuts the melee in a ring: melee step out of the radius.",
	"* She swaps in against her warden: focus the active one and never split the damage between them.",
};

pack["20886"] = { "Soccothrates",
	"* |cff71d5ff|Hspell:36512|h[Felfire Ground]|h|r: the felfire opens cracks across the floor: nobody stands on the burning ground.",
	"* |cff71d5ff|Hspell:35759|h[Knock Away]|h|r: the charge knocks the tank away: plant the tank or the second tank catches him.",
	"* He takes turns with Dalliah: the focus stays on whoever is up, the crowd-control waits for the swap.",
};

pack["20912"] = { "Harbinger Skyriss",
	"* |cff71d5ff|Hspell:36924|h[Mind Rend]|h|r: the mind rend hits the marked HARD: heal the marks between rends.",
	"* The illusions of the mind spawn from the group: everyone kills their OWN illusion first.",
	"* The mind control takes one player for a while: hold the damage on them, it ends on its own.",
};

-- --------------------------------- --
-- The Botanica : Zona 553 --
-- --------------------------------- --

pack["17976"] = { "Commander Sarannis",
	"* |cff71d5ff|Hspell:34803|h[Arcane Resonance]|h|r: at low health she detonates in an area: SPREAD the moment the fight turns.",
	"* The bloodkeepers guard her: AoE them at the pull or they eat the healers alive.",
};

pack["17975"] = { "High Botanist Freywinn",
	"* |cff71d5ff|Hspell:34557|h[Tranquility]|h|r: ALWAYS interrupt — the tranquility heals him from nothing to full.",
	"* The seedlings swarm the group in waves: AoE them down, they stack up fast otherwise.",
};

pack["17980"] = { "Laj",
	"* The thorns punish the melee in bursts: melee HOLD their swings at the burst or lose the health bar.",
	"* The mutants spawn around him: AoE them quickly and keep the floor clean.",
};

pack["17978"] = { "Thorngrin the Tender",
	"* |cff71d5ff|Hspell:34660|h[Hellfire]|h|r: the hellfire burns everything around him: melee step out for the whole channel.",
	"* The sacrifice marks one player: heal the marked and keep the distance to his front.",
	"* The grief curse cuts the healing: get it removed off the tank fast.",
};

pack["17977"] = { "Warp Splinter",
	"* |cff71d5ff|Hspell:34716|h[Grow]|h|r: at the grow he grows huge and hits huge: kite him until he shrinks back.",
	"* The treants swarm in his shadow: AoE them before they wrap the group.",
	"* Nobody tank-hugs him during the drain: the drain drinks the closest — keep the melee back a step.",
};

-- --------------------------------- --
-- The Mechanar : Zona 554 --
-- --------------------------------- --

pack["19710"] = { "Gatewatcher Iron-Hand",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: the hammer stuns the melee: spread out of the hammer arc.",
	"* |cff71d5ff|Hspell:35327|h[Static Disruption]|h|r: the disruption knocks back stacked people: never bunch in the radius.",
	"* Nobody fights him from the front: the swings chain the melee in place.",
};

pack["19218"] = { "Gatewatcher Gyro-Kill",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: the hammer stuns the melee: step out of the arc between swings.",
	"* The shadow volley rains on the group: keep the spread and the healers ready.",
};

pack["19219"] = { "Mechano-Lord Capacitus",
	"* |cff71d5ff|Hspell:35158|h[Reflective Damage Shield]|h|r: the damage shield reflects swings: melee STOP hitting at the flash.",
	"* |cff71d5ff|Hspell:35159|h[Reflective Magic Shield]|h|r: the magic shield reflects casts: casters HOLD at the flash.",
	"* The nether charges roll across the floor: step aside, they explode on touch.",
};

pack["19221"] = { "Nethermancer Sepethrea",
	"* The fire trail chases one player around the room: KITE the trail out wide, never near the group.",
	"* The infernos spawn and hunt: ranged pick them down one by one.",
	"* The dragon breath is frontal: tank faces away from the group on every pass.",
};

pack["19220"] = { "Pathaleon the Calculator",
	"* |cff71d5ff|Hspell:35280|h[Dominate Mind]|h|r: the domination takes one player: hold the damage on the mindless one, it ends by itself.",
	"* The nether wraiths swarm at low health: AoE them the second they arrive.",
};

-- --------------------------------- --
-- Shadow Labyrinth : Zona 555 --
-- --------------------------------- --

pack["18731"] = { "Ambassador Hellmaw",
	"* |cff71d5ff|Hspell:33547|h[Fear]|h|r: the fear sends the tank off position: tremor or fear ward on the tank holder.",
	"* The ambush throws the tank backwards: keep the back wall clean or the patrol joins the fight.",
	"* He patrols a wide lane at the entrance: pull him into the empty pocket between the packs.",
};

pack["18732"] = { "Grandmaster Vorpil",
	"* |cff71d5ff|Hspell:33563|h[Rain of Fire]|h|r: the rain of fire burns whole zones: move out of the marked ground.",
	"* He runs to the void portal and returns with adds: the group saves the AoE for the return and never chases him.",
	"* The void travelers chase one player each: nobody stands still while they hunt.",
};

pack["18667"] = { "Blackheart the Inciter",
	"* |cff71d5ff|Hspell:33676|h[Charge]|h|r: the charge flies at the FURTHEST one: nobody stands away from the group.",
	"* The war stomp knocks the melee down: re-engage fast, the window is short.",
	"* The whirlwind spins under him: melee back up out of the swing window.",
};

pack["18708"] = { "Murmur",
	"* |cff71d5ff|Hspell:33711|h[Murmur's Touch]|h|r: the touch counts down and detonates on the marked: the marked runs OUT alone.",
	"* |cff71d5ff|Hspell:33923|h[Sonic Shockwave]|h|r: the shockwave is a frontal cone: melee stay behind his body.",
	"* |cff71d5ff|Hspell:38796|h[Sonic Boom]|h|r: the boom hits the WHOLE room: everyone steps out of the radius at the cast.",
};

-- --------------------------------- --
-- Sethekk Halls : Zona 556 --
-- --------------------------------- --

pack["18472"] = { "Darkweaver Syth",
	"* The four elemental images spawn at half health: AoE them down or they drown the healers.",
	"* The shadow bolts rain on random people: keep the spread mild.",
	"* The fear sends the group running: fear defenses on the tank keep the position.",
};

pack["23035"] = { "Anzu",
	"* The dread ravens hatch around him: AoE them the moment they land.",
	"* The ritual circles summon him in: the group enters topped or the first minute goes sour.",
	"* His banish covers the casters for stretches: melee carry the damage through the window.",
};

pack["18473"] = { "Talon King Ikiss",
	"* |cff71d5ff|Hspell:38197|h[Polymorph]|h|r: the polymorph sheep one player: dispel the magic or wait the sheep out.",
	"* |cff71d5ff|Hspell:40425|h[Arcane Explosion]|h|r: the blast lands right after his blink: melee run OUT instantly.",
	"* |cff71d5ff|Hspell:38245|h[Blizzard]|h|r: the blizzard sweeps its zone: everyone keeps drifting out of it.",
};

-- --------------------------------- --
-- Mana-Tombs : Zona 557 --
-- --------------------------------- --

pack["18341"] = { "Pandemonius",
	"* |cff71d5ff|Hspell:32358|h[Void Blast]|h|r: the void blast phases him into shadow: melee HOLD the swings while he is voided.",
	"* The dark cleave crushes the melee: nobody stays in front of the swing.",
};

pack["18343"] = { "Tavarok",
	"* |cff71d5ff|Hspell:2021|h[Disarm]|h|r: the disarm takes the tank's weapon: backup weapon or off-tank picks up.",
	"* The earthshock silences the casters in an area: healers space their heals out.",
};

pack["22930"] = { "Yor",
	"* The stomp throws the melee down: step out of the radius at the cast or lose a full swing window.",
	"* He rises from Tavarok's corpse: the group tops up before the summon or the fight starts ragged.",
};

pack["18344"] = { "Nexus-Prince Shaffar",
	"* The ethereal beacons spawn around him: kill them FIRST or they turn into more adds to fight.",
	"* His blink moves him across the room: the melee follow instantly, the casts do not wait.",
	"* The frost nova traps the melee in place: keep healing them through it.",
};

-- --------------------------------- --
-- Auchenai Crypts : Zona 558 --
-- --------------------------------- --

pack["18371"] = { "Shirrak the Dead Watcher",
	"* |cff71d5ff|Hspell:32300|h[Inquisitor's Watching Eye]|h|r: the eye follows one player and burns: KITE it far from the group.",
	"* The dead watchers swarm the floor: AoE them before they stack the medics.",
};

pack["18373"] = { "Exarch Maladaar",
	"* The dark copy of a player spawns mid-fight: kill the copy FIRST, it hits harder than its owner.",
	"* The soul scream silences in an area: casters spread away from the scream line.",
	"* The shadow bolts pile on the tank: healers pre-shield between them.",
};

-- --------------------------------- --
-- Old Hillsbrad Foothills : Zona 560 --
-- --------------------------------- --

pack["17848"] = { "Lieutenant Drake",
	"* |cff71d5ff|Hspell:33792|h[Fireball Volley]|h|r: the volley rains fire on three targets: heal the burst between shots.",
	"* The escort waves join mid-fight: the tank keeps the adds off the healers, AoE them quick.",
};

pack["17862"] = { "Captain Skarloc",
	"* |cff71d5ff|Hspell:29427|h[Holy Light]|h|r: ALWAYS interrupt — his holy light heals him back a full bar.",
	"* The consecration burns the ground under him: melee step out of it.",
	"* The escort waves pile in as he falls back: hold the adds off the medics till he drops.",
};

pack["18096"] = { "Epoch Hunter",
	"* |cff71d5ff|Hspell:33834|h[Whirlwind]|h|r: the whirlwind spins past the melee: melee back off the radius at the cast.",
	"* The wing buffet throws the tank away: plant him against the keep wall.",
	"* He lands with two rider escorts: crowd-control one, burst the other before the tank loses position.",
};

-- --------------------------------- --
-- Black Temple : Zona 564 --
-- --------------------------------- --

pack["22887"] = { "High Warlord Naj'entus",
	"* |cff71d5ff|Hspell:39837|h[Needle Spine]|h|r: the spine volley hurts in an area: spread out and heal the burst.",
	"* |cff71d5ff|Hspell:39872|h[Tidal Shield]|h|r: the tidal shield bubbles him: nobody melee during it, the raid backs off a step.",
	"* The impaled spine sticks in the backs: use the removal item on the marked fast.",
};

pack["22898"] = { "Supremus",
	"* |cff71d5ff|Hspell:41951|h[Molten Blaze]|h|r: the blaze chases one player: KITE it away from the raid so the fire pools never reach people.",
	"* The stomp throws the melee down: brace or accept the knock and re-engage.",
	"* Two tanks take turns holding him: the kite window opens for whoever is NOT tanking.",
};

pack["22841"] = { "Shade of Akama",
	"* Akama channels to break the chains: defend him through the waves or the channel never finishes.",
	"* The adds pour in two lanes: clear them off the channeler fast, the healers die first otherwise.",
	"* When the shade breaks free everyone burns him: the cooldowns land then, not before.",
};

pack["22871"] = { "Teron Gorefiend",
	"* The shadow of death picks one player: they fall and keep playing as the shadowy construct — the raid finishes their curse first.",
	"* The spirits of the dead chase the group behind him: turn and AoE them before they stack.",
	"* The grief curse cuts the healing on the marked: get it removed fast.",
};

pack["22948"] = { "Gurtogg Bloodboil",
	"* |cff71d5ff|Hspell:40481|h[Acidic Wound]|h|r: the acidic bleed stacks on the tank: swap tanks on the stacks or the healers drown.",
	"* The fel rage takes one player: pump the heals into them, they carry a huge burden.",
	"* The boil lands on groups of five: healers triage the boils, the raid spreads by teams.",
};

pack["23420"] = { "Essence of Souls",
	"* The three essences rotate: Anger, Desire and Suffering — burn each fully before it fades.",
	"* The aura of desire punishes heals on others: triage the wounds, never top anyone up.",
	"* The aura of anger means NO healing on him: pure damage wins the window.",
	"* The soul drain lands as a big magic debuff: dispel it the moment it marks.",
};

pack["22947"] = { "Mother Shahraz",
	"* |cff71d5ff|Hspell:40891|h[Fatal Attraction]|h|r: the chain binds three players together: they stay away from the raid and close to each other.",
	"* The prismatic shield rotates the schools: switch the magic you throw against it.",
	"* The beams sweep across her front: nobody stands in the sweep lane.",
};

bos = { "Illidari Council",
	"* The four members fall near-evenly: one left alone enrages the whole council.",
	"* The priestess heals the others: ALWAYS interrupt her great heal.",
	"* The reflective shield shimmers over one of them: casters HOLD the spells at the flash.",
	"* The poison pools gather under the melee: cleanse fast and step out of the green.",
};
pack["22949"] = bos; pack["22950"] = bos; pack["22951"] = bos; pack["22952"] = bos;

pack["22917"] = { "Illidan Stormrage",
	"* The shear cuts the tank in half: swap tanks on every shear or the healers lose the bar.",
	"* The eye beam sweeps the line he faces: the raid clears the lane the moment he turns.",
	"* The shadow demons hunt two players: take the demon trinket and control them, or they feast.",
	"* In the demon form the raid stacks and heals through: the wings open the burst window.",
	"* The flame crash burns zones under people: move out, the fire spreads where it lands.",
};

-- --------------------------------- --
-- Gruul's Lair : Zona 565 --
-- --------------------------------- --

bos = { "High King Maulgar",
	"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: the whirlwind cuts the melee in a ring: melee step out of the radius each spin.",
	"* The two healers of his council die FIRST: every heal gets the interrupt, always.",
	"* Kiggler the crazed plays in area bolts: one dedicated player soaks him away from the raid.",
	"* Krosh the mage yanks the casters in: one ranged baits the pull far from everyone else.",
};
pack["18831"] = bos; pack["18832"] = bos; pack["18834"] = bos; pack["18835"] = bos; pack["18836"] = bos;

pack["19044"] = { "Gruul the Dragonkiller",
	"* |cff71d5ff|Hspell:36240|h[Ground Slam]|h|r: the slam hurls everyone to the walls: SPREAD out after it or the shatter eats the neighbors.",
	"* |cff71d5ff|Hspell:36300|h[Shatter]|h|r: the shatter bursts the frozen: nobody stands near anyone when it lands.",
	"* |cff71d5ff|Hspell:33525|h[Growth]|h|r: the growth stacks with the time: the fight ends before the stacks win.",
};

-- --------------------------------- --
-- Sunwell Plateau : Zona 580 --
-- --------------------------------- --

pack["24850"] = { "Kalecgos",
	"* The spectral blast opens the portal on the marked: the marked trades with the demon realm and both bosses fall together.",
	"* |cff71d5ff|Hspell:45010|h[Arcane Breath]|h|r: the arcane breath is frontal: tank faces away from the group.",
	"* The wild magic throws random effects: healing stays flexible, nothing is guaranteed.",
};

pack["24882"] = { "Brutallus",
	"* |cff71d5ff|Hspell:45141|h[Burn]|h|r: the burn stacks heavy on the tank: swap tanks on the stack count.",
	"* The stomp throws the melee: plant the group or heal through the knock.",
	"* The metabolic blockade locks the casters: healers triage while the casts hold.",
};

pack["25038"] = { "Felmyst",
	"* |cff71d5ff|Hspell:45717|h[Demonic Vapor]|h|r: the fog tracks one player: KITE it wide, never near the raid.",
	"* |cff71d5ff|Hspell:45661|h[Encapsulate]|h|r: the capsule lifts one player up: heal through the lift, they hang mid-air.",
	"* In flight the breath sweeps like a clock hand: everyone keeps moving with the sweep.",
};

bos = { "Eredar Twins",
	"* The twins fall near-evenly: one left standing empowers the survivor.",
	"* The grand conflagration chains to the closest: keep the spread between the marks.",
	"* The shadow nova hits brutal on the dark side: healers pre-shield the shadow tank.",
};
pack["25165"] = bos; pack["25166"] = bos;

pack["25741"] = { "M'uru",
	"* The void sentinels spawn in waves: AoE them and switch target the moment they land.",
	"* The negative energy pulses the whole room: healers cadence the heals between pulses.",
	"* When he collapses Entropius rises in his place: dodge the black holes and restart the burn.",
};

pack["25315"] = { "Kil'jaeden",
	"* |cff71d5ff|Hspell:45848|h[Darkness of a Thousand Souls]|h|r: the darkness drowns the whole raid: defensive cooldowns and maximum heals on the cast.",
	"* The shield orbs spawn on the pillars: ranged burn them or the beams eat the camp.",
	"* The shadow spikes burst in waves: spread out of the burst lanes.",
	"* The orb powers lift at the end: grab them to ride out the beams.",
};

-- --------------------------------- --
-- Magisters' Terrace : Zona 585 --
-- --------------------------------- --

pack["24723"] = { "Selin Fireheart",
	"* The fel channel drains the group: ANY interrupt breaks it, even a bash.",
	"* The fel beams raise his damage as he drains: kill the drained adds fast.",
};

pack["24744"] = { "Vexallus",
	"* The pure energy orbs spawn around him: kill EACH one before it reaches him or he swells.",
	"* The discharge piles up at the end: healers cadence the raid through the storm.",
};

pack["24560"] = { "Priestess Delrissa",
	"* |cff71d5ff|Hspell:44141|h[Flash Heal]|h|r: ALWAYS interrupt — the flash keeps her arena team alive.",
	"* The five fighters play as a team: crowd-control the healers, burst one target, never spread the damage.",
	"* The warrior whirls the melee: melee step out of the spin window.",
};

pack["24664"] = { "Kael'thas Sunstrider",
	"* |cff71d5ff|Hspell:44194|h[Fireball]|h|r: the fireball deletes the marked: pre-shield on every cast.",
	"* The gravity lapse pulls and lifts people: nobody stands near the edge of the room.",
	"* The phoenixes hatch and resurge from their ashes: AoE the birds, kill the egg second.",
	"* The flame strike scorches zones: move out the moment it marks.",
};

-- --------------------------------- --
-- Zul'Aman : Zona 568 --
-- --------------------------------- --

pack["23574"] = { "Akil'zon",
	"* |cff71d5ff|Hspell:43648|h[Electrical Storm]|h|r: the storm lifts one player: EVERYONE runs under the storm or the outside eats the raid.",
	"* The eagle adds swarm the platform: AoE them before they pick the medics.",
};

pack["23576"] = { "Nalorakk",
	"* The brutal swipe cleaves two targets: two tanks share the swings, never one.",
	"* The surge flies at the FURTHEST one: nobody stands away from the bear.",
	"* The deafening roar silences the raid: healers pre-shield before the roar lands.",
};

pack["23578"] = { "Jan'alai",
	"* |cff71d5ff|Hspell:43962|h[Hatch Eggs]|h|r: the eggs hatch once he burns: either ALL hatch or NONE — AoE the swarms right.",
	"* The fire bombs fall around the group: spread BEFORE the volley drops.",
	"* The flame breath sweeps the front: tank faces away from the group.",
};

pack["23577"] = { "Halazzi",
	"* The spirit splits from the lynx twice: tank both through the lightning, the phase ends with the lynx.",
	"* The totem pulses from the corner: kill it on sight or the bolts never stop.",
	"* The flame shock lands on the tank: cleanse it fast or the healers drown.",
};

pack["24239"] = { "Hex Lord Malacrass",
	"* The spirit bolts drain the whole raid every few seconds: healers cadence between them.",
	"* The spirit of one player floats out mid-fight: kill it or the drain feeds him.",
	"* The siphon steals a player's kit on the spot: adapt the rotation the moment it lands.",
};

pack["23863"] = { "Zul'jin",
	"* The four forms cycle: the bear mauls, the eagle throws cyclones, the lynx shreds the tank, the dragonhawk breathes fire columns.",
	"* The wisps chase through the storm: KITE them out wide, they burn whoever they catch.",
	"* The ground fire follows the dragonhawk breath: move out of every column it marks.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["17711"] = { "Doomwalker",
	"* |cff71d5ff|Hspell:32686|h[Earthquake]|h|r: the quake shakes the area: healers keep the group topped through the tremor.",
	"* The charge hurls the tank away: keep the tank away from walls and pits.",
};

pack["18728"] = { "Doom Lord Kazzak",
	"* |cff71d5ff|Hspell:21063|h[Twisted Reflection]|h|r: the twisted reflection is a curse: CURE it or every swing heals him.",
	"* |cff71d5ff|Hspell:32964|h[Frenzy]|h|r: the frenzy lifts his speed: kite him until it fades.",
	"* The mark of the doom lord drains the mana of nearby casters: casters keep the distance.",
};

P.en = en;