--[[
	Bosses_Forever_en.lua
	English data of the WoW Forever pack (data only; it is
	registered by Bosses_Forever.lua, which is loaded later in the .toc).

	BASE EN (2026-10-22): the 24 bosses of DBM-Party-Forever with their
	OFFICIAL client names (element 1) and their zone. The NPC ids are still
	unknown (the DBM modules have SetCreatureID commented out), so the keys
	below are PROVISIONAL (900001+) and do not collide with any real
	creature: in game nobody is explained until the real ids are captured
	in-game (/bosses DEBUG on + /bosses log prints "id(boss:Name)") and
	substituted here. The tactics go in this file (EN) and the
	editor translates them into the other languages.

	Provisional key -> encounterID (DBM):
		900001-900009 -> 3298, 3299, 3300, 3301, 3302, 3303, 3310, 3311, 3312
		900010-900013 -> 3480, 3481, 3482, 3644
		900014-900020 -> 3353, 3354, 3355, 3357, 3408, 3411, 3412
		900021-900024 -> 3493, 3494, 3495, 3496

	In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local en = {};
local pack = en;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------- --
-- City of Dalaran : Zona 2959 --
-- --------------------------- --

pack["900001"] = { "Arcane Anomaly",
	"* Focal Blast is a channelled arcane beam that sweeps the area: follow its path and step out of the line instead of standing still.",
	"* His Arcane Bolt goes straight for the tank: keep him under control and do not let the group stack up along the beam.",
	"* Clear the minor enemies around the platform before the pull: fighting with them up turns the encounter into an add clear."
};

pack["900002"] = { "Fel Ancient",
	"* Entangle roots a player and ticks damage on him: break the roots fast, the damage keeps going while the player is stuck.",
	"* Fel Timbers leaves poison vapour zones: walk out of the green immediately, do not wait for the effect to end.",
	"* Keep him away from the vapours: roots plus poison is the real danger here."
};

pack["900003"] = { "Mana Devourer",
	"* Debilitate drains the mana of the players near him: spread out and watch your mana, the fight can drain you dry.",
	"* Drain Vitality hits the tank and leaves arcane damage over time: the tank needs constant attention.",
	"* The beta guide says he is immune to arcane damage: use another type of damage.",
	"* Clear the surroundings before the pull and finish the fight fast."
};

-- La guía de beta identifica este encuentro como «Arcanic Enigma» (el cliente y el DBM dicen «Mana Elemental»): comprobar en juego si es el mismo jefe.
pack["900004"] = { "Mana Elemental",
	"* Manamorph turns one of your players into something else: dispel it as soon as you can.",
	"* Silence stops the casters: the healer keeps his distance so he is not silenced in the middle of a heal.",
	"* Kill the two Mana Phantoms first, then the small mana elementals, and only then the boss.",
	"* Interrupt the Mana Burn of the adds whenever you can.",
	"* Pick up the boss and the two phantoms together, facing them away from the group."
};

pack["900005"] = { "Unstable Sentinel",
	"* Malfunction charges up and then pulses arcane damage to everyone close: melee steps out during the preparation and comes back when it ends.",
	"* Ranged players can stay at max range, but do not let the whole group stand on the boss.",
	"* Kill the Angry Tomes around first: they add up while he is charging."
};

pack["900006"] = { "Shade of the Archmage",
	"* Keep him inside his room: if he leaves it the encounter can reset.",
	"* Arcane Explosion hits everything near him: the healer stays at range and the tank watches his health.",
	"* Move out of the path of the Bounding Mana orb.",
	"* When he runs out of mana, get ready for Mass Polymorph: the ranged players can use a wall to block it if the position allows it.",
	"* Evocation is the charge-up of the sheep: interrupt it if you can."
};

-- Encuentro OPCIONAL y secreto: solo aparece si se cumple su condición de invocación (no está en todas las rutas).
pack["900007"] = { "Lyn the Ignored",
	"* He summons skeletons: hold them in place and kill them fast before they pile up.",
	"* Shadow Bolt Volley is group damage: keep the group spread out and watch the health bars.",
	"* Curse of Thorns lands on the tank: remove the curse if your class can.",
	"* Keep Lyn away from the patrols while you deal with the skeletons."
};

pack["900008"] = { "Atrexis the Grave Knight",
	"* Pick up each skeleton as it spawns: loose skeletons make the fight messy.",
	"* Disarm takes the tank weapons away: watch his health right after, the tank is defenceless.",
	"* Unholy Frenzy raises his attack speed: use a personal defensive during it and keep the tank topped up.",
	"* Wait until the tank has threat before using area damage on the skeletons."
};

-- SIN MECÁNICAS DOCUMENTADAS: la beta no llegó a probar este encuentro; no hay base para escribir una táctica (queda pendiente de captura in-game).
pack["900009"] = { "Mana Wraith",
	"* The beta sessions never tested this encounter: there are no documented abilities, so watch what it does in game."
};


-- --------------------------- --
-- Excavation Site : Zona 2998 --
-- --------------------------- --

pack["900010"] = { "Saltspine",
	"* Tendon Rip slows the target down to a crawl: watch the movement speed of the tank and of the ranged players.",
	"* Dust Storm hits everyone close to him and lowers their chance to hit: the healer stays more than 10 meters away.",
	"* Kill the crocodiles around first, above all the ones coming out of the water: they are more dangerous than the boss mechanics.",
	"* Fight in clear ground and do not drag him around needlessly."
};

pack["900011"] = { "Shadetooth",
	"* Rend ticks damage on the target: the tank needs continuous healing.",
	"* Terrifying Roar fears: interrupt it or use a fear immunity, and never fight next to the tall grass, because fleeing pulls more raptors in.",
	"* Enrage comes around 30% health and raises his attack speed and damage: keep a defensive ready for it.",
	"* Control the two Thicket Hunters that come with him, or kill one of them fast."
};

pack["900012"] = { "Relic Guardian",
	"* Somebody has to light the Archival Panel to start the fight: recover health and mana before doing it.",
	"* Thunderclap hits everyone close and slows their attack and movement speed: the ranged players stay out of 10 meters.",
	"* He knocks the tank down and stuns him for five seconds: use the nearby structures to limit how far he throws him and pick the threat up again the moment he is free.",
	"* Prepare the heals for the tank before the knock: he takes a lot of damage while he is stunned."
};

-- TÁCTICA PENDIENTE DE VERIFICAR: la guía de beta no publica sus habilidades; solo constan su ubicación (campamento de los Faucedraco) y que es un elemental de pantano.
pack["900013"] = { "Highland Horror",
	"* A swamp elemental that spawns near the Faucedraco camp, in the excavation site.",
	"* No mechanic of his is published: there is nothing documented to prepare for, so clear the area around and watch what he does in game."
};


-- ------------------------------ --
-- Ruins of Lordaeron : Zona 2999 --
-- ------------------------------ --

pack["900014"] = { "Witherfang",
	"* Leech Poison drains the health of the target over time and gives it to him: the tank loses health the whole fight.",
	"* Remove the poison if your class can; otherwise keep constant heals on the tank.",
	"* Two small spiders come with him: agree before the pull whether you kill them first or focus the boss.",
	"* Pick up the spiders too and clear the spider patrols on the way in."
};

pack["900015"] = { "Rath'mael",
	"* Flamestrike marks an area: when the cast starts, step out of it and reposition in clear ground.",
	"* Interrupt or stun the Flamestrike if you can; if not, leave the marked ground.",
	"* Fire Shield burns everything around him: the tank and the melee take the most of it.",
	"* He stands in the Lordaeron graveyard: clear the nearby enemies before the pull."
};

-- DISCREPANCIA DE NOMBRE: el cliente y el DBM dicen «The Butcher»; la guía de beta llama a este combate «The Baron». Comprobar el nombre en juego.
pack["900016"] = { "The Butcher",
	"* Knockout hits the tank hard, knocks it down and stuns it: keep the tank health full before it and pick the threat up the moment the stun ends.",
	"* Fight with the back of the tank to a wall, so the knock does not send it into the pack.",
	"* Trample hits everyone near him: do not let him walk into other patrols.",
	"* With a second tank, use it to hold the boss while the main one is stunned."
};

pack["900017"] = { "The Abandoned",
	"* Clear the three opening waves: the event gives no time to drink between them, and a stuck enemy stops the event from continuing.",
	"* Frost Nova damages and roots everyone close: the healer stays at range and the melee steps out of it.",
	"* Life Drain steals health: interrupt or stun it as soon as the boss shows up.",
	"* His melee hits apply Chilled: the tank swings slower, so keep the damage on him high."
};

-- Enemigo RARO: puede aparecer en el lado occidental de las ruinas (aparición no confirmada) y es amistoso con la Alianza (solo los grupos de la Horda pueden pelearlo).
pack["900018"] = { "Lordaeron Captain",
	"* A rare enemy that shows up on the western side of the ruins: with an Alliance group he is friendly and cannot be fought.",
	"* Pull him into a clear area and kill the other creatures around before you attack."
};

pack["900019"] = { "Viktor the Vile",
	"* Leech Poison drains the health of the target over time and gives it to him: the tank needs sustained healing.",
	"* Clear the patrols near the burned house and recover your mana before you light the fire.",
	"* The event throws several waves in a row with no rest: pick them up and keep him away from other enemies.",
	"* Some beta sessions ended the event without Viktor appearing: if that happens, there is simply no fight to do."
};

pack["900020"] = { "Bjork",
	"* Anti-Magic Shield makes him immune to magic for a while: the casters stop attacking, the melee keep hitting.",
	"* Mighty Blow damages and knocks the target back: keep the back of the tank to a wall and watch his health after every knock.",
	"* Clear the area before the pull so no necrophile patrol joins the fight."
};


-- -------------------------- --
-- Hall of Thanes : Zona 3065 --
-- -------------------------- --

pack["900021"] = { "Faldrim Anvilmar",
	"* Pull him when his patrol is separated from the packs around: with the patrol still up, the fight turns into an add clear.",
	"* Anvilmar's Curse slows a player's attack and casting speed: dispel it if someone can remove curses.",
	"* He hits the tank hard: watch the tank's health, not the group's.",
};

pack["900022"] = { "Plunder",
	"* Take the golem to a clear spot with a wall behind the group: he swings into the wall and the corners.",
	"* Knock Away throws the tank aside: fighting next to a patrol chains the knock into the other mobs.",
	"* Clear the room first: the adds have to die before the pull or the knock hits them too.",
};

-- PENDIENTE 2026-10-22: la guía del dueño llama a este jefe «Magmatus» y lo pone en 2º lugar (el cliente y el DBM dicen «Infurnus», 3º): confirmar in-game si es el mismo jefe o si son dos. Las líneas de abajo son las de la guía.
pack["900023"] = { "Infurnus",
	"* Keep the elemental away from the summoner: while the two are together the adds keep coming.",
	"* Kill the Dark Iron Summoner first, then focus the elemental.",
	"* Fire Nova hits everything around him: ranged and the healer stay at max range, melee steps out before it lands.",
	"* Combust burns over time: dispel it if possible.",
};

-- La guía no le atribuye más habilidades que las de sus dos gólems; sin ids de hechizo (no hay módulo DBM con spell ids).
pack["900024"] = { "Durgen Dirgehammer",
	"* He comes with two Lesser Stone Golems: control them or the room fills with adds.",
	"* Clear the room's mobs before the pull: he is not worth fighting with adds around.",
};

-- ----------------------------------- --
-- Ragefire Chasm : Zona 389 (classic) --
-- ----------------------------------- --

pack["11520"] = { "Taragaman the Hungerer",
	"* His |cff71d5ff|Hspell:11970|h[Fire Nova]|h|r hits everything around him: melee step away before it lands; ranged and healer stay at max range.",
	"* His |cff71d5ff|Hspell:18072|h[Uppercut]|h|r sends the tank flying: position him away from the lava edges so the knockback never sends anyone into the molten rock."
};

pack["11518"] = { "Jergosh the Invoker",
	"* He comes with two minions: crowd-control one, focus damage on the other, and once both are down the rest is a plain tank-and-spank.",
	"* His |cff71d5ff|Hspell:20800|h[Immolate]|h|r burns hard (dispel it fast) and his |cff71d5ff|Hspell:18267|h[Curse of Weakness]|h|r lowers damage and strength: remove it with a magic dispel."
};

pack["11519"] = { "Bazzalan",
	"* He sits at the top of the final ramp flanked by two zealots: you can single-pull one minion before opening on the boss.",
	"* Crowd-control the remaining minion and burn the boss down; mind his |cff71d5ff|Hspell:744|h[Deadly Poison]|h|r on the tank: it never wears off, it must be cleansed (druid cleanse or antidote)."
};

pack["11517"] = { "Oggleflint",
	"* Frontal area attack (cleave/gore): the tank faces him away from the group so the frontal damage never reaches melee or the healer.",
	"* Kill his adds first."
};

-- ----------------------------------- --
-- Wailing Caverns : Zona 43 (classic) --
-- ----------------------------------- --

pack["3671"] = { "Lady Anacondra",
	"* She shifts into druid form: interrupt her |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r (sleeps a player) and her |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r, or the fight drags on."
};

pack["3669"] = { "Lord Cobrahn",
	"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r.",
	"* His |cff71d5ff|Hspell:17330|h[Poison]|h|r comes off instantly with poison dispels."
};

pack["3670"] = { "Lord Pythas",
	"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r."
};

pack["3673"] = { "Lord Serpentis",
	"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r."
};

pack["3653"] = { "Kresh",
	"* A plain physical fight: no interrupts or dispels, solid tanking and burn."
};

pack["3674"] = { "Skum",
	"* He alternates a |cff71d5ff|Hspell:6254|h[Chained Bolt]|h|r that jumps between targets: do not clump the group and burn him fast."
};

pack["5775"] = { "Verdan the Everliving",
	"* Interrupt his |cff71d5ff|Hspell:8142|h[Vines]|h|r: it is the only detail of the fight, the rest is melee."
};

pack["3654"] = { "Mutanus the Devourer",
	"* |cff71d5ff|Hspell:7967|h[Naralex's Nightmare]|h|r is the heart of the fight: interrupt the chant every time it starts.",
	"* His |cff71d5ff|Hspell:7399|h[Terrify]|h|r (panic) is Magic: healers dispel the hit ones, and his |cff71d5ff|Hspell:8150|h[Thundercrack]|h|r hits the area — healers ready."
};

pack["5912"] = { "Deviate Faerie Dragon",
	"* Optional, half-hidden boss: you do not need to kill it to finish the dungeon.",
	"* Its |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r sleeps a player (dispellable Magic): if nobody kicks the cast, a healer dispels them."
};

-- ------------------------------------- --
-- Deadmines : Zona 36 (classic) --
-- ---------------------------------- --

pack["644"] = { "Rhahk'Zor", -- (classic era)
	"* His Slam (|cff71d5ff|Hspell:6304|h[Slam]|h|r) hits a random player: the tank swaps so the damage never stops."
};

bos = {
	"Sneed's Shredder",
	"* His Terrify (|cff71d5ff|Hspell:7399|h[Terrify]|h|r) fears a player: dispel the fear, the fight stops while it lasts.",
	"* His Disarm (|cff71d5ff|Hspell:6713|h[Disarm]|h|r) strips the weapon of the marked player: it is not a tank swap, it is a hit on the tank's damage.",
	"* His Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) throws Sneed out of the machine: Sneed runs loose, kill him and go back to the Shredder."
};
pack["642"] = bos;
pack["643"] = bos;

pack["1763"] = { "Gilnid", -- (classic era)
	"* His Molten Metal (|cff71d5ff|Hspell:5213|h[Molten Metal]|h|r) drops burning metal on a player: move out of the fire and let the tank pick him up again."
};

pack["646"] = { "Mr. Smite", -- (classic era)
	"* His Smite Stomp (|cff71d5ff|Hspell:6432|h[Smite Stomp]|h|r) is a 10 s countdown: when the buff falls, the ground stomp lands — spread right before it ends.",
	"* His Smite Slam (|cff71d5ff|Hspell:6435|h[Smite Slam]|h|r) hits a marked player: the tank swaps.",
	"* His Nimble Reflexes (|cff71d5ff|Hspell:6264|h[Nimble Reflexes]|h|r) is a buff on a player: dispel it."
};

pack["647"] = { "Captain Greenskin", -- (classic era)
	"* His Poisoned Harpoon (|cff71d5ff|Hspell:5208|h[Poisoned Harpoon]|h|r) is a ranged shot that poisons: dispel the poison and keep the tank topped up."
};

pack["639"] = { "Edwin VanCleef", -- (classic era)
	"* His Allies (|cff71d5ff|Hspell:5200|h[Allies]|h|r) calls his guards: kill them before they pile on the tank.",
	"* His Thrash (|cff71d5ff|Hspell:3391|h[Thrash]|h|r) lands on his own allies: the adds get stronger, so clear them first."
};

pack["3586"] = { "Miner Johnson", -- (classic era)
	"* His Pierce Armor (|cff71d5ff|Hspell:12097|h[Pierce Armor]|h|r) is a shot that sunders the tank's armor: hold him close and keep the armor buffs up."
};

pack["645"] = { "Cookie", -- (classic era)
	"* His heal (|cff71d5ff|Hspell:5174|h[Heal]|h|r) is his only one: interrupt it every time."
};

-- ------------------------------------ --
-- Shadowfang Keep : Zona 33 (classic) --
-- ------------------------------------ --

pack["3887"] = { "Baron Silverlaine", -- (classic era)
	"* His Veil of Shadow (|cff71d5ff|Hspell:7068|h[Veil of Shadow]|h|r) is a curse on a player: dispel it so the healing keeps flowing.",
	"* He calls his guards: full DPS on the adds before they reach the tank."
};

pack["3886"] = { "Razorclaw the Butcher", -- (classic era)
	"* Flat fight: the DBM module has no warnings for him — tank, heal and burn him down.",
	"* Keep him facing the wall: everything in front of him gets hit."
};

pack["4275"] = { "Archmage Arugal", -- (classic era)
	"* His Arugal's Curse (|cff71d5ff|Hspell:7621|h[Arugal's Curse]|h|r) curses a player: dispel it.",
	"* His Shadow Port (|cff71d5ff|Hspell:7587|h[Shadow Port]|h|r) opens and he calls his shadow creatures: kill them on sight."
};

pack["4278"] = { "Commander Springvale", -- (classic era)
	"* Flat fight: he summons the Deathsworn Captain (3872) and more of his dead — take the Captain down first.",
	"* Keep him facing the wall: the adds come from behind."
};

pack["3872"] = { "Deathsworn Captain", -- (classic era)
	"* Summoned by Commander Springvale: flat fight, kill him before the boss.",
	"* His hits on the tank are hard: keep the healing up while the group is on the Captain."
};

pack["4274"] = { "Fenrus the Devourer", -- (classic era)
	"* His Toxic Saliva (|cff71d5ff|Hspell:7125|h[Toxic Saliva]|h|r) poisons a player: dispel the poison.",
	"* He is a fast melee fighter: keep him in front of the tank and do not let the group be caught behind him."
};

pack["4279"] = { "Odo the Blindwatcher", -- (classic era)
	"* Flat fight: the DBM module has no warnings for him — tank, heal and burn him down."
};

pack["3914"] = { "Rethilgore", -- (classic era)
	"* Flat fight: the DBM module has no warnings for him — tank, heal and burn him down."
};

pack["3927"] = { "Wolf Master Nandos", -- (classic era)
	"* He summons Bleak Worgs (|cff71d5ff|Hspell:7487|h[Bleak Worg]|h|r): kill them before they reach the tank.",
	"* His Lupine Horror (|cff71d5ff|Hspell:7489|h[Lupine Horror]|h|r) and Slavering Worg (|cff71d5ff|Hspell:7488|h[Slavering Worg]|h|r) land on the party: watch the debuffs and keep the healing up."
};

-- Blackfathom Deeps : Zona 48 (classic) --
-- ------------------------------------- --

pack["4887"] = { "Ghamoo-Ra",
	"* Plain tank-and-damage fight: his |cff71d5ff|Hspell:5568|h[Trample]|h|r shakes everyone near him; melee stay close and the rest spread."
};

bos = { "Lady Sarevess",
	"* She is escorted by elite guards: crowd-control the minions (polymorph, traps) and focus damage on her.",
	"* Her |cff71d5ff|Hspell:407546|h[Freezing Arrow]|h|r freezes whoever it hits (healer frees them by dispelling) and, when she points her |cff71d5ff|Hspell:407653|h[Forked Lightning]|h|r at someone, the marked player moves out of the group.",
	"* If she puts |cff71d5ff|Hspell:407791|h[Aku'mai's Rage]|h|r on a player, dispel it as soon as the healer sees it; her ground puddles are avoided."
};

pack["4831"] = bos;

pack["6243"] = { "Gelihast",
	"* Plain fight: his main annoyance is the |cff71d5ff|Hspell:6533|h[Net]|h|r that takes someone out of combat for a few seconds (break or dispel it); otherwise tank and damage."
};

pack["4832"] = { "Twilight Lord Kelris",
	"* In the Era client this is a simple fight: dispel the |cff71d5ff|Hspell:8399|h[Sleep]|h|r he casts on a random player and keep tanking and damaging."
};

pack["4829"] = { "Aku'mai",
	"* Plain poison fight: his |cff71d5ff|Hspell:3815|h[Poison Cloud]|h|r stays where he stands; the tank keeps him away from the group and nobody stands in it.",
	"* As he dies he enters |cff71d5ff|Hspell:3490|h[Frenzied Rage]|h|r and hits faster: healers pick up the pace."
};

pack["4830"] = { "Old Serra'kis",
	"* Plain melee fight in the shallow water pit: the tank holds him, melee watch his poisons and the group just spread damage."
};

-- -------------------------------- --
-- The Stockade : Zona 34 (classic) --
-- -------------------------------- --

pack["1696"] = { "Targorr the Dread",
	"* A plain melee fight: nothing to interrupt or dispel, tank glued and burn."
};

pack["1663"] = { "Dextren Tutor",
	"* Fear Ability: Dextren can fear the group, so it is recommended to clear the room and nearby enemies before starting combat.",
	"* Flee: When its health drops, it will try to flee, so it's advisable to control it to prevent it from pulling more enemies."
};

pack["1666"] = { "Kam Deepfury",
	"* A plain melee fight: nothing to interrupt or dispel."
};

pack["1717"] = { "Hamhock",
	"* A plain melee fight that hits hard: nothing to interrupt or dispel."
};

pack["1720"] = { "Bruegal Ironknuckle",
	"* A plain melee fight: nothing to interrupt or dispel."
};

pack["1716"] = { "Bazil Thredd",
	"* The final fight takes place in the yard and his prisoners join in as soon as it starts: kill the adds first, the boss after."
};

-- ------------------------------ --
-- Gnomeregan : Zona 90 (classic) --
-- ------------------------------ --

bos = { "Grubbis",
	"* A plain fight flagged by DBM: tank, burn and heals, minding the add that pops up beside him (his Chomper)."
};

pack["7361"] = bos;

bos = { "Viscous Fallout",
	"* Toxic Volley (|cff71d5ff|Hspell:21687|h[Toxic Volley]|h|r): periodic poison on anyone close; the poison dispeller cleanses and keeps going."
};

pack["7079"] = bos;

bos = { "Electrocutioner 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) and Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r) are interruptible: cut them at the root.",
	"* The Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r) pounds the tank: heals on watch."
};

pack["6235"] = bos;

bos = { "Crowd Pummeler 9-60",
	"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): a stomp that flings the melee through the air: only the tank stays inside, everyone else out of range.",
	"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) on the tank: normal tank-and-heal rhythm."
};

pack["6229"] = bos;

bos = { "Mekgineer Thermaplugg",
	"* He attaches a living bomb to a random player (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): the marked one runs away from the group until it bursts.",
	"* The Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) sends the tank flying: mind where he lands.",
	"* From Cata on he adds an interruptible Steam Blast and pounds on the tank: cut the blast in time."
};

pack["7800"] = bos;

-- ---------------------------------- --
-- Razorfen Kraul : Zona 47 (classic) --
-- ---------------------------------- --

pack["4424"] = { "Aggem Thorncurse",
	"* He summons boars (|cff71d5ff|Hspell:8286|h[Summon Boar]|h|r) at odd times: kill them as soon as they show.",
	"* His Healing Wave (|cff71d5ff|Hspell:14900|h[Healing Wave]|h|r) is interruptible: cut it without mercy or the tank wears out."
};

pack["4422"] = { "Agathelos the Raging",
	"* He enrages (|cff71d5ff|Hspell:8269|h[Enrage]|h|r) and his punishment spikes: the tank rides the climb with focused heals."
};

pack["4425"] = { "Blind Hunter",
	"* A plain brawler flagged by DBM: hits up close and nothing else: tank, burn and heals."
};

bos = { "Roogug",
	"* He calls earth rumblers (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): the tank grabs them and they die on the spot."
};

pack["6168"] = bos;

pack["4420"] = { "Overlord Ramtusk",
	"* He channels a whirling barrage (|cff71d5ff|Hspell:8259|h[Whirling Barrage]|h|r): interrupt it or, if it goes off, step clear of the swirl while it falls.",
	"* A rough fight: he hits hard and comes flanked by two guardians; the tank peels them aside and heals squeeze."
};

pack["4421"] = { "Charlga Razorflank",
	"* The Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) is interruptible: the kick saves the whole group.",
	"* Hexes get cleansed off as soon as they land (|cff71d5ff|Hspell:8361|h[Purity]|h|r): physical damage is the way in."
};

pack["4428"] = { "Death Speaker Jargba",
	"* Dominates the mind of a player (|cff71d5ff|Hspell:14515|h[Dominate]|h|r): normal interrupts do not cut it; a stun stops it, though the recast comes the moment it breaks: beat the dominated player down until it drops."
};

pack["4842"] = { "Earthcaller Halmgar",
	"* Calls earth rumblers (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): split them up and finish them quickly."
};

-- -------------------------------------- --
-- Scarlet Monastery : Zona 189 (classic) --
-- -------------------------------------- --

pack["3983"] = { "Interrogator Vishas",
	"* A short, plain fight: his only flagged trick is Immolate (|cff71d5ff|Hspell:9034|h[Immolate]|h|r) on a player, magic damage that lingers; dispel it or heal that mark carefully."
};

pack["4543"] = { "Bloodmage Thalnos",
	"* Flame Spike (|cff71d5ff|Hspell:8814|h[Flame Spike]|h|r) at range and Fire Nova (|cff71d5ff|Hspell:12470|h[Fire Nova]|h|r) around him: melee breaks contact when he flares the nova.",
	"* No other mechanics: stand him up, drop him and the graveyard is done."
};

pack["4542"] = { "High Inquisitor Fairbanks",
	"* An inquisitor hidden among the graveyard tombs: most groups leave him for later; if you pull him, it is a plain fight.",
	"* His Curse of Blood (|cff71d5ff|Hspell:8282|h[Curse of Blood]|h|r) is a curse: strip it with curse removal."
};

pack["3974"] = { "Houndmaster Loksey",
	"* He fights flanked by his hounds and casts Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r) on the pack: they hit faster, so clear dogs as fast as you can while the tank pins him.",
	"* Nothing else to it: if the dogs pile up, kill them first and he falls soon after."
};

pack["6487"] = { "Arcanist Doan",
	"* He casts Polymorph (|cff71d5ff|Hspell:13323|h[Polymorph]|h|r) on a player and repeats Arcane Explosion (|cff71d5ff|Hspell:9433|h[Arcane Explosion]|h|r) around him: nobody casts glued to him.",
	"* His area Silence (|cff71d5ff|Hspell:8988|h[Silence]|h|r) cuts nearby casts: stand away from the arcanist to keep casting.",
	"* Detonate (|cff71d5ff|Hspell:9435|h[Detonate]|h|r) is the real hit: when he charges it, run out of the radius or break line of sight behind the room's bookshelves before it bursts."
};

pack["3975"] = { "Herod",
	"* His Whirlwind (|cff71d5ff|Hspell:8989|h[Whirlwind]|h|r) spins every ~18 s: melee steps out of the radius and returns once the spin ends.",
	"* At low health he takes Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): more damage, bear down on tank and heals.",
	"* When Herod falls, a swarm of scarlet trainees floods through the door: no slacking until they are swept."
};

pack["3976"] = { "Scarlet Commander Mograine",
	"* A plain cleave fight, starting with him: Whitemane only leaves her balcony once he falls.",
	"* After his first death, Whitemane's Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) on him gets interrupted: without the cut he is back with full health.",
	"* With the heal handled and the resurrection survived, the fight is dropping both, no rush."
};

pack["3977"] = { "High Inquisitor Whitemane",
	"* She descends when Mograine falls and casts Deep Sleep (|cff71d5ff|Hspell:9256|h[Deep Sleep]|h|r) on a player for 10 s: the curtain that covers Mograine's return.",
	"* She then casts Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) to refill the revived one: interrupt it every time.",
	"* Once she revives him, she falls first; the revived Mograine is the last trophy."
};

bos = {
	"The Headless Horseman",
	"* Festive boss of classic Hallow's End: summon it in the monastery graveyard by talking to the pumpkin shrine waiting at the entrance.",
	"* |cff71d5ff|Hspell:42380|h[Conflagration]|h|r sets a random player on fire for 4 s and sends him fleeing in panic: stay away from him while he burns; the healer gets him out of it.",
	"* |cff71d5ff|Hspell:42514|h[Squash Soul]|h|r afflicts another player for 15 s: heals on the marked one.",
	"* The rhythm of the fight: body to 1% -> immune, and the HEAD flies off while the body heals itself -> all focus on the Head before it returns; it comes out three times, and the third time it never returns: bring it down to finish.",
	"* On the last body turn arrive the Pulsing Pumpkins (adds, no id): the tank holds them and the group cleaves them down."
};

pack["23682"] = bos;

pack["23775"] = bos;

-- ----------------------------------- --
-- Razorfen Downs : Zona 129 (classic) --
-- ----------------------------------- --

bos = { "Mordresh Fire Eye",
	"* He fights on a bone mound amid a swarm of non-elite skeletons: the tank starts with AoE to grab them all, keeps them grouped and the group clears the swarm first; no rush to hit the boss.",
	"* Whenever he casts his fire ball, tank or melee interrupt it: every cast stopped is less damage taken.",
	"* The healer waits a few seconds until the tank secures aggro on the swarm before healing hard: early heals can peel the skeletons off and wipe the pull.",
	"* His Flame Wave (|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r) sweeps melee at his feet: step out."
};

pack["7357"] = bos;

pack["7355"] = { "Tuten'kash", -- (classic era)
	"* The crypt's spider: her Curse of Tut (|cff71d5ff|Hspell:12255|h[Curse of Tut]|h|r) marks a player (curse, remove it) and her Web Spray (|cff71d5ff|Hspell:12252|h[Web Spray]|h|r) punishes melee in area.",
	"* Her arachnid venom bites the tank: sustained healing."
};

pack["7356"] = { "Plaguemaw the Rotting", -- (classic era)
	"* His Withered Touch (|cff71d5ff|Hspell:11442|h[Withered Touch]|h|r) is DISEASE on a player: the druid purges it."
};

pack["7354"] = { "Ragglesnout", -- (classic era)
	"* Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) turns a player AGAINST the group: stun it or purge the magic off them."
};

pack["8567"] = { "Glutton", -- (classic era)
	"* The flesh devourer: he goes into Frenzy (|cff71d5ff|Hspell:12795|h[Frenzy]|h|r) at low health — hard DPS at the end."
};

pack["7358"] = { "Amnennar the Coldbringer", -- (classic era)
	"* The graveyard's chill: his Amnennar's Wrath (|cff71d5ff|Hspell:13009|h[Amnennar's Wrath]|h|r) bursts in area — spread and keep healing strong."
};

-- --------------------------- --
-- Uldaman : Zona 70 (classic) --
-- --------------------------- --

pack["6910"] = { "Revelosh",
	"* Entry-hall trogg shaman: his Chain Lightning (|cff71d5ff|Hspell:16006|h[Chain Lightning]|h|r) gets interrupted every time.",
	"* If a Lightning Bolt (|cff71d5ff|Hspell:15801|h[Lightning Bolt]|h|r) slips through, interrupt it as well if the group can."
};

bos = { "The Lost Dwarves",
	"* Trio of dwarves (Baelog, Eric «the Swift» and Olaf) in the craftsmen's hall: all three in one pull, plain fight.",
	"* Three at once with no DBM-flagged mechanics: the tank gathers them and AoE + cleave drops them."
};

pack["6906"] = bos;

pack["6907"] = bos;

pack["6908"] = bos;

pack["7206"] = { "Ancient Stone Keeper",
	"* Stone keeper of the central halls: static fight with heavy physical damage.",
	"* Sand Storms (|cff71d5ff|Hspell:10132|h[Sand Storms]|h|r) never stop: area damage, ranged never clump and healers divide it."
};

pack["7023"] = { "Obsidian Sentinel",
	"* Obsidian sentinel golem: his Reflection (|cff71d5ff|Hspell:9941|h[Reflection]|h|r) throws spells back at the caster — casters hold casts while it runs.",
	"* Splintered Obsidian (|cff71d5ff|Hspell:10072|h[Splintered Obsidian]|h|r): bursts cleared as soon as they spawn."
};

pack["7291"] = { "Galgann Firehammer",
	"* Fire shaman of the craftsmen halls: Flame Spike (|cff71d5ff|Hspell:6725|h[Flame Spike]|h|r) and Flame Lash (|cff71d5ff|Hspell:3356|h[Flame Lash]|h|r), both interrupted every time.",
	"* Fire Nova (|cff71d5ff|Hspell:11969|h[Fire Nova]|h|r) bursts around: melee leaves the radius and returns."
};

pack["4854"] = { "Grimlok",
	"* Shaman trogg boss of the lower caverns: Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) interrupted always and Lightning Bolt (|cff71d5ff|Hspell:12167|h[Lightning Bolt]|h|r) as a bonus cut.",
	"* Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r): whoever carries it, him or an add, falls first.",
	"* Crystalline Slumber (|cff71d5ff|Hspell:3636|h[Crystalline Slumber]|h|r) sleeps a player (magic): dispel or damage wakes them.",
	"* Reflection (|cff71d5ff|Hspell:9906|h[Reflection]|h|r): no casts while it lasts, same spell-return rule."
};

pack["7228"] = { "Ironaya",
	"* Woken guardian of the map room: static fight, tanked in place.",
	"* Her Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) is frontal: melee never stands straight ahead of her.",
	"* War Stomp (|cff71d5ff|Hspell:11876|h[War Stomp]|h|r) around her: area stun, melee rides it out and healing keeps going."
};

pack["2748"] = { "Archaedas",
	"* The sleeping titan of the vault: a long fight of clearing summons while wearing him down.",
	"* Awaken Earthen Guardians (|cff71d5ff|Hspell:10252|h[Awaken Earthen Guardians]|h|r) and Awaken Vault Warder (|cff71d5ff|Hspell:10258|h[Awaken Vault Warder]|h|r): adds arrive in waves — cleave them, the boss stays on the tank.",
	"* Ground Tremor (|cff71d5ff|Hspell:6524|h[Ground Tremor]|h|r) pounds the area around him: melee holds on with heals, nothing to dodge.",
	"* Classic rule: the tank pins him on his pedestal, damage sweeps the guardians and Archaedas falls last."
};

-- ------------------------------- --
-- Zul'Farrak : Zona 209 (classic) --
-- ------------------------------- --

pack["8127"] = { "Antu'sul",
	"* First boss, in the entrance pit: troll healer who props himself up with totems and minions.",
	"* His Healing Waves get interrupted: the self-cast one (|cff71d5ff|Hspell:11895|h[Healing Wave]|h|r) and the one sent to minions (|cff71d5ff|Hspell:15982|h[Healing Wave]|h|r).",
	"* His totems pop as soon as they sprout: the Earthgrab one (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) roots the group and the Healing Ward (|cff71d5ff|Hspell:4971|h[Healing Ward]|h|r) feeds the boss and his crew.",
	"* The minions he raises (|cff71d5ff|Hspell:11894|h[Minions]|h|r) fall first: damage sweeps them while the tank holds the boss."
};

pack["7272"] = { "Theka the Martyr",
	"* Single-target fight: his Fevered Plague (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) is a curable disease — dispel as soon as it lands.",
	"* Mid-fight he transforms (|cff71d5ff|Hspell:11089|h[Transformation]|h|r): the tank holds him and he keeps falling all the same."
};

pack["7271"] = { "Witch Doctor Zum'rah",
	"* Healer of the courtyard with his acolytes: every cast gets interrupted — the Healing Wave (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) and, above all, the Shadow Bolt Volley (|cff71d5ff|Hspell:15245|h[Shadow Bolt Volley]|h|r), which punishes the whole group at 30 yards.",
	"* His Ward of Zum'rah (|cff71d5ff|Hspell:11086|h[Ward of Zum'rah]|h|r) plants a totem at his feet that raises a skeleton every 5 s: pop it as soon as it sprouts.",
	"* Awaken Zombie: he raises Zul'Farrak Zombies from the nearby tombs of the room — skeletons and zombies fall as soon as they surface."
};

pack["7273"] = { "Gahz'rilla",
	"* The giant beast of the plaza: the tank pins her in place and ranged never clump behind her.",
	"* Her Slam (|cff71d5ff|Hspell:11902|h[Slam]|h|r) crashes into the ground: area damage the melee rides out with heals.",
	"* Freeze Solid (|cff71d5ff|Hspell:11836|h[Freeze Solid]|h|r) freezes whoever it catches solid: healing covers while it lasts."
};

pack["7795"] = { "Hydromancer Velratha",
	"* Mage of the upper tier: plain fight with a single detail — every Healing Wave (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) gets interrupted."
};

bos = { "Nekrum & Sezz'ziz",
	"* Pair of the pyramid event (the freed prisoners turn on you): dispatch them when they show up, after the minion wave.",
	"* Sezz'ziz's heals — Renew (|cff71d5ff|Hspell:8362|h[Renew]|h|r) and Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) — interrupted every time or the pair drags the fight out.",
	"* Divine Shield (|cff71d5ff|Hspell:13704|h[Divine Shield]|h|r) blocks damage outright: while it lasts, damage doesn't waste the effort.",
	"* Fevered Plague (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) shows up here too: curable disease, dispel available."
};

pack["7796"] = bos;

pack["7275"] = bos;

pack["7267"] = { "Chief Ukorz Sandscalp",
	"* The warlord atop the pyramid, with his right hand Ruuzlu (no entry of its own): head-on fight, tanked in place with hard physical damage.",
	"* Ruuzlu falls FIRST: when the chief dies he enrages (+30% damage and +40% attack speed) and punishes whatever is left of the room.",
	"* As his health drops he pops his Enrage (|cff71d5ff|Hspell:8269|h[Enrage]|h|r): the tank tightens up and healing carries the final stretch."
};

-- ----------------------------- --
-- Maraudon : Zona 349 (classic) --
-- ----------------------------- --

pack["12203"] = { "Landslide",
	"* First big rock golem of the cave: plain fight with heavy physical damage on the tank.",
	"* Knock Away (|cff71d5ff|Hspell:11130|h[Knock Away]|h|r) hurls the tank backward and shakes off threat: the tank grabs it back at once while everyone holds position.",
	"* Landslide (|cff71d5ff|Hspell:21808|h[Landslide]|h|r) area-knocks everyone around him down: melee gets up and keeps going, running is pointless.",
	"* Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) pounds the ground next to him: keeping him pinned makes it harmless."
};

pack["13282"] = { "Noxxion",
	"* Emerald elemental of the crystal hall: static fight at its nest.",
	"* Uppercut (|cff71d5ff|Hspell:10966|h[Uppercut]|h|r) launches the tank high: heal on your feet and back to position.",
	"* Periodic minion summons (|cff71d5ff|Hspell:21707|h[Noxxion's Minions]|h|r): AoE them as soon as they pile up, before they add pressure."
};

pack["12258"] = { "Razorlash",
	"* Giant thorny plant of the green paths: plain fight, mauls the tank and little else.",
	"* No mechanics flagged by DBM: tank, heal, fell it."
};

pack["12236"] = { "Lord Vyletongue",
	"* Ghost satyr: caster fight with shadow damage and his Smoke Bomb (|cff71d5ff|Hspell:7964|h[Smoke Bomb]|h|r) that shrouds him out of sight.",
	"* Through the fog the tank pins him by threat while melee waits for the smoke to clear."
};

pack["12225"] = { "Celebras the Cursed",
	"* Keeper guarding the portal toward the princess: his Wrath (|cff71d5ff|Hspell:21807|h[Wrath]|h|r) gets interrupted every time, serious nature damage if it lands whole.",
	"* Entangling Roots (|cff71d5ff|Hspell:12747|h[Entangling Roots]|h|r) roots a player: it is magic, dispel it or break it with damage.",
	"* DBM flags Corrupt Forces (|cff71d5ff|Hspell:21968|h[Corrupt Forces]|h|r): push the damage and he falls flat; nothing to dodge."
};

pack["13601"] = { "Tinkerer Gizlock",
	"* Goblin engineer of the deep cave: his Goblin Dragon Gun (|cff71d5ff|Hspell:21833|h[Goblin Dragon Gun]|h|r) spits fire in a frontal cone.",
	"* The tank pins him facing away from the group: nobody stands in front of the gun and he falls plain."
};

pack["13596"] = { "Rotgrip",
	"* Crocolisk of the pool before the princess's hall: plain fight in the pond water.",
	"* Fatal Bite (|cff71d5ff|Hspell:16495|h[Fatal Bite]|h|r) crushes the tank: heal in turns with the emergency held in reserve."
};

pack["12201"] = { "Princess Theradras",
	"* Final boss, colossal: static fight in her hall.",
	"* Repulsive Gaze (|cff71d5ff|Hspell:21869|h[Repulsive Gaze]|h|r) sows panic around (fear): spread out a bit; a shaman's tremor totem clears it at once.",
	"* Boulder (|cff71d5ff|Hspell:21832|h[Boulder]|h|r) flies at the far ones: ranged spread positions and never clump.",
	"* Dust Field (|cff71d5ff|Hspell:21909|h[Dust Field]|h|r) whips the area around her: melee runs out of the radius (DBM yells run) and returns when it ends."
};

-- ---------------------------------- --
-- Sunken Temple : Zona 109 (classic) --
-- ---------------------------------- --

pack["5710"] = { "Jammal'an the Prophet", -- (classic era)
	"* The prophet of the hall, with his bodyguard Ogom (no entry of its own) beside him: duo fight in the open.",
	"* Jammal'an plants his Earthgrab Totem (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) — it roots the group — and marks a player with Hex of Jammal'an (|cff71d5ff|Hspell:12479|h[Hex of Jammal'an]|h|r), who waits covered up; he also casts Healing Wave (12492) and Flamestrike (12468).",
	"* Ogom punishes with Shadow Bolts (|cff71d5ff|Hspell:12471|h[Shadow Bolt]|h|r) ALWAYS interrupted and paints Shadow Word: Pain (|cff71d5ff|Hspell:11639|h[Shadow Word: Pain]|h|r) (magic) and Curse of Weakness (|cff71d5ff|Hspell:12493|h[Curse of Weakness]|h|r) (curse)."
};

pack["5719"] = { "Morphaz", -- (classic era)
	"* Green drake of the flooded pit: the kit is twin to the temple's four warders.",
	"* Plain fight: his Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front and the Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) knocks back — tank planted and group behind him."
};

pack["5720"] = { "Weaver", -- (classic era)
	"* Green drake of the upper floor, beside Dreamscythe: twin warder kit.",
	"* Plain fight: Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front and Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) knocks back — tank holds, group tucked behind him."
};

pack["5721"] = { "Dreamscythe", -- (classic era)
	"* Green drake of the upper floor, beside Weaver: twin warder kit.",
	"* Plain fight: his Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front cone and leaves a nature wound, and the Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) shoves backward — tank holds, group tucked behind him."
};

pack["5722"] = { "Hazzas", -- (classic era)
	"* Green drake of the flooded pit, paired with Morphaz: twin warder kit.",
	"* Plain fight: Acid Breath (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) punishes the front and Wing Flap (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) knocks back — tank holds, group tucked behind him."
};

pack["5712"] = { "Zolo", -- (classic era, optional troll mini-boss of the Atal'ai guard; owner kit via Wowhead 2026-10)
	"* Optional, hard-hitting troll mini-boss of the Atal'ai guard: his Chain Lightning leaps between bunched-up players — spread out after every cast.",
	"* He plants a totem beside him that keeps pumping skeletons: pop it as soon as it sprouts.",
	"* His area debuff strips 10 of every stat and STACKS if the fight drags — kill him fast."
};

pack["5709"] = { "Shade of Eranikus", -- (classic era)
	"* The shade of the green dragon the altar ritual wakes in the pit: the classic temple's final summon.",
	"* His Deep Slumber (|cff71d5ff|Hspell:12890|h[Deep Slumber]|h|r) sleeps whoever it catches, the Acid Breath (|cff71d5ff|Hspell:12533|h[Acid Breath]|h|r) punishes the tank and the War Stomp (|cff71d5ff|Hspell:24375|h[War Stomp]|h|r) lands in melee range."
};

pack["8443"] = { "Avatar of Hakkar", -- (classic era)
	"* The shade of the serpent god the temple ritual wakes: short, venomous fight.",
	"* His Curse of Tongues (|cff71d5ff|Hspell:12889|h[Curse of Tongues]|h|r) (curse) drags out the group's casts and his Cause Insanity (|cff71d5ff|Hspell:12888|h[Cause Insanity]|h|r) lands on a player — the DBM's loudest warning, handle it fast."
};

-- -------------------------------- --
-- Scholomance : Zona 289 (classic) --
-- -------------------------------- --

pack["10506"] = { "Kirtonos the Herald", -- (classic era)
	"* He is summoned on the balcony by placing the Blood of the Innocents (from the entrance mobs) on its pedestal.",
	"* In gargoyle form he casts a curse that dries up the damage dealt: curse, purged on sight.",
	"* His knockback throws people off the balcony: the tank positions him BACK to the group and far from the rim."
};

pack["10505"] = { "Instructor Malicia", -- (classic era)
	"* She lectures surrounded by undead students: AoE (and Shackle Undead) clears the waves as soon as they come.",
	"* Her heals, ALWAYS interrupted."
};

pack["11622"] = { "Rattlegore", -- (classic era)
	"* The ossuary giant arrives surrounded by skeletons: the guard clears before him.",
	"* He strikes with a CLEAVE — NOBODY in front but the tank.",
	"* He keeps dropping the tank's threat: DPS throttle instead of stealing aggro."
};

pack["10503"] = { "Jandice Barov", -- (classic era)
	"* She duplicates herself into identical illusions: the group hunts the REAL body (or crushes the copies with AoE) before the combined damage melts the healer."
};

pack["10504"] = { "Lord Alexei Barov", -- (classic era)
	"* He arrives with two guards: take them out first or the aggro splits in two.",
	"* His Veil of shadow (|cff71d5ff|Hspell:17820|h[Veil of shadow]|h|r) is a CURSE that cuts healing received by 75%: purge it on sight (the DBM announces the target)."
};

pack["10507"] = { "The Ravenian", -- (classic era)
	"* The crypt ghoul giant: BRUTAL hits on the tank — healing stays glued to him the whole fight."
};

pack["11261"] = { "Doctor Theolen Krastinov", -- (classic era)
	"* The Butcher: endless melee; enraged, he goes into FRENZY with damage and attack speed through the roof — tank on defensives, priority healing while it lasts."
};

pack["10502"] = { "Lady Illucia Barov", -- (classic era)
	"* MIND-controls a player: stun, fear or polymorph WITHOUT killing the controlled one.",
	"* Her Shadow Bolts ALWAYS get interrupted; her area silence pushes casters and healers behind the tank."
};

pack["10901"] = { "Lorekeeper Polkelt", -- (classic era)
	"* He opens with minions at his sides: clear them first, then him.",
	"* He seeds acid/venom puddles on the floor: don't stand in them, and dispel his toxins fast."
};

pack["10433"] = { "Marduk Blackpool", -- (classic era)
	"* In the necromancy classroom, next to Vectus: engage slowly so you don't grab both at once; his skeleton summons get cleared fast."
};

pack["10432"] = { "Vectus", -- (classic era)
	"* The other of the necromancy classroom: flat caster — his minions and soul fragments get cleared on sight."
};

pack["10508"] = { "Ras Frostwhisper", -- (classic era)
	"* Frost lich: his Nova freezes the melee — take the hit, back off, and strike between blasts.",
	"* His Frost Armor slows his attackers, and his frost Throw hurls the tank away and wipes the threat: the tank strolls back, nobody overtakes him."
};

pack["1853"] = { "Darkmaster Gandling", -- (classic era)
	"* His Shadow Portal (|cff71d5ff|Hspell:17950|h[Shadow Portal]|h|r) TOSSES a player into one of the locked rooms full of students (the warning announces the cast, not the target).",
	"* The isolated one fights the room's students ALONE until the door opens; the rest soaks his Shadow Bolts and keeps hammering without stopping the DPS.",
	"* It repeats until he drops: a DPS clock while the rooms keep spitting people."
};

-- ------------------------------------- --
-- Blackrock Depths : Zona 230 (classic) --
-- ------------------------------------- --

pack["9018"] = { "High Interrogator Gerstahn", -- (classic era)
	"* The interrogation rooms' boss: her shadow bolts punish the casters — attentive healing and the room spread."
};

pack["9025"] = { "Lord Roccor", -- (classic era)
	"* His War Stomp (2 s) punishes everything close and his Earth Shock interrupts casts: spread out and don't cast into it.",
	"* The Flame Wave comes every ~12 s: melee steps out of the radius and comes back."
};

pack["9319"] = { "Houndmaster Grebmar", -- (classic era)
	"* The chained pack comes first: AoE and control on the dogs; the master on the tank."
};

bos = { "Ring of Law", -- (classic era)
	"* The arena event: the ring spawns ONE of the six champions (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor or Leftok) — the tank grabs it and the fight is a straight slog."
};

pack["9028"] = bos;

pack["9031"] = bos;

pack["9029"] = bos;

pack["9030"] = bos;

pack["9032"] = bos;

pack["9027"] = bos;

pack["9024"] = { "Pyromancer Loregrain", -- (classic era)
	"* The enclosure's pyromancer: area fire on the group — spread out and heal through it."
};

pack["9017"] = { "Lord Incendius", -- (classic era)
	"* The elemental lord's curse: strips 100-132 Fire resist, 30 s and up to three times: the marked steps away from the flames.",
	"* Mighty slam: hurls the tank backwards (lava everywhere): back to a wall.",
	"* Firestorm punishes the nearby area ~30 s and his flame burst rolls 20 m: melee steps out and the healer covers the hit."
};

pack["9041"] = { "Warder Stilgiss", -- (classic era)
	"* The vault's warden: his ogre Verek fights at his side — the tank separates or holds them apart; constant healing."
};

pack["9056"] = { "Fineous Darkvire", -- (classic era)
	"* The foundry gnome: a flat fight behind a good tank."
};

pack["9016"] = { "Bael'Gar", -- (classic era)
	"* His Magma splash stacks up to 3 times in 24 s on the tank: tank rotation or a purge if available.",
	"* The brood summoning throws Fire at random with a mud minion as a gift: the tank grabs it and it dies fast."
};

pack["9033"] = { "General Angerforge", -- (classic era)
	"* His Sunder keeps stripping the tank's armor as it stacks: rotation if it piles up.",
	"* Crits speed up his hand and the Enrage raises physical punishment: the healers hold the streak with him."
};

pack["8983"] = { "Golem Lord Argelmach", -- (classic era)
	"* A Chain Lightning that jumps between the close ones: spread out while it lasts.",
	"* He fights with two of his constructs active: the tank separates them and splits the grip.",
	"* No rush: fallen golems do not close the fight — sweep the whole hall."
};

pack["9537"] = { "Hurley Blackbreath", -- (classic era)
	"* The tavern cave's drunkard: a straight slog behind a good tank."
};

pack["9502"] = { "Phalanx", -- (classic era)
	"* The forge hall's mechanical guard: hard melee on the tank."
};

pack["9499"] = { "Plugger Spazzring", -- (classic era)
	"* The Guzzler's barkeep: when he falls the WHOLE tavern piles in — patrons come in waves: tank AoE and no slip-ups."
};

pack["9156"] = { "Ambassador Flamelash", -- (classic era)
	"* Constant Fire Blast on the melee: rotation or heals on rhythm.",
	"* Blazing spirits: elementals through the hall's runes; the one that reaches him gives +5% damage and size up to 50 stacks: block their path and finish them on the way."
};

bos = { "The Seven", -- (classic era)
	"* Waves of seven ghost dwarves in the forge hall, one after another, each with his classic class kit.",
	"* The warrior Anger'rel: Heroic Strike and Sunder Armor on the tank, with Battle Shout and Shockwave on his timers.",
	"* The warlock Doom'rel: Shadow Bolt and Curse of Agony, summons a Succubus or Voidwalker and throws Fear: dispel the Fear and finish the summon.",
	"* The rogue Dope'rel: Poisoned Gouge biting from behind and Vanish: nobody stands loose-backs.",
	"* The shaman Gloom'rel: totems, Earth Shock and buff purges: totems die as they sprout.",
	"* The mage Hate'rel: Frost Bolt, Blizzard and Polymorph: interrupt the Polymorph and step out of Blizzard.",
	"* The hunter Seeth'rel: shoots from range, seeds traps and drops a wild pet: close distance carefully.",
	"* The priest Vile'rel: heals his own with Flash Heal and casts Power Word: Shield and Mind Blast: interrupts on his heals first."
};

pack["9035"] = bos;

pack["9039"] = bos;

pack["9040"] = bos;

pack["9037"] = bos;

pack["9034"] = bos;

pack["9038"] = bos;

pack["9036"] = bos;

pack["9938"] = { "Magmus", -- (classic era)
	"* The citadel giant: heavy melee on the tank and constant healing."
};

bos = { "Emperor Dagran Thaurissan", -- (classic era)
	"* Avatar of Flame: 10 s fully magic-immune with Fire added to his hits: casters hold while it lasts.",
	"* Hand of Thaurissan: a Fire hit that stuns 5 s — better without a pile so several don't lose control at once.",
	"* Iron Rage: his mace chains up to 3 extra hits and raises his crit 10% for 5 s: the tank holds the streak with heals.",
	"* Princess Moira Bronzebeard fights at his side: she heals him over and over and punishes with Holy and Shadow magic: control her or, if the group burns fast, finish her before him."
};

pack["9019"] = bos;

-- ------------------------------ --
-- Dire Maul : Zona 429 (classic) --
-- ------------------------------ --

pack["11489"] = { "Tendris Warpwood", -- (classic era)
	"* The ancient tree: his Grasping Vines (|cff71d5ff|Hspell:22924|h[Grasping Vines]|h|r) weave and his roots (|cff71d5ff|Hspell:22994|h[Entangle]|h|r) GRAB the melee — purge them (magic and movement).",
	"* His Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) punishes the melee."
};

pack["11488"] = { "Illyanna Ravenoak", -- (classic era)
	"* The archer: her Charge (|cff71d5ff|Hspell:22911|h[Charge]|h|r) flies at the farthest and nobody stands on the Immolation Trap (|cff71d5ff|Hspell:22910|h[Immolation Trap]|h|r).",
	"* Concussive Shot (|cff71d5ff|Hspell:22914|h[Concussive Shot]|h|r) slows and her Volley (|cff71d5ff|Hspell:30933|h[Volley]|h|r) hits in area: the group spreads."
};

pack["11487"] = { "Magister Kalendris", -- (classic era)
	"* The magister: at 50% he takes Shadowform (|cff71d5ff|Hspell:22917|h[Shadowform]|h|r) and hits harder.",
	"* His Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) STEALS a player: purge the magic off them."
};

pack["11496"] = { "Immol'thar", -- (classic era)
	"* The demon imprisoned by the five pylons: he goes FREE when the pylons burst — the whole room is the arena.",
	"* His Eyes (|cff71d5ff|Hspell:22899|h[Eyes of Immol'thar]|h|r) burn one player and Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) sweeps the melee.",
	"* He opens Portals (|cff71d5ff|Hspell:22950|h[Portal of Immol'thar]|h|r) that spit minions: AoE the ring while the tank holds."
};

pack["11486"] = { "Prince Tortheldrin", -- (classic era)
	"* The prince guarding the pylons: his escort falls first, then him.",
	"* His Summons (|cff71d5ff|Hspell:22995|h[Summon]|h|r) fill the room and the Whirling Strike (|cff71d5ff|Hspell:67037|h[Whirling Strike]|h|r) pounds in an area — step out."
};

pack["11492"] = { "Alzzin the Wildshaper", -- (classic era)
	"* The shapeshifter: he takes Tree Form (|cff71d5ff|Hspell:22688|h[Tree Form]|h|r) then Dire Wolf Form (|cff71d5ff|Hspell:22660|h[Dire Wolf Form]|h|r) — the fight changes face with each shift.",
	"* His Wild Regeneration (|cff71d5ff|Hspell:7948|h[Wild Regeneration]|h|r) ALWAYS interruptible: if it lands, he floods with health.",
	"* Enervate (|cff71d5ff|Hspell:22661|h[Enervate]|h|r) and Wither (|cff71d5ff|Hspell:22662|h[Wither]|h|r) are DISEASES: the druid purges them.",
	"* Mangle (|cff71d5ff|Hspell:22689|h[Mangle]|h|r) bleeds the tank, his roots (|cff71d5ff|Hspell:22415|h[Entangling Roots]|h|r) pin casters and Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) flings them."
};

pack["14325"] = { "Captain Kromcrush", -- (classic era)
	"* A Gordok guard captain with no logged specials — tank up front and the group alert."
};

pack["14324"] = { "Cho'Rush the Observer", -- (classic era)
	"* The court's healer: his heals carry no alert — interrupt every green cast on sight.",
	"* For the tribute run it pays to LEAVE HIM ALIVE: standing guards when the king falls fatten Mizzle's chest."
};

pack["14321"] = { "Guard Fengus", -- (classic era)
	"* A court guard with no logged specials — a straight slugfest behind a steady tank on clean pulls."
};

pack["14326"] = { "Guard Mol'dar", -- (classic era)
	"* Shield Bash (|cff71d5ff|Hspell:11972|h[Shield Bash]|h|r) interrupts and Shield Charge (|cff71d5ff|Hspell:15749|h[Shield Charge]|h|r) STAMPS the guard onto his target: keep distance and a clear back.",
	"* His Strike (|cff71d5ff|Hspell:14516|h[Strike]|h|r) hammers the tank and at 50% he goes into Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): hard DPS at the end."
};

pack["14323"] = { "Guard Slip'kik", -- (classic era)
	"* Another court guard with no logged specials — melee on the tank and zero slip-ups."
};

pack["13280"] = { "Hydrospawn", -- (classic era)
	"* The water bomb of the shrine: his Riptide (|cff71d5ff|Hspell:22419|h[Riptide]|h|r) slams in area — the melee spreads.",
	"* His Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) bursts underfoot: step off the pool.",
	"* AT 66% and 33% he SUMMONS hydrolings (|cff71d5ff|Hspell:22714|h[Summon Hydroling]|h|r): AoE the minions and back to the tank."
};

pack["11501"] = { "King Gordok", -- (classic era)
	"* The king's Berserker Charge (|cff71d5ff|Hspell:22886|h[Berserker Charge]|h|r) flings the marked, his Mortal Strike (|cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r) CRUSHES the tank (rotate two) and War Stomp (|cff71d5ff|Hspell:16727|h[War Stomp]|h|r) stuns in area.",
	"* His Sunder Armor (|cff71d5ff|Hspell:15572|h[Sunder Armor]|h|r) STACKS on the tank: strong attentive heals.",
	"* For the tribute run: every guard ALIVE when he falls fattens Mizzle's chest."
};

pack["14327"] = { "Lethtendris", -- (classic era)
	"* Her Shadow Bolt Volleys (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) rain in area: the melee spreads.",
	"* Her curses (|cff71d5ff|Hspell:13338|h[Curse of Thorns]|h|r and |cff71d5ff|Hspell:16247|h[Curse of Tongues]|h|r) get removed and Immolate (|cff71d5ff|Hspell:11962|h[Immolate]|h|r) burns the marked.",
	"* Her imp Pimgib ENLARGES (|cff71d5ff|Hspell:22710|h[Enlarge]|h|r, purge it), spits the Flame Buffet (|cff71d5ff|Hspell:22713|h[Flame Buffet]|h|r) that STACKS and his Blast Wave (|cff71d5ff|Hspell:15744|h[Blast Wave]|h|r) flattens in area."
};

pack["14322"] = { "Stomper Kreeg", -- (classic era)
	"* The court's drunkard: his Booze Spit (|cff71d5ff|Hspell:22833|h[Booze Spit]|h|r) goes in a cone and his War Stomp (|cff71d5ff|Hspell:16740|h[War Stomp]|h|r) quakes in area.",
	"* Whirlwind (|cff71d5ff|Hspell:15578|h[Whirlwind]|h|r) hammers the melee and at 50% the Drunken Rage (|cff71d5ff|Hspell:22835|h[Drunken Rage]|h|r) LIGHTS him up: heals ready."
};

pack["11490"] = { "Zevrim Thornhoof", -- (classic era)
	"* His Sacrifice (|cff71d5ff|Hspell:22651|h[Sacrifice]|h|r) hooks a player and SENDS a demon: kill the demon NOW while the marked gets care.",
	"* Intense Pain (|cff71d5ff|Hspell:22478|h[Intense Pain]|h|r) beats the marked: healing.",
	"* His Shadow Bolt Volleys (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) punish in area: the melee spreads its back."
};

-- ------------------------------------------------ --
-- Lower/Upper Blackrock Spire : Zona 229 (classic) --
-- ------------------------------------------------ --

pack["9196"] = { "Highlord Omokk", -- (classic era)
	"* The ogre lord of the stairway: vicious melee on the tank, constant healing."
};

pack["9236"] = { "Shadow Hunter Vosh'gajin", -- (classic era)
	"* The shadow priestess: her shadow bolts punish the casters — attentive healing on them."
};

pack["9237"] = { "War Master Voone", -- (classic era)
	"* The war master: a straight slog with a firm tank."
};

pack["10596"] = { "Mother Smolderweb", -- (classic era)
	"* The spider mother: her crystallization petrifies one of the group and her venom bites the melee — attentive healing."
};

pack["10584"] = { "Urok Doomhowl", -- (classic era)
	"* Born from the cave altar's rite: the summoning brings swarms — AoE and clear the melee before engaging."
};

pack["9736"] = { "Quartermaster Zigris", -- (classic era)
	"* The quartermaster: a straight slog behind a good tank."
};

pack["10220"] = { "Halycon", -- (classic era)
	"* The web daughter: melee on the tank, no logged specials."
};

pack["10268"] = { "Gizrul the Slavener", -- (classic era)
	"* The slaver: melee on the tank, no logged specials."
};

pack["9568"] = { "Overlord Wyrmthalak", -- (classic era)
	"* The den's overlord: sustained melee and constant healing."
};

pack["10363"] = { "General Drakkisath", -- (classic era)
	"* The general of the Upper wing: his Conflagration (|cff71d5ff|Hspell:16805|h[Conflagration]|h|r) sets a player ablaze — the marked leaves the group NOW while it burns."
};

pack["10899"] = { "Goraluk Anvilcrack", -- (classic era)
	"* The drakonid blacksmith: a flat fight behind a good tank."
};

pack["10509"] = { "Jed Runewatcher", -- (classic era)
	"* The runewatcher: flat melee on the tank."
};

pack["16042"] = { "Lord Valthalak", -- (classic era)
	"* The rite lord: his summons (|cff71d5ff|Hspell:27249|h[Summon Assassin]|h|r) bring assassins — the tank picks them up and melee keeps hitting."
};

pack["9816"] = { "Pyroguard Emberseer", -- (classic era)
	"* The forge warden: once his rite opens he falls like the rest — a straight slog."
};

pack["10264"] = { "Solakar Flamewreath", -- (classic era)
	"* The hatchery lord: opening the eggs spawns drakonid swarms — AoE the swarm and sustained melee on the boss."
};

pack["10430"] = { "The Beast", -- (classic era)
	"* The Beast: its roar terrifies the group and it hammers the tank — constant healing."
};

bos = { "Warchief Rend Blackhand", -- (classic era; module name — the client may carry another spelling, confirm in-game)
	"* The warchief goes down with his drake Gyth in the fight: strong healing on the tank and mind the drake's fire."
};

pack["10339"] = bos;

pack["10429"] = bos;

-- ------------------------------- --
-- Stratholme : Zona 329 (classic) --
-- ------------------------------- --

pack["10516"] = { "The Unforgiven", -- (classic era)
	"^ The gatehouse ghost: flat fight; his Frost Nova (|cff71d5ff|Hspell:14907|h[Frost Nova]|h|r) freezes the melee — step out and return to him."
};

pack["11032"] = { "Malor the Zealous", -- (classic era)
	"* His Ground Smash (|cff71d5ff|Hspell:12734|h[Ground Smash]|h|r) bashes an area and STUNS for 2 s — casters keep distance and healing glued on the tank; his Head Crack (|cff71d5ff|Hspell:16172|h[Head Crack]|h|r) punishes the tank.",
	"* His Holy Light (|cff71d5ff|Hspell:15493|h[Holy Light]|h|r) ALWAYS gets interrupted: he heals himself."
};

pack["10808"] = { "Timmy the Cruel", -- (classic era)
	"* The giant abomination: his Ravenous Claw (|cff71d5ff|Hspell:17470|h[Ravenous Claw]|h|r) hits in front and HEALS him — only the tank forward; at 50% he ENRAGES (|cff71d5ff|Hspell:8599|h[Enrage]|h|r) — out-damage the fury."
};

pack["10997"] = { "Cannon Master Willey", -- (classic era; classic name, the DBM title is the remastered one)
	"* From the parapet: artillery in area spots and Risen Riflemen (|cff71d5ff|Hspell:17279|h[Summon Risen Rifleman]|h|r) in waves: cleared on sight.",
	"* His Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) hurls the tank away: he strolls back and nobody overtakes him."
};

pack["10558"] = { "Hearthsinger Forresten", -- (classic era)
	"* His Enchanting Lullaby (|cff71d5ff|Hspell:16798|h[Enchanting Lullaby]|h|r) area-sleeps the whole group: ALWAYS gets interrupted.",
	"* His Demoralizing Shout (|cff71d5ff|Hspell:16244|h[Demoralizing Shout]|h|r) saps the melee; the rest, flat."
};

pack["10811"] = { "Archivist Galford", -- (classic era)
	"* The fire instructor: his Fire Nova (|cff71d5ff|Hspell:17366|h[Fire Nova]|h|r) bashes EVERYTHING around him — the melee dips out to strike.",
	"* His Burning Winds (|cff71d5ff|Hspell:17293|h[Burning Winds]|h|r) land on a player: the group spreads.",
	"* His Pyroblast (|cff71d5ff|Hspell:17274|h[Pyroblast]|h|r) ALWAYS gets interrupted."
};

bos = { "Balnazzar", -- (classic era; the fight opens as Grand Crusader Dathrohan)
	"* The fight opens as Grand Crusader Dathrohan with his Crusader's Hammer (|cff71d5ff|Hspell:17286|h[Crusader's Hammer]|h|r); halfway through he MORPHS into the demon Balnazzar.",
	"* Balnazzar: his Sleep (|cff71d5ff|Hspell:12098|h[Sleep]|h|r) is MAGIC — purge it; his Mind Blast (|cff71d5ff|Hspell:17287|h[Mind Blast]|h|r) hits one caster and his Psychic Scream (|cff71d5ff|Hspell:13704|h[Psychic Scream]|h|r) fears the group — spread so the panic doesn't chain."
};

pack["10812"] = bos;

pack["10813"] = bos;

pack["11143"] = { "Postmaster Malown", -- (classic era)
	"* Optional at the market square (he watches the mail): his Backhand (|cff71d5ff|Hspell:6253|h[Backhand]|h|r) stuns and his Curse of Weakness (|cff71d5ff|Hspell:12741|h[Curse of Weakness]|h|r) is a curse to purge."
};

pack["10435"] = { "Magistrate Barthilas", -- (classic era)
	"* His Crowd Pummel (|cff71d5ff|Hspell:10887|h[Crowd Pummel]|h|r) bashes the melee: the group spreads.",
	"* His Furious Anger (|cff71d5ff|Hspell:16791|h[Furious Anger]|h|r) stacks VERY FAST in the classic: DPS don't dawdle.",
	"* His Mighty Blow (|cff71d5ff|Hspell:14099|h[Mighty Blow]|h|r) punishes the tank with healing glued on.",
	"* He RUNS to the back of the room as soon as he is engaged: the surrounding pulls, cleared BEFORE."
};

pack["10437"] = { "Nerub'enkan", -- (classic era)
	"* The giant spider summons undead scarabs (|cff71d5ff|Hspell:17235|h[Raise Undead Scarab]|h|r) nonstop: the AoE sweeps them.",
	"* His Pierce Armor (|cff71d5ff|Hspell:6016|h[Pierce Armor]|h|r) leaves the tank WITHOUT armor: defensives or a second tank.",
	"* His Encasing Webs (|cff71d5ff|Hspell:4962|h[Encasing Webs]|h|r) tangle a player for a while: heal through and keep fighting."
};

pack["10436"] = { "Baroness Anastari", -- (classic era)
	"* POSSESSES a player (|cff71d5ff|Hspell:17244|h[Possess]|h|r): the possessed fights the party — bring them DOWN TO HALF HEALTH to free them, without killing them.",
	"* Her Silence (|cff71d5ff|Hspell:18327|h[Silence]|h|r) is area-wide: spread so it doesn't eat everyone.",
	"* Her Banshee Curse (|cff71d5ff|Hspell:16867|h[Banshee Curse]|h|r) is a curse that CUTS HEALING on the marked one: purge it NOW."
};

pack["10438"] = { "Maleki the Pallid", -- (classic era)
	"* His Ice Tomb (|cff71d5ff|Hspell:16869|h[Ice Tomb]|h|r) freezes a player for seconds: heal them through and the fight never stops.",
	"* His Drain Life (|cff71d5ff|Hspell:17620|h[Drain Life]|h|r) siphons a player — attentive healing.",
	"* His frost volleys slow the caster and drain their mana."
};

pack["10439"] = { "Ramstein the Gorger", -- (classic era)
	"* The one before the Baron's room: BRUTAL hits on the tank with sustained healing; his Knockout (|cff71d5ff|Hspell:17307|h[Knockout]|h|r) STUNS the whole party and his Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) punishes the melee.",
	"* When he drops, the wave of undead guards floods the plaza: group up and sweep them before the Baron."
};

pack["10440"] = { "Baron Rivendare", -- (classic era)
	"* The final baron: his Raise Dead (|cff71d5ff|Hspell:17473|h[Raise Dead]|h|r) summons skeletons that MARCH toward him and heal him on contact, and ~12 s later he finishes with Death Pact (|cff71d5ff|Hspell:17471|h[Death Pact]|h|r) — AoE them down from range BEFORE.",
	"* His Shadow Bomb (|cff71d5ff|Hspell:17434|h[Shadow Bomb]|h|r) lands on a player: the group spreads.",
	"* His unholy aura bites anyone close and puts Mortal Wounds on the tank: constant healing on the band."
};

-- ---------------------------------- --
-- Onyxia's Lair : Zona 249 (classic) --
-- ---------------------------------- --

pack["10184"] = { "Onyxia", -- (classic era)
	"* Phase 1 on the ground: her Flame Breath (|cff71d5ff|Hspell:18435|h[Flame Breath]|h|r) punishes the tank, her Wing Buffet (|cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r) sends melee backwards and her Knock Away (|cff71d5ff|Hspell:19633|h[Knock Away]|h|r) breaks the tank's grip.",
	"* Phase 2 airborne: Fireballs (|cff71d5ff|Hspell:18392|h[Fireball]|h|r) on the marked and her Deep Breaths (|cff71d5ff|Hspell:17086|h[Deep Breath]|h|r) sweep half the lair — the chat warning rules: run to the opposite side.",
	"* Phase 3 on landing: all of it comes back and, on top, her Bellowing Roar (|cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r) FEARS half the group; the cave broods rise — AoE the swarm without losing the boss rhythm."
};

-- ---------------------------------- --

P.en = en;
