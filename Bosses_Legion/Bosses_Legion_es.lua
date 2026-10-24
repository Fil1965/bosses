--[[
	Bosses_Legion_es.lua
		Datos del pack Legion, GENERADOS con scripts/generar-pack-legion.mjs desde los módulos DBM de Legion en _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Tácticas telegráficas honestas (tipo de aviso DBM); la prosa fina se cura a mano después. Nombres: corpus del journal (nombres-jefe) + mapa de world bosses.
		Orden del propietario 2026-10-15: los cuatro locales del tirón.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Antorus, the Burning Throne : Zona 1712 --
-- --------------------------------- --

pack["121975"] = { "Aggramar",
"* |cff71d5ff|Hspell:245990|h[Taeshalach Reach]|h|r: Aplica el debuff de reducción de armadura al tanque, alternando entre él y el resto del grupo antes de que el tanque acumule 8 stacks. El tanque debe salir del siguiente golpe.",
"* |cff71d5ff|Hspell:245458|h[Rompe Enemigo]|h|r: durante su técnica, realiza un ataque que rompe la armadura del enemigo. Los tanks alternan los golpes y el tanque principal se protege con una postura defensiva.",
"* |cff71d5ff|Hspell:245463|h[Flame Rend]|h|r: los ataques de Flame Rend crean un cono de fuego — dirígelo lejos de la raid, los personajes de combate se mantienen detrás, y los tanks también pueden usar Flame Rend.",
"* |cff71d5ff|Hspell:245994|h[Incendio Devastador]|h|r: las llamas se adhieren a los jugadores marcados - los jugadores marcados se dispersan entre sí hasta que las llamas se extinguen.",
};

pack["122104"] = { "Guardiana de los portales Hasabel",
"* |cff71d5ff|Hspell:244016|h[Reality Tear]|h|r: stacking tank debuff - the tanks trade her before the tears stack up.",
"* |cff71d5ff|Hspell:244677|h[Portal de transporte]|h|r: abre portales de transporte a sus plataformas - divide al grupo a través de los portales y elimina rápidamente a los guardianes.",
"* |cff71d5ff|Hspell:243983|h[El Mundo se derrumba]|h|r: ella derrumba el mundo a su alrededor – prepárense para cada colapso y cuenten los golpes a medida que impactan.",
"* |cff71d5ff|Hspell:244000|h[Tormenta Felínea]|h|r: los rayos felíneos golpean la cámara en largas filas - aléjate de las líneas antes de que disparen.",
};

pack["122366"] = { "Varimathras",
"* |cff71d5ff|Hspell:243960|h[Shadow Strike]|h|r: un golpe de sombra potente impacta al tanque cada pocos segundos - los tanques lo intercambian para evitar el golpe.",
"* |cff71d5ff|Hspell:243961|h[Misery]|h|r: the misery rides the tank that took the strike - the fresh tank taunts whenever the torment element shifts.",
"* |cff71d5ff|Hspell:243967|h[Torment of Flames]|h|r: mientras las llamas atormentan, el raid se mantiene estable - protege la ventana con defensas de enfriamiento.",
"* |cff71d5ff|Hspell:243976|h[Torment of Frost]|h|r: luego, la tormenta de hielo toma el control y congela a todo el grupo - prepárense nuevamente y mantengan la miseria en un solo tanque.",
};

bos = { "Alto Mando antoran",
"* |cff71d5ff|Hspell:244892|h[Exploit Weakness]|h|r: stacking tank debuff - the tanks trade before the exploit stacks up.",
"* |cff71d5ff|Hspell:244172|h[Ataque Psíquico]|h|r: el ataque psíquico acumula efectos en todos - vigila tus propios stacks y sal de la zona cuando tengas más de diez.",
"* |cff71d5ff|Hspell:253040|h[Assume Command]|h|r: the next commander assumes command of the platform - switch onto the fresh commander and handle their kit.",
"* |cff71d5ff|Hspell:244141|h[Fuera del Pod]|h|r: el pod se abre y su jinete sale - elimina al jinete mientras esté fuera de su armadura.",
};
pack["122369"] = bos; pack["122333"] = bos; pack["122367"] = bos;

bos = { "Aquelarre shivarra",
"* |cff71d5ff|Hspell:118212|h[Activada]|h|r: uno de los tres se activa: el tanque se enfoca en ella y el resto del grupo mantiene los interrupciones en su canto.",
"* |cff71d5ff|Hspell:244899|h[Golpe Ardiente]|h|r: el personaje de fuego golpea al tanque con puños ardientes - el tanque debe contrarrestar los ataques antes de que se acumulen.",
"* |cff71d5ff|Hspell:245518|h[Flash Freeze]|h|r: el conjuro de congelación congela la armadura del tanque - intercambien los roles y el conjuro, así como el tanque, se alejan hasta que el conjuro se disipa.",
"* |cff71d5ff|Hspell:245634|h[Peligros en el suelo]|h|r: el conjuro de la hechicera y el escalofrío afectan al suelo - evita estar sobre cualquier cosa que brille.",
};
pack["122468"] = bos; pack["122467"] = bos; pack["122469"] = bos;

bos = { "Canes manáfagos de Sargeras",
"* |cff71d5ff|Hspell:251356|h[Concentración]|h|r: los perros concentran su poder juntos durante 15 segundos - prepárense para el canal, ya que esto desencadena sus grandes hechizos.",
"* |cff71d5ff|Hspell:251448|h[La Boca Ardiente]|h|r: un perro muerde al tanque con su boca ardiente - los tanques intercambian los mordiscos antes de que el daño aumente.",
"* |cff71d5ff|Hspell:244768|h[Desoladora Mirada]|h|r: la desoladora mirada se fija en un jugador - el jugador marcado sale de la instancia y mantiene la mirada alejada hasta que termina.",
"* |cff71d5ff|Hspell:244057|h[Enflamed Corruption]|h|r: enflamed corruption erupts from the blazing hound - a wave of fel corruption washes over the platform, brace it with cooldowns.",
};
pack["122477"] = bos; pack["122135"] = bos;

pack["124445"] = { "Eonar, la Patrona de la Vida",
"* |cff71d5ff|Hspell:250140|h[Pasos Corruptos]|h|r: la corrupción del Fel se filtra a través de la mesa y aplica Pasos Corruptos a cualquiera que se encuentre en ella; muévete a una mesa limpia y mantén las stacks de todos los jugadores bajas.",
"* |cff71d5ff|Hspell:248332|h[Lluvia de Fel]|h|r: la lluvia de fel marca a los jugadores desde arriba - el jugador marcado se aparta de todos y permite que la lluvia caiga donde está.",
"* |cff71d5ff|Hspell:246888|h[Teletransporto]|h|r: llegan refuerzos teletransportados alrededor del casco - ataca a cada uno de los teletransportados al principio para evitar que los cubren.",
"* |cff71d5ff|Hspell:250048|h[Fuerza Vital]|h|r: canaliza su fuerza vital a través del casco - prepárate para cada oleada y mantén el combate en marcha.",
};

pack["122450"] = { "Rompemundos garothi",
"* |cff71d5ff|Hspell:246220|h[Cañonazo]|h|r: el cañón ataca al tanque con el cañonazo – el tanque principal se acerca y el tanque anterior aleja la explosión del resto del grupo.",
"* |cff71d5ff|Hspell:244410|h[Decimation]|h|r: el cañón de Decimation carga un ataque que afecta a toda la raid – manténganse juntos y eviten que explote.",
"* |cff71d5ff|Hspell:244152|h[Apoc Drive]|h|r: el Apocalipsis Drive se activa en un cañón - cambia y destruye ese cañón dentro de los 30 segundos de su lanzamiento.",
"* |cff71d5ff|Hspell:244969|h[Eradication]|h|r: si el ataque termina, el rayo de la hacha corta toda la plataforma; corre para evitar el rayo y prepárate al máximo.",
};

pack["124158"] = { "Imonar Cazador de Almas",
"* |cff71d5ff|Hspell:247367|h[Shocklance]|h|r: su Shocklance golpea constantemente al tanque - intercambia los ataques antes de que los stacks causen daño.",
"* |cff71d5ff|Hspell:247687|h[Sever]|h|r: la placa de  se abre con cada golpe - los tanks intercambian posiciones y los healers vigilan a los que han sido cortados.",
"* |cff71d5ff|Hspell:247552|h[Cámara de sueño]|h|r: La cámara de sueño se adjunta a un jugador - el marcado huye de la raid y los curanderos disipan el sueño antes de que lo derrote.",
"* |cff71d5ff|Hspell:247565|h[Gas de Somnolencia]|h|r: el gas de somnolencia se concentra alrededor de los jugadores dormidos; manténgase alejado del propio gas y de cualquier jugador que esté dentro.",
};

pack["122578"] = { "Kin'garoth",
"* |cff71d5ff|Hspell:244312|h[Forjando Golpe]|h|r: su golpe de forja golpea al tanque - prepárate con una postura defensiva y deja que el nuevo tanque reciba el próximo golpe.",
"* |cff71d5ff|Hspell:248375|h[Shattering Strike]|h|r: cuando levante sus brazos, el ataque de fragmentación dividirá el suelo - observa las plataformas y salta sobre cada fragmento.",
"* |cff71d5ff|Hspell:246779|h[Bomba Diabólica]|h|r: lanza bombas diabólicas al campo y detónalas para causar un gran daño - agrupa para absorber la explosión en lugar de recibir todo el daño.",
"* |cff71d5ff|Hspell:254926|h[Golpe Resonante]|h|r: el golpe resonante impacta a un jugador y se propaga — el objetivo se desplaza y todos los demás se alejan de las ondas.",
};

pack["124828"] = { "Argus el Aniquilador",
"* |cff71d5ff|Hspell:248499|h[Sweeping Scythe]|h|r: stacking tank debuff - the tanks trade him before the third stack.",
"* |cff71d5ff|Hspell:258838|h[Azada de Desgarro de Almas]|h|r: al acercarse el combate a su fin, su azada desgarra almas en todo el grupo - los curanderos aumentan su efectividad gracias a los desgarros y nadie deja que sus stacks se acumulen.",
"* |cff71d5ff|Hspell:258039|h[Cosecha Mortal]|h|r: en la recta final, cada cosecha se vuelve mortal – los tanks deben prepararse con defensas y rotar constantemente, esto mata directamente.",
"* |cff71d5ff|Hspell:248167|h[Peligros en el suelo]|h|r: las tormentas de almas queman la plataforma - evita estar sobre cualquier cosa que brille en el suelo.",
};


-- --------------------------------- --
-- The Emerald Nightmare : Zona 1520 --
-- --------------------------------- --

pack["100497"] = { "Ursoc",
"* |cff71d5ff|Hspell:197943|h[Overwhelm]|h|r: dos sanadores intercambian el hechizo cada segundo lanzamiento - cada pila de Overwhelm aumenta el siguiente Rend Flesh, y el sanador que acaba de recibirlo se aleja para eliminar la pila mientras el nuevo sanador asume.",
"* |cff71d5ff|Hspell:197942|h[Rend Flesh]|h|r: aterriza justo después del segundo stack de Overwhelm; con un tanque fresco en el jefe, no es un problema, pero en un tanque que lleva stacks, puede matar - tañe a tiempo, siempre.",
"* |cff71d5ff|Hspell:198006|h[Focused Gaze]|h|r: Ursoc marks one player for a charge; the marked player runs him along the wall while the rest of the raid stays clear of the path.",
"* |cff71d5ff|Hspell:198388|h[Frenesie Sanguinolenta]|h|r: ataca con más fuerza y más fuerza a medida que avanza la pelea (la frenesie se acumula),",
"* así que utiliza todos los enfriamientos de curación y las habilidades de heroísmo al principio y no dejes que la pelea se prolongue.",
};

pack["102672"] = { "Nythendra",
"* |cff71d5ff|Hspell:204463|h[Volatile Rot]|h|r: whoever gets it walks to the edge of the room and lets the spore burst pop away from the group; standing inside your own burst clears the rot instead of spreading it.",
"* |cff71d5ff|Hspell:204504|h[Infested]|h|r: el efecto de infestación se extiende a cualquiera que esté cerca, y explota hacia afuera cuando el efecto tique - la raid se extiende, y nadie se acerca a los tanques, que siempre acumulan la mayor cantidad de efectos.",
"* |cff71d5ff|Hspell:203096|h[Rot]|h|r: Un ataque de cono que deja más stacks de podredumbre - combates cuerpo a cuerpo desde detrás y todos salen del área de efecto de esporas cuando se gira.",
"* |cff71d5ff|Hspell:203552|h[Corazón de la Horda]|h|r: cuando el Grove comienza a vibrar, los anillos de podredumbre emergen de su cuerpo una y otra vez - salta fuera con cada anillo y camina de vuelta entre las pulsaciones.",
};

pack["102679"] = { "Dragones de la Pesadilla",
"* |cff71d5ff|Hspell:204720|h[Dragón Nocturno]|h|r: los cuatro dragones corrompidos (Ysondre, Emeriss, Lethon, Taerar) intercambian posiciones - solo dos están en el suelo a la vez, enfócate en la pareja activa y la pareja cambia cuando uno de ellos cae.",
"* |cff71d5ff|Hspell:204100|h[Sombras de Taerar]|h|r: mientras Taerar esté activo, se divide en tres sombras - asigna una a cada grupo de daño cuerpo a cuerpo y destruye a las tres simultáneamente, o se reformará pronto y se dividirá de nuevo.",
"* |cff71d5ff|Hspell:203110|h[Pesadilla Durmiente]|h|r: las nubes de sueño transportan a los jugadores al reino de la pesadilla; el sanador asignado entra con ellos y despierta a cada dormido con un despojo antes de que termine el sueño.",
"* |cff71d5ff|Hspell:203028|h[Aliento Corrupto]|h|r: un aliento largo desde la parte frontal del dragón - manténgase detrás del dragón que está exhalando y disperse para que las marcas de pesadilla nunca golpeen al mismo objetivo dos veces.",
};

pack["103769"] = { "Xavius",
"* |cff71d5ff|Hspell:224649|h[Tormenting Swipe]|h|r: un ataque amplio frente a él - el tanque lo dirige lejos de la raid y se retira después de cada golpe, ya que los ataques son mucho más poderosos en la fase 2.",
"* |cff71d5ff|Hspell:206651|h[Darkening Soul]|h|r: pilas de corrupción de pesadilla que arrastran al jugador bajo cuando activan - el curandero asignado, al eliminar los efectos negativos, mantiene a todos por debajo del umbral de ser arrastrado.",
"* |cff71d5ff|Hspell:209158|h[Blackening Soul]|h|r: la versión de la fase dos también explota con tormento de pesadilla alrededor de su portador - los jugadores se dispersan, se coordina quién recibe el siguiente, y se aleja del grupo antes de que explote.",
"* |cff71d5ff|Hspell:209443|h[Infusión de Pesadilla]|h|r: Xavius continúa potenciándose a sí mismo mientras la pelea se prolonga en la segunda fase; termina la pelea rápidamente antes de que las infusiones aumenten su daño de forma incontrolable.",
};

pack["105393"] = { "Il'gynoth, el Corazón de la Corrupción",
"* |cff71d5ff|Hspell:210984|h[Ojo del Destino]|h|r: el ojo gigante en el centro del área dispara aleatoriamente a los jugadores — durante la fase exterior, los curanderos deben mantener el control de estos ataques y la raid debe moverse entre los ojos.",
"* |cff71d5ff|Hspell:215234|h[Furor de Pesadilla]|h|r: cuando las tentáculos exteriores desaparecen, el corazón se abre: solo los jugadores purificados de la corrupción pueden entrar: purifiquen, sumerjan a través del sueño,",
"* maten el ojo interior y salgan antes de que el corazón explote.",
"* |cff71d5ff|Hspell:210931|h[Noche de Pesadilla]|h|r: los ojos oscuros emiten haces de energía a través de la plataforma - manténgase fuera de los haces y destruya rápidamente a los ojos oscuros, ya que su daño se acumula mientras están activos.",
"* |cff71d5ff|Hspell:210099|h[Fixate]|h|r: las horrores de la pesadilla se fijan en un jugador; el jugador afectado los esquiva en círculos amplios mientras la raid los elimina a distancia.",
};

pack["106087"] = { "Elerethe Renferal",
"* |cff71d5ff|Hspell:212512|h[Envolver Web]|h|r: En su forma de araña, envuelve a un jugador en telarañas; el combate cuerpo a cuerpo rompe la cubierta rápidamente y el grupo se dispersa, de modo que el siguiente envoltorio impacta en un nuevo objetivo.",
"* |cff71d5ff|Hspell:215582|h[Garras de Desgarro]|h|r: los ataques de las garras se acumulan en el tanque del jefe - los dos tanques se turnan para atacarla después de cada par de acumulaciones y el tanque que acaba de atacarla se retira.",
"* |cff71d5ff|Hspell:210326|h[Forma de araña]|h|r: alterna entre la forma de araña (redes frontales y golpes) y la forma de cuervo (ráfagas de viento que empujan a los jugadores hacia los bordes) - observa la transición y reposiciona con antelación.",
"* |cff71d5ff|Hspell:212364|h[Hora de Alimentación]|h|r: aparecen enjambes de crías para alimentarse del jugador marcado; el jugador marcado los esquiva mientras que todos los demás atacan al enjambre desde una posición segura.",
};

pack["104636"] = { "Cenarius",
"* |cff71d5ff|Hspell:210279|h[Pesadillas Susurrantes]|h|r: cualquier jugador cerca del jefe mientras canaliza recibe golpes de pesadillas acumulativos - los personajes cuerpo a cuerpo salen del alcance durante el canal y regresan una vez que termina.",
"* |cff71d5ff|Hspell:213162|h[Nightmare Blast]|h|r: En la fase corrupta de Malfurion, los ataques impactan en los jugadores marcados. Quien sea marcado abandona inmediatamente el grupo, ya que el ataque deja un cráter infectado.",
"* |cff71d5ff|Hspell:214529|h[Espada de Pesadillas]|h|r: en la fase final, Cenarius lanza espadas de pesadillas que el grupo debe atrapar juntos; el grupo debe correr hacia cada espada mientras que el resto de la raid permanece alejado.",
"* |cff71d5ff|Hspell:210290|h[Nightmare Brambles]|h|r: Filas de espinas crecen por toda la zona y atacan a cualquiera que esté cerca - deténte de moverte mientras las espinas se elevan y salta por encima una vez que se hayan asentado.",
};


-- --------------------------------- --
-- The Nighthold : Zona 1530 --
-- --------------------------------- --

pack["101002"] = { "Krosus",
"* |cff71d5ff|Hspell:206677|h[Searing Brand]|h|r: Aplicar el debuff de daño en área al jefe, alternando entre los dos tanques antes de la cuarta aplicación. El tanque que haya aplicado el debuff en ese momento debe retirarse para evitar el siguiente golpe.",
"* |cff71d5ff|Hspell:205344|h[Expel: Orb de Destrucción]|h|r: lanza una esfera de fuego que persigue a un jugador a través del puente - el jugador marcado la arrastra hasta el extremo del puente y la deja que explote allí.",
"* |cff71d5ff|Hspell:205862|h[Golpe]|h|r: cada golpe rompe otra parte del puente - la raid se mueve a la sección en la que no está golpeando, manteniendo una distancia segura del borde que se derrumba, y utiliza un enfriamiento para absorber la onda de choque.",
"* |cff71d5ff|Hspell:205368|h[Rayo de Fel]|h|r: un rayo de energía de Fel que emite hacia un lado del puente - esquiva el rayo y posicionalo en el suelo limpio mientras se extingue.",
};

pack["102263"] = { "Skorpyron",
"* |cff71d5ff|Hspell:204275|h[Arcanoslash]|h|r: Un golpe de daño pesado que lo sobrecarga cuando impacta - el tanque lo absorbe con un hechizo defensivo y la raid lo mantiene en movimiento entre hechizos.",
"* |cff71d5ff|Hspell:204372|h[Llamada de Escorpid]|h|r: Los escorpid añaden se escabullen de las grietas - Elimínalos rápidamente con ataques de área, antes de que sus venenos hagan que la sala sea inviable.",
"* |cff71d5ff|Hspell:204292|h[Fragmento roto]|h|r: fragmentos de cristal que sobresalen del suelo - déjalos espacio para que el ataque lance fragmentos en todas direcciones;",
"* estos mismos fragmentos son el refugio donde esconderse cuando comienza a lanzar la onda de choque.",
"* |cff71d5ff|Hspell:204459|h[Vulnerable]|h|r: cualquier jugador que sea alcanzado por un ataque de \"romper\" recibe un debuff de \"frágil\" durante 15 segundos que amplifica el siguiente golpe arcano - espárcense y déjenle que ataque antes de su próximo golpe.",
};

pack["103685"] = { "Tichondrius",
"* |cff71d5ff|Hspell:216024|h[Herida Volátil]|h|r: Aplicar debuff de reducción de armadura al tanque - los tanques deben alternarse para evitar que el debuff se acumule y el nuevo tanque debe entrar en el momento oportuno.",
"* |cff71d5ff|Hspell:208230|h[Fiesta de Sangre]|h|r: comienza a drenar la sangre del grupo - todos dentro de 30 yardas de él retroceden para mantenerse fuera del alcance, o se alimenta él mismo para recuperar salud.",
"* |cff71d5ff|Hspell:206480|h[Plaga de la carroña]|h|r: un debuff de plaga que salta a cualquier persona que esté cerca - los portadores de la plaga permanecen alejados del resto de la raid hasta que desaparezca.",
"* |cff71d5ff|Hspell:212794|h[Marca de Argus]|h|r: Marca a cuatro jugadores con la marca; los marcados deben dispersarse y mantener la distancia entre ellos mientras la marca esté activa.",
};

pack["103758"] = { "Augur estelar Etraeus",
"* |cff71d5ff|Hspell:205984|h[Gravitational Pull]|h|r: the tank carrying the active phase (frost, fel or void) gets yanked toward him - the other tank taunts and carries the boss so the stacks never settle twice on the same tank.",
"* |cff71d5ff|Hspell:205429|h[Star Sign: Crab]|h|r: un signo amarillo - los jugadores que lo tengan se agrupan, mientras que todos los demás se alejan de ellos, y los dos grupos permanecen separados.",
"* |cff71d5ff|Hspell:216344|h[Constelación: Dragón]|h|r: un signo azul - misma regla: coincide con jugadores del mismo signo, dispersarse lejos de todos los demás.",
"* |cff71d5ff|Hspell:216345|h[Star Sign: Hunter]|h|r: un signo verde - la misma regla otra vez: solo emparejarse con el mismo signo y mantener a los demás signos a una distancia segura.",
};

pack["104415"] = { "Anomalía cronomática",
"* |cff71d5ff|Hspell:206607|h[Partículas Cronométricas]|h|r: Aplicar debuff al tanque - los tanques deben alternar el uso de la habilidad antes de que los stacks se vuelvan demasiado pesados.",
"* |cff71d5ff|Hspell:219823|h[Power Overwhelming]|h|r: la anomalía mantiene los stacks que gana con cada cambio de fase, por lo que cuanto más larga sea la pelea, más daño hará todo. Intenta maximizar el daño y terminarla antes de que los stacks se acumulen.",
"* |cff71d5ff|Hspell:207012|h[Normal Time]|h|r: la sala vuelve a funcionar a velocidad normal – aprovecha para quemarlo a toda velocidad.",
"* |cff71d5ff|Hspell:207013|h[Tiempo Rápido]|h|r: carreras de tiempo - cada lanzamiento, bomba y haz llega antes de lo normal, así que esquiva un ritmo antes.",
};

pack["104154"] = { "Gul'dan",
"* |cff71d5ff|Hspell:206222|h[Bonds of Fel]|h|r: une a los jugadores (y al tanque) - la pareja vinculada se separa, se mantiene alejada del resto de la raid mientras el vínculo se desactiva, y el nuevo tanque ataca al jefe.",
"* |cff71d5ff|Hspell:208802|h[Corrosión del Alma]|h|r: el fuego del alma de los lazos causa más daño con cada pila - los portadores deben eliminar las pilas lo antes posible para evitar que la corrosión se descontrole.",
"* |cff71d5ff|Hspell:221606|h[Las Llamas de Sargeras]|h|r: lanza llamas infernales a los jugadores - los marcados deben salir de la instancia y dejar las llamas donde caen.",
"* |cff71d5ff|Hspell:206219|h[Fuego Líquido]|h|r: proyectiles de fuego de fuego que lanza hacia abajo - mantén las charcas alejadas del centro de la sala, ya que crecen y se vuelven más calientes a medida que avanza la pelea.",
};

pack["104288"] = { "Trilliax",
"* |cff71d5ff|Hspell:206641|h[Corte Arcano]|h|r: intercambiar golpes con el tanque - los tanques lo atacan después del primer golpe de cada ciclo.",
"* |cff71d5ff|Hspell:206488|h[Arcane Seepage]|h|r: la sustancia arcana gotea por el suelo - salta fuera de ella, ya que permanecer en la sustancia causa daño.",
"* |cff71d5ff|Hspell:206560|h[Cleaner Mode]|h|r: his cleaner side takes over for 45 seconds - the room fills with his sowing trails, so stand on clean ground and stay out of his path.",
"* |cff71d5ff|Hspell:206788|h[Toxic Slice]|h|r: usa el hechizo \"Toxic Slice\" (mientras limpias). El hechizo deja charcos tóxicos, así que esquiva el proyectil y observa el suelo que ha afectado.",
};

pack["104881"] = { "Hoja de hechizo Aluriel",
"* |cff71d5ff|Hspell:212492|h[Annihilate]|h|r: Golpea al tanque con la espada para dos golpes fuertes - el tanque lo absorbe con un enfriamiento y los dos intercambian golpes mientras dure el efecto.",
"* |cff71d5ff|Hspell:212647|h[Frostbitten]|h|r: los portadores de hielo marcados aplican efectos de congelación a cualquiera que permanezca cerca de ellos; mantén a los portadores a una distancia segura y los efectos desaparecerán.",
"* |cff71d5ff|Hspell:213864|h[Fase de Hielo]|h|r: Ella impregna la espada con hielo, creando parches helados y orbes congelados alrededor de la sala; distribúyense y tengan cuidado de dónde se establece el hielo.",
"* |cff71d5ff|Hspell:213867|h[Fase de fuego]|h|r: la espada se enciende en lugar de eso - deja rastros de quemaduras a su paso y con sus golpes, así que mantente en movimiento y evita que te quemen.",
};

pack["106643"] = { "Gran magistrix Elisande",
"* |cff71d5ff|Hspell:209615|h[Ablación]|h|r: Aplica el debuff de reducción de armadura al tanque, alternando entre los dos. Los tanques deben alternar la aplicación del debuff para evitar que se acumulen.",
"* |cff71d5ff|Hspell:209973|h[Explosión Destructiva]|h|r: el tanque lleva la bomba - el tanque la lleva al borde de la sala y se aleja para que la explosión no afecte al grupo.",
"* |cff71d5ff|Hspell:209598|h[Explosión de daño]|h|r: los jugadores marcados tienen una explosión que causa mucho daño al final de su duración - los jugadores marcados se dispersan y se mantienen alejados de todos hasta que la explosión termina.",
"* |cff71d5ff|Hspell:209971|h[Ablative Pulse]|h|r: un hechizo que lanza - interrumpirlo cuando esté en cooldown, de lo contrario, el pulso afectará a toda la raid.",
};

pack["104528"] = { "Gran botánico Tel'arn",
"* |cff71d5ff|Hspell:218503|h[Recursive Strikes]|h|r: stacking tank debuff - the tanks trade him before the third swing.",
"* |cff71d5ff|Hspell:218806|h[Flare]|h|r: Lanza un rayo directo al tanque - el off-tank y cualquiera que esté cerca, deben apartarse, ya que los rayos se repiten rápidamente.",
"* |cff71d5ff|Hspell:218927|h[Grace of Nature]|h|r: crea un área que cura y fortalece a él mientras está dentro - el tanque lo arrastra fuera del área y la raid la destruye.",
"* |cff71d5ff|Hspell:218438|h[Caos Controlado]|h|r: canaliza y genera zonas de caos que se extienden y mueven por el suelo; vigila el terreno mientras las zonas se propagan y muévete para limpiar las áreas.",
};


-- --------------------------------- --
-- Tomb of Sargeras : Zona 1676 --
-- --------------------------------- --

pack["115844"] = { "Goroth",
"* |cff71d5ff|Hspell:231363|h[Armadura Ardiente]|h|r: su armadura se calienta más con cada golpe que recibe - los tanks lo atacan antes de que el daño aumente, y el tanque quemado se retira para evitar los siguientes golpes.",
"* |cff71d5ff|Hspell:233055|h[Pico Infernal]|h|r: los picos de roca infernal emergen debajo de los jugadores - sal del terreno elevado y ten cuidado con dónde se asientan los picos, nunca se derriten.",
"* |cff71d5ff|Hspell:233272|h[Shattering Star]|h|r: Un poderoso rayo que dispara a través de un jugador. El objetivo se aleja del grupo, y nadie debe estar en la trayectoria del rayo o detrás de un pilar, ya que esto lo destruirá.",
"* |cff71d5ff|Hspell:232249|h[Crashing Comet]|h|r: los cometas caen detrás de los jugadores marcados - los jugadores marcados corren hacia cada cometa para que éste impacte en su cráter en llamas, alejándose de todos.",
};

pack["116407"] = { "Harjatan",
"* |cff71d5ff|Hspell:231998|h[Raspado afilado]|h|r: su armadura inflige daño al tanque con cada golpe - los tanques lo atacan antes de que se acumulen cuatro cargas.",
"* |cff71d5ff|Hspell:233429|h[Frigid Blows]|h|r: sus golpes infligen daño de frío mientras el buff se acumula en él; empújalo mientras el buff aún está subiendo y prepárate para los golpes más potentes.",
"* |cff71d5ff|Hspell:231729|h[Aqueous Burst]|h|r: el Wavemender crea una onda de agua alrededor de sus objetivos y los cura – el jugador afectado se aleja de la onda y la raid ataca primero a los Wavemendres.",
"* |cff71d5ff|Hspell:234016|h[Asalto Implacable]|h|r: los enemigos gladiadores se fijan en un jugador y cargan - el jugador fijado desvía la carga y el resto de la parte se encarga de eliminar al enemigo rápidamente.",
};

pack["115767"] = { "Maestra Sassz'ine",
"* |cff71d5ff|Hspell:230201|h[Burden of Pain]|h|r: ata a un tanque con la \"Carga de Dolor\" - los tanques deben intercambiarse mientras la criatura ataca y los curanderos deben permanecer cerca del tanque afectado.",
"* |cff71d5ff|Hspell:230139|h[Hydra Shot]|h|r: Dispara una ráfaga desde todas las cuatro cabezas hacia los jugadores marcados - los jugadores marcados se dispersan y salen de la raid mientras los disparos impactan.",
"* |cff71d5ff|Hspell:230273|h[Dark Depths]|h|r: she floods patches of the floor with dark depths - the black pools rot and smother anyone standing inside them, so walk around and never linger.",
"* |cff71d5ff|Hspell:230214|h[Burden Pulse]|h|r: La oleada de dolor del Burden emana por toda la sala – contrarresta cada oleada con un enfriamiento mientras el tanque afectado mantiene el peso alejado del grupo.",
};

pack["116939"] = { "Avatar Caído",
"* |cff71d5ff|Hspell:236494|h[Desolado]|h|r: su toque desolador acumula en el tanque - los tanques lo atacan antes de que los stacks sean peligrosos.",
"* |cff71d5ff|Hspell:233556|h[Matriz Corrupta]|h|r: se teletransporta a la matriz corrupta - el tanque se mueve con él y vuelve a anclar el combate antes de que el rayo dispare de nuevo.",
"* |cff71d5ff|Hspell:240728|h[Essencia Corrompida]|h|r: sus explosiones sombrías corrompen la esencia de quien las recibe - la esencia corrompida sale hasta que la corrupción desaparece y nunca permite que las cargas aumenten.",
"* |cff71d5ff|Hspell:234059|h[Caos Desatado]|h|r: su caos desatado se desplaza por la plataforma, dejando estelas de fuego - observa el suelo y esquiva las corrientes.",
};

bos = { "Inquisición demoníaca",
"* |cff71d5ff|Hspell:233426|h[Scythe Sweep]|h|r: el demonio usa su azada en un amplio arco frente a él; el tanque debe dirigirla lejos de la raid y salir del alcance de cada movimiento.",
"* |cff71d5ff|Hspell:248713|h[Corrupción del Alma]|h|r: la corrupción se profundiza con cada pila - mantén las pilas de cada jugador por debajo de diez, rotando quién la carga.",
"* |cff71d5ff|Hspell:233104|h[Torment]|h|r: La build de Torment se basa en los jugadores cautivos mientras esperan - libera a los cautivos antes de que Torment alcance su máximo.",
"* |cff71d5ff|Hspell:233431|h[Quills]|h|r: espinas calcificadas explotan alrededor de un jugador - el jugador marcado se aleja del grupo y permite que las espinas se dispersen.",
};
pack["116691"] = bos; pack["116689"] = bos;

bos = { "Hermanas de la Luna",
"* |cff71d5ff|Hspell:239264|h[Fuego Lunar]|h|r: Aplica el efecto de Fuego Lunar en el tanque - el tanque debe intercambiar ataques con ella antes de que los stacks se dupliquen.",
"* |cff71d5ff|Hspell:236357|h[Fuente de Elune]|h|r: la fuente de Elune acumula y cambia el color de la luna de un jugador - prepárate para el cambio y cura mientras se produce.",
"* |cff71d5ff|Hspell:236550|h[Discorporate]|h|r: cuando el color de la luna del tanque ya no coincide con el suyo, el tanque se disocia - el nuevo tanque ataca y la pareja intercambia en cada lanzamiento.",
"* |cff71d5ff|Hspell:236596|h[Rapid Shot]|h|r: dispara una ráfaga rápida hacia un jugador - el jugador objetivo corre para alejarse mientras las flechas caen.",
};
pack["118523"] = bos; pack["118374"] = bos; pack["118518"] = bos;

pack["117269"] = { "Kil'jaeden",
"* |cff71d5ff|Hspell:239932|h[Garras de Fel]|h|r: las garras de fel golpean al tanque, alejándolo por la plataforma - dirígelo lejos de la raid, protege la garra con una postura defensiva y deja que el tanque reciba la atención después.",
"* |cff71d5ff|Hspell:236710|h[Erupción de Reflejos]|h|r: Aplica el debuff a los jugadores y a sus reflejos de sombra, que explotan bajo sus pies. Los jugadores deben moverse rápidamente y mantener la distancia de las explosiones.",
"* |cff71d5ff|Hspell:235059|h[Rupturing Singularity]|h|r: La singularidad se abre y arrastra la plataforma hacia ella – ten cuidado, la explosión arrastra y lanza a todos, así que ancla en el lado opuesto y prepárate para volar.",
"* |cff71d5ff|Hspell:238430|h[Explosión de Fuego Devastador]|h|r: lanza llamas devastadoras por toda la plataforma - mantente en movimiento para evitar las nuevas llamas y mantén la distancia, cada llama explota.",
};

pack["118289"] = { "Doncella Vigía",
"* |cff71d5ff|Hspell:235117|h[Alma Inestable]|h|r: tu alma se vuelve inestable hacia el fuego o la oscuridad - muévete al infuser correspondiente y mantén tu color hasta que la alma se estabilice.",
"* |cff71d5ff|Hspell:235267|h[Inestabilidad Masiva]|h|r: la inestabilidad masiva detona en toda la plataforma; prepárense para ello con un enfriamiento y mantengan cierta distancia entre los jugadores.",
"* |cff71d5ff|Hspell:235271|h[Infusión]|h|r: canaliza una infusión de luz o fel - mantén el color correspondiente y absorbe el ataque juntos en el lado derecho.",
"* |cff71d5ff|Hspell:236061|h[Fragmentos de esencia]|h|r: los fragmentos de esencia se dispersan después de cada golpe importante - recógelos para estabilizar un alma inestable.",
};

bos = { "Huésped Inhóspito",
"* |cff71d5ff|Hspell:236548|h[Torment]|h|r: los Torment se fortalecen rápidamente en los jugadores dentro del reino espiritual; gire la tarea del reino espiritual para que nadie acumule demasiados.",
"* |cff71d5ff|Hspell:236542|h[Sundering Doom]|h|r: el hechizo canaliza el daño y luego detona una explosión masiva; la raid se reúne para dividirla y luego corre para evitar la onda expansiva, mientras que el tanque principal asume el control.",
"* |cff71d5ff|Hspell:236544|h[Destrucción Inevitable]|h|r: su contraparte del otro lado del velo - el otro tanque lleva la bomba, y ninguno de los dos la lanza dos veces al mismo tanque.",
"* |cff71d5ff|Hspell:235924|h[Espada de Angustia]|h|r: La Espada de Angustia inflige daño sangrante a los jugadores, atrayéndolos hacia ella. El objetivo sale de la raid y la Espada de Angustia se daña por sí misma.",
};
pack["118460"] = bos; pack["118462"] = bos; pack["119072"] = bos;


-- --------------------------------- --
-- Trial of Valor : Zona 1648 --
-- --------------------------------- --

bos = { "Odyn",
"* |cff71d5ff|Hspell:227626|h[La Prueba de Odín]|h|r: su prueba se aplica al tanque que lo sostiene - los dos tanques se turnan para mantenerlo mientras la prueba se construye y nunca permiten que un solo tanque soporte todo el desafío.",
"* |cff71d5ff|Hspell:228918|h[Espada Forjada por la Tormenta]|h|r: lanza una espada forjada por la tormenta hacia el tanque o el sanador - corre para evitar la espada y el tanque la ataca para distraerlo.",
"* |cff71d5ff|Hspell:228171|h[Revivify]|h|r: las val'kyr canalizan un curado regenerativo para curar sus heridas; interrumpe el lanzamiento cada vez y mantén el daño continuo.",
"* |cff71d5ff|Hspell:227503|h[Branded]|h|r: los jugadores reciben el efecto \"Branded\" para aumentar su poder de atracción. Los jugadores con este efecto se posicionan en sus posiciones y canalizan el poder de atracción juntos.",
};
pack["114263"] = bos; pack["114361"] = bos; pack["114360"] = bos;

pack["114323"] = { "Guarm",
"* |cff71d5ff|Hspell:228201|h[Off the Leash]|h|r: Rompe la correa y corre salvajemente durante 30 segundos - mantén la formación durante la rampa y asegúrate de que los tanques estén preparados.",
"* |cff71d5ff|Hspell:227514|h[Fangs]|h|r: his fangs chomp the tank hard - the tanks trade him before the second chomp.",
"* |cff71d5ff|Hspell:228253|h[Shadow Lick]|h|r: Una cabeza lame a los jugadores con su sombra de oscuridad - los jugadores lamidos se alinean contra la cabeza cuyo saliva coincide con su lamido, y las sombras nunca deben mezclarse.",
"* |cff71d5ff|Hspell:228248|h[Frost Lick]|h|r: el Frost Lick congela a quien lo toca y lo congela por completo. Los curanderos deben limpiar al jugador congelado tan pronto como el ataque impacte.",
};

pack["114537"] = { "Helya",
"* |cff71d5ff|Hspell:227982|h[Bilewater Redox]|h|r: el lodo de Bilewater cubre su armadura - el tanque principal la ataca para sacarla del lodo, y todos mantienen la distancia para evitar el lodo que arrastra.",
"* |cff71d5ff|Hspell:228519|h[Golpe de Ancla]|h|r: su golpe de ancla impacta el suelo frente a ella - diríjala lejos de la banda y deja que el tanque principal asuma el golpe con cada impacto.",
"* |cff71d5ff|Hspell:229119|h[Esfera de Corrupción]|h|r: una esfera de corrupción se adhiere a un jugador - el portador aleja la esfera del grupo y la hace explotar en el borde.",
"* |cff71d5ff|Hspell:228054|h[Corrupción del Mar]|h|r: su corrupción se extiende por el agua que rodea la pelea, manténgase fuera del agua contaminada, la podredumbre se propaga a través de quien la toca.",
};


-- --------------------------------- --
-- Black Rook Hold : Zona 1501 --
-- --------------------------------- --

pack["98542"] = { "Amalgama de almas",
"* |cff71d5ff|Hspell:196930|h[Soulgorge]|h|r: Absorbe almas flotantes y se fortalece con cada pila, mantén a los súbditos a distancia y elimina a los que absorbe.",
"* |cff71d5ff|Hspell:194956|h[Reap Soul]|h|r: Reap ataca con cortes en toda la línea frontal; el tanque debe esquivar cada ataque.",
"* |cff71d5ff|Hspell:195254|h[Cuchilla giratoria]|h|r: Lanza una cuchilla giratoria hacia un jugador - la cuchilla gira mientras se desplaza.",
"* |cff71d5ff|Hspell:194966|h[Ecos del Alma]|h|r: los ecos del alma fijan su objetivo a un jugador - el jugador marcado huye del grupo mientras los ecos lo persiguen.",
};

pack["98696"] = { "Illysanna Cresta Cuervo",
"* |cff71d5ff|Hspell:197974|h[Golpe de hueso]|h|r: un golpe de hueso en el tanque - el tanque se prepara con una postura defensiva y los dos se alternan.",
"* |cff71d5ff|Hspell:197546|h[Brutal Glaive]|h|r: lanza un brutal glaive que persigue a un jugador - el marcado lo intercepta y lo neutraliza.",
"* |cff71d5ff|Hspell:197478|h[Dark Rush]|h|r: se lanza un ataque oscuro a través de los jugadores marcados - los jugadores marcados esquivan la línea de ataque.",
"* |cff71d5ff|Hspell:197418|h[Vengeful Shear]|h|r: her vengeful shear shears into the tank - heavy tank mechanic: swap and soak with a defensive.",
};

pack["98949"] = { "Atizarrabias el Odioso",
"* |cff71d5ff|Hspell:198245|h[Brutal Haymaker]|h|r: he winds up a brutal haymaker on the tank - brace it hard with a defensive before it lands.",
"* |cff71d5ff|Hspell:198079|h[Mirada odiosa]|h|r: su mirada odiosa apunta a un jugador, lo que provoca que este huya y supere su efecto.",
"* |cff71d5ff|Hspell:198073|h[Golpe]|h|r: su golpe hace que todos retrocedan de la plataforma, manténganse alejados de los bordes para evitar ser golpeados.",
"* |cff71d5ff|Hspell:198446|h[Vómito de Fel]|h|r: vomita fel en el suelo, extendiéndolo y dejando que cada parche se asiente.",
};

bos = { "Lord Kur'talos Cresta Cuervo",
"* |cff71d5ff|Hspell:198641|h[Whirling Blade]|h|r: gira su espada por toda la sala, mantente fuera de su alcance.",
"* |cff71d5ff|Hspell:198820|h[Darkblast]|h|r: los Darkblasts explotan en la posición de los jugadores - esquivar las zonas de explosión.",
"* |cff71d5ff|Hspell:199143|h[Nube]|h|r: Invoca las nubes de pesadilla en el área - mantente en movimiento y evita que te golpeen.",
"* |cff71d5ff|Hspell:201733|h[Enjambre]|h|r: murciélagos se agrupan alrededor de un jugador - el jugador marcado dispersa el enjambre y la parte del resto del grupo con un ataque de área.",
};
pack["98965"] = bos; pack["98970"] = bos;


-- --------------------------------- --
-- Cathedral of Eternal Night : Zona 1677 --
-- --------------------------------- --

pack["120793"] = { "Mephistroth",
"* |cff71d5ff|Hspell:233155|h[Nube de cadáveres]|h|r: su nube de cadáveres se extiende hacia adelante - los personajes cuerpo a cuerpo deben mantenerse detrás de él y la zona frontal debe quedar despejada.",
"* |cff71d5ff|Hspell:234817|h[Dark Solitude]|h|r: Dark Solitude marca a un jugador. Cuando expira, castiga a cualquiera que haya estado solo, así que únete a alguien hasta que desaparezca.",
"* |cff71d5ff|Hspell:233206|h[Shadow Fade]|h|r: se esconde en las sombras y sus demonios emergen - mantente alerta durante esta fase y usa ataques de área para eliminar las criaturas.",
"* |cff71d5ff|Hspell:233963|h[Perturbación Demoniaca]|h|r: Una perturbación demoníaca atraviesa el salón, prepárate para el gran golpe con una habilidad de reutilización.",
};

pack["119542"] = { "Domatrax",
"* |cff71d5ff|Hspell:236543|h[Felsoul Cleave]|h|r: su Felsoul Cleave golpea al tanque - los tanques intercambian los golpes.",
"* |cff71d5ff|Hspell:241622|h[Acercándose a la Muerte]|h|r: la muerte que se acerca inflige daño al grupo de forma constante; sane a través de ella y elimínelo antes de que alcance su máximo.",
"* |cff71d5ff|Hspell:234107|h[Energía Caótica]|h|r: lanza proyectiles de energía caótica a través del pasillo - cúbrase detrás de las columnas y interrumpa su línea de visión.",
"* |cff71d5ff|Hspell:200597|h[Enemigos]|h|r: los demonios se acercan - Elimínalos rápidamente con ataques de área mientras el tanque los controla.",
};

pack["117193"] = { "Agronox",
"* |cff71d5ff|Hspell:236524|h[Esponjas]|h|r: las esponjas se extienden a su alrededor – esquiva las explosiones a medida que se propagan.",
"* |cff71d5ff|Hspell:235751|h[Timber Smash]|h|r: su Timber Smash empuja a los jugadores hacia atrás; manténganse alejados de los bordes y prepárense para el impacto.",
"* |cff71d5ff|Hspell:238598|h[Choking Vine]|h|r: a choking vine roots a player - peel the rooted one out of it before the ticks pile up.",
"* |cff71d5ff|Hspell:240065|h[Secreción Suculenta]|h|r: las piscinas de secreción succulenta cubren el suelo: ten cuidado con la savia y nunca te quedes dentro.",
};

pack["117194"] = { "Tollinador el Desdeñoso",
"* |cff71d5ff|Hspell:237726|h[Mirada Despectiva]|h|r: su mirada despectiva afecta a un jugador, haciéndole retroceder mientras está bajo su efecto.",
"* |cff71d5ff|Hspell:243124|h[Heave Crud]|h|r: lanza grupos de \"crud\" a los jugadores - esquiva los grupos voladores y ten cuidado con dónde impactan.",
"* |cff71d5ff|Hspell:237276|h[Pulverizing Crudgel]|h|r: he wades in with the pulverizing crudgel - outrun the swings, never tank them.",
"* |cff71d5ff|Hspell:238484|h[Control Mental]|h|r: el control mental captura a un jugador; el grupo controla al jugador controlado mentalmente hasta que se libera.",
};


-- --------------------------------- --
-- Court of Stars : Zona 1571 --
-- --------------------------------- --

pack["104215"] = { "Capitán de patrulleros Gerdo",
"* |cff71d5ff|Hspell:219488|h[Streetsweeper]|h|r: Esparará minas de trampa por toda la calle; muévete entre ellas y nunca te detengas sobre una.",
"* |cff71d5ff|Hspell:207815|h[Botella de poción]|h|r: lanza una botella que causa fuego - sal de la zona que quema.",
"* |cff71d5ff|Hspell:207261|h[Corte Resonante]|h|r: los cortes resonantes crean círculos en el suelo - muévete fuera de cada círculo antes de que explote.",
"* |cff71d5ff|Hspell:207278|h[Aislamiento Arcano]|h|r: sus trampas de aislamiento arcano atrapan a cualquiera que esté quieto; mantente en movimiento y evita las runas.",
};

pack["104217"] = { "Talixae Corona de Fuego",
"* |cff71d5ff|Hspell:208165|h[Withering Soul]|h|r: his withering soul leeches the tank - the fresh tank taunts and the leeched tanks step apart.",
"* |cff71d5ff|Hspell:207906|h[Intensidad del Fuego]|h|r: su intensidad del fuego aumenta cuanto más tiempo permanece en el campo de batalla, - ¡víralo antes de que se acumulen los stacks!",
"* |cff71d5ff|Hspell:207881|h[Erupción infernal]|h|r: las erupciones infernales emergen del suelo - esquiva cada anillo que dejen.",
};

pack["104218"] = { "Consejero Melandrus",
"* |cff71d5ff|Hspell:209602|h[Surge]|h|r: su ataque de [Surge] golpea al frente, por lo que los personajes cuerpo a cuerpo deben mantenerse detrás y el frente debe quedar despejado.",
"* |cff71d5ff|Hspell:209676|h[Slicing Maelstrom]|h|r: su Slicing Maelstrom atraviesa la sala - dispersarse y absorber el daño con curaciones.",
"* |cff71d5ff|Hspell:209628|h[Gale]|h|r: los vientos de {Gale} atraviesan la plataforma - esquiva las paredes de viento a medida que se cruzan.",
};


-- --------------------------------- --
-- Darkheart Thicket : Zona 1466 --
-- --------------------------------- --

pack["96512"] = { "Archidruida Glaidalis",
"* |cff71d5ff|Hspell:196354|h[Salto]|h|r: salta hacia la posición de un jugador - el jugador objetivo se mueve fuera del punto de aterrizaje.",
"* |cff71d5ff|Hspell:212464|h[Night Fall]|h|r: La noche cae en círculos oscuros por todo el Grove - esquiva cada zona afectada.",
"* |cff71d5ff|Hspell:198379|h[Rampage]|h|r: su \"Rampage\" acumula daño en el tanque - mecánica del tanque: cambiar y absorber daño con personajes defensivos.",
"* |cff71d5ff|Hspell:198477|h[Fixate]|h|r: El objetivo [Fixate] se mantiene en movimiento y esquiva los ataques.",
};

pack["103344"] = { "Corazón de Roble",
"* |cff71d5ff|Hspell:204666|h[Shattered Earth]|h|r: Rompe el suelo frente a él, lo que provoca combates cuerpo a cuerpo desde detrás y que todos los demás se mantengan alejados de la grieta.",
"* |cff71d5ff|Hspell:204658|h[Lanzar objetivo]|h|r: agarra a un jugador y lo lanza contra la pared, el lado de la pared permanece despejado y los curanderos lo atrapan al caer.",
"* |cff71d5ff|Hspell:212786|h[Uproot]|h|r: Realiza {Uproot} y cambia de postura - prepárate para el cambio de fase.",
"* |cff71d5ff|Hspell:204574|h[Raíces]|h|r: raíces estrangulantes se extienden por el suelo - ten cuidado con tus pies y sal de la zona de crecimiento.",
};

pack["99200"] = { "Dresaron",
"* |cff71d5ff|Hspell:191325|h[Respiración]|h|r: la respiración se lanza hacia adelante - mantenla fuera.",
"* |cff71d5ff|Hspell:199389|h[Roar]|h|r: Su rugido aterroriza a todos los cercanos; contrarresta el rugido con un efecto que reduzca el miedo.",
"* |cff71d5ff|Hspell:199345|h[Down Draft]|h|r: su ráfaga de viento arrastra a todos por el suelo, manténte en movimiento en contra de la fuerza.",
"* |cff71d5ff|Hspell:199460|h[Rocas que caen]|h|r: rocas caen por toda la zona - observa las cascadas y esquiva los impactos.",
};

pack["99192"] = { "Sombra de Xavius",
"* |cff71d5ff|Hspell:200243|h[Pesadilla Despierta]|h|r: la pesadilla despierta a un jugador - el objetivo se aleja hasta que las visiones desaparecen.",
"* |cff71d5ff|Hspell:200289|h[Paranoia]|h|r: La paranoia afecta a los jugadores y les genera nerviosismo; los afectados se mantienen alejados unos de otros.",
"* |cff71d5ff|Hspell:200050|h[Apocalipsis Nocturno]|h|r: su apocalipsis nocturno detona en todo el claro - prepárense con un enfriamiento de raid.",
"* |cff71d5ff|Hspell:200238|h[Feed on the Weak]|h|r: he feeds on the wounded - keep everyone above the bottom third so the feed never lands.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91784"] = { "Señor de la guerra Parjesh",
"* |cff71d5ff|Hspell:192072|h[Refuerzos]|h|r: Invoca a los refuerzos – Elimínalos rápidamente antes de que se agrupen.",
"* |cff71d5ff|Hspell:192094|h[Pico Implacable]|h|r: lanza un pica que impacta en el suelo - esquiva los picos al caer.",
"* |cff71d5ff|Hspell:191900|h[Onda de impacto]|h|r: su onda de impacto atraviesa la plataforma, muévete fuera del camino de la ola.",
"* |cff71d5ff|Hspell:197502|h[Restoration]|h|r: Se cura constantemente, interrumpe la restauración cada vez que lo haga.",
};

pack["91789"] = { "Lady Espiral de Odio",
"* |cff71d5ff|Hspell:193682|h[Enemigos]|h|r: ella envía a los seacrawlers - el tanque los contiene y el raid los ataca con ataques de área.",
"* |cff71d5ff|Hspell:193698|h[Maldición de la Bruja]|h|r: Su maldición marca a los jugadores: la maldición se extiende desde la raid hasta que la marca desaparece.",
};

pack["91797"] = { "Rey Barbaprofunda",
"* |cff71d5ff|Hspell:193093|h[Golpe al suelo]|h|r: su golpe al suelo hace temblar la plataforma; asegúrenla y eviten estar en las grietas.",
"* |cff71d5ff|Hspell:193152|h[Quake]|h|r: su temblor sacude el suelo, mantente en movimiento durante el temblor.",
"* |cff71d5ff|Hspell:193051|h[Llama al Mar]|h|r: Llama al mar en oleadas que se extienden por la sala. Esquiva cada ola a medida que atraviesa la sala.",
"* |cff71d5ff|Hspell:193018|h[Bubbles]|h|r: sus burbujas atrapan a un jugador; la raid rompe la burbuja y lo libera.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91808"] = { "Serpentrix",
"* |cff71d5ff|Hspell:191855|h[Toxic Wound]|h|r: his toxic wound stacks on the tank - the tanks trade him before it festers.",
"* |cff71d5ff|Hspell:191798|h[Viento]|h|r: el viento golpea la plataforma, manténte en movimiento en contra de las ráfagas.",
"* |cff71d5ff|Hspell:191873|h[Sumersión]|h|r: Sumérgete y re-emerges en otro lugar - mantén la alerta durante el descenso y re-engancha limpiamente.",
"* |cff71d5ff|Hspell:191858|h[Toxic Pool]|h|r: toxic pools settle where he dives - never stand in the pools.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["96028"] = { "Cólera de Azshara",
"* |cff71d5ff|Hspell:192617|h[Inundación Masiva]|h|r: su inundación masiva inunda toda la plataforma; prepárense con un enfriamiento de raid.",
"* |cff71d5ff|Hspell:192680|h[Tornado]|h|r: El tornado persigue al jugador por la plataforma, mientras que el kite lo aleja mientras gira.",
"* |cff71d5ff|Hspell:192706|h[Bomba Arcana]|h|r: su bomba arcana impacta donde está marcada - aléjate del punto antes de que explote.",
};


-- --------------------------------- --
-- Halls of Valor : Zona 1477 --
-- --------------------------------- --

pack["94960"] = { "Hymdall",
"* |cff71d5ff|Hspell:193092|h[Sweeping Cleave]|h|r: his sweeping cleave rakes the ground - dodge the sweep and fight from the sides.",
"* |cff71d5ff|Hspell:188404|h[Respiración]|h|r: la criatura que llama exhala un aliento por el suelo - sal del alcance del aliento.",
"* |cff71d5ff|Hspell:193235|h[Danza de Espadas]|h|r: las espadas giran a su alrededor - manténgase fuera de las espadas giratorias.",
"* |cff71d5ff|Hspell:191284|h[Cuerno de Valor]|h|r: su cuerno llama a la bestia a su lado - destruye a la bestia en el momento en que aterrice.",
};

pack["95833"] = { "Hyrja",
"* |cff71d5ff|Hspell:192048|h[Expulsar Luz]|h|r: expulsa fragmentos de luz por toda la sala - esquiva los fragmentos de luz.",
"* |cff71d5ff|Hspell:192018|h[Escudo de Luz]|h|r: su escudo de luz mantiene al tanque dentro de su rayo - el tanque se libera y el nuevo tanque ataca.",
"* |cff71d5ff|Hspell:192307|h[Sanctify]|h|r: Su Sanctify inunda la plataforma con fuego sagrado - aléjate del anillo brillante.",
"* |cff71d5ff|Hspell:200901|h[Ojo de la tormenta]|h|r: el ojo de la tormenta arrastra a los jugadores - manténganse alejados del efecto de atracción y de los bordes.",
};

bos = { "Fenryr",
"* |cff71d5ff|Hspell:197556|h[Salto]|h|r: salta a la posición de un jugador - el jugador objetivo despeja el punto de aterrizaje.",
"* |cff71d5ff|Hspell:196838|h[Fixate]|h|r: Fixa a un jugador y lo persigue - el movimiento lo guía alrededor del salón.",
"* |cff71d5ff|Hspell:196512|h[Frenesí de Garra]|h|r: su frenesí de garra golpea a todos en alcance - extiéndanse y prepárense durante el frenesí.",
"* |cff71d5ff|Hspell:196543|h[Aullido]|h|r: su aullido provoca pánico en la sala – interrumpe el aullido o prepárate para el pánico.",
};
pack["95674"] = bos; pack["99868"] = bos;

pack["95675"] = { "Rey dios Skovald",
"* |cff71d5ff|Hspell:193783|h[Escudo de Avaloren]|h|r: mientras sostiene el escudo, absorbe casi todo el daño. Aplica quemaduras hasta que el escudo se rompa.",
"* |cff71d5ff|Hspell:193659|h[Felblaze Rush]|h|r: Utiliza Felblaze Rush para atravesar rápidamente; esquiva la línea de ataque cuando se acerque.",
"* |cff71d5ff|Hspell:194112|h[Claim the Aegis]|h|r: he tries to claim the aegis for himself - interrupt the claim or the fight gets harder.",
"* |cff71d5ff|Hspell:193668|h[Savage Blade]|h|r: su espada salvaje abre al tanque - mecánica del tanque: intercambia y absorbe daño con un hechizo defensivo.",
};

pack["95676"] = { "Odyn",
"* |cff71d5ff|Hspell:198072|h[Spear of Light]|h|r: lanza jabalina tras jabalina contra el suelo - esquiva las jabalinas que caen.",
"* |cff71d5ff|Hspell:198263|h[Tempest]|h|r: su escopeta de tormenta lo rodea - corre de la tormenta en lugar de quedarte en ella.",
"* |cff71d5ff|Hspell:198077|h[Shatter Spears]|h|r: sus lanzas se rompen y proyectan fragmentos - extiendan la distancia después de cada impacto.",
"* |cff71d5ff|Hspell:197961|h[Marca Rúnica]|h|r: la marca rúnica marca a los jugadores - el jugador marcado toma su marca y se posiciona sobre las runas.",
};

-- --------------------------------- --
-- Maw of Souls : Zona 1492 --
-- --------------------------------- --

pack["96756"] = { "Ymiron, el Rey Caído",
"* |cff71d5ff|Hspell:193460|h[Bane]|h|r: his bane bolts streak at players - dodge the bolts as they fly.",
"* |cff71d5ff|Hspell:193211|h[Dark Slash]|h|r: su Dark Slash abre al tanque - mecánica del tanque: intercambiar y absorber el daño con una habilidad defensiva.",
"* |cff71d5ff|Hspell:193364|h[Gritos de los muertos]|h|r: los muertos gritan a través del barco – prepárense para los gritos en lugar de permanecer en ellos.",
"* |cff71d5ff|Hspell:193977|h[Viento]|h|r: el viento azota la cubierta, manténgase alejado de los bordes debido al empujón.",
};

pack["96754"] = { "Harbaron",
"* |cff71d5ff|Hspell:194327|h[Summon the Fragment]|h|r: he summons the fragment to his side - burst the fragment down before it lands.",
"* |cff71d5ff|Hspell:194231|h[Servidor de la Marea]|h|r: sus sirvientes se levantan con la marea - elimínalos rápidamente.",
"* |cff71d5ff|Hspell:194266|h[Ruptura del Vacío]|h|r: esta habilidad desorienta al grupo; interrumpe la habilidad cuando esté disponible.",
"* |cff71d5ff|Hspell:194216|h[Scythe]|h|r: su onda de choque con la hoz se desvanece - salta sobre la ola o mantente alejado de ella.",
};

pack["96759"] = { "Helya",
"* |cff71d5ff|Hspell:197262|h[Corrupción del Mar]|h|r: su corrupción se filtra en el agua - evita estar en el agua contaminada mientras se acumula.",
"* |cff71d5ff|Hspell:196947|h[Submerged]|h|r: se sumerge y cambia de fase - reagruparse limpiamente y mantener la atención durante el descenso.",
"* |cff71d5ff|Hspell:202088|h[Brackwater Barrage]|h|r: su Brackwater Barrage golpea hacia adelante - los personajes cuerpo a cuerpo deben permanecer detrás de ella.",
"* |cff71d5ff|Hspell:227233|h[Aliento]|h|r: su aliento quema delante de ella - mantenla alejada de la parte frontal.",
};


-- --------------------------------- --
-- Neltharion's Lair : Zona 1458 --
-- --------------------------------- --

pack["91003"] = { "Rokmora",
"* |cff71d5ff|Hspell:188169|h[Fragmentos de Razor]|h|r: los fragmentos de Razor salen de su cristal - esquiva los fragmentos a medida que se dispersan.",
"* |cff71d5ff|Hspell:188114|h[Shatter]|h|r: Rompe la roca en pedazos - proporciona espacio para el ataque y evita los escombros.",
"* |cff71d5ff|Hspell:192800|h[Gas Tóxico]|h|r: el gas tóxico se filtra por el pasillo – evita las nubes que se desplazan.",
};

pack["91004"] = { "Ularogg Formarriscos",
"* |cff71d5ff|Hspell:216290|h[Golpe de la Montaña]|h|r: sus golpes caen desde la montaña - esquiva el golpe.",
"* |cff71d5ff|Hspell:193375|h[Grito de las Profundidades]|h|r: su grito llama a los trogs – Aplica daño en área a las criaturas antes de que ataquen en grupo.",
"* |cff71d5ff|Hspell:216249|h[Postura del Montaña]|h|r: aumenta su postura y cambia el combate – prepárate para el cambio de fase.",
"* |cff71d5ff|Hspell:198496|h[Sunder]|h|r: su sunder abre la armadura del tanque - mecánica del tanque: intercambia y absorbe el daño con una habilidad defensiva.",
};

pack["91005"] = { "Naraxas",
"* |cff71d5ff|Hspell:209906|h[Fixate]|h|r: su Fixate ataca a un jugador, el jugador atado queda desprendido y el boss sufre daño.",
"* |cff71d5ff|Hspell:199176|h[Spiked Tongue]|h|r: his spiked tongue lashes out in front - the front stays clear of the lash.",
"* |cff71d5ff|Hspell:199817|h[Enemigos]|h|r: los ritualistas se acercan para alimentarla - interrumpir el ritual y eliminarlos rápidamente.",
"* |cff71d5ff|Hspell:188494|h[Rancid Maw]|h|r: Evita que [Rancid Maw] ataque desde las pozas en el suelo - nunca te quedes dentro de la boca.",
};

pack["91007"] = { "Dargrul el Infrarrey",
"* |cff71d5ff|Hspell:200700|h[Deslizamiento de Lava]|h|r: su deslizamiento de lava atraviesa la cueva, esquiva el deslizamiento a medida que se desplaza.",
"* |cff71d5ff|Hspell:200551|h[Puntas de Cristal]|h|r: las puntas de cristal emergen debajo de los jugadores – aléjense de las puntas cuando suban.",
"* |cff71d5ff|Hspell:200154|h[Odio Ardiente]|h|r: su odio ardiente se acumula mientras ruge, aplica el daño antes de que los stacks alcancen su máximo.",
"* |cff71d5ff|Hspell:200732|h[Sobrecarga de Fuego]|h|r: su martillo de sobrecarga de fuego golpea al tanque - mecánica del tanque: intercambia y absorbe el golpe con una habilidad defensiva.",
};


-- --------------------------------- --
-- Return to Karazhan : Zona 1651 --
-- --------------------------------- --

pack["113971"] = { "Doncella de Virtud",
"* |cff71d5ff|Hspell:227789|h[Sacred Ground]|h|r: su Sacred Ground quema a cualquiera que esté en el círculo consagrado - evita estar en el círculo.",
"* |cff71d5ff|Hspell:227823|h[Holy Wrath]|h|r: Su Holy Wrath causa una explosión - manténganse separados, tanto el sanador como el tanque, para evitar que la explosión los afecte a todos.",
"* |cff71d5ff|Hspell:227800|h[Holy Shock]|h|r: se cura a sí misma con Holy Shock - interrumpe Holy Shock cada vez que la use.",
"* |cff71d5ff|Hspell:227508|h[Repentance]|h|r: Su Repentance controla las mentes de los jugadores. Elimina rápidamente a los controlados y prepárate para el lanzamiento.",
};

bos = { "Sala de la Ópera: Bella Bestia",
"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: los escobas limpian con un efecto de polvo severo - Aplica el efecto de polvo severo a los escobas y deja que mueran junto con ellos.",
"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: Destruir los hexes de Kara Kazham antes de que impacten.",
"* |cff71d5ff|Hspell:228193|h[Incendio Ardiente]|h|r: los incendios ardientes se dispersan por el escenario – esquiva las llamas y propaga el fuego.",
"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: the wand channels its heat wave - interrupt the cast every time.",
};
pack["114329"] = bos; pack["114522"] = bos; pack["114330"] = bos; pack["114328"] = bos;

bos = { "Sala de la Ópera: Historia de Poniente",
"* |cff71d5ff|Hspell:227568|h[Golpe de pierna]|h|r: su golpe de pierna con azadía golpea a todos los cercanos - corre para evitar el golpe en lugar de quedarte quieto.",
"* |cff71d5ff|Hspell:227777|h[Ritual del Trueno]|h|r: el ritual del trueno marca a los jugadores, separándose de cada zona marcada.",
"* |cff71d5ff|Hspell:227420|h[Bubble Blast]|h|r: the parrot channels its bubble blast - interrupt the cast.",
"* |cff71d5ff|Hspell:227783|h[Wash Away]|h|r: su habilidad Wash Away golpea el tablero - salta sobre la ola o mantente alejado.",
};
pack["114261"] = bos; pack["114260"] = bos;

bos = { "Sala de la Ópera: Makaku",
"* |cff71d5ff|Hspell:227477|h[Invocar más enemigos]|h|r: los bichos se concentran alrededor de ellos - Aplica daño en área a los bichos rápidamente.",
"* |cff71d5ff|Hspell:227776|h[Magia magnífica]|h|r: sus poderosos ataques mágicos atraviesan el escenario; cúbrase y rompa su línea de visión.",
"* |cff71d5ff|Hspell:227416|h[Radiación maravillosa]|h|r: su radiación maravillosa inunda el salón: aléjate de la radiación y prepárate para la ceguera.",
};
pack["114284"] = bos; pack["114251"] = bos;

pack["114252"] = { "Devorador de maná",
"* |cff71d5ff|Hspell:227523|h[Void de Energía]|h|r: su Void de Energía agota a los lanzadores de hechizos - los sanadores deben gestionar su maná y dejar que los voids permanezcan donde se originaron.",
"* |cff71d5ff|Hspell:227618|h[Bomba Arcana]|h|r: su bomba arcana impacta en un lugar marcado - muévete antes de que explote.",
"* |cff71d5ff|Hspell:227507|h[Essencia Decimadora]|h|r: la esencia decimadora causa daño en un área amplia, así que distribúyense y curad a los compañeros mientras se activa.",
"* |cff71d5ff|Hspell:227297|h[Coalesce Power]|h|r: sus orbes coalescidos se fusionan en una sola bola masiva - compartan el ataque de la bola en conjunto en lugar de consumirla por completo.",
};

bos = { "Attumen el Montero",
"* |cff71d5ff|Hspell:227363|h[Pisotón Poderoso]|h|r: su poderoso pisotón rompe el suelo - interrumpe el pisotón cuando esté disponible.",
"* |cff71d5ff|Hspell:227365|h[Spectral Charge]|h|r: his spectral charge barrels through the room - dodge the charging path.",
"* |cff71d5ff|Hspell:227339|h[Mezair]|h|r: su mezair cubre la sala desde el caballo - despeja el camino del ataque montado.",
"* |cff71d5ff|Hspell:227493|h[Golpe Mortal]|h|r: el Golpe Mortal daña al tanque - mecánica del tanque: intercambiar y absorber el daño con una habilidad defensiva.",
};
pack["114262"] = bos; pack["114264"] = bos;

pack["114312"] = { "Moroes",
"* |cff71d5ff|Hspell:227672|h[Will Breaker]|h|r: golpea al tanque con sus martillos, reduciendo su defensa - el tanque intercambia el golpe.",
"* |cff71d5ff|Hspell:227737|h[Vanish]|h|r: se esconde en las sombras y ataca desde allí - mantén la formación dispersa cuando desaparezca.",
"* |cff71d5ff|Hspell:227872|h[Ghastly Purge]|h|r: his ghastly purge calls the guests in - AoE the guests down before they stack up.",
"* |cff71d5ff|Hspell:227545|h[Mana Drain]|h|r: su drenaje de maná saca la maná a los lanzadores — bloquéalo o protégete del drenaje.",
};

pack["114462"] = { "Curator",
"* |cff71d5ff|Hspell:227267|h[Enemigos]|h|r: los rayos se dirigen hacia él - elimínalos, pero nunca los saques de su posición.",
"* |cff71d5ff|Hspell:227254|h[Evocación]|h|r: Evoca para recuperarse - ataca con fuerza a través de la ventana.",
"* |cff71d5ff|Hspell:227465|h[Descarga de Poder]|h|r: su descarga de poder sale en forma de explosiones - manténganse alejados de cada explosión.",
};

pack["114350"] = { "Sombra de Medivh",
"* |cff71d5ff|Hspell:227615|h[Inferno Bolt]|h|r: sus proyectiles de fuego atraviesan el salón - esquiva los proyectiles mientras vuelan.",
"* |cff71d5ff|Hspell:228269|h[Corona de Fuego]|h|r: su corona de fuego golpea el suelo - nunca cruces la corona, ya que explota al contacto.",
"* |cff71d5ff|Hspell:227628|h[Arcane Missiles]|h|r: sus proyectiles arcanos golpean al tanque - el tanque intercambia golpes con los proyectiles.",
"* |cff71d5ff|Hspell:227592|h[Frostbite]|h|r: his frostbite freezes the tank's plate - interrupt the frostbite.",
};

pack["114790"] = { "Viz'aduum el Observador",
"* |cff71d5ff|Hspell:229159|h[Sombras Caóticas]|h|r: las sombras caóticas se acercan a los jugadores – dispersa las sombras lejos del combate.",
"* |cff71d5ff|Hspell:229242|h[Rayo de Fuego]|h|r: su rayo de fuego atraviesa las murallas - esquiva la línea del rayo.",
"* |cff71d5ff|Hspell:229151|h[Disintegrate]|h|r: su Disintegrar destruye toda la plataforma; observa la línea y sal de ella.",
"* |cff71d5ff|Hspell:229083|h[Burning Blast]|h|r: his burning blast sears the front of him - the melee stays behind.",
};

pack["114895"] = { "Nightbane",
"* |cff71d5ff|Hspell:228796|h[Quema del Alma]|h|r: Quema del Alma quema a los jugadores más cercanos - dispersarse para evitar el daño y alejarse del tanque.",
"* |cff71d5ff|Hspell:228785|h[Aliento]|h|r: su aliento quema delante de él - manténgase alejado de la parte frontal.",
"* |cff71d5ff|Hspell:229307|h[Reverb Shadows]|h|r: los ecos de las sombras se extienden por el asentamiento - Aplica los efectos de las sombras a un área.",
"* |cff71d5ff|Hspell:228808|h[Tierra Carbonizada]|h|r: su tierra carbonizada quema el suelo - nunca te detengas en las zonas carbonizadas.",
};


-- --------------------------------- --
-- Seat of the Triumvirate : Zona 1753 --
-- --------------------------------- --

pack["124871"] = { "Zuraal el Ascendido",
"* |cff71d5ff|Hspell:1263282|h[Decimate]|h|r: su Decimate destruye la sala, prepárate para el gran ataque con un enfriamiento.",
"* |cff71d5ff|Hspell:1268916|h[Null Palm]|h|r: his null palm slams down in front - the melee stays behind him.",
"* |cff71d5ff|Hspell:1263399|h[Oozing Slam]|h|r: su golpe de ooze deja atrás pequeños monstruos - Aplica daño en área a los monstruos a medida que se acercan.",
"* |cff71d5ff|Hspell:1263440|h[Corte del Vacío]|h|r: su corte del vacío abre al tanque - mecánica del tanque: cambia y absorbe con un hechizo defensivo.",
};

pack["124872"] = { "Saprish",
"* |cff71d5ff|Hspell:1280064|h[Desplazamiento de fase]|h|r: se desplaza entre sus plataformas de mascota - re-engage dondequiera que reaparezca.",
"* |cff71d5ff|Hspell:245738|h[Salto de Sombra]|h|r: su mascota sombra salta sobre un jugador - el jugador objetivo cancela el salto.",
"* |cff71d5ff|Hspell:247175|h[Bomba del Vacío]|h|r: su bomba del vacío marca un punto – aléjate del punto antes de la explosión.",
"* |cff71d5ff|Hspell:1263523|h[Sobrecarga]|h|r: su sobrecarga atraviesa la sala, cura a través del impacto y distribuye la curación.",
};

pack["124874"] = { "Virrey Nezhar",
"* |cff71d5ff|Hspell:244750|h[Mind Blast]|h|r: his mind blasts pierce the tank - the tanks trade the blasts.",
"* |cff71d5ff|Hspell:1263542|h[Infusión de Vacío Masivo]|h|r: su Infusión de Vacío Masivo abarca la sala; prepárate para contrarrestarla con una habilidad de enfriamiento.",
"* |cff71d5ff|Hspell:1263538|h[Tentáculos del Umbral]|h|r: los tentáculos del umbral se levantan a su alrededor – destruye los tentáculos rápidamente.",
"* |cff71d5ff|Hspell:1263528|h[Repulsión]|h|r: Su repulsión empuja a todos hacia atrás; manténganse alejados de los bordes debido al efecto de empuje.",
};

pack["124870"] = { "L'ura",
"* |cff71d5ff|Hspell:1265426|h[Discordant Beam]|h|r: her discordant beam sweeps the hold - stay out of the beam line.",
"* |cff71d5ff|Hspell:1265421|h[Dirge]|h|r: El sonido de [Dirge] resuena por toda la sala: dispersen y curan a través del sonido.",
"* |cff71d5ff|Hspell:1264151|h[Disintegrate]|h|r: su habilidad Disintegrate atraviesa una línea; aléjate de la línea.",
"* |cff71d5ff|Hspell:1265689|h[Coro de los Grim]|h|r: el coro de los Grim se forma a su alrededor - rompe el coro y aplica daño en área a las criaturas que aparecen.",
};


-- --------------------------------- --
-- The Arcway : Zona 1516 --
-- --------------------------------- --

pack["98205"] = { "Corstilax",
"* |cff71d5ff|Hspell:196070|h[Suppression]|h|r: his suppression field pins players down - break out of the field and reposition.",
"* |cff71d5ff|Hspell:195804|h[Aislamiento]|h|r: su jaula de aislamiento atrapa a un jugador; rompa la jaula y libere al jugador.",
"* |cff71d5ff|Hspell:196115|h[Limpieza]|h|r: su pulso de limpieza cubre la sala, extiéndete y cura a través del pulso.",
};

pack["98207"] = { "Nal'tira",
"* |cff71d5ff|Hspell:199811|h[Blink]|h|r: salta a la posición de un jugador - el jugador objetivo elimina el efecto.",
"* |cff71d5ff|Hspell:200284|h[Araña]|h|r: Su telaraña atrapa a un jugador; la raid libera rápidamente al jugador atrapado.",
"* |cff71d5ff|Hspell:200040|h[Venom]|h|r: her venom pools the ground - never stand inside the venom.",
};

pack["98203"] = { "Ivanyr",
"* |cff71d5ff|Hspell:196562|h[Magia Volátil]|h|r: sus orbes de magia volátil se mueven entre los jugadores, espárcense para que nadie reciba dos.",
"* |cff71d5ff|Hspell:196805|h[Enlace Infernal]|h|r: su enlace infernal une a dos jugadores; los jugadores unidos se separan hasta que el enlace se rompe.",
"* |cff71d5ff|Hspell:196392|h[Carga de Maná]|h|r: Carga su maná y otorga potenciación - interrumpe la carga de maná cada vez.",
};

pack["98206"] = { "General Xakal",
"* |cff71d5ff|Hspell:197776|h[Fissure]|h|r: su ataque de fisura abre el suelo -> esquivar las grietas a medida que se abren.",
"* |cff71d5ff|Hspell:212030|h[Darkfall]|h|r: su ola de Darkfall se extiende - salta sobre la ola o mantente alejado.",
"* |cff71d5ff|Hspell:197810|h[Golpe]|h|r: su golpe empuja a todos hacia atrás, manténganse alejados de los bordes debido al empuje.",
};

pack["98208"] = { "Consejero Vandros",
"* |cff71d5ff|Hspell:203957|h[Time Lock]|h|r: su Time Lock congela a los jugadores en su lugar; asegúrate de agarrar el bloqueo y reanudar cuando se levante.",
"* |cff71d5ff|Hspell:203176|h[Mana inestable]|h|r: su orbe de mana inestable explota - esquiva los orbes mientras vuelan.",
"* |cff71d5ff|Hspell:203833|h[Time Split]|h|r: Divide el tiempo y crea una copia de sí mismo que camina por la sala. Destruye la copia como al original.",
"* |cff71d5ff|Hspell:202974|h[Bomba de Fuerza]|h|r: su bomba de fuerza hace que todos caigan - manténganse alejados de los bordes debido al efecto de caída.",
};


-- --------------------------------- --
-- Vault of the Wardens : Zona 1493 --
-- --------------------------------- --

pack["95885"] = { "Tirathon Saltheril",
"* |cff71d5ff|Hspell:204151|h[Golpes Oscuros]|h|r: sus golpes oscuros se acumulan en el tanque - mecánica del tanque: intercambiar y absorber daño con una habilidad defensiva.",
"* |cff71d5ff|Hspell:191823|h[Explosión Furiosa]|h|r: su explosión furiosa detona en la sala - interrumpe la explosión cada vez.",
"* |cff71d5ff|Hspell:202913|h[Fel Mortar]|h|r: su fel mortar lanza proyectiles por el campo - esquiva los proyectiles y sus impactos.",
"* |cff71d5ff|Hspell:202919|h[Fel Mortar Burn]|h|r: las motas que caen siguen quemando - nunca te pongas de pie sobre las zonas quemadas.",
};

pack["95886"] = { "Ceniz'golm",
"* |cff71d5ff|Hspell:192522|h[Fissure]|h|r: su ataque de fisura abre el suelo -> esquivar las grietas a medida que se abren.",
"* |cff71d5ff|Hspell:192621|h[Volcán]|h|r: su volcán entra en erupción a través del suelo - muévete fuera de la erupción antes de que explote.",
"* |cff71d5ff|Hspell:192631|h[Corona de Lava]|h|r: su corona de lava gira por todo el salón, evita el fuego que emana.",
};

pack["95887"] = { "Observador",
"* |cff71d5ff|Hspell:194942|h[Gaze]|h|r: su mirada abarca el área - manténgase fuera de la línea brillante.",
"* |cff71d5ff|Hspell:194289|h[Focused]|h|r: his focused gaze locks onto one player - everyone stays clear of the sweeping beam.",
"* |cff71d5ff|Hspell:194945|h[Gaze Burn]|h|r: la mirada concentrada quema el suelo - nunca te pongas de pie sobre el quemado.",
};

pack["95888"] = { "Cordana Cantovil",
"* |cff71d5ff|Hspell:197251|h[Kick]|h|r: Su golpe rompe la armadura del tanque; los tanques alternan los golpes.",
"* |cff71d5ff|Hspell:213583|h[Profundizando en las Sombras]|h|r: sus profundizando en las sombras consumen la celda - mantente en el terreno iluminado y destruye las sombras.",
"* |cff71d5ff|Hspell:205004|h[Venganza]|h|r: Su venganza se acumula mientras está enfurecida, así que elimínala antes de que alcance su máximo.",
"* |cff71d5ff|Hspell:192750|h[Oculto]|h|r: se esconde en las sombras para su fase final - reagruparse y atacarla desde cada aparición.",
};

pack["96015"] = { "Inquisidor Tormentorum",
"* |cff71d5ff|Hspell:200898|h[Teleport]|h|r: Se teletransporta por el estudio - re-engage donde reaparezca y mantén a los adds bajo control.",
"* |cff71d5ff|Hspell:200905|h[Sapo de Alma]|h|r: su sap de alma saca a un jugador de vida - interrumpe el sap cada vez.",
"* |cff71d5ff|Hspell:201488|h[Miedo]|h|r: su miedo se extiende por la sala, así que contrarresta el miedo con un efecto que lo reduzca.",
"* |cff71d5ff|Hspell:212564|h[Fijar mirada]|h|r: la mirada fija a un jugador - el objetivo se mueve y esquiva la mirada.",
};


-- --------------------------------- --
-- The Violet Hold : Zona 1544 --
-- --------------------------------- --

pack["101951"] = { "Estremefauce",
"* |cff71d5ff|Hspell:201379|h[Aliento]|h|r: su aliento congela en todo el pasillo - manténgase fuera de la parte frontal.",
"* |cff71d5ff|Hspell:201672|h[Tormenta implacable]|h|r: su tormenta implacable destruye anillos en la celda - esquiva cada anillo de tormenta.",
"* |cff71d5ff|Hspell:201960|h[Bomba de Hielo]|h|r: lanza bombas de hielo que explotan alrededor de los jugadores; busca refugio detrás de los objetos cuando exploten.",
};

pack["101950"] = { "Destripamentes Kaahrj",
"* |cff71d5ff|Hspell:201920|h[Shadow Crash]|h|r: su Shadow Crash salpica el suelo - esquiva las salpicaduras y extiéndete.",
"* |cff71d5ff|Hspell:201148|h[Doom]|h|r: su golpe de muerte golpea al tanque - mecánica del tanque: intercambia y absorbe el daño con un hechizo defensivo.",
"* |cff71d5ff|Hspell:201153|h[Eternal Darkness]|h|r: su oscuridad eterna inunda la fortaleza – contenga toda la ola con curaciones.",
};

pack["101976"] = { "Malífica Tormenta de Maná",
"* Sierra de discos: ataca al tanque con un daño continuo que se acumula - elimina los defensivos al principio o distráela una vez que las cargas alcancen un nivel alto.",
"* |cff71d5ff|Hspell:201159|h[Laser de dedo de Delta X-treme]|h|r: marca a un jugador con un proyectil de fuego instantáneo que deja un efecto de quemadura en cadena - elimina al marcado.",
"* |cff71d5ff|Hspell:201240|h[Ardiente Ardilla de Elementium]|h|r: lanza bombas, cubriendo el suelo y creando una explosión masiva para toda la raid. Haz clic derecho en cada bomba para desactivarla antes de que explote.",
"* |cff71d5ff|Hspell:201392|h[Pollo de cohete de Thorium]|h|r: Ataques de múltiples pollos disparando cohetes - destruye rápidamente o esquiva sus ráfagas.",
"* |cff71d5ff|Hspell:201572|h[Furia de Millificent]|h|r: la enoja y sus dispositivos disparan más rápido y son más resistentes: bombas sobrecargadas, pollo reforzado; concentra el daño.",
"* Disparo desde el borde: tu aliado proporciona apoyo desde el borde superior - los canales peligrosos (como Diabolical Doom) son interrumpidos con el láser de Millificent o tus hechizos de control.",
};

pack["101995"] = { "Fazinfecta",
"* |cff71d5ff|Hspell:202266|h[Ooze]|h|r: his ooze puddles the ground - never stand inside the ooze.",
};


pack["102246"] = { "Anub'esset",
"* |cff71d5ff|Hspell:202341|h[Golpe]|h|r: lanza sus jabalines hacia arriba, apuntando a los jugadores - muévete para evitar que te golpeen.",
"* |cff71d5ff|Hspell:201863|h[Enjambre]|h|r: el enjambre se extiende a su alrededor - Aplica daño en área a los insectos rápidamente.",
"* |cff71d5ff|Hspell:202480|h[Fixate]|h|r: La araña se fija en un jugador - la araña lo atrae hasta que muere.",
"* |cff71d5ff|Hspell:202217|h[Golpe de Mandíbula]|h|r: su golpe de mandíbula daña al tanque - mecánica del tanque: intercambiar y absorber el daño con una habilidad defensiva.",
};

pack["102431"] = { "Princesa de Sangre Thal'ena",
"* |cff71d5ff|Hspell:202779|h[Esencia de la Reina Sangrienta]|h|r: la esencia de la Reina Sangrienta está montada en un jugador - el portador de la esencia debe mantenerse alejado de todos hasta que se agote.",
"* |cff71d5ff|Hspell:202792|h[Sangre Sagrada]|h|r: Su habilidad de Sangre Sagrada aumenta rápidamente su poder. Los curanderos deben presionar a la instancia y reducirla antes de que alcance su máximo.",
"* |cff71d5ff|Hspell:202804|h[Control Mental]|h|r: Su control mental captura a un jugador. Elimina al jugador controlado y prepárate para el lanzamiento.",
"* |cff71d5ff|Hspell:203381|h[Llamar a las criaturas de sangre]|h|r: Invoca a sus murciélagos de sangre para atacar en área; elimina a los murciélagos antes de que formen una horda.",
};

pack["102446"] = { "Señor vil Betrug",
"* |cff71d5ff|Hspell:203641|h[Golpe de Fel]|h|r: su golpe de fel daña al tanque - mecánica del tanque: cambia y absorbe el daño con una habilidad defensiva.",
"* |cff71d5ff|Hspell:210879|h[Seed of Destruction]|h|r: his seeds sprout and detonate - dodge every sprouting seed.",
"* |cff71d5ff|Hspell:205233|h[Execute]|h|r: he executes whoever stands low - healers keep the raid well above the cutoff.",
"* |cff71d5ff|Hspell:202328|h[Golpe Poderoso]|h|r: su golpe poderoso empuja a todos hacia atrás; manténganse alejados de los bordes debido al empuje.",
};


-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

bos = { "Soultakers",
"* |cff71d5ff|Hspell:213420|h[Golpe de Tentáculo]|h|r: sus tentáculos golpean contra los restos - los personajes cuerpo a cuerpo deben mantenerse alejados de cada golpe.",
"* |cff71d5ff|Hspell:213532|h[Shatter Crew]|h|r: la Shatter Crew cubre la cubierta - Aplica daño en área a la tripulación mientras abordan.",
"* |cff71d5ff|Hspell:213665|h[Niebla Asaltante]|h|r: la niebla asaltante cubre a los jugadores – manténganse en movimiento para evitar la niebla.",
"* |cff71d5ff|Hspell:213522|h[Tripulación Maldita]|h|r: la tripulación maldita se sube a bordo - elimina rápidamente a los malditos antes de que se multipliquen.",
};
pack["106981"] = bos; pack["106982"] = bos; pack["106984"] = bos;

pack["109943"] = { "Ana-Mouz",
"* |cff71d5ff|Hspell:218888|h[Impish Flames]|h|r: sus llamas impías queman – el tanque se protege de las llamas con una postura defensiva.",
"* |cff71d5ff|Hspell:219045|h[Abrazo de la Madre]|h|r: el abrazo de la madre afecta a un jugador - los curanderos deben disipar el abrazo rápidamente.",
"* |cff71d5ff|Hspell:219068|h[Abrazo de la Madre falla]|h|r: la falla del abrazo detona fuertemente en el objetivo agarrado - deshaz antes de que llegue a la falla.",
"* |cff71d5ff|Hspell:219254|h[Gaseous Breath]|h|r: his gaseous breath washes across the isle - keep out of the gas.",
};

pack["121124"] = { "Apocron",
"* |cff71d5ff|Hspell:241518|h[Sear]|h|r: el ataque de quemadura causa daño en un área, y el paso marcado es inmune al daño.",
"* |cff71d5ff|Hspell:241498|h[Felfire Missiles]|h|r: sus proyectiles de fuego lo rodean - esquiva los proyectiles al impactar.",
"* |cff71d5ff|Hspell:241458|h[Quake]|h|r: his quake knocks everyone back - keep off the edges through the knock.",
};

pack["117239"] = { "Brutallus",
"* |cff71d5ff|Hspell:233484|h[Golpe de Meteoro]|h|r: su golpe de meteoro destruye todo lo que hay cerca - agáchense y dividan el golpe juntos.",
"* |cff71d5ff|Hspell:233515|h[Crashing Embers]|h|r: las cenizas caen sobre la costa - esquiva las cenizas a medida que caen.",
"* |cff71d5ff|Hspell:233566|h[Ruptura]|h|r: el suelo se abre donde aterriza – evita estar en el suelo agrietado.",
};

pack["117303"] = { "Malificus",
"* |cff71d5ff|Hspell:233568|h[Incite Panic]|h|r: his panic rakes through the group - brace the panic with a fear-reducing effect.",
"* |cff71d5ff|Hspell:234452|h[Tempestad de Sombras]|h|r: su tempestad de sombras golpea a los jugadores, espárcense y cure a través de la tempestad.",
"* |cff71d5ff|Hspell:233850|h[Infección Virulenta]|h|r: Su infección virulenta afecta a los jugadores: los infectados permanecen separados hasta que la enfermedad desaparece.",
};

pack["107023"] = {
    "Nithogg",
    "* |cff71d5ff|Hspell:212852|h[Aliento]|h|r: su aliento atraviesa la ladera - esquiva el aliento mientras se extiende.",
    "* |cff71d5ff|Hspell:212887|h[Carga Estática]|h|r: la carga estática se adhiere a los jugadores – la carga se agota y se aleja hasta que se descarga.",
    "* |cff71d5ff|Hspell:212943|h[Estabilizador de Rayo]|h|r: el estabilizador de rayo ancla al jugador; el portador del estabilizador se mantiene alejado de todos mientras el rayo está conectado.",
    "* |cff71d5ff|Hspell:212841|h[Descarga chispeante]|h|r: sus descargas chispeantes atraviesan el suelo - esquiva cada impacto.",
};

pack["117470"] = { "Sivash",
"* |cff71d5ff|Hspell:241433|h[Sumersión]|h|r: se sumerge y emerge debajo de los jugadores – esquivar cada aparición.",
"* |cff71d5ff|Hspell:233968|h[Invoca a la Guardia de Honor]|h|r: Su guardia de honor se acerca - Ataca rápidamente con un ataque de área para derrotarlos antes de que te abrumen.",
"* |cff71d5ff|Hspell:233996|h[Onda de Tidal]|h|r: su onda de Tidal golpea la orilla - esquiva la ola mientras se desplaza.",
};

pack["102075"] = { "J'im marchito",
"* Presencia marchita: entrar en su campo aplica un debuff que reduce tu daño en un 90% y te ralentiza y reduce el tamaño - su escasa salud existe para compensar esto.",
"* Proyectiles de energía arcana: lanza energía arcana que impacta dentro de 4 metros de cada impacto - distribúyete alrededor de los impactos.",
"* Energía de la Estación Nocturna: invoca orbes de energía arcana que emiten daño en área periódico – mantente alejado de ellos y explódetlos si necesitas recuperar el espacio.",
"* Resonancia: se prepara con un escudo de 15 segundos que reduce el daño entrante en un 30% y genera Resonancias inestables que explotan después de 20 segundos dentro de un radio de 5 metros.",
"* MÁS, MÁS, MÁS!: mientras el escudo de Resonancia esté activo, NO lo dañe – cualquier daño que reciba invocará un clon que repita sus habilidades.",
"* Resonancias inestables: Elimínelas rápidamente con ataques de área antes de que exploten.",
};

pack["108678"] = { "Shar'thos",
"* |cff71d5ff|Hspell:215821|h[Aliento]|h|r: su aliento quema la parte frontal de él; manténgase alejado de la parte frontal mientras quema.",
"* |cff71d5ff|Hspell:215876|h[Tierra Ardiente]|h|r: la tierra arde donde pasa - manténgase alejado del terreno quemado.",
"* |cff71d5ff|Hspell:216044|h[Fear]|h|r: su miedo afecta a toda la isla, prepárate para contrarrestar el miedo con un efecto de reducción de miedo.",
};

pack["108879"] = { "Humongris",
"* |cff71d5ff|Hspell:216817|h[Bang]|h|r: su golpe hace que el tanque se mueva - los tanques intercambian golpes.",
"* |cff71d5ff|Hspell:216432|h[Puño de Hielo]|h|r: su puño de hielo persigue a un jugador - lo golpea repetidamente y supera al jugador en daño.",
"* |cff71d5ff|Hspell:216467|h[Nieve]|h|r: las montañas de nieve cubren el área - esquiva la nieve que se eleva.",
"* |cff71d5ff|Hspell:216428|h[Explosión de fuego]|h|r: su explosión de fuego golpea a un jugador - el área afectada se desactiva y los jugadores cercanos retroceden.",
};

pack["110378"] = { "Consume pociones.",
"* |cff71d5ff|Hspell:219542|h[Avalancha]|h|r: su avalancha golpea a un jugador, las rutas marcadas evitan el impacto.",
"* |cff71d5ff|Hspell:219602|h[Snow Plow]|h|r: su \"Snow Plow\" atraviesa la pendiente - corre lejos de la herramienta y vuelve a atacar después de que pase.",
"* |cff71d5ff|Hspell:219493|h[Snow Crash]|h|r: su Snow Crash empuja a los personajes cuerpo a cuerpo hacia atrás - los personajes cuerpo a cuerpo se preparan y se mantienen alejados de los bordes.",
};

pack["110321"] = { "Nazak",
"* |cff71d5ff|Hspell:219349|h[Corroding Spray]|h|r: her corroding spray eats away at players - stay out of the spray.",
"* |cff71d5ff|Hspell:219865|h[Enredar]|h|r: Usa el ataque \"Enredar\" para atar a un jugador. Libera rápidamente al jugador atrapado.",
"* |cff71d5ff|Hspell:219591|h[Foundation]|h|r: Su fundación hace temblar el suelo, prepárense para el temblor y sigan moviéndose.",
};

pack["99929"] = { "Flotsam",
"* |cff71d5ff|Hspell:220340|h[Getsam]|h|r: Getsam lanza ondas de choque al tanque - el tanque esquiva cada golpe.",
"* |cff71d5ff|Hspell:223373|h[Yaksam]|h|r: Yaksam ataca a los jugadores - dale espacio para que ataque y esquiva.",
"* |cff71d5ff|Hspell:220295|h[Jetsam]|h|r: Jetsam ataca a un jugador en la orilla - el objetivo esquiva el impacto.",
"* |cff71d5ff|Hspell:223317|h[Romper a Sam]|h|r: breaksam lanza al enemigo al borde del acantilado - el enemigo queda fuera de su alcance.",
};

pack["109331"] = { "Calamir",
"* |cff71d5ff|Hspell:217563|h[Furia Antigua: Fuego]|h|r: su furia antigua provoca un fuego en el suelo - esquiva el fuego a medida que se extiende.",
"* |cff71d5ff|Hspell:217877|h[Bomba Ardiente]|h|r: su bomba ardiente impacta en un punto - muévete fuera de la bomba antes de que explote.",
"* |cff71d5ff|Hspell:217831|h[Furia Antigua: Hielo]|h|r: su furia antigua se convierte en hielo y congela el suelo - esquiva el hielo.",
"* |cff71d5ff|Hspell:217966|h[Howling Gale]|h|r: su Howling Gale arrastra a los jugadores — prepárense para el viento y muévanse en contra de la fuerza.",
};

pack["124592"] = { "Inquisidor Meto",
"* |cff71d5ff|Hspell:247495|h[Sow]|h|r: Sembra miedo en todo el campo de batalla - esquiva el crecimiento de las semillas sembradas.",
"* |cff71d5ff|Hspell:247492|h[Reap]|h|r: ella recoge desde la parte frontal - manténgase fuera del arco de reap.",
"* |cff71d5ff|Hspell:247632|h[Death Field]|h|r: Su campo de muerte inunda la zona de aterrizaje: sal de la zona antes de que afecte a alguien.",
"* |cff71d5ff|Hspell:247585|h[Semillas del Caos]|h|r: Deja que sus semillas del caos se extiendan por el suelo - destruye las semillas antes de que florezcan.",
};

pack["124492"] = { "Occularus",
"* |cff71d5ff|Hspell:247318|h[Herida Sangrienta]|h|r: su herida sangrienta acumula daño en el tanque - el tanque lo ataca para infligir daño a la herida.",
"* |cff71d5ff|Hspell:247325|h[Lash]|h|r: sus látigos atraviesan al grupo - esquivar el látigo y dispersarse.",
"* |cff71d5ff|Hspell:247320|h[Searing Gaze]|h|r: his searing gaze sears him open - interrupt the gaze every time.",
"* |cff71d5ff|Hspell:247393|h[Phantasma]|h|r: sus fantasmas se separan de él - destruye la forma original y aplica daño en área a las copias.",
};

pack["124555"] = { "Sotanathor",
"* |cff71d5ff|Hspell:247410|h[Soul Cleave]|h|r: su ataque de Soul Cleave golpea todo lo que hay delante – la parte frontal permanece libre del ataque.",
"* |cff71d5ff|Hspell:247444|h[Alma Dividida]|h|r: su alma dividida daña el espíritu de un jugador: la parte dividida se defiende y la atraviesa.",
"* |cff71d5ff|Hspell:247437|h[Seedof Destruction]|h|r: his seeds of destruction sprout and blow out - dodge the sprouting seeds.",
"* |cff71d5ff|Hspell:247698|h[Silencio]|h|r: su silencio cubre el suelo con aire muerto – nunca te quedes dentro del silencio.",
};

pack["124719"] = { "Señor Pit Vilemus",
"* |cff71d5ff|Hspell:247742|h[Drenaje]|h|r: su drenaje saca vida a los jugadores más cercanos - mantén cierta distancia para que el drenaje no se duplique.",
"* |cff71d5ff|Hspell:247731|h[Fel Breath]|h|r: his fel breath scorches in front - keep out of the front.",
"* |cff71d5ff|Hspell:247733|h[Stomp]|h|r: su golpe hace que todos retrocedan - manténganse alejados de los bordes debido al empujón.",
};

pack["108829"] = { "Levantus",
"* |cff71d5ff|Hspell:217235|h[Rending Whirl]|h|r: su Rending Whirl atraviesa el agua - los personajes cuerpo a cuerpo deben mantenerse alejados del Whirl.",
"* |cff71d5ff|Hspell:217344|h[Electrify]|h|r: su habilidad Electrify afecta a los jugadores, y los jugadores afectados permanecen separados del grupo.",
"* |cff71d5ff|Hspell:217249|h[Salpicadura masiva]|h|r: su salpicadura masiva estalla en una ola – esquiva la ola a medida que se desplaza.",
"* |cff71d5ff|Hspell:217352|h[Despertar la descarga]|h|r: la descarga genera un efecto que se desactiva - los curanderos lo desactivan tan pronto como llega.",
};

pack["124514"] = { "Matron Folnuna",
"* |cff71d5ff|Hspell:247361|h[Garras Infectadas]|h|r: sus garras infectadas causan úlceras al tanque - el tanque la cambia para que cure las úlceras.",
"* |cff71d5ff|Hspell:247389|h[Suspiro dormido]|h|r: su suspiro dormido pone a los jugadores en sueño - despierta a los dormidos y prepárate para el suspiro.",
"* |cff71d5ff|Hspell:247443|h[Grotesque Spawn]|h|r: her grotesque spawn pour from her - kill the spawn fast before they pile on.",
"* |cff71d5ff|Hspell:247379|h[Suspiro durmiente]|h|r: su suspiro crea una onda que se extiende en un cono delante de ella - los personajes cuerpo a cuerpo deben permanecer detrás.",
};

pack["124625"] = { "Señora Alluradel",
"* |cff71d5ff|Hspell:247544|h[Sadist Other]|h|r: aprovecha su tendencia a atacar a los sanadores, especialmente a los que están sanando a la boss. Los sanadores deben intercambiar posiciones para evitar que la boss los ataque.",
"* |cff71d5ff|Hspell:247549|h[Encanto seductor]|h|r: su encanto seductor atrapa a los jugadores – libera rápidamente a los encantados.",
"* |cff71d5ff|Hspell:247604|h[Fel Lash]|h|r: El Fel Lash se lanza al grupo - esquivar el ataque.",
"* |cff71d5ff|Hspell:247517|h[Heart Breaker]|h|r: su Heart Breaker aplasta su marca - prepárate para el golpe con una habilidad defensiva.",
};

P.es = es;
