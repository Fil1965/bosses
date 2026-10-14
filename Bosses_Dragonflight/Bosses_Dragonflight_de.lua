--[[
	Bosses_Dragonflight_de.lua
		Datos auf Deutsch of the Dragonflight
		pack: the three raids (Vault of the Incarnates, Aberrus, Amirdrassil),
		the dungeons and Dawn of the Infinite, plus the Dragon Isles world
		bosses. Sources: DBM-Raids/Party-Dragonflight and DBM-DragonIsles
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Uldaman: Legacy of Tyr : Zona 2451 --
-- --------------------------------- --

pack["184018"] = { "Bromach",
"* |cff71d5ff|Hspell:369605|h[Call of the Deep]|h|r: Er ruft den Tiefen und die Troggs antworten – Konzentrieren Sie die Angriffe auf die Troggs, um sie schnell zu besiegen.",
"* |cff71d5ff|Hspell:369754|h[Bloodlust]|h|r: Sein Bloodlust bringt die Gruppe in einen Anfall – bring sie nieder und behalte den Buff.",
"* |cff71d5ff|Hspell:369700|h[Quaking Totem]|h|r: der Zitternot verleiht dem Raum Schaden - zerstöre ihn, bevor er fertig ist.",
"* |cff71d5ff|Hspell:369675|h[Chain Lightning]|h|r: sein Chain Lightning springt zwischen die gruppierten Ziele – unterbreche es jedes Mal.",
"* |cff71d5ff|Hspell:369703|h[Thundering Slam]|h|r: Der Thundering Slam bricht den Boden auf – bewege dich aus dem Schlag.",
};

pack["184125"] = { "Chronolord Deios",
"* |cff71d5ff|Hspell:376292|h[Eternal Orb]|h|r: Eternal Orbs bewegen sich durch den Raum – vermeiden Sie den Kontakt.",
"* |cff71d5ff|Hspell:376208|h[Rewind Timeflow]|h|r: er stellt den Zeitfluss zurück und das Schlachtfeld kehrt in seinen ursprünglichen Zustand zurück – behalten Sie die Orientierung.",
"* |cff71d5ff|Hspell:377405|h[Zeitverschleuder]|h|r: Der Zeitverschleuder zieht seine Opfer an – fliehen Sie sofort.",
"* |cff71d5ff|Hspell:376049|h[Wing Buffet]|h|r: Der Wing Buffet schleudert alle zurück – bereiten Sie sich vor, bevor der Angriff kommt.",
"* |cff71d5ff|Hspell:375727|h[Sand Breath]|h|r: Sand Breath verbrennt die Frontseite – halte sie fern.",
};

pack["184422"] = { "Ascheron",
"* |cff71d5ff|Hspell:369049|h[Seeking Flame]|h|r: the seeking flame chases its mark - the marked kite it away from the group.",
"* |cff71d5ff|Hspell:369110|h[Unstable Embers]|h|r: die Glut umkreisen ihn und verteilen sich dann – geben den Funken genügend Platz.",
"* |cff71d5ff|Hspell:368990|h[Purging Flames]|h|r: Eine Welle aus reinigenden Flammen durchstreift den Raum – begeben Sie sich außerhalb ihrer Reichweite.",
"* |cff71d5ff|Hspell:369061|h[Searing Clap]|h|r: Der Searing Clap verbrennt alles vor ihm – positioniere dich richtig oder entferne dich.",
};

pack["184124"] = { "Schildwache Kralldras",
"* |cff71d5ff|Hspell:372600|h[Inexorable]|h|r: Sie wird zu Inexorable und nichts hält ihren Angriff auf - behalten Sie Abstand, bis sie es beendet hat.",
"* |cff71d5ff|Hspell:382071|h[Resonating Orb]|h|r: resonierende Kugeln bewegen sich durch den Raum – vermeiden Sie die Kugeln und deren Wirbel.",
"* |cff71d5ff|Hspell:372718|h[Earthen Shards]|h|r: Earthen Shards fallen at marked positions - dodge the shards.",
"* |cff71d5ff|Hspell:372719|h[Titanic Empowerment]|h|r: Dein Titanischer Einfluss erreicht seinen Höhepunkt – bereite dich darauf vor, den Angriff abzuwehren oder sie zu vernichten, bevor er dich trifft.",
"* |cff71d5ff|Hspell:372701|h[Crushing Stomp]|h|r: Der Crushing Stomp landet mit einem Stoß – bereite dich auf den Rückstoß vor.",
};

bos = { "Die verschollenen Zwerge",
"* |cff71d5ff|Hspell:369563|h[Wild Cleave]|h|r: Der Wild Cleave trifft alle vor uns – halte dich von der Front fern.",
"* |cff71d5ff|Hspell:369573|h[Heavy Arrow]|h|r: der Heavy Arrow schneidet eine Linie – bewege dich aus dem Bereich des Pfeils.",
"* |cff71d5ff|Hspell:369791|h[Skullcracker]|h|r: der Skullcracker greift an – begeben Sie sich aus dem Angriffspfad.",
"* |cff71d5ff|Hspell:369677|h[Abwehr mit Rückstoß]|h|r: Die Abwehr prallt zwischen den Spielern ab – verteile sie, damit sie nicht weiter abprallen.",
"* |cff71d5ff|Hspell:369602|h[Defensive Bulwark]|h|r: der Bulwark sperrt seine Verteidigung auf – unterbreche ihn jedes Mal.",
};
pack["184580"] = bos; pack["184581"] = bos; pack["184582"] = bos;

-- --------------------------------- --
-- The Azure Vault : Zona 2515 --
-- --------------------------------- --

pack["186739"] = { "Azurklinge",
"* |cff71d5ff|Hspell:372222|h[Arcane Cleave]|h|r: sein Arcane Cleave trifft frontal -> halte dich von der Front fern.",
"* |cff71d5ff|Hspell:385578|h[Alte Kugel]|h|r: alte Kugeln verfolgen ihre Ziele – die markierten weichen aus der Gruppe ab.",
"* |cff71d5ff|Hspell:373932|h[Illusionary Bolt]|h|r: unterbreche den Illusionären Bolzen immer.",
"* |cff71d5ff|Hspell:384132|h[Überwältigende Energie]|h|r: Seine Macht steigt mit der Phase – bereite dich auf den Angriff vor.",
"* |cff71d5ff|Hspell:384223|h[Summon Draconic Image]|h|r: seine dracischen Illusionen lösen sich vom Kampf ab – verbrennen Sie die Bilder.",
};

pack["186644"] = { "Leymor",
"* |cff71d5ff|Hspell:374364|h[Leyline Sprouts]|h|r: Leyline Sprouts blühen auf dem Boden – stehen Sie nicht auf den Linien.",
"* |cff71d5ff|Hspell:374567|h[Explosive Eruption]|h|r: die Explosion erfolgt in Schüben – räumen Sie den Boden auf, wenn sie explodiert.",
"* |cff71d5ff|Hspell:374720|h[Consuming Stomp]|h|r: sein Consuming Stomp trifft alle in der Nähe – verteilen Sie sich und heilen Sie es durch.",
"* |cff71d5ff|Hspell:386660|h[Erupting Fissure]|h|r: Risse exploden von ihm aus – vermeide die Risse.",
"* |cff71d5ff|Hspell:374789|h[Infused Strike]|h|r: sein Infused Strike trifft den Tank hart - tauschen Sie die Tanks ab.",
};

pack["186737"] = { "Telash Grauschwinge",
"* |cff71d5ff|Hspell:386781|h[Frost Bomb]|h|r: Wirf eine Frost-Bombe auf einen Spieler -> Die markierten Spieler rennen aus der Gruppe.",
"* |cff71d5ff|Hspell:387151|h[Icy Devastator]|h|r: Der Icy Devastator schneidet eine Linie von Frost – begeben Sie sich aus der Linie.",
"* |cff71d5ff|Hspell:388008|h[War of Absolute Zero]|h|r: der Krieg des absoluten Nullpunktes erstreckt sich im Raum – nutze den Schutz, den die Arena bietet.",
};

pack["186738"] = { "Umbrelskul",
"* |cff71d5ff|Hspell:384978|h[Dragon Strike]|h|r: Der Dragon Strike markiert den Träger – entferne den Debuff vom markierten Ziel.",
"* |cff71d5ff|Hspell:385399|h[Unleashed Destruction]|h|r: Er fliegt und verursacht Zerstörung auf dem Weg – bereite den Durchgang vor.",
"* |cff71d5ff|Hspell:384699|h[Kristallines Gebrüll]|h|r: Der kristalline Gebrüll verursacht eine Welle – halte Abstand.",
"* |cff71d5ff|Hspell:385075|h[Arcane Eruption]|h|r: Der Splitter explodiert mit arkaner Kraft – niemals den Ausbruch berühren.",
};

-- --------------------------------- --
-- The Nokhud Offensive : Zona 2516 --
-- --------------------------------- --

pack["186151"] = { "Balakar Khan",
"* |cff71d5ff|Hspell:376634|h[Eisenstachel]|h|r: Eisenstacheln stechen von ihm aus – vermeide die Stachellinien.",
"* |cff71d5ff|Hspell:376864|h[Static Spear]|h|r: Der Static Spear markt sein Opfer – das markierte Ziel entfernt sich von der Gruppe.",
"* |cff71d5ff|Hspell:376725|h[Storm Bolt]|h|r: unterbreche den Storm Bolt immer.",
"* |cff71d5ff|Hspell:375943|h[Upheaval]|h|r: sein Upheaval zerstört den Boden unter dir – bewege dich, während der Boden Risse bekommt.",
"* |cff71d5ff|Hspell:375937|h[Rending Strike]|h|r: Sein Rending Strike verursacht hohen Schaden – Mitigation hilft.",
};

pack["186616"] = { "Granyth",
"* |cff71d5ff|Hspell:388817|h[Shards of Stone]|h|r: speere aus den Stone-Splittern nach außen - bewege dich aus den Splittern.",
"* |cff71d5ff|Hspell:387155|h[Lanced]|h|r: der Lanzen trifft sein Ziel – der markierte Schritt ausweichen.",
"* |cff71d5ff|Hspell:388283|h[Eruption]|h|r: unterbreche den Ausbruch, wenn er sich aufbaut.",
"* |cff71d5ff|Hspell:385916|h[Tectonic Stomp]|h|r: der Tectonic Stomp - rennen Sie vom Epizentrum weg.",
};

bos = { "Teera und Maruuk",
"* |cff71d5ff|Hspell:382670|h[Gale Arrow]|h|r: der Gale Arrow schneidet eine Linie durch den Raum – bewege dich aus dem Pfeil.",
"* |cff71d5ff|Hspell:386547|h[Repel]|h|r: Der Abstoß-Schlag stößt alle zurück – bereiten Sie sich auf den Schlag vor.",
"* |cff71d5ff|Hspell:385339|h[Earthsplitter]|h|r: Der Earthsplitter teilt den Boden vor sich auf – bewege dich aus den Rissen.",
"* |cff71d5ff|Hspell:386063|h[Frightful Roar]|h|r: der erschreckende Schrei - rennen Sie vor dem Schrei weg.",
"* |cff71d5ff|Hspell:382836|h[Brutalize]|h|r: Die verheerenden Treffer verursachen hohen Schaden – mindern Sie sie.",
};
pack["186339"] = bos; pack["186338"] = bos;

pack["186615"] = { "Der wütende Gewittersturm",
"* |cff71d5ff|Hspell:384686|h[Energy Surge]|h|r: Ihr Energy Surge verstärkt sie – brechen Sie sie beim Boss ab.",
"* |cff71d5ff|Hspell:384620|h[Electrical Storm]|h|r: Der elektrische Sturm trifft alle in der Nähe – verteile und heile ihn aus.",
"* |cff71d5ff|Hspell:384316|h[Lightning Strike]|h|r: Lightning Strikes treffen an den Markierungen – verteile die Angriffe aus den Strikes.",
};

-- --------------------------------- --
-- Neltharus : Zona 2519 --
-- --------------------------------- --

pack["189340"] = { "Chargath der Schuppenschrecken",
"* |cff71d5ff|Hspell:373424|h[Grounding Spear]|h|r: der Grounding Spear markt sein Opfer – fliege das markierte Ziel mit dem Spear weg.",
"* |cff71d5ff|Hspell:374655|h[Fetter]|h|r: der Fetter fess Spieler ein – behalten Sie Abstand, da er bindet.",
"* |cff71d5ff|Hspell:373742|h[Magma Wave]|h|r: die Magma-Welle rollt durch den Raum – weiche der Welle aus, während sie sich ausbreitet.",
"* |cff71d5ff|Hspell:375056|h[Fiery Focus]|h|r: sein Feuerfokus reduziert seine Sichtweite - halte Abstand.",
};

pack["181861"] = { "Magmahauer",
"* |cff71d5ff|Hspell:375068|h[Magma Lob]|h|r: Magma-Angriffe fallen auf die Positionen – ausweichen.",
"* |cff71d5ff|Hspell:375251|h[Lava Spray]|h|r: sein Lavenspray kommt von vorne – halte ihn fern.",
"* |cff71d5ff|Hspell:375436|h[Blazing Charge]|h|r: er greift mit Blazing Charge an – bewege dich aus dem Angriffspfad.",
"* |cff71d5ff|Hspell:374365|h[Volatile Mutation]|h|r: die volatile Mutation regt seine Brut an – geben Sie der angegriffenen Zone Raum.",
};

pack["189478"] = { "Schmiedemeister Gorek",
"* |cff71d5ff|Hspell:374842|h[Blazing Aegis]|h|r: der Blazing Aegis rastet durch den Raum – weiche dem fliegenden Schild aus.",
"* |cff71d5ff|Hspell:374534|h[Heated Swings]|h|r: seine heizenden Angriffe bauen sich beim Tank auf - abwechselnde Tanks.",
"* |cff71d5ff|Hspell:374635|h[Might of the Forge]|h|r: die Macht des Schmieds entfacht sich – bereite dich auf den Angriff vor und heile durch.",
"* |cff71d5ff|Hspell:374969|h[Forgestorm]|h|r: der Forgestorm schlägt den Boden auf – beweg dich aus dem Sturm.",
};

pack["189901"] = { "Kriegsfürstin Sargha",
"* |cff71d5ff|Hspell:376780|h[Magma Shield]|h|r: his magma shield prevents him - melt it with the hall's dragonfire cannon.",
"* |cff71d5ff|Hspell:377522|h[Burning Pursuit]|h|r: Der Burning Pursuit jagt sein Ziel – das markierte Gebäude verfolgen.",
"* |cff71d5ff|Hspell:377018|h[Molten Gold]|h|r: Molten Gold-Seen verteilen sich über den Boden – niemals in der Nähe des Goldes stehen.",
"* |cff71d5ff|Hspell:377204|h[Dragon's Kiln]|h|r: Der Drachenofen explodiert – beweg dich aus dem Ausbruch.",
};

-- --------------------------------- --
-- Brackenhide Hollow : Zona 2520 --
-- --------------------------------- --

pack["186121"] = { "Faultriarchin Zornauge",
"* |cff71d5ff|Hspell:373944|h[Totem de Rot]|h|r: zerstören Sie das Totem, bevor es explodiert.",
"* |cff71d5ff|Hspell:376170|h[Choking Rotcloud]|h|r: choking rotclouds roll through - never stand in the cloud.",
"* |cff71d5ff|Hspell:373917|h[Decaystrike]|h|r: Dein Decaystrike verursacht hohen Schaden - Mitigation hilft.",
};

pack["186116"] = { "Bauchschuss",
"* |cff71d5ff|Hspell:384827|h[Call Hyenas]|h|r: er ruft seine Hyänen - tötet den Schwarm schnell ab.",
"* |cff71d5ff|Hspell:384425|h[Smell Like Meat]|h|r: der markierte Geruch ähnelt Fleisch und die Hyänen verfolgen – bring den Mark weg.",
"* |cff71d5ff|Hspell:384148|h[Ensnaring Trap]|h|r: Fallen stellen Fallen auf den Boden – gehen Sie die Fallen aus.",
"* |cff71d5ff|Hspell:384638|h[Master's Call]|h|r: his control over the pack - interrupt it.",
};

bos = { "Hackklaues Kriegsmeute",
"* |cff71d5ff|Hspell:381461|h[Savage Charge]|h|r: Der Savage Charge greift sein Ziel an – räume den Weg frei oder bleibe im Visier.",
"* |cff71d5ff|Hspell:377827|h[Bladestorm]|h|r: der Bladestorm dreht sich um die Nahkämpfer – die Nahkämpfer treten aus dem Wirbel heraus.",
"* |cff71d5ff|Hspell:378229|h[Markiert für Schlachtung]|h|r: Das markierte Ziel nimmt das Schwert des Gruppens - bereite dich auf den Schlag vor.",
"* |cff71d5ff|Hspell:381379|h[Decayed Senses]|h|r: the decayed senses - purge the debuff off the marked.",
"* |cff71d5ff|Hspell:381466|h[Hextrick]|h|r: der Hex – entferne sofort die Verhexung.",
};
pack["186122"] = bos; pack["186124"] = bos; pack["186125"] = bos;

pack["186120"] = { "Baummaul",
"* |cff71d5ff|Hspell:377222|h[Consume]|h|r: Er teilt sich auf und verschluckt sein Ziel – befreie das Verschluckte, bevor es verdaut wird.",
"* |cff71d5ff|Hspell:376933|h[Grasping Vines]|h|r: grasping vines lash out - pull your feet out of their reach.",
"* |cff71d5ff|Hspell:376811|h[Decay Spray]|h|r: Der Decay-Strahl ergießt sich nach außen – halte Abstand zum Strahl.",
"* |cff71d5ff|Hspell:381770|h[Gushing Ooze]|h|r: der Gushing Ooze - den Ooze unterbrechen.",
};

-- --------------------------------- --
-- Ruby Life Pools : Zona 2521 --
-- --------------------------------- --

pack["189232"] = { "Kokia Feuerhuf",
"* |cff71d5ff|Hspell:372110|h[Molten Boulder]|h|r: der Molten Boulder rollt zu seinem Ziel – vermeide den Boulder.",
"* |cff71d5ff|Hspell:372864|h[Ritual of Blazebinding]|h|r: Das Ritual hält, solange der Djaradin lebt - Verbrenne den Djaradin, um das Ritual zu stoppen.",
"* |cff71d5ff|Hspell:372858|h[Searing Blows]|h|r: Seine Angriffe bauen sich beim Tank auf - wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:384823|h[Inferno]|h|r: Der Inferno ergießt sich durch den Raum – verteile und heile ihn aus.",
};

bos = { "Kyrakka und Erkhart Sturmader",
"* |cff71d5ff|Hspell:381517|h[Winds of Change]|h|r: die Winde des Wandels schieben den Raum um – bereiten Sie sich auf den Schub vor.",
"* |cff71d5ff|Hspell:381525|h[Roaring Firebreath]|h|r: Kyrakkas lauernder Feueratem ergießt sich über sie – halte ihn ab.",
"* |cff71d5ff|Hspell:381516|h[Unterbrechen Sie Cloudburst]|h|r: Erkharts Cloudburst unterbricht Ihre Zauber – unterbrechen Sie es jedes Mal.",
"* |cff71d5ff|Hspell:381862|h[Inferno Core]|h|r: der Inferno-Kern explodiert – verlascht den Kern.",
"* |cff71d5ff|Hspell:381512|h[Stormslam]|h|r: Stormslam verursacht hohen Schaden - Mitigation hilft.",
};
pack["190484"] = bos; pack["190485"] = bos;

pack["188252"] = { "Melidrussa die Unterkühlte",
"* |cff71d5ff|Hspell:373046|h[Awaken Whelps]|h|r: Sie weckt ihre Welpen - tötet die Welpen schnell.",
"* |cff71d5ff|Hspell:372851|h[Chill Storm]|h|r: Der Chill-Sturm wirbelt um sie herum – rennen Sie aus dem Sturm.",
"* |cff71d5ff|Hspell:372988|h[Eispanzer]|h|r: Der Eispanzer schützt sie – zerstöre den Panzer.",
"* |cff71d5ff|Hspell:372682|h[Primal Chill]|h|r: Der Primal Chill-Effekt wird auf die Träger angewendet – beobachte die Stacks und reduziere den Effekt.",
"* |cff71d5ff|Hspell:373022|h[Frozen Solid]|h|r: Der Frost umhüllt einen Spieler und macht ihn bewegungsunfähig – befreie den gefrorenen Spieler sofort.",
};

-- --------------------------------- --
-- Vault of the Incarnates : Zona 2522 --
-- --------------------------------- --

pack["190245"] = { "Bruthüterin Diurna",
"* |cff71d5ff|Hspell:376073|h[Schnelle Inkubation]|h|r: die Brut schlüpfen von selbst – halte die neuen Jungbrüten sauber.",
"* |cff71d5ff|Hspell:378782|h[Mortal Wunden]|h|r: Ihre Mortal Wunden verursachen Blutungen beim Tank – wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:390561|h[Diurna's Gaze]|h|r: Ihr Blick verbrennt den Träger – der markierte Schritt ist frei.",
"* |cff71d5ff|Hspell:375889|h[Greatstaff's Wrath]|h|r: ihr Greatstaff's Wrath greift an – haltet stand.",
"* |cff71d5ff|Hspell:388716|h[Icy Shroud]|h|r: der eisige Schleier kühlt alle – verteile und heile ihn aus.",
};

pack["189813"] = { "Dathea, die Aufgestiegene",
"* |cff71d5ff|Hspell:391686|h[Conductive Mark]|h|r: Das conductive Mark springt zu dem, der sich in der Nähe befindet – verteile es, damit es nicht mehr springt.",
"* |cff71d5ff|Hspell:388410|h[Crosswinds]|h|r: die Crosswinds schneiden in Linien – bewegen Sie sich außerhalb der Linien des Windes.",
"* |cff71d5ff|Hspell:375580|h[Zephyr Slam]|h|r: Der Zephyr-Schlag sendet den Tank fliegend – tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:395501|h[Blowback]|h|r: Der Blowback schleudert alle weg – bereite dich auf den Aufprall vor.",
"* |cff71d5ff|Hspell:376943|h[Zyklon]|h|r: Der Zyklon zieht Spieler an – rennen Sie vom Zyklon weg.",
"* |cff71d5ff|Hspell:387849|h[Coalescing Storm]|h|r: Sie formt ihre Sturm-Elementare – erledige sie schnell.",
};

pack["184972"] = { "Eranog",
"* |cff71d5ff|Hspell:390715|h[Flamerift]|h|r: Der Flamerift markiert seinen Träger – der markierte Gegner bleibt bis zum Sprung des Flamerifts unberührt.",
"* |cff71d5ff|Hspell:396094|h[Greater Flamerift]|h|r: der Greater Flamerift trifft den anderen Tank - abwechselnde Tanks.",
"* |cff71d5ff|Hspell:394906|h[Burning Wound]|h|r: his burning wound stacks up fast - swap the tank before the stacks bite.",
"* |cff71d5ff|Hspell:370615|h[Molten Cleave]|h|r: sein Molten Cleave schneidet den Boden auf – vermeide den Aufprall.",
"* |cff71d5ff|Hspell:396023|h[Incinerating Roar]|h|r: der Incinerating Roar – verteile und heile ihn durch.",
"* |cff71d5ff|Hspell:396022|h[Molten Spikes]|h|r: Molten Spikes richten sich auf Ziele -> Ausweichen.",
};

pack["184986"] = { "Kurog Grimmtotem",
"* |cff71d5ff|Hspell:372158|h[Sunder's Strike]|h|r: Sunder's Strike trifft den Tank hart – wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:373329|h[Molten Rupture]|h|r: sein Molten Rupture erzeugt einen Ring aus Feuer – bewegt sich zwischen den Ringen.",
"* |cff71d5ff|Hspell:374023|h[Searing Carnage]|h|r: Der Searing Carnage explodiert an den Markierungen – bewege dich aus dem Carnage.",
"* |cff71d5ff|Hspell:372458|h[Absolute Zero]|h|r: Absolute Zero markiert seinen Träger – es zieht ihn weit von der Gruppe weg.",
"* |cff71d5ff|Hspell:373678|h[Biting Chill]|h|r: Der Biting Chill bleibt dort, wo er gelandet ist – vermeiden Sie den verbleibenden Frost.",
};

pack["189492"] = { "Raszageth die Sturmfresserin",
"* |cff71d5ff|Hspell:381615|h[Statische Ladung]|h|r: Die statische Ladung springt auf die Nähe – verteile sie, damit sie nicht mehr springt.",
"* |cff71d5ff|Hspell:377612|h[Hurricane Wing]|h|r: Der Hurricane-Flügel schleudert alle zurück – sichern Sie den Flügel.",
"* |cff71d5ff|Hspell:388643|h[Volatile Current]|h|r: die volatilen Ströme verteilen Funken – verteilen Sie sich von den Funken.",
"* |cff71d5ff|Hspell:395906|h[Elektrisierte Kiefer]|h|r: Die elektrisierten Kiefer des Bosses greifen den Tank an – tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:377594|h[Lightning Breath]|h|r: her lightning breath sears her front - keep out of the breath.",
};

pack["187967"] = { "Sennarth, der kalte Atem",
"* |cff71d5ff|Hspell:371976|h[Chilling Blast]|h|r: Der Chilling Blast springt auf denjenigen, der sich in der Nähe befindet - verteile ihn, damit er nicht weiter springt.",
"* |cff71d5ff|Hspell:372082|h[Enveloping Webs]|h|r: die Enveloping Webs fangen einen Spieler ein – schneide den gefangten aus dem Netz.",
"* |cff71d5ff|Hspell:372238|h[Call Spiderlings]|h|r: Sie ruft ihre Spinnenbabys - tötet die Brut schnell.",
"* |cff71d5ff|Hspell:372030|h[Klebstoffnetz]|h|r: Das Klebstoffnetz verlangsamt alle, die darin gefangen sind – beseitigen Sie das Netz schnell.",
"* |cff71d5ff|Hspell:373405|h[Gossamer Burst]|h|r: Der Gossamer Burst zieht alle zu sich – bereiten Sie sich auf den Zug vor.",
};

pack["190496"] = { "Terros",
"* |cff71d5ff|Hspell:380487|h[Rock Blast]|h|r: Der Rock Blast schleudert Felsbrocken auf die Ziele – vermeide die Felsbrocken.",
"* |cff71d5ff|Hspell:381253|h[Awakened Earth]|h|r: der erwachte Boden explodiert unter seinem Angriffspunkt – der markierte Charakter bewegt sich vom Angriff ab.",
"* |cff71d5ff|Hspell:376279|h[Concussive Slam]|h|r: sein concussiver Schlag – bereite den Schlag vor und heile den Spik.",
"* |cff71d5ff|Hspell:377166|h[Resonating Annihilation]|h|r: Resonating Annihilation ist sein mächtigstes Schlag – bereite dich auf den Schlag vor und heile aggressiv.",
"* |cff71d5ff|Hspell:383073|h[Shattering Impact]|h|r: Die Shattering Impacts verursachen Erdbeben – vermeide die Treffer.",
};

bos = { "Der Primalistenrat",
"* |cff71d5ff|Hspell:371591|h[Frost Tomb]|h|r: Die Frost-Grabmals sind ein Spieler – öffnen Sie das Grabmal sofort.",
"* |cff71d5ff|Hspell:386440|h[Glacial Convocation]|h|r: the glacial convocation - brace the icy ritual and heal.",
"* |cff71d5ff|Hspell:373059|h[Primal Blizzard]|h|r: Der Primal Blizzard trifft den Raum – verteile und heile ihn.",
"* |cff71d5ff|Hspell:371624|h[Conductive Mark]|h|r: jeder Conductive Mark beansprucht seinen eigenen Pfeiler – bringe deinen Mark auf seinen Pfeiler.",
"* |cff71d5ff|Hspell:372315|h[Frost Spike]|h|r: Unterbreche den Frostspieß jedes Mal.",
};
pack["187771"] = bos; pack["187768"] = bos; pack["187772"] = bos; pack["187767"] = bos;

-- --------------------------------- --
-- Algeth'ar Academy : Zona 2526 --
-- --------------------------------- --

pack["191736"] = { "Kraas",
"* |cff71d5ff|Hspell:377004|h[Deafening Screech]|h|r: der ohrenbetäubende Schrei - verteilen Sie sich vom Schrei.",
"* |cff71d5ff|Hspell:377034|h[Überwältigender Wind]|h|r: sein überwältigender Wind treibt die Front weg – sich dem Wind entgegenstellen oder die Front verlassen.",
"* |cff71d5ff|Hspell:376997|h[Savage Peck]|h|r: Der Savage Peck trifft hart – Mitigation hilft.",
"* |cff71d5ff|Hspell:376448|h[Firestorm]|h|r: Der Feuersturm ergießt sich – vermeiden Sie die fallenden Flammen.",
};

pack["190609"] = { "Echo von Doragosa",
"* |cff71d5ff|Hspell:374352|h[Energy Bomb]|h|r: Die Energy Bomben explodieren und verteilen sich auf mehreren Zielen – verteile die Explosionen.",
"* |cff71d5ff|Hspell:374361|h[Astral Breath]|h|r: Halte ihren Astralatem – halte ihn von ihrer Front fern.",
"* |cff71d5ff|Hspell:388820|h[Power Vacuum]|h|r: Der Power-Vakuum zieht alle an – rennen Sie davon.",
};

pack["186951"] = { "Überwuchertes Urtum",
"* |cff71d5ff|Hspell:388796|h[Germinate]|h|r: die Samen keimen zu Schlägern – beseitigen Sie die Keimlinge, bevor sie wachsen.",
"* |cff71d5ff|Hspell:396640|h[Healing Touch]|h|r: seine Heilung repariert ihn – unterbreche sie jedes Mal.",
"* |cff71d5ff|Hspell:388544|h[Barkbreaker]|h|r: Sein Barkbreaker verursacht hohen Schaden – Mitigation hilft.",
"* |cff71d5ff|Hspell:388923|h[Burst Forth]|h|r: der Burst Forth – verteilen und heilen.",
};

pack["194181"] = { "Vexamus",
"* |cff71d5ff|Hspell:385974|h[Arcane Orbs]|h|r: die Arcane-Kugeln lösen sich – fangen Sie die Kugeln ab, bevor sie im Raum abfallen.",
"* |cff71d5ff|Hspell:386173|h[Mana Bombs]|h|r: Die Mana Bombs verfolgen ihre Ziele – verteilen Sie sie von den Zielen aus.",
"* |cff71d5ff|Hspell:385958|h[Arcane Expulsion]|h|r: Die Arcane Expulsion trifft alle in Reichweite – mitigieren und heilen.",
"* |cff71d5ff|Hspell:388537|h[Arcane Fissure]|h|r: arcane fissures tear the floor - avoid the fissures.",
};

-- --------------------------------- --
-- Halls of Infusion : Zona 2527 --
-- --------------------------------- --

pack["189722"] = { "Schlingender Goliath",
"* |cff71d5ff|Hspell:385551|h[Gulp]|h|r: er schluckt sein Ziel ein -> die Gruppe erhält das Ziel zurück aus dem Schlund.",
"* |cff71d5ff|Hspell:385531|h[Body Slam]|h|r: Body Slam durchführt -> Verlasse den Slam-Pfad.",
"* |cff71d5ff|Hspell:374389|h[Swog Toxin]|h|r: Der Swog-Toxin stapelt sich auf dem Tank – reduziere die Stacks.",
"* |cff71d5ff|Hspell:385187|h[Überwältigendes Krächzen]|h|r: sein überwältigendes Krächzen – verbreite und heile es.",
};

pack["189727"] = { "Khajin die Unbeugsame",
"* |cff71d5ff|Hspell:390111|h[Frost Cyclone]|h|r: Frost-Zyklone ziehen durch den Raum – stehen Sie niemals in den Zyklo.",
"* |cff71d5ff|Hspell:386757|h[Hailstorm]|h|r: Der Hagel beschlägt die Arena – Nutzen Sie den Schutz, den die Arena bietet.",
"* |cff71d5ff|Hspell:386559|h[Glacial Surge]|h|r: der Glacial Surge breitet sich aus – vermeide den Angriff.",
"* |cff71d5ff|Hspell:385963|h[Frost Shock]|h|r: der Frost-Schock – beseitige ihn von dem markierten Ziel.",
};

pack["189729"] = { "Urtümlicher Tsunami",
"* |cff71d5ff|Hspell:387571|h[Focused Deluge]|h|r: der fokussierte Deluge schlägt zu – bereite dich auf den Deluge vor.",
"* |cff71d5ff|Hspell:387474|h[Infused Globule]|h|r: Infused Globs bewegen sich frei – platziere die Globs, bevor sie auf die Gruppe fallen.",
"* |cff71d5ff|Hspell:388424|h[Tempest's Fury]|h|r: Tempest's Fury beschädigt den gesamten Raum – haltet stand und heilt.",
"* |cff71d5ff|Hspell:387504|h[Squall Buffet]|h|r: der Squall-Buff erschießt alle zurück – bereite dich auf den Rückstoß vor.",
};

pack["189719"] = { "Hüter Irideus",
"* |cff71d5ff|Hspell:389179|h[Power Overload]|h|r: his power overload surges wild - run clear of the overload.",
"* |cff71d5ff|Hspell:383840|h[Ablative Barrier]|h|r: der ablativen Barriere schützt er – zerstöre die Barriere.",
"* |cff71d5ff|Hspell:384014|h[Static Surge]|h|r: Der Static Surge trifft jeden – verteile und heile ihn aus.",
"* |cff71d5ff|Hspell:384524|h[Titan Fists]|h|r: seine Titan-Fäuste zittern vorwärts – bleiben Sie aus dem Weg.",
};

-- --------------------------------- --
-- Amirdrassil, the Dream's Hope : Zona 2549 --
-- --------------------------------- --

bos = { "Rat der Träume",
"* |cff71d5ff|Hspell:418187|h[Neuer Anfang]|h|r: der gefallene Wächter erhebt sich erneut, es sei denn, er wird verbrannt – verbrenne ihn schnell.",
"* |cff71d5ff|Hspell:421022|h[Agonizing Claws]|h|r: Die Agonizing Claws greifen den Tank an – tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:420948|h[Barreling Charge]|h|r: der Barreling Charge stürmt auf sein Ziel zu – räume den Weg frei.",
"* |cff71d5ff|Hspell:420525|h[Blinding Rage]|h|r: the blinding rage - spread and heal it through.",
"* |cff71d5ff|Hspell:420671|h[Noxious Blossom]|h|r: Noxious Blossoms erscheinen auf dem Boden – vermeiden Sie die Blüten.",
};
pack["208363"] = bos; pack["208365"] = bos; pack["208367"] = bos;

pack["204931"] = { "Fyrakk der Lodernde",
"* |cff71d5ff|Hspell:417443|h[Fyralath's Mark]|h|r: sein Zeichen verursacht Schaden am Tank – wechseln Sie die Tanks.",
"* |cff71d5ff|Hspell:419506|h[Firestorm]|h|r: Der Feuersturm verbrennt den Raum – haltet stand und heilt aggressiv.",
"* |cff71d5ff|Hspell:430441|h[Darkflame Shades]|h|r: seine Darkflame-Schattierungen greifen an – verbrennen Sie die Schatten schnell.",
"* |cff71d5ff|Hspell:417455|h[Dream Rend]|h|r: der Traumriss – rennen Sie vor dem Biss weg.",
"* |cff71d5ff|Hspell:420422|h[Wild Fire]|h|r: Wild Fire verursacht Flächenschaden und Heilung.",
"* |cff71d5ff|Hspell:414186|h[Blaze]|h|r: der glühende Pfad bleibt hinter ihm zurück – vermeiden Sie den Pfad.",
};

pack["209333"] = { "Knorrenwurzel",
"* |cff71d5ff|Hspell:421898|h[Flaming Pestilence]|h|r: Die Flammenpest verbreitet ihren widerlichen Brand – mindere die Pest aus.",
"* |cff71d5ff|Hspell:422053|h[Shadow Spines]|h|r: sein Schattenstachel-Speer greift an – weiche den Stacheln aus.",
"* |cff71d5ff|Hspell:421972|h[Controlled Burn]|h|r: Controlled Burn nutzt seine Fähigkeit wie eine Bombe - die markierten Ziele werden durch die Explosion weggeblasen.",
"* |cff71d5ff|Hspell:424352|h[Dreadfire Barrage]|h|r: der Dreadfire-Barrage – die Tanks wechseln sich damit ab.",
"* |cff71d5ff|Hspell:422026|h[Tortured Scream]|h|r: the tortured scream - spread and heal it through.",
"* |cff71d5ff|Hspell:425816|h[Blazing Pollen]|h|r: der Blazing Pollen - unterbreche ihn jedes Mal.",
};

pack["200926"] = { "Igira die Grausame",
"* |cff71d5ff|Hspell:414340|h[Drenched Blades]|h|r: Ihre nassen Klingen verursachen Blutverlust beim Tank – wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:414888|h[Blistering Spear]|h|r: Ihre Blistering Spears stechen ihre Ziele - vermeiden Sie die Speere.",
"* |cff71d5ff|Hspell:414367|h[Gathering Torment]|h|r: der Gathering Torment verfolgt sein Ziel – mindere die Markierung, bevor sie ihren Höhepunkt erreicht.",
"* |cff71d5ff|Hspell:416048|h[Umbral Destruction]|h|r: der Umbral-Destruktion – nutze die Zerstörung und heile stark.",
"* |cff71d5ff|Hspell:419462|h[Flesh Mortification]|h|r: Flesh Mortification nutzt seinen Träger – beseitige es, wenn es seinen Höhepunkt erreicht.",
};

pack["208445"] = { "Larodar, Bewahrer der Flamme",
"* |cff71d5ff|Hspell:417653|h[Force of Nature]|h|r: seine Naturkräfte greifen an – beseitige die Kräfte schnell.",
"* |cff71d5ff|Hspell:418520|h[Blistering Splinters]|h|r: der Blistering Splinters-Speer -> spuckt Splinter aus - ausweichen.",
"* |cff71d5ff|Hspell:422614|h[Scorching Roots]|h|r: seine verbrüntes Wurzeln verankern ihre Träger – verbrennen Sie die Wurzeln frei.",
"* |cff71d5ff|Hspell:417667|h[Charred Treant]|h|r: die verbrannten Treanten stehen im Weg – verbrennen Sie sie.",
"* |cff71d5ff|Hspell:429032|h[Everlasting Blaze]|h|r: Everlasting Blaze verbrennt alles – bereite dich auf die Flammen vor und heile hart.",
};

pack["206172"] = { "Nymue, Weberin des Kreises",
"* |cff71d5ff|Hspell:420846|h[Continuum]|h|r: der Continuum-Ring streift den Boden – bewege dich auf den Pfad, den der Sweep bereits freigeräumt hat.",
"* |cff71d5ff|Hspell:420554|h[Verdant Matrix]|h|r: the verdant matrix webs across the floor - never stand in the web.",
"* |cff71d5ff|Hspell:430563|h[Ephemeral Flora]|h|r: die ephemere Flora teilt ihre Blüte – greifen sie gemeinsam an.",
"* |cff71d5ff|Hspell:429615|h[Impending Loom]|h|r: the impending loom lines up - get out of the lines.",
"* |cff71d5ff|Hspell:420907|h[Viridian Rain]|h|r: der Viridian-Regen – vermeiden Sie den Regen.",
};

pack["200927"] = { "Glimmeron",
"* |cff71d5ff|Hspell:421656|h[Cauterizing Wound]|h|r: der Verbrennungs-Schaden verbrennt den Tank – alternativer Tanks.",
"* |cff71d5ff|Hspell:422577|h[Searing Aftermath]|h|r: der Searing Aftermath verursacht hohen Schaden – rennen Sie von dem Aftermath weg.",
"* |cff71d5ff|Hspell:425885|h[Seeking Inferno]|h|r: die Seeking Infernos jagen ihre Ziele – sie verfolgen die markierten Ziele.",
"* |cff71d5ff|Hspell:421343|h[Brand of Damnation]|h|r: the brand of damnation rides its bearer - brace the brand.",
"* |cff71d5ff|Hspell:421455|h[Overheated]|h|r: Er wird überhitzt und erhöht seinen Schaden – heilen Sie ihn stark durch die Überhitzung.",
};

pack["209090"] = { "Tindral Raschweise, Seher der Flamme",
"* |cff71d5ff|Hspell:422000|h[Searing Wrath]|h|r: sein sengende Wut - alternative Tanks.",
"* |cff71d5ff|Hspell:423260|h[Blazing Mushroom]|h|r: his blazing mushrooms bloom - burst the mushrooms before they burst.",
"* |cff71d5ff|Hspell:420236|h[Falling Stars]|h|r: die fallenden Sterne treffen an Markierungen – weiche den Sternen aus.",
"* |cff71d5ff|Hspell:424581|h[Fiery Growth]|h|r: der feuerhafte Wuchs reitet auf seinem Träger – halte den Träger von der Gruppe fern.",
"* |cff71d5ff|Hspell:424495|h[Mass Entanglement]|h|r: Das Mass-Entanglement fesselt die Gruppe – befreie die gefesselten schnell.",
};

pack["208478"] = { "Volcoross",
"* |cff71d5ff|Hspell:421207|h[Coiling Flames]|h|r: die sich windenden Flammen umfassen ihre Träger – die umwickelten lösen sich auf, bevor die Spirale explodiert.",
"* |cff71d5ff|Hspell:427201|h[Coiling Eruption]|h|r: Die Coiling Eruption explodiert, wenn sie ihre Träger berührt – die Träger neutralisieren den Angriff.",
"* |cff71d5ff|Hspell:420933|h[Flut von Firelands]|h|r: Der Flut von Firelands teilt seinen Angriff - absorbieren Sie ihn gemeinsam.",
"* |cff71d5ff|Hspell:421616|h[Volkanische Auswurf]|h|r: sein vulkanischer Auswurf trifft – vermeiden Sie die fallenden Flammen.",
"* |cff71d5ff|Hspell:421703|h[Serpent's Wrath]|h|r: Der Zorn des Schlangen erreicht seinen Höhepunkt – bereitet euch darauf vor.",
};

-- --------------------------------- --
-- Aberrus, the Shadowed Crucible : Zona 2569 --
-- --------------------------------- --

pack["199659"] = { "Angriff der Zaqali",
"* |cff71d5ff|Hspell:401258|h[Heavy Cudgel]|h|r: der Heavy Cudgel trifft den Tank - abwechselnde Tanks.",
"* |cff71d5ff|Hspell:401108|h[Phoenix Rush]|h|r: der Phoenix-Rush – begeben Sie sich aus der Rush-Linie.",
"* |cff71d5ff|Hspell:397383|h[Magma Mystic]|h|r: Die Magma Mystics entfachen sich – verbrennen die Mystics schnell.",
"* |cff71d5ff|Hspell:401381|h[Fokus mit erhöhter Stärke]|h|r: der erhöhte Fokus – rennen Sie von dem Fokus weg.",
"* |cff71d5ff|Hspell:407009|h[Vigorous Gale]|h|r: der Vigorous Gale stößt die Gruppe – positioniere dich, um den Stoß abzufangen.",
};

pack["201668"] = { "Echo von Neltharion",
"* |cff71d5ff|Hspell:402902|h[Twisted Earth]|h|r: die verdrehten Mauern bilden eine Falle – niemals in die Mauern stehen.",
"* |cff71d5ff|Hspell:407221|h[Rushing Darkness]|h|r: der Rushing Darkness verfolgt sein Ziel – das markierte Ziel entkommt dem Darkness.",
"* |cff71d5ff|Hspell:402115|h[Echoing Fissure]|h|r: der Echoing Fissure – rennen Sie von der Fissure weg.",
"* |cff71d5ff|Hspell:401998|h[Calamitous Strike]|h|r: sein Calamitous Strike stößt den Tank zurück – alternativer Tank.",
"* |cff71d5ff|Hspell:410953|h[Volcanic Heart]|h|r: die vulkanischen Herzen blühen unter Ihren Füßen – vermeiden Sie die Herzen.",
};

pack["201261"] = { "Kazzara, die Höllengeschmiedete",
"* |cff71d5ff|Hspell:407196|h[Dread Rifts]|h|r: die Dread Rifts ziehen sich durch den Raum – steigen Sie aus den Rifts aus.",
"* |cff71d5ff|Hspell:402253|h[Ray of Anguish]|h|r: Sein Strahl der Qual zerstört die Linie seines Gegners – der markierte unterbricht den Strahl.",
"* |cff71d5ff|Hspell:400430|h[Hellstrahl]|h|r: Sein Hellstrahl trifft den Boden – bewege dich aus dem Strahl.",
"* |cff71d5ff|Hspell:404743|h[Terror Claws]|h|r: Die Terror-Krallen des Bosses greifen den Tank an - tauschen Sie die Tanks ab.",
"* |cff71d5ff|Hspell:403326|h[Winds of Extinction]|h|r: die Winde der Ausrottung stoßen zurück – bereiten Sie sich auf den Stoß vor.",
};

pack["201579"] = { "Magmorax",
"* |cff71d5ff|Hspell:408839|h[Heat Stacks]|h|r: Sein Hit-Aufbau wirkt sich auf alle aus – bereite dich auf die Verbrennung vor und versuche, den Kampf schnell zu beenden.",
"* |cff71d5ff|Hspell:402994|h[Molten Spittle]|h|r: sein Molten Spittle teilt seinen Spritzer – spuckt ihn zusammen.",
"* |cff71d5ff|Hspell:403740|h[Igniting Roar]|h|r: der Igniting Roar – verteile und heile ihn aus.",
"* |cff71d5ff|Hspell:407879|h[Blazing Tantrum]|h|r: sein Wutausbruch verbrennt den Boden um ihn herum – der Tank bewegt ihn aus dem Weg.",
"* |cff71d5ff|Hspell:409093|h[Blazing Breath]|h|r: his blazing breath washes his front - keep out of the breath.",
};

pack["201320"] = { "Ältester Rashok",
"* |cff71d5ff|Hspell:401419|h[Siphon Energy]|h|r: er saugt seine Energie aus dem Säulen - drain ihn schnell, sonst regeneriert er sich.",
"* |cff71d5ff|Hspell:405316|h[Ancient Fury]|h|r: der Ancient Fury – nutze den Wut-Effekt, wenn er aktiv ist; halte seinen Angriff aufrecht.",
"* |cff71d5ff|Hspell:400777|h[Charged Smash]|h|r: Der Charged Smash teilt seine Explosion - absorbiert sie gemeinsam.",
"* |cff71d5ff|Hspell:406851|h[Feuer des Todes]|h|r: Der Feuer des Todes teilt seinen Angriff - greift ihn gemeinsam an.",
"* |cff71d5ff|Hspell:405821|h[Searing Slam]|h|r: sein Searing Slam verursacht hohen Schaden – alternative Tanks.",
};

pack["201754"] = { "Schuppenkommandant Sarkareth",
"* |cff71d5ff|Hspell:401951|h[Oblivion]|h|r: seine Oblivion-Stacks füllen den Raum aus – bereite dich auf die aufkommende Dunkelheit vor.",
"* |cff71d5ff|Hspell:401215|h[Emptiness Between Stars]|h|r: der Leerraum zwischen den Sternen teleportiert seinen Träger – die markierten Klammern fangen den Leerraum ein.",
"* |cff71d5ff|Hspell:407576|h[Astral Flare]|h|r: die astralen Explosionen – sie breiten sich von den Explosionen aus.",
"* |cff71d5ff|Hspell:401383|h[Oppressing Howl]|h|r: sein Oppressing Howl drückt nach – bereite den Howl vor.",
"* |cff71d5ff|Hspell:401810|h[Glittering Surge]|h|r: der Glittering Surge – verteile und heile ihn aus.",
};

bos = { "Die Verschmelzungskammer",
"* |cff71d5ff|Hspell:401809|h[Corrupting Shadow]|h|r: the corrupting shadow contaminates its carrier - the marked step leaves the sludge.",
"* |cff71d5ff|Hspell:405036|h[Umbral Detonation]|h|r: die Umbral Detonation explodiert an ihrem Ziel – der markierte Bereich.",
"* |cff71d5ff|Hspell:407640|h[Shadow's Convergence]|h|r: der Schatten-Konvergenzpunkt – halte den Weg frei.",
"* |cff71d5ff|Hspell:404732|h[Feuersturm]|h|r: Der Feuersturm teilt seine Explosion – absorbiert sie gemeinsam.",
"* |cff71d5ff|Hspell:403459|h[Coalescing Void]|h|r: der coalescing void – verteile und heile ihn aus.",
};
pack["201774"] = bos; pack["201773"] = bos; pack["201934"] = bos;

bos = { "Die vergessenen Experimente",
"* |cff71d5ff|Hspell:406311|h[Infusionen]|h|r: Die Infusionen wirken auf den Tank – wechseln Sie die Tanks ab.",
"* |cff71d5ff|Hspell:406358|h[Rending Charge]|h|r: Die Rending Charges greifen an - weiche den Angriffen aus.",
"* |cff71d5ff|Hspell:404472|h[Massive Slam]|h|r: Der Massive Slam wirkt – begeben Sie sich aus dem Slam.",
"* |cff71d5ff|Hspell:404713|h[Bellowing Roar]|h|r: Der Bellowing Roar stößt zurück – bereite dich auf den Aufprall vor.",
"* |cff71d5ff|Hspell:407327|h[Unstable Essence]|h|r: the unstable essence marks its bearer - keep the essence away from the group.",
};
pack["200912"] = bos; pack["200913"] = bos; pack["200918"] = bos;

pack["202375"] = { "Der aufmerksame Verwalter, Zskarn",
"* |cff71d5ff|Hspell:405736|h[Fallen von Drachenfeuer]|h|r: Die Fallen von Drachenfeuer aktivieren sich – gehen Sie die bewachten Fallen an.",
"* |cff71d5ff|Hspell:405812|h[Animate Golems]|h|r: seine Golems werden aktiv – töte die Golems schnell.",
"* |cff71d5ff|Hspell:405919|h[Aktivieren Sie die Falle]|h|r: Die Aktivierung der Falle – unterbrechen Sie sie, bevor sie ausgelöst wird.",
"* |cff71d5ff|Hspell:403978|h[Blast Wave]|h|r: Die Schallwelle schleudert dich zurück – bereite dich auf den Aufprall vor.",
"* |cff71d5ff|Hspell:404010|h[Unstable Embers]|h|r: die instabilen Glut verteilen sich – vermeiden Sie die Glut.",
};

-- --------------------------------- --
-- Dawn of the Infinite : Zona 2579 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["203678"] = { "Grommash Hellscream",
"* |cff71d5ff|Hspell:410235|h[Bladestorm]|h|r: die Klingen drehen sich im Nahkampf – bewegen Sie sich aus dem Wirbel.",
"* |cff71d5ff|Hspell:410254|h[Decapitar]|h|r: Das Abschneiden zerquetscht den Tank – Verteidigung auf dem markierten Schlag.",
"* |cff71d5ff|Hspell:408227|h[Shockwave]|h|r: Die Schallwelle breitet sich über das Feld aus – bewege dich aus ihrem Einflussbereich.",
"* |cff71d5ff|Hspell:418046|h[FÜR DIE HORDEN!]|h|r: Der Schrei weckt seine Armee – beseitigt die aufgeladenen Soldaten schnell.",
"* |cff71d5ff|Hspell:407122|h[Regen von Feuer]|h|r: seine Soldaten erzeugen Feuerregen in einzelnen Bereichen – bewegen Sie sich aus jedem Bereich.",
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["203679"] = { "Anduin Lothar",
"* |cff71d5ff|Hspell:410235|h[Bladestorm]|h|r: die Klingen drehen sich im Nahkampf – bewege dich aus dem Wirbel.",
"* |cff71d5ff|Hspell:418059|h[Mortal Strikes]|h|r: Die Angriffe zerquetschen den Tank – Verteidigung auf dem markierten Schlag.",
"* |cff71d5ff|Hspell:418054|h[Shockwave]|h|r: die Welle rollt über das Feld – bewege dich aus ihrem Weg.",
"* |cff71d5ff|Hspell:418047|h[Für die Allianz!]|h|r: Der Schrei weckt seine Armee – beseitigt die geladenen Soldaten schnell.",
"* |cff71d5ff|Hspell:417018|h[Blizzard]|h|r: seine Soldaten verursachen Froststürme – verlasst jeden Sturm.",
};
-- --------------------------------- --

bos = { "Verseuchung von Galakrond",
"* |cff71d5ff|Hspell:407406|h[Corrosion]|h|r: Der Corrosions-Effekt wird vom Träger übertragen – der markierte Spieler hält den Verderb von der Gruppe fern.",
"* |cff71d5ff|Hspell:407159|h[Reclamation]|h|r: die Reclamation – entkommen Sie der Explosion.",
"* |cff71d5ff|Hspell:407978|h[Necrotic Winds]|h|r: die nekrotischen Winde – verteile und heile sie durch.",
"* |cff71d5ff|Hspell:406886|h[Corrosive Infusion]|h|r: die corrosive Infusion befindet sich auf dem Boden – vermeiden Sie die Infusion.",
"* |cff71d5ff|Hspell:408141|h[Blight Breath]|h|r: Der Blight Breath trifft seine Front – halten Sie ihn davon fern.",
};
pack["198997"] = bos; pack["201792"] = bos; pack["201788"] = bos; pack["201790"] = bos;

pack["198995"] = { "Chronikar",
"* |cff71d5ff|Hspell:413142|h[Eon Shatter]|h|r: der Eon Shatter reißt den Boden auf – bewege dich aus dem Shatter.",
"* |cff71d5ff|Hspell:413013|h[Chrono Shear]|h|r: Dein Chrono Shear trifft den Tank stark – rotiere die Tanks ab.",
"* |cff71d5ff|Hspell:401421|h[Sand Stomp]|h|r: der Sandstoss verteilt sich – verteile dich vom Stoss.",
};

pack["199000"] = { "Chronolord Deios",
"* |cff71d5ff|Hspell:416152|h[Summon Infinite Keeper]|h|r: seine unendlichen Wächter erwachen – verbrenne die Wächter schnell.",
"* |cff71d5ff|Hspell:410904|h[Infinity Orb]|h|r: der Infinity-Orb rollt wild – niemals den Orb berühren.",
"* |cff71d5ff|Hspell:411763|h[Infinite Blast]|h|r: Interruptiere den [Infinite Blast] jedes Mal.",
"* |cff71d5ff|Hspell:416139|h[Temporärer Atem]|h|r: Sein temporärer Atem trifft auf die Front – halten Sie ihn fern.",
"* |cff71d5ff|Hspell:412027|h[Chronal Burn]|h|r: der Chronal-Verb – entferne ihn von den markierten Zielen.",
};

pack["198933"] = { "Iridikron der Steingeschuppte",
"* |cff71d5ff|Hspell:409261|h[Extinction Blast]|h|r: Sein Extinction Blast ist zu groß, um ihn auszuweichen – nutze den Schutz, den die Arena bietet.",
"* |cff71d5ff|Hspell:409456|h[Earthsurge]|h|r: sein Earthsurge erzeugt Steine – bereite dich auf den Angriff vor.",
"* |cff71d5ff|Hspell:414535|h[Stonecracker Barrage]|h|r: Der Stonecracker Barrage teilt seine Explosion – absorbiert sie gemeinsam.",
"* |cff71d5ff|Hspell:409635|h[Pulverizing Breath]|h|r: his pulverizing breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:414184|h[Cataclysmic Obliteration]|h|r: die Cataclysmic Obliteration ist sein Peak – bereite dich auf die Obliteration vor und heile hart.",
};

pack["198996"] = { "Manifestierte Zeitwege",
"* |cff71d5ff|Hspell:405696|h[Chrono-faded]|h|r: the chrono-faded grips its bearer - brace the fading.",
"* |cff71d5ff|Hspell:405431|h[Fragments of Time]|h|r: die Zeitfragmente schweben lose – halten Sie Abstand zu den Fragmenten.",
};

pack["198999"] = { "Morchie",
"* |cff71d5ff|Hspell:403891|h[More Problems]|h|r: Ihre früheren Versionen stürmen auf – beseitigen Sie sie schnell.",
"* |cff71d5ff|Hspell:401200|h[Fixiere]|h|r: Fixiere fixiert sich auf sein Ziel – das markierte Gebäude läuft.",
"* |cff71d5ff|Hspell:404364|h[Dragon Breath]|h|r: Ihr Drachenatem trifft hauptsächlich den Vorderbereich – halten Sie ihn fern.",
"* |cff71d5ff|Hspell:406481|h[Time Traps]|h|r: Time Traps erscheinen auf dem Boden – vermeide es, in die Fallen zu treten.",
"* |cff71d5ff|Hspell:401667|h[Time Stasis]|h|r: Time Stasis freezes its target – avoid the Stasis.",
};

pack["198998"] = { "Tyr, der ewige Hüter",
"* |cff71d5ff|Hspell:400681|h[Funke des Tyr]|h|r: Die Funken des Tyr verteilen sich auf Ziele – verteile dich von den Funken.",
"* |cff71d5ff|Hspell:400642|h[Siphon Oath]|h|r: der Siphon Oath-Schutz schützt ihn – zerstöre den Schutz.",
"* |cff71d5ff|Hspell:401248|h[Titanic Blow]|h|r: sein Titanischer Schlag schleudert den Tank - wechseln Sie die Tanks.",
"* |cff71d5ff|Hspell:400641|h[Dividing Strike]|h|r: Der Dividing Strike teilt seine Explosion – absorbiert sie gemeinsam.",
"* |cff71d5ff|Hspell:401482|h[Infinite Annihilation]|h|r: die unendliche Vernichtung – entfernen Sie sich von der Explosion.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["209574"] = { "Aurostor, Der Hibernator",
"* |cff71d5ff|Hspell:421059|h[Cranky Tantrum]|h|r: sein wütender Ausbruch verstärkt sich, wenn er sich bewegt – bleiben Sie ruhig während des Ausbruchs.",
"* |cff71d5ff|Hspell:420895|h[Groggy Bash]|h|r: seine trägheitsbedingten Schläge sind weitflächig -> halte Abstand.",
"* |cff71d5ff|Hspell:420925|h[Pulverizing Outburst]|h|r: der Pulverizing Outburst – entkommen Sie dem Ausbruch.",
"* |cff71d5ff|Hspell:421260|h[Shaking Roar]|h|r: sein erschütternder Schrei lässt den Boden erzittern – bleibe weiterhin über den Schock hinweg.",
};

pack["193535"] = { "Basrikron, Der Schieferflügel",
"* |cff71d5ff|Hspell:385506|h[Awaken the Crag]|h|r: the crag wakes to fight - clear the crag fast.",
"* |cff71d5ff|Hspell:385270|h[Fracturing Tremor]|h|r: der Fracturing Tremor - sichere den Tremor.",
"* |cff71d5ff|Hspell:385137|h[Shale Breath]|h|r: Der Shale Breath wäscht seine Vorderseite – halte ihn von dem Atem fern.",
"* |cff71d5ff|Hspell:386259|h[Sundering Crash]|h|r: der Sundering Crash – bewege dich aus dem Crash.",
"* |cff71d5ff|Hspell:385652|h[Earth Bolt]|h|r: unterbreche seinen Erdstrahl jedes Mal.",
};

pack["193532"] = { "Bazual, Der gefürchtete Flammen",
"* |cff71d5ff|Hspell:389725|h[Magma Eruption]|h|r: die Magma-Eruption – vermeiden Sie die Eruption.",
"* |cff71d5ff|Hspell:389431|h[Abwehrfeuer]|h|r: Das Abwehrfeuer stößt zurück – bereite dich auf das Feuer vor.",
"* |cff71d5ff|Hspell:389514|h[Lava Breath]|h|r: sein Lavenduft trifft auf die Front – halten Sie ihn fern.",
"* |cff71d5ff|Hspell:390635|h[Regen des Zerstörung]|h|r: der Regen des Zerstörung – bereite dich auf den Regen vor.",
};

pack["193533"] = { "Liskanoth",
"* |cff71d5ff|Hspell:389954|h[Binding Ice]|h|r: der Binding Ice-Effekt fesselt den Träger – der gefesselte kann sich befreien.",
"* |cff71d5ff|Hspell:388925|h[Chilling Breath]|h|r: Der Atem des Frostes trifft ihn frontal – halte ihn davon fern.",
"* |cff71d5ff|Hspell:389289|h[Glacier Sturm]|h|r: Der Glacier Sturm wirbelt auf – stehen Sie niemals im Sturm.",
"* |cff71d5ff|Hspell:389762|h[Deep Freeze]|h|r: der Deep Freeze – stehen Sie nicht im Frost.",
};

pack["193534"] = { "Strunraan, Das Leid des Himmels",
"* |cff71d5ff|Hspell:385980|h[Thunder Vortex]|h|r: der Thunder-Vortex dreht sich – halte ihn aus dem Vortex.",
"* |cff71d5ff|Hspell:387199|h[Tempest]|h|r: sein Tempest-Angriff trifft den Träger – der Träger muss den Angriff abwehren.",
"* |cff71d5ff|Hspell:389951|h[Arcing Expulsion]|h|r: der arcing expulsion - halte ihn von vorne fern.",
};

bos = { "Die Ältesten der Zaqali",
"* |cff71d5ff|Hspell:403779|h[Burning Shadows]|h|r: Die Burning Shadows verstärken ihren Flächenschaden – reduziere den Flächenschaden und bewege dich ständig.",
"* |cff71d5ff|Hspell:403855|h[Blazing Pitch]|h|r: die Blazing Pitch-Seen bilden eine Fläche auf dem Boden – vermeiden Sie den Pitch.",
"* |cff71d5ff|Hspell:404171|h[Enveloping Darkness]|h|r: die sich ausbreitende Dunkelheit nähert – rennen Sie vor der Dunkelheit.",
"* |cff71d5ff|Hspell:404517|h[Scorching Eclipse]|h|r: der Scorching Eclipse – beobachte den Boden unter seinem Schatten.",
};
pack["199855"] = bos; pack["199853"] = bos;

P.de = de;
