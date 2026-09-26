--[[
	Boses_Cata.lua
		Pack de datos de Cataclysm completo:
		- Base histórica 2011-2013 (mazmorras heroicas, ZA/ZG 4.1, raids),
		  migrada desde localization.es.lua (backup en _backups).
		- Mazmorras 4.3 (End Time, Hour of Twilight, Well of Eternity) y
		  Throne of the Tides remasterizada (12.x), de LittleWigs_Cataclysm.
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige la
		tabla activa según BosesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Boses en el .toc)
if BosesAPI == nil or BosesAPI.register == nil then
	print( "|cff33ff99Boses|r: core de Boses demasiado antiguo para el pack Cata." );
	return;
end

local es = {};
local en = {};
local pack = es;

-- =========================================================== --
-- Base histórica 2011-2013 (migrada desde localization.es.lua) --
-- =========================================================== --
    -- ------------------- --                     
    -- Instancias heroicas --
    -- ------------------- --                     
                     
    -- -------------------------------------- --                     
    -- Castillo de Colmillo Oscuro : Zona 209 --
    -- -------------------------------------- --                     

	es["46962"] = { "Barón Ashbury HERO",
        "* Interrumpir o disipar |cff71d5ff|Hspell:93712|h[Dolor y sufrimiento]|h|r",
        "* |cff71d5ff|Hspell:93710|h[Asfixiar]|h|r dejará la vida de todos al 1%, y luego tirará |cff71d5ff|Hspell:93705|h[Ejecución pospuesta]|h|r que interrumpiremos en cuanto el grupo recupere un poco de vida porque cura tambien al jefe." 
    };

	es["3887"] = { "Barón Filargenta HERO",
        "* Hay que disipar |cff71d5ff|Hspell:93956|h[Velo maldito]|h|r para que no se reduzcan las sanaciones.",
        "* Cuando salgan adds full dps a los adds." 
    };
      
	es["4278"] = { "Comandante Vallefont ",
	    "* Los adds pueden controlarse y deben de matarse lo antes posible. Es necesario interrumpir la Potenciación profana que lanzan.",
        "* El tanque lo mantiene de espaldas al grupo y evita las profanaciones del suelo." 
    };
    
	es["46963"] = { "Lord Walden",
        "* Cuando tire la poción verde TODO el mundo tiene que moverse.",
        "* Cuando tire la poción roja TODO el mundo tiene que quedarse quieto." 
    };
    
	es["46964"] = { "Lord Godfrey",
        "* Es necesario disipar la maldición |cff71d5ff|Hspell:93761|h[Balas malditas]|h|r siempre que se pueda",
        "* Hay que apartarse de la |cff71d5ff|Hspell:93520|h[Tromba de pistola]|h|r." 
    };              
                     
    -- ------------------------------ --                     
    -- Minas de la muerte : Zona 1581 --
    -- ------------------------------ -- 
    
	es["47162"] = { "Glubtok <El Supervisor> HERO",
        "* En la primera fase pierde el agro después de cada translación, el tanque tiene que estar atento.",
        "* Al 40% empieza la segunda fase, en la que evitaremos el muro de lava giratorio.",
        "* Los elementales de la segunda fase tendrán que matarse poco a poco porque salen cada vez más, es un buen momento para tirar hero." 
    };    
     
	es["47296"] = { "Helix Rompengranajes HERO",
        "* Evitar las bomba que tira.",
        "* El que reciba |cff71d5ff|Hspell:88352|h[Bomba de pecho]|h|r se alejará del grupo hasta que explote." 
    };      
                             
	es["43778"] = { "Siegaenemigos 5000 HERO",
        "* 1 DPS cojerá una segadora y se van matando los 4 cosechadores.",
        "* Al matar el último cosechador se activa el boss, suben todos menos el que lleva la segadora que irá matando todos los adds que salgan.",
        "* Cuando el boss marque un jugador con |cff71d5ff|Hspell:88501|h[Cosechar]|h|r todos se separan del lugar marcado.",
        "* Cuando tenga la |cff71d5ff|Hspell:88481|h[Ultravelocidad]|h|r nos separamos."
    };
                     
	es["47626"] = { "Almirante Rasgagruñido HERO",
        "* El sanador debe racionar el mana.",
        "* Los adds debe de matarse lo antes posible o crecerán y matarán al grupo.",
        "* El jefe debe matarse lo antes posible para evitar que la |cff71d5ff|Hspell:88736|h[Sed de sangre]|h|r aumente demasiado." 
    };

	es["47739"] = { "Capitán Cocinitas HERO",
        "* El boss suelta comidas buenas (blancas) y malas (verdes) que se compensan,", 
        "  hay que ir cojiendo 1 mala por 1 buena durante todo el combate para evitar que el suelo se llene del área dañina de la comida mala.",
        "  El tanque si no tiene problemas de agro puede cojer 2 malas por 1 buena."
    };

	es["49429"] = { "Vanessa VanCleef HERO",
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

	es["39425"] = { "Guardián del templo Anhuur",
        "* Quien reciba |cff71d5ff|Hspell:75592|h[Expiación divina]|h|r debería alejarse del grupo hasta que se disipe en 8 segundos para evitar sanar demasiado al jefe.",
        "* Cuando empiece a tirar /script |cff71d5ff|Hspell:75322|h[Himno resonante]|h|r baja todo el grupo para bajar las dos palancas. A la vuelta interrumpimos el himno y seguimos.",
        "Nota: En normal solo hace falta que baje 1 dps por cada lado para que cada uno baje 1 de las palancas." 
	};

	es["39428"] = { "Terracundo Ptah",
        "* Es un boss opcional de carrera de DPS." 
	};
	
	es["39788"] = { "Anraphet",
        "* Mover al boss para evitar las áreas que provocan los |cff71d5ff|Hspell:76184|h[Haces Alfa]|h|r.",
        "* Hay que procurar tirarse mitigaciones durante la |cff71d5ff|Hspell:75622|h[Actitud Omega]|h|r." 
	};
    
	es["39587"] = { "Isiset",
        "* Cuando tire |cff71d5ff|Hspell:74137|h[Supernova]|h|r hay que girarse antes de que finalice en casteo para no quedar estuneado.",
        "* Cuando se divida el orden para matar las copias deberías de ser: ",
        "   1º Llamada celestial",
        "   2º Lluvia astral",
        "   3º Velo del cielo"
	};
    
	es["39731"] = { "Ammunae",
        "* Prioridad DPS a las Vainas de Esqueje para que no curen al boss y a las Flores Sangrepétalo para evitar el daño.",
        "* Si es posible disipar el |cff71d5ff|Hspell:76043|h[Marchitar]|h|r cuando lotire a los jugadores.",
        "Nota: En heroico el tanque puede poner el boss sobre una espora muerta para acelerar la muerte del boss." 
	};
    
	es["39732"] = { "Setesh",
        "* El boss no se tanquea, se tanquean los adds que van saliendo.",
        "* Si el DPS es alto pueden ignorarse los portales e intentar bajar el boss lo antes posible.",
        "* Si se prefiere asegurar hay que eliminar los portales en cuanto salgan, y el tanque debe coger los adds que salgan (no se matan)." 
	};
    
	es["39378"] = { "Rajh",
        "* Evitar los ciclones de fuego.",
        "* Se debe de interrumpir |cff71d5ff|Hspell:80352|h[Invocar orbe]|h|r para evitar el daño.",
        "* La |cff71d5ff|Hspell:76355|h[Bendición del sol]|h|r aparte de hacer daño aumenta el daño que hacemos. Hay que concentrar todo el DPS en ese momento." 
	};                	
    	
    -- ------------------------------- --    	
    -- Cavernas Roca Negra : Zona 4926 --
    -- ------------------------------- --    	

	es["39665"] = { "Machacahuesos Rom'ogg",
        "* Evitar la nube de polvo del |cff71d5ff|Hspell:75272|h[Temblor]|h|r. En hero saldran elementales, si el tanque y el sanador van sobrados pueden ignorarse, sino hay que matarlos.",
        "* Cuando tire |cff71d5ff|Hspell:75539|h[Cadenas de tragedia]|h|r hay que centrar TODO el DPS en romper las cadenas, y una vez rotas hay que huir lo mas rápidamente posible para evitar que nos mate el |cff71d5ff|Hspell:75543|h[El Revientacalaveras]|h|r." 
	};

	es["39679"] = { "Corla, Heraldo del Crepúsculo",
        "* El objetivo de este boss es evitar que tanto jugadores como adds ganen 100 tics de |cff71d5ff|Hspell:75610|h[Evolución]|h|r, si esto ocurriera el afectado se convierte en dragonante y en HERO es wipe.",
        "  Para evitarlo interceptaremos el rayo del add antes de que llegue a 80, y nos cambiaremos cuando nosotros mismos lleguemos a 80.",
        "  Lo mejor es asignar un jugador a cada add.",
        "Truco: Si nos despistamos, y no vemos el debuf, cuando un personaje empieza a parpadear es que está a punto de convertirse, en ese momento hay que cambiar el pj que recibe el rayo." 
	};
      
	es["39698"] = { "Karsh Doblacero <Armero Crepuscular>",
        "* El tanque meterá el jefe en el chorro de lava hasta que tenga 5 o 6 marcas, sacándolo inmediatamente.",
        "* Cuando el fundido del escudo esté a punto de disiparse lo vuelve a meter. Si llegase a disiparse salen elementales y el combate se complica.",
        "Nota: Lo mejor es meterlo de refilón, para poder controlar al máximo el tiempo que esté dentro. Cuanto más tiempo esté mas daño recibirá la party." 
	};
    
	es["39700"] = { "Bella",
        "* Idealmente mantendremos en CC los cachorros mientras matamos al jefe. Si esto no es posible hay que matar los cachorros antes del jefe.", 
	};          
      
	es["39705"] = { "Señor ascendiente Obsidius",
        "* Idealmente tendremos un DPS para kitear a las sombras (usando ralentizaciones), estan no tienen agro y pegaran a lo ultimo que les pegue.",
        "* Mientras tanto el tanque y el resto del grupo se centran en el jefe.",
        "* De vez en cuando el jefe se cambiará por una sombra, momento en que el dps que estaba kiteando y el tanque se intercambiarán los mobs." 
	};      
                     
    -- ----------------------------------------- --                     
    -- Ciudad perdida de los Tol'vir : Zona 5396 --
    -- ----------------------------------------- --
    
	es["43612"] = { "Sumo profeta Barim HERO", 
		"* En la primera fase se quitea el fenix.",
		"* En la segunda fase (sombra) full dps al fenix."
	};
	
	es["43614"] = { "Cierrafauce HERO", 
		"* El que tenga la marca le acerca los adds al tanque para que se los quite fácilmente.", 
	};
	
	es["49045"] = { "Augh", 
        "* Evitar el |cff71d5ff|Hspell:91408|h[Torbellino]|h|r.", 
	};	
	
	es["44577"] = { "General Husam HERO", 
		"* Mover el boss para evitar pisar las minas del suelo.",
        "* Evitar las áreas del suelo, avisa con una señal de polvo." 
	};    

	es["44819"] = { "Siamat", 
        "* Focus adds", 
	};

    -- ---------------------------- --
    -- El Núcleo Pétreo : Zona 5088 --
    -- ---------------------------- --

	es["43438"] = { "Corborus", 
		"* Apartarse inmediatamente de |cff71d5ff|Hspell:92648|h[Tromba de cristal]|h|r y en HERO matad enseguida las arañas que salen de los cristales.",
        "* Disipar el debuf |cff71d5ff|Hspell:82415|h[Ola de atenuación]|h|r en cuanto salga.",
        "* En HERO, cuando Corborus vaya por debajo de tierra evitar a toda costa las nubes de polvo que matan." 
	};

	es["42810"] = { "Gigante Engendracristal", 
		"* Hay que saltar justo antes de que termine el casteo del |cff71d5ff|Hspell:92631|h[Temblor]|h|r.", 
	};

	es["43214"] = { "Pielpétrea", 
		"* Evitar los charcos del suelo de |cff71d5ff|Hspell:80800|h[Erupción]|h|r.",
        "* Evitar las piedras que caen del techo, se marcan en el suelo con una sombra.",
        "* En HERO, cuando lance |cff71d5ff|Hspell:92265|h[Tormenta de cristales]|h|r hay que ponerse detrás de una de las piedras que han caido para evitar el daño.", 
	};

	es["42188"] = { "Ozruk", 
		"* El tanque con la espalda a la pared para evitar salir volando cuando tire el |cff71d5ff|Hspell:78807|h[Trizar]|h|r",
        "* Cuando tire |cff71d5ff|Hspell:92410|h[Embate en el suelo]|h|r todos, incluido el tanque, se retiran para evitar el daño del |cff71d5ff|Hspell:92662|h[Trizar]|h|r, el área del daño es bien visible en el suelo.",
        "* En HERO, cuando tire |cff71d5ff|Hspell:78939|h[Baluarte de elementium]|h|r todos los DPS a rango deberán de tirar un daño en el tiempo para que se les refleje y les saque del siguiente |cff71d5ff|Hspell:92426|h[Paralizar]|h|r.", 
	};

	es["42333"] = { "Suma Sacerdotisa Azil", 
		"* Hay que alejarse de los |cff71d5ff|Hspell:79340|h[Invocar pozo de gravedad]|h|r pero al mismo tiempo hay que usarlos para atraer los adeptos dentro.",
        "* Hay que disipar del tanque |cff71d5ff|Hspell:79351|h[Agarre de fuerza]|h|r cada vez que se lo ponga.",
        "* Si alguien puede quitar maldiciones es conveniente quitar la |cff71d5ff|Hspell:79345|h[Maldición de sangre]|h|r siempre que se pueda."
	};
    
    -- --------------------------------- --
    -- Fauce Abisal: Trono de las Mareas --
    -- --------------------------------- --

	es["40586"] = { "Lady Naz'jar", 
		"* Interrumpir |cff71d5ff|Hspell:91477|h[Explosión de choque]|h|r-",
		"* Evitar el geiser de |cff71d5ff|Hspell:75722|h[Invocar géiser]|h|r.",
		"* Evitar las |cff71d5ff|Hspell:76001|h[Esporas de hongos]|h|r.",
		"* Al 66% y al 33% hará el |cff71d5ff|Hspell:75683|h[Aspersor]|h|r y aparecerán 3 adds que conviene CCear para facilitar el combate.",		
	};

	es["40765"] = { "Comandante Ulthok", 
		"* TODOS evitan siempre la |cff71d5ff|Hspell:76047|h[Fisura oscura]|h|r.",
		"* El tanque moverá contínuamente el jefe por la sala, repartiendo las áreas."
	};
	
	es["40825"] = { "Erunak Hablapiedra", 
		"* Se tanquea de espaldas a la party para evitar el daño de la |cff71d5ff|Hspell:76170|h[Salpicadura de magma]|h|r.",
		"* Se procurará disipar el |cff71d5ff|Hspell:76165|h[Golpe de ascuas]|h|r cuando lo reciba el tanque.",
		"* Sacaremos el jefe de la |cff71d5ff|Hspell:76234|h[Niebla mental]|h|r siempre que la tire",
		"* Si se pone el |cff71d5ff|Hspell:76307|h[Absorber magia]|h|r hay que dispeleárselo sino todo el daño mágico lo sanará."
	};	
	
	es["40792"] = { "Neptulon", 
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

	es["39625"] = { "General Umbriss", 
		"* Cuando tire |cff71d5ff|Hspell:74670|h[Ataque relámpago]|h|r el jugador al que apunte se moverá para evitar el daño.",
		"* El sanador estará atendo a cuando el tanque reciba |cff71d5ff|Hspell:74846|h[Herida sangrante]|h|r tendrá que subirle la vida al menos al 90% para quitarle el debuff.",
		"* De los adds (Troggs) se encargan los DPS, el tanque no debe atraerlos. ",
        "  En HERO sale un trogg morado, antes de empezar el combate se asignará a 1 DPS. ",
        "  Deberá CCearse, si no se puede hay que matarlo lejos del grupo y lejos de los demas adds, SOLO le debe de pegar el DPS asignado."
	};

	es["40177"] = { "Maestro de forja Throngus", 
		"* Evitar el área del |cff71d5ff|Hspell:74984|h[Pisotón poderoso]|h|r.",
		"* Cuando Throngus coja la masa el tanque lo moverá por la sala para evitar el daño.",
		"* Cuando coja la espada el sanador se centrará en el tanque ya que recibirá mucho daño.",
		"* Cuando coja el escudo se tanquea en la esquina de la entrada y todos menos el tanque se ponen a su espalda."
	};
	
	es["40319"] = { "Drahga Quemasombras", 
		"* En cuanto salga |cff71d5ff|Hspell:75218|h[Invocación de llamas]|h|r el jugador al que siga tendrá que correr en dirección contraria para evitar que se junte con él mientras los demás deben matarlo inmediatamente.",
        "* Cuando suba en el dragón se tanquea en el centro de la sala para que sea más fácil evitar la |cff71d5ff|Hspell:75321|h[Llama de Valiona]|h|r poniéndose detrás del dragón.",
        "* Cuando lance el |cff71d5ff|Hspell:90966|h[Flagelo devastador]|h|r hay que evitar las fisuras que hacen daño y enlentecen."		
	};	

	es["40484"] = { "Erudax", 
		"* Los DPS a rango procuran estar separados para evitar que las |cff71d5ff|Hspell:79466|h[Sombras vinculadoras]|h|r afecten a mas de uno.",
		"* Cuando tire el |cff71d5ff|Hspell:75664|h[Vendaval de las Sombras]|h|r todo el mundo se coloca en el ojo del vendaval o morirá.",
		"* Después del Vendaval saldrá un Corruptor Ignoto, o 2 en HERO.",
        "  Deben de repartirse los DPS para que mueran lo antes posible porque si llegan a los huevos el jefe se curará y saldrán dragones que harán daño a toda la party hasta el final."
	};

    -- ----------------------------------- --
    -- La Cumbre del Vórtice : Zona 5035
    -- ----------------------------------- --
    
	es["43878"] = { "Gran visir Ertan HERO", 
		"* Hay que evitar los |cff71d5ff|Hspell:86292|h[Escudo de ciclón]|h|r." 
	};     

	es["43873"] = { "Altairus HERO", 
		"* Siempre que se pueda hay que procurar que el viento dé por la espalda para aprovechar el bufo." 
	};
    
	es["43875"] = { "Asaad <Califa de los Céfiros> HERO", 
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
    
    es["23576"] = { "Nalorakk <Avatar de oso> HERO",
        "* |cff71d5ff|Hspell:42402|h[Oleada]|h|r carga al jugador mas alejado, hay alternarse después de cada carga sino = muerte.",
        "* En forma de oso lanza interrupciones, ojo healer sin coincide con |cff71d5ff|Hspell:42395|h[Tajo lacerante]|h|r que hace 180ks.",
        "* Full DPS al boss."    
    };

    es["23578"] = { "Jan'alai <Avatar de dracohalcón> HERO",
        "* Saca 2 adds se mata SOLO 1.",
        "* Se tanquea el boss al lado del otro add, delante de la pasarela para agrear las proles y matarlas a áreas.",
        "* El boss irá al centro y pondrá bombas en el suelo que evitaremos porque explotan.",
        "* Estas operaciones se repiten durante todo el encuentro.",
        "* A veces el boss suelta una llamarada frontal que deja un surco en el suelo que evitaremos.",
        "|cFFFF0000Truco :|r Si hay mago en la party es interesante robarle el terremoto al pull anterior y tirarselo al boss."    
    };
                     
    es["23577"] = { "Halazzi <Avatar de lince> HERO"     ,
        "* Alejar el boss del área de los totems de agua.",
        "* Los casters pueden aprovechar el área de los totems de agua para subir vida y mana.",
        "* Romper immediatamente los totems de relámpago."    
    };
                     
    es["24239"] = { "Señor aojador Malacrass HERO",
        "* Primero anulamos los dos adds.",
        "  Idealmente CCeamos al add de la izquierda mientras se hace full dps al de la derecha", 
        "  y si se puede mantener CCeado hasta el final seguimos con el boss, ",
        "  sino matamos al segundo add antes de seguir con el boss.",
        "* Usará las habilidades de los jugadores. Hay que estar atentos a interrumpir y disipar todo lo que se pueda."    
    };
                     
    es["23863"] = { "Daakara <El Invencible> HERO",
        "* Se convertirá aleatoriamente en 2 formas de las anteriores:",
        "  - Águila. Romped el totem de relámpagos y evitar los ciclones.",
        "  - Oso. El healer tiene que disipar la paralisis y acordaos de las cargas.",
        "  - Lince. Dificil para el healer, hay que matar 2 gatos pequeños lo antes posible. El boss pone sangrados aleatorios.",
        "  - Drakohalcon. Esquivar el daño de los surcos y columnas de fuego."    
    };                                                               
 
    -- --------------------- --
    -- Zul'Gurub : Zona 1977 --
    -- --------------------- --
    
    es["52155"] = { "Sumo sacerdote Venoxis HERO",
        "* Cuando pinte el laberinto no se tocan ni se saltan las lineas verdes.",
        "* Cuando se unan 2 pjs por el enlace tóxico se separan los mas posible para romperlo. ",
        "  No deberian de haber pjs cerca cuando rompa porque hace daño de área.",
        "* Se evitan los charcos del suelo, moviendo el boss para poder pegar sin pisar. Los charcos crecen.",
        "* Se evita el aliento verde poniéndose detrás.",
        "* Cuando lance el rayo corred para evitarlo.",
        "* Cuando el boss esté aturdido hay que hacer DPS a saco porque hay un modificador de +100% de daño."
    };

    es["52151"] = { "Señor sangriento Mandokir HERO",
        "* Los espiritus son la clave. Cuando el raptor está suelto hay que matarlo lo antes posible para que no mate espiritus.",
        "  Cada espiritu puede resucitar un pj muerto, y al renacer el pj hace más daño y recibe menos daño.",
        "* Se evitan los surcos del suelo cuando los lance el boss.",
        "* Se evitará regalar vida al boss curando de mas al que reciba la Flebotomia, con mantenerlo un pelin por encima de 7500 es suficiente."
    };

    es["52059"] = { "Suma sacerdotisa Kilnara HERO",
        "* Evitar los muros morados (tipo olas de Sartarion).",
        "* Interrumpir las lagrimas de de sangre.",
        "* Antes de bajar el 50% del boss matad las panteras de 1 en 1 o de 2 en 2."
    };

    es["52053"] = { "Zanzil HERO",
        "* Interrumpir Descarga Voodoo.",
        "* Apartarse del Fuego Zanzil.",
        "* Elixir Azul: Beber Caldero de Escarcha y acabar con el Rabioso lo antes posible (no tiene agro).",
        "* Elixit Verde: Beber del Caldero de Veneno lo antes posible.",
        "* Elixir Rojo: Beber del Caldero de Fuego para matar los zombies a áreas."
    };

    es["52148"] = { "Jin'do el Sojuzgadioses HERO",
        "* Meter al boss en la Zona Muerta, los pjs entran tmb cuando invoque Sombras de Hakkar.",
        "* Mientras el tanque se encarga de traer los trolls gigantes, el resto del grupo tendrá que acabar con los espíritus invocados, además de con las cadenas.",
        "* Evitar Puntas de las Sombras."
    };

    es["52258"] = { "Gri'lek",
        "* El jugador marcado con |cff71d5ff|Hspell:68987|h[Perseguir]|h|r kiteará al boss.",
        "* Salir del área |cff71d5ff|Hspell:89932|h[Línea de falla]|h|r cuando la marque."
    };         

    es["52286"] = { "Wushoolay",
        "* Tanquear de espaldas a la party.",
        "* Salir de la |cff71d5ff|Hspell:96710|h[Nube de relámpagos]|h|r.",
        "* Separarse los unos de los otros."
    };

    es["52269"] = { "Renataki",
        "* Curar al emboscado del Esfumarse.",
        "* Evitar el daño de área de las |cff71d5ff|Hspell:96645|h[Mil hojas]|h|r."
    };

    es["52271"] = { "Hazza'rah",
        "* Interrumpir la Cólera.",
        "* Matar las pesadillas antes de que lleguen a su jugador o lo matarán."
    };

    -- ----- --
    -- RAIDS --
    -- ----- --

    -- ------------------------------ --
	-- Bastión de Baradin : Zona 5600 --
	-- ------------------------------ --
	
	es["47901"] = { "Unidad de contención demoníaca", 
		"* Estos monstruos deben de matarse con todo el grupo en piña sobre el tanque para repartir el daño del |cff71d5ff|Hspell:89348|h[Rayo repelente de demonios]|h|r." 
	};

	es["47120"] = { "Argaloth 10", 
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
    
    es["44600"] = { "Halfus Rompevermis 10",
        "* Prioridades: Celador del Tiempo, Jinete de tormentas, Sucesor Abisal, Alga esmeralda huérfana, Dragón de Pizarra.",
        "* Idealmente el mt tanquea Halfus y uno de los dragones, mientras que el OT tanquea otro.",
        "* Los dragones se matan encima del bos para aprovechar todo el daño.",
        "* Si tenemos el dragón de pizarra tendremos que cambiar el boss cada 4 ticks de |cff71d5ff|Hspell:39171|h[Golpes malévolos]|h|r" 
    };                                                                                             

    es["45992"] = { "Valiona 10",
        "* Theralion irá tirando |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h|r por lo que estaremos separados hasta el primer ataque de Valiona.",
        "* Cuando un pj reciba |cff71d5ff|Hspell:92878|h[Desmayo]|h|r él y toda la party (menos el tanque) se ponen en la cola del boss, cuando estan todos se dispelea para repartir el daño. ",
        "* Cuando tire |cff71d5ff|Hspell:92873|h[Llamas devoradoras]|h|r todo el mundo se pone detrás del boss para evitar el daño. ",
        "* Al tirar |cff71d5ff|Hspell:93063|h[Destrucción deslumbrante]|h|r aparecerán círculos debajo de 3 jugadores de los que hay que salirse, ",
        "  a los 5 segundos un misil meterá a los que estén en el reino crepuscular, del que hay que salir yendo al portal rosa sin tocar las bolas rosas del suelo."
    };

    es["45993"] = { "Theralion 10",
        "* Valiona usará |cff71d5ff|Hspell:92861|h[Meteorito Crepuscular]|h|r mientras vuela, que funciona de forma similar al desmayo.",
        "  Pondrá una marca al jugador afectado y a los 3 segundos activará 150Ks de daño que se reparten a los pjs cercanos. Con 5 es suficiente.",
        "* /script |cff71d5ff|Hspell:92909|h[Llamas portentosas]|h|r pondrá un área morada debajo de un pj que evitaremos.",
        "* El pj que reciba el bufo |cff71d5ff|Hspell:95641|h[Trago de magia]|h|r se separará de los demás pjs para no hacerles daño.",
        "* |cff71d5ff|Hspell:86059|h[Aliento profundo]|h|r cubre un tercio de la sala de fuego, quien lo pise entrará en el reino crepuscular.",
        "  Se sale del reino crepuscular por el portal rosa sin pisar las bolas rosas del suelo."
    };

    -- Consejo crepuscular

    es["43686"] = { "Ignacious <Señor ascendiente> 10",
        "FASE 1",
        "* Se tanquea en un extremo de la habitación con 1 tanque y los DPS cuerpo a cuerpo detras del jefe.",
        "* Los jugadores que reciban |cff71d5ff|Hspell:82660|h[Sangre ardiente]|h|r se colocarán cerca de los DPS a rango de Feludius para aunmentar el daño que hacen mientras dure el bufo.",
        "* Cuando haga |cff71d5ff|Hspell:92521|h[Salto inferno]|h|r sobre un jugador, al volver dejará un surco en el suelo que tenemos que pisar cuando tengamos el efecto de |cff71d5ff|Hspell:82762|h[Calado]|h|r que pone la |cff71d5ff|Hspell:82700|h[Bomba de agua]|h|r.",
    };

    es["43687"] = { "Feludius <Señor ascendiente> 10",
        "FASE 1",
        "* Se tanquea en el extremo opuesto a Ignacious, con 1 tanque. Los DPS a rango se colocan alejados del jefe y separados entre si.",
        "* Los jugadores que reciban |cff71d5ff|Hspell:82667|h[Corazón de hielo]|h|r se colocarán cerca de los DPS cuerpo a cuerpo de Ignacious para aunmentar el daño que hacen mientras dure el bufo.",
        "* Hay que interrumpir el lanzamiento de |cff71d5ff|Hspell:92509|h[Hidrolanza]|h|r o matará uno de los jugadores.",
    };

    es["43688"] = { "Arion <Señor ascendiente> 10",
        "FASE 2",
    };

    es["43689"] = { "Terrastra <Señor ascendiente> 10",
        "FASE 2",
    };

    es["43735"] = { "Monstruosidad de elementium 10",
        "FASE 3",
        "* Hero, ansia, etc... deben guardarse para esta fase que es una carrera de DPS",
    };

    es["43324"] = { "Cho'gall 10",
    };
    
    es["45213"] = { "Sinestra 10",
    };    

    -- --------------------------------------- --
    -- Trono de los Cuatro Vientos : Zona 5638 -- Canario
    -- --------------------------------------- --

    es["45870"] = { "Anshal <Señor del viento del oeste (Izq)> 4,120,000  R10",
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

    es["45872"] = { "Rohash <Señor del viento del este (Der)> 4,120,000  R10",
	   "Habilidades:",
	   "|cff71d5ff|Hspell:86193|h[Explosión de viento]|h|r, esta es su habilidad más peligrosa aquel que esté enfrente de él cuando la use saldrá empujado a 200metros",
	   "|cff71d5ff|Hspell:86182|h[Vendaval cortante]|h|r, ataque a distacia",
	   "Especial: |cff71d5ff|Hspell:86481|h[Huracán]|h|r el daño más grande es el de la caida (unos 70ks) por lo que todo el que pueda deberá usar sus habilidades forma de gato, caida lenta, etc"
    };

    es["45871"] = { "Nezir  <Señor del viento del Norte (Fondo)> 7,210,000  R10",
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

	pack["54431"] = { "Eco de Baine (End Time)",
		"* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r aplasta: tanque y healers atentos.",
		"* Los tótems de |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r son prioridad.",
	};

	pack["54445"] = { "Eco de Jaina (End Time)",
		"* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: se teletransporta, atento a la nueva posición.",
	};

	pack["54432"] = { "Murozond (End Time)",
		"* Esquiva las |cff71d5ff|Hspell:-3676|h[Distortion Bomb]|h|r.",
		"* Último jefe de la mazmorra: guarda las defensas para el final.",
	};

	pack["54123"] = { "Eco de Sylvanas (End Time)",
		"* El |cff71d5ff|Hspell:-3951|h[Shriek of the Highborne]|h|r: daño masivo, curas listas.",
	};

	pack["54544"] = { "Eco de Tyrande (End Time)",
		"* |cff71d5ff|Hspell:-4207|h[Dark Moonlight]|h|r: cuidado con la luna oscura.",
	};

	-- ---------------------------------- --
	-- La Hora del Crepúsculo : Zona 940 --
	-- ---------------------------------- --

	pack["54590"] = { "Arcurion (Hour of Twilight)",
		"* |cff71d5ff|Hspell:102582|h[Chains of Frost]|h|r encadena: cuidado con el hielo.",
		"* El metido en el |cff71d5ff|Hspell:103252|h[Icy Tomb]|h|r hay que sacarle rompiendo el hielo.",
		"* |cff71d5ff|Hspell:104050|h[Torrent of Frost]|h|r: daño de banda, curas.",
	};

	pack["54968"] = { "Asira Dawnslayer (Hour of Twilight)",
		"* El marcado por |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r pierde las curas: disipad.",
		"* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: humo que aturde, sal de él.",
		"* |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r: no lo cruces.",
	};

	local benedictus = { "Arzobispo Benedictus (Hour of Twilight)",
		"* Dos fases: la Luz y la Sombra.",
		"* El marcado por |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r o |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r debe gritarlo (SAY) y alejarse.",
		"* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r y |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r: fuera de las zonas.",
	};
	pack["54938"] = benedictus;

	-- --------------------------------- --
	-- El Pozo de la Eternidad : Zona 939 --
	-- --------------------------------- --

	local azshara = {
		"Reina Azshara (Well of Eternity)",
		"* Los magos encantados son prioridad antes que ella.",
		"* |cff71d5ff|Hspell:-3969|h[Total Obedience]|h|r: casteo largo, interrumpid.",
	};
	pack["54853"] = azshara; pack["54884"] = azshara; pack["54882"] = azshara; pack["54883"] = azshara;

	local mannoroth = {
		"Mannoroth y Varo'then (Well of Eternity)",
		"* |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r: cuidado con lo que sale del portal.",
		"* El tanque aguanta a Mannoroth; Varo'then muere rápido.",
	};
	pack["54969"] = mannoroth; pack["55419"] = mannoroth;

	pack["55085"] = { "Peroth'arn (Well of Eternity)",
		"* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: debuff importante, curas.",
		"* En la fase sigilosa NO te muevas cuando envía los ojos.",
		"* El marcado por |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r es vulnerable: full DPS.",
	};

	-- --------------------------------------------- --
	-- Throne of the Tides (remasterizada) : Zona 643 --
	-- --------------------------------------------- --

	pack["40788"] = { "Mindbender Ghur'sha (Throne of the Tides)",
		"* Fase de Erunak: |cff71d5ff|Hspell:429051|h[Earthfury]|h|r y los tótems de |cff71d5ff|Hspell:429037|h[Stormflurry Totem]|h|r, uno a uno.",
		"* |cff71d5ff|Hspell:429172|h[Terrifying Vision]|h|r castea largo: interrumpid.",
		"* El |cff71d5ff|Hspell:429048|h[Flame Shock]|h|r se disipa.",
	};

	local ozumat = {
		"Ozumat (Throne of the Tides)",
		"* El marcado por |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r debe apartarse (SAY).",
		"* |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r: cuidado con el diluvio de suciedad.",
		"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r es del tanque; Neptulon os ayuda con su flujo.",
	};
	pack["44566"] = ozumat; pack["213770"] = ozumat;

	-- --------------------------------------------- --
	-- Eventos y festividades --
	-- --------------------------------------------- --

	pack["23870"] = { "Coren Cerveza Temible (Cerveza)",
		"* Tanque: controla rápido a Coren y sus ayudantes para que no pegen a telas ni a DPS ligeros.",
		"* Adds: mata primero a los esbirros que invoca para reducir el daño del grupo.",
		"* Las jarras de cerveza de las mesas: lánzalas o úsalas para mejoras temporales de daño o para mitigar los perjuicios del jefe.",
		"* Sanación: tanques con buena autorrecuperación (Caballeros de la Muerte, Guerreros) aguantan solos, pero un sanador estándar asegura el encuentro sin riesgos."
	};

pack = en;

-- =========================================================== --
-- Historic database (English translations) --
-- =========================================================== --

-- -------------------------------- --
-- Shadowfang Keep : Zone 33 --
-- -------------------------------- --

pack["46962"] = { "Baron Ashbury",
	"* Interrupt or dispel |cff71d5ff|Hspell:93712|h[Pain and Suffering]|h|r.",
	"* |cff71d5ff|Hspell:93710|h[Asphyxiate]|h|r leaves everyone at 1% health, and then he casts |cff71d5ff|Hspell:93705|h[Stay of Execution]|h|r; interrupt it as soon as the group recovers some health, because it also heals the boss."
};

pack["3887"] = { "Baron Silverlaine",
	"* Dispel |cff71d5ff|Hspell:93956|h[Veil of Shadow]|h|r so healing is not reduced.",
	"* When adds spawn, full DPS on the adds."
};

pack["4278"] = { "Commander Springvale",
	"* The adds can be controlled and should be killed as soon as possible; his Unholy Empowerment must be interrupted.",
	"* The tank keeps him facing away from the group and avoids the desecrations on the floor."
};

pack["46963"] = { "Lord Walden",
	"* When he casts the green potion EVERYONE must move.",
	"* When he casts the red potion EVERYONE must stand still."
};

pack["46964"] = { "Lord Godfrey",
	"* Dispel the |cff71d5ff|Hspell:93761|h[Cursed Bullets]|h|r curse whenever possible.",
	"* Move away from the |cff71d5ff|Hspell:93520|h[Pistol Barrage]|h|r."
};

-- -------------------------------- --
-- Deadmines : Zone 1581 --
-- -------------------------------- --

pack["47162"] = { "Glubtok <The Supervisor>",
	"* In the first phase he loses aggro after each teleport, the tank must pay attention.",
	"* At 40% the second phase begins, where we avoid the spinning lava wall.",
	"* The elementals in the second phase must be killed little by little because they spawn more and more; a good moment to use Heroism."
};

pack["47296"] = { "Helix Gearbreaker",
	"* Avoid the bombs he throws.",
	"* The player hit by |cff71d5ff|Hspell:88352|h[Chest Bomb]|h|r moves away from the group until it explodes."
};

pack["43778"] = { "Foe Reaper 5000",
	"* 1 DPS grabs a harvester and they kill the 4 harvesters.",
	"* When the last harvester dies the boss activates; everyone goes up except the one with the harvester, who will kill all the adds that spawn.",
	"* When the boss marks a player with |cff71d5ff|Hspell:88501|h[Harvest]|h|r everyone spreads away from the marked spot.",
	"* When he gets |cff71d5ff|Hspell:88481|h[Blazing Speed]|h|r we spread."
};

pack["47626"] = { "Admiral Ripsnarl",
	"* The healer must ration mana.",
	"* The adds must be killed as fast as possible or they will grow and kill the group.",
	"* The boss must be killed as fast as possible to keep the |cff71d5ff|Hspell:88736|h[Thirst for Blood]|h|r from stacking too much."
};

pack["47739"] = { "Captain Cookie",
	"* The boss drops good (white) and bad (green) foods that cancel each other out;",
	"  pick 1 bad per 1 good throughout the whole fight to keep the floor from filling with the bad food's damaging area.",
	"  The tank, if aggro is not an issue, can pick 2 bad per 1 good."
};

pack["49429"] = { "Vanessa VanCleef",
	"* Nightmare phase:",
	"  - We appear in a cauldron where we have to activate 4 faucets to escape.",
	"  - Avoid the fire and the avalanches until Glubtok and kill him.",
	"  - In the Helix phase do not move, to attract as few spiders as possible.",
	"  - The Foe Reaper makes rotating lightning barriers along the tunnel we have to advance through; avoid stepping on them or jump over.",
	"  - In the next phase kill all the worgen attacking the friendly npcs in a hurry.",
	"* Vanessa phase:",
	"  - Priority on any adds that spawn.",
	"  - When she applies the explosive charges grab the ropes from the green arrow."
};

-- -------------------------------------------- --
-- Halls of Origination : Zone 4945 --
-- -------------------------------------------- --

pack["39425"] = { "Temple Guardian Anhuur",
	"* Whoever receives |cff71d5ff|Hspell:75592|h[Divine Atonement]|h|r should move away from the group until it fades in 8 seconds, to avoid healing the boss too much.",
	"* When he starts casting |cff71d5ff|Hspell:75322|h[Reverberating Hymn]|h|r the whole group goes down to pull the two levers. On the way back we interrupt the hymn and continue.",
	"Note: On normal only 1 dps per side is needed, each one pulling one of the levers."
};

pack["39428"] = { "Earthrager Ptah",
	"* It's an optional DPS-race boss."
};

pack["39788"] = { "Anraphet",
	"* Move the boss to avoid the areas caused by the |cff71d5ff|Hspell:76184|h[Alpha Beams]|h|r.",
	"* Try to use mitigations during the |cff71d5ff|Hspell:75622|h[Omega Stance]|h|r."
};

pack["39587"] = { "Isiset",
	"* When he casts |cff71d5ff|Hspell:74137|h[Supernova]|h|r you must turn away before the cast finishes to avoid being stunned.",
	"* When he splits, the kill order for the copies should be:",
	"   1st Astral Call",
	"   2nd Astral Rain",
	"   3rd Veil of Sky"
};

pack["39731"] = { "Ammunae",
	"* Priority DPS on the Spore Pods so they don't heal the boss, and on the Bloodpetal Flowers to avoid damage.",
	"* If possible dispel |cff71d5ff|Hspell:76043|h[Wither]|h|r when it targets players.",
	"Note: On heroic the tank can park the boss over a dead spore to speed up the boss's death."
};

pack["39732"] = { "Setesh",
	"* The boss is not tanked; the adds that spawn are tanked.",
	"* With high DPS the portals can be ignored and you try to burn the boss down as fast as possible.",
	"* To be safe, destroy the portals as soon as they spawn, and the tank must pick up the adds that spawn (don't kill them)."
};

pack["39378"] = { "Rajh",
	"* Avoid the fire cyclones.",
	"* |cff71d5ff|Hspell:80352|h[Summon Orb]|h|r must be interrupted to avoid the damage.",
	"* The |cff71d5ff|Hspell:76355|h[Blessing of the Sun]|h|r deals damage and also increases the damage we deal. Focus all DPS at that moment."
};

-- -------------------------------------------- --
-- Blackrock Caverns : Zone 4926 --
-- -------------------------------------------- --

pack["39665"] = { "Rom'ogg Bonecrusher",
	"* Avoid the dust cloud from the |cff71d5ff|Hspell:75272|h[Quake]|h|r. On heroic elementals spawn; if the tank and healer are comfortable they can be ignored, otherwise kill them.",
	"* When he casts |cff71d5ff|Hspell:75539|h[Chains of Woe]|h|r focus ALL DPS on breaking the chains, and once broken run away as fast as possible to avoid dying to the |cff71d5ff|Hspell:75543|h[The Skullcracker]|h|r."
};

pack["39679"] = { "Corla, Herald of Twilight",
	"* The goal of this boss is to prevent both players and adds from gaining 100 ticks of |cff71d5ff|Hspell:75610|h[Evolution]|h|r; if that happens the affected one turns into a dragonkin and on HERO it's a wipe.",
	"  To avoid it, intercept the add's beam before it reaches 80, and swap when we ourselves reach 80.",
	"  Best is to assign one player to each add.",
	"Tip: If we get distracted and don't see the debuff, when a character starts blinking they are about to transform; that's the moment to swap the player receiving the beam."
};

pack["39698"] = { "Karsh Steelbender <Twilight Armorer>",
	"* The tank will put the boss into the lava jet until he has 5 or 6 marks, pulling him out immediately.",
	"* When the shield melt is about to fade, put him in again. If it fades, elementals spawn and the fight gets complicated.",
	"Note: Best is to put him in repeatedly, to control as much as possible the time he stays inside. The longer he stays, the more damage the party takes."
};

pack["39700"] = { "Beauty",
	"* Ideally keep the pups in CC while killing the boss. If that is not possible, kill the pups before the boss.",
};

pack["39705"] = { "Ascendant Lord Obsidius",
	"* Ideally have one DPS kite the shadows (using slows); they have no aggro and hit whatever they hit last.",
	"* Meanwhile the tank and the rest of the group focus the boss.",
	"* Every so often the boss will swap with a shadow, and the kiting DPS and the tank will swap mobs."
};

-- -------------------------------------------- --
-- Lost City of the Tol'vir : Zone 5396 --
-- -------------------------------------------- --

pack["43612"] = { "High Prophet Barim",
	"* In the first phase the phoenix is kited.",
	"* In the second phase (shade) full DPS on the phoenix."
};

pack["43614"] = { "Lockmaw",
	"* The marked player brings the adds close to the tank so he can pick them up easily.",
};

pack["49045"] = { "Augh",
	"* Avoid the |cff71d5ff|Hspell:91408|h[Whirlwind]|h|r.",
};

pack["44577"] = { "General Husam",
	"* Move the boss to avoid stepping on the mines on the floor.",
	"* Avoid the ground areas; he warns with a dust signal."
};

pack["44819"] = { "Siamat",
	"* Focus adds",
};

-- ------------------------------------ --
-- The Stonecore : Zone 5088 --
-- ------------------------------------ --

pack["43438"] = { "Corborus",
	"* Move away immediately from |cff71d5ff|Hspell:92648|h[Crystal Barrage]|h|r and on HERO kill the spiders that come out of the crystals right away.",
	"* Dispel the |cff71d5ff|Hspell:82415|h[Dampening Wave]|h|r debuff as soon as it appears.",
	"* On HERO, when Corborus goes underground avoid at all costs the dust clouds that kill."
};

pack["42810"] = { "Crystal Spawner Giant",
	"* Jump right before the cast of the |cff71d5ff|Hspell:92631|h[Quake]|h|r ends.",
};

pack["43214"] = { "Slabhide",
	"* Avoid the floor pools from |cff71d5ff|Hspell:80800|h[Eruption]|h|r.",
	"* Avoid the rocks falling from the ceiling; they are marked on the floor by a shadow.",
	"* On HERO, when he casts |cff71d5ff|Hspell:92265|h[Crystal Storm]|h|r get behind one of the fallen rocks to avoid the damage.",
};

pack["42188"] = { "Ozruk",
	"* The tank stands with their back to the wall to avoid getting knocked back when he casts |cff71d5ff|Hspell:78807|h[Shatter]|h|r.",
	"* When he casts |cff71d5ff|Hspell:92410|h[Ground Slam]|h|r everyone, including the tank, retreats to avoid the |cff71d5ff|Hspell:92662|h[Shatter]|h|r damage; the damage area is very visible on the floor.",
	"* On HERO, when he casts |cff71d5ff|Hspell:78939|h[Bulwark of Elementium]|h|r all ranged DPS should throw a damage-over-time at it so it gets reflected and pulls them out of the next |cff71d5ff|Hspell:92426|h[Paralyze]|h|r.",
};

pack["42333"] = { "High Priestess Azil",
	"* You have to move away from the |cff71d5ff|Hspell:79340|h[Summon Gravity Well]|h|r but at the same time use them to pull the followers inside.",
	"* Dispel |cff71d5ff|Hspell:79351|h[Force Grip]|h|r from the tank every time he puts it on him.",
	"* If someone can remove curses it's a good idea to remove |cff71d5ff|Hspell:79345|h[Curse of Blood]|h|r whenever possible."
};

-- ----------------------------------------------- --
-- Throne of the Tides : Zone 643 --
-- --------------------------------- --------------

pack["40586"] = { "Lady Naz'jar",
	"* Interrupt |cff71d5ff|Hspell:91477|h[Shock Blast]|h|r.",
	"* Avoid the geyser from |cff71d5ff|Hspell:75722|h[Summon Geyser]|h|r.",
	"* Avoid the |cff71d5ff|Hspell:76001|h[Fungal Spores]|h|r.",
	"* At 66% and 33% she will do the |cff71d5ff|Hspell:75683|h[Waterspout]|h|r and 3 adds will spawn that should be CC'd to make the fight easier.",
};

pack["40765"] = { "Commander Ulthok",
	"* EVERYONE always avoids the |cff71d5ff|Hspell:76047|h[Dark Fissure]|h|r.",
	"* The tank will keep moving the boss around the room, spreading the areas."
};

pack["40825"] = { "Erunak Stonespeaker",
	"* Tank him with his back to the party to avoid the damage from the |cff71d5ff|Hspell:76170|h[Magma Splash]|h|r.",
	"* Try to dispel the |cff71d5ff|Hspell:76165|h[Ember Strike]|h|r when the tank receives it.",
	"* Pull the boss out of the |cff71d5ff|Hspell:76234|h[Mind Fog]|h|r whenever he casts it.",
	"* If he puts up |cff71d5ff|Hspell:76307|h[Absorb Magic]|h|r it must be dispelled, otherwise all magic damage will heal him."
};

pack["40792"] = { "Neptulon",
	"* PHASE 1, the tank picks up the Restless Behemoths; the small adds can be killed by the DPS directly. The Behemoths get moved around the room until they die.",
	"* PHASE 2, beasts and 3 smashers spawn that channel on Neptulon.",
	"    The smashers must be killed as soon as possible, but also help the tank with the beasts so they don't kill him.",
	"    The tank keeps moving the remaining Behemoth and the beasts.",
	"    Avoid the ink pools on the floor.",
	"* PHASE 3, Neptulon will give us |cff71d5ff|Hspell:76133|h[Tidal Surge]|h|r; at this point go FULL DPS until the boss dies."
};

-- ---------------------------------- --
-- Grim Batol : Zone 4950 --
-- ---------------------------------- --

pack["39625"] = { "General Umbriss",
	"* When he casts |cff71d5ff|Hspell:74670|h[Lightning Attack]|h|r the targeted player moves to avoid the damage.",
	"* The healer watches out for when the tank receives |cff71d5ff|Hspell:74846|h[Bleeding Wound]|h|r and heals him up to at least 90% to remove the debuff.",
	"* The DPS handle the adds (Troggs); the tank must not pick them up.",
	"  On HERO a purple trogg spawns; before starting the fight assign 1 DPS.",
	"  It should be CC'd; if not possible it must be killed far from the group and from the other adds, ONLY the assigned DPS hits it."
};

pack["40177"] = { "Forgemaster Throngus",
	"* Avoid the area of the |cff71d5ff|Hspell:74984|h[Mighty Stomp]|h|r.",
	"* When Throngus picks the mace the tank moves him around the room to avoid the damage.",
	"* When he picks the sword the healer focuses on the tank since he will take heavy damage.",
	"* When he picks the shield tank him in the corner of the entrance and everyone except the tank stands behind him."
};

pack["40319"] = { "Drahga Shadowburner",
	"* As soon as |cff71d5ff|Hspell:75218|h[Summon Flames]|h|r spawns, the player it follows must run in the opposite direction to keep them apart while everyone else kills it immediately.",
	"* When he mounts the dragon, tank him in the center of the room to make it easier to avoid the |cff71d5ff|Hspell:75321|h[Valiona's Flame]|h|r by standing behind the dragon.",
	"* When he casts the |cff71d5ff|Hspell:90966|h[Devastating Scourge]|h|r avoid the fissures that damage and slow."
};

pack["40484"] = { "Erudax",
	"* Ranged DPS try to stay spread out so the |cff71d5ff|Hspell:79466|h[Binding Shadows]|h|r don't hit more than one.",
	"* When he casts the |cff71d5ff|Hspell:75664|h[Gale of Shadows]|h|r everyone moves into the eye of the gale or dies.",
	"* After the Gale a Twilight Corruptor will spawn, or 2 on HERO.",
	"  The DPS must be split so they die as soon as possible, because if they reach the eggs the boss will heal and dragons will spawn that damage the whole party until the end."
};

-- --------------------------------------------- --
-- The Vortex Pinnacle : Zone 5035 --
-- --------------------------------------------- --

pack["43878"] = { "Grand Vizier Ertan",
	"* You have to avoid the |cff71d5ff|Hspell:86292|h[Cyclone Shields]|h|r."
};

pack["43873"] = { "Altairus",
	"* Whenever possible keep the wind at your back to benefit from the buff."
};

pack["43875"] = { "Asaad <Caliph of Zephyrs>",
	"* When the cast of |cff71d5ff|Hspell:87618|h[Static Cling]|h|r is about to finish, jump to avoid sticking to the floor.",
	"* Dispel the cling from everyone who didn't make the jump in time.",
	"* When he casts |cff71d5ff|Hspell:86911|h[Unstable Grounding Field]|h|r everyone gets inside the triangle to avoid dying."
};

-- ---------------------------------- --
-- Zul'Aman : Zone 3805 --
-- ---------------------------------- --

pack["23576"] = { "Nalorakk <Bear Avatar>",
	"* |cff71d5ff|Hspell:42402|h[Surge]|h|r charges the farthest player; you must swap after each charge or you die.",
	"* In bear form he casts interrupts; careful if the healer's cast overlaps with |cff71d5ff|Hspell:42395|h[Lacerating Slash]|h|r which does 180K.",
	"* Full DPS on the boss."
};

pack["23578"] = { "Jan'alai <Dragonhawk Avatar>",
	"* He spawns 2 adds, kill ONLY 1.",
	"* Tank the boss next to the other add, in front of the walkway to gather the hatchlings and AoE them down.",
	"* The boss will go to the middle and place bombs on the floor that we avoid because they explode.",
	"* These operations repeat throughout the whole encounter.",
	"* Sometimes the boss releases a frontal flame that leaves a groove on the floor which we avoid.",
	"|cFFFF0000Tip:|r If there is a mage in the party it is interesting to steal the earthquake from the previous pull and throw it at the boss."
};

pack["23577"] = { "Halazzi <Lynx Avatar>",
	"* Keep the boss away from the water totem area.",
	"* Casters can use the water totem area to restore health and mana.",
	"* Break the lightning totems immediately."
};

pack["24239"] = { "Hex Lord Malacrass",
	"* First we neutralize the two adds.",
	"  Ideally CC the add on the left while doing full DPS on the one on the right",
	"  and if it can be kept CC'd until the end we continue with the boss,",
	"  otherwise kill the second add before continuing with the boss.",
	"* He will use the players' abilities. Be ready to interrupt and dispel everything you can."
};

pack["23863"] = { "Daakara <The Invincible>",
	"* He will randomly turn into 2 of the previous forms:",
	"  - Eagle. Break the lightning totem and avoid the cyclones.",
	"  - Bear. The healer has to dispel the paralysis and remember the charges.",
	"  - Lynx. Hard for the healer; kill the 2 small cats as soon as possible. The boss applies random bleeds.",
	"  - Dragonhawk. Dodge the damage from the grooves and fire columns."
};

-- --------------------------------- --
-- Zul'Gurub : Zone 1977 --
-- --------------------------------- --

pack["52155"] = { "High Priest Venoxis",
	"* When he draws the maze, don't touch or jump the green lines.",
	"* When 2 players get linked by the toxic link they spread as far apart as possible to break it.",
	"  Nobody should be near when it breaks because it deals area damage.",
	"* Avoid the floor pools, moving the boss so you can hit him without stepping on them. The pools grow.",
	"* Avoid the green breath by getting behind him.",
	"* When he casts the beam, run to avoid it.",
	"* When the boss is stunned you must go all out on DPS because there is a +100% damage modifier."
};

pack["52151"] = { "Bloodlord Mandokir",
	"* The spirits are the key. When the raptor is loose it must be killed as soon as possible so it doesn't kill spirits.",
	"  Each spirit can revive a dead player, and the revived player deals more damage and takes less damage.",
	"* Avoid the grooves on the floor when the boss casts them.",
	"* Don't gift the boss health by overhealing whoever receives the Bloodletting; keeping them a bit above 7500 is enough."
};

pack["52059"] = { "High Priestess Kilnara",
	"* Avoid the purple walls (like Sartharion's waves).",
	"* Interrupt the Tears of Blood.",
	"* Before getting the boss below 50%, kill the panthers 1 by 1 or 2 by 2."
};

pack["52053"] = { "Zanzil",
	"* Interrupt Voodoo Bolt.",
	"* Stay away from Zanzil's Fire.",
	"* Blue Elixir: Drink from the Frost Cauldron and finish the Berserker as soon as possible (it has no aggro).",
	"* Green Elixir: Drink from the Poison Cauldron as soon as possible.",
	"* Red Elixir: Drink from the Fire Cauldron to AoE down the zombies."
};

pack["52148"] = { "Jin'do the Godbreaker",
	"* Put the boss into the Dead Zone; players enter it too when he summons Shades of Hakkar.",
	"* While the tank handles the giant trolls, the rest of the group must finish off the summoned spirits, plus the chains.",
	"* Avoid Shadow Spikes."
};

pack["52258"] = { "Gri'lek",
	"* The player marked with |cff71d5ff|Hspell:68987|h[Pursue]|h|r kites the boss.",
	"* Leave the |cff71d5ff|Hspell:89932|h[Fault Line]|h|r area when it is marked."
};

pack["52286"] = { "Wushoolay",
	"* Tank with their back to the party.",
	"* Leave the |cff71d5ff|Hspell:96710|h[Lightning Cloud]|h|r.",
	"* Spread out from each other."
};

pack["52269"] = { "Renataki",
	"* Heal the player ambushed by the Vanish.",
	"* Avoid the area damage from the |cff71d5ff|Hspell:96645|h[Thousand Blades]|h|r."
};

pack["52271"] = { "Hazza'rah",
	"* Interrupt the Wrath.",
	"* Kill the nightmares before they reach their player or they will kill them."
};

-- ------- --
-- RAIDS --
-- ------- --

-- ------------------------------------ --
-- Baradin Hold : Zone 5600 --
-- ------------------------------------ --

pack["47901"] = { "Demon Containment Unit",
	"* These monsters must be killed by the whole group stacked on the tank to spread the damage from the |cff71d5ff|Hspell:89348|h[Demon-repelling Ray]|h|r."
};

pack["47120"] = { "Argaloth (10)",
	"* On 10 you set up 2 groups, each with 1 tank, 1 healer and 3 DPS.",
	"* Each group stands on one side of Argaloth and stays stacked on the tank to spread the damage.",
	"* After each |cff71d5ff|Hspell:88942|h[Meteor Slash]|h|r the tanks swap the boss.",
	"* During the |cff71d5ff|Hspell:88972|h[Fel Firestorm]|h|r phase everyone moves to avoid the damage without stepping on fire.",
	"* At the end of the storm each group returns to its position and the above repeats."
};

-- -------------------------------------- --
-- Bastion of Twilight : Zone 5094/5334 --
-- -------------------------------------- --

pack["44600"] = { "Halfus Wyrmbreaker (10)",
	"* Priorities: Time Warden, Storm Rider, Abyssal Successor, Orphaned Emerald Whelp, Slate Dragon.",
	"* Ideally the MT tanks Halfus and one of the dragons, while the OT tanks another.",
	"* Kill the dragons on top of the boss to take advantage of all the damage.",
	"* If we have the Slate Dragon we must swap the boss every 4 ticks of |cff71d5ff|Hspell:39171|h[Malevolent Strikes]|h|r."
};

pack["45992"] = { "Valiona (10)",
	"* Theralion will cast |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r, so stay spread out until Valiona's first attack.",
	"* When a player receives |cff71d5ff|Hspell:92878|h[Blackout]|h|r they and the whole party (except the tank) stand at the boss's tail; once everyone is there it gets dispelled to spread the damage.",
	"* When he casts |cff71d5ff|Hspell:92873|h[Devouring Flames]|h|r everyone stands behind the boss to avoid the damage.",
	"* When he casts |cff71d5ff|Hspell:93063|h[Dazzling Destruction]|h|r circles will appear under 3 players that you must leave;",
	"  5 seconds later a missile will pull those in the Twilight Realm, which you leave by going to the pink portal without touching the pink balls on the floor."
};

pack["45993"] = { "Theralion (10)",
	"* Valiona will use |cff71d5ff|Hspell:92861|h[Twilight Meteorite]|h|r while flying, which works like Blackout.",
	"  She will mark the affected player and after 3 seconds trigger 150K damage spread among nearby players. 5 is enough.",
	"* |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r will place a purple area under a player that we avoid.",
	"* The player who receives the |cff71d5ff|Hspell:95641|h[Engulfing Magic]|h|r buff separates from the other players so they don't damage them.",
	"* |cff71d5ff|Hspell:86059|h[Deep Breath]|h|r covers a third of the room with fire; whoever steps on it enters the Twilight Realm.",
	"  You leave the Twilight Realm through the pink portal without stepping on the pink balls on the floor."
};

-- Twilight Council

pack["43686"] = { "Ignacious <Ascendant Council> (10)",
	"STAGE 1",
	"* Tanked at one end of the room with 1 tank and the melee DPS behind the boss.",
	"* Players who receive |cff71d5ff|Hspell:82660|h[Burning Blood]|h|r will stand near Feludius's ranged DPS to increase the damage they do while the buff lasts.",
	"* When he does |cff71d5ff|Hspell:92521|h[Inferno Leap]|h|r on a player, on landing he leaves a groove on the floor that we step on when we have the |cff71d5ff|Hspell:82762|h[Drench]|h|r effect from the |cff71d5ff|Hspell:82700|h[Water Bomb]|h|r.",
};

pack["43687"] = { "Feludius <Ascendant Council> (10)",
	"STAGE 1",
	"* Tanked at the opposite end from Ignacious, with 1 tank. Ranged DPS stand away from the boss and spread out from each other.",
	"* Players who receive |cff71d5ff|Hspell:82667|h[Heart of Ice]|h|r will stand near Ignacious's melee DPS to increase the damage they do while the buff lasts.",
	"* |cff71d5ff|Hspell:92509|h[Hydro Lance]|h|r must be interrupted or it will kill one of the players.",
};

pack["43688"] = { "Arion <Ascendant Council> (10)",
	"STAGE 2",
};

pack["43689"] = { "Terrastra <Ascendant Council> (10)",
	"STAGE 2",
};

pack["43735"] = { "Elementium Monstrosity (10)",
	"STAGE 3",
	"* Hero, lust, etc... must be saved for this phase, which is a DPS race",
};

pack["43324"] = { "Cho'gall (10)",
};

pack["45213"] = { "Sinestra (10)",
};

-- ------------------------------------------------- --
-- Throne of the Four Winds : Zone 5638 --
-- ------------------------------------------------- --

pack["45870"] = { "Anshal <Lord of the West Wind (Left)> (10)",
	"GENERAL NOTES",
	"This encounter consists of 3 elemental lords, Anshal, Nezir and Rohash, with an 8 minute enrage",
	"All three must be killed with a maximum difference of one minute or they resurrect",
	"The bosses have an energy bar that, when it fills up (at 90), makes them use their special abilities; platform movements must be made when their bar reaches 80 at the latest",
	"Strategy:",
	"4 Groups: 1st: 1 Tank, 1 Healer, 1 Dps[Anshal]; 2nd: 1 Tank and 1 Healer (preferably holy paladin because they can remove their own debuffs); 3rd: 1 Dps and 1 Healer [Rohash]; 4th: Mobile group with 3 Dps",
	"Optimize the dps on all three so they go down similarly",
	" ",
	"Anshal platform: periodically casts |cff71d5ff|Hspell:86205|h[Soothing Breeze]|h|r, healing Anshal and his allies (creepers) while silencing the raid",
	"He casts |cff71d5ff|Hspell:85422|h[Nurture]|h|r which summons creepers that in turn use |cff71d5ff|Hspell:93121|h[Toxic Spores]|h|r",
	"Special: |cff71d5ff|Hspell:84638|h[Zephyr]|h|r - make sure there are no creepers before the special ability",
};

pack["45872"] = { "Rohash <Lord of the East Wind (Right)> (10)",
	"Abilities:",
	"|cff71d5ff|Hspell:86193|h[Wind Blast]|h|r, his most dangerous ability; whoever is in front of him when he uses it will be pushed back 200 meters",
	"|cff71d5ff|Hspell:86182|h[Slicing Gale]|h|r, ranged attack",
	"Special: |cff71d5ff|Hspell:86481|h[Hurricane]|h|r - the biggest damage is from the fall (about 70Ks), so everyone who can should use cat form, slow fall, etc"
};

pack["45871"] = { "Nezir <Lord of the North Wind (Back)> (10)",
	"Abilities:",
	"|cff71d5ff|Hspell:86082|h[Permafrost]|h|r, which forces you to stay spread out",
	"|cff71d5ff|Hspell:93130|h[Ice Patch]|h|r, leave its area of effect IMMEDIATELY",
	"|cff71d5ff|Hspell:84645|h[Chilling Winds]|h|r, the most dangerous ability; it forces tanks/healers to swap platforms when they can't heal the damage (stacks) (Anshal-Nezir)",
	"Special: |cff71d5ff|Hspell:84644|h[Hailstorm]|h|r",
};

-- ============================================= --
-- 4.3 additions + remastered Throne --
-- ============================================= --

	-- -------------------------------- --
	-- End Time : Zone 938 --
	-- -------------------------------- --

	pack["54431"] = { "Echo of Baine (End Time)",
		"* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r slams: tanks and healers beware.",
		"* The totems from |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r are a priority.",
	};

	pack["54445"] = { "Echo of Jaina (End Time)",
		"* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: she teleports, mind her new position.",
	};

	pack["54432"] = { "Murozond (End Time)",
		"* Dodge the |cff71d5ff|Hspell:-3676|h[Distortion Bomb]|h|r.",
		"* Final boss of the dungeon: keep your defensives for the end.",
	};

	pack["54123"] = { "Echo of Sylvanas (End Time)",
		"* The |cff71d5ff|Hspell:-3951|h[Shriek of the Highborne]|h|r: heavy damage, heals ready.",
	};

	pack["54544"] = { "Echo of Tyrande (End Time)",
		"* Mind the |cff71d5ff|Hspell:-4207|h[Dark Moonlight]|h|r.",
	};

	-- --------------------------------- --
	-- Hour of Twilight : Zone 940 --
	-- --------------------------------- --

	pack["54590"] = { "Arcurion (Hour of Twilight)",
		"* |cff71d5ff|Hspell:102582|h[Chains of Frost]|h|r chains you; break free.",
		"* Free the player trapped in the |cff71d5ff|Hspell:103252|h[Icy Tomb]|h|r by breaking it.",
		"* |cff71d5ff|Hspell:104050|h[Torrent of Frost]|h|r: raid damage, heals.",
	};

	pack["54968"] = { "Asira Dawnslayer (Hour of Twilight)",
		"* The player marked by |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r loses healing: dispel it.",
		"* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: stunning smoke, step out.",
		"* Don't cross the |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r.",
	};

	local benedictus = { "Archbishop Benedictus (Hour of Twilight)",
		"* Two stages: the Light and the Shadow.",
		"* The player marked by |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r or |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r should call it out (SAY) and move away.",
		"* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r and |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r: out of the areas.",
	};
	pack["54938"] = benedictus;

	-- --------------------------------- --
	-- Well of Eternity : Zone 939 --
	-- --------------------------------- --

	local azshara = {
		"Queen Azshara (Well of Eternity)",
		"* The Enchanted Magi are the priority before her.",
		"* |cff71d5ff|Hspell:-3969|h[Total Obedience]|h|r: long cast, interrupt it.",
	};
	pack["54853"] = azshara; pack["54884"] = azshara; pack["54882"] = azshara; pack["54883"] = azshara;

	local mannoroth = {
		"Mannoroth and Varo'then (Well of Eternity)",
		"* Mind what comes out of the |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r.",
		"* The tank holds Mannoroth; Varo'then dies quickly.",
	};
	pack["54969"] = mannoroth; pack["55419"] = mannoroth;

	pack["55085"] = { "Peroth'arn (Well of Eternity)",
		"* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: important debuff, heal it.",
		"* In the stealth phase do NOT move when he sends the eyes.",
		"* The player marked by |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r is vulnerable: full DPS.",
	};

	-- ------------------------------------------------ --
	-- Throne of the Tides (remastered) : Zone 643 --
	-- ------------------------------------------------ --

	pack["40788"] = { "Mindbender Ghur'sha (Throne of the Tides)",
		"* Erunak phase: |cff71d5ff|Hspell:429051|h[Earthfury]|h|r and the |cff71d5ff|Hspell:429037|h[Stormflurry Totem]|h|r, one at a time.",
		"* |cff71d5ff|Hspell:429172|h[Terrifying Vision]|h|r has a long cast: interrupt it.",
		"* The |cff71d5ff|Hspell:429048|h[Flame Shock]|h|r gets dispelled.",
	};

	local ozumat = {
		"Ozumat (Throne of the Tides)",
		"* The player marked by |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r should move away (SAY).",
		"* Watch out for the |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r.",
		"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r is a tank mechanic; Neptulon helps you with his flux.",
	};
	pack["44566"] = ozumat; pack["213770"] = ozumat;

	-- --------------------------------------------- --
	-- Events and holidays --
	-- --------------------------------------------- --

	pack["23870"] = { "Coren Direbrew (Brewfest)",
		"* Tank: grab Coren and his minions fast so they don't hit cloth or light-armor DPS.",
		"* Adds: kill the minions he summons first to reduce group damage.",
		"* The beer jugs on the tables: throw or use them for temporary damage buffs or to mitigate the boss's debuffs.",
		"* Healing: tanks with strong self-healing (DKs, Warriors) can hold on their own, but a standard healer makes the encounter risk-free."
	};

BosesAPI.register( "Cata", { ES = es, EN = en } );
