--[[
	Bosses_TBC_es.lua
		Datos en español del pack The Burning Crusade (solo datos; el
		registro lo hace Bosses_TBC.lua, que se carga después en el .toc).
		Fuentes: DBM-Party-BC, DBM-Raids-BC, DBM-Outlands y
		LittleWigs_BurningCrusade (_doc).
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- The Black Morass : Zona 269 --
-- --------------------------------- --

pack["17879"] = { "Cronolord Deja",
	"* |cff71d5ff|Hspell:38539|h[Arcane Blast]|h|r: SIEMPRE cortable — pega fuerte y acumula en el tanque.",
	"* |cff71d5ff|Hspell:31467|h[Time Lapse]|h|r: el lapso aturde en área: alejaos del aturdido.",
	"* |cff71d5ff|Hspell:31472|h[Arcane Discharge]|h|r: la descarga rebota por la sala: sanad al grupo tras cada una.",
};

pack["17880"] = { "Temporus",
	"* |cff71d5ff|Hspell:31458|h[Hasten]|h|r: celeridad sobre sí mismo: DISPELADLA o empezará a girar muy rápido.",
	"* |cff71d5ff|Hspell:38592|h[Wing Buffet]|h|r: el aletazo lanza al tanque lejos: pega su espalda a la pared.",
	"* Los portales del Rift siguen sacando basura por detrás: el tanque lo orienta contra ellos y nadie los pullea.",
};

pack["17881"] = { "Aeonus",
	"* |cff71d5ff|Hspell:31422|h[Time Stop]|h|r: la parada aturde a TODO el grupo: abalorios y defensivas para sobrevivirla.",
	"* |cff71d5ff|Hspell:37605|h[Sand Breath]|h|r: el aliento de arena es frontal: el tanque lo orienta lejos del grupo.",
	"* Jamás junto a los portales abiertos: el reloj no perdona y la basura acumulada se come a los sanadores.",
};

-- --------------------------------- --
-- Karazhan : Zona 532 --
-- --------------------------------- --

bos = { "Attumen el Montero",
	"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: la embestida vuela contra el más lejano: nadie se separa de la montura.",
	"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: el derribo parte en cleave a la melé: la melé sale del frente.",
	"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: la presencia intangible es un maleficio de precisión: que se la quiten a la marca.",
	"* Derribad a Midnight: el montero monta y desmonta con los umbrales de su vida — todo el daño va al mismo fondo.",
};
pack["16151"] = bos; pack["16152"] = bos;

pack["15687"] = { "Moroes",
	"* |cff71d5ff|Hspell:29448|h[Vanish]|h|r: se esfuma y se recupera: en área el punto donde cayó y lo saca.",
	"* |cff71d5ff|Hspell:29425|h[Gouge]|h|r: el golpe deja al tanque fuera: el segundo tanque lo recoge al instante.",
	"* |cff71d5ff|Hspell:29562|h[Blind]|h|r: la ceguera cae en el marcado: que se la quiten.",
	"* |cff71d5ff|Hspell:29405|h[Garrote]|h|r: el garrote sangra hasta el final — sanad al marcado a tope.",
	"* Entra con cuatro invitados al azar: los sanadores posibles se cortan PRIMERO y caen primero — el guerrero gira en cleave a la melé.",
};

pack["16457"] = { "Doncella de Virtud",
	"* |cff71d5ff|Hspell:29511|h[Repentance]|h|r: el arrepentimiento aturde a TODA la banda: entra y rompedla con daño, o os coméis la siguiente.",
	"* |cff71d5ff|Hspell:29522|h[Holy Wrath]|h|r: la ira sagrada se encadena entre personas: dispersaos.",
	"* |cff71d5ff|Hspell:29512|h[Consecration]|h|r: la consagración quema el suelo bajo ella: la melé sale fuera.",
	"* Su aura de fuego castiga a la melé pegada: la resistencia al fuego ayuda — los sanadores bien lejos.",
};

pack["15691"] = { "Curator",
	"* |cff71d5ff|Hspell:30235|h[Hateful Bolt]|h|r: el rayo odioso vuela contra la SEGUNDA vida más alta: mantén esa vida arriba a toda costa.",
	"* |cff71d5ff|Hspell:30403|h[Summon Astral Flare]|h|r: los fulgores astrales nacen por pares: en área y a por ellos antes de que apile su andanada.",
	"* |cff71d5ff|Hspell:30254|h[Evocation]|h|r: durante la evocación recibe DOBLE daño — reservad la ráfaga para ella y apretadlo.",
};

pack["16524"] = { "Sombra de Aran",
	"* |cff71d5ff|Hspell:29973|h[Flame Wreath]|h|r: NI UN PASO o el anillo estalla y barre a todos — esperar a que muera.",
	"* |cff71d5ff|Hspell:29991|h[Counterspell]|h|r: el contracanto silencia una escuela 10 s: parad el casting; los sanadores solo con cautela.",
	"* |cff71d5ff|Hspell:30004|h[Pyroblast]|h|r: las piroblastas llegan por parejas: corta las DOS o alguien muere.",
	"* |cff71d5ff|Hspell:29951|h[Blizzard]|h|r: la ventisca barre la sala: SALID andando — corriendo se come otra vez.",
	"* La fase de bebida es trampa: no le pegáis mientras bebe o la banda se come una muralla de piroblastas.",
};

pack["15688"] = { "Terestian Pezuña Enferma",
	"* |cff71d5ff|Hspell:30066|h[Summon Kil'rek]|h|r: el diablillo renace al caer: matadlo primero y repetid en cuanto renace.",
	"* |cff71d5ff|Hspell:30065|h[Sacrifice]|h|r: el sacrificio marca a un jugador y lo escuda: matad a Kil'rek para romper el escudo.",
	"* Los diablillos se apilan sobre el grupo: un área dedicada evita que se coman a los sanadores.",
};

pack["15689"] = { "Rencor Abisal",
	"* |cff71d5ff|Hspell:30400|h[Perseverance]|h|r: el haz rojo endurece al tanque y mata sanadores: SOLO el tanque se planta en él.",
	"* |cff71d5ff|Hspell:30401|h[Serenity]|h|r: el haz verde sana lo que esté encima: rotad al grupo por turnos.",
	"* |cff71d5ff|Hspell:30402|h[Dominance]|h|r: el haz azul empodera al caster: repartidle — juntarse reparte la pega.",
	"* |cff71d5ff|Hspell:38523|h[Nether Breath]|h|r: el aliento abisal es frontal: el tanque lo orienta lejos del grupo.",
	"* En la fase de destierro se vuelve inalcanzable: guardad los tiempos de defensa y frenad los dots.",
};

pack["15690"] = { "Príncipe Malchezaar",
	"* |cff71d5ff|Hspell:30843|h[Enfeeble]|h|r: el debilitamiento deja a 1 de vida SIN sanación 8 s: sobrevividlo, nadie os salva durante él.",
	"* |cff71d5ff|Hspell:30852|h[Shadow Nova]|h|r: la sombra nova cae JUSTO tras el debilitamiento: corred FUERA del príncipe al punto.",
	"* |cff71d5ff|Hspell:30859|h[Summon Infernal]|h|r: los infernales llueven del cielo toda la pelea: mirad al suelo y moveros en los impactos.",
};

pack["17521"] = { "El Lobo Feroz",
	"* |cff71d5ff|Hspell:30752|h[Little Red Riding Hood]|h|r: el marcado se vuelve la caperuza: kitéale dando vueltas a los soportes.",
	"* El lobo rompe línea de visión para perseguir a la caperuza: aprovechad el escenario y mantenlo girando mientras el resto aprieta.",
};

bos = { "Romulo y Julianne",
	"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: SIEMPRE cortable — sus sanaciones mantienen viva toda la función.",
	"* Uno cae y el otro se enfurece: bajadlos parejos y rematadlos juntos.",
	"* Las estocadas venenosas dejan daño en la marca: los sanadores vigilan el brazo del sable de Romulo.",
};
pack["17534"] = bos; pack["17533"] = bos;

pack["18168"] = { "Mago de Oz",
	"* Los cuatro protagonistas nacen juntos: primero Tito, después Dorothee, luego Strawman a toda prisa.",
	"* Tinhead se arrastra: uno lo va a remolque caminando hacia atrás mientras el resto baja al resto.",
	"* Al caer Roar aterriza la Bruja: los tornados cruzan el escenario — esquivadlos de paso y matadla.",
};

bos = { "Chess Event",
	"* Las piezas se quedan quietas: moverlas o el fuego bajo sus pies las come — un cuadro por turno.",
	"* Mantened los tiempos en marcha: los peones absorben, el rey tanquea, los sanadores sanan SOLO a su bando.",
	"* Al caer tu pieza te llega una ráfaga de poder: úsala y coge una pieza nueva del banco.",
};
pack["21752"] = bos; pack["21684"] = bos;

pack["17225"] = { "Nocturno",
	"* |cff71d5ff|Hspell:30129|h[Charred Earth]|h|r: la tierra carbonizada deja charcos de fuego bajo la gente: salid de ellos.",
	"* |cff71d5ff|Hspell:36922|h[Bellowing Roar]|h|r: el bramido atemoriza a TODO el grupo en tierra: defensivas de miedo o temblor en el tanque.",
	"* |cff71d5ff|Hspell:37098|h[Rain of Bones]|h|r: la lluvia de huesos cae durante el vuelo: dispersaos para minimizarla.",
	"* El ciclo de vuelo es estricto: todos al centro en tierra y el tanque orienta los coletazos lejos de la banda.",
};

pack["16179"] = { "Hyakiss el Rondador",
	"* El acechador sale de su hoyo con una mordedura venenosa: pelea llana, curad la mordedura del tanque.",
	"* Bestia opcional a mitad de subida a los Cuartos de los Criados: dejadla o matadla por el cofre extra.",
};

pack["16180"] = { "Shadikith el Planeador",
	"* El planeador estalla en un círculo sónico alrededor: la melé sale del radio entre ráfagas.",
	"* Bestia opcional de los Cuartos de los Criados: pelea llana, poco riesgo si el tanque lo deja quieto.",
};

pack["16181"] = { "Rokad el Devastador",
	"* El devastador pega fuerte en el frente: la melé por detrás y el tanque lo orienta lejos.",
	"* Bestia opcional de los Cuartos de los Criados: pelea llana; nadie frente a las fauces.",
};

-- --------------------------------- --
-- The Battle for Mount Hyjal : Zona 534 --
-- --------------------------------- --

pack["17767"] = { "Ira Fríoinvierno",
	"* |cff71d5ff|Hspell:31249|h[Death and Decay]|h|r: el decaimiento extiende zonas de fuego por el suelo: fuera de ellas.",
	"* |cff71d5ff|Hspell:31258|h[Frost Nova]|h|r: la nova congela al grupo en el sitio: abalorios o los sanadores se comen el decaimiento arrancados.",
};

pack["17808"] = { "Anetheron",
	"* |cff71d5ff|Hspell:31298|h[Carrion Swarm]|h|r: el enjambre de carroña es un cono frontal que silencia: el tanque lo orienta lejos del grupo.",
	"* |cff71d5ff|Hspell:31299|h[Sleep]|h|r: el sueño tira al suelo a uno: despertad al dormido YA o el decaimiento lo come.",
	"* |cff71d5ff|Hspell:31306|h[Inferno]|h|r: el infernal saca infernales en llamas: en área antes de que alcancen a los sanadores.",
};

pack["17888"] = { "Kaz'rogal",
	"* |cff71d5ff|Hspell:31447|h[Mark of Kaz'rogal]|h|r: la marca extrae maná: al llegar a cero la marca EXPLOTA — los casters paran de lanzar cuando el maná se agote.",
	"* El cleave es brutal de frente: la melé se queda detrás y el tanque lo orienta lejos de la muralla de cuerpos.",
};

pack["17842"] = { "Azgalor",
	"* |cff71d5ff|Hspell:31340|h[Howl of Azgalor]|h|r: el aullido atemoriza a TODA la banda: temblor o defensa de miedo en el tanque para que no ceda el puesto.",
	"* |cff71d5ff|Hspell:31344|h[Unending Pain]|h|r: el dolor eterno es un daño de área: sanad lo, no se elimina.",
	"* Al caer suelta un maleficio sobre un jugador: el marcado corre MUY lejos para que el señor abisal que nace no coma a nadie.",
};

pack["17968"] = { "Archimonde",
	"* |cff71d5ff|Hspell:32014|h[Doomfire]|h|r: el fuego de la perdición persigue a la gente por el suelo: kitéadlo LEJOS de la banda.",
	"* |cff71d5ff|Hspell:31970|h[Air Burst]|h|r: el estallido aéreo lanza media banda al cielo: mantened la pluma antes de cada lanzamiento.",
	"* |cff71d5ff|Hspell:31972|h[Fear]|h|r: el miedo cae sobre gente al azar: defensivas en el tanque para que agarre mientras lo atemorizan.",
};

-- --------------------------------- --
-- The Shattered Halls : Zona 540 --
-- --------------------------------- --

pack["16807"] = { "Brujo supremo Malbisal",
	"* |cff71d5ff|Hspell:30496|h[Death Coil]|h|r: el espíritu rebota contra el tanque: sanad lo, no se puede cortar.",
	"* Debajo del 20 por ciento arranca a girar con cuchillas: la melé sale FUERA y deja que la distancia lo remate.",
	"* La basura previa alimenta el pasillo: pulleadlo en un pasillo limpio o los sabuesos se suman a la pelea.",
};

pack["16809"] = { "Belisario O'mrogg",
	"* Sus dos cabezas intercambian el objetivo de amenaza solas: los tanques lo provocan al instante cuando cae el apaleo.",
	"* El pisotón tumba a la melé: salid del radio o perded la ventana de golpe.",
};

pack["20923"] = { "Guardia de sangre Porung",
	"* Guardia solo en heroico al principio de la sala: parte en cleave dentro del pack, matadlo a mitad del pulleo antes de que se apilen.",
	"* Pelea llana: nada especial más allá del cleave y la basura que sigue sus pasos.",
};

pack["16808"] = { "Kargath Garrafilada",
	"* |cff71d5ff|Hspell:5927|h[Sweep]|h|r: el barrido golpea duro de frente: la melé se queda detrás de las cuchillas.",
	"* |cff71d5ff|Hspell:30739|h[Blade Dance]|h|r: la danza bota entre gente al azar: mantened la dispersión para que no repita víctima.",
	"* Las dos piezas guardan la puerta: controlad una o matadla pronto para liberar al tanque del segundo par de cuchillos.",
};

-- --------------------------------- --
-- The Blood Furnace : Zona 542 --
-- --------------------------------- --

pack["17381"] = { "El Hacedor",
	"* |cff71d5ff|Hspell:30923|h[Dominate Mind]|h|r: la dominación roba a un jugador: aturdid al dominado, no lo matéis y esperad.",
	"* Los charcos ácidos se abren bajo el grupo: nadie se planta en el verde.",
};

pack["17380"] = { "Broggok",
	"* Los prisioneros caen por oleadas: limpiadlos rápido o el tanque se come dos packs a la vez.",
	"* El gas envenena las celdas por zonas: movimientos hacia el hueco limpio — el daño apila rápido en el charco equivocado.",
};

pack["17377"] = { "Keli'dan el Ultrajador",
	"* La onda expansiva cae justo tras su parpadeo: corred FUERA en el momento en que se teleporta al centro de la sala.",
	"* Repite el ciclo del parpadeo: los sanadores mantienen al grupo lleno entre ellos, la onda castiga la vida baja.",
};

-- --------------------------------- --
-- Hellfire Ramparts : Zona 543 --
-- --------------------------------- --

pack["17306"] = { "Guardián vigía Gargolmar",
	"* Las heridas en sus brazos le curan por golpe: cortad la herida o la pelea se alarga.",
	"* La avalancha lanza al tanque hacia la basura: dejad su espalda limpia y tened el pasillo limpiado antes.",
};

pack["17308"] = { "Omor el Sinmarcas",
	"* |cff71d5ff|Hspell:37566|h[Whip of Despair]|h|r: el látigo es un maleficio de sombra sobre el tanque: curadlo o los sanadores se ahogan.",
	"* Las manadas de sabuesos entran con él: controladlas, matad una antes de que apilen a los sanadores.",
	"* Se eleva fuera del alcance de la melé por ráfagas: lo baja la distancia; la melé se reintegra tras cada salto.",
};

bos = { "Vazruden el Heraldo",
	"* El heraldo monta la wyvern: apretad a la pareja junta, el jinete no se aterriza hasta que baja la vida.",
	"* Al aterrizar Vazruden el tanque lo agarra al punto: nadie más frente al aliento de fuego.",
	"* Nazan sigue sembrando al grupo: la distancia corta las bolas de fuego entre pasadas.",
};
pack["17537"] = bos; pack["17307"] = bos;

-- --------------------------------- --
-- Magtheridon's Lair : Zona 544 --
-- --------------------------------- --

pack["17257"] = { "Magtheridon",
	"* Los cinco canalizadores abren la sala: matadlos primero, un pack a la vez o el destierro nunca llega.",
	"* |cff71d5ff|Hspell:30616|h[Blast Nova]|h|r: la nova de explosión arrasa la sala: los cinco jugadores pinchan su cubo al destierro para cortarla.",
	"* |cff71d5ff|Hspell:30511|h[Quake]|h|r: el temblor lanza a la melé contra las paredes: sanad al grupo tras cada uno.",
	"* Las llamas del suelo queman en manchas: moveros ya, el daño no es suave.",
};

-- --------------------------------- --
-- The Steamvault : Zona 545 --
-- --------------------------------- --

pack["17797"] = { "Hidromántica Thespia",
	"* |cff71d5ff|Hspell:31481|h[Lightning Cloud]|h|r: la nube de rayos se abre bajo gente al azar: salid antes de que apilen los golpes.",
	"* |cff71d5ff|Hspell:25033|h[Enveloping Winds]|h|r: los vientos envuelven a un caster en silencio: disipad la magia o mantenid el segundo sanador listo.",
	"* Sus rayos pegan duro al tanque: escudos previos en el pulleo, los primeros segundos son los peores.",
};

pack["17796"] = { "Mekigeniero Vaporino",
	"* |cff71d5ff|Hspell:35107|h[Summon Mechanics]|h|r: tres mecánicos nacen alrededor: en área y rápido o descuartizan a los sanadores.",
	"* El fluido de máquina brota sobre el marcado: moveros con el chorro y dejad el suelo limpio de pozas.",
};

pack["17798"] = { "Kalithresh",
	"* |cff71d5ff|Hspell:6001|h[Disarm]|h|r: el desarme borra el arma del tanque: arma de repuesto o el segundo tanque entra.",
	"* El orbe de tromba de agua nace y él canaliza sobre él: el tanque lo arrastra LEJOS — dentro del orbe su daño se dispara.",
	"* Las reflexiones devuelven los conjuros: los casters aguantan los grandes mientras brille el destello.",
};

-- --------------------------------- --
-- The Underbog : Zona 546 --
-- --------------------------------- --

pack["17770"] = { "Panthambre",
	"* |cff71d5ff|Hspell:31673|h[Foul Spores]|h|r: las esporas lo REPOEN por debajo de media vida: arrastradlo fuera de la nube o apretadlo dentro de la ventana.",
	"* Las esporas menores rodean el área: en área antes de que rodeen a los sanadores.",
};

pack["18105"] = { "Ghaz'an",
	"* |cff71d5ff|Hspell:15716|h[Terrifying Roar]|h|r: el rugido manda correr a la melé: defensivas de miedo, o a reintegrarse tras la huida.",
	"* El aliento ácido es frontal: el tanque lo orienta lejos y la melé por detrás de las patas.",
};

pack["17826"] = { "Musel'ek",
	"* |cff71d5ff|Hspell:31429|h[Freeze]|h|r: la helada congela a uno de la melé en el sitio: rompedla o sanad la andanada que viene detrás.",
	"* Un jugador mantiene al búho sujetado: si no, el aletazo del pájaro lanza a la melé por los aires.",
	"* Su tiro certero castiga al marcado lejano: nadie se aleja del grupo sin cubrirse.",
};

pack["17882"] = { "La Acechadora Negra",
	"* |cff71d5ff|Hspell:31704|h[Static Charge]|h|r: la carga sigue a un jugador por la sala: KITEADLA lejos del grupo hasta que muera.",
	"* |cff71d5ff|Hspell:31715|h[Chain Lightning]|h|r: la cadena rebota entre gente junta: dispersión y sanadores al loro.",
};

-- --------------------------------- --
-- The Slave Pens : Zona 547 --
-- --------------------------------- --

pack["17941"] = { "Mennu el Traidor",
	"* |cff71d5ff|Hspell:31985|h[Corrupted Healing Totem]|h|r: el tótem de sanación lo repone cada segundo: PRIMERO a reventar.",
	"* |cff71d5ff|Hspell:34980|h[Corrupted Nova Totem]|h|r: el tótem nova detona cerca: matadlo a la vista o mantened el radio.",
	"* El tótem de piel endurece al pack: en área los tótems al abrir y luego a quemar al jefe.",
};

pack["17942"] = { "Quagmirran",
	"* |cff71d5ff|Hspell:39340|h[Acid Geyser]|h|r: el géiser ácido estalla de frente: NADIE frente a las fauces.",
	"* El decaimiento fúngico cae como veneno acumulable: disipadlo antes de la segunda pila o el sanador se ahoga.",
};

pack["17991"] = { "Rokmar el Crujidor",
	"* |cff71d5ff|Hspell:31956|h[Grievous Wound]|h|r: la herida grave corta a LA MITAD la sanación del tanque: sanadlo a tope o rotad tanques.",
	"* |cff71d5ff|Hspell:34970|h[Water Spit]|h|r: la escupitaja es frontal: el tanque lo orienta lejos del grupo.",
	"* |cff71d5ff|Hspell:38801|h[Ensnaring Moss]|h|r: el musgo deja a la gente plantada: dispersaos para que nunca encadene a dos.",
};

-- Ahune: evento estacional del Festival del Fuego de Medio Verano (LittleWigs TheSlavePens)
bos = { "Ahune",
	"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: el escudo lo vuelve inasible al arrancar — mientras aguanta, el grupo machaca al Núcleo congelado para arrancárselo.",
	"* La invocación arranca en la piedra de hielo: limpiad el anillo de la cueva antes y disparad el ritual, la pelea abre en cuanto la piedra se derrite.",
	"* Del estanque brotan elementales de agua mientras el escudo aguanta: AoE entre ciclos y nadie se planta en el suelo helado.",
};
pack["40446"] = bos;
pack["25740"] = bos;
pack["25865"] = bos;
pack["25697"] = bos;

-- --------------------------------- --
-- Serpentshrine Cavern : Zona 548 --
-- --------------------------------- --

pack["21216"] = { "Hydross el Inestable",
	"* |cff71d5ff|Hspell:38219|h[Frost Tomb]|h|r: la tumba de escarcha congela a uno: sanad al resto a través de ella, el congelado está a salvo.",
	"* El tanque cruza el umbral para cambiar de elemento: cruzadlo SOLO a la señal o el elemento equivocado apila los daños.",
	"* En el lado de veneno la corrupción se apila rápido: fuera de las pozas y contando las pilas.",
};

pack["21217"] = { "El Rondador de abajo",
	"* |cff71d5ff|Hspell:37660|h[Spout]|h|r: el chorro gira alrededor como una aguja de reloj: corred CON el chorro, nunca a través.",
	"* |cff71d5ff|Hspell:21873|h[Whirl]|h|r: el torbellino lanza a la melé a la poza: salid del radio al lanzarlo.",
	"* Los naga nacen de la poza a mitad de pelea: en área y a por ellos; la distancia caza a los emboscardores.",
};

pack["21215"] = { "Leotheras el Ciego",
	"* |cff71d5ff|Hspell:37749|h[Whirlwind]|h|r: el torbellino sangra a la melé entera: PARAD de golpear y esperadlo.",
	"* |cff71d5ff|Hspell:37640|h[Chaos Blast]|h|r: el golpe de caos rebota entre casters: dispersos y romped la cadena.",
	"* En la fase demoníaca nacen copias del grupo: cada uno mata PRIMERO a su copia, la banda remata el resto.",
	"* La ventana de destierro abre en su forma humana: el brujo reserva el destierro para el reparto de fases.",
};

pack["21213"] = { "Morogrim Levantamareas",
	"* |cff71d5ff|Hspell:37730|h[Tidal Wave]|h|r: la marea es un golpe frontal bestial: el tanque lo orienta lejos del grupo.",
	"* |cff71d5ff|Hspell:37850|h[Watery Graves]|h|r: las tumbas sacan murlocs de la poza: en área entre oleadas.",
	"* El glóbulo acuático persigue a un jugador y crece: kitéadlo lejos — apila daño a quien toque.",
};

pack["21214"] = { "Señor de las profundidades Karathress",
	"* |cff71d5ff|Hspell:38236|h[Cataclysmic Bolt]|h|r: el rayo vuela contra la SEGUNDA vida más alta: mantenedla arriba siempre.",
	"* |cff71d5ff|Hspell:38330|h[Tidal Surge]|h|r: la marea lanza a todo el grupo por la plataforma: plantaos o sanad el empujón.",
	"* Los tres portadores caen primero: Sharkkis, luego Tideress, luego Caribdis — el señor solo, tras ellos, se funde.",
};

pack["21212"] = { "Lady Vashj",
	"* |cff71d5ff|Hspell:38575|h[Entangle]|h|r: la maraña deja a varios plantados: sanadlo a través, nadie pelea las raíces solo.",
	"* |cff71d5ff|Hspell:38511|h[Shock Blast]|h|r: el golpe de choque aturde en área: dispersos fuera de la línea de golpe.",
	"* La fase dos corre sobre los núcleos contaminados: coged uno, pasadlo al generador, romped los cuatro escudos en orden.",
	"* Los striders kitéanlos fuera de la plataforma y los naga mueren en su sitio: nadie se muere por la basura mientras corren los núcleos.",
};

-- --------------------------------- --
-- The Eye : Zona 550 --
-- --------------------------------- --

pack["19514"] = { "Al'ar",
	"* |cff71d5ff|Hspell:35410|h[Melt Armor]|h|r: el derretido deja al tanque sin plancha: rotad tanques justo tras cada derretido.",
	"* |cff71d5ff|Hspell:35383|h[Flame Quills]|h|r: las puntas llueven fuego sobre la plataforma: escondeos debajo de ella al lanzar.",
	"* Los retoños nacen en las plataformas que abandona: en área antes de que se apilen a los sanadores.",
	"* Salta de repisas: el tanque la sigue rápido y la banda nunca se queda en la repisa equivocada.",
};

pack["19516"] = { "Atracador del Vacío",
	"* |cff71d5ff|Hspell:34162|h[Pounding Slam]|h|r: el martilleo silencia y lanza a la melé: la melé sale FUERA al golpe.",
	"* |cff71d5ff|Hspell:34172|h[Arcane Orb]|h|r: los orbes arcánticos caen sobre distancia al azar: nadie se planta donde marca la bomba.",
	"* Ignora las provocaciones: el tanque pullea limpio y todos vigilan la amenaza ante el empujón.",
};

pack["18805"] = { "Gran astromante Solarian",
	"* |cff71d5ff|Hspell:33045|h[Wrath of the Astromancer]|h|r: la ira marca a un jugador como bomba: apártate de la gente hasta que detone.",
	"* Los agentes nacen por la sala a mitad de pelea: en área y rápido, van por los sanadores.",
	"* A vida baja se divide en copias: matad a la REAL — las sacerdotisas la reviven si las dejan.",
};

pack["19622"] = { "Kael'thas Caminante del Sol",
	"* Los cuatro asesores caen uno a uno: control al sacerdote y ráfaga al resto según la llamada de la banda.",
	"* La fase de armas despliega el arsenal: coged los épicos, cargan con la pelea entera después.",
	"* |cff71d5ff|Hspell:36819|h[Pyroblast]|h|r: SIEMPRE cortable — la piroblasta de la fase cinco borra a quien le entre.",
	"* |cff71d5ff|Hspell:36735|h[Flame Strike]|h|r: la andanada de llamas quema zonas del suelo: moveros al punto que marca.",
	"* |cff71d5ff|Hspell:34341|h[Gravity Lapse]|h|r: el lapso de gravedad alza a la banda: rotad alrededor de él y coged los orbes de poder.",
};

-- --------------------------------- --
-- The Arcatraz : Zona 552 --
-- --------------------------------- --

pack["20870"] = { "Zereketh el Desatado",
	"* |cff71d5ff|Hspell:30533|h[Void Zone]|h|r: las zonas del vacío queman el suelo bajo la gente: fuera en cuanto se abren.",
	"* |cff71d5ff|Hspell:32863|h[Seed of Corruption]|h|r: la semilla detona en el marcado: sanad la explosión o el estallido encadena al grupo.",
	"* Los demonios del vacío nacen a su lado: en área antes de que lleguen a los sanadores.",
};

pack["20885"] = { "Dalliah la Oradora del Sino",
	"* |cff71d5ff|Hspell:36142|h[Gift of the Naaru]|h|r: SIEMPRE cortable — su don la repone casi entera.",
	"* |cff71d5ff|Hspell:36173|h[Whirlwind]|h|r: el torbellino corta a la melé en círculo: la melé sale del radio.",
	"* Va relevándose con su guardián: el foco en el que esté levantado y el control esperando al recambio.",
};

pack["20886"] = { "Soccothrates",
	"* |cff71d5ff|Hspell:36512|h[Felfire Ground]|h|r: el fuego vil abre grietas por el suelo: nadie se planta en el suelo encendido.",
	"* |cff71d5ff|Hspell:35759|h[Knock Away]|h|r: la embestida lanza al tanque lejos: plantadlo o el segundo tanque lo recoge.",
	"* Se releva con Dalliah: el foco en el que esté en pie y el control espera al relevo.",
};

pack["20912"] = { "Presagista Cieloriss",
	"* |cff71d5ff|Hspell:36924|h[Mind Rend]|h|r: el desgarro mental pega FUERTE en el marcado: sanad las marcas entre desgarros.",
	"* Las ilusiones de la mente nacen del grupo: cada uno mata PRIMERO a su ilusión.",
	"* La dominación coge a un jugador por un rato: aguantad el daño sobre él, se corta sola.",
};

-- --------------------------------- --
-- The Botanica : Zona 553 --
-- --------------------------------- --

pack["17976"] = { "Comandante Sarannis",
	"* |cff71d5ff|Hspell:34803|h[Arcane Resonance]|h|r: a vida baja detona en área: dispersaos en cuanto gire la pelea.",
	"* Los conservadores de sangre la guardan: en área al pulleo o se comen a los sanadores vivos.",
};

pack["17975"] = { "Gran botánico Freywinn",
	"* |cff71d5ff|Hspell:34557|h[Tranquility]|h|r: SIEMPRE cortable — la tranquilidad lo repone de nada a lleno.",
	"* Los retoños se amontonan por oleadas: en área y rápido o apilan solos.",
};

pack["17980"] = { "Laj",
	"* Las espinas castigan a la melé por ráfagas: la melé SUELTA el golpe en la ráfaga o pierde la barra de vida.",
	"* Los mutantes nacen a su alrededor: en área rápido y suelo limpio.",
};

pack["17978"] = { "Thorngrin el Cuidador",
	"* |cff71d5ff|Hspell:34660|h[Hellfire]|h|r: el fuego infernal quema todo alrededor: la melé sale fuera durante TODO el canal.",
	"* El sacrificio marca a un jugador: sanad al marcado y guardad la distancia con su frontal.",
	"* La maldición de tristeza corta la sanación: quitadla al tanque ya.",
};

pack["17977"] = { "Disidente de distorsión",
	"* |cff71d5ff|Hspell:34716|h[Grow]|h|r: al crecer se hace enorme y pega enorme: kitéalo hasta que vuelva a su tamaño.",
	"* Los árboles se amontonan a su sombra: en área antes de que cerquen la banda.",
	"* Nadie se pega a él durante el drenaje: el drenaje bebe del más cercano — la melé un paso atrás.",
};

-- --------------------------------- --
-- The Mechanar : Zona 554 --
-- --------------------------------- --

pack["19710"] = { "Vigía de las puertas Manoyerro",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: el martillazo aturde a la melé: fuera del arco del martillo.",
	"* |cff71d5ff|Hspell:35327|h[Static Disruption]|h|r: la perturbación lanza a los agrupados: ni un montón en el radio.",
	"* Nadie lo pelea de frente: los golpes encadenan a la melé en el sitio.",
};

pack["19218"] = { "Vigía de las puertas Giromata",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: el martillazo aturde a la melé: fuera del arco entre golpes.",
	"* La andanada de sombras llueve sobre el grupo: dispersión y sanadores al loro.",
};

pack["19219"] = { "Mecano-lord Capacitus",
	"* |cff71d5ff|Hspell:35158|h[Reflective Damage Shield]|h|r: el escudo de daño refleja golpes: la melé PARA al destello.",
	"* |cff71d5ff|Hspell:35159|h[Reflective Magic Shield]|h|r: el escudo de magia refleja conjuros: los casters AGUANTAN al destello.",
	"* Las cargas del éter ruedan por el suelo: apartaos, estallan al tocarlas.",
};

pack["19221"] = { "Abisálica Sepethrea",
	"* La estela de fuego persigue a un jugador por la sala: KITEAD la estela bien abierta, nunca junto al grupo.",
	"* Los infernales nacen y cazan: la distancia los baja uno a uno.",
	"* El aliento del dragón es frontal: el tanque lo orienta lejos del grupo en cada pasada.",
};

pack["19220"] = { "Pathaleon el Calculador",
	"* |cff71d5ff|Hspell:35280|h[Dominate Mind]|h|r: la dominación coge a un jugador: aguantad el daño sobre el dominado, se corta sola.",
	"* Los espectros del éter se amontonan a vida baja: en área en cuanto nacen.",
};

-- --------------------------------- --
-- Shadow Labyrinth : Zona 555 --
-- --------------------------------- --

pack["18731"] = { "Embajador Faucinferno",
	"* |cff71d5ff|Hspell:33547|h[Fear]|h|r: el miedo saca al tanque de posición: temblor o defensa de miedo en el portador.",
	"* La emboscada lanza al tanque hacia atrás: dejad la pared limpia o la patrulla se suma a la pelea.",
	"* Patrulla un pasillo ancho a la entrada: pulleadlo en el hueco limpio entre packs.",
};

pack["18732"] = { "Maestro mayor Vorpil",
	"* |cff71d5ff|Hspell:33563|h[Rain of Fire]|h|r: la lluvia de fuego quema zonas enteras: fuera del suelo marcado.",
	"* Corre al portal vacío y vuelve con añadidos: la banda guarda el área para su regreso y jamás lo persigue.",
	"* Los viajeros del vacío cazan a uno por cabeza: nadie se queda quieto mientras los buscan.",
};

pack["18667"] = { "Negrozón el Incitador",
	"* |cff71d5ff|Hspell:33676|h[Charge]|h|r: la embestida vuela contra el MÁS LEJANO: nadie se separa del grupo.",
	"* El pisotón de guerra tumba a la melé: reintegraros rápido, la ventana es corta.",
	"* El torbellino gira debajo de él: la melé se repliega fuera de la ventana de giro.",
};

pack["18708"] = { "Murmullo",
	"* |cff71d5ff|Hspell:33711|h[Murmur's Touch]|h|r: el toque cuenta atrás y detona en el marcado: el marcado corre FUERA solo.",
	"* |cff71d5ff|Hspell:33923|h[Sonic Shockwave]|h|r: la onda de choque es un cono frontal: la melé por detrás del cuerpo.",
	"* |cff71d5ff|Hspell:38796|h[Sonic Boom]|h|r: el estallido pega a TODA la sala: todo el mundo sale del radio al lanzarlo.",
};

-- --------------------------------- --
-- Sethekk Halls : Zona 556 --
-- --------------------------------- --

pack["18472"] = { "Tejeoscuro Syth",
	"* Las cuatro imágenes elementales nacen a media vida: en área o ahogan a los sanadores.",
	"* Los rayos de sombra llueven sobre gente al azar: dispersión suave.",
	"* El miedo manda correr al grupo: defensivas de miedo en el tanque para sujetar la posición.",
};

pack["23035"] = { "Anzu",
	"* Las cornejas siniestras rompen alrededor: en área en cuanto aterrizan.",
	"* Los círculos del ritual lo invocan: el grupo entra lleno o el primer minuto se tuerce.",
	"* El destierro cubre a los casters por tramos: la melé sostiene el daño durante la ventana.",
};

pack["18473"] = { "Rey Garra Ikiss",
	"* |cff71d5ff|Hspell:38197|h[Polymorph]|h|r: el polimorfismo coge a uno como oveja: disipad la magia o esperad la oveja.",
	"* |cff71d5ff|Hspell:40425|h[Arcane Explosion]|h|r: la explosión cae justo tras su parpadeo: la melé corre FUERA al punto.",
	"* |cff71d5ff|Hspell:38245|h[Blizzard]|h|r: la ventisca barre su zona: todo el mundo sigue derrapando fuera de ella.",
};

-- --------------------------------- --
-- Mana-Tombs : Zona 557 --
-- --------------------------------- --

pack["18341"] = { "Pandemonius",
	"* |cff71d5ff|Hspell:32358|h[Void Blast]|h|r: el golpe del vacío lo fasea a sombra: la melé SUELTA los golpes mientras esté anulado.",
	"* El tajo oscuro aplasta a la melé: nadie delante del brazo.",
};

pack["18343"] = { "Tavarok",
	"* |cff71d5ff|Hspell:2021|h[Disarm]|h|r: el desarme borra el arma del tanque: arma de repuesto o el segundo tanque recoge.",
	"* El terremoto silencia a los casters en área: los sanadores espacian sus curas.",
};

pack["22930"] = { "Yor",
	"* El pisotón tumba a la melé: fuera del radio al lanzarlo o perdéis una ventana entera de golpe.",
	"* Nace del cadáver de Tavarok: el grupo se llena antes de la invocación o la pelea arranca coja.",
};

pack["18344"] = { "Príncipe-nexo Shaffar",
	"* Los balizas etéreos nacen alrededor: matadlos PRIMERO o se convierten en más basura para pelear.",
	"* Su parpadeo lo mueve por toda la sala: la melé lo sigue al punto, los conjuros no esperan.",
	"* La nova de escarcha deja a la melé pegada en el sitio: sanadla a través.",
};

-- --------------------------------- --
-- Auchenai Crypts : Zona 558 --
-- --------------------------------- --

pack["18371"] = { "Shirrak",
	"* |cff71d5ff|Hspell:32300|h[Inquisitor's Watching Eye]|h|r: el ojo sigue a un jugador y quema: KITEADLO lejos del grupo.",
	"* Los vigilantes muertos se amontonan por el suelo: en área antes de que apilen a los sanadores.",
};

pack["18373"] = { "Exarca Maladaar",
	"* La copia oscura de un jugador nace a mitad de pelea: PRIMERO la copia, pega más que su dueño.",
	"* El alarido de alma silencia en área: los casters se apartan de la línea.",
	"* Los rayos de sombra se acumulan en el tanque: escudos previos entre ellos.",
};

-- --------------------------------- --
-- Old Hillsbrad Foothills : Zona 560 --
-- --------------------------------- --

pack["17848"] = { "Teniente Drake",
	"* |cff71d5ff|Hspell:33792|h[Fireball Volley]|h|r: la andanada llueve fuego sobre tres objetivos: sanad la andanada entre disparos.",
	"* Las oleadas de escolta se suman a mitad de pelea: el tanque aparta la basura de los sanadores, en área y rápido.",
};

pack["17862"] = { "Capitán Skarloc",
	"* |cff71d5ff|Hspell:29427|h[Holy Light]|h|r: SIEMPRE cortable — su luz sagrada le repone una barra entera.",
	"* La consagración quema el suelo bajo él: la melé sale fuera.",
	"* Las oleadas de escolta entran mientras retrocede: sujetad la basura lejos de los sanadores hasta que caiga.",
};

pack["18096"] = { "Cazador de Época",
	"* |cff71d5ff|Hspell:33834|h[Whirlwind]|h|r: el torbellino pasa sobre la melé: la melé se repliega del radio al lanzarlo.",
	"* El aletazo lanza al tanque lejos: plantadlo contra la muralla del fuerte.",
	"* Aterriza con dos escoltas montados: controlad uno, rematad al otro antes de que el tanque pierda el puesto.",
};

-- --------------------------------- --
-- Black Temple : Zona 564 --
-- --------------------------------- --

pack["22887"] = { "Gran señor de la guerra Naj'entus",
	"* |cff71d5ff|Hspell:39837|h[Needle Spine]|h|r: la andanada de púas pega en área: dispersaos y sanad la explosión.",
	"* |cff71d5ff|Hspell:39872|h[Tidal Shield]|h|r: el escudo de marea lo burbujea: nadie a la melé durante él, la banda da un paso atrás.",
	"* La púa clavada se queda en las espaldas: usad el objeto para arrancarla en el marcado YA.",
};

pack["22898"] = { "Supremus",
	"* |cff71d5ff|Hspell:41951|h[Molten Blaze]|h|r: la llama persigue a un jugador: KITEADLA lejos de la banda para que los charcos nunca lleguen a nadie.",
	"* El pisotón tumba a la melé: plantados o a reintegraros tras el empujón.",
	"* Dos tanques se turnan sujetando: la ventana de kite se abre en el que NO tanquea.",
};

pack["22841"] = { "Sombra de Akama",
	"* Akama canaliza para romper las cadenas: defendedlo a través de las oleadas o el canal nunca termina.",
	"* Los añadidos entran en dos calles: limpiadlos del canalizador rápido, si no se comen a los sanadores primero.",
	"* Al liberarse la sombra todos arden con él: las defensivas caen entonces, y no antes.",
};

pack["22871"] = { "Teron Sanguino",
	"* La sombra de la muerte elige a un jugador: cae y sigue jugando como construcción sombría — la banda remata su maldición primero.",
	"* Los espíritus de los muertos cazan la retaguardia: la melé gira y en área antes de que apilen.",
	"* La maldición de tristeza corta la sanación de la marca: quitadla ya.",
};

pack["22948"] = { "Gurtogg Sangre Hirviente",
	"* |cff71d5ff|Hspell:40481|h[Acidic Wound]|h|r: la herida ácida se acumula en el tanque: rotad al contar las pilas o los sanadores se ahogan.",
	"* La rabia vil coge a un jugador: bombead sanación a esa persona, carga un peso enorme.",
	"* La herida cae en grupos de cinco: los sanadores reparten triaje y la banda se dispersa por equipos.",
};

pack["23420"] = { "Relicario de Almas",
	"* Las tres esencias rotan: Ira, Deseo y Sufrimiento — quemad cada una por completo antes de que se marche.",
	"* El aura del deseo castiga las curas a otros: triaje de heridas, nadie a tope.",
	"* El aura de la ira significa NINGUNA sanación sobre él: el daño puro gana la ventana.",
	"* El drenaje de almas cae como magia grande sobre una marca: disipadlo al punto que marca.",
};

pack["22947"] = { "Madre Shahraz",
	"* |cff71d5ff|Hspell:40891|h[Fatal Attraction]|h|r: la cadena ata a tres jugadores juntos: lejos de la banda y cerca entre ellos.",
	"* El escudo prismático rota las escuelas: cambiad la magia que le lanzáis.",
	"* Los rayos barren por su frontal: nadie se planta en la calle de barrido.",
};

bos = { "El Consejo Illidari",
	"* Los cuatro caen casi parejos: uno solo viviendo enfurece al consejo entero.",
	"* La sacerdotisa cura a los otros: SIEMPRE cortable su gran cura.",
	"* El escudo reflectivo destella sobre uno de ellos: los casters AGUANTAN al destello.",
	"* Las pozas de veneno se juntan bajo la melé: disipad rápido y salid del verde.",
};
pack["22949"] = bos; pack["22950"] = bos; pack["22951"] = bos; pack["22952"] = bos;

pack["22917"] = { "Illidan Tempestira",
	"* El cizallador parte al tanque por la mitad: rotad tanques en cada cizalla o los sanadores pierden la barra.",
	"* El rayo ocular barre la línea que encara: la banda despeja la calle en cuanto gira.",
	"* Los demonios de sombra cazan a dos jugadores: coged el abalorio y controladlos, o se dan un banquete.",
	"* En la forma demoníaca la banda se agrupa y aguanta: las alas abren la ventana de ráfaga.",
	"* El estallido de llamas quema zonas bajo la gente: fuera de ellas, el fuego sigue donde aterriza.",
};

-- --------------------------------- --
-- Gruul's Lair : Zona 565 --
-- --------------------------------- --

bos = { "Su majestad Maulgar",
	"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: el torbellino corta a la melé en círculo: la melé sale del radio en cada giro.",
	"* Los dos sanadores de su consejo caen PRIMERO: cada cura con su corte, siempre.",
	"* Kiggler el demente juega con rayos en área: un dedicado lo absorbe lejos del grupo.",
	"* Krosh el mago tira de los casters: una distancia señuelo lejos de todo el mundo.",
};
pack["18831"] = bos; pack["18832"] = bos; pack["18834"] = bos; pack["18835"] = bos; pack["18836"] = bos;

pack["19044"] = { "Gruul el Asesino de Dragones",
	"* |cff71d5ff|Hspell:36240|h[Ground Slam]|h|r: el golpe de suelo lanza a todos contra las paredes: DISPERSAOS después o el estallido se come a los vecinos.",
	"* |cff71d5ff|Hspell:36300|h[Shatter]|h|r: el estallido rompe a los congelados: nadie cerca de nadie cuando cae.",
	"* |cff71d5ff|Hspell:33525|h[Growth]|h|r: el crecimiento apila con el reloj: la pelea acaba antes de que ganen las pilas.",
};

-- --------------------------------- --
-- Sunwell Plateau : Zona 580 --
-- --------------------------------- --

pack["24850"] = { "Kalecgos",
	"* El golpe espectral abre el portal en el marcado: el marcado truca con el reino demoníaco y los dos jefes caen juntos.",
	"* |cff71d5ff|Hspell:45010|h[Arcane Breath]|h|r: el aliento arcántico es frontal: el tanque lo orienta lejos del grupo.",
	"* La magia salvaje vuela al azar: la sanación se mantiene flexible, nada está garantizado.",
};

pack["24882"] = { "Brutallus",
	"* |cff71d5ff|Hspell:45141|h[Burn]|h|r: la quemadura apila duro en el tanque: rotad al contar las pilas.",
	"* El pisotón lanza a la melé: plantad al grupo o sanad el empujón.",
	"* El bloqueo metabólico congela a los casters: los sanadores reparten triaje mientras dura el bloqueo.",
};

pack["25038"] = { "Brumavil",
	"* |cff71d5ff|Hspell:45717|h[Demonic Vapor]|h|r: la bruma sigue a un jugador: KITEADLA bien abierta, nunca junto a la banda.",
	"* |cff71d5ff|Hspell:45661|h[Encapsulate]|h|r: la cápsula alza a un jugador: sanad a través del alzamiento, cuelga en el aire.",
	"* En vuelo el aliento barre como aguja de reloj: todo el mundo sigue moviéndose con el barrido.",
};

bos = { "Las gemelas eredar",
	"* Las gemelas caen casi parejas: una sola en pie empodera a la otra.",
	"* La conflagración grande encadena al más cercano: dispersión entre las marcas.",
	"* La sombra nova pega brutal en el lado oscuro: los sanadores con escudos previos en el tanque de sombra.",
};
pack["25165"] = bos; pack["25166"] = bos;

pack["25741"] = { "M'uru",
	"* Los centinelas del vacío nacen por oleadas: en área y cambia de objetivo en cuanto aterrizan.",
	"* La energía negativa pulsa por toda la sala: los sanadores marcan el compás entre pulsos.",
	"* Al derrumbarse se alza Entropius en su lugar: esquivad los agujeros negros y repetid el quemado.",
};

pack["25315"] = { "Kil'jaeden",
	"* |cff71d5ff|Hspell:45848|h[Darkness of a Thousand Souls]|h|r: la oscuridad ahoga a toda la banda: defensivas y sanación al máximo en el lanzamiento.",
	"* Los orbes de escudo nacen en los pilares: la distancia los quema o las vigas se comen el campamento.",
	"* Las púas de sombra estallan por olas: dispersos fuera de las calles de estallido.",
	"* Los orbes de poder se alzan al final: cogedlos para cabalgar las vigas.",
};

-- --------------------------------- --
-- Magisters' Terrace : Zona 585 --
-- --------------------------------- --

pack["24723"] = { "Selin Corazón de Fuego",
	"* El canal vil drena al grupo: CUALQUIER corte lo rompe, hasta un aporreo.",
	"* Las vigas de vil suben su daño al drenar: matad rápido a los añadidos drenados.",
};

pack["24744"] = { "Vexallus",
	"* Los orbes de energía pura nacen alrededor: matad CADA uno antes de que lo alcance o se hincha.",
	"* La descarga se acumula al final: los sanadores marcan el compás de la banda durante la tormenta.",
};

pack["24560"] = { "Sacerdotisa Delrissa",
	"* |cff71d5ff|Hspell:44141|h[Flash Heal]|h|r: SIEMPRE cortable — el destello mantiene viva a su equipo de arena.",
	"* Los cinco luchadores juegan como equipo: control a los sanadores, ráfaga a un objetivo, nunca repartáis el daño.",
	"* El guerrero gira sobre la melé: la melé sale de la ventana de giro.",
};

pack["24664"] = { "Kael'thas",
	"* |cff71d5ff|Hspell:44194|h[Fireball]|h|r: la bola de fuego borra al marcado: escudos previos en cada lanzamiento.",
	"* El lapso de gravedad arrastra y alza a la gente: nadie junto al borde de la sala.",
	"* Los fénix nacen y renacen de sus cenizas: en área las aves y después el huevo.",
	"* La andanada de llamas quema zonas: moveros al punto que marca.",
};

-- --------------------------------- --
-- Zul'Aman : Zona 568 --
-- --------------------------------- --

pack["23574"] = { "Akil'zon",
	"* |cff71d5ff|Hspell:43648|h[Electrical Storm]|h|r: la tormenta alza a un jugador: TODO EL MUNDO corre bajo la tormenta o lo de fuera se come a la banda.",
	"* Las águilas se amontonan a la plataforma: en área antes de que cacen a los sanadores.",
};

pack["23576"] = { "Nalorakk",
	"* El tajo brutal parte en cleave dos objetivos: dos tanques reparten los golpes, nunca uno.",
	"* La avalancha vuela contra el MÁS LEJANO: nadie se separa del oso.",
	"* El rugido ensordecedor silencia a la banda: escudos previos antes de que caiga.",
};

pack["23578"] = { "Jan'alai",
	"* |cff71d5ff|Hspell:43962|h[Hatch Eggs]|h|r: los huevos rompen cuando él arde: o rompen TODOS o NINGUNO — en área correcta.",
	"* Las bombas de fuego caen alrededor del grupo: dispersaos ANTES de que suelte la andanada.",
	"* El aliento de llamas barre el frente: el tanque lo orienta lejos del grupo.",
};

pack["23577"] = { "Halazzi",
	"* El espíritu se separa del lince dos veces: tanquead ambos entre los rayos, la fase cierra con el lince.",
	"* El tótem pulsa desde la esquina: matadlo a la vista o los rayos no paran.",
	"* El golpe de llamas cae sobre el tanque: disipadlo ya o los sanadores se ahogan.",
};

pack["24239"] = { "Señor de los maleficios Malacrass",
	"* Las bolas de espíritu drenan a toda la banda cada pocos segundos: los sanadores marcan el compás entre ellas.",
	"* El espíritu de un jugador flota fuera a mitad de pelea: matadlo o el drenaje lo alimenta.",
	"* El sifón roba el kit de un jugador en el sitio: adaptad la rotación en cuanto cae.",
};

pack["23863"] = { "Zul'jin",
	"* Las cuatro formas rotan: el oso aporrea, el águila lanza ciclones, el lince destroza al tanque y el dragohalcón respira columnas de fuego.",
	"* Los duendes persiguen bajo la tormenta: KITEADLOS bien abiertos, queman a quien cacen.",
	"* El fuego del suelo sigue al aliento del dragohalcón: fuera de cada columna que marca.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["17711"] = { "Caminante del Destino",
	"* |cff71d5ff|Hspell:32686|h[Earthquake]|h|r: el terremoto sacude el área: los sanadores mantienen la banda llena durante el temblor.",
	"* La embestida lanza al tanque lejos: lejos de paredes y fosas.",
};

pack["18728"] = { "Señor de fatalidad Kazzak",
	"* |cff71d5ff|Hspell:21063|h[Twisted Reflection]|h|r: la reflexión retorcida es un maleficio: QUITADLO o cada swing lo cura.",
	"* |cff71d5ff|Hspell:32964|h[Frenzy]|h|r: la ferocidad sube su velocidad: kitéalo hasta que se pase.",
	"* La marca del señor de fatalidad drena el maná de los casters cercanos: los casters guardan la distancia.",
};

P.es = es;