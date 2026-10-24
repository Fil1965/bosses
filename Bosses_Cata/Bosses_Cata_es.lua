--[[
	Bosses_Cata_es.lua
		Datos en español del pack Cata (solo datos; el registro lo
		hace Bosses_Cata.lua, que se carga despues en el .toc).
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- =========================================================== --
-- Base histórica 2011-2013 (migrada desde localization.es.lua) --
-- =========================================================== --
-- ------------------- --
-- Instancias heroicas --
-- ------------------- --

-- -------------------------------------- --
-- Castillo de Colmillo Oscuro : Zona 209 --
-- -------------------------------------- --

pack["46962"] = { "Barón Ashbury",
    "* Interrumpir o disipar |cff71d5ff|Hspell:93712|h[Dolor y sufrimiento]|h|r",
    "* |cff71d5ff|Hspell:93710|h[Asfixiar]|h|r dejará la vida de todos al 1%, y luego tirará |cff71d5ff|Hspell:93705|h[Ejecución pospuesta]|h|r que interrumpiremos en cuanto el grupo recupere un poco de vida porque cura también al jefe."
};

pack["3887"] = { "Barón Filargenta HERO",
    "* Hay que disipar |cff71d5ff|Hspell:93956|h[Velo maldito]|h|r para que no se reduzcan las sanaciones.",
    "* Cuando salgan adds full dps a los adds."
};

pack["4278"] = { "Comandante Vallefont",
    "* Los adds pueden controlarse y deben de matarse lo antes posible. Es necesario interrumpir la Potenciación profana que lanzan.",
    "* El tanque lo mantiene de espaldas al grupo y evita las profanaciones del suelo."
};

pack["46963"] = { "Lord Walden",
    "* Cuando tire la poción verde TODO el mundo tiene que moverse.",
    "* Cuando tire la poción roja TODO el mundo tiene que quedarse quieto."
};

pack["46964"] = { "Lord Godfrey",
    "* Es necesario disipar la maldición |cff71d5ff|Hspell:93761|h[Balas malditas]|h|r siempre que se pueda",
    "* Hay que apartarse de la |cff71d5ff|Hspell:93520|h[Tromba de pistola]|h|r."
};

-- ------------------------------ --
-- Minas de la muerte : Zona 1581 --
-- ------------------------------ --

pack["47162"] = { "Glubtok <El Supervisor>",
    "* En la primera fase pierde el agro después de cada translación, el tanque tiene que estar atento.",
    "* Al 40% empieza la segunda fase, en la que evitaremos el muro de lava giratorio.",
    "* Los elementales de la segunda fase tendrán que matarse poco a poco porque salen cada vez más, es un buen momento para tirar hero."
};

pack["47296"] = { "Helix Rompengranajes",
    "* Evitar las bombas que tira.",
    "* El que reciba |cff71d5ff|Hspell:88352|h[Bomba de pecho]|h|r se alejará del grupo hasta que explote."
};

pack["43778"] = { "Siegaenemigos 5000",
    "* 1 DPS cogerá una segadora y se van matando los 4 cosechadores.",
    "* Al matar el último cosechador se activa el boss, suben todos menos el que lleva la segadora que irá matando todos los adds que salgan.",
    "* Cuando el boss marque un jugador con |cff71d5ff|Hspell:88501|h[Cosechar]|h|r todos se separan del lugar marcado.",
    "* Cuando tenga la |cff71d5ff|Hspell:88481|h[Ultravelocidad]|h|r nos separamos."
};

pack["47626"] = { "Almirante Rasgagruñido",
    "* El sanador debe racionar el mana.",
    "* Los adds debe de matarse lo antes posible o crecerán y matarán al grupo.",
    "* El jefe debe matarse lo antes posible para evitar que la |cff71d5ff|Hspell:88736|h[Sed de sangre]|h|r aumente demasiado."
};

pack["47739"] = { "Capitán Cocinitas",
    "* El boss suelta comidas buenas (blancas) y malas (verdes) que se compensan,",
    "  hay que ir cogiendo 1 mala por 1 buena durante todo el combate para evitar que el suelo se llene del área dañina de la comida mala.",
    "  El tanque si no tiene problemas de agro puede coger 2 malas por 1 buena."
};

pack["49429"] = { "Vanessa VanCleef",
    "* Fase de Pesadilla: ",
    "  - Apareceremos en un caldero en el que tenemos que activar 4 grifos para poder escapar.",
    "  - Evitamos el fuego y las avalanchas hasta Glubtok y lo matamos.",
    "  - En la fase de Helix no nos moveremos para atraer el menor nº de arañas.",
    "  - El Siegaenemigos hará unas barreras de rayos giratorias por el tunel que tenemos que avanzar, evitamos pisar o saltarlo.",
    "  - En la siguiente fase matamos a toda prisa todos los huarguen que están atacando a los npcs amistosos.",
    "* Fase Vanessa: ",
    "  - Prioridad a los adds que salgan.",
    "  - Cuando ponga las cargas explosivas coged las cuerdas de la flecha verde."
};

-- ----------------------------------- --
-- Cámaras de los Orígenes : Zona 4945 --
-- ----------------------------------- --

pack["39425"] = { "Guardián del templo Anhuur",
    "* Quien reciba |cff71d5ff|Hspell:75592|h[Expiación divina]|h|r debería alejarse del grupo hasta que se disipe en 8 segundos para evitar sanar demasiado al jefe.",
    "* Cuando empiece a tirar |cff71d5ff|Hspell:75322|h[Himno resonante]|h|r baja todo el grupo para bajar las dos palancas. A la vuelta interrumpimos el himno y seguimos.",
    "Nota: En normal solo hace falta que baje 1 dps por cada lado para que cada uno baje 1 de las palancas."
};

pack["39428"] = { "Terracundo Ptah",
    "* Es un boss opcional de carrera de DPS."
};

pack["39788"] = { "Anraphet",
    "* Mover al boss para evitar las áreas que provocan los |cff71d5ff|Hspell:76184|h[Haces Alfa]|h|r.",
    "* Hay que procurar tirarse mitigaciones durante la |cff71d5ff|Hspell:75622|h[Actitud Omega]|h|r."
};

pack["39587"] = { "Isiset, Ensamblaje de magia",
    "* Cuando tire |cff71d5ff|Hspell:74137|h[Supernova]|h|r hay que girarse antes de que finalice en casteo para no quedar aturdido.",
    "* Cuando se divida el orden para matar las copias deberías de ser: ",
    "   1º Llamada celestial",
    "   2º Lluvia astral",
    "   3º Velo del cielo"
};

pack["39731"] = { "Ammunae, Ensamblaje de vida",
    "* Prioridad DPS a las Vainas de Esqueje para que no curen al boss y a las Flores Sangrepétalo para evitar el daño.",
    "* Si es posible disipar el |cff71d5ff|Hspell:76043|h[Marchitar]|h|r cuando lo tire a los jugadores.",
    "Nota: En heroico el tanque puede poner el boss sobre una espora muerta para acelerar la muerte del boss."
};

pack["39732"] = { "Setesh, Ensamblaje de destrucción",
    "* El boss no se tanquea, se tanquean los adds que van saliendo.",
    "* Si el DPS es alto pueden ignorarse los portales e intentar bajar el boss lo antes posible.",
    "* Si se prefiere asegurar hay que eliminar los portales en cuanto salgan, y el tanque debe coger los adds que salgan (no se matan)."
};

pack["39378"] = { "Rajh, Ensamblaje del Sol",
    "* Evitar los ciclones de fuego.",
    "* Se debe de interrumpir |cff71d5ff|Hspell:80352|h[Invocar orbe]|h|r para evitar el daño.",
    "* La |cff71d5ff|Hspell:76355|h[Bendición del sol]|h|r aparte de hacer daño aumenta el daño que hacemos. Hay que concentrar todo el DPS en ese momento."
};

-- ------------------------------- --    	
-- Cavernas Roca Negra : Zona 4926 --
-- ------------------------------- --    	

pack["39665"] = { "Machacahuesos Rom'ogg",
    "* Evitar la nube de polvo del |cff71d5ff|Hspell:75272|h[Temblor]|h|r. En hero saldrán elementales, si el tanque y el sanador van sobrados pueden ignorarse; si no, hay que matarlos.",
    "* Cuando tire |cff71d5ff|Hspell:75539|h[Cadenas de tragedia]|h|r hay que centrar TODO el DPS en romper las cadenas, y una vez rotas hay que huir lo más rápidamente posible para evitar que nos mate el |cff71d5ff|Hspell:75543|h[El Revientacalaveras]|h|r."
};

pack["39679"] = { "Corla, Heraldo del Crepúsculo",
    "* El objetivo de este boss es evitar que tanto jugadores como adds ganen 100 tics de |cff71d5ff|Hspell:75610|h[Evolución]|h|r, si esto ocurriera el afectado se convierte en dragonante y en HERO es wipe.",
    "  Para evitarlo interceptaremos el rayo del add antes de que llegue a 80, y nos cambiaremos cuando nosotros mismos lleguemos a 80.",
    "  Lo mejor es asignar un jugador a cada add.",
    "Truco: Si nos despistamos, y no vemos el debuf, cuando un personaje empieza a parpadear es que está a punto de convertirse, en ese momento hay que cambiar el pj que recibe el rayo."
};

pack["39698"] = { "Karsh Doblacero <Armero Crepuscular>",
    "* El tanque meterá el jefe en el chorro de lava hasta que tenga 5 o 6 marcas, sacándolo inmediatamente.",
    "* Cuando el fundido del escudo esté a punto de disiparse lo vuelve a meter. Si llegase a disiparse salen elementales y el combate se complica.",
    "Nota: Lo mejor es meterlo de refilón, para poder controlar al máximo el tiempo que esté dentro. Cuanto más tiempo esté, más daño recibirá la party."
};

pack["39700"] = { "Bella",
    "* Idealmente mantendremos en CC los cachorros mientras matamos al jefe. Si esto no es posible hay que matar los cachorros antes del jefe.",
};

pack["39705"] = { "Señor ascendiente Obsidius",
    "* Idealmente tendremos un DPS para kitear a las sombras (usando ralentizaciones), estas no tienen agro y pegaran a lo ultimo que les pegue.",
    "* Mientras tanto el tanque y el resto del grupo se centran en el jefe.",
    "* De vez en cuando el jefe se cambiará por una sombra, momento en que el dps que estaba kiteando y el tanque se intercambiarán los mobs."
};

-- ----------------------------------------- --
-- Ciudad perdida de los Tol'vir : Zona 5396 --
-- ----------------------------------------- --

pack["43612"] = { "Sumo profeta Barim",
    "* En la primera fase se kitea al fénix.",
    "* En la segunda fase (sombra) full dps al fénix."
};

pack["43614"] = { "Cierrafauce",
    "* El que tenga la marca le acerca los adds al tanque para que se los quite fácilmente.",
};

pack["49045"] = { "Cierrafauce",
    "* Evitar el |cff71d5ff|Hspell:91408|h[Torbellino]|h|r.",
};

pack["44577"] = { "General Husam",
    "* Mover el boss para evitar pisar las minas del suelo.",
    "* Evitar las áreas del suelo, avisa con una señal de polvo."
};

pack["44819"] = { "Siamat",
    "* Focus adds",
};

-- ---------------------------- --
-- El Núcleo Pétreo : Zona 5088 --
-- ---------------------------- --

pack["43438"] = { "Corborus",
    "* Apartarse inmediatamente de |cff71d5ff|Hspell:92648|h[Tromba de cristal]|h|r y en HERO matad enseguida las arañas que salen de los cristales.",
    "* Disipar el debuf |cff71d5ff|Hspell:82415|h[Ola de atenuación]|h|r en cuanto salga.",
    "* En HERO, cuando Corborus vaya por debajo de tierra evitar a toda costa las nubes de polvo que matan."
};

pack["42810"] = { "Gigante Engendracristal",
    "* Hay que saltar justo antes de que termine el casteo del |cff71d5ff|Hspell:92631|h[Temblor]|h|r.",
};

pack["43214"] = { "Pielpétrea",
    "* Evitar los charcos del suelo de |cff71d5ff|Hspell:80800|h[Erupción]|h|r.",
    "* Evitar las piedras que caen del techo, se marcan en el suelo con una sombra.",
    "* En HERO, cuando lance |cff71d5ff|Hspell:92265|h[Tormenta de cristales]|h|r hay que ponerse detrás de una de las piedras que han caido para evitar el daño.",
};

pack["42188"] = { "Ozruk",
    "* El tanque con la espalda a la pared para evitar salir volando cuando tire el |cff71d5ff|Hspell:78807|h[Trizar]|h|r",
    "* Cuando tire |cff71d5ff|Hspell:92410|h[Embate en el suelo]|h|r todos, incluido el tanque, se retiran para evitar el daño del |cff71d5ff|Hspell:92662|h[Trizar]|h|r, el área del daño es bien visible en el suelo.",
    "* En HERO, cuando tire |cff71d5ff|Hspell:78939|h[Baluarte de elementium]|h|r todos los DPS a rango deberán de tirar un daño en el tiempo para que se les refleje y les saque del siguiente |cff71d5ff|Hspell:92426|h[Paralizar]|h|r.",
};

pack["42333"] = { "Suma Sacerdotisa Azil",
    "* Hay que alejarse de los |cff71d5ff|Hspell:79340|h[Invocar pozo de gravedad]|h|r pero al mismo tiempo hay que usarlos para atraer los adeptos dentro.",
    "* Hay que disipar del tanque |cff71d5ff|Hspell:79351|h[Agarre de fuerza]|h|r cada vez que se lo ponga.",
    "* Si alguien puede quitar maldiciones es conveniente quitar la |cff71d5ff|Hspell:79345|h[Maldición de sangre]|h|r siempre que se pueda."
};

-- --------------------------------- --
-- Fauce Abisal: Trono de las Mareas --
-- --------------------------------- --

pack["40586"] = { "Lady Naz'jar",
    "* Interrumpir |cff71d5ff|Hspell:91477|h[Explosión de choque]|h|r",
    "* Evitar el geiser de |cff71d5ff|Hspell:75722|h[Invocar géiser]|h|r.",
    "* Evitar las |cff71d5ff|Hspell:76001|h[Esporas de hongos]|h|r.",
    "* Al 66% y al 33% hará el |cff71d5ff|Hspell:75683|h[Aspersor]|h|r y aparecerán 3 adds que conviene CCear para facilitar el combate.",
};

pack["40765"] = { "Comandante Ulthok",
    "* TODOS evitan siempre la |cff71d5ff|Hspell:76047|h[Fisura oscura]|h|r.",
    "* El tanque moverá contínuamente el jefe por la sala, repartiendo las áreas."
};

pack["40825"] = { "Erunak Hablapiedra",
    "* Se tanquea de espaldas a la party para evitar el daño de la |cff71d5ff|Hspell:76170|h[Salpicadura de magma]|h|r.",
    "* Se procurará disipar el |cff71d5ff|Hspell:76165|h[Golpe de ascuas]|h|r cuando lo reciba el tanque.",
    "* Sacaremos el jefe de la |cff71d5ff|Hspell:76234|h[Niebla mental]|h|r siempre que la tire",
    "* Si se pone el |cff71d5ff|Hspell:76307|h[Absorber magia]|h|r hay que disipárselo, si no todo el daño mágico lo sanará."
};

pack["40792"] = { "Neptulon",
    "* FASE 1, el tanque irá cogiendo los Behemoth implacables, los adds pequeños los pueden matar los dps directamente. Los Behemoths se irán moviendo por la sala hasta que se maten.",
    "* FASE 2, salen bestias y 3 azotadores que canalizan sobre Neptulon.",
    "    Hay que matar los azotadores lo antes posible, aunque también hay que descargar un poco al tanque de las bestias para que no lo maten.",
    "    El tanque seguirá moviendo el Behemoth que quede y las bestias.",
    "    Hay que evitar los charcos de tinta del suelo.",
    "* FASE 3, Neptulon nos pondrá |cff71d5ff|Hspell:76133|h[Fuerza del oleaje]|h|r en este momento hay que hacer FULL DPS hasta matar al boss."
};

-- ---------------------- --
-- Grim Batol : Zona 4950 --
-- ---------------------- --

pack["39625"] = { "General Umbriss",
    "* Cuando tire |cff71d5ff|Hspell:74670|h[Ataque relámpago]|h|r el jugador al que apunte se moverá para evitar el daño.",
    "* El sanador estará atento a cuando el tanque reciba |cff71d5ff|Hspell:74846|h[Herida sangrante]|h|r tendrá que subirle la vida al menos al 90% para quitarle el debuff.",
    "* De los adds (Troggs) se encargan los DPS, el tanque no debe atraerlos.",
    "  En HERO sale un trogg morado, antes de empezar el combate se asignará a 1 DPS.",
    "  Deberá CCearse, si no se puede hay que matarlo lejos del grupo y lejos de los demas adds, SOLO le debe de pegar el DPS asignado."
};

pack["40177"] = { "Maestro de forja Throngus",
    "* Evitar el área del |cff71d5ff|Hspell:74984|h[Pisotón poderoso]|h|r.",
    "* Cuando Throngus coja la masa el tanque lo moverá por la sala para evitar el daño.",
    "* Cuando coja la espada el sanador se centrará en el tanque ya que recibirá mucho daño.",
    "* Cuando coja el escudo se tanquea en la esquina de la entrada y todos menos el tanque se ponen a su espalda."
};

pack["40319"] = { "Drahga Quemasombras",
    "* En cuanto salga |cff71d5ff|Hspell:75218|h[Invocación de llamas]|h|r el jugador al que siga tendrá que correr en dirección contraria para evitar que se junte con él mientras los demás deben matarlo inmediatamente.",
    "* Cuando suba en el dragón se tanquea en el centro de la sala para que sea más fácil evitar la |cff71d5ff|Hspell:75321|h[Llama de Valiona]|h|r poniéndose detrás del dragón.",
    "* Cuando lance el |cff71d5ff|Hspell:90966|h[Flagelo devastador]|h|r hay que evitar las fisuras que hacen daño y enlentecen."
};

pack["40484"] = { "Erudax, Duque del Inframundo",
    "* Los DPS a rango procuran estar separados para evitar que las |cff71d5ff|Hspell:79466|h[Sombras vinculadoras]|h|r afecten a mas de uno.",
    "* Cuando tire el |cff71d5ff|Hspell:75664|h[Vendaval de las Sombras]|h|r todo el mundo se coloca en el ojo del vendaval o morirá.",
    "* Después del Vendaval saldrá un Corruptor Ignoto, o 2 en HERO.",
    "  Deben de repartirse los DPS para que mueran lo antes posible porque si llegan a los huevos el jefe se curará y saldrán dragones que harán daño a toda la party hasta el final."
};

-- ----------------------------------- --
-- La Cumbre del Vórtice : Zona 5035
-- ----------------------------------- --

pack["43878"] = { "Gran visir Ertan",
    "* Hay que evitar los |cff71d5ff|Hspell:86292|h[Escudo de ciclón]|h|r."
};

pack["43873"] = { "Altairus",
    "* Siempre que se pueda hay que procurar que el viento dé por la espalda para aprovechar el bufo."
};

pack["43875"] = { "Asaad <Califa de los Céfiros>",
    "* Cuando el casteo |cff71d5ff|Hspell:87618|h[Adhesión estática]|h|r esté a punto de terminar salta para evitar quedar pegado al suelo.",
    "* Hay que dispelear las adhesiones de todos los que no le haya dado tiempo saltar.",
    "* Al castear |cff71d5ff|Hspell:86911|h[Campo inestable de puesta a tierra]|h|r todos se meten dentro del triángulo para evitar morir."
};

-- ----------------------- --
-- Instancias de ZENDALARI --
-- ----------------------- --

-- -------------------- --
-- Zul'Aman : Zona 3805 --
-- -------------------- --

pack["23574"] = { "Akil'zon <Avatar de águila>",
    "* Todos separados a + de 6 yardas. La |cff71d5ff|Hspell:61911|h[Perturbación estática]|h|r aumenta el daño si hay jugadores cerca.",
    "* Full DPS al aguila blanca que levanta a un jugador.",
    "* Cuando se eleve un pj para hacer una |cff71d5ff|Hspell:45336|h[Sobrecarga eléctrica]|h|r todos debajo para evitar el daño."
};

pack["23576"] = { "Nalorakk <Avatar de oso>",
    "* |cff71d5ff|Hspell:42402|h[Oleada]|h|r carga al jugador mas alejado, hay alternarse después de cada carga sino = muerte.",
    "* En forma de oso lanza interrupciones, ojo, healer: si coincide con |cff71d5ff|Hspell:42395|h[Tajo lacerante]|h|r que hace 180k.",
    "* Full DPS al boss."
};

pack["23578"] = { "Jan'alai <Avatar de dracohalcón>",
    "* Saca 2 adds se mata SOLO 1.",
    "* Se tanquea el boss al lado del otro add, delante de la pasarela para agrear las proles y matarlas a áreas.",
    "* El boss irá al centro y pondrá bombas en el suelo que evitaremos porque explotan.",
    "* Estas operaciones se repiten durante todo el encuentro.",
    "* A veces el boss suelta una llamarada frontal que deja un surco en el suelo que evitaremos.",
    "|cFFFF0000Truco:|r Si hay mago en la party es interesante robarle el terremoto al pull anterior y tirarselo al boss."
};

pack["23577"] = { "Halazzi <Avatar de lince>",
    "* Alejar el boss del área de los totems de agua.",
    "* Los casters pueden aprovechar el área de los totems de agua para subir vida y mana.",
    "* Romper inmediatamente los totems de relámpago."
};

pack["24239"] = { "Señor aojador Malacrass",
    "* Primero anulamos los dos adds.",
    "  Idealmente CCeamos al add de la izquierda mientras se hace full dps al de la derecha",
    "  y si se puede mantener CCeado hasta el final seguimos con el boss, ",
    "  sino matamos al segundo add antes de seguir con el boss.",
    "* Usará las habilidades de los jugadores. Hay que estar atentos a interrumpir y disipar todo lo que se pueda."
};

pack["23863"] = { "Daakara <El Invencible>",
    "* Se convertirá aleatoriamente en 2 de las 4 formas:",
    "  - Águila. Romped el totem de relámpagos y evitar los ciclones.",
    "  - Oso. El healer tiene que disipar la paralisis y acordaos de las cargas.",
    "  - Lince. Difícil para el healer, hay que matar 2 gatos pequeños lo antes posible. El boss pone sangrados aleatorios.",
    "  - Dracohalcón. Esquivar el daño de los surcos y columnas de fuego."
};

-- --------------------- --
-- Zul'Gurub : Zona 1977 --
-- --------------------- --

pack["52155"] = { "Sumo sacerdote Venoxis",
    "* Cuando pinte el laberinto no se tocan ni se saltan las lineas verdes.",
    "* Cuando se unan 2 pjs por el enlace tóxico se separan los mas posible para romperlo. ",
    "  No deberian de haber pjs cerca cuando rompa porque hace daño de área.",
    "* Se evitan los charcos del suelo, moviendo el boss para poder pegar sin pisar. Los charcos crecen.",
    "* Se evita el aliento verde poniéndose detrás.",
    "* Cuando lance el rayo corred para evitarlo.",
    "* Cuando el boss esté aturdido hay que hacer DPS a saco porque hay un modificador de +100% de daño."
};

pack["52151"] = { "Señor sangriento Mandokir",
    "* Los espíritus son la clave. Cuando el raptor está suelto hay que matarlo lo antes posible para que no mate espiritus.",
    "  Cada espiritu puede resucitar un pj muerto, y al renacer el pj hace más daño y recibe menos daño.",
    "* Se evitan los surcos del suelo cuando los lance el boss.",
    "* Se evitará regalar vida al boss curando de más al que reciba la Flebotomia, con mantenerlo un pelin por encima de 7500 es suficiente."
};

pack["52059"] = { "Suma sacerdotisa Kilnara",
    "* Evitar los muros morados (tipo olas de Sartharion).",
    "* Interrumpir las lagrimas de de sangre.",
    "* Antes de bajar el 50% del boss matad las panteras de 1 en 1 o de 2 en 2."
};

pack["52053"] = { "Zanzil",
    "* Interrumpir Descarga Voodoo.",
    "* Apartarse del Fuego Zanzil.",
    "* Elixir Azul: Beber Caldero de Escarcha y acabar con el Rabioso lo antes posible (no tiene agro).",
    "* Elixir Verde: Beber del Caldero de Veneno lo antes posible.",
    "* Elixir Rojo: Beber del Caldero de Fuego para matar los zombies a áreas."
};

pack["52148"] = { "Jin'do el Sojuzgadioses",
    "* Meter al boss en la Zona Muerta, los pjs entran también cuando invoque Sombras de Hakkar.",
    "* Mientras el tanque se encarga de traer los trolls gigantes, el resto del grupo tendrá que acabar con los espíritus invocados, además de con las cadenas.",
    "* Evitar Puntas de las Sombras."
};

pack["52258"] = { "Extremo de la Locura: Gri'lek",
    "* El jugador marcado con |cff71d5ff|Hspell:68987|h[Perseguir]|h|r kiteará al boss.",
    "* Salir del área |cff71d5ff|Hspell:89932|h[Línea de falla]|h|r cuando la marque."
};

pack["52286"] = { "Extremo de la Locura: Wushoolay",
    "* Tanquear de espaldas a la party.",
    "* Salir de la |cff71d5ff|Hspell:96710|h[Nube de relámpagos]|h|r.",
    "* Separarse los unos de los otros."
};

pack["52269"] = { "Extremo de la Locura: Renataki",
    "* Curar al emboscado del Esfumarse.",
    "* Evitar el daño de área de las |cff71d5ff|Hspell:96645|h[Mil hojas]|h|r."
};

pack["52271"] = { "Extremo de la Locura: Hazza'rah",
    "* Interrumpir la Cólera.",
    "* Matar las pesadillas antes de que lleguen a su jugador o lo matarán."
};

-- ----- --
-- RAIDS --
-- ----- --

-- ------------------------------ --
-- Bastión de Baradin : Zona 5600 --
-- ------------------------------ --

pack["47901"] = { "Unidad de contención demoníaca",
    "* Estos monstruos deben de matarse con todo el grupo en piña sobre el tanque para repartir el daño del |cff71d5ff|Hspell:89348|h[Rayo repelente de demonios]|h|r."
};

pack["47120"] = { "Argaloth",
    "* En 10 se montan 2 grupos, cada uno con 1 tanque, 1 sanador y 3 DPS.",
    "* Cada grupo se pondrá a uno de los lados del Argaloth. Y permanecerá formando piña encima del tanque para repartir el daño.",
    "* Después de cada |cff71d5ff|Hspell:88942|h[Tajo meteórico]|h|r los tanques se intercambiarán el jefe.",
    "* En la fase de |cff71d5ff|Hspell:88972|h[Tormenta de Fuego Vil]|h|r todo el mundo se mueve para evitar el daño sin pisar el fuego.",
    "* Al final de la tormenta cada grupo vuelve a su posición y se repite lo explicado anteriormente."
};

pack["52363"] = { "Occu'thar",
    "* Nadie cruza su frontal: la |cff71d5ff|Hspell:-2606|h[Sombras abrasadoras]|h|r es un cono delante de él (los cuerpo a cuerpo van detrás).",
    "* Los |cff71d5ff|Hspell:-2607|h[Ojos de Occu'thar]|h|r marcan a cada jugador: a los 10s cada ojo atraviesa al anfitrión (|cff71d5ff|Hspell:-2609|h[Destrucción de Occu'thar]|h|r) y mata, así que los ojos se matan rápido y el |cff71d5ff|Hspell:-2608|h[Mirada de Occu'thar]|h|r se esquiva.",
    "* El |cff71d5ff|Hspell:-2605|h[Fuego enfocado]|h|r es un charco de fuego en el suelo bajo un jugador: ese jugador se mueve."
};

pack["55869"] = { "Alizabal, Señora del odio",
    "* Su |cff71d5ff|Hspell:-4120|h[Ensartar]|h|r aturde al tanque 8s: el OT recoge al instante.",
    "* El |cff71d5ff|Hspell:-4121|h[Odio hirviente]|h|r fija a un jugador: el marcado se aleja del resto.",
    "* La |cff71d5ff|Hspell:-4122|h[Danza de hojas]|h|r es daño físico creciente cada segundo: full DPS y curas pendientes del tanque — hay que acabar rápido."
};

-- -------------------------------- --
-- Descenso de Alanegra : Zona 5094 --
-- -------------------------------- --

pack["41570"] = { "Faucemagma",
    "* Muerde al tanque con |cff71d5ff|Hspell:-3314|h[Destrozar]|h|r (su |cff71d5ff|Hspell:-3315|h[Armadura sofocante]|h|r funde la armadura) y en ese momento dos jugadores encadenados suben a las tenazas: enganchan la púa con el |cff71d5ff|Hspell:-3320|h[Lanzar gancho]|h|r",
    "* y lo empalan, abriendo la |cff71d5ff|Hspell:-3321|h[Punto vulnerable]|h|r que recibe daño creciente.",
    "* El tanque no puede dejarlo sin cuerpo a cuerpo: si no alcanza a nadie entra en |cff71d5ff|Hspell:-3317|h[Rabieta de arrabio]|h|r.",
    "* Los |cff71d5ff|Hspell:-3312|h[parásitos de lava]|h|r saltan sobre jugadores y los van drenando (|cff71d5ff|Hspell:-3313|h[Infección parasitaria]|h|r): la banda los mata con AoE mientras se separa.",
    "* El |cff71d5ff|Hspell:-3310|h[Flema de magma]|h|r escupe a 3 jugadores y la |cff71d5ff|Hspell:-3311|h[Columna de llamas]|h|r cae a los pies del objetivo, que se aparta.",
    "* Heroico: lord Nefarius añade el |cff71d5ff|Hspell:-3323|h[Inferno llameante]|h|r (suelo en llamas), |cff71d5ff|Hspell:-3325|h[ensamblajes de huesos llameantes]|h|r de |cff71d5ff|Hspell:-3327|h[Armagedón]|h|r (full daño antes de explotar) y su |cff71d5ff|Hspell:-3328|h[Aliento sombrío]|h|r al 30%."
};

bos = { "Sistema de Defensa de Omnitron",
    "* Los cuatro gólems alternan dos a dos: sólo se ataca al ACTIVO mientras el otro se recarga.",
    "* Magmatron: la |cff71d5ff|Hspell:-3264|h[Medida de seguridad de incineración]|h|r golpea a todo el recinto (curas continuas);",
    "* el marcado del |cff71d5ff|Hspell:-3265|h[Fijando objetivo]|h|r corre del cono del |cff71d5ff|Hspell:-3266|h[Lanzallamas]|h|r y en heroico aguanta con curas por las |cff71d5ff|Hspell:-3267|h[Sombras atrapantes]|h|r; su |cff71d5ff|Hspell:-3268|h[Barrera]|h|r se rompe a golpes.",
    "* Arcanotron: el |cff71d5ff|Hspell:-3195|h[Generador de poder]|h|r bufea a quien lo pise y a los gólems, así que el marcado lo saca del grupo; el |cff71d5ff|Hspell:-3196|h[Aniquilador Arcano]|h|r se interrumpe en lo posible y con la |cff71d5ff|Hspell:-3197|h[Conversión de poder]|h|r NADIE ataca al escudo.",
    "* Electron: el marcado del |cff71d5ff|Hspell:-3202|h[Conductor de relámpagos]|h|r se aleja (daña a los cercanos); hay separación para la |cff71d5ff|Hspell:-3203|h[Descarga eléctrica]|h|r y su |cff71d5ff|Hspell:-3204|h[Escudo inestable]|h|r no se toca (heroico: provoca la |cff71d5ff|Hspell:-3205|h[Infusión de Sombras]|h|r).",
    "* Toxitron: las |cff71d5ff|Hspell:-3269|h[Bombas químicas]|h|r y sus |cff71d5ff|Hspell:-3270|h[Nubes químicas]|h|r (dentro +50% de daño recibido: nadie) y su |cff71d5ff|Hspell:-3271|h[Protocolo de veneno]|h|r sueltan bombas perseguidoras que quedan en",
    "* |cff71d5ff|Hspell:-3273|h[charcos venenosos]|h|r; su |cff71d5ff|Hspell:-3274|h[Bala empapada]|h|r tampoco se ataca (empapa de veneno al atacante)."
};
pack["42179"] = bos; pack["42178"] = bos; pack["42166"] = bos; pack["42180"] = bos;

pack["41442"] = { "Atramedes",
    "* Todo el combate se juega con el |cff71d5ff|Hspell:-3072|h[Sonido]|h|r: la banda empieza con 0 puntos y cualquier efecto de sonido sube la barra; al llegar a 100 canaliza la |cff71d5ff|Hspell:-3455|h[Devastación]|h|r que mata a la banda, así que evitar fuentes de sonido es la clave.",
    "* Los |cff71d5ff|Hspell:-3073|h[Escudos enanos antiguos]|h|r (10 repartidos) se usan en momentos clave: el |cff71d5ff|Hspell:-3074|h[Fragor resonador]|h|r lo interrumpe y le aplica el |cff71d5ff|Hspell:-3075|h[Vértigo]|h|r con +50% de daño recibido.",
    "* En el suelo: el |cff71d5ff|Hspell:-3076|h[Impulso de sónar]|h|r deja discos que persiguen al objetivo, la |cff71d5ff|Hspell:-3077|h[Modulación]|h|r golpea a todos (curas en reserva) (curas en reserva), el |cff71d5ff|Hspell:-3078|h[Aliento sónico]|h|r persigue a un jugador y las |cff71d5ff|Hspell:-3079|h[Llamas abrasadoras]|h|r incendian el suelo.",
    "* En el aire: su |cff71d5ff|Hspell:-3086|h[Aliento de llama rugidora]|h|r y las |cff71d5ff|Hspell:-3087|h[Llamas rugidoras]|h|r queman el suelo, la |cff71d5ff|Hspell:-3085|h[Bomba de sónar]|h|r cae cerca de un jugador y la |cff71d5ff|Hspell:-3088|h[Bola de Fuego sónica]|h|r persigue al marcado (nadie más en la línea).",
    "* Heroico: el |cff71d5ff|Hspell:-3082|h[Maligno execrable]|h|r molesta a la banda bufeando a Atramedes (se mata rápido cuando la banda lo tiene)."
};

pack["43296"] = { "Chimaeron",
    "* El |cff71d5ff|Hspell:-3009|h[Bilistrón]|h|r (el robot de Pip Perspicaz) mantiene a la banda por encima de 10.000 de vida: debajo de eso, la |cff71d5ff|Hspell:-3012|h[Babosa cáustica]|h|r mata del todo, así que el sanador se centra en mantener el rango de todos.",
    "* La |cff71d5ff|Hspell:-3013|h[Masacre]|h|r deja a todos al 1% de vida (la |cff71d5ff|Hspell:-3010|h[Mezcla de Pip]|h|r los salva) y hay que curar justo después.",
    "* Su |cff71d5ff|Hspell:-3015|h[Romper]|h|r acumula +25% de daño físico en el tanque y la |cff71d5ff|Hspell:-3016|h[Ataque doble]|h|r pega dos veces: los tanques se alternan cada 2 acumulaciones.",
    "* Al 20% canaliza |cff71d5ff|Hspell:-3018|h[Mortalidad]|h|r (no se provoca y sanar apenas funciona): full DPS final con la Mezcla de Pip cubriendo el 1%.",
    "* Heroico: Nefarius lanza |cff71d5ff|Hspell:-3020|h[Sombras burlescas]|h|r periódico que daña a todos (curas de área listas)."
};

pack["41378"] = { "Maloriak",
    "* Vierte viales al caldero y el color manda: con el |cff71d5ff|Hspell:-2935|h[vial rojo]|h|r castea |cff71d5ff|Hspell:-2936|h[Llamas acuciantes]|h|r a un blanco y la |cff71d5ff|Hspell:-2937|h[Explosión agostadora]|h|r se divide entre los que estén cerca (banda junta);",
    "* con el |cff71d5ff|Hspell:-2938|h[vial azul]|h|r la |cff71d5ff|Hspell:-2939|h[Escalofrío cortante]|h|r pega al que esté cerca (banda junta) y la |cff71d5ff|Hspell:-2940|h[Congelación apresurada]|h|r atrapa a jugadores; y con el |cff71d5ff|Hspell:-2941|h[vial verde]|h|r la |cff71d5ff|Hspell:-2942|h[Baba debilitadora]|h|r hace recibir más daño (aprovechar: full DPS).",
    "* Con cada vial libera |cff71d5ff|Hspell:-2931|h[aberraciones]|h|r: se matan separadas, porque se bufean entre ellas con el |cff71d5ff|Hspell:-2933|h[Catalizador de crecimiento]|h|r.",
    "* Con el |cff71d5ff|Hspell:-2943|h[frasco de Magia oscura]|h|r (heroico) salen los |cff71d5ff|Hspell:-2946|h[Bazofia vil]|h|r que encharcan con su |cff71d5ff|Hspell:-2947|h[Fango oscuro]|h|r y canalizan la |cff71d5ff|Hspell:-2945|h[Oscuridad engullidora]|h|r: interrumpirla.",
    "* FASE 2 (25%): |cff71d5ff|Hspell:-2949|h[Liberar a todos]|h|r (aberraciones + los 2 |cff71d5ff|Hspell:-2953|h[Sujeto principal]|h|r, prioridad de muerte), mientras se esquivan los |cff71d5ff|Hspell:-2950|h[Chorros de magma]|h|r y la |cff71d5ff|Hspell:-2951|h[Cero absoluto]|h|r estalla lejos; la |cff71d5ff|Hspell:-2952|h[Nova de ácido]|h|r es dot progresivo: curas y daño final."
};

bos = { "El final de Nefarian",
    "* Nefarian reanima a Onyxia (|cff71d5ff|Hspell:-3277|h[¡Álzate, hermana!]|h|r): si quedan a menos de 50 m la |cff71d5ff|Hspell:-3278|h[Hijos de Alamuerte]|h|r les dobla la rapidez de ataque, así que los dos dragones se tanquean en extremos separados.",
    "* FASE 1: matar a Onyxia primero; su |cff71d5ff|Hspell:-3284|h[Energía eléctrica]|h|r sube con el tiempo y con cada |cff71d5ff|Hspell:-3276|h[Electrocutar]|h|r de Nefarian, y una |cff71d5ff|Hspell:-3288|h[Sobrecarga eléctrica]|h|r llena lo arrasa;",
    "* Nefarian invoca |cff71d5ff|Hspell:-3280|h[Guerreros osarios animados]|h|r antes de aterrizar y aplica el |cff71d5ff|Hspell:-3295|h[Dominio]|h|r sobre un jugador (se le curan las |cff71d5ff|Hspell:-3297|h[sombras]|h|r, no se le daña).",
    "* FASE 2 (al morir Onyxia): el suelo se llena de lava y quedan 3 plataformas con un |cff71d5ff|Hspell:-3299|h[Prototipo cromático]|h|r cada una: se matan los 3 rápido, porque sus |cff71d5ff|Hspell:-3300|h[Novas explosivas]|h|r dañan a todos,",
    "* esquivando la |cff71d5ff|Hspell:-3301|h[Tromba de Pirosombra]|h|r y las |cff71d5ff|Hspell:-3302|h[Cenizas explosivas]|h|r del vuelo.",
    "* FASE 3: baja Nefarian y full DPS con lust/heroísmo: no alargar (su |cff71d5ff|Hspell:-3305|h[Chispa de llamarada de las Sombras]|h|r crece y los |cff71d5ff|Hspell:-3306|h[guerreros osarios]|h|r reaniman con su |cff71d5ff|Hspell:-3307|h[Golpes potenciantes]|h|r)."
};
pack["41376"] = bos; pack["41270"] = bos;

-- ------------------------------------- --
-- El Bastión del Crepúsculo : Zona 5334 --
-- ------------------------------------- --

pack["44600"] = { "Halfus Rompevermis",
    "* Prioridades: Celador del Tiempo, Jinete de tormentas, Sucesor Abisal, Alga esmeralda huérfana, Dragón de Pizarra.",
    "* Idealmente el mt tanquea Halfus y uno de los dragones, mientras que el OT tanquea otro.",
    "* Los dragones se matan encima del boss para aprovechar todo el daño.",
    "* Si tenemos el dragón de pizarra tendremos que cambiar el boss cada 4 ticks de |cff71d5ff|Hspell:39171|h[Golpes malévolos]|h|r."
};

pack["45992"] = { "Theralion y Valiona",
    "* Theralion irá tirando |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h|r por lo que estaremos separados hasta el primer ataque de Valiona.",
    "* Cuando un pj reciba |cff71d5ff|Hspell:92878|h[Desmayo]|h|r él y toda la party (menos el tanque) se ponen en la cola del boss; cuando estén todos se disipa para repartir el daño.",
    "* Cuando tire |cff71d5ff|Hspell:92873|h[Llamas devoradoras]|h|r todo el mundo se pone detrás del boss para evitar el daño.",
    "* Al tirar |cff71d5ff|Hspell:93063|h[Destrucción deslumbrante]|h|r aparecerán círculos debajo de 3 jugadores de los que hay que salirse,",
    "  a los 5 segundos un misil meterá a los que estén en el reino crepuscular, del que hay que salir yendo al portal rosa sin tocar las bolas rosas del suelo."
};

pack["45993"] = { "Theralion y Valiona",
    "* Valiona usará |cff71d5ff|Hspell:92861|h[Meteorito Crepuscular]|h|r mientras vuela, que funciona de forma similar al desmayo.",
    "  Pondrá una marca al jugador afectado y a los 3 segundos activará 150K de daño que se reparten a los pjs cercanos. Con 5 es suficiente.",
    "* |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h|r pondrá un área morada debajo de un pj que evitaremos.",
    "* El pj que reciba el bufo |cff71d5ff|Hspell:95641|h[Trago de magia]|h|r se separará de los demás pjs para no hacerles daño.",
    "* |cff71d5ff|Hspell:86059|h[Aliento profundo]|h|r cubre un tercio de la sala de fuego, quien lo pise entrará en el reino crepuscular.",
    "  Se sale del reino crepuscular por el portal rosa sin pisar las bolas rosas del suelo."
};

-- Consejo crepuscular

pack["43686"] = { "Consejo de ascendientes",
    "FASE 1",
    "* Se tanquea en un extremo de la habitación con 1 tanque y los DPS cuerpo a cuerpo detras del jefe.",
    "* Los jugadores que reciban |cff71d5ff|Hspell:82660|h[Sangre ardiente]|h|r se colocarán cerca de los DPS a rango de Feludius para aumentar el daño que hacen mientras dure el bufo.",
    "* Cuando haga |cff71d5ff|Hspell:92521|h[Salto inferno]|h|r sobre un jugador, al volver dejará un surco en el suelo que tenemos que pisar cuando tengamos el efecto de |cff71d5ff|Hspell:82762|h[Calado]|h|r que pone la |cff71d5ff|Hspell:82700|h[Bomba de agua]|h|r.",
};

pack["43687"] = { "Consejo de ascendientes",
    "FASE 1",
    "* Se tanquea en el extremo opuesto a Ignacious, con 1 tanque. Los DPS a rango se colocan alejados del jefe y separados entre sí.",
    "* Los jugadores que reciban |cff71d5ff|Hspell:82667|h[Corazón de hielo]|h|r se colocarán cerca de los DPS cuerpo a cuerpo de Ignacious para aumentar el daño que hacen mientras dure el bufo.",
    "* Hay que interrumpir el lanzamiento de |cff71d5ff|Hspell:92509|h[Hidrolanza]|h|r o matará uno de los jugadores.",
};

pack["43688"] = { "Consejo de ascendientes",
    "FASE 2",
    "* |cff71d5ff|Hspell:-3131|h[Pararrayos]|h|r marca a varios jugadores: separarse para que la |cff71d5ff|Hspell:-3132|h[Cadena de relámpagos]|h|r no salte entre la banda.",
    "* |cff71d5ff|Hspell:-3133|h[Dispersar]|h|r lo teletransporta: el |cff71d5ff|Hspell:-3134|h[Explosión de relámpagos]|h|r cae sobre su objetivo al reaparecer y mata a quien esté cerca (solo el marcado, resto fuera).",
    "* Antes de su |cff71d5ff|Hspell:-3130|h[Choque de truenos]|h|r hay que tocar un ciclón de |cff71d5ff|Hspell:-3129|h[Llamar vientos]|h|r: la |cff71d5ff|Hspell:-3152|h[Vientos espirales]|h|r (levitación) evita el daño eléctrico.",
    "* Al 25% se fusiona con Terrastra en la Monstruosidad de elementium: acabar con ella rápido (ver su entrada).",
};

pack["43689"] = { "Consejo de ascendientes",
    "FASE 2",
    "* |cff71d5ff|Hspell:-3138|h[Erupción]|h|r: rocas del suelo alrededor de ella, el tanque la mueve y nadie se planta encima.",
    "* Los levitados (por los ciclones) deben tocar un |cff71d5ff|Hspell:-3136|h[Pozo de gravedad]|h|r para aterrizar antes del |cff71d5ff|Hspell:-3139|h[Temblor]|h|r: en el aire se recibe el peor golpe.",
    "* |cff71d5ff|Hspell:-3137|h[Endurecer piel]|h|r la bufea y absorbe daño: los DPS la descargan para romperla.",
};

pack["43735"] = { "Monstruosidad de elementium",
    "FASE 3",
    "* Hero, ansia, etc... deben guardarse para esta fase que es una carrera de DPS.",
    "* |cff71d5ff|Hspell:-3146|h[Inestabilidad eléctrica]|h|r: daño de naturaleza creciente cada 1s, banda algo separada y los melee sin apilarse sobre el tanque.",
    "* |cff71d5ff|Hspell:-3147|h[Machaque de gravedad]|h|r encierra a un jugador en una burbuja que lo eleva: los demás rompen la burbuja a golpes.",
    "* |cff71d5ff|Hspell:-3148|h[Semilla de lava]|h|r siembra el suelo de semillas que estallan: esquivarlas y no pisarlas.",
    "* |cff71d5ff|Hspell:-3149|h[Aura criogénica]|h|r congela el suelo (difícil moverse) y reduce un 25% el daño que recibe.",
};

pack["43324"] = { "Cho'gall",
    "* La |cff71d5ff|Hspell:-3165|h[Sangre corrupta]|h|r llena la barra de Corrupción con cada facultad: a 25% se acelera, a 50% mareo continuo, a 75% sale una malformación tentacular y a 100% se pierde el control — mantenerla baja por turnos es la clave del combate.",
    "* Los |cff71d5ff|Hspell:-3161|h[Partidarios en corrupción]|h|r salen por los portales laterales: DPS/CC y matarlos rápido, su |cff71d5ff|Hspell:-3162|h[Depravación]|h|r es daño de área.",
    "* El martillo alterna |cff71d5ff|Hspell:-3156|h[Órdenes a la llama]|h|r y |cff71d5ff|Hspell:-3158|h[Órdenes a las Sombras]|h|r: con llama, el tanque aparta al boss de la banda por la |cff71d5ff|Hspell:-3211|h[Llamarada]|h|r; con sombras, esparcirse un poco.",
    "* La |cff71d5ff|Hspell:-3155|h[Conversión]|h|r esclaviza jugadores: sacarse de la alabanza con stuneos/disrupción (cada aplauso la bufea con |cff71d5ff|Hspell:-3209|h[Devoción retorcida]|h|r).",
    "* Los |cff71d5ff|Hspell:-3160|h[Invocaciones]|h|r de Cho'gall dejan cadáveres de los cuales nace la |cff71d5ff|Hspell:-3216|h[Sangre del dios antiguo]|h|r, así que conviene matarlos lejos del recorrido de la banda.",
    "* FASE 2 al 25%: la |cff71d5ff|Hspell:-3218|h[Corrupción del dios antiguo]|h|r llena la sala de tentáculos — full DPS con Hero/ansia, ojo a las |cff71d5ff|Hspell:-3220|h[Creaciones oscurecidas]|h|r: su |cff71d5ff|Hspell:-3221|h[Haz debilitador]|h|r reduce un 75% la sanación, el marcado se separa.",
};

pack["45213"] = { "Sinestra",
    "* Solo en 25. FASE 1 (hasta el 30%): vuela y hay que quemarla desde abajo; las |cff71d5ff|Hspell:-3229|h[Cercenadoras crepusculares]|h|r persiguen a un jugador desde el aire: el marcado corre lejos (al morir la orbe, nadie delante por la |cff71d5ff|Hspell:-3230|h[Explosión crepuscular]|h|r).",
    "* La |cff71d5ff|Hspell:-3227|h[Arruinar]|h|r cae en un jugador con daño creciente y SALTARá a otro cercano al pasar su tiempo: el marcado se aparta de la banda y el sanador la lleva al límite.",
    "* Los |cff71d5ff|Hspell:-3231|h[Crías crepusculares]|h|r caen con su |cff71d5ff|Hspell:-3232|h[Saliva Crepuscular]|h|r a un jugador: un grupo las kotea al fondo y las mata rápido, sin pisar los charcos de |cff71d5ff|Hspell:-3233|h[Esencia]|h|r.",
    "* FASE 2 (al 30%): Calen empieza su duelo y los |cff71d5ff|Hspell:-3238|h[Huevos crepusculares con pulso]|h|r quedan expuestos tras cada |cff71d5ff|Hspell:-3308|h[Caparazón crepuscular]|h|r: full DPS a los huevos en cada ventana;",
    "* los |cff71d5ff|Hspell:-3239|h[Clamafurias]|h|r llegan y su |cff71d5ff|Hspell:-3240|h[Desatar esencia]|h|r se interrumpe (el |cff71d5ff|Hspell:-3241|h[Indomable]|h|r castiga el CC largo), y los |cff71d5ff|Hspell:-3242|h[Dracos crepusculares]|h|r pasan con su |cff71d5ff|Hspell:-3243|h[Aliento crepuscular]|h|r.",
    "* FASE 3 (huevos muertos): la |cff71d5ff|Hspell:-3246|h[Esencia de lo Rojo]|h|r bufea a la banda y full DPS final."
};

-- --------------------------------------- --
-- Trono de los Cuatro Vientos : Zona 5638 -- Canario
-- --------------------------------------- --

pack["45870"] = { "El Cónclave del Viento",
    "NOTAS GENERALES",
    "* Este encuentro consiste en 3 Señores elementales Anshal, Nezir y Rohash con un enrage de 8 minutos",
    "Hay que matarlos a los tres con una diferencia máxima de un minuto; si no, resucitan",
    "* Los jefes tienen una barra de energía que cuando se completa (al llegar a 90) usan sus habilidades especiales, los movimientos entre plataformas han de hacerse cuando su barra llega a 80 como muy tarde",
    "Estrategia:",
    "* 4 grupos: 1º: 1 tanque, 1 sanador y 1 dps [Anshal]; 2º: 1 tanque y 1 sanador (preferiblemente paladín holy, porque puede quitarse los debuffs); 3º: 1 dps y 1 sanador [Rohash]; 4º: grupo móvil con 3 dps",
    "* Optimizar el dps en los tres para que bajen de manera similar",

    "* Plataforma Anshal: periódicamente castea |cff71d5ff|Hspell:86205|h[Brisa calmante]|h|r, sana a Anshal y sus aliados (trepadores), silenciando la banda",
    "* Castea |cff71d5ff|Hspell:85422|h[Nutrir]|h|r lo que sumonea trepadores que a su vez usan |cff71d5ff|Hspell:93121|h[Esporas tóxicas]|h|r",
    "* Especial: |cff71d5ff|Hspell:84638|h[Céfiro]|h|r: evitar que haya trepadores antes de la habilidad especial",
};

pack["45872"] = { "El Cónclave del Viento",
    "Habilidades:",
    "* |cff71d5ff|Hspell:86193|h[Explosión de viento]|h|r, esta es su habilidad más peligrosa aquel que esté enfrente de él cuando la use sale empujado a 200 metros",
    "* |cff71d5ff|Hspell:86182|h[Vendaval cortante]|h|r, ataque a distancia",
    "* Especial: |cff71d5ff|Hspell:86481|h[Huracán]|h|r el daño más grande es el de la caída (unos 70k) por lo que todo el que pueda deberá usar formas de gato, caída lenta, etc"
};

pack["45871"] = { "El Cónclave del Viento",
    "Habilidades:",
    "* |cff71d5ff|Hspell:86082|h[Escarcha permanente]|h|r, lo que obliga a permanecer separados",
    "* |cff71d5ff|Hspell:93130|h[Zona de hielo]|h|r, salir INMEDIATAMENTE de su área de efecto",
    "* |cff71d5ff|Hspell:84645|h[Viento escalofriante]|h|r, esta es la habilidad más peligrosa que provoca que los tanques/healers tengan que cambiarse entre plataformas cuando no sean capaces de curar el daño (stacks) (Anshal-Nezir)",
    "* Especial: |cff71d5ff|Hspell:84644|h[Tormenta de granizo]|h|r",
};

pack["46753"] = { "Al'Akir",
    "* FASE 1 (hasta el 80%): la |cff71d5ff|Hspell:-3022|h[Ráfaga de viento]|h|r y la |cff71d5ff|Hspell:-3023|h[Línea de borrasca]|h|r golpean con separación (se apartan), las |cff71d5ff|Hspell:-3024|h[Tormentas de hielo]|h|r van por el suelo (se esquivan) y el |cff71d5ff|Hspell:-3025|h[Golpe de relámpagos]|h|r castiga al marcado.",
    "* FASE 2: la |cff71d5ff|Hspell:-3032|h[Lluvia ácida]|h|r va aumentando con el tiempo (full DPS para no alargar) y las |cff71d5ff|Hspell:-3033|h[Tormentillas]|h|r se dejan vivas: si alguien las mata, su |cff71d5ff|Hspell:-3034|h[Rebote]|h|r bufea a Al'Akir.",
    "* FASE 3 (al 25%): la plataforma se rompe y todos vuelan con el |cff71d5ff|Hspell:-3037|h[Ojo de la tormenta]|h|r: full DPS final; el marcado del |cff71d5ff|Hspell:-3039|h[Pararrayos]|h|r se aparta y las |cff71d5ff|Hspell:-3040|h[Nubes de relámpagos]|h|r se esquivan."
};

-- ------------------------------ --
-- Tierras de Fuego : Zona 5043 --
-- ------------------------------ --

pack["52498"] = { "Beth'tilac",
    "* FASE 1: ella está arriba en la telaraña, la banda pelea abajo, y los |cff71d5ff|Hspell:-2773|h[zánganos Telaceniza]|h|r se matan antes de que se llenen de fuego (se comen las |cff71d5ff|Hspell:-2778|h[arañitas Telaceniza]|h|r para curarse: matar las arañitas primero).",
    "* El tanque provoca a una |cff71d5ff|Hspell:-2770|h[Hiladora Telaceniza]|h|r para bajarla, con el grupo en piña (su |cff71d5ff|Hspell:-2772|h[Remolino de telaraña ígneo]|h|r aturde al marcado 25s): full DPS.",
    "* El equipo que sube vigila su |cff71d5ff|Hspell:-2765|h[Energía de Fuego]|h|r: al agotarse lanza la |cff71d5ff|Hspell:-2769|h[Devastación humeante]|h|r que arrasa su nivel, así que hay que bajar ANTES (se repite 3 veces y entonces entra en la |cff71d5ff|Hspell:-2782|h[FASE 2]|h|r de frenesí).",
    "* FASE 2: baja y se mata del todo; el tanque sufre el |cff71d5ff|Hspell:-2783|h[Beso de la viuda]|h|r (drena la sanación: curas al máximo) y las |cff71d5ff|Hspell:-2784|h[Bengalas de brasas]|h|r castigan a los cercanos."
};

pack["52558"] = { "Lord Piroclasto",
    "* FASE 1 (hasta el 25%): no se tanquea, se DIRIJE: la banda golpea su pie izquierdo o derecho para girarle el rumbo y hay que dirigirlo lejos del |cff71d5ff|Hspell:-2530|h[magma]|h|r y de los grandes |cff71d5ff|Hspell:-2534|h[volcanes]|h|r (los |cff71d5ff|Hspell:-2535|h[cráteres]|h|r pequeños los apaga el DPS).",
    "* Su |cff71d5ff|Hspell:-2527|h[Armadura de obsidiana]|h|r apila capas que reducen el daño que recibe: se pela a golpes; con cada volcán brotan |cff71d5ff|Hspell:-2531|h[fragmentos]|h|r y |cff71d5ff|Hspell:-2532|h[chispas]|h|r de Piroclasto que ganan |cff71d5ff|Hspell:-2533|h[Rabia infernal]|h|r, así que se matan rápido.",
    "* Su |cff71d5ff|Hspell:-2528|h[Pisotón de conmoción]|h|r golpea a todos de vez en cuando: curas periódicas.",
    "* FASE 2 (al 25%): deja de dirigirse y la |cff71d5ff|Hspell:-2538|h[Inmolación]|h|r daña a todos de forma creciente: full DPS final con lust/heroísmo, esquivando las llamas |cff71d5ff|Hspell:-2539|h[desatadas]|h|r."
};

pack["52530"] = { "Alysrazor",
    "* FASE 1: ella vuela, la banda pelea abajo: dos jugadores recogen |cff71d5ff|Hspell:-2828|h[Plumas de arrabio]|h|r (con tres tienen las |cff71d5ff|Hspell:-2829|h[Alas de llamas]|h|r para volar y ayudar arriba),",
    "* la |cff71d5ff|Hspell:-2836|h[Prole voraz]|h|r se tanquea aparte (se sacia con los |cff71d5ff|Hspell:-2843|h[Gusanos de lava orondos]|h|r) y los dos |cff71d5ff|Hspell:-2834|h[Iniciados de garfas llameantes]|h|r mueren rápido (con |cff71d5ff|Hspell:-3335|h[Escudo llameante]|h|r: full DPS).",
    "* El |cff71d5ff|Hspell:-2845|h[Heraldo del extremo ardiente]|h|r sale al final de la fase: su |cff71d5ff|Hspell:-2846|h[Cataclismo]|h|r invoca el |cff71d5ff|Hspell:-2847|h[Meteorito fundido]|h|r (full DPS antes de que caiga).",
    "* FASE 2: entra en el |cff71d5ff|Hspell:-2849|h[Vórtice ígneo]|h|r (paralizada): full DPS con lust/heroísmo; los voladores esquivan los |cff71d5ff|Hspell:-2850|h[Tornadoes ígneos]|h|r y los de abajo los |cff71d5ff|Hspell:-3332|h[Vientos violentos]|h|r.",
    "* FASE 3 (al agotarse su poder): |cff71d5ff|Hspell:-2852|h[Consunción]|h|r con la |cff71d5ff|Hspell:-2853|h[Esencia del Vuelo Verde]|h|r (vuelo para todos) y full DPS antes de que remonte;",
    "* si se pasa a la FASE 4 renace con pleno poder (|cff71d5ff|Hspell:-2858|h[Sacudida llameante]|h|r) y toca repetir el ciclo: cuantos menos ciclos, mejor."
};

pack["53691"] = { "Shannox",
    "* Trabajo para dos tanques: uno aguanta al |cff71d5ff|Hspell:-2581|h[Desmembrador]|h|r y otro a |cff71d5ff|Hspell:-2583|h[Rostrofuria]|h|r, lejos de Shannox, porque al morir el primero gana el |cff71d5ff|Hspell:-2580|h[Frenesí]|h|r.",
    "* Se mata primero a Rostrofuria: su |cff71d5ff|Hspell:-2584|h[Ensañamiento facial]|h|r devora al marcado (full DPS para acabarlo antes); después Desmembrador, y Shannox al final.",
    "* El |cff71d5ff|Hspell:-2577|h[Tajo arqueado]|h|r deja la |cff71d5ff|Hspell:-2578|h[Hendedura dentada]|h|r (sangrado fuerte en el tanque): el sanador se lo cubre; con el |cff71d5ff|Hspell:-2579|h[Lanzar lanza]|h|r el Desmembrador corre a buscarla (los tanques aprovechan para recolocarse).",
    "* Sus |cff71d5ff|Hspell:-2575|h[Trampas de inmolación]|h|r y |cff71d5ff|Hspell:-2576|h[Trampas de prisión de cristal]|h|r caen cerca de los perros: el que esté cerca se aparta (quedar atrapado es fatal, sobre todo en heroico), y las |cff71d5ff|Hspell:-2928|h[Rupturas de magma]|h|r del suelo se esquivan."
};

pack["53494"] = { "Baleroc, el Guardián de la Puerta",
    "* El |cff71d5ff|Hspell:-2592|h[Fragmento de tormento]|h|r canaliza el |cff71d5ff|Hspell:-2593|h[Tormento]|h|r sobre un jugador, que recibe daño creciente: se aparta del cristal cuando el daño aprieta; si no se interrumpe a tiempo, sale la |cff71d5ff|Hspell:-2595|h[Ola de tormento]|h|r.",
    "* Los sanadores se reparten: dos o tres se colocan junto al cristal a recoger |cff71d5ff|Hspell:-2596|h[Chispas vitales]|h|r (cada una refuerza sus curas con la |cff71d5ff|Hspell:-2597|h[Llama vital]|h|r) y el resto cura al marcado del Tormento.",
    "* Con la |cff71d5ff|Hspell:-2599|h[Hoja exterminadora]|h|r sus golpes pegan de sombra y con la |cff71d5ff|Hspell:-2600|h[Hoja de inferno]|h|r de fuego: los tanques se alternan mientras el |cff71d5ff|Hspell:-2590|h[Fulgor de gloria]|h|r (su bufeo) se apila.",
    "* Heroico: la |cff71d5ff|Hspell:-2601|h[Cuenta atrás]|h|r empareja jugadores: los emparejados se quedan cerca entre sí y lejos del resto al estallar."
};

pack["52571"] = { "Mayordomo Corzocelada",
    "* Cada |cff71d5ff|Hspell:-2912|h[Cambio de forma]|h|r manda: en |cff71d5ff|Hspell:-2913|h[forma felina]|h|r salta |cff71d5ff|Hspell:-2914|h[Salto de llamas]|h|r tras el objetivo (deja rastros de fuego en el suelo) y en |cff71d5ff|Hspell:-2918|h[forma de escorpión]|h|r la",
    "* |cff71d5ff|Hspell:-2919|h[Guadaña de llamas]|h|r castiga a quienes le están pegando (el melee la asume con curas).",
    "* La |cff71d5ff|Hspell:-2916|h[Adrenalina]|h|r sube con cada hechizo repetido: cuanto más se alargue la pelea más duele, así que full DPS.",
    "* En |cff71d5ff|Hspell:-2922|h[forma de elfo de la noche]|h|r (a mitad de la pelea) agarra con el |cff71d5ff|Hspell:-2923|h[Ciclón ígneo]|h|r a los cercanos (separación),",
    "* deja |cff71d5ff|Hspell:-2924|h[Semillas abrasadoras]|h|r bajo el marcado (se mueve lejos antes de que exploten) y suelta los |cff71d5ff|Hspell:-2925|h[orbes ardientes]|h|r perseguidores (se esquivan lejos de la banda)."
};

pack["52409"] = { "Ragnaros",
    "* FASE 1: la |cff71d5ff|Hspell:-2631|h[Ola de lava]|h|r que nace de cada |cff71d5ff|Hspell:-2630|h[Machaque de Sulfuras]|h|r se esquiva con un lateral, y las |cff71d5ff|Hspell:-2634|h[Trampas de magma]|h|r se hacen explotar DE UNA EN UNA con todos la vida alta (la |cff71d5ff|Hspell:-2635|h[Erupción de trampa de magma]|h|r daña a todos).",
    "* En el INTERMEDIO los |cff71d5ff|Hspell:-2637|h[Hijos de la llama]|h|r persiguen al marcado, que corre lejos de la banda mientras le hacen full DPS; nadie cruza su camino por la |cff71d5ff|Hspell:-2639|h[Supernova]|h|r final.",
    "* FASE 2: el |cff71d5ff|Hspell:-2643|h[Llama engullidora]|h|r es el cono frontal (fuera), el |cff71d5ff|Hspell:-2644|h[Mundo en llamas]|h|r arde por sectores (nadie dentro) y las |cff71d5ff|Hspell:-2645|h[Semillas de magma]|h|r estallan bajo el marcado (moverse lejos; los |cff71d5ff|Hspell:-2647|h[elementales de magma]|h|r que quedan se matan con AoE).",
    "* FASE 3 (al 40%): el |cff71d5ff|Hspell:-2661|h[Meteorito candente]|h|r persigue a un jugador (correr lejos de la banda; quien se cruce cerca le da |cff71d5ff|Hspell:-2663|h[Combustible]|h|r) y el |cff71d5ff|Hspell:-2658|h[Llama engullidora]|h|r y el |cff71d5ff|Hspell:-2659|h[Mundo en llamas]|h|r siguen.",
    "* Heroico (FASE 4): con los aliados (Cenarius, Hamuul y Malfurion) apoyando, full DPS final; su |cff71d5ff|Hspell:-2680|h[Sobrecalentamiento]|h|r, el |cff71d5ff|Hspell:-2681|h[Empoderamiento de Sulfuras]|h|r (|cff71d5ff|Hspell:-2682|h[Llamas de Sulfuras]|h|r) y el |cff71d5ff|Hspell:-2683|h[Llama aterradora]|h|r castigan al recinto."
};

-- ============================================= --
-- Añadidos: mazmorras 4.3 + Throne remasterizada --
-- ============================================= --

-- ------------------------------------ --
-- El Fin de los Tiempos : Zona 938 --
-- ------------------------------------ --

pack["54431"] = { "Eco de Baine",
    "* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r aplasta: tanque y healers atentos.",
    "* Los tótems de |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r son prioridad.",
};

pack["54445"] = { "Eco de Jaina",
    "* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: se teletransporta, atento a la nueva posición.",
};

pack["54432"] = { "Murozond",
    "* Esquiva las |cff71d5ff|Hspell:-3676|h[Distortion Bomb]|h|r.",
    "* Último jefe de la mazmorra: guarda las defensas para el final.",
};

pack["54123"] = { "Eco de Sylvanas",
    "* El |cff71d5ff|Hspell:-3951|h[Shriek of the Highborne]|h|r: daño masivo, curas listas.",
};

pack["54544"] = { "Eco de Tyrande",
    "* |cff71d5ff|Hspell:-4207|h[Dark Moonlight]|h|r: cuidado con la luna oscura.",
};

-- ---------------------------------- --
-- La Hora del Crepúsculo : Zona 940 --
-- ---------------------------------- --

pack["54590"] = { "Arcurion",
    "* |cff71d5ff|Hspell:102582|h[Chains of Frost]|h|r encadena: cuidado con el hielo.",
    "* El metido en el |cff71d5ff|Hspell:103252|h[Icy Tomb]|h|r hay que sacarle rompiendo el hielo.",
    "* |cff71d5ff|Hspell:104050|h[Torrent of Frost]|h|r: daño de banda, curas.",
};

pack["54968"] = { "Asira Puñal del Alba",
    "* El marcado por |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r pierde las curas: disipad.",
    "* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: humo que aturde, sal de él.",
    "* |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r: no lo cruces.",
};

pack["54938"] = { "Arzobispo Benedictus",
    "* Dos fases: la Luz y la Sombra.",
    "* El marcado por |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r o |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r debe gritarlo (SAY) y alejarse.",
    "* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r y |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r: fuera de las zonas.",
};

-- --------------------------------- --
-- El Pozo de la Eternidad : Zona 939 --
-- --------------------------------- --

bos = {
    "Reina Azshara",
    "* Los magos encantados son prioridad antes que ella.",
    "* |cff71d5ff|Hspell:-3969|h[Total Obedience]|h|r: casteo largo, interrumpid.",
};
pack["54853"] = bos; pack["54884"] = bos; pack["54882"] = bos; pack["54883"] = bos;

bos = {
    "Mannoroth y Varo'then",
    "* |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r: cuidado con lo que sale del portal.",
    "* El tanque aguanta a Mannoroth; Varo'then muere rápido.",
};
pack["54969"] = bos; pack["55419"] = bos;

pack["55085"] = { "Peroth'arn",
    "* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: debuff importante, curas.",
    "* En la fase sigilosa NO te muevas cuando envía los ojos.",
    "* El marcado por |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r es vulnerable: full DPS.",
};

-- --------------------------------------------- --
-- Throne of the Tides (remasterizada) : Zona 643 --
-- --------------------------------------------- --

pack["40788"] = { "Dominamentes Ghur'sha",
    "* Fase de Erunak: |cff71d5ff|Hspell:429051|h[Earthfury]|h|r y los tótems de |cff71d5ff|Hspell:429037|h[Stormflurry Totem]|h|r, uno a uno.",
    "* |cff71d5ff|Hspell:429172|h[Terrifying Vision]|h|r castea largo: interrumpid.",
    "* El |cff71d5ff|Hspell:429048|h[Flame Shock]|h|r se disipa.",
};

bos = {
    "Ozumat",
    "* El marcado por |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r debe apartarse (SAY).",
    "* |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r: cuidado con el diluvio de suciedad.",
    "* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r es del tanque; Neptulon os ayuda con su flujo.",
};
pack["44566"] = bos; pack["213770"] = bos;

-- --------------------------------------------- --
-- Eventos y festividades --
-- --------------------------------------------- --

pack["23870"] = { "Coren Cerveza Temible",
    "* Tanque: controla rápido a Coren y sus ayudantes para que no pegen a telas ni a DPS ligeros.",
    "* Adds: mata primero a los esbirros que invoca para reducir el daño del grupo.",
    "* Las jarras de cerveza de las mesas: lánzalas o úsalas para mejoras temporales de daño o para mitigar los perjuicios del jefe.",
    "* Sanación: tanques con buena autorrecuperación (Caballeros de la Muerte, Guerreros) aguantan solos, pero un sanador estándar asegura el encuentro sin riesgos."
};

P.es = es;
