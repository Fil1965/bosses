--[[
	Bosses_Shadowlands_de.lua
		Datos auf Deutsch of the Shadowlands
		pack: the zones' dungeons, Tazavesh and its three raids, plus
		the world bosses. Sources: DBM-Raids-Shadowlands, DBM-Party-Shadowlands
		and DBM-Shadowlands (_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the
		tactics were filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Sanguine Depths : Zona 2284 --
-- --------------------------------- --

pack["162103"] = { "Henker Tarvold",
"* |cff71d5ff|Hspell:322554|h[Castigate]|h|r: Castigate verbrät den markierten Spieler - haltet Heilungen bereit.",
"* |cff71d5ff|Hspell:322574|h[Spiteful Manifestation]|h|r: Eine Manifestation erhebt sich - tötet sie, bevor sie wirkt.",
"* |cff71d5ff|Hspell:328494|h[Sin-touched Anima]|h|r: Die Anima verleiht ihnen Macht - brecht sie schnell auf.",
};

pack["162099"] = { "Generalin Kaal",
"* |cff71d5ff|Hspell:323845|h[Wicked Rush]|h|r: Die Angriffs richten sich quer durch den Raum aus - verlagern Sie sich aus dem Lauf.",
"* |cff71d5ff|Hspell:324086|h[Shining Radiance]|h|r: Die Strahlung schützt ihre Verbündeten - brechen Sie sie auf.",
"* |cff71d5ff|Hspell:322903|h[Gloom Squall]|h|r: Der Sturm verdunkelt den Raum - verstecken Sie sich hinter den Säulen.",
};

pack["162102"] = { "Großaufseherin Beryllia",
"* |cff71d5ff|Hspell:325360|h[Rite of Supremacy]|h|r: Der Ritus kanalisiert die finale Phase – behalte den Angriff bei und achte auf die Becken.",
"* |cff71d5ff|Hspell:325254|h[Iron Spikes]|h|r: Die Spikes durchbrechen den Boden – Defensive Cooldowns aktivieren.",
"* |cff71d5ff|Hspell:326039|h[Endless Torment]|h|r: Der Fluch wirkt – unterbreche ihn schnell.",
};

pack["162100"] = { "Kryxis der Gefräßige",
"* |cff71d5ff|Hspell:319650|h[Vicious Headbutt]|h|r: Schlägt den Tank hart - erhöht die Verteidigung.",
"* |cff71d5ff|Hspell:319654|h[Hungering Drain]|h|r: Der Drain frisst seinen Träger - reinige ihn und heile ihn durch.",
"* |cff71d5ff|Hspell:319685|h[Severing Smash]|h|r: Der Smash betäubt den Tank - stütze ihn ab.",
"* |cff71d5ff|Hspell:319713|h[Juggernaut Charge]|h|r: Der Charge markiert einen Spieler - die Gruppe versammelt sich, um den Treffer zu teilen.",
};

-- --------------------------------- --
-- Spires of Ascension : Zona 2285 --
-- --------------------------------- --

pack["162061"] = { "Devos, Paragon des Zweifels",
"* |cff71d5ff|Hspell:323943|h[Run Through]|h|r: Sie sticht mit ihrem Speer durch die markierte - die markierte bewegt sich ständig.",
"* |cff71d5ff|Hspell:322818|h[Lost Confidence]|h|r: Selbstvertrauen entzieht dem Rudel - heilen Sie durch die Verzweiflung.",
"* |cff71d5ff|Hspell:334625|h[Abyssal Detonation]|h|r: Die Detonation füllt den Raum - zerstören Sie sie hinter den Säulen.",
};

bos = { "Kin-Tara",
"* |cff71d5ff|Hspell:321009|h[Charged Spear]|h|r: Der Speer greift den markierten Spieler an - laufe ihn aus.",
"* |cff71d5ff|Hspell:320966|h[Overhead Slash]|h|r: Der Schnitt auf den Tank - Defensivzauber wirken.",
"* |cff71d5ff|Hspell:327481|h[Dark Lance]|h|r: Der Speer wirkt - unterbreche ihn.",
"* |cff71d5ff|Hspell:324368|h[Barrage]|h|r: Der Barrage verfolgt sein Ziel - halte Abstand zum Glühen.",
};
pack["162059"] = bos; pack["163077"] = bos;

pack["162060"] = { "Oryphrion",
"* |cff71d5ff|Hspell:338731|h[Charged Stomp]|h|r: Der Stoß erschüttert den Raum – positioniert euch.",
"* |cff71d5ff|Hspell:334053|h[Purifying Blast]|h|r: Der Schuss detoniert weit – verteilt euch.",
"* |cff71d5ff|Hspell:324427|h[Empyreal Ordnance]|h|r: Die Ordnance stürzt herab – beendet den Kampf.",
"* |cff71d5ff|Hspell:324392|h[Anima Field]|h|r: Ein Feld baut sich um ihn herum auf – zieht ihn aus dem Glanz.",
};

pack["162058"] = { "Ventunax",
"* |cff71d5ff|Hspell:324205|h[Blinding Flash]|h|r: Der Blitz stunnt vor ihr – bleiben Sie von ihren Flanken fern.",
"* |cff71d5ff|Hspell:334485|h[Recharge]|h|r: Der Recharge ernährt sich vom Anima – bewegen Sie sich seitlich vom Glühen.",
};

-- --------------------------------- --
-- The Necrotic Wake : Zona 2286 --
-- --------------------------------- --

pack["163157"] = { "Amarth der Ernter",
"* |cff71d5ff|Hspell:321226|h[Land of the Dead]|h|r: Skelette steigen um ihn herum auf - bringe sie mit AoE nieder.",
"* |cff71d5ff|Hspell:321247|h[Final Harvest]|h|r: Die Ernte durchstreicht den Raum - bereite dich vor.",
"* |cff71d5ff|Hspell:333493|h[Necrotic Breath]|h|r: Atem kommt - die Nahkämpenden ziehen sich zurück.",
"* |cff71d5ff|Hspell:320170|h[Necrotic Bolt]|h|r: Der Bolzen wirkt - unterbreche ihn.",
"* |cff71d5ff|Hspell:322493|h[Frostbolt Volley]|h|r: Volley von Frostbolzen - unterbreche ihn.",
};

pack["162691"] = { "Pestknochen",
"* |cff71d5ff|Hspell:320637|h[Fetid Gas]|h|r: Gas bildet Pfützen auf dem Boden - vermeiden.",
"* |cff71d5ff|Hspell:320596|h[Heaving Retch]|h|r: Erbrochen in einem breiten Bereich - vermeiden.",
"* |cff71d5ff|Hspell:320655|h[Crunch]|h|r: Greift den Tank hart an - Defensivpositionen vorbereiten.",
};

pack["162693"] = { "Nalthor der Eisbinder",
"* |cff71d5ff|Hspell:321754|h[Icebound Aegis]|h|r: Der Schild hält – durchbrechen Sie ihn.",
"* |cff71d5ff|Hspell:323730|h[Frozen Binds]|h|r: Die Bänder markieren einen Spieler – zerstören Sie das Eis schnell.",
"* |cff71d5ff|Hspell:321894|h[Dark Exile]|h|r: Er exiliert einen Spieler auf die untere Decke – überleben und steigen Sie zurück.",
"* |cff71d5ff|Hspell:320772|h[Comet Storm]|h|r: Meteore regnen vom Boden – halten Sie sich von den Markierungen fern.",
};

pack["162689"] = { "Chirurg Fleischnaht",
"* |cff71d5ff|Hspell:320358|h[Stitched Creation]|h|r: Die Kreatur erhebt sich - tötet sie schnell.",
"* |cff71d5ff|Hspell:320376|h[Mutilate]|h|r: Zerstört den Tank - haltet Heilungen bereit.",
"* |cff71d5ff|Hspell:322681|h[Meat Hook]|h|r: Der Haken erwischt einen Spieler - befreit euch schnell.",
"* |cff71d5ff|Hspell:327664|h[Embalming Ichor]|h|r: Ichor sammelt sich auf dem Boden - rennt davon.",
};

-- --------------------------------- --
-- Halls of Atonement : Zona 2287 --
-- --------------------------------- --

pack["164185"] = { "Echelon",
"* |cff71d5ff|Hspell:319941|h[Stone Shattering Leap]|h|r: Sie springt auf den markierten Punkt - die Gruppe räumt den Bereich.",
"* |cff71d5ff|Hspell:319733|h[Stone Call]|h|r: Steine steigen um sie herum auf - greifen die Gruppe an.",
"* |cff71d5ff|Hspell:328206|h[Curse of Stone]|h|r: Der Fluch versteinert den Träger - heile ihn.",
"* |cff71d5ff|Hspell:326389|h[Blood Torrent]|h|r: Der Strom breitet sich aus - verteilen Sie sich.",
};

pack["165408"] = { "Halkias, der Sündenbefleckte Goliath",
"* |cff71d5ff|Hspell:322943|h[Heave Debris]|h|r: Die Trümmer werden auf die Gruppe geworfen - beseitigen Sie die Würfe.",
"* |cff71d5ff|Hspell:322936|h[Crumbling Slam]|h|r: Der Schlag bricht den Boden - bewegen Sie ihn entlang der Reihe.",
"* |cff71d5ff|Hspell:322711|h[Refracted Sinlight]|h|r: Die Sinlichtstrahlen breiten sich aus - steigen Sie vom Strahl ab.",
};

pack["165410"] = { "Hochadjudikatorin Aleez",
"* |cff71d5ff|Hspell:323650|h[Fixate]|h|r: Sie fixiert einen Spieler - rennen Sie um den Raum.",
"* |cff71d5ff|Hspell:1236512|h[Unstable Anima]|h|r: Die Anima explodiert - verteilen Sie sich.",
"* |cff71d5ff|Hspell:323538|h[Anima Bolt]|h|r: Der Bolzen wirkt - unterbrechen Sie ihn.",
};

pack["164218"] = { "Oberster Kämmerer",
"* |cff71d5ff|Hspell:323142|h[Telekinetic Toss]|h|r: Wirft Trümmer auf die Gruppe - beseitige sie.",
"* |cff71d5ff|Hspell:323236|h[Unleashed Suffering]|h|r: Leiden setzt eine Schockwelle frei - verteilen Sie sich.",
"* |cff71d5ff|Hspell:329113|h[Telekinetic Onslaught]|h|r: Der Angriff durchstreicht den Raum - achten Sie auf die Markierungen.",
"* |cff71d5ff|Hspell:328791|h[Ritual of Woe]|h|r: Das Ritual erzeugt eine Explosion - die Gruppe absorbiert sie gemeinsam.",
};

-- --------------------------------- --
-- Plaguefall : Zona 2289 --
-- --------------------------------- --

pack["164967"] = { "Doktor Ickus",
"* |cff71d5ff|Hspell:329110|h[Slime Injection]|h|r: Die Injektion wächst - lösen Sie sie schnell auf.",
"* |cff71d5ff|Hspell:329217|h[Slime Lunge]|h|r: Der Angriff schwingt weit - achten Sie auf den Sweep.",
"* |cff71d5ff|Hspell:321406|h[Virulent Explosion]|h|r: Die Explosion baut sich auf - verteilen Sie sich, bevor sie explodiert.",
"* |cff71d5ff|Hspell:319070|h[Corrosive Gunk]|h|r: Der Gunk korrodiert den Träger - halten Sie die Heilung bereit.",
};

pack["164266"] = { "Domina Giftklinge",
"* |cff71d5ff|Hspell:325245|h[Ambush]|h|r: Er greift die markierte Person aus dem Schatten an - haltet Heilungen bereit.",
"* |cff71d5ff|Hspell:336258|h[Solitary Prey]|h|r: Solitary Prey isoliert einen Spieler - die Gruppe zieht sich von ihm ab.",
"* |cff71d5ff|Hspell:325552|h[Cytotoxic Slash]|h|r: Der Giftstich wirkt auf den Tank - tauscht die Tanks.",
};

pack["164255"] = { "Globgrog",
"* |cff71d5ff|Hspell:324527|h[Plague Stomp]|h|r: Der Stamp erschüttert den Gegner – greife ihn an.",
"* |cff71d5ff|Hspell:324667|h[Slime Wave]|h|r: Die Schleimwellen umspülen den Raum – halte dich von der Flut fern.",
"* |cff71d5ff|Hspell:327608|h[Beckon Slime]|h|r: Er ruft die Schleime herbei – verbrenne sie, bevor sie ihn erreichen.",
"* |cff71d5ff|Hspell:324652|h[Debilitating Plague]|h|r: Die Plage schwächt den Träger – heile ihn.",
};

pack["164267"] = { "Markgräfin Stradama",
"* |cff71d5ff|Hspell:322304|h[Malignant Growth]|h|r: Die Ausbrüche sprießen und versorgen ihn – zerstöre sie, sobald sie erscheinen.",
"* |cff71d5ff|Hspell:322236|h[Touch of Slime]|h|r: Der Kontakt benötigt eine Aufrechterhaltung – arbeite in Paaren und teile ihn.",
"* |cff71d5ff|Hspell:322473|h[Plague Crash]|h|r: Der Sturz bildet eine Pfütze von Schleim – bleibe von den Markierungen fern.",
};

-- --------------------------------- --
-- Mists of Tirna Scithe : Zona 2290 --
-- --------------------------------- --

pack["164567"] = { "Ingra Maloch",
"* |cff71d5ff|Hspell:321005|h[Soul Shackle]|h|r: Die Fessel bindet ihren Träger - zerstöre sie schnell.",
"* |cff71d5ff|Hspell:323059|h[Droman's Wrath]|h|r: Murkhals wirkt aus dem Hain - stoppe seine Zauber.",
"* |cff71d5ff|Hspell:328756|h[Repulsive Visage]|h|r: Das Gesicht fürchtet die Gruppe - positioniere dich und verteile den Schaden.",
"* |cff71d5ff|Hspell:323137|h[Bewildering Pollen]|h|r: Das Pulver stuns das markierte Ziel - halte es von ihrem Gesicht fern.",
};

pack["164501"] = { "Nebelruferin",
"* |cff71d5ff|Hspell:336499|h[Guessing Game]|h|r: Das Guessing Game spawnt Doppelgänger – finde den echten und zerstöre ihn.",
"* |cff71d5ff|Hspell:321891|h[Fixate]|h|r: Fixate markiert einen Spieler – der Markierte bewegt sich weiterhin.",
"* |cff71d5ff|Hspell:321834|h[Dodge Ball]|h|r: Dodge Bälle streifen den Raum – halte dich weit vom Linienrand.",
"* |cff71d5ff|Hspell:321828|h[Patty Cake]|h|r: Das Patty Cake klatscht – unterbreche es.",
};

pack["164517"] = { "Tred'ova",
"* |cff71d5ff|Hspell:322563|h[Marked Prey]|h|r: Das markierte Ziel wird gefressen - das markierte läuft den Raum.",
"* |cff71d5ff|Hspell:322550|h[Accelerated Incubation]|h|r: Kokons platzen auf - zerstöre die Quelle, bevor sie schlüpft.",
"* |cff71d5ff|Hspell:322648|h[Mind Link]|h|r: Die mentale Verbindung bindet zwei Spieler - trenne die Verbindung.",
"* |cff71d5ff|Hspell:322450|h[Consumption]|h|r: Der Verzehr frisst den Boden - gehe von den Markierungen weg.",
};

-- --------------------------------- --
-- De Other Side : Zona 2291 --
-- --------------------------------- --

pack["164450"] = { "Händlerin Xy'exa",
"* |cff71d5ff|Hspell:319619|h[Verstelltrapp]|h|r: Die Falle teleportiert Spieler – schnell wieder auf den Boden bringen.",
"* |cff71d5ff|Hspell:321948|h[Lokalisierter Sprengsatz]|h|r: Der Sprengsatz trifft einen Spieler – ihn schnell aus dem Rudel entfernen.",
"* |cff71d5ff|Hspell:323687|h[Arkaner Blitz]|h|r: Der Blitz springt zwischen Spieler – sich ausbreiten.",
"* |cff71d5ff|Hspell:320230|h[Explosives Gerät]|h|r: Das Gerät detoniert weit – sich hinter den Kristallen verstecken.",
};

pack["166473"] = { "Hakkar der Seelenschinder",
"* |cff71d5ff|Hspell:322773|h[Blutbarriere]|h|r: Die Barriere hält ihn – Stunen, um sie zu zerstören.",
"* |cff71d5ff|Hspell:322746|h[Verdorbenes Blut]|h|r: Blutspritzer weit – verteilen.",
"* |cff71d5ff|Hspell:332329|h[Gelebte Opfergabe]|h|r: Ein Opfer tritt in den Kampf ein – verbrennen Sie es.",
"* |cff71d5ff|Hspell:323064|h[Blutsalven]|h|r: Die Salven wirken – unterbrechen Sie sie.",
};

pack["169769"] = { "Mueh'zala",
"* |cff71d5ff|Hspell:325725|h[Cosmic Artifice]|h|r: Der Artefakt markiert einen Spieler – bring ihn weit weg.",
"* |cff71d5ff|Hspell:326171|h[Shatter Reality]|h|r: Die Realität zerbricht um die Gruppe – versteckt euch hinter den Ruinen.",
"* |cff71d5ff|Hspell:325258|h[Master of Death]|h|r: Der Meister setzt eine Schockwelle ein – verteilt euch.",
"* |cff71d5ff|Hspell:327646|h[Soulcrusher]|h|r: Der Soulcrusher landet auf dem Tank – stellt Verteidigungspositionen ein.",
};

bos = { "Die Manasturms",
"* |cff71d5ff|Hspell:320787|h[Summon Power Crystal]|h|r: Das Kristall summt – zerstöre es schnell.",
"* |cff71d5ff|Hspell:320168|h[Throw Buzz Saw]|h|r: Sägen schneiden durch den Raum – bleibe von den Bahnen fern.",
"* |cff71d5ff|Hspell:320147|h[Bleeding]|h|r: Die Blutungen stapeln sich auf dem Tank – tausche Tanks.",
"* |cff71d5ff|Hspell:320141|h[Doom]|h|r: Die Doom detoniert in der Nähe der Gruppe – verteile dich.",
"* |cff71d5ff|Hspell:323877|h[Laser]|h|r: Der Laser fährt vorwärts – bleibe hinter dem Boss.",
};
pack["164555"] = bos; pack["164556"] = bos;

-- --------------------------------- --
-- Theater of Pain : Zona 2293 --
-- --------------------------------- --

bos = { "Ein Affront der Herausforderer",
"* |cff71d5ff|Hspell:320069|h[Mortal Strike]|h|r: Mortal Strikes auf den Tank – Heiltränke bereit halten.",
"* |cff71d5ff|Hspell:1215741|h[Mighty Smash]|h|r: Der Smash setzt sich weit aus – verteilen.",
"* |cff71d5ff|Hspell:1215738|h[Decaying Breath]|h|r: Der Atem streift nach vorne – weichen Sie aus.",
"* |cff71d5ff|Hspell:333231|h[Searing Death]|h|r: Die Verbrennungen verfolgen Spieler – bringen Sie sie weit aus.",
"* |cff71d5ff|Hspell:1215600|h[Withering Touch]|h|r: Der Verfall hält an seinem Träger – reinigen Sie ihn.",
};
pack["164451"] = bos; pack["164463"] = bos; pack["164461"] = bos;

pack["162317"] = { "Bluthack",
"* |cff71d5ff|Hspell:322795|h[Meat Hooks]|h|r: Die Fänge ziehen Spieler in den Mörser – zerreißen Sie sie schnell.",
"* |cff71d5ff|Hspell:318406|h[Tenderizing Smash]|h|r: Der Schlag schickt alle fliegend – halten Sie ihn von vorne.",
"* |cff71d5ff|Hspell:323515|h[Hateful Strike]|h|r: Hateful Strikes auf seinen Tank – Defensiven hoch.",
};

pack["162309"] = { "Kul'tharok",
"* |cff71d5ff|Hspell:473540|h[Well of Darkness]|h|r: Das Brunnen verbreitet Dunkelheit – verteilen Sie sich.",
"* |cff71d5ff|Hspell:474298|h[Draw Soul]|h|r: Der Zug zieht die Gruppe an – sammeln Sie sie und treffen Sie sie.",
"* |cff71d5ff|Hspell:1216474|h[Death Spiral]|h|r: Der Spiralwirbel erobert die Arena – achten Sie auf die Markierungen.",
"* |cff71d5ff|Hspell:474087|h[Necrotic Eruption]|h|r: Die Explosion tritt vor – bleiben Sie von seiner Seite fern.",
};

pack["165946"] = { "Mordretha, die Unendliche Kaiserin",
"* |cff71d5ff|Hspell:323831|h[Death Grasp]|h|r: Der Griff zieht Spieler zu ihr - bereiten Sie sich auf den Zug vor.",
"* |cff71d5ff|Hspell:324079|h[Reaping Scythe]|h|r: Der Sichel trifft den Tank - Defensive hoch.",
"* |cff71d5ff|Hspell:324449|h[Manifest Death]|h|r: Der Tod manifestiert sich um die Gruppe herum - verteilen Sie sich.",
"* |cff71d5ff|Hspell:324589|h[Death Bolt]|h|r: Der Bolzen wirkt - unterbrechen Sie ihn.",
"* |cff71d5ff|Hspell:323685|h[Grasping Rift]|h|r: Die Ritze zieht alles nach innen - halten Sie Abstand von ihr.",
};

pack["162329"] = { "Xav der Unbesiegte",
"* |cff71d5ff|Hspell:317231|h[Crushing Slam]|h|r: Der Schlag trifft den Tank - Defensivzauber aktiv.",
"* |cff71d5ff|Hspell:320729|h[Massive Cleave]|h|r: Sein Schnitt ist weit - die Gruppe bleibt hinter ihm.",
"* |cff71d5ff|Hspell:339415|h[Deafening Crash]|h|r: Der Crash wirkt - unterbreche ihn.",
"* |cff71d5ff|Hspell:320102|h[Blood and Glory]|h|r: Er markiert einen Champion für Glory - halte den markierten Champion sicher.",
"* |cff71d5ff|Hspell:331618|h[Oppressive Banner]|h|r: Die Fahne übt Druck auf die Arena aus - greife sie schnell an.",
};

-- --------------------------------- --
-- Castle Nathria : Zona 2296 --
-- --------------------------------- --

pack["165066"] = { "Jäger Altimor",
"* |cff71d5ff|Hspell:335114|h[Sinseeker]|h|r: Die Sinseeker verfolgen ihr Ziel - der Angriff greift die Verfolgung ein.",
"* |cff71d5ff|Hspell:334971|h[Jagged Claws]|h|r: Krallen stellen sich dem Tank - tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:334945|h[Vicious Lunge]|h|r: Der Angriff benötigt einen Tank - bilden Sie Paare und teilen Sie ihn.",
};

pack["166644"] = { "Konstrukteur Xy'mox",
"* |cff71d5ff|Hspell:328437|h[Dimensional Tear]|h|r: Öffnet Risse – heilen Sie durch den Drain.",
"* |cff71d5ff|Hspell:325361|h[Glyph of Destruction]|h|r: Das Glyphe markiert den Träger – nutzen Sie es weit aus.",
"* |cff71d5ff|Hspell:326271|h[Stasis Trap]|h|r: Fallen frieren den Boden ein – vermeiden Sie die Markierungen.",
"* |cff71d5ff|Hspell:335013|h[Rift Blast]|h|r: Der Schuss rast entlang der Linie – bleiben Sie von der Linie entfernt.",
};

pack["164261"] = { "Hungernder Zerstörer",
"* |cff71d5ff|Hspell:329298|h[Gluttonous Miasma]|h|r: Die Miasma ernährt ihn aus der Gruppe – verteilen Sie sich und geben Sie Stagger-Heils.",
"* |cff71d5ff|Hspell:334266|h[Volatile Ejection]|h|r: Die Ejektion trifft den markierten Spieler – schaffen Sie Abstand.",
"* |cff71d5ff|Hspell:334522|h[Consume]|h|r: Er konsumiert einen schwachen Spieler – halten Sie alle voll.",
"* |cff71d5ff|Hspell:329725|h[Expunge]|h|r: Die Expulsion wirkt weit – verteilen Sie sich.",
};

pack["165759"] = { "Rettung des Sonnenkönigs",
"* |cff71d5ff|Hspell:328885|h[Greater Castigation]|h|r: Der Angriff verursacht Flächenschaden - verteilen Sie sich.",
"* |cff71d5ff|Hspell:326456|h[Burning Remnants]|h|r: Die Fragmente sollten auf den Tank gelegt werden - wechseln Sie die Tanks.",
"* |cff71d5ff|Hspell:325877|h[Ember Blast]|h|r: Der Angriff benötigt einen Tank - bilden Sie Paare und teilen Sie ihn.",
"* |cff71d5ff|Hspell:329509|h[Blazing Surge]|h|r: Der Sturz erfasst die gesamte Plattform - verlassen Sie sie.",
"* |cff71d5ff|Hspell:337865|h[Unleashed Pyroclasm]|h|r: Der Pyroklast kann unterbrochen werden.",
};

pack["165521"] = { "Lady Inerva Dunkelader",
"* |cff71d5ff|Hspell:325936|h[Shared Cognition]|h|r: Die Kognition-Ketten verlangsamen die Zauberer – verteilen Sie sich.",
"* |cff71d5ff|Hspell:340452|h[Change of Heart]|h|r: Das Herz greift den Träger an – bringen Sie es weit weg.",
"* |cff71d5ff|Hspell:335396|h[Hidden Desire]|h|r: Desire markiert einen Spieler – halten Sie den markierten Spieler klar.",
"* |cff71d5ff|Hspell:325769|h[Bottled Anima]|h|r: Die Konsolen füllen sich mit Verlangen – halten Sie die Konsolen der Gruppe leer.",
};

pack["164406"] = { "Schrillschwinge",
"* |cff71d5ff|Hspell:328897|h[Exsanguinated]|h|r: Exsanguination stapeln sich auf dem Tank - tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:342074|h[Echolocation]|h|r: Echolocation markiert einen Spieler - führen Sie den Schall weit aus.",
"* |cff71d5ff|Hspell:345936|h[Earsplitting Shriek]|h|r: Der Schrei betäubt die Gruppe - unterbreche ihn.",
"* |cff71d5ff|Hspell:328921|h[Bloodshroud]|h|r: Der Schleier sendet sie auf die Jagd - die Gruppe trennt sich und überlebt.",
"* |cff71d5ff|Hspell:345397|h[Wave of Blood]|h|r: Blutwellen umspannen den Raum - halten Sie sich von der Welle fern.",
};

pack["167406"] = { "Graf Denathrius",
"* |cff71d5ff|Hspell:326851|h[Blood Price]|h|r: Blutpreis belastet die Gruppe – heilen Sie den Effekt.",
"* |cff71d5ff|Hspell:327039|h[Feeding Time]|h|r: Das Füttern markiert einen Spieler – verteilen Sie das Futter weit.",
"* |cff71d5ff|Hspell:327796|h[Night Hunter]|h|r: Der Jäger benötigt einen Tank – bilden Sie eine Gruppe und teilen Sie die Last.",
"* |cff71d5ff|Hspell:326707|h[Cleansing Pain]|h|r: Der Schmerz setzt sich in einer Schockwelle frei – verteilen Sie sich.",
"* |cff71d5ff|Hspell:327227|h[Command: Ravage]|h|r: Der Ravage durchstreift den Raum – bereiten Sie sich vor.",
};

pack["164407"] = { "Schlickfaust",
"* |cff71d5ff|Hspell:331209|h[Hateful Gaze]|h|r: Sein Blick fixiert eine Reihe - niemand steht in der Charge-Linie.",
"* |cff71d5ff|Hspell:335300|h[Chain Link]|h|r: Die Kette verbindet Partner - bleiben Sie von Ihrer Kette getrennt.",
"* |cff71d5ff|Hspell:335470|h[Chain Slam]|h|r: Der Schlag schleudert zu Ihrem Partner - bilden Sie ein Paar und positionieren Sie sich.",
"* |cff71d5ff|Hspell:341250|h[Gruesome Rage]|h|r: Der Wutausbruch baut sich auf - erledigen Sie ihn, bevor die Wut ihren Höhepunkt erreicht.",
};

bos = { "Generäle der Steinlegion",
"* |cff71d5ff|Hspell:329636|h[Hardened Stone Form]|h|r: Die Steinform teilt die Generäle – durchbrechen die Steinbarriere.",
"* |cff71d5ff|Hspell:333376|h[Wicked Blade]|h|r: Das Schwert trifft den Tank – tauschen Sie den Tank.",
"* |cff71d5ff|Hspell:334765|h[Heart Rend]|h|r: Der Rend benötigt einen Tank – bilden Sie Paare und teilen Sie ihn.",
"* |cff71d5ff|Hspell:342256|h[Shadow Forces]|h|r: Die Schattenkräfte treten in den Kampf ein – greifen Sie die Gruppe mit AoE an.",
};
pack["168112"] = bos; pack["168113"] = bos;

bos = { "Der Rat des Blutes",
"* |cff71d5ff|Hspell:328497|h[Danse Macabre]|h|r: Der Tanz nimmt den Boden ein - achten Sie auf die Reihen und bleiben Sie von den Zielen fern.",
"* |cff71d5ff|Hspell:346690|h[Duelists' Riposte]|h|r: Die Riposte wirkt auf die Tanks – tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:346698|h[Dutiful Attendant]|h|r: Die Diener treten der Gruppe bei – verbrennen Sie sie.",
"* |cff71d5ff|Hspell:330978|h[Dredger Servants]|h|r: Die Dredgers stürmen an – greifen sie mit AoE an.",
};
pack["166971"] = bos; pack["166969"] = bos; pack["166970"] = bos;

-- --------------------------------- --
-- Tazavesh, the Veiled Market : Zona 2441 --
-- --------------------------------- --

pack["175663"] = { "Hylbrand",
"* |cff71d5ff|Hspell:346959|h[Purged by Fire]|h|r: Feuer reinigt den markierten Spieler – bring ihn weit weg.",
"* |cff71d5ff|Hspell:353312|h[Purifying Burst]|h|r: Der Burst reinigt weit – verteilen.",
"* |cff71d5ff|Hspell:358131|h[Lightning Nova]|h|r: Der Nova wirkt – unterbreche ihn.",
"* |cff71d5ff|Hspell:347094|h[Titanic Crash]|h|r: Der Crash erschüttert den Boden – halte dich fest.",
};

pack["175646"] = { "Postraumfiasko",
"* |cff71d5ff|Hspell:346286|h[Hazardous Liquids]|h|r: Flüssigkeiten sammeln sich im Postraum - vermeiden Sie die Verschüttungen.",
"* |cff71d5ff|Hspell:369133|h[Unstable Goods]|h|r: Waren werden instabil - räumen Sie die Pakete schnell weg.",
"* |cff71d5ff|Hspell:346293|h[Fan Mail]|h|r: Briefe platzen auf - verteilen Sie sich.",
"* |cff71d5ff|Hspell:346962|h[Money Order]|h|r: Bestellungen benötigen eine Konzentration - bilden Sie Paare und teilen Sie die Aufgabe.",
};

pack["176564"] = { "Myzas Oase",
"* |cff71d5ff|Hspell:350916|h[Security Slam]|h|r: Der Schlag trifft den Tank - Defensivfähigkeiten aktiviert.",
"* |cff71d5ff|Hspell:350922|h[Menacing Shout]|h|r: Der Schrei baut sich auf - unterbreche ihn.",
"* |cff71d5ff|Hspell:350919|h[Crowd Control]|h|r: Die Kontrolle trifft die Gruppe - verteile dich.",
"* |cff71d5ff|Hspell:357436|h[Infectious Solo]|h|r: Der Solo rennt durch den Raum - renne ihm aus dem Weg.",
};

pack["175806"] = { "So'azmi",
"* |cff71d5ff|Hspell:347249|h[Divide]|h|r: Teilt den Raum mit einer Klingenlinie - bleibe außerhalb des Schnittbereichs.",
"* |cff71d5ff|Hspell:347623|h[Quickblade]|h|r: Quickblade bestraft langsame Tauschaktionen - Tanks tauschen schnell.",
"* |cff71d5ff|Hspell:347481|h[Shuriken Storm]|h|r: Shurikens streifen den Raum - bleibe in Bewegung.",
};

pack["177269"] = { "So'leah",
"* |cff71d5ff|Hspell:353635|h[Collapsing Star]|h|r: Der Stern kollabiert und markiert seinen Ziel - rennen Sie ihn weit aus.",
"* |cff71d5ff|Hspell:351124|h[Summon Assassins]|h|r: Die Assassinen nähern sich - halten Sie die Linie und töten Sie sie.",
"* |cff71d5ff|Hspell:351086|h[Power Overwhelming]|h|r: Er trinkt die Macht des Kartells - stoppen Sie den Zauber.",
"* |cff71d5ff|Hspell:351646|h[Hyperlight Nova]|h|r: Die Nova breitet sich aus - bewegen Sie sich weit davon.",
};

bos = { "Die Große Menagerie",
"* |cff71d5ff|Hspell:349627|h[Gluttony]|h|r: Gluttony markiert einen Spieler - lasse den Hunger weit auslaufen.",
"* |cff71d5ff|Hspell:349663|h[Grip of Hunger]|h|r: Der Griff zieht Spieler an - halte Abstand von ihm.",
"* |cff71d5ff|Hspell:349797|h[Grand Consumption]|h|r: Der Verbrauch nährt ihn - erledige zuerst die Adds.",
"* |cff71d5ff|Hspell:349954|h[Purification Protocol]|h|r: Das Protokoll reinigt ihn - unterbreche es hart.",
"* |cff71d5ff|Hspell:350101|h[Chains of Damnation]|h|r: Die Ketten leiten ihren Halter - zerbreche sie schnell.",
};
pack["176556"] = bos; pack["176555"] = bos; pack["176705"] = bos;

pack["175546"] = { "Zeitkäpt'n Hakenschwanz",
"* |cff71d5ff|Hspell:347149|h[Infinite Breath]|h|r: Atem-Bau in einer Reihe - lenke ihn weg von der Gruppe.",
"* |cff71d5ff|Hspell:352345|h[Anchor Shot]|h|r: Der Anker fängt einen Spieler ein - befreie dich schnell.",
"* |cff71d5ff|Hspell:1240097|h[Time Bomb]|h|r: Die Bombe wirkt auf den Träger - reinige ihn schnell.",
};

pack["175616"] = { "Zo'phex der Wächter",
"* |cff71d5ff|Hspell:345990|h[Containment Cell]|h|r: Zellen fangen Spieler ein – zerstere sie schnell.",
"* |cff71d5ff|Hspell:345770|h[Impound Contraband]|h|r: Illegale Gegenstände werden beschlagnahmt – töte die Kisten, bevor er sie frisst.",
"* |cff71d5ff|Hspell:348350|h[Interrogation]|h|r: Die Vernehmung wirkt auf ein Ziel – der Rest nimmt sie von ihm.",
"* |cff71d5ff|Hspell:1236348|h[Charged Slash]|h|r: Der Schnitt geht vor – halte Abstand von seinem Gesicht.",
};

-- --------------------------------- --
-- Sanctum of Domination : Zona 2450 --
-- --------------------------------- --

pack["175730"] = { "Schicksalsschreiber Roh-Kalo",
"* |cff71d5ff|Hspell:354365|h[Grim Portent]|h|r: Der Vorbote markiert Spieler – beachte den bevorstehenden Angriff.",
"* |cff71d5ff|Hspell:351680|h[Invoke Destiny]|h|r: Destiny bindet den Tank – tauscht die Tanks.",
"* |cff71d5ff|Hspell:353432|h[Burden of Destiny]|h|r: Die Bürde klebt am Träger – der Markierte trägt sie fort.",
"* |cff71d5ff|Hspell:353931|h[Twist Fate]|h|r: Das Schicksal verdreht die Gruppe – heile durch den Wandel.",
};

pack["175731"] = { "Wächter der Ersten",
"* |cff71d5ff|Hspell:352833|h[Disintegration]|h|r: Der Strahl rastet seinen Bereich ab - niemand steht darin.",
"* |cff71d5ff|Hspell:350455|h[Radiant Energy]|h|r: Energie flutet den Boden - verstecken Sie sich hinter den Generatoren.",
"* |cff71d5ff|Hspell:352589|h[Meltdown]|h|r: Die Detonation erfolgt - rennen Sie davon.",
"* |cff71d5ff|Hspell:352538|h[Purging Protocol]|h|r: Das Protokoll reinigt den Raum - verteilen Sie sich.",
"* |cff71d5ff|Hspell:350732|h[Sunder]|h|r: Der Sunder trifft den Tank - Defensive aktivieren.",
};

pack["175559"] = { "Kel'Thuzad",
"* |cff71d5ff|Hspell:353808|h[Glacial Wrath]|h|r: Der Wutangriff schleudert gefrorene Kugeln – zerstöre sie, bevor sie die Gruppe erreichen.",
"* |cff71d5ff|Hspell:348756|h[Frost Blast]|h|r: Der Angriff friert die Träger ein – zerstöre sie, um sie freizusetzen.",
"* |cff71d5ff|Hspell:352530|h[Dark Evocation]|h|r: Die Evokation saugt alle Lebenspunkte auf – unterbreche sie hart.",
"* |cff71d5ff|Hspell:348978|h[Soul Exhaustion]|h|r: Die Erschöpfung wirkt auf den Tank – tausche Tanks.",
"* |cff71d5ff|Hspell:355389|h[Corpse Detonation]|h|r: Leichen explodieren, wenn sie erreicht werden – halte sie fern.",
};

pack["176523"] = { "Leidensschmied Raznal",
"* |cff71d5ff|Hspell:355568|h[Cruciform Axe]|h|r: Der Axt markiert seine Position - rennen Sie sie weit aus.",
"* |cff71d5ff|Hspell:348508|h[Reverberating Hammer]|h|r: Der Hammer markiert den Spieler - die Gruppe räumt den Bereich auf.",
"* |cff71d5ff|Hspell:355505|h[Shadowsteel Chains]|h|r: Ketten binden Spieler - brechen Sie sie schnell.",
"* |cff71d5ff|Hspell:348456|h[Flameclasp Trap]|h|r: Fallen setzen den Boden in Brand - vermeiden Sie die Markierungen.",
};

pack["175729"] = { "Überrest von Ner'zhul",
"* |cff71d5ff|Hspell:349908|h[Orb of Torment]|h|r: Die Orbs verursachen Chaos im Rudel – zerstöre sie, bevor sie explodieren.",
"* |cff71d5ff|Hspell:350469|h[Malevolence]|h|r: Malevolence bleibt dem Träger erhalten – bringe es weg.",
"* |cff71d5ff|Hspell:351066|h[Shatter]|h|r: Der Shatter zerstört den Raum – unterbreche ihn.",
"* |cff71d5ff|Hspell:350894|h[Suffering]|h|r: Suffering stapelt sich auf den Tank – tausche Tanks.",
};

pack["175727"] = { "Seelenfetzer Dormazain",
"* |cff71d5ff|Hspell:350647|h[Brand of Torment]|h|r: Die Qual leidet ihre Träger – heilen Sie durch den Drain.",
"* |cff71d5ff|Hspell:350422|h[Ruinblade]|h|r: Der Ruinmesser wirkt auf den Tank – tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:352158|h[Torment]|h|r: Seine Qual trifft die Gruppe – halten Sie die Heilung bereit.",
"* |cff71d5ff|Hspell:351779|h[Agonizing Spike]|h|r: Der Stich wirkt – unterbrechen Sie ihn.",
};

pack["175732"] = { "Sylvanas Windläufer",
"* |cff71d5ff|Hspell:347504|h[Windrunner]|h|r: Der Windrunner reitet durch die Gruppe – halten Sie Abstand von ihrem Angriff.",
"* |cff71d5ff|Hspell:353935|h[Shadow Dagger]|h|r: Dolche markieren ihre Träger – bleiben Sie getrennt.",
"* |cff71d5ff|Hspell:348064|h[Wailing Arrow]|h|r: Der Pfeil rast durch seinen Pfad – niemand steht ihm im Weg.",
"* |cff71d5ff|Hspell:347704|h[Veil of Darkness]|h|r: Der Schleier verdunkelt die Gruppe – stellen Sie sich zusammen und heilen Sie durch ihn hindurch.",
"* |cff71d5ff|Hspell:349419|h[Domination Chains]|h|r: Ketten kontrollieren Spieler – brechen Sie sie schnell.",
};

pack["175725"] = { "Das Auge des Kerkermeisters",
"* |cff71d5ff|Hspell:350803|h[Piercing Lens]|h|r: Die Linse rastet ihren Pfad ab - halte dich von dem Strahl fern.",
"* |cff71d5ff|Hspell:358609|h[Dragging Chains]|h|r: Ketten ziehen Spieler an - zerlege sie schnell.",
"* |cff71d5ff|Hspell:350604|h[Hopeless Lethargy]|h|r: Lethargy markiert einen Spieler - renne ihn weit aus.",
"* |cff71d5ff|Hspell:350764|h[Annihilating Glare]|h|r: Der Glanz streift den Raum - renne den Kreis vor ihm.",
"* |cff71d5ff|Hspell:350828|h[Death Link]|h|r: Der Todeslink bindet die Tanks - tausche die Tanks aus.",
};

pack["175726"] = { "Die Neun",
"* |cff71d5ff|Hspell:350202|h[Unending Strike]|h|r: Der Angriff stapelt sich auf den Tank - tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:350342|h[Formless Mass]|h|r: Die Masse bildet sich um sie herum - zielen Sie auf sie mit einem Flächenangriff.",
"* |cff71d5ff|Hspell:350365|h[Wings of Rage]|h|r: Die Flügel schleudern die Gruppe - verteidigen Sie den Schub.",
"* |cff71d5ff|Hspell:350385|h[Reverberating Refrain]|h|r: Der Refrain füllt den Saal - verstecken Sie sich hinter den Säulen.",
"* |cff71d5ff|Hspell:350283|h[Soulful Blast]|h|r: Der Angriff wirkt - unterbrechen Sie ihn.",
};

pack["175611"] = { "Der Tarragrue",
"* |cff71d5ff|Hspell:347274|h[Annihilating Smash]|h|r: Der Schlag schleudert den Tank – sichern Sie ihn.",
"* |cff71d5ff|Hspell:347283|h[Predator's Howl]|h|r: Der Heulen zerstreut die Gruppe – sichern und bleiben Sie stehen.",
"* |cff71d5ff|Hspell:347369|h[The Jailer's Gaze]|h|r: Der Blick markiert den Träger – laufen Sie den Blick weit aus.",
"* |cff71d5ff|Hspell:347269|h[Chains of Eternity]|h|r: Die Ketten fesseln den Träger – brechen Sie sie schnell.",
};

-- --------------------------------- --
-- Sepulcher of the First Ones : Zona 2481 --
-- --------------------------------- --

pack["181954"] = { "Anduin Wrynn",
"* |cff71d5ff|Hspell:365295|h[Befouled Barrier]|h|r: Eine Barriere schützt seine Verbündeten – zerstöre sie schnell.",
"* |cff71d5ff|Hspell:365030|h[Wicked Star]|h|r: Sterne verfolgen ihre Ziele – treibe sie weit weg.",
"* |cff71d5ff|Hspell:362405|h[Kingsmourne Hungers]|h|r: Der Dolch hungert nach der Gruppe – halte den Pull.",
"* |cff71d5ff|Hspell:361989|h[Blasphemy]|h|r: Blasphemy teilt die Gruppe auf – sammle sie schnell.",
"* |cff71d5ff|Hspell:364031|h[Malignant Ward]|h|r: Der schädliche Schild hält an – entferne ihn.",
};

pack["183501"] = { "Konstrukteur Xy'mox",
"* |cff71d5ff|Hspell:363520|h[Forerunner Rings]|h|r: Ringe breiten sich aus - halte dich von den Wellen fern.",
"* |cff71d5ff|Hspell:362615|h[Dimensional Tear]|h|r: Tränen drainen den Raum - heile durch.",
"* |cff71d5ff|Hspell:362882|h[Stasis Trap]|h|r: Fallen frieren den Boden ein - gehe von den Markierungen weg.",
"* |cff71d5ff|Hspell:362803|h[Glyph of Relocation]|h|r: Das Glyphe bewegt seinen Träger - der Tank tauscht die Mark.",
};

pack["181224"] = { "Dausegne, das gefallene Orakel",
"* |cff71d5ff|Hspell:361966|h[Infused Strikes]|h|r: Die Angriffe stapeln sich auf dem Tank - tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:361018|h[Staggering Barrage]|h|r: Die Barragen benötigen Unterstützung - bilden Sie Paare und teilen Sie die Unterstützung.",
"* |cff71d5ff|Hspell:359483|h[Domination Core]|h|r: Das Kernstück hängt lose - schieben Sie es zurück in sie.",
"* |cff71d5ff|Hspell:365373|h[Disintegration Halo]|h|r: Der Halo umgibt den Raum - bleiben Sie aus dem Ring heraus.",
};

pack["180906"] = { "Halondrus der Rückgewinner",
"* |cff71d5ff|Hspell:367079|h[Seismic Tremors]|h|r: Beben erschüttern den Raum – bereiten Sie sich auf den Ausbruch vor.",
"* |cff71d5ff|Hspell:368957|h[Volatile Charge]|h|r: Spieler werden durch explosive Ladungen getroffen – bringen Sie sie aus dem Kampf.",
"* |cff71d5ff|Hspell:361676|h[Earthbreaker Missiles]|h|r: Raketen fallen breit – verteilen Sie sich.",
"* |cff71d5ff|Hspell:365297|h[Crushing Prism]|h|r: Prismen zerbrechen den Boden – vermeiden Sie die Markierungen.",
};

pack["182169"] = { "Lihuvim, der oberste Architekt",
"* |cff71d5ff|Hspell:368738|h[Harmonic Alignment]|h|r: Harmony ruft die Gruppe zusammen - versammeln Sie sich am Ring.",
"* |cff71d5ff|Hspell:368740|h[Melodic Alignment]|h|r: Melody ruft die Gruppe zusammen - verteilen Sie sich vom Ring.",
"* |cff71d5ff|Hspell:362622|h[Unstable Mote]|h|r: Motes explodieren, wenn sie gehalten werden - bringen Sie sie weg.",
"* |cff71d5ff|Hspell:363088|h[Cosmic Shift]|h|r: Der Shift wirft alles - halten Sie sich fest.",
};

bos = { "Lords des Schreckens",
"* |cff71d5ff|Hspell:360012|h[Cloud of Carrion]|h|r: Die Wolke driftet über die Gruppe – verteilen Sie sich, um sie zu vermeiden.",
"* |cff71d5ff|Hspell:361913|h[Manifest Shadows]|h|r: Schatten manifestieren sich um sie herum – greifen sie AoE an.",
"* |cff71d5ff|Hspell:360319|h[Unto Darkness]|h|r: Dunkelheit ergreift den Raum – bereiten Sie sich auf den kommenden Angriff vor.",
"* |cff71d5ff|Hspell:359960|h[Leeching Claws]|h|r: Krallen saugen die Rolle des Tanks aus – Defensive aufbauen.",
};
pack["181398"] = bos; pack["181399"] = bos;

bos = { "Prototypenpantheon",
"* |cff71d5ff|Hspell:360687|h[Runecarver's Deathtouch]|h|r: Deathtouch markiert die Träger – trennen die Markierungen.",
"* |cff71d5ff|Hspell:360295|h[Necrotic Ritual]|h|r: Das Ritual erweckt die Toten – zerstören Sie es schnell.",
"* |cff71d5ff|Hspell:362352|h[Pinned]|h|r: Das Pinning fesselt die Träger – befreien Sie sie schnell.",
"* |cff71d5ff|Hspell:365272|h[Humbling Strikes]|h|r: Die Angriffe wirken auf den Tank – tauschen Sie die Tanks.",
};
pack["181548"] = bos; pack["181551"] = bos; pack["181546"] = bos; pack["181549"] = bos;

pack["182777"] = { "Rygelon",
"* |cff71d5ff|Hspell:362275|h[Celestial Collapse]|h|r: Explosions kollabieren nacheinander - beachte die Reihenfolge.",
"* |cff71d5ff|Hspell:362206|h[Event Horizon]|h|r: Der Horizont zieht die Gruppe an - bereite dich auf den Zug vor.",
"* |cff71d5ff|Hspell:362390|h[Manifest Cosmos]|h|r: Das Kosmos manifestiert sich um ihn herum - bringe sie alle nieder.",
"* |cff71d5ff|Hspell:363108|h[Celestial Terminator]|h|r: Der Terminator durchstreift den Raum - bereite dich darauf vor.",
};

pack["181395"] = { "Skolex, der unersättliche Räuber",
"* |cff71d5ff|Hspell:359829|h[Dust Flail]|h|r: Die Flail-Angriffe breiten sich aus - verteilen Sie sich.",
"* |cff71d5ff|Hspell:359979|h[Rend]|h|r: Rend-Effekte stapeln sich auf den Tanks - wechseln Sie die Tanks.",
"* |cff71d5ff|Hspell:359770|h[Ravening Burrow]|h|r: Sie graben sich zurück - bereiten Sie sich auf den Rückzug vor.",
"* |cff71d5ff|Hspell:360448|h[Retch]|h|r: Der Retch erzeugt eine Schockwelle - bleiben Sie von vorne fern.",
};

pack["180990"] = { "Der Kerkermeister",
"* |cff71d5ff|Hspell:362075|h[Domination]|h|r: Domination zerstört die Gruppe – haltet stand.",
"* |cff71d5ff|Hspell:360281|h[Rune of Damnation]|h|r: Damnation markiert Spieler – trennt die Markierungen.",
"* |cff71d5ff|Hspell:366374|h[World Crusher]|h|r: Der Crusher schlägt weit – verteilt euch.",
"* |cff71d5ff|Hspell:362631|h[Chains of Oppression]|h|r: Ketten binden Spieler zusammen – zerstört sie.",
"* |cff71d5ff|Hspell:362028|h[Relenting Domination]|h|r: Domination flutet den Raum – versteckt euch hinter der Säule.",
};

pack["180773"] = { "Aufmerksamer Wächter",
"* |cff71d5ff|Hspell:361001|h[Welle der Zerstörung]|h|r: Die Welle durchstreift den Raum – halte dich von dem Strahl fern.",
"* |cff71d5ff|Hspell:359610|h[Desintegration]|h|r: Der Strahl durchstreift den Raum – laufe den Kreis voraus.",
"* |cff71d5ff|Hspell:364447|h[Dissonanz]|h|r: Dissonanz-Stacks auf den Tank – tausche die Tanks.",
"* |cff71d5ff|Hspell:360658|h[Vorfertigter Wächter]|h|r: Wächter werden in den Kampf geschickt – verbrenne sie.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["182466"] = { "Antros",
"* |cff71d5ff|Hspell:361632|h[Banishment Mark]|h|r: Das Zeichen verbannt den Träger – achte auf das Zeichen.",
"* |cff71d5ff|Hspell:361390|h[Dark Deterrence]|h|r: Deterrence stapelt sich auf den Tank – tauscht die Tanks.",
"* |cff71d5ff|Hspell:361209|h[Furious Slam]|h|r: Der Schlag erschüttert den Boden – verteilt euch.",
"* |cff71d5ff|Hspell:361341|h[Destruction Cores]|h|r: Kerne regnen auf den Bereich – verlasst die Markierungen.",
};

pack["178958"] = { "Morgeth",
"* |cff71d5ff|Hspell:353741|h[Cries of Anguish]|h|r: Die Schreie hallen wider – bereitet euch darauf vor.",
"* |cff71d5ff|Hspell:353800|h[Torment]|h|r: Torment-Stacks auf den Tank – tauscht den Tank.",
"* |cff71d5ff|Hspell:356430|h[Iron Golem]|h|r: Ein Eisen-Golem tritt dem Kampf bei – zerstört ihn.",
"* |cff71d5ff|Hspell:355456|h[Damnation]|h|r: Damnation-Explosion – verteilt euch.",
};

pack["167525"] = { "Mortanis",
"* |cff71d5ff|Hspell:338847|h[Unholy Frenzy]|h|r: Der Wutausbruch provoziert ihn – beruhige ihn.",
"* |cff71d5ff|Hspell:338851|h[Screaming Skull]|h|r: Schädel brauchen Schaden – gruppiert euch und teilt sie auf.",
"* |cff71d5ff|Hspell:338846|h[Bone Cleave]|h|r: Der Schnitt ist weit – melee bleibt hinten.",
"* |cff71d5ff|Hspell:338849|h[Unruly Remains]|h|r: Die Überreste umkreisen ihn – greifen sie mit Flächenangriffen an.",
};

pack["167526"] = { "Nurgash",
"* |cff71d5ff|Hspell:338858|h[Stone Fist]|h|r: Hiebe treffen den Tank – Defensivwerte erhöhen.",
"* |cff71d5ff|Hspell:338863|h[Stone Stomp]|h|r: Der Stoß erschüttert den Boden – Verteilen.",
"* |cff71d5ff|Hspell:338868|h[Deep Slumber]|h|r: Der Schlaf lässt die Gruppe fallen – Schnell aufwachen.",
"* |cff71d5ff|Hspell:338867|h[Hail of Stones]|h|r: Steine treffen die Ränder – In der Mitte stehen.",
};

pack["167527"] = { "Oranomonos",
"* |cff71d5ff|Hspell:339040|h[Stone Stomp]|h|r: Der Stamp erschüttert den Hain - verteilen Sie sich.",
"* |cff71d5ff|Hspell:338852|h[Implant]|h|r: Implant-Effekte stapeln sich auf den Tank - tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:338857|h[Regrowth]|h|r: Regrowth heilt ihn - unterbrechen Sie es.",
"* |cff71d5ff|Hspell:338855|h[Seeds of Sorrow]|h|r: Die Samen explodieren - rennen Sie vor der Blüte davon.",
};

pack["167524"] = { "Valinor",
"* |cff71d5ff|Hspell:327256|h[Vent Anima]|h|r: Anima-Vents über den Boden verteilt – vermeiden, auf den Vents zu stehen.",
"* |cff71d5ff|Hspell:327255|h[Mark of Penitence]|h|r: Penitence-Stacks auf den Tank – Tanks tauschen.",
"* |cff71d5ff|Hspell:339278|h[Lysonia's Call]|h|r: Der Ruf markiert den Träger – den Markierten klar halten.",
"* |cff71d5ff|Hspell:327262|h[Charged Anima Blast]|h|r: Der Blast lädt seine Markierung – weit ausführen.",
};

P.de = de;
