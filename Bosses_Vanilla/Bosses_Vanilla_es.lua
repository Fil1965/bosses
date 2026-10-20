--[[
	Bosses_Vanilla_es.lua
		Datos en español del pack Vanilla (Classic) (solo datos; el
		registro lo hace Bosses_Vanilla.lua, que se carga después en
		el .toc).
		Fuentes: DBM-Party-Vanilla y LittleWigs_Classic de _doc + los
		nombres del journal (_nombres/jefes-Bosses_Vanilla.json).
		Poblado por tandas (2026): empieza por Sima Ígnea clásica.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- Formato de entrada (una por jefe, NPC ID decimal del campo 6 del GUID):
-- pack["NPC_ID"] = { "Nombre del jefe", "* consejo 1", "* consejo 2" };

-- ============================= --
-- Ragefire Chasm : Zona 389 (clásica) --
-- ============================= --
-- Los CIDs 11517-11520 son los jefes del cliente Era; la remasterización 12.x
-- usó CIDs nuevos (61408+, pendiente de información para redactar).

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

-- ============================================================= --
-- Ragefire Chasm : Zona 389 (re-hecha del retail desde Mists; los clásicos son las CIDs 11517-11520) --
-- ============================================================= --
-- Con la táctica facilitada por el dueño (búsqueda Wowhead vía chat) --
pack["61408"] = { "Adarogg",
	"* Fija la vista en un jugador y embiste su posición (Carga infernal): pega a cuantos esté a su paso o junto al impacto; el marcado corre fuera del eje y el grupo no lo cruza.",
	"* Su Aliento de llamas prende a un objetivo al azar: los sanadores pendientes."
};
pack["61412"] = { "Chamán oscuro Koranthal",
	"* Sus Elementos retorcidos (daño de Sombras, se interrumpe): cada cast evitado es daño que no llega.",
	"* Su Tormenta de sombras castiga con lluvia mágica en área: repartidos y sanadores pendientes."
};
pack["61463"] = { "Faucescoria",
	"* Combate introductorio sencillo: escupe lava sobre la zona de un jugador al azar y castiga dentro (3 m): se aparta del proyectil.",
	"* Tras cinco escupitajos exactos se sumerge y reaparece en otro extremo de la plataforma: reajustar posiciones al emerger.",
	"* Su caja de colisión es gigantesca: el cuerpo a cuerpo le pega cómodo desde la plataforma sin asomarse al precipicio de lava."
};
pack["61528"] = { "Guardia de lava Gordoth",
	"* Su Golpe sísmico y su Rotura del suelo castigan el área cercana con daño físico y empuje: tanque y cuerpo a cuerpo cuidan no quedar empujados a precipicios y no se apretujan.",
	"* A partir del 30% de vida entra en furia (+30% de velocidad de ataque y +10% de daño): carrera final de daño con curación pendiente."
};

-- ============================================================= --
-- Wailing Caverns : Zona 43 (clásica) --
-- ============================================================= --
-- Los cuatro druidas de la zona (Señores de Colmillos) comparten el
-- mismo patrón: una siesta y una sanación interrumpibles; solo Cobrahn
-- añade un veneno disipable. Mutanus y su cántico son la pelea seria.

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

-- ============================================================= --
-- The Stockade : Zona 34 (clásica) --
-- ============================================================= --
-- Los seis clásicos son peleas de cuerpo a cuerpo sin habilidades
-- señaladas por el DBM; solo Bazil Thredd añade prisioneros.

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

-- The Stockade : Zona 34 (re-hecha del retail moderno; los clásicos van con sus CIDs 1663-1720 de siempre) --
pack["46254"] = { "Hogger",
	"* El villano legendario de Elwynn, ahora cabeza del motín: interrumpid su |cff71d5ff|Hspell:86620|h[Llamada demencial]|h|r.",
	"* El resto es cuerpo a cuerpo: el DBM no señala más mecánicas."
};
pack["46264"] = { "Lord Quemado",
	"* Bola de fuego directa al tanque (Fuego): rutina normal de tanque y sanos.",
	"* Su Lluvia de fuego deja un punto hirviendo 9 segundos: todo el que esté a 5 metros o menos se cocina - salid del charco en cuanto cae.",
	"* El Sobrecalentamiento quema a un jugador al azar: golpe de Fuego al instante y una quemadura que pega cada 3 segundos durante 9 (más daño cuanto más poderoso sea el jefe): es mágico, disipadlo a tiempo."
};
pack["46383"] = { "Randolph Moloch",
	"* El jefe final del remaster, a la cabeza de los convictos rebeldes al fondo del túnel principal.",
	"* Puñaladas salvajes: entra en un frenesí de apuñalones a velocidad extrema (un golpe cada 0,3 s) aunque afloja su precisión un 35% mientras dura: el tanque aguanta el chaparrón.",
	"* Su Barrido es una rajada frontal que golpea al tanque y al aliado más cercano: nadie se le plante delante ni se pega al tanque.",
	"* Esfumarse: al cruzar los 70-60% y los 40-30% de vida desaparece y reaparece por sorpresa tras un jugador al azar: el tanque recupera la amenaza rápido."
};

-- ============================================================= --
-- Blackfathom Deeps : Zona 48 --
-- ============================================================= --
-- El combate cambia de era: las CIDs clásicas (4829-4887, 6243) son el
-- cliente Era; las 20xxxx la re-hecha de SoD (tácticas del dueño) y las
-- 74xxx/75xxx la del journal actual, que además cambió el reparto de
-- jefes (Bathiel, Veredugo Gore, Thruk... con tácticas pendientes).

-- (Re-hecha de SoD: la del cliente Era, CIDs 4829-4887, es más simple)
pack["202699"] = { "Barón Aquanis",
	"* La banda se reparte por la plataforma para que sus tormentas eléctricas no dañen en cadena; el cuerpo a cuerpo y el tanque se quedan pegados a él.",
	"* Con su |cff71d5ff|Hspell:404806|h[Carga de profundidad]|h|r mete una carga mortal en un jugador: el marcado se lanza al agua enseguida para que la explosión no dañe ni empuje a la banda.",
	"* Cuidado al caer al agua: hay tornados que empujan hacia abajo; el cuerpo a cuerpo sube con los orbes de velocidad o a saltos, y los tiradores pueden quedarse abajo dañando sin problema."
};
-- (Re-hecha de SoD/journal actual; el clásico va con la CID 4887)
bos = { "Ghamoo-Ra",
	"* Arranca con un caparazón que reduce drásticamente todo el daño que recibe: cada golpe y hechizo lo desgasta, así que se machaca con daño constante hasta reventarlo.",
	"* Al romper el caparazón estalla con daño a toda la banda (los sanadores lo mitigan) y queda expuesto: el momento de estallar los cooldowns de daño.",
	"* Sus |cff71d5ff|Hspell:407077|h[Triple mordisco]|h|r caen sobre el tanque: sanadores pendientes de su vida."
};
pack["201722"] = bos;
pack["74446"] = bos;
-- (Versión del cliente Era; la re-hecha de SoD, CIDs 201722/74446, mete el caparazón)
pack["4887"] = { "Ghamoo-Ra",
	"* Combate directo de tanque y daño: su |cff71d5ff|Hspell:5568|h[Pisotear]|h|r sacude a los cercanos al jefe; el cuerpo a cuerpo aguanta pegado y el resto reparte."
};
bos = { "Lady Sarevess",
	"* Va escoltada por guardias élite: control de masas a los esbirros (polimorfia, trampas) y el daño se concentra en ella.",
	"* Su |cff71d5ff|Hspell:407546|h[Flecha congelante]|h|r apaga al que la come (el sanador la libera disipando) y, cuando apunta el |cff71d5ff|Hspell:407653|h[Relámpago bifurcado]|h|r, el marcado se aparta del grupo.",
	"* Si invoca la |cff71d5ff|Hspell:407791|h[Rabia de Aku'mai]|h|r sobre un jugador, se disipa en cuanto el sanador la vea; sus zonas de daño en el suelo se esquivan."
};
pack["4831"] = bos;
pack["204068"] = bos;
-- (Versión del cliente Era; la re-hecha de SoD, CID 204921, añade fases)
pack["6243"] = { "Gelihast",
	"* Combate directo: su principal fastidio es la |cff71d5ff|Hspell:6533|h[Red]|h|r que saca a alguien del combate unos segundos (se rompe o se disipa); por lo demás, tanque y daño."
};
-- (Re-hecha de SoD; la del cliente Era, CID 6243, no tiene fases)
bos = { "Gelihast",
	"* El combate alterna daño y transición: cada vez que pierde cerca del 30% de vida se vuelve inmune en el centro de la sala.",
	"* En la transición aparecen tentáculos de sombra y proyecciones que cruzan la sala: se esquivan o se destruyen los tentáculos hasta que vuelva a ser dañable.",
	"* Su |cff71d5ff|Hspell:411956|h[Maldición de las profundidades]|h|r se quita disipando maldiciones y con la |cff71d5ff|Hspell:412456|h[Marcha de murlocs]|h|r llegan oleadas desde los lados: se limpian rápido."
};
pack["204921"] = bos;
-- (Re-hecha de SoD; en el journal no aparece el clásico)
pack["207356"] = { "Lorgus Jett",
	"* La prioridad absoluta son sus tótems: poca vida y efectos brutales; se destruyen al instante (el |cff71d5ff|Hspell:419636|h[Tótem de furia fundida]|h|r pega en área y el |cff71d5ff|Hspell:414691|h[Tótem de furia del viento]|h|r acelera a los de su bando).",
	"* Si arranca una curación, tanque o cuerpo a cuerpo la interrumpen en cuanto esté a mano.",
	"* Aplica un perjuicio al tanque que sube el daño recibido: exige relevo de tanque durante el combate."
};
-- (Versión del cliente Era; la re-hecha de SoD, CID 209678, tiene el Mundo de las Sombras)
pack["4832"] = { "Señor Crepuscular Kelris",
	"* En el cliente Era es un combate sencillo: se disipa el |cff71d5ff|Hspell:8399|h[Dormir]|h|r que lanza sobre un jugador al azar y sigue tanque y daño."
};
-- (Re-hecha de SoD; la del cliente Era, CID 4832, es más simple)
bos = { "Señor Crepuscular Kelris",
	"* Fase 1 (del 100% al 35%): manda a dos jugadores al Mundo de las Sombras; allá matan rápido a los sacerdotes fantasma para abrir el portal y volver arriba; en la superficie se interrumpe SIEMPRE su cadena de relámpagos.",
	"* Fase 2 (por debajo del 35%): entra en enfurecimiento y ya no manda a nadie abajo; carrera de daño con una Poción de protección contra las Sombras tomada antes o durante la fase: el continuo daño de sombra revienta a la banda.",
	"* Su |cff71d5ff|Hspell:423135|h[Dormir]|h|r sigue apagando a alguien al azar: se disipa."
};
pack["209678"] = bos;
-- (Versión del cliente Era; la re-hecha, CIDs 213334/75408, cambia a dos fases)
pack["4829"] = { "Aku'mai",
	"* Combate directo con veneno: su |cff71d5ff|Hspell:3815|h[Nube de veneno]|h|r se queda donde él esté; el tanque la aleja del grupo y nadie la pisa.",
	"* Al ir muriendo entra en |cff71d5ff|Hspell:3490|h[Furia frenética]|h|r y pega más rápido: los sanadores suben el ritmo."
};
-- (Re-hecha de SoD/journal actual; el clásico va con la CID 4829)
bos = { "Aku'mai",
	"* Fase 1 (forma de hidra): el tanque principal acumula su perjuicio de veneno; el segundo tanque la provoca al tercer o cuarto acumulado para que el primero se limpie tocando las fuentes elementales de la sala (sacan un esbirro que se mata al momento).",
	"* Se esquiva cuando mete la |cff71d5ff|Hspell:429168|h[Ráfaga corrosiva]|h|r: el marcado se aparta del cono.",
	"* Fase 2 (forma del vacío, a partir del 50%): sube el daño físico y mete ráfagas oscuras (la |cff71d5ff|Hspell:429359|h[Ráfaga del Vacío]|h|r se esquiva igual); los tanques siguen rotando con más margen y la banda quema los cooldowns para rematarla."
};
pack["213334"] = bos;
pack["75408"] = bos;
pack["4830"] = { "Viejo Serra'kis",
	"* Combate cuerpo a cuerpo sencillo en el agua baja del pozo de la sala: el tanque lo aguanta, el cuerpo a cuerpo vigila sus venenos y el grupo reparte daño normal."
};

-- ============================================================= --
-- Razorfen Downs : Zona 129 --
-- ============================================================= --
-- Mordresh cuida el cementerio: su pelea (la info es del dueño) vale igual
-- para el cliente Era (7357) y para la remasterización SoD (74347).
bos = { "Mordresh Ojo de Fuego",
	"* Pelea sobre un montículo de huesos entre un enjambre de esqueletos no élites: el tanque arranca con área para cogerlos todos, los agrupa y se limpian primero; sin prisa por pegar al jefe.",
	"* Cuando lanza su bola de fuego, tanque o cuerpo a cuerpo lo interrumpen: cada cast evitado es menos daño entrante.",
	"* El sanador espera unos segundos a que el tanque asegure el aggro del enjambre antes de curar con fuerza: la curación temprana puede arrancar a los esqueletos y reventar el pull.",
	"* Su onda de fuego (|cff71d5ff|Hspell:12470|h[Onda de fuego]|h|r) barre al melé a su pie: salir del radio."
};
pack["7357"] = bos;
pack["74347"] = bos;

-- Razorfen Downs : Zona 129 (clásica) --
-- Las cinco CIDs clásicas restantes; kits del DBM Classic\RazorfenDowns y
-- nombres del corpus (fuente dbm de la era). Mordresh 7357 va arriba compartido.
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

-- ============================================================= --
-- Blackfathom Deeps : Zona 48 (remake retail) --
-- ============================================================= --
-- (CIDs del remake del journal actual; la re-hecha SoD y las del cliente Era van más arriba)
bos = { "Señor Crepuscular Bathiel",
	"* Deja partes suyas regadas por la sala con Círculos de agua restauradora: si él alcanza uno se lo bebe y recupera un 5% de su vida, y si uno revienta estalla con daño de Escarcha a 5 m (Ráfaga acuosa); vigilar los círculos y no regalarle el agua.",
	"* Su Lluvia perforadora castiga cada segundo con daño de Escarcha a objetivos al azar: daño constante que los sanadores van enjugando."
};
pack["74728"] = bos;
bos = { "Domina",
	"* Su Tempestad impía castiga cada segundo con daño de las Sombras a objetivos al azar: daño constante; los sanadores marcan el ritmo.",
	"* Sus Fauces de muerte barren el cono frontal con daño de las Sombras en oleadas durante 2 s: el tanque la espalda al grupo y nadie se cuela delante."
};
pack["74476"] = bos;
bos = { "Subyugador Kor'ul",
	"* Su Puño del leviatán machaca a un enemigo con daño físico cada segundo durante 8: el sanador se pega a ese objetivo.",
	"* Su Llamado a la oscuridad invoca a Aku'mai para dar de comer: la entrada de Aku'mai rige igual para el esbirro."
};
pack["74565"] = bos;
bos = { "Verdugo Gore",
	"* Su Oscuridad devoradora (se interrumpe) inmoviliza a un objetivo y le purga la vida cada 0,8 s durante 6, transfiriéndosela a él: interrumpirlo siempre que esté a mano; si entra, el sanador compensa el drenaje.",
	"* Su Golpe del verdugo clava el hacha: daño de las Sombras a todos, con extra en el cono frontal, y deja un vórtice persistente que castiga a quien se quede: frontal lejos del grupo y fuera del vórtice."
};
pack["74988"] = bos;
bos = { "Thruk",
	"* Su Pesca del día lanza el sedal sobre un jugador al azar hasta 45 m y lo arrastra a sus pies: el enganchado se aparta en cuanto se suelta y nadie se cruza con la tracción.",
	"* Su Filete de carne golpea el suelo con el arma: 500% de daño de arma a todos los enemigos dentro de 10 m; repartidos alrededor y sanadores preparados."
};
pack["74505"] = bos;
bos = { "Guardián de las profundidades",
	"* Sus sacos de Nube de esporas caen en zonas al azar con daño físico y sueltan una camada de proles: fuera de las manchas y las proles se limpian rápido.",
	"* Se Devora a un Reptador de esquisto azul cercano recuperando el 25% de su vida: los reptadores de la sala no quedan de pie a su alcance.",
	"* Su Canto ensordecedor castiga a toda la sala: daño de área constante; sanadores pendientes."
};
pack["75410"] = bos;

-- ============================================================= --
-- Razorfen Downs : Zona 129 (re-hecha del retail moderno) --
-- ============================================================= --
-- (Reemplazos del retail moderno; los clásicos de la zona van con sus CIDs de siempre)
bos = { "Aarux",
	"* Su Filamento de telaraña engancha a un jugador a distancia, lo arrastra a su rango cuerpo a cuerpo y le aplica al momento la Mordedura infestada (daño de Naturaleza durante 10 s y -50% de velocidad): el sanador lo limpia o lo cura con prisa.",
	"* Sus Pústulas estallantes revientan con daño de Naturaleza a los cercanos: distancia y repartidos."
};
pack["74412"] = bos;
bos = { "Fárrago",
	"* Combate físico directo: su Pisotón castiga a todo el grupo y puede trastrocar los lanzamientos: sanadores pendientes y cuidado con tirar por el momento.",
	"* Suelta esbirros de baba y zombis a deshoras: el tanque los agarra enseguida y el daño (al tiempo o en área) los limpia antes de que arremetan contra el sanador."
};
pack["74435"] = bos;
bos = { "Portavoz de la muerte Espina Negra",
	"* Sus descargas (sombras y relámpago) saltan de jugador en jugador: interrumpir los lanzamientos en cuanto esté a mano.",
	"* Abre zonas oscuras en el suelo: salir de ellas al momento, castigan a quien se quede.",
	"* De vez en cuando se blinda con su Escudo de almas y canaliza mientras dura: reventar la barrera con daño directo para cortar la canalización."
};
pack["74875"] = bos;
-- (Amnennar re-hecha de la reestructuración del retail; su clásico 7358
-- solo lanzaba Descarga de Escarcha, Nova de Escarcha y llamaba esbirros)
bos = { "Amnennar el Gélido",
	"* La aliada Koristrasza abre charcos de Terreno redimido: kitéadle encima para que el terreno lo Abrume y lo deje aturdido 6 segundos.",
	"* Su Parasitar alma drena al marcado (el 75% del drenaje se va a él) y castiga de Sombras a los cercanos: el marcado que pise el Terreno redimido limpia el perjuicio de golpe, y a él también lo aturde.",
	"* Su Bomba congelada estalla en un charco de Escarcha salpicador: apartaos del gélido en cuanto cae."
};
pack["74434"] = bos;

-- ============================================================= --
-- Blackrock Depths : Zona 2792 (banda 10-15 del remaster) --
-- ============================================================= --
-- (Ciudad Negra en banda del remaster del aniversario, 10-15 jugadores;
-- la clásica como mazmorra irá con sus CIDs de siempre)
pack["226315"] = { "Lord Roccor",
	"* Pisotón terrestre: aturde 2 segundos a todo el grupo a 20 metros: no vale el montón en el salón.",
	"* Choque de Tierra golpea a quien esté lanzando un hechizo: los lanzadores cogen margen.",
	"* Choque de llamas: daño de Fuego al momento y quemadura cada 3 segundos durante 12: los curanderos pendientes del quemado."
};
pack["226303"] = { "Bael'Gar",
	"* Salpicadura de magma: quemadura cada 3 segundos durante 24, se acumula hasta 3 veces sobre el tanque: rotación de tanques o purga si hay a mano.",
	"* Invocar prole: explosión de Fuego al azar con un esbirro de lodo de regalo: el tanque lo agarra y se remata enseguida."
};
pack["226304"] = { "Lord Incendius",
	"* Maldición del señor elemental: corta 100-132 de resistencia al Fuego, 30 segundos y hasta tres veces: el marcado se aparta de las llamas.",
	"* Arremetida poderosa: golpe que despacha al tanque hacia atrás con fuerza (lava por todos lados): espalda con pared.",
	"* Tormenta de Fuego castiga el área cercana durante 30 segundos y su Ráfaga ígnea rueda 20 metros: el cuerpo a cuerpo sale y los curanderos tapan el golpe."
};
-- (el corpus aparea esta entrada por los trons 230219/230217/230218; el comentario
-- del DBM añade el Golem Lord 226306 y Magmatron 230216)
bos = { "Señor Gólem Argelmach",
	"* Cadena de relámpagos salta entre los cercanos: repartidos mientras dura.",
	"* Pelea junto a dos de sus construcciones de forma activa: el tanque las separa y reparte el agarre.",
	"* Ojo en esta banda: su alma puede posesionar a los gólems caídos del salón; un cuerpo derribado no siempre cierra la pelea."
};
pack["226306"] = bos;
pack["230219"] = bos;
pack["230216"] = bos;
pack["230217"] = bos;
pack["230218"] = bos;
bos = { "Los Siete",
	"* Oleadas de siete enanos fantasma en el salón de la forja, uno tras otro, cada uno con el kit de su clase clásica.",
	"* El guerrero Anger'rel: Golpe heroico y Hendidura de armadura al tanque, con Grito de batalla y Ola de choque en sus tiempos.",
	"* El brujo Doom'rel: Descarga de las Sombras y Maldición de agonía, invoca Súcubo o Clamavelo y mete Miedo: disipad el Miedo y rematad al invocado.",
	"* El pícaro Dope'rel: Gubia envenenada mordiendo por la espalda y Esfumarse: que nadie quede de espaldas sueltas.",
	"* El chamán Gloom'rel: tótems, Choque de Tierra y purga de beneficios: los tótems caen en cuanto brotan.",
	"* El mago Hate'rel: Descarga de Escarcha, Ventisca y Polimorfia: cortad el Polimorfia y salid de la Ventisca.",
	"* El cazador Seeth'rel: dispara de lejos, siembra trampas y suelta una mascota salvaje: cerrad la distancia con cuidado.",
	"* El sacerdote Vile'rel: cura a los suyos con Sanación relámpago, se pone Palabra de poder: escudo y lanza Mentalizar: interrupciones a sus curas lo primero."
};
pack["226307"] = bos;
pack["226310"] = bos;
pack["226309"] = bos;
pack["226313"] = bos;
pack["226311"] = bos;
pack["226312"] = bos;
pack["226308"] = bos;
pack["226316"] = { "General Forjira",
	"* Hendidura de armadura va desvistiendo al tanque acumulando: rotación de tanques si se apila.",
	"* Ráfaga: los críticos le aceleran la mano, y su Enfurecer sube el castigo físico: los curanderos aguantan la racha con él.",
	"* ¡Alerta de intruso! al 40%: llama a los refuerzos de la fortaleza (Reservistas y Médicos de los Yunquezar) y los médicos lo curan: matadlos primero, médicos antes que nadie."
};
pack["226302"] = { "Embajador Latifuego",
	"* Explosión de Fuego constante sobre los cuerpo a cuerpo: rotación o curas a ritmo.",
	"* Espíritus ardientes: invoca elementales por las runas de la sala; el que llega hasta él se sacrifica dándole +5% de daño y tamaño, hasta 50 cargas: cerradles el paso y rematadlos de camino."
};
-- (226314 es la Princesa Moira Bronzebeard; el diario aparea el nombre del
-- emperador a los dos ids)
bos = { "Emperador Dagran Thaurissan",
	"* Avatar de la Llama: 10 segundos completamente inmune a la magia y sus golpes añaden Fuego: los lanzadores contienen mientras dura.",
	"* Mano de Thaurissan: golpe de Fuego que aturde 5 segundos: mejor sin montón para no perder a varios a la vez.",
	"* Furia del Hierro: pasiva de su maza legendaria, encadena hasta 3 golpes extra y sube su crítico un 10% durante 5 segundos: el tanque aguanta la racha con curas.",
	"* La Princesa Moira Bronzebeard pelea a su lado: lo cura cada dos por tres y castiga con magia Sagrada y de Sombras: controladla o, si el grupo tira rápido, rematadla antes que a él."
};
pack["226305"] = bos;
pack["226314"] = bos;

-- Blackrock Depths : Zona 230 (clásica) --
-- 18 entradas clásicas (29 CIDs de la mazmorra); nombres del corpus del
-- journal; tácticas adaptadas del lote del remaster (los mismos combates).
-- Moira 8929 va EN PROSA en la entrada del emperador, como el resto de la casa.
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

-- ============================================================= --
-- Razorfen Kraul : Zona 47 (clásica) --
-- ============================================================= --
-- (Las CIDs 44xx y 4842 son las clásicas de siempre; las 75xxx y la 74462
-- son variantes del journal moderno con sus nombres element-1)
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
pack["75247"] = { "Groyat, el Cazador Ciego",
	"* La variante moderna del cazador ciego: peleón plano, el DBM no le señala nada."
};
bos = { "Roogug",
	"* Invoca retumbadores de tierra (|cff71d5ff|Hspell:8270|h[Retumbador de tierra]|h|r): el tanque los agarra y se rematan al momento."
};
pack["6168"] = bos;
pack["74948"] = bos;
pack["4420"] = { "Señor Supremo Colmicarnero",
	"* Canaliza un bombardeo en remolino (|cff71d5ff|Hspell:8259|h[Bombardeo en remolino]|h|r): interrumpidlo o, si se pasa, apartaos del azote mientras cae.",
	"* Encuentro duro: pega mucho y llega escoltado por dos guardianes; el tanque aparta la escolta y las curas aprietan."
};
pack["74462"] = { "Señor de la guerra Colmicarnero",
	"* La variante moderna del Colmicarnero supremo: peleón plano sin señales del DBM: tanque, remate y curas."
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
pack["75001"] = { "Cazador Colmihueso",
	"* Otro peleón plano del Kraul moderno: tanque, remate y sanos a la rueda."
};

-- ============================================================= --
-- Gnomeregan : Zona 90 (clásica y journal moderno) --
-- ============================================================= --
-- (Las CIDs 7xx y 6xxx son las clásicas de siempre; las 21xxxx son variantes
-- SoD/journal con el mismo nombre: entradas compartidas)
bos = { "Grubbis",
	"* Pelea plana señalada por el DBM: tanque, remate y curas, pendientes del esbirro que le sale al lado (su Chomper)."
};
pack["7361"] = bos;
pack["217280"] = bos;
bos = { "Radiactivo viscoso",
	"* Andanadas tóxicas (|cff71d5ff|Hspell:21687|h[Andanada tóxica]|h|r): veneno periódico a los cercanos; el limpiavenenos lo disipa y sigue."
};
pack["7079"] = bos;
pack["220007"] = bos;
bos = { "Electrocutor 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) y cadena de relámpagos (|cff71d5ff|Hspell:11085|h[Cadena de relámpagos]|h|r) son interrumpibles: cortadlos de raíz.",
	"* Su choque (|cff71d5ff|Hspell:11084|h[Choque]|h|r) castiga al tanque: curas pendientes."
};
pack["6235"] = bos;
pack["220072"] = bos;
bos = { "Golpeamasa 9-60",
	"* Pisoteo (|cff71d5ff|Hspell:10887|h[Pisoteo]|h|r): remate que lanza a los cuerpo a cuerpo por los aires: solo queda el tanque dentro, el resto fuera de rango.",
	"* Machaque en arco (|cff71d5ff|Hspell:8374|h[Machaque en arco]|h|r) sobre el tanque: rutina de tanque y curas."
};
pack["6229"] = bos;
pack["215728"] = bos;
bos = { "Mekigeniero Termochufe",
	"* Coloca una bomba viva a un jugador al azar (|cff71d5ff|Hspell:11518|h[Bomba viva]|h|r): el marcado corre lejos del grupo hasta el estallido.",
	"* Su derribo (|cff71d5ff|Hspell:10101|h[Derribo]|h|r) despega al tanque: cuidado dónde cae.",
	"* En las versiones desde Cata añade un soplo de vapor interrumpible y golpea al tanque: cortad el soplo a tiempo."
};
pack["7800"] = bos;
pack["218538"] = bos;
pack["218970"] = bos;
pack["218972"] = bos;
pack["218974"] = bos;
pack["218537"] = bos;
bos = { "Animalario mecánico",
	"* Cuatro piezas mecánicas juntas: el dragón negro (STX-04/BD), el cordero (STX-13/LL), la ardilla (STX-25/NB) y la gallina (STX-37/CN).",
	"* Todas comparten Autorreparación y Cableado desgastado: remata rápido a cada pieza para que no se recupere, y no conviene ignorar el daño pasivo del cableado.",
	"* El cordero suelta su balido binario, la ardilla descarga artilugios, se sobrecalienta y se blinda con su escudo de nueces, y la gallina picotea entre cacareos: daño constante y a la siguiente."
};
pack["218242"] = bos;
pack["218243"] = bos;
pack["218244"] = bos;
pack["218245"] = bos;
-- (Animalario mecánico: el journal lleva el nombre del encuentro a las 4 piezas,
-- como Los Siete; habilidades traídas por el dueño, sin ids de hechizo ni links)

-- ============================================================= --
-- Monasterio Escarlata : Zona 189 (clásico) --
-- ============================================================= --
-- Alas: Cementerio (Vishas, Thalnos y el Fairbanks escondido),
-- Biblioteca (Loksey, Doan), Armería (Herod) y Catedral (Mograine y
-- Whitemane). El journal no trae la instancia: los nombres element-1
-- salen de la localization clásica del DBM; confirmados por el dueño
-- vía Wowhead (2026-10, cliente clásico).
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
	"* El bucle del combate: cuerpo al 1% → queda inmune y la CABEZA sale volando mientras el cuerpo se cura a su aire → TODO el foco a la Cabeza antes de que regrese; sale tres veces, y la tercera ya no vuelve: derribadla para acabar.",
	"* En la última vuelta del cuerpo llegan las Calabazas pulsantes (esbirros sin id): el tanque las retiene y la banda las corta con AoE."
};
pack["23682"] = bos;
pack["23775"] = bos;
-- Zona 349: Maraudon (dos ramas de entrada que convergen ante el salón
-- de la Princesa). Kit y CIDs del DBM Shared\Maraudon del _doc;
-- nombres element-1 del corpus 4 idiomas (journal).
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

-- Zona 70: Uldaman (la bóveda titánica bajo Tierras Devastadas). Kit y CIDs
-- del DBM Shared\Uldaman del _doc; nombres element-1 del corpus (journal;
-- el trío de enanos lleva el nombre del ENCOUNTER, sin corpus por pieza,
-- como la Menageria).
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

-- Zona 209: Zul'Farrak (la ciudad de las arenas de los trolls Cabelloarena
-- en Tanaris). Kit y CIDs del DBM Shared\ZulFarrak del _doc; nombres
-- element-1 del corpus (journal; la pareja Nekrum+Sezz'ziz lleva el nombre
-- del ENCOUNTER compartido, como la Menagerie); Guarda de Zum'rah 11086 y el
-- enrage de su mano derecha Ruuzlu 7797 (sin entrada propia) verificados por
-- el dueño vía Wowhead 2026-10.
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

-- Zona 109: Templo Sumergido (el Templo de Atal'Hakkar, en las Ciénagas de
-- la Lamentación), con las DOS eras: la clásica (kit del DBM Shared\SunkenTemple)
-- y la banda SoD a 10 del remake (DBM-Raids-Vanilla\VanillaSoD_SunkenTemple).
-- El clásico Zolo 5712 (mini-jefe opcional de la guardia Atal'ai, kit
-- confirmado por el dueño vía Wowhead 2026-10) entra SIN links (sin ids
-- verificados); Mandokir y su esbirro Ohgan no tienen id en el corpus: sin
-- entrada (hueco que pedir al dueño); Ogom (5711), guarda de Jammal'an en la
-- clásica, va en prosa (como Ruuzlu).

pack["5710"] = { "Jammal'an el Profeta", -- (era clásica)
	"* El profeta del salón, con su guarda Ogom (sin entrada propia) al lado: pelea de pareja en plaza.",
	"* Jammal'an planta su Tótem de agarre terrestre (|cff71d5ff|Hspell:8376|h[Tótem de agarre terrestre]|h|r) — enraíza a la banda — y marca con Maleficio de Jammal'an (|cff71d5ff|Hspell:12479|h[Maleficio de Jammal'an]|h|r) a un jugador, que aguarda cubierto; también suelta Ola de sanación (12492) y Llamarada (12468).",
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

pack["218624"] = { "Atal'alarion", -- (era SoD, banda a 10)
	"* El guardián de la primera puerta del remake: gigante plano y duro.",
	"* Sus Pilares de poder (|cff71d5ff|Hspell:437503|h[Pilares de poder]|h|r) castigan en cadencia fija (~12 s) y el Golpe demoledor (|cff71d5ff|Hspell:437597|h[Golpe demoledor]|h|r) cada ~27 s pilla a media banda: se corre DETRÁS de un pilar."
};

pack["218819"] = { "Baba putrefacta purulenta", -- (era SoD, banda a 10)
	"* El baba del canal: su Devorar (|cff71d5ff|Hspell:448824|h[Devorar]|h|r) engulle a un jugador O a los objetos de la sala (tambor, losa, máscara y vela) — el saneo lo sostiene.",
	"* Su Tiempo de baba (|cff71d5ff|Hspell:446311|h[Tiempo de baba]|h|r) se le apila: cuando se le QUITA se queda lento — ahí aprieta el DPS.",
	"* Lodo (|cff71d5ff|Hspell:438142|h[Lodo]|h|r) y Gases nauseabundos (|cff71d5ff|Hspell:438130|h[Gases nauseabundos]|h|r) en cadencia; el suelo castigado se esquiva."
};

-- Defensores Atal'ai (era SoD): los seis trolls del patio, cada uno con su
-- id; misma tabla para las seis.
bos = { "Defensores Atal'ai",
	"* La guardia troll del patio del remake: seis jefes SEGUIDOS, se tira uno a uno y cada CAÍDA saca a su contraparte muerta con el mismo kit (sin links) — las puertas de runa de los laterales se ignoran.",
	"* Zul'Lor 221640: su Carga (446369) antecede al Golpe corrupto (446372) — se esquiva tras la carga — y pinta Fragilidad (446364).",
	"* Mijan 218868: sus Espinas (438294) (magia) devuelven daño al cuerpo a cuerpo — se dispelean y la melé PARA — y su Ward de sanación (438335) cae; el Tótem de serpiente Atal'ai (445912) se revienta.",
	"* Zolo 221639: toda su magia se CORTA — Cadena de relámpagos (446338), Renovar (438341) y Ola de sanación (438339) — y su Tótem de esqueletos (446339) se revienta; el Barril inestable (445940) puede aturdir al tanque.",
	"* Gasher 221637: Hachas giratorias (445289) castiga al cuerpo a cuerpo y su Fervor (445284) se apila si la pelea se estira — se mata rápido.",
	"* Loro 221638: Grito desmoralizador (23511) en cadencia y Golpe de escudo (446354) al tanque.",
	"* Hukku 223586: Descarga de Sombras (446361) SIEMPRE corto y sus Guardianes (446360) caen al combate."
};
pack["221640"] = bos; -- Zul'Lor
pack["218868"] = bos; -- Mijan
pack["221639"] = bos; -- Zolo
pack["221637"] = bos; -- Gasher
pack["221638"] = bos; -- Loro
pack["223586"] = bos; -- Hukku

-- Guadañasueños y Sastrón (era SoD): pareja de dracos verdes.
bos = { "Guadañasueños y Sastrón",
	"* Pareja de dracos verdes del remake: se pilla a los dos en la misma sala.",
	"* El Aliento ácido (|cff71d5ff|Hspell:442622|h[Aliento ácido]|h|r) se APILA al tanque — se cambia con provocar tras cada cast — y el Batir de alas (|cff71d5ff|Hspell:442620|h[Batir de alas]|h|r) lo acompaña.",
	"* La Sacudida de alas (|cff71d5ff|Hspell:443766|h[Sacudida de alas]|h|r) lanza a volar: se aguanta pegado y lejos del borde.",
	"* Fase 2: Guadañasueños se blinda con su Guardia esmeralda (|cff71d5ff|Hspell:443302|h[Guardia esmeralda]|h|r) — se deshace a golpes y la fase 3 llega con las Sacudidas más seguidas."
};
pack["220833"] = bos; -- Guadañasueños
pack["220864"] = bos; -- Sastrón

pack["221394"] = { "Avatar de Hakkar", -- (era SoD, banda a 10)
	"* El dios serpiente del remake, en dos fases: primero el rito y luego la bestia.",
	"* Fase del espíritu: las Cadenas espirituales (|cff71d5ff|Hspell:443975|h[Cadenas espirituales]|h|r) marcan a un jugador con tirón — el encadenado SE APARTA — y el Aullido temeroso (|cff71d5ff|Hspell:443990|h[Aullido temeroso]|h|r) SIEMPRE corto, mientras los guardas de sangre Hakkari caen al rito.",
	"* Fase de la bestia: Nova de sangre (|cff71d5ff|Hspell:444050|h[Nova de sangre]|h|r) cada ~8 s, la Sangre corrupta (|cff71d5ff|Hspell:444253|h[Sangre corrupta]|h|r) salta de jugador a jugador — el marcado SE APARTA —, Insania (|cff71d5ff|Hspell:444039|h[Insania]|h|r) a un marcado, Maldición de lenguas (|cff71d5ff|Hspell:444046|h[Maldición de lenguas]|h|r) (maleficio) y el Drenar sangre (|cff71d5ff|Hspell:444132|h[Drenar sangre]|h|r): el marcado por la Sangre corrupta se coloca delante del tanque."
};

-- Jammal'an y Ogom (era SoD): pareja del salón, dos fases.
bos = { "Jammal'an y Ogom",
	"* La pareja del salón del remake, banda SoD: los dos trolls se devoran entre sí y el superviviente se empodera.",
	"* Fase 1: Castigo (437805) SIEMPRE corto; Nova sagrada (437817) se esquiva en radio y su Fuego sagrado (437809) (magia) cae en cadencia; Latigazo mortal (437847) al tanque y Debilidad agonizante (437868) a la banda.",
	"* Fase 2 (el devorado cae): Jammal'an con Gritos psíquicos (437928) (temor), su Sermón de Sombras: Dolor (437927) (magia), Palabra de poder: Escudo (437930) (se dispelea) y Penitencia masiva (437921); Ogom con Martillos de la Justicia (437915) (aturdimiento), Consagración (437884) — fuera del suelo — y Tormenta Divina (437920) (1,5 s de cast)."
};
pack["218721"] = bos; -- Jammal'an
pack["218718"] = bos; -- Ogom

-- Morphaz y Hazzas (era SoD): pareja de dracos de la fosa.
bos = { "Morphaz y Hazzas",
	"* La pareja de dracos de la fosa del remake: la pelea más larga del templo SoD.",
	"* El Aliento corrupto (|cff71d5ff|Hspell:446487|h[Aliento corrupto]|h|r) se APILA al tanque y las Llamas animadas (|cff71d5ff|Hspell:446661|h[Llamas animadas]|h|r) salen del suelo.",
	"* La fase va por Sueño lúcido: el primer canal de ~20 s (|cff71d5ff|Hspell:445235|h[Sueño lúcido]|h|r) manda a la banda al Ensueño — las llamas caen en mitad del cast; el segundo canal (4 s) llega ya rematado y tras el canal su Sueño eterno (|cff71d5ff|Hspell:446144|h[Sueño eterno]|h|r) de 30 s mata si la banda no escapa por el portal a tiempo."
};
pack["221942"] = bos; -- Morphaz
pack["221943"] = bos; -- Hazzas

pack["218571"] = { "Sombra de Eranikus", -- (era SoD, banda a 10)
	"* La jefa final del remake: el draco verde del Ensueño en la fosa.",
	"* El Aliento corrosivo (|cff71d5ff|Hspell:437353|h[Aliento corrosivo]|h|r) castiga al tanque — se cambia con provocar tras el cast — y el Sueño profundo (|cff71d5ff|Hspell:437301|h[Sueño profundo]|h|r) castiga la sala en cadencia.",
	"* Su Pesadilla despierta (|cff71d5ff|Hspell:437398|h[Pesadilla despierta]|h|r) cada ~66 s es letal: se corre HACIA el lugar del Sueño profundo y fuera del suelo castigado.",
	"* Su Veneno letárgico (|cff71d5ff|Hspell:437390|h[Veneno letárgico]|h|r) es veneno (se dispelea); a 70% y 40% salen sus esbirros del Ensueño (se marcan) y su Veneno letárgico en canal (|cff71d5ff|Hspell:437425|h[Veneno letárgico]|h|r) SIEMPRE corto, igual que el Bramido (|cff71d5ff|Hspell:445498|h[Bramido]|h|r)."
};

-- =========================== --
-- Zul'Gurub : Zona 309 (banda clásica) --
-- =========================== --
-- Sin instancia en el journal (igual que el Monasterio): no hay corpus y los
-- nombres element-1 van PROVISIONALES hasta confirmar el cliente; las CIDs
-- salen de los módulos VanillaZG del DBM-Raids-Vanilla. La banda se cierra
-- con la ficha Wowhead clásica del dueño (Mandokir y Ohgan 2026-10) y el
-- resto por kit del DBM; el ALTAR DE LA LOCURA (15083) queda FUERA: un solo
-- id del DBM para cuatro trolls rotativos sin nombre seguro — se pide al
-- dueño. Ojo: zonas[309] está comentada en _zonas — curarla a mano al cerrar
-- la banda.

pack["11382"] = { "Señor de la sangre Mandokir", -- (era clásica, opcional; kit del dueño)
	"* El señor de sangre de la plataforma: pelea de dos unidades, y el raptor Ohgan (14988) lleva su propia entrada.",
	"* Sus Cargas (sin id verificado) enganchan a los lejanos (8-30 m): un cazador lejos las come con Cadáver falso o un tirador señalado aguanta el golpe.",
	"* Su Torbellino castiga al cuerpo a cuerpo: se sale del radio en cuanto arranca.",
	"* Su Mirada amenazante (|cff71d5ff|Hspell:24314|h[Mirada amenazante]|h|r) marca a un jugador 6 s: ¡STOP total (cortes, daños y movimientos) o es golpe de muerte!",
	"* Cada 3 MUERTES de jugadores (espíritus encadenados) le crecen tamaño y daño: no morir es parte de la táctica.",
	"* Al caer Ohgan se le viene el Frenesí (|cff71d5ff|Hspell:24318|h[Frenesí]|h|r) de un minuto encima — se decide ANTES: derribar al raptor primero y aguantar su enfurecimiento con sanación fuerte, o dejarlo apartado con su tanque y matarlo al final."
};

pack["14988"] = { "Ohgan", -- (era clásica, raptor montura de Mandokir; kit del dueño)
	"* El raptor de Mandokir: al arrancar la pelea su jinete se desmonta y se separan — su tanque lo mantiene lejos de la banda.",
	"* Su Herida mortal (|cff71d5ff|Hspell:16856|h[Herida mortal]|h|r) se apila al tanque: rotación de dos tanques.",
	"* Su muerte ENFURECE a Mandokir un minuto — la estrategia se decide antes de abrir (ver la entrada del Señor de la sangre Mandokir)."
};

pack["14507"] = { "Alto sacerdote Venoxis", -- (banda clásica)
	"* Arranca de sacerdote de Sombras: su Renovar (|cff71d5ff|Hspell:23895|h[Renovar]|h|r) va SOBRE ÉL y SE PURGA (si no, se cura sin parar); su Fuego sagrado (|cff71d5ff|Hspell:23860|h[Fuego sagrado]|h|r) cae sobre los jugadores — magia, a purgar o se corta.",
	"* A ~55% se muda a serpiente (|cff71d5ff|Hspell:23849|h[Forma de serpiente]|h|r) y abre su fase final.",
	"* Después siembra su Nube tóxica (|cff71d5ff|Hspell:23861|h[Nube tóxica]|h|r), 10 s en el suelo: se sale del chorro.",
	"* Su veneno de serpiente (|cff71d5ff|Hspell:23865|h[Veneno de serpiente]|h|r) marca a un jugador: se purga o se aguanta con sanación."
};

pack["14517"] = { "Alta sacerdotisa Jeklik", -- (banda clásica)
	"* Su Sanación superior (|cff71d5ff|Hspell:23954|h[Sanación superior]|h|r) SIEMPRE se corta (~20 s de recarga).",
	"* Su Ráfaga sónica (|cff71d5ff|Hspell:23918|h[Ráfaga sónica]|h|r) castiga al melé cercano: magia, a purgar o a apartarse.",
	"* Su Pánico (|cff71d5ff|Hspell:22884|h[Pánico]|h|r) desparrama a los cercanos 4 s: el melé se aleja en viéndola venir.",
	"* Su Palabra de dolor (|cff71d5ff|Hspell:23952|h[Palabra de dolor]|h|r) es magia de daño sostenido: a purgar.",
	"* A mitad de vida baja con una jauría de murciélagos: se barre con el AoE y el DPS sigue soltando."
};

pack["14510"] = { "Alta sacerdotisa Mar'li", -- (banda clásica)
	"* Su Engordar (|cff71d5ff|Hspell:24109|h[Engordar]|h|r) la agranda y endurece: magia que SE LE QUITA con dispeleo (aviso crítico del DBM).",
	"* Su Drenar vida (|cff71d5ff|Hspell:24300|h[Drenar vida]|h|r) golpea a un jugador: magia, y ella se alimenta — a purgar rápido.",
	"* Su Corrosión (|cff71d5ff|Hspell:24111|h[Corrosión]|h|r) se pega 30 s al jugador: veneno, a purgar.",
	"* Su Lluvia de veneno (|cff71d5ff|Hspell:24099|h[Lluvia de veneno]|h|r) castiga a todos: antídotos y sanación al día.",
	"* Convoca arañas (|cff71d5ff|Hspell:24083|h[Convocar arañas]|h|r): se barren con el AoE mientras el DPS no abandona al jefe."
};

pack["14515"] = { "Alta sacerdotisa Arlokk", -- (banda clásica)
	"* Su Marca (|cff71d5ff|Hspell:24210|h[Marca de Arlokk]|h|r) apunta a un jugador (aviso crítico si eres tú).",
	"* Se Esfuma (|cff71d5ff|Hspell:24223|h[Esfumarse]|h|r) al poco de arrancar — reaparece sobre un jugador; el melé la vuelve a fijar pegándole.",
	"* Su Palabra de dolor (|cff71d5ff|Hspell:24212|h[Palabra de dolor]|h|r) es magia: a purgar."
};

pack["14509"] = { "Alto sacerdote Thekal", -- (banda clásica, trío con sus celotes)
	"* La pelea va a tres: sus dos celotes, Lor'Khan (11348, sanador) y Zath (11347, pícaro).",
	"* Se llevan TODOS a mínimo al unísono: cuando los tres caen seguidos se amago y Thekal despierta ~15 s después de tigre con esbirros — la tanda se abre martillando a los tres a la par.",
	"* Sus sanaciones (|cff71d5ff|Hspell:24208|h[Sanación superior]|h|r) se CORTAN SIEMPRE (él y Lor'Khan).",
	"* Zath deja ciego (|cff71d5ff|Hspell:21060|h[Ceguera]|h|r) y aturdido (|cff71d5ff|Hspell:12540|h[Traumatizar]|h|r) al melé — control sobre él."
};

pack["15114"] = { "Gahz'ranka", -- (banda clásica, opcional de pesca)
	"* Opcional: surge del agujero de pesca del pantano con el cebo adecuado.",
	"* Su Aliento de escarcha (|cff71d5ff|Hspell:16099|h[Aliento de escarcha]|h|r) sale en cono hacia delante: nadie cruza el chorro.",
	"* Su Géiser (|cff71d5ff|Hspell:22421|h[Géiser]|h|r) lanza por los aires a los del agua: se pelea por el borde."
};

pack["11380"] = { "Jin'do el Hechicero", -- (banda clásica)
	"* Su Ilusión (|cff71d5ff|Hspell:24306|h[Ilusión de Jin'do]|h|r) miente al marcado — ve fantasmas que no existen: se purga (dispeleo de maleficio).",
	"* Su Lavado de cerebro (|cff71d5ff|Hspell:24261|h[Lavado de cerebro]|h|r) somete a un jugador: maleficio, a quitar YA.",
	"* Su Maleficio (|cff71d5ff|Hspell:17172|h[Maleficio]|h|r) fija a un jugador 5 s: magia, a dispelear.",
	"* Sus TÓTEMS a reventar YA: el Tótem de sanación (|cff71d5ff|Hspell:24309|h[Tótem de sanación]|h|r) le va renovando la vida y el Tótem del lavado (|cff71d5ff|Hspell:24262|h[Tótem del lavado de cerebro]|h|r) lava cerebros alrededor.",
	"* Su Destierro (|cff71d5ff|Hspell:24466|h[Destierro]|h|r) saca a un jugador de la pelea unos segundos — se aguanta."
};

pack["14834"] = { "Hakkar el Azote de Almas", -- (banda clásica, jefe final)
	"* Su Absorción de sangre (|cff71d5ff|Hspell:24324|h[Absorción de sangre]|h|r) cada 90 s drena a TODA la banda y lo cura — es el reloj del DPS: vencer antes de que los drenes despedacen la banda.",
	"* Su Insania (|cff71d5ff|Hspell:24327|h[Insania]|h|r) llega cada ~21 s y enloquece a un jugador 10 s: apartado de los demás, se le pasa solo.",
	"* Su Sangre corrupta (|cff71d5ff|Hspell:24328|h[Sangre corrupta]|h|r) salta entre jugadores: a purgar en cuanto marca.",
	"* Modo duro (los sacerdotes de la banda vivos): los Aspectos giran en bucle — el de Jeklik (|cff71d5ff|Hspell:24687|h[Aspecto de Jeklik]|h|r) muda a los casters, el de Venoxis (24688) siembra veneno, el de Mar'li (24686) drena, el de Arlokk (24690) marca y el de Thekal (|cff71d5ff|Hspell:24689|h[Aspecto de Thekal]|h|r) lo ENFURECE — ese SE LE QUITA con dispeleo de furia (aviso crítico). Matar a los sacerdotes antes desactiva TODOS los Aspectos.",
	"* En el remake SoD los Aspectos llegan SIEMPRE (cada 20 s, orden aleatorio).",
	"* A ~9:45 suelta la furia final sin freno: la pelea no puede pasar de 10 minutos."
};

pack["15082"] = { "Gri'lek", -- (era clásica, Rincón de la Demencia; fichas del dueño 2026-10)
	"* Se lo invoca en el pebetero del Rincón con la poción Locura de mojo gurubashi la quincena que le toca; al caer suelta su Sangre de Gri'lek para los abalorios de clase de ZG.",
	"* Su Avatar (|cff71d5ff|Hspell:24646|h[Avatar]|h|r) lo ENGORDA, limpia la amenaza del tanque y dispara su daño físico — y él anda MÁS LENTO: el fijado corre lejos de su radio hasta que se encoje de nuevo."
};
pack["15083"] = { "Hazza'rah", -- (era clásica, Rincón de la Demencia; fichas del dueño 2026-10)
	"* El pebetero del Rincón invoca al troll ACTIVO de la rotación bisemanal con la poción Locura de mojo gurubashi (alquimista: 1 Sangre de héroes, 1 Mojo macizo, 6 Mojo potente, 1 Loto negro); al caer suelta su reactivio para los abalorios de clase de ZG (aquí, el Hilo de sueño de Hazza'rah).",
	"* Sus Ilusiones de pesadilla (|cff71d5ff|Hspell:24728|h[Ilusión de pesadilla]|h|r) son copias lentas de poca vida pero que golpean por más de 5.000: se matan AL INSTANTE (basta un hechizo instantáneo) — máxima prioridad del encuentro.",
	"* Su Quemadura de maná en cadena (|cff71d5ff|Hspell:24684|h[Quemadura de maná]|h|r) drena a la banda en cadena — él apenas lleva maná (unos 5.000), así que los cazadores con Picadura de víbora y los brujos con Drenar maná lo dejan SECO y la habilidad se anula sola.",
	"* Su Sueño (|cff71d5ff|Hspell:24664|h[Sueño]|h|r) es en área, 6 s: repartido el grupo, nadie queda dormido en plena banda.",
	"* Sus compañeros de rotación Gri'lek, Renataki y Wushoolay llevan entrada propia: el pebetero solo llama al troll activo de la quincena."
};
pack["15084"] = { "Renataki", -- (era clásica, Rincón de la Demencia; fichas del dueño 2026-10)
	"* Se lo invoca en el pebetero del Rincón con la poción Locura de mojo gurubashi la quincena que le toca; al caer suelta su Diente de Renataki para los abalorios de clase de ZG.",
	"* Se Esfuma (|cff71d5ff|Hspell:24699|h[Esfumarse]|h|r) y reaparece sobre un objetivo con un golpe LETAL: el AoE lo devela y las MASCOTAS lo siguen incluso en sigilo."
};
pack["15085"] = { "Wushoolay", -- (era clásica, Rincón de la Demencia; fichas del dueño 2026-10)
	"* Se lo invoca en el pebetero del Rincón con la poción Locura de mojo gurubashi la quincena que le toca; al caer suelta su Melena de Wushoolay para los abalorios de clase de ZG.",
	"* Su Cadena de relámpagos golpea en cono FRONTAL (sin id verificado): el melé se queda DETRÁS de él siempre.",
	"* Siembra Nubes eléctricas (|cff71d5ff|Hspell:24683|h[Nube eléctrica]|h|r) de 15 s en el suelo: sal de ellas ENSEGUIDA o se comen a la banda."
};

-- Scholomance clásica : Zona 289 --
-- Sin instancia en el journal (corpus ausente, como el Monasterio): nombres
-- element-1 verificados por el dueño vía Wowhead 2026-10 (13/13). Kit del DBM
-- Shared\Scholomance_Old (13 CIDs; solo Gandling 17950 y Alexei 17820 llevan
-- avisos) + la ficha del dueño por chat 2026-10; el resto, peleas planas.
-- Ojo: el mensaje del dueño traía parejas nombre-id cruzadas (Krastinov/10507,
-- Polkelt/10503, Vectus/Marduk intercambiadas) y la tabla de nombres repetía
-- el cruce (10507/11261 y 10432/10433): aquí mandan las CIDs del DBM.

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

-- Stratholme clásica : Zona 329 --
-- Sin instancia en el journal (corpus ausente): nombres element-1 verificados
-- con DBM-Party-Vanilla\Classic + BigWigs Encounters_Classic + Wowhead del dueño;
-- provisionales solo los flagged. Kits del DBM Shared\Stratholme y de
-- LittleWigs_Classic\Stratholme (15 CIDs): ala Escarlata y ala no-muerta.

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

-- Dire Maul : Zona 429 (clásica) --
-- Nombres element-1 del corpus journal a 4 idiomas, orden del diario; kits del
-- DBM Shared\DireMaul y de LittleWigs_Classic\DireMaul.
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

-- Lower/Upper Blackrock Spire : Zona 229 (clásica) --
-- 9 CIDs de LBRS + 9 de UBRS (Rend comparte entrada con Gyth 10339); kits del
-- DBM Shared\LowerBlackrockSpire y Classic\UpperBlackrockSpire; nombres del
-- corpus (journal para LBRS; dbm de la era para UBRS).
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

-- Onyxia's Lair : Zona 249 (clásica) --
-- Kit del DBM-Raids-Vanilla\VanillaOnyxia (ids clásicos); nombre del corpus (journal).
pack["10184"] = { "Onyxia", -- (era clásica)
	"* Fase 1 en el suelo: su Aliento de llamas (|cff71d5ff|Hspell:18435|h[Aliento de llamas]|h|r) castiga al tanque, su Aletazo (|cff71d5ff|Hspell:18500|h[Aletazo]|h|r) despacha al melé hacia atrás y su Apartar (|cff71d5ff|Hspell:19633|h[Apartar]|h|r) suelta el agarre del tanque.",
	"* Fase 2 en el aire: Bolas de fuego (|cff71d5ff|Hspell:18392|h[Bola de fuego]|h|r) al marcado y sus Alientos profundos (|cff71d5ff|Hspell:17086|h[Aliento profundo]|h|r) barren medio antro — el aviso del chat manda: al lado opuesto se corre.",
	"* Fase 3 al aterrizar: vuelve todo lo anterior y, encima, su Rugido atronador (|cff71d5ff|Hspell:18431|h[Rugido atronador]|h|r) TEME a media banda; suben las crías de las cuevas — AoE al enjambre sin perder el hilo del jefe."
};

-- Molten Core : Zona 409 (clásica) --
-- Kits del DBM-Raids-Vanilla\MC con ids clásicos del módulo; los SoD Garr/Domo
-- comparten el kit del remake. El 227939 («El Núcleo de Magma») es el evento de
-- banda del remake, NO un jefe: fuera del pack (curar _zonas a mano).
-- Los textos de corchete son redacción propia: en vivo manda la tooltip del id.
bos = { "Garr", -- (era clásica)
	"* Sus grilletes de magma (|cff71d5ff|Hspell:19496|h[Grilletes de magma]|h|r) ENCADENAN el área: el melé suelta el ritmo y regresa; su Inmolación (|cff71d5ff|Hspell:15732|h[Inmolación]|h|r) muerde a un jugador con fuego sostenido.",
	"* El Pulso antimagia (|cff71d5ff|Hspell:19492|h[Pulso antimagia]|h|r) ROMPE los beneficios mágicos de la banda: los escudos se reponen tras cada pulso.",
	"* Sus fielerizos explotan al morir (|cff71d5ff|Hspell:20506|h[Magmakin]|h|r): el melé se aparta de los cadáveres — AoE sostenida hasta barrerlos todos."
};
pack["12057"] = bos;
pack["12099"] = bos;
pack["12118"] = { "Lucifron", -- (era clásica)
	"* Su Condena inminente (|cff71d5ff|Hspell:19702|h[Condena inminente]|h|r) estalla sobre toda la banda unos segundos después de caer: sanación al aguante.",
	"* Su maldición (|cff71d5ff|Hspell:19703|h[Maldición de Lucifron]|h|r) encarece las magias — maleficio a quitar rápido; los casters van con margen de maná.",
	"* Su control mental (|cff71d5ff|Hspell:20604|h[Control mental]|h|r) coge a un jugador: los estorbos de la banda lo cortan y el marcado aguanta con cura."
};
pack["11982"] = { "Magmadar", -- (era clásica)
	"* Su aliento de lava asusta (|cff71d5ff|Hspell:19408|h[Pánico]|h|r): el tanque lo aparta de la banda; los temidos corren al fuego — sanación atenta.",
	"* Su Frenesí (|cff71d5ff|Hspell:19451|h[Frenesí]|h|r) al bajar la vida dispara su daño: el cazador lo acalla con Tiro tranquilizante o el tanque aguanta con curas."
};
pack["12259"] = { "Gehennas", -- (era clásica)
	"* Su maldición (|cff71d5ff|Hspell:19716|h[Maldición de Gehennas]|h|r) CORTA las sanaciones — maleficio a quitar YA; los casters sufren el rango de sus lluvias.",
	"* La lluvia de fuego (|cff71d5ff|Hspell:19717|h[Lluvia de fuego]|h|r) cae por zonas: repartidos; su Puño (|cff71d5ff|Hspell:20277|h[Puño de Gehennas]|h|r) golpea al marcado.",
	"* Sus dos guardas de sombra van con él: tanque aparte, AoE con cabeza y que nadie se derrame fuera del agarre."
};
pack["12056"] = { "Barón Geddon", -- (era clásica)
	"* Su Combustión de maná (|cff71d5ff|Hspell:19659|h[Combustión de maná]|h|r) muerde a los casters y, si el maná se seca, les estalla encima: los casters administran su barril.",
	"* La BOMBA (|cff71d5ff|Hspell:20475|h[Infierno]|h|r) prede a un jugador para explotar: el marcado corre FUERA de la banda antes de saltar."
};
pack["12264"] = { "Shazzrah", -- (era clásica)
	"* Su maldición (|cff71d5ff|Hspell:19713|h[Maldición de Shazzrah]|h|r) vuelve frágil a la banda ante la magia: maleficio a quitar.",
	"* Su Magia entumecida (|cff71d5ff|Hspell:19714|h[Magia entumecida]|h|r) castiga a los casters marcados: sanación atenta; y su Contrapedido (|cff71d5ff|Hspell:19715|h[Contrapedido]|h|r) calla a los lanzadores.",
	"* Se pasea entre la banda (|cff71d5ff|Hspell:23138|h[Paseo de Shazzrah]|h|r): el tanque lo recoloca sin perderle el agarre."
};
pack["12098"] = { "Sulfuron", -- (era clásica)
	"* Sus 4 sanadores de llamas van PRIMERO: cortan sus curas cada vez que brotan y caen antes de él.",
	"* El Inspirar (|cff71d5ff|Hspell:19779|h[Inspirar]|h|r) que lanza se quita en cuanto corre: el cazador lo dispara o se purga.",
	"* La Mano de Ragnaros (|cff71d5ff|Hspell:19780|h[Mano de Ragnaros]|h|r) aturde y aparta en área — repartidos; su Palabra de dolor (|cff71d5ff|Hspell:19776|h[Palabra de dolor]|h|r) y la Inmolación (|cff71d5ff|Hspell:20294|h[Inmolación]|h|r) muerden al marcado con cura."
};
pack["11988"] = { "Golemagg", -- (era clásica)
	"* Su Terremoto (|cff71d5ff|Hspell:19798|h[Terremoto]|h|r) sacude el melé: la melé sigue con cabeza.",
	"* Los dos ragers de lava van con él: el tanque los separa, no se les toca a la ligera y el DPS se queda en el jefe."
};
pack["11502"] = { "Ragnaros", -- (era clásica)
	"* Su Ira de Ragnaros (|cff71d5ff|Hspell:20566|h[Ira de Ragnaros]|h|r) castiga a los primeros puestos: el tanque aguanta con curas y el melé no se apelotona.",
	"* Se HUNDE cada ~3 minutos: sus Hijos de las llamas nacen del subsuelo — el tanque los aparta y se rematan antes de que vuelva (~90 s)."
};
bos = { "Mayordomo Executus", -- (era clásica)
	"* El Teletransporte (|cff71d5ff|Hspell:20534|h[Teletransporte]|h|r) baraja a TODA la banda de sitio: se reagrupa sin parar el DPS y la melé vuelve a su lugar.",
	"* El Escudo de daño (|cff71d5ff|Hspell:21075|h[Escudo de daño]|h|r) castiga al melé cuando corre: la melé se detiene mientras dura.",
	"* Sus flamewakers sanan y se escudan: cortan las sanaciones primero y el remate cae sobre el mayordomo al final."
};
pack["12018"] = bos;
pack["11663"] = bos;
pack["11664"] = bos;
bos = { "Garr", -- (remake SoD)
	"* Mismos grilletes de magma (19496), Inmolación marcada (15732) y Pulso antimagia (19492) que en la clásica: el remake pega más fuerte — sanación y reparto al aguante.",
	"* Los fielerizos siguen explotando al morir: el melé se aparta de los cadáveres."
};
pack["228432"] = bos;
pack["228834"] = bos;
bos = { "Mayordomo Executus", -- (remake SoD)
	"* El Teletransporte (20534) baraja a la banda igual que en la clásica y su Escudo de daño (21075) frena el melé: mismos reflejos, golpe más duro.",
	"* Sus flamewakers sanan: cortan sus curas primero."
};
pack["228437"] = bos;
pack["228836"] = bos;
pack["228837"] = bos;

-- Blackwing Lair : Zona 469 (clásica) --
-- Kits del DBM-Raids-Vanilla\BWL (ids clásicos); nombres del corpus (journal/dbm).
pack["12435"] = { "Sangrevaja el Indomable", -- (era clásica)
	"* Fase 1: la banda reventa los HUEVOS del corral uno a uno; entran oleadas de esbirros y dracos mientras — AoE con cabeza y sanación al tanque.",
	"* Fase 2, ya sin huevos, el jefe cae a lo suyo: su Ola de fuego (|cff71d5ff|Hspell:22425|h[Ola de fuego]|h|r) castiga en área y su Conflagración (|cff71d5ff|Hspell:23023|h[Conflagración]|h|r) prende al marcado — reparto y sanación."
};
pack["13020"] = { "Vaelastrasz el Corrupto", -- (era clásica)
	"* Su Aliento de llamas (|cff71d5ff|Hspell:23461|h[Aliento de llamas]|h|r) castiga al tanque: sanación fuerte y rotación si aprieta.",
	"* La Esencia del Rojo (|cff71d5ff|Hspell:18173|h[Esencia del Rojo]|h|r) baña a TODA la banda en maná y celeridad: pelea a máxima revolución, el DPS no cabecea ni un golpe."
};
pack["12017"] = { "Señor de linaje Capazote", -- (era clásica)
	"* Su Onda explosiva (|cff71d5ff|Hspell:23331|h[Onda explosiva]|h|r) despacha a patadas a cuantos tiene cerca: sala repartida y melé con margen.",
	"* El Apartar (|cff71d5ff|Hspell:18670|h[Apartar]|h|r) vuela los cercanos y su Herida mortal (|cff71d5ff|Hspell:24573|h[Herida mortal]|h|r) apila al tanque: dos tanques con relevo."
};
pack["11983"] = { "Faucefogo", -- (era clásica)
	"* Su Llama de sombra (|cff71d5ff|Hspell:22539|h[Llama de sombra]|h|r) barre el frente: los distantes detrás de los pilares cortan la línea de vista.",
	"* La Ráfaga de llamas (|cff71d5ff|Hspell:23341|h[Ráfaga de llamas]|h|r) apila el daño mágico a todo lo visible: detrás del pilar se aguanta, y el Aletazo (|cff71d5ff|Hspell:23339|h[Aletazo]|h|r) manda al tanque a volar."
};
pack["14601"] = { "Ebanorroca", -- (era clásica)
	"* Su Llama de sombra (22539) y el Aletazo (23339) al tanque como Faucefogo: detrás de los pilares.",
	"* Su Sombra (|cff71d5ff|Hspell:23340|h[Sombra de Ebanorroca]|h|r) marca al tanque: con la marca puesta, TODO daño que le hagan lo CURA a él — dos tanques y relevo en cuanto corre."
};
pack["11981"] = { "Flamagor", -- (era clásica; nombre de la era es de los módulos)
	"* Su Llama de sombra (22539) y el Aletazo (23339): el mismo juego de pilares.",
	"* Su Frenesí (|cff71d5ff|Hspell:23342|h[Frenesí]|h|r) se calma con Tiro tranquilizante: el cazador lo acalla apenas asoma."
};
pack["14020"] = { "Chromaggus", -- (era clásica)
	"* Sus dos alientos rotan al azar por la sala: cada uno pinta su pista — el melé se coloca según el que corre.",
	"* Las cuatro Aflicciones de la estirpe: la Roja (|cff71d5ff|Hspell:23155|h[Afligido rojo]|h|r) es ENFERMEDAD y lo CURA si nadie la purga; la Verde (|cff71d5ff|Hspell:23169|h[Afligido verde]|h|r) es veneno; la Azul (|cff71d5ff|Hspell:23153|h[Afligido azul]|h|r) magia; la Negra (|cff71d5ff|Hspell:23154|h[Afligido negro]|h|r) maleficio — purgas de todos los palos.",
	"* Su Frenesí (|cff71d5ff|Hspell:23128|h[Frenesí]|h|r) se calma con Tiro tranquilizante y el Enfurecerse (|cff71d5ff|Hspell:23537|h[Enfurecerse]|h|r) llega al final: el DPS corre contra el reloj."
};
pack["11583"] = { "Nefarian", -- (era clásica)
	"* Fase 1: oleadas de esbirros caen de las paredes de la sala — el tanque las aguanta y se limpian sin descuidar el hilo.",
	"* Las Llamadas de clase llegan cada ~30 s: cada una aprieta a una clase distinta — leer el aviso del chat y no perder la compostura.",
	"* Su Llama de sombra (|cff71d5ff|Hspell:22539|h[Llama de sombra]|h|r) castiga el frente y su Rugido (|cff71d5ff|Hspell:22686|h[Rugido]|h|r) TEME a la banda: repartidos, sanación constante y el tanque firme.",
	"* Fase 3 al aterrizar: las pilas de huesos sueltan esqueletos — AoE con cabeza."
};

-- Ruins of Ahn'Qiraj : Zona 509 (clásica) --
-- Kits del DBM-Raids-Vanilla\AQ20 (ids clásicos); nombres del corpus (journal).
pack["15348"] = { "Kurinnaxx", -- (era clásica)
	"* Sus trampas de arena (|cff71d5ff|Hspell:25656|h[Trampa de arena]|h|r) se comen al marcado: el tanque corre al que lo marca y sanación al caído.",
	"* Su Herida mortal (|cff71d5ff|Hspell:25646|h[Herida mortal]|h|r) apila al tanque: dos tanques con relevo; y su Frenesí (|cff71d5ff|Hspell:26527|h[Frenesí]|h|r) al final del hilo: DPS a lo suyo."
};
pack["15341"] = { "General Rajaxx", -- (era clásica)
	"* El desfile por ONDAS de la bandera: las primeras con sus capitanes, la última con el general mismo — el tanque abre cada oleada y se limpia ordenada.",
	"* Su Tormenta de truenos (|cff71d5ff|Hspell:25599|h[Tormenta de truenos]|h|r) castiga en área: repartidos; las nubes de peste salpican el suelo — fuera del charco."
};
pack["15340"] = { "Moam", -- (era clásica)
	"* El drenaje de maná de su aura apura a los casters: curas de maná y DPS atento.",
	"* Su forma de piedra (|cff71d5ff|Hspell:25685|h[Forma de piedra]|h|r) congela su pelea al bajar la vida y despierta a sus esbirros: acelerar el DPS ANTES de que se petrifique."
};
pack["15370"] = { "Buru el Manducador", -- (era clásica)
	"* ELIGE a un jugador y lo corre (la persecución): el perseguido lo amastra lejos de la banda.",
	"* Sus huevos estallan a su paso y le hacen daño: el perseguido lo conduce sobre ellos hasta el remate.",
	"* Su Despedazar (|cff71d5ff|Hspell:96|h[Despedazar]|h|r) apila al tanque que alcanza: aguante fuerte cuando toca."
};
pack["15369"] = { "Ayamiss el Cazador", -- (era clásica)
	"* Su Paralizar (|cff71d5ff|Hspell:25725|h[Paralizar]|h|r) marca para el SACRIFICIO del altar: sanación inmediata al paralizado mientras aguanta.",
	"* Al bajar la vida se cuelga del aire: arriba solo el alcance le pega — el melé se queda al suelo."
};
pack["15339"] = { "Osirio el Sinmarcas", -- (era clásica)
	"* Su Modo supremo (|cff71d5ff|Hspell:25176|h[Modo supremo]|h|r) lo vuelve intocable hasta el siguiente cristal: la sala corre a encenderlos.",
	"* Cada cristal baja una debilidad (Fuego 25177, Escarcha 25178, Naturaleza 25180, Arcano 25181, Sombras 25183): el DPS pega con la escuela en boga en cuanto corre.",
	"* El Ciclón (|cff71d5ff|Hspell:25189|h[Ciclón]|h|r) marea al marcado y su Maldición de lenguas (|cff71d5ff|Hspell:25195|h[Maldición de lenguas]|h|r) ralentiza los casters — maleficio a quitar."
};

-- Temple of Ahn'Qiraj : Zona 531 (clásica) --
-- Kits del DBM-Raids-Vanilla\AQ40 (ids clásicos); nombres del corpus (journal/dbm).
pack["15263"] = { "Profeta Skeram", -- (era clásica; el módulo lo trae pese a no emparejar en _zonas)
	"* Se teletransporta por la sala (|cff71d5ff|Hspell:20449|h[Teletransporte]|h|r) y clava a una banda de DUPLICADOS (|cff71d5ff|Hspell:747|h[Invocar duplicado]|h|r) a su imagen: el tanque recoge al original y los clones caen al remate.",
	"* Su control mental (|cff71d5ff|Hspell:785|h[Control mental]|h|r) coge a un jugador: el marcado aguanta con curas mientras el grupo lo suelta."
};
bos = { "Realeza silítida", -- (era clásica)
	"* Tres de la realeza a la vez: el tanque abre por orden y el melé limpia uno a uno.",
	"* Sus curas (|cff71d5ff|Hspell:25807|h[Sanación mayor]|h|r) se cortan SIEMPRE; el temor (|cff71d5ff|Hspell:26580|h[Miedo]|h|r) desparrama la banda — reparto al aguante.",
	"* El racimo tóxico (|cff71d5ff|Hspell:25812|h[Racimo tóxico]|h|r) muerde al melé: veneno a curar."
};
pack["15544"] = bos;
pack["15511"] = bos;
pack["15543"] = bos;
pack["15516"] = { "Guardia de batalla Sartura", -- (era clásica)
	"* Su Torbellino (|cff71d5ff|Hspell:26083|h[Torbellino]|h|r) gira por la sala y muda de blanco a lo vivo: el melé se aparta cuando arranca y el tanque la recoloca cuando cambia de objetivo.",
	"* Al bajar la vida se enfurece (|cff71d5ff|Hspell:8269|h[Frenesí]|h|r): el DPS aprieta y el sanador aguanta la racha.",
	"* Sus guardias reales van con ella: tanque aparte."
};
pack["15510"] = { "Fankriss el Implacable", -- (era clásica)
	"* Su Enredar (|cff71d5ff|Hspell:720|h[Enredar]|h|r) deja envueltos a varios: se cortan las telas sin descuidar el hilo.",
	"* La Herida mortal (|cff71d5ff|Hspell:25646|h[Herida mortal]|h|r) apila al tanque: dos tanques; sus gusanos summonados (|cff71d5ff|Hspell:25831|h[Invocar gusano]|h|r|cff71d5ff|Hspell:26631|h[Convocar gusanos]|h|r) entran a ronda — AoE con cabeza."
};
pack["15509"] = { "Princesa Huhuran", -- (era clásica)
	"* Su picadura (|cff71d5ff|Hspell:26180|h[Picadura venenosa]|h|r) marca a un jugador y su ponzoña (|cff71d5ff|Hspell:26053|h[Venenoso]|h|r) cubre la banda: curar y salir del charco.",
	"* El ácido apila al tanque (|cff71d5ff|Hspell:26050|h[Ácido]|h|r) y su Frenesí (|cff71d5ff|Hspell:26051|h[Frenesí]|h|r) calla con Tiro tranquilizante — el cazador atento.",
	"* Al 30% entra en FURIA (|cff71d5ff|Hspell:26068|h[Berserk]|h|r): a máxima revolución hasta acabarla — DPS y sanación al límite."
};
pack["15299"] = { "Viscidus", -- (era clásica)
	"* El racimo de veneno (|cff71d5ff|Hspell:25991|h[Racimo de veneno]|h|r) castiga por oleadas: curas a ritmo.",
	"* El FRÍO lo congela: la escuela de Escarcha lo pega con ganas hasta que queda escarchado; el físico lo ROMPE: el melé entra a machacarlo cuando corre la escarcha.",
	"* Se rehace y el ciclo repite: paciencia con la sala y curas del maná."
};
bos = { "Emperadores Gemelos", -- (era clásica)
	"* Los gemelos MUDAN de sitio a cada rato (|cff71d5ff|Hspell:800|h[Teletransporte]|h|r): el tanque recoloca y el DPS reparte.",
	"* El del cuerpo a cuerpo golpea desequilibrando (|cff71d5ff|Hspell:26613|h[Golpe desequilibrante]|h|r) al tanque y el otro machaca a los casters — dos tanques, uno por gemelo.",
	"* Los bichos mutados (|cff71d5ff|Hspell:802|h[Mutar bicho]|h|r) salen por el suelo — AoE con cabeza sin descuidar a los gemelos."
};
pack["15276"] = bos;
pack["15275"] = bos;
pack["15517"] = { "Ouro", -- (era clásica)
	"* Su Barredora (|cff71d5ff|Hspell:26103|h[Barredora]|h|r) despacha al tanque por los aires: espalda con pared para no perderle el agarre.",
	"* Se HUNDE cada ~3 minutos y deja el suelo enjambrado de escarabajos: AoE a rato mientras no vuelve.",
	"* Su Furia (|cff71d5ff|Hspell:26615|h[Furia]|h|r) ronda al final: el DPS corre a cerrar antes."
};
bos = { "C'Thun", -- (era clásica)
	"* El ojo abre con su rayo giratorio: la banda se reparte alrededor y nadie se pone en la línea de fuego.",
	"* Tentáculos de garra y de ojo brotan cada pocos segundos: las garras van a la melé y los ojos al alcance — se limpian sin retraso y los gigantes al tanque.",
	"* Cada ventana de debilitamiento (~45 s) es el turno del DPS a tope: fuera con lo que sobre."
};
pack["15589"] = bos;
pack["15727"] = bos;

-- Naxxramas : Zona 533 (clásica) --
-- Kits del DBM-Raids-Vanilla\VanillaNaxx por cuadrante (ids clásicos); nombres del corpus.
pack["15956"] = { "Anub'Rekhan", -- (era clásica)
	"* Su Enjambre de langostas (|cff71d5ff|Hspell:28785|h[Enjambre de langostas]|h|r) barre la sala: entra al CÍRCULO central al aviso y vuelve al agarre cuando pasa.",
	"* Su Empalar (|cff71d5ff|Hspell:28783|h[Empalar]|h|r) vuela a los cercanos: melé con margen y tanque firme."
};
pack["15953"] = { "Gran Viuda Faerlina", -- (era clásica)
	"* El Abrazo de la viuda (|cff71d5ff|Hspell:28732|h[Abrazo de la viuda]|h|r) la SILENCIA mientras dura: caer a sus seguidoras la refuerza.",
	"* Si el abrazo expira entra su Frenesí (|cff71d5ff|Hspell:28131|h[Frenesí]|h|r): sanación fuerte y el DPS a cerrar."
};
pack["15952"] = { "Maexxna", -- (era clásica)
	"* Su Telaraña envolvente (|cff71d5ff|Hspell:28622|h[Telaraña envolvente]|h|r) deja colgado a un jugador: se corta la red al instante.",
	"* Sus crías (|cff71d5ff|Hspell:29434|h[Invocar crías]|h|r) entran a cada vuelta de telaraña: AoE a su paso.",
	"* La niebla (|cff71d5ff|Hspell:29484|h[Rocío de telaraña]|h|r) aturde a TODO el grupo con cada vuelta y su Frenesí (|cff71d5ff|Hspell:28747|h[Frenesí]|h|r) muerde al final: el DPS corre al 30%." 
};
pack["15954"] = { "Noth el Pesteador", -- (era clásica)
	"* Se TELETRANSPORTA a los balcones (|cff71d5ff|Hspell:29208|h[Teletransporte]|h|r) cada vuelta: abajo quedan sus esbirros esqueléticos — el AoE los limpia mientras.",
	"* Su Maldición de peste (|cff71d5ff|Hspell:29213|h[Maldición de peste]|h|r) muerde a los marcados: maleficio YA, si no lo revienta al volver."
};
pack["15936"] = { "Heigan el Impuro", -- (era clásica)
	"* El suelo ERUPCIONA en rondas: el baile sucio (|cff71d5ff|Hspell:29350|h[Baile sucio]|h|r) lleva al grupo por el patrón de los cuatro arcos — aprender los pasos y no perder de vista el suelo.",
	"* De vez en cuando salta junto a un jugador (|cff71d5ff|Hspell:30211|h[Teletransporte]|h|r): el marcado corre y sanación al vuelo.",
	"* Su aflicción impura (|cff71d5ff|Hspell:29998|h[Afligido impuro]|h|r) crece en los tocados: enfermedad a quitar pronto."
};
pack["16011"] = { "Loatheb", -- (era clásica)
	"* Las esporas curativas (|cff71d5ff|Hspell:29234|h[Espora curativa]|h|r) brotan a ritmo: el melé se las come en cuanto caen — es la sanación del combate.",
	"* El Destino inevitable (|cff71d5ff|Hspell:29204|h[Destino inevitable]|h|r) muerde a los marcados con el reloj del aura necrótica: sanación amordazada y el DPS corre."
};
pack["16061"] = { "Instructor Razuvious", -- (era clásica)
	"* Los APRENDICES lo toman con el provocar: dos en relevo, el tanque verdadero no lo alcanza.",
	"* Su escisión desestabilizadora (|cff71d5ff|Hspell:29107|h[Escisión desestabilizadora]|h|r) barre el melé: salir del radio al aviso."
};
pack["16060"] = { "Gothik el Cosechador", -- (era clásica)
	"* La sala va PARTIDA entre vivos y muertos: cada lado aguanta su mitad hasta la fusión.",
	"* Sus saltos cruzan la sala (|cff71d5ff|Hspell:28025|h[Teletransporte vivo]|h|r y |cff71d5ff|Hspell:28026|h[Teletransporte muerto]|h|r): al unirse, el tanque lo fija y el DPS cae."
};
bos = { "Los Cuatro Jinetes", -- (era clásica)
	"* Cuatro al cuarteto, cada uno con su esquina: los tanques los recogen a pares y el DPS reparte por rueda.",
	"* El Meteoro (|cff71d5ff|Hspell:28884|h[Meteoro]|h|r) vuela al más cercano de cada jinete: los tanques de guardia.",
	"* Las Zonas del Vacío (|cff71d5ff|Hspell:28863|h[Zona del Vacío]|h|r) abren bajo los pies: salir del círculo al punto."
};
pack["16062"] = bos;
pack["16063"] = bos;
pack["16064"] = bos;
pack["16065"] = bos;
pack["16028"] = { "Remendejo", -- (era clásica)
	"* Su golpe de odio busca al melé MÁS SANO a la redonda: todos al mismo nivel de vida y sanación pareja.",
	"* A mitad de vida entra en Frenesí (|cff71d5ff|Hspell:28131|h[Frenesí]|h|r): el tanque aguanta y sanación doblada."
};
pack["15931"] = { "Grobbulus", -- (era clásica)
	"* La Inyección mutante (|cff71d5ff|Hspell:28169|h[Inyección mutante]|h|r) marca a un jugador y su Nube (|cff71d5ff|Hspell:28240|h[Nube mutante]|h|r) queda tóxica al estallar: el marcado se aparta de la banda ANTES de revientar."
};
pack["15932"] = { "Gluth", -- (era clásica)
	"* La Decimación (|cff71d5ff|Hspell:28374|h[Decimación]|h|r) tumba a toda la banda a un 5% de vida: sanación fuerte al aviso.",
	"* Los zombis de la sala MARCHAN hacia él y lo curan al tocarlo: se corta el paso y el AoE los remata.",
	"* Su Frenesí (|cff71d5ff|Hspell:28371|h[Frenesí]|h|r) calla con Tiro tranquilizante y su Enfurecerse (|cff71d5ff|Hspell:26662|h[Enfurecerse]|h|r) ronda al final: el DPS a cerrar."
};
pack["15928"] = { "Thaddius", -- (era clásica)
	"* Los dos engendros abren con descargas al tanque: reparto y sanación pareja.",
	"* El Cambio de polaridad (|cff71d5ff|Hspell:28089|h[Cambio de polaridad]|h|r) reparte la carga a TODA la banda: positivo a un lado, negativo al otro — NADIE se cruza de banda."
};
pack["15989"] = { "Sapphiron", -- (era clásica)
	"* Su Drenar vida (|cff71d5ff|Hspell:28542|h[Drenar vida]|h|r) muerde a los marcados: maleficio a quitar YA.",
	"* Sus bloques de hielo (|cff71d5ff|Hspell:28522|h[Bloque de hielo]|h|r) quedan plantados: abrazaos a uno cuando el draco sube, porque su aliento profundo barre la sala al volver."
};
pack["15990"] = { "Kel'Thuzad", -- (era clásica)
	"* Sus Cadenas de control (|cff71d5ff|Hspell:28410|h[Cadenas de control]|h|r) se llevan a varios: los encadenados se contienen sin piedad hasta quitarse.",
	"* La Grieta de sombras (|cff71d5ff|Hspell:27810|h[Grieta de sombras]|h|r) aturde a los del blanco: salir del charco ya.",
	"* La Explosión de escarcha (|cff71d5ff|Hspell:27808|h[Explosión de escarcha]|h|r) congela al blanco con la sala en fila: sanación pareja.",
	"* Al final entran los guardianes de la cripta: el tanque los aparta y el hilo sigue sin parar."
};

P.es = es;