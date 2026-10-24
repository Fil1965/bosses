--[[
	Bosses_Forever_de.lua
		Datos en alemán del pack WoW Forever (datos; el registro lo hace
		Bosses_Forever.lua, que se carga después en el .toc).

		Catálogo clásico portado desde Bosses_Vanilla (ids NPC del cliente
		Classic; contenido que Forever también juega). Los jefes nuevos de
		Forever (los 24 de DBM-Party-Forever) se añaden con el editor: la
		base se escribe en EN y se traduce a los demás idiomas.
		Idioma INCOMPLETO: hasta que esté entero no se lista en el .toc.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- Formato de entrada (una por jefe, NPC ID decimal del campo 6 del GUID):
-- pack["NPC_ID"] = { "Nombre del jefe", "* consejo 1", "* consejo 2" };

-- ----------------------------------- --
-- Flammenschlund : Zona 389 (klassische Ära) --
-- ----------------------------------- --

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

-- ----------------------------------- --
-- Höhlen des Wehklagens : Zona 43 (klassische Ära) --
-- ----------------------------------- --

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

-- ------------------------------------- --
-- Tiefschwarze Grotte : Zona 48 (klassische Ära) --
-- ------------------------------------- --

pack["4887"] = { "Ghamoo-Ra",
	"* Geradliniger Kampf aus Tank und Schaden: sein |cff71d5ff|Hspell:5568|h[Niedertrampeln]|h|r schüttelt alles nahe am Boss; Nahkampf bleibt dicht, der Rest verteilt sich."
};

bos = { "Lady Sarevess",
	"* Sie ist von Elitegardisten eskortiert: Massenkontrolle auf die Diener (Verwandlung, Fallen) und der Schaden bündelt sich auf sie.",
	"* Ihr |cff71d5ff|Hspell:407546|h[Einfrierender Pfeil]|h|r friert den Treffer ein (der Heiler befreit ihn per Dispel) und, wenn ihr |cff71d5ff|Hspell:407653|h[Gegabelter Blitz]|h|r jemanden anvisiert, weicht der Markierte aus der Gruppe.",
	"* Legt sie den |cff71d5ff|Hspell:407791|h[Zorn von Aku'mai]|h|r auf einen Spieler, wird er entfernt, sobald der Heiler ihn sieht; ihre Bodenflächen werden gemieden."
};

pack["4831"] = bos;

pack["6243"] = { "Gelihast",
	"* Geradliniger Kampf: sein Haupt-Ärgernis ist das |cff71d5ff|Hspell:6533|h[Netz]|h|r, das jemanden für ein paar Sekunden aus dem Kampf nimmt (zerbrechen oder dispeln); sonst Tank und Schaden."
};

pack["4832"] = { "Twilight-Lord Kelris",
	"* Auf dem Era-Client ist es ein einfacher Kampf: den |cff71d5ff|Hspell:8399|h[Schlaf]|h|r auf einen zufälligen Spieler dispeln und weiter Tank und Schaden."
};

pack["4829"] = { "Aku'mai",
	"* Geradliniger Kampf mit Gift: ihre |cff71d5ff|Hspell:3815|h[Giftwolke]|h|r bleibt, wo sie steht; der Tank hält sie von der Gruppe fern und niemand betritt sie.",
	"* Sterbend verfällt sie in |cff71d5ff|Hspell:3490|h[Rasende Wut]|h|r und schlägt schneller: Heiler drehen das Tempo hoch."
};

pack["4830"] = { "Old Serra'kis",
	"* Einfacher Nahkampfkampf im flachen Wassergraben des Raums: der Tank hält ihn, Nahkämpfer achten auf seine Gifte und die Gruppe verteilt Schaden."
};

-- -------------------------------- --
-- Das Verlies : Zona 34 (klassische Ära) --
-- -------------------------------- --

pack["1696"] = { "Targorr der Schreckliche",
	"* Ein schlichter Nahkampf: nichts zu unterbrechen oder zu entfernen, Tank dran und Schadensrennen."
};

pack["1663"] = { "Dextren Tutor",
	"* Fähigkeit Furcht (Fear): Dextren kann Furcht auf die Gruppe auslösen, deshalb ist es empfehlenswert, den Raum und nahe Feinde gründlich zu säubern, bevor der Kampf beginnt.",
	"* Flucht: Wenn er wenig Leben hat, versucht er zu fliehen, also sollte man ihn kontrollieren, damit er keine weiteren Gegner anzieht."
};

pack["1666"] = { "Kam Tiefenzorn",
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

-- ------------------------------ --
-- Gnomeregan : Zona 90 (klassische Ära) --
-- ------------------------------ --

bos = { "Grubbis",
	"* Eine schlichte Prügelei laut DBM: Tank, Schaden und Heilungen, den Dienst im Blick, der neben ihm auftaucht (sein Chomper)."
};

pack["7361"] = bos;

bos = { "Verflüssigte Ablagerung",
	"* Toxischer Volley (|cff71d5ff|Hspell:21687|h[Toxischer Volley]|h|r): periodisches Gift auf alle, die nah stehen; der Giftentferner wäscht es weg und macht weiter."
};

pack["7079"] = bos;

bos = { "Elektrokutor 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) und Kettenblitz (|cff71d5ff|Hspell:11085|h[Kettenblitz]|h|r) sind unterbrechbar: an der Wurzel brechen.",
	"* Sein Schock (|cff71d5ff|Hspell:11084|h[Schock]|h|r) zerrt am Tank: Heilungen auf Posten."
};

pack["6235"] = bos;

bos = { "Meuteverprügler 9-60",
	"* Niedertrampeln (|cff71d5ff|Hspell:10887|h[Niedertrampeln]|h|r): ein Stampfen, das den Nahkampf durch die Luft schleudert: nur der Tank bleibt drin, alle anderen außer Reichweite.",
	"* Bogenschlag (|cff71d5ff|Hspell:8374|h[Bogenschlag]|h|r) auf den Tank: der übliche Takt von Tank und Heiler."
};

pack["6229"] = bos;

bos = { "Robogenieur Thermadraht",
	"* Er klebt einem zufälligen Spieler eine lebende Bombe an (|cff71d5ff|Hspell:11518|h[Lebende Bombe]|h|r): der Markierte läuft von der Gruppe weg, bis sie birst.",
	"* Sein Wegschleudern (|cff71d5ff|Hspell:10101|h[Wegschleudern]|h|r) wirft den Tank durch die Luft: aufpassen, wo er landet.",
	"* Ab Cata dazu ein unterbrechbarer Dampfstoß und Hiebe auf den Tank: den Stoß rechtzeitig brechen."
};

pack["7800"] = bos;

-- ---------------------------------- --
-- Kral der Klingenhauer : Zona 47 (klassische Ära) --
-- ---------------------------------- --

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

bos = { "Roogug",
	"* Er ruft Erdrüttler auf (|cff71d5ff|Hspell:8270|h[Erdrüttler]|h|r): der Tank nimmt sie auf, sie sterben postwendend."
};

pack["6168"] = bos;

pack["4420"] = { "Oberanführer Rammhauer",
	"* Er kanalisiert einen wirbelnden Barrage (|cff71d5ff|Hspell:8259|h[Wirbelnder Barrage]|h|r): unterbrechen oder, wenn er durchgeht, aus dem Strudel raus, während er fällt.",
	"* Ein zäher Kampf: er schlägt heftig und kommt mit zwei Wächtern daher; der Tank trennt sie ab und die Heilungen laufen auf Hochtouren."
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

-- -------------------------------------- --
-- Das Scharlachrote Kloster : Zona 189 (klassische Ära) --
-- -------------------------------------- --

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

-- ----------------------------------- --
-- Hügel der Klingenhauer : Zona 129 (klassische Ära) --
-- ----------------------------------- --

bos = { "Mordresh Feuerauge",
	"* Er kämpft auf einem Knochenhügel inmitten eines Schwarms nicht-Elite-Skelette: der Tank startet mit Flächenschaden, um alle zu fassen, gruppiert sie und die Gruppe räumt den Schwarm zuerst; keine Eile beim Boss.",
	"* Sobald er seine Feuerkugel wirft, unterbrechen Tank oder Nahkampf ihn: jede gestoppte Zauberung ist weniger erlittener Schaden.",
	"* Der Heiler wartet ein paar Sekunden, bis der Tank die Aggro des Schwarms sichert, bevor er kräftig heilt: frühe Heilungen können die Skelette anlocken und den Pull zerlegen.",
	"* Seine Flammenwelle (|cff71d5ff|Hspell:12470|h[Flammenwelle]|h|r) fegt das Nahgefecht an seinen Füßen : hinaus aus dem Radius."
};

pack["7357"] = bos;

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

-- --------------------------- --
-- Uldaman : Zona 70 (klassische Ära) --
-- --------------------------- --

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

-- ------------------------------- --
-- Zul'Farrak : Zona 209 (klassische Ära) --
-- ------------------------------- --

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

-- ----------------------------- --
-- Maraudon : Zona 349 (klassische Ära) --
-- ----------------------------- --

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

-- ---------------------------------- --
-- Der versunkene Tempel : Zona 109 (klassische Ära) --
-- ---------------------------------- --

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

-- -------------------------------- --
-- Scholomance : Zona 289 (klassische Ära) --
-- -------------------------------- --

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

-- ------------------------------------- --
-- Schwarzfelstiefen : Zona 230 (klassische Ära) --
-- ------------------------------------- --

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

-- ------------------------------ --
-- Düsterbruch : Zona 429 (klassische Ära) --
-- ------------------------------ --

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

-- ------------------------------------------------ --
-- Untere/Obere Schwarzfelsspitze : Zona 229 (klassische Ära) --
-- ------------------------------------------------ --

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

-- ------------------------------- --
-- Stratholme : Zona 329 (klassische Ära) --
-- ------------------------------- --

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

-- ---------------------------------- --
-- Onyxias Hort : Zona 249 (klassische Ära) --
-- ---------------------------------- --

pack["10184"] = { "Onyxia", -- (klassische Ära)
	"* Phase 1 am Boden : ihr Flammenatem (|cff71d5ff|Hspell:18435|h[Flammenatem]|h|r) trifft den Tank, ihr Flügelschlag (|cff71d5ff|Hspell:18500|h[Flügelschlag]|h|r) schleudert das Nahgefecht zurück und ihr Wegschlagen (|cff71d5ff|Hspell:19633|h[Wegschlagen]|h|r) zerbricht den Griff des Tanks.",
	"* Phase 2 in der Luft : Feuerbälle (|cff71d5ff|Hspell:18392|h[Feuerball]|h|r) auf den Markierten und ihre Tiefenatemzüge (|cff71d5ff|Hspell:17086|h[Tiefenatem]|h|r) fegen die halbe Höhle — die Chatwarnung regiert: man rennt zur Gegenseite.",
	"* Phase 3 bei der Landung : alles kommt zurück und obendrein versetzt ihr Brüllen (|cff71d5ff|Hspell:18431|h[Brüllen]|h|r) die halbe Gruppe in Furcht; die Brut der Höhlen steigt auf — AoE auf den Schwarm, ohne den Faden zum Boss zu verlieren."
};


-- Todesminen : Zona 36 (klassische Ära) --

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["639"] = { "Edwin van Cleef",
"* Seine Verbündeten (|cff71d5ff|Hspell:5200|h[Allies]|h|r) rufen seine Schergen: töte sie, bevor sie sich auf den Tank konzentrieren.",
"* Sein Thrash (|cff71d5ff|Hspell:3391|h[Arañazo]|h|r) fällt auf seine eigenen Schergen: die Schergen werden gestärkt, also räume sie zuerst weg."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["642"] = { "Ernteherr und Erntefürst",
"* Seine Terrificar (|cff71d5ff|Hspell:7399|h[Terrificar]|h|r) verursacht Angst bei einem Spieler: erzeugt einen Stun, der Kampf wird unterbrochen, solange er hält.",
"* Seine Desarmar (|cff71d5ff|Hspell:6713|h[Desarmar]|h|r) nimmt dem Ziel das Schwert: kein Tank-Swap, sondern ein Schaden-Punkt-Verlust für den Tank.",
"* Seine Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) wirft Sneed aus der Maschine: Sneed ist nun verwundbar, tötet ihn und kehrt zum Ernteherrn zurück."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["643"] = { "Ernteherr und Erntefürst",
"* Seine Terrificar (|cff71d5ff|Hspell:7399|h[Terrificar]|h|r) verursacht Angst bei einem Spieler: erzeugt einen Stun, der Kampf wird unterbrochen, solange er hält.",
"* Seine Desarmar (|cff71d5ff|Hspell:6713|h[Desarmar]|h|r) nimmt dem Ziel das Schwert: kein Tank-Swap, sondern ein Schaden-Punkt-Verlust für den Tank.",
"* Seine Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) wirft Sneed aus der Maschine: Sneed ist nun verwundbar, tötet ihn und kehrt zum Ernteherrn zurück."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["644"] = { "Rhahk'Zor",
"* Sein Schlag [|cff71d5ff|Hspell:6304|h[Hit]|h|r] trifft einen zufälligen Spieler: Der Tank bewegt sich, um den Schaden zu vermeiden."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["645"] = { "Krümel",
"* Ihre Heilung (|cff71d5ff|Hspell:5174|h[Heilung]|h|r) ist die einzige, die sie hat: Unterbrechen Sie sie immer."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["646"] = { "Handlanger Pein",
"* Sein Smite Stomp (|cff71d5ff|Hspell:6432|h[Smite Stomp]|h|r) ist ein 10-Sekunden-Timer: Wenn der Effekt abläuft, verursacht der Stamp einen Bereichsschaden – bewege dich rechtzeitig weg, bevor er endet.",
"* Sein Smite Slam (|cff71d5ff|Hspell:6435|h[Smite Slam]|h|r) trifft den markierten Ziel: Der Tank muss sich ändern.",
"* Seine Nimble Reflexes (|cff71d5ff|Hspell:6264|h[Nimble Reflexes]|h|r) ist ein Effekt auf einen Spieler: Unterbrich ihn."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["647"] = { "Kapitän Grünhaut",
"* Sein vergifteter Harpun (|cff71d5ff|Hspell:5208|h[Poisoned Harpoon]|h|r) ist ein Fernangriff, der Gift verursacht: Wirf das Gift und halte den Tank am Leben."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["1763"] = { "Gilnid",
"* Sein Molten Metal (|cff71d5ff|Hspell:5213|h[Molten Metal]|h|r) verursacht, dass ein Spieler von Feuer getroffen wird: Verlasse den Feuerbereich und lass den Tank es wieder aufheben."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3586"] = { "Minero Johnson",
"* Sein Pierce Armor (|cff71d5ff|Hspell:12097|h[Perforar armadura]|h|r) ist ein Angriff, der die Rüstung des Tanks zerstört: Halte ihn bereit und behalte deine Rüstungsboni."
};

-- Burg Schattenfang : Zona 33 (klassische Ära) --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3872"] = { "Todeshöriger Captain",
"* Invocado por el Comandante Springvale: combate en plano, elimínalo antes que al jefe.",
"* Sus golpes al tanque son fuertes: mantén la curación mientras el grupo está en el Capitán."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3886"] = { "Razorclaw der Metzger",
"* Kampf im Flach: Das DBM-Modul hat keine Warnungen dafür – Tank, Heiler und zerreißen.",
"* Halte ihn an die Wand: Alles, was er sieht, wird getroffen."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3887"] = { "Baron Silberlein",
"* Su Veil of Shadow (|cff71d5ff|Hspell:7068|h[Veil of Shadow]|h|r) ist ein Debuff auf einen Spieler: Verwende es, um die Heilung zu unterbrechen.",
"* Ruft seine Schergen: Leite alle DPS-Charaktere zu den Schergen, bevor sie den Tank erreichen."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3914"] = { "Rethilgore",
"* Flache Kampf: Das DBM-Modul hat keine Warnungen dafür — Tank, Heiler und zerreißen."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3927"] = { "Wolfmeister Nandos",
"* Ruft Bleak Worgs (|cff71d5ff|Hspell:7487|h[Bleak Worg]|h|r) herbe: töte sie, bevor sie den Tank erreichen.",
"* Sein Lupine Horror (|cff71d5ff|Hspell:7489|h[Lupine Horror]|h|r) und sein Slavering Worg (|cff71d5ff|Hspell:7488|h[Slavering Worg]|h|r) greifen die Gruppe an: Achte auf negative Effekte und sorge für die Heilung."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4274"] = { "Fenrus der Verzehrer",
"* Su Toxic Saliva (|cff71d5ff|Hspell:7125|h[Toxic Saliva]|h|r) vergiften einen Spieler: verbraucht das Gift.",
"* Schnelle Nahkampf-Taktik: Halte ihn vor dem Tank und lass den Rest nicht von hinten angreifen."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4275"] = { "Archimago Arugal",
"* Su Arugal's Curse (|cff71d5ff|Hspell:7621|h[Arugal's Curse]|h|r) verflucht einen Spieler: neutralisiere sie.",
"* Ihr Shadow Port (|cff71d5ff|Hspell:7587|h[Shadow Port]|h|r) öffnet sich und ruft seine Schattenwesen herbei: töte sie sofort, sobald sie erscheinen."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4278"] = { "Kommandant Grüntal",
"* Kampf im Flach: ruft den verfluchten Kapitän (3872) und seine zahlreichen Leichen – gehe zuerst auf den Kapitän zu.",
"* Halte ihn gegen die Wand: die Schergen kommen von hinten."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4279"] = { "Odo der blinde Wächter",
"* Flache Kampf: Das DBM-Modul hat keine Warnungen dafür — Tank, Heiler und zerreißen."
};

-- City of Dalaran : Zona 2959 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900001"] = { "Arkananomalie",
"* Focal Blast ist ein magischer Strahl, der einen Bereich trifft: Folge der Flugbahn und gehe anstelle des Stillstehens aus der Linie.",
"* Sein Arcane Bolt geht direkt auf den Tank zu: Halte ihn unter Kontrolle und vermeide, dass sich die Gruppe in der Nähe des Strahls versammelt.",
"* Töte die kleineren Gegner um die Plattform herum, bevor er ankommt: Kämpfe gegen sie verwandelt das Gefecht in einen Kampf gegen mehrere Gegner."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900002"] = { "Teufelsurtum",
"* Fije [Entangle] a un Jugador und verursachen Schaden auf ihm: Brechen Sie die Wurzeln schnell, der Schaden setzt sich fort, solange der Spieler gefangen ist.",
"* Fel Timbers erzeugt vergiftete Nebelbereiche: Verlassen Sie die grünen Bereiche sofort, warten Sie nicht, bis der Effekt abläuft.",
"* Halten Sie ihn von Nebelbereichen fern: Wurzeln plus Gift ist hier die größte Bedrohung."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900003"] = { "Manaschlinger",
"* Debilitate le vacía la maná de los jugadores que estén cerca de él: distribúyanse y vigilen su maná, la pelea puede agotarlos.",
"* Drain Vitality golpea al tanque y causa daño arcano a lo largo del tiempo: el tanque necesita atención constante.",
"* La guía beta dice que es inmune al daño arcano: use otro tipo de daño.",
"* Limpie el entorno antes de la extracción y termine la pelea rápidamente."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900004"] = { "Manaelementar",
"* Manamorph verwandelt einen deiner Spieler in etwas anderes: Beseitige dies so schnell wie möglich.",
"* Stille stoppt die Zauberer: Der Heiler hält Abstand, um nicht gestillt zu werden, während er heilt.",
"* Töte zuerst die beiden Mana-Geister, dann die kleinen Mana-Elementare und erst dann den Boss.",
"* Unterbreche den Mana-Brand der Untergebenen, wann immer es möglich ist.",
"* Sammle den Boss und die beiden Geister zusammen, um sie von der Gruppe entfernt zu konfrontieren."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900005"] = { "Instabile Schildwache",
"* Die Angriffs mit dem Vorwärtsstoßen werden ausgelöst und verursachen anschließend magischen Schaden für alle in der Nähe: Kampfcharaktere sollten während der Vorbereitung ausweichen und zurückkehren, wenn der Angriff beendet ist.",
"* Fernkämpfer können sich auf maximale Distanz positionieren, aber stellen Sie sicher, dass sich nicht die gesamte Gruppe dem Boss nähert.",
"* Eliminieren Sie zuerst die \"Wütenden Tomes\" umher: Sie verursachen zusätzlichen Schaden während des Angriffs."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900006"] = { "Schemen des Erzmagiers",
"* Halte ihn in seinem Raum: Wenn er aus dem Raum geht, wird der Kampf neu gestartet.",
"* Arcane Explosion trifft alles in der Nähe: Der Heiler bleibt auf Distanz, der Tank beobachtet seine Gesundheit.",
"* Bewege dich aus dem Weg des Bounding Mana Orbs.",
"* Wenn er keinen Mana mehr hat, bereite dich auf Mass Polymorph vor: Spieler auf Distanz können eine Wand benutzen, um ihn zu blockieren, falls die Position es erlaubt.",
"* Evocation ist der Schaf-Angriff: Unterbreche ihn, wenn möglich."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900007"] = { "Lyn der Ignorierte",
"* Rufe Skelette: Behalten Sie sie unter Kontrolle und töten Sie sie schnell, bevor sie sich ansammeln.",
"* Schattenstrahl-Salven: Ist ein Gruppen-Schadensangriff: Halten Sie die Gruppe getrennt und beobachten Sie die Lebensbalken.",
"* Der Dorn-Fluch wirkt auf den Tank: Entfernen Sie den Fluch, wenn Ihre Klasse dies kann.",
"* Halten Sie Lyn fern von Patrouillen, während Sie die Skelette kontrollieren."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900008"] = { "Atrexis der Grabritter",
"* Sofern möglich, zerstöre die Skelette so schnell wie möglich: Lose Skelette verursachen Chaos im Kampf.",
"* Entferne die Waffen vom Tank: Behalte seine Gesundheit genau im Auge, der Tank ist verwundbar.",
"* Unholy Frenzy erhöht seine Angriffsgeschwindigkeit: Nutze eine persönliche Verteidigung während dieses Effekts und halte den Tank am Leben.",
"* Warte, bis der Tank die Bedrohung hat, bevor du Flächenschaden auf die Skelette anwendest."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900009"] = { "Managespenst",
"* Diese Begegnung wurde nie in Beta getestet: Es gibt keine dokumentierten Fähigkeiten, also beobachte, was er im Spiel tut."
};

-- Excavation Site : Zona 2998 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900010"] = { "Salzrücken",
"* Tendon verlangs das Ziel, bis es sich verlangsamt: Behalte die Bewegungsgeschwindigkeit des Tanks und der Fernkämpfer im Auge.",
"* Dust Storm betrifft alle in der Nähe und reduziert ihre Genauigkeit: Der Heiler sollte sich mehr als 10 Meter entfernt halten.",
"* Töte zuerst die Krokodile, insbesondere die, die aus dem Wasser kommen: Sie sind gefährlicher als die Mechaniken des Bosses.",
"* Kämpfe auf freiem Gelände und ziehe das Ziel nicht unnötig mit."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900011"] = { "Schemenzahn",
"* Fügt dem Ziel kontinuierlichen Schaden zu: Der Tank benötigt ständige Heilung.",
"* Der erschreckende Schrei verursacht Angst: Ihn unterbrechen oder Immunität gegen Angst nutzen, und niemals in hohem Gras kämpfen, da dies mehr Raptor anzieht.",
"* Die Wut erscheint bei etwa 30% Gesundheit und erhöht seine Angriffsgeschwindigkeit und seinen Schaden: Halten Sie Heilung bereit.",
"* Kontrollieren Sie die beiden Waldjäger, die mit ihm kommen, oder töten Sie einen von ihnen schnell."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900012"] = { "Reliktwächter",
"* Jemand muss das Archivierte Panel aktivieren, um den Kampf zu beginnen: Gesundheit und Mana vor dem Tun wiederherstellen.",
"* Thunderclap trifft alle in der Nähe und verlangsamt ihren Angriff und ihre Bewegungsgeschwindigkeit: Spieler in Reichweite sollten 10 Meter Abstand halten.",
"* Er stürzt ihn und stuns ihn für fünf Sekunden: Nutze die nahegelegenen Strukturen, um zu verhindern, dass er weit wirft, und sammle die Bedrohung, wenn er frei ist.",
"* Bereite die Heilungen für den Tank vor, bevor er getroffen wird: Er erleidet hohen Schaden, während er gestuns ist."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900013"] = { "Hochlandschrecken",
"* Un elemental pantanoso que aparece cerca del campamento de Faucedraco, en el sitio de excavación.",
"* Es kein bekanntes Mechanismus: Es gibt nichts, worauf man sich vorbereiten kann, also räume den Bereich um und beobachte, was er tut."
};

-- Ruins of Lordaeron : Zona 2999 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900014"] = { "Welkzahn",
"* Leech Poison drainiert die Gesundheit des Ziels und gibt sie ihm zurück: der Tank verliert während des gesamten Kampfes Gesundheit.",
"* Entferne das Gift, wenn deine Klasse dies zulässt; andernfalls halte die Heilung für den Tank konstant.",
"* Zwei kleine Spinnen begleiten ihn: Vereinbart vor dem Abbruch, ob ihr zuerst die Spinnen tötet oder euch auf den Boss konzentriert.",
"* Sammle auch die Spinnen und eliminiere die Spinnenpatrouillen auf dem Weg."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900015"] = { "Rath'mael",
"* Flamestrike markiert einen Bereich: Wenn der Angriff beginnt, verlasse diesen Bereich und positioniere dich auf einem freien Gelände.",
"* Unterbreche oder störe Flamestrike, wenn möglich; andernfalls verlasse den markierten Bereich.",
"* Fire Shield verbrennt alles in der Umgebung: Der Tank und die Kämpfer nehmen den Großteil des Schadens.",
"* Befindet sich im Friedhof von Lordaeron: Eliminiere die nahegelegenen Feinde, bevor die Summoning beginnt."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900016"] = { "Der Schlächter",
"* Die kritischen Treffer treffen den Tank mit voller Wucht, werfen ihn und betäuben ihn: Halte die Gesundheit des Tanks vor ihm auf dem Maximum und nimm die Bedrohung auf, wenn der Betäubungseffekt endet.",
"* Kämpfe mit dem Rücken des Tanks gegen eine Wand, um zu verhindern, dass er sich auf die Gruppe stürzt.",
"* Der Fußtritt trifft alle, die sich in der Nähe befinden: Verhindere, dass er sich auf andere Gruppenmitglieder zubewegt.",
"* Mit einem zweiten Tank, nutze ihn, um den Boss zu halten, während der Haupttank betäubt ist."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900017"] = { "Der Verlassene",
"* Eliminieren die ersten drei Wellen: Das Ereignis lässt keine Zeit zum Trinken dazwischen, und ein gefangener Gegner verhindert, dass das Ereignis fortgesetzt wird.",
"* Frost Nova verursacht Schaden und verlangsamt alle in der Nähe: Der Heiler bleibt auf Distanz, und Nahkämpfer ziehen sich zurück.",
"* Life Drain stiehlt Leben: Unterbrechen oder betäuben Sie den Boss, sobald er erscheint.",
"* Seine Nahkampfangriffe verursachen Chilled: Der Tank bewegt sich langsamer, also halten Sie den Schaden auf ihn hoch."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900018"] = { "Hauptmann von Lordaeron",
"* Ein seltener Gegner, der auf der westlichen Seite der Ruinen erscheint: Mit einer Allianz-Gruppe ist er freundlich und nicht kampffähig.",
"* Bring ihn in eine freie Zone und töte die anderen Kreaturen, bevor du ihn angreifst."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900019"] = { "Viktor der Üble",
"* Leech Poison drainiert die Gesundheit des Ziels und gibt sie ihm zurück: Der Tank benötigt stetige Heilung.",
"* Beseitige die Patrouillen in der Nähe des verbrannten Hauses und erhole deinen Mana, bevor du das Feuer entfesselst.",
"* Das Ereignis löst wiederholt Wellen ohne Unterbrechung aus: Greife an und halte ihn von anderen Feinden fern.",
"* Einige Beta-Tests endeten, ohne dass Viktor erschien: Wenn das passiert, gibt es einfach keinen Kampf zu führen."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900020"] = { "Bjork",
"* El escudo anti-magia lo hace inmune a la magia durante un tiempo: los lanzadores dejan de atacar, los personajes cuerpo a cuerpo siguen atacando.",
"* Mighty Blow verursacht Schaden und stößt das Ziel ab: Halte den Tank an der Wand und beobachte seinen Gesundheitszustand nach jedem Stoß.",
"* Reinige die Zone vor dem Kampf, um zu verhindern, dass die Necrophage-Patrouille eintritt."
};

-- Hall of Thanes : Zona 3065 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900021"] = { "Faldrim Anvilmar",
"* Entferne ihn, wenn seine Patrouille von den umliegenden Gruppen getrennt ist: Mit der Patrouille im Stehen wird der Kampf zu einem Goblin-Aufräum-Kampf.",
"* Der Anvilmars Fluch verlangsamt den Angriff und den Cast des markierten Spielers: Verbrauche ihn, wenn jemand Fluchen entfernen kann.",
"* Konzentriere dich auf den Tank: Behalte die Gesundheit des Tanks im Auge, nicht die der Gruppe."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900022"] = { "Plünderung",
"* Bring the golem to an open area with a wall behind the group: it hits the wall and the corners.",
"* The Stomp pushes the tank: fighting next to a patrol chains the Stomp against the other mobs.",
"* Clear the room first: the adds have to fall down before the pull or the Stomp reaches them too."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900023"] = { "Infurnus",
"* Halte den Elementaren von dem Beschwörer fern: solange sie zusammen sind, kommen die Schergen nicht aufhören.",
"* Töte zuerst den Beschwörer aus dunkler Eisen und konzentriere dich dann auf den Elementaren.",
"* Die Feuer-Nova trifft alle umher: die Fernkämpfer und der Heiler bleiben auf maximaler Distanz, der Nahkämpfer kommt aus, bevor sie fällt.",
"* Die Verbrennung wirkt über Zeit: verteile sie, wenn möglich."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900024"] = { "Durgen Dirgehammer",
"* Kommt mit zwei kleineren Stein-Golems: kontrolliert den Raum oder der Raum füllt sich mit Schergen.",
"* Reinige die Mobs im Raum, bevor du den Boss ziehst: Es ist nicht lohnenswert, gegen die Schergen im Raum zu kämpfen."
};
P.de = de;
