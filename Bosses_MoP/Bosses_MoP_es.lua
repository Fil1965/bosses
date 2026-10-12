--[[
	Bosses_MoP_es.lua
		Datos en español del pack MoP. Tácticas escritas a mano con el
		conocimiento de los combates del propio dueño (2026-10-01).

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos;

-- --------------------------------- --
-- Heart of Fear : Zona 1009 --
-- --------------------------------- --

pack["63191"] = { "Garalon",
	"* NO se tanquea convencional: fija al jugador con |cff71d5ff|Hspell:123081|h[Feromonas]|h|r.",
	"* El asignado KITEA bordeando la sala; cuando el daño sea insoportable, OTRO jugador se acerca para PASAR el perjuicio.",
	"* Los DPS rompen las 4 patas |cff71d5ff|Hspell:122786|h[Pata Rota]|h|r para ralentizarlo y dañar más el cuerpo.",
	"* ¡NUNCA entres bajo su cuerpo (círculo morado) o activa |cff71d5ff|Hspell:122754|h[Furia Ciega]|h|r que elimina a la banda!",
};

pack["62397"] = { "Señor del Viento Mel'jarak",
	"* Tres grupos de esbirros: usad el objeto de la sala para CONGELAR a varios al inicio.",
	"* Matad un grupo entero a la vez: el jefe se enfurece pero los esbirros pierden sus protecciones.",
	"* |cff71d5ff|Hspell:122193|h[Reconstitución]|h|r de los Menders SE INTERUMPRE.",
	"* Un compañero LIBRE hace clic en las |cff71d5ff|Hspell:121881|h[Prisiones de Ámbar]|h|r para liberar.",
};

pack["62511"] = { "Forjador de Ámbar Un'sok",
	"* |cff71d5ff|Hspell:122784|h[Transformar Vida]|h|r convierte a un jugador en abominación de ámbar — un VEHÍCULO.",
	"* El mutado interrumpe los casteos del jefe; machaca tu ataque básico para consumir ámbar y que tu barra no llegue al 100%.",
	"* Cuando el jefe es vulnerable, los DPS te bajan al 20% para liberarte.",
	"* Fase final (Monstruosidad): Heroísmo directo al jefe, esquivando los charcos de ámbar.",
};

pack["62837"] = { "Gran Emperatriz Shek'zeer",
	"* Fase 1: dividíos en dos grupos; los marcados por |cff71d5ff|Hspell:123735|h[Chillido]|h|r se alejan.",
	"* Fase 2 (Guardia Real): se encierra en caparazón y genera esbirros; los tanques separan a los Revolvedores.",
	"* Fase 3 (Sha, 30%-0%): disipad los miedos y TODO el daño directo antes de quedarse sin maná.",
	"* |cff71d5ff|Hspell:123788|h[Grito de Terror]|h|r: daño de área en la fase final, curas.",
};

pack["62543"] = { "Señor de las Hojas Ta'yak",
	"* |cff71d5ff|Hspell:123474|h[Asalto Invisible]|h|r marca a un jugador y desaparece — TODA la banda se AGRUPA sobre él para dividir el impacto.",
	"* Aléjate de los tornados que genera por la sala.",
	"* Fase 2 (20%-0%): corre por el pasillo esquivando los tornados con las corrientes laterales; al llegar, quémalo.",
};

pack["62980"] = { "Visir Imperial Zor'lok",
	"* Tres plataformas, cada una con una habilidad; al final una fase central que las combina.",
	"* Anillos de sonido: esquivadlos lateralmente o refugiaos en las burbujas de la sala.",
	"* |cff71d5ff|Hspell:122761|h[Exhalar]|h|r fija con un rayo: los demás se INTERPONEN para compartir el daño.",
	"* |cff71d5ff|Hspell:122740|h[Convertir]|h|r controla: cambiad de objetivo para liberar con daño moderado o stuns.",
};

-- --------------------------------- --
-- Mogushan Vaults : Zona 1008 --
-- --------------------------------- --

pack["60009"] = { "Feng el Maldito",
	"* Cambia de fase cada 25%: bastón, lanza, escudo, puños.",
	"* Los tanques interactúan con las ESTATUAS ANTES del pull: obtienen escudo que copia hechizos y burbuja que mitiga.",
	"* Fase de puños: agrupaos detrás del jefe para que las curas alcancen el |cff71d5ff|Hspell:116784|h[Epicentro]|h|r.",
	"* Fase de escudo: |cff71d5ff|Hspell:116157|h[Tormenta]|h|r os atrae — corred en dirección CONTRARIA.",
};

bos = { "La Guardia de Piedra",
	"* 3-4 leones que comparten vida; un jefe aleatorio llena la barra de |cff71d5ff|Hspell:116529|h[Petrificación]|h|r.",
	"* El tanque del activado lo JUNTA con otro león: consumen energía entre ellos. El otro tanque mantiene el resto separados.",
	"* Toda la banda esquiva los charcos de amatista, |cff71d5ff|Hspell:129424|h[trampas de cobalto]|h|r y zonas de fuego.",
};
pack["60051"] = bos; pack["60043"] = bos; pack["59915"] = bos; pack["60047"] = bos;

bos = { "La Voluntad del Emperador",
	"* Línea de montaje de guerreros terracota; los jefes son dos armaduras gigantes al final.",
	"* La banda se divide: Gis (pequeños, fijan), Janissaries (medianos) y Titanes (grandes, ralentizan).",
	"* El COMBO de Golpe Devastador + Pisotón: los tanques esquivan lateralmente en el momento exacto.",
	"* Si el tanque esquiva los 5 golpes perfectos, gana un botón que inflige MILLONES de daño.",
};
pack["60399"] = bos; pack["60400"] = bos;

pack["60143"] = { "Gara'jal el Agavillador de Espíritus",
	"* |cff71d5ff|Hspell:116161|h[Muñecos Vudú]|h|r vinculan al tanque con jugadores: TODO su daño se replica en ellos.",
	"* Los desterrados al mundo espiritual matan los esbirros sombríos rápido.",
	"* Para SALIR: pisad los tótems o portales antes de agotar el tiempo.",
};

bos = { "Los Reyes Espíritu",
	"* Cuatro reyes mogu por turnos, cada uno AÑADE una mecánica que se ACUMULA.",
	"* Qiang: |cff71d5ff|Hspell:118212|h[Aniquilación]|h|r frontal masivo — corred DETRÁS de él.",
	"* Subetai: flechas que inmovilizan — los DPS cambian de foco INMEDIATAMENTE.",
	"* Zian: orbes que persiguen — el fijado KITEA el orbe alejándolo del grupo.",
	"* Meng: cuando activa el escudo reflectante, los DPS DETIENEN el ataque.",
};
pack["60701"] = bos; pack["60708"] = bos; pack["60709"] = bos; pack["60710"] = bos;

pack["60410"] = { "Elegon",
	"* Motor de energía celestial sobre una plataforma transparente sobre el VACÍO.",
	"* Dentro del circuito blanco infliges más daño pero acumulas un perjuicio — sal un MOMENTO fuera para limpiar.",
	"* Transición: los DPS destruyen TODAS las cargas de los pilares SIMULTÁNEAMENTE.",
	"* ¡El SUELO DESAPARECE en el cambio de fase! Si estás en el centro, caes al vacío.",
};

-- --------------------------------- --
-- Siege of Orgrimmar : Zona 1136 --
-- --------------------------------- --

bos = { "Parangones de los Klaxxi",
	"* 9 campeones mántides, saltan de 3 en 3 — cada uno con una habilidad devastadora.",
	"* ORDEN ESTRICTO de foco (normalmente Rik'kal o Hisek primero) para evitar combinaciones letales.",
	"* Cuando un campeón muere, un jugador hace clic en su cadáver para ROBAR su habilidad.",
};
pack["71152"] = bos; pack["71153"] = bos; pack["71154"] = bos; pack["71155"] = bos; pack["71156"] = bos; pack["71157"] = bos; pack["71158"] = bos; pack["71160"] = bos; pack["71161"] = bos;

bos = { "Botín de Pandaria",
	"* Contrarreloj: dividid la banda en DOS grupos iguales, uno por sala.",
	"* Coordinad cajas pequeñas y medianas para controlar el flujo de esbirros.",
	"* NO abráis demasiadas cajas grandes a la vez — os agobiareis antes de los 5 minutos.",
};
pack["73720"] = bos; pack["71512"] = bos;

pack["71454"] = { "Malkorok",
	"* La curación NO restaura vida: genera un escudo de absorción (verde -> amarillo -> rojo).",
	"* Cuando golpee el suelo, corred a las zonas de energía oscura para ABSORBERLAS — una zona vacía estalla.",
	"* Fase de rabia: JUNTOS todos para compartir el daño de los pisotones.",
};

bos = { "Los Protectores Caídos",
	"* Tres guardianes que comparten PORCENTAJE — deben morir casi simultáneamente.",
	"* Al 66% y 33% cada uno activa Medidas Desesperadas con copias espirituales.",
	"* Balancead el daño entre los tres; disipad sombras, esquivad veneno, salid de las tormentas de Rook.",
};
pack["71479"] = bos; pack["71475"] = bos; pack["71480"] = bos;

pack["71529"] = { "Thok el Sanguinario",
	"* Fase 1: ruge e interrumpe casteos; la banda se AGRUPA para las curas.",
	"* Fase 2: si varios bajan del 50%, HUELE la sangre y PERSIGUE a uno para devorarlo — el fijado KITEA.",
	"* Los DPS matan al carcelero para robar la llave, abrir una celda y reiniciar.",
};

pack["71466"] = { "Arietes de Hierro",
	"* Alterna Modo Asalto (móvil) y Modo Asedio (anclado).",
	"* Asalto: esquivad los charcos de brea y las sierras giratorias.",
	"* Asedio: los jugadores PISAN las minas rastreadoras (con inmunidades) antes de que exploten.",
};

pack["71504"] = { "Asediador Fundinegro",
	"* Un equipo de DPS SALTA a la cinta transportadora por las tuberías y destruye las armas (láseres, imanes, misiles).",
	"* En la sala: el tanque mueve al jefe evitando las sierras que rebotan por las paredes.",
};

pack["71543"] = { "Immerseus",
	"* Elemental de agua corrupto: alterna dañar al jefe y limpiar sus lágrimas.",
	"* Separación: babosas NEGRAS se destruyen, AZULES se curan a tope para purificarlas.",
	"* Cada babosa rescatada reduce su vida máxima al reaparecer.",
};

pack["71515"] = { "General Nazgrim",
	"* |cff71d5ff|Hspell:143589|h[Batalla]|h|r: normal, foco en limpiar esbirros.",
	"* |cff71d5ff|Hspell:143593|h[Defensiva]|h|r: ¡NO LE PEGUES! Cada golpe le da ira para su letal Ejecución.",
	"* Rabiosa: recibe más daño — momento ideal para habilidades ofensivas fuertes.",
	"* Matad de inmediato a los chamanes y cazadores.",
};

pack["71734"] = { "Sha del Orgullo",
	"* Barra de Orgullo individual: al 100% sufres control mental o dañas a tus compañeros.",
	"* Los marcados con Proyección corren a las runas de luz para limpiarse.",
	"* |cff71d5ff|Hspell:144574|h[Prisión de Orgullo]|h|r: DOS jugadores libres pisan los botones para liberar.",
	"* El jugador con el bufo de Titán se acerca a los demás para mitigar el orgullo.",
};

bos = { "Chamán Oscuro Kor'kron",
	"* Los tanques SEPARAN a los dos jefes por toda la explanada.",
	"* El suelo es letal: esquivad las lluvias de ceniza, los tótems corruptos y las babosas de moco.",
};
pack["71859"] = bos; pack["71858"] = bos;

bos = { "Galakras",
	"* En el suelo: destruid oleadas; los tanques priorizan chamanes y demoledores.",
	"* Un equipo sube a las TORRES, limpia y dispara los cañones para hacerla aterrizar.",
	"* En el suelo: la banda se alinea detrás del tanque para dividir el debufo de fuego.",
};
pack["72311"] = bos; pack["72560"] = bos; pack["72249"] = bos; pack["73910"] = bos; pack["72302"] = bos; pack["72561"] = bos; pack["73909"] = bos;

pack["71865"] = { "Garrosh Grito Infernal",
	"* Fase 1: ruedas de ingeniería matan esbirros solas; foco en chamanes.",
	"* Fase 2: armas profanadas + Toque de Y'Shaarj — los DPS cambian INMEDIATAMENTE para liberar a los dominados.",
	"* Viajes al reino del Sha: moveos JUNTOS y limpiad los esbirros rápido.",
	"* Fase 3: Heroísmo y quemar TODO antes de que las explosiones borren a la banda.",
};

pack["72276"] = { "Amalgama de corrupción",
	"* Todos empezáis con 50% MENOS de daño por la Corrupción.",
	"* Interactuad con los orbes de luz para entrar a una prueba individual; al superarla, recuperáis el daño total.",
	"* Enviad primero a los DPS más fuertes.",
	"* En la sala principal: esquiva el láser giratorio y mata a las manifestaciones.",
};

-- --------------------------------- --
-- Terrace of Endless Spring : Zona 996 --
-- --------------------------------- --

bos = { "Protectores de la Eternidad",
	"* Tres guardianes: Kaolan -> Regail -> Asani (orden de matanza recomendado).",
	"* Cuando uno muere, los otros dos se curan al 100% y ganan +25% de daño y una habilidad nueva.",
	"* Kaolan alejadlo del grupo (charcos); disipad las prisiones de agua y limpiad los bufos de celeridad de Asani.",
};
pack["60585"] = bos; pack["60586"] = bos; pack["60583"] = bos;

pack["62442"] = { "Tsulong",
	"* Noche (hacer daño): pisad brevemente los parches de luz solar para limpiar las cargas de sombras.",
	"* Día (curar al jefe): Tsulong se vuelve amistoso — los sanadores lo curan a tope.",
	"* En fase día, paraos frente a su aliento de luz: +500% regeneración de maná y curas.",
	"* Los DPS defienden al dragón matando las encarnaciones de terror.",
};

pack["62983"] = { "Lei Shi",
	"* Fase '¡Aléjate!': empuja a la banda hacia los bordes — corred hacia ella o con bufos de velocidad.",
	"* Fase '¡Escondite!': invisible e inmune — AoE por toda la sala hasta golpearla y que reaparezca.",
	"* Al 80/60/40/20%: burbuja + Protectores — enfocad UNO para romper el escudo; no hace falta matarlos todos.",
};

pack["60999"] = { "Sha del Miedo",
	"* Toda la banda (excepto el tanque) junta dentro del MURO DE LUZ: os hace inmunes al letal Aliento de Miedo.",
	"* Periódicamente destierra a un grupo a las plataformas exteriores.",
	"* En el exterior: esquivad las flechas del suelo, matad al arquero corrupto y tocad el orbe central para volver.",
};

-- --------------------------------- --
-- Throne of Thunder : Zona 1098 --
-- --------------------------------- --

pack["69465"] = { "Jin'rokh el Rompedor",
	"* Lanza charcos de Agua Fluida: dentro infliges +80% daño y +100% curación.",
	"* Aprovechad los charcos para maximizar el daño.",
	"* Cuando canalice Tormenta de Relámpagos, SALID del agua inmediatamente o moriréis electrocutados.",
};

bos = { "Concilio de Ancianos",
	"* Cuatro jefes trol; Gara'jal posee a uno secuencialmente.",
	"* Concentrad el daño en el POSEÍDO: infligidle el 25% de su vida para expulsar al espíritu antes de que su barra llegue al 100%.",
	"* Esquivad los tornados de arena y los tótems del suelo.",
};
pack["69078"] = bos; pack["69132"] = bos; pack["69134"] = bos; pack["69131"] = bos;

pack["68476"] = { "Horridonte",
	"* Cuatro puertas temáticas (Farraki, Gurubashi, Drakkari, Amani); el tanque lo mantiene de lado.",
	"* Los DPS priorizan a los Dinománticos de cada puerta para que suelten un orbe.",
	"* Un jugador hace clic en el orbe para guiar a Horridon contra la puerta activa.",
	"* Cerrad las 4 puertas, luego quemad al jefe y al dios de la guerra Jalak.",
};

pack["67977"] = { "Tortos",
	"* Los DPS a distancia matan las tortugas pequeñas que caen del techo.",
	"* Al quedarse sin vida, un jugador patea su |cff71d5ff|Hspell:134031|h[caparazón]|h|r como un FÚTBOL hacia Tortos.",
	"* Esto interrumpe su letal Aliento de Piedra Furioso.",
	"* Los sanadores usan escudos cuando Tortos haga Pisotón Ensordecedor.",
};

bos = { "Megaera",
	"* Hidra de 3 cabezas: Fuego (roja), Escarcha (azul), Veneno (verde).",
	"* Al matar una cabeza, reaparecen dos del elemento contrario.",
	"* Alternad matando Roja y Verde para evitar acumulaciones peligrosas de Escarcha.",
	"* Los marcados con Cenizas corren a los bordes; los de Torrente de Hielo kitean el rayo sin pisar el fuego.",
};
pack["68065"] = bos; pack["70235"] = bos; pack["70247"] = bos;

pack["69712"] = { "Ji Kun",
	"* Nidos en múltiples plataformas: un equipo de DPS y un sanador saltan con las corrientes de aire.",
	"* Matad a los polluelos antes de que Ji-Kun los alimente — si lo hace, se transforman en pájaros gigantes.",
	"* Al matar polluelos obtenéis plumas que permiten volar.",
	"* En la plataforma principal: esquivad el moco verde y corred contra el viento en la Corriente Descendente.",
};

pack["68036"] = { "Durumu el Olvidadizo",
	"* El Laberinto de Rayos: la banda se mueve UNIDA siguiendo el único camino blanco seguro entre los rayos desintegradores.",
	"* Quedarse atrás o adelantarse = muerte instantánea.",
	"* Fase de Espectros: tres rayos de colores se fijan en jugadores — movedlos para revelar a los esbirros invisibles.",
};

pack["69017"] = { "Primordius",
	"* Inmune al daño normal a menos que os MUTÉIS.",
	"* Matad a las babosas de fluido: dejan charcos morados (buenos) o rojos (malos).",
	"* Pisad los charcos morados para mutaros y poder dañar al jefe masivamente.",
	"* Evitad que Primordius absorba los fluidos o ganará bufos permanentes.",
};

pack["69427"] = { "Anima Oscura",
	"* Rompecabezas de energía (Ánima) entre docenas de gólems.",
	"* Al matar gólems, el Ánima fluye a los más grandes — si uno se llena al 100%, desata habilidades letales.",
	"* Coordinad el orden de matanza para transferir el Ánima a recipientes controlables.",
	"* No dejéis que los gólems pequeños se junten o se bufarán entre sí.",
};

bos = { "Hierro Qon",
	"* Tres quilen elementales por turnos antes de combatir a pie.",
	"* Fase de lanza: evitad las líneas elementales que dividen la sala según el quilen activo.",
	"* Fase de fuego: agrupaos en subgrupos para dividir las explosiones.",
	"* Fase de tormenta: mantened las distancias para no propagar los choques eléctricos.",
};
pack["68078"] = bos; pack["68079"] = bos; pack["68080"] = bos; pack["68081"] = bos;

bos = { "Las Consortes Gemelas",
	"* Lu'lin (Luna) y Suen (Sol) alternan el protagonismo.",
	"* Noche: Suen desaparece; destruid las imágenes estelares y disipad el sueño profundo.",
	"* Día: Suen ataca con fuego acumulable — el tanque la kitea cerca de los cometas de hielo para enfriarla.",
};
pack["68905"] = bos; pack["68904"] = bos;

pack["68397"] = { "Lei Shen, el Rey Trueno",
	"* Cuatro conductos eléctricos en las esquinas que potencian al jefe.",
	"* Los tanques lo mueven entre las esquinas para subir los conductos de forma EQUILIBRADA.",
	"* Al 65% y 30%: invulnerable en el centro — dividid la banda en 4 grupos (uno por esquina).",
	"* El conducto con más nivel se DESTRUYE al final de la transición, inhabilitando esa zona.",
};

pack["69473"] = { "Ra-den",
	"* Jefe secreto: alterna energía de Vita (relámpago) o Anima (sangre).",
	"* Alternad qué orbe destruyéis en cada fase.",
	"* Si absorbe Vita: alineaos para REBOTAR el rayo entre vosotros de forma ordenada.",
	"* Al 40%: desata ambas energías — carrera pura de daño antes de que el daño ambiental supere a los sanadores.",
};

-- --------------------------------- --
-- Gate of the Setting Sun : Zona 962 --
-- --------------------------------- --

pack["56906"] = { "Saboteador Kip'tilak",
	"* |cff71d5ff|Hspell:107268|h[Sabotaje]|h|r coloca bombas sobre jugadores — corred a los BORDES para dejarlas caer lejos.",
	"* Al estallar lanzan 4 líneas de fuego en CRUZ (+): no os quedéis en las trayectorias de vuestros compañeros.",
};

pack["56589"] = { "Rompehuelgas Ga'dok",
	"* Al volar deja una línea de |cff71d5ff|Hspell:106933|h[Fuego de Racimo]|h|r: apartaos del centro.",
	"* Mientras vuela, aparecen Aguijones acechadores: el tanque los agrupa y los DPS los eliminan en área.",
};

pack["56636"] = { "Comandante Ri'mok",
	"* Genera |cff71d5ff|Hspell:107122|h[Fluido Viscoso]|h|r que se expande: si el jefe se queda sobre él, gana MUCHO daño.",
	"* El tanque lo KITEA continuamente por el borde, sacándolo de cada charco inmediatamente.",
};

pack["56877"] = { "Raigonn",
	"* Fase 1: inmune al daño en el cuerpo — subíos a su cabeza (cañones/salto) y destruid su Punto Débil.",
	"* El tanque agrupa a los esbirros protectores mientras los DPS rompen el caparazón.",
	"* Fase 2: se enfurece, aumenta su velocidad y fija jugadores — carrera de daño antes de que los alcance.",
};

-- --------------------------------- --
-- Temple of the Jade Serpent : Zona 960 --
-- --------------------------------- --

pack["56448"] = { "Sabio Mari",
	"* Fase 1 (burbuja invulnerable): matad a las oleadas de elementales de agua.",
	"* Cada elemental muerto deja un charco corrupto permanente: NUNCA los pises.",
	"* Fase 2: canaliza un |cff71d5ff|Hspell:106612|h[Hidro-Láser]|h|r giratorio — corred en la MISMA dirección del giro para manteneros detrás.",
};

bos = { "Eremita Senda Pétrea",
	"* Variación 1 (Los Cinco Soles): destruid los soles de fuego; al morir se transforman en esbirros.",
	"* Variación 2 (Strife y Peril): dos criaturas con escudo — detened los ataques hacia el que tenga MÁS cargas y cambiad el foco.",
	"* Si golpeáis al que está al máximo de cargas, desatará una explosión letal.",
};
pack["59051"] = bos; pack["59726"] = bos; pack["58826"] = bos;

pack["56732"] = { "Liu Corazón de Llama",
	"* Fase 1 (Dragón): esquivad las líneas de fuego en cruz desde su posición.",
	"* Fase 2 (Serpiente): deja un debufo de curación en el tanque — sanadores atentos.",
	"* Fase 3: invoca la esencia de Yu'lon — IGNORAD a Liu (inmune) y derrotad al dragón celestial mientras esquiváis las bolas de fuego del techo.",
};

pack["56439"] = { "Sha de la Duda",
	"* Aplica |cff71d5ff|Hspell:106113|h[Higo de Duda]|h|r a dos jugadores: el sanador lo DISIPA rápido.",
	"* Fase de Copias: se vuelve invulnerable e invoca un clon sombrío de CADA jugador.",
	"* Agrupaos y destruid todos los clones con AoE antes de que el Sha se cure.",
};

-- --------------------------------- --
-- Mogu'shan Palace : Zona 994 --
-- --------------------------------- --

bos = { "El Juicio del Rey",
	"* Tres campeones mogu en combate secuencial.",
	"* Kuai: el quilen Mu'Shiba muerde e inmoviliza — matadlo PRIMERO.",
	"* Ming: tornados que atraen — corred en dirección CONTRARIA; interrumpid sus casteos de relámpagos.",
	"* Haiyan: |cff71d5ff|Hspell:123655|h[Meteorito de Conmoción]|h|r — la banda se AGRUPA sobre el marcado para dividir el impacto.",
};
pack["61442"] = bos; pack["61444"] = bos; pack["61445"] = bos;

bos = { "Gekkan",
	"* Cinco jefes: Gekkan + 4 seguidores, cada uno le da un beneficio pasivo mientras viva.",
	"* Orden de matanza: Hexer (curandero) -> Ironhide (protector) -> resto de seguidores -> Gekkan.",
	"* Cada vez que muere un seguidor, Gekkan se enfurece +25% — el tanque usa defensivas fuertes.",
};
pack["61243"] = bos; pack["61337"] = bos; pack["61338"] = bos; pack["61339"] = bos; pack["61340"] = bos;

pack["61398"] = { "Rey de las Armas Xin",
	"* Activa trampas mecánicas por toda la sala según pierde vida.",
	"* Ballestas: hileras de espadas cruzan la sala — manteneos en los huecos vacíos.",
	"* Llamas: círculos concéntricos de fuego — alejaos de las zonas rojas antes de que detonen.",
	"* Al final: Rugido Incitador activa TODAS las trampas — usad velocidad y quemadlo ignorando el resto.",
};

-- --------------------------------- --
-- Siege of Niuzao Temple : Zona 1011 --
-- --------------------------------- --

pack["61567"] = { "Visir Jin'bak",
	"* El charco central de savia crece constantemente.",
	"* Pisad el charco brevemente para reducir su tamaño — sin acumular más de 3-4 cargas del debufo.",
	"* Eliminad rápido a las babosas que intentan llegar al charco para agrandarlo.",
};

pack["61634"] = { "Comandante Vo'jak",
	"* Un jugador lanza barriles de alquitrán sobre las oleadas de mántides para ralentizarlos.",
	"* Cuando Vo'jak sube al puente, limpiad sus cargas de armadura acumuladas.",
};

pack["61485"] = { "General Pa'valak",
	"* Al 65% y 35% se encierra en un escudo invulnerable y llama a esbirros.",
	"* Recoged las bombas con mecha que caen y lanzádselas al escudo para romperlo rápido.",
};

pack["62205"] = { "Líder de Escuadrón Ner'onok",
	"* Vuela entre extremos de la muralla y canaliza |cff71d5ff|Hspell:121443|h[Vientos de Ráfaga]|h|r que empuja hacia atrás.",
	"* Avanzad ESCONDIÉNDOOS tras los parapetos y muros para no caer al vacío.",
	"* Esquivad las bombas de moco verde.",
	"* Al llegar: interrumpid su casteo y quemadlo.",
};

-- --------------------------------- --
-- Scarlet Monastery (MoP) : Zona 1004 --
-- --------------------------------- --

pack["59789"] = { "Thalnos el Desgarrador de Almas",
	"* |cff71d5ff|Hspell:115297|h[Expulsar Alma]|h|r invoca los espíritus de los caídos Escarlata: interrumpidlo o matadlos rápido.",
	"* Evitad las zonas de sombra del suelo.",
};

pack["59223"] = { "Hermano Korloff",
	"* Esquivad su |cff71d5ff|Hspell:113764|h[Patada de la Grulla]|h|r moviéndoos hacia atrás.",
	"* Su |cff71d5ff|Hspell:114460|h[Tormenta de Fuego]|h|r genera líneas de fuego: alejaos de su frontal.",
};

pack["60040"] = { "Inquisidora Whitemane y Comandante Durand",
	"* Primero lucháis contra Durand; al vencerlo aparece Whitemane.",
	"* Cuando ella tenga poca vida, REVIVIRÁ a Durand al 100% con su |cff71d5ff|Hspell:113134|h[Resurrección Masiva]|h|r.",
	"* Prioridad: interrumpid las curas y el control mental de Whitemane.",
	"* El tanque mantiene a Durand apartado mientras la banda elimina a Whitemane primero.",
};

-- --------------------------------- --
-- Scarlet Halls : Zona 1001 --
-- --------------------------------- --

pack["59303"] = { "Hermano Braun",
	"* Al inicio de la zona, recoge un cubo de carne y lanzáselo a los perros para que se ataquen entre ellos.",
	"* Durante el jefe: oleadas de canes — DPS los eliminan en área.",
	"* El tanque lo gira para evitar su ataque frontal en arco.",
};

pack["58632"] = { "Armero Harlan",
	"* Cuando active |cff71d5ff|Hspell:111216|h[Filotormenta]|h|r, gira por la sala persiguiendo jugadores.",
	"* Corred a los BORDES y poneos detrás de las columnas de piedra para bloquear la línea de visión.",
};

pack["59150"] = { "Tejedor de Llamas Koegler",
	"* Pisad los charcos de fuego de los libros incendiados para apagarlos antes de que quemen toda la biblioteca.",
	"* Interrumpid OBLIGATORIAMENTE su |cff71d5ff|Hspell:113690|h[Aliento de Dragón]|h|r: desorienta e inflige daño inmenso.",
};

-- --------------------------------- --
-- Scholomance : Zona 1007 --
-- --------------------------------- --

bos = { "Instructora Corazón Gélido",
	"* Fase 1: esquivad el libro de hielo que gira por la sala y el muro de escarcha.",
	"* Fase 2: su alma se mete en su filacteria — quemadlo mientras esquiváis las almas malditas que explotan.",
};
pack["58633"] = bos; pack["58664"] = bos;

pack["59184"] = { "Jandice Barov",
	"* Desaparece y crea decenas de clones idénticos por toda la sala.",
	"* Buscad e interactuad SOLO con el clon que tenga el rostro REAL de Jandice (los falsos tienen caras fantasmales).",
};

pack["59153"] = { "Traquesangre",
	"* Gana acumulaciones de daño cada vez que golpea al tanque.",
	"* Interactuad con las pilas de huesos azules de la sala para obtener un escudo óseo que lo contrarresta.",
};

pack["58722"] = { "Lilian Voss",
	"* Alterna entre su cuerpo físico y su alma ardiente de sombras.",
	"* El fijado por su alma KITEA lejos del grupo para no propagar el fuego morado.",
};

pack["59080"] = { "Maestro Oscuro Gandling",
	"* Teletransporta jugadores a salas de pruebas individuales llenas de zombis.",
	"* El teletransportado mata rápido a los esbirros de su sala (o los disipa si eres sanador) para abrir la puerta.",
};

-- --------------------------------- --
-- Shado-Pan Monastery : Zona 959 --
-- --------------------------------- --

pack["56747"] = { "Gu Golpe Nube",
	"* Cuando el dragón cargue energía (Fase de Tormenta): DEJAD de atacar a Gu y focad al DRAGÓN.",
	"* Si golpeáis a Gu con el escudo eléctrico activo, causaréis explosiones que matan a vuestros compañeros.",
};

pack["56541"] = { "Maestro Ventisca",
	"* Si activa su postura defensiva, NO le peguéis de frente.",
	"* Esquivad sus patadas giratorias saliendo de su círculo.",
	"* Destruid rápido las copias de humo que invoca por las esquinas del dojo.",
};

pack["56719"] = { "Sha de la Violencia",
	"* Interrumpid su casteo de |cff71d5ff|Hspell:106872|h[Púas de Odio]|h|r.",
	"* Cuando lance Huelga de Humo, se vuelve inmune al daño crítico: salid de las nubes grises para recuperar vuestro daño.",
};

pack["56884"] = { "Taran Zhu",
	"* Recibir daño llena tu barra de ODIO, que reduce tu precisión y daño.",
	"* Usad el botón especial MEDITAR para vaciar la barra — te deja inmóvil unos segundos, buscad un momento seguro.",
	"* Interrumpid |cff71d5ff|Hspell:107356|h[Odio Creciente]|h|r o hace mucho daño.",
};

-- --------------------------------- --
-- Stormstout Brewery : Zona 961 --
-- --------------------------------- --

pack["56637"] = { "Ook-Ook",
	"* Lanza barriles rodantes que cruzan la sala — esquivadlos.",
	"* MEJOR: haced clic sobre un barril para SUBIROS y guiarlo contra el jefe.",
	"* Estrellar un barril contra Ook-Ook le inflige gran daño y aumenta el que recibe.",
};

pack["56717"] = { "Saltadizo",
	"* Canaliza un |cff71d5ff|Hspell:112992|h[Furia Giratoria]|h|r que destroza a los melés — alejaos.",
	"* Durante las oleadas de conejos: recoged los martillos dorados del suelo para activar un botón especial que limpia a las plagas en área.",
};

pack["59479"] = { "Yan-Zhu el Aliento de Cerveza",
	"* Si te marca con el rayo de |cff71d5ff|Hspell:106546|h[Burbujas]|h|r: SALTAD constantemente para romperlas antes de que os asfixien.",
	"* Esquivad los muros de levadura y los elementales burbujeantes que intentan curar al jefe.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["62346"] = { "Galeón",
	"* Gigantesco mushan con cañón: dispara ráfagas de artillería a zonas aleatorias.",
	"* La banda muy DISPERSA y moviéndose rápido para salir de los círculos de fuego antes del impacto.",
	"* Hozens armados saltan de su espalda: el tanque secundario los agrupa de inmediato y los DPS los eliminan en área.",
	"* Suelta la montura Mushan de batalla de Salyis.",
};

pack["60491"] = { "Sha de la Ira",
	"* Kun-Lai: |cff71d5ff|Hspell:119622|h[Grito de Furia]|h|r infecta a varios jugadores con control mental.",
	"* Los DPS usan control de masas (stuns, raíces) sobre los compañeros dominados para que no maten a la banda.",
	"* Nubes de Ira en el suelo: NO las pises — silencia a quien esté dentro.",
	"* Suelta la montura Dragón nimbo de cobalto celestial.",
};

pack["69099"] = { "Nalak, el Rey de la Tormenta",
	"* Isla del Trueno: |cff71d5ff|Hspell:136339|h[Atadura de Relámpagos]|h|r vincula jugadores con un rayo.",
	"* Los atados corren en dirección OPUESTA al jefe para romper el vínculo — cerca de Nalak el rayo es letal.",
	"* Cuando eleve su daño ambiental por las tormentas: los sanadores usan sus CDs de curación en área más fuertes.",
	"* Suelta el Dragón nimbo de cobalto atronador.",
};

pack["69161"] = { "Oondasta",
	"* Isla de Gigantes: el 'rompe-bandas' por su daño absurdo.",
	"* |cff71d5ff|Hspell:137504|h[Machacar]|h|r reduce la armadura del tanque un 99%: OBLIGATORIO dos tanques que se intercambien.",
	"* Haz Alfa: rayo que salta al compañero más cercano DUPLICANDO el daño con cada rebote — esparzaos por completo, mínimo 10 metros entre jugadores.",
	"* |cff71d5ff|Hspell:137457|h[Rugido Perforante]|h|r silencia a la banda.",
	"* Suelta el Cobalto primigenio.",
};

pack["71952"] = { "Chi-Ji",
	"* Celestial (Isla Temporal, la Grulla): ráfagas de fuego y grullas de luz que cruzan la arena.",
	"* Esquivad la trayectoria de las aves.",
	"* Alejaos del jefe cuando use su canto en área.",
};

pack["71954"] = { "Niuzao",
	"* Celestial (Isla Temporal, el Buey): una prueba de aguante.",
	"* Carga contra jugadores infligiendo daño MASIVO que se reduce cuanta más salud total tenga el objetivo.",
	"* El tanque lo orienta lejos de la banda y usa mitigaciones fuertes durante sus pisotones terráneos.",
};

pack["72057"] = { "Ordos",
	"* Dios del Fuego yaungol (Isla Temporal, santuario de la parte alta).",
	"* |cff71d5ff|Hspell:144688|h[Magma Antiguo]|h|r: meteoritos de millones de daño — la banda ENTERA se agrupa en un punto para dividir el impacto.",
	"* |cff71d5ff|Hspell:144695|h[Alma de Fuego]|h|r: el marcado corre INMEDIATAMENTE lejos de la banda para estallar a solas.",
};

pack["71953"] = { "Xuen",
	"* Celestial (Isla Temporal, el Tigre): extremadamente ágil.",
	"* Salta constantemente a los jugadores a distancia dejando líneas de energía.",
	"* La banda se esparce; los tanques lo mueven cuando la arena se llene de grietas eléctricas.",
};

pack["71955"] = { "Yu'lon",
	"* Celestial (Isla Temporal, la Serpiente): posicionamiento clásico de dragón.",
	"* NUNCA os pongáis frente a su cabeza (aliento de fuego) ni detrás (latigazos de cola).",
	"* Los DPS se mueven constantemente para no quemarse con los charcos de lava.",
};

bos = { "Señores de Guerra Zandalari",
	"* Jefes de mundo (varias zonas): |cff71d5ff|Hspell:138042|h[Lluvia de Meteoritos]|h|r — rocas del cielo, moveos.",
	"* |cff71d5ff|Hspell:138040|h[Visaje Horrífico]|h|r: miedo de área.",
};
pack["69768"] = bos; pack["69769"] = bos; pack["69841"] = bos; pack["69842"] = bos;

P.es = es;