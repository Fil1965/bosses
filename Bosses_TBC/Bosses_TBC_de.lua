--[[
	Bosses_TBC_de.lua
		Datos en alemán del pack The Burning Crusade (solo datos; el
		registro lo hace Bosses_TBC.lua, que se carga después en el .toc).
		Fuentes: DBM-Party-BC, DBM-Raids-BC, DBM-Outlands y
		LittleWigs_BurningCrusade (_doc).
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)


local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- The Black Morass : Zona 269 --
-- --------------------------------- --

pack["17879"] = { "Chronolord Deja",
	"* |cff71d5ff|Hspell:38539|h[Arcane Blast]|h|r: IMMER unterbrechen — mächtiger arkaner Schlag, stapelt am Tank.",
	"* |cff71d5ff|Hspell:31467|h[Time Lapse]|h|r: das Zeitverlies betäubt im Umkreis: Abstand halten.",
	"* |cff71d5ff|Hspell:31472|h[Arcane Discharge]|h|r: die Entladung springt durch den Raum: die Gruppe nach jedem Sprung heilen.",
};

pack["17880"] = { "Temporus",
	"* |cff71d5ff|Hspell:31458|h[Hasten]|h|r: er eilt sich selbst: spätestens auswürgen, sonst dreht der Kampf durch.",
	"* |cff71d5ff|Hspell:38592|h[Wing Buffet]|h|r: der Flügelschlag schleudert den Tank fort: Rücken an die Wand.",
	"* die Portale spucken weiter Müll von hinten: der Tank dreht sie weg, den Rest pullt niemand.",
};

pack["17881"] = { "Aeonus",
	"* |cff71d5ff|Hspell:31422|h[Time Stop]|h|r: der Zeitstopp friert die GANZE Gruppe ein: Defensiven, um lebend herauszukommen.",
	"* |cff71d5ff|Hspell:37605|h[Sand Breath]|h|r: der Sandatem ist frontal: der Tank hält ihn von der Gruppe fern.",
	"* niemals neben offenen Portalen: der angesammelte Schwarm frisst die Heiler.",
};

-- --------------------------------- --
-- Karazhan : Zona 532 --
-- --------------------------------- --

bos = { "Attumen der Jäger",
	"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: der Ansturm fliegt auf die Weiteste: niemand verlässt die Montur.",
	"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: der Niederschlag clivt die Nahkämpfer: die Nahkämpfer hinter ihn.",
	"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: die Unbeständige Gegenwart ist ein Präzisionsfluch: am Markierten auswürgen.",
	"* Mitternacht erlegen: der Reiter sattelt auf und ab an den Lebensmarken — ein gemeinsamer Lebenspool.",
};
pack["16151"] = bos; pack["16152"] = bos;

pack["15687"] = { "Moroes",
	"* |cff71d5ff|Hspell:29448|h[Vanish]|h|r: er verschwindet und frischt auf: AoE auf der Landestelle treibt ihn raus.",
	"* |cff71d5ff|Hspell:29425|h[Gouge]|h|r: der Wurf schaltet den Tank aus: der Off-Tank übernimmt sofort.",
	"* |cff71d5ff|Hspell:29562|h[Blind]|h|r: das Blenden trifft den Markierten: zu entfernen.",
	"* |cff71d5ff|Hspell:29405|h[Garrote]|h|r: die Würgegriff-Wunde blutet bis zum Ende: den Markierten vollauffüllen.",
	"* er kommt mit vier zufälligen Gästen: die möglichen Heiler zuerst unterbrechen und zuerst fällen — der Krieger dreht die Clives.",
};

pack["16457"] = { "Tugendhafte Maid",
	"* |cff71d5ff|Hspell:29511|h[Repentance]|h|r: die Reue betäubt den GANZEN Raid: reingehen und mit Schaden brechen, sonst beginnt alles von neu.",
	"* |cff71d5ff|Hspell:29522|h[Holy Wrath]|h|r: der heilige Zorn verkettet nahe Ziele: auseinander gehen.",
	"* |cff71d5ff|Hspell:29512|h[Consecration]|h|r: die Weihe brennt den Boden unter ihr: die Nahkämpfer raus aus dem Kreis.",
	"* ihre Feueraura straft die klebende Nahkämpfer: Feuertoleranz hilft — die Heiler weit hinten.",
};

pack["15691"] = { "Der Kurator",
	"* |cff71d5ff|Hspell:30235|h[Hateful Bolt]|h|r: das Hassgeschoss fliegt auf das ZWEITHÖCHSTE Leben: es die ganze Zeit voll halten.",
	"* |cff71d5ff|Hspell:30403|h[Summon Astral Flare]|h|r: die Astralschimmer kommen paarweise: AoE und ran, bevor die Salve fällt.",
	"* |cff71d5ff|Hspell:30254|h[Evocation]|h|r: während der Evokation nimmt er den DOPPELTEN Schaden — die große Fenster für ihn aufsparen und zusetzen.",
};

pack["16524"] = { "Arans Schemen",
	"* |cff71d5ff|Hspell:29973|h[Flame Wreath]|h|r: kein einziger Schritt, sonst explodiert der Flammenkranz über alle — warten, bis er stirbt.",
	"* |cff71d5ff|Hspell:29991|h[Counterspell]|h|r: der Gegenzauber schaltet eine Schule 10 Sek. stumm: Casting stoppen; die Heiler mit Bedacht zaubern.",
	"* |cff71d5ff|Hspell:30004|h[Pyroblast]|h|r: die Pyros kommen paarweise: BEIDE unterbrechen, sonst stirbt jemand.",
	"* |cff71d5ff|Hspell:29951|h[Blizzard]|h|r: der Blizzard fegt die Halle: raus LAUFEN — rennen macht ihn zweimal.",
	"* die Trunkphase ist Falle: nicht auf ihn schlagen während des Buffs, sonst regnet die Pyrowall auf die Gruppe.",
};

pack["15688"] = { "Terestian Siechhuf",
	"* |cff71d5ff|Hspell:30066|h[Summon Kil'rek]|h|r: das Wichtelchen stirbt und gebiert erneut: zuerst töten und die AoE für das Comeback halten.",
	"* |cff71d5ff|Hspell:30065|h[Sacrifice]|h|r: das Opfer schält einen Spieler und schützt ihn: das Wichtelchen töten bricht den Schild.",
	"* die Wichtelchen landen auf der Gruppe: eine eigene AoE rettet die Heiler.",
};

pack["15689"] = { "Nethergroll",
	"* |cff71d5ff|Hspell:30400|h[Perseverance]|h|r: der rote Strahl härtet den Tank und tötet Heiler: NUR der Tank steht drin.",
	"* |cff71d5ff|Hspell:30401|h[Serenity]|h|r: der grüne Strahl heilt, was drin ist: die Gruppe rotiert im Wechsel.",
	"* |cff71d5ff|Hspell:30402|h[Dominance]|h|r: der blaue Strahl stärkt Caster: verteilen — Enge teilt die Kraft auf alle.",
	"* |cff71d5ff|Hspell:38523|h[Nether Breath]|h|r: der Netheratem ist frontal: der Tank hält ihn fern der Gruppe.",
	"* in der Verbannungsphase ist er unantastbar: Defensiven halten und Dots stoppen.",
};

pack["15690"] = { "Prinz Malchezaar",
	"* |cff71d5ff|Hspell:30843|h[Enfeeble]|h|r: die Schwächung lässt 1 LP OHNE Heilung für 8 s: durchhalten, niemand rettet während der Wirkung.",
	"* |cff71d5ff|Hspell:30852|h[Shadow Nova]|h|r: die Schatten-Nova fällt GERADE nach der Schwächung: beim Signal WEIT weg vom Prinzen.",
	"* |cff71d5ff|Hspell:30859|h[Summon Infernal]|h|r: Infernale regnen den ganzen Kampf vom Himmel: den Boden im Blick, bei jedem Aufprall weg.",
};

pack["17521"] = { "Der große böse Wolf",
	"* |cff71d5ff|Hspell:30752|h[Little Red Riding Hood]|h|r: der Markierte wird zur Rotkäppchen-Figur: kite im Rundum der Stützen.",
	"* der Wolf bricht die Sichtlinie, um die Kapuze zu jagen: das Bühnenbild nutzen und ihn runden lassen, während der Rest drückt.",
};

bos = { "Romulo und Julianne",
	"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: IMMER unterbrechen — ihr Heilen hält das ganze Stück am Leben.",
	"* einer fällt, der andere tobt: gleich senken und zusammen enden.",
	"* die Giftstöße landen am Markierten: die Heiler sehen auf Romulos Klinge.",
};
pack["17534"] = bos; pack["17533"] = bos;

pack["18168"] = { "Die Hexe",
	"* die vier Helden leben zusammen: erst Tito, dann Dorothee, dann Strawman in Priorität.",
	"* der Zinnkopf kriecht: einer geht mit ihm rückwärts, während die anderen den Rest senken.",
	"* mit Roars Fall kommt die Hexe: die Tornados queren die Bühne — im Vorbeigehen ausweichen und sie erlegen.",
};

bos = { "Das Schachspiel",
	"* die Figuren bleiben stehen: bewegen, sonst frisst das Feuer unter den Füßen — ein Feld pro Zug.",
	"* die Abklingzeiten im Lauf halten: die Bauern absorbieren, der König tankt, die Heiler heilen nur die eigene Seite.",
	"* fällt die Figur, kommt der Kraftstoß: nutzen und ein neues Stück vom Bank nehmen.",
};
pack["21752"] = bos; pack["21684"] = bos;

pack["17225"] = { "Schrecken der Nacht",
	"* |cff71d5ff|Hspell:30129|h[Charred Earth]|h|r: die verkohlte Erde lässt Feuerpfützen unter den Leuten: raus daraus.",
	"* |cff71d5ff|Hspell:36922|h[Bellowing Roar]|h|r: das Brüllen erfüllt die GANZE Gruppe am Boden mit Angst: Furchtverteidigungen oder Beben am Tank.",
	"* |cff71d5ff|Hspell:37098|h[Rain of Bones]|h|r: der Knochenregen fällt im Flug: verteilt euch, um die Rechnung zu senken.",
	"* der Flugzyklus ist streng: alle zur Mitte am Boden und der Tank dreht die Schwanzhiebe weg von der Bande.",
};

pack["16179"] = { "Hyakiss der Lauerer",
	"* der Lauerer kommt aus seinem Bau mit Giftbiss: ebener Fight, den Biss am Tank heilen.",
	"* optionale Bestie auf halbem Weg zu den Dienergemächern: laufen lassen oder für die Extra-Truhe erlegen.",
};

pack["16180"] = { "Shadikith der Gleiter",
	"* der Gleiter zischt einen Schallkreis um sich: die Nahkämpfer raus aus dem Radius zwischen den Wellen.",
	"* optionale Bestie der Dienergemächer: ebener Fight, wenig Risiko, solange der Tank ihn ruhig hält.",
};

pack["16181"] = { "Rokad der Verheerer",
	"* der Verwüster cleavt hart in der Front: Nahkämpfer hinter ihm und der Tank hält ihn fern.",
	"* optionale Bestie der Dienergemächer: ebener Fight; niemand vor dem Rachen.",
};

-- --------------------------------- --
-- The Battle for Mount Hyjal : Zona 534 --
-- --------------------------------- --

pack["17767"] = { "Furor Winterfrost",
	"* |cff71d5ff|Hspell:31249|h[Death and Decay]|h|r: der Verfall breitet Feuerlachen am Boden aus: raus aus den Zonen.",
	"* |cff71d5ff|Hspell:31258|h[Frost Nova]|h|r: die Nova friert die Gruppe an Ort und Stelle: Abklingzeiten, sonst stehen die Heiler in der Katastrophe.",
};

pack["17808"] = { "Anetheron",
	"* |cff71d5ff|Hspell:31298|h[Carrion Swarm]|h|r: der Aasschwarm ist ein frontaler Kegel mit Stille: der Tank hält ihn weg von der Gruppe.",
	"* |cff71d5ff|Hspell:31299|h[Sleep]|h|r: der Schlaf schickt einen Spieler zu Boden: sofort aufwecken oder der Verfall frisst ihn.",
	"* |cff71d5ff|Hspell:31306|h[Inferno]|h|r: das Inferno entzündet die Zone und ruft Infernale: AoE, bevor sie die Heiler erreichen.",
};

pack["17888"] = { "Kaz'rogal",
	"* |cff71d5ff|Hspell:31447|h[Mark of Kaz'rogal]|h|r: die Marke pumpt Mana: bei null EXPLODIERT sie — die Caster hören auf zu zaubern, bevor sie verhungern.",
	"* der Frontalcleave ist brutal: die Nahkämpfer bleiben dahinter und der Tank hält ihn weg von den Reihen.",
};

pack["17842"] = { "Azgalor",
	"* |cff71d5ff|Hspell:31340|h[Howl of Azgalor]|h|r: das Geheul macht den GANZEN Raid panisch: Beben oder Furchtverteidigung am Tank, sonst gibt er den Posten auf.",
	"* |cff71d5ff|Hspell:31344|h[Unending Pain]|h|r: der Endlose Schmerz ist ein Flächenschaden: heilen, nichts entfernt ihn.",
	"* im Tod legt er einen Fluch auf einen Spieler: der Markierte läuft SEHR weit, damit der neugeborene Abyssalfürst niemanden frisst.",
};

pack["17968"] = { "Archimonde",
	"* |cff71d5ff|Hspell:32014|h[Doomfire]|h|r: die Verderbnisflamme jagt Spieler am Boden: WEIT kite, weg von der Bande.",
	"* |cff71d5ff|Hspell:31970|h[Air Burst]|h|r: der Luftstoß schleudert die halbe Bande in die Luft: die Feder vor jedem Auslöser halten.",
	"* |cff71d5ff|Hspell:31972|h[Fear]|h|r: die Angst fällt wahllos: Tankverteidigungen, damit er die Aggro behält, während er panisch wird.",
};

-- --------------------------------- --
-- The Shattered Halls : Zona 540 --
-- --------------------------------- --

pack["16807"] = { "Großhexenmeister Nethekurse",
	"* |cff71d5ff|Hspell:30496|h[Death Coil]|h|r: die Todesspirale prallt am Tank ab: sie heilen, nichts schneidet sie.",
	"* unter 20 % fährt er den Klingenwirbel auf: die Nahkämpfer RAUS und die Fernkämpfer beenden die Arbeit.",
	"* der Müll des Korridors speist die Halle: im sauberen Korridor pullen, sonst machen die Begleiter mit.",
};

pack["16809"] = { "Kriegshetzer O'mrogg",
	"* die zwei Köpfe tauschen die Bedrohung von selbst: die Tanks holen ihn sofort zurück, wenn das Abklopfen landet.",
	"* das Stampfen begräbt die Nahkämpfer: raus aus dem Radius oder ihr verliert das Fenster ganz.",
};

pack["20923"] = { "Blutwache Porung",
	"* Heldenmodus-Wache am Anfang der Halle: er clivt im Pack, mitten im Pull fällen, bevor er sich stapelt.",
	"* ebene Begegnung: nichts Besonderes jenseits des Cleaves und des Mülls, der ihm folgt.",
};

pack["16808"] = { "Kriegshäuptling Kargath Messerfaust",
	"* |cff71d5ff|Hspell:5927|h[Sweep]|h|r: der Feger schlägt vorne hart: die Nahkämpfer bleiben hinter den Klingen.",
	"* |cff71d5ff|Hspell:30739|h[Blade Dance]|h|r: der Klingentanz springt zwischen zufälligen Zielen: verteilen, damit er das Opfer nicht doppelt nimmt.",
	"* die zwei Träger bewachen das Tor: ein CC oder ein rascher Fall befreit den Tank vom zweiten Klingenpaar.",
};

-- --------------------------------- --
-- The Blood Furnace : Zona 542 --
-- --------------------------------- --

pack["17381"] = { "Der Schöpfer",
	"* |cff71d5ff|Hspell:30923|h[Dominate Mind]|h|r: die Geisteskontrolle stiehlt einen Spieler: den Bepossenen betäuben, NICHT töten, und warten.",
	"* die Säurepfützen gehen unter der Gruppe auf: niemand bleibt im Grün.",
};

pack["17380"] = { "Broggok",
	"* die Gefangenen kommen in Wellen: schnell räumen, sonst bekommt der Tank zwei Packs auf einmal.",
	"* das Gift dünstet die Zellen zonenweise: zur sauberen Bucht rücken — das Gift stapelt schnell in der falschen Lache.",
};

pack["17377"] = { "Keli'dan der Zerstörer",
	"* die Schockwelle fällt direkt nach seinem Blinzeln: RAUS rennen, genau wenn er sich in die Hallenmitte teleportiert.",
	"* er wiederholt den Blinzelzyklus: die Heiler halten die Gruppe voll zwischen den Wellen, die Welle bestraft niedrige Leben.",
};

-- --------------------------------- --
-- Hellfire Ramparts : Zona 543 --
-- --------------------------------- --

pack["17306"] = { "Wachhabender Gargolmar",
	"* seine Wunden heilen ihn bei jedem Schlag: die Wunde unterbrechen, sonst dehnt sich der Fight.",
	"* die Lawine schleudert den Tank in den Müll: ihm den Rücken freihalten und den Korridor vorher räumen.",
};

pack["17308"] = { "Omor der Narbenlose",
	"* |cff71d5ff|Hspell:37566|h[Whip of Despair]|h|r: die Peitsche der Verzweiflung ist ein Schattenfluch am Tank: heilen, sonst ertrinken die Heiler.",
	"* die Rudel kommen mit ihm: kontrollieren, eines fällen, bevor es sich auf den Heilern stapelt.",
	"* er hebt sich wiederholt aus Nahkampfweite: die Fernkämpfer fangen ihn; die Nahkämpfer kehren nach jedem Sprung zurück.",
};

bos = { "Vazruden der Herold",
	"* der Herold reitet den Lindwurm: fest am Paar arbeiten, der Reiter steigt nicht, bevor sein Leben knickt.",
	"* bei der Landung schnappt der Tank Vazruden sofort: niemand sonst vor dem Feueratem.",
	"* Nazan sät die Gruppe: die Fernkämpfer schneiden die Feuerbälle zwischen den Passagen.",
};
pack["17537"] = bos; pack["17307"] = bos;

-- --------------------------------- --
-- Magtheridon's Lair : Zona 544 --
-- --------------------------------- --

pack["17257"] = { "Magtheridon",
	"* die fünf Kanalisierer öffnen die Halle: ZUERST erledigen, jeweils ein Pack, sonst kommt die Verbannung nie.",
	"* |cff71d5ff|Hspell:30616|h[Blast Nova]|h|r: die Explosionsnova fegt die Halle: die fünf Spieler drücken ihren Würfel in die Verbannung, um sie zu schneiden.",
	"* |cff71d5ff|Hspell:30511|h[Quake]|h|r: das Beben schleudert die Nahkämpfer gegen die Wände: die Gruppe nach jedem Treffer heilen.",
	"* die Feuerflecken am Boden brennen: sofort rücken, der Schaden ist nicht sanft.",
};

-- --------------------------------- --
-- The Steamvault : Zona 545 --
-- --------------------------------- --

pack["17797"] = { "Hydromantin Thespia",
	"* |cff71d5ff|Hspell:31481|h[Lightning Cloud]|h|r: die Blitzwolken öffnen sich unter den Spielern: raus, bevor die Treffer stapeln.",
	"* |cff71d5ff|Hspell:25033|h[Enveloping Winds]|h|r: die Winde hüllen einen Caster in Stille: die Magie auswürgen oder den zweiten Heiler bereit halten.",
	"* ihre Blitze treten den Tank hart: Schilder vor dem Pull, die ersten Sekunden sind die schlimmsten.",
};

pack["17796"] = { "Robogenieur Dampfhammer",
	"* |cff71d5ff|Hspell:35107|h[Summon Mechanics]|h|r: drei Mechaniker entstehen um ihn: AoE und schnell, sonst häckseln sie die Heiler.",
	"* das Maschinenmedium sprudelt über dem Markierten: mit dem Strahl rücken und den Boden sauber lassen.",
};

pack["17798"] = { "Kriegsherr Kalithresh",
	"* |cff71d5ff|Hspell:6001|h[Disarm]|h|r: die Entwaffnung nimmt dem Tank die Waffe: Reservewaffe oder der Off-Tank springt ein.",
	"* der Wasserwahnsinnsorb entsteht und er kanalisiert darauf: der Tank schleppt ihn WEIT — im Orb explodiert sein Schaden.",
	"* die Reflexe werfen die Zauber zurück: die Caster lassen die Großen aus, solange der Flimmer leuchtet.",
};

-- --------------------------------- --
-- The Underbog : Zona 546 --
-- --------------------------------- --

pack["17770"] = { "Hungarfenn",
	"* |cff71d5ff|Hspell:31673|h[Foul Spores]|h|r: unter halbes Leben FRISCHEN die Sporen ihn auf: den Pilz raus aus der Wolke ziehen oder ihm im Fenster den Rest geben.",
	"* die Kleinsporen kreisen die Zone ein: AoE, bevor sie die Heiler umzingeln.",
};

pack["18105"] = { "Ghaz'an",
	"* |cff71d5ff|Hspell:15716|h[Terrifying Roar]|h|r: das furchtbare Brüllen jagt die Nahkämpfer in die Flucht: Furchtverteidigung, oder nach dem Ruck zurückkehren.",
	"* der Säureatem ist frontal: der Tank hält ihn fern, die Nahkämpfer hinter den Pfoten.",
};

pack["17826"] = { "Sumpffürst Musel'ek",
	"* |cff71d5ff|Hspell:31429|h[Freeze]|h|r: der Eisklump friert einen Nahkämpfer auf der Stelle ein: brechen oder die Salve dahinter heilen.",
	"* ein Spieler hält die Eule weg: sonst schleudert der Flügelschlag des Vogels die Nahkämpfer in die Luft.",
	"* sein Präzisionsschuss bestraft den entfernten Markierten: niemand rückt ohne Deckung von der Gruppe fort.",
};

pack["17882"] = { "Die Schattenmutter",
	"* |cff71d5ff|Hspell:31704|h[Static Charge]|h|r: die Ladung folgt einem Spieler durch die Halle: WEIT kite, weg von der Gruppe, bis sie stirbt.",
	"* |cff71d5ff|Hspell:31715|h[Chain Lightning]|h|r: die Kettenblitze springen zwischen gedrängten Zielen: aufsplitten und Heiler wachsam.",
};

-- --------------------------------- --
-- The Slave Pens : Zona 547 --
-- --------------------------------- --

pack["17941"] = { "Mennu der Verräter",
	"* |cff71d5ff|Hspell:31985|h[Corrupted Healing Totem]|h|r: das Heilungstotem pumpt ihn jede Sekunde hoch: ZUERST platzen.",
	"* |cff71d5ff|Hspell:34980|h[Corrupted Nova Totem]|h|r: das Novatotem detoniert nah: es bei Sicht brechen oder den Radius meiden.",
	"* das Hauttotem härtet das Pack: AoE auf die Totems beim Einstieg, dann den Chef verbrennen.",
};

pack["17942"] = { "Quagmirran",
	"* |cff71d5ff|Hspell:39340|h[Acid Geyser]|h|r: der Säuregeiser explodiert von vorne: NIEMAND vor dem Maul.",
	"* die Pilzfäulnis fällt als stapelbares Gift: vor der zweiten Schicht auswürgen, sonst ertrinkt der Heiler.",
};

pack["17991"] = { "Rokmar der Zerquetscher",
	"* |cff71d5ff|Hspell:31956|h[Grievous Wound]|h|r: die schwere Wunde halbiert die Heilung des Tanks: ihn vollauf heilen oder die Tanks rotieren.",
	"* |cff71d5ff|Hspell:34970|h[Water Spit]|h|r: der Wasserspuck ist frontal: der Tank hält ihn weg von der Gruppe.",
	"* |cff71d5ff|Hspell:38801|h[Ensnaring Moss]|h|r: das Moos lässt die Leute stehen: auseinander gehen, damit es nie zwei verketten.",
};

-- Ahune: evento estacional del Festival del Fuego de Medio Verano (LittleWigs TheSlavePens)
bos = { "Ahune",
	"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: der Schild macht ihn beim Pull unangreifbar — solange er hält, dümpelt die Gruppe den Frostkern ab.",
	"* die Beschwörung startet am Eisstein: erst den Höhlenring räumen und das Ritual auslösen, der Kampf öffnet sich, sobald der Stein schmilzt.",
	"* aus dem Teich sprudeln Wasserelementare, solange der Schild hält: AoE zwischen den Zyklen und niemand steht still auf dem Eisboden.",
};
pack["40446"] = bos;
pack["25740"] = bos;
pack["25865"] = bos;
pack["25697"] = bos;

-- --------------------------------- --
-- Serpentshrine Cavern : Zona 548 --
-- --------------------------------- --

pack["21216"] = { "Hydross der Unstete",
	"* |cff71d5ff|Hspell:38219|h[Frost Tomb]|h|r: das Frostgrab friert einen Spieler ein: den Rest durchheilen, der Gefrorene ist sicher.",
	"* der Tank kreuzt die Schwelle für den Elementwechsel: NUR auf Signal kreuzen, sonst stapelt das falsche Element Schaden.",
	"* auf der Giftseite stapelt die Verderbnis schnell: raus aus den Lachen und Schichten zählen.",
};

pack["21217"] = { "Das Grauen aus der Tiefe",
	"* |cff71d5ff|Hspell:37660|h[Spout]|h|r: der Wasserstrahl rotiert wie ein Uhrzeiger: MIT dem Strahl laufen, nie quer durch.",
	"* |cff71d5ff|Hspell:21873|h[Whirl]|h|r: der Wirbel schleudert die Nahkämpfer in die Pfütze: raus aus dem Radius beim Auslösen.",
	"* im halben Kampf entstehen Naga aus der Pfütze: AoE und ran; die Fernkämpfer erlegen die Lauerer.",
};

pack["21215"] = { "Leotheras der Blinde",
	"* |cff71d5ff|Hspell:37749|h[Whirlwind]|h|r: der Wirbel lässt die ganze Nahkämpferschar bluten: SCHLAGEN EINSTELLEN und abwarten.",
	"* |cff71d5ff|Hspell:37640|h[Chaos Blast]|h|r: die Chaosexlosion springt zwischen Castern: verstreut sein und die Kette brechen.",
	"* in der Dämonenphase entstehen Zwillinge der Gruppe: jeder erlegt SEINE Kopie zuerst, der Raid macht den Rest fertig.",
	"* das Verbannungsfenster öffnet sich in seiner Menschenform: der Hexenmeister spart die Verbannung für den Phasenwechsel auf.",
};

pack["21213"] = { "Morogrim Gezeitenwandler",
	"* |cff71d5ff|Hspell:37730|h[Tidal Wave]|h|r: die Gezeitenwelle ist ein bestialischer Frontalschlag: der Tank hält ihn weg von der Gruppe.",
	"* |cff71d5ff|Hspell:37850|h[Watery Graves]|h|r: die Nassgräber ziehen Murlocs aus der Pfütze: AoE zwischen den Wellen.",
	"* die Wasserblase verfolgt einen Spieler und wächst: weit kite — sie stapelt Schaden auf ihre Beute.",
};

pack["21214"] = { "Tiefenlord Karathress",
	"* |cff71d5ff|Hspell:38236|h[Cataclysmic Bolt]|h|r: der Blitz schwebt auf das ZWEITHÖCHSTE Leben: es immer oben halten.",
	"* |cff71d5ff|Hspell:38330|h[Tidal Surge]|h|r: die Riesenwelle wirft die ganze Gruppe von der Terrasse: fest stehen oder den Stoß heilen.",
	"* die drei Herolde fallen zuerst: Sharkkis, dann Tideress, dann Caribdis — nach ihnen allein reißt der Fürst nichts mehr.",
};

pack["21212"] = { "Lady Vashj",
	"* |cff71d5ff|Hspell:38575|h[Entangle]|h|r: die Ranken schlingen mehrere Spieler: durchheilen, niemand bricht die Wurzeln allein.",
	"* |cff71d5ff|Hspell:38511|h[Shock Blast]|h|r: der Schlag betäubt im Umkreis: verstreut außerhalb der Trefferlinie.",
	"* Phase zwei läuft über die verseuchten Kerne: einen greifen, ihn dem Generat geben, die vier Schilder ordentlich brechen.",
	"* die Strider kite man fern der Terrasse und die Naga sterben, wo sie liegen: niemand stirbt am Müll, während die Kerne laufen.",
};

-- --------------------------------- --
-- The Eye : Zona 550 --
-- --------------------------------- --

pack["19514"] = { "Al'ar",
	"* |cff71d5ff|Hspell:35410|h[Melt Armor]|h|r: die Schmelzung lässt den Tank ohne Panzer: Tanks rotieren direkt nach jeder Schmelzung.",
	"* |cff71d5ff|Hspell:35383|h[Flame Quills]|h|r: die Flammenfedern gießen die Terrasse voll: UNTER der Terrasse in Deckung beim Auslösen.",
	"* die Sprösslinge entstehen auf den verlassenen Plateaus: AoE, bevor sie sich auf die Heiler stapeln.",
	"* sie springt von Plateau zu Plateau: der Tank folgt schnell und die Bande bleibt nie auf der falschen Rampe.",
};

pack["19516"] = { "Leerhäscher",
	"* |cff71d5ff|Hspell:34162|h[Pounding Slam]|h|r: das Hämmern schaltet stumm und schleudert die Nahkämpfer: die Nahkämpfer RAUS beim Treffer.",
	"* |cff71d5ff|Hspell:34172|h[Arcane Orb]|h|r: die Arkanorbe fallen auf zufällige Fernkämpfer: niemand bleibt stehen, wo der Aufprall sich ankündigt.",
	"* Taunts schmieren ab: der Tank pullt sauber und alle behalten die Aggro vor dem Stoß im Auge.",
};

pack["18805"] = { "Hochastromantin Solarian",
	"* |cff71d5ff|Hspell:33045|h[Wrath of the Astromancer]|h|r: der Zorn der Astromantin lädt einen Spieler als Bombe: vor der Detonation von den anderen fort.",
	"* die Agenten entstehen quer durch die Halle zur Halbzeit: AoE und schnell, sie steuern auf die Heiler.",
	"* bei niedrigem Leben teilt sie sich in Kopien: die ECHTE erlegen — die Priesterin belebt sie wieder, wenn man sie lässt.",
};

pack["19622"] = { "Kael'thas Sonnenwanderer",
	"* die vier Ratgeber fallen eins nach dem anderen: Kontrolle auf die Priesterin und Burst auf den Rest nach dem Ruf der Bande.",
	"* die Waffenphase rollt das Arsenal: die Epischen nehmen, sie tragen den ganzen Restkampf.",
	"* |cff71d5ff|Hspell:36819|h[Pyroblast]|h|r: IMMER unterbrechen — die Pyro der Phase fünf löscht aus, wer sie durchlässt.",
	"* |cff71d5ff|Hspell:36735|h[Flame Strike]|h|r: der Flammenstoß verbrennt Bodenflächen: zum markierten Punkt rücken.",
	"* |cff71d5ff|Hspell:34341|h[Gravity Lapse]|h|r: der Schwerkraftzöger hebt die Bande: um ihn drehen und die Kraftorbe mitnehmen.",
};

-- --------------------------------- --
-- The Arcatraz : Zona 552 --
-- --------------------------------- --

pack["20870"] = { "Zereketh der Unabhängige",
	"* |cff71d5ff|Hspell:30533|h[Void Zone]|h|r: die Netherzonen brennen den Boden unter den Leuten: sofort raus bei Eröffnung.",
	"* |cff71d5ff|Hspell:32863|h[Seed of Corruption]|h|r: der Korruptionssamen detoniert am Markierten: die Explosion heilen, sonst verkettet der Knall die Gruppe.",
	"* die Netherdämonen entstehen neben ihm: AoE, bevor sie die Heiler erreichen.",
};

pack["20885"] = { "Dalliah die Verdammnisverkünderin",
	"* |cff71d5ff|Hspell:36142|h[Gift of the Naaru]|h|r: IMMER unterbrechen — ihre Gabe füllt sie fast komplett auf.",
	"* |cff71d5ff|Hspell:36173|h[Whirlwind]|h|r: der Wirbel schneidet die Nahkämpfer im Kreis: die Nahkämpfer raus aus dem Radius.",
	"* sie wechselt sich mit ihrer Wache ab: der Fokus auf derjenigen, die gerade steht, und das CC wartet auf den Wechsel.",
};

pack["20886"] = { "Zornseher Soccothrates",
	"* |cff71d5ff|Hspell:36512|h[Felfire Ground]|h|r: das Fel-Feuer reißt Risse in den Boden: niemand bleibt auf dem angezündeten Grund.",
	"* |cff71d5ff|Hspell:35759|h[Knock Away]|h|r: der Hüftstoß schleudert den Tank weit: verankern oder der Off-Tank übernimmt.",
	"* er wechselt sich mit Dalliah ab: der Fokus auf dem, der gerade steht, und das CC wartet auf das Relais.",
};

pack["20912"] = { "Herold Horizontiss",
	"* |cff71d5ff|Hspell:36924|h[Mind Rend]|h|r: der Seelenriss trifft den Markierten HART: die Markierungen zwischen den Rissen heilen.",
	"* die Geistesillusionen entstehen aus der Gruppe: jeder erlegt SEINE Illusion zuerst.",
	"* das Dominieren hält einen Spieler eine Weile: den Schaden auf ihn dämpfen, es löst sich von selbst.",
};

-- --------------------------------- --
-- The Botanica : Zona 553 --
-- --------------------------------- --

pack["17976"] = { "Kommandantin Sarannis",
	"* |cff71d5ff|Hspell:34803|h[Arcane Resonance]|h|r: bei niedrigem Leben detoniert die Resonanz im Umkreis: auseinander gehen, sobald der Kampf dreht.",
	"* die Blutkonservatoren beschützen sie: AoE beim Pull oder sie fressen die Heiler lebendig.",
};

pack["17975"] = { "Hochbotaniker Freywinn",
	"* |cff71d5ff|Hspell:34557|h[Tranquility]|h|r: IMMER unterbrechen — die Gelassenheit füllt ihn von leer auf voll.",
	"* die Sprösslinge stapeln sich wellenweise: AoE und schnell, sonst stapeln sie von selbst.",
};

pack["17980"] = { "Laj",
	"* die Dornen bestrafen die Nahkämpfer wellenweise: die Nahkämpfer SETZEN den Treffer aus, sonst verlieren sie eine Leiste.",
	"* die Mutanten entstehen um ihn: AoE schnell und sauberer Boden.",
};

pack["17978"] = { "Dorngrin der Hüter",
	"* |cff71d5ff|Hspell:34660|h[Hellfire]|h|r: das Höllenfeuer brennt alles rundum: die Nahkämpfer raus während des GANZEN Kanals.",
	"* das Opfer bindet einen Spieler: den Markierten heilen und den Abstand zu seinem Frontal halten.",
	"* der Trauerfluch schneidet die Heilung: sofort vom Tank tilgen.",
};

pack["17977"] = { "Warpzweig",
	"* |cff71d5ff|Hspell:34716|h[Grow]|h|r: beim Wachsen wird er riesig und schlägt riesig: kite, bis er wieder seine Größe hat.",
	"* die Bäume schwärmen unter seinem Schatten: AoE, bevor sie die Bande einschließen.",
	"* niemand klebt an ihm während des Drains: er trinkt vom Nächsten — die Nahkämpfer einen Schritt zurück.",
};

-- --------------------------------- --
-- The Mechanar : Zona 554 --
-- --------------------------------- --

pack["19710"] = { "Torwächter Eisenhand",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: der Hammerschlag betäubt die Nahkämpfer: außerhalb des Hammerbogens.",
	"* |cff71d5ff|Hspell:35327|h[Static Disruption]|h|r: die Statikstörung schmettert Gedrängte auseinander: kein Knäuel im Radius.",
	"* niemand fightet ihn von vorn: die Treffer ketten die Nahkämpfer fest.",
};

pack["19218"] = { "Torwächter Gyrotod",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: der Hammerschlag betäubt die Nahkämpfer: außerhalb des Bogens zwischen den Treffern.",
	"* der Schattenschauer fällt auf die Gruppe: aufsplitten und Heiler wachsam.",
};

pack["19219"] = { "Mechanolord Kapazitus",
	"* |cff71d5ff|Hspell:35158|h[Reflective Damage Shield]|h|r: der Schadensschild spiegelt Hiebe: die Nahkämpfer HALTEN beim Flimmern.",
	"* |cff71d5ff|Hspell:35159|h[Reflective Magic Shield]|h|r: der Magieschild spiegelt Zauber: die Caster SETZEN AUS beim Flimmern.",
	"* die Ätherladungen rollen am Boden: zur Seite, sie detonieren am Kontakt.",
};

pack["19221"] = { "Nethermantin Sepethrea",
	"* die Feuerspur jagt einen Spieler durch die Halle: die Spur WEIT kite, nie am Gedränge.",
	"* die Infernale entstehen und jagen: die Fernkämpfer erlegen sie einzeln.",
	"* der Drachenatem ist frontal: der Tank hält ihn bei jedem Durchgang weg von der Gruppe.",
};

pack["19220"] = { "Pathaleon der Kalkulator",
	"* |cff71d5ff|Hspell:35280|h[Dominate Mind]|h|r: das Dominieren fängt einen Spieler: den Schaden auf dem Beherrschten dämpfen, es löst sich selbst.",
	"* die Ätherwesen vermehren sich bei niedrigem Leben: AoE ab der Geburt.",
};

-- --------------------------------- --
-- Shadow Labyrinth : Zona 555 --
-- --------------------------------- --

pack["18731"] = { "Botschafter Höllenschlund",
	"* |cff71d5ff|Hspell:33547|h[Fear]|h|r: die Furcht reißt den Tank aus der Position: Beben oder Furchtverteidigung auf dem Träger.",
	"* der Hinterhalt schleudert den Tank rückwärts: die Wand frei lassen, sonst macht die Patrouille mit.",
	"* er patrouilliert einen breiten Korridor am Eingang: im sauberen Spalt zwischen Packs pullen.",
};

pack["18732"] = { "Großmeister Vorpil",
	"* |cff71d5ff|Hspell:33563|h[Rain of Fire]|h|r: der Feurregen verbrennt ganze Flächen: raus aus dem markierten Boden.",
	"* er rennt zum Leerenportal und kehrt mit Verstärkung zurück: die Bande hält die AoE für seine Rückkehr und jagt ihn NIEMALS.",
	"* die Leerenreisenden jagen einen Spieler pro Kopf: niemand bleibt stehen, solange sie streifen.",
};

pack["18667"] = { "Schwarzherz der Hetzer",
	"* |cff71d5ff|Hspell:33676|h[Charge]|h|r: der Ansturm fliegt auf den WEITESTEN: niemand verlässt die Gruppe.",
	"* der Kriegstampfen begräbt die Nahkämpfer: sofort neu sammeln, das Fenster ist kurz.",
	"* der Wirbel dreht unter ihm: die Nahkämpfer ziehen sich für die Wirbelfenster zurück.",
};

pack["18708"] = { "Murmur",
	"* |cff71d5ff|Hspell:33711|h[Murmur's Touch]|h|r: die Berührung zählt herunter und detoniert am Markierten: der Markierte läuft ALLEIN raus.",
	"* |cff71d5ff|Hspell:33923|h[Sonic Shockwave]|h|r: die Schallwelle ist ein frontaler Kegel: die Nahkämpfer hinter dem Körper.",
	"* |cff71d5ff|Hspell:38796|h[Sonic Boom]|h|r: der Schallboom trifft die GANZE Halle: alle raus aus dem Radius beim Auslösen.",
};

-- --------------------------------- --
-- Sethekk Halls : Zona 556 --
-- --------------------------------- --

pack["18472"] = { "Dunkelwirker Syth",
	"* die vier Elementarbilder entstehen zur Halbzeit: AoE oder sie ertränken die Heiler.",
	"* die Schattenstrahlen fallen auf Zufallsziele: leicht aufsplitten.",
	"* die Angst jagt die Gruppe: Furchtverteidigung am Tank, um den Posten zu halten.",
};

pack["23035"] = { "Anzu",
	"* die finsteren Krähen explodieren ringsum: AoE gleich beim Landen.",
	"* die Ritualkreise rufen ihn: die Gruppe geht voll rein, sonst kippt die erste Minute.",
	"* die Verbannung deckt die Caster in Abschnitten: die Nahkämpfer tragen den Schaden während des Fensters.",
};

pack["18473"] = { "Klauenkönig Ikiss",
	"* |cff71d5ff|Hspell:38197|h[Polymorph]|h|r: das Verwandeln fängt einen als Schaf: die Magie tilgen oder das Schaf abwarten.",
	"* |cff71d5ff|Hspell:40425|h[Arcane Explosion]|h|r: die Arkanexplosion fällt direkt nach seinem Blinzeln: die Nahkämpfer laufen RAUS beim Signal.",
	"* |cff71d5ff|Hspell:38245|h[Blizzard]|h|r: der Blizzard fegt seine Zone: alle bleiben im Slalom außerhalb.",
};

-- --------------------------------- --
-- Mana-Tombs : Zona 557 --
-- --------------------------------- --

pack["18341"] = { "Pandemonius",
	"* |cff71d5ff|Hspell:32358|h[Void Blast]|h|r: der Leerenschlag phast ihn ins Schattenhafte: die Nahkämpfer SETZEN AUS, solange er entphasiert ist.",
	"* der dunkle Hieb zermalmt die Nahkämpfer: niemand vor dem Arm.",
};

pack["18343"] = { "Tavarok",
	"* |cff71d5ff|Hspell:2021|h[Disarm]|h|r: die Entwaffnung nimmt dem Tank die Waffe: Reservewaffe oder der Off-Tank übernimmt.",
	"* das Erdbeben schaltet die Caster im Umkreis stumm: die Heiler staffeln ihre Heilungen.",
};

pack["22930"] = { "Yor",
	"* das Stampfen begräbt die Nahkämpfer: raus aus dem Radius beim Auslösen, sonst verliert ihr ein ganzes Fenster auf einen Streich.",
	"* er entsteht aus Tavaroks Leiche: die Gruppe vor dem Aufruf füllen, sonst startet der Fight auf Krücken.",
};

pack["18344"] = { "Nexusprinz Shaffar",
	"* die Äthermarkierer entstehen ringsum: ZUERST töten, sonst machen sie den Fight größer.",
	"* sein Blinzeln trägt ihn quer durch die Halle: die Nahkämpfer folgen zum Punkt, die Zauber warten nicht.",
	"* die Frostnova friert die Nahkämpfer ein: durchheilen.",
};

-- --------------------------------- --
-- Auchenai Crypts : Zona 558 --
-- --------------------------------- --

pack["18371"] = { "Shirrak der Totenwächter",
	"* |cff71d5ff|Hspell:32300|h[Inquisitor's Watching Eye]|h|r: das Auge verfolgt einen Spieler und brennt: weit kite, weg von der Gruppe.",
	"* die toten Wachen sammeln sich am Boden: AoE, bevor sie sich auf die Heiler stapeln.",
};

pack["18373"] = { "Exarch Maladaar",
	"* die dunkle Kopie eines Spielers entsteht zur Halbzeit: ZUERST die Kopie — sie schlägt mehr als ihr Besitzer.",
	"* der Seelenschrei schaltet im Umkreis stumm: die Caster treten aus der Linie.",
	"* die Schattenstrahlen stapeln am Tank: Schilder im Vorfeld zwischen den Treffern.",
};

-- --------------------------------- --
-- Old Hillsbrad Foothills : Zona 560 --
-- --------------------------------- --

pack["17848"] = { "Leutnant Drach",
	"* |cff71d5ff|Hspell:33792|h[Fireball Volley]|h|r: die Feuerballsalve tränkt drei Ziele: die Salve zwischen den Schlägen heilen.",
	"* die Begleitwellen kommen zur Halbzeit: der Tank lenkt den Müll weg von den Heilern, AoE und schnell.",
};

pack["17862"] = { "Hauptmann Skarloc",
	"* |cff71d5ff|Hspell:29427|h[Holy Light]|h|r: IMMER unterbrechen — sein Heiligens Licht füllt ihm eine ganze Leiste zurück.",
	"* die Weihe brennt den Boden unter ihm: die Nahkämpfer raus aus dem Kreis.",
	"* die Begleitwellen kommen während seines Rückzugs: den Müll fern der Heiler halten, bis er fällt.",
};

pack["18096"] = { "Epochenjäger",
	"* |cff71d5ff|Hspell:33834|h[Whirlwind]|h|r: der Wirbel geht über die Nahkämpfer hinweg: die Nahkämpfer weichen aus dem Radius beim Auslösen.",
	"* der Flügelschlag schleudert den Tank weit: ihm die Mauer des Forts geben.",
	"* er landet mit zwei berittenen Begleitern: ein CC, dann die zweite erlegen, bevor der Tank den Posten verliert.",
};

-- --------------------------------- --
-- Black Temple : Zona 564 --
-- --------------------------------- --

pack["22887"] = { "Oberster Kriegsfürst Naj'entus",
	"* |cff71d5ff|Hspell:39837|h[Needle Spine]|h|r: der Stachelschauer trifft im Umkreis: auseinander gehen und die Explosion heilen.",
	"* |cff71d5ff|Hspell:39872|h[Tidal Shield]|h|r: der Gezeitenschild bullet ihn ein: niemand an seinem Nahkampf währenddessen, die Bande macht einen Schritt rückwärts.",
	"* der geklemmte Stachel bleibt im Rücken: das Item nutzen und ihn vom Markierten SOFORT abziehen.",
};

pack["22898"] = { "Supremus",
	"* |cff71d5ff|Hspell:41951|h[Molten Blaze]|h|r: die geschmolzene Flamme jagt einen Spieler: sie WEIT kite, weg von der Bande, damit die Lachen niemanden erreichen.",
	"* das Stampfen begräbt die Nahkämpfer: verankert bleiben oder nach dem Stoß neu sammeln.",
	"* zwei Tanks wechseln sich ab: das Kitefenster öffnet sich für den, der den Boss NICHT hält.",
};

pack["22841"] = { "Akamas Schemen",
	"* Akama kanalisiert, um die Ketten zu brechen: durch die Wellen hindurch verteidigen, sonst endet der Kanal nie.",
	"* die Verstärkung kommt in zwei Gassen: den Kanalisierer schnell freilegen, sonst fressen sie zuerst die Heiler.",
	"* bei seiner Befreiung brennt der Schatten alle: die Defensiven fallen DA, nicht vorher.",
};

pack["22871"] = { "Teron Blutschatten",
	"* der Todesschatten wählt einen Spieler: er fällt und spielt weiter als Schattenkonstruktion — der Raid erlegt seinen Fluch zuerst.",
	"* die Todesgeister jagen die Nachhut: die Nahkämpfer drehen und AoE, bevor sie sich stapeln.",
	"* der Trauerfluch schneidet die Heilung der Marke: sofort tilgen.",
};

pack["22948"] = { "Gurtogg Siedeblut",
	"* |cff71d5ff|Hspell:40481|h[Acidic Wound]|h|r: die Säurewunde stapelt am Tank: rotieren beim Schichtenzählen, sonst ertrinken die Heiler.",
	"* die Felraserei fängt einen Spieler: Heilung in diese Person pumpen, sie trägt ein enormes Gewicht.",
	"* die Wunde landet auf Fünfergruppen: die Heiler verteilen das Triage und die Bande teilt sich in Teams.",
};

pack["23420"] = { "Reliquiar der Seelen",
	"* die drei Essenzen rotieren: Groll, Begehren und Leiden — jede vollständig verbrennen, bevor sie abzieht.",
	"* die Aura des Begehrens bestraft Heilungen auf andere: Triage der Verwundeten, niemand auf voll.",
	"* die Aura des Grolls duldet KEINE Heilung auf ihm: reiner Schaden gewinnt das Fenster.",
	"* der Seelendrain fällt als große Magie auf eine Marke: sie beim Signal tilgen.",
};

pack["22947"] = { "Mutter Shahraz",
	"* |cff71d5ff|Hspell:40891|h[Fatal Attraction]|h|r: die Kette bindet drei Spieler zusammen: weit weg von der Bande, nah beieinander.",
	"* der Prismenschild rotiert die Schulen: die geworfene Magie wechseln.",
	"* die Strahlen fegen durch ihren Frontal: niemand bleibt in der Fegspur.",
};

bos = { "Der Rat der Illidari",
	"* die vier fallen fast im Gleichgewicht: EIN einziger am Leben macht den ganzen Rat rasend.",
	"* die Priesterin heilt die anderen: ihre große Heilung ist IMMER zu unterbrechen.",
	"* der Reflexschild flimmert auf einem von ihnen: die Caster SETZEN AUS beim Flimmern.",
	"* die Giftpfützen vereinen sich unter der Nahkämpferschar: schnell tilgen und aus dem Grün.",
};
pack["22949"] = bos; pack["22950"] = bos; pack["22951"] = bos; pack["22952"] = bos;

pack["22917"] = { "Illidan Sturmgrimm",
	"* die Schere zerteilt den Tank: die Tanks rotieren bei jeder Schere, sonst verlieren die Heiler die Leiste.",
	"* der Augenstrahl fegt die Linie, die er anvisiert: die Bande räumt die Gasse, sobald er dreht.",
	"* die Schattendämonen jagen zwei Spieler: das Trinket greifen und sie kontrollieren, sonst geben sie sich ein Festmahl.",
	"* in Dämonenform rückt die Bande zusammen und hält: die Flügel öffnen das Burstfenster.",
	"* die Flammenexplosion brennt unter den Leuten: raus aus den Zonen, das Feuer bleibt, wo es fällt.",
};

-- --------------------------------- --
-- Gruul's Lair : Zona 565 --
-- --------------------------------- --

bos = { "Hochkönig Maulgar",
	"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: der Wirbel schneidet die Nahkämpfer im Kreis: raus aus dem Radius bei jedem Dreh.",
	"* die beiden Heiler seines Rates fallen ZUERST: jede Heilung mit ihrem Schnitt, nicht verhandelbar.",
	"* Kiggler der Irrsinnige spielt den Flächendonner: ein Auserwählter saugt ihn fern der Gruppe ab.",
	"* Krosh der Magier spielt mit den Castern: ein Köder weit weg von allen.",
};
pack["18831"] = bos; pack["18832"] = bos; pack["18834"] = bos; pack["18835"] = bos; pack["18836"] = bos;

pack["19044"] = { "Gruul der Drachenschlächter",
	"* |cff71d5ff|Hspell:36240|h[Ground Slam]|h|r: der Bodenschlag wirft ALLE gegen die Wände: DANACH verstreuen, sonst frisst der Knall die Nachbarn.",
	"* |cff71d5ff|Hspell:36300|h[Shatter]|h|r: der Knall zerschmettert die Eingefrorenen: niemand nahe jemandem, wenn er fällt.",
	"* |cff71d5ff|Hspell:33525|h[Growth]|h|r: das Wachstum stapelt am Timer: der Kampf endet, bevor die Schichten gewinnen.",
};

-- --------------------------------- --
-- Sunwell Plateau : Zona 580 --
-- --------------------------------- --

pack["24850"] = { "Kalecgos",
	"* der Spektralschlag öffnet das Portal am Markierten: der Markierte tritt hinüber ins Dämonenreich und die beiden Bosse fallen gemeinsam.",
	"* |cff71d5ff|Hspell:45010|h[Arcane Breath]|h|r: der Arkanatem ist frontal: der Tank hält ihn weg von der Gruppe.",
	"* die wilde Magie fliegt wahllos: die Heilungen bleiben elastisch, nichts ist garantiert.",
};

pack["24882"] = { "Brutallus",
	"* |cff71d5ff|Hspell:45141|h[Burn]|h|r: die Verbrennung stapelt hart am Tank: rotieren beim Schichtenzählen.",
	"* das Stampfen wirft die Nahkämpfer: die Gruppe verankern oder den Stoß heilen.",
	"* die Stoffwechselblockade friert die Caster ein: die Heiler teilen das Triage während der Blockade.",
};

pack["25038"] = { "Teufelsruch",
	"* |cff71d5ff|Hspell:45717|h[Demonic Vapor]|h|r: der Dunst folgt einem Spieler: WEIT kite, nie am Gedränge der Bande.",
	"* |cff71d5ff|Hspell:45661|h[Encapsulate]|h|r: die Kapselhebung hebt einen Spieler: durch die Hebung hindurch heilen, er hängt in der Luft.",
	"* im Flug fegt der Atem wie ein Uhrzeiger: alle folgen dem Fegen in Bewegung.",
};

bos = { "Eredarzwillinge",
	"* die Zwillinge fallen fast im Gleichstand: EINE einzige am Leben stärkt die andere.",
	"* die große Stichflamme nimmt den Nächsten mit: Abstand zwischen den Markierungen.",
	"* die Schattennova trifft brutal auf der dunklen Seite: Heiler mit Schildern im Vorfeld am Schattentank.",
};
pack["25165"] = bos; pack["25166"] = bos;

pack["25741"] = { "M'uru",
	"* die Leerensentinel entstehen wellenweise: AoE und Zielwechsel gleich beim Landen.",
	"* die negative Energie pulst durch die ganze Halle: die Heiler schlagen das Tempo zwischen den Pulsen.",
	"* beim Zusammenbruch steigt Entropius an seiner Stelle: schwarze Löcher ausweichen und neu verbrennen.",
};

pack["25315"] = { "Kil'jaeden",
	"* |cff71d5ff|Hspell:45848|h[Darkness of a Thousand Souls]|h|r: die Dunkelheit von tausend Seelen ertränkt die GANZE Bande: Defensiven und Heilung aufs Maximum beim Abwurf.",
	"* die Schildorbe entstehen an den Pfeilern: die Fernkämpfer verbrennen sie, sonst fressen die Balken das Lager.",
	"* die Schattenstacheln detonieren wellenweise: verstreut außerhalb der Explosionsgassen.",
	"* die Kraftorbe steigen am Ende: mitnehmen, um die Balken zu reiten.",
};

-- --------------------------------- --
-- Magisters' Terrace : Zona 585 --
-- --------------------------------- --

pack["24723"] = { "Selin Feuerherz",
	"* der Felkanal zapft die Gruppe an: JEDE Unterbrechung bricht ihn, selbst ein Schlagregen.",
	"* die Zusätze sterben schnell: ihre Sprossen erhöhen seinen Schaden beim Drain.",
};

pack["24744"] = { "Vexallus",
	"* die Reinkraftorbe entstehen ringsum: JEDEN erlegen, bevor er sie erreicht, sonst schwillt er an.",
	"* die Entladung stapelt zum Ende hin: die Heiler geben der Bande das Tempo während des Sturms.",
};

pack["24560"] = { "Priesterin Delrissa",
	"* |cff71d5ff|Hspell:44141|h[Flash Heal]|h|r: IMMER unterbrechen — das Blitzheilen hält ihre Arena-Truppe am Leben.",
	"* die fünf Kämpfer spielen als Team: Kontrolle auf die Heiler, Burst auf ein Ziel, den Schaden NIEMALS verteilen.",
	"* der Krieger dreht auf die Nahkämpfer: die Nahkämpfer raus aus dem Wirbelfenster.",
};

pack["24664"] = { "Kael'thas Sonnenwanderer",
	"* |cff71d5ff|Hspell:44194|h[Fireball]|h|r: der Feuerball löscht den Markierten aus: Schilder im Vorfeld bei jedem Wurf.",
	"* der Schwerkraftzöger schleppt und hebt die Leute: niemand nahe den Rändern der Halle.",
	"* die Phönix entstehen und auferstehen aus ihrer Asche: AoE auf die Vögel, dann das Ei.",
	"* die Flammensalve verbrennt Bodenflächen: zum markierten Punkt rücken.",
};

-- --------------------------------- --
-- Zul'Aman : Zona 568 --
-- --------------------------------- --

pack["23574"] = { "Akil'zon",
	"* |cff71d5ff|Hspell:43648|h[Electrical Storm]|h|r: ALLE müssen unter den Sturm, sonst wird die Bande von außen gefressen.",
	"* die Adler häufen sich auf der Terrasse: AoE, bevor sie die Heiler jagen.",
};

pack["23576"] = { "Nalorakk",
	"* der brutale Schlitz clivt zwei Ziele: zwei Tanks teilen die Treffer, nie einer allein.",
	"* die Lawine fliegt auf den WEITESTEN: niemand verlässt den Bären.",
	"* das ohrenbetäubende Brüllen schaltet die Bande stumm: Schilder im Vorfeld, bevor es fällt.",
};

pack["23578"] = { "Jan'alai",
	"* |cff71d5ff|Hspell:43962|h[Hatch Eggs]|h|r: die Eier brechen, wenn er lodert: entweder ALLES brechen oder NICHTS — die AoE mit Bedacht einsetzen.",
	"* die Feuerbomben fallen rund um die Gruppe: verstreuen, BEVOR die Salve losgeht.",
	"* der Flammenatem fegt den Frontal: der Tank hält ihn weg von der Gruppe.",
};

pack["23577"] = { "Halazzi",
	"* der Geist trennt sich zweimal vom Luchs: beide zwischen den Strahlen tanken, die Phase schließt mit dem Luchs.",
	"* das Totem pulst seit der Ecke: es bei Sicht brechen, sonst hören die Strahlen nie auf.",
	"* der Flammenschlag fällt auf den Tank: schnell tilgen, sonst versinken die Heiler im Sumpf.",
};

pack["24239"] = { "Hexlord Malacrass",
	"* die Geisterorbe drainieren die GANZE Bande alle paar Sekunden: die Heiler schlagen das Tempo dazwischen.",
	"* der Geist eines Spielers schwebt im halben Kampf hinaus: erlegen, sonst füttert ihn der Drain.",
	"* der Heber klaut das Kit eines Spielers vor Ort: die Rotation anpassen, sobald er fällt.",
};

pack["23863"] = { "Zul'jin",
	"* die vier Formen rotieren: der Bär drischt, der Adler wirbelt Tornados, der Luchs zerfleischt den Tank und die letzte Form atmet Feuersäulen.",
	"* die Geister jagen unter dem Sturm: WEIT kite, sie verbrennen ihre Beute.",
	"* das Bodenfeuer folgt dem Atem der letzten Form: raus aus jeder markierten Säule.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["17711"] = { "Verdammniswandler",
	"* |cff71d5ff|Hspell:32686|h[Earthquake]|h|r: das Beben erschüttert die Zone: die Heiler halten die Bande voll während des Bebens.",
	"* der Ansturm schleudert den Tank weit: weit weg von Wänden und Gruben.",
};

pack["18728"] = { "Verdammnislord Kazzak",
	"* |cff71d5ff|Hspell:21063|h[Twisted Reflection]|h|r: das verdrehte Spiegelbild ist ein Fluch: tilgen, sonst heilt jeder Hieb ihn.",
	"* |cff71d5ff|Hspell:32964|h[Frenzy]|h|r: die Raserei hebt ihr Tempo: kite, bis sie vergeht.",
	"* die Marke des Verdammnisherrn zapft das Mana naher Caster: die Caster halten Abstand.",
};

P.de = de;