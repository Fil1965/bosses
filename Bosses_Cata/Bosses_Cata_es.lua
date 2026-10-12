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

pack["46962"] = { "Barón Ashbury HERO",
    "* Interrumpir o disipar |cff71d5ff|Hspell:93712|h[Dolor y sufrimiento]|h|r",
    "* |cff71d5ff|Hspell:93710|h[Asfixiar]|h|r dejará la vida de todos al 1%, y luego tirará |cff71d5ff|Hspell:93705|h[Ejecución pospuesta]|h|r que interrumpiremos en cuanto el grupo recupere un poco de vida porque cura tambien al jefe."
};

pack["3887"] = { "Barón Filargenta HERO",
    "* Hay que disipar |cff71d5ff|Hspell:93956|h[Velo maldito]|h|r para que no se reduzcan las sanaciones.",
    "* Cuando salgan adds full dps a los adds."
};

pack["4278"] = { "Comandante Vallefont ",
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

pack["47162"] = { "Glubtok <El Supervisor> HERO",
    "* En la primera fase pierde el agro después de cada translación, el tanque tiene que estar atento.",
    "* Al 40% empieza la segunda fase, en la que evitaremos el muro de lava giratorio.",
    "* Los elementales de la segunda fase tendrán que matarse poco a poco porque salen cada vez más, es un buen momento para tirar hero."
};

pack["47296"] = { "Helix Rompengranajes HERO",
    "* Evitar las bomba que tira.",
    "* El que reciba |cff71d5ff|Hspell:88352|h[Bomba de pecho]|h|r se alejará del grupo hasta que explote."
};

pack["43778"] = { "Siegaenemigos 5000 HERO",
    "* 1 DPS cojerá una segadora y se van matando los 4 cosechadores.",
    "* Al matar el último cosechador se activa el boss, suben todos menos el que lleva la segadora que irá matando todos los adds que salgan.",
    "* Cuando el boss marque un jugador con |cff71d5ff|Hspell:88501|h[Cosechar]|h|r todos se separan del lugar marcado.",
    "* Cuando tenga la |cff71d5ff|Hspell:88481|h[Ultravelocidad]|h|r nos separamos."
};

pack["47626"] = { "Almirante Rasgagruñido HERO",
    "* El sanador debe racionar el mana.",
    "* Los adds debe de matarse lo antes posible o crecerán y matarán al grupo.",
    "* El jefe debe matarse lo antes posible para evitar que la |cff71d5ff|Hspell:88736|h[Sed de sangre]|h|r aumente demasiado."
};

pack["47739"] = { "Capitán Cocinitas HERO",
    "* El boss suelta comidas buenas (blancas) y malas (verdes) que se compensan,",
    "  hay que ir cojiendo 1 mala por 1 buena durante todo el combate para evitar que el suelo se llene del área dañina de la comida mala.",
    "  El tanque si no tiene problemas de agro puede cojer 2 malas por 1 buena."
};

pack["49429"] = { "Vanessa VanCleef HERO",
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
    "* Cuando empiece a tirar /script |cff71d5ff|Hspell:75322|h[Himno resonante]|h|r baja todo el grupo para bajar las dos palancas. A la vuelta interrumpimos el himno y seguimos.",
    "Nota: En normal solo hace falta que baje 1 dps por cada lado para que cada uno baje 1 de las palancas."
};

pack["39428"] = { "Terracundo Ptah",
    "* Es un boss opcional de carrera de DPS."
};

pack["39788"] = { "Anraphet",
    "* Mover al boss para evitar las áreas que provocan los |cff71d5ff|Hspell:76184|h[Haces Alfa]|h|r.",
    "* Hay que procurar tirarse mitigaciones durante la |cff71d5ff|Hspell:75622|h[Actitud Omega]|h|r."
};

pack["39587"] = { "Isiset",
    "* Cuando tire |cff71d5ff|Hspell:74137|h[Supernova]|h|r hay que girarse antes de que finalice en casteo para no quedar estuneado.",
    "* Cuando se divida el orden para matar las copias deberías de ser: ",
    "   1º Llamada celestial",
    "   2º Lluvia astral",
    "   3º Velo del cielo"
};

pack["39731"] = { "Ammunae",
    "* Prioridad DPS a las Vainas de Esqueje para que no curen al boss y a las Flores Sangrepétalo para evitar el daño.",
    "* Si es posible disipar el |cff71d5ff|Hspell:76043|h[Marchitar]|h|r cuando lotire a los jugadores.",
    "Nota: En heroico el tanque puede poner el boss sobre una espora muerta para acelerar la muerte del boss."
};

pack["39732"] = { "Setesh",
    "* El boss no se tanquea, se tanquean los adds que van saliendo.",
    "* Si el DPS es alto pueden ignorarse los portales e intentar bajar el boss lo antes posible.",
    "* Si se prefiere asegurar hay que eliminar los portales en cuanto salgan, y el tanque debe coger los adds que salgan (no se matan)."
};

pack["39378"] = { "Rajh",
    "* Evitar los ciclones de fuego.",
    "* Se debe de interrumpir |cff71d5ff|Hspell:80352|h[Invocar orbe]|h|r para evitar el daño.",
    "* La |cff71d5ff|Hspell:76355|h[Bendición del sol]|h|r aparte de hacer daño aumenta el daño que hacemos. Hay que concentrar todo el DPS en ese momento."
};

-- ------------------------------- --    	
-- Cavernas Roca Negra : Zona 4926 --
-- ------------------------------- --    	

pack["39665"] = { "Machacahuesos Rom'ogg",
    "* Evitar la nube de polvo del |cff71d5ff|Hspell:75272|h[Temblor]|h|r. En hero saldran elementales, si el tanque y el sanador van sobrados pueden ignorarse, sino hay que matarlos.",
    "* Cuando tire |cff71d5ff|Hspell:75539|h[Cadenas de tragedia]|h|r hay que centrar TODO el DPS en romper las cadenas, y una vez rotas hay que huir lo mas rápidamente posible para evitar que nos mate el |cff71d5ff|Hspell:75543|h[El Revientacalaveras]|h|r."
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
    "Nota: Lo mejor es meterlo de refilón, para poder controlar al máximo el tiempo que esté dentro. Cuanto más tiempo esté mas daño recibirá la party."
};

pack["39700"] = { "Bella",
    "* Idealmente mantendremos en CC los cachorros mientras matamos al jefe. Si esto no es posible hay que matar los cachorros antes del jefe.",
};

pack["39705"] = { "Señor ascendiente Obsidius",
    "* Idealmente tendremos un DPS para kitear a las sombras (usando ralentizaciones), estan no tienen agro y pegaran a lo ultimo que les pegue.",
    "* Mientras tanto el tanque y el resto del grupo se centran en el jefe.",
    "* De vez en cuando el jefe se cambiará por una sombra, momento en que el dps que estaba kiteando y el tanque se intercambiarán los mobs."
};

-- ----------------------------------------- --
-- Ciudad perdida de los Tol'vir : Zona 5396 --
-- ----------------------------------------- --

pack["43612"] = { "Sumo profeta Barim HERO",
    "* En la primera fase se quitea el fenix.",
    "* En la segunda fase (sombra) full dps al fenix."
};

pack["43614"] = { "Cierrafauce HERO",
    "* El que tenga la marca le acerca los adds al tanque para que se los quite fácilmente.",
};

pack["49045"] = { "Augh",
    "* Evitar el |cff71d5ff|Hspell:91408|h[Torbellino]|h|r.",
};

pack["44577"] = { "General Husam HERO",
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
    "* Interrumpir |cff71d5ff|Hspell:91477|h[Explosión de choque]|h|r-",
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
    "* Si se pone el |cff71d5ff|Hspell:76307|h[Absorber magia]|h|r hay que dispeleárselo sino todo el daño mágico lo sanará."
};

pack["40792"] = { "Neptulon",
    "* FASE 1, el tanque irá cojiendo los Behemoth implacables, los adds pequeños los pueden matar los dps directamente. Los Behemots se irán moviendo por la sala hasta que se maten.",
    "* FASE 2, salen bestias y 3 azotadores que canalizan sobre Neptulon.",
    "    Hay que matar los azotadores lo antes posible, aunque tambien hay que descargar un poco al tanque de las bestias para que no lo maten.",
    "    El tanque seguirá moviendo el Behemoth que quede y las bestias.",
    "    Hay que evitar los charcos de tinta del suelo.",
    "* FASE 3, Neptulon nos pondrá |cff71d5ff|Hspell:76133|h[Fuerza del oleaje]|h|r en este momento hay que hacer FULL DPS hasta matar al boss."
};

-- ---------------------- --
-- Grim Batol : Zona 4950 --
-- ---------------------- --

pack["39625"] = { "General Umbriss",
    "* Cuando tire |cff71d5ff|Hspell:74670|h[Ataque relámpago]|h|r el jugador al que apunte se moverá para evitar el daño.",
    "* El sanador estará atendo a cuando el tanque reciba |cff71d5ff|Hspell:74846|h[Herida sangrante]|h|r tendrá que subirle la vida al menos al 90% para quitarle el debuff.",
    "* De los adds (Troggs) se encargan los DPS, el tanque no debe atraerlos. ",
    "  En HERO sale un trogg morado, antes de empezar el combate se asignará a 1 DPS. ",
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

pack["40484"] = { "Erudax",
    "* Los DPS a rango procuran estar separados para evitar que las |cff71d5ff|Hspell:79466|h[Sombras vinculadoras]|h|r afecten a mas de uno.",
    "* Cuando tire el |cff71d5ff|Hspell:75664|h[Vendaval de las Sombras]|h|r todo el mundo se coloca en el ojo del vendaval o morirá.",
    "* Después del Vendaval saldrá un Corruptor Ignoto, o 2 en HERO.",
    "  Deben de repartirse los DPS para que mueran lo antes posible porque si llegan a los huevos el jefe se curará y saldrán dragones que harán daño a toda la party hasta el final."
};

-- ----------------------------------- --
-- La Cumbre del Vórtice : Zona 5035
-- ----------------------------------- --

pack["43878"] = { "Gran visir Ertan HERO",
    "* Hay que evitar los |cff71d5ff|Hspell:86292|h[Escudo de ciclón]|h|r."
};

pack["43873"] = { "Altairus HERO",
    "* Siempre que se pueda hay que procurar que el viento dé por la espalda para aprovechar el bufo."
};

pack["43875"] = { "Asaad <Califa de los Céfiros> HERO",
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

pack["23574"] = { "Akil'zon <Avatar de águila> HERO",
    "* Todos separados a + de 6 yardas. La |cff71d5ff|Hspell:61911|h[Perturbación estática]|h|r aumenta el daño si hay jugadores cerca.",
    "* Full DPS al aguila blanca que levanta a un jugador.",
    "* Cuando se eleve un pj para hacer una |cff71d5ff|Hspell:45336|h[Sobrecarga eléctrica]|h|r todos debajo para evitar el daño."
};

pack["23576"] = { "Nalorakk <Avatar de oso> HERO",
    "* |cff71d5ff|Hspell:42402|h[Oleada]|h|r carga al jugador mas alejado, hay alternarse después de cada carga sino = muerte.",
    "* En forma de oso lanza interrupciones, ojo healer sin coincide con |cff71d5ff|Hspell:42395|h[Tajo lacerante]|h|r que hace 180ks.",
    "* Full DPS al boss."
};

pack["23578"] = { "Jan'alai <Avatar de dracohalcón> HERO",
    "* Saca 2 adds se mata SOLO 1.",
    "* Se tanquea el boss al lado del otro add, delante de la pasarela para agrear las proles y matarlas a áreas.",
    "* El boss irá al centro y pondrá bombas en el suelo que evitaremos porque explotan.",
    "* Estas operaciones se repiten durante todo el encuentro.",
    "* A veces el boss suelta una llamarada frontal que deja un surco en el suelo que evitaremos.",
    "|cFFFF0000Truco :|r Si hay mago en la party es interesante robarle el terremoto al pull anterior y tirarselo al boss."
};

pack["23577"] = { "Halazzi <Avatar de lince> HERO",
    "* Alejar el boss del área de los totems de agua.",
    "* Los casters pueden aprovechar el área de los totems de agua para subir vida y mana.",
    "* Romper immediatamente los totems de relámpago."
};

pack["24239"] = { "Señor aojador Malacrass HERO",
    "* Primero anulamos los dos adds.",
    "  Idealmente CCeamos al add de la izquierda mientras se hace full dps al de la derecha",
    "  y si se puede mantener CCeado hasta el final seguimos con el boss, ",
    "  sino matamos al segundo add antes de seguir con el boss.",
    "* Usará las habilidades de los jugadores. Hay que estar atentos a interrumpir y disipar todo lo que se pueda."
};

pack["23863"] = { "Daakara <El Invencible> HERO",
    "* Se convertirá aleatoriamente en 2 formas de las anteriores:",
    "  - Águila. Romped el totem de relámpagos y evitar los ciclones.",
    "  - Oso. El healer tiene que disipar la paralisis y acordaos de las cargas.",
    "  - Lince. Dificil para el healer, hay que matar 2 gatos pequeños lo antes posible. El boss pone sangrados aleatorios.",
    "  - Drakohalcon. Esquivar el daño de los surcos y columnas de fuego."
};

-- --------------------- --
-- Zul'Gurub : Zona 1977 --
-- --------------------- --

pack["52155"] = { "Sumo sacerdote Venoxis HERO",
    "* Cuando pinte el laberinto no se tocan ni se saltan las lineas verdes.",
    "* Cuando se unan 2 pjs por el enlace tóxico se separan los mas posible para romperlo. ",
    "  No deberian de haber pjs cerca cuando rompa porque hace daño de área.",
    "* Se evitan los charcos del suelo, moviendo el boss para poder pegar sin pisar. Los charcos crecen.",
    "* Se evita el aliento verde poniéndose detrás.",
    "* Cuando lance el rayo corred para evitarlo.",
    "* Cuando el boss esté aturdido hay que hacer DPS a saco porque hay un modificador de +100% de daño."
};

pack["52151"] = { "Señor sangriento Mandokir HERO",
    "* Los espiritus son la clave. Cuando el raptor está suelto hay que matarlo lo antes posible para que no mate espiritus.",
    "  Cada espiritu puede resucitar un pj muerto, y al renacer el pj hace más daño y recibe menos daño.",
    "* Se evitan los surcos del suelo cuando los lance el boss.",
    "* Se evitará regalar vida al boss curando de mas al que reciba la Flebotomia, con mantenerlo un pelin por encima de 7500 es suficiente."
};

pack["52059"] = { "Suma sacerdotisa Kilnara HERO",
    "* Evitar los muros morados (tipo olas de Sartarion).",
    "* Interrumpir las lagrimas de de sangre.",
    "* Antes de bajar el 50% del boss matad las panteras de 1 en 1 o de 2 en 2."
};

pack["52053"] = { "Zanzil HERO",
    "* Interrumpir Descarga Voodoo.",
    "* Apartarse del Fuego Zanzil.",
    "* Elixir Azul: Beber Caldero de Escarcha y acabar con el Rabioso lo antes posible (no tiene agro).",
    "* Elixit Verde: Beber del Caldero de Veneno lo antes posible.",
    "* Elixir Rojo: Beber del Caldero de Fuego para matar los zombies a áreas."
};

pack["52148"] = { "Jin'do el Sojuzgadioses HERO",
    "* Meter al boss en la Zona Muerta, los pjs entran tmb cuando invoque Sombras de Hakkar.",
    "* Mientras el tanque se encarga de traer los trolls gigantes, el resto del grupo tendrá que acabar con los espíritus invocados, además de con las cadenas.",
    "* Evitar Puntas de las Sombras."
};

pack["52258"] = { "Gri'lek",
    "* El jugador marcado con |cff71d5ff|Hspell:68987|h[Perseguir]|h|r kiteará al boss.",
    "* Salir del área |cff71d5ff|Hspell:89932|h[Línea de falla]|h|r cuando la marque."
};

pack["52286"] = { "Wushoolay",
    "* Tanquear de espaldas a la party.",
    "* Salir de la |cff71d5ff|Hspell:96710|h[Nube de relámpagos]|h|r.",
    "* Separarse los unos de los otros."
};

pack["52269"] = { "Renataki",
    "* Curar al emboscado del Esfumarse.",
    "* Evitar el daño de área de las |cff71d5ff|Hspell:96645|h[Mil hojas]|h|r."
};

pack["52271"] = { "Hazza'rah",
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

-- -------------------------------- --
-- Descenso de Alanegra : Zona 5094 --
-- -------------------------------- --

-- ------------------------------------- --
-- El Bastión del Crepúsculo : Zona 5334 --
-- ------------------------------------- --

pack["44600"] = { "Halfus Rompevermis",
    "* Prioridades: Celador del Tiempo, Jinete de tormentas, Sucesor Abisal, Alga esmeralda huérfana, Dragón de Pizarra.",
    "* Idealmente el mt tanquea Halfus y uno de los dragones, mientras que el OT tanquea otro.",
    "* Los dragones se matan encima del bos para aprovechar todo el daño.",
    "* Si tenemos el dragón de pizarra tendremos que cambiar el boss cada 4 ticks de |cff71d5ff|Hspell:39171|h[Golpes malévolos]|h|r"
};

pack["45992"] = { "Valiona",
    "* Theralion irá tirando |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h|r por lo que estaremos separados hasta el primer ataque de Valiona.",
    "* Cuando un pj reciba |cff71d5ff|Hspell:92878|h[Desmayo]|h|r él y toda la party (menos el tanque) se ponen en la cola del boss, cuando estan todos se dispelea para repartir el daño. ",
    "* Cuando tire |cff71d5ff|Hspell:92873|h[Llamas devoradoras]|h|r todo el mundo se pone detrás del boss para evitar el daño. ",
    "* Al tirar |cff71d5ff|Hspell:93063|h[Destrucción deslumbrante]|h|r aparecerán círculos debajo de 3 jugadores de los que hay que salirse, ",
    "  a los 5 segundos un misil meterá a los que estén en el reino crepuscular, del que hay que salir yendo al portal rosa sin tocar las bolas rosas del suelo."
};

pack["45993"] = { "Theralion",
    "* Valiona usará |cff71d5ff|Hspell:92861|h[Meteorito Crepuscular]|h|r mientras vuela, que funciona de forma similar al desmayo.",
    "  Pondrá una marca al jugador afectado y a los 3 segundos activará 150Ks de daño que se reparten a los pjs cercanos. Con 5 es suficiente.",
    "* /script |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h|r pondrá un área morada debajo de un pj que evitaremos.",
    "* El pj que reciba el bufo |cff71d5ff|Hspell:95641|h[Trago de magia]|h|r se separará de los demás pjs para no hacerles daño.",
    "* |cff71d5ff|Hspell:86059|h[Aliento profundo]|h|r cubre un tercio de la sala de fuego, quien lo pise entrará en el reino crepuscular.",
    "  Se sale del reino crepuscular por el portal rosa sin pisar las bolas rosas del suelo."
};

-- Consejo crepuscular

pack["43686"] = { "Ignacious",
    "FASE 1",
    "* Se tanquea en un extremo de la habitación con 1 tanque y los DPS cuerpo a cuerpo detras del jefe.",
    "* Los jugadores que reciban |cff71d5ff|Hspell:82660|h[Sangre ardiente]|h|r se colocarán cerca de los DPS a rango de Feludius para aunmentar el daño que hacen mientras dure el bufo.",
    "* Cuando haga |cff71d5ff|Hspell:92521|h[Salto inferno]|h|r sobre un jugador, al volver dejará un surco en el suelo que tenemos que pisar cuando tengamos el efecto de |cff71d5ff|Hspell:82762|h[Calado]|h|r que pone la |cff71d5ff|Hspell:82700|h[Bomba de agua]|h|r.",
};

pack["43687"] = { "Feludius",
    "FASE 1",
    "* Se tanquea en el extremo opuesto a Ignacious, con 1 tanque. Los DPS a rango se colocan alejados del jefe y separados entre si.",
    "* Los jugadores que reciban |cff71d5ff|Hspell:82667|h[Corazón de hielo]|h|r se colocarán cerca de los DPS cuerpo a cuerpo de Ignacious para aunmentar el daño que hacen mientras dure el bufo.",
    "* Hay que interrumpir el lanzamiento de |cff71d5ff|Hspell:92509|h[Hidrolanza]|h|r o matará uno de los jugadores.",
};

pack["43688"] = { "Arion",
    "FASE 2",
};

pack["43689"] = { "Terrastra",
    "FASE 2",
};

pack["43735"] = { "Monstruosidad de elementium",
    "FASE 3",
    "* Hero, ansia, etc... deben guardarse para esta fase que es una carrera de DPS",
};

pack["43324"] = { "Cho'gall",
};

pack["45213"] = { "Sinestra",
};

-- --------------------------------------- --
-- Trono de los Cuatro Vientos : Zona 5638 -- Canario
-- --------------------------------------- --

pack["45870"] = { "Anshal",
    "NOTAS GENERALES",
    "Este encuentro consiste en 3 Señores elementales Anshal, Nezir y Rohash con un enrage de 8 minutos",
    "Hay que matarlos a los tres con una diferencia máxima de un minuto sino resucitan",
    "Los boses tienen una barra de energía que cuando se completa (al llegar a 90) usan sus habilidades especiales, los movimientos entre plataformas han de hacerse cuando su barra llega a 80 como muy tarde",
    "Estrategia:",
    "4 Grupos: 1º: 1 Tanque, 1 Healer, 1 Dps[Anshal]; 2º: 1 Tanque y 1 Healer(preferiblemente pala holy porque se puede quitar los debufs); 3º 1Dps y 1 Healer [Rohash]; 4º Grupo móvil 3Dps",
    "Optimizar el dps en los tres para que bajen de manera similar",
    " ",
    "Plataforma Anshal: Periódicamente castea |cff71d5ff|Hspell:86205|h[Brisa calmante]|h|r, sana a Anshal y sus aliados (trepadores), silenciando raid",
    "Castea |cff71d5ff|Hspell:85422|h[Nutrir]|h|r lo que sumonea trepadores que a su vez usan |cff71d5ff|Hspell:93121|h[Esporas tóxicas]|h|r",
    "Especial: |cff71d5ff|Hspell:84638|h[Céfiro]|h|r evitar que haya trepadores antes de la habilidad especial",
};

pack["45872"] = { "Rohash",
    "Habilidades:",
    "|cff71d5ff|Hspell:86193|h[Explosión de viento]|h|r, esta es su habilidad más peligrosa aquel que esté enfrente de él cuando la use saldrá empujado a 200metros",
    "|cff71d5ff|Hspell:86182|h[Vendaval cortante]|h|r, ataque a distacia",
    "Especial: |cff71d5ff|Hspell:86481|h[Huracán]|h|r el daño más grande es el de la caida (unos 70ks) por lo que todo el que pueda deberá usar sus habilidades forma de gato, caida lenta, etc"
};

pack["45871"] = { "Nezir",
    "Habilidades:",
    "|cff71d5ff|Hspell:86082|h[Escarcha permanente]|h|r, lo que obliga a permanecer separados",
    "|cff71d5ff|Hspell:93130|h[Zona de hielo]|h|r, salir INMEDIATAMENTE de su área de efecto",
    "|cff71d5ff|Hspell:84645|h[Viento escalofriante]|h|r, esta es la habilidad más peligrosa que provoca que los tanques/healers tengan que cambiarse entre plataformas cuando no sean capaces de curar el daño(stacks) (anshal-Nezir)",
    "Especial: |cff71d5ff|Hspell:84644|h[Tormenta de granizo]|h|r",
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
