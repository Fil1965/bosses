--[[
 Bosses_BfA_de.lua
 Datos en DE del pack BfA. Tacticas reescritas a mano.
 2026-10 (tácticas reales del combate, a la par de _es y _en).
 Lo registra Bosses_BfA.lua, cargado después en el .toc.
 Los nombres de los hechizos se relocalizan por id en cada
 cliente (el texto entre corchetes queda de respaldo).
 Nombres: corpus del journal (nombres-jefe) + nombres del dueño.
 Espejo línea a línea de Bosses_BfA_en.lua.
 In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local de = {};
local pack = de;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Battle of Dazar'alor : Zona 2070 --
-- --------------------------------- --

bos = { "Ra'wani Kanae und Frida Eisenbalg",
	"* |cff71d5ff|Hspell:283573|h[Sacred Blade]|h|r: brutaler heiliger Streich am Tank — Tankwechsel und Defensiven nutzen.",
	"* |cff71d5ff|Hspell:283662|h[Call to Arms]|h|r: Verstärkung kommt: der Tank rupft sie von der Gruppe ab, getötet werden sie als Priorität.",
	"* |cff71d5ff|Hspell:283598|h[Wave of Light]|h|r: Lichtwellen ziehen quer durch den Raum: beim Durchzug ausweichen.",
	"* |cff71d5ff|Hspell:283933|h[Judgment: Righteousness]|h|r: heiliges Urteil auf markiertem Boden: raus aus dem Kreis.",
};
pack["144683"] = bos; pack["144680"] = bos;

bos = { "Konklave der Auserwählten",
	"* |cff71d5ff|Hspell:282444|h[Lacerating Claws]|h|r: wühlende Klauen am Tank: Tankwechsel und Defensiven nutzen.",
	"* |cff71d5ff|Hspell:285945|h[Hastening Winds]|h|r: eilende Winde stärken die feindlichen Caster: sie auswürgen.",
	"* |cff71d5ff|Hspell:282098|h[Gift of Wind]|h|r: IMMER unterbrechen — er heilt alle vier Konklavenmitglieder.",
	"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: in ihrer Geisterform sind sie unberührbar: alle gleichmäßig herunterbringen und gemeinsam beenden.",
};
pack["144747"] = bos; pack["144767"] = bos; pack["144963"] = bos; pack["144941"] = bos;

bos = { "Grong",
	"* |cff71d5ff|Hspell:285671|h[Crushed]|h|r: greift den Tank und zermalmt ihn mit steigendem Schaden: den Festgepackten maximal heilen.",
	"* |cff71d5ff|Hspell:285875|h[Rending Bite]|h|r: zerfleischender Biss am Tank: nach jedem Biss Tankwechsel.",
	"* |cff71d5ff|Hspell:289292|h[Throw]|h|r: das Ziel des Wurfs löst sich sofort von der Gruppe.",
	"* |cff71d5ff|Hspell:289307|h[Throw Target]|h|r: der Markierte läuft weit fort von der Gruppe; die Diener, die Grong kanalisiert, steigern seinen Schaden — Unterbrechen hat Priorität.",
};
pack["144638"] = bos; pack["144637"] = bos;

bos = { "Ma'ra Schreckenszahn und Anathos Flammenruf",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: aufsteigende Flammen auf dem Markierten: sich von der Gruppe entfernen, bis sie abklingen.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: Magmabomben am Boden: nie hineintreten.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: die Geister des Xuen greifen in Wellen an: sie als Priorität töten, sonst hufen sie sich auf.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: sobald der Schild erscheint, ihn brechen, sonst zieht sich das Duell hin.",
	"* Das Duo kämpft gemeinsam: die Ziele sorgfältig abwechseln und den Feuerschleim zwischen den Wellen beseitigen.",
};
pack["144691"] = bos; pack["144692"] = bos;

pack["145261"] = { "Opulenz",
	"* |cff71d5ff|Hspell:287037|h[Coin Sweep]|h|r: Münzfeger am Tank: bei jedem Feger Tankwechsel.",
	"* |cff71d5ff|Hspell:284798|h[Grossly Incandescent]|h|r: glühender Strahl auf dem Markierten: verteilen und die Linie genau beim Einschlag überqueren.",
	"* |cff71d5ff|Hspell:283507|h[Volatile Charge]|h|r: die flüchtige Ladung markiert zwei Spieler: verteilen, damit die Explosion niemanden streift.",
	"* |cff71d5ff|Hspell:289383|h[Chaotic Displacement]|h|r: die Verschiebungen tauschen Positionen im Fluge: Abstand untereinander halten.",
	"* Phase 1 im Schatzgewölbe: die Hand von In'Zashi und ihre belebten Schätze töten; der Goldfluch des Markierten wandert in der Nähe weiter — weg davon, sonst erbt man ihn.",
};

pack["145616"] = { "König Rastakhan",
	"* |cff71d5ff|Hspell:284831|h[Scorching Detonation]|h|r: sengende Detonation auf dem Markierten: verteilen, damit die Explosion allein steht.",
	"* |cff71d5ff|Hspell:288415|h[Caress of Death]|h|r: die Todesberührung stapelt Schaden auf der Gruppe: durchheilen — Phase 3 ist ein Wettrennen.",
	"* |cff71d5ff|Hspell:286742|h[Necrotic Smash]|h|r: kräftiger nekrotischer Schlag am Tank: Tankwechsel mit Defensiven.",
	"* Loa-Phasen: ab Phase 2 gesellt sich ein Loa an seine Seite (jedes Loa bringt ein anderes Kit) — das Loa als Priorität töten, bevor es zurück zum König geht.",
};

pack["144796"] = { "Hochtüftler Mekkadrill",
	"* |cff71d5ff|Hspell:286646|h[Giga-Volt Charge]|h|r: Gigavoltladung am Tank: Tankwechsel und beim Ablauf nie mit in die Gruppe tragen.",
	"* |cff71d5ff|Hspell:284168|h[Shrunk]|h|r: der Schrumpfstrahl markiert den Boden: den Strahl nie kreuzen, sonst wird man geschrumpft.",
	"* |cff71d5ff|Hspell:289699|h[Electroshock Amp]|h|r: Elektroschocks knallen im ganzen Raum: Abstand halten und dabei ausweichen.",
	"* |cff71d5ff|Hspell:287114|h[Mis Tele]|h|r: die Teleporte verlegen seine Position im Fluge: sich rasch neu positionieren.",
	"* Phasen: zuerst der Anzug mit den explodierenden Schafen, die man kiten muss (sie laden auf und platzen); fällt der Anzug, kämpft er zu Fuß; am Ende fliegt er mit Raketenrucksack/Hoverboard — in Bewegung bleiben.",
};

bos = { "Sturmwallblockade",
	"* |cff71d5ff|Hspell:285000|h[Kelp Wrapped]|h|r: der Tang umwickelt den Markierten: sofort befreien — die Umwicklung ertränkt.",
	"* |cff71d5ff|Hspell:284393|h[Translocate]|h|r: die Diener teleportieren sich fort: der Tank nimmt sie sofort wieder auf.",
	"* |cff71d5ff|Hspell:288205|h[Crackling Lightning]|h|r: Blitze fegen flächenweise durch den Raum: jedem Schlag ausweichen.",
	"* |cff71d5ff|Hspell:287995|h[Elec Shroud]|h|r: der elektrische Schleier des Schiffs: sein Gebiet nie kreuzen, solange er sich bewegt.",
	"* Schiffsduell: Phase 1 die Besatzung töten, die zustürmt; in Phase 2 entscheiden die Kanonen und die Meeresquallen — Priorität auf die Diener.",
};
pack["146251"] = bos; pack["146253"] = bos; pack["146256"] = bos;

pack["146409"] = { "Lady Jaina Prachtmeer",
	"* |cff71d5ff|Hspell:287993|h[Chilling Stack]|h|r: ihre Frostauren stapeln Schaden auf ALLE: die DPS-Regel der Phase — nie anwachsen lassen.",
	"* |cff71d5ff|Hspell:287565|h[Avalanche]|h|r: gewaltige Lawine am Tank: am Rand Tankwechsel und die Schadensspitze heilen.",
	"* |cff71d5ff|Hspell:285177|h[Freezing Blast]|h|r: der Frostschlag markiert ein Gebiet: raus daraus, sobald der Zauber heult.",
	"* |cff71d5ff|Hspell:285253|h[Ice Shard]|h|r: Eissplitter regnen auf den Kahn: den Einschlägen ausweichen.",
	"* Phasen: zuerst der Kahn mit den Bombardements; dann die Eisinsel mit der Frostaura, Lawinen und den Eiswänden, durch die man bricht; der Kampf ist ein Rennen gegen die Froststapel.",
};

bos = { "Manceroy Flammfaust und Mestrah",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: aufsteigende Flammen auf dem Markierten: sich von der Gruppe entfernen, bis sie abklingen.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: Magmabomben am Boden: nie hineintreten.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: die Geister des Xuen greifen in Wellen an: sie als Priorität töten, sonst hufen sie sich auf.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: sobald der Schild erscheint, ihn brechen, sonst zieht sich das Duell hin.",
	"* Das Duo kämpft gemeinsam: die Ziele sorgfältig abwechseln und den Feuerschleim zwischen den Wellen beseitigen.",
};
pack["144693"] = bos; pack["144690"] = bos;


-- --------------------------------- --
-- Crucible of Storms : Zona 2096 --
-- --------------------------------- --

bos = { "Die rastlose Kabale",
	"* |cff71d5ff|Hspell:282384|h[Shear Mind]|h|r: brutaler Geistesschnitt am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:282566|h[Power Stack]|h|r: jeder lebende Diener speist Kraft ins Ritual und STAPELT die Katastrophe: absolute Tötungspriorität.",
	"* |cff71d5ff|Hspell:282741|h[Umbral Shell]|h|r: die Schattenschale macht sie unberührbar, während das Ritual voranschreitet: das Schattenwerk töten, um sie zu brechen.",
	"* |cff71d5ff|Hspell:284772|h[Custody of the Deep]|h|r: der Gewahrsam markiert den Tank: der Markierte entfernt sich von der Gruppe, bis er ausläuft.",
	"* Zwei Priester gleichzeitig: die Ziele abwechseln, IMMER unterbrechen, was unterbrechbar ist, und die Ritualkraft nie anwachsen lassen.",
};
pack["144755"] = bos; pack["144754"] = bos;

pack["145371"] = { "Uu'nat, Vorbote der Leere",
	"* |cff71d5ff|Hspell:284851|h[Touch of the End]|h|r: Berührung des Endes am Tank, eine brutale Blutung: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:286310|h[Void Shield]|h|r: während des Schilds kommen die Relikte — der Boss nimmt keinen Schaden: die Relikte schnell töten.",
	"* |cff71d5ff|Hspell:284684|h[Void Relic]|h|r: das Leerenrelikt kanalisiert und muss IMMER sofort sterben.",
	"* |cff71d5ff|Hspell:284768|h[Ocean Relic]|h|r: das Ozeanrelikt füttert den Boss, wenn es überlebt: ebenfalls Priorität.",
};


-- --------------------------------- --
-- The Eternal Palace : Zona 2164 --
-- --------------------------------- --

pack["150653"] = { "Schwarzwasserungetüm",
	"* |cff71d5ff|Hspell:298424|h[Feeding Frenzy]|h|r: die Fressraserei stapelt am Tank: Tankwechsel und den Markierten maximal heilen.",
	"* |cff71d5ff|Hspell:292205|h[Bioluminescent Cloud]|h|r: die biolumineszente Wolke markiert den Boden: raus, sobald sie fällt.",
	"* |cff71d5ff|Hspell:292167|h[Toxic Spine]|h|r: Giftstacheln auf dem Markierten: sich von der Gruppe entfernen, bis sie abklingen.",
	"* |cff71d5ff|Hspell:301494|h[Piercing Barb]|h|r: der Stachel durchbohrt den Markierten hart: direkt nach dem Treffer heilen.",
	"* Der Kampf findet im Dunkeln statt: bei den beleuchteten Stellen bleiben und fern von den Kiefern; die Fressraserei kommt mit Dienern aus der Bodenfauna.",
};

pack["150859"] = { "Za'qul, Vorbote von Ny'alotha",
	"* |cff71d5ff|Hspell:292971|h[Hysteria]|h|r: die Hysterie stapelt Panik auf der Gruppe: durchheilen — nie anwachsen lassen.",
	"* |cff71d5ff|Hspell:300133|h[Snapped]|h|r: der Markierte dreht durch: wenn es sich löst, wenden sie sich GEGEN die Gruppe — sie unter Kontrolle halten und nicht im Melee töten.",
	"* |cff71d5ff|Hspell:292996|h[Maddening Eruption]|h|r: der Rasereiausbruch markiert Flächen: verteilen, wenn sie fallen.",
	"* |cff71d5ff|Hspell:292981|h[Disciple of N'Zoth]|h|r: die Jünger von N'Zoth kanalisieren den Wahnsinn: sie JETZT töten.",
	"* Phasen: der Alptraum verschlingt den Raum; in der dunklen Phase die Alptraumgeister töten, bevor sie Za'qul speisen.",
};

pack["151881"] = { "Abyssalkommandantin Sivara",
	"* |cff71d5ff|Hspell:300701|h[Rimefrost]|h|r: Rimefrost auf dem Markierten: auf die ANDERE Seite des Bosses wechseln, um ihn zu reinigen — Sivaras Tanz ist das Gesetz.",
	"* |cff71d5ff|Hspell:300705|h[Septic Taint]|h|r: die septische Ansteckung auf dem Markierten: zurück auf die andere Seite wechseln, um ihn zu reinigen.",
	"* |cff71d5ff|Hspell:294726|h[Chimeric Marks]|h|r: die Chimären-Markierungen fallen paarweise: jeder Getroffene wechselt, wenn er dran ist, ohne sich gegenseitig zu kreuzen.",
	"* |cff71d5ff|Hspell:295348|h[Overflowing Chill]|h|r: die überquellende Kälte trifft ein Gebiet: um den Boss herum verteilen.",
	"* In der letzten Phase fluten die Frost- und Infektionspfützen den Boden: der Wechseltanz entscheidet den Kampf.",
};

pack["152910"] = { "Königin Azshara",
	"* |cff71d5ff|Hspell:298569|h[Drained Soul]|h|r: die geschwächte Seele auf dem Markierten: ihn behutsam heilen, bis sie vorüber ist.",
	"* |cff71d5ff|Hspell:297937|h[Painful Memories]|h|r: die Schmerzhaften Erinnerungen markieren Flächen: verteilen und den Schaden niemals teilen.",
	"* |cff71d5ff|Hspell:298014|h[Cold Blast]|h|r: der Kälteschlag fegt in einem Kegel: niemals davor stehen.",
	"* |cff71d5ff|Hspell:302999|h[Arcane Vulnerability]|h|r: die arkane Verwundbarkeit markiert den Tank: danach jedes Mal Tankwechsel.",
	"* Phasen: die Diener des Hofes im Auge behalten, während die Königin straft, und Priorität auf die Wellen, die durchs Wasser kommen.",
};

pack["152128"] = { "Orgozoa",
	"* |cff71d5ff|Hspell:298156|h[Desensitizing Sting]|h|r: der abstumpfende Stich am Tank, steigender Schaden: Tankwechsel.",
	"* |cff71d5ff|Hspell:298306|h[Incubation Fluid]|h|r: die Inkubationsflüssigkeit reift im Markierten: die Jungen schlüpfen aus — sie weg vom Boss töten.",
	"* |cff71d5ff|Hspell:305057|h[Call of the Tender]|h|r: der Ruf bringt Diener: Priorität vor dem Boss.",
	"* |cff71d5ff|Hspell:295825|h[Arcing Current]|h|r: der Blitzbogen springt zwischen Spielern: verteilen.",
};

pack["152236"] = { "Lady Aschenwind",
	"* |cff71d5ff|Hspell:296725|h[Barnacle Bash]|h|r: der Entenmuschelhieb am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:297324|h[Bubble]|h|r: die Blasen fangen ein: die der Verbündeten sofort zerstören.",
	"* |cff71d5ff|Hspell:296650|h[Shield]|h|r: der Schild schützt sie: brechen, sonst stockt der Kampf.",
	"* |cff71d5ff|Hspell:298055|h[Upsurge]|h|r: die Flutwoge fegt über den Boden: beim Aufsteigen ausweichen.",
};

pack["152364"] = { "Azsharas Glanz",
	"* |cff71d5ff|Hspell:296566|h[Tide Fist]|h|r: die Gezeitenfaust am Tank: Tankwechsel.",
	"* |cff71d5ff|Hspell:296430|h[Arcanado Burst]|h|r: Arkanado-Ausbrüche am Boden: verteilen und sie niemals teilen.",
	"* |cff71d5ff|Hspell:296459|h[Squall Trap]|h|r: die Fallböen-Fallen fangen, wer sie betritt: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:296737|h[Arcane Bomb]|h|r: die arkanische Bombe platzt auf dem Markierten: verteilen, damit sie allein fällt.",
	"* Die Gezeitendiener kommen in Wellen: Priorität auf sie zwischen den Fallen und Bomben.",
};

bos = { "Der Hofstaat der Königin",
	"* |cff71d5ff|Hspell:301244|h[Repeat Performance]|h|r: die Darbietung wiederholt sich: die Duelle des Markierten treffen doppelt — verteilen.",
	"* |cff71d5ff|Hspell:297585|h[Obey or Suffer]|h|r: gehorchen oder leiden auf dem Markierten: tun, was das Duell verlangt, sonst geht die Strafe auf der Gruppe nieder.",
	"* |cff71d5ff|Hspell:244899|h[Silivaz Touch]|h|r: Silivaz' Berührung stapelt am Tank: bei beiden Duellanten Tankwechsel.",
	"* |cff71d5ff|Hspell:301828|h[Silivaz Touch]|h|r: der zweite Strang stapelt weiter: die Zählung beobachten und ohne Verzögerung wechseln.",
	"* Zwei Duellanten gleichzeitig: sie fast gemeinsam töten und den gestapelten Berührungsschaden an den Tanken im Zaum halten.",
};
pack["152852"] = bos; pack["152853"] = bos;


-- --------------------------------- --
-- Ny'alotha : Zona 2217 --
-- --------------------------------- --

pack["156523"] = { "Ma'ut",
	"* |cff71d5ff|Hspell:307399|h[Shadow Wounds]|h|r: Schattenwunden am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:307805|h[Devour Magic]|h|r: verschlingt die Magie des Markierten: Caster achten aufs Zauber-Timing.",
	"* |cff71d5ff|Hspell:315025|h[Ancient Curse]|h|r: der uralte Fluch platzt beim Ablauf: der Markierte löst sich von der Gruppe.",
	"* |cff71d5ff|Hspell:308044|h[Stygian Annihilation]|h|r: die stygische Vernichtung ist eine GROSSE Flächenbombe: verteilen, solange sie kanalisiert.",
	"* Die dunklen Akolythen, die er beschwört, speisen sein Ritual: sie vor dem wachsenden Bodenschaden als Priorität töten.",
};

pack["156575"] = { "Dunkle Inquisitorin Xanesh",
	"* |cff71d5ff|Hspell:311551|h[Abyssal Strike]|h|r: der Abyssalschlag schlägt in einem Gebiet ein: vom Einschlag weg verteilen.",
	"* |cff71d5ff|Hspell:314179|h[Fanaticism]|h|r: die fanatisierten Diener steigern ihren Schaden: sie JETZT töten.",
	"* |cff71d5ff|Hspell:312336|h[Void Ritual]|h|r: das Leerenritual schreitet voran, solange seine Obelisken leben: sie schnell töten.",
	"* |cff71d5ff|Hspell:306495|h[Summon Ritual Obelisk]|h|r: die Ritualobelisken fallen quer im Raum: absolute Priorität auf sie.",
};

pack["156818"] = { "Furorion, der Schwarze Imperator",
	"* |cff71d5ff|Hspell:306015|h[Searing Armor]|h|r: sengende Rüstung am Tank: nach jedem Stapel Tankwechsel.",
	"* |cff71d5ff|Hspell:306111|h[Incineration]|h|r: die Einäscherung markiert Feuerflächen: raus aus dem Kreis.",
	"* |cff71d5ff|Hspell:306289|h[Gale Blast]|h|r: der Wogenstoß schleudert weit fort: niemals am Raumrand stehen.",
	"* |cff71d5ff|Hspell:306735|h[Burning Cataclysm]|h|r: der brennende Kataklysmus bringt schweren Schaden in Flächen: dem Kreis ausweichen, während er fällt.",
};

pack["156866"] = { "Ra-den der Entweihte",
	"* |cff71d5ff|Hspell:306819|h[Nullifying Strike]|h|r: der entwirkende Streich leert den Tank: Tankwechsel und kräftig heilen.",
	"* |cff71d5ff|Hspell:306634|h[Unstable Void]|h|r: die instabile Leere springt auf den Markierten: sich von der Gruppe entfernen, solange man sie trägt.",
	"* |cff71d5ff|Hspell:313227|h[Decaying Wound]|h|r: die Verfallswunde stapelt auf dem Getroffenen: sie heilen, bevor sie platzt.",
	"* |cff71d5ff|Hspell:306091|h[Call Essence]|h|r: der Ruf bringt Dieneressenzen: sie töten, bevor sie die Gruppe erreichen.",
};

bos = { "Das Schwarmbewusstsein",
	"* |cff71d5ff|Hspell:307569|h[Dark Recon]|h|r: die dunkle Aufklärung trifft flächenweise ein: jedem Schlag ausweichen.",
	"* |cff71d5ff|Hspell:307213|h[Tek'riss Hive Control]|h|r: die Schwarmkontrolle schaltet den Markierten ab: die Verbündeten reißen ihn aus der Trance.",
	"* |cff71d5ff|Hspell:307201|h[Kaz'riss Hive Control]|h|r: die zweite Kontrolle bricht weiter die Willen: beide beobachten und schnell befreien.",
	"* |cff71d5ff|Hspell:313672|h[GTFO]|h|r: Pfützen auf dem Boden: sofort heraus.",
	"* Zwei Gemüter im Einklang: die Ziele abwechseln und die Schwarmdrohnen töten, wenn sie sich verdichten.",
};
pack["157253"] = bos; pack["157254"] = bos;

pack["157620"] = { "Der Prophet Skitra",
	"* |cff71d5ff|Hspell:308059|h[Shadow Shock]|h|r: Schattenschock am Tank: Tankwechsel.",
	"* |cff71d5ff|Hspell:307937|h[Shred Psyche]|h|r: die Psyche zerreißt den markierten Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:309687|h[Psychic Outburst]|h|r: der psychische Ausbruch markiert Flächen: verteilen.",
	"* |cff71d5ff|Hspell:313239|h[Images of Absolution]|h|r: die Scheingestalten des Propheten erscheinen: sie schnell töten — sie zersplittern den DPS-Fokus.",
};

pack["157231"] = { "Shad'har der Unersättliche",
	"* |cff71d5ff|Hspell:312328|h[Hunger]|h|r: sein Hunger wächst über die Zeit: die DPS-Regel — ihn schnell töten.",
	"* |cff71d5ff|Hspell:307471|h[Crush]|h|r: das Zermalmen am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:307472|h[Dissolve]|h|r: das Auflösen säuert den Boden: die Pfütze nie kreuzen.",
	"* |cff71d5ff|Hspell:306930|h[Entropic Breath]|h|r: der entropische Atem fegt in einem Kegel: aus dem Frontalbereich raus.",
};

pack["157354"] = { "Vexiona",
	"* |cff71d5ff|Hspell:306981|h[Gift of the Void]|h|r: die Gabe der Leere markiert wahllos: sich von der Gruppe entfernen, bis sie vorüber ist.",
	"* |cff71d5ff|Hspell:307729|h[Fanatical Ascension]|h|r: die fanatische Erhebung der Diener: IMMER unterbrechen.",
	"* |cff71d5ff|Hspell:307075|h[Power of the Chosen]|h|r: die Kraft der Auserwählten stärkt den Dienerschaden: sie töten, bevor sie sie verdienen.",
	"* |cff71d5ff|Hspell:307396|h[Spiteful Assault]|h|r: der boshaftige Angriff am Tank: Tankwechsel.",
	"* Der Drache und ihr Kult: die Leeren-Diener treiben das Geschehen — Priorität auf ihre Zauber zwischen den Phasen.",
};

pack["157439"] = { "Panzer von N'Zoth",
	"* |cff71d5ff|Hspell:315954|h[Black Scar]|h|r: die schwarze Narbe markiert Flächen: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:313334|h[Gift of N'Zoth]|h|r: die Gabe von N'Zoth fällt zur Seite: verteilen.",
	"* |cff71d5ff|Hspell:307831|h[Will Broken]|h|r: der Wille des Markierten zerbricht: ihn weit weg laufen lassen, sonst wendet er sich gegen euch.",
	"* |cff71d5ff|Hspell:307832|h[Servant of N'Zoth]|h|r: die Diener von N'Zoth schlagen auf die Verbündeten ein: sie unter Kontrolle halten, bis der Effekt vorüber ist.",
};

pack["157602"] = { "Drest'agath",
	"* |cff71d5ff|Hspell:310246|h[Void Grip]|h|r: der Leerengriff reißt die Gruppe zur Mitte: sich entfernen, solange er kanalisiert.",
	"* |cff71d5ff|Hspell:310563|h[Mutterings of Betrayal]|h|r: das Gemurmel des Verrats markiert Flächen: verteilen.",
	"* |cff71d5ff|Hspell:310277|h[Volatile Seed]|h|r: der flüchtige Same platzt auf dem Markierten: ihn allein fallen lassen, weg von der Gruppe.",
	"* |cff71d5ff|Hspell:310361|h[Unleashed Insanity]|h|r: die Diener der entfesselten Raserei kommen: sie JETZT töten.",
	"* Die Körperteile werfen weiter: die Ziele je nach Kanalisierung abwechseln und den Schleim beseitigen.",
};

pack["158041"] = { "N'Zoth der Verderber",
	"* |cff71d5ff|Hspell:313184|h[Synaptic Shock]|h|r: der synaptische Schock stapelt auf allen: nie anwachsen lassen.",
	"* |cff71d5ff|Hspell:316711|h[Mindwrack]|h|r: der Geistesfrevel am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:310184|h[Creeping Anguish]|h|r: die kriechende Angst markiert den Boden: raus aus den Flächen.",
	"* |cff71d5ff|Hspell:310042|h[Tumultuous Burst]|h|r: der wirre Ausbruch markiert wahllos: verteilen.",
	"* Die Psyche-Phasen: die Geistdiener töten, bevor sie den Verderber speisen, und den Boden zwischen den Wellen säubern.",
};

pack["158328"] = { "Il'gynoth, die Wiedergeborene Verderbnis",
	"* |cff71d5ff|Hspell:309961|h[Eye of N'Zoth]|h|r: das Auge von N'Zoth: es als Priorität töten, wann immer es erscheint.",
	"* |cff71d5ff|Hspell:311367|h[Touch of the Corruptor]|h|r: die Berührung des Verderbers am Tank: Tankwechsel.",
	"* |cff71d5ff|Hspell:315094|h[Fixate]|h|r: die Fixierung markiert: der Markierte läuft von der Gruppe fort.",
	"* |cff71d5ff|Hspell:310319|h[Corruptor's Gaze]|h|r: der Blick des Verderbers fegt über den Boden: raus aus seinen Flächen.",
	"* Die Verderbnis-Diener speisen das Auge: zwischen ihrem Tod und den Treffern aufs Auge abwechseln.",
};


-- --------------------------------- --
-- Uldir : Zona 1861 --
-- --------------------------------- --

pack["132998"] = { "G'huun",
	"* |cff71d5ff|Hspell:267412|h[Massive Smash]|h|r: brutaler Schlag am Tank und Schaden über die ganze Gruppe — Tankwechsel und die Gruppe heilen.",
	"* |cff71d5ff|Hspell:270447|h[Growing Corruption]|h|r: die Kugeln der Korruptionswelle hinterlassen wachsende Flecken — die Gruppe fernhalten.",
	"* |cff71d5ff|Hspell:272506|h[Explosive Corruption]|h|r: die Flecken detonieren irgendwann: zum Rand laufen, wenn die Kugel herankommt.",
	"* |cff71d5ff|Hspell:267409|h[Dark Bargain]|h|r: die Diener des Pakts sofort töten, sobald sie erscheinen.",
	"* Die Kernmechanik: Uldirs Pylone nutzen, um die Kugeln zurückzuschlagen; wenn die Plattform fällt, die Kriechende Korruption töten und den Reorganisationsstrahlen der letzten Phase ausweichen.",
};

pack["133298"] = { "Fauliger Verschlinger",
	"* |cff71d5ff|Hspell:262313|h[Malodorous Miasma]|h|r: frontaler Atem mit Miasma-Pfützen: der Tank zieht sie WEG von der Gruppe und tritt nie hinein.",
	"* |cff71d5ff|Hspell:262314|h[Putrid Paroxysm]|h|r: die Miasma-Pfützen platzen beim Betreten: den Boden sauber halten.",
	"* |cff71d5ff|Hspell:262277|h[Thrash]|h|r: er fegt die nächsten Spieler ab, die NICHT tanke: um ihn verteilen.",
	"* |cff71d5ff|Hspell:262378|h[Frenzy]|h|r: sein Schaden steigt — der Tank hält Defensiven bereit und die Heilung konzentriert sich auf ihn.",
};

pack["134442"] = { "Vectis",
	"* |cff71d5ff|Hspell:265127|h[Lingering Infection]|h|r: Infektion, die Schaden am Ziel stapelt: Heiler beobachten sie und die Larve rechtzeitig abwerfen.",
	"* |cff71d5ff|Hspell:265178|h[Evolving Affliction]|h|r: die schleichende Plage markiert Spieler paarweise: die Markierten entfernen sich von der Gruppe.",
	"* |cff71d5ff|Hspell:265212|h[Gestate]|h|r: pflanzt eine Larve ins Ziel: beim Schlüpfen sie weit weg von der Gruppe töten, bevor sie den Boss erreicht.",
	"* |cff71d5ff|Hspell:266926|h[Plague Bomb]|h|r: Seuchenbomben landen in Flächen: raus aus den grünen Flecken.",
};

pack["134546"] = { "Mythrax der Auflöser",
	"* |cff71d5ff|Hspell:274693|h[Essence Shear]|h|r: brutale Blutung am Tank, 20 s lang: der andere wechselt mit Defensiven ein.",
	"* |cff71d5ff|Hspell:272407|h[Oblivion Sphere]|h|r: öffnet die Schwelle des Vergessens und macht das Gebiet unverwundbar: zwischen den Wellen in die Ecken verteilen.",
	"* |cff71d5ff|Hspell:279157|h[Void Echoes]|h|r: Leerenechos rücken von den Wänden vor: sie töten, BEVOR sie die Schwelle erreichen.",
	"* |cff71d5ff|Hspell:273538|h[Obliteration Blast]|h|r: der Riesenstrahl kreist um seine Sphäre: außen herumlaufen.",
};

pack["134445"] = { "Zek'voz, Herold von N'Zoth",
	"* |cff71d5ff|Hspell:265264|h[Void Lash]|h|r: verketteter Leerenhieb am Tank (zwei Schläge): der andere wechselt mit Defensiven ein.",
	"* |cff71d5ff|Hspell:264382|h[Eye Beam]|h|r: ein Strahl, der von ihm aus Kreise zieht: mit der Rotation mitgehen, niemals davor stehen.",
	"* |cff71d5ff|Hspell:265360|h[Roiling Deceit]|h|r: wogender Trug auf dem Markierten: den Leerenschleim weg von der Gruppe hinterlassen.",
	"* Die Vernichtungssphären kanalisieren einen tödlichen Strahl auf die Gruppe: sie töten, sobald sie erscheinen, und ihre Linie nie kreuzen.",
};

pack["135452"] = { "MUTTER",
	"* |cff71d5ff|Hspell:267787|h[Sanitizing Strike]|h|r: chirurgischer Streich am Tank, und die Leere stiehlt seine Heilung: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:267945|h[Wind Tunnel]|h|r: frontaler Windkanal, der weit weg schleudert: niemals davor stehen.",
	"* |cff71d5ff|Hspell:274205|h[Depleted Energy]|h|r: nach der Säuberung ist MUTTER erschöpft: Moment, den Schaden rauszukitzeln.",
	"* |cff71d5ff|Hspell:268095|h[Cleansing Purge]|h|r: die Säuberung fegt den Raum mit Wellen von Reinigungsstrahlen aus der Tür: den Linien ausweichen — sie tun weh und reißen Buffs ab.",
};

pack["137119"] = { "Taloc",
	"* |cff71d5ff|Hspell:275205|h[Enlarged Heart]|h|r: das vergrößerte Herz trifft den Tank alle 10 s mit steigendem Schaden: ständige Heilung am Ziel und der andere wechselt ein.",
	"* |cff71d5ff|Hspell:271225|h[Plasma Discharge]|h|r: Plasma platzt in Bodenflächen: raus aus den Flecken, sobald sie fallen.",
	"* |cff71d5ff|Hspell:271965|h[Powering Down]|h|r: wenn er herunterfährt, den Verteidigungsboten und die flüchtige Schote töten, solange er euch nichts tun kann.",
	"* |cff71d5ff|Hspell:275270|h[Fixate]|h|r: die flüchtige Schote fixiert einen Spieler und platzt bei Ankunft: sie weg von der Gruppe zerren und töten.",
};

pack["138967"] = { "Der Wiedergeborene Zul",
	"* |cff71d5ff|Hspell:274358|h[Rupturing Blood]|h|r: das Blut des Tanks platzt beim Ablauf und hinterlässt eine Pfütze: Tankwechsel und die Pfütze weg von der Gruppe.",
	"* |cff71d5ff|Hspell:273361|h[Poolof Darkness]|h|r: Dunkelheitspfützen über den Boden: nie hineintreten.",
	"* |cff71d5ff|Hspell:273365|h[Dark Rev]|h|r: die dunkle Offenbarung fällt, wenn eine Kugel ankommt: die Leeren-Kugeln, die auf Zul zumarschieren, töten, bevor sie ihn berühren.",
	"* Phase 1 ohne Kugeln: heilen, verteilen und die Pfützen beseitigen; in Phase 2 rücken die Kugeln wellenweise von den Wänden vor und speisen die Offenbarung, wenn sie ankommen.",
};


-- --------------------------------- --
-- Atal'Dazar : Zona 1763 --
-- --------------------------------- --

pack["122967"] = { "Priesterin Alun'za",
	"* |cff71d5ff|Hspell:255579|h[Claws]|h|r: Klauen am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:255577|h[Transfusion]|h|r: IMMER unterbrechbar - sie heilt sich mit dem Blut des Markierten.",
	"* |cff71d5ff|Hspell:255582|h[Molten Gold]|h|r: das flüssige Gold markiert den Boden: es nie kreuzen.",
	"* |cff71d5ff|Hspell:259205|h[Spirits of Gold]|h|r: die goldenen Geister zuerst: sie töten, bevor der Boss dran ist.",
};

pack["122965"] = { "Vol'kaal",
	"* |cff71d5ff|Hspell:250190|h[Totems Left]|h|r: die Totems kanalisieren, solange sie leben: jedes, das fällt, JETZT zerschmettern.",
	"* |cff71d5ff|Hspell:250258|h[Leap]|h|r: er springt und zerschmettert ein Gebiet: vom Einschlag weg.",
	"* |cff71d5ff|Hspell:259572|h[Noxious Stench]|h|r: IMMER unterbrechbar.",
	"* |cff71d5ff|Hspell:250585|h[GTFO]|h|r: Pfützen auf dem Boden: sofort heraus.",
};

pack["122963"] = { "Rezan",
	"* |cff71d5ff|Hspell:257407|h[Pursuit]|h|r: er jagt einen Spieler: der Gejagte läuft abseits der Gruppe; ihn niemals kreuzen oder betäuben.",
	"* |cff71d5ff|Hspell:255434|h[Teeth]|h|r: die Zähne beißen hart in den Tank: Tankwechsel und Defensiven nutzen.",
	"* |cff71d5ff|Hspell:255371|h[Fear]|h|r: die Furcht platzt in einem Gebiet: der Markierte entfernt sich von der Gruppe.",
	"* |cff71d5ff|Hspell:260683|h[Bone Quake]|h|r: das Knochenbeben bringt Adds: sie töten.",
};

pack["122968"] = { "Yazma",
	"* |cff71d5ff|Hspell:259187|h[Soul Rend]|h|r: der Seelenriss markiert wahllos: verteilen.",
	"* |cff71d5ff|Hspell:250096|h[Wracking Pain]|h|r: der Quälschmerz stapelt am Markierten: ihn heilen, während er wächst.",
	"* |cff71d5ff|Hspell:249919|h[Skewer]|h|r: der Spieß am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:250050|h[Echoes]|h|r: die Echos hinterlassen Pfützen am Boden: heraus.",
};


-- --------------------------------- --
-- Freehold : Zona 1754 --
-- --------------------------------- --

pack["126832"] = { "Himmelskäpt'n Kragg",
	"* |cff71d5ff|Hspell:256005|h[Vile Bombardment]|h|r: das Bombardement fällt auf Flächen: jedem Einschlag ausweichen.",
	"* |cff71d5ff|Hspell:256106|h[Powder Shot]|h|r: der Pulverschuss trifft in einem Kegel: niemals davor stehen.",
	"* |cff71d5ff|Hspell:255952|h[Charge]|h|r: er stürmt eine Linie entlang: das Ziel tritt beiseite.",
	"* |cff71d5ff|Hspell:272046|h[Dive Bomb]|h|r: er stürzt auf sein markiertes Gebiet: raus aus dem Kreis.",
};

bos = { "Das Kapitänskomitee",
	"* |cff71d5ff|Hspell:265088|h[Good Brew]|h|r: das gute Gebräu hinterlässt eine sichere Pfütze: hineinstellen und Gegner draußen halten.",
	"* |cff71d5ff|Hspell:265168|h[Caustic Brew]|h|r: das ätzende Gebräu verbrennt: es nie kreuzen.",
	"* |cff71d5ff|Hspell:278467|h[Caustic Brew On Boss]|h|r: das Gebräu landet am Boss selbst: von seinen Spritzern weg.",
	"* |cff71d5ff|Hspell:257117|h[Lucky Sevens]|h|r: die Würfelwürfe treffen den Markierten in einem Gebiet: verteilen.",
};
pack["126845"] = bos; pack["126847"] = bos; pack["126848"] = bos;

pack["126969"] = { "Ring der Beute",
	"* |cff71d5ff|Hspell:256358|h[Shark Toss]|h|r: der Hai schlägt flächenweise zu: dem Hieb ausweichen.",
	"* |cff71d5ff|Hspell:257829|h[Greasy]|h|r: der Boden wird fettig und rutschig: vorsichtig beim Kiten des Hais.",
	"* |cff71d5ff|Hspell:256489|h[Rearm]|h|r: die Kanone lädt nach: beim Feuern von ihrem Schwenk weg.",
	"* |cff71d5ff|Hspell:256405|h[Sharknado]|h|r: der Haifornado fegt durch den Ring: WEG von ihm.",
};

pack["126983"] = { "Harlan der Schmierige",
	"* |cff71d5ff|Hspell:257314|h[Black Powder]|h|r: die Pulverbomben platzen in Flächen: von jeder Explosion weg.",
	"* |cff71d5ff|Hspell:257305|h[Cannon Barrage]|h|r: das Zerstörungsfeuer fegt in Linien über den Boden: ihnen ausweichen.",
	"* |cff71d5ff|Hspell:413131|h[Whirling Dagger]|h|r: der Dolchdrall kreist um ihn: ihn nie kreuzen.",
	"* |cff71d5ff|Hspell:257278|h[Swiftwind Saber]|h|r: der Windklingensäbel trifft den Tank: Tankwechsel mit Defensiven.",
};


-- --------------------------------- --
-- Kings' Rest : Zona 1762 --
-- --------------------------------- --

pack["135322"] = { "Die Goldschlange",
	"* |cff71d5ff|Hspell:265773|h[Spit Gold]|h|r: der Goldspeichel landet in Flächen: aus dem Spritzbereich raus.",
	"* |cff71d5ff|Hspell:265910|h[Tail Thrash]|h|r: der Schwanzpeitscher trifft den Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:265923|h[Lucre Call]|h|r: der Ruf bringt goldene Adds: sie als Priorität töten.",
	"* |cff71d5ff|Hspell:1311987|h[Serpentine]|h|r: die Serpentine springt über den Boden: ihre Bahn im Auge behalten.",
};

bos = { "Der Rat der Stämme",
	"* |cff71d5ff|Hspell:266206|h[Whirling Axes]|h|r: die wirbelnden Äxte fegen über den Boden: ihnen ausweichen.",
	"* |cff71d5ff|Hspell:267494|h[Barrel Through]|h|r: der Fassangriff ist GETEILTER Schaden: mindestens zwei soaken ihn zusammen.",
	"* |cff71d5ff|Hspell:266237|h[Debilitating Backhand]|h|r: die Schwächende Hand erreicht ihr markiertes Ziel: weit weg laufen.",
	"* |cff71d5ff|Hspell:267273|h[Poison Nova]|h|r: die Giftnova: IMMER unterbrechbar.",
};
pack["135475"] = bos; pack["135470"] = bos; pack["135472"] = bos;

pack["134993"] = { "Mchimba der Balsamierer",
	"* |cff71d5ff|Hspell:267618|h[Drain Fluids]|h|r: das Abzapfen markiert Flächen und saugt Leben: den Markierten sofort heilen.",
	"* |cff71d5ff|Hspell:267639|h[Burn Corruption]|h|r: die Brandkorruption brennt in ihrem Gebiet: von den Flammen weg.",
	"* |cff71d5ff|Hspell:267702|h[Entomb]|h|r: DIE EINMAUERUNG - sie versiegelt einen Spieler in einer Mumie: die Gruppe zerbricht die Gruft sofort.",
	"* |cff71d5ff|Hspell:1312146|h[Awakening Slam]|h|r: der Erweckungsschlag: schwerer AoE - die Gruppe nach dem Treffer heilen.",
};

pack["136160"] = { "Dazar, der erste König",
	"* |cff71d5ff|Hspell:1303115|h[Aerial Smash]|h|r: der Lufthieb markiert Flächen: dem Kreis ausweichen, während er fällt.",
	"* |cff71d5ff|Hspell:269230|h[Hunting Leap]|h|r: er springt auf den Markierten: das Ziel entfernt sich von der Gruppe.",
	"* |cff71d5ff|Hspell:1303488|h[Savage Maul]|h|r: der wilde Prügelhieb trifft in einem Gebiet: die Gruppe heilen.",
	"* |cff71d5ff|Hspell:268586|h[Blade Combo]|h|r: die Klingenkombo verkettet schnell am Tank: Tankwechsel OHNE Verzögerung.",
};


-- --------------------------------- --
-- Operation: Mechagon : Zona 2097 --
-- --------------------------------- --

bos = { "Prügelpanzer",
	"* |cff71d5ff|Hspell:1216443|h[Electrical Storm]|h|r: der Elektrosturm markiert Flächen: heraus.",
	"* |cff71d5ff|Hspell:282801|h[Plating Cast]|h|r: die Panzerplatte des Tonks steigt: sie mit stetigem Schaden zerschießen.",
	"* |cff71d5ff|Hspell:1215065|h[Platinum Pummel]|h|r: die Hammerschläge am Tank: Tankwechsel.",
	"* |cff71d5ff|Hspell:1215102|h[Ground Pound]|h|r: der Bodenschlag: schwerer AoE - die Gruppe heilen.",
};
pack["144244"] = bos; pack["145185"] = bos;

pack["144246"] = { "K.U.-J.0.",
	"* |cff71d5ff|Hspell:294929|h[Blazing Chomp]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:291930|h[Air Drop]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:291972|h[Explosive Leap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:291946|h[Venting Flames]|h|r: Vorsicht.",
};

pack["144248"] = { "Der Garten des Maschinisten",
	"* |cff71d5ff|Hspell:285454|h[Discom Bomb]|h|r: die Disco-Bombe platzt in ihrem Radius: raus aus dem Kreis.",
	"* |cff71d5ff|Hspell:294954|h[Self Trimming Hedge]|h|r: die Hecke schneidet sich selbst und rollt: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:294853|h[Plant]|h|r: die Pflanzen wachsen durch den Garten: sie töten, bevor sie blühen.",
	"* |cff71d5ff|Hspell:285440|h[Flame Cannon]|h|r: die Flammenkanone: AoE - die Gruppe heilen.",
};

bos = { "König Mechagon",
	"* |cff71d5ff|Hspell:291928|h[Mega Zap]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:291865|h[Recalibrate]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:291626|h[Cutting Beam]|h|r: Vorsicht.",
	"* |cff71d5ff|Hspell:283143|h[Magneto Arm Soon]|h|r: Vorsicht.",
};
pack["150396"] = bos; pack["144249"] = bos; pack["150397"] = bos;

pack["150159"] = { "König Gobbamak",
	"* |cff71d5ff|Hspell:297257|h[Electrical Charge]|h|r: die elektrische Ladung markiert: verteilen.",
	"* |cff71d5ff|Hspell:297254|h[Charged Smash]|h|r: der Schlag ist GETEILT: mindestens zwei soaken ihn.",
	"* |cff71d5ff|Hspell:297261|h[Rumble]|h|r: das Erdwogen trifft in einem Gebiet: die Gruppe heilen.",
};

pack["150190"] = { "Fliegende Unterdrückungseinheit JK-8",
	"* |cff71d5ff|Hspell:301351|h[Reinforcement Relay]|h|r: das Relais bringt Verstärkung: sie JETZT töten.",
	"* |cff71d5ff|Hspell:302274|h[Fulminating Zap]|h|r: der Blitzschlag trifft die Nahen: verteilen.",
	"* |cff71d5ff|Hspell:295536|h[Cannon Blast]|h|r: der Kanonenschlag markiert ein Gebiet: raus aus dem Kreis.",
	"* |cff71d5ff|Hspell:302279|h[Wreck]|h|r: der Vernichtungsschlag am Tank: Tankwechsel mit Defensiven.",
};

pack["150222"] = { "Schmierer",
	"* |cff71d5ff|Hspell:298259|h[Gooped]|h|r: der Schleim markiert das Ziel: Abstand zur Gruppe.",
	"* |cff71d5ff|Hspell:297985|h[Splatter]|h|r: die Kleckse markieren den Boden: es nie kreuzen.",
	"* |cff71d5ff|Hspell:297834|h[Toxic Wave]|h|r: die Giftwelle schwappt: ihr ausweichen.",
	"* |cff71d5ff|Hspell:297913|h[Toxic Goop Dispel]|h|r: der Schleim wandert WEITER, bevor man ihn reinigt - ihn zusammen zu reinigen hinterlässt eine Pfütze.",
};

bos = { "Trixie und Naeno",
	"* |cff71d5ff|Hspell:298940|h[Bolt Buster]|h|r: der Bolzenzerbrecher springt auf die Gruppe: Vorsicht mit der Entladung.",
	"* |cff71d5ff|Hspell:302682|h[Mega Taze]|h|r: der Mega-Stromstoß am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:298897|h[Jump Start]|h|r: die Starthilfe lädt ihre Kraft auf: IMMER unterbrechen.",
	"* |cff71d5ff|Hspell:298669|h[Taze]|h|r: der Stromstoß: IMMER unterbrechbar.",
};
pack["153755"] = bos; pack["150712"] = bos;


-- --------------------------------- --
-- Shrine of the Storm : Zona 1864 --
-- --------------------------------- --

pack["134056"] = { "Aqu'sirr",
	"* |cff71d5ff|Hspell:264144|h[Undertow]|h|r: der Sog reißt die Gruppe zur Mitte: sich entfernen, solange er zaubert.",
	"* |cff71d5ff|Hspell:264560|h[Choking Brine]|h|r: die Sole würgt in ihrem Gebiet: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:264903|h[Erupting Waters]|h|r: die aufwallenden Wasser: aus jeder Blase raus.",
	"* |cff71d5ff|Hspell:264101|h[Surging Rush]|h|r: der Schwall läuft in einer Linie: ihn nie kreuzen.",
};

bos = { "Der Gezeitenrat",
	"* |cff71d5ff|Hspell:267901|h[Blessing of Ironsides]|h|r: der Segen panzert den Weisen: ihn mit stetigem Schaden zerschießen.",
	"* |cff71d5ff|Hspell:267830|h[Blessing of Tempest]|h|r: der Sturmsegen steigert seinen Schaden: ihn auswürgen.",
	"* |cff71d5ff|Hspell:267891|h[Swiftness Ward]|h|r: der Schnellheitsschutz beschleunigt seinen Zauber: ihn JETZT töten.",
	"* |cff71d5ff|Hspell:267818|h[Slicing Blast]|h|r: der schneidende Schwall: IMMER unterbrechbar.",
};
pack["134063"] = bos; pack["134058"] = bos;

pack["134060"] = { "Lord Sturmsang",
	"* |cff71d5ff|Hspell:268347|h[Void Bolt]|h|r: der Leerenblitz: IMMER unterbrechbar.",
	"* |cff71d5ff|Hspell:268896|h[Mind Rend]|h|r: der Geistenspalter markiert: vom Markierten weg verteilen.",
	"* |cff71d5ff|Hspell:269097|h[Wake the Void]|h|r: die erweckte Leere markiert Flächen: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:269131|h[Ancient Mindbender]|h|r: der Geistlenker BEHERRSCHT den Markierten: die Verbündeten reißen ihn daraus.",
};

pack["134069"] = { "Vol'zith der Flüsterer",
	"* |cff71d5ff|Hspell:267299|h[Call the Abyss]|h|r: der Ruf des Abgrunds bringt Tentakel: sie als Priorität töten.",
	"* |cff71d5ff|Hspell:267385|h[Tentacle Slam]|h|r: der Tentakelschlag markiert Flächen: ausweichen.",
	"* |cff71d5ff|Hspell:269399|h[Yawning Gate]|h|r: das gähnende Tor saugt an und schleudert fort: WEG aus seinem Radius.",
	"* |cff71d5ff|Hspell:267360|h[Grasp]|h|r: der Griff packt den Markierten: ihn sofort heilen.",
};


-- --------------------------------- --
-- Siege of Boralus : Zona 1822 --
-- --------------------------------- --

pack["130834"] = { "Sergeant Bainbridge",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: der Haken zieht seinen Markierten zum Boss: ihn sofort heilen.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: der Fleischhaken stapelt am Markierten: laufende Heilung.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: der Eisenhaken am Tank: Tankwechsel.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: der Eisenblick markiert ein Gebiet: verteilen.",
};

pack["128650"] = { "Rothaken der Häcksler",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: der Haken zieht seinen Markierten zum Boss: ihn sofort heilen.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: der Fleischhaken stapelt am Markierten: laufende Heilung.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: der Eisenhaken am Tank: Tankwechsel.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: der Eisenblick markiert ein Gebiet: verteilen.",
};

pack["128651"] = { "Hadal Dunkelgrund",
	"* |cff71d5ff|Hspell:261563|h[Crashing Tide]|h|r: die Brandungsflut schwappt in Flächen: jeder Welle ausweichen.",
	"* |cff71d5ff|Hspell:257882|h[Break Water]|h|r: der Wellenbrecher markiert den Boden: raus aus seinem Radius.",
	"* |cff71d5ff|Hspell:276068|h[Tidal Surge]|h|r: die Flut wächst quer durch den Raum: vor der steigenden Kante bleiben.",
};

pack["120553"] = { "Viq'Goth",
	"* |cff71d5ff|Hspell:275014|h[Putrid Waters]|h|r: die fauligen Wasser fluten den Boden: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:269366|h[Repair]|h|r: die Reparatur des Kanoniers: IMMER unterbrechbar.",
	"* |cff71d5ff|Hspell:269456|h[Eradication]|h|r: die Auslöschung fegt über die Gruppe: verteilen.",
	"* |cff71d5ff|Hspell:270185|h[Call of the Deep]|h|r: der Ruf der Tiefe bringt Adds: sie töten.",
};

pack["129208"] = { "Schreckenskapitänin Luebke",
	"* |cff71d5ff|Hspell:269029|h[Clear the Deck]|h|r: sie räumt das Deck mit Kanonen über Flächen ab: ihnen ausweichen.",
	"* |cff71d5ff|Hspell:268260|h[Broadside]|h|r: die Breitseite fegt eine Seite: rechtzeitig die Seite wechseln.",
	"* |cff71d5ff|Hspell:268752|h[Withdraw]|h|r: sie zieht sich zum Zauber zurück: Priorität auf die Wachen, die sie zurücklässt.",
	"* |cff71d5ff|Hspell:268230|h[Crimson Swipe]|h|r: der purpurrote Hieb am Tank: Tankwechsel.",
};


-- --------------------------------- --
-- Temple of Sethraliss : Zona 1877 --
-- --------------------------------- --

bos = { "Adderis und Aspix",
	"* |cff71d5ff|Hspell:1288049|h[Thunder and Lightning]|h|r: der Donnerblitz wird GETEILT: mindestens zwei soaken ihn zusammen.",
	"* |cff71d5ff|Hspell:1311804|h[Overload]|h|r: die Überladung am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:1311805|h[Tempest Winds]|h|r: die Sturmwinde drücken durch den Raum: vorsichtig an der Kante.",
	"* |cff71d5ff|Hspell:1289059|h[Gale Force]|h|r: der Böenstoß fegt in Flächen: ihm ausweichen.",
};
pack["133379"] = bos; pack["133944"] = bos;

pack["133384"] = { "Merektha",
	"* |cff71d5ff|Hspell:264172|h[Burrow]|h|r: sie gräbt sich ein und taucht aufgeladen auf: vorsichtig, wenn sie hochkommt.",
	"* |cff71d5ff|Hspell:1290029|h[Knot of Snakes]|h|r: das Schlangenknäuel attackiert im Haufen: es töten, bevor es sich schlingt.",
	"* |cff71d5ff|Hspell:1289109|h[Thunderspit]|h|r: der Donnerspeichel landet auf dem Markierten: sofort von der Gruppe weg.",
	"* |cff71d5ff|Hspell:1289205|h[Hatch]|h|r: die Eier schlüpfen: die Brut töten, sobald sie erscheint.",
};

pack["133389"] = { "Galvazzt",
	"* |cff71d5ff|Hspell:266923|h[Galvanize]|h|r: die Galvanisierung steigert seinen Schaden: die Ladungen im Zaum halten, bis er stirbt.",
	"* |cff71d5ff|Hspell:1309525|h[Induction]|h|r: die Induktion trifft in einem Gebiet: die Gruppe heilen.",
	"* |cff71d5ff|Hspell:1291618|h[Lightning Spire]|h|r: der Blitzspieß: SOAK — mindestens zwei nehmen ihn.",
	"* |cff71d5ff|Hspell:266511|h[Capacitance]|h|r: die Kapazität markiert den Boden: sie nie kreuzen.",
};

pack["133392"] = { "Avatar von Sethraliss",
	"* |cff71d5ff|Hspell:1301963|h[Cleansed]|h|r: die Gesäuberten bleiben markiert: vorsichtig mit ihren Bewegungen.",
	"* |cff71d5ff|Hspell:1301202|h[Defiling Taint]|h|r: die Besudelung markiert den Boden: raus aus den Flecken.",
	"* |cff71d5ff|Hspell:273677|h[Taint]|h|r: die Ansteckung am Markierten: von der Gruppe weg, bis sie ausläuft.",
	"* |cff71d5ff|Hspell:268024|h[Pulse]|h|r: der Puls trifft in einem Gebiet: die Gruppe heilen.",
};


-- --------------------------------- --
-- The MOTHERLODE!! : Zona 1594 --
-- --------------------------------- --

pack["129214"] = { "Münzbetriebener Meuteverprügler",
	"* |cff71d5ff|Hspell:271784|h[Throw Coins]|h|r: die Münzwürfe landen in Flächen: ausweichen.",
	"* |cff71d5ff|Hspell:269493|h[Footbomb Launcher]|h|r: der Fußbombenwerfer markiert den Boden: raus aus dem Radius.",
	"* |cff71d5ff|Hspell:271903|h[Coin Magnet]|h|r: der Magnet zieht Münzen an, die platzen: seine Feuerlinie nie kreuzen.",
	"* |cff71d5ff|Hspell:262347|h[Static Pulse]|h|r: der Statikpuls markiert in einem Gebiet: verteilen.",
};

pack["129227"] = { "Azerokk",
	"* |cff71d5ff|Hspell:257582|h[Raging Gaze]|h|r: der rasende Blick markiert wahllos: der Markierte geht beiseite.",
	"* |cff71d5ff|Hspell:258622|h[Pulse]|h|r: der Puls trifft die Gruppe in einem Gebiet: heilen.",
	"* |cff71d5ff|Hspell:257593|h[Call Earth Rager]|h|r: die Erdrager kommen: sie JETZT töten (solange sie leben, stapeln sie Schaden auf den Boss).",
	"* |cff71d5ff|Hspell:271698|h[Infusion]|h|r: die Infusion speist die Rager: den Zauber IMMER unterbrechen.",
};

pack["129231"] = { "Rixxa Fluxflamme",
	"* |cff71d5ff|Hspell:259022|h[Azerite Catalyst]|h|r: der Katalysator pumpt sie auf: ihn töten, bevor er wächst.",
	"* |cff71d5ff|Hspell:259940|h[Propellant Blast]|h|r: der Treibmittelschuss markiert das Ziel: beim Zauber weglaufen.",
	"* |cff71d5ff|Hspell:259853|h[Chem Burn]|h|r: die Chemiebrands stapeln am Markierten: laufende Heilung.",
};

bos = { "Mogul Ratztunk",
	"* |cff71d5ff|Hspell:260189|h[Drill]|h|r: der Bohrer rast im Karussell: mit dem Kreisel mitlaufen, ihn nie kreuzen.",
	"* |cff71d5ff|Hspell:262515|h[Heartseeker]|h|r: der Herzenssucher markiert sein Ziel: beim Zauber von der Gruppe weg.",
	"* |cff71d5ff|Hspell:260811|h[Homing Missile]|h|r: die Raketen folgen dem Markierten: von der Gruppe weg und die Treffer einstecken.",
	"* |cff71d5ff|Hspell:271456|h[Drill Smash]|h|r: der Bohrschlag: AoE - die Gruppe heilen.",
};
pack["129232"] = bos; pack["132713"] = bos;


-- --------------------------------- --
-- The Underrot : Zona 1841 --
-- --------------------------------- --

pack["131318"] = { "Älteste Leaxa",
	"* |cff71d5ff|Hspell:260879|h[Blood Bolt]|h|r: der Blutblitz: IMMER unterbrechbar.",
	"* |cff71d5ff|Hspell:260894|h[Creeping Rot]|h|r: die kriechende Fäule krabbelt über den Boden: raus aus den Flecken.",
	"* |cff71d5ff|Hspell:264757|h[Sanguine Feast]|h|r: das blutige Festmahl markiert den Boden: raus aus seinem Radius, wenn es fällt.",
};

pack["131383"] = { "Sporenrufer Zancha",
	"* |cff71d5ff|Hspell:272457|h[Shockwave]|h|r: die Schockwelle trifft frontal: den Boss von der Gruppe wegdrehen.",
	"* |cff71d5ff|Hspell:259718|h[Upheaval]|h|r: die Erdhebung markiert Flächen am Boden: heraus.",
	"* |cff71d5ff|Hspell:273271|h[Volatile Pods]|h|r: die flüchtigen Hülsen platzen: sie SOFORT töten.",
	"* |cff71d5ff|Hspell:259732|h[Festering Harvest]|h|r: die eiternde Ernte bringt Sporen: vorsichtig bei denen, die nahe der Gruppe landen.",
};

pack["131817"] = { "Felsschlund der Befallene",
	"* |cff71d5ff|Hspell:260793|h[Indigestion]|h|r: die Verdauungsstörung platzt in ihrem Radius: das Melee verlässt beim Zauber den Kreis.",
	"* |cff71d5ff|Hspell:260292|h[Charge]|h|r: er stürmt auf eine Linie zum Markierten: seine Bahn nie kreuzen.",
	"* |cff71d5ff|Hspell:260333|h[Tantrum]|h|r: der Tobsuchtsanfall trifft in einem Gebiet: die Gruppe heilen.",
};

pack["133007"] = { "Entfesselte Monstrosität",
	"* |cff71d5ff|Hspell:269692|h[Visage]|h|r: die Fratze markiert das Ziel: beim Zauber von der Gruppe weg.",
	"* |cff71d5ff|Hspell:269843|h[Vile Expulsion]|h|r: die üble Ausstoßung hinterlässt Flächen: ihnen beim Fallen ausweichen.",
	"* |cff71d5ff|Hspell:269310|h[Cleansing Light]|h|r: das Licht reinigt den Korridor in Etappen: rechtzeitig von Etappe zu Etappe rücken.",
	"* |cff71d5ff|Hspell:269838|h[GTFO]|h|r: Pfützen auf dem Boden: sofort heraus.",
};


-- --------------------------------- --
-- Tol Dagor : Zona 1771 --
-- --------------------------------- --

pack["127479"] = { "Die Sandkönigin",
	"* |cff71d5ff|Hspell:257617|h[Upheaval]|h|r: die Erdhebung markiert Flächen am Boden: heraus.",
	"* |cff71d5ff|Hspell:257092|h[Sand Trap]|h|r: die Sandfallen verschlingen: niemals im sich schließenden Kreis stehen.",
	"* |cff71d5ff|Hspell:257495|h[Sandstorm]|h|r: der Sandsturm trifft in einem Gebiet: die Gruppe heilen.",
};

pack["127484"] = { "Jes Knurris",
	"* |cff71d5ff|Hspell:257793|h[Smoke Powder]|h|r: das Rauchpulver verdüstert: vorsichtig mit seinen Hieben durch den Dunst.",
	"* |cff71d5ff|Hspell:257827|h[Motivating Cry]|h|r: der Anruf stählt die Häftlinge: sie JETZT töten.",
	"* |cff71d5ff|Hspell:260067|h[Vicious Mauling]|h|r: die blutige Zerfleischung am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:257777|h[Crip Shiv]|h|r: der Dolchstich verkrüppelt den Markierten: ihn sofort heilen.",
};

pack["127490"] = { "Kürassier Valyri",
	"* |cff71d5ff|Hspell:256955|h[Cinderflame]|h|r: die Funkenflamme hinterlässt Pfützen am Boden: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:257028|h[Fuselighter]|h|r: der Zünder markiert das Ziel: beim Zauber weit von der Gruppe weg.",
	"* |cff71d5ff|Hspell:256970|h[Ignition]|h|r: die Entzündung platzt am Ende des Zaubers: dem markierten Radius ausweichen.",
};

pack["127503"] = { "Aufseher Korgus",
	"* |cff71d5ff|Hspell:256199|h[AZBlast]|h|r: der Azeritschlag markiert ein Gebiet: raus aus dem Radius.",
	"* |cff71d5ff|Hspell:256198|h[AZIncendiary]|h|r: die Brandsätze folgen dem Markierten: von der Gruppe weglaufen, wenn der Dot auf euch ist.",
	"* |cff71d5ff|Hspell:256038|h[Deadeye]|h|r: der Weitschütze zielt und feuert: der Markierte tritt seitlich aus dem Schuss.",
	"* |cff71d5ff|Hspell:256105|h[Explosive Burst]|h|r: die Explosionswelle platzt beim Ablauf: den Markierten heilen, bevor sie hochgeht.",
};


-- --------------------------------- --
-- Waycrest Manor : Zona 1862 --
-- --------------------------------- --

bos = { "Herzbanntriade",
	"* |cff71d5ff|Hspell:260741|h[Jagged Nettles]|h|r: die Brennnesseln stapeln am Markierten: den Debuff nicht teilen.",
	"* |cff71d5ff|Hspell:260703|h[Unstable Mark]|h|r: das instabile Mal platzt auf dem Markierten: beim Zauber von der Gruppe weg.",
	"* |cff71d5ff|Hspell:268086|h[Aura of Dread]|h|r: die Schreckensaura lastet auf der Gruppe: durchlaufend heilen.",
	"* |cff71d5ff|Hspell:260907|h[Soul Manipulation]|h|r: die Seelenmanipulation BEHERRSCHT den Markierten: die Verbündeten reißen ihn daraus.",
};
pack["135358"] = bos; pack["135359"] = bos; pack["135360"] = bos; pack["131823"] = bos; pack["131824"] = bos; pack["131825"] = bos;

pack["260551"] = { "Seelengebundener Goliath",
	"* |cff71d5ff|Hspell:260512|h[Soul Harvest]|h|r: die Seelenernte saugt die Gruppe aus: kräftig heilen, solange sie wirkt.",
	"* |cff71d5ff|Hspell:260541|h[Burning Bush]|h|r: die brennenden Büsche markieren den Boden: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:260508|h[Crush]|h|r: das Zermalmen am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:267907|h[Thorns]|h|r: die Dornen strafen das Melee: das Melee bleibt draußen, solange sie stapeln.",
};

pack["131863"] = { "Raal der Unersättliche",
	"* |cff71d5ff|Hspell:264923|h[Tenderize]|h|r: das Zartklopfen verkettet am Tank: schnell Tankwechsel.",
	"* |cff71d5ff|Hspell:264734|h[Consume All]|h|r: die Verschlingung schluckt den Markierten: aus dem Radius des Mauls laufen.",
	"* |cff71d5ff|Hspell:264931|h[Servant]|h|r: die Diener kommen: sie JETZT töten.",
	"* |cff71d5ff|Hspell:264694|h[Rotten Expulsion]|h|r: die faule Ausstoßung markiert Flächen: ihnen ausweichen.",
};

bos = { "Lord und Lady Kronsteig",
	"* |cff71d5ff|Hspell:261440|h[Virulent Pathogen]|h|r: der Erreger springt über Nähe: die Markierten auseinanderhalten.",
	"* |cff71d5ff|Hspell:261446|h[Vitality Transfer]|h|r: die Vitalitätsübertragung zwischen den beiden: IMMER unterbrechbar.",
	"* |cff71d5ff|Hspell:268306|h[Discordant Cadenza]|h|r: die missklingende Kadenz fegt vom Klavier aus: aus ihrem Schallradius weg.",
};
pack["131527"] = bos; pack["131545"] = bos;

pack["131864"] = { "Gorak Tul",
	"* |cff71d5ff|Hspell:268202|h[Deathlens]|h|r: die Todeslinse markiert das Ziel: beim Zauber von der Gruppe weg.",
	"* |cff71d5ff|Hspell:266198|h[Rising Flames]|h|r: die aufsteigenden Flammen verbrennen den Boden: raus aus den Flächen.",
	"* |cff71d5ff|Hspell:266266|h[Summon Slaver]|h|r: die Treiber kommen: sie als Priorität töten.",
	"* |cff71d5ff|Hspell:266181|h[Dread Essence]|h|r: die Schreckensessenz trifft in einem Gebiet: die Gruppe heilen.",
};


-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["136385"] = { "Azurethos",
	"* |cff71d5ff|Hspell:274829|h[Gale Force]|h|r: der Windstoß drückt Richtung Rand: vorsichtig am Klippenabfall.",
	"* |cff71d5ff|Hspell:274839|h[Azurethos Fury]|h|r: der Zorn hinterlässt Flächen am Boden: heraus.",
	"* |cff71d5ff|Hspell:274832|h[Wing Buffet]|h|r: der Flügelstoß schleudert weit: auf den Zauber hin in der Mitte bleiben.",
};

pack["140252"] = { "Hagelkonstrukt",
	"* |cff71d5ff|Hspell:274896|h[Permafrost Spike]|h|r: die Permafroststachel brechen in Flächen aus: sie nie kreuzen.",
	"* |cff71d5ff|Hspell:274891|h[Glacial Breath]|h|r: der Gletscheratem fegt in einem Kegel: hinter ihm bleiben.",
	"* |cff71d5ff|Hspell:274895|h[Freezing Tempest]|h|r: der Froststurm kreist um die Gruppe: den sicheren Radius halten.",
};

pack["132253"] = { "Ji'arak",
	"* |cff71d5ff|Hspell:260908|h[Storm Wing]|h|r: der Sturmflügel trifft in einem Gebiet: die Gruppe heilen.",
	"* |cff71d5ff|Hspell:261088|h[Hurricane Crash]|h|r: er stürzt auf einen Punkt herab: WEG aus dem markierten Kreis.",
	"* |cff71d5ff|Hspell:261467|h[Matriarchs Call]|h|r: die Matriarchin bringt Brut: sie als Priorität töten.",
};

pack["138794"] = { "Dünenfresser Kraulok",
	"* |cff71d5ff|Hspell:275200|h[Primal Rage]|h|r: der Urzorn steigert seinen Schaden über die Zeit: ihn töten, bevor er sich stapelt.",
	"* |cff71d5ff|Hspell:276046|h[Shake Loose]|h|r: er schüttelt sich und schleudert die Nahen fort: vorsichtig mit dem Umhauen.",
	"* |cff71d5ff|Hspell:275175|h[Sonic Bellow]|h|r: der Schallbrüller trifft in einem Gebiet: die Gruppe heilen.",
	"* |cff71d5ff|Hspell:275194|h[Earth Spike]|h|r: die Erdspeere brechen am Boden aus: raus aus den Kreisen.",
};

pack["132701"] = { "T'zane",
	"* |cff71d5ff|Hspell:262004|h[Crushing Slam]|h|r: der Zermalmhieb am Tank: Tankwechsel.",
	"* |cff71d5ff|Hspell:261605|h[Consuming Spirits]|h|r: die Verschlinger-Geister fressen: sie JETZT töten.",
	"* |cff71d5ff|Hspell:261600|h[Coalesced Essence]|h|r: die geballte Essenz markiert Flächen: heraus.",
	"* |cff71d5ff|Hspell:261552|h[Terror Wall]|h|r: die Schreckensmauer rückt vor: mit Defensiven durch oder weggehen.",
};

pack["140163"] = { "Kriegshetzer Yenajz",
	"* |cff71d5ff|Hspell:274842|h[Void Nova]|h|r: die Leerenova markiert wahllos: verteilen.",
	"* |cff71d5ff|Hspell:274932|h[Endless Abyss]|h|r: der endlose Abgrund rückt fressend vor: WEG aus seinem Radius.",
};

pack["148295"] = { "Ivus der Zerrüttete",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: die Versteinerung markiert die Gruppe: vom Markierten weg verteilen.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: die Schockwelle trifft in einer Linie: ihr ausweichen.",
	"* Ein Kriegsfront-Boss von Dunkelküste: Vorsicht mit der Verstärkung der feindlichen Fraktion während des Kampfes.",
};

pack["144946"] = { "Ivus der Waldlord",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: die Versteinerung markiert die Gruppe: vom Markierten weg verteilen.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: die Schockwelle trifft in einer Linie: ihr ausweichen.",
	"* Ein Kriegsfront-Boss von Dunkelküste: Vorsicht mit der Verstärkung der feindlichen Fraktion während des Kampfes.",
};

pack["152697"] = { "Ulmath",
	"* |cff71d5ff|Hspell:301748|h[Endless Doom]|h|r: das endlose Verderben stapelt laufend Schaden: kräftig heilen.",
	"* |cff71d5ff|Hspell:301773|h[Mental Collapse]|h|r: der mentale Kollaps markiert das Ziel: VOR der Explosion WEG aus dem Radius.",
	"* |cff71d5ff|Hspell:301840|h[Void Dance]|h|r: der Leerentanz markiert den Boden: raus aus den Flächen.",
};

pack["152671"] = { "Wekemara",
	"* |cff71d5ff|Hspell:303451|h[Electric Discharge]|h|r: die Entladung springt zwischen den Nahen: verteilen.",
	"* |cff71d5ff|Hspell:303319|h[Bioelectric Blast]|h|r: der bioelektrische Schlag markiert den Boden: raus aus dem Kreis.",
	"* |cff71d5ff|Hspell:303488|h[Shock Burst]|h|r: der Schockausbruch am Markierten: beim Zauber von der Gruppe weg.",
};

pack["154638"] = { "Großkaiserin Shek'zara",
	"* |cff71d5ff|Hspell:314304|h[Song of the Empress]|h|r: das Lied der Kaiserin markiert in einem Gebiet: verteilen.",
	"* |cff71d5ff|Hspell:314333|h[Force and Verve]|h|r: Kraft und Schwung markieren Flächen: ihnen ausweichen.",
	"* |cff71d5ff|Hspell:314307|h[Summon Swarmguard]|h|r: der Schwarmwächter kommt: ihn als Priorität töten.",
};

pack["160970"] = { "Vuk'laz der Erdenbrecher",
	"* |cff71d5ff|Hspell:314618|h[Crushing Claws]|h|r: die Klauen am Tank: Tankwechsel mit Defensiven.",
	"* |cff71d5ff|Hspell:314698|h[Razor Spines]|h|r: die Klingenstacheln brechen ringsum aus: das Melee achtet auf den Radius.",
	"* |cff71d5ff|Hspell:314527|h[Tremor Wave]|h|r: die Bebenwelle rückt vor: drüberspringen, wenn sie ankommt.",
	"* |cff71d5ff|Hspell:314659|h[Writhing Sands]|h|r: die Windenden Sande bringen Bestien: sie JETZT töten.",
};

pack["138122"] = { "Brüllende Klinge",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: der Zerbrecherimpuls markiert flächenweise: verteilen.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: der Belagerungsmodus ändert sein Kit: vorsichtig mit den Flächen, die er aufreißt.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: der Mörser fällt auf den markierten Punkt: raus aus dem Kreis.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: die Flammenauslässe fegen in Etappen: rechtzeitig von Etappe zu Etappe rücken.",
};

pack["137374"] = { "Brüllen des Löwen",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: der Zerbrecherimpuls markiert flächenweise: verteilen.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: der Belagerungsmodus ändert sein Kit: vorsichtig mit den Flächen, die er aufreißt.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: der Mörser fällt auf den markierten Punkt: raus aus dem Kreis.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: die Flammenauslässe fegen in Etappen: rechtzeitig von Etappe zu Etappe rücken.",
};

P.de = de;