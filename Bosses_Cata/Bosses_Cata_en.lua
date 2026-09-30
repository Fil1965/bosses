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
	"* Ideally have one DPS kite the shadows (using slows); they have no aggro and hit whatever they hit last.",
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
	"* When |cff71d5ff|Hspell:45336|h[Electrical Overload]|h|r lifts a player all under to avoid damage."
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
	"* He will randomly turn into 2 of the previous forms:",
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

pack["47120"] = { "Argaloth (10)",
	"* On 10 you set up 2 groups, each with 1 tank, 1 healer and 3 DPS.",
	"* Each group stands on one side of Argaloth and stays stacked on the tank to spread the damage.",
	"* After each |cff71d5ff|Hspell:88942|h[Meteor Slash]|h|r the tanks swap the boss.",
	"* During the |cff71d5ff|Hspell:88972|h[Fel Firestorm]|h|r phase everyone moves to avoid the damage without stepping on fire.",
	"* At the end of the storm each group returns to its position and the above repeats."
};

-- -------------------------------------- --
-- Bastion of Twilight : Zone 5094/5334 --
-- -------------------------------------- --

pack["44600"] = { "Halfus Wyrmbreaker (10)",
	"* Priorities: Time Warden, Storm Rider, Abyssal Successor, Orphaned Emerald Whelp, Slate Dragon.",
	"* Ideally the MT tanks Halfus and one of the dragons, while the OT tanks another.",
	"* Kill the dragons on top of the boss to take advantage of all the damage.",
	"* If we have the Slate Dragon we must swap the boss every 4 ticks of |cff71d5ff|Hspell:39171|h[Malevolent Strikes]|h|r."
};

pack["45992"] = { "Valiona (10)",
	"* Theralion will cast |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r, so stay spread out until Valiona's first attack.",
	"* When a player receives |cff71d5ff|Hspell:92878|h[Blackout]|h|r they and the whole party (except the tank) stand at the boss's tail; once everyone is there it gets dispelled to spread the damage.",
	"* When he casts |cff71d5ff|Hspell:92873|h[Devouring Flames]|h|r everyone stands behind the boss to avoid the damage.",
	"* When he casts |cff71d5ff|Hspell:93063|h[Dazzling Destruction]|h|r circles will appear under 3 players that you must leave;",
	"  5 seconds later a missile will pull those in the Twilight Realm, which you leave by going to the pink portal without touching the pink balls on the floor."
};

pack["45993"] = { "Theralion (10)",
	"* Valiona will use |cff71d5ff|Hspell:92861|h[Twilight Meteorite]|h|r while flying, which works like Blackout.",
	"  She will mark the affected player and after 3 seconds trigger 150K damage spread among nearby players. 5 is enough.",
	"* |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r will place a purple area under a player that we avoid.",
	"* The player who receives the |cff71d5ff|Hspell:95641|h[Engulfing Magic]|h|r buff separates from the other players so they don't damage them.",
	"* |cff71d5ff|Hspell:86059|h[Deep Breath]|h|r covers a third of the room with fire; whoever steps on it enters the Twilight Realm.",
	"  You leave the Twilight Realm through the pink portal without stepping on the pink balls on the floor."
};

-- Twilight Council

pack["43686"] = { "Ignacious <Ascendant Council> (10)",
	"STAGE 1",
	"* Tanked at one end of the room with 1 tank and the melee DPS behind the boss.",
	"* Players who receive |cff71d5ff|Hspell:82660|h[Burning Blood]|h|r will stand near Feludius's ranged DPS to increase the damage they do while the buff lasts.",
	"* When he does |cff71d5ff|Hspell:92521|h[Inferno Leap]|h|r on a player, on landing he leaves a groove on the floor that we step on when we have the |cff71d5ff|Hspell:82762|h[Drench]|h|r effect from the |cff71d5ff|Hspell:82700|h[Water Bomb]|h|r.",
};

