--[[
	Bosses_Cata_en.lua
		Datos en inglés del pack Cata (solo datos; el registro lo
		hace Bosses_Cata.lua, que se carga despues en el .toc).
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)
-- =========================================================== --
-- Historic database (English translations) --
-- =========================================================== --

-- -------------------------------- --
-- Shadowfang Keep : Zone 33 --
-- -------------------------------- --

pack["46962"] = { "Baron Ashbury",
	"* Interrupt or dispel |cff71d5ff|Hspell:93712|h[Pain and Suffering]|h|r.",
	"* |cff71d5ff|Hspell:93710|h[Asphyxiate]|h|r leaves everyone at 1% health, and then he casts |cff71d5ff|Hspell:93705|h[Stay of Execution]|h|r; interrupt it as soon as the group recovers some health, because it also heals the boss."
};

pack["3887"] = { "Baron Silverlaine",
	"* Dispel |cff71d5ff|Hspell:93956|h[Veil of Shadow]|h|r so healing is not reduced.",
	"* When adds spawn, full DPS on the adds."
};

pack["4278"] = { "Commander Springvale",
	"* The adds can be controlled and should be killed as soon as possible; his Unholy Empowerment must be interrupted.",
	"* The tank keeps him facing away from the group and avoids the desecrations on the floor."
};

pack["46963"] = { "Lord Walden",
	"* When he casts the green potion EVERYONE must move.",
	"* When he casts the red potion EVERYONE must stand still."
};

pack["46964"] = { "Lord Godfrey",
	"* Dispel the |cff71d5ff|Hspell:93761|h[Cursed Bullets]|h|r curse whenever possible.",
	"* Move away from the |cff71d5ff|Hspell:93520|h[Pistol Barrage]|h|r."
};

-- -------------------------------- --
-- Deadmines : Zone 1581 --
-- -------------------------------- --

pack["47162"] = { "Glubtok <The Supervisor>",
	"* In the first phase he loses aggro after each teleport, the tank must pay attention.",
	"* At 40% the second phase begins, where we avoid the spinning lava wall.",
	"* The elementals in the second phase must be killed little by little because they spawn more and more; a good moment to use Heroism."
};

pack["47296"] = { "Helix Gearbreaker",
	"* Avoid the bombs he throws.",
	"* The player hit by |cff71d5ff|Hspell:88352|h[Chest Bomb]|h|r moves away from the group until it explodes."
};

pack["43778"] = { "Foe Reaper 5000",
	"* 1 DPS grabs a harvester and they kill the 4 harvesters.",
	"* When the last harvester dies the boss activates; everyone goes up except the one with the harvester, who will kill all the adds that spawn.",
	"* When the boss marks a player with |cff71d5ff|Hspell:88501|h[Harvest]|h|r everyone spreads away from the marked spot.",
	"* When he gets |cff71d5ff|Hspell:88481|h[Blazing Speed]|h|r we spread."
};

pack["47626"] = { "Admiral Ripsnarl",
	"* The healer must ration mana.",
	"* The adds must be killed as fast as possible or they will grow and kill the group.",
	"* The boss must be killed as fast as possible to keep the |cff71d5ff|Hspell:88736|h[Thirst for Blood]|h|r from stacking too much."
};

pack["47739"] = { "Captain Cookie",
	"* The boss drops good (white) and bad (green) foods that cancel each other out;",
	"  pick 1 bad per 1 good throughout the whole fight to keep the floor from filling with the bad food's damaging area.",
	"  The tank, if aggro is not an issue, can pick 2 bad per 1 good."
};

pack["49429"] = { "Vanessa VanCleef",
	"* Nightmare phase:",
	"  - We appear in a cauldron where we have to activate 4 faucets to escape.",
	"  - Avoid the fire and the avalanches until Glubtok and kill him.",
	"  - In the Helix phase do not move, to attract as few spiders as possible.",
	"  - The Foe Reaper makes rotating lightning barriers along the tunnel we have to advance through; avoid stepping on them or jump over.",
	"  - In the next phase kill all the worgen attacking the friendly npcs in a hurry.",
	"* Vanessa phase:",
	"  - Priority on any adds that spawn.",
	"  - When she applies the explosive charges grab the ropes from the green arrow."
};

-- -------------------------------------------- --
-- Halls of Origination : Zone 4945 --
-- -------------------------------------------- --

pack["39425"] = { "Temple Guardian Anhuur",
	"* Whoever receives |cff71d5ff|Hspell:75592|h[Divine Atonement]|h|r should move away from the group until it fades in 8 seconds, to avoid healing the boss too much.",
	"* When he starts casting |cff71d5ff|Hspell:75322|h[Reverberating Hymn]|h|r the whole group goes down to pull the two levers. On the way back we interrupt the hymn and continue.",
	"Note: On normal only 1 dps per side is needed, each one pulling one of the levers."
};

pack["39428"] = { "Earthrager Ptah",
	"* It's an optional DPS-race boss."
};

pack["39788"] = { "Anraphet",
	"* Move the boss to avoid the areas caused by the |cff71d5ff|Hspell:76184|h[Alpha Beams]|h|r.",
	"* Try to use mitigations during the |cff71d5ff|Hspell:75622|h[Omega Stance]|h|r."
};

pack["39587"] = { "Isiset",
	"* When he casts |cff71d5ff|Hspell:74137|h[Supernova]|h|r you must turn away before the cast finishes to avoid being stunned.",
	"* When he splits, the kill order for the copies should be:",
	"   1st Astral Call",
	"   2nd Astral Rain",
	"   3rd Veil of Sky"
};

pack["39731"] = { "Ammunae",
	"* Priority DPS on the Spore Pods so they don't heal the boss, and on the Bloodpetal Flowers to avoid damage.",
	"* If possible dispel |cff71d5ff|Hspell:76043|h[Wither]|h|r when it targets players.",
	"Note: On heroic the tank can park the boss over a dead spore to speed up the boss's death."
};

pack["39732"] = { "Setesh",
	"* The boss is not tanked; the adds that spawn are tanked.",
	"* With high DPS the portals can be ignored and you try to burn the boss down as fast as possible.",
	"* To be safe, destroy the portals as soon as they spawn, and the tank must pick up the adds that spawn (don't kill them)."
};

pack["39378"] = { "Rajh",
	"* Avoid the fire cyclones.",
	"* |cff71d5ff|Hspell:80352|h[Summon Orb]|h|r must be interrupted to avoid the damage.",
	"* The |cff71d5ff|Hspell:76355|h[Blessing of the Sun]|h|r deals damage and also increases the damage we deal. Focus all DPS at that moment."
};

-- -------------------------------------------- --
-- Blackrock Caverns : Zone 4926 --
-- -------------------------------------------- --

pack["39665"] = { "Rom'ogg Bonecrusher",
	"* Avoid the dust cloud from the |cff71d5ff|Hspell:75272|h[Quake]|h|r. On heroic elementals spawn; if the tank and healer are comfortable they can be ignored, otherwise kill them.",
	"* When he casts |cff71d5ff|Hspell:75539|h[Chains of Woe]|h|r focus ALL DPS on breaking the chains, and once broken run away as fast as possible to avoid dying to the |cff71d5ff|Hspell:75543|h[The Skullcracker]|h|r."
};

pack["39679"] = { "Corla, Herald of Twilight",
	"* The goal of this boss is to prevent both players and adds from gaining 100 ticks of |cff71d5ff|Hspell:75610|h[Evolution]|h|r; if that happens the affected one turns into a dragonkin and on HERO it's a wipe.",
	"  To avoid it, intercept the add's beam before it reaches 80, and swap when we ourselves reach 80.",
	"  Best is to assign one player to each add.",
	"Tip: If we get distracted and don't see the debuff, when a character starts blinking they are about to transform; that's the moment to swap the player receiving the beam."
};

pack["39698"] = { "Karsh Steelbender <Twilight Armorer>",
	"* The tank will put the boss into the lava jet until he has 5 or 6 marks, pulling him out immediately.",
	"* When the shield melt is about to fade, put him in again. If it fades, elementals spawn and the fight gets complicated.",
	"Note: Best is to put him in repeatedly, to control as much as possible the time he stays inside. The longer he stays, the more damage the party takes."
};

pack["39700"] = { "Beauty",
	"* Ideally keep the pups in CC while killing the boss. If that is not possible, kill the pups before the boss.",
};

pack["39705"] = { "Ascendant Lord Obsidius",
	"* Ideally have one DPS kite the shadows (using slows); they have no aggro and hit whatever hit them last.",
	"* Meanwhile the tank and the rest of the group focus the boss.",
	"* Every so often the boss will swap with a shadow, and the kiting DPS and the tank will swap mobs."
};

-- -------------------------------------------- --
-- Lost City of the Tol'vir : Zone 5396 --
-- -------------------------------------------- --

pack["43612"] = { "High Prophet Barim",
	"* In the first phase the phoenix is kited.",
	"* In the second phase (shade) full DPS on the phoenix."
};

pack["43614"] = { "Lockmaw",
	"* The marked player brings the adds close to the tank so he can pick them up easily.",
};

pack["49045"] = { "Augh",
	"* Avoid the |cff71d5ff|Hspell:91408|h[Whirlwind]|h|r.",
};

pack["44577"] = { "General Husam",
	"* Move the boss to avoid stepping on the mines on the floor.",
	"* Avoid the ground areas; he warns with a dust signal."
};

pack["44819"] = { "Siamat",
	"* Focus adds",
};

-- ------------------------------------ --
-- The Stonecore : Zone 5088 --
-- ------------------------------------ --

pack["43438"] = { "Corborus",
	"* Move away immediately from |cff71d5ff|Hspell:92648|h[Crystal Barrage]|h|r and on HERO kill the spiders that come out of the crystals right away.",
	"* Dispel the |cff71d5ff|Hspell:82415|h[Dampening Wave]|h|r debuff as soon as it appears.",
	"* On HERO, when Corborus goes underground avoid at all costs the dust clouds that kill."
};

pack["42810"] = { "Crystal Spawner Giant",
	"* Jump right before the cast of the |cff71d5ff|Hspell:92631|h[Quake]|h|r ends.",
};

pack["43214"] = { "Slabhide",
	"* Avoid the floor pools from |cff71d5ff|Hspell:80800|h[Eruption]|h|r.",
	"* Avoid the rocks falling from the ceiling; they are marked on the floor by a shadow.",
	"* On HERO, when he casts |cff71d5ff|Hspell:92265|h[Crystal Storm]|h|r get behind one of the fallen rocks to avoid the damage.",
};

pack["42188"] = { "Ozruk",
	"* The tank stands with their back to the wall to avoid getting knocked back when he casts |cff71d5ff|Hspell:78807|h[Shatter]|h|r.",
	"* When he casts |cff71d5ff|Hspell:92410|h[Ground Slam]|h|r everyone, including the tank, retreats to avoid the |cff71d5ff|Hspell:92662|h[Shatter]|h|r damage; the damage area is very visible on the floor.",
	"* On HERO, when he casts |cff71d5ff|Hspell:78939|h[Bulwark of Elementium]|h|r all ranged DPS should throw a damage-over-time at it so it gets reflected and pulls them out of the next |cff71d5ff|Hspell:92426|h[Paralyze]|h|r.",
};

pack["42333"] = { "High Priestess Azil",
	"* You have to move away from the |cff71d5ff|Hspell:79340|h[Summon Gravity Well]|h|r but at the same time use them to pull the followers inside.",
	"* Dispel |cff71d5ff|Hspell:79351|h[Force Grip]|h|r from the tank every time he puts it on him.",
	"* If someone can remove curses it's a good idea to remove |cff71d5ff|Hspell:79345|h[Curse of Blood]|h|r whenever possible."
};

-- ----------------------------------------------- --
-- Throne of the Tides : Zone 643 --
-- --------------------------------- --------------

pack["40586"] = { "Lady Naz'jar",
	"* Interrupt |cff71d5ff|Hspell:91477|h[Shock Blast]|h|r.",
	"* Avoid the geyser from |cff71d5ff|Hspell:75722|h[Summon Geyser]|h|r.",
	"* Avoid the |cff71d5ff|Hspell:76001|h[Fungal Spores]|h|r.",
	"* At 66% and 33% she will do the |cff71d5ff|Hspell:75683|h[Waterspout]|h|r and 3 adds will spawn that should be CC'd to make the fight easier.",
};

pack["40765"] = { "Commander Ulthok",
	"* EVERYONE always avoids the |cff71d5ff|Hspell:76047|h[Dark Fissure]|h|r.",
	"* The tank will keep moving the boss around the room, spreading the areas."
};

pack["40825"] = { "Erunak Stonespeaker",
	"* Tank him with his back to the party to avoid the damage from the |cff71d5ff|Hspell:76170|h[Magma Splash]|h|r.",
	"* Try to dispel the |cff71d5ff|Hspell:76165|h[Ember Strike]|h|r when the tank receives it.",
	"* Pull the boss out of the |cff71d5ff|Hspell:76234|h[Mind Fog]|h|r whenever he casts it.",
	"* If he puts up |cff71d5ff|Hspell:76307|h[Absorb Magic]|h|r it must be dispelled, otherwise all magic damage will heal him."
};

pack["40792"] = { "Neptulon",
	"* PHASE 1, the tank picks up the Restless Behemoths; the small adds can be killed by the DPS directly. The Behemoths get moved around the room until they die.",
	"* PHASE 2, beasts and 3 smashers spawn that channel on Neptulon.",
	"    The smashers must be killed as soon as possible, but also help the tank with the beasts so they don't kill him.",
	"    The tank keeps moving the remaining Behemoth and the beasts.",
	"    Avoid the ink pools on the floor.",
	"* PHASE 3, Neptulon will give us |cff71d5ff|Hspell:76133|h[Tidal Surge]|h|r; at this point go FULL DPS until the boss dies."
};

-- ---------------------------------- --
-- Grim Batol : Zone 4950 --
-- ---------------------------------- --

pack["39625"] = { "General Umbriss",
	"* When he casts |cff71d5ff|Hspell:74670|h[Lightning Attack]|h|r the targeted player moves to avoid the damage.",
	"* The healer watches out for when the tank receives |cff71d5ff|Hspell:74846|h[Bleeding Wound]|h|r and heals him up to at least 90% to remove the debuff.",
	"* The DPS handle the adds (Troggs); the tank must not pick them up.",
	"  On HERO a purple trogg spawns; before starting the fight assign 1 DPS.",
	"  It should be CC'd; if not possible it must be killed far from the group and from the other adds, ONLY the assigned DPS hits it."
};

pack["40177"] = { "Forgemaster Throngus",
	"* Avoid the area of the |cff71d5ff|Hspell:74984|h[Mighty Stomp]|h|r.",
	"* When Throngus picks the mace the tank moves him around the room to avoid the damage.",
	"* When he picks the sword the healer focuses on the tank since he will take heavy damage.",
	"* When he picks the shield tank him in the corner of the entrance and everyone except the tank stands behind him."
};

pack["40319"] = { "Drahga Shadowburner",
	"* As soon as |cff71d5ff|Hspell:75218|h[Summon Flames]|h|r spawns, the player it follows must run in the opposite direction to keep them apart while everyone else kills it immediately.",
	"* When he mounts the dragon, tank him in the center of the room to make it easier to avoid the |cff71d5ff|Hspell:75321|h[Valiona's Flame]|h|r by standing behind the dragon.",
	"* When he casts the |cff71d5ff|Hspell:90966|h[Devastating Scourge]|h|r avoid the fissures that damage and slow."
};

pack["40484"] = { "Erudax",
	"* Ranged DPS try to stay spread out so the |cff71d5ff|Hspell:79466|h[Binding Shadows]|h|r don't hit more than one.",
	"* When he casts the |cff71d5ff|Hspell:75664|h[Gale of Shadows]|h|r everyone moves into the eye of the gale or dies.",
	"* After the Gale a Twilight Corruptor will spawn, or 2 on HERO.",
	"  The DPS must be split so they die as soon as possible, because if they reach the eggs the boss will heal and dragons will spawn that damage the whole party until the end."
};

-- --------------------------------------------- --
-- The Vortex Pinnacle : Zone 5035 --
-- --------------------------------------------- --

pack["43878"] = { "Grand Vizier Ertan",
	"* You have to avoid the |cff71d5ff|Hspell:86292|h[Cyclone Shields]|h|r."
};

pack["43873"] = { "Altairus",
	"* Whenever possible keep the wind at your back to benefit from the buff."
};

pack["43875"] = { "Asaad <Caliph of Zephyrs>",
	"* When the cast of |cff71d5ff|Hspell:87618|h[Static Cling]|h|r is about to finish, jump to avoid sticking to the floor.",
	"* Dispel the cling from everyone who didn't make the jump in time.",
	"* When he casts |cff71d5ff|Hspell:86911|h[Unstable Grounding Field]|h|r everyone gets inside the triangle to avoid dying."
};

-- ---------------------------------- --
-- Zul'Aman : Zone 3805 --
-- ---------------------------------- --

pack["23574"] = { "Akil'zon <Eagle Avatar>",
	"* All apart from +6 yards. |cff71d5ff|Hspell:61911|h[Static Disruption]|h|r increases the damage if there are players around.",
	"* Full DPS to the white eagle that lifts a player.",
	"* A player gets lifted for |cff71d5ff|Hspell:45336|h[Electrical Storm]|h|r: everyone stacks under them to avoid the damage."
};

pack["23576"] = { "Nalorakk <Bear Avatar>",
	"* |cff71d5ff|Hspell:42402|h[Surge]|h|r charges the farthest player; you must swap after each charge or you die.",
	"* In bear form he casts interrupts; careful if the healer's cast overlaps with |cff71d5ff|Hspell:42395|h[Lacerating Slash]|h|r which does 180K.",
	"* Full DPS on the boss."
};

pack["23578"] = { "Jan'alai <Dragonhawk Avatar>",
	"* He spawns 2 adds, kill ONLY 1.",
	"* Tank the boss next to the other add, in front of the walkway to gather the hatchlings and AoE them down.",
	"* The boss will go to the middle and place bombs on the floor that we avoid because they explode.",
	"* These operations repeat throughout the whole encounter.",
	"* Sometimes the boss releases a frontal flame that leaves a groove on the floor which we avoid.",
	"|cFFFF0000Tip:|r If there is a mage in the party it is interesting to steal the earthquake from the previous pull and throw it at the boss."
};

pack["23577"] = { "Halazzi <Lynx Avatar>",
	"* Keep the boss away from the water totem area.",
	"* Casters can use the water totem area to restore health and mana.",
	"* Break the lightning totems immediately."
};

pack["24239"] = { "Hex Lord Malacrass",
	"* First we neutralize the two adds.",
	"  Ideally CC the add on the left while doing full DPS on the one on the right",
	"  and if it can be kept CC'd until the end we continue with the boss,",
	"  otherwise kill the second add before continuing with the boss.",
	"* He will use the players' abilities. Be ready to interrupt and dispel everything you can."
};

pack["23863"] = { "Daakara <The Invincible>",
	"* He will randomly turn into 2 of the 4 forms:",
	"  - Eagle. Break the lightning totem and avoid the cyclones.",
	"  - Bear. The healer has to dispel the paralysis and remember the charges.",
	"  - Lynx. Hard for the healer; kill the 2 small cats as soon as possible. The boss applies random bleeds.",
	"  - Dragonhawk. Dodge the damage from the grooves and fire columns."
};

-- --------------------------------- --
-- Zul'Gurub : Zone 1977 --
-- --------------------------------- --

pack["52155"] = { "High Priest Venoxis",
	"* When he draws the maze, don't touch or jump the green lines.",
	"* When 2 players get linked by the toxic link they spread as far apart as possible to break it.",
	"  Nobody should be near when it breaks because it deals area damage.",
	"* Avoid the floor pools, moving the boss so you can hit him without stepping on them. The pools grow.",
	"* Avoid the green breath by getting behind him.",
	"* When he casts the beam, run to avoid it.",
	"* When the boss is stunned you must go all out on DPS because there is a +100% damage modifier."
};

pack["52151"] = { "Bloodlord Mandokir",
	"* The spirits are the key. When the raptor is loose it must be killed as soon as possible so it doesn't kill spirits.",
	"  Each spirit can revive a dead player, and the revived player deals more damage and takes less damage.",
	"* Avoid the grooves on the floor when the boss casts them.",
	"* Don't gift the boss health by overhealing whoever receives the Bloodletting; keeping them a bit above 7500 is enough."
};

pack["52059"] = { "High Priestess Kilnara",
	"* Avoid the purple walls (like Sartharion's waves).",
	"* Interrupt the Tears of Blood.",
	"* Before getting the boss below 50%, kill the panthers 1 by 1 or 2 by 2."
};

pack["52053"] = { "Zanzil",
	"* Interrupt Voodoo Bolt.",
	"* Stay away from Zanzil's Fire.",
	"* Blue Elixir: Drink from the Frost Cauldron and finish the Berserker as soon as possible (it has no aggro).",
	"* Green Elixir: Drink from the Poison Cauldron as soon as possible.",
	"* Red Elixir: Drink from the Fire Cauldron to AoE down the zombies."
};

pack["52148"] = { "Jin'do the Godbreaker",
	"* Put the boss into the Dead Zone; players enter it too when he summons Shades of Hakkar.",
	"* While the tank handles the giant trolls, the rest of the group must finish off the summoned spirits, plus the chains.",
	"* Avoid Shadow Spikes."
};

pack["52258"] = { "Gri'lek",
	"* The player marked with |cff71d5ff|Hspell:68987|h[Pursue]|h|r kites the boss.",
	"* Leave the |cff71d5ff|Hspell:89932|h[Fault Line]|h|r area when it is marked."
};

pack["52286"] = { "Wushoolay",
	"* Tank with their back to the party.",
	"* Leave the |cff71d5ff|Hspell:96710|h[Lightning Cloud]|h|r.",
	"* Spread out from each other."
};

pack["52269"] = { "Renataki",
	"* Heal the player ambushed by the Vanish.",
	"* Avoid the area damage from the |cff71d5ff|Hspell:96645|h[Thousand Blades]|h|r."
};

pack["52271"] = { "Hazza'rah",
	"* Interrupt the Wrath.",
	"* Kill the nightmares before they reach their player or they will kill them."
};

-- ------- --
-- RAIDS --
-- ------- --

-- ------------------------------------ --
-- Baradin Hold : Zone 5600 --
-- ------------------------------------ --

pack["47901"] = { "Demon Containment Unit",
	"* These monsters must be killed by the whole group stacked on the tank to spread the damage from the |cff71d5ff|Hspell:89348|h[Demon-repelling Ray]|h|r."
};

pack["47120"] = { "Argaloth",
	"* On 10 you set up 2 groups, each with 1 tank, 1 healer and 3 DPS.",
	"* Each group stands on one side of Argaloth and stays stacked on the tank to spread the damage.",
	"* After each |cff71d5ff|Hspell:88942|h[Meteor Slash]|h|r the tanks swap the boss.",
	"* During the |cff71d5ff|Hspell:88972|h[Fel Firestorm]|h|r phase everyone moves to avoid the damage without stepping on fire.",
	"* At the end of the storm each group returns to its position and the above repeats."
};

pack["52363"] = { "Occu'thar",
	"* Nobody crosses his front: the |cff71d5ff|Hspell:-2606|h[Searing Shadows]|h|r is a cone in front of him (melee go behind).",
	"* The |cff71d5ff|Hspell:-2607|h[Eyes of Occu'thar]|h|r mark every player: after 10s each eye passes through its host (|cff71d5ff|Hspell:-2609|h[Occu'thar's Destruction]|h|r) and kills, so the eyes get burned down fast and the |cff71d5ff|Hspell:-2608|h[Gaze of Occu'thar]|h|r is dodged.",
	"* The |cff71d5ff|Hspell:-2605|h[Focused Fire]|h|r is a fire pool on the ground under a player: that player moves."
};

pack["55869"] = { "Alizabal, Mistress of Hate",
	"* Her |cff71d5ff|Hspell:-4120|h[Skewer]|h|r stuns the tank for 8s: the OT picks up instantly.",
	"* The |cff71d5ff|Hspell:-4121|h[Seething Hate]|h|r pins a player: the marked one moves away from the rest.",
	"* The |cff71d5ff|Hspell:-4122|h[Blade Dance]|h|r is growing physical damage every second: full DPS with the healers kept on their toes, finish it fast."
};

-- -------------------------------------- --
-- Blackwing Descent : Zone 5094 --

pack["41570"] = { "Magmaw",
	"* He bites the tank with |cff71d5ff|Hspell:-3314|h[Mangle]|h|r (its |cff71d5ff|Hspell:-3315|h[Sweltering Armor]|h|r melt the armor) and at that moment two chained players ride the pincers: they hook the spike with the |cff71d5ff|Hspell:-3320|h[Throw Hook]|h|r and impale him, opening the |cff71d5ff|Hspell:-3321|h[Point of Vulnerability]|h|r which takes growing damage.",
	"* The tank cannot leave him with no melee target: if he cannot reach anyone he goes into |cff71d5ff|Hspell:-3317|h[Molten Tantrum]|h|r.",
	"* The |cff71d5ff|Hspell:-3312|h[Lava Parasites]|h|r jump on players and keep draining them (|cff71d5ff|Hspell:-3313|h[Parasitic Infection]|h|r): the raid AoEs them down while spreading.",
	"* The |cff71d5ff|Hspell:-3310|h[Magma Spit]|h|r targets 3 players and the |cff71d5ff|Hspell:-3311|h[Pillar of Flame]|h|r falls at the target's feet, which has to move away.",
	"* Heroic: lord Nefarius adds the |cff71d5ff|Hspell:-3323|h[Blazing Inferno]|h|r (ground on fire), the |cff71d5ff|Hspell:-3325|h[Blazing Bone Constructs]|h|r of |cff71d5ff|Hspell:-3327|h[Armageddon]|h|r (full damage before they blow) and his |cff71d5ff|Hspell:-3328|h[Shadow Breath]|h|r at 30%."
};

bos = { "Omnotron Defense System",
	"* The four golems alternate two at a time: only the ACTIVE one is attacked while the other one recharges.",
	"* Magmatron: the |cff71d5ff|Hspell:-3264|h[Incineration Security Measure]|h|r hits the whole room (constant heals); the |cff71d5ff|Hspell:-3265|h[Acquiring Target]|h|r marked player runs from the |cff71d5ff|Hspell:-3266|h[Flamethrower]|h|r cone and, on heroic, withstands the |cff71d5ff|Hspell:-3267|h[Encasing Shadows]|h|r with heals; his |cff71d5ff|Hspell:-3268|h[Barrier]|h|r is broken down with damage.",
	"* Arcanotron: the |cff71d5ff|Hspell:-3195|h[Power Generator]|h|r buffs whoever stands on it (and the golems), so the marked player drags it out of the group; the |cff71d5ff|Hspell:-3196|h[Arcane Annihilator]|h|r is interrupted when possible and while the |cff71d5ff|Hspell:-3197|h[Power Conversion]|h|r is up NOBODY attacks the shield.",
	"* Electron: the |cff71d5ff|Hspell:-3202|h[Lightning Conductor]|h|r marked player moves away (damages the nearby ones); keep spread for the |cff71d5ff|Hspell:-3203|h[Electrical Discharge]|h|r and do not attack his |cff71d5ff|Hspell:-3204|h[Unstable Shield]|h|r (heroic: it triggers the |cff71d5ff|Hspell:-3205|h[Shadow Infusion]|h|r).",
	"* Toxitron: the |cff71d5ff|Hspell:-3269|h[Chemical Bombs]|h|r and their |cff71d5ff|Hspell:-3270|h[Chemical Clouds]|h|r (+50% damage taken inside: nobody) and his |cff71d5ff|Hspell:-3271|h[Poison Protocol]|h|r drops chasing bombs that leave |cff71d5ff|Hspell:-3273|h[Poison Puddles]|h|r; his |cff71d5ff|Hspell:-3274|h[Poison Soaked Shell]|h|r is also left alone (it soaks the attacker in poison)."
};
pack["42179"] = bos; pack["42178"] = bos; pack["42166"] = bos; pack["42180"] = bos;

pack["41442"] = { "Atramedes",
	"* The whole fight plays around |cff71d5ff|Hspell:-3072|h[Sound]|h|r: the raid starts at 0 and every sonic effect fills the bar; at 100 he channels |cff71d5ff|Hspell:-3455|h[Devastation]|h|r that kills the raid, so avoiding sound sources is the key.",
	"* The |cff71d5ff|Hspell:-3073|h[Ancient Dwarven Shields]|h|r (10 scattered) are used at key moments: the |cff71d5ff|Hspell:-3074|h[Resonating Clash]|h|r interrupts him and applies |cff71d5ff|Hspell:-3075|h[Vertigo]|h|r with +50% damage taken.",
	"* Grounded: the |cff71d5ff|Hspell:-3076|h[Sonar Pulse]|h|r discs chase the target, the |cff71d5ff|Hspell:-3077|h[Modulation]|h|r hits everyone (heals on reserve), the |cff71d5ff|Hspell:-3078|h[Sonic Breath]|h|r chases a player and the |cff71d5ff|Hspell:-3079|h[Searing Flames]|h|r burn the floor.",
	"* Airborne: his |cff71d5ff|Hspell:-3086|h[Roaring Flame Breath]|h|r and the |cff71d5ff|Hspell:-3087|h[Roaring Flames]|h|r scorch the floor, the |cff71d5ff|Hspell:-3085|h[Sonar Bomb]|h|r lands near a player and the |cff71d5ff|Hspell:-3088|h[Sonic Fireball]|h|r chases the marked one (nobody else in line).",
	"* Heroic: the |cff71d5ff|Hspell:-3082|h[Obnoxious Fiend]|h|r pesters the raid by buffing Atramedes (burn it down as soon as the raid can)."
};

pack["43296"] = { "Chimaeron",
	"* The |cff71d5ff|Hspell:-3009|h[Bile-O-Tron]|h|r (Pip Quickwit's robot) keeps the raid above 10,000 HP: below that the |cff71d5ff|Hspell:-3012|h[Caustic Slime]|h|r straight-up kills, so the healer focuses on keeping everyone's HP topped.",
	"* The |cff71d5ff|Hspell:-3013|h[Massacre]|h|r leaves everyone at 1% HP (the |cff71d5ff|Hspell:-3010|h[Pip's Mixture]|h|r saves them) and must be healed right after.",
	"* His |cff71d5ff|Hspell:-3015|h[Break]|h|r stacks +25% physical damage on the tank and the |cff71d5ff|Hspell:-3016|h[Double Attack]|h|r hits twice: the tanks swap every 2 stacks.",
	"* At 20% he channels |cff71d5ff|Hspell:-3018|h[Mortality]|h|r (taunt-immune and nearly unhealable): full burn with Pip's Mixture carrying the 1%.",
	"* Heroic: Nefarius fires periodic |cff71d5ff|Hspell:-3020|h[Mocking Shadows]|h|r that damage everyone (area heals ready)."
};

pack["41378"] = { "Maloriak",
	"* He pours vials into the cauldron and the color rules: with the |cff71d5ff|Hspell:-2935|h[Red Vial]|h|r he casts |cff71d5ff|Hspell:-2936|h[Consuming Flames]|h|r on a target and the |cff71d5ff|Hspell:-2937|h[Scorching Blast]|h|r splits among whoever is nearby (raid stacked); with the |cff71d5ff|Hspell:-2938|h[Blue Vial]|h|r the |cff71d5ff|Hspell:-2939|h[Biting Chill]|h|r hits whoever is close (raid stacked) and the |cff71d5ff|Hspell:-2940|h[Flash Freeze]|h|r traps players; with the |cff71d5ff|Hspell:-2941|h[Green Vial]|h|r the |cff71d5ff|Hspell:-2942|h[Debilitating Slime]|h|r makes everything take more damage (use it: full DPS).",
	"* With every vial he frees |cff71d5ff|Hspell:-2931|h[Aberrations]|h|r: they are killed apart, because they buff each other with the |cff71d5ff|Hspell:-2933|h[Growth Catalyst]|h|r.",
	"* With the |cff71d5ff|Hspell:-2943|h[Dark Magic flask]|h|r (heroic) the |cff71d5ff|Hspell:-2946|h[Vile Swills]|h|r come out puddling with their |cff71d5ff|Hspell:-2947|h[Dark Sludge]|h|r and channeling the |cff71d5ff|Hspell:-2945|h[Engulfing Darkness]|h|r: interrupt it.",
	"* STAGE 2 (25%): |cff71d5ff|Hspell:-2949|h[Release All]|h|r (aberrations + the 2 |cff71d5ff|Hspell:-2953|h[Prime Subjects]|h|r, kill priority) while dodging the |cff71d5ff|Hspell:-2950|h[Magma Jets]|h|r, the |cff71d5ff|Hspell:-2951|h[Absolute Zero]|h|r detonates far away and the |cff71d5ff|Hspell:-2952|h[Acid Nova]|h|r is a growing dot: heals and final damage."
};

bos = { "Nefarian",
	"* Nefarian revives Onyxia (|cff71d5ff|Hspell:-3277|h[Rise, Sister!]|h|r): if they stay less than 50m apart the |cff71d5ff|Hspell:-3278|h[Children of Deathwing]|h|r doubles their attack speed, so the two dragons are tanked at separate ends.",
	"* STAGE 1: kill Onyxia first; her |cff71d5ff|Hspell:-3284|h[Electric Energy]|h|r builds over time and with every |cff71d5ff|Hspell:-3276|h[Electrocute]|h|r from Nefarian, and a full |cff71d5ff|Hspell:-3288|h[Electrical Overload]|h|r blasts the room; Nefarian summons |cff71d5ff|Hspell:-3280|h[Bone Warriors]|h|r before landing and applies |cff71d5ff|Hspell:-3295|h[Dominion]|h|r on a player (heal their |cff71d5ff|Hspell:-3297|h[Stolen Power]|h|r, do not damage them).",
	"* STAGE 2 (Onyxia dead): the floor fills with lava and 3 platforms remain, one |cff71d5ff|Hspell:-3299|h[Chromatic Prototype]|h|r each: kill the 3 fast because their |cff71d5ff|Hspell:-3300|h[Blast Novas]|h|r damage everyone, dodging the |cff71d5ff|Hspell:-3301|h[Shadowflame Barrage]|h|r and the |cff71d5ff|Hspell:-3302|h[Explosive Cinders]|h|r while he flies.",
	"* STAGE 3: Nefarian lands and full DPS with lust/heroism, do not drag it out (his |cff71d5ff|Hspell:-3305|h[Shadowflame Spark]|h|r grows and the |cff71d5ff|Hspell:-3306|h[Bone Warriors]|h|r revive with |cff71d5ff|Hspell:-3307|h[Empowered Strikes]|h|r)."
};
pack["41376"] = bos; pack["41270"] = bos;

-- -------------------------------------- --
-- Bastion of Twilight : Zone 5094/5334 --
-- -------------------------------------- --

pack["44600"] = { "Halfus Wyrmbreaker",
	"* Priorities: Time Warden, Storm Rider, Abyssal Successor, Orphaned Emerald Whelp, Slate Dragon.",
	"* Ideally the MT tanks Halfus and one of the dragons, while the OT tanks another.",
	"* Kill the dragons on top of the boss to take advantage of all the damage.",
	"* If we have the Slate Dragon we must swap the boss every 4 ticks of |cff71d5ff|Hspell:39171|h[Malevolent Strikes]|h|r."
};

pack["45992"] = { "Valiona",
	"* Theralion will cast |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r, so stay spread out until Valiona's first attack.",
	"* When a player receives |cff71d5ff|Hspell:92878|h[Blackout]|h|r they and the whole party (except the tank) stand at the boss's tail; once everyone is there it gets dispelled to spread the damage.",
	"* When she casts |cff71d5ff|Hspell:92873|h[Devouring Flames]|h|r everyone stands behind the boss to avoid the damage.",
	"* When he casts |cff71d5ff|Hspell:93063|h[Dazzling Destruction]|h|r circles will appear under 3 players that you must leave;",
	"  5 seconds later a missile will pull those in the Twilight Realm, which you leave by going to the pink portal without touching the pink balls on the floor."
};

pack["45993"] = { "Theralion",
	"* Valiona will use |cff71d5ff|Hspell:92861|h[Twilight Meteorite]|h|r while flying, which works like Blackout.",
	"  She will mark the affected player and after 3 seconds trigger 150K damage spread among nearby players. 5 is enough.",
	"* |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r will place a purple area under a player that we avoid.",
	"* The player who receives the |cff71d5ff|Hspell:95641|h[Engulfing Magic]|h|r buff separates from the other players so they don't damage them.",
	"* |cff71d5ff|Hspell:86059|h[Deep Breath]|h|r covers a third of the room with fire; whoever steps on it enters the Twilight Realm.",
	"  You leave the Twilight Realm through the pink portal without stepping on the pink balls on the floor."
};

-- Twilight Council

pack["43686"] = { "Ignacious",
	"STAGE 1",
	"* Tanked at one end of the room with 1 tank and the melee DPS behind the boss.",
	"* Players who receive |cff71d5ff|Hspell:82660|h[Burning Blood]|h|r will stand near Feludius's ranged DPS to increase the damage they do while the buff lasts.",
	"* When he does |cff71d5ff|Hspell:92521|h[Inferno Leap]|h|r on a player, on landing he leaves a groove on the floor that we step on when we have the |cff71d5ff|Hspell:82762|h[Drench]|h|r effect from the |cff71d5ff|Hspell:82700|h[Water Bomb]|h|r.",
};

pack["43687"] = { "Feludius",
	"STAGE 1",
	"* Tanked at the opposite end from Ignacious, with 1 tank. Ranged DPS stand away from the boss and spread out from each other.",
	"* Players who receive |cff71d5ff|Hspell:82667|h[Heart of Ice]|h|r will stand near Ignacious's melee DPS to increase the damage they do while the buff lasts.",
	"* |cff71d5ff|Hspell:92509|h[Hydro Lance]|h|r must be interrupted or it will kill one of the players.",
};

pack["43688"] = { "Arion",
	"STAGE 2",
	"* |cff71d5ff|Hspell:-3131|h[Lightning Rod]|h|r marks several players: spread out so the |cff71d5ff|Hspell:-3132|h[Chain Lightning]|h|r does not bounce across the raid.",
	"* |cff71d5ff|Hspell:-3133|h[Disperse]|h|r teleports him: the |cff71d5ff|Hspell:-3134|h[Lightning Explosion]|h|r lands on his target when he reappears and kills anyone nearby (only the marked player, everyone else out).",
	"* Before his |cff71d5ff|Hspell:-3130|h[Thunder Shock]|h|r, touch one of the |cff71d5ff|Hspell:-3129|h[Summon Cyclone]|h|r cyclones: the |cff71d5ff|Hspell:-3152|h[Swirling Winds]|h|r (levitation) avoids the electric damage.",
	"* At 25% he fuses with Terrastra into the Elementium Monstrosity: burn it down fast (see its entry).",
};

pack["43689"] = { "Terrastra",
	"STAGE 2",
	"* |cff71d5ff|Hspell:-3138|h[Eruption]|h|r: rocks come up around her, the tank moves her and nobody stands on them.",
	"* Levitated players (from the cyclones) must touch a |cff71d5ff|Hspell:-3136|h[Gravity Well]|h|r to land before the |cff71d5ff|Hspell:-3139|h[Quake]|h|r: those in the air take the worst hit.",
	"* |cff71d5ff|Hspell:-3137|h[Harden Skin]|h|r buffs her and absorbs damage: the DPS burn it off.",
};

pack["43735"] = { "Elementium Monstrosity",
	"STAGE 3",
	"* Hero, lust, etc... must be saved for this phase, which is a DPS race.",
	"* |cff71d5ff|Hspell:-3146|h[Electric Instability]|h|r: growing nature damage every 1s, spread the raid a bit and melee do not stack on the tank.",
	"* |cff71d5ff|Hspell:-3147|h[Gravity Crush]|h|r traps a player in a bubble that lifts them: the rest break the bubble out.",
	"* |cff71d5ff|Hspell:-3148|h[Lava Seed]|h|r seeds the ground with bursting seeds: dodge them, do not step on them.",
	"* |cff71d5ff|Hspell:-3149|h[Cryogenic Aura]|h|r freezes the floor (hard to move) and reduces the damage she takes by 25%.",
};

pack["43324"] = { "Cho'gall",
	"* The |cff71d5ff|Hspell:-3165|h[Corrupting Blood]|h|r fills the Corruption bar with every ability: at 25% it speeds up, at 50% continuous daze, at 75% a tentacular malformation and at 100% you lose control of your character — keeping it low takes turns, that is the key to the fight.",
	"* The |cff71d5ff|Hspell:-3161|h[Twilight Zealot]|h|r come out of the side portals: DPS/CC and kill them fast, their |cff71d5ff|Hspell:-3162|h[Depravity]|h|r is area damage.",
	"* The mace alternates |cff71d5ff|Hspell:-3156|h[Order of the Flame]|h|r and |cff71d5ff|Hspell:-3158|h[Order of Shadow]|h|r: with flame, the tank keeps the boss away from the raid because of the |cff71d5ff|Hspell:-3211|h[Flare]|h|r; with shadow, spread out a little.",
	"* The |cff71d5ff|Hspell:-3155|h[Conversion]|h|r enslaves players: break the worship out with stuns/interrupts (every cheer buffs Cho'gall with |cff71d5ff|Hspell:-3209|h[Perverted Devotion]|h|r).",
	"* Cho'gall's |cff71d5ff|Hspell:-3160|h[Summonings]|h|r leave corpses from which |cff71d5ff|Hspell:-3216|h[Old God Blood]|h|r is born — kill them away from the raid's path.",
	"* STAGE 2 at 25%: the |cff71d5ff|Hspell:-3218|h[Old God Corruption]|h|r fills the room with tentacles — full DPS with Hero/lust, watch the |cff71d5ff|Hspell:-3220|h[Darkened Creations]|h|r: their |cff71d5ff|Hspell:-3221|h[Debilitating Beam]|h|r cuts healing by 75%, the marked player separates.",
};

pack["45213"] = { "Sinestra",
	"* 25 heroic only. STAGE 1 (until 30%): she flies and has to be burned from below; the |cff71d5ff|Hspell:-3229|h[Twilight Slicers]|h|r orbs chase a player from the air: the marked one runs far away and, when an orb dies, nobody stands in front of it (the |cff71d5ff|Hspell:-3230|h[Twilight Blast]|h|r).",
	"* The |cff71d5ff|Hspell:-3227|h[Wrack]|h|r lands on a player with growing damage and will JUMP to another nearby player when its time runs out: the marked one separates from the raid and the healers carry it to the limit.",
	"* The |cff71d5ff|Hspell:-3231|h[Twilight Whelps]|h|r drop with their |cff71d5ff|Hspell:-3232|h[Twilight Spit]|h|r on a player: one group kites them to the back and kills them fast, without stepping on the |cff71d5ff|Hspell:-3233|h[Twilight Essence]|h|r pools.",
	"* STAGE 2 (at 30%): Calen starts his duel and the |cff71d5ff|Hspell:-3238|h[Pulsing Twilight Eggs]|h|r are exposed after each |cff71d5ff|Hspell:-3308|h[Twilight Carapace]|h|r full damage on the eggs in every window; the |cff71d5ff|Hspell:-3239|h[Twilight Spitecallers]|h|r arrive and their |cff71d5ff|Hspell:-3240|h[Unleash Essence]|h|r is interrupted (the |cff71d5ff|Hspell:-3241|h[Indomitable]|h|r punishes long CC), and the |cff71d5ff|Hspell:-3242|h[Twilight Drakes]|h|r sweep in with their |cff71d5ff|Hspell:-3243|h[Twilight Breath]|h|r.",
	"* STAGE 3 (eggs dead): the |cff71d5ff|Hspell:-3246|h[Essence of the Red]|h|r buffs the raid and full DPS to finish."
};

-- ------------------------------------------------- --
-- Throne of the Four Winds : Zone 5638 --
-- ------------------------------------------------- --

pack["45870"] = { "Anshal",
	"GENERAL NOTES",
	"* This encounter consists of 3 elemental lords, Anshal, Nezir and Rohash, with an 8 minute enrage",
	"All three must be killed with a maximum difference of one minute or they resurrect.",
	"* The bosses have an energy bar that, when it fills up (at 90), makes them use their special abilities; platform movements must be made when their bar reaches 80 at the latest",
	"Strategy:",
	"* 4 groups: 1st: 1 tank, 1 healer and 1 dps [Anshal]; 2nd: 1 tank and 1 healer (preferably holy paladin, because they can remove their own debuffs); 3rd: 1 dps and 1 healer [Rohash]; 4th: mobile group with 3 dps",
	"* Optimize the dps on all three so they go down similarly",

	"* Anshal platform: periodically casts |cff71d5ff|Hspell:86205|h[Soothing Breeze]|h|r, healing Anshal and his allies (creepers) while silencing the raid.",
	"* He casts |cff71d5ff|Hspell:85422|h[Nurture]|h|r which summons creepers that in turn use |cff71d5ff|Hspell:93121|h[Toxic Spores]|h|r",
	"* Special: |cff71d5ff|Hspell:84638|h[Zephyr]|h|r - make sure there are no creepers before the special ability",
};

pack["45872"] = { "Rohash",
	"Abilities:",
	"* |cff71d5ff|Hspell:86193|h[Wind Blast]|h|r, his most dangerous ability; whoever is in front of him when he uses it will be pushed back 200 meters.",
	"* |cff71d5ff|Hspell:86182|h[Slicing Gale]|h|r, ranged attack.",
	"* Special: |cff71d5ff|Hspell:86481|h[Hurricane]|h|r - the biggest damage is from the fall (about 70k), so everyone who can should use cat form, slow fall, etc."
};

pack["45871"] = { "Nezir",
	"Abilities:",
	"* |cff71d5ff|Hspell:86082|h[Permafrost]|h|r, which forces you to stay spread out.",
	"* |cff71d5ff|Hspell:93130|h[Ice Patch]|h|r, leave its area of effect IMMEDIATELY.",
	"* |cff71d5ff|Hspell:84645|h[Chilling Winds]|h|r, the most dangerous ability; it forces tanks/healers to swap platforms when they can't heal the damage (stacks) (Anshal-Nezir).",
	"* Special: |cff71d5ff|Hspell:84644|h[Hailstorm]|h|r",
};

pack["46753"] = { "Al'Akir",
	"* STAGE 1 (until 80%): the |cff71d5ff|Hspell:-3022|h[Wind Burst]|h|r and the |cff71d5ff|Hspell:-3023|h[Squall Line]|h|r hit with spread (separate), the |cff71d5ff|Hspell:-3024|h[Ice Storms]|h|r crawl the floor (dodge) and the |cff71d5ff|Hspell:-3025|h[Lightning Strike]|h|r punishes the marked one.",
	"* STAGE 2: the |cff71d5ff|Hspell:-3032|h[Acid Rain]|h|r keeps growing over time (full DPS to not drag it out) and the |cff71d5ff|Hspell:-3033|h[Stormlings]|h|r are left alive: if anyone kills one, its |cff71d5ff|Hspell:-3034|h[Feedback]|h|r buffs Al'Akir.",
	"* STAGE 3 (at 25%): the platform shatters and everyone flies with the |cff71d5ff|Hspell:-3037|h[Eye of the Storm]|h|r: full DPS; the |cff71d5ff|Hspell:-3039|h[Lightning Rod]|h|r marked one moves away and the |cff71d5ff|Hspell:-3040|h[Lightning Clouds]|h|r are dodged."
};

-- ------------------------------- --
-- Firelands : Zone 5043 --

pack["52498"] = { "Beth'tilac",
	"* STAGE 1: she is up on her web, the raid fights below, and the |cff71d5ff|Hspell:-2773|h[Cinderweb Drones]|h|r are killed before they fill up with fire (they eat the |cff71d5ff|Hspell:-2778|h[Cinderweb Broodlings]|h|r to heal: kill the broodlings first).",
	"* The tank taunts a |cff71d5ff|Hspell:-2770|h[Cinderweb Spinner]|h|r down, with the group stacked (its |cff71d5ff|Hspell:-2772|h[Igneous Web Spin]|h|r stuns the marked one for 25s): full DPS.",
	"* The team up top watches her |cff71d5ff|Hspell:-2765|h[Fire Energy]|h|r: when it depletes she casts |cff71d5ff|Hspell:-2769|h[Smoldering Devastation]|h|r that razes her level, so the top team must drop BEFORE (it happens 3 times and then she enters the |cff71d5ff|Hspell:-2782|h[STAGE 2]|h|r frenzy).",
	"* STAGE 2: she comes down and burns to the end; the tank eats the |cff71d5ff|Hspell:-2783|h[Widow's Kiss]|h|r (drains healing: heals to the max) and the |cff71d5ff|Hspell:-2784|h[Ember Flares]|h|r punish the close ones."
};

pack["52558"] = { "Lord Rhyolith",
	"* STAGE 1 (until 25%): he is not tanked, he is STEERED: the raid hits his left or right foot to turn him, and he must be steered away from the |cff71d5ff|Hspell:-2530|h[magma]|h|r and the big |cff71d5ff|Hspell:-2534|h[volcanoes]|h|r (the small |cff71d5ff|Hspell:-2535|h[craters]|h|r are extinguished by DPS).",
	"* His |cff71d5ff|Hspell:-2527|h[Obsidian Armor]|h|r piles layers that reduce the damage he takes: grind it down with damage; with every volcano |cff71d5ff|Hspell:-2531|h[fragments]|h|r and |cff71d5ff|Hspell:-2532|h[sparks]|h|r of Rhyolith spawn and gain |cff71d5ff|Hspell:-2533|h[Infernal Rage]|h|r, so they are killed fast.",
	"* His |cff71d5ff|Hspell:-2528|h[Concussive Stomp]|h|r hits everyone now and then: periodic heals.",
	"* STAGE 2 (at 25%): steering ends and the |cff71d5ff|Hspell:-2538|h[Immolation]|h|r damages everyone in a growing way: full DPS with lust/heroism, dodging the |cff71d5ff|Hspell:-2539|h[Unleashed Flame]|h|r."
};

pack["52530"] = { "Alysrazor",
	"* STAGE 1: she flies, the raid fights below: two players collect |cff71d5ff|Hspell:-2828|h[Molten Feathers]|h|r (three give |cff71d5ff|Hspell:-2829|h[Wings of Flame]|h|r to fly and help up top), the |cff71d5ff|Hspell:-2836|h[Voracious Hatchlings]|h|r are tanked apart (fed with the |cff71d5ff|Hspell:-2843|h[Plump Lava Worms]|h|r) and the two |cff71d5ff|Hspell:-2834|h[Blazing Talon Initiates]|h|r die fast (with the |cff71d5ff|Hspell:-3335|h[Blazing Shield]|h|r: full DPS).",
	"* The |cff71d5ff|Hspell:-2845|h[Herald of the Burning End]|h|r comes at the end of the stage: his |cff71d5ff|Hspell:-2846|h[Cataclysm]|h|r summons the |cff71d5ff|Hspell:-2847|h[Molten Meteor]|h|r (full DPS before it lands).",
	"* STAGE 2: she enters the |cff71d5ff|Hspell:-2849|h[Fiery Vortex]|h|r (immobilized): full DPS with lust/heroism; the fliers dodge the |cff71d5ff|Hspell:-2850|h[Fiery Tornadoes]|h|r and those below the |cff71d5ff|Hspell:-3332|h[Harsh Winds]|h|r.",
	"* STAGE 3 (as her power runs out): |cff71d5ff|Hspell:-2852|h[Burnout]|h|r with the |cff71d5ff|Hspell:-2853|h[Essence of the Green]|h|r (flight for everyone) and full DPS before she recovers; if the fight reaches STAGE 4 she is reborn at full power (|cff71d5ff|Hspell:-2858|h[Blazing Buffet]|h|r) and the cycle repeats: the fewer cycles the better."
};

pack["53691"] = { "Shannox",
	"* Two-tank job: one holds |cff71d5ff|Hspell:-2581|h[Riplimb]|h|r and the other |cff71d5ff|Hspell:-2583|h[Rageface]|h|r, far from Shannox, because killing the first dog grants him the |cff71d5ff|Hspell:-2580|h[Frenzy]|h|r.",
	"* Rageface dies first: his |cff71d5ff|Hspell:-2584|h[Face Rage]|h|r devours the marked one (full DPS to finish him before); then Riplimb, and Shannox last.",
	"* Shannox's |cff71d5ff|Hspell:-2577|h[Arcing Slash]|h|r leaves the |cff71d5ff|Hspell:-2578|h[Jagged Tear]|h|r (heavy bleed on the tank): the healer covers it; with the |cff71d5ff|Hspell:-2579|h[Hurl Spear]|h|r Riplimb runs to fetch it (the tanks use it to reposition).",
	"* His |cff71d5ff|Hspell:-2575|h[Immolation Traps]|h|r and |cff71d5ff|Hspell:-2576|h[Crystal Prison Traps]|h|r land near the dogs: whoever is close moves aside (got caught is fatal, above all on heroic), and the ground's |cff71d5ff|Hspell:-2928|h[Magma Ruptures]|h|r are dodged."
};

pack["53494"] = { "Baleroc, the Gatekeeper",
	"* The |cff71d5ff|Hspell:-2592|h[Shard of Torment]|h|r channels the |cff71d5ff|Hspell:-2593|h[Torment]|h|r on a player, who takes growing damage: move away from the shard when the damage bites; if it is not interrupted in time the |cff71d5ff|Hspell:-2595|h[Wave of Torment]|h|r comes out.",
	"* The healers split up: two or three stand by the shard collecting |cff71d5ff|Hspell:-2596|h[Vital Sparks]|h|r (each one strengthens their heals with the |cff71d5ff|Hspell:-2597|h[Vital Flame]|h|r) and the rest heal the Torment target.",
	"* With the |cff71d5ff|Hspell:-2599|h[Decimation Blade]|h|r his swings hit with shadow and with the |cff71d5ff|Hspell:-2600|h[Inferno Blade]|h|r with fire: the tanks swap while the |cff71d5ff|Hspell:-2590|h[Blaze of Glory]|h|r (his buff) stacks up.",
	"* Heroic: the |cff71d5ff|Hspell:-2601|h[Countdown]|h|r pairs players: the pairs stay close to each other and away from the rest when it blows."
};

pack["52571"] = { "Majordomo Staghelm",
	"* Every |cff71d5ff|Hspell:-2912|h[Shapeshift]|h|r rules: in |cff71d5ff|Hspell:-2913|h[cat form]|h|r he leaps |cff71d5ff|Hspell:-2914|h[Leaping Flames]|h|r after the target (leaving fire trails on the floor) and in |cff71d5ff|Hspell:-2918|h[scorpion form]|h|r the |cff71d5ff|Hspell:-2919|h[Flame Scythe]|h|r punishes whoever is hitting him (the melee eats it with heals).",
	"* The |cff71d5ff|Hspell:-2916|h[Adrenaline]|h|r builds with every repeated cast: the longer the fight drags the more it hurts, so full DPS.",
	"* In |cff71d5ff|Hspell:-2922|h[night elf form]|h|r (mid-fight) he grabs the close ones with the |cff71d5ff|Hspell:-2923|h[Fiery Cyclone]|h|r (spread), drops |cff71d5ff|Hspell:-2924|h[Searing Seeds]|h|r under the marked one (move far before they explode) and throws the chasing |cff71d5ff|Hspell:-2925|h[Burning Orbs]|h|r (dodge them away from the raid)."
};

pack["52409"] = { "Ragnaros",
	"* STAGE 1: the |cff71d5ff|Hspell:-2631|h[Lava Wave]|h|r born from each |cff71d5ff|Hspell:-2630|h[Sulfuras Smash]|h|r is dodged to a side, and the |cff71d5ff|Hspell:-2634|h[Magma Traps]|h|r are blown ONE AT A TIME with everyone at full HP (the |cff71d5ff|Hspell:-2635|h[Magma Trap Eruption]|h|r damages everyone).",
	"* In the INTERMISSION the |cff71d5ff|Hspell:-2637|h[Sons of Flame]|h|r chase the marked one, who runs far from the raid while they take full DPS; nobody crosses their path because of the final |cff71d5ff|Hspell:-2639|h[Supernova]|h|r.",
	"* STAGE 2: the |cff71d5ff|Hspell:-2643|h[Engulfing Flame]|h|r is the front cone (out), the |cff71d5ff|Hspell:-2644|h[World in Flames]|h|r burns whole sectors (nobody inside) and the |cff71d5ff|Hspell:-2645|h[Molten Seeds]|h|r blow up under the marked one (move far; the leftover |cff71d5ff|Hspell:-2647|h[Molten Elementals]|h|r get AoE'd down).",
	"* STAGE 3 (at 40%): the |cff71d5ff|Hspell:-2661|h[Living Meteor]|h|r chases a player (run far from the raid; whoever crosses it gives it |cff71d5ff|Hspell:-2663|h[Fuel]|h|r) and the |cff71d5ff|Hspell:-2658|h[Engulfing Flame]|h|r and the |cff71d5ff|Hspell:-2659|h[World in Flames]|h|r keep going.",
	"* Heroic (STAGE 4): with the allies (Cenarius, Hamuul and Malfurion) backing them up, full DPS; his |cff71d5ff|Hspell:-2680|h[Superheated]|h|r, the |cff71d5ff|Hspell:-2681|h[Empower Sulfuras]|h|r (|cff71d5ff|Hspell:-2682|h[Flames of Sulfuras]|h|r) and the |cff71d5ff|Hspell:-2683|h[Dreadflame]|h|r punish the room."
};

-- ============================================= --
-- 4.3 additions + remastered Throne --
-- ============================================= --

-- -------------------------------- --
-- End Time : Zone 938 --
-- -------------------------------- --

pack["54431"] = { "Echo of Baine",
	"* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r slams: tanks and healers beware.",
	"* The totems from |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r are a priority.",
};

pack["54445"] = { "Echo of Jaina",
	"* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: she teleports, mind her new position.",
};

pack["54432"] = { "Murozond",
	"* Dodge the |cff71d5ff|Hspell:-3676|h[Distortion Bomb]|h|r.",
	"* Final boss of the dungeon: keep your defensives for the end.",
};

pack["54123"] = { "Echo of Sylvanas",
	"* The |cff71d5ff|Hspell:-3951|h[Shriek of the Highborne]|h|r: heavy damage, heals ready.",
};

pack["54544"] = { "Echo of Tyrande",
	"* Mind the |cff71d5ff|Hspell:-4207|h[Dark Moonlight]|h|r.",
};

-- --------------------------------- --
-- Hour of Twilight : Zone 940 --
-- --------------------------------- --

pack["54590"] = { "Arcurion",
	"* |cff71d5ff|Hspell:102582|h[Chains of Frost]|h|r chains you; break free.",
	"* Free the player trapped in the |cff71d5ff|Hspell:103252|h[Icy Tomb]|h|r by breaking it.",
	"* |cff71d5ff|Hspell:104050|h[Torrent of Frost]|h|r: raid damage, heals.",
};

pack["54968"] = { "Asira Dawnslayer",
	"* The player marked by |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r loses healing: dispel it.",
	"* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: stunning smoke, step out.",
	"* Don't cross the |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r.",
};

pack["54938"] = { "Archbishop Benedictus",
	"* Two stages: the Light and the Shadow.",
	"* The player marked by |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r or |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r should call it out (SAY) and move away.",
	"* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r and |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r: out of the areas.",
};

-- --------------------------------- --
-- Well of Eternity : Zone 939 --
-- --------------------------------- --

bos = {
	"Queen Azshara",
	"* The Enchanted Magi are the priority before her.",
	"* |cff71d5ff|Hspell:-3969|h[Total Obedience]|h|r: long cast, interrupt it.",
};
pack["54853"] = bos; pack["54884"] = bos; pack["54882"] = bos; pack["54883"] = bos;

bos = {
	"Mannoroth and Varo'then",
	"* Mind what comes out of the |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r.",
	"* The tank holds Mannoroth; Varo'then dies quickly.",
};
pack["54969"] = bos; pack["55419"] = bos;

pack["55085"] = { "Peroth'arn",
	"* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: important debuff, heal it.",
	"* In the stealth phase do NOT move when he sends the eyes.",
	"* The player marked by |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r is vulnerable: full DPS.",
};

-- ------------------------------------------------ --
-- Throne of the Tides (remastered) : Zone 643 --
-- ------------------------------------------------ --

pack["40788"] = { "Mindbender Ghur'sha",
	"* Erunak phase: |cff71d5ff|Hspell:429051|h[Earthfury]|h|r and the |cff71d5ff|Hspell:429037|h[Stormflurry Totem]|h|r, one at a time.",
	"* |cff71d5ff|Hspell:429172|h[Terrifying Vision]|h|r has a long cast: interrupt it.",
	"* The |cff71d5ff|Hspell:429048|h[Flame Shock]|h|r gets dispelled.",
};

bos = {
	"Ozumat",
	"* The player marked by |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r should move away (SAY).",
	"* Watch out for the |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r.",
	"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r is a tank mechanic; Neptulon helps you with his flux.",
};
pack["44566"] = bos; pack["213770"] = bos;

-- --------------------------------------------- --
-- Events and holidays --
-- --------------------------------------------- --

pack["23870"] = { "Coren Direbrew",
	"* Tank: grab Coren and his minions fast so they don't hit cloth or light-armor DPS.",
	"* Adds: kill the minions he summons first to reduce group damage.",
	"* The beer jugs on the tables: throw or use them for temporary damage buffs or to mitigate the boss's debuffs.",
	"* Healing: tanks with strong self-healing (DKs, Warriors) can hold on their own, but a standard healer makes the encounter risk-free."
};

P.en = en;
