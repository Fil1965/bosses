--[[
	Bosses_Forever_es.lua
	Datos en español of the WoW Forever pack (data only; it is
	registered by Bosses_Forever.lua, which is loaded later in the .toc).

	BASE ES (2026-10-22): the 24 bosses of DBM-Party-Forever with their
	OFFICIAL client names (element 1) and their zone. The NPC ids are still
	unknown (the DBM modules have SetCreatureID commented out), so the keys
	below are PROVISIONAL (900001+) and do not collide with any real
	creature: in game nobody is explained until the real ids are captured
	in-game (/bosses DEBUG on + /bosses log prints "id(boss:Name)") and
	substituted here. The tactics go in this file (ES) and the
	editor translates them into the other languages.

	Provisional key -> encounterID (DBM):
		900001-900009 -> 3298, 3299, 3300, 3301, 3302, 3303, 3310, 3311, 3312
		900010-900013 -> 3480, 3481, 3482, 3644
		900014-900020 -> 3353, 3354, 3355, 3357, 3408, 3411, 3412
		900021-900024 -> 3493, 3494, 3495, 3496

	In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------- --
-- Ciudad de Dalaran : Zona 2959 --
-- --------------------------- --

pack["900001"] = { "Anomalía Arcana",
"* Focal Blast es un rayo arcano canalizado que cubre un área: sigue su trayectoria y sal de la línea en lugar de quedarte quieto.",
"* Su Arcane Bolt va directamente al tanque: mantenlo bajo control y evita que el grupo se agrupe junto al rayo.",
"* Elimina a los enemigos menores alrededor de la plataforma antes de la llegada: luchar contra ellos convierte el encuentro en un combate contra múltiples enemigos.",
};

pack["900002"] = { "Anciano vil",
"* Entangle roots en un jugador y aplica daño sobre él: rompa rápidamente las raíces, el daño continúa mientras el jugador está atrapado.",
"* Fel Timbers deja zonas de vapor envenenado: salga inmediatamente de las zonas verdes, no espere a que el efecto termine.",
"* Manténgalo alejado de las zonas de vapor: las raíces más el veneno es la verdadera amenaza aquí.",
};

pack["900003"] = { "Devorador de maná",
"* Debilitate drena la maná de los jugadores que estén cerca de él: distribúyanse y vigilen su maná, la pelea puede agotarlos.",
"* Drain Vitality golpea al tanque y causa daño arcano a lo largo del tiempo: el tanque necesita atención constante.",
"* La guía beta dice que es inmune al daño arcano: use otro tipo de daño.",
"* Limpie el entorno antes de la extracción y termine la pelea rápidamente.",
};

pack["900004"] = { "Elemental de maná",
"* Manamorph convierte a uno de tus jugadores en otra cosa: deshazlo lo antes posible.",
"* Silenciar detiene a los lanzadores: el sanador mantiene la distancia para no ser silenciado mientras cura.",
"* Mata a los dos Fantas de Mana primero, luego a los pequeños elementales de Mana, y solo entonces al jefe.",
"* Interrumpe el Mana Burn de los súbditos siempre que puedas.",
"* Recoge al jefe y a los dos fantas juntos, enfrentándolos lejos del grupo.",
};

pack["900005"] = { "Centinela inestable",
"* Los ataques de carga se activan y luego emiten daño arcano a todos los cercanos: los personajes de combate deben salir durante la preparación y regresar cuando termine.",
"* Los jugadores a distancia pueden mantenerse a máxima distancia, pero no permitan que todo el grupo se quede cerca del jefe.",
"* Eliminen primero a los \"Angry Tomes\" alrededor: suman daño mientras se está cargando.",
};

pack["900006"] = { "Sombra del archimago",
"* Manténlo dentro de su habitación: si sale, el encuentro se reiniciará.",
"* Arcane Explosion golpea a todo lo que esté cerca de él: el sanador se mantiene a distancia y el tanque vigila su salud.",
"* Muévete fuera del camino del Bounding Mana orb.",
"* Cuando se quede sin maná, prepárate para Mass Polymorph: los jugadores a distancia pueden usar una pared para bloquearlo si la posición lo permite.",
"* Evocation es la carga del cordero: interrumpe si puedes.",
};

pack["900007"] = { "Lyn el Ignorado",
"* Invoco esqueletos: mantenlos controlados y mata rápido antes de que se acumulen.",
"* Volley de Rayo de Sombra: es daño en grupo: mantén al grupo disperso y observa las barras de vida.",
"* La Maldición de Espinas afecta al tanque: elimina la maldición si tu clase puede.",
"* Mantén a Lyn alejado de las patrullas mientras manejas los esqueletos.",
};

pack["900008"] = { "Atrexis el Caballero de la Tumba",
"* Recoger cada esqueleto tan pronto como aparezca: los esqueletos sueltos hacen que la pelea sea caótica.",
"* Quitarle las armas al tanque: vigila su salud justo después, el tanque está indefenso.",
"* Unholy Frenzy aumenta su velocidad de ataque: usa una defensa personal durante este efecto y mantén al tanque con vida.",
"* Espera a que el tanque tenga amenaza antes de usar daño de área en los esqueletos.",
};

pack["900009"] = { "Ánima de maná",
"* Las sesiones de beta nunca probaron este encuentro: no hay habilidades documentadas, así que observa lo que hace en el juego.",
};


-- --------------------------- --
-- Excavación: Los Humedales : Zona 2998 --
-- --------------------------- --

pack["900010"] = { "Espinasal",
"* Tendon ralentiza al objetivo hasta que se estanque: vigila la velocidad de movimiento del tanque y de los jugadores a distancia.",
"* Dust Storm afecta a todos los cercanos y reduce su precisión: el sanador debe mantenerse a más de 10 metros.",
"* Mata primero a los cocodrilos, sobre todo los que salen del agua: son más peligrosos que las mecánicas del jefe.",
"* Combate en terreno despejado y no lo arrastres innecesariamente.",
};

pack["900011"] = { "Sombradiente",
"* Inflige daño constante al objetivo: el tanque necesita curación continua.",
"* El rugido aterrorizante causa miedo: interrumpirlo o usar inmunidad al miedo, y nunca luchar cerca de la hierba alta, porque huir atrae más raptores.",
"* La enrage aparece alrededor del 30% de vida y aumenta su velocidad y daño de ataque: mantener una curación lista para ello.",
"* Controla a los dos Cazadores de Bosque que vienen con él, o mata uno de ellos rápidamente.",
};

pack["900012"] = { "Guardián de reliquias",
"* Alguien tiene que encender el Panel Archivado para iniciar la pelea: recuperar salud y maná antes de hacerlo.",
"* Thunderclap golpea a todos los cercanos y ralentiza su ataque y velocidad de movimiento: los jugadores de rango deben mantenerse a 10 metros.",
"* Lo derriba y lo aturde durante cinco segundos: usa las estructuras cercanas para limitar lo lejos que puede lanzar y recoge la amenaza en el momento en que está libre.",
"* Preparar los curas para el tanque antes del golpe: recibe mucho daño mientras está aturdido.",
};

pack["900013"] = { "Horror de las Tierras Altas",
"* Un elemental pantanoso que aparece cerca del campamento de Faucedraco, en el sitio de excavación.",
"* No tiene ningún mecanismo documentado: no hay nada por lo que prepararse, así que limpia el área alrededor y observa lo que hace en el juego.",
};


-- ------------------------------ --
-- Ruinas de Lordaeron : Zona 2999 --
-- ------------------------------ --

pack["900014"] = { "Colmimarchito",
"* Leech Poison drena la salud del objetivo con el tiempo y la otorga a él: el tanque pierde salud durante toda la pelea.",
"* Elimina el veneno si tu clase lo permite; de lo contrario, mantén constantes curaciones en el tanque.",
"* Dos pequeñas arañas vienen con él: acuerden antes de la extracción si matan primero a las arañas o se centran en el jefe.",
"* Recoge también las arañas y elimina los patrullajes de arañas en el camino.",
};

pack["900015"] = { "Rath'mael",
"* Flamestrike marca un área: cuando comienza el lanzamiento, sal de ella y reposiciona en terreno despejado.",
"* Interrumpe o aturde el Flamestrike si puedes; si no, sal del terreno marcado.",
"* Fire Shield quema todo a su alrededor: el tanque y los personajes de combate reciben la mayor parte del daño.",
"* Se encuentra en el cementerio de Lordaeron: elimina a los enemigos cercanos antes de la invocación.",
};

pack["900016"] = { "El Carnicero",
"* Los golpes críticos golpean al tanque con fuerza, lo derriban y lo aturden: mantén la salud del tanque completa antes de él y recoge la amenaza en el momento en que termine el aturdimiento.",
"* Combate con la espalda del tanque contra una pared, para que el golpe no lo envíe hacia el grupo.",
"* El golpe de pies golpea a todos los que estén cerca de él: no dejes que camine hacia otros miembros.",
"* Con un segundo tanque, úsalo para mantener al jefe mientras el principal está aturdido.",
};

pack["900017"] = { "El Abandonado",
"* Eliminen las tres primeras oleadas: el evento no da tiempo para beber entre ellas, y un enemigo atrapado impide que el evento continúe.",
"* Frost Nova daña y congela a todos los cercanos: el sanador permanece a distancia y los personajes cuerpo a cuerpo se retiran.",
"* Life Drain roba salud: interrumpan o aturden al jefe tan pronto como aparezca.",
"* Sus ataques cuerpo a cuerpo aplican Chilled: el tanque se mueve más lento, así que mantengan el daño en él alto.",
};

pack["900018"] = { "Capitán de Lordaeron",
"* Un enemigo raro que aparece en el lado oeste de las ruinas: con un grupo de la Alianza, es amistoso y no puede ser combatido.",
"* Llévalo a una zona despejada y mata a las otras criaturas antes de atacar.",
};

pack["900019"] = { "Viktor el Abyecto",
"* Leech Poison drena la salud del objetivo con el tiempo y la devuelve a él: el tanque necesita curas sostenidas.",
"* Elimina las patrullas cerca de la casa quemada y recupera tu maná antes de encender el fuego.",
"* El evento lanza varias oleadas seguidas sin descanso: ataca y manténlo alejado de otros enemigos.",
"* Algunas sesiones beta terminaron el evento sin que apareciera Viktor: si eso ocurre, simplemente no hay una pelea que hacer.",
};

pack["900020"] = { "Bjork",
"* El escudo anti-magia lo hace inmune a la magia durante un tiempo: los lanzadores dejan de atacar, los personajes cuerpo a cuerpo siguen atacando.",
"* Mighty Blow daña y empuja al objetivo: mantén al tanque en la pared y observa su salud después de cada empuje.",
"* Limpia la zona antes de la pelea para que no se una la patrulla de Necrofilo.",
};


-- -------------------------- --
-- Salón de los Feudales : Zona 3065 --
-- -------------------------- --

pack["900021"] = { "Faldrim Yunquemar",
	"* Sácalo cuando su patrulla esté separada de los grupos de alrededor: con la patrulla en pie, la pelea se convierte en una limpieza de esbirros.",
	"* La Maldición de Anvilmar ralentiza el ataque y el lanzamiento del jugador marcado: dispélala si alguien puede quitar maldiciones.",
	"* Golpea durísimo al tanque: vigila la vida del tanque, no la del grupo."
};

pack["900022"] = { "Saqueo",
	"* Lleva al gólem a un sitio despejado con una pared detrás del grupo: él golpea la pared y las esquinas.",
	"* El Empujón aparta al tanque: pelear junto a una patrulla encadena el empujón contra los demás mobs.",
	"* Limpia la sala antes: los esbirros tienen que caer antes del pull o el empujón los alcanza también."
};

-- PENDIENTE 2026-10-22: la guía del dueño llama a este jefe «Magmatus» y lo pone en 2º lugar (el cliente y el DBM dicen «Infurnus», 3º): confirmar in-game si es el mismo jefe o si son dos. Las tácticas están en el fichero EN.
pack["900023"] = { "Infurnus",
	"* Mantén al elemental lejos del invocador: mientras los dos estén juntos, los esbirros no paran de venir.",
	"* Mata primero al Invocador de Hierro Oscuro y luego céntrate en el elemental.",
	"* La Nova de fuego alcanza todo a su alrededor: los de distancia y el sanador se quedan al máximo alcance, el cuerpo a cuerpo sale antes de que caiga.",
	"* La Combustión quema con el tiempo: dispélala si puedes."
};

pack["900024"] = { "Durgen Martillo Funesto",
	"* Viene con dos Gólems de Piedra Menores: controla los o la sala se llena de esbirros.",
	"* Limpia los mobs de la sala antes del pull: no merece la pena pelear con esbirros alrededor."
};

-- ----------------------------------- --
-- Sima Ígnea : Zona 389 (clásica) --
-- ----------------------------------- --

pack["11520"] = { "Taragaman el Hambriento",
	"* Su |cff71d5ff|Hspell:11970|h[Nova de fuego]|h|r golpea a todo lo que tenga alrededor: el cuerpo a cuerpo se aparta antes de que salga; a distancia y sanador, al máximo alcance para recibir lo mínimo.",
	"* Con el |cff71d5ff|Hspell:18072|h[Gancho]|h|r manda por los aires al tanque: se le emplaza lejos de los bordes con lava para que ningún empujón termine de paseo por la piedra fundida."
};

pack["11518"] = { "Jergosh el Convocador",
	"* Viene acompañado de dos esbirros: control de masas en uno, daño concentrado en el otro y, limpiados ambos, tanque y daño directos al jefe (tank and spank).",
	"* Su |cff71d5ff|Hspell:20800|h[Inmolar]|h|r arde mucho en el objetivo (se disipa con prioridad) y la |cff71d5ff|Hspell:18267|h[Maldición de debilidad]|h|r baja daño y fuerza de quien la sufre: se quita disipando magia."
};

pack["11519"] = { "Bazzalan",
	"* Está subiendo la última rampa flanqueado por dos acólitos: se puede atraer a uno solo de un tirón individual antes de abrir con el jefe.",
	"* Control de masas al esbirro restante y el daño va directo al jefe; vigila el |cff71d5ff|Hspell:744|h[Veneno letal]|h|r en el tanque: no remite solo, hay que quitarlo (despojo del druida o antídoto)."
};

pack["11517"] = { "Ogglesílex",
	"* Ataque en área frontal (envestida/hendidura): el tanque le da la espalda al grupo para que ese daño frontal no alcance al cuerpo a cuerpo ni al sanador.",
	"* Elimina primero a los esbirros que lo acompañan."
};

-- ----------------------------------- --
-- Cuevas de los Lamentos : Zona 43 (clásica) --
-- ----------------------------------- --

pack["3671"] = { "Lady Anacondra",
	"* Se transforma en druida: interrumpid su |cff71d5ff|Hspell:8040|h[Siesta de druida]|h|r (duerme a un jugador) y su |cff71d5ff|Hspell:23381|h[Golpe curativo]|h|r, o la pelea se alarga."
};

pack["3669"] = { "Lord Cobrahn",
	"* Igual que Anacondra: cortad la |cff71d5ff|Hspell:8040|h[Siesta de druida]|h|r y el |cff71d5ff|Hspell:23381|h[Golpe curativo]|h|r.",
	"* Su |cff71d5ff|Hspell:17330|h[Veneno]|h|r lo limpian al momento los desvenenadores."
};

pack["3670"] = { "Lord Pythas",
	"* Igual que Anacondra: cortad la |cff71d5ff|Hspell:8040|h[Siesta de druida]|h|r y el |cff71d5ff|Hspell:23381|h[Golpe curativo]|h|r."
};

pack["3673"] = { "Lord Serpentis",
	"* Igual que Anacondra: cortad la |cff71d5ff|Hspell:8040|h[Siesta de druida]|h|r y el |cff71d5ff|Hspell:23381|h[Golpe curativo]|h|r."
};

pack["3653"] = { "Kresh",
	"* Combate físico plano: sin interrupciones ni disipas, tanque firme y remate."
};

pack["3674"] = { "Skum",
	"* Alterna una |cff71d5ff|Hspell:6254|h[Descarga en cadena]|h|r que salta a distintos objetivos: no amontonéis al grupo y rematad rápido."
};

pack["5775"] = { "Verdan el Eterno",
	"* Interrumpid sus |cff71d5ff|Hspell:8142|h[Enredaderas]|h|r: es el único detalle del combate, el resto es cuerpo a cuerpo."
};

pack["3654"] = { "Mutanus el Devorador",
	"* La |cff71d5ff|Hspell:7967|h[Pesadilla de Naralex]|h|r es la clave de la pelea: interrumpid el cántico siempre que arranca.",
	"* Su |cff71d5ff|Hspell:7399|h[Terrificar]|h|r (pánico) es mágico: los sanos lo disipan a los castigados, y su |cff71d5ff|Hspell:8150|h[Chasquido de trueno]|h|r golpea de área: sanos atentos."
};

pack["5912"] = { "Dragón feérico descarriado",
	"* Jefe opcional y semiescondido: no hace falta matarlo para completar la mazmorra.",
	"* Su |cff71d5ff|Hspell:8040|h[Siesta de druida]|h|r duerme a un jugador (disipable de magia): si nadie corta el casteo, que lo disipe un sano."
};

-- ------------------------------------- --
-- Minas de la Muerte : Zona 36 (clásica) --
-- ---------------------------------- --

pack["644"] = { "Rhahk'Zor", -- (clásica)
	"* Su Golpe (|cff71d5ff|Hspell:6304|h[Golpe]|h|r) alcanza a un jugador al azar: el tanque cambia para que el daño no pare."
};

bos = {
	"Segador y Segadero",
	"* Su Terrificar (|cff71d5ff|Hspell:7399|h[Terrificar]|h|r) mete miedo a un jugador: dispela el miedo, la pelea se detiene mientras dure.",
	"* Su Desarmar (|cff71d5ff|Hspell:6713|h[Desarmar]|h|r) deja sin arma a quien marca: no es un cambio de tanque, es un golpe al daño del tanque.",
	"* Su Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) saca a Sneed de la máquina: Sneed suelto, mátalo y vuelve al Segador."
};
pack["642"] = bos;
pack["643"] = bos;

pack["1763"] = { "Gilnid", -- (clásica)
	"* Su Molten Metal (|cff71d5ff|Hspell:5213|h[Molten Metal]|h|r) deja caer metal ardiente sobre un jugador: sal del fuego y deja que el tanque lo vuelva a recoger."
};

pack["646"] = { "Maese Golpe", -- (clásica)
	"* Su Smite Stomp (|cff71d5ff|Hspell:6432|h[Smite Stomp]|h|r) es una cuenta atrás de 10 s: cuando cae el efecto, el pisotón se lleva la zona — escapa justo antes de que acabe.",
	"* Su Smite Slam (|cff71d5ff|Hspell:6435|h[Smite Slam]|h|r) alcanza al marcado: el tanque cambia.",
	"* Su Nimble Reflexes (|cff71d5ff|Hspell:6264|h[Nimble Reflexes]|h|r) es un efecto sobre un jugador: dispélalo."
};

pack["647"] = { "Capitán Serragruma", -- (clásica)
	"* Su Poisoned Harpoon (|cff71d5ff|Hspell:5208|h[Poisoned Harpoon]|h|r) es un disparo a distancia que envenena: dispela el veneno y mantén al tanque con vida."
};

pack["639"] = { "Edwin VanCleef", -- (clásica)
	"* Su Allies (|cff71d5ff|Hspell:5200|h[Allies]|h|r) llama a sus esbirros: mátalos antes de que se amontonen sobre el tanque.",
	"* Su Thrash (|cff71d5ff|Hspell:3391|h[Arañazo]|h|r) cae sobre sus propios esbirros: los esbirros se fortalecen, así que límpialos primero."
};

pack["3586"] = { "Minero Johnson", -- (clásica)
	"* Su Pierce Armor (|cff71d5ff|Hspell:12097|h[Perforar armadura]|h|r) es un disparo que destroza la armadura del tanque: tenlo pegado y mantén los beneficios de armadura."
};

pack["645"] = { "Galleta", -- (clásica)
	"* Su Sanación (|cff71d5ff|Hspell:5174|h[Sanación]|h|r) es la única que tiene: córtala siempre."
};

-- ------------------------------------ --
-- Castillo de Colmillo Oscuro : Zona 33 (clásica) --
-- ------------------------------------ --

pack["3887"] = { "Barón Silverlaine", -- (clásica)
	"* Su Veil of Shadow (|cff71d5ff|Hspell:7068|h[Veil of Shadow]|h|r) es una maldición sobre un jugador: dispélala para que la curación no pare.",
	"* Llama a sus esbirros: todo el DPS a los esbirros antes de que lleguen al tanque."
};

pack["3886"] = { "Zarpador el Carnicero", -- (clásica)
	"* Pelea plana: el módulo del DBM no tiene avisos de él — tanque, sanador y a rasgarlo.",
	"* Mantenlo mirando a la pared: todo lo que tiene delante recibe el golpe."
};

pack["4275"] = { "Archimago Arugal", -- (clásica)
	"* Su Arugal's Curse (|cff71d5ff|Hspell:7621|h[Arugal's Curse]|h|r) maldice a un jugador: dispélala.",
	"* Su Shadow Port (|cff71d5ff|Hspell:7587|h[Shadow Port]|h|r) se abre e invoca a sus criaturas de sombra: mátalas en cuanto aparezcan."
};

pack["4278"] = { "Comandante Springvale", -- (clásica)
	"* Pelea plana: invoca al Capitán Maldito (3872) y a más de sus muertos — baja antes al Capitán.",
	"* Mantenlo mirando a la pared: los esbirros vienen por detrás."
};

pack["3872"] = { "Capitán Juramorte", -- (clásica)
	"* Invocado por el Comandante Springvale: pelea plana, mátalo antes que al jefe.",
	"* Sus golpes al tanque son duros: mantén la curación mientras el grupo está en el Capitán."
};

pack["4274"] = { "Fenrus el Devorador", -- (clásica)
	"* Su Toxic Saliva (|cff71d5ff|Hspell:7125|h[Toxic Saliva]|h|r) envenena a un jugador: dispela el veneno.",
	"* Pelea cuerpo a cuerpo rápida: tenlo delante del tanque y no dejes que el grupo lo coja por detrás."
};

pack["4279"] = { "Odo el Cegato", -- (clásica)
	"* Pelea plana: el módulo del DBM no tiene avisos de él — tanque, sanador y a rasgarlo."
};

pack["3914"] = { "Rethilgore", -- (clásica)
	"* Pelea plana: el módulo del DBM no tiene avisos de él — tanque, sanador y a rasgarlo."
};

pack["3927"] = { "Maestro de lobos Nandos", -- (clásica)
	"* Invoca a los Bleak Worg (|cff71d5ff|Hspell:7487|h[Bleak Worg]|h|r): mátalos antes de que lleguen al tanque.",
	"* Su Lupine Horror (|cff71d5ff|Hspell:7489|h[Lupine Horror]|h|r) y su Slavering Worg (|cff71d5ff|Hspell:7488|h[Slavering Worg]|h|r) caen sobre la banda: vigila los efectos negativos y mantén la curación."
};

-- Cavernas de Brazanegra : Zona 48 (clásica) --
-- ------------------------------------- --

pack["4887"] = { "Ghamoo-Ra",
	"* Combate directo de tanque y daño: su |cff71d5ff|Hspell:5568|h[Pisotear]|h|r sacude a los cercanos al jefe; el cuerpo a cuerpo aguanta pegado y el resto reparte."
};

bos = { "Lady Sarevess",
	"* Va escoltada por guardias élite: control de masas a los esbirros (polimorfia, trampas) y el daño se concentra en ella.",
	"* Su |cff71d5ff|Hspell:407546|h[Flecha congelante]|h|r apaga al que la come (el sanador la libera disipando) y, cuando apunta el |cff71d5ff|Hspell:407653|h[Relámpago bifurcado]|h|r, el marcado se aparta del grupo.",
	"* Si invoca la |cff71d5ff|Hspell:407791|h[Rabia de Aku'mai]|h|r sobre un jugador, se disipa en cuanto el sanador la vea; sus zonas de daño en el suelo se esquivan."
};

pack["4831"] = bos;

pack["6243"] = { "Gelihast",
	"* Combate directo: su principal fastidio es la |cff71d5ff|Hspell:6533|h[Red]|h|r que saca a alguien del combate unos segundos (se rompe o se disipa); por lo demás, tanque y daño."
};

pack["4832"] = { "Señor Crepuscular Kelris",
	"* En el cliente Era es un combate sencillo: se disipa el |cff71d5ff|Hspell:8399|h[Dormir]|h|r que lanza sobre un jugador al azar y sigue tanque y daño."
};

pack["4829"] = { "Aku'mai",
	"* Combate directo con veneno: su |cff71d5ff|Hspell:3815|h[Nube de veneno]|h|r se queda donde él esté; el tanque la aleja del grupo y nadie la pisa.",
	"* Al ir muriendo entra en |cff71d5ff|Hspell:3490|h[Furia frenética]|h|r y pega más rápido: los sanadores suben el ritmo."
};

pack["4830"] = { "Viejo Serra'kis",
	"* Combate cuerpo a cuerpo sencillo en el agua baja del pozo de la sala: el tanque lo aguanta, el cuerpo a cuerpo vigila sus venenos y el grupo reparte daño normal."
};

-- -------------------------------- --
-- Las Mazmorras : Zona 34 (clásica) --
-- -------------------------------- --

pack["1696"] = { "Targor el Pavoroso",
	"* Combate de cuerpo a cuerpo plano: nada interrumpible ni disipable, tanque pegado y remate."
};

pack["1663"] = { "Dextren Tutor",
	"* Habilidad de Miedo (Fear): Dextren puede lanzar miedo al grupo, por lo que es recomendable limpiar bien la sala y los enemigos cercanos antes de iniciar el combate.",
	"* Huida: Al bajarle la vida, intentará huir, así que conviene controlarlo para que no atraiga más enemigos."
};

pack["1666"] = { "Kam Furiahonda",
	"* Combate de cuerpo a cuerpo plano: nada interrumpible ni disipable."
};

pack["1717"] = { "Hamhock",
	"* Combate de cuerpo a cuerpo plano que pega fuerte: nada interrumpible ni disipable."
};

pack["1720"] = { "Bruegal Nudoferro",
	"* Combate de cuerpo a cuerpo plano: nada interrumpible ni disipable."
};

pack["1716"] = { "Bazil Thredd",
	"* La pelea final va en el patio y sus prisioneros se unen a la bronca en cuanto empieza: matad los añadidos primero y al jefe después."
};

-- ------------------------------ --
-- Gnomeregan : Zona 90 (clásica) --
-- ------------------------------ --

bos = { "Grubbis",
	"* Pelea plana señalada por el DBM: tanque, remate y curas, pendientes del esbirro que le sale al lado (su Chomper)."
};

pack["7361"] = bos;

bos = { "Radiactivo viscoso",
	"* Andanadas tóxicas (|cff71d5ff|Hspell:21687|h[Andanada tóxica]|h|r): veneno periódico a los cercanos; el limpiavenenos lo disipa y sigue."
};

pack["7079"] = bos;

bos = { "Electrocutor 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) y cadena de relámpagos (|cff71d5ff|Hspell:11085|h[Cadena de relámpagos]|h|r) son interrumpibles: cortadlos de raíz.",
	"* Su choque (|cff71d5ff|Hspell:11084|h[Choque]|h|r) castiga al tanque: curas pendientes."
};

pack["6235"] = bos;

bos = { "Golpeamasa 9-60",
	"* Pisoteo (|cff71d5ff|Hspell:10887|h[Pisoteo]|h|r): remate que lanza a los cuerpo a cuerpo por los aires: solo queda el tanque dentro, el resto fuera de rango.",
	"* Machaque en arco (|cff71d5ff|Hspell:8374|h[Machaque en arco]|h|r) sobre el tanque: rutina de tanque y curas."
};

pack["6229"] = bos;

bos = { "Mekigeniero Termochufe",
	"* Coloca una bomba viva a un jugador al azar (|cff71d5ff|Hspell:11518|h[Bomba viva]|h|r): el marcado corre lejos del grupo hasta el estallido.",
	"* Su derribo (|cff71d5ff|Hspell:10101|h[Derribo]|h|r) despega al tanque: cuidado dónde cae.",
	"* En las versiones desde Cata añade un soplo de vapor interrumpible y golpea al tanque: cortad el soplo a tiempo."
};

pack["7800"] = bos;

-- ---------------------------------- --
-- Horado Rajacieno : Zona 47 (clásica) --
-- ---------------------------------- --

pack["4424"] = { "Aggem Malaespina",
	"* Invoca jabalíes (|cff71d5ff|Hspell:8286|h[Invocar jabalí]|h|r) a deshoras: remátadlos en cuanto salgan.",
	"* Su Ola de sanación (|cff71d5ff|Hspell:14900|h[Ola de sanación]|h|r) es interrumpible: cortadla sin piedad o el tanque se eterniza."
};

pack["4422"] = { "Agathelos el Furioso",
	"* Se enfurece (|cff71d5ff|Hspell:8269|h[Furia]|h|r) y su castigo se dispara: el tanque aguanta la subida con curas atentas."
};

pack["4425"] = { "Cazador ciego",
	"* Peleón plano señalado por el DBM: pega de cerca y nada más: tanque, remate y curas."
};

bos = { "Roogug",
	"* Invoca retumbadores de tierra (|cff71d5ff|Hspell:8270|h[Retumbador de tierra]|h|r): el tanque los agarra y se rematan al momento."
};

pack["6168"] = bos;

pack["4420"] = { "Señor Supremo Colmicarnero",
	"* Canaliza un bombardeo en remolino (|cff71d5ff|Hspell:8259|h[Bombardeo en remolino]|h|r): interrumpidlo o, si se pasa, apartaos del azote mientras cae.",
	"* Encuentro duro: pega mucho y llega escoltado por dos guardianes; el tanque aparta la escolta y las curas aprietan."
};

pack["4421"] = { "Charlga Filonavaja",
	"* Su cadena de relámpagos (|cff71d5ff|Hspell:8292|h[Cadena de relámpagos]|h|r) es interrumpible: el cortaflujos ahorra al grupo.",
	"* Se purifica de los maleficios en cuanto caen (|cff71d5ff|Hspell:8361|h[Pureza]|h|r): el daño físico es el camino."
};

pack["4428"] = { "Portavoz de la muerte Jargba",
	"* Domina la mente de un jugador (|cff71d5ff|Hspell:14515|h[Dominar]|h|r): los cortaflujos normales no la cortan; un aturdimiento la detiene, aunque al soltarse relanza al instante: al dominado se le baja a palos hasta que suelte."
};

pack["4842"] = { "Clamor de Tierra Halmgar",
	"* Invoca retumbadores de tierra (|cff71d5ff|Hspell:8270|h[Retumbador de tierra]|h|r): se reparten y rematan pronto."
};

-- -------------------------------------- --
-- Monasterio Escarlata : Zona 189 (clásica) --
-- -------------------------------------- --

pack["3983"] = { "Interrogador Vishas",
	"* Pelea corta y plana: su único aviso es Inmolar (|cff71d5ff|Hspell:9034|h[Inmolar]|h|r) sobre un jugador, daño mágico que persiste; dispel mágico o cura con ojo."
};

pack["4543"] = { "Mago sangriento Thalnos",
	"* Punta de llamas (|cff71d5ff|Hspell:8814|h[Punta de llamas]|h|r) a distancia y Onda de fuego (|cff71d5ff|Hspell:12470|h[Onda de fuego]|h|r) alrededor de él: el cuerpo a cuerpo suelta cuando lanza la onda.",
	"* Sin más mecánica: tanquear, derribarlo y cerrar el cementerio."
};

pack["4542"] = { "Gran Inquisidor Fairbanks",
	"* Inquisidor escondido entre las tumbas del cementerio: muchos grupos lo dejan para después; si lo peleas, pelea plana.",
	"* Su Maldición de sangre (|cff71d5ff|Hspell:8282|h[Maldición de sangre]|h|r) es maleficio: quítala con disipación de maleficios."
};

pack["3974"] = { "Domador de jaurías Loksey",
	"* Pelea flanqueado por sus lebreles y aplica Codicia de sangre (|cff71d5ff|Hspell:6742|h[Codicia de sangre]|h|r) a la perrada: golpean más rápido, así que barre perros en cuanto puedas mientras el tanque lo sujeta.",
	"* Nada más que pelar: si los canes se amontonan, mátalos primero y él cae pronto."
};

pack["6487"] = { "Arcanista Doan",
	"* Castea Metamorfosis (|cff71d5ff|Hspell:13323|h[Metamorfosis]|h|r) a un jugador y repite Explosión arcana (|cff71d5ff|Hspell:9433|h[Explosión arcana]|h|r) a su alrededor: pegado a él no se castea.",
	"* Su Silencio (|cff71d5ff|Hspell:8988|h[Silencio]|h|r) en área corta los casts cercanos: nadie conjura al pie del arcanista.",
	"* Detonar (|cff71d5ff|Hspell:9435|h[Detonar]|h|r) es el golpe serio: cuando carga, corre fuera del radio o esconde la vista tras las estanterías de la sala antes de que reviente."
};

pack["3975"] = { "Herod",
	"* Su Torbellino (|cff71d5ff|Hspell:8989|h[Torbellino]|h|r) gira cada ~18 s: el cuerpo a cuerpo sale del radio y vuelve cuando termina el remolino.",
	"* Con la vida baja coge Furia (|cff71d5ff|Hspell:8269|h[Furia]|h|r): más daño, aprieta al tanque y cura sin descuidarte.",
	"* Al caer Herod se avalanza un enjambre de reclutas escarlatas por la puerta: no bajes la guardia hasta barrerlos."
};

pack["3976"] = { "Comandante Escarlata Mograine",
	"* Pelea plana con cleave, empezando por él: Melenablanca solo baja de su balcón cuando él cae.",
	"* Tras su primera muerte, el Sanar (|cff71d5ff|Hspell:12039|h[Sanar]|h|r) de Melenablanca sobre él se corta: sin la interrupción vuelve al combate con la vida entera.",
	"* Cortado el sanar y pasada la resurrección, el combate es derribar a los dos sin prisa."
};

pack["3977"] = { "Alta Inquisidora Melenablanca",
	"* Baja del balcón cuando Mograine cae y lanza Sueño profundo (|cff71d5ff|Hspell:9256|h[Sueño profundo]|h|r) a un jugador durante 10 s: la cortina que cubre el regreso de Mograine.",
	"* Después castea Sanar (|cff71d5ff|Hspell:12039|h[Sanar]|h|r) para llenar al resucitado: córtala siempre.",
	"* Tras revivirlo, cae ella primero; el Mograine resucitado es el último trofeo."
};

bos = {
	"El Jinete decapitado",
	"* Jefe festivo de Hallow's End clásico: se invoca en el Cementerio del Monasterio interactuando con el santuario de calabazas que espera en la entrada.",
	"* |cff71d5ff|Hspell:42380|h[Conflagración]|h|r prende a un jugador al azar 4 s y lo hace huir despavorido: apartaos de él mientras arde; el sanador le saca del apuro.",
	"* |cff71d5ff|Hspell:42514|h[Aplastar alma]|h|r castiga a otro jugador durante 15 s: curas al marcado.",
	"* El bucle del combate: cuerpo al 1% -> queda inmune y la CABEZA sale volando mientras el cuerpo se cura a su aire -> TODO el foco a la Cabeza antes de que regrese; sale tres veces, y la tercera ya no vuelve: derribadla para acabar.",
	"* En la última vuelta del cuerpo llegan las Calabazas pulsantes (esbirros sin id): el tanque las retiene y la banda las corta con AoE."
};

pack["23682"] = bos;

pack["23775"] = bos;

-- ----------------------------------- --
-- Zahúrda Rajacieno : Zona 129 (clásica) --
-- ----------------------------------- --

bos = { "Mordresh Ojo de Fuego",
	"* Pelea sobre un montículo de huesos entre un enjambre de esqueletos no élites: el tanque arranca con área para cogerlos todos, los agrupa y se limpian primero; sin prisa por pegar al jefe.",
	"* Cuando lanza su bola de fuego, tanque o cuerpo a cuerpo lo interrumpen: cada cast evitado es menos daño entrante.",
	"* El sanador espera unos segundos a que el tanque asegure el aggro del enjambre antes de curar con fuerza: la curación temprana puede arrancar a los esqueletos y reventar el pull.",
	"* Su onda de fuego (|cff71d5ff|Hspell:12470|h[Onda de fuego]|h|r) barre al melé a su pie: salir del radio."
};

pack["7357"] = bos;

pack["7355"] = { "Tuten'kash", -- (era clásica)
	"* La araña de la cripta: su Maldición de Tut (|cff71d5ff|Hspell:12255|h[Maldición de Tut]|h|r) marca a un jugador (maleficio, a quitar) y su Escupir telarañas (|cff71d5ff|Hspell:12252|h[Escupir telarañas]|h|r) castiga al melé en área.",
	"* Pega con el veneno arácnido al tanque: sanación sostenida."
};

pack["7356"] = { "Fauzpeste el Putrefacto", -- (era clásica)
	"* Su Tacto marchito (|cff71d5ff|Hspell:11442|h[Tacto marchito]|h|r) es ENFERMEDAD sobre un jugador: el druida la purga."
};

pack["7354"] = { "Morrandrajos", -- (era clásica)
	"* El Dominar (|cff71d5ff|Hspell:7645|h[Dominar]|h|r) pone a un jugador CONTRA la banda: aturdirlo o purgar la magia en el dominado."
};

pack["8567"] = { "Glotón", -- (era clásica)
	"* El devorador de carnaza: entra en Furia (|cff71d5ff|Hspell:12795|h[Furia]|h|r) al bajar la vida — DPS duro al final."
};

pack["7358"] = { "Amnennar el Gélido", -- (era clásica)
	"* El frío del cementerio: su Ira de Amnennar (|cff71d5ff|Hspell:13009|h[Ira de Amnennar]|h|r) estalla en área — reparto y sanación al aguante."
};

-- --------------------------- --
-- Uldaman : Zona 70 (clásica) --
-- --------------------------- --

pack["6910"] = { "Revelosh",
	"* Trogg chamán de las salas de entrada: su Cadena de relámpagos (|cff71d5ff|Hspell:16006|h[Cadena de relámpagos]|h|r) se corta siempre.",
	"* Si se cuela una Bola de rayos (|cff71d5ff|Hspell:15801|h[Bola de rayos]|h|r), córtala también si el grupo puede."
};

bos = { "Los enanos desaparecidos",
	"* Trío de enanos (Baelog, Eric «el Veloz» y Olaf) en la sala de los artesanos: los tres en un único pull, pelea plana.",
	"* Tres a la vez sin mecánicas anotadas por el DBM: el tanque los reúne y AoE + cleave los tumban."
};

pack["6906"] = bos;

pack["6907"] = bos;

pack["6908"] = bos;

pack["7206"] = { "Vigilante de piedra anciano",
	"* Guardián de piedra de las salas centrales: pelea estática con machaque físico fuerte.",
	"* Las Tormentas de arena (|cff71d5ff|Hspell:10132|h[Tormentas de arena]|h|r) no cesan: daño en área, los rangos no se amontonan y el saneo se reparte."
};

pack["7023"] = { "Centinela obsidiana",
	"* Gólem centinela de obsidiana: su Reflejo (|cff71d5ff|Hspell:9941|h[Reflejo]|h|r) devuelve los hechizos al caster — los conjuradores no conjuran mientras corre.",
	"* Esquirla de obsidiana (|cff71d5ff|Hspell:10072|h[Esquirla de obsidiana]|h|r): brotes que se limpian en cuanto aparecen."
};

pack["7291"] = { "Galgann Flamartillo",
	"* Chamán de fuego de las salas de artífices: Punta de fuego (|cff71d5ff|Hspell:6725|h[Punta de fuego]|h|r) y Látigo de llamas (|cff71d5ff|Hspell:3356|h[Látigo de llamas]|h|r), las dos cortes a cada vez.",
	"* La Nova de fuego (|cff71d5ff|Hspell:11969|h[Nova de fuego]|h|r) revienta alrededor: el cuerpo a cuerpo sale del radio y vuelve."
};

pack["4854"] = { "Grimlok",
	"* Trogg chamán jefe de las cavernas bajas: Cadena de relámpagos (|cff71d5ff|Hspell:8292|h[Cadena de relámpagos]|h|r) se corta siempre y Bola de rayos (|cff71d5ff|Hspell:12167|h[Bola de rayos]|h|r) de propina.",
	"* Codicia de sangre (|cff71d5ff|Hspell:6742|h[Codicia de sangre]|h|r): quien la lleve, él o un esbirro, cae primero.",
	"* El Sueño cristalino (|cff71d5ff|Hspell:3636|h[Sueño cristalino]|h|r) duerme a un jugador (magia): dispel o golpes lo despiertan.",
	"* Reflejo (|cff71d5ff|Hspell:9906|h[Reflejo]|h|r): sin conjuros mientras dure, misma regla de devolución."
};

pack["7228"] = { "Hierraya",
	"* Guardiana despertada de la sala del mapa: pelea estática, tanqueada en sitio.",
	"* Su Machaque en arco (|cff71d5ff|Hspell:8374|h[Machaque en arco]|h|r) es frontal: el cuerpo a cuerpo jamás se planta recto delante de ella.",
	"* Pisotón de guerra (|cff71d5ff|Hspell:11876|h[Pisotón de guerra]|h|r) a su alrededor: aturde en área, el cuerpo a cuerpo lo aguanta y el saneo sigue."
};

pack["2748"] = { "Archaedas",
	"* El titán dormido de la bóveda: combate largo de ir limpiando invocaciones mientras lo desgastan.",
	"* Despierta guardianes terrosos (|cff71d5ff|Hspell:10252|h[Despertar guardianes terrosos]|h|r) y guardián de la bóveda (|cff71d5ff|Hspell:10258|h[Despertar guardián de la bóveda]|h|r): los adds llegan en oleadas — cleave, el jefe se queda al tanque.",
	"* El Temblor de tierra (|cff71d5ff|Hspell:6524|h[Temblor de tierra]|h|r) machaca la zona a su alrededor: el cuerpo a cuerpo aguanta con saneo, nada que esquivar.",
	"* Regla clásica: el tanque lo sujeta en su pedestal, el daño barre guardianes y Archaedas cae al final."
};

-- ------------------------------- --
-- Zul'Farrak : Zona 209 (clásica) --
-- ------------------------------- --

pack["8127"] = { "Antu'sul",
	"* Primer jefe, en la fosa de entrada: curandero troll que se sostiene con sus tótems y sus esbirros.",
	"* Sus Ondas de sanación se cortan: la que se lanza a sí mismo (|cff71d5ff|Hspell:11895|h[Ola de sanación]|h|r) y la que va a los esbirros (|cff71d5ff|Hspell:15982|h[Ola de sanación]|h|r).",
	"* Sus tótems se revientan en cuanto brotan: el de agarre (|cff71d5ff|Hspell:8376|h[Tótem de agarre terrestre]|h|r) enraíza al grupo y el de sanación (|cff71d5ff|Hspell:4971|h[Tótem de sanación]|h|r) le devuelve vida a él y a su perrada.",
	"* Los esbirros que levanta (|cff71d5ff|Hspell:11894|h[Esbirros]|h|r) caen primero: el DPS los barre mientras el tanque sujeta al jefe."
};

pack["7272"] = { "Theka el Mártir",
	"* Pelea de un solo objetivo: su Peste febril (|cff71d5ff|Hspell:8600|h[Peste febril]|h|r) es una enfermedad curable — dispel en cuanto cae.",
	"* A mitad de pelea se transforma (|cff71d5ff|Hspell:11089|h[Transformación]|h|r): el tanque lo sostiene y sigue cayendo igual."
};

pack["7271"] = { "Médico brujo Zum'rah",
	"* Curandero del patio con sus acólitos: cada lanzamiento se corta — la Ola de sanación (|cff71d5ff|Hspell:12491|h[Ola de sanación]|h|r) y, sobre todo, la Lluvia de saetas de sombra (|cff71d5ff|Hspell:15245|h[Lluvia de saetas de sombra]|h|r), que castiga a todo el grupo en 30 m.",
	"* Su Guarda de Zum'rah (|cff71d5ff|Hspell:11086|h[Guarda de Zum'rah]|h|r) planta a sus pies un tótem que saca un esqueleto cada 5 s: se revienta en cuanto brota.",
	"* Despertar zombis: resucita Zombis de Zul'Farrak de las tumbas cercanas de la sala — esqueletos y zombis caen en cuanto asoman."
};

pack["7273"] = { "Gahz'rilla",
	"* La bestia gigante de la plaza: el tanque la sujeta en sitio y el rango no se amontona tras ella.",
	"* Su Machaque (|cff71d5ff|Hspell:11902|h[Machaque]|h|r) se estampa al suelo: daño en área que el cuerpo a cuerpo aguanta con saneo.",
	"* Congelación sólida (|cff71d5ff|Hspell:11836|h[Congelación sólida]|h|r) congela a quien pilla por completo: el saneo cubre mientras dura."
};

pack["7795"] = { "Hidromántica Velratha",
	"* Maga del nivel superior: pelea plana con un solo detalle — cada Ola de sanación (|cff71d5ff|Hspell:12491|h[Ola de sanación]|h|r) se corta."
};

bos = { "Nekrum y Sezz'ziz",
	"* Pareja del evento de la pirámide (los prisioneros liberados traicionan): se despachan cuando salen, tras la ronda de esbirros.",
	"* Las sanaciones de Sezz'ziz — Renovar (|cff71d5ff|Hspell:8362|h[Renovar]|h|r) y Sanar (|cff71d5ff|Hspell:12039|h[Sanar]|h|r) — se cortan siempre o la pareja alarga la pelea.",
	"* El Escudo divino (|cff71d5ff|Hspell:13704|h[Escudo divino]|h|r) corta el daño por completo: mientras dura, el DPS no pierde el tiempo.",
	"* La Peste febril (|cff71d5ff|Hspell:8600|h[Peste febril]|h|r) sale también aquí: enfermedad curable, dispel disponible."
};

pack["7796"] = bos;

pack["7275"] = bos;

pack["7267"] = { "Jefe Ukorz Cabellarena",
	"* El caudillo de la cima de la pirámide, con su mano derecha Ruuzlu (sin entrada propia): pelea frontal de tanque en sitio con machaque físico duro.",
	"* Ruuzlu cae PRIMERO: cuando el jefe muere, se enfurece (+30% daño y +40% velocidad de ataque) y castiga lo que quede de la sala.",
	"* Al caer la vida se lanza su Furia (|cff71d5ff|Hspell:8269|h[Furia]|h|r): el tanque aprieta las defensas y el saneo sostiene el tramo final."
};

-- ----------------------------- --
-- Maraudon : Zona 349 (clásica) --
-- ----------------------------- --

pack["12203"] = { "Derrumblo",
	"* Primer gólem de roca serio de la caverna: pelea plana con machaque físico sobre el tanque.",
	"* Su Repele (|cff71d5ff|Hspell:11130|h[Repele]|h|r) lanza al tanque hacia atrás y suelta la amenaza: el tanque la recupera al momento y el resto sigue en su sitio hasta el reenganche.",
	"* El Derrumbe (|cff71d5ff|Hspell:21808|h[Derrumbe]|h|r) derriba en área a su alrededor: el cuerpo a cuerpo se levanta y sigue; huir no hace falta.",
	"* Pisotear (|cff71d5ff|Hspell:5568|h[Pisotear]|h|r) golpea la zona pegada a él: mantenerlo en sitio lo vuelve inofensivo."
};

pack["13282"] = { "Noxxion",
	"* Elemental de esmeralda del salón de cristales: pelea estática en su nido.",
	"* Uppercut (|cff71d5ff|Hspell:10966|h[Uppercut]|h|r) eleva al tanque en alto: saneo a pie firme y vuelta a la posición.",
	"* Invoca esbirros (|cff71d5ff|Hspell:21707|h[Esbirros de Noxxion]|h|r) periódicamente: AoE en cuanto se amontonen, antes de que le sumen presión."
};

pack["12258"] = { "Latisable",
	"* Planta gigante espinosa de las veredas verdes: pelea llana, machaca al tanque y poco más.",
	"* Sin mecánicas anotadas por el DBM: tanquear, sanar y talar."
};

pack["12236"] = { "Lord Lenguavil",
	"* Sátiro fantasma: pelea de caster de sombra con su Bomba de humo (|cff71d5ff|Hspell:7964|h[Bomba de humo]|h|r) que lo envuelve y lo quita de vista.",
	"* Con la niebla, el tanque lo sujeta por amenaza y el cuerpo a cuerpo espera a que se disipe el humo."
};

pack["12225"] = { "Celebras el Maldito",
	"* Guardián del portal hacia la princesa: su Ira (|cff71d5ff|Hspell:21807|h[Ira]|h|r) se corta siempre, daño natural serio si sale entera.",
	"* Raíces enredadoras (|cff71d5ff|Hspell:12747|h[Raíces enredadoras]|h|r) arraiga a un jugador: es magia, se disipa o se rompe con daño.",
	"* El DBM avisa de Corromper fuerzas (|cff71d5ff|Hspell:21968|h[Corromper fuerzas]|h|r): aprieta el daño y cae plano; nada que esquivar."
};

pack["13601"] = { "Manitas Gizlock",
	"* Goblin ingeniero de la caverna profunda: su Cañón dragón goblin (|cff71d5ff|Hspell:21833|h[Cañón dragón goblin]|h|r) escupe fuego en cono frontal.",
	"* El tanque lo fija de espaldas al grupo: nadie se planta delante del cañón y cae plano."
};

pack["13596"] = { "Escamapodrida",
	"* Cocodrilo del estanque previo al salón de la princesa: pelea llana en el agua del estanque.",
	"* Mordisco fatal (|cff71d5ff|Hspell:16495|h[Mordisco fatal]|h|r) machaca al tanque: saneo por turnos y la emergencia guardada."
};

pack["12201"] = { "Princesa Theradras",
	"* Jefa final, colosal: combate estático en su salón.",
	"* Mirada repulsiva (|cff71d5ff|Hspell:21869|h[Mirada repulsiva]|h|r) siembra el pánico alrededor (temor): distanciarse un poco; un tótem de chamán contra el temor lo limpia al momento.",
	"* Pedrusco (|cff71d5ff|Hspell:21832|h[Pedrusco]|h|r) vuela hacia los lejanos: los rangos reparten posición sin amontonarse.",
	"* Campo de polvo (|cff71d5ff|Hspell:21909|h[Campo de polvo]|h|r) azota la zona a su alrededor: el cuerpo a cuerpo corre fuera del radio (el DBM grita correr) y vuelve al terminar."
};

-- ---------------------------------- --
-- El Templo de Atal'Hakkar : Zona 109 (clásica) --
-- ---------------------------------- --

pack["5710"] = { "Jammal'an el Profeta", -- (era clásica)
	"* El profeta del salón, con su guarda Ogom (sin entrada propia) al lado: pelea de pareja en plaza.",
	"* Jammal'an planta su Tótem de agarre terrestre (|cff71d5ff|Hspell:8376|h[Tótem de agarre terrestre]|h|r) — enraíza a la banda — y marca con Maleficio de Jammal'an (|cff71d5ff|Hspell:12479|h[Maleficio de Jammal'an]|h|r) a un jugador, que aguarda cubierto;",
	"* también suelta Ola de sanación (12492) y Llamarada (12468).",
	"* Ogom castiga con Descarga de Sombras (|cff71d5ff|Hspell:12471|h[Descarga de Sombras]|h|r) SIEMPRE corto y pinta Palabra de dolor: Sombras (|cff71d5ff|Hspell:11639|h[Palabra de dolor: Sombras]|h|r) (magia) y Maldición de debilidad (|cff71d5ff|Hspell:12493|h[Maldición de debilidad]|h|r) (maleficio)."
};

pack["5719"] = { "Morphaz", -- (era clásica)
	"* Draco verde de la fosa inundada: el kit es gemelo de los cuatro warders del templo.",
	"* Pelea plana: su Aliento ácido (|cff71d5ff|Hspell:12884|h[Aliento ácido]|h|r) castiga el frente y el Batir de alas (|cff71d5ff|Hspell:12882|h[Batir de alas]|h|r) repele — tanque en sitio y banda tras él."
};

pack["5720"] = { "Sastrón", -- (era clásica)
	"* Draco verde del piso de arriba, junto a Segasueños: kit gemelo de los warders.",
	"* Pelea plana: Aliento ácido (|cff71d5ff|Hspell:12884|h[Aliento ácido]|h|r) castiga el frente y Batir de alas (|cff71d5ff|Hspell:12882|h[Batir de alas]|h|r) repele — tanque aguanta, banda cañonada tras él."
};

pack["5721"] = { "Segasueños", -- (era clásica)
	"* Draco verde del piso de arriba, junto a Sastrón: kit gemelo de los warders.",
	"* Pelea plana: su Aliento ácido (|cff71d5ff|Hspell:12884|h[Aliento ácido]|h|r) castiga en cono frontal con herida de naturaleza, y el Batir de alas (|cff71d5ff|Hspell:12882|h[Batir de alas]|h|r) empuja hacia atrás — tanque aguanta, banda encajonada tras él."
};

pack["5722"] = { "Hazzas", -- (era clásica)
	"* Draco verde de la fosa inundada, pareja de Morphaz: kit gemelo de los warders.",
	"* Pelea plana: Aliento ácido (|cff71d5ff|Hspell:12884|h[Aliento ácido]|h|r) castiga el frente y Batir de alas (|cff71d5ff|Hspell:12882|h[Batir de alas]|h|r) repele — tanque aguanta, banda cañonada tras él."
};

pack["5712"] = { "Zolo", -- (era clásica, mini-jefe opcional de la guardia Atal'ai; kit del dueño vía Wowhead 2026-10)
	"* Mini-jefe troll de la guardia Atal'ai, opcional y duro: su Cadena de relámpagos salta entre los juntados — se despejan tras cada cast.",
	"* Invoca a su lado un tótem que saca esqueletos sin parar: se revienta en cuanto brota.",
	"* Su debuff en área roba 10 de todos los atributos y SE ACUMULA si la pelea se estira — se mata rápido."
};

pack["5709"] = { "Sombra de Eranikus", -- (era clásica)
	"* La sombra del dragón verde que el rito del altar despierta en la fosa: la invocación final del templo clásico.",
	"* Su Sueño profundo (|cff71d5ff|Hspell:12890|h[Sueño profundo]|h|r) duerme a quien pilla, el Aliento ácido (|cff71d5ff|Hspell:12533|h[Aliento ácido]|h|r) castiga el tanque y el Pisotón de guerra (|cff71d5ff|Hspell:24375|h[Pisotón de guerra]|h|r) salta en el cuerpo a cuerpo."
};

pack["8443"] = { "Avatar de Hakkar", -- (era clásica)
	"* La sombra del dios serpiente que el rito del templo despierta: pelea corta y venenosa.",
	"* Su Maldición de lenguas (|cff71d5ff|Hspell:12889|h[Maldición de lenguas]|h|r) (maleficio) alarga los conjuros de la banda y su Provocar locura (|cff71d5ff|Hspell:12888|h[Provocar locura]|h|r) cae sobre un jugador — aviso crítico del DBM, se le atiende rápido."
};

-- -------------------------------- --
-- Scholomance : Zona 289 (clásica) --
-- -------------------------------- --

pack["10506"] = { "Kirtonos el Heraldo", -- (era clásica)
	"* Se lo saca en el balcón poniendo la Sangre de los inocentes (del trapo de la entrada) en su pedestal.",
	"* En forma de gárgola suelta una maldición que seca el daño infligido: maleficio a purgar al vuelo.",
	"* Su derribo tira gente al vacío del balcón: el tanque lo posiciona de ESPALDAS al grupo y lejos del borde."
};

pack["10505"] = { "Instructora Malicia", -- (era clásica)
	"* Dicta clase rodeada de alumnos no-muertos: el AoE (y el Encadenar no-muerto) limpia las oleadas en cuanto salen.",
	"* Sus sanaciones, SIEMPRE cortables."
};

pack["11622"] = { "Traquehuesos", -- (era clásica)
	"* El gigante del osario llega rodeado de esqueletos: la guardia se limpia antes que él.",
	"* Golpea con hendidura — NADIE delante salvo el tanque.",
	"* Suelta la amenaza del tanque una y otra vez: los DPS frenan para no robar el agro."
};

pack["10503"] = { "Jandice Barov", -- (era clásica)
	"* Se duplica en ilusiones idénticas: el grupo caza al cuerpo REAL (o revienta las copias con AoE) antes de que el daño combinado funda al sanador."
};

pack["10504"] = { "Lord Alexei Barov", -- (era clásica)
	"* Llega con dos guardias: se sacan primero o el agro se parte en dos.",
	"* Su Velo de sombra (|cff71d5ff|Hspell:17820|h[Velo de sombra]|h|r) es MALEFICIO que recorta la sanación recibida un 75%: se purga al vuelo (el DBM avisa del objetivo)."
};

pack["10507"] = { "El Raveniano", -- (era clásica)
	"* El gigante ghoul de la cripta: golpes BRUTALES al tanque — la sanación le queda pegada todo el combate."
};

pack["11261"] = { "Doctor Theolen Krastinov", -- (era clásica)
	"* El Carnicero: melé incesante; al enojarse entra en FRENESÍ con daño y velocidad disparados — tanque con defensas y sanación prioritaria mientras dura."
};

pack["10502"] = { "Lady Illucia Barov", -- (era clásica)
	"* Controla la MENTE a un jugador: se aturde, se asusta o se polimorfiza SIN matar al controlado.",
	"* Sus Descargas de sombra SIEMPRE cortables; su silencio en área manda a casters y sanadores detrás del tanque."
};

pack["10901"] = { "Panteólogo Polkelt", -- (era clásica)
	"* Abre con esbirros a los lados: se limpian primero, luego a él.",
	"* Siembra charcos de ácido/veneno en el suelo: no se pisan y sus toxinas se disipan rápido."
};

pack["10433"] = { "Marduk Pozonegro", -- (era clásica)
	"* En el aula de nigromancia, junto a Vectus: se arranca despacio para no saltarse a los dos juntos; sus convocatorias esqueléticas, a limpiar rápido."
};

pack["10432"] = { "Vectus", -- (era clásica)
	"* El otro del aula de nigromancia: caster plano — sus esbirros y fragmentos de alma, a limpiar al vuelo."
};

pack["10508"] = { "Ras Murmuracarcha", -- (era clásica)
	"* Lich de escarcha: su Nova congela a la melé — se entra con refresco y se golpea entre oleadas.",
	"* Con Armadura de escarcha enlentece a sus atacantes, y su Empujón de escarcha lanza al tanque lejos y borra la amenaza: el tanque vuelve con calma, nadie lo adelanta."
};

pack["1853"] = { "Maestro Oscuro Gandling", -- (era clásica)
	"* Su Portal de sombra (|cff71d5ff|Hspell:17950|h[Portal de sombra]|h|r) METE a un jugador en una de las salas cerradas de estudiantes (el aviso anuncia el lanzamiento, no el objetivo).",
	"* El aislado se pelea SOLO contra los estudiantes de su sala hasta abrirse la puerta; el resto aguanta sus Descargas de sombra y SIGUE pegando sin detener el DPS.",
	"* Se repite hasta que cae: reloj del DPS mientras las salas escupen gente."
};

-- ------------------------------------- --
-- Profundidades de Roca Negra : Zona 230 (clásica) --
-- ------------------------------------- --

pack["9018"] = { "Alta interrogadora Gerstahn", -- (era clásica)
	"* La interrogadora de los calabozos: sus descargas de sombra castigan a los distantes — sanación atenta y la sala repartida."
};

pack["9025"] = { "Lord Roccor", -- (era clásica)
	"* Su Pisotón (2 s) castiga todo lo cercano y su Choque de Tierra corta los conjuros: repartidos y sin castear al aire.",
	"* El Choque de llamas vuelve cada ~12 s: el melé sale del radio y regresa."
};

pack["9319"] = { "Maestro de canes Grebmar", -- (era clásica; el cliente clásico puede traer «Domador de jaurías», confirmar in-game)
	"* La jauría encadenada entra primero: AoE y control a los perros; el maestro al tanque."
};

bos = { "Círculo de la Ley", -- (era clásica)
	"* El evento de la arena: el ring saca a UNO de los seis campeones (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor o Leftok) — el tanque lo agarra y la pelea va a la plancha."
};

pack["9028"] = bos;

pack["9031"] = bos;

pack["9029"] = bos;

pack["9030"] = bos;

pack["9032"] = bos;

pack["9027"] = bos;

pack["9024"] = { "Piromántico Fruto del Saber", -- (era clásica)
	"* El piromántico del recinto: piro en área al grupo — repartidos y sanación al aguante."
};

pack["9017"] = { "Lord Incendius", -- (era clásica)
	"* Maldición del señor elemental: roba 100-132 de resistencia al Fuego, 30 s y hasta tres veces: el marcado se aparta de las llamas.",
	"* Arremetida poderosa: despacha al tanque hacia atrás (lava por todos lados): espalda con pared.",
	"* Tormenta de Fuego castiga el área cercana ~30 s y su Ráfaga ígnea rueda 20 m: el melé sale y el sanador tapa el golpe."
};

pack["9041"] = { "Depositario Stilgiss", -- (era clásica)
	"* El depositario de la bóveda: su ogro Verek pelea a su lado — el tanque separa o aparta; sanación constante."
};

pack["9056"] = { "Finoso Virunegro", -- (era clásica)
	"* El duende de la fundición: pelea plana con buen tanque."
};

pack["9016"] = { "Bael'Gar", -- (era clásica)
	"* Su Salpicadura de magma se acumula hasta 3 veces en 24 s sobre el tanque: rotación o purga a mano.",
	"* La convocatoria de prole lanza Fuego al azar con un esbirro de lodo de regalo: el tanque lo agarra y se remata enseguida."
};

pack["9033"] = { "General Forjainquina", -- (era clásica)
	"* Su Hendidura va desvistiendo al tanque acumulando: rotación si se apila.",
	"* Los críticos le aceleran la mano y el Enfurecer sube el castigo físico: los curanderos aguantan la racha con él."
};

pack["8983"] = { "Señor gólem Argelmach", -- (era clásica)
	"* Cadena de relámpagos que salta entre los cercanos: repartidos mientras dura.",
	"* Pelea junto a dos de sus construcciones en activo: el tanque las separa y reparte el agarre.",
	"* Sin prisa: los gólems caídos no cierran la pelea — repasa el salón completo."
};

pack["9537"] = { "Hurley Negrálito", -- (era clásica)
	"* El borracho de la cueva de la taberna: melé a la plancha con buen tanque."
};

pack["9502"] = { "Falange", -- (era clásica)
	"* El guardia mecánico del salón de la forja: melé dura al tanque."
};

pack["9499"] = { "Plugger Aropatoso", -- (era clásica)
	"* El tabernero del Guzzler: al caer él se lía la TABERNA entera — los parroquianos entran en oleadas: AoE del tanque y sin despistes."
};

pack["9156"] = { "Embajador Latifuego", -- (era clásica)
	"* Explosión de Fuego constante sobre el melé: rotación o curas a ritmo.",
	"* Espíritus ardientes: elementales por las runas de la sala; el que le llega le suma +5% de daño y tamaño hasta 50 cargas: ciérrales el paso y remátalos de camino."
};

bos = { "Los Siete", -- (era clásica)
	"* Oleadas de siete enanos fantasma en el salón de la forja, uno tras otro, cada uno con el kit de su clase clásica.",
	"* El guerrero Anger'rel: Golpe heroico y Hendidura de armadura al tanque, con Grito de batalla y Ola de choque en sus tiempos.",
	"* El brujo Doom'rel: Descarga de las Sombras y Maldición de agonía, invoca Súcubo o Clamavelo y mete Miedo: quiten el Miedo y rematen al invocado.",
	"* El pícaro Dope'rel: Gubia envenenada mordiendo por la espalda y Esfumarse: nadie queda de espaldas sueltas.",
	"* El chamán Gloom'rel: tótems, Choque de Tierra y purga de beneficios: los tótems caen en cuanto brotan.",
	"* El mago Hate'rel: Descarga de Escarcha, Ventisca y Polimorfia: corten el Polimorfia y salgan de la Ventisca.",
	"* El cazador Seeth'rel: dispara de lejos, siembra trampas y suelta una mascota salvaje: cierren la distancia con cuidado.",
	"* El sacerdote Vile'rel: cura a los suyos con Sanación relámpago y lanza Mentalizar: interrupciones a sus curas lo primero."
};

pack["9035"] = bos;

pack["9039"] = bos;

pack["9040"] = bos;

pack["9037"] = bos;

pack["9034"] = bos;

pack["9038"] = bos;

pack["9036"] = bos;

pack["9938"] = { "Magmus", -- (era clásica)
	"* El gigante de la ciudadela: melé pesada al tanque y sanación constante."
};

bos = { "Emperador Dagran Thaurissan", -- (era clásica)
	"* Avatar de la Llama: 10 s inmune a la magia con golpes de Fuego añadido: los lanzadores contienen mientras dura.",
	"* Mano de Thaurissan: golpe de Fuego que aturde 5 s — mejor sin montón para no perder a varios a la vez.",
	"* Furia del Hierro: su maza encadena hasta 3 golpes extra y sube el crítico un 10% durante 5 s: el tanque aguanta la racha con curas.",
	"* La Princesa Moira Bronzebeard pelea a su lado: lo cura cada dos por tres y castiga con magia Sagrada y de Sombras: controladla o, si el grupo tira rápido, rematadla antes que a él."
};

pack["9019"] = bos;

-- ------------------------------ --
-- La Masacre : Zona 429 (clásica) --
-- ------------------------------ --

pack["11489"] = { "Tendris Alabeo", -- (era clásica)
	"* El árbol anciano: sus Lianas (|cff71d5ff|Hspell:22924|h[Lianas]|h|r) tejen y sus raíces (|cff71d5ff|Hspell:22994|h[Enredar]|h|r) AGARRAN al melé — se purgan (magia y movimiento).",
	"* Su Pisotear (|cff71d5ff|Hspell:5568|h[Pisotear]|h|r) castiga al melé."
};

pack["11488"] = { "Illyanna Roblecuervo", -- (era clásica)
	"* La arquera: su Carga (|cff71d5ff|Hspell:22911|h[Carga]|h|r) vuela al más lejano y bajo la Trampa de inmolación (|cff71d5ff|Hspell:22910|h[Trampa de inmolación]|h|r) no hay que pararse.",
	"* El Disparo de concusión (|cff71d5ff|Hspell:22914|h[Disparo de concusión]|h|r) aminora y su Ráfaga (|cff71d5ff|Hspell:30933|h[Ráfaga]|h|r) castiga en área: reparte la banda."
};

pack["11487"] = { "Magister Kalendris", -- (era clásica)
	"* El magister: al 50% entra en Forma de sombra (|cff71d5ff|Hspell:22917|h[Forma de sombra]|h|r) y castiga más fuerte.",
	"* Su Dominar (|cff71d5ff|Hspell:7645|h[Dominar]|h|r) ROBA a un jugador: la magia se PURGA en el dominado."
};

pack["11496"] = { "Immol'thar", -- (era clásica)
	"* El demonio prisionero de los cinco pilones: se LIBERA al reventar los pilones — la sala entera es la arena.",
	"* Sus Ojos (|cff71d5ff|Hspell:22899|h[Ojos de Immol'thar]|h|r) castigan a un jugador y el Pisotear (|cff71d5ff|Hspell:5568|h[Pisotear]|h|r) barre al melé.",
	"* Abre Portales (|cff71d5ff|Hspell:22950|h[Portal de Immol'thar]|h|r) que escupen esbirros: AoE al círculo mientras el tanque aguanta."
};

pack["11486"] = { "Príncipe Tortheldrin", -- (era clásica)
	"* El príncipe que custodia los pilones: primero cae su guardia, luego él.",
	"* Sus convocatorias (|cff71d5ff|Hspell:22995|h[Invocar]|h|r) pueblan la sala y el Golpe giratorio (|cff71d5ff|Hspell:67037|h[Golpe giratorio]|h|r) apalea en área — fuera del radio."
};

pack["11492"] = { "Alzzin el Formaferal", -- (era clásica)
	"* El cambiaformas: entra en Forma de árbol (|cff71d5ff|Hspell:22688|h[Forma de árbol]|h|r) y de Forma de lobo feroz (|cff71d5ff|Hspell:22660|h[Forma de lobo feroz]|h|r) — la pelea cambia de cara con cada muda.",
	"* Su Revitalización salvaje (|cff71d5ff|Hspell:7948|h[Revitalización salvaje]|h|r) SIEMPRE cortable: si entra, se cura de lleno.",
	"* Enervar (|cff71d5ff|Hspell:22661|h[Enervar]|h|r) y Marchitar (|cff71d5ff|Hspell:22662|h[Marchitar]|h|r) son ENFERMEDADES: el druida las purga.",
	"* El Destrozar (|cff71d5ff|Hspell:22689|h[Destrozar]|h|r) sangra al tanque, sus raíces (|cff71d5ff|Hspell:22415|h[Lazo]|h|r) clavan a los lejanos y el Derribo (|cff71d5ff|Hspell:10101|h[Derribo]|h|r) lo vuela del sitio."
};

pack["14325"] = { "Capitán Kromcrush", -- (era clásica)
	"* Capitán de la guardia de Gordok sin avisos registrados — tanque al frente y banda atenta."
};

pack["14324"] = { "Cho'Rush el Observador", -- (era clásica)
	"* El sanador de la corte: sus sanaciones no llevan aviso — CORTA a la vista todo cast verde.",
	"* En la carrera del tributo conviene DEJARLE VIVO: los guardias en pie al caer el rey engordan el cofre de Mizzle."
};

pack["14321"] = { "Guardia Fengus", -- (era clásica)
	"* Guardia de la corte sin avisos registrados — pelea a la plancha con tanque firme y pulls limpios."
};

pack["14326"] = { "Guardia Mol'dar", -- (era clásica)
	"* El Golpe de escudo (|cff71d5ff|Hspell:11972|h[Golpe de escudo]|h|r) corta y el Golpe de empuje (|cff71d5ff|Hspell:15749|h[Golpe de empuje]|h|r) ESTAMPA al guardia sobre su objetivo: distancia y espalda despejada.",
	"* Sus Golpes (|cff71d5ff|Hspell:14516|h[Golpe]|h|r) apalean al tanque y al 50% entra en Frenesí (|cff71d5ff|Hspell:8269|h[Frenesí]|h|r): DPS duro al final."
};

pack["14323"] = { "Guardia Slip'kik", -- (era clásica)
	"* Otra guardia de la corte sin avisos registrados — melé al tanque y cero despistes."
};

pack["13280"] = { "Hidromilecio", -- (era clásica)
	"* La bomba de agua del santuario: su Marea (|cff71d5ff|Hspell:22419|h[Marea]|h|r) golpetea en área — la melé reparte.",
	"* Su Géiser (|cff71d5ff|Hspell:22421|h[Géiser]|h|r) estalla bajo los pies: salir del charco.",
	"* AL 66% y al 33% CONVOCA hidrolings (|cff71d5ff|Hspell:22714|h[Invocar hidroling]|h|r): AoE a los esbirros y de vuelta al tanque."
};

pack["11501"] = { "Rey Gordok", -- (era clásica)
	"* La estampida del rey (|cff71d5ff|Hspell:22886|h[Estampida berserker]|h|r) vuela al marcado, su Herida mortal (|cff71d5ff|Hspell:16856|h[Herida mortal]|h|r) MACHACA al tanque (rotación de dos) y el Pisotón (|cff71d5ff|Hspell:16727|h[Pisotón]|h|r) aturde en área.",
	"* Su Romper armadura (|cff71d5ff|Hspell:15572|h[Romper armadura]|h|r) APILA en el tanque: sanación fuerte y atenta.",
	"* En la carrera del tributo: cada guardia VIVO al caer él engorda el cofre de Mizzle."
};

pack["14327"] = { "Lethtendris", -- (era clásica)
	"* Sus ráfagas de sombra (|cff71d5ff|Hspell:17228|h[Ráfaga de sombras]|h|r) llueven en área: la melé reparte.",
	"* Sus maldiciones (|cff71d5ff|Hspell:13338|h[Maldición de espinas]|h|r y |cff71d5ff|Hspell:16247|h[Maldición de lenguas]|h|r) a quitar y el Imolar (|cff71d5ff|Hspell:11962|h[Imolar]|h|r) chisa al marcado.",
	"* Su imp Pimgib se ENGORDA (|cff71d5ff|Hspell:22710|h[Engordar]|h|r, a purgar), escupe la Ráfaga de llamas (|cff71d5ff|Hspell:22713|h[Ráfaga de llamas]|h|r) que APILA y su Onda explosiva (|cff71d5ff|Hspell:15744|h[Onda explosiva]|h|r) derriba en área."
};

pack["14322"] = { "Vapuleador Kreeg", -- (era clásica)
	"* El borracho de la corte: su Escupitajo de bebida (|cff71d5ff|Hspell:22833|h[Escupitajo de bebida]|h|r) va en cono y su Pisotón (|cff71d5ff|Hspell:16740|h[Pisotón]|h|r) ruge en área.",
	"* El Torbellino (|cff71d5ff|Hspell:15578|h[Torbellino]|h|r) apalea al melé y al 50% la Furia ebria (|cff71d5ff|Hspell:22835|h[Furia ebria]|h|r) lo ENCIENDE: sanación preparada."
};

pack["11490"] = { "Zevrim Pezuñahendida", -- (era clásica)
	"* Su Sacrificio (|cff71d5ff|Hspell:22651|h[Sacrificio]|h|r) caza a un jugador y MANDA un demonio: revienta al demonio YA mientras cuidan al marcado.",
	"* El Dolor intenso (|cff71d5ff|Hspell:22478|h[Dolor intenso]|h|r) aporrea al marcado: sanación.",
	"* Sus ráfagas de sombra (|cff71d5ff|Hspell:17228|h[Ráfaga de sombras]|h|r) castigan en área: la melé reparte espalda."
};

-- ------------------------------------------------ --
-- Cumbre de Roca Negra Inferior/Superior : Zona 229 (clásica) --
-- ------------------------------------------------ --

pack["9196"] = { "Alto señor Omokk", -- (era clásica)
	"* El ogro mayor de la escalinata: melé durísimo al tanque, sanación constante."
};

pack["9236"] = { "Cazadora de las Sombras Vosh'gajin", -- (era clásica)
	"* La sacerdotisa de las Sombras: sus descargas de sombra castigan a los distantes — sanación atenta a los casters."
};

pack["9237"] = { "Maestro de guerra Voone", -- (era clásica)
	"* El maestro de guerra: melé a la plancha con tanque firme."
};

pack["10596"] = { "Madre Telabrasada", -- (era clásica)
	"* La madre de la telaraña: su cristalización apedrea a alguien de la banda y su veneno muerde al melé — sanación atenta."
};

pack["10584"] = { "Urok Aullasino", -- (era clásica)
	"* Nace del rito del altar en la cueva: la convocatoria trae enjambres — AoE y melé limpia antes de agarrarlo."
};

pack["9736"] = { "Intendente Zigris", -- (era clásica)
	"* El intendente: melé a la plancha con buen tanque."
};

pack["10220"] = { "Halycon", -- (era clásica)
	"* La hija de la telaraña: melé al tanque, sin avisos registrados."
};

pack["10268"] = { "Gizrul el Esclavista", -- (era clásica)
	"* El esclavista: melé al tanque, sin avisos registrados."
};

pack["9568"] = { "Vermiothalak", -- (era clásica)
	"* El señor del antro: melé sostenida y sanación constante."
};

pack["10363"] = { "General Drakkisath", -- (era clásica)
	"* El general del ala Superior: su Conflagración (|cff71d5ff|Hspell:16805|h[Conflagración]|h|r) prende a un jugador — el marcado deja la banda YA mientras arde."
};

pack["10899"] = { "Goraluk Yunquegrieta", -- (era clásica)
	"* El herrero dragónico: pelea plana con buen tanque."
};

pack["10509"] = { "Jed Observarrunas", -- (era clásica)
	"* El observarrunas: melé plana al tanque."
};

pack["16042"] = { "Lord Valthalak", -- (era clásica)
	"* El señor del rito: sus convocatorias (|cff71d5ff|Hspell:27249|h[Invocar asesino]|h|r) traen asesinos — el tanque los recoge y el melé les entra."
};

pack["9816"] = { "Piroguardián brasadivino", -- (era clásica)
	"* El guardián de la forja: al abrirle el rito cae como el resto — melé a la plancha."
};

pack["10264"] = { "Solakar Corona de Fuego", -- (era clásica)
	"* El señor de la roca de crías: al abrir los huevos surgen enjambres de drakonides — AoE al enjambre y melé sostenida al jefe."
};

pack["10430"] = { "La Bestia", -- (era clásica)
	"* La Bestia: su bramido aterra a la banda y golpea durísimo al tanque — sanación constante."
};

bos = { "Jefe de Guerra Desgarro Puño Negro", -- (era clásica; nombre de los módulos — el cliente puede traer otra grafía, confirmar in-game)
	"* El jefe de guerra cae con su draco Gyth en el combate: sanación fuerte al tanque y cuidado con el fuego del draco."
};

pack["10339"] = bos;

pack["10429"] = bos;

-- ------------------------------- --
-- Stratholme : Zona 329 (clásica) --
-- ------------------------------- --

pack["10516"] = { "El imperdonable", -- (era clásica)
	"* El fantasma del portón: pelea plana; su Nova de escarcha (|cff71d5ff|Hspell:14907|h[Nova de escarcha]|h|r) congela al melé — se sale y se vuelve a golpear."
};

pack["11032"] = { "Malor el Entusiasta", -- (era clásica)
	"* Su Golpe de tierra (|cff71d5ff|Hspell:12734|h[Golpe de tierra]|h|r) machaca en área y ATURDE 2 s — los distantes con distancia y sanación pegada al tanque; su Golpe en el cráneo (|cff71d5ff|Hspell:16172|h[Golpe en el cráneo]|h|r) castiga al tanque.",
	"* Su Luz sagrada (|cff71d5ff|Hspell:15493|h[Luz sagrada]|h|r) SIEMPRE cortable: se sana a sí mismo."
};

pack["10808"] = { "Timmy el Cruel", -- (era clásica)
	"* La abominación gigante: su Garra voraz (|cff71d5ff|Hspell:17470|h[Garra voraz]|h|r) castiga en frontal y le RECUPERA vida — solo el tanque delante; al 50% SE ENFURECE (|cff71d5ff|Hspell:8599|h[Enfurecerse]|h|r) — DPS más rápido que la furia."
};

pack["10997"] = { "Cañonero Jefe Willey", -- (era clásica; el dueño trae de Wowhead «Willey Rompeesperanzas», título del REMASTER - confirmar en cliente)
	"* Desde la almena: artillería en área y fusileros resucitados (|cff71d5ff|Hspell:17279|h[Convocar fusilero resucitado]|h|r) en oleadas: se limpian al vuelo.",
	"* Su Derribo (|cff71d5ff|Hspell:10101|h[Derribo]|h|r) lanza al tanque lejos: vuelve con calma y nadie lo adelanta."
};

pack["10558"] = { "Cantachimeneas Forresten", -- (era clásica; verificado por el dueño)
	"* Su Nana encantadora (|cff71d5ff|Hspell:16798|h[Nana encantadora]|h|r) duerme a la banda EN ÁREA: SIEMPRE cortable.",
	"* Su Grito desmoralizador (|cff71d5ff|Hspell:16244|h[Grito desmoralizador]|h|r) aminora al melé; el resto, plano."
};

pack["10811"] = { "Archivista Galford", -- (era clásica)
	"* El instructor de fuego: su Nova de fuego (|cff71d5ff|Hspell:17366|h[Nova de fuego]|h|r) machaca TODO alrededor suyo — el melé se aparta a golpear.",
	"* Sus Vientos ardientes (|cff71d5ff|Hspell:17293|h[Vientos ardientes]|h|r) caen sobre un jugador: la banda se reparte.",
	"* Su Explosión piro (|cff71d5ff|Hspell:17274|h[Explosión piro]|h|r) SIEMPRE cortable."
};

bos = { "Balnazzar", -- (era clásica; la pelea abre como Gran Cruzado Dathrohan)
	"* La pelea abre con el Gran Cruzado Dathrohan y su Martillo del cruzado (|cff71d5ff|Hspell:17286|h[Martillo del cruzado]|h|r); a mitad de camino MUDA al demonio Balnazzar.",
	"* Balnazzar: su Sueño (|cff71d5ff|Hspell:12098|h[Sueño]|h|r) es MAGIA — se purga; su Explosión mental (|cff71d5ff|Hspell:17287|h[Explosión mental]|h|r) castiga a un caster y su Grito psíquico (|cff71d5ff|Hspell:13704|h[Grito psíquico]|h|r) amedrenta al grupo — repartido para que el pánico no se encadene."
};

pack["10812"] = bos;

pack["10813"] = bos;

pack["11143"] = { "Jefe de correos Gassol", -- (era clásica; verificado por el dueño)
	"* Opcional de la plaza del mercado (vigila el correo): su Golpe traicionero (|cff71d5ff|Hspell:6253|h[Golpe traicionero]|h|r) aturde y su Maldición de debilidad (|cff71d5ff|Hspell:12741|h[Maldición de debilidad]|h|r) es maleficio a purgar."
};

pack["10435"] = { "Magistrado Barthilas", -- (era clásica)
	"* Su Pisoteo (|cff71d5ff|Hspell:10887|h[Pisoteo]|h|r) machaca al melé: la banda se reparte.",
	"* Su Furia feroz (|cff71d5ff|Hspell:16791|h[Furia feroz]|h|r) se APILA MUY RÁPIDO en la clásica: el DPS no se entretiene.",
	"* Su Golpe poderoso (|cff71d5ff|Hspell:14099|h[Golpe poderoso]|h|r) castiga al tanque con la sanación pegada.",
	"* Arranca CORRIENDO al fondo de la sala al engancharlo: los pulls del alrededor, limpiados ANTES."
};

pack["10437"] = { "Nerub'enkan", -- (era clásica)
	"* La araña gigante convoca escarabajos no-muertos (|cff71d5ff|Hspell:17235|h[Despertar escarabajo no-muerto]|h|r) sin parar: el AoE los barre.",
	"* Su Perforar armadura (|cff71d5ff|Hspell:6016|h[Perforar armadura]|h|r) deja al tanque SIN blindaje: defensas o segundo tanque.",
	"* Sus Telarañas envolventes (|cff71d5ff|Hspell:4962|h[Telarañas envolventes]|h|r) enredan a un jugador un rato: sanación le cubre y la pelea sigue."
};

pack["10436"] = { "Baronesa Anastari", -- (era clásica)
	"* POSEE a un jugador (|cff71d5ff|Hspell:17244|h[Poseer]|h|r): queda embaucado peleando a la banda — se le BAJA LA VIDA A LA MITAD para liberarlo, sin matarle.",
	"* Su Silencio (|cff71d5ff|Hspell:18327|h[Silencio]|h|r) es en área: repartido para que no coma a todos.",
	"* Su Maldición de banshee (|cff71d5ff|Hspell:16867|h[Maldición de banshee]|h|r) es maleficio que CORTA LA SANACIÓN del marcado: se purga YA."
};

pack["10438"] = { "Maleki el Pálido", -- (era clásica)
	"* Su Sepulcro de hielo (|cff71d5ff|Hspell:16869|h[Sepulcro de hielo]|h|r) congela a un jugador unos segundos: sanación le cubre y la pelea no se detiene.",
	"* Su Drenar vida (|cff71d5ff|Hspell:17620|h[Drenar vida]|h|r) chupa a un jugador — sanación atenta.",
	"* Sus ráfagas de escarcha aminoran al distante y le chupan maná."
};

pack["10439"] = { "Ramstein el Empachador", -- (era clásica)
	"* El que antecede a la sala del Barón: pega BRUTAL al tanque con curas sostenidas; su Nocaut (|cff71d5ff|Hspell:17307|h[Nocaut]|h|r) ATURDE a toda la banda y su Pisotear (|cff71d5ff|Hspell:5568|h[Pisotear]|h|r) castiga al melé.",
	"* AL CAER se desata la marea de guardias no-muertos de la plaza: grupo junto y a barrerlas antes del Barón."
};

pack["10440"] = { "Barón Osahendido", -- (era clásica; verificado por el dueño)
	"* El barón del final: su Despertar muertos (|cff71d5ff|Hspell:17473|h[Despertar muertos]|h|r) saca esqueletos que MARCHAN hacia él y lo curan tocándole, y a los ~12 s remata con Pacto de muerte (|cff71d5ff|Hspell:17471|h[Pacto de muerte]|h|r) — el AoE los revienta de lejos ANTES.",
	"* Su Bomba de sombra (|cff71d5ff|Hspell:17434|h[Bomba de sombra]|h|r) cae sobre un jugador: la banda se reparte.",
	"* Su aura impía castiga a quien se queda cerca y mete Heridas mortales al tanque: sanación constante a la banda."
};

-- ---------------------------------- --
-- Guarida de Onyxia : Zona 249 (clásica) --
-- ---------------------------------- --

pack["10184"] = { "Onyxia", -- (era clásica)
	"* Fase 1 en el suelo: su Aliento de llamas (|cff71d5ff|Hspell:18435|h[Aliento de llamas]|h|r) castiga al tanque, su Aletazo (|cff71d5ff|Hspell:18500|h[Aletazo]|h|r) despacha al melé hacia atrás y su Apartar (|cff71d5ff|Hspell:19633|h[Apartar]|h|r) suelta el agarre del tanque.",
	"* Fase 2 en el aire: Bolas de fuego (|cff71d5ff|Hspell:18392|h[Bola de fuego]|h|r) al marcado y sus Alientos profundos (|cff71d5ff|Hspell:17086|h[Aliento profundo]|h|r) barren medio antro — el aviso del chat manda: al lado opuesto se corre.",
	"* Fase 3 al aterrizar: vuelve todo lo anterior y, encima, su Rugido atronador (|cff71d5ff|Hspell:18431|h[Rugido atronador]|h|r) TEME a media banda; suben las crías de las cuevas — AoE al enjambre sin perder el hilo del jefe."
};

-- ---------------------------------- --

P.es = es;