pack["43687"] = { "Feludius <Ascendant Council> (10)",
	"STAGE 1",
	"* Tanked at the opposite end from Ignacious, with 1 tank. Ranged DPS stand away from the boss and spread out from each other.",
	"* Players who receive |cff71d5ff|Hspell:82667|h[Heart of Ice]|h|r will stand near Ignacious's melee DPS to increase the damage they do while the buff lasts.",
	"* |cff71d5ff|Hspell:92509|h[Hydro Lance]|h|r must be interrupted or it will kill one of the players.",
};

pack["43688"] = { "Arion <Ascendant Council> (10)",
	"STAGE 2",
};

pack["43689"] = { "Terrastra <Ascendant Council> (10)",
	"STAGE 2",
};

pack["43735"] = { "Elementium Monstrosity (10)",
	"STAGE 3",
	"* Hero, lust, etc... must be saved for this phase, which is a DPS race",
};

pack["43324"] = { "Cho'gall (10)",
};

pack["45213"] = { "Sinestra (10)",
};

-- ------------------------------------------------- --
-- Throne of the Four Winds : Zone 5638 --
-- ------------------------------------------------- --

pack["45870"] = { "Anshal <Lord of the West Wind (Left)> (10)",
	"GENERAL NOTES",
	"This encounter consists of 3 elemental lords, Anshal, Nezir and Rohash, with an 8 minute enrage",
	"All three must be killed with a maximum difference of one minute or they resurrect",
	"The bosses have an energy bar that, when it fills up (at 90), makes them use their special abilities; platform movements must be made when their bar reaches 80 at the latest",
	"Strategy:",
	"4 Groups: 1st: 1 Tank, 1 Healer, 1 Dps[Anshal]; 2nd: 1 Tank and 1 Healer (preferably holy paladin because they can remove their own debuffs); 3rd: 1 Dps and 1 Healer [Rohash]; 4th: Mobile group with 3 Dps",
	"Optimize the dps on all three so they go down similarly",
	" ",
	"Anshal platform: periodically casts |cff71d5ff|Hspell:86205|h[Soothing Breeze]|h|r, healing Anshal and his allies (creepers) while silencing the raid",
	"He casts |cff71d5ff|Hspell:85422|h[Nurture]|h|r which summons creepers that in turn use |cff71d5ff|Hspell:93121|h[Toxic Spores]|h|r",
	"Special: |cff71d5ff|Hspell:84638|h[Zephyr]|h|r - make sure there are no creepers before the special ability",
};

pack["45872"] = { "Rohash <Lord of the East Wind (Right)> (10)",
	"Abilities:",
	"|cff71d5ff|Hspell:86193|h[Wind Blast]|h|r, his most dangerous ability; whoever is in front of him when he uses it will be pushed back 200 meters",
	"|cff71d5ff|Hspell:86182|h[Slicing Gale]|h|r, ranged attack",
	"Special: |cff71d5ff|Hspell:86481|h[Hurricane]|h|r - the biggest damage is from the fall (about 70Ks), so everyone who can should use cat form, slow fall, etc"
};

pack["45871"] = { "Nezir <Lord of the North Wind (Back)> (10)",
	"Abilities:",
	"|cff71d5ff|Hspell:86082|h[Permafrost]|h|r, which forces you to stay spread out",
	"|cff71d5ff|Hspell:93130|h[Ice Patch]|h|r, leave its area of effect IMMEDIATELY",
	"|cff71d5ff|Hspell:84645|h[Chilling Winds]|h|r, the most dangerous ability; it forces tanks/healers to swap platforms when they can't heal the damage (stacks) (Anshal-Nezir)",
	"Special: |cff71d5ff|Hspell:84644|h[Hailstorm]|h|r",
};

-- ============================================= --
-- 4.3 additions + remastered Throne --
-- ============================================= --

-- -------------------------------- --
-- End Time : Zone 938 --
-- -------------------------------- --

pack["54431"] = { "Echo of Baine (End Time)",
	"* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r slams: tanks and healers beware.",
	"* The totems from |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r are a priority.",
};

pack["54445"] = { "Echo of Jaina (End Time)",
	"* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: she teleports, mind her new position.",
};

