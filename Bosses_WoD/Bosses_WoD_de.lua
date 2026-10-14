--[[
	Bosses_WoD_de.lua
		Datos auf Deutsch of the WoD
		pack: the two raids (Highmaul, Blackrock Foundry), Hellfire Citadel, the
		dungeons and the Draenor world bosses. Sources: DBM-Raids/Party-WoD and DBM-Draenor
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Bloodmaul Slag Mines : Zona 1175 --
-- --------------------------------- --

pack["74787"] = { "Sklavenwächter Crushto",
"* |cff71d5ff|Hspell:150751|h[Crushing Leap]|h|r: sein Crushing Leap springt auf das Ziel - das markierte Ziel.",
"* |cff71d5ff|Hspell:150759|h[Ferocious Yell]|h|r: unterbreche seinen wütenden Schrei jedes Mal.",
"* |cff71d5ff|Hspell:150801|h[Raise Miners]|h|r: Er hebt seine Bergleute auf - töte die Bergleute schnell.",
"* |cff71d5ff|Hspell:153679|h[Earth Crush]|h|r: sein Erdzerstörung zerstört den Boden – bewege dich aus dem Bereich der Explosion.",
"* |cff71d5ff|Hspell:150753|h[Wild Slam]|h|r: sein Wild Slam schleudert den Gegner zurück – bereite dich auf den Schlag vor.",
};

pack["74790"] = { "Gug'rokk",
"* |cff71d5ff|Hspell:150678|h[Molten Core]|h|r: sein inneres, geschmolzenes Kern brennt – zerstöre ihn sofort.",
"* |cff71d5ff|Hspell:150677|h[Molten Blast]|h|r: seine Molten Blast – stoppe oder unterbreche ihn bei jedem Cast.",
"* |cff71d5ff|Hspell:150755|h[Unstable Slag]|h|r: Die instabilen Slags entzünden sich – verbrennen Sie sie, bevor sie explodieren.",
"* |cff71d5ff|Hspell:150784|h[Magma Eruption]|h|r: Seine Magma-Ausbruchsblasen erzeugen eine Lava-Fläche – bleibe niemals in der Ausbruchszone.",
};

bos = { "Magmolatus",
"* |cff71d5ff|Hspell:149975|h[Dancing Flames]|h|r: seine tanzenden Flammen begleiten ihren Träger – beseitigen Sie sie schnell.",
"* |cff71d5ff|Hspell:150038|h[Molten Impact]|h|r: sein Molten Impact verursacht hohen Schaden – tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:150011|h[Magma Barrage]|h|r: der Magma-Salven-Angriff setzt ein – ausweichen.",
"* |cff71d5ff|Hspell:149941|h[Rough Smash]|h|r: sein Rough Smash erzeugt einen Flächenschaden – rennen Sie aus dem Bereich.",
"* |cff71d5ff|Hspell:149997|h[Firestorm]|h|r: sein Feuersturm – stoppe oder unterbreche ihn bei jedem Cast.",
};
pack["74366"] = bos; pack["74475"] = bos;

pack["75786"] = { "Roltall",
"* |cff71d5ff|Hspell:152940|h[Heat Wave]|h|r: sein Heat Wave verbrennt alle, die sich ihm nähern – haltet Abstand.",
"* |cff71d5ff|Hspell:152939|h[Burning Slag]|h|r: Der Burning Slag verteilt sich unter den Füßen – vermeiden Sie den Slag.",
"* |cff71d5ff|Hspell:153247|h[Fiery Boulder]|h|r: der Feuer-Fels landet an seinem Zielort – rennen Sie vom Fels weg.",
};

-- --------------------------------- --
-- Shadowmoon Burial Grounds : Zona 1176 --
-- --------------------------------- --

pack["75452"] = { "Knochenschlund",
"* |cff71d5ff|Hspell:154175|h[Body Slam]|h|r: sein Body Slam zerstört den Raum – vermeide die Slams.",
"* |cff71d5ff|Hspell:165578|h[Corpse Breath]|h|r: sein Corpse Breath erzeugt einen Auswurf nach vorne – behalte den Auswurf im Auge.",
"* |cff71d5ff|Hspell:177694|h[Submerge]|h|r: Tauchen Sie unter das Glib – bereiten Sie sich auf den Aufstieg vor.",
"* |cff71d5ff|Hspell:153692|h[Necrotische Säure]|h|r: Die nekrotische Säure bildet auf dem Boden eine Pfütze – vermeiden Sie den Kontakt mit der Säure.",
};

pack["76407"] = { "Ner'zhul",
"* |cff71d5ff|Hspell:154350|h[Omen of Death]|h|r: the omen of death - get out of the omen's line.",
"* |cff71d5ff|Hspell:154671|h[Ritual of Bones]|h|r: Der Ritual of Bones ist seine Stärke - bereite dich auf den Ritual vor.",
"* |cff71d5ff|Hspell:154442|h[Malevolence]|h|r: seine Bosheit reißt den Boden auf – vermeide den Aufschlag.",
};

pack["75829"] = { "Nhallish",
"* |cff71d5ff|Hspell:152801|h[Void Vortex]|h|r: the void vortex yanks everyone in - run from the pull.",
"* |cff71d5ff|Hspell:152979|h[Soul Shred]|h|r: Der Soul Shred entzieht dem Spieler seinen Lebensgeist – töte den Geist, um ihn zurückzugeben.",
"* |cff71d5ff|Hspell:153067|h[Void Devastation]|h|r: der Void-Zerstörung – verteile und heile sie aus.",
};

pack["75509"] = { "Sadana Blutfuror",
"* |cff71d5ff|Hspell:153240|h[Dagger Fall]|h|r: Wirf dein Schwert auf die Gegner -> Vermeide die Schwerter.",
"* |cff71d5ff|Hspell:153153|h[Dark Communion]|h|r: Es dunkle Kommunion ernährt sich von seinen Anhängern – bring die Anhänger um.",
"* |cff71d5ff|Hspell:153094|h[Whispers]|h|r: die Flüstertöne greifen jeden an – verteilen und heilen.",
"* |cff71d5ff|Hspell:164974|h[Dark Eclipse]|h|r: Der Dunkle Sonnenfleck reitet seinen Träger – bereite dich auf den Sonnenfleck vor.",
};

-- --------------------------------- --
-- Auchindoun : Zona 1182 --
-- --------------------------------- --

pack["75927"] = { "Azzakel",
"* |cff71d5ff|Hspell:153396|h[Curtain of Flame]|h|r: Der Curtain of Flame zieht sich aus - bewegt euch aus dem Bereich.",
"* |cff71d5ff|Hspell:153234|h[Fel Lash]|h|r: der Fel Lash trifft zu – halte Abstand vom Schlag.",
"* |cff71d5ff|Hspell:157173|h[Fel Stomp]|h|r: sein Fel-Stamp erschüttert – bereite dich auf den Stamp vor.",
"* |cff71d5ff|Hspell:153764|h[Claws of Argus]|h|r: Die Klauen von Argus verursachen Schaden – verbrennen Sie die Klauen schnell.",
};

pack["76177"] = { "Seelenbinderin Nyami",
"* |cff71d5ff|Hspell:154477|h[Shadow Word: Pain]|h|r: Ihre Schmerzen werden von den Trägern getragen – beseitigen Sie sie schnell.",
"* |cff71d5ff|Hspell:155327|h[Soul Vessel]|h|r: dein Soul Vessel – sichere den Angriff um das Gefäß.",
"* |cff71d5ff|Hspell:153991|h[Torn Spirits]|h|r: Sie ruft ihre verzauberten Geister - verbrennen Sie die Geister schnell.",
};

pack["75839"] = { "Kaathar der Wachsame",
"* |cff71d5ff|Hspell:153006|h[Consecrated Light]|h|r: der gesegnete Lichtregen – suchen Sie Schutz hinter dem heiligen Schild.",
"* |cff71d5ff|Hspell:153002|h[Heiliger Schild]|h|r: sein heiliger Schild steht zwischen der Gruppe und dem Licht – halte ihn zur richtigen Zeit hoch.",
"* |cff71d5ff|Hspell:161457|h[Heiliges Gelände]|h|r: Das heilige Gelände verbrennt unter den Füßen – vermeiden Sie den Boden.",
};

pack["77734"] = { "Teron'gor",
"* |cff71d5ff|Hspell:156854|h[Drain Life]|h|r: sein Drain Life heilt ihn – unterbreche es jedes Mal.",
"* |cff71d5ff|Hspell:157168|h[Fixate]|h|r: sein Fixate zielt auf sein Ziel – den markierten Turm –",
"* |cff71d5ff|Hspell:156965|h[Doom]|h|r: his doom - brace the doom and heal hard.",
"* |cff71d5ff|Hspell:156857|h[Regen von Feuer]|h|r: sein Regen von Feuer – vermeiden Sie die fallenden Feuer.",
"* |cff71d5ff|Hspell:156842|h[Korruption]|h|r: Seine Korruption reitet auf seinem Träger – beseitige sie schnell.",
};

-- --------------------------------- --
-- Iron Docks : Zona 1195 --
-- --------------------------------- --

bos = { "Überwacher des Grimmgleises",
"* |cff71d5ff|Hspell:163689|h[Sanguine Sphere]|h|r: der Sanguine Sphere umschließt einen von ihnen – stoppt den Angriff auf den Sphere.",
"* |cff71d5ff|Hspell:163665|h[Flaming Slash]|h|r: sein flaming slash schneidet eine brennende Linie – vermeide den Schlag.",
"* |cff71d5ff|Hspell:165152|h[Lava Swipe]|h|r: Der Lava-Schlag trifft den Boden – bewege dich aus dem Schlag.",
"* |cff71d5ff|Hspell:163379|h[Big Boom]|h|r: der Big Boom – entfernen Sie sich von der Explosion.",
};
pack["80805"] = bos; pack["80816"] = bos; pack["80808"] = bos;

bos = { "Fleischfetzer Nok'gar",
"* |cff71d5ff|Hspell:164426|h[Reckless Provocation]|h|r: seine Recklosigkeit provoziert ihn – stoppen Sie das Angreifen, solange sie wirkt.",
"* |cff71d5ff|Hspell:164835|h[Bloodletting Howl]|h|r: sein Blutvergießender Schrei – stärke den Schrei und heile.",
"* |cff71d5ff|Hspell:164635|h[Burning Arrows]|h|r: die Feuerpfeile regnen herab – vermeiden Sie die Pfeile.",
};
pack["81297"] = bos; pack["81305"] = bos;

pack["79852"] = { "Oshir",
"* |cff71d5ff|Hspell:162415|h[Time to Feed]|h|r: seine Zeit zum Füttern ergreift sein Opfer – heile das Opfer stark, um es zu überleben.",
"* |cff71d5ff|Hspell:161239|h[Rending Slashes]|h|r: die Rend-Schläge treffen ihn frontal – weiche den Angriffen aus.",
"* |cff71d5ff|Hspell:163054|h[Roar]|h|r: Sein Brüllen erzeugt eine Welle – verteile und heile sie aus.",
"* |cff71d5ff|Hspell:178156|h[Acid Splash]|h|r: die Säurepfützen unter den Füßen – vermeiden Sie den Spritzer.",
};

pack["83612"] = { "Skulloc",
"* |cff71d5ff|Hspell:168398|h[Rapid Fire]|h|r: Sein schneller Schuss trifft das Ziel – bewege es, um den Treffer zu vermeiden.",
"* |cff71d5ff|Hspell:168929|h[Cannon Barrage]|h|r: der Cannon Barrage trifft die Deck-Mauer – nutze den Deck-Schutz.",
"* |cff71d5ff|Hspell:168227|h[Gron Smash]|h|r: sein Gron Smash wirft zurück – bereite dich auf den Smash vor.",
};

-- --------------------------------- --
-- Blackrock Foundry : Zona 1205 --
-- --------------------------------- --

pack["77325"] = { "Schwarzfaust",
"* |cff71d5ff|Hspell:156479|h[Massive Demolition]|h|r: die massiven Demolierungen fallen ein – entfernen Sie sich von den Demolierungen.",
"* |cff71d5ff|Hspell:156096|h[Marked for Death]|h|r: sein Todeszeichen wird von seinem Träger getragen - der markierte Brite steht dem Angriff entgegen.",
"* |cff71d5ff|Hspell:156667|h[Siegemaker]|h|r: seine Siegemacher werden aufwachen – verbrennen Sie die Siegemacher schnell.",
"* |cff71d5ff|Hspell:157000|h[Plante Explosivos]|h|r: seine Explosiven landen an markierten Zielen – die markierten Personen entfernen sie.",
"* |cff71d5ff|Hspell:155992|h[Shattering Smash]|h|r: sein Shattering Smash verursacht hohen Schaden – Alternativ-Tanker.",
};

bos = { "Der Schmelzofen",
"* |cff71d5ff|Hspell:155192|h[Bomben]|h|r: Die Sprengbomben landen auf den Markierungen – lasst die Markierten sie schnell fallen.",
"* |cff71d5ff|Hspell:176121|h[Volatile Fire]|h|r: der volatile Feuer-Schlag springt auf jeden, der sich in der Nähe befindet – verteile ihn, damit er nicht weiter springt.",
"* |cff71d5ff|Hspell:155179|h[Ingenieur]|h|r: Sie ruft ihre Ingenieure – verbrennen Sie die Ingenieure schnell.",
"* |cff71d5ff|Hspell:155196|h[Fixiere]|h|r: Fixiere fixiert sich auf sein Ziel – das markierte Gebäude läuft.",
};
pack["76809"] = bos; pack["76806"] = bos;

pack["76865"] = { "Abrichter Darmac",
"* |cff71d5ff|Hspell:154960|h[Halten]|h|r: seine Halte-Spikes treffen den Boden an den Markierungen – vermeiden Sie die Spikes.",
"* |cff71d5ff|Hspell:154975|h[Call the Pack]|h|r: er ruft die Gruppe zusammen – tötet die Kreaturen schnell.",
"* |cff71d5ff|Hspell:155236|h[Crush Armor]|h|r: sein Crush Armor-Effekt reduziert die Rüstung des Tanks – alternativen Tanks.",
"* |cff71d5ff|Hspell:155247|h[Stampede]|h|r: Der Stampede rastet durch – verlasst den Bereich.",
"* |cff71d5ff|Hspell:154989|h[Inferno Breath]|h|r: Sein Inferno-Atem verbrennt die Front – halte ihn fern.",
};

pack["76877"] = { "Gruul",
"* |cff71d5ff|Hspell:155078|h[Overwhelming Blows]|h|r: seine überwältigenden Angriffe verursachen Schaden beim Tank – wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:155080|h[Inferno Slice]|h|r: Sein Inferno Slice verursacht Verbrennung – positioniert euch vor dem Boss und nutzt das Slice gemeinsam.",
"* |cff71d5ff|Hspell:155326|h[Petrifying Slam]|h|r: his petrifying slam stones the group - the petrified burst free.",
"* |cff71d5ff|Hspell:155730|h[Crumbling Roar]|h|r: sein zerbrechliches Brüllen - verteile und heile es durch.",
"* |cff71d5ff|Hspell:173192|h[Cave In]|h|r: der Einsturz stürzt ein – vermeiden Sie die Stürze.",
};

bos = { "Hans'gar und Franzok",
"* |cff71d5ff|Hspell:153470|h[Skullcracker]|h|r: sein Skullcracker trifft den Tank – tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:160838|h[Störsender Brüllen]|h|r: sein störsender Brüllen – stoppe das Zaubern, während er brüllt.",
"* |cff71d5ff|Hspell:156938|h[Crippling Supplex]|h|r: sein Crippling Supplex greift den Tank hart an – wechsle die Tanks ab.",
"* |cff71d5ff|Hspell:161570|h[Searing Plates]|h|r: die Searing Plates erhitzen den Boden – vermeiden Sie die Plates.",
"* |cff71d5ff|Hspell:174825|h[Stampers]|h|r: Die Floor Stampers stoßen mit dem Boden zusammen – niemals unter einen Stamber stehen.",
};
pack["76974"] = bos; pack["76973"] = bos;

bos = { "Die Eisernen Jungfern",
"* |cff71d5ff|Hspell:157854|h[Bombardment Alpha]|h|r: Der Beschuss trifft die Deckschichten – bereiten Sie sich auf den Beschuss vor.",
"* |cff71d5ff|Hspell:156631|h[Rapid Fire]|h|r: er nutzt Rapid Fire, um sein Ziel zu verfolgen – er verfolgt das markierte Ziel und eliminiert es.",
"* |cff71d5ff|Hspell:156214|h[Convulsive Shadows]|h|r: die convulsive Shadows marken ihren Träger – der markierte muss aus der Gruppe entfernt werden.",
"* |cff71d5ff|Hspell:158707|h[Protective Earth]|h|r: ihre schützende Erdbarriere schützt sie – zerstören Sie die Barriere.",
"* |cff71d5ff|Hspell:158315|h[Dark Hunt]|h|r: der Dark Hunt greift sein Ziel an – aus dem Pfad des Jagens.",
};
pack["77557"] = bos; pack["77231"] = bos; pack["77477"] = bos;

pack["76814"] = { "Flammenbändigerin Ka'graz",
"* |cff71d5ff|Hspell:155318|h[Lava Slash]|h|r: Der Lavastoss streift – rennen Sie aus dem Angriff.",
"* |cff71d5ff|Hspell:155277|h[Blazing Radiance]|h|r: Die Blazing Radiance markiert ihren Träger – der Träger hält Abstand.",
"* |cff71d5ff|Hspell:156724|h[Summon Enchanted Armaments]|h|r: Ihre verzauberten Waffen greifen an – verbrennen Sie die Waffen schnell.",
"* |cff71d5ff|Hspell:154932|h[Molten Torrent]|h|r: er spuckt seinen Molten Torrent auf sein Ziel aus – das Ziel muss sich zurückbewegen.",
"* |cff71d5ff|Hspell:155074|h[Charring Breath]|h|r: Sein Verbrennungsatem verbrennt die Front – halte ihn fern.",
};

pack["77692"] = { "Kromog",
"* |cff71d5ff|Hspell:161923|h[Crushing Earth]|h|r: der Angriff \"Crushing Earth\" - die Hände schlagen nach unten – ausweichen.",
"* |cff71d5ff|Hspell:158130|h[Stone Geyser]|h|r: Die Stein-Geysire richten ihre Pfeile auf Ziele – weiche den Geysiren aus.",
"* |cff71d5ff|Hspell:157060|h[Grasping Earth]|h|r: die Grasping Earth-Hände greifen an – begeben Sie sich zurück, bevor sie sich schließen.",
"* |cff71d5ff|Hspell:157054|h[Thundering Blows]|h|r: seine donnernden Schläge erschüttern den Raum – verteidigen Sie sich vor den Schlägen.",
"* |cff71d5ff|Hspell:156852|h[Stone Breath]|h|r: Sein Steinatem erzeugt eine Welle vor ihm – halte ihn davon fern.",
"* |cff71d5ff|Hspell:156766|h[Verzerrte Rüstung]|h|r: Seine verzerrte Rüstung reißt den Tank – alternative Tanks.",
};

pack["77182"] = { "Erzfresser",
"* |cff71d5ff|Hspell:156240|h[Acid Torrent]|h|r: sein Säuresturm zerfällt den Tank – tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:156179|h[Verdorfter Blackrock]|h|r: Sein übeles Erbrochenes strömt aus – rennen Sie aus dem Strahl.",
"* |cff71d5ff|Hspell:155898|h[Rolling Fury]|h|r: sein Rolling Fury rollt sich durch den Raum – bleibe vom Rollweg fern.",
"* |cff71d5ff|Hspell:156877|h[Blackrock Barrage]|h|r: sein Barrage trifft nah – verteile dich und heile.",
};

pack["76906"] = { "Zugführer Thogar",
"* |cff71d5ff|Hspell:176312|h[Train]|h|r: Die Züge fahren in ihren Bahnen -> Stehen Sie niemals in der Bahn eines Zuges.",
"* |cff71d5ff|Hspell:155864|h[Proto Granate]|h|r: Die Proto-Granaten explodieren an ihren Zielen – die markierten Ziele nehmen die Explosion auf.",
"* |cff71d5ff|Hspell:155921|h[Enkindle]|h|r: seine Enkindle-Stacks auf den Tank ausrichten - abwechselnd die Tanks wechseln.",
"* |cff71d5ff|Hspell:159481|h[Verzögerte Belagerungsbombe]|h|r: Die verzögerten Belagerungsbomben treffen an Markierungen – der von der Explosion ausgehende Bereich.",
};

-- --------------------------------- --
-- Grimrail Depot : Zona 1208 --
-- --------------------------------- --

pack["79545"] = { "Nitrogg Donnerturm",
"* |cff71d5ff|Hspell:163550|h[Mortar]|h|r: seine Granaten schießen auf den Boden -> Vermeiden Sie die Granaten.",
"* |cff71d5ff|Hspell:160681|h[Feuerunterdrückung]|h|r: Die Feuerunterdrückung hat eine breite Wirkung – Nutzen Sie den Deckschutz, den der Boden bietet.",
"* |cff71d5ff|Hspell:160943|h[Shrapnel Blast]|h|r: Sein Shrapnel-Schlag trifft vor – bewege dich aus dem Bereich des Schlags.",
};

bos = { "Raketenfunken und Borka",
"* |cff71d5ff|Hspell:162407|h[X21-01A Missile]|h|r: Die Raketen schießen aus – verteilen sich von den Wasserfällen.",
"* |cff71d5ff|Hspell:161090|h[Vollkontakt]|h|r: Vollkontakt verbrennt eine Linie - Verlasst die Angriffslinie.",
"* |cff71d5ff|Hspell:162500|h[VX18-B]|h|r: sein VX-Bombe springt ab – vermeide den Bombenwurf.",
};
pack["77803"] = bos; pack["77816"] = bos;

pack["80005"] = { "Himmelsfürstin Tovra",
"* |cff71d5ff|Hspell:162066|h[Freezing Snare]|h|r: the freezing snares spear down at marks - dodge the snares.",
"* |cff71d5ff|Hspell:163447|h[Mark of Frost]|h|r: Die Marken von Frost reiten auf ihren Trägern – die markierten Charaktere bleiben in Bewegung.",
"* |cff71d5ff|Hspell:162058|h[Spinning Spear]|h|r: sein drehender Speer trifft den Boden – bewegen Sie sich aus dem Speerbereich.",
};

-- --------------------------------- --
-- Skyreach : Zona 1209 --
-- --------------------------------- --

pack["76141"] = { "Araknath",
"* |cff71d5ff|Hspell:154115|h[Fiery Smash]|h|r: seine feuerhaften Angriffe entfachen die Front – bleiben Sie von der Front fern.",
"* |cff71d5ff|Hspell:154162|h[Energize]|h|r: Er trinkt aus seinem Conduit - zerstöre den Conduit, um die Versorgung zu unterbrechen.",
"* |cff71d5ff|Hspell:154135|h[Supernova]|h|r: die Supernova – verteile und heile sie aus.",
};

pack["75964"] = { "Ranjit",
"* |cff71d5ff|Hspell:153757|h[Fan of Blades]|h|r: seine Klingenmuster schneiden in Markierungen – weiche den Mustern aus.",
"* |cff71d5ff|Hspell:156793|h[Chakram Vortex]|h|r: der Chakram-Vortex dreht sich wild – beweg dich aus dem Drehen.",
"* |cff71d5ff|Hspell:153315|h[Wind Fall]|h|r: der Wind trifft den Boden – ausweichen.",
"* |cff71d5ff|Hspell:154043|h[Lens Flare]|h|r: die Blitzlichter verursachen Verbrennungen – vermeiden Sie die Blitze.",
};

pack["76143"] = { "Rukhran",
"* |cff71d5ff|Hspell:1253510|h[Sunbreak]|h|r: Die Sunbreaks zerbrechen sich – verteilen und heilen.",
"* |cff71d5ff|Hspell:1253527|h[Searing Quills]|h|r: die Searing Quills – unterbreche den Blickkontakt, bis sie vorbeigehen.",
"* |cff71d5ff|Hspell:153810|h[Solar Flare]|h|r: der Solar Flare – nutze den Flare und heile.",
"* |cff71d5ff|Hspell:153794|h[Pierce Armor]|h|r: sein Piercing Armor schadet dem Tank - alternative Tanks.",
"* |cff71d5ff|Hspell:159382|h[Quills]|h|r: Die Nadeln verursachen Schaden bei markierten Zielen – unterbrechen die Sichtlinie und heilen.",
};

pack["76266"] = { "Oberste Weise Viryx",
"* |cff71d5ff|Hspell:1253538|h[Scorching Ray]|h|r: Ihre verbrannten Strahlen verletzen ihre Träger – die verbrannten halten sich voneinander fern.",
"* |cff71d5ff|Hspell:1253998|h[Cast Down]|h|r: sein Cast Down verfolgt sein Ziel – das markierte Schild blockt den Speer.",
"* |cff71d5ff|Hspell:154396|h[Solar Blast]|h|r: Nutze deinen Solar Blast - Unterbreche ihn jedes Mal.",
"* |cff71d5ff|Hspell:154055|h[Absorbieren]|h|r: Ihr Schild heilt sich selbst - unterbrechen Sie jeden Cast.",
};

-- --------------------------------- --
-- Highmaul : Zona 1228 --
-- --------------------------------- --

pack["78491"] = { "Farnspore",
"* |cff71d5ff|Hspell:159219|h[Necrotischer Atem]|h|r: Sein nekrotischer Atem trifft ihn selbst – halte ihn fern.",
"* |cff71d5ff|Hspell:163241|h[Rot]|h|r: seine Rot-Stacks auf den Tank ausrichten - die Tanks abwechseln.",
"* |cff71d5ff|Hspell:160022|h[Living Mushroom]|h|r: his living mushrooms mend whoever stands on them - keep the good fungi alive.",
"* |cff71d5ff|Hspell:163590|h[Creeping Moss]|h|r: seine Creeping Moss ernährt ihn – zerstöre das Moos auf seinem Weg.",
"* |cff71d5ff|Hspell:159996|h[Infesting Spores]|h|r: die infesting spores – sichere die Sporen und heile hart.",
};

pack["78714"] = { "Kargath Messerfaust",
"* |cff71d5ff|Hspell:159947|h[Kettenwurf]|h|r: sein Kettenwurf wirft das Opfer in die Ränge – der Kampf mit den Tigern und das Fallen der Stacheln.",
"* |cff71d5ff|Hspell:159178|h[Open Wounds]|h|r: Seine offenen Wunden verletzen den Tank – wechseln Sie die Tanks.",
"* |cff71d5ff|Hspell:158986|h[Berserker Rush]|h|r: sein Berserker-Rush stürmt nach vorne – bewegt euch aus dem Rush.",
"* |cff71d5ff|Hspell:159113|h[Impale]|h|r: Nutzt den Impale, um den Tank zu treffen – bereitet euch auf den Impale vor.",
"* |cff71d5ff|Hspell:159413|h[Mauling Brew]|h|r: Die Mauling-Bier tränken den Boden – vermeiden Sie das Bier.",
};

pack["79015"] = { "Ko'ragh",
"* |cff71d5ff|Hspell:161411|h[Expel Magic: Frost]|h|r: sein Frost-Magie-Ausstoß friert das Ziel ein – das Ziel wird von der tiefen Kälte betroffen.",
"* |cff71d5ff|Hspell:162186|h[Expulse la magia: Arcana]|h|r: las bolas de arcano vuelan libremente - sus marcas atrapan las bolas.",
"* |cff71d5ff|Hspell:156803|h[Null Barrier]|h|r: Verwende den Null-Schild, um alles abzufangen – zerstöre den Schild und nutze den Moment der Verwirrung.",
"* |cff71d5ff|Hspell:163101|h[Trample]|h|r: seine Trample-Angriffe gehen durch – außerhalb des Angriffspfads.",
};

bos = { "Kaiser Mar'gok",
"* |cff71d5ff|Hspell:158605|h[Mark of Chaos]|h|r: der Mark of Chaos reitet auf seinem Träger – der Träger hält sich von der Gruppe fern.",
"* |cff71d5ff|Hspell:156225|h[Branded]|h|r: Die gebrandete Markierung reitet ihren Träger – die gebrandete Rüstung ist der Wendepunkt der Phase.",
"* |cff71d5ff|Hspell:158553|h[Crush Armor]|h|r: sein Crush-Armor-Effekt reduziert die Rüstung des Tanks – alternative Tanks.",
"* |cff71d5ff|Hspell:165243|h[Glimpse of Madness]|h|r: die Glimpse of Madness reißen sich los – entfernen Sie sich von den Glimpse.",
"* |cff71d5ff|Hspell:178607|h[Dark Star]|h|r: die dunklen Sterne bewegen sich - berühren Sie die Sterne nicht.",
};
pack["77428"] = bos; pack["78623"] = bos;

bos = { "Tectus",
"* |cff71d5ff|Hspell:162346|h[Kristallene Salve]|h|r: Die kristallene Salve verfolgt ihre Ziele – locken Sie die Fragmente ab.",
"* |cff71d5ff|Hspell:162475|h[Tectonic Upheaval]|h|r: der tektonische Aufruhr – bereite dich auf den Aufruhr vor und heile.",
"* |cff71d5ff|Hspell:162518|h[Earthen Pillar]|h|r: die Erdtürme stossen auf Ziele ein – weiche den Türmen aus.",
"* |cff71d5ff|Hspell:162968|h[Earthen Pfeile]|h|r: die earthen Pfeile schießen nach außen – bewege dich aus dem Angriffsbereich.",
"* |cff71d5ff|Hspell:162894|h[Geschenk der Erde]|h|r: sein Geschenk der Erde schützt ihn – zerstöre den Schild.",
};
pack["78948"] = bos; pack["80557"] = bos; pack["80551"] = bos;

pack["77404"] = { "Der Schlächter",
"* |cff71d5ff|Hspell:156157|h[Cleave]|h|r: seine Cleaves bewegen sich vorwärts – die Nahkämpfer halten sich zurück.",
"* |cff71d5ff|Hspell:156151|h[Tenderizer]|h|r: seine Tenderizer wirken auf den Tank – tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:156152|h[Gushing Wounds]|h|r: the gushing wounds leap to whoever stands close - spread so they stop leaping.",
"* |cff71d5ff|Hspell:156160|h[Bounding Cleave]|h|r: der Bounding Cleave – versammeln Sie sich vorne und teilen Sie den Schaden.",
"* |cff71d5ff|Hspell:156598|h[Frenzy]|h|r: Sein Frenzy erreicht seinen Höhepunkt, wenn er wenig Leben hat – bring ihn durch diesen Zustand zu Fall.",
};

bos = { "Ogronzwillinge",
"* |cff71d5ff|Hspell:157943|h[Whirl Wind]|h|r: der Whirlwind dreht sich wild – bewegt euch aus dem Drehen.",
"* |cff71d5ff|Hspell:158385|h[Pulverize]|h|r: Die Pulverize-Angriffe verursachen großen Schaden im Frontbereich – verteilen sich aus dem Aufprall.",
"* |cff71d5ff|Hspell:158057|h[Enfeebling Roar]|h|r: sein schwächendes Brüllen - bereite dich auf den Angriff vor und heile.",
"* |cff71d5ff|Hspell:158241|h[Feuersturm]|h|r: Der Feuersturm rollt eine Linie ab - vermeide die Linie.",
"* |cff71d5ff|Hspell:158134|h[Shield Charge]|h|r: sein Schildstoß markiert einen Pfad – räume den Angriffspfad frei.",
"* |cff71d5ff|Hspell:163372|h[Arcane Volatility]|h|r: Die arcane Volatility wird von ihrem Träger getragen – der Träger steht abseits.",
};
pack["78238"] = bos; pack["78237"] = bos;

-- --------------------------------- --
-- The Everbloom : Zona 1279 --
-- --------------------------------- --

bos = { "Uralte Beschützer",
"* |cff71d5ff|Hspell:168082|h[Revitalize]|h|r: seine revitalisierenden Tränke heilen ihn – unterbreche sie bei jedem Wirken.",
"* |cff71d5ff|Hspell:427510|h[Noxious Charge]|h|r: sein giftiger Angriff verfehlt seinen Ziel - räumen Sie den Angriffspfad.",
"* |cff71d5ff|Hspell:427459|h[Toxische Blüte]|h|r: Die toxischen Blüten blühen – vermeiden Sie die Blüten.",
"* |cff71d5ff|Hspell:167977|h[Bramble]|h|r: die Dornen verlangsamen den Boden – vermeiden Sie die Dornen.",
};
pack["83894"] = bos; pack["83892"] = bos; pack["83893"] = bos;

pack["82682"] = { "Erzmagierin Sol",
"* |cff71d5ff|Hspell:427899|h[Cinderbolt Storm]|h|r: Dein Cinderbolt Storm trifft den Raum – vermeide die Bolzen.",
"* |cff71d5ff|Hspell:428082|h[Glacial Fusion]|h|r: Verwende deine Glacial Fusion-Kugeln nicht – vermeide die verschmolzenen Kugeln.",
"* |cff71d5ff|Hspell:428139|h[Spatial Compression]|h|r: Nutzt seine Spatial Compression, um alle anzuziehen – rennt von der Anforderung weg.",
"* |cff71d5ff|Hspell:427863|h[Frostbolt]|h|r: Interrupt his frostbolts at every cast.",
};

pack["81522"] = { "Bleichborke",
"* |cff71d5ff|Hspell:164294|h[Unchecked Growth]|h|r: Ihr unkontrolliertes Wachstum wird von Ihnen getragen – verbrennen Sie das Wachstum, bevor es austritt.",
"* |cff71d5ff|Hspell:164275|h[Brittle Bark]|h|r: sein Fell wird nach dem Wachstum brüchig – Nahangriffe verletzen ihn dadurch.",
"* |cff71d5ff|Hspell:164357|h[Parched Grasp]|h|r: sein parched grasp verbrennt von vorne – halte ihn in Reichweite.",
};

pack["84550"] = { "Xeri'tac",
"* |cff71d5ff|Hspell:169233|h[Inhale]|h|r: Sein Einatmen zieht alle an – bereite dich auf den Sog vor.",
"* |cff71d5ff|Hspell:169382|h[Gaseous Volley]|h|r: seine gasförmigen Salven bilden eine Wolke, die dich aus der Wolke drängt.",
"* |cff71d5ff|Hspell:169223|h[Toxische Gas]|h|r: Das toxische Gas bleibt unter den Füßen – vermeiden Sie den Kontakt.",
};

pack["83846"] = { "Yalnu",
"* |cff71d5ff|Hspell:428746|h[Feuerpfeil]|h|r: seine Feuerpfeile bewegen sich entlang ihrer Linien – vermeide die Linien.",
"* |cff71d5ff|Hspell:428823|h[Verdant Eruption]|h|r: sein grüner Ausbruch verursacht, dass die Lashers Schaden erleiden – Verbrenne die Lashers schnell.",
"* |cff71d5ff|Hspell:169179|h[Colossal Blow]|h|r: sein Colossal Blow trifft den Boden – bewege dich aus dem Angriff.",
"* |cff71d5ff|Hspell:169251|h[Entanglement]|h|r: Das Entwirren verlangsamt einen Spieler – befreie den verlangsamten.",
"* |cff71d5ff|Hspell:173563|h[Lasher Venom]|h|r: unterbreche den Zaussatz von [Lasher Venom] sofort.",
};

-- --------------------------------- --
-- Upper Blackrock Spire : Zona 1358 --
-- --------------------------------- --

pack["76413"] = { "Erzformer Gor'ashan",
"* |cff71d5ff|Hspell:166168|h[Power Conduit]|h|r: Seine Power-Konditionen summieren sich um ihn herum – zerstören Sie die Konditionen, um seinen Zauber zu unterbrechen.",
"* |cff71d5ff|Hspell:154448|h[Shrapnel Nova]|h|r: sein Shrapnel Nova-Angriff verursacht massiven Schaden und schleudert dich. Vermeide den Angriff.",
};

pack["76021"] = { "Kyrak",
"* |cff71d5ff|Hspell:161203|h[Rejuvenating Serum]|h|r: sein Rejuvenating Serum heilt ihn – unterbreche das Serum bei jedem Cast.",
"* |cff71d5ff|Hspell:161199|h[Debilitating Fixation]|h|r: Unterbreche seine debilitierende Fixation bei jedem Cast.",
"* |cff71d5ff|Hspell:155037|h[Eruption]|h|r: Die Eruptionen treffen unter den Füßen – stehen Sie niemals im Bereich des Aufpralls.",
"* |cff71d5ff|Hspell:161288|h[Vileblood Serum]|h|r: Der Vileblood-Serum bildet auf dem Boden Pfützen – vermeiden Sie die Pfützen.",
};

pack["76585"] = { "Zornschwinge die Ungezähmte",
"* |cff71d5ff|Hspell:155620|h[Burning Rage]|h|r: sein \"Burning Rage\"-Effekt wird bei geringem Leben ausgelöst - bring ihn durch diesen Effekt zum Verbrühen.",
"* |cff71d5ff|Hspell:155051|h[Magma Spit]|h|r: sein Magmaspray trifft das Ziel – der Zielpunkt muss den Sprühangriff abwehren.",
"* |cff71d5ff|Hspell:155057|h[Magma Pool]|h|r: die Magmapools verteilen sich unter den Füßen – vermeiden Sie die Pools.",
"* |cff71d5ff|Hspell:154996|h[Engulfing Fire]|h|r: sein Engulfing Fire trifft seine Vorderseite - halte ihn von der Flamme fern.",
};

bos = { "Kommandant Tharbek",
"* |cff71d5ff|Hspell:161989|h[Iron Reaver]|h|r: sein Iron Reaver durchfährt – aus dem Angriffsvektor.",
"* |cff71d5ff|Hspell:162090|h[Imbued Iron Axe]|h|r: sein imbuester Eisen-Axt fliegt auf die Ziele zu – vermeide den Axtschlag.",
"* |cff71d5ff|Hspell:161833|h[Noxious Spit]|h|r: seine giftigen Spritzer sammeln sich unter deinen Füßen – vermeide die Spritzer.",
};
pack["79912"] = bos; pack["80098"] = bos;

pack["77120"] = { "Kriegsfürstin Zaela",
"* |cff71d5ff|Hspell:155673|h[Destructive Smite]|h|r: Ihr Destructive Smite verursacht hohen Schaden - wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:155705|h[Rebounding Blade]|h|r: Das Abprallen des Schwertes – weiche dem Schwert aus.",
"* |cff71d5ff|Hspell:155721|h[Black Iron Cyclone]|h|r: Ihr Black Iron Cyclone dreht sich – bewegt euch aus dem Dreh.",
};

-- --------------------------------- --
-- Hellfire Citadel : Zona 1448 --
-- --------------------------------- --

pack["91331"] = { "Archimonde",
"* |cff71d5ff|Hspell:182879|h[Doomfire Fixate]|h|r: Das Doomfire verfolgt sein Ziel – führe es so, dass es verglüht.",
"* |cff71d5ff|Hspell:183254|h[Allure of Flames]|h|r: Der Zauber stößt alle im Raum -> Verteidigen Sie den Stoß.",
"* |cff71d5ff|Hspell:183817|h[Fel-Explosion]|h|r: Die Fel-Explosionen treffen ihre Ziele – die markierten Gegner ziehen sich zurück.",
"* |cff71d5ff|Hspell:184964|h[Shackled Torment]|h|r: Die Shackled Torment halten ihre Träger fest – die Shackled brechen nacheinander aus.",
"* |cff71d5ff|Hspell:184265|h[Wrought Chaos]|h|r: die Feuer des Wrought Chaos zwischen den Verbindungen – überqueren Sie nicht die Chaos-Linien.",
"* |cff71d5ff|Hspell:186574|h[Dread Fixate]|h|r: Der Dread jagt sein Ziel – fliege das Ziel, um dem Dread auszuweichen.",
};

pack["90199"] = { "Blutschatten",
"* |cff71d5ff|Hspell:179864|h[Shadow of Death]|h|r: Der Schatten des Todes verschluckt sein Ziel vollständig – der verschluckte Brand verbrennt es von innen.",
"* |cff71d5ff|Hspell:179977|h[Touch of Doom]|h|r: Der Touch of Doom springt auf denjenigen, der sich in der Nähe befindet - der Betroffene sollte sich zurückziehen.",
"* |cff71d5ff|Hspell:179995|h[Doom Well]|h|r: die Doom Wells füllen den Boden – vermeiden Sie die Wells.",
"* |cff71d5ff|Hspell:179909|h[Shared Fate]|h|r: Shared Fate bindet seinen Partner – halte die Bindung gedehnt.",
"* |cff71d5ff|Hspell:180148|h[Hunger for Life]|h|r: Sein Hunger nach dem Leben wächst, während die Geister leben – verbrennen Sie die Geister schnell.",
};

pack["90019"] = { "Höllenfeuerangriff",
"* |cff71d5ff|Hspell:180079|h[Felfire Munitions]|h|r: Die Felfire Munitions-Ansammlung – zerstöre sie, bevor die Zündschnur detoniert.",
"* |cff71d5ff|Hspell:160240|h[Felfire Crusher]|h|r: seine felfire crushers greifen an - töte die Crushers schnell.",
"* |cff71d5ff|Hspell:181155|h[Fel-Zauberer]|h|r: Die Fel-Zauberer halten ihre Zauber - unterbrechen die Zauberer.",
"* |cff71d5ff|Hspell:184369|h[Howling Axe]|h|r: die Howling Axes rotieren – vermeide die Schwerter.",
"* |cff71d5ff|Hspell:180945|h[Nova]|h|r: die Kanonen-Novas verursachen großen Schaden – bereite dich auf die Nova vor.",
};

bos = { "Hoher Rat des Höllenfeuers",
"* |cff71d5ff|Hspell:184449|h[Mark of the Necromancer]|h|r: die Markierungen springen auf denjenigen zu, der sich in der Nähe befindet – verteilen Sie sie so, dass sie nicht mehr springen.",
"* |cff71d5ff|Hspell:184476|h[Reap]|h|r: der Ernte-Schere markiert den Boden des Ziels – verlasst den Ernte-Bereich.",
"* |cff71d5ff|Hspell:184360|h[Fel Rage]|h|r: sein Fel-Zorn verbrennt ihn – bereite dich auf den Zorn vor.",
"* |cff71d5ff|Hspell:184847|h[Acidic Wound]|h|r: his acidic wounds gash the tank - alternate tanks.",
"* |cff71d5ff|Hspell:184681|h[Darkness]|h|r: seine Dunkelheit - halte dich von der Dunkelheit fern.",
};
pack["92142"] = bos; pack["92144"] = bos; pack["92146"] = bos;

pack["90284"] = { "Eiserner Häscher",
"* |cff71d5ff|Hspell:182280|h[Artillerie]|h|r: Die Artillerie-Geschosse zielen auf Marker – die markierten Ziele rennen den Geschossen davon.",
"* |cff71d5ff|Hspell:182001|h[Unstable Orb]|h|r: die instabilen Kugeln schweben heraus – vermeiden Sie die Kugeln.",
"* |cff71d5ff|Hspell:182020|h[Pounding]|h|r: seine hämmernden Fäuste schlagen durch den Raum – bereite dich auf den Schlag vor.",
"* |cff71d5ff|Hspell:179889|h[Blitz]|h|r: sein Blitz verläuft über das Feld – außerhalb des Blitzpfads.",
"* |cff71d5ff|Hspell:182074|h[Immolation]|h|r: der Verbrennungseffekt verbrennt den Boden – vermeiden Sie die Verbrennung.",
};

pack["90316"] = { "Schattenfürst Iskar",
"* |cff71d5ff|Hspell:179202|h[Eye of Anzu]|h|r: der Blick von Anzu blendet den Träger – geben Sie den Blick an diejenige, die Sehen muss.",
"* |cff71d5ff|Hspell:181957|h[Phantasmal Winds]|h|r: die Phantasmalen Winde blenden den Träger – der Träger lehnt sich an das Auge.",
"* |cff71d5ff|Hspell:182178|h[Fel Chakram]|h|r: seine Fel Chakrams fliegen auf Markierungen zu – weiche den Chakrams aus.",
"* |cff71d5ff|Hspell:182582|h[Laser]|h|r: sein Laser erfasst einen Bereich – halten Sie diesen Bereich frei von dem Strahl.",
"* |cff71d5ff|Hspell:179219|h[Phantasmal Fel Bomb]|h|r: Die Fel-Bombe explodiert an ihrem Ziel – die markierten Spieler nehmen den Schaden.",
};

pack["90378"] = { "Kilrogg Totauge",
"* |cff71d5ff|Hspell:180372|h[Heartseeker]|h|r: der Heartseeker reitet auf seinen Zielen – die markierten Kreaturen laufen auseinander.",
"* |cff71d5ff|Hspell:180313|h[Demonic Possession]|h|r: die Toten verursachen dämonische Besessenheit – tötet die besessenen Kreaturen schnell.",
"* |cff71d5ff|Hspell:180199|h[Shred]|h|r: Seine zerreißenden Krallen reißen Rüstung ab - alternative Tanks.",
"* |cff71d5ff|Hspell:181488|h[Vision of Death]|h|r: Die Visionen des Todes rufen die Blinden – verbrennen Sie die Visionen schnell.",
"* |cff71d5ff|Hspell:180224|h[Death Throes]|h|r: seine Todesangst – verteile und heile es durch.",
};

pack["90435"] = { "Kormrok",
"* |cff71d5ff|Hspell:180244|h[Pound]|h|r: Seine \"Pound\"-Angriffe zerstören den Raum – verteile dich, damit die \"Pound\"-Angriffe nicht zusammen treffen.",
"* |cff71d5ff|Hspell:181306|h[Explosive Burst]|h|r: Die explodierenden Hände greifen ihre Ziele an und verursachen eine Explosion – die Ziele fliehen von der Explosion.",
"* |cff71d5ff|Hspell:181292|h[Fel Outpouring]|h|r: der Fel-Ausbruch kommt in Wellen - weichen Sie den Wellen aus.",
"* |cff71d5ff|Hspell:181305|h[Swat]|h|r: sein Swat wirft seinen Tank-Flug ab - alternative Tanks.",
"* |cff71d5ff|Hspell:186882|h[Enrage]|h|r: sein Wutlevel erreicht seinen Höhepunkt, wenn er wenig Leben hat – bring ihn durch diesen Zustand zum Fallen.",
};

pack["91349"] = { "Mannoroth",
"* |cff71d5ff|Hspell:181275|h[Curse of the Legion]|h|r: Der Fluch reitet auf seinen Trägern – die Träger bleiben getrennt.",
"* |cff71d5ff|Hspell:181099|h[Mark of Doom]|h|r: Der Mark of Doom verfolgt seinen Träger – der Markierte wird zurückgerufen.",
"* |cff71d5ff|Hspell:181735|h[Fel-Sucher]|h|r: Seine Fel-Sucher greifen ihre Ziele an – vermeide den Angriff.",
"* |cff71d5ff|Hspell:181180|h[Inferno]|h|r: die Infernos fallen auf Markierungen – weiche den Stürzen aus.",
"* |cff71d5ff|Hspell:186362|h[Wrath of Gul'dan]|h|r: der Zorn von Gul'dan erreicht seinen Höhepunkt – bereite dich auf den Zorn vor und heile hart.",
};

pack["92330"] = { "Socrethar der Ewige",
"* |cff71d5ff|Hspell:183017|h[Fel Prison]|h|r: seine Fel-Gefangenschaften fangen ihre Träger ein – befreie die Taschen sofort.",
"* |cff71d5ff|Hspell:180221|h[Volatile Fel Orb]|h|r: die instabilen Fel-Orbs verfolgen ihre Ziele – die markierten lenken sie ab.",
"* |cff71d5ff|Hspell:182051|h[Fel Charge]|h|r: sein Fel Charge – entfernen Sie sich von der Angriffslinie.",
"* |cff71d5ff|Hspell:182769|h[Ghastly Fixation]|h|r: Die Ghastly Fixations verfolgen ihre Träger – die Träger müssen sie ausweichen.",
};

pack["90269"] = { "Tyrannin Velhari",
"* |cff71d5ff|Hspell:180166|h[Touch of Harm]|h|r: Ihre Touch of Harm heilt sie selbst, wenn sie einen Spieler berührt – lösen Sie sie schnell auf.",
"* |cff71d5ff|Hspell:180260|h[Annihilation Strike]|h|r: Ihre Annihilation Strikes verlangsamen den Tank – wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:180000|h[Seal of Decay]|h|r: Sein Siegel der Verwesung begleitet seinen Träger – der Träger hält andere fern.",
"* |cff71d5ff|Hspell:180600|h[Bulwark of the Tyrant]|h|r: seine Mauer absorbiert alles – zerstöre die Mauer.",
};

pack["93068"] = { "Xhul'horac",
"* |cff71d5ff|Hspell:186134|h[Fel-berührt]|h|r: Der Fel-Berührungsangriff markiert den Träger – der Markierte hält seine Flammen fern.",
"* |cff71d5ff|Hspell:186490|h[Fel Ketten]|h|r: die Fel Ketten greifen an – weiche den Ketten aus.",
"* |cff71d5ff|Hspell:112866|h[Imps]|h|r: seine Imps stürmen an – verbrenne die Imps schnell.",
"* |cff71d5ff|Hspell:187204|h[Overwältigende Chaos]|h|r: Der überwältigende Chaos erreicht seinen Höhepunkt – bereite dich auf den Chaos vor und heile hart.",
"* |cff71d5ff|Hspell:186073|h[Fel Singed]|h|r: der Fel Singed bleibt am Boden – vermeiden Sie den Singed.",
};

pack["89890"] = { "Teufelslord Zakuun",
"* |cff71d5ff|Hspell:179407|h[Disembodied]|h|r: ihre disembodied Seelen markieren ihre Träger – die markierten Personen bleiben von der Gruppe fern.",
"* |cff71d5ff|Hspell:179711|h[Befouled]|h|r: der Befouled-Effekt erzeugt auf den Trägern einen Pool, der den Boden kontaminiert – vermeiden Sie den Kontakt.",
"* |cff71d5ff|Hspell:181508|h[Seed of Destruction]|h|r: die Samen der Zerstörung explodieren unter den Füßen – weiche den Samen aus.",
"* |cff71d5ff|Hspell:179406|h[Soul Cleave]|h|r: sein Soul Cleave verteilt den Schaden im Raum -> verteile dich, um den Schaden zu teilen.",
"* |cff71d5ff|Hspell:179681|h[Enrage]|h|r: sein Wutlevel erreicht seinen Höhepunkt bei niedrigem Leben - bring ihn durch diese Phase zum Verbrühen.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["90802"] = { "Annihilon",
"* |cff71d5ff|Hspell:180939|h[Void Bomb]|h|r: seine Void-Bomben explodieren an ihrem Ziel – die markierten fliehen der Explosion.",
"* |cff71d5ff|Hspell:180932|h[Whirling Void]|h|r: seine Whirling Voids drehen sich – halten Sie sich von den Wirbeln fern.",
"* |cff71d5ff|Hspell:180950|h[Twist of Mind]|h|r: sein Twist of Mind entführt einen Spieler – die Gruppe befreit den Spieler.",
};

pack["90841"] = { "Drogan",
"* |cff71d5ff|Hspell:180882|h[Whirling Axe]|h|r: seine wirbelnden Äxte kehren ab - vermeide die Äxte.",
"* |cff71d5ff|Hspell:180880|h[Chain Grasp]|h|r: sein Chain Grasp fess seine Opfer ein – zerreiße die Ketten schnell.",
};

pack["81252"] = { "Drov der Zerstörer",
"* |cff71d5ff|Hspell:175791|h[Colossal Slam]|h|r: sein Colossal Slam trifft den Boden – bewege dich aus dem Schlag.",
"* |cff71d5ff|Hspell:175827|h[Call of Earth]|h|r: sein Ruf der Erde – bereite dich auf den Ruf vor und heile.",
};

pack["90943"] = { "Gaur",
"* |cff71d5ff|Hspell:180879|h[Goren]|h|r: seine Gorens greifen an – beseitige die Gorens schnell.",
"* |cff71d5ff|Hspell:180868|h[Earthen Slam]|h|r: Sein Earthen Slam schleudert den Gegner.",
"* |cff71d5ff|Hspell:180830|h[Runic Spike]|h|r: die runischen Stacheln steigen auf – vermeide die Stacheln.",
};

pack["90995"] = { "Goggnathog",
"* |cff71d5ff|Hspell:180908|h[Freigesetzte Energie]|h|r: Seine freigesetzte Energie verursacht einen Flächenschaden – rennen Sie aus dem Bereich.",
"* |cff71d5ff|Hspell:180815|h[Wild Polymorph]|h|r: Die Wild Polymorph verwandelt ihren Träger – brechen Sie sie frühzeitig auf.",
"* |cff71d5ff|Hspell:180819|h[Arcane Orb]|h|r: die Arcane-Orbs schweben heraus – vermeide die Orbs.",
"* |cff71d5ff|Hspell:180816|h[Arcane Surge]|h|r: unterbreche seinen Arcane Surge bei jedem Cast.",
};

pack["94015"] = { "Oberster Herr Kazzak",
"* |cff71d5ff|Hspell:187668|h[Mark of Kazzak]|h|r: sein Zeichen springt auf jeden, der sich ihm nähert – verteile es, damit es nicht mehr springt.",
"* |cff71d5ff|Hspell:187466|h[Doom]|h|r: his doom - brace the doom and heal hard.",
};

pack["91012"] = { "Lady Fleshsear",
"* |cff71d5ff|Hspell:180774|h[Regen von Feuer]|h|r: Nutze deinen Regen von Feuer – verteile und heile ihn.",
"* |cff71d5ff|Hspell:180776|h[Overwhelming Flames]|h|r: seine überwältigenden Flammen erlöschen – rennen Sie vor den Flammen weg.",
"* |cff71d5ff|Hspell:180779|h[Call of Flame]|h|r: Nutze deinen Call of Flame - bereite dich auf den Angriff vor.",
};

pack["83746"] = { "Rukhmar",
"* |cff71d5ff|Hspell:167615|h[Pierced Armor]|h|r: Dein Pierced Armor-Effekt verlangsamt den Tank – wechsle die Tanks ab.",
"* |cff71d5ff|Hspell:167647|h[Loose Quills]|h|r: er wirft seine lose Federn – verteile und heile.",
"* |cff71d5ff|Hspell:167679|h[Solar Breath]|h|r: Halte ihren Solar Breath, damit er ihre Vorderseite berührt – halte ihn fern.",
"* |cff71d5ff|Hspell:167630|h[Explode]|h|r: Ihr Explodiere-Angriffe stoßen Gegner weg - entfernen Sie sich von der Explosion.",
};

pack["81535"] = { "Tarlna Gorosi",
"* |cff71d5ff|Hspell:176004|h[Savage Vines]|h|r: seine wilden Ranken greifen an – entkommen Sie den Ranken.",
"* |cff71d5ff|Hspell:175973|h[Colossal Blow]|h|r: sein Colossal Blow trifft den Boden – bewege dich aus dem Angriff.",
"* |cff71d5ff|Hspell:175979|h[Genesis]|h|r: sein Ursprung überschwemmt die Wurzeln – beseitigen Sie die neu sprießenden Wurzeln schnell.",
"* |cff71d5ff|Hspell:176013|h[Wachsen Sie unkontrollierte Mandragore an]|h|r: Seine Mandragore werden aufwachen – töten Sie sie schnell.",
"* |cff71d5ff|Hspell:176037|h[Noxious Spit]|h|r: seine giftigen Spritzer sammeln sich unter Ihren Füßen – vermeiden Sie die Spritzer.",
};

pack["90946"] = { "Teluur",
"* |cff71d5ff|Hspell:180849|h[Haufen von Podlings]|h|r: Die Haufen von Podlings stürmen an - Verbrenne die Podlings schnell.",
"* |cff71d5ff|Hspell:180836|h[Entanglement]|h|r: Die Entanglements verankern den Boden – stehen Sie niemals in der Nähe der Wurzeln.",
"* |cff71d5ff|Hspell:180825|h[Spore]|h|r: die Sporen breiten sich aus – vermeiden Sie die Sporen.",
};

P.de = de;
