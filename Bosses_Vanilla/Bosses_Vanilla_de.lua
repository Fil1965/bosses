--[[
	Bosses_Vanilla_de.lua
		Deutsche Daten des Vanilla- (Classic-)Pakets (nur Daten; die
		Anmeldung macht Bosses_Vanilla.lua, das im .toc nach dieser
		Datei geladen wird).
		Quellen: DBM-Party-Vanilla und LittleWigs_Classic aus _doc +
		Die Journalnamen (_nombres/jefes-Bosses_Vanilla.json).
		In Schritten gefüllt (2026): beginnt mit der klassischen Feuerschlucht.
		Achtung: diese Datei ist noch nicht im .toc gelistet; der Core lädt
		sie, sobald der Vanilla-DE-Teil komplett ist.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- wiederverwendet für geteilte Einträge (mehrere NPC-IDs, gleiche Tabelle)

-- Eintragsformat (einer pro Boss, NPC-Dezimal-ID aus Feld 6 der GUID):
-- pack["NPC_ID"] = { "Bossname", "* Tipp 1", "* Tipp 2" };

-- ============================ --
-- Ragefire Chasm : Zone 389 (klassisch) --
-- ============================ --

pack["11520"] = { "Taragaman der Hungerleider",
	"* Seine |cff71d5ff|Hspell:11970|h[Feuernova]|h|r trifft alles um ihn herum: der Nahkampf weicht zurück, bevor die Nova kommt; Fernkampf und Heiler bleiben auf maximaler Reichweite.",
	"* Mit dem |cff71d5ff|Hspell:18072|h[Hakenhieb]|h|r schleudert er den Tank in die Luft: man platziert ihn fern der Lavakanten, damit kein Katapult aus der Schlacht in die geschmolzene Steinwüste wirft."
};
pack["11518"] = { "Jergosh der Herbeirufer",
	"* Er kommt mit zwei Dienern: Massenkontrolle auf einen, gebündelter Schaden auf den anderen und, wenn beide liegen, Tank und Schaden direkt auf den Boss (Tank-and-Spank).",
	"* Sein |cff71d5ff|Hspell:20800|h[Verbrennen]|h|r brennt heftig (mit Priorität entfernen) und sein |cff71d5ff|Hspell:18267|h[Fluch der Schwäche]|h|r senkt Schaden und Kraft: mit Magiedispel wegzunehmen."
};
pack["11519"] = { "Bazzalan",
	"* Er steht oben an der letzten Rampe, flankiert von zwei Akolythen: man kann mit einem Einzel-Pull einen Diener allein anlocken, bevor der Bosskampf öffnet.",
	"* Massenkontrolle auf den übrigen Diener und der Schaden geht direkt auf den Boss; den |cff71d5ff|Hspell:744|h[Tödliches Gift]|h|r am Tank im Blick: er verblasst nie von selbst, er muss entfernt werden (Druidendispel oder Gegengift)."
};
pack["11517"] = { "Flintauge",
	"* Frontaler Flächenschlag (Ansturm/Schlag): der Tank dreht ihm den Rücken zur Gruppe, damit dieser Frontalschaden Nahkampf und Heiler nie erreicht.",
	"* Zuerst die Diener ausschalten, die ihn begleiten."
};

-- ============================================================= --
-- Ragefire Chasm : Zone 389 (Retail-Neufassung seit Mists; die klassischen vier sind die CIDs 11517-11520) --
-- ============================================================= --
-- Taktiken vom Eigentümer geliefert (Wowhead-Suche über den Chat) --
pack["61408"] = { "Adarogg",
	"* Er fixiert einen Spieler und stürmt auf dessen Position zu (Infernoansturm): wer seinen Weg kreuzt oder nahe dem Einschlag steht, nimmt Schaden; die Markierung läuft aus der Bahn und die Gruppe quert sie nicht.",
	"* Sein Flammenatem setzt ein zufälliges Ziel in Brand: Heiler halten dagegen."
};
pack["61412"] = { "Dunkelschamane Koranthal",
	"* Seine Würfe Verdrehter Elemente (Schattenschaden) sind unterbrechbar: jeder gestoppte Cast ist Schaden, der nie ankommt.",
	"* Sein Schattensturm lässt verzerrte Magie auf die Fläche niederregnen: verteilt stehen und Heiler bereit."
};
pack["61463"] = { "Nagma",
	"* Sanfter Einführungskampf: Er spuckt Lava auf den Fleck eines zufälligen Spielers und trifft darin (3 m); man weicht dem Gespucke aus.",
	"* Nach genau fünf Spuckattacken taucht er unter und erscheint wieder an einem anderen Ende der Plattform: beim Auftauchen neu stellen.",
	"* Seine Trefferbox ist riesig: Nahkämpfer schlagen gemütlich von der Plattform aus, ohne über den Lavahang zu lehnen."
};
pack["61528"] = { "Lavawache Gordoth",
	"* Sein Seismischer Schlag und sein Bodenbruch schlagen die Nähe mit physischem Schaden und Rückstoß: der Tank und der Nahkampf achten darauf, nicht in Abgründe geschleudert zu werden, und drängeln nicht.",
	"* Bei 30% Leben rastet er auf (+30% Angriffstempo und +10% Schaden): finales Schadensrennen, Heiler bereit."
};

-- ============================================================= --
-- Wailing Caverns : Zone 43 (klassisch) --
-- ============================================================= --
-- Die vier Druiden der Zone (die Reißzahnfürsten) teilen dasselbe
-- Muster: einen unterbrechbaren Schlaf und eine Heilung; nur Kobrahn
-- ergänzt ein entfernbares Gift. Mutanus und sein Chor sind der echte
-- Kampf.

pack["3671"] = { "Lady Anakondra",
	"* Sie verwandelt sich in eine Druidin: unterbrecht ihren |cff71d5ff|Hspell:8040|h[Druidenschlummer]|h|r (lässt einen Spieler einschlafen) und ihre |cff71d5ff|Hspell:23381|h[Heilende Berührung]|h|r, sonst zieht sich der Kampf hin."
};
pack["3669"] = { "Lord Kobrahn",
	"* Wie Anakondra: blockt den |cff71d5ff|Hspell:8040|h[Druidenschlummer]|h|r und die |cff71d5ff|Hspell:23381|h[Heilende Berührung]|h|r.",
	"* Sein |cff71d5ff|Hspell:17330|h[Gift]|h|r fliegt sofort mit den Giftentfernern weg."
};
pack["3670"] = { "Lord Pythas",
	"* Wie Anakondra: blockt den |cff71d5ff|Hspell:8040|h[Druidenschlummer]|h|r und die |cff71d5ff|Hspell:23381|h[Heilende Berührung]|h|r."
};
pack["3673"] = { "Lord Serpentis",
	"* Wie Anakondra: blockt den |cff71d5ff|Hspell:8040|h[Druidenschlummer]|h|r und die |cff71d5ff|Hspell:23381|h[Heilende Berührung]|h|r."
};
pack["3653"] = { "Kresh",
	"* Ein schlichter physischer Kampf: nichts zu unterbrechen oder zu entfernen, fester Tank und Schadensrennen."
};
pack["3674"] = { "Skum",
	"* Er wechselt einen |cff71d5ff|Hspell:6254|h[Kettenblitz]|h|r ab, der zwischen Zielen springt: die Gruppe nicht drängeln und ihn schnell erledigen."
};
pack["5775"] = { "Verdan der Ewiglebende",
	"* Unterbrecht seine |cff71d5ff|Hspell:8142|h[Ranken]|h|r: das ist das einzige Detail des Kampfes, der Rest ist Nahkampf."
};
pack["3654"] = { "Mutanus der Verschlinger",
	"* Der |cff71d5ff|Hspell:7967|h[Naralexs Alptraum]|h|r ist der Kern des Kampfes: unterbrecht den Gesang, jedes Mal, wenn er ansetzt.",
	"* Sein |cff71d5ff|Hspell:7399|h[Einschüchtern]|h|r (Panik) ist Magie: die Heiler entzaubern die Getroffenen, und sein |cff71d5ff|Hspell:8150|h[Donnerknall]|h|r trifft flächig — Heiler bereit."
};
pack["5912"] = { "Deviatfeendrache",
	"* Optioneller, halb versteckter Boss: er muss nicht sterben, um den Dungeon zu vollenden.",
	"* Sein |cff71d5ff|Hspell:8040|h[Druidenschlummer]|h|r lässt einen Spieler einschlafen (als Magie entfernbar): falls nie jemand den Cast unterbricht, entfernt ihn ein Heiler."
};

-- ============================================================= --
-- The Stockade : Zone 34 (klassisch) --
-- ============================================================= --
-- Die sechs Klassiker sind schlichte Nahkampfkämpfe ohne vom DBM
-- markierte Fähigkeiten; nur Bazil Thredd ergänzt Gefangene.

pack["1696"] = { "Targorr der Schreckliche",
	"* Ein schlichter Nahkampf: nichts zu unterbrechen oder zu entfernen, Tank dran und Schadensrennen."
};
pack["1663"] = { "Dextren Tutor",
	"* Fähigkeit Furcht (Fear): Dextren kann Furcht auf die Gruppe auslösen, deshalb ist es empfehlenswert, den Raum und nahe Feinde gründlich zu säubern, bevor der Kampf beginnt.",
	"* Flucht: Wenn er wenig Leben hat, versucht er zu fliehen, also sollte man ihn kontrollieren, damit er keine weiteren Gegner anzieht."
};
pack["1666"] = { "Kam Deepfury",
	"* Ein schlichter Nahkampf: nichts zu unterbrechen oder zu entfernen."
};
pack["1717"] = { "Hamhock",
	"* Ein schlichter Nahkampf, der hart zuschlägt: nichts zu unterbrechen oder zu entfernen."
};
pack["1720"] = { "Bruegal Eisenfaust",
	"* Ein schlichter Nahkampf: nichts zu unterbrechen oder zu entfernen."
};
pack["1716"] = { "Bazil Thredd",
	"* Der finale Kampf geht im Hof vor sich, und seine Gefangenen mischen ab dem Start mit: erst die Adds, dann der Boss."
};

-- The Stockade : Zone 34 (Retail-Neufassung der Neuzeit; die Klassiker behalten ihre gewohnten CIDs 1663-1720) --
pack["46254"] = { "Hogger",
	"* Der legendäre Schurke aus Elwynn, nun Kopf der Meuterei: unterbrecht seinen |cff71d5ff|Hspell:86620|h[Wahnsinniger Ruf]|h|r.",
	"* Der Rest ist Nahkampf: das DBM markiert keine weiteren Mechaniken."
};
pack["46264"] = { "Fürst Gluthitze",
	"* Ein direkter Feuerball auf den Tank (Feuerschaden) : der übliche Takt von Tank und Heiler.",
	"* Sein Feuerregen macht einen Punkt 9 Sekunden lang siedendheiß : alle im Umkreis von 5 Metern garen - sofort aus der Pfütze raus, sobald sie fällt.",
	"* Sein Überhitzen verbrennt einen zufälligen Spieler : Feuerschaden sofort, dazu ein Brand, der alle 3 Sekunden 9 Sekunden lang zuschlägt (umso stärker, je mehr Macht er hat) : das ist Magie, rechtzeitig entzaubern."
};
pack["46383"] = { "Randolph Moloch",
	"* Der Endboss der Neufassung, an der Spitze der meuternden Sträflinge am Ende des Hauptstollens.",
	"* Wildes Zustechen: eine Sticherei in extremer Geschwindigkeit (ein Hieb alle 0,3 Sekunden), während seine Trefferchance die ganze Zeit um 35% sinkt : der Tank hält den Hagel aus.",
	"* Sein frontaler Schwung (Sweep) trifft Tank und nächsten Verbündeten: niemand stellt sich vor ihn und niemand klebt am Tank.",
	"* Schwinden: bei 70-60% und 40-30% Leben verpufft er und taucht unvermittelt hinter einem zufälligen Spieler auf : der Tank holt die Bedrohung schnell zurück."
};

-- ============================================================= --
-- Blackfathom Deeps : Zone 48 --
-- ============================================================= --
-- Der Kampf wechselt je Ära: die klassischen CIDs (4829-4887, 6243) sind
-- der Era-Client; die 20xxxx das SoD-Rework (Taktiken vom Besitzer) und die
-- 74xxx/75xxx das aktuelle Journal, das zudem die Bosse umvertielte
-- (Bathiel, Henker Gore, Thruk... Taktiken noch offen).

-- (SoD-Rework: die Version des Era-Clients ist einfacher)
pack["202699"] = { "Baron Aquanis",
	"* Die Gruppe verteilt sich auf der Plattform, damit seine Blitzstürme nicht kettenweise treffen; Nahkampf und Tank bleiben an ihm.",
	"* Mit seiner |cff71d5ff|Hspell:404806|h[Tiefenladung]|h|r setzt er eine tödliche Ladung auf einen Spieler: der Markierte wirft sich sofort ins Wasser, damit die Explosion die Gruppe weder trifft noch wegstößt.",
	"* Achtung beim Wasserfall: Tornados stürzen nach unten; Nahkämpfer steigen mit Tempo-Orben oder springend hoch, während Zauberer unten ohne Probleme weiter schädigen können."
};
-- (SoD-Rework / aktuelles Journal; der Klassiker ist CID 4887)
bos = { "Ghamoo-Ra",
	"* Er startet hinter einer Schale, die sämtlichen Schaden drastisch drosselt: jeder Treffer und Zauber knabbert sie ab, man hämmert also konstant darauf, bis sie zerbricht.",
	"* Beim Zerbrechen der Schale explodiert er mit Schaden auf die ganze Gruppe (Heiler mildern ihn ab) und liegt frei: der Moment, jeden Schadens-Cooldown zu zünden.",
	"* Sein |cff71d5ff|Hspell:407077|h[Dreifaches Zerbeißen]|h|r trifft den Tank: Heiler achten auf sein Leben."
};
pack["201722"] = bos;
pack["74446"] = bos;
-- (Era-Client-Version; das SoD-Rework, CIDs 201722/74446, bringt die Schale)
pack["4887"] = { "Ghamoo-Ra",
	"* Geradliniger Kampf aus Tank und Schaden: sein |cff71d5ff|Hspell:5568|h[Niedertrampeln]|h|r schüttelt alles nahe am Boss; Nahkampf bleibt dicht, der Rest verteilt sich."
};
bos = { "Lady Sarevess",
	"* Sie ist von Elitegardisten eskortiert: Massenkontrolle auf die Diener (Verwandlung, Fallen) und der Schaden bündelt sich auf sie.",
	"* Ihr |cff71d5ff|Hspell:407546|h[Einfrierender Pfeil]|h|r friert den Treffer ein (der Heiler befreit ihn per Dispel) und, wenn ihr |cff71d5ff|Hspell:407653|h[Gegabelter Blitz]|h|r jemanden anvisiert, weicht der Markierte aus der Gruppe.",
	"* Legt sie den |cff71d5ff|Hspell:407791|h[Zorn von Aku'mai]|h|r auf einen Spieler, wird er entfernt, sobald der Heiler ihn sieht; ihre Bodenflächen werden gemieden."
};
pack["4831"] = bos;
pack["204068"] = bos;
-- (Era-Client-Version; das SoD-Rework, CID 204921, fügt Phasen hinzu)
pack["6243"] = { "Gelihast",
	"* Geradliniger Kampf: sein Haupt-Ärgernis ist das |cff71d5ff|Hspell:6533|h[Netz]|h|r, das jemanden für ein paar Sekunden aus dem Kampf nimmt (zerbrechen oder dispeln); sonst Tank und Schaden."
};
-- (SoD-Rework; die Era-Client-Version, CID 6243, hat keine Phasen)
bos = { "Gelihast",
	"* Der Kampf wechselt zwischen Schaden und Übergang: jedes Mal, wenn er etwa 30% seiner Gesundheit verliert, wird er im Zentrum des Raums immun.",
	"* Im Übergang erscheinen Schattententakel und Projektionen, die den Raum überqueren: ausweichen oder die Tentakel zerstören, bis er wieder verwundbar wird.",
	"* Sein |cff71d5ff|Hspell:411956|h[Fluch der Tiefe]|h|r wird mit Fluchdispeln entfernt und mit seiner |cff71d5ff|Hspell:412456|h[Murloc-Marsch]|h|r kommen Wellen von den Seiten: schnell aufräumen."
};
pack["204921"] = bos;
-- (SoD-Rework; der Klassiker taucht im Journal nicht auf)
pack["207356"] = { "Lorgus Jett",
	"* Absolute Priorität sind seine Totems: wenig Leben und brutale Effekte; sofort zerstören (das |cff71d5ff|Hspell:419636|h[Totem der geschmolzenen Wut]|h|r trifft flächig und das |cff71d5ff|Hspell:414691|h[Totem des Windzorns]|h|r beschleunigt seine Seite).",
	"* Startet er eine Heilung, unterbricht Tank oder Nahkampf sie, sobald verfügbar.",
	"* Er legt auf den Tank einen Debuff, der den erlittenen Schaden erhöht: das verlangt einen Tankwechsel während des Kampfes."
};
-- (Era-Client-Version; das SoD-Rework, CID 209678, hat die Schattenwelt)
pack["4832"] = { "Twilight-Lord Kelris",
	"* Auf dem Era-Client ist es ein einfacher Kampf: den |cff71d5ff|Hspell:8399|h[Schlaf]|h|r auf einen zufälligen Spieler dispeln und weiter Tank und Schaden."
};
-- (SoD-Rework; die Era-Client-Version, CID 4832, ist einfacher)
bos = { "Twilight-Lord Kelris",
	"* Phase 1 (100% bis 35%): er schickt zwei Spieler in die Schattenwelt; dort töten sie die Geisterpriester schnell, um die Portale zu aktivieren und zurückzukehren; oben wird seine Blitzkette IMMER unterbrochen.",
	"* Phase 2 (unter 35%): er verfällt in Wut und schickt niemanden mehr hinab; Wettlauf um Schaden mit einem Trank der Schattenresistenz, vor oder in der Phase getrunken: der Dauerschattenschaden zerbricht die Gruppe sonst.",
	"* Sein |cff71d5ff|Hspell:423135|h[Schlaf]|h|r baut weiterhin jemanden zufällig aus: dispeln."
};
pack["209678"] = bos;
-- (Era-Client-Version; das Rework, CIDs 213334/75408, wird zweiphasig)
pack["4829"] = { "Aku'mai",
	"* Geradliniger Kampf mit Gift: ihre |cff71d5ff|Hspell:3815|h[Giftwolke]|h|r bleibt, wo sie steht; der Tank hält sie von der Gruppe fern und niemand betritt sie.",
	"* Sterbend verfällt sie in |cff71d5ff|Hspell:3490|h[Rasende Wut]|h|r und schlägt schneller: Heiler drehen das Tempo hoch."
};
-- (SoD-Rework / aktuelles Journal; der Klassiker ist CID 4829)
bos = { "Aku'mai",
	"* Phase 1 (Hydraform): der Haupttank stapelt ihren Gift-Debuff; der Ausweichtank provoziert sie beim dritten oder vierten Stapel, damit der erste sich an den elementaren Quellen des Raums reinigt (sie rufen einen Diener, der sofort stirbt).",
	"* Sie wird ausgewichen, wenn sie die |cff71d5ff|Hspell:429168|h[Ätzende Explosion]|h|r zaubert: der Markierte tritt aus dem Kegel.",
	"* Phase 2 (Leerenform, unter 50%): physischer Schaden steigt und sie wirft dunkle Salven (die |cff71d5ff|Hspell:429359|h[Leerenexplosion]|h|r wird ebenso ausgewichen); die Tanks rotieren weiter mit mehr Sorgfalt und die Gruppe verbrennt alle Cooldowns zum Finish."
};
pack["213334"] = bos;
pack["75408"] = bos;
pack["4830"] = { "Old Serra'kis",
	"* Einfacher Nahkampfkampf im flachen Wassergraben des Raums: der Tank hält ihn, Nahkämpfer achten auf seine Gifte und die Gruppe verteilt Schaden."
};

-- ============================================================= --
-- Razorfen Downs : Zone 129 --
-- ============================================================= --
-- Mordresh bewacht den Friedhof: sein Kampf (Info vom Besitzer) gilt gleich
-- für den Era-Client (7357) und das SoD-Remaster (74347).
bos = { "Mordresh Feuerauge",
	"* Er kämpft auf einem Knochenhügel inmitten eines Schwarms nicht-Elite-Skelette: der Tank startet mit Flächenschaden, um alle zu fassen, gruppiert sie und die Gruppe räumt den Schwarm zuerst; keine Eile beim Boss.",
	"* Sobald er seine Feuerkugel wirft, unterbrechen Tank oder Nahkampf ihn: jede gestoppte Zauberung ist weniger erlittener Schaden.",
	"* Der Heiler wartet ein paar Sekunden, bis der Tank die Aggro des Schwarms sichert, bevor er kräftig heilt: frühe Heilungen können die Skelette anlocken und den Pull zerlegen.",
	"* Seine Flammenwelle (|cff71d5ff|Hspell:12470|h[Flammenwelle]|h|r) fegt das Nahgefecht an seinen Füßen : hinaus aus dem Radius."
};
pack["7357"] = bos;
pack["74347"] = bos;

-- Razorfen Downs : Zona 129 (klassische Ära) --
-- Die fünf restlichen klassischen CIDs ; Kits aus DBM Classic\RazorfenDowns und
-- Namen aus dem Korpus (dbm-Quelle der Ära). Mordresh 7357 steht oben, geteilt.
pack["7355"] = { "Tuten'kash", -- (klassische Ära)
	"* Die Spinne der Krypta : ihr Fluch Tuts (|cff71d5ff|Hspell:12255|h[Fluch Tuts]|h|r) markiert einen Spieler (Fluch, entfernen) und ihr Netzwurf (|cff71d5ff|Hspell:12252|h[Netzwurf]|h|r) straft das Nahgefecht flächig.",
	"* Ihr Spinnengift beißt den Tank : dauerhafte Heilung."
};
pack["7356"] = { "Plaguemaw der Faulende", -- (klassische Ära)
	"* Sein Verwelkter Griff (|cff71d5ff|Hspell:11442|h[Verwelkter Griff]|h|r) ist eine KRANKHEIT auf einem Spieler : der Druide entfernt sie."
};
pack["7354"] = { "Struppmähne", -- (klassische Ära)
	"* Sein Gedankenraub (|cff71d5ff|Hspell:7645|h[Gedankenraub]|h|r) stellt einen Spieler GEGEN die Gruppe : betäuben oder die Magie an ihm bannen."
};
pack["8567"] = { "Nimmersatt", -- (klassische Ära)
	"* Der Fleischfresser : bei niedriger Gesundheit geht er in Raserei (|cff71d5ff|Hspell:12795|h[Raserei]|h|r) — hartes DPS am Ende."
};
pack["7358"] = { "Amnennar der Kältebringer", -- (klassische Ära)
	"* Die Kälte des Friedhofs : sein Zorn Amnennars (|cff71d5ff|Hspell:13009|h[Zorn Amnennars]|h|r) platzt flächig — verteilen und die Heilung hält durch."
};

-- ============================================================= --
-- Blackfathom Deeps : Zone 48 (Retail-Remake) --
-- ============================================================= --
-- (CIDs des Remakes des aktuellen Journals; die SoD-Fassung und die des
-- Era-Clients stehen weiter oben)
bos = { "Zwielichtfürst Bathiel",
	"* Er verteilt sich in der Halle und hinterlässt Kreise Heilenden Wassers: trinkt er einen (Heilende Aufnahme), gesundet er um 5%; platzt einer (Wässriger Ausbruch), jagt er Frost im Umkreis von 5 m in die Runde.",
	"* Kreise im Blick behalten und ihm das Wasser vorenthalten.",
	"* Sein Durchdringender Regen pfeift sekündlich Frost auf Zufallsziele: gleichmäßiger Spitzenschaden, die Heiler folgen."
};
pack["74728"] = bos;
bos = { "Domina",
	"* Ihr Widerlicher Sturm trifft sekündlich zufällige Ziele mit Schattenschaden: beständiger Druck, die Heiler setzen das Tempo.",
	"* Ihr Todesmaul fegt 2 s lang wellenweise den Frontalkonus mit Schattenschaden leer: der Tank dreht sie vom Spieler weg und niemand steht davor."
};
pack["74476"] = bos;
bos = { "Unterwerfer Kor'ul",
	"* Seine Faust des Leviathans zermalmt ihr Opfer (physischer Schaden pro Sekunde, 8 s): die Heiler stehen darauf.",
	"* Sein Ruf in die Dunkelheit beschwört Aku'mai zum Fraß herauf: der Aku'mai-Eintrag gilt auch für den Diener."
};
pack["74565"] = bos;
bos = { "Scharfrichter Gor",
	"* Seine Verschlingende Finsternis (unterbrechbar) lähmt ein Ziel und zappt 6 s lang alle 0,8 s Lebenskraft zugunsten von ihm ab: unterbrechen, sobald es geht; sonst fangen die Heiler den Aderlass auf.",
	"* Sein Henkerschlag rammt die Axt: Schattenschaden für alle, Extra im Frontalkonus und ein bleibender Strudel, der alles zehrt, was drin bleibt: Konus weg vom Spieler und raus aus dem Strudel."
};
pack["74988"] = bos;
bos = { "Thruk",
	"* Sein Fang des Tages schwingt die Schnur nach einem zufälligen Spieler bis 45 m und zieht ihn zu seinen Füßen: der Gerissene rückt nach dem Lösen rasch beiseite und niemand kreuzt den Zug.",
	"* Sein Fleischfilet schlägt mit der Waffe auf den Boden: 500% Waffenschaden für alle Gegner in 10 m; verteilt stehen und Heiler bereit."
};
pack["74505"] = bos;
bos = { "Wächter der Tiefe",
	"* Seine Sporenwolken-Säcke landen an zufälligen Stellen (physischer Schaden) und brüten eine Brut aus: draußen von den Flecken bleiben und die Brut schnell totschlagen.",
	"* Er frisst einen nahen Blauen Schieferkrabbler und gewinnt 25% seines Lebens zurück: Krabbler der Halle bleiben nicht in seiner Reichweite stehen.",
	"* Sein Zersplitterndes Singen traktiert die ganze Halle: ständiger Flächenschaden, Heiler dranbleiben."
};
pack["75410"] = bos;

-- ============================================================= --
-- Razorfen Downs : Zone 129 (Retail-Neufassung) --
-- ============================================================= --
-- (Ersetzungen des modernen Retail; die klassischen CIDs der Zone behalten ihre Einträge)
bos = { "Aarux",
	"* Sein Spinnfaden klammert einen Spieler auf Distanz, zieht ihn in den Nahkampf und setzt sofort den Verseuchten Biss auf (Natur 10 s und -50% Tempo): der Heiler entledigt oder heilt die Stelle zügig.",
	"* Seine Berstende Pustel trifft die Nähe mit Naturschaden: Abstand halten und verteilt stehen."
};
pack["74412"] = bos;
bos = { "Schwämmerl",
	"* Direkter physischer Kampf: sein Donnerndes Stampfen trifft die ganze Gruppe und kann Zauber mitten im Fluss zersägen; Heiler aufpassen und Zauberer dosieren.",
	"* Er beschwört immer wieder Schleim- und Zombiediener ins Gefecht: der Tank greift sie sofort und die DPS räumen sie mit DoT oder Flächenschaden weg, bevor sie den Heiler fressen."
};
pack["74435"] = bos;
bos = { "Todessprecher Schwarzdorn",
	"* Seine Entladungen (Schatten und Blitz) springen von Spieler zu Spieler: Zauber unterbrechen, sobald es geht.",
	"* Er öffnet dunkle Bodenflecken: sofort rausspringen, sie zehren an denen, die drin bleiben.",
	"* Gelegentlich setzt er einen Seelenpanzer auf und kanalisiert dahinter: die Barriere mit Direktschaden brechen, um den Kanal zu schneiden."
};
pack["74875"] = bos;
-- (Amnennar neu angefertigt durch die Retail-Umstrukturierung; sein klassisches
-- 7358 warf nur Frostschlag, Frostnova und rief Dienste)
bos = { "Amnennar der Kältebringer",
	"* Die verbündete Koristrasza öffnet Pfützen von Erlöstem Boden : kite ihn gleich darüber, das Gelände überwältigt ihn und betäubt ihn 6 Sekunden.",
	"* Sein Seelenentzug saugt den markierten Spieler aus (75% des Abzugs landen bei ihm) und harkt die Nachbarn mit Schatten : wer markiert den Erlösten Boden betritt, dem fliegt der Debuff sofort runter, und er wird ebenfalls betäubt.",
	"* Seine Frostbombe zerspringt in eine spritzende Frostpütze : raus aus der Eisigkeit, sobald sie fällt."
};
pack["74434"] = bos;

-- ============================================================= --
-- Blackrock Depths : Zone 2792 (10-15-Gruppe des Remasters) --
-- ============================================================= --
-- (Blackrock Depths als 10-15-Gruppe des Jubiläums-Remasters; die klassische
-- Fassung kommt später mit den gewohnten CIDs)
pack["226315"] = { "Lord Roccor",
	"* Sein Bodenzittern betäubt die ganze Gruppe im Umkreis von 20 Metern für 2 Sekunden: kein Klumpen im Saal.",
	"* Sein Erdschock trifft mitten im Zauber: die Zauberkundigen zaubern mit Puffer.",
	"* Flammenschock: direkter Feuerschaden plus Brand alle 3 Sekunden, 12 Sekunden lang: die Heiler haben den Brand im Blick."
};
pack["226303"] = { "Bael'Gar",
	"* Magmaspritzer: Brand alle 3 Sekunden, 24 Sekunden lang, bis zu 3-fach auf dem Tank: Tankrotation oder Entzaubern, wenn zur Hand.",
	"* Seine Brut: Feuerexplosion am Punkt dazu ein Schlammdienst: der Tank nimmt ihn auf, er stirbt schnell."
};
pack["226304"] = { "Lord Incendius",
	"* Fluch des Elementarfürsten: senkt 100-132 Feuerresistenz, 30 Sekunden, bis dreifach gestapelt: der Markierte bleibt von den Flammen fern.",
	"* Sein Kraftvoller Schlag wirft den Tank kräftig nach hinten (die Lava ist ringsum): Rücken zur Wand.",
	"* Sein Feuersturm bestraft 30 Sekunden lang den Nahbereich, seine Druckwelle rollt 20 Meter weit: der Nahkämpfer geht raus, die Heiler fangen ab."
};
-- (das Korpus koppelt diesen Eintrag über die Trons 230219/230217/230218; der
-- DBM-Kommentar ergänzt Golemlord 226306 und Magmatron 230216)
bos = { "Golemlord Argelmach",
	"* Seine Blitzkette springt zwischen nahen Spielern: verteilt bleiben, solange sie dauert.",
	"* Er kämpft neben zwei seiner Konstrukte: der Tank trennt sie und teilt die Bedrohung.",
	"* Achtung in dieser Gruppe: seine Seele kann gefallene Golems übernehmen, ein gefällter Körper beendet den Kampf nicht immer."
};
pack["226306"] = bos;
pack["230219"] = bos;
pack["230216"] = bos;
pack["230217"] = bos;
pack["230218"] = bos;
bos = { "Der Sieben",
	"* Wellen von sieben Geisterzwergen durch die Schmiedehalle, einer nach dem anderen, jeder mit dem Kit seiner klassischen Klasse.",
	"* Der Krieger Anger'rel: Heldenhafter Stoß und Rüstung zerreißen am Tank, dazu Schlachtruf und Schockwelle, wenn er dran ist.",
	"* Der Hexenmeister Doom'rel: Schattenblitz und Fluch der Pein, er beschwört Sukkubus oder Leerenwandler und wirft Furcht: Furcht beseitigen und das Beschworene niederstrecken.",
	"* Der Schurke Dope'rel: vergiftete Hiebe von hinten und Schwinden: niemand stellt sich mit freiem Rücken hin.",
	"* Der Schamane Gloom'rel: Totems, Erdschock und er wischt die Segnungen fort: die Totems sterben, kaum dass sie sprießen.",
	"* Der Magier Hate'rel: Frostschock, Blizzard und Verwandlung: die Verwandlung brechen und aus dem Blizzard raus.",
	"* Der Jäger Seeth'rel: Schüsse von fern, Fallen und ein wildes Tier: die Distanz schließt man vorsichtig.",
	"* Der Priester Vile'rel: heilt die Seinen, wirft sich Machtwort: Schild um und versucht Gedankenkontrolle: seine Heilungen bekommen als Allererstes Unterbrechungen."
};
pack["226307"] = bos;
pack["226310"] = bos;
pack["226309"] = bos;
pack["226313"] = bos;
pack["226311"] = bos;
pack["226312"] = bos;
pack["226308"] = bos;
pack["226316"] = { "General Zornesschmied",
	"* Rüstung zerreißen nagt sich stapelweise in den Tank: Tankrotation, wenn es sich stapelt.",
	"* Die kritischen Treffer beschleunigen seine Schläge, und sein Zorn (Enrage) steigert den körperlichen Schmerz: die Heiler halten die Serie mit ihm durch.",
	"* Alarm bei Eindringlingen bei 40%: er ruft die Verstärkungen der Festung, Reservisten und Mediziner heilen ihn: sie zuerst nieder, die Mediziner vor allen."
};
pack["226302"] = { "Botschafter Flammenschlag",
	"* Sein Feuerschlag holt dauerhaft aufs Nahkampffeld: Rotation oder getaktete Heilungen.",
	"* Brennende Geister: er ruft Elementare aus den Runen des Saals; wer zu ihm durchkommt, opfert sich und schenkt ihm pro Stapel +5% Schaden und Größe, bis zu 50 Stapel: den Weg sperren und unterwegs wegräumen."
};
-- (226314 ist Prinzessin Moira Bronzebart; das Journal koppelt den Namen des
-- Imperators an beide ids)
bos = { "Imperator Dagran Thaurissan",
	"* Flammenavatar: 10 Sekunden lang völlig magieimmun, seine Hiebe fegen mit zusätzlichem Feuer: die Zauberkundigen halten sich zurück, solange es dauert.",
	"* Hand von Thaurissan: ein Feuerschlag, der 5 Sekunden betäubt: lieber ohne Knäuel, damit nicht mehrere gleichzeitig fliegen.",
	"* Eisenfaust: passiv durch seinen legendären Streitkolben, bis zu 3 Extra-Schläge und +10% Kritschance für 5 Sekunden: der Tank reitet die Serie mit Heilungen.",
	"* Prinzessin Moira Bronzebart kämpft an seiner Seite: sie heilt ihn pausenlos und peitscht mit Heilig- und Schattenmagie: bändigt sie oder, wenn die Gruppe rennt, legt sie vor ihn."
};
pack["226305"] = bos;
pack["226314"] = bos;

-- Blackrock Depths : Zona 230 (klassische Ära) --
-- 18 klassische Einträge (29 CIDs des Dungeons) ; Namen aus dem Journal-Korpus ;
-- Taktiken aus dem Remaster-Lot übernommen (gleiche Kämpfe). Moira 8929 bleibt
-- IN PROSA im Eintrag des Imperators, wie es der Hausstil hält.
pack["9018"] = { "Verhörmeisterin Gerstahn", -- (klassische Ära)
	"* Die Herrin der Kerker : ihre Schattenschüsse treffen die Fernen — aufmerksame Heilung und verteilte Stellung."
};
pack["9025"] = { "Lord Roccor", -- (klassische Ära)
	"* Sein Bodenzittern (2 s) trifft alles Nahe und sein Erdschock unterbricht Zauber: verteilt bleiben und nicht hineinzaubern.",
	"* Der Flammenschock kommt alle ~12 s wieder: der Nahkämpfer geht aus dem Radius und zurück."
};
pack["9319"] = { "Hundemeister Grebmar", -- (klassische Ära)
	"* Das angekettete Rudel kommt zuerst: AoE und Kontrolle auf die Hunde; der Meister am Tank."
};
bos = { "Ring des Gesetzes", -- (klassische Ära)
	"* Das Arena-Ereignis : der Ring holt EINEN der sechs Champions heraus (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor oder Leftok) — der Tank fasst ihn, der Kampf ist ein gerades Kräftemessen."
};
pack["9028"] = bos;
pack["9031"] = bos;
pack["9029"] = bos;
pack["9030"] = bos;
pack["9032"] = bos;
pack["9027"] = bos;
pack["9024"] = { "Pyromant Weisenkorn", -- (klassische Ära)
	"* Der Pyromant des Bezirks : Flächefeuer auf die Gruppe — verteilt bleiben, Heilung hält durch."
};
pack["9017"] = { "Lord Incendius", -- (klassische Ära)
	"* Fluch des Elementarfürsten: senkt 100-132 Feuerresistenz, 30 Sekunden, bis dreifach: der Markierte bleibt von den Flammen fern.",
	"* Sein Kraftvoller Schlag wirft den Tank kräftig nach hinten (die Lava ist ringsum): Rücken zur Wand.",
	"* Sein Feuersturm bestraft ~30 Sekunden lang den Nahbereich und seine Druckwelle rollt 20 Meter weit: der Nahkämpfer geht raus, die Heiler fangen ab."
};
pack["9041"] = { "Wärter Stilgiss", -- (klassische Ära)
	"* Der Wärter des Gewölbes : sein Oger Verek kämpft an seiner Seite — der Tank trennt sie oder hält sie auseinander; ständige Heilung."
};
pack["9056"] = { "Fineous Dunkelader", -- (klassische Ära)
	"* Der Gnom der Gießerei : flacher Kampf hinter gutem Tank."
};
pack["9016"] = { "Bael'Gar", -- (klassische Ära)
	"* Sein Magmaspritzer stapelt sich bis zu 3-fach in 24 Sekunden auf dem Tank: Tankrotation oder Entzaubern, wenn zur Hand.",
	"* Seine Brut wirft zufälliges Feuer und schenkt einen Schlammdiener: der Tank nimmt ihn auf, er stirbt schnell."
};
pack["9033"] = { "General Zornesschmied", -- (klassische Ära)
	"* Rüstung zerreißen nagt sich stapelweise in den Tank: Tankrotation, wenn es sich stapelt.",
	"* Die kritischen Treffer beschleunigen seine Schläge, und sein Zorn steigert den körperlichen Schmerz: die Heiler halten die Serie mit ihm durch."
};
pack["8983"] = { "Golemlord Argelmach", -- (klassische Ära)
	"* Seine Blitzkette springt zwischen nahen Spielern: verteilt bleiben, solange sie dauert.",
	"* Er kämpft neben zwei seiner Konstrukte: der Tank trennt sie und teilt die Bedrohung.",
	"* Ohne Eile: gefallene Golems beenden den Kampf nicht — man kehrt die ganze Halle."
};
pack["9537"] = { "Hurley Pestatem", -- (klassische Ära)
	"* Der Betrunkene der Höhle der Taverne : gerades Kräftemessen hinter gutem Tank."
};
pack["9502"] = { "Phalanx", -- (klassische Ära)
	"* Die mechanische Wache der Schmiedehalle : harte Nahkampfhiebe am Tank."
};
pack["9499"] = { "Stöpsel Zapfring", -- (klassische Ära)
	"* Der Wirt des Guzzler : fällt er, steht der GANZE Gasthof auf — die Gäste kommen in Wellen: AoE des Tanks und keine Unachtsamkeit."
};
pack["9156"] = { "Botschafter Flammenschlag", -- (klassische Ära)
	"* Sein Feuerschlag holt dauerhaft aufs Nahkampffeld: Rotation oder getaktete Heilungen.",
	"* Brennende Geister: er ruft Elementare aus den Runen des Saals; wer zu ihm durchkommt, opfert sich und schenkt ihm pro Stapel +5% Schaden und Größe, bis zu 50 Stapel: den Weg sperren und unterwegs wegräumen."
};
bos = { "Der Sieben", -- (klassische Ära)
	"* Wellen von sieben Geisterzwergen durch die Schmiedehalle, einer nach dem anderen, jeder mit dem Kit seiner klassischen Klasse.",
	"* Der Krieger Anger'rel: Heldenhafter Stoß und Rüstung zerreißen am Tank, dazu Schlachtruf und Schockwelle, wenn er dran ist.",
	"* Der Hexenmeister Doom'rel: Schattenblitz und Fluch der Pein, er beschwört Sukkubus oder Leerenwandler und wirft Furcht: Furcht beseitigen und das Beschworene niederstrecken.",
	"* Der Schurke Dope'rel: vergiftete Hiebe von hinten und Schwinden: niemand stellt sich mit freiem Rücken hin.",
	"* Der Schamane Gloom'rel: Totems, Erdschock und er wischt die Segnungen fort: die Totems sterben, kaum dass sie sprießen.",
	"* Der Magier Hate'rel: Frostschock, Blizzard und Verwandlung: die Verwandlung brechen und aus dem Blizzard raus.",
	"* Der Jäger Seeth'rel: Schüsse von fern, Fallen und ein wildes Tier: die Distanz schließt man vorsichtig.",
	"* Der Priester Vile'rel: heilt die Seinen, wirft sich Machtwort: Schild um und versucht Gedankenkontrolle: seine Heilungen bekommen als Allererstes Unterbrechungen."
};
pack["9035"] = bos;
pack["9039"] = bos;
pack["9040"] = bos;
pack["9037"] = bos;
pack["9034"] = bos;
pack["9038"] = bos;
pack["9036"] = bos;
pack["9938"] = { "Magmus", -- (klassische Ära)
	"* Der Riese der Zitadelle : schwere Nahkampfhiebe am Tank und ständige Heilung."
};
bos = { "Imperator Dagran Thaurissan", -- (klassische Ära)
	"* Flammenavatar: 10 Sekunden lang völlig magieimmun, seine Hiebe fegen mit zusätzlichem Feuer: die Zauberkundigen halten sich zurück, solange es dauert.",
	"* Hand von Thaurissan: ein Feuerschlag, der 5 Sekunden betäubt: lieber ohne Knäuel, damit nicht mehrere gleichzeitig fliegen.",
	"* Eisenfaust: bis zu 3 Extra-Schläge und +10% Kritschance für 5 Sekunden: der Tank reitet die Serie mit Heilungen.",
	"* Prinzessin Moira Bronzebart kämpft an seiner Seite: sie heilt ihn pausenlos und peitscht mit Heilig- und Schattenmagie: bändigt sie oder, wenn die Gruppe rennt, legt sie vor ihn."
};
pack["9019"] = bos;

-- ============================================================= --
-- Razorfen Kraul : Zone 47 (klassisch) --
-- ============================================================= --
-- (Die CIDs 44xx und 4842 sind die gewohnten Klassiker; die 75xxx und die 74462
-- sind Varianten des modernen Journals mit ihren element-1-Namen)
pack["4424"] = { "Aggem Dornfluch",
	"* Er beschwört Eber (|cff71d5ff|Hspell:8286|h[Eber beschwören]|h|r) zu seltsamen Zeiten: sofort niederstrecken, kaum dass sie kommen.",
	"* Seine Wellenheilung (|cff71d5ff|Hspell:14900|h[Wellenheilung]|h|r) ist unterbrechbar: ohne Gnade brechen, sonst zermürbt sie den Tank endlos."
};
pack["4422"] = { "Agathelos der Tobende",
	"* Er verfällt in Wut (|cff71d5ff|Hspell:8269|h[Wut]|h|r) und seine Strafe schießt hoch: der Tank hält den Anstieg mit aufmerksamen Heilungen durch."
};
pack["4425"] = { "Blinder Jäger",
	"* Eine schlichte Prügelnummer laut DBM: schlägt im Nahkampf, sonst nichts: Tank, Schaden und Heilungen."
};
pack["75247"] = { "Groyat der blinde Jäger",
	"* Die moderne Fassung des blinden Jägers: wieder eine schlichte Prügelnummer, DBM meldet nichts."
};
bos = { "Roogug",
	"* Er ruft Erdrüttler auf (|cff71d5ff|Hspell:8270|h[Erdrüttler]|h|r): der Tank nimmt sie auf, sie sterben postwendend."
};
pack["6168"] = bos;
pack["74948"] = bos;
pack["4420"] = { "Oberanführer Rammhauer",
	"* Er kanalisiert einen wirbelnden Barrage (|cff71d5ff|Hspell:8259|h[Wirbelnder Barrage]|h|r): unterbrechen oder, wenn er durchgeht, aus dem Strudel raus, während er fällt.",
	"* Ein zäher Kampf: er schlägt heftig und kommt mit zwei Wächtern daher; der Tank trennt sie ab und die Heilungen laufen auf Hochtouren."
};
pack["74462"] = { "Oberanführer Rammhauer",
	"* Die moderne Fassung des Oberanführers: schlichte Prügelnummer, nichts vom DBM gemeldet: Tank, Schaden und Heilungen."
};
pack["4421"] = { "Charlga Klingenflanke",
	"* Die Kettenblitze (|cff71d5ff|Hspell:8292|h[Kettenblitz]|h|r) sind unterbrechbar: der Unterbruch rettet die ganze Gruppe.",
	"* Charlga wäscht die Flüche sofort von sich ab (|cff71d5ff|Hspell:8361|h[Reinheit]|h|r): körperlicher Schaden ist der Weg."
};
pack["4428"] = { "Todessprecherin Jargba",
	"* Todessprecherin Jargba bemächtigt sich des Geistes eines Spielers (|cff71d5ff|Hspell:14515|h[Gedankenkontrolle]|h|r): normale Unterbrechungen schneiden sie nicht;",
	"* ein Betäuben stoppt sie, doch sobald sie bricht, wirkt sie erneut: die Beherrschte wird solange niedergeprügelt, bis sie freigibt."
};
pack["4842"] = { "Erdenrufer Halmgar",
	"* Erdenrufer Halmgar ruft Erdrüttler auf (|cff71d5ff|Hspell:8270|h[Erdrüttler]|h|r): aufteilen und zügig niederräumen."
};
pack["75001"] = { "Jäger Knochenhauer",
	"* Noch eine schlichte Prügelnummer des modernen Krauls: Tank, Schaden und Heilungen der Reihe nach."
};

-- ============================================================= --
-- Gnomeregan : Zone 90 (klassisch und modernes Journal) --
-- ============================================================= --
-- (Die CIDs 7xx und 6xxx sind die gewohnten Klassiker; die 21xxxx sind SoD-/
-- Journal-Varianten mit gleichem Namen: gemeinsame Einträge)
bos = { "Grubbis",
	"* Eine schlichte Prügelei laut DBM: Tank, Schaden und Heilungen, den Dienst im Blick, der neben ihm auftaucht (sein Chomper)."
};
pack["7361"] = bos;
pack["217280"] = bos;
bos = { "Verflüssigte Ablagerung",
	"* Toxischer Volley (|cff71d5ff|Hspell:21687|h[Toxischer Volley]|h|r): periodisches Gift auf alle, die nah stehen; der Giftentferner wäscht es weg und macht weiter."
};
pack["7079"] = bos;
pack["220007"] = bos;
bos = { "Elektrokutor 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) und Kettenblitz (|cff71d5ff|Hspell:11085|h[Kettenblitz]|h|r) sind unterbrechbar: an der Wurzel brechen.",
	"* Sein Schock (|cff71d5ff|Hspell:11084|h[Schock]|h|r) zerrt am Tank: Heilungen auf Posten."
};
pack["6235"] = bos;
pack["220072"] = bos;
bos = { "Meuteverprügler 9-60",
	"* Niedertrampeln (|cff71d5ff|Hspell:10887|h[Niedertrampeln]|h|r): ein Stampfen, das den Nahkampf durch die Luft schleudert: nur der Tank bleibt drin, alle anderen außer Reichweite.",
	"* Bogenschlag (|cff71d5ff|Hspell:8374|h[Bogenschlag]|h|r) auf den Tank: der übliche Takt von Tank und Heiler."
};
pack["6229"] = bos;
pack["215728"] = bos;
bos = { "Robogenieur Thermadraht",
	"* Er klebt einem zufälligen Spieler eine lebende Bombe an (|cff71d5ff|Hspell:11518|h[Lebende Bombe]|h|r): der Markierte läuft von der Gruppe weg, bis sie birst.",
	"* Sein Wegschleudern (|cff71d5ff|Hspell:10101|h[Wegschleudern]|h|r) wirft den Tank durch die Luft: aufpassen, wo er landet.",
	"* Ab Cata dazu ein unterbrechbarer Dampfstoß und Hiebe auf den Tank: den Stoß rechtzeitig brechen."
};
pack["7800"] = bos;
pack["218538"] = bos;
pack["218970"] = bos;
pack["218972"] = bos;
pack["218974"] = bos;
pack["218537"] = bos;
bos = { "Mechanische Menagerie",
	"* Vier mechanische Teile beieinander: der schwarze Drache (STX-04/BD), das Lamm (STX-13/LL), das Eichhörnchen (STX-25/NB) und das Huhn (STX-37/CN).",
	"* Alle teilen sich Selbstreparatur und abgenutzte Verdrahtung: jedes Teil zügig niederstrecken, bevor es sich repariert, und den passiven Verdrahtungsschaden nicht unterschätzen.",
	"* Das Lamm blökt binär, das Eichhörnchen feuert Salven von Kleinteilen, überhitzt und schützt sich mit seinem Schild aus Nüssen, und das Huhn pickt zwischen Gackerrufen: stetiger Schaden, dann das nächste."
};
pack["218242"] = bos;
pack["218243"] = bos;
pack["218244"] = bos;
pack["218245"] = bos;
-- (Mechanische Menagerie: das Journal trägt den Encounter-Namen auf allen 4 Teilen,
-- wie Die Sieben; Fähigkeiten vom Besitzer gebracht, ohne Zauber-IDs und Links)

-- ============================================================= --
-- Scharlachrotes Kloster : Zone 189 (klassisch) --
-- ============================================================= --
-- Flügel: Friedhof (Vishas, Thalnos und der versteckte Fairbanks),
-- Bibliothek (Loksey, Doan), Waffenkammer (Herod) und Kathedrale
-- (Mograine und Whitemane). Das Journal führt die Instanz nicht:
-- element-1-Namen stammen aus der klassischen DBM-Lokalisierung;
-- vom Besitzer via Wowhead bestätigt (2026-10, klassischer Client).
pack["3983"] = { "Befrager Vishas",
	"* Kurz und einfach: sein einziges Warnzeichen ist Versengen (|cff71d5ff|Hspell:9034|h[Versengen]|h|r) auf einem Spieler, nachwirkender Magieschaden; dispeln oder die Markierung vorsichtig heilen."
};
pack["4543"] = { "Blutmagier Thalnos",
	"* Flamenspitze (|cff71d5ff|Hspell:8814|h[Flamenspitze]|h|r) auf Distanz und Feuernova (|cff71d5ff|Hspell:12470|h[Feuernova]|h|r) um ihn herum: der Nahkampf geht ab, sobald er die Nova schickt.",
	"* Keine weiteren Mechaniken: tanken, niederstrecken und der Friedhof ist durch."
};
pack["4542"] = { "Hochinquisitor Fairbanks",
	"* Ein zwischen den Gräbern des Friedhofs versteckter Inquisitor: viele Gruppen lassen ihn ans Ende; wenn man ihn pullt, ein simpler Kampf.",
	"* Sein Fluch des Blutes (|cff71d5ff|Hspell:8282|h[Fluch des Blutes]|h|r) ist ein Fluch: ihn gleich mit Fluchentfernung entfernen lassen."
};
pack["3974"] = { "Hundemeister Loksey",
	"* Er kämpft flankiert von seinen Hunden und zaubert Blutrünstigkeit (|cff71d5ff|Hspell:6742|h[Blutrünstigkeit]|h|r) auf das Rudel: es schlägt schneller, also werden die Hunde zügig erledigt, während der Tank ihn hält.",
	"* Sonst nichts dabei: stapeln sich die Hunde, zuerst niedermachen, und er fällt kurz danach."
};
pack["6487"] = { "Arkanist Doan",
	"* Er zaubert Verwandlung (|cff71d5ff|Hspell:13323|h[Verwandlung]|h|r) auf einen Spieler und wiederholt Arkanexplosion (|cff71d5ff|Hspell:9433|h[Arkanexplosion]|h|r) um sich: direkt neben ihm wird nicht gezaubert.",
	"* Seine Stille (|cff71d5ff|Hspell:8988|h[Stille]|h|r) als Flächenzauber schneidet nahe Zauber: nicht neben ihm zaubern, solange sie lädt.",
	"* Detonation (|cff71d5ff|Hspell:9435|h[Detonation]|h|r) ist der echte Treffer: sobald er sie lädt, aus dem Umkreis raus oder die Sicht hinter den Bücherregalen des Raums brechen, bevor sie birst."
};
pack["3975"] = { "Herod",
	"* Sein Wirbelwind (|cff71d5ff|Hspell:8989|h[Wirbelwind]|h|r) dreht alle ~18 s: der Nahkampf geht aus dem Umkreis und kehrt zurück, wenn die Drehung endet.",
	"* Bei niedrigem Leben bekommt er Raserei (|cff71d5ff|Hspell:8269|h[Raserei]|h|r): mehr Schaden, der Tank beißt sich durch und die Heiler drücken.",
	"* Beim Fall stürmt ein Schwarm Scharlachrekruten durch die Tür: keine Nachlässigkeit, bis sie gefegt sind."
};
pack["3976"] = { "Scharlachroter Kommandant Mograine",
	"* Ein schlichter Cleave-Kampf, bei ihm beginnend: Whitemane steigt erst von ihrer Empore, wenn er fällt.",
	"* Nach seinem ersten Tod wird Whitemanes Heilung (|cff71d5ff|Hspell:12039|h[Heilung]|h|r) auf ihn gebrochen: ohne den Bruch kommt er mit vollem Leben zurück.",
	"* Heilung gekappt und Auferstehung überstanden, endet der Kampf damit, beide in Ruhe niederzustrecken."
};
pack["3977"] = { "Hochinquisitorin Whitemane",
	"* Sie steigt herab, wenn Mograine fällt, und wirft Tiefer Schlaf (|cff71d5ff|Hspell:9256|h[Tiefer Schlaf]|h|r) auf einen Spieler für 10 s: der Vorhang, der Mograines Rückkehr deckt.",
	"* Danach castet sie Heilung (|cff71d5ff|Hspell:12039|h[Heilung]|h|r), um den Auferstandenen vollzuschütten: jedes Mal brechen.",
	"* Nach der Auferstehung fällt sie zuerst; der auferstandene Mograine ist die letzte Beute."
};

bos = {
	"Der kopflose Reiter",
	"* Festtagsboss des klassischen Hallow's End: er beschwört sich auf dem Friedhof des Klosters, sobald ihr mit dem Kürbisschrein am Eingang sprecht.",
	"* |cff71d5ff|Hspell:42380|h[Feuersbrunst]|h|r setzt einen zufälligen Spieler 4 s in Brand und jagt ihn flüchtend in Panik: haltet Abstand, solange er brennt; der Heiler zieht ihn raus.",
	"* |cff71d5ff|Hspell:42514|h[Seelen zermalmen]|h|r trifft 15 s lang einen zweiten Spieler: Heilung auf den Markierten.",
	"* Der Takt der Schlacht: Körper auf 1 % -> immun, und der KOPF fliegt heraus, während sich der Körper auffüllt -> das ganze Augenmerk auf den Kopf, bevor er zurückkommt;",
	"* er erscheint dreimal, beim dritten Mal kehrt er nicht mehr zurück: erledigt ihn, dann ist Feierabend.",
	"* In der letzten Körper-Runde kommen Pulsiende Kürbisse (Adds ohne Id): der Tank hält sie, die Gruppe schält sie mit AoE weg."
};
pack["23682"] = bos;
pack["23775"] = bos;
-- Zone 349: Maraudon (zwei Eingangszweige, die vor dem Saal der Prinzessin
-- zusammenlaufen). Kit und CIDs aus dem DBM Shared\Maraudon im _doc;
-- Namen element-1 aus dem 4-Sprachen-Korpus (journal).
pack["12203"] = { "Erdrutsch",
	"* Erster großer Steingolem der Höhle: schlichter Kampf mit hartem körperlichem Schaden am Tank.",
	"* Wegschleudern (|cff71d5ff|Hspell:11130|h[Wegschleudern]|h|r) schleudert den Tank nach hinten und wirft die Bedrohung ab: er holt sie sofort zurück, alle anderen bleiben in Position.",
	"* Erdrutsch (|cff71d5ff|Hspell:21808|h[Erdrutsch]|h|r) wirft im Umkreis zu Boden: der Nahkampf steht auf und arbeitet weiter, Weglaufen ist verlorene Zeit.",
	"* Niedertrampeln (|cff71d5ff|Hspell:5568|h[Niedertrampeln]|h|r) stampft direkt neben ihm: festgenagelt macht es harmlos."
};
pack["13282"] = { "Noxxion",
	"* Smaragdelementar des Kristallsaals: statischer Kampf am Nest.",
	"* Aufwärtshaken (|cff71d5ff|Hspell:10966|h[Aufwärtshaken]|h|r) katapultiert den Tank hoch: heilen auf festen Beinen und zurück an die Position.",
	"* Periodische Diener-Beschwörungen (|cff71d5ff|Hspell:21707|h[Noxxions Diener]|h|r): AoE, sobald sie sich stapeln, bevor sie Druck draufsetzen."
};
pack["12258"] = { "Schlingwurzler",
	"* Riesige dornige Pflanze der grünen Pfade: schlichter Kampf, schlägt den Tank hart ein, sonst nichts Besonderes.",
	"* Keine Mechanik im DBM vermerkt: tanken, heilen, fällen."
};
pack["12236"] = { "Lord Schlangenzunge",
	"* Geistersatyr: Casterkampf mit Schattenschaden und seiner Rauchbombe (|cff71d5ff|Hspell:7964|h[Rauchbombe]|h|r), die ihn hüllt und aus den Augen verschwinden lässt.",
	"* Im Nebel pinnt der Tank ihn per Bedrohung und der Nahkampf wartet, bis der Rauch sich legt."
};
pack["12225"] = { "Celebras der Verfluchte",
	"* Hüter am Portal zur Prinzessin: sein Zorn (|cff71d5ff|Hspell:21807|h[Zorn]|h|r) wird jedes Mal unterbrochen, ernsthafter Naturschaden, wenn er voll durchgeht.",
	"* Wucherwurzeln (|cff71d5ff|Hspell:12747|h[Wucherwurzeln]|h|r) wurzelt einen Spieler: Magie, entzaubern oder mit Schaden zerbrechen.",
	"* Der DBM meldet Kräfte korrumpieren (|cff71d5ff|Hspell:21968|h[Kräfte korrumpieren]|h|r): DPS anpressen und er fällt schlicht; nichts zum Ausweichen."
};
pack["13601"] = { "Tüftler Gizlock",
	"* Goblin-Ingenieur der Tiefenhöhle: seine Goblin-Drachenkanone (|cff71d5ff|Hspell:21833|h[Goblin-Drachenkanone]|h|r) speit Feuer im frontalen Kegel.",
	"* Der Tank pinnt ihn mit dem Rücken zur Gruppe: niemand steht vor der Kanone und er fällt schlicht."
};
pack["13596"] = { "Faulschnapper",
	"* Krokilisk des Weihers vor dem Saal der Prinzessin: schlichter Kampf im Teichwasser.",
	"* Tödlicher Biss (|cff71d5ff|Hspell:16495|h[Tödlicher Biss]|h|r) zermalmt den Tank: heilt im Wechsel und die Notfall-Rettung bleibt in Reserve."
};
pack["12201"] = { "Prinzessin Theradras",
	"* Boss, riesengroß: statischer Kampf in ihrem Saal.",
	"* Abstoßender Blick (|cff71d5ff|Hspell:21869|h[Abstoßender Blick]|h|r) säht Panik aus (Furcht): etwas auseinanderstehen; ein Tremortotem des Schamanen löst sie sofort auf.",
	"* Felsbrocken (|cff71d5ff|Hspell:21832|h[Felsbrocken]|h|r) fliegt auf die Fernen: Fernkämpfer verteilen die Positionen und drängen sich nie.",
	"* Staubfeld (|cff71d5ff|Hspell:21909|h[Staubfeld]|h|r) peitscht den Bereich um sie: der Nahkampf läuft aus dem Radius (der DBM schreit «Renn!») und kommt zurück, wenn es endet."
};

-- Zone 70: Uldaman (die Titanenkammer unter den Verwüsteten Landen). Kit und
-- CIDs aus dem DBM Shared\Uldaman im _doc; Namen element-1 aus dem Korpus
-- (journal; das Zwergen-Trio trägt den ENCOUNTER-Namen, keine Namen pro
-- Stück, wie die Menagerie).
pack["6910"] = { "Revelosh",
	"* Troggschamane der Eingangssäle: seine Blitzkette (|cff71d5ff|Hspell:16006|h[Blitzkette]|h|r) wird jedes Mal gebrochen.",
	"* Rutscht ein Blitzschlag (|cff71d5ff|Hspell:15801|h[Blitzschlag]|h|r) durch, wird er mitgebrochen, wenn die Gruppe kann."
};
bos = { "Die verschollenen Zwerge",
	"* Zwergen-Trio (Baelog, Eric «der Schnelle» und Olaf) in der Handwerkerhalle: alle drei im einen Pull, schlichter Kampf.",
	"* Drei auf einmal ohne DBM-Mechanik: der Tank sammelt sie, AoE + Cleave erledigen den Rest."
};
pack["6906"] = bos;
pack["6907"] = bos;
pack["6908"] = bos;
pack["7206"] = { "Uralter Steinbewahrer",
	"* Steinbewahrer der Mittelsäle: statischer Kampf mit hartem körperlichem Schaden.",
	"* Die Sandstürme (|cff71d5ff|Hspell:10132|h[Sandstürme]|h|r) reißen nicht ab: Flächenschaden, Fernkämpfer drängen sich nie und die Heilung teilt sich."
};
pack["7023"] = { "Obsidianwächter",
	"* Obsidian-Sentinelsgolem: seine Reflexion (|cff71d5ff|Hspell:9941|h[Reflexion]|h|r) wirft Zauber auf den Wirker zurück — Caster pausieren, solange sie läuft.",
	"* Obsidiansplitter (|cff71d5ff|Hspell:10072|h[Obsidiansplitter]|h|r): Splitter putzen, sobald sie auftauchen."
};
pack["7291"] = { "Galgann Feuerhammer",
	"* Feuerschamane der Handwerkersäle: Feuerspitze (|cff71d5ff|Hspell:6725|h[Feuerspitze]|h|r) und Flammenpeitsche (|cff71d5ff|Hspell:3356|h[Flammenpeitsche]|h|r), beide jedes Mal brechen.",
	"* Die Feuernova (|cff71d5ff|Hspell:11969|h[Feuernova]|h|r) platzt herum: Nahkampf raus aus dem Radius und zurück."
};
pack["4854"] = { "Grimlok",
	"* Troggschamanen-Boss der unteren Höhlen: Kettenblitz (|cff71d5ff|Hspell:8292|h[Kettenblitz]|h|r) wird immer gebrochen und Blitzschlag (|cff71d5ff|Hspell:12167|h[Blitzschlag]|h|r) als Bonus.",
	"* Blutrünstigkeit (|cff71d5ff|Hspell:6742|h[Blutrünstigkeit]|h|r): wer sie trägt, er oder ein Anhang, fällt zuerst.",
	"* Der Kristallschlaf (|cff71d5ff|Hspell:3636|h[Kristallschlaf]|h|r) schläfert einen Spieler ein (Magie): entzaubern oder Schaden weckt auf.",
	"* Reflexion (|cff71d5ff|Hspell:9906|h[Reflexion]|h|r): keine Zauber, solange sie läuft, gleiche Rückwurf-Regel."
};
pack["7228"] = { "Ironaya",
	"* Erwachte Wächterin der Landkartenhalle: statischer Kampf, vor Ort getankt.",
	"* Ihr Bogenschlag (|cff71d5ff|Hspell:8374|h[Bogenschlag]|h|r) ist frontal: Nahkampf steht nie gerade vor ihr.",
	"* Kriegsdonner (|cff71d5ff|Hspell:11876|h[Kriegsdonner]|h|r) um sie herum: Flächenschlag betäubt, Nahkampf steckt ihn weg und die Heilung läuft weiter."
};
pack["2748"] = { "Archaedas",
	"* Der schlafende Titan der Kammer: langer Kampf, in dem die Beschwörungen weggeräumt werden, während er zermürbt wird.",
	"* Erdwächter erwecken (|cff71d5ff|Hspell:10252|h[Erdwächter erwecken]|h|r) und Gewölbehüter erwecken (|cff71d5ff|Hspell:10258|h[Gewölbehüter erwecken]|h|r): die Anhänge kommen in Wellen — cleaven, der Boss bleibt am Tank.",
	"* Das Erdbeben (|cff71d5ff|Hspell:6524|h[Erdbeben]|h|r) peitscht den Bereich um ihn: Nahkampf hält mit Heilung durch, nichts zum Ausweichen.",
	"* Klassische Regel: der Tank nagelt ihn aufs Podest, der Schaden fegt die Wächter fort und Archaedas fällt zuletzt."
};

-- Zone 209: Zul'Farrak (die Sandstadt der Sandskalp-Trolle in Tanaris).
-- Kit und CIDs aus dem DBM Shared\ZulFarrak im _doc; Namen element-1 aus dem
-- Korpus (journal; das Paar Nekrum+Sezz'ziz trägt den gemeinsamen
-- ENCOUNTER-Namen, wie die Menagerie); Schutz von Zum'rah 11086 und die Wut
-- seiner rechten Hand Ruuzlu 7797 (kein eigener Eintrag) vom Besitzer via
-- Wowhead 2026-10 verifiziert.
pack["8127"] = { "Antu'sul",
	"* Erster Boss, in der Eingangsgrube: Trollheiler, der über seine Totems und Anhänger aufrechterhalten wird.",
	"* Seine Heilenden Wellen werden gebrochen: die auf sich selbst (|cff71d5ff|Hspell:11895|h[Heilende Welle]|h|r) und die an die Anhänger (|cff71d5ff|Hspell:15982|h[Heilende Welle]|h|r).",
	"* Seine Totems platzen, sobald sie auftauchen: das Erdgreiftotem (|cff71d5ff|Hspell:8376|h[Erdgreiftotem]|h|r) wurzelt die Gruppe und das Heiltotem (|cff71d5ff|Hspell:4971|h[Heiltotem]|h|r) füttert Boss und Bande mit Leben.",
	"* Die Anhänger, die er hebt (|cff71d5ff|Hspell:11894|h[Anhänger]|h|r), fallen zuerst: der Schaden kehrt sie fort, während der Tank den Boss hält."
};
pack["7272"] = { "Theka der Märtyrer",
	"* Kampf gegen ein Ziel: seine Fieberpest (|cff71d5ff|Hspell:8600|h[Fieberpest]|h|r) ist eine heilbare Krankheit — dispeln, sobald sie fällt.",
	"* Mitten im Kampf wandelt er sich (|cff71d5ff|Hspell:11089|h[Verwandlung]|h|r): der Tank hält ihn, und er fällt genauso."
};
pack["7271"] = { "Hexendoktor Zum'rah",
	"* Heiler des Hofes mit seinen Akolythen: jeder Zauber wird gebrochen — die Heilende Welle (|cff71d5ff|Hspell:12491|h[Heilende Welle]|h|r) und vor allem die Schattensalve (|cff71d5ff|Hspell:15245|h[Schattensalve]|h|r), die die ganze Gruppe auf 30 m abstraft.",
	"* Sein Schutz von Zum'rah (|cff71d5ff|Hspell:11086|h[Schutz von Zum'rah]|h|r) pflanzt ihm zu Füßen ein Totem, das alle 5 s ein Skelett hervorbringt: platzen, sobald es auftaucht.",
	"* Zombies erwecken: er haucht Zul'Farrak-Zombies aus den nahegelegenen Gräbern des Raums Leben ein — Skelette und Zombies fallen, sobald sie aufragen."
};
pack["7273"] = { "Gahz'rilla",
	"* Die Riesenbestie des Platzes: der Tank pinnt sie an Ort und Stelle und Ferne drängelt sich nie hinter ihr.",
	"* Ihr Schmettern (|cff71d5ff|Hspell:11902|h[Schmettern]|h|r) knallt auf den Boden: Flächenschaden, den der Nahkampf mit Heilung durchsteht.",
	"* Festfrieren (|cff71d5ff|Hspell:11836|h[Festfrieren]|h|r) friert ein, wen es erwischt, komplett ein: die Heilung deckt, solange es dauert."
};
pack["7795"] = { "Hydromantin Velratha",
	"* Magierin der oberen Ebene: schlichter Kampf mit einem Detail — jede Heilende Welle (|cff71d5ff|Hspell:12491|h[Heilende Welle]|h|r) wird gebrochen."
};
bos = { "Nekrum und Sezz'ziz",
	"* Paar des Pyramiden-Ereignisses (die befreiten Gefangenen drehen sich um): sie erledigen, sobald sie auftauchen, nach der Anhänger-Welle.",
	"* Sezz'ziz' Heilungen — Erneuerung (|cff71d5ff|Hspell:8362|h[Erneuerung]|h|r) und Heilen (|cff71d5ff|Hspell:12039|h[Heilen]|h|r) — werden jedes Mal gebrochen, sonst verlängert das Paar den Kampf.",
	"* Das göttliche Schild (|cff71d5ff|Hspell:13704|h[Göttliches Schild]|h|r) blockiert jeden Schaden blank: solange es läuft, verschwendet der Schaden nichts.",
	"* Die Fieberpest (|cff71d5ff|Hspell:8600|h[Fieberpest]|h|r) taucht hier auch auf: heilbare Krankheit, dispel verfügbar."
};
pack["7796"] = bos;
pack["7275"] = bos;
pack["7267"] = { "Häuptling Ukorz Sandskalp",
	"* Der Kriegsherr oben auf der Pyramide, mit seiner rechten Hand Ruuzlu (kein eigener Eintrag): frontaler Kampf, vor Ort getankt mit hartem körperlichem Schaden.",
	"* Ruuzlu fällt zuerst: stirbt der Häuptling, ergreift ihn die Wut (+30% Schaden, +40% Angriffstempo) und er straft ab, was von der Halle übrig bleibt.",
	"* Sinkt sein Leben, wirft er seine Wut (|cff71d5ff|Hspell:8269|h[Wut]|h|r): der Tank hält hart und die Heilung trägt den Schluss."
};

-- Zone 109: Der versunkene Tempel (der Tempel von Atal'Hakkar im Sumpf der
-- Leiden), mit BEIDEN Ären: der klassische (Kit vom DBM Shared\SunkenTemple)
-- und der 10-Mann-SoD-Raid des Remakes (DBM-Raids-Vanilla\VanillaSoD_SunkenTemple).
-- Der klassische Zolo 5712 (optionaler Troll-Miniboss der Atal'ai-Wache, Kit
-- vom Besitzer via Wowhead 2026-10 bestätigt) kommt OHNE Links herein (keine
-- verifizierten ids); Mandokir und sein Diener Ohgan haben keine id im
-- Korpus: ohne Eintrag (eine Lücke für den Besitzer); Ogom
-- (5711), Jammal'ans Leibwächter der klassischen Ära, lebt im Fließtext (wie
-- Ruuzlu).

pack["5710"] = { "Jammal'an der Prophet", -- (klassische Ära)
	"* Der Prophet des Saals, mit seinem Leibwächter Ogom (kein eigener Eintrag) an der Seite: Zweikampf in der offenen Halle.",
	"* Jammal'an pflanzt sein Erdwürger-Totem (|cff71d5ff|Hspell:8376|h[Erdwürger-Totem]|h|r) — es bewurzelt die Gruppe — und markiert einen Spieler mit Jammal'ans Fluchformel (|cff71d5ff|Hspell:12479|h[Jammal'ans Fluchformel]|h|r), der geschützt wartet;",
	"* er schleudert auch Heilende Welle (12492) und Flächenbrand (12468).",
	"* Ogom straft mit Schattenblitz (|cff71d5ff|Hspell:12471|h[Schattenblitz]|h|r) IMMER gebrochen und streicht Schmerz: Schattenwort (|cff71d5ff|Hspell:11639|h[Schmerz: Schattenwort]|h|r) (Magie) und Fluch der Schwäche (|cff71d5ff|Hspell:12493|h[Fluch der Schwäche]|h|r) (Fluch)."
};

pack["5719"] = { "Morphaz", -- (klassische Ära)
	"* Grüner Drachenwächter der gefluteten Grube: das Kit ist ein Zwilling der vier Wächter des Tempels.",
	"* Einfacher Kampf: sein Ätzender Atem (|cff71d5ff|Hspell:12884|h[Ätzender Atem]|h|r) straft das Vorderteil ab und das Flügelschlagen (|cff71d5ff|Hspell:12882|h[Flügelschlagen]|h|r) stößt zurück — Tank auf der Stelle, Gruppe hinter ihm."
};

pack["5720"] = { "Wirker", -- (klassische Ära)
	"* Grüner Drachenwächter des Obergeschosses, neben Traumsense: Zwilling-Kit der Wächter.",
	"* Einfacher Kampf: Ätzender Atem (|cff71d5ff|Hspell:12884|h[Ätzender Atem]|h|r) straft das Vorderteil ab und Flügelschlagen (|cff71d5ff|Hspell:12882|h[Flügelschlagen]|h|r) stößt zurück — der Tank hält, die Gruppe dicht hinter ihm."
};

pack["5721"] = { "Traumsense", -- (klassische Ära)
	"* Grüner Drachenwächter des Obergeschosses, neben Wirker: Zwilling-Kit der Wächter.",
	"* Einfacher Kampf: sein Ätzender Atem (|cff71d5ff|Hspell:12884|h[Ätzender Atem]|h|r) straft als Kegel frontal mit Naturwunde ab, und das Flügelschlagen (|cff71d5ff|Hspell:12882|h[Flügelschlagen]|h|r) stößt nach hinten — der Tank hält, die Gruppe dicht hinter ihm."
};

pack["5722"] = { "Hazzas", -- (klassische Ära)
	"* Grüner Drachenwächter der gefluteten Grube, Zwillingspaar mit Morphaz: Zwilling-Kit der Wächter.",
	"* Einfacher Kampf: Ätzender Atem (|cff71d5ff|Hspell:12884|h[Ätzender Atem]|h|r) straft das Vorderteil ab und Flügelschlagen (|cff71d5ff|Hspell:12882|h[Flügelschlagen]|h|r) stößt zurück — der Tank hält, die Gruppe dicht hinter ihm."
};

pack["5712"] = { "Zolo", -- (klassische Ära, optionaler Troll-Miniboss der Atal'ai-Wache; Kit des Besitzers via Wowhead 2026-10)
	"* Optionaler, zäher Troll-Miniboss der Atal'ai-Wache: seine Blitzkette springt zwischen engen Spielern — nach jedem Zauber auseinander.",
	"* Er pflanzt ein Totem neben sich, das pausenlos Skelette hervorbringt: platzen, sobald es auftaucht.",
	"* Sein Flächenzauber senkt ALLE Eigenschaften um 10 und STAPPELT sich, wenn der Kampf sich streckt — schnell töten."
};

pack["5709"] = { "Eranikus' Schemen", -- (klassische Ära)
	"* Das Abbild des grünen Drachen, das das Ritual des Altars in der Grube weckt: die letzte Beschwörung des klassischen Tempels.",
	"* Sein Tiefschlaf (|cff71d5ff|Hspell:12890|h[Tiefschlaf]|h|r) lässt einschlafen, wer ihn verschluckt, der Ätzende Atem (|cff71d5ff|Hspell:12533|h[Ätzender Atem]|h|r) straft den Tank ab und der Kriegsdrescher (|cff71d5ff|Hspell:24375|h[Kriegsdrescher]|h|r) springt im Nahkampf."
};

pack["8443"] = { "Avatar von Hakkar", -- (klassische Ära)
	"* Das Abbild der Schlangengottheit, das das Tempelritual weckt: kurzer, giftiger Kampf.",
	"* Sein Fluch der Zunge (|cff71d5ff|Hspell:12889|h[Fluch der Zunge]|h|r) (Fluch) verlangsamt die Zauber der Gruppe und sein Verrücktheit auslösen (|cff71d5ff|Hspell:12888|h[Verrücktheit auslösen]|h|r) trifft einen Spieler — die kritischste DBM-Meldung, zügig behandeln."
};

pack["218624"] = { "Atal'alarion", -- (SoD-Ära, 10-Mann-Raid)
	"* Der Torwächter der ersten Brücke des Remakes: flacher, zäher Riese.",
	"* Seine Macht-Pfeiler (|cff71d5ff|Hspell:437503|h[Macht-Pfeiler]|h|r) strafen in fester Kadenz ab (~12 s) und der Niederhauende Schlag (|cff71d5ff|Hspell:437597|h[Niederhauender Schlag]|h|r) alle ~27 s erwischt die halbe Gruppe: HINTER einen Pfeiler laufen."
};

pack["218819"] = { "Schwärender Faulschleim", -- (SoD-Ära, 10-Mann-Raid)
	"* Der Schleim des Kanals: seine Verschlingung (|cff71d5ff|Hspell:448824|h[Verschlingung]|h|r) verschlingt einen Spieler ODER die Requisiten des Saals (Trommel, Platte, Maske und Kerze) — die Heilung hält ihn oben.",
	"* Seine Schleimzeit (|cff71d5ff|Hspell:446311|h[Schleimzeit]|h|r) stapelt sich auf ihm: sobald sie ENTFERNT wird, wird er träge — dann drückt der DPS hart.",
	"* Schlammklumpen (|cff71d5ff|Hspell:438142|h[Schlammklumpen]|h|r) und Übelkeitende Gase (|cff71d5ff|Hspell:438130|h[Übelkeitende Gase]|h|r) in Kadenz; der strafende Boden wird ausgewichen."
};

-- Verteidiger der Atal'ai (SoD-Ära): die sechs Trolle des Hofs, je eine id;
-- dieselbe Tabelle für alle sechs.
bos = { "Verteidiger der Atal'ai",
	"* Die Trollwache des Remake-Hofs: sechs BOSSE NACHEINANDER, einer nach dem anderen, und jeder TODE rückt sein untotes Gegenstück mit demselben Kit nach (keine Links) — die Runentüren an den Seiten bleiben unbeachtet.",
	"* Zul'Lor 221640: sein Ansturm (446369) geht dem Verderbten Schlag (446372) voraus — nach dem Ansturm ausweichen — und er streicht Gebrechlichkeit (446364).",
	"* Mijan 218868: seine Dornen (438294) (Magie) spiegeln Schaden ins Nahgefecht — sie werden gereinigt und der Nahkampf STOPPT — und sein Heilschutz (438335) fällt; das Atal'ai-Schlangentotem (445912) platzt.",
	"* Zolo 221639: seine ganze Magie wird GEBROCHEN — Blitzkette (446338), Erneuerung (438341) und Heilende Welle (438339) — und sein Atal'ai-Skeletttotem (446339) platzt; das Instabile Fass (445940) kann den Tank betäuben.",
	"* Gasher 221637: Wirbelnde Äxte (445289) strafen das Nahgefecht ab und seine Inbrunst (445284) stapelt sich, wenn der Kampf sich streckt — schnell töten.",
	"* Loro 221638: Demoralisierender Ruf (23511) in Kadenz und Schildschlag (446354) auf den Tank.",
	"* Hukku 223586: Schattenblitz (446361) IMMER gebrochen und seine Wächter (446360) fallen in den Kampf."
};
pack["221640"] = bos; -- Zul'Lor
pack["218868"] = bos; -- Mijan
pack["221639"] = bos; -- Zolo
pack["221637"] = bos; -- Gasher
pack["221638"] = bos; -- Loro
pack["223586"] = bos; -- Hukku

-- Traumsense und Wirker (SoD-Ära): Paar grüner Drachenwächter.
bos = { "Traumsense und Wirker",
	"* Das Paar grüner Drachenwächter des Remakes: beide teilen sich denselben Saal.",
	"* Der Ätzender Atem (|cff71d5ff|Hspell:442622|h[Ätzender Atem]|h|r) STAPELT sich am Tank — nach jedem Zauber mit Spott wechseln — und das Flügelschlagen (|cff71d5ff|Hspell:442620|h[Flügelschlagen]|h|r) begleitet.",
	"* Der Flügelschlag (|cff71d5ff|Hspell:443766|h[Flügelschlag]|h|r) schleudert in die Lüfte: eng halten und fern vom Rand.",
	"* Stufe 2: Traumsense verhüllt sich mit seinem Smaragdschutz (|cff71d5ff|Hspell:443302|h[Smaragdschutz]|h|r) — er wird zerschlagen, und Stufe 3 kommt mit dichteren Flügelschlägen."
};
pack["220833"] = bos; -- Traumsense
pack["220864"] = bos; -- Wirker

pack["221394"] = { "Avatar von Hakkar", -- (SoD-Ära, 10-Mann-Raid)
	"* Die Schlangengottheit des Remakes, in zwei Stufen: erst das Ritual, dann das Untier.",
	"* Stufe des Geistes: die Geisterketten (|cff71d5ff|Hspell:443975|h[Geisterketten]|h|r) markieren einen Spieler mit Zerren — der Gefesselte LÖST SICH — und das Schaurige Heulen (|cff71d5ff|Hspell:443990|h[Schauriges Heulen]|h|r) wird IMMER gebrochen,",
	"* während die Hakkari-Bluthüter mit dem Ritual fallen.",
	"* Stufe des Untiers: Blutsnova (|cff71d5ff|Hspell:444050|h[Blutsnova]|h|r) alle ~8 s, das Verderbte Blut (|cff71d5ff|Hspell:444253|h[Verderbtes Blut]|h|r) springt von Spieler zu Spieler — der Markierte LÖST SICH —,",
	"* Verrücktheit (|cff71d5ff|Hspell:444039|h[Verrücktheit]|h|r) auf einen Markierten, Fluch der Zunge (|cff71d5ff|Hspell:444046|h[Fluch der Zunge]|h|r) (Fluch) und das Blut entziehen (|cff71d5ff|Hspell:444132|h[Blut entziehen]|h|r): wer Verderbtes Blut trägt, stellt sich vor den Tank."
};

-- Jammal'an und Ogom (SoD-Ära): Paar des Saals, zwei Stufen.
bos = { "Jammal'an und Ogom",
	"* Das Saal-Paar des Remakes: die zwei Trolle fressen einander und der Überlebende wächst in Kraft.",
	"* Stufe 1: Zornschlag (437805) IMMER gebrochen; Heilige Nova (437817) im Umkreis ausweichen und sein Heiliges Feuer (437809) (Magie) fällt in Kadenz;",
	"* Tödlicher Peitschenschlag (437847) auf den Tank und Peinigende Schwäche (437868) auf die Gruppe.",
	"* Stufe 2 (der Verschlungene fällt): Jammal'an mit Psychischen Schreien (437928) (Furcht), seiner Schattenpredigt: Schmerz (437927) (Magie), Machtwort: Schild (437930) (wird gereinigt) und Massenbüße (437921);",
	"* Ogom mit Hämmer der Gerechtigkeit (437915) (Betäubung), Weihen (437884) — weg vom Boden — und Göttlicher Sturm (437920) (1,5 s Zauberzeit)."
};
pack["218721"] = bos; -- Jammal'an
pack["218718"] = bos; -- Ogom

-- Morphaz und Hazzas (SoD-Ära): Paar der Gruben-Drachen.
bos = { "Morphaz und Hazzas",
	"* Das Gruben-Drachenpaar des Remakes: der längste Kampf des SoD-Tempels.",
	"* Der Verderbte Atem (|cff71d5ff|Hspell:446487|h[Verderbter Atem]|h|r) STAPELT sich am Tank und die Belebte Flamme (|cff71d5ff|Hspell:446661|h[Belebte Flamme]|h|r) steigt aus dem Boden.",
	"* Die Stufe läuft über das Luzide Träumen: der erste ~20-s-Kanal (|cff71d5ff|Hspell:445235|h[Luzides Träumen]|h|r) schickt die Gruppe in den Smaragdgrünen Traum — die Flammen fallen mitten im Zauber;",
	"* der zweite Kanal (4 s) kommt schon im Nachziehen, und nach ihm tötet sein Ewiger Schlaf (|cff71d5ff|Hspell:446144|h[Ewiger Schlaf]|h|r) von 30 s alle, wenn die Gruppe nicht rechtzeitig durch das Portal entkommt."
};
pack["221942"] = bos; -- Morphaz
pack["221943"] = bos; -- Hazzas

pack["218571"] = { "Eranikus' Schemen", -- (SoD-Ära, 10-Mann-Raid)
	"* Der Endboss des Remakes: der grüne Drache des Smaragdgrünen Traums in der Grube.",
	"* Der Ätzender Atem (|cff71d5ff|Hspell:437353|h[Ätzender Atem]|h|r) straft den Tank ab — nach dem Zauber mit Spott wechseln — und der Tiefschlaf (|cff71d5ff|Hspell:437301|h[Tiefschlaf]|h|r) fegt den Saal in Kadenz.",
	"* Sein Erwacher Alptraum (|cff71d5ff|Hspell:437398|h[Erwacher Alptraum]|h|r) alle ~66 s ist tödlich: zum Ort des Tiefschlafs LAUFEN und weg vom strafenden Boden.",
	"* Sein Lethargisches Gift (|cff71d5ff|Hspell:437390|h[Lethargisches Gift]|h|r) ist Gift (wird gereinigt); bei 70% und 40% rücken seine Traum-Gefolgsleute nach (sie markieren sich) und ihr kanalisierter Lethargisches Gift",
	"* (|cff71d5ff|Hspell:437425|h[Lethargisches Gift]|h|r) wird IMMER gebrochen, ebenso das Brüllen (|cff71d5ff|Hspell:445498|h[Brüllen]|h|r)."
};

-- ========================= --
-- Zul'Gurub : Zone 309 (klassischer Raid) --
-- ========================= --
-- Keine Instanz im Journal (wie das Kloster) : kein Korpus, und die
-- Element-1-Namen bleiben PROVISORISCH, bis der Client bestätigt ; die CIDs
-- kommen aus den VanillaZG-Modulen des DBM-Raids-Vanilla. Die Bande schließt
-- mit dem klassischen Wowhead-Datenblatt des Besitzers (Mandokir und Ohgan
-- 2026-10) und dem Rest nach DBM-Kit ; der ALTAR DES WAHNSINNS (15083) bleibt
-- DRAUSSEN : eine einzelne DBM-id für vier rotierende Trolle ohne sicheren
-- Namen — beim Besitzer angefragen. Nota: zonas[309] ist in _zonas
-- auskommentiert — beim Bandenabschluss von Hand kuratieren.

pack["11382"] = { "Blutfürst Mandokir", -- (klassische Ära, optional ; Kit des Besitzers)
	"* Der Blutfürst der Plattform: Kampf mit zwei Einheiten, und der Raptor Ohgan (14988) trägt seinen eigenen Eintrag.",
	"* Seine Sturmangriffe (keine verifizierte id) haken die Weitgestellten ab (8-30 m): ein fern platzierter Jäger isst sie mit Spiel tot, oder ein ausgesetzter Fernkämpfer nimmt den Treffer.",
	"* Sein Wirbelwind straft das Nahgefecht ab: sobald er startet, tritt man aus dem Radius.",
	"* Sein Drohender Blick (|cff71d5ff|Hspell:24314|h[Drohender Blick]|h|r) markiert einen Spieler 6 s: ALLES STOPPEN (Zauber, Schaden und Bewegung), sonst tötet ein Schlag!",
	"* Alle 3 TODE von Spielern (gebundene Geister) wachsen Größe und Schaden: nicht zu sterben gehört zur Taktik.",
	"* Fällt Ohgan, tobt sein Tobsucht (|cff71d5ff|Hspell:24318|h[Tobsucht]|h|r) eine Minute — VORHER entscheiden: den Raptor zuerst abwerfen und den Zorn mit starker Heilung aushalten, oder ihn abseits mit seinem Tank parken und zuletzt töten."
};

pack["14988"] = { "Ohgan", -- (klassische Ära, Mandokirs Raptor-Reittier ; Kit des Besitzers)
	"* Mandokirs Raptor: beim Kampfstart steigt sein Reiter ab und sie trennen sich — sein Tank hält ihn von der Gruppe fern.",
	"* Seine Tödliche Wunde (|cff71d5ff|Hspell:16856|h[Tödliche Wunde]|h|r) stapelt sich am Tank: Rotation von zwei Tanks.",
	"* Sein Tod VERÄRGERT Mandokir eine Minute lang — die Strategie wird vor dem Einstieg entschieden (siehe den Blutfürst-Eintrag)."
};

pack["14507"] = { "Erzpriester Venoxis", -- (klassischer Raid)
	"* Startet als Schattenpriester : sein Erneuern (|cff71d5ff|Hspell:23895|h[Erneuern]|h|r) geht AUF IHN und wird PURGIERT (sonst heilt er sich ohne Pause) ; sein Heiliges Feuer (|cff71d5ff|Hspell:23860|h[Heiliges Feuer]|h|r) trifft die Spieler — Magie, dispensieren oder coupen.",
	"* Bei ~55% wandelt er sich in eine Schlange (|cff71d5ff|Hspell:23849|h[Schlangengestalt]|h|r) und öffnet seine Endphase.",
	"* Danach legt er seine Giftwolke (|cff71d5ff|Hspell:23861|h[Giftwolke]|h|r), 10 s am Boden : aus dem Strahl treten.",
	"* Sein Schlangengift (|cff71d5ff|Hspell:23865|h[Schlangengift]|h|r) markiert einen Spieler : dispensieren oder beherrscht durchheilen."
};

pack["14517"] = { "Erzpriesterin Jeklik", -- (klassischer Raid)
	"* Ihre Höhere Heilung (|cff71d5ff|Hspell:23954|h[Höhere Heilung]|h|r) wird IMMER unterbrochen (~20 s Abklingzeit).",
	"* Ihr Schallknall (|cff71d5ff|Hspell:23918|h[Schallknall]|h|r) trifft das Nahgefecht in ihrer Nähe : Magie, dispensieren oder Abstand halten.",
	"* Ihre Panik (|cff71d5ff|Hspell:22884|h[Panik]|h|r) jagt die Umgebung 4 s auseinander : das Nahgefecht tritt zurück, sobald sie ansetzt.",
	"* Ihr Schmerz (|cff71d5ff|Hspell:23952|h[Schmerz]|h|r) ist anhaltender Magieschaden : dispensieren.",
	"* Bei halbem Leben landet sie mit einem Rudel Fledermäuse : mit AoE räumen, das DPS läuft weiter."
};

pack["14510"] = { "Erzpriesterin Mar'li", -- (klassischer Raid)
	"* Ihre Vergrößerung (|cff71d5ff|Hspell:24109|h[Vergrößerung]|h|r) macht sie größer und härter : Magie, die ihr ABGENOMMEN wird (kritische Warnung).",
	"* Ihr Lebensentzug (|cff71d5ff|Hspell:24300|h[Lebensentzug]|h|r) trifft einen Spieler : Magie, und sie ernährt sich daran — schnell dispensieren.",
	"* Ihre Ätzung (|cff71d5ff|Hspell:24111|h[Ätzung]|h|r) klebt 30 s am Spieler : Gift, dispensieren.",
	"* Ihr Giftregen (|cff71d5ff|Hspell:24099|h[Giftregen]|h|r) trifft alle : Antidote und Heilung bereit.",
	"* Sie ruft Spinnen (|cff71d5ff|Hspell:24083|h[Spinnen beschwören]|h|r) : mit AoE fegen und den DPS am Boss belassen."
};

pack["14515"] = { "Erzpriesterin Arlokk", -- (klassischer Raid)
	"* Ihre Marke (|cff71d5ff|Hspell:24210|h[Marke Arlokks]|h|r) zielt auf einen Spieler (kritische Warnung, wenn du es bist).",
	"* Sie verschwindet (|cff71d5ff|Hspell:24223|h[Verschwinden]|h|r) kurz nach dem Start — sie kehrt bei einem Spieler zurück ; das Nahgefecht fixiert sie wieder mit Treffern.",
	"* Ihr Schmerz (|cff71d5ff|Hspell:24212|h[Schmerz]|h|r) ist Magie : dispensieren."
};

pack["14509"] = { "Erzpriester Thekal", -- (klassischer Raid, Trio mit seinen Fanatikern)
	"* Der Kampf läuft zu dritt : seine beiden Fanatiker, Lor'Khan (11348, Heiler) und Zath (11347, Schurke).",
	"* ALLE gleichzeitig niedrig bringen : fallen die drei in Serie, stellen sie sich tot, und Thekal wacht ~15 s später als Tiger mit Begleitern auf — der Kampf öffnet mit gleichem Druck auf alle drei.",
	"* Die Heilungen (|cff71d5ff|Hspell:24208|h[Höhere Heilung]|h|r) werden IMMER unterbrochen (er und Lor'Khan).",
	"* Zath blendet (|cff71d5ff|Hspell:21060|h[Blenden]|h|r) und betäubt (|cff71d5ff|Hspell:12540|h[Betäuben]|h|r) das Nahgefecht — Kontrolle über ihn."
};

pack["15114"] = { "Gahz'ranka", -- (klassischer Raid, optionaler Angler-Boss)
	"* Optional : er bricht aus dem Angelloch im Sumpf mit dem passenden Köder hervor.",
	"* Sein Frostatem (|cff71d5ff|Hspell:16099|h[Frostatem]|h|r) kommt als Kegel nach vorn : niemand kreuzt den Strahl.",
	"* Sein Geysir (|cff71d5ff|Hspell:22421|h[Geysir]|h|r) schleudert die im Wasser Stehenden hoch : am Rand kämpfen."
};

pack["11380"] = { "Jin'do der Verhexer", -- (klassischer Raid)
	"* Sein Wahn (|cff71d5ff|Hspell:24306|h[Wahn Jin'dos]|h|r) belügt den Markierten — er sieht Geister, die es nicht gibt : dispensieren (Fluchdispel).",
	"* Sein Hirnwasch (|cff71d5ff|Hspell:24261|h[Hirnwasch]|h|r) unterwirft einen Spieler : Fluch, JETZT lösen.",
	"* Sein Fluch (|cff71d5ff|Hspell:17172|h[Fluch]|h|r) fixiert einen Spieler 5 s : Magie, dispensieren.",
	"* Seine TOTEMS sofort brechen : das Heilungstotem (|cff71d5ff|Hspell:24309|h[Heilungstotem]|h|r) heilt ihn unaufhörlich und das Hirnwasch-Totem (|cff71d5ff|Hspell:24262|h[Hirnwasch-Totem]|h|r) wäscht die Hirne in der Runde.",
	"* Seine Verbannung (|cff71d5ff|Hspell:24466|h[Verbannen]|h|r) nimmt einen Spieler für ein paar Sekunden aus dem Kampf — durchhalten."
};

pack["14834"] = { "Hakkar der Seelenhäscher", -- (klassischer Raid, Endboss)
	"* Sein Blutsog (|cff71d5ff|Hspell:24324|h[Blutsog]|h|r) entzieht alle 90 s der GESAMTEN Bande und heilt ihn — das ist die DPS-Uhr : siegen, bevor die Entzüge die Bande zerlegen.",
	"* Sein Wahnsinn (|cff71d5ff|Hspell:24327|h[Wahnsinn]|h|r) kommt alle ~21 s und verwirrt einen Spieler 10 s : von den Rängen ferngehalten, klingt er von selbst ab.",
	"* Sein Verderbtes Blut (|cff71d5ff|Hspell:24328|h[Verderbtes Blut]|h|r) springt zwischen Spielern : dispensieren, sobald es markiert.",
	"* Schwierigkeitsmodus (die Banden-Priester leben) : die Aspekte laufen in Schleife — Der von Jeklik (|cff71d5ff|Hspell:24687|h[Aspekt Jekliks]|h|r) verstummt die Casters, der von Venoxis (24688) streut Gift, der von Mar'li (24686) entzieht,",
	"* der von Arlokk (24690) markiert, und der von Thekal (|cff71d5ff|Hspell:24689|h[Aspekt Thekals]|h|r) versetzt ihn in WUT — dieser wird ihm ABGENOMMEN (Furien-Dispel, kritische Warnung). Die Priester vorher töten schaltet ALLE Aspekte ab.",
	"* Im SoD-Remake kommen die Aspekte IMMER (alle 20 s, zufällige Reihenfolge).",
	"* Bei ~9:45 entläßt er die Endraserei ohne Bremsen : der Kampf darf 10 Minuten nicht überschreiten."
};

pack["15082"] = { "Gri'lek", -- (klassische Ära, Ecke des Wahnsinns ; Datenblätter des Besitzers 2026-10)
	"* Er wird an der Feuerschale der Ecke mit dem Trank Gurubashi-Mojo-Wahnsinn in seiner Zweiwochen-Rotation beschworen ; beim Tod fällt sein Gri'leks Blut für die ZG-Klassentarots.",
	"* Sein Avatar (|cff71d5ff|Hspell:24646|h[Avatar]|h|r) SCHWELLT ihn an, wischt die Bedrohung des Tanks fort und sprengt seinen physischen Schaden hoch — und er läuft LANGSAMER : der Feste läuft WEIT aus seinem Radius, bis er wieder schrumpft."
};
pack["15083"] = { "Hazza'rah", -- (klassische Ära, Ecke des Wahnsinns ; Datenblätter des Besitzers 2026-10)
	"* Das Feuerschalenfeld der Ecke beschwört den AKTIVEN Troll der Zweiwochen-Rotation mit dem Trank Gurubashi-Mojo-Wahnsinn (Alchemie : 1 Heldenblut, 1 Makiges Mojo, 6 Kräftiges Mojo, 1 Schwarze Lotusblüte) ;",
	"* beim Tod fällt sein Reagens für die ZG-Klassentarots (hier, Hazza'rahs Traumfaden).",
	"* Seine Alptraum-Halluzinationen (|cff71d5ff|Hspell:24728|h[Alptraum-Halluzination]|h|r) sind langsame Kopien mit wenig Leben, aber Schlägen über 5.000 : SOFORT töten (ein Direktzauber reicht) — höchste Priorität des Begegnungsgefechts.",
	"* Seine verkettete Manabrand (|cff71d5ff|Hspell:24684|h[Manabrand]|h|r) entzieht der Bande in Kette — er führt kaum Mana (rund 5.000), also halten ihn die Jäger mit Viperstich und die Hexenmeister mit Manaabzug TROCKEN, und die Fähigkeit verhungert von selbst.",
	"* Sein Schlaf (|cff71d5ff|Hspell:24664|h[Schlaf]|h|r) wirkt flächig, 6 s : die Gruppe verteilt sich, niemand nickt mitten im Raid ein.",
	"* Die anderen drei Trolle der Rotation — Gri'lek, Renataki und Wushoolay — haben eigene Einträge : das Feuerschalenfeld ruft nur den aktiven Troll der Zweiwochen-Rotation."
};
pack["15084"] = { "Renataki", -- (klassische Ära, Ecke des Wahnsinns ; Datenblätter des Besitzers 2026-10)
	"* Er wird an der Feuerschale der Ecke mit dem Trank Gurubashi-Mojo-Wahnsinn in seiner Zweiwochen-Rotation beschworen ; beim Tod fällt sein Renatakis Zahn für die ZG-Klassentarots.",
	"* Er verschwindet (|cff71d5ff|Hspell:24699|h[Verschwinden]|h|r) und taucht an einem Ziel mit einem TÖDLICHEN Schlag wieder auf : AoE enttarnt ihn und BEGLEITER folgen ihm sogar unter Tarnung."
};
pack["15085"] = { "Wushoolay", -- (klassische Ära, Ecke des Wahnsinns ; Datenblätter des Besitzers 2026-10)
	"* Er wird an der Feuerschale der Ecke mit dem Trank Gurubashi-Mojo-Wahnsinn in seiner Zweiwochen-Rotation beschworen ; beim Tod fällt sein Wushoolays Mähne für die ZG-Klassentarots.",
	"* Seine Blitzkette trifft im VORDEREN Kegel (keine verifizierte id) : das Nahgefecht bleibt IMMER HINTER ihm.",
	"* Er sät Blitzwolken (|cff71d5ff|Hspell:24683|h[Blitzwolke]|h|r) für 15 s am Boden : SOFORT raus, sonst fressen sie die Bande."
};

-- Klassisches Scholomance : Zone 289 --
-- Keine Instanz im Journal (Corpus fehlt, wie beim Kloster) : element-1-Namen
-- vom Besitzer via Wowhead 2026-10 bestätigt (13/13). Kit des DBM
-- Shared\Scholomance_Old (13 CIDs ; nur Gandling 17950 und Alexei 17820
-- tragen Warnungen) + das Datenblatt des Besitzers von 2026-10 ; der Rest,
-- flache Kämpfe.
-- Achtung : die Nachricht des Besitzers brachte vertauschte Name-Id-Paare
-- (Krastinov/10507, Polkelt/10503, Vectus/Marduk getauscht) und die Namenstabelle
-- wiederholte das Vertauschen (10507/11261 und 10432/10433) ; die CIDs des DBM
-- geben den Ausschlag.

pack["10506"] = { "Kirtonos der Herold", -- (klassische Ära)
	"* Er wird auf dem Balkon beschworen, indem das Blut der Unschuldigen (von den Eingangskreaturen) auf sein Podest gelegt wird.",
	"* In Gargoylegestalt wirkt er einen Fluch, der den zugefügten Schaden eintrocknet : Fluch, sofort zu bannen.",
	"* Sein Rückstoß schmeißt Leute über die Balkonkante : der Tank stellt ihn MIT DEM RÜCKEN zur Gruppe und weit vom Rand."
};
pack["10505"] = { "Ausbilderin Malicia", -- (klassische Ära)
	"* Sie unterrichtet umringt von untoten Studenten : AoE (und Untote verketten) räumt die Wellen weg, sobald sie kommen.",
	"* Ihre Heilungen werden IMMER unterbrochen."
};
pack["11622"] = { "Klapperkochen", -- (klassische Ära)
	"* Der Riese des Beinhaus kommt von Skeletten umringt : die Garde wird zuerst geräumt.",
	"* Er schlägt breit nach vorn : außer dem Tank steht NIEMAND vor ihm.",
	"* Er setzt die Bedrohung des Tanks immer wieder außer Kraft : die DPS drosseln, statt den Aggro zu stehlen."
};
pack["10503"] = { "Jandice Barov", -- (klassische Ära)
	"* Sie dupliziert sich in identische Halluzinationen : die Gruppe jagt den ECHTEN Körper (oder zerschmettert die Kopien mit AoE), bevor der kombinierte Schaden die Heiler zum Schmelzen bringt."
};
pack["10504"] = { "Lord Alexei Barov", -- (klassische Ära)
	"* Er kommt mit zwei Wachen : zuerst beseitigen, sonst spaltet sich die Bedrohung.",
	"* Sein Schattenschleier (|cff71d5ff|Hspell:17820|h[Schattenschleier]|h|r) ist ein FLUCH, der erhaltene Heilung um 75% kürzt : sofort wegzaubern (der DBM meldet das Ziel)."
};
pack["10507"] = { "Der Ravenier", -- (klassische Ära)
	"* Der Ghoul-Riese der Gruft : BRUTALE Schläge auf den Tank — die Heilung bleibt die ganze Zeit an ihm kleben."
};
pack["11261"] = { "Doktor Theolen Krastinov", -- (klassische Ära)
	"* Der Metzger : pausenloser Nahkampf ; im Wutanfall gerät er in RASEREI, Schaden und Tempo ins Unermessliche — Tank in Verteidigungen, Heilung hat Vorrang, solange sie anhält."
};
pack["10502"] = { "Lady Illucia Barov", -- (klassische Ära)
	"* Kontrolliert den GEIST eines Spielers : betäuben, verängstigen oder verwandeln, OHNE den Kontrollierten zu töten.",
	"* Ihre Schattenblitze werden IMMER unterbrochen ; ihr flächiges Verschweigen drängt Zauberer und Heiler hinter den Tank."
};
pack["10901"] = { "Hüter des Wissens Polkelt", -- (klassische Ära)
	"* Er öffnet flankiert von Dienern : zuerst räumen, dann ihn.",
	"* Er hinterlässt Säure- und Giftpfützen am Boden : man läuft nicht durch, und seine Gifte werden schnell entfernt."
};
pack["10433"] = { "Marduk Schwarzteich", -- (klassische Ära)
	"* Im Nekromantie-Klassenzimmer neben Vectus : langsam anreißen, um nicht beide gleichzeitig zu packen ; seine Skelettbeschwörungen werden flink geräumt."
};
pack["10432"] = { "Vectus", -- (klassische Ära)
	"* Der andere des Nekromantie-Klassenzimmers : flacher Zauberer — seine Diener und Seelenfragmente werden auf Sicht geräumt."
};
pack["10508"] = { "Ras Frostraunen", -- (klassische Ära)
	"* Frost-Lich : seine Nova friert das Nahgefecht ein — Treffer wegstecken, zurückweichen, zwischen Wellen schlagen.",
	"* Seine Frostrüstung verlangsamt seine Angreifer, und sein Froststoß schleudert den Tank fort und wischt die Bedrohung : der Tank schlendert zurück, niemand überholt ihn."
};
pack["1853"] = { "Dunkelmeister Gandling", -- (klassische Ära)
	"* Sein Schattenportal (|cff71d5ff|Hspell:17950|h[Schattenportal]|h|r) HÄLT einen Spieler in einem der verriegelten Studenten-Räume fest (die Warnung meldet den Zauber, nicht das Ziel).",
	"* Der Festgehaltene kämpft ALLEIN gegen die Studenten seines Raums, bis die Tür aufgeht ; der Rest steckt seine Schattenblitze weg und hämmert weiter, ohne den DPS zu stoppen.",
	"* Es wiederholt sich bis zu seinem Tod : DPS-Uhr, während die Räume Leute ausspucken."
};

-- Klassisches Stratholme : Zone 329 --
-- Ohne Journal-Instanz (Korpus fehlt) : element-1-Namen via
-- DBM-Party-Vanilla\Classic + BigWigs Encounters_Classic + Wowhead des Besitzers
-- verifiziert ; nur die flagged bleiben provisorisch. Kits aus DBM
-- Shared\Stratholme und LittleWigs_Classic\Stratholme (15 CIDs).

pack["10516"] = { "Der Unverziehene", -- (klassische Ära)
	"^ Der Geist vom Torhaus : flacher Kampf ; seine Frostnova (|cff71d5ff|Hspell:14907|h[Frostnova]|h|r) friert das Nahgefecht ein — raus und wieder an ihn."
};
pack["11032"] = { "Malor der Eifrige", -- (klassische Ära)
	"* Sein Bodenschlag (|cff71d5ff|Hspell:12734|h[Bodenschlag]|h|r) haut flächig und BETÄUBT 2 s — die Fernen halten Abstand und Heilung dran am Tank ; sein Kopfhieb (|cff71d5ff|Hspell:16172|h[Kopfhieb]|h|r) züchtigt den Tank.",
	"* Sein Heiliges Licht (|cff71d5ff|Hspell:15493|h[Heiliges Licht]|h|r) IMMER unterbrochen : er heilt sich selbst."
};
pack["10808"] = { "Timmy der Grausame", -- (klassische Ära)
	"* Die Riesenabomination Timmy : seine Gefräßige Kralle (|cff71d5ff|Hspell:17470|h[Gefräßige Kralle]|h|r) trifft im Frontal und HEILT IHN — nur der Tank davor ; bei 50% GERÄT ER IN WUT (|cff71d5ff|Hspell:8599|h[Wut]|h|r) — DPS schneller als die Wut."
};
pack["10997"] = { "Kanonenmeister Willey", -- (klassische Ära)
	"* Von der Zinne : seine Artillerie fällt in Flächen und er beschwört erhabene Schützen (|cff71d5ff|Hspell:17279|h[Erhabenen Schützen beschwören]|h|r) in Wellen : sofort räumen.",
	"* Sein Wegschleudern (|cff71d5ff|Hspell:10101|h[Wegschleudern]|h|r) schleudert den Tank fort : er schlendert zurück, niemand überholt ihn."
};
pack["10558"] = { "Herchsinger Forresten", -- (klassische Ära)
	"* Sein Bezauberndes Wiegenlied (|cff71d5ff|Hspell:16798|h[Bezauberndes Wiegenlied]|h|r) schläfert die ganze Gruppe FLÄCHIG ein : IMMER unterbrochen.",
	"* Sein Demoralisierender Ruf (|cff71d5ff|Hspell:16244|h[Demoralisierender Ruf]|h|r) schwächt das Nahgefecht ; der Rest, flach."
};
pack["10811"] = { "Archivar Galford", -- (klassische Ära)
	"* Der Feuerausbilder : seine Feuernova (|cff71d5ff|Hspell:17366|h[Feuernova]|h|r) haut ALLES um ihn herum — das Nahgefecht weicht raus und schlägt dran.",
	"* Seine Brennenden Winde (|cff71d5ff|Hspell:17293|h[Brennende Winde]|h|r) landen auf einem Spieler : die Gruppe streut.",
	"* Sein Pyroschlag (|cff71d5ff|Hspell:17274|h[Pyroschlag]|h|r) IMMER unterbrochen."
};
bos = { "Balnazzar", -- (klassische Ära ; der Kampf öffnet als Großer Kreuzfahrer Dathrohan)
	"* Der Kampf öffnet als Großer Kreuzfahrer Dathrohan mit seinem Hammer des Kreuzfahrers (|cff71d5ff|Hspell:17286|h[Hammer des Kreuzfahrers]|h|r) ; auf halbem Weg VERWANDELT er sich in den Dämon Balnazzar.",
	"* Balnazzar : sein Schlaf (|cff71d5ff|Hspell:12098|h[Schlaf]|h|r) ist MAGIE — zu bannen ; sein Gedankenschlag (|cff71d5ff|Hspell:17287|h[Gedankenschlag]|h|r) züchtigt einen Magier und sein Psychischer Schrei (|cff71d5ff|Hspell:13704|h[Psychischer Schrei]|h|r) jagt der Gruppe Furcht ein",
	"* — gestreut, damit die Panik nicht verkettet."
};
pack["10812"] = bos;
pack["10813"] = bos;
pack["11143"] = { "Postmeister Malown", -- (klassische Ära)
	"* Optional am Marktplatz (er bewacht die Post) : sein Rückhandschlag (|cff71d5ff|Hspell:6253|h[Rückhandschlag]|h|r) betäubt und sein Fluch der Schwäche (|cff71d5ff|Hspell:12741|h[Fluch der Schwäche]|h|r) ist ein Fluch zum Bannen."
};
pack["10435"] = { "Magistrat Barthilas", -- (klassische Ära)
	"* Sein Menschenmeucheln (|cff71d5ff|Hspell:10887|h[Menschenmeucheln]|h|r) haut das Nahgefecht : die Gruppe streut.",
	"* Seine Bösartige Wut (|cff71d5ff|Hspell:16791|h[Bösartige Wut]|h|r) stapelt in der Klassik SEHR SCHNELL : die DPS trödeln nicht.",
	"* Sein Wuchtiger Schlag (|cff71d5ff|Hspell:14099|h[Wuchtiger Schlag]|h|r) züchtigt den Tank mit der Heilung dran.",
	"* Er RENNT beim Ansprung in den hinteren Raum : die Packungen ringsum, VORHER geräumt."
};
pack["10437"] = { "Nerub'enkan", -- (klassische Ära)
	"* Die Riesenspinne beschwört pausenlos untote Skarabäen (|cff71d5ff|Hspell:17235|h[Untoten-Skarabäen erwecken]|h|r) : der AoE fegt sie weg.",
	"* Ihr Panzerstecher (|cff71d5ff|Hspell:6016|h[Panzerstecher]|h|r) lässt den Tank OHNE Rüstung : Verteidigungen oder zweiter Tank.",
	"* Ihre Einhüllenden Netze (|cff71d5ff|Hspell:4962|h[Einhüllende Netze]|h|r) verstricken einen Spieler eine Weile : Heilung drüber, weiter kämpfen."
};
pack["10436"] = { "Baronin Anastari", -- (klassische Ära ; provisorischer Name)
	"* BESITZT einen Spieler (|cff71d5ff|Hspell:17244|h[Besitzen]|h|r) : der Besessene kämpft gegen die Gruppe — sein Leben auf DIE HÄLFTE senken, um ihn zu befreien, ohne zu töten.",
	"* Ihr Verschweigen (|cff71d5ff|Hspell:18327|h[Verschweigen]|h|r) ist flächig : gestreut, damit es nicht alle erwischt.",
	"* Ihr Fluch der Banshee (|cff71d5ff|Hspell:16867|h[Fluch der Banshee]|h|r) ist ein Fluch, der HEILUNG SCHNEIDET beim Markierten : schnell bannen."
};
pack["10438"] = { "Maleki der Leichenblasse", -- (klassische Ära)
	"* Sein Eisgrab (|cff71d5ff|Hspell:16869|h[Eisgrab]|h|r) friert einen Spieler Sekunden ein : Heilung drüber, der Kampf steht nie still.",
	"* Sein Lebensraub (|cff71d5ff|Hspell:17620|h[Lebensraub]|h|r) pumpt einen Spieler aus — aufmerksame Heilung.",
	"* Seine Frostsalven verlangsamen den Fernen und pumpen sein Mana aus."
};
pack["10439"] = { "Ramstein der Verschlinger", -- (klassische Ära)
	"* Der vor dem Raum des Barons : BRUTALE Treffer am Tank mit dauerhafter Heilung ; sein Niederschlag (|cff71d5ff|Hspell:17307|h[Niederschlag]|h|r) BETÄUBT die ganze Gruppe und sein Zertreten (|cff71d5ff|Hspell:5568|h[Zertreten]|h|r) züchtigt das Nahgefecht.",
	"* Bei seinem Tod bricht die Flut der Untotenwachen am Platz los : Gruppe dicht und sie wegfegen, vor dem Baron."
};
pack["10440"] = { "Baron Totenschwur", -- (klassische Ära)
	"* Der letzte Baron : sein Tote Erwecken (|cff71d5ff|Hspell:17473|h[Tote Erwecken]|h|r) holt Skelette, die ZU IHM MARSCHIEREN und ihn durch Berührung heilen,",
	"* und ~12 s später nutzt er seinen Todespakt (|cff71d5ff|Hspell:17471|h[Todespakt]|h|r) — der AoE räumt sie aus der Distanz auf, BEVOR es klingt.",
	"* Seine Schattenbombe (|cff71d5ff|Hspell:17434|h[Schattenbombe]|h|r) fällt auf einen Spieler : die Gruppe streut.",
	"* Seine unheilige Aura beißt jeden in der Nähe und setzt Tödliche Wunden am Tank : ständige Heilung für die Bande."
};

-- Dire Maul : Zona 429 (klassische Ära) --
-- element-1-Namen aus dem 4-Sprachen-Journal-Korpus, Journal-Reihenfolge ; Kits
-- aus DBM Shared\DireMaul und LittleWigs_Classic\DireMaul.
pack["11489"] = { "Tendris Wucherborke", -- (klassische Ära)
	"* Der alte Baum : seine Ranken (|cff71d5ff|Hspell:22924|h[Ranken]|h|r) flechten und seine Wurzeln (|cff71d5ff|Hspell:22994|h[Verwurzeln]|h|r) PACKEN das Nahgefecht — sie werden gebannt (Magie und Bewegung).",
	"* Sein Zertreten (|cff71d5ff|Hspell:5568|h[Zertreten]|h|r) züchtigt das Nahgefecht."
};
pack["11488"] = { "Illyanna Rabeneiche", -- (klassische Ära)
	"* Die Bogenschützin : ihr Ansturm (|cff71d5ff|Hspell:22911|h[Ansturm]|h|r) fliegt zum Weitesten und auf die Feuerfalle (|cff71d5ff|Hspell:22910|h[Feuerfalle]|h|r) stellt man sich nicht.",
	"* Das Betäubungsgeschoss (|cff71d5ff|Hspell:22914|h[Betäubungsgeschoss]|h|r) verlangsamt und ihr Pfeilhagel (|cff71d5ff|Hspell:30933|h[Pfeilhagel]|h|r) trifft flächig : die Gruppe streut."
};
pack["11487"] = { "Magister Kalendris", -- (klassische Ära)
	"* Der Magister : bei 50% nimmt er die Schattengestalt (|cff71d5ff|Hspell:22917|h[Schattengestalt]|h|r) und schlägt härter zu.",
	"* Sein Gedankenraub (|cff71d5ff|Hspell:7645|h[Gedankenraub]|h|r) STIEHLT einen Spieler : die Magie wird an ihm gebannt."
};
pack["11496"] = { "Immol'thar", -- (klassische Ära)
	"* Der von den fünf Pylonen gefangene Dämon : er wird FREI, wenn die Pylonen brechen — der ganze Raum ist die Arena.",
	"* Seine Augen (|cff71d5ff|Hspell:22899|h[Augen von Immol'thar]|h|r) verbrennen einen Spieler und das Zertreten (|cff71d5ff|Hspell:5568|h[Zertreten]|h|r) fegt das Nahgefecht.",
	"* Er öffnet Portale (|cff71d5ff|Hspell:22950|h[Portal von Immol'thar]|h|r), die Diener speien : AoE auf den Ring, solange der Tank hält."
};
pack["11486"] = { "Prinz Tortheldrin", -- (klassische Ära)
	"* Der Prinz, der die Pylonen bewacht : erst fällt sein Geleit, dann er.",
	"* Seine Beschwörungen (|cff71d5ff|Hspell:22995|h[Beschwörung]|h|r) füllen den Raum und der Wirbelhieb (|cff71d5ff|Hspell:67037|h[Wirbelhieb]|h|r) schlägt flächig zu — raus."
};
pack["11492"] = { "Alzzin der Wildformer", -- (klassische Ära)
	"* Der Gestaltwandler : er nimmt die Baumgestalt (|cff71d5ff|Hspell:22688|h[Baumgestalt]|h|r) und die Direwolfgestalt (|cff71d5ff|Hspell:22660|h[Direwolfgestalt]|h|r) — der Kampf wechselt mit jeder Wandlung die Fratze.",
	"* Seine wilde Erneuerung (|cff71d5ff|Hspell:7948|h[wilde Erneuerung]|h|r) IMMER unterbrechen : geht sie durch, füllt er sich mit Leben.",
	"* Enervieren (|cff71d5ff|Hspell:22661|h[Enervieren]|h|r) und Verwittern (|cff71d5ff|Hspell:22662|h[Verwittern]|h|r) sind KRANKHEITEN : der Druide entfernt sie.",
	"* Zerfleischen (|cff71d5ff|Hspell:22689|h[Zerfleischen]|h|r) blutet den Tank, seine Wurzeln (|cff71d5ff|Hspell:22415|h[Zerrüttene Wurzeln]|h|r) nageln die Fernen und das Wegschleudern (|cff71d5ff|Hspell:10101|h[Wegschleudern]|h|r) wirft sie fort."
};
pack["14325"] = { "Hauptmann Krombruch", -- (klassische Ära)
	"* Gordoks Wachhauptmann ohne gemeldete Spezialitäten — Tank vorn, Gruppe wachsam."
};
pack["14324"] = { "Cho'Rush der Beobachter", -- (klassische Ära)
	"* Der Heiler des Hofes : seine Heilungen tragen keine Meldung — jeden grünen Zauber auf Sicht UNTERBRECHEN.",
	"* Beim Tributlauf lieber ihn AM LEBEN lassen : jede stehende Wache beim Fall des Königs füllt Mizzles Truhe."
};
pack["14321"] = { "Wache Fengus", -- (klassische Ära)
	"* Wache des Hofes ohne gemeldete Spezialitäten — ein gerader Schlagabtausch hinter festem Tank auf sauberen Pulls."
};
pack["14326"] = { "Wache Mol'dar", -- (klassische Ära)
	"* Der Schildhieb (|cff71d5ff|Hspell:11972|h[Schildhieb]|h|r) unterbricht und der Schildansturm (|cff71d5ff|Hspell:15749|h[Schildansturm]|h|r) STAMPFT die Wache aufs Ziel : Abstand und freien Rücken.",
	"* Seine Hiebe (|cff71d5ff|Hspell:14516|h[Hieb]|h|r) hämmern den Tank und bei 50% geht er in Raserei (|cff71d5ff|Hspell:8269|h[Raserei]|h|r) : hartes DPS am Ende."
};
pack["14323"] = { "Wache Slip'kik", -- (klassische Ära)
	"* Noch eine Wache des Hofes ohne gemeldete Spezialitäten — Nahkampf am Tank, null Nachlässigkeit."
};
pack["13280"] = { "Hydrobrut", -- (klassische Ära)
	"* Die Wasserbombe des Heiligtums : seine Brandung (|cff71d5ff|Hspell:22419|h[Brandung]|h|r) schlägt flächig — das Nahgefecht streut.",
	"* Sein Geysir (|cff71d5ff|Hspell:22421|h[Geysir]|h|r) bricht unter den Füßen : raus aus der Pfütze.",
	"* BEI 66% und 33% RUFT er Hydrolinge (|cff71d5ff|Hspell:22714|h[Hydroling beschwören]|h|r) : AoE auf die Diener und zurück zum Tank."
};
pack["11501"] = { "König Gordok", -- (klassische Ära)
	"* Der Berserkeransturm (|cff71d5ff|Hspell:22886|h[Berserkeransturm]|h|r) des Königs schleudert den Markierten, sein Tödlicher Stoß (|cff71d5ff|Hspell:16856|h[Tödlicher Stoß]|h|r) ZERHACKT den Tank (Rotation zu zweit) und der Kriegsdonner (|cff71d5ff|Hspell:16727|h[Kriegsdonner]|h|r) betäubt flächig.",
	"* Sein Rüstung zerreißen (|cff71d5ff|Hspell:15572|h[Rüstung zerreißen]|h|r) STAPELT am Tank : starke aufmerksame Heilung.",
	"* Beim Tributlauf : jede lebende Wache bei seinem Fall füllt Mizzles Truhe."
};
pack["14327"] = { "Lethtendris", -- (klassische Ära)
	"* Ihre Schattenraketen (|cff71d5ff|Hspell:17228|h[Schattenraketen]|h|r) regnen flächig : das Nahgefecht streut.",
	"* Ihre Flüche (|cff71d5ff|Hspell:13338|h[Dornenfluch]|h|r und |cff71d5ff|Hspell:16247|h[Zungenfluch]|h|r) sind zu entfernen, und das Verbrennen (|cff71d5ff|Hspell:11962|h[Verbrennen]|h|r) verbrennt den Markierten.",
	"* Ihr Wichtel Pimgib VERGRÖSSERT sich (|cff71d5ff|Hspell:22710|h[Vergrößern]|h|r, zu bannen), speit Feuerangriff (|cff71d5ff|Hspell:22713|h[Feuerangriff]|h|r), der STAPELT, und seine Explosionswelle (|cff71d5ff|Hspell:15744|h[Explosionswelle]|h|r) wirft flächig um."
};
pack["14322"] = { "Stampfer Kreeg", -- (klassische Ära)
	"* Der Trinker des Hofes : sein Bier-Spucken (|cff71d5ff|Hspell:22833|h[Bier-Spucken]|h|r) geht im Kegel und sein Kriegsdonner (|cff71d5ff|Hspell:16740|h[Kriegsdonner]|h|r) donnert flächig.",
	"* Der Wirbelwind (|cff71d5ff|Hspell:15578|h[Wirbelwind]|h|r) hämmert das Nahgefecht und bei 50% entfacht die Trunkenboldsraserei (|cff71d5ff|Hspell:22835|h[Trunkenboldsraserei]|h|r) ihn : Heilung bereit."
};
pack["11490"] = { "Zevrim Dornhuf", -- (klassische Ära)
	"* Sein Opfer (|cff71d5ff|Hspell:22651|h[Opfer]|h|r) fängt einen Spieler und SCHICKT einen Dämon : sofort plättet den Dämon, der Markierte wird geheilt.",
	"* Der Heftige Schmerz (|cff71d5ff|Hspell:22478|h[Heftiger Schmerz]|h|r) haut den Markierten : heilen.",
	"* Seine Schattenraketen (|cff71d5ff|Hspell:17228|h[Schattenraketen]|h|r) züchtigen flächig : das Nahgefecht streut den Rücken."
};

-- Lower/Upper Blackrock Spire : Zona 229 (klassische Ära) --
-- 9 CIDs von LBRS + 9 von UBRS (Rend teilt seinen Eintrag mit Gyth 10339) ;
-- Kits aus DBM Shared\LowerBlackrockSpire und Classic\UpperBlackrockSpire ;
-- Namen aus dem Korpus (Journal für LBRS ; era-dbm für UBRS).
pack["9196"] = { "Hochlord Omokk", -- (klassische Ära)
	"* Der Ogerfürst der Treppe : brutale Nahkampfhiebe am Tank, ständige Heilung."
};
pack["9236"] = { "Schattenjägerin Vosh'gajin", -- (klassische Ära)
	"* Die Schattenpriesterin : ihre Schattenschüsse treffen die Fernen — aufmerksame Heilung für die Caster."
};
pack["9237"] = { "Kriegsmeister Voone", -- (klassische Ära)
	"* Der Kriegsmeister : gerader Schlagabtausch, fester Tank."
};
pack["10596"] = { "Mutter Glimmernetz", -- (klassische Ära)
	"* Die Netzmuttter : ihre Kristallisation versteinert jemanden der Gruppe und ihr Gift beißt das Nahgefecht — aufmerksame Heilung."
};
pack["10584"] = { "Urok Schreckensbote", -- (klassische Ära)
	"* Er entsteht aus dem Ritus des Altars in der Höhle : die Beschwörung bringt Schwärme — AoE, sauberes Nahgefecht, dann greift man ihn."
};
pack["9736"] = { "Rüstmeister Zigris", -- (klassische Ära)
	"* Der Rüstmeister : gerader Schlagabtausch hinter gutem Tank."
};
pack["10220"] = { "Halycon", -- (klassische Ära)
	"* Die Netztochter : Nahkampf am Tank, keine Meldungen."
};
pack["10268"] = { "Gizrul der Geifernde", -- (klassische Ära)
	"* Der Sklaventreiber : Nahkampf am Tank, keine Meldungen."
};
pack["9568"] = { "Oberanführer Wyrmthalak", -- (klassische Ära)
	"* Der Herr der Höhle : gehaltener Nahkampf, ständige Heilung."
};
pack["10363"] = { "General Drakkisath", -- (klassische Ära)
	"* Der General des Oberen Flügels : seine Konflagration (|cff71d5ff|Hspell:16805|h[Konflagration]|h|r) setzt einen Spieler in Brand — er verlässt die Gruppe SOFORT, solange es brennt."
};
pack["10899"] = { "Goraluk Hammerbruch", -- (klassische Ära)
	"* Der Drachenonenschmied : flacher Kampf hinter gutem Tank."
};
pack["10509"] = { "Jed Runenblick", -- (klassische Ära)
	"* Der Runenbeobachter : flacher Nahkampf am Tank."
};
pack["16042"] = { "Lord Valthalak", -- (klassische Ära)
	"* Der Herr des Ritus : seine Beschwörungen (|cff71d5ff|Hspell:27249|h[Assassine beschwören]|h|r) bringen Assassinen — der Tank sammelt sie und der Nahkampf schlägt weiter zu."
};
pack["9816"] = { "Feuerwache Glutseher", -- (klassische Ära)
	"* Der Wächter der Schmiede : sobald sein Ritus offen ist, fällt er wie die anderen — gerades Kräftemessen."
};
pack["10264"] = { "Solakar Feuerkrone", -- (klassische Ära)
	"* Der Herr der Brutstätte : beim Öffnen der Eier schwärmen Drachlinge — AoE auf den Schwarm und gehaltener Nahkampf am Boss."
};
pack["10430"] = { "Die Bestie", -- (klassische Ära)
	"* Die Bestie : ihr Brüllen versetzt die Gruppe in Furcht und sie schlägt sehr hart auf den Tank — ständige Heilung."
};
bos = { "Kriegshäuptling Rend Blackhand", -- (klassische Ära; Namen der Module — der Client kann eine andere Schreibweise tragen, im Spiel bestätigen)
	"* Der Kriegshäuptling fällt mit seinem Drachen Gyth im Kampf : starke Heilung am Tank, Vorsicht vor dem Feuer des Drachen."
};
pack["10339"] = bos;
pack["10429"] = bos;

-- Onyxia's Lair : Zona 249 (klassische Ära) --
-- Kit aus DBM-Raids-Vanilla\VanillaOnyxia (klassische ids) ; Name aus dem Korpus (Journal).
pack["10184"] = { "Onyxia", -- (klassische Ära)
	"* Phase 1 am Boden : ihr Flammenatem (|cff71d5ff|Hspell:18435|h[Flammenatem]|h|r) trifft den Tank, ihr Flügelschlag (|cff71d5ff|Hspell:18500|h[Flügelschlag]|h|r) schleudert das Nahgefecht zurück und ihr Wegschlagen (|cff71d5ff|Hspell:19633|h[Wegschlagen]|h|r) zerbricht den Griff des Tanks.",
	"* Phase 2 in der Luft : Feuerbälle (|cff71d5ff|Hspell:18392|h[Feuerball]|h|r) auf den Markierten und ihre Tiefenatemzüge (|cff71d5ff|Hspell:17086|h[Tiefenatem]|h|r) fegen die halbe Höhle — die Chatwarnung regiert: man rennt zur Gegenseite.",
	"* Phase 3 bei der Landung : alles kommt zurück und obendrein versetzt ihr Brüllen (|cff71d5ff|Hspell:18431|h[Brüllen]|h|r) die halbe Gruppe in Furcht; die Brut der Höhlen steigt auf — AoE auf den Schwarm, ohne den Faden zum Boss zu verlieren."
};

-- Molten Core : Zona 409 (klassische Ära) --
-- Kits aus DBM-Raids-Vanilla\MC mit den klassischen ids des Moduls ; die SoD-Garr/Domo
-- teilen das Kit des Remakes. Der 227939 («Der geschmolzene Kern») ist das Banden-Ereignis
-- des Remakes, NICHT ein Boss : bleibt draußen (_zonas per Hand kuratieren).
-- Die Klammer-Worte sind eigene Fassung : im Spiel regiert die tooltip der id.
bos = { "Garr", -- (klassische Ära)
	"* Seine Magmafesseln (|cff71d5ff|Hspell:19496|h[Magmafesseln]|h|r) KETTEN die Fläche : das Nahgefecht löst den Rhythmus und kommt zurück; sein Brand (|cff71d5ff|Hspell:15732|h[Brand]|h|r) beißt einen Spieler mit anhaltendem Feuer.",
	"* Der Antimagie-Impuls (|cff71d5ff|Hspell:19492|h[Antimagie-Impuls]|h|r) WISCHT die magischen Segnungen der Gruppe fort : die Schilde werden nach jedem Impuls neu gesetzt.",
	"* Seine Feuersklaven explodieren beim Tod (|cff71d5ff|Hspell:20506|h[Feuersklave]|h|r) : das Nahgefecht rückt von den Leichen ab — gehaltene AoE, bis alle gefegt sind."
};
pack["12057"] = bos;
pack["12099"] = bos;
pack["12118"] = { "Lucifron", -- (klassische Ära)
	"* Seine Drohende Verdammnis (|cff71d5ff|Hspell:19702|h[Drohende Verdammnis]|h|r) platzt Sekunden nach ihrem Fall über die ganze Gruppe : Heilung hält durch.",
	"* Sein Fluch (|cff71d5ff|Hspell:19703|h[Fluch Lucifrons]|h|r) verteuert die Zauber — der Fluch wird schnell entfernt ; die Zauberkundigen bleiben mit Mana-Puffer.",
	"* Seine Gedankenkontrolle (|cff71d5ff|Hspell:20604|h[Gedankenkontrolle]|h|r) nimmt einen Spieler : die Störungen der Gruppe brechen sie ab und der Markierte hält mit Heilung durch."
};
pack["11982"] = { "Magmadar", -- (klassische Ära)
	"* Sein Lavahauch streut Panik (|cff71d5ff|Hspell:19408|h[Panik]|h|r) : der Tank stellt ihn von der Gruppe ab ; die Verängstigten laufen ins Feuer — aufmerksame Heilung.",
	"* Seine Raserei (|cff71d5ff|Hspell:19451|h[Raserei]|h|r) bei niedriger Gesundheit steigert seinen Schaden : der Jäger besänftigt sie mit dem Besänftigenden Schuss oder der Tank hält mit Heilungen."
};
pack["12259"] = { "Gehennas", -- (klassische Ära)
	"* Sein Fluch (|cff71d5ff|Hspell:19716|h[Fluch Gehennas]|h|r) ZERSCHNEIDET die Heilung — der Fluch JETZT weg ; die Zauberkundigen leiden unter der Reichweite seiner Regen.",
	"* Der Feuerregen (|cff71d5ff|Hspell:19717|h[Feuerregen]|h|r) fällt flächig : verteilt ; seine Faust (|cff71d5ff|Hspell:20277|h[Faust Gehennas]|h|r) schlägt auf den Markierten.",
	"* Seine zwei Schattenwachen kommen mit : ein Tank abseits, AoE mit Kopf und niemand tritt aus dem Griff."
};
pack["12056"] = { "Baron Geddon", -- (klassische Ära)
	"* Sein Mana entzünden (|cff71d5ff|Hspell:19659|h[Mana entzünden]|h|r) beißt die Zauberkundigen und, wenn das Mana versiegt, platzt es ihnen auf dem Kopf : die Zauberkundigen verwalten ihr Fass.",
	"* Die BOMBE (|cff71d5ff|Hspell:20475|h[Inferno]|h|r) zündet einen Spieler zum Platzen : der Markierte rennt HINAUS aus der Gruppe, bevor er springt."
};
pack["12264"] = { "Shazzrah", -- (klassische Ära)
	"* Sein Fluch (|cff71d5ff|Hspell:19713|h[Fluch Shazzrahs]|h|r) macht die Gruppe anfällig gegen Magie : der Fluch weg.",
	"* Seine Erlöschende Magie (|cff71d5ff|Hspell:19714|h[Erlöschende Magie]|h|r) trifft die markierten Zauberkundigen : aufmerksame Heilung ; und sein Gegenzauber (|cff71d5ff|Hspell:19715|h[Gegenzauber]|h|r) schweigt die Wirfer ein.",
	"* Er springt quer durch die Gruppe (|cff71d5ff|Hspell:23138|h[Sprung Shazzrahs]|h|r) : der Tank legt ihn wieder nieder, ohne den Griff zu verlieren."
};
pack["12098"] = { "Sulfuron", -- (klassische Ära)
	"* Seine 4 Flammenheiler gehen ZUERST : Unterbrechungen auf ihre Heilungen, jedes Mal, und sie fallen vor ihm.",
	"* Sein Anspornen (|cff71d5ff|Hspell:19779|h[Anspornen]|h|r) wird gelüftet, kaum dass es läuft : der Jäger schießt es weg oder man wischt es fort.",
	"* Die Hand von Ragnaros (|cff71d5ff|Hspell:19780|h[Hand von Ragnaros]|h|r) betäubt und wirft flächig auseinander — verteilt ; sein Schattenwort: Schmerz (|cff71d5ff|Hspell:19776|h[Schattenwort: Schmerz]|h|r) und der Brand (|cff71d5ff|Hspell:20294|h[Brand]|h|r) beißen den Markierten mit Heilung."
};
pack["11988"] = { "Golemagg", -- (klassische Ära)
	"* Sein Erdbeben (|cff71d5ff|Hspell:19798|h[Erdbeben]|h|r) schüttelt das Nahgefecht durch : das Nahgefecht bleibt mit Kopf dran.",
	"* Die zwei Magmarager kommen mit : der Tank trennt sie, man fasst sie nicht leichtfertig an und der DPS bleibt am Boss."
};
pack["11502"] = { "Ragnaros", -- (klassische Ära)
	"* Sein Zorn von Ragnaros (|cff71d5ff|Hspell:20566|h[Zorn von Ragnaros]|h|r) trifft die vorderen Reihen : der Tank hält mit Heilungen und das Nahgefecht bleibt verstreut.",
	"* Er VERSINKT alle ~3 Minuten : seine Flammensöhne steigen aus der Tiefe — der Tank fängt sie abseits auf und sie sterben, bevor er wiederkommt (~90 s)."
};
bos = { "Majordomus Exekutus", -- (klassische Ära)
	"* Die Teleportation (|cff71d5ff|Hspell:20534|h[Teleportation]|h|r) mischt die GANZE Gruppe durch : man sammelt sich, ohne den DPS zu unterbrechen, und das Nahgefecht nimmt seinen Platz wieder.",
	"* Der Schadensschild (|cff71d5ff|Hspell:21075|h[Schadensschild]|h|r) beißt das rennende Nahgefecht : das Nahgefecht MACHT INNENHALT, solange es läuft.",
	"* Seine Flamewaker heilen und sichern sich : zuerst Unterbrechungen auf ihre Heilungen, am Ende fällt der Endschlag auf den Majordomus."
};
pack["12018"] = bos;
pack["11663"] = bos;
pack["11664"] = bos;
bos = { "Garr", -- (SoD-Remake)
	"* Dieselben Magmafesseln (19496), der markierte Brand (15732) und der Antimagie-Impuls (19492) wie im Klassischen : das Remake schlägt härter zu — Heilung und Verteilung halten durch.",
	"* Die Feuersklaven explodieren weiterhin beim Tod : das Nahgefecht rückt von den Leichen ab."
};
pack["228432"] = bos;
pack["228834"] = bos;
bos = { "Majordomus Exekutus", -- (SoD-Remake)
	"* Die Teleportation (20534) mischt die Gruppe wie im Klassischen und sein Schadensschild (21075) bremst das Nahgefecht : dieselben Reflexe, härtere Schläge.",
	"* Seine Flamewaker heilen : zuerst Unterbrechungen auf ihre Heilungen."
};
pack["228437"] = bos;
pack["228836"] = bos;
pack["228837"] = bos;

pack["12435"] = { "Feuerkralle der Ungezähmte", -- (klassische Ära)
	"* Phase 1 : die Gruppe sprengt die EIER des Geheges einen nach dem anderen ; Wellen von Dienern und Drachen strömen derweil hinein — AoE mit Kopf und Heilung am Tank.",
	"* Phase 2, ohne Eier, fällt der Boss auf die gewohnte Weise : seine Salve (|cff71d5ff|Hspell:22425|h[Feuerball-Salve]|h|r) trifft flächig und seine Konflagration (|cff71d5ff|Hspell:23023|h[Konflagration]|h|r) setzt den Markierten in Brand — verteilen und heilen."
};

pack["13020"] = { "Vaelastrasz der Verdorbene", -- (klassische Ära)
	"* Sein Flammenatem (|cff71d5ff|Hspell:23461|h[Flammenatem]|h|r) hämmert auf den Tank : starke Heilung und Rotation, wenn es zubeißt.",
	"* Die Essenz des Roten (|cff71d5ff|Hspell:18173|h[Essenz des Roten]|h|r) badet die GANZE Gruppe in Mana und Schnelligkeit : der Kampf läuft auf Volldampf, der DPS verpasst keinen Takt."
};

pack["12017"] = { "Brutwächter Dreschbringer", -- (klassische Ära)
	"* Seine Detonationswelle (|cff71d5ff|Hspell:23331|h[Detonationswelle]|h|r) tritt jeden zur Seite, der ihn streift : der Saal verteilt und das Nahgefecht mit Abstand.",
	"* Der Wegschlag (|cff71d5ff|Hspell:18670|h[Wegschlag]|h|r) schleudert die Nahen fort und seine Tödliche Wunde (|cff71d5ff|Hspell:24573|h[Tödliche Wunde]|h|r) stapelt sich am Tank : zwei Tanks im Wechsel."
};

pack["11983"] = { "Feuerschwinge", -- (klassische Ära)
	"* Seine Schattenflamme (|cff71d5ff|Hspell:22539|h[Schattenflamme]|h|r) fegt die Front : die Fernen schneiden hinter den Säulen die Sichtlinie.",
	"* Das Feuerbuffet (|cff71d5ff|Hspell:23341|h[Feuerbuffet]|h|r) stapelt Magieschaden auf alles Sichtbare : man hält hinter der Säule, und der Flügelschlag (|cff71d5ff|Hspell:23339|h[Flügelschlag]|h|r) schleudert den Tank in die Luft."
};

pack["14601"] = { "Schattenschwinge", -- (klassische Ära)
	"* Seine Schattenflamme (22539) und der Flügelschlag (23339) spiegeln Feuerschwinge : hinter den Säulen.",
	"* Sein Schatten (|cff71d5ff|Hspell:23340|h[Schatten von Schattenschwinge]|h|r) markiert den Tank : mit dem Mal auf ihm HEILT JEDER Treffer am Tank den Drachen — zwei Tanks und der Wechsel, sobald das Mal läuft."
};

pack["11981"] = { "Flammenmaul", -- (klassische Ära)
	"* Seine Schattenflamme (22539) und der Flügelschlag (23339) : dasselbe Säulenspiel.",
	"* Seine Raserei (|cff71d5ff|Hspell:23342|h[Raserei]|h|r) beruhigt sich mit Besänftigendem Schuss : der Jäger erstickt sie, kaum dass sie auftaucht."
};

pack["14020"] = { "Chromaggus", -- (klassische Ära)
	"* Seine zwei Atemzüge drehen sich zufällig durch die Halle : jeder malt seine Gasse — das Nahgefecht sortiert sich nach dem, der fällt.",
	"* Die vier Brutbefälle : das Rote (|cff71d5ff|Hspell:23155|h[Brutbefall : Rot]|h|r) ist eine KRANKHEIT und HEILT ihn, wenn niemand sie entfernt ; das Grüne (|cff71d5ff|Hspell:23169|h[Brutbefall : Grün]|h|r) ist Gift ;",
	"* das Blaue (|cff71d5ff|Hspell:23153|h[Brutbefall : Blau]|h|r) Magie ; das Schwarze (|cff71d5ff|Hspell:23154|h[Brutbefall : Schwarz]|h|r) ein Fluch — Entferner aller Farben an der Arbeit.",
	"* Seine Raserei (|cff71d5ff|Hspell:23128|h[Raserei]|h|r) beruhigt sich mit Besänftigendem Schuss und die Wut (|cff71d5ff|Hspell:23537|h[Wut]|h|r) kommt am Ende : der DPS rennt gegen die Zeit."
};

pack["11583"] = { "Nefarian", -- (klassische Ära)
	"* Phase 1 : Wellen von Dienern fallen von den Seitenwänden der Halle — der Tank hält sie und man räumt sie weg, ohne den Faden zu verlieren.",
	"* Die Klassenrufe kommen alle ~30 s : jeder ruft eine andere Klasse auf die Probe — die Chatwarnung lesen und die Nerven behalten.",
	"* Seine Schattenflamme (|cff71d5ff|Hspell:22539|h[Schattenflamme]|h|r) bestraft die Front und sein Brüllen (|cff71d5ff|Hspell:22686|h[Brüllen]|h|r) versetzt die Gruppe in Furcht : verteilt, ständige Heilung und der Tank fest.",
	"* Phase 3 bei der Landung : die Knochenhaufen entlassen Skelette — AoE mit Kopf."
};

-- Ruinen von Ahn'Qiraj : Zona 509 (klassische Ära) --
-- Kits aus DBM-Raids-Vanilla\AQ20 (klassische ids) ; Namen aus dem Korpus (Journal).
pack["15348"] = { "Kurinnaxx", -- (klassische Ära)
	"* Seine Sandfallen (|cff71d5ff|Hspell:25656|h[Sandfalle]|h|r) verschlingen den Markierten : der Tank weicht aus, wenn seine fällt, und Heilung zum Gefallenen.",
	"* Seine Tödliche Wunde (|cff71d5ff|Hspell:25646|h[Tödliche Wunde]|h|r) stapelt sich am Tank : zwei Tanks im Wechsel ; und seine Raserei (|cff71d5ff|Hspell:26527|h[Raserei]|h|r) am Ende des Fadens : der DPS macht seins."
};
pack["15341"] = { "General Rajaxx", -- (klassische Ära)
	"* Der Aufmarsch in WELLEN : die ersten mit ihren Kapitänen, die letzte mit dem General selbst — der Tank öffnet jede Welle und man räumt sie in Ordnung weg.",
	"* Sein Donnerkrach (|cff71d5ff|Hspell:25599|h[Donnerkrach]|h|r) trifft flächig : verteilt ; die Pestwolken beschmutzen den Boden — raus aus der Lache."
};

pack["15340"] = { "Moam", -- (klassische Ära)
	"* Der Manaraub seiner Aura drängt die Zauberkundigen : Manarub und aufmerksamer DPS.",
	"* Seine Steinform (|cff71d5ff|Hspell:25685|h[Steinform]|h|r) friert seinen Kampf bei niedriger Gesundheit ein und weckt seine Diener : der DPS BESCHLEUNIGT, bevor er versteinert."
};
pack["15370"] = { "Buru der Verschlinger", -- (klassische Ära)
	"* Er WÄHLT einen Spieler aus und jagt ihn : der Gejagte führt ihn weit von der Gruppe fort.",
	"* Seine Eier platzen auf seinem Weg und schaden ihm : der Gejagte führt ihn darüber bis zum Endstrich.",
	"* Sein Zerstückeln (|cff71d5ff|Hspell:96|h[Zerstückeln]|h|r) stapelt am Tank, den er einholt : fester Griff, wenn es beißt."
};

pack["15369"] = { "Ayamiss die Jägerin", -- (klassische Ära)
	"* Ihr Lähmen (|cff71d5ff|Hspell:25725|h[Lähmen]|h|r) markiert für das OPFER des Altars : sofortige Heilung am Gelähmten, solange er hält.",
	"* Bei niedriger Gesundheit hebt sie ab : oben treffen sie nur die Fernen — das Nahgefecht bleibt am Boden."
};
pack["15339"] = { "Ossirian der Narbenlose", -- (klassische Ära)
	"* Sein Oberster Modus (|cff71d5ff|Hspell:25176|h[Oberster Modus]|h|r) bleibt unberührbar bis zum nächsten Kristall : der Saal sprintet, um sie zu entzünden.",
	"* Jeder Kristall senkt eine Schwäche (Feuer 25177, Frost 25178, Natur 25180, Arkan 25181, Schatten 25183) : der DPS schlägt mit der aktuellen Schule zu, sobald sie läuft.",
	"* Der Zyklon (|cff71d5ff|Hspell:25189|h[Zyklon]|h|r) wirbelt den Markierten und sein Sprachfluch (|cff71d5ff|Hspell:25195|h[Sprachfluch]|h|r) bremst die Zauberkundigen — der Fluch weg."
};

-- Temple of Ahn'Qiraj : Zona 531 (klassische Ära) --
-- Kits aus DBM-Raids-Vanilla\AQ40 (klassische ids) ; Namen aus dem Korpus (journal/dbm).
pack["15263"] = { "Prophet Skeram", -- (klassische Ära ; das Modul bringt ihn, obwohl _zonas ihn nicht pareet)
	"* Er teleportiert quer durch die Halle (|cff71d5ff|Hspell:20449|h[Teleport]|h|r) und zaubert eine Gruppe von DUPLIKATEN (|cff71d5ff|Hspell:747|h[Erzeuge Duplikat]|h|r) nach seinem Bild : der Tank fängt das Original und die Klone fallen zum Schluss.",
	"* Seine Gedankenkontrolle (|cff71d5ff|Hspell:785|h[Gedankenkontrolle]|h|r) nimmt einen Spieler : der Markierte hält mit Heilungen, bis die Gruppe ihn freisetzt."
};
bos = { "Adel der Silithiden", -- (klassische Ära)
	"* Drei des Adels zugleich : der Tank öffnet der Reihe nach und das Nahgefecht räumt einen nach dem anderen weg.",
	"* Ihre Heilungen (|cff71d5ff|Hspell:25807|h[Große Heilung]|h|r) werden IMMER unterbrochen ; die Furcht (|cff71d5ff|Hspell:26580|h[Furcht]|h|r) verstreut die Gruppe — verteilen und halten.",
	"* Seine Giftsalve (|cff71d5ff|Hspell:25812|h[Giftsalve]|h|r) beißt das Nahgefecht : Gift zum Durchheilen."
};
pack["15544"] = bos;
pack["15511"] = bos;
pack["15543"] = bos;
pack["15516"] = { "Kampfgarde Sartura", -- (klassische Ära)
	"* Ihr Wirbelwind (|cff71d5ff|Hspell:26083|h[Wirbelwind]|h|r) dreht durch den Saal und wechselt ihr Ziel im Gehen : das Nahgefecht tritt ab, wenn er startet, und der Tank legt sie neu hin, wenn sie wechselt.",
	"* Bei niedriger Gesundheit tobt sie (|cff71d5ff|Hspell:8269|h[Raserei]|h|r) : der DPS drückt und der Heiler hält die Serie aus.",
	"* Ihre königlichen Garden kommen mit : ein Tank abseits."
};
pack["15510"] = { "Fankriss der Unnachgiebige", -- (klassische Ära)
	"* Sein Umschlingen (|cff71d5ff|Hspell:720|h[Umstricken]|h|r) lässt mehrere eingewickelt zurück : das Gewebe wird geschnitten, ohne den Faden zu verlieren.",
	"* Die Tödliche Wunde (|cff71d5ff|Hspell:25646|h[Tödliche Wunde]|h|r) stapelt am Tank : zwei Tanks ; seine gerufenen Würmer (|cff71d5ff|Hspell:25831|h[Würmer rufen]|h|r|cff71d5ff|Hspell:26631|h[Würmer beschwören]|h|r) kommen in Serien — AoE mit Kopf."
};
pack["15509"] = { "Prinzessin Huhuran", -- (klassische Ära)
	"* Ihr Stich (|cff71d5ff|Hspell:26180|h[Giftstich]|h|r) markiert einen Spieler und ihr Gift (|cff71d5ff|Hspell:26053|h[Verdorbendes Gift]|h|r) bedeckt die Gruppe : heilen und aus der Lache.",
	"* Die Säure stapelt am Tank (|cff71d5ff|Hspell:26050|h[Säurespucke]|h|r) und ihre Raserei (|cff71d5ff|Hspell:26051|h[Raserei]|h|r) verstummt mit Besänftigendem Schuss — der Jäger wachsam.",
	"* Bei 30% geht sie in WUT (|cff71d5ff|Hspell:26068|h[Berserker]|h|r) : Volldampf bis sie fällt — DPS und Heilung an der Grenze."
};
pack["15299"] = { "Viscidus", -- (klassische Ära)
	"* Seine Giftpfeil-Salve (|cff71d5ff|Hspell:25991|h[Giftpfeil-Salve]|h|r) straft in Wellen : Heilung im Takt.",
	"* Die KÄLTE friert ihn ein : die Schule Frost prügelt ihn, bis er zugefroren ist ; das Physische ZERSCHLAGT ihn : das Nahgefecht geht rein, wenn der Frost läuft.",
	"* Er baut sich wieder auf und der Zyklus beginnt erneut : Geduld im Saal und Mana-Heilung."
};
bos = { "Zwillingskaiser", -- (klassische Ära)
	"* Die Zwillinge TAUSCHEN ständig den Platz (|cff71d5ff|Hspell:800|h[Teleport]|h|r) : der Tank legt neu auf und der DPS verteilt.",
	"* Der Nahkampf-Zwilling wirft den Tank aus dem Gleichgewicht (|cff71d5ff|Hspell:26613|h[Gleichgewichtsschlag]|h|r) und der andere hämmert auf die Zaubernden — zwei Tanks, je einer pro Zwilling.",
	"* Die mutierten Insekten (|cff71d5ff|Hspell:802|h[Insekt mutieren]|h|r) kommen am Boden hervor — AoE mit Kopf, ohne die Zwillinge zu vergessen."
};
pack["15276"] = bos;
pack["15275"] = bos;
pack["15517"] = { "Ouro", -- (klassische Ära)
	"* Sein Feger (|cff71d5ff|Hspell:26103|h[Feger]|h|r) schleudert den Tank durch die Luft : Rücken an der Wand, damit der Griff nie fällt.",
	"* Er TAUCHT AB alle ~3 Minuten und lässt den Boden voller Käfer : AoE in Ruhe, während er fort ist.",
	"* Seine Wut (|cff71d5ff|Hspell:26615|h[Berserker]|h|r) droht am Ende : der DPS sprintet, um vorher zu schließen."
};
bos = { "C'Thun", -- (klassische Ära)
	"* Das Auge öffnet mit seinem rotierenden Strahl : die Gruppe verteilt sich ringsum und niemand steht in der Feuerlinie.",
	"* Klauen- und Augententakel schießen alle paar Sekunden aus dem Boden : die Klauen gehen ans Nahgefecht und die Augen an die Fernen — sofort wegräumen und die Giganten am Tank.",
	"* Jedes Schwächefenster (~45 s) ist die Zeit des DPS auf Volldampf : den Rest herausholen."
};
pack["15589"] = bos;
pack["15727"] = bos;

-- Naxxramas : Zona 533 (klassische Ära) --
-- Kits aus DBM-Raids-Vanilla\VanillaNaxx je Viertel (klassische ids) ; Namen aus dem Korpus.
pack["15956"] = { "Anub'Rekhan", -- (klassische Ära)
	"* Sein Heuschreckenschwarm (|cff71d5ff|Hspell:28785|h[Heuschreckenschwarm]|h|r) fegt den Saal : beim Ruf ins ZENTRUM treten und zur Fessel zurückkehren, wenn er fort ist.",
	"* Sein Aufspießen (|cff71d5ff|Hspell:28783|h[Aufspießen]|h|r) schleudert die Nahen fort : Nahkampf mit Abstand und fester Tank."
};
pack["15953"] = { "Großwitwe Faerlina", -- (klassische Ära)
	"* Die Witwenumarmung (|cff71d5ff|Hspell:28732|h[Witwenumarmung]|h|r) stellt sie STILL, solange sie dauert : ihre Gefolgsleute abzuschmettern stärkt sie.",
	"* Läuft die Umarmung ab, kommt ihre Raserei (|cff71d5ff|Hspell:28131|h[Raserei]|h|r) : starke Heilung und der DPS am Schluss."
};
pack["15952"] = { "Maexxna", -- (klassische Ära)
	"* Ihre Netzwickel (|cff71d5ff|Hspell:28622|h[Netzwickel]|h|r) hängen einen Spieler auf : das Netz SOFORT schneiden.",
	"* Ihre Jungen (|cff71d5ff|Hspell:29434|h[Jungen beschwören]|h|r) kommen mit jedem Netzdurchgang : AoE auf ihrem Weg.",
	"* Der Gischt (|cff71d5ff|Hspell:29484|h[Netzsprüh]|h|r) betäubt die GANZE Gruppe bei jedem Durchgang und ihre Raserei (|cff71d5ff|Hspell:28747|h[Raserei]|h|r) beißt am Ende : der DPS rennt bei 30%."
};
pack["15954"] = { "Noth der Seuchenfürst", -- (klassische Ära)
	"* Er TELEPORTIERT zu den Balkonen (|cff71d5ff|Hspell:29208|h[Ausdriften]|h|r) bei jedem Durchgang : unten bleiben seine Skelette — das AoE räumt sie derweil weg.",
	"* Sein Seuchenfluch (|cff71d5ff|Hspell:29213|h[Seuchenfluch]|h|r) beißt die Markierten : Fluch SOFORT weg, sonst detoniert er bei seiner Rückkehr."
};
pack["15936"] = { "Heigan der Unreine", -- (klassische Ära)
	"* Der Boden bricht in Wellen aus : sein unreiner Tanz (|cff71d5ff|Hspell:29350|h[Unreiner Tanz]|h|r) führt die Gruppe durch das Muster der vier Bögen — Schritte lernen und das Auge am Boden halten.",
	"* Ab und zu springt er neben einem Spieler (|cff71d5ff|Hspell:30211|h[Teleportierung]|h|r) auf : der Markierte rennt und Heilung im Fluge.",
	"* Sein unreines Leiden (|cff71d5ff|Hspell:29998|h[Unreines Leiden]|h|r) wächst bei den Berührten : Krankheit bald entfernen."
};
pack["16011"] = { "Loatheb", -- (klassische Ära)
	"* Die heilenden Sporen (|cff71d5ff|Hspell:29234|h[Heilende Sporen]|h|r) sprießen im Takt : das Nahgefecht frisst sie, sobald sie fallen — das ist die Heilung des Kampfes.",
	"* Das Unausweichliche Verderben (|cff71d5ff|Hspell:29204|h[Unausweichliches Verderben]|h|r) knabbert die Markierten am Uhrwerk der Nekrose-Aura : Heilung geknebelt und der DPS rennt."
};
pack["16061"] = { "Instrukteur Razuvious", -- (klassische Ära)
	"* Die LEHRLINGE übernehmen ihn mit Spott : zwei im Wechsel, der echte Tank kommt nie an ihn heran.",
	"* Sein Zerstörender Schrei (|cff71d5ff|Hspell:29107|h[Zerstörender Schrei]|h|r) fegt das Nahgefecht : beim Ruf aus dem Radius treten."
};
pack["16060"] = { "Gothik der Ernter", -- (klassische Ära)
	"* Der Saal ist GESPALTEN zwischen Lebenden und Toten : jede Seite hält ihre Hälfte bis zur Vereinigung.",
	"* Seine Sprünge kreuzen den Saal (|cff71d5ff|Hspell:28025|h[Teleportierung]|h|r und |cff71d5ff|Hspell:28026|h[Todesteleport]|h|r) : bei der Vereinigung legt der Tank ihn nieder und der DPS fällt."
};
bos = { "Die Vier Reiter", -- (klassische Ära)
	"* Vier im Quartett, jeder mit seiner Ecke : die Tanks fangen sie paarweise und der DPS teilt sich per Rad.",
	"* Der Meteor (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) schlägt den Nächsten jedes Reiters : Tanks wachsam.",
	"* Die Leerenzonen (|cff71d5ff|Hspell:28863|h[Leerenzone]|h|r) öffnen sich unter den Füßen : sofort aus dem Kreis."
};
pack["16062"] = bos;
pack["16063"] = bos;
pack["16064"] = bos;
pack["16065"] = bos;
pack["16028"] = { "Flickwerk", -- (klassische Ära)
	"* Sein Hassschlag sucht den GESÜNDESTEN im Nahgefecht : alle auf gleichem Lebensstand und paritäre Heilung.",
	"* Bei halber Gesundheit kommt seine Raserei (|cff71d5ff|Hspell:28131|h[Raserei]|h|r) : der Tank hält zäh und die Heilung verdoppelt."
};
pack["15931"] = { "Grobbulus", -- (klassische Ära)
	"* Die Mutierende Injektion (|cff71d5ff|Hspell:28169|h[Mutierende Injektion]|h|r) markiert einen Spieler und ihre Wolke (|cff71d5ff|Hspell:28240|h[Giftwolke]|h|r) bleibt beim Platzen giftig : der Markierte rückt VOR dem Zerplatzen aus der Gruppe."
};
pack["15932"] = { "Gluth", -- (klassische Ära)
	"* Die Dezimierung (|cff71d5ff|Hspell:28374|h[Dezimierung]|h|r) wirft die GANZE Gruppe auf 5% Leben : starke Heilung beim Ruf.",
	"* Die Zombies des Saals MARSCHIEREN zu ihm und heilen ihn bei Berührung : der Weg wird gekappt und das AoE erledigt sie.",
	"* Seine Raserei (|cff71d5ff|Hspell:28371|h[Raserei]|h|r) verstummt mit Besänftigendem Schuss und seine Wut (|cff71d5ff|Hspell:26662|h[Wut]|h|r) droht am Ende : der DPS am Schluss."
};
pack["15928"] = { "Thaddius", -- (klassische Ära)
	"* Die beiden Konstrukte eröffnen mit Entladungen am Tank : verteilen und paritäre Heilung.",
	"* Der Polaritätswechsel (|cff71d5ff|Hspell:28089|h[Polaritätswechsel]|h|r) verteilt die Ladung an die GANZE Gruppe : plus auf einer Seite, minus auf der anderen — NIEMAND tritt über."
};
pack["15989"] = { "Saphiron", -- (klassische Ära)
	"* Sein Lebensentzug (|cff71d5ff|Hspell:28542|h[Lebensentzug]|h|r) beißt die Markierten : Fluch SOFORT weg.",
	"* Seine Eisblöcke (|cff71d5ff|Hspell:28522|h[Eisblitz]|h|r) bleiben stehen : man klammert sich an einen, wenn der Drache auffliegt, denn sein tiefer Atem fegt den Saal bei der Rückkehr."
};
pack["15990"] = { "Kel'Thuzad", -- (klassische Ära)
	"* Seine Ketten der Kontrolle (|cff71d5ff|Hspell:28410|h[Ketten von Kel'Thuzad]|h|r) reißen mehrere mit sich : die Gefangenen werden ohne Gnade festgehalten, bis sie sich lösen.",
	"* Der Schattengraben (|cff71d5ff|Hspell:27810|h[Schattengraben]|h|r) betäubt das Ziel : SOFORT aus der Lache.",
	"* Der Froststoß (|cff71d5ff|Hspell:27808|h[Froststoß]|h|r) friert das Ziel ein, der Saal in Reihe : paritäre Heilung.",
	"* Am Ende kommen die Gruftwächter : der Tank trennt sie ab, ohne den Faden zu brechen."
};

P.de = de;