pack["54432"] = { "Murozond (End Time)",
	"* Dodge the |cff71d5ff|Hspell:-3676|h[Distortion Bomb]|h|r.",
	"* Final boss of the dungeon: keep your defensives for the end.",
};

pack["54123"] = { "Echo of Sylvanas (End Time)",
	"* The |cff71d5ff|Hspell:-3951|h[Shriek of the Highborne]|h|r: heavy damage, heals ready.",
};

pack["54544"] = { "Echo of Tyrande (End Time)",
	"* Mind the |cff71d5ff|Hspell:-4207|h[Dark Moonlight]|h|r.",
};

-- --------------------------------- --
-- Hour of Twilight : Zone 940 --
-- --------------------------------- --

pack["54590"] = { "Arcurion (Hour of Twilight)",
	"* |cff71d5ff|Hspell:102582|h[Chains of Frost]|h|r chains you; break free.",
	"* Free the player trapped in the |cff71d5ff|Hspell:103252|h[Icy Tomb]|h|r by breaking it.",
	"* |cff71d5ff|Hspell:104050|h[Torrent of Frost]|h|r: raid damage, heals.",
};

pack["54968"] = { "Asira Dawnslayer (Hour of Twilight)",
	"* The player marked by |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r loses healing: dispel it.",
	"* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: stunning smoke, step out.",
	"* Don't cross the |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r.",
};

pack["54938"] = { "Archbishop Benedictus (Hour of Twilight)",
	"* Two stages: the Light and the Shadow.",
	"* The player marked by |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r or |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r should call it out (SAY) and move away.",
	"* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r and |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r: out of the areas.",
};

-- --------------------------------- --
-- Well of Eternity : Zone 939 --
-- --------------------------------- --

bos = {
	"Queen Azshara (Well of Eternity)",
	"* The Enchanted Magi are the priority before her.",
	"* |cff71d5ff|Hspell:-3969|h[Total Obedience]|h|r: long cast, interrupt it.",
};
pack["54853"] = bos; pack["54884"] = bos; pack["54882"] = bos; pack["54883"] = bos;

bos = {
	"Mannoroth and Varo'then (Well of Eternity)",
	"* Mind what comes out of the |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r.",
	"* The tank holds Mannoroth; Varo'then dies quickly.",
};
pack["54969"] = bos; pack["55419"] = bos;

pack["55085"] = { "Peroth'arn (Well of Eternity)",
	"* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: important debuff, heal it.",
	"* In the stealth phase do NOT move when he sends the eyes.",
	"* The player marked by |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r is vulnerable: full DPS.",
};

-- ------------------------------------------------ --
-- Throne of the Tides (remastered) : Zone 643 --
-- ------------------------------------------------ --

pack["40788"] = { "Mindbender Ghur'sha (Throne of the Tides)",
	"* Erunak phase: |cff71d5ff|Hspell:429051|h[Earthfury]|h|r and the |cff71d5ff|Hspell:429037|h[Stormflurry Totem]|h|r, one at a time.",
	"* |cff71d5ff|Hspell:429172|h[Terrifying Vision]|h|r has a long cast: interrupt it.",
	"* The |cff71d5ff|Hspell:429048|h[Flame Shock]|h|r gets dispelled.",
};

bos = {
	"Ozumat (Throne of the Tides)",
	"* The player marked by |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r should move away (SAY).",
	"* Watch out for the |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r.",
	"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r is a tank mechanic; Neptulon helps you with his flux.",
};
pack["44566"] = bos; pack["213770"] = bos;

-- --------------------------------------------- --
-- Events and holidays --
-- --------------------------------------------- --

pack["23870"] = { "Coren Direbrew (Brewfest)",
	"* Tank: grab Coren and his minions fast so they don't hit cloth or light-armor DPS.",
	"* Adds: kill the minions he summons first to reduce group damage.",
	"* The beer jugs on the tables: throw or use them for temporary damage buffs or to mitigate the boss's debuffs.",
	"* Healing: tanks with strong self-healing (DKs, Warriors) can hold on their own, but a standard healer makes the encounter risk-free."
};

P.en = en;
