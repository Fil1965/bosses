--[[
	Bosses_WotLK_de.lua
		Datos auf Deutsch of the WoTLK
		pack: the Northrend dungeons and its era raids,
		Onyxia and the sancta. Sources: DBM-Raids-WoTLK and DBM-Party-WotLK
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Onyxia's Lair : Zona 249 --
-- --------------------------------- --

pack["10184"] = { "Onyxia",
"* |cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r: Große Störung vor ihr – behalten Sie die Gruppe hinter dem Tank.",
"* |cff71d5ff|Hspell:18392|h[Fireball]|h|r: Wiederholtes Fireball auf einen zufälligen Spieler – Heiler müssen bereit sein.",
"* |cff71d5ff|Hspell:18584|h[Tiefe Atem]|h|r: Bei 66% Gesundheit hebt sie ab und verursacht einen Flächenschaden im Lair – verlassen Sie sofort die markierte Reihe.",
"* |cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r: Bei 40% Gesundheit verursacht sie einen Flächenangriff, der Angst auslöst. Daher sollten Tremor- und Fear-Wards frühzeitig aufgestellt werden.",
"* |cff71d5ff|Hspell:68959|h[Whelps]|h|r: Bei 40 % erscheinen die Welpen aus den Eiern im gesamten Bereich – bringe sie mit Flächenangriffen weg vom Tank.",
};

-- --------------------------------- --
-- Naxxramas : Zona 533 --
-- --------------------------------- --

pack["15956"] = { "Anub'Rekhan",
"* |cff71d5ff|Hspell:28785|h[Schwarm von Heuschrecken]|h|r: Er gräbt sich ein und sendet eine Heuschrecken-Schwarm, der Stille und Schaden zufügt – bleibe vor seinem sich ausweitenden Kreis.",
"* |cff71d5ff|Hspell:28783|h[Spike]|h|r: Die Stacheln dringen in die Gruppe ein – verteilen Sie sich.",
};

pack["15953"] = { "Großwitwe Faerlina",
"* |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r: Das Töten eines Anhängers in der Nähe von ihr wirkt die Umarmung aus – sie verstummt Faerlina, sie und die Gruppe, und verzögert den Wutausbruch.",
"* |cff71d5ff|Hspell:28798|h[Frenzy]|h|r: Wenn die Umarmung abläuft, wird sie wahnsinnig - Tank muss defensiv agieren und starke Heilung einsetzen.",
};

pack["15952"] = { "Maexxna",
"* |cff71d5ff|Hspell:28622|h[Web Wrap]|h|r: Ein zufälliger Spieler wird gegen die Wand eingekuschelt – befreie ihn schnell.",
"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: Der Raum-weit wirkende Sprühangriff betäubt ihre Nahkampffähigkeiten – Nahkampfangriffe erfolgen kurz danach.",
"* |cff71d5ff|Hspell:17332|h[Spiderlings]|h|r: Spiderlings erscheinen in Wellen – Bring sie mit Flächenangriffen schnell nieder.",
};

pack["15954"] = { "Noth der Seuchenfürst",
"* |cff71d5ff|Hspell:29213|h[Curse of the Plaguebringer]|h|r: Verflüchungen verbreiten sich im Raid – schnell aufheben, um Kettenverflüchungen zu vermeiden.",
"* |cff71d5ff|Hspell:29208|h[Blink]|h|r: Blinkt zu einem zufälligen Spieler – lenke ihn zurück zum Tank.",
"* |cff71d5ff|Hspell:29212|h[Skelette]|h|r: Er teleportet sich mit einer Welle von Skeletten -> Beseitigen Sie die Gegner im Raum, bevor er zurückkehrt.",
};

pack["15936"] = { "Heigan der Unreine",
"* |cff71d5ff|Hspell:29350|h[Eruption]|h|r: Er verlässt den Raum und der Boden platzt in Rotation auf – fahre entlang der sicheren Ecken um die Plattform.",
};

pack["16011"] = { "Loatheb",
"* |cff71d5ff|Hspell:29234|h[Spores]|h|r: Sporen sprießen im Raum – töte eines in der Nähe der Gruppe, seine Wolke gewährt einen großen Krit-Buff.",
"* |cff71d5ff|Hspell:29204|h[Doom]|h|r: Doom landet auf einem zufälligen Spieler und detoniert - bewege dich, bevor es explodiert.",
"* |cff71d5ff|Hspell:55593|h[Necrotic Aura]|h|r: Heilung wird für 10 s pro Impuls blockiert – nutze große Heilungen und Heilschilde, um Lücken zu füllen.",
};

pack["16061"] = { "Instrukteur Razuvious",
"* |cff71d5ff|Hspell:29107|h[Unbalancing Strike]|h|r: Massive Hit auf den aktuellen Tank – kontrolliere die Unterstützer mit den Knochenkugeln und rotiere ihre Provokationen.",
};

pack["16060"] = { "Gothik der Ernter",
"* |cff71d5ff|Hspell:28025|h[Teleport: Living Side]|h|r: Der Raid teilt sich auf: Die lebende Seite bekämpft seine Diener, während die tote Seite die Schatten abwehrt - halten Sie die Wellen dünn.",
"* |cff71d5ff|Hspell:28026|h[Teleport: Dead Side]|h|r: Er springt zwischen den Räumen, während die Schatten sich ansammeln - das Tor öffnet sich nach vier Minuten, dann merge und verbrenn ihn.",
};

pack["16063"] = { "Sir Zeliek",
"* Sein Mal von Zeliek (|cff71d5ff|Hspell:28835|h[Mal von Zeliek]|h|r) fällt alle ~15 s in 45 m um seine Ecke und trifft mit jeder Aufladung härter : 650, 1950, 4550, 9750, 16250 - wer ihn aushält rotiert, bevor die Stapel zu hoch werden.",
"* Sein Heiliger Zorn (|cff71d5ff|Hspell:28883|h[Heiliger Zorn]|h|r) springt zwischen gruppierten Spielern und WÄCHST mit jedem Sprung : der Nahkampf rückt direkt nach einem Cast ein,",
"* Fernkämpfer bleiben auf MAXimaler Reichweite und niemand spannt die Brücke zwischen Nah und Fern, sonst fegt die Kette die Gruppe weg.",
"* Verankert hinten rechts und bewegt sich nicht : ohne jemanden in Reichweite prügelt er die Gruppe mit Verdammnis, also halten ihn ein Heiler und ein Fernkämpfer von Anfang an, getrennt genug,",
"* um nur die Marke des EIGENEN Reiters zu fischen.",
"* Er ist der letzte Reiter, der fällt, direkt nach Lady Blaumeux.",
};
pack["16064"] = { "Thane Korth'azz",
"* Sein Mal von Korth'azz (|cff71d5ff|Hspell:28832|h[Mal von Korth'azz]|h|r) fällt alle ~15 s in 45 m um seine Ecke und trifft mit jeder Aufladung härter : 650, 1950, 4550, 9750, 16250 - die Frontgruppe frisst sie komplett: er muss schnell fallen.",
"* Sein Meteor (|cff71d5ff|Hspell:57467|h[Meteor]|h|r) verteilt seinen brutalen Schlag unter allen, die an der Zielperson kleben : die GESAMTE Frontgruppe stapelt sich auf ihm, damit der Meteor kaum kratzt statt einen Einzelnen niederzuschlagen.",
"* Er rennt zur vorderen linken Ecke, ignoriert Bedrohung bis dahin und kämpft dann wie jeder Nahkampfboss - ERSTES Ziel, Burst-Cooldowns solange alle vier Reiter leben.",
};
pack["16065"] = { "Lady Blaumeux",
"* Ihr Mal von Blaumeux (|cff71d5ff|Hspell:28833|h[Mal von Blaumeux]|h|r) fällt alle ~15 s in 45 m um ihre Ecke und trifft mit jeder Aufladung härter : 650, 1950, 4550, 9750, 16250 - die Aushalter im Rücken wechseln, sobald die Stapel steigen.",
"* Ihre Leerenzonen (|cff71d5ff|Hspell:28863|h[Leerenzone]|h|r) öffnen sich um sie unter den Füßen : sofort aus dem Kreis, und ihre Aushalter beobachten den Boden den ganzen Kampf.",
"* Angepinnt hinten links und bewegt sich nicht : ein Heiler und ein Fernkämpfer halten sie auf Abstand, gut getrennt, um nur die Marke des EIGENEN Reiters zu fischen, sonst leert sie die Gruppe mit Verdammnis.",
"* Sie ist die Dritte, die fällt, nach den beiden Frontreitern.",
};
pack["30549"] = { "Baron Totenschwur",
"* Sein Mal von Totenschwur (|cff71d5ff|Hspell:28834|h[Mal von Totenschwur]|h|r) fällt alle ~15 s in 45 m um seine Ecke und trifft mit jeder Aufladung härter : 650, 1950, 4550, 9750, 16250 - die Frontgruppe frisst sie komplett: der Todesreihenfolge folgen.",
"* Sein Unheiliger Schatten (|cff71d5ff|Hspell:57369|h[Unheiliger Schatten]|h|r) lässt SEINEN Tank alle ~15 s bluten : zusätzliche Heilung auf diesen Tank für den ganzen Kampf.",
"* Er rennt zur vorderen rechten Ecke wie Thane - ZWEITES Ziel, direkt nach Thane.",
};

pack["16028"] = { "Flickwerk",
"* |cff71d5ff|Hspell:28131|h[Frenzy]|h|r: Bei 10% Gesundheit greift er in Wutverfassung -> Tank, verteidige dich und gib Notbehandlungen.",
"* |cff71d5ff|Hspell:28311|h[Slime Bolt]|h|r: Slime-Bolzen werden auf zufällige Zauberer geschossen, während die nächsten Bedrohungen seine Hateful Strikes ausführen – behalten Sie eine Zauberer-Rotation, die aufgedeckt ist.",
};

pack["15931"] = { "Grobbulus",
"* |cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r: Der injizierte Spieler hinterlässt eine schädliche Schleimwolke, wo er steht - bring sie an die Wand.",
"* |cff71d5ff|Hspell:28240|h[Giftwolke]|h|r: Giftwolken wachsen mit jeder Injektion – treibe sie aus der Gruppe.",
};

pack["15932"] = { "Gluth",
"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: Alles reduziert sich auf 5% Gesundheit – die Zombie-Adds bewegen sich dann in Richtung des Bosses, um ihn zu füttern, halte sie tot oder fern.",
"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r: Verwende Frenzy periodisch – erhöhe die Verteidigung des Tanks.",
};

pack["15928"] = { "Thaddius",
"* |cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r: Die Hälfte des Raids erhält positive und die andere negative Energie – trennen Sie die Pole, sodass geladene Spieler niemals gegensätzliche Spieler berühren, und jeder Kreuz-Transfer führt zu einer Detonation.",
"* |cff71d5ff|Hspell:28338|h[Kettenblitz]|h|r: Kettenblitz trifft den Spieler, der sich am weitesten von ihm entfernt befindet - ein Fernangriff, der sich von den anderen entfernt positioniert.",
};

pack["15989"] = { "Saphiron",
"* |cff71d5ff|Hspell:28522|h[Ice Block]|h|r: Ein zufälliger Spieler verwandelt sich in einen Eisblock – er dient als Deckung, planen Sie die Position.",
"* |cff71d5ff|Hspell:28524|h[Tiefes Atem]|h|r: Der tiefe Atem scannt den Raum – halte dich hinter dem gefrorenen Schild.",
"* |cff71d5ff|Hspell:28542|h[Life Drain]|h|r: Life Drain saugt einen zufälligen Spieler aus – behalte Heilung bereit.",
"* |cff71d5ff|Hspell:28547|h[Blizzard]|h|r: Der Blizzard zieht sich über den Boden – verlasst ihn.",
};

pack["15990"] = { "Kel'Thuzad",
"* |cff71d5ff|Hspell:27808|h[Frost Blast]|h|r: Frost Blast friert ein und verursacht Ketten-Schaden durch die Gruppe -> verteile es, bis es trifft, dann zerstöre den gefrorenen Stack.",
"* |cff71d5ff|Hspell:27819|h[Detonate Mana]|h|r: Ein Spieler verbraucht Mana – haltet die Distanz, damit der Angriff kontrolliert ist.",
"* |cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r: Bei 25% Gesundheit öffnet sich eine Void-Zone unter einem Spieler – bewege dich schnell weg.",
"* |cff71d5ff|Hspell:28410|h[Mind Control]|h|r: Ketten fess zufällige Spieler ein – halte sie kontrolliert, bis die Ketten zerbrochen sind.",
};

-- --------------------------------- --
-- Utgarde Keep : Zona 574 --
-- --------------------------------- --

pack["23953"] = { "Prinz Keleseth",
"* |cff71d5ff|Hspell:48400|h[Frost Tomb]|h|r: Ich friere einen Spieler in einen Eisgrab ein – befreie ihn schnell und greife die Skelett-Wachen auf, die in Wellen angreifen, mit einem Flächenangriff an.",
};

bos = { "Skarvald und Dalronn",
"* |cff71d5ff|Hspell:43650|h[Schwächen]|h|r: Der Schatten-Debuff schwächt den Träger – halte die Heilung bereit.",
"* |cff71d5ff|Hspell:52611|h[Shades]|h|r: Wenn sie fallen, erheben sich ihre Schatten – wirf die Schatten, bevor sie sich neu formieren.",
};
pack["24200"] = bos; pack["24201"] = bos;

pack["23954"] = { "Ingvar der Brandschatzer",
"* |cff71d5ff|Hspell:42730|h[Woe Strike]|h|r: Woe draint den Tank – tausche ihn aus und halte Heilungen bereit.",
"* |cff71d5ff|Hspell:42729|h[Staggering Shout]|h|r: Der Schrei lähmt den Raum – bereite dich vor und unterbreche ihn.",
"* |cff71d5ff|Hspell:42723|h[Smash]|h|r: In the undead form, the smash shakes the whole room – melee DPS should step back.",
};

-- --------------------------------- --
-- Utgarde Pinnacle : Zona 575 --
-- --------------------------------- --

pack["26668"] = { "Svala Grabesleid",
"* |cff71d5ff|Hspell:48267|h[Sacrifice]|h|r: Der markierte geht zum Altar -> stoppe das Ritual, bevor das Opfer landet.",
};

pack["26687"] = { "Gortok Bleichhuf",
"* |cff71d5ff|Hspell:48261|h[Impale]|h|r: The rhino's impale skewers its tank - healers braced.",
"* |cff71d5ff|Hspell:48256|h[Withering Roar]|h|r: Der Schrei schwächt die Gruppe – behalten Sie Heilung aufrecht.",
};

pack["26693"] = { "Skadi der Skrupellose",
"* |cff71d5ff|Hspell:59322|h[Whirlwind]|h|r: Sein Whirlwind dreht sich weit – Nahkämpfer zurückweichen.",
"* |cff71d5ff|Hspell:59331|h[Gift]|h|r: Gift trails the gauntlet lane - run between the clouds.",
};

pack["26861"] = { "König Ymiron",
"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: The bane channel punishes casters - stop casting while it runs.",
"* |cff71d5ff|Hspell:48291|h[Fetid Rot]|h|r: Fetid Rot verbrüßt den Träger – reinigen Sie es.",
};

-- --------------------------------- --
-- The Nexus : Zona 576 --
-- --------------------------------- --

pack["26731"] = { "Großmagistrix Telestra",
"* |cff71d5ff|Hspell:47731|h[Freeze]|h|r: Sie friert einen Spieler ein – zerstöre sie und achte auf ihre Split: Drei Klone ziehen sich aus, der Frost-Klon beschwört den Raum.",
};

pack["26763"] = { "Anomalus",
"* |cff71d5ff|Hspell:47743|h[Chaos Rift]|h|r: Der Riss speist Energie in ihn – zerstöre den Riss schnell.",
};

pack["26794"] = { "Ormorok der Baumformer",
"* |cff71d5ff|Hspell:47981|h[Spell Reflection]|h|r: Ich reflektiere Zauber - Zauberwirker hören auf, zu wirken, solange der Effekt aktiv ist.",
"* |cff71d5ff|Hspell:47958|h[Spikes]|h|r: Die Spikelinien durchqueren den Raum – vermeide die Markierungen.",
"* |cff71d5ff|Hspell:48017|h[Frenzy]|h|r: Wenn er wenig Gesundheit hat, greift er an – bring ihn schnell down.",
"* |cff71d5ff|Hspell:61564|h[Treants]|h|r: Die Treants erheben sich um ihn herum – Greifen sie mit einem Flächenangriff an.",
};

pack["26723"] = { "Keristrasza",
"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: Die Ketten verlangsamen die Bewegung – verteile die Gruppe und halte die Heilung aufrecht.",
"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: Frost Nova explodiert um sie herum – Nahkämpfer entfernen sich.",
"* |cff71d5ff|Hspell:8599|h[Frenzy]|h|r: Am Ende greift sie an - nutze den Zustand aus.",
};

-- --------------------------------- --
-- The Oculus : Zona 578 --
-- --------------------------------- --

pack["27654"] = { "Drakos der Befrager",
"* |cff71d5ff|Hspell:50774|h[Thundering Stomp]|h|r: Der Stoß wirft den Raum durcheinander – sichern Sie ihn.",
};

pack["27447"] = { "Varos Wolkenwanderer",
"* |cff71d5ff|Hspell:51002|h[Kapitän des Azur-Rings]|h|r: Ring-Kapitäne rufen die Gruppe zusammen – tötet zuerst die Kapitäne.",
"* |cff71d5ff|Hspell:51021|h[Arcane Beam]|h|r: Der Strahl verläuft entlang seiner Linie – bewegen Sie sich davon weg.",
"* |cff71d5ff|Hspell:51054|h[Amplify Magic]|h|r: Amplify Magic markt einen Spieler aus – entferne das Zeichen.",
};

pack["27655"] = { "Magierlord Urom",
"* |cff71d5ff|Hspell:51121|h[Time Bomb]|h|r: Die Zeitbombe detoniert, wenn sie von einem Spieler gehalten wird – rennen Sie weg, bevor sie explodiert.",
"* |cff71d5ff|Hspell:51110|h[Empowered Arcane Explosion]|h|r: Der große arcane-Schlag – unterbreche den Cast oder bereite dich stark vor.",
"* |cff71d5ff|Hspell:51103|h[Frostbomb]|h|r: Frostbombs kühlen den Boden – steh nicht darauf.",
};

pack["27656"] = { "Leywächter Eregos",
"* |cff71d5ff|Hspell:51162|h[Planar Shift]|h|r: Ich wechsle die Ebene und die Drachen müssen nah bleiben – halte die Gruppe während des Wechsels zusammen.",
"* |cff71d5ff|Hspell:51170|h[Enraged Assault]|h|r: Ich versuche, ihn zu verärgern – bringe ihn schnell um, bevor der Shift ihn wiederherstellt.",
};

-- --------------------------------- --
-- The Culling of Stratholme : Zona 595 --
-- --------------------------------- --

pack["26529"] = { "Fleischhaken",
"* |cff71d5ff|Hspell:52696|h[Constricting Chains]|h|r: Die Ketten fesseln einen Spieler – halte die Heilung/Entgiftung bereit.",
};

pack["26530"] = { "Salramm der Fleischformer",
"* |cff71d5ff|Hspell:58845|h[Curse of Twisted Flesh]|h|r: Der Fluch verzerrt den Träger – heilen Sie ihn.",
"* |cff71d5ff|Hspell:52451|h[Ghouls]|h|r: Er erzeugt Untote – bring sie schnell nieder.",
};

pack["26532"] = { "Chronolord Epoch",
"* |cff71d5ff|Hspell:52772|h[Curse of Exertion]|h|r: Der Fluch schwächt den Träger – heilen Sie ihn.",
"* |cff71d5ff|Hspell:58848|h[Time Warp]|h|r: Der Zeitverbiegung verändert das Tempo des Raumes – halte die Heilung konstant.",
};

pack["26533"] = { "Mal'Ganis",
"* |cff71d5ff|Hspell:52721|h[Schlafen]|h|r: Er betäubt Spieler – wecken Sie sie schnell und halten Sie die Gruppe auseinander.",
"* |cff71d5ff|Hspell:52723|h[Vampirische Berührung]|h|r: Der Kontakt entzieht dem Träger - reinigen Sie ihn.",
};

-- --------------------------------- --
-- Halls of Stone : Zona 599 --
-- --------------------------------- --

pack["27977"] = { "Krystallus",
"* |cff71d5ff|Hspell:50833|h[Ground Slam]|h|r: Der Bodenstoß zerstreut den Raum – verteilt euch weit.",
"* |cff71d5ff|Hspell:50810|h[Shatter]|h|r: Nach dem Schlag zerbricht er – haltet alle getrennt, sonst verursacht der Shatter massiven Schaden für die Gruppe.",
};

pack["27975"] = { "Maid der Trauer",
"* |cff71d5ff|Hspell:50761|h[Woe Strike]|h|r: Woe tropft auf den Tank - tausche ihn aus.",
"* |cff71d5ff|Hspell:50752|h[Sturm des Schmerzes]|h|r: Der Sturm durchstreicht den Raum – bleiben Sie von den Markierungen fern.",
"* |cff71d5ff|Hspell:50760|h[Shock of Sorrow]|h|r: Der Schock stuns die Gruppe – verteile dich, bevor er trifft.",
};

pack["28070"] = { "Tribunal der Zeitalter",
"* |cff71d5ff|Hspell:51012|h[Dark Matter]|h|r: Dark Matter brennt unter der Gruppe – verlasst die Markierungen.",
"* |cff71d5ff|Hspell:51125|h[Searing Gaze]|h|r: Der blendende Blick wird von den Wächtern abgefeuert – kontert ihn.",
};

pack["27978"] = { "Sjonnir der Eisenformer",
"* |cff71d5ff|Hspell:50840|h[Ring des Blitzes]|h|r: Der Ring des Blitzes schlägt um ihn herum – bewege dich, bevor er trifft.",
"* |cff71d5ff|Hspell:50834|h[Static Charge]|h|r: Der Charge stapelt sich auf denjenigen, der ihn berührt – halte die Gruppe von seinem Ring fern.",
};

-- --------------------------------- --
-- Drak'Tharon Keep : Zona 600 --
-- --------------------------------- --

pack["26630"] = { "Trollgrind",
"* |cff71d5ff|Hspell:49637|h[Infected Wound]|h|r: Infected wounds bleed his tank - keep heals ready.",
"* |cff71d5ff|Hspell:49639|h[Crush]|h|r: Crush schlägt den Tank -> Defensive Skills aktiv.",
"* |cff71d5ff|Hspell:49380|h[Verbrauch]|h|r: Nutzt die Fähigkeiten auf den Leichen um ihn herum – lenkt die Kämpfe ab, während er sich bewegt.",
};

pack["26631"] = { "Novos der Beschwörer",
"* |cff71d5ff|Hspell:50089|h[Wrath of Misery]|h|r: Wrath schwächt die Gruppe – heilen Sie sie.",
"* |cff71d5ff|Hspell:47346|h[Dark Wounds]|h|r: Dark Wounds breiten sich auf dem Boden aus – vermeiden Sie, darauf zu treten.",
"* |cff71d5ff|Hspell:59910|h[Minions]|h|r: Minions strömen während seines Angriffs ein – töte sie, bevor sie ihn erreichen.",
};

pack["27483"] = { "König Dred",
"* |cff71d5ff|Hspell:48878|h[Piercing Slash]|h|r: Der Schnitt blutet den Träger – Heiler nach vorne.",
"* |cff71d5ff|Hspell:59416|h[Raptor Call]|h|r: Er ruft Raubtiere in den Raum – greife die Gruppe schnell mit einem Flächenangriff an.",
};

pack["26632"] = { "Der Prophet Tharon'ja",
"* |cff71d5ff|Hspell:49356|h[Decay Flesh]|h|r: Er verwandelt sich in eine Skelettform – achtet auf den Feuerregen, den er während der Verwandlung ausstößt.",
"* |cff71d5ff|Hspell:49518|h[Regen von Feuer]|h|r: Der Regen von Feuer verbrennt den Raum – bewegen Sie sich aus dem Bereich.",
"* |cff71d5ff|Hspell:49527|h[Verfluchung des Lebens]|h|r: Der Fluch markiert den Träger – heilen Sie ihn.",
};

-- --------------------------------- --
-- Azjol-Nerub : Zona 601 --
-- --------------------------------- --

pack["28684"] = { "Krik'thir der Torwächter",
"* |cff71d5ff|Hspell:52592|h[Curse of Fatigue]|h|r: Der Fluch der Erschöpfung entzieht seinem Träger Mana – heilen Sie ihn; sein Wächter packt durch die Tür – AoE sie und kontrollieren Sie die Fallen.",
};

pack["28921"] = { "Hadronox",
"* |cff71d5ff|Hspell:53400|h[Acid Cloud]|h|r: Acid clouds pool the floor - avoid stepping on them.",
"* |cff71d5ff|Hspell:53030|h[Leech Poison]|h|r: Das Leech-Gift heilt sie, während es ihren Träger verbrennt – beseitige es schnell; sie sperrt eine Tür mit einem Netz, während sie es hält.",
};

pack["29120"] = { "Anub'arak",
"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: Der Pound-Angriff trifft weitverbreitet – bewege dich aus dem Reichweite; Schwärme von Skaraben strömen durch die Tunnel in der ersten Phase – greife sie mit AoE an.",
};

-- --------------------------------- --
-- Halls of Lightning : Zona 602 --
-- --------------------------------- --

pack["28586"] = { "General Bjarngrim",
"* |cff71d5ff|Hspell:52027|h[Whirlwind]|h|r: Sein Whirlwind durchstreift die Reihe – Nahkämpfer ziehen sich zurück; er wechselt zwischen den Phasen in die Stance Sturm, Schlacht und Berserker.",
"* |cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r: Der Mortal Strike verletzt den Tank – tausche den Angriff aus und heile ihn durch.",
};

pack["28587"] = { "Volkhan",
"* |cff71d5ff|Hspell:52237|h[Shattering Stomp]|h|r: Der Stamp erschüttert den Schmiedeboden – Nahkämpfer entfernen sich; er formt flüssige Golems in der Lava, lasse sie abkühlen und zerlege sie.",
};

pack["28546"] = { "Ionar",
"* |cff71d5ff|Hspell:52770|h[Disperse]|h|r: Disperse into sparks - regroup the sparks quickly and AoE them down before the burst.",
"* |cff71d5ff|Hspell:52658|h[Static Overload]|h|r: Der Überladungseffekt verbrünt den Träger – die markierten Angriffe wirken.",
};

pack["28923"] = { "Loken",
"* |cff71d5ff|Hspell:52960|h[Blitze Nova]|h|r: Die Nova pulsiert weiter mit jedem Schlag – beweg dich, bevor sie ihren Höhepunkt erreicht.",
};

-- --------------------------------- --
-- Ulduar : Zona 603 --
-- --------------------------------- --

pack["33293"] = { "XT-002 Dekonstruktor",
"* |cff71d5ff|Hspell:65121|h[Light Bomb]|h|r: Light Bomben explodieren um den Spieler herum - bewege dich, um den Effekt zu vermeiden.",
"* |cff71d5ff|Hspell:64234|h[Gravity Bomb]|h|r: Gravity Bombs verursachen einen Kollaps um das Ziel herum – halte Abstand.",
"* |cff71d5ff|Hspell:64206|h[Verzehr]|h|r: Die Phase, in der das Herz freigelegt ist, hinterlässt Verzehrzonen – vermeiden Sie diese und verbrennen Sie das Herz.",
};

bos = { "Die Versammlung des Eisens",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: Wenn ein Wächter fällt, verstärken die anderen sich – entlaste das stärkste Paar oder verteile die Kills.",
"* |cff71d5ff|Hspell:64215|h[Kettenblitz]|h|r: Kettenblitz trifft die Gruppe – verteile und unterbreche.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: Brundir wirbelt Blitz aus – unterbreche den Wirbel.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: Brundir verursacht eine massive Nova durch Überlastung – rennen Sie aus.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: Overpower-Stacks auf den Tank übertragen - Tank wechseln.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Death runes burn the ground - move away from them.",
"* |cff71d5ff|Hspell:63489|h[Schutz der Runen]|h|r: Ein Runenschild schützt ihre Gesundheit – neutralisieren oder entfernen.",
};
pack["32867"] = bos; pack["32927"] = bos; pack["32857"] = bos;

pack["32930"] = { "Kologarn",
"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: Eyebeams verfolgen einen Spieler -> Bring ihn um die Plattform herum, bis er verschwindet.",
"* |cff71d5ff|Hspell:64292|h[Grip]|h|r: Die steinernen Arme greifen Spieler – befreien Sie sie schnell.",
"* |cff71d5ff|Hspell:64002|h[Crunch Armor]|h|r: Erhöhen Sie die Schilde des Tanks - tauschen Sie die Tanks.",
};

pack["33515"] = { "Auriaya",
"* |cff71d5ff|Hspell:64386|h[Sonic Screech]|h|r: Ihr Schrei befürchtet den Raum – halten Sie jeden Cast unterbricht.",
"* |cff71d5ff|Hspell:64396|h[Guardian Swarm]|h|r: Der feralle Verteidiger erhebt sich immer wieder - Konzentriere den Schaden auf die Schwarm, töte die Guardian-Kugeln.",
"* |cff71d5ff|Hspell:64675|h[Void Zone]|h|r: Void Zones verfolgen einen Spieler – Schritte ausweichen.",
};

bos = { "Hodir",
"* |cff71d5ff|Hspell:65123|h[Storm Cloud]|h|r: Storm clouds buffen den, der sie hält, und jeden in der Nähe – teile sie bei den Zauberern.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: Der Frost füllt den Boden – springen Sie auf ein Eisblock, um ihn zu benutzen.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: Die tiefe Kälte greift jeden an, der stillsteht – beweg dich niemals.",
};
pack["32845"] = bos; pack["32926"] = bos;

pack["32865"] = { "Thorim",
"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: Der Hammer stuns alle in seinem Angriffsradius – bleibe hinter einer Säule.",
"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: Verwende Lightning Charge, wenn Adds spawnen – beseitige den Gauntlet schnell und greife ihn im Korridor an.",
"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: Brutaler Schlag auf den Tank – tauscht und verteidigt.",
};

pack["32906"] = { "Freya",
"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: Wurzeln halten Spieler an Ort und Stelle – zerstöre sie.",
"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: Sunbeams exploden weit – rennen Sie aus dem Angriff.",
};

pack["33432"] = { "Mimiron",
"* |cff71d5ff|Hspell:63631|h[Shock Blast]|h|r: Riesiger Nova-Angriff von seiner Tank-Seite – die Nahkämpenden ziehen sich zurück.",
"* |cff71d5ff|Hspell:64402|h[Raketenangriff]|h|r: Raketen ziehen eine Linie entlang des markierten Bereichs – verlassen Sie diesen sofort.",
"* |cff71d5ff|Hspell:63274|h[Laser Barrage]|h|r: Er dreht sich und feuert Laser ab – bewege dich weit um den Orbit.",
"* |cff71d5ff|Hspell:64529|h[Plasma Blast]|h|r: Plasma Blast auf den Tank -> Defensive Heilung.",
"* |cff71d5ff|Hspell:64623|h[Frost Bomb]|h|r: Eine Frost-Bombe schwebt herab – zerstöre sie, bevor sie landet.",
};

pack["33271"] = { "General Vezax",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Shadow Crash verfolgt einen Spieler – laufe ihn an die Wand.",
"* |cff71d5ff|Hspell:63276|h[Life Siphon]|h|r: Der Siphon entleibt das Ziel -> Das Ziel bleibt zurück.",
"* |cff71d5ff|Hspell:62662|h[Surge of Darkness]|h|r: Der Angriff pumpt seinen Schaden - Tank muss defensiv verstärken.",
"* |cff71d5ff|Hspell:62661|h[Searing Flames]|h|r: Searing flames verstärkt ihn – unterbreche jeden Cast.",
};

pack["33288"] = { "Yogg-Saron",
"* |cff71d5ff|Hspell:63050|h[Sanity]|h|r: Sanity-Drains befinden sich in der Nähe von jedem Schatten – beobachte den Meter, verlasse den Raum, wenn er unter 30 fällt.",
"* |cff71d5ff|Hspell:63802|h[Brain Link]|h|r: Spieler, die miteinander verbunden sind, ziehen sich gegenseitig an – halten Sie die Verbindungen auseinander.",
"* |cff71d5ff|Hspell:57687|h[Brain Portal]|h|r: Portale öffnen für die Verfolgung des Gehirns – sende die markierte Gruppe durch und beende die Illusion.",
"* |cff71d5ff|Hspell:62979|h[Guardian of Yogg]|h|r: Die Wächter steigen aus dem Schatten auf – Greifen sie schnell mit AoE an.",
};

pack["32871"] = { "Algalon der Beobachter",
"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: Der Big Bang frisst den gesamten Raum auf – tauche in ein Schwarzes Loch ein und lass dich davon mitnehmen.",
"* |cff71d5ff|Hspell:65108|h[Black Hole]|h|r: Kollabrierende Sterne hinterlassen Schwarze Löcher – betreten Sie diese, treten Sie nach dem Knall wieder aus.",
"* |cff71d5ff|Hspell:64412|h[Phase Punch]|h|r: Phase Punch-Stacks auf den Tank legen - Tank wechseln.",
"* |cff71d5ff|Hspell:64596|h[Cosmic Smash]|h|r: Cosmic Smash markiert den Boden – bewegen Sie sich aus dem Bereich.",
};

pack["33113"] = { "Flammenleviathan",
"* |cff71d5ff|Hspell:62374|h[Verfolgt]|h|r: Er verfolgt ein Fahrzeug – dieses Fahrzeug läuft Kreise, während die anderen von der Seite angreifen.",
"* |cff71d5ff|Hspell:62475|h[System Shutdown]|h|r: Der Shutdown friert ihn ein – verbrennen Sie alles danach.",
"* |cff71d5ff|Hspell:62297|h[Hodirs Zorn]|h|r: Türme verstärken den Kampf – zerstöre die Türme, bevor du ihn aufrufst, um ihn zu schwächen.",
};

pack["33118"] = { "Ignis, Meister des Eisenwerks",
"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: He scoops a player into the slag - heal them hard until they drop.",
"* |cff71d5ff|Hspell:62488|h[Eisenkonstrukte]|h|r: Konstrukte strömen aus den Ventilen – ertränke sie im Wasser und lasse seine Verbrennung sie bröckeln.",
"* |cff71d5ff|Hspell:63472|h[Flammenstrahlen]|h|r: Die Strahlen unterbrechen Zauber, die er wirkt – Zauberwirker müssen sich bewegen.",
};

pack["33186"] = { "Klingenschuppe",
"* |cff71d5ff|Hspell:48642|h[Harpoon Turrets]|h|r: Bauen Sie die Harpoon-Turrets um die Arena herum – fesseln Sie sie zwischen den Flügen.",
"* |cff71d5ff|Hspell:64733|h[Devouring Flame]|h|r: Flammenfelder breiten sich über den Boden aus – vermeiden Sie, darin zu stehen.",
"* |cff71d5ff|Hspell:64771|h[Fused Armor]|h|r: Fused Armor stapelt sich auf den Tank – tauschen Sie die Tanks.",
};

-- --------------------------------- --
-- Gundrak : Zona 604 --
-- --------------------------------- --

pack["29304"] = { "Slad'ran",
"* |cff71d5ff|Hspell:55081|h[Poison Nova]|h|r: Der Poison Nova bildet einen breiten Bereich auf dem Boden – beweg dich und verteile ihn.",
};

pack["29307"] = { "Koloss der Drakkari",
"* |cff71d5ff|Hspell:54850|h[Emerge]|h|r: Er bricht die Verbindung zum Elementar – zerstöre den Elementar, bevor er sich wieder vereint.",
"* |cff71d5ff|Hspell:54878|h[Vereinigen]|h|r: Das Vereinigen rekonstruiert den Koloss – das Elementar stirbt zuerst.",
"* |cff71d5ff|Hspell:59451|h[Mojo Puddle]|h|r: Mojo-Puddles verbrennen den Boden – vermeiden Sie den Kontakt.",
};

pack["29305"] = { "Moorabi",
"* |cff71d5ff|Hspell:55098|h[Transformation]|h|r: Er verwandelt sich in einen Mammut – unterbreche den Zauberwurf, oder der Kampf wird verdoppelt.",
};

pack["29932"] = { "Der wilde Eck",
"* |cff71d5ff|Hspell:55817|h[Eck's Residue]|h|r: Der Rückstand verbrennt dort, wo er steht – bleiben Sie von seinen Pfützen fern.",
};

pack["29306"] = { "Gal'darah",
"* |cff71d5ff|Hspell:54956|h[Impaling Charge]|h|r: Der Impaling Charge schleudert einen Spieler – die markierten Klammern.",
"* |cff71d5ff|Hspell:55249|h[Whirling Slash]|h|r: Der Whirling Slash baut Stacks auf dem Ziel auf – tausche es aus.",
};

-- --------------------------------- --
-- The Violet Hold : Zona 608 --
-- --------------------------------- --

pack["29315"] = { "Erekem",
"* |cff71d5ff|Hspell:54481|h[Kettenheilung]|h|r: Seine Wachen heilen ihn in Kettenheilung – unterbreche sie.",
"* |cff71d5ff|Hspell:54479|h[Earth Shield]|h|r: Earth Shields schützen die Gruppe – brechen sie auf.",
"* |cff71d5ff|Hspell:54516|h[Bloodlust]|h|r: Die Blutdurst-Fähigkeiten stärken ihn – beseitigen Sie sie.",
};

pack["29316"] = { "Moragg",
"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: Der Augen-Link bindet und verfolgt Spieler – laufe ihn weit vom Rest der Gruppe weg.",
};

pack["29313"] = { "Ichoron",
"* |cff71d5ff|Hspell:54306|h[Schutzblase]|h|r: Die Blase macht ihn immun – zerstöre sie.",
"* |cff71d5ff|Hspell:54241|h[Wasserstrahl-Salven]|h|r: Die Salven treffen den Raum – unterbrechen oder sich schützen.",
};

pack["29266"] = { "Xevozz",
"* |cff71d5ff|Hspell:54102|h[Ethereal Sphere]|h|r: Die Kugeln orbitieren und feuern – töte sie und halte sie von der Gruppe fern.",
"* |cff71d5ff|Hspell:54160|h[Arcane Power]|h|r: Arcane Power pumpt ihn auf – erhöht die Verteidigung der Tanks.",
};

pack["29312"] = { "Lavanthor",
"* |cff71d5ff|Hspell:54282|h[Flame Breath]|h|r: Cone of flame - face him out.",
"* |cff71d5ff|Hspell:54249|h[Lava Burn]|h|r: Lava Burn setzt die Gruppe aus – verteile.",
};

pack["29314"] = { "Zuramat der Vernichter",
"* |cff71d5ff|Hspell:59743|h[Void Shift]|h|r: Der Shift verbraucht den Träger stark – Heiler bereit.",
"* |cff71d5ff|Hspell:59745|h[Shroud of Darkness]|h|r: Der Schleier verbirgt seinen Pull – haltet Heilungen bereit.",
};

pack["31134"] = { "Cyanigosa",
"* |cff71d5ff|Hspell:58693|h[Blizzard]|h|r: Blizzards sweep the room - move off the snow.",
"* |cff71d5ff|Hspell:58694|h[Vacuum]|h|r: Der Vakuum zieht die ganze Gruppe zu sich – positioniert euch, um sie zu unterstützen, und stellt euch bereit, nachdem die Portalwellen abgelaufen sind.",
"* |cff71d5ff|Hspell:59374|h[Mana Burn]|h|r: Der Mana-Burn zieht seinen Träger leer - unterdrücken Sie ihn.",
};

-- --------------------------------- --
-- The Obsidian Sanctum : Zona 615 --
-- --------------------------------- --

pack["28860"] = { "Sartharion",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void-Zonen öffnen sich unter den Spielern – begeben Sie sich schnell aus; sein Atem sendet auch Flammenwellen über die Plattform hinter dem nächsten Atem.",
};

pack["30451"] = { "Shadron",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void-Zonen explodieren unter den Spielern – begeben Sie sich zurück; sein Schüler und die Dämonen kommen durch den Portal – bringen Sie den Schüler, bevor er seine Fähigkeit wirkt.",
};

pack["30452"] = { "Tenebron",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void-Zonen explodieren unter den Spielern – ziehen Sie sich zurück; die Twilight-Eier an den Wänden platzen auf – zerstören Sie die Welpen.",
};

pack["30449"] = { "Vesperon",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones explode under players – move away; her disciple emerges – burst it before its damage buff stacks on the drake.",
};

-- --------------------------------- --
-- The Eye of Eternity : Zona 616 --
-- --------------------------------- --

pack["28859"] = { "Malygos",
"* |cff71d5ff|Hspell:56105|h[Vortex]|h|r: Er wirbelt die Gruppe alle 60 Sekunden und verursacht Puls-Schaden – heilen Sie durch ihn.",
"* |cff71d5ff|Hspell:56505|h[Tief durchatmen]|h|r: In Phase 2, his breath damages one platform section - avoid that quadrant.",
"* |cff71d5ff|Hspell:60936|h[Surge of Power]|h|r: Unvermeidliche Surge über die Plattform – Defensive Cooldowns vorbereiten.",
"* |cff71d5ff|Hspell:57430|h[Static Field]|h|r: Elektrosphären schweben um die Plattform herum – bewege dich aus dem Bereich.",
};

-- --------------------------------- --
-- Ahn'kahet: The Old Kingdom : Zona 619 --
-- --------------------------------- --

pack["29309"] = { "Urahne Nadox",
"* |cff71d5ff|Hspell:56130|h[Brood Plague]|h|r: Die Plage entzieht ihrem Träger Mana - heilen Sie ihn; seine Brut erhebt sich in Gruppen - greifen Sie sie mit Flächenangriffen an.",
};

pack["29308"] = { "Prinz Taldaram",
"* |cff71d5ff|Hspell:55959|h[Embrace of the Vampyr]|h|r: Der Umarmungszauber wirkt auf den Träger – starke Heilung, um den Effekt zu brechen.",
"* |cff71d5ff|Hspell:55931|h[Flame Sphere]|h|r: Der Feuerball bewegt sich durch den Raum – halte Abstand zu seinem Pfad.",
};

pack["29310"] = { "Jedoga Schattensucher",
"* |cff71d5ff|Hspell:56926|h[Thundershock]|h|r: Der Thundershock hat eine breite Wirkung – verteilen Sie sich.",
"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: Der Twister durchdringt die Gruppe – bewege dich aus der Wand.",
};

pack["30258"] = { "Amanitar",
"* |cff71d5ff|Hspell:57055|h[Mini]|h|r: Er verkleinert den Halter – der kleine fühlt sich zusätzlich verletzt, und Pilze sprießen und heilen ihn: Schneide sie sofort ab, sobald sie erscheinen.",
};

pack["29311"] = { "Herold Volazj",
"* |cff71d5ff|Hspell:57496|h[Insanity]|h|r: Die Insanity spawnt Kopien der gesamten Gruppe aus - verbrennt die Kopien schnell.",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Shadow Crashes exploden unter Spielern – weichen Sie aus.",
"* |cff71d5ff|Hspell:57949|h[Shiver]|h|r: Der Shiver verursacht Schaden am Träger – beseitigen Sie ihn.",
};

-- --------------------------------- --
-- Vault of Archavon : Zona 624 --
-- --------------------------------- --

pack["31125"] = { "Archavon der Steinwächter",
"* |cff71d5ff|Hspell:58678|h[Steinsplitter]|h|r: Er wirft Steinsplitter auf sein markiertes Ziel - Heiler, bereitet euch vor.",
"* |cff71d5ff|Hspell:53041|h[Choking Grab]|h|r: Greift einen Spieler an und zieht ihn zur Seite – die Gruppe hält Abstand von dem markierten Spieler.",
"* |cff71d5ff|Hspell:60894|h[Leap]|h|r: Er springt zu einem zufälligen Spieler – verteile dich und setze euch schnell neu auf.",
"* |cff71d5ff|Hspell:60880|h[Stomp]|h|r: Weite Stampf-Angriff auf die Gruppe - verteilen.",
};

pack["33993"] = { "Emalon der Sturmwächter",
"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: Der Sturmkonstrukt lädt auf – töte es, bevor der Angriff erfolgt.",
"* |cff71d5ff|Hspell:65279|h[Lightning Nova]|h|r: Nova um ihn herum – die Nahkämpfer gehen aus.",
};

pack["35013"] = { "Koralon der Flammenwächter",
"* |cff71d5ff|Hspell:66665|h[Flame Breath]|h|r: Konf der Flamme - positioniere ihn aus dem Rudel.",
"* |cff71d5ff|Hspell:66725|h[Meteor Fists]|h|r: Hämmer auf den Tank aus - Tank wechseln.",
"* |cff71d5ff|Hspell:66721|h[Burning Fury]|h|r: Er bufft sich im Laufe der Zeit mit dieser Fähigkeit.",
"* |cff71d5ff|Hspell:66684|h[Cinder]|h|r: Die Cinders of Flame verfolgen einen Spieler – bringe sie an die Wand.",
};

pack["38433"] = { "Toravon der Eiswächter",
"* |cff71d5ff|Hspell:72090|h[Freezing Ground]|h|r: Frost-basierte Angriffe breiten sich im Raid aus – bewegt euch.",
"* |cff71d5ff|Hspell:72034|h[Whiteout]|h|r: Breites Whiteout-Angriff - Flächeneffekt.",
"* |cff71d5ff|Hspell:72091|h[Orb]|h|r: Frost-Orbs umkreisen ihn – zerstöre sie, bevor sie explodieren.",
"* |cff71d5ff|Hspell:72004|h[Frostbite]|h|r: Frostbite stapelt sich bei jedem Treffer mit einem Orb – halte die Orbs in Reichweite.",
};

-- --------------------------------- --
-- Icecrown Citadel : Zona 631 --
-- --------------------------------- --

pack["36612"] = { "Lord Mark'gar",
"* |cff71d5ff|Hspell:69076|h[Bone Storm]|h|r: Er stürmt durch den Raum und schleudert Knochensplitter – verteile dich weit und achte darauf, dass er dich nicht erreicht.",
"* |cff71d5ff|Hspell:69057|h[Bone Spike]|h|r: Three players get impaled on spikes - break them free fast.",
"* |cff71d5ff|Hspell:69146|h[Coldflame]|h|r: Linien aus kaltem Feuer durchziehen den Boden – vermeiden Sie, darauf zu stehen.",
};

pack["36855"] = { "Lady Todeswisper",
"* |cff71d5ff|Hspell:71289|h[Dominate Mind]|h|r: Sie kontrolliert Spieler – kontrollieren Sie die markierten Ziele, bis sie verschwinden.",
"* |cff71d5ff|Hspell:61131|h[Adds]|h|r: Wellen von Kultisten begleiten sie – Greifen den gesamten Haufen an und stoppe die Wiederbelebung.",
"* |cff71d5ff|Hspell:70674|h[Vampric Might]|h|r: Der Kultisten-Buff verstärkt sie – lösen Sie ihn schnell auf.",
"* |cff71d5ff|Hspell:71001|h[Death and Decay]|h|r: Decay verbrennt den Boden - bewegt euch.",
"* |cff71d5ff|Hspell:71204|h[Touch of Insignificance]|h|r: Touch reduziert den Schaden des Tanks – tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:71236|h[Dark Martyrdom]|h|r: Ein Kultist zündet eine Detonation – entfernt euch von dem markierten Ziel.",
"* |cff71d5ff|Hspell:34018|h[Reanimation]|h|r: Fallen cultists reanimate - burn them again.",
};

bos = { "Kanonenschiffsschlacht",
"* |cff71d5ff|Hspell:69638|h[Battle Fury]|h|r: Das gegnerische Team erhält im Laufe des Kampfes Boni – verbrennen Sie die Außenstehenden schnell.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: Ein gefrierender Angriff betäubt das Deck – verteilen Sie sich.",
"* |cff71d5ff|Hspell:69652|h[Bladestorm]|h|r: Der Bladestorm trifft die Deck - bewegen Sie sich.",
"* |cff71d5ff|Hspell:23334|h[Boarders]|h|r: Boarders schwingen über – töte sie, bevor sie die Kanonen erreichen.",
};
pack["37215"] = bos; pack["37540"] = bos;

pack["37813"] = { "Todesbringer Saurfang",
"* |cff71d5ff|Hspell:72293|h[Mark of the Fallen Champion]|h|r: Der markierte Spieler verursacht Schaden auf die gesamte Gruppe – intensive Heilung der Gruppe deckt den Schaden ab.",
"* |cff71d5ff|Hspell:72378|h[Blutnova]|h|r: Blutnova explodiert weit – verteilen Sie sich.",
"* |cff71d5ff|Hspell:72385|h[Boiling Blood]|h|r: Boiling Blood verursacht Verbrennungen im Rudel – verteile dich.",
"* |cff71d5ff|Hspell:72410|h[Rune of Blood]|h|r: Der Runen verlangsamt den Tank – tauschen Sie die Tanks.",
"* |cff71d5ff|Hspell:72737|h[Frenzy]|h|r: Bei 30% Gesundheit greift er {Frenzy} an – bring ihn schnell down.",
"* |cff71d5ff|Hspell:72173|h[Blutbestien]|h|r: Blutbestien erheben sich – Greifen sie, bevor sie die Gruppe erreichen.",
};

pack["36626"] = { "Fauldarm",
"* |cff71d5ff|Hspell:69279|h[Gas Spore]|h|r: Gas Sporen markieren Spieler – berühren Sie den Ausbruch einmal, um Ihre Immunität zu erhalten.",
"* |cff71d5ff|Hspell:69166|h[Ingehalter Blight]|h|r: Jeder Atemzug erhöht seinen Schaden – bei drei Stacks nimmt die gesamte Gruppe Defensivposition.",
"* |cff71d5ff|Hspell:69240|h[Vile Gas]|h|r: Vile Gas verteilt sich und trifft Fernkämpfer – behalten Sie die Fernkämpfer weit entfernt.",
"* |cff71d5ff|Hspell:69195|h[Pungent Blight]|h|r: Der stinkende Angriff erfolgt mit dem dritten Einatmen – defensive Cooldowns aktivieren.",
"* |cff71d5ff|Hspell:72219|h[Gastric Bloat]|h|r: Gastric Bloat stapelt sich auf den Tank – tauscht die Tanks.",
};

pack["36627"] = { "Modermiene",
"* |cff71d5ff|Hspell:69508|h[Slime Spray]|h|r: Cone of slime - bleibe hinter ihm.",
"* |cff71d5ff|Hspell:69674|h[Mutating Infection]|h|r: Der infizierte Gegner räumt es auf, indem er zu dem großen Schleim rennt – der Explodierer spawnt einen Schleim-Add, verbrenn ihn von der Gruppe weg.",
"* |cff71d5ff|Hspell:69774|h[Sticky Ooze]|h|r: Sticky ooze pools chase players - step out.",
"* |cff71d5ff|Hspell:69558|h[Unstable Ooze]|h|r: Verschmolzene Ötze bilden einen großen Pool – halte die kleinen davon fern.",
};

pack["36678"] = { "Professor Seuchenmord",
"* |cff71d5ff|Hspell:70341|h[Schlammpuddle]|h|r: Schlammpuddle wachsen, wo immer sie landen – steige aus und kämpfe niemals darauf.",
"* |cff71d5ff|Hspell:70447|h[Volatile Ooze]|h|r: Der Ooze klebt einen Spieler - platziere den Ooze, um ihn zu befreien.",
"* |cff71d5ff|Hspell:70672|h[Gaseous Bloat]|h|r: Der Gas verursacht einen Spieler, sich aufzuplumpfen - platziere den Gasball, um ihn zu zerstören.",
"* |cff71d5ff|Hspell:71255|h[Choking Gas Bomb]|h|r: Choking Gas Bomben fallen – sofort zurückweichen.",
"* |cff71d5ff|Hspell:70911|h[Unbound Plague]|h|r: Die Ungebundene Plage springt von Spieler zu Spieler – geben Sie sie weiter, bevor sie den Träger tötet.",
"* |cff71d5ff|Hspell:72840|h[Volatile Experiment]|h|r: In phase 3 both experiments fly at once - preplan the ooze and the gas stations.",
};

bos = { "Rat des Blutes",
"* |cff71d5ff|Hspell:70952|h[Ziel wechseln]|h|r: Ihr Ziel wechselt zum geschützten Prinzen – greifen Sie niemals den geschützten an.",
"* |cff71d5ff|Hspell:72040|h[Empowered Flames]|h|r: Empowered Flames verfolgen einen Spieler – laufe dem Pfad nach.",
"* |cff71d5ff|Hspell:72037|h[Shock Vortex]|h|r: Shock vortex springt durch die Gruppe – verteile sie weit.",
"* |cff71d5ff|Hspell:72053|h[Kinetic Bombs]|h|r: Kinetic Bombs schweben und springen – platziere sie, bevor sie den Boden berühren.",
};
pack["37970"] = bos; pack["37972"] = bos; pack["37973"] = bos;

pack["37955"] = { "Blutkönigin Lana'thel",
"* |cff71d5ff|Hspell:71340|h[Pact of the Darkfallen]|h|r: Die verfluchten drei teilen sich den Schmerz – gruppiert euch eng und zerstört den Pakt.",
"* |cff71d5ff|Hspell:70946|h[Vampric Bite]|h|r: Der angegriffene Spieler erhält die Essenz – behalte einen nicht angegriffenen Heiler und plane einen Tausch.",
"* |cff71d5ff|Hspell:70877|h[Bloodthirst]|h|r: Die Essenz entwickelt einen Drang – das Gebissende greift einen anderen Spieler an, bevor der Drang explodiert.",
"* |cff71d5ff|Hspell:71266|h[Swarming Shadows]|h|r: Die Schatten verfolgen den markierten Spieler – rennen Sie die Markierungen weit aus.",
"* |cff71d5ff|Hspell:71772|h[Blood Bolt]|h|r: Blood Bolts exploden weit – verteilen Sie sich.",
"* |cff71d5ff|Hspell:71510|h[Blood Mirror]|h|r: Das Spiegelbild verstärkt den Schaden – halte die beiden Spiegelbilder getrennt.",
};

pack["36789"] = { "Valithria Traumwandler",
"* |cff71d5ff|Hspell:72483|h[Nightmare Portal]|h|r: Portale öffnen sich in den Traum – Heiler überqueren, den Buff nehmen und zurückkehren, um Valithria schwer zu heilen.",
"* |cff71d5ff|Hspell:70588|h[Unterdrückung]|h|r: Unterdrückungsnebel blockieren Heilung – zerstören Sie sie.",
"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay Waste setzt den Bereich zurück – verlasst die Ziele.",
"* |cff71d5ff|Hspell:71179|h[Mana Void]|h|r: Mana voids drain casters - step off the marks.",
"* |cff71d5ff|Hspell:70751|h[Corrosion]|h|r: Wellen von verätzten Zombies steigen auf – Beseitige sie mit Flächenangriffen aus dem Weg des Drachen.",
};

pack["36853"] = { "Sindragosa",
"* |cff71d5ff|Hspell:70126|h[Frost Beacon]|h|r: Beaconed players rise as ice tombs - the tombs become cover, plan their spots.",
"* |cff71d5ff|Hspell:69766|h[Instabilität]|h|r: Instabilität baut sich durch Zaubern auf – stoppe das Zaubern, wenn fünf Stacks erreicht sind, und lasse sie abklingen.",
"* |cff71d5ff|Hspell:70128|h[Mystic Buffet]|h|r: Buffs kumulieren sich durch ihren Atem - tauschen Sie die Tanks aus, bevor fünf Stacks erreicht sind.",
"* |cff71d5ff|Hspell:69762|h[Unchained Magic]|h|r: Der Unchained-Debuff legt Zauberer lahm – stoppen Sie mit dem Zaubern, bis er verschwunden ist.",
"* |cff71d5ff|Hspell:43810|h[Phase de Aire]|h|r: Sie erhebt sich für eine Phase im Flug – verteilen und heilen Sie den Angriff.",
};

pack["36597"] = { "Der Lichkönig",
"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: Defile wächst, wo immer sich jemand darin befindet – gehe niemals hinein und verteile es weit, sonst frisst es die Plattform.",
"* |cff71d5ff|Hspell:70337|h[Necrotische Plage]|h|r: Die Plage springt zwischen Zielen – platziere sie auf den Adds und löse die Gruppe niemals auf.",
"* |cff71d5ff|Hspell:70372|h[Shambling Horror]|h|r: Die Shamblings steigen zwischen den Phasen auf – töte sie und halte die Krankheit auf ihnen.",
"* |cff71d5ff|Hspell:69200|h[Raging Spirit]|h|r: Raging Spirits erscheinen im Winter – zerstöre sie, bevor sie sich der Gruppe nähern.",
"* |cff71d5ff|Hspell:68981|h[Remorseless Winter]|h|r: Der Wintersturm zieht Spieler nach innen – bleiben Sie aus dem Ring.",
"* |cff71d5ff|Hspell:71844|h[Valkyr]|h|r: Die Valkyr greifen Spieler -> Verbrennen Sie sie, bevor sie die markierten Spieler tragen.",
"* |cff71d5ff|Hspell:72262|h[Quake]|h|r: Der Beben zerstört die Plattform – verteile dich auf der sicheren Seite.",
};

-- --------------------------------- --
-- The Forge of Souls : Zona 632 --
-- --------------------------------- --

pack["36497"] = { "Bronjahm",
"* |cff71d5ff|Hspell:68839|h[Corrupt Soul]|h|r: Die korrumpierte Seele kehrt zu ihm zurück – zerstöre die Seele, bevor sie ihn nährt.",
"* |cff71d5ff|Hspell:68872|h[Soul Storm]|h|r: Bei niedrigem Leben zerstört der Sturm den Raum – halte dich an den Rändern, während er sich dreht.",
};

pack["36502"] = { "Verschlinger der Seelen",
"* |cff71d5ff|Hspell:68820|h[Well of Souls]|h|r: Der Brunnen erzeugt einen Bereich auf dem Boden – vermeiden Sie diesen.",
"* |cff71d5ff|Hspell:69051|h[Mirrored Soul]|h|r: Das Spiegelbild bindet einen Spieler an sich – stoppe den Angriff, solange die Bindung besteht.",
"* |cff71d5ff|Hspell:68982|h[Phantom Blast]|h|r: Der Phantom-Schlag zerstört den Raum – unterbreche ihn.",
"* |cff71d5ff|Hspell:68899|h[Wailing Souls]|h|r: Die Wailing Souls durchstreifen den Raum – bewege dich auf dem sicheren Pfad.",
};

-- --------------------------------- --
-- Trial of the Crusader : Zona 649 --
-- --------------------------------- --

bos = { "Bestien von Nordend",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: Impale durchdringen, um den Tank zu treffen - zuerst die Snobolds vom Rücken des Tanks zu verbrennen.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Fire Bombs verteilen sich über die Gruppe – gehen Sie aus dem Mark.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: Das Tier stürmt über die Arena – weiche dem Angriff aus und greife es an, während es benommen liegt.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: Der Atem des Frostes durchstreift den Raum – bleibe außerhalb des Konus.",
"* |cff71d5ff|Hspell:66883|h[Schlammbecken]|h|r: Schlammbecken verteilen sich unter den Würmern – vermeiden Sie, darauf zu treten.",
"* |cff71d5ff|Hspell:66823|h[Paralytische Toxine]|h|r: Die Toxine lähmen das markierte Ziel – halte die Heilungen bereit.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: Der Burning Bile verbreitet sich beim Kontakt – halte Abstand von den markierten Zielen.",
};
pack["34796"] = bos; pack["35144"] = bos; pack["34799"] = bos; pack["34797"] = bos;

pack["34780"] = { "Lord Jaraxxus",
"* |cff71d5ff|Hspell:66197|h[Legion Flame]|h|r: Feuerbahn, wo immer er geht - folge der Bahn bis zur Wand.",
"* |cff71d5ff|Hspell:66237|h[Incinerate Flesh]|h|r: Der markierte beginnt einen Heilwettbewerb - erteilt Heilzauber, bis der Siegel bricht.",
"* |cff71d5ff|Hspell:66269|h[Nether Portal]|h|r: Ein Portal öffnet sich – tötet die Herrin und die Add schnell.",
"* |cff71d5ff|Hspell:66258|h[Nether Volcano]|h|r: Ein Vulkan bricht aus – zerstöre ihn, bevor die Feuerbälle den Raum überfluten.",
"* |cff71d5ff|Hspell:67009|h[Nether Power]|h|r: Er stärkt sich selbst – brechen Sie die Fähigkeit des Bosses.",
"* |cff71d5ff|Hspell:66532|h[Fel Feuerball]|h|r: Fel Feuerball bombardiert den Tank – unterbreche ihn bei jedem Wirken.",
};

bos = { "Zwillingsval'kyr",
"* |cff71d5ff|Hspell:65950|h[Light Essence]|h|r: Half the raid carries light essence - only touch light orbs, the opposite color burns.",
"* |cff71d5ff|Hspell:66001|h[Dunkle Essenz]|h|r: Der andere Teil trägt die dunkle Essenz – berühren Sie nur dunkle Kugeln.",
"* |cff71d5ff|Hspell:39089|h[Special]|h|r: Bei dem Spezialaufruf wechseln die Essenzen – springe zu den gegenüberliegenden Orbs gleichzeitig.",
"* |cff71d5ff|Hspell:65875|h[Pacto de los Gemelos]|h|r: Uno de los gemelos cura al otro - interrumpa el pacto.",
"* |cff71d5ff|Hspell:65916|h[Power of the Twins]|h|r: Das verstärkte Zwilling nimmt reduzierten Schaden – tauschen Sie den Schaden auf den anderen aus.",
};
pack["34497"] = bos; pack["34496"] = bos;

pack["34564"] = { "Anub'arak",
"* |cff71d5ff|Hspell:45419|h[Nerubian Burrowers]|h|r: Die Burrowers steigen von unten auf - tötet sie schnell und unterbricht ihre Angriffe.",
"* |cff71d5ff|Hspell:67574|h[Verfolgt]|h|r: Die Schwärme verfolgen den markierten Spieler – laufen sie breit aus und greifen sie an, während sie sich bewegen.",
"* |cff71d5ff|Hspell:66013|h[Penetrating Cold]|h|r: In der letzten Phase wirkt der Kalt-Effekt auf alle – heilen Sie durch die Ticks.",
"* |cff71d5ff|Hspell:66012|h[Freezing Slash]|h|r: Freezing Slash markiert einen Spieler - Heiler bereit.",
"* |cff71d5ff|Hspell:65919|h[Burrow]|h|r: Verwende Burrow mit Add-Wellen - beseitige die Gruppe, er taucht neben dem markierten Bereich auf.",
};

bos = { "Fraktionschampions",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Der Krieger entfesselt den Sturm – Nahkampfigur entfernen.",
"* |cff71d5ff|Hspell:65983|h[Heroismus]|h|r: Ihr Heroismus verstärkt die Gruppe – beseitigen Sie es schnell.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Hellfire verbrennt den Boden – bleiben Sie nicht auf den Markierungen stehen.",
"* |cff71d5ff|Hspell:65801|h[Schaf]|h|r: Ihre Crowd-Control-Fähigkeiten wirken - halte Heilung bereit.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Der Death Grip fängt einen Spieler -> Die markierten Braces und die Gruppe halten die Formation.",
};
pack["34458"] = bos; pack["34451"] = bos; pack["34459"] = bos; pack["34448"] = bos; pack["34449"] = bos; pack["34445"] = bos; pack["34456"] = bos; pack["34447"] = bos; pack["34441"] = bos; pack["34454"] = bos; pack["34444"] = bos; pack["34455"] = bos; pack["34450"] = bos; pack["34453"] = bos; pack["34461"] = bos; pack["34460"] = bos; pack["34469"] = bos; pack["34467"] = bos; pack["34468"] = bos; pack["34471"] = bos; pack["34465"] = bos; pack["34466"] = bos; pack["34473"] = bos; pack["34472"] = bos; pack["34470"] = bos; pack["34463"] = bos; pack["34474"] = bos; pack["34475"] = bos;

-- --------------------------------- --
-- Trial of the Champion : Zona 650 --
-- --------------------------------- --

bos = { "Großchampions",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Ihr Heiler wirkt Wellen - behalten Sie die Unterbrechungen auf ihm.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Der Magier wirkt Polymorph an – brechen Sie es schnell auf.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Die Hexen des Schamanen – brechen die Hexen auf.",
"* |cff71d5ff|Hspell:66045|h[Hast]|h|r: Der Hast-Buff verstärkt sie – beseitigen Sie den Boss.",
"* |cff71d5ff|Hspell:67594|h[Gifte]|h|r: Gifte spalten sich aus - vermeiden Sie die Markierungen.",
};
pack["34657"] = bos; pack["34701"] = bos; pack["34702"] = bos; pack["34703"] = bos; pack["34705"] = bos; pack["35569"] = bos; pack["35570"] = bos; pack["35571"] = bos; pack["35572"] = bos; pack["35617"] = bos;

pack["35119"] = { "Eadric der Reine",
"* |cff71d5ff|Hspell:66935|h[Radiance]|h|r: Die Strahlkraft blendet jeden, der ihn direkt ansieht – vermeide es, den Strahl anzusehen.",
"* |cff71d5ff|Hspell:66905|h[Hammer]|h|r: Er wirft seinen Hammer – der markierte fängt ihn und wirft ihn zurück.",
"* |cff71d5ff|Hspell:66889|h[Vengeance]|h|r: Sein Zorn verstärkt seine Macht – verbrennen Sie ihn zwischen den Hämmern.",
};

pack["34928"] = { "Argentumbeichtpatin Blondlocke",
"* |cff71d5ff|Hspell:66620|h[Memory]|h|r: Der Gedächtnis manifestiert sich und kämpft – zerstöre ihn, weiche den Wunden, die er verursacht, aus.",
"* |cff71d5ff|Hspell:66515|h[Reflektierende Rüstung]|h|r: Die Rüstung reflektiert Zauber – Zauberer sollten sie vermeiden.",
"* |cff71d5ff|Hspell:66538|h[Heiliges Feuer]|h|r: Heiliges Feuer verbrennt die markierten Ziele – beseitigen Sie den Brand.",
"* |cff71d5ff|Hspell:66537|h[Renew]|h|r: Sie erneuert sich - unterdrücken Sie die Erneuerung.",
};

pack["35451"] = { "Der Schwarze Ritter",
"* |cff71d5ff|Hspell:67781|h[Desecration]|h|r: Desecration bewegt sich über den Boden – bleiben Sie nicht darauf stehen.",
"* |cff71d5ff|Hspell:67751|h[Explode]|h|r: Der Ghoul detoniert in der Nähe der Gruppe – rennen Sie weg.",
"* |cff71d5ff|Hspell:67823|h[Marked]|h|r: Ich markiere einen Spieler für die Plage – Heiler bleiben am Mark.",
};

-- --------------------------------- --
-- Pit of Saron : Zona 658 --
-- --------------------------------- --

pack["36494"] = { "Schmiedemeister Garfrost",
"* |cff71d5ff|Hspell:70381|h[Deep Freeze]|h|r: Der Deep Freeze fängt den Träger ein – halte Heilzauber bereit; die Saronit-Felsen, die er wirft, dienen als Deckung gegen seinen Frost.",
};

pack["36476"] = { "Ick und Krick",
"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: Ich verfolge einen Spieler und greife an – lasst euch weit genug von den Zielen entfernen.",
"* |cff71d5ff|Hspell:69024|h[Toxic Waste]|h|r: Die giftigen Pfützen bedecken den Boden – vermeiden Sie, darauf zu stehen.",
"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: Die Poison Nova-Pulsen sind weitwirksam – bewegen Sie sich aus dem Bereich.",
};

bos = { "Geißelfürst Tyrannus",
"* |cff71d5ff|Hspell:69172|h[Overlords Brand]|h|r: Das Siegel reflektiert jeden Treffer, den es auf den markierten Bereich zurückwirft – das Siegel hält die Angriffe.",
"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: Rimefangs Griff versucht, einen Spieler zu treffen - weiche dem Angriff aus, bevor er einschlägt.",
};
pack["36658"] = bos; pack["36661"] = bos;

-- --------------------------------- --
-- Halls of Reflection : Zona 668 --
-- --------------------------------- --

pack["38112"] = { "Falric",
"* |cff71d5ff|Hspell:72422|h[Quivering Strike]|h|r: Der Quiver entleert seinen Träger – halte die Heilung bereit.",
"* |cff71d5ff|Hspell:72426|h[Impending Despair]|h|r: Der Verzweiflungsschrei greift den Träger – beseitigen Sie ihn schnell; Wellen von verfluchten Geistern stürmen zwischen die beiden.",
};

pack["38113"] = { "Marwyn",
"* |cff71d5ff|Hspell:72363|h[Corrupted Flesh]|h|r: Das verrottete Fleisch verbrennt den Träger – halte die Heilung bereit.",
"* |cff71d5ff|Hspell:72368|h[Shared Suffering]|h|r: Shared Suffering kettelt das Rudel an – halte die Verbundenen auseinander.",
"* |cff71d5ff|Hspell:72383|h[Corrupted Touch]|h|r: Der Angriff entzieht dem Träger Gesundheit – heilen Sie ihn.",
"* |cff71d5ff|Hspell:72362|h[Well of Corruption]|h|r: Die Korruption-Seen bilden eine Fläche – vermeiden Sie, darauf zu stehen.",
};

-- --------------------------------- --
-- The Ruby Sanctum : Zona 724 --
-- --------------------------------- --

pack["39863"] = { "Halion der Zwielichtzerstörer",
"* |cff71d5ff|Hspell:74562|h[Fiery Combustion]|h|r: Combustion-Builds basieren sich auf Feuer und hinterlassen einen Feuerpfad, den du zum Rand der Welt bringen solltest.",
"* |cff71d5ff|Hspell:74792|h[Shadow Consumption]|h|r: Die gleichen Spuren auf der Schattenseite – banken Sie sie am Rande des Reiches.",
"* |cff71d5ff|Hspell:74648|h[Meteor Strike]|h|r: Ein Meteor trifft das Feuerreich – weglaufen Sie vom Ziel.",
"* |cff71d5ff|Hspell:74769|h[Twilight Cutter]|h|r: Der rotierende Cutter trifft den Twilight-Bereich – halte den Strahl von dir fern.",
"* |cff71d5ff|Hspell:74525|h[Flammenatem]|h|r: Flammenatem auf den Feuer-Tank -> Gesicht ihm zeigen.",
"* |cff71d5ff|Hspell:74806|h[Dark Breath]|h|r: Dark Breath auf den Tank der Twilight-Seite - positioniere ihn so, dass er den Gegner nicht direkt sieht.",
};

pack["39751"] = { "Baltharus der Kriegsjünger",
"* |cff71d5ff|Hspell:75125|h[Blade Tempest]|h|r: Whirlwind greift Nahkämpfer an – distanziere dich.",
"* |cff71d5ff|Hspell:74509|h[Abstoßende Welle]|h|r: Eine Welle stößt alle zurück – halte Abstand zu den Wänden.",
"* |cff71d5ff|Hspell:74505|h[Splitting Brand]|h|r: Die Marke markiert einen Spieler – der Klon erhält eine Kopie, beobachte den Split.",
};

pack["39747"] = { "Saviana Flammenschlund",
"* |cff71d5ff|Hspell:74453|h[Beacon of Flames]|h|r: Sie markiert einen Spieler für den nächsten Atem - nehmen Sie das Zeichen weit von der Gruppe entfernt.",
"* |cff71d5ff|Hspell:74403|h[Flammenatem]|h|r: Weite Flammenatem – positioniere sie, sodass sie sie direkt ansieht.",
"* |cff71d5ff|Hspell:78722|h[Enrage]|h|r: Sie provoziert – beruhigen Sie sie.",
};

pack["39746"] = { "General Zarithrian",
"* |cff71d5ff|Hspell:74367|h[Rüstungs-Effekt]|h|r: Rüstungs-Effekte auf den Tank legen - Tank wechseln.",
"* |cff71d5ff|Hspell:74398|h[Drachen]|h|r: Onyx-Drachen betreten den Raum – töte sie, halte Unterbrechungen bereit.",
"* |cff71d5ff|Hspell:74384|h[Fearful Roar]|h|r: Fearful roar - interrupt it or face the fear.",
};

P.de = de;
