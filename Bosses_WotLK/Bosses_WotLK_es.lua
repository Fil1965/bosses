--[[
	Bosses_WotLK_es.lua
		Datos en español of the WoTLK
		pack: the Northrend dungeons and its era raids,
		Onyxia and the sancta. Sources: DBM-Raids-WoTLK and DBM-Party-WotLK
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Onyxia's Lair : Zona 249 --
-- --------------------------------- --

pack["10184"] = { "Onyxia",
"* |cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r: Large knock in front of her - keep the raid behind the tank.",
"* |cff71d5ff|Hspell:18392|h[Fireball]|h|r: Repeating fireball on a random player - healers stay ready on the mark.",
"* |cff71d5ff|Hspell:18584|h[Respira hondo]|h|r: Al 66% de vida, se eleva y quema una línea a través del área — abandona la línea marcada inmediatamente.",
"* |cff71d5ff|Hspell:18431|h[Grito ensordecedor]|h|r: Al 40% de vida, lanza un ataque de área que causa miedo, así que levanta los totems de temblor y los escudos de miedo lo antes posible.",
"* |cff71d5ff|Hspell:68959|h[Whelps]|h|r: Al 40% de vida, los whelps eclosionan de los huevos alrededor del área de combate - Usa ataques a área para eliminarlos lejos del tanque.",
};

-- --------------------------------- --
-- Naxxramas : Zona 533 --
-- --------------------------------- --

pack["15956"] = { "Anub'Rekhan",
"* |cff71d5ff|Hspell:28785|h[Enjambre de Locustos]|h|r: Realiza un movimiento rápido y envía un enjambre de locustos que silencian y drenan la vida - mantente por delante de su círculo en expansión.",
"* |cff71d5ff|Hspell:28783|h[Punta]|h|r: Las líneas de púas atraviesan al grupo - dispersarse de todos.",
};

pack["15953"] = { "Gran Viuda Faerlina",
"* |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r: Killing a worshiper near her casts the embrace - it silences Faerlina, her and the raid, and delays the frenzy.",
"* |cff71d5ff|Hspell:28798|h[Frenzy]|h|r: Si el abrazo expira, entra en frenesí - defensas y curación intensiva para el tanque.",
};

pack["15952"] = { "Maexxna",
"* |cff71d5ff|Hspell:28622|h[Web Wrap]|h|r: A random player is cocooned against the wall - free them fast.",
"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: El ataque de área que aturde a los enemigos en un radio amplio - aturde a los enemigos que ataquen en rango cuerpo a cuerpo justo después.",
"* |cff71d5ff|Hspell:17332|h[Arañas jóvenes]|h|r: Las arañas jóvenes aparecen en oleadas – Elimínalas rápidamente antes de que se agrupen.",
};

pack["15954"] = { "Noth el Pesteador",
"* |cff71d5ff|Hspell:29213|h[Maldición del Portador de Plagas]|h|r: Las maldiciones se propagan por la raid - deshágase rápidamente, las maldiciones en cadena causan un gran daño.",
"* |cff71d5ff|Hspell:29208|h[Blink]|h|r: Usa Blink para teletransportarte a un jugador aleatorio – atráelo de vuelta al tanque.",
"* |cff71d5ff|Hspell:29212|h[Esqueletos]|h|r: Se teletransporta arriba con una ola de esqueletos - elimina los enemigos de la sala antes de que regrese.",
};

pack["15936"] = { "Heigan el Impuro",
"* |cff71d5ff|Hspell:29350|h[Erupción]|h|r: Se retira de la habitación y el suelo entra en erupción en rotación - monta en las esquinas seguras alrededor de la plataforma.",
};

pack["16011"] = { "Loatheb",
"* |cff71d5ff|Hspell:29234|h[Esponjas]|h|r: Las esponjas aparecen en la sala - elimina una cerca del grupo, su nube proporciona un gran buff de crítico.",
"* |cff71d5ff|Hspell:29204|h[Doom]|h|r: Doom impacta en un jugador aleatorio y explota - ¡evadirse antes de que explote!",
"* |cff71d5ff|Hspell:55593|h[Aura Necrótica]|h|r: La curación está bloqueada durante 10 segundos en cada pulso - utiliza curaciones y hechizos de utilidad para llenar los huecos.",
};

pack["16061"] = { "Instructor Razuvious",
"* |cff71d5ff|Hspell:29107|h[Desequilibrar Golpe]|h|r: Golpe masivo en el tanque actual - controla a los aprendices con las esferas de hueso y rota sus tauntes.",
};

pack["16060"] = { "Gothik el Cosechador",
"* |cff71d5ff|Hspell:28025|h[Teleport: Lado Vivo]|h|r: La raid se divide: el lado vivo lucha contra sus escoltas mientras que el lado muerto controla a los espectros - mantener las oleadas delgadas.",
"* |cff71d5ff|Hspell:28026|h[Teleport: Side Dead]|h|r: Salta entre habitaciones mientras los espectros se acumulan - la puerta se abre a los 4 minutos, únelos y luego elimínalo.",
};

bos = { "Los Cuatro Jinetes",
"* |cff71d5ff|Hspell:28835|h[Marca de Khan]|h|r: Cada jinete aplica una marca de su cuartel - rota en sentido horario para que las marcas nunca se apliquen a los mismos objetivos.",
"* |cff71d5ff|Hspell:57467|h[Meteor]|h|r: Impacto de meteor en un jugador aleatorio - elimina a todos.",
"* |cff71d5ff|Hspell:28883|h[Holy Wrath]|h|r: Holy Wrath rebota entre jugadores agrupados - dispersen al grupo.",
};
pack["16063"] = bos; pack["16064"] = bos; pack["16065"] = bos; pack["30549"] = bos;

pack["16028"] = { "Remendejo",
"* |cff71d5ff|Hspell:28131|h[Frenzy]|h|r: Cuando llega al 10%, entra en frenesí - defensas y curas de emergencia.",
"* |cff71d5ff|Hspell:28311|h[Slime Bolt]|h|r: Los proyectiles de Slime viajan aleatoriamente hacia los lanzadores mientras que las siguientes amenazas utilizan sus Ataques Furiosos - mantén una rotación de lanzadores.",
};

pack["15931"] = { "Grobbulus",
"* |cff71d5ff|Hspell:28169|h[Inyección Mutante]|h|r: El jugador inyectado deja una nube de baba dañina donde se encuentra - diríjala hacia la pared.",
"* |cff71d5ff|Hspell:28240|h[Poison Cloud]|h|r: Clouds of poison grow with every injection - kite them clear of the pack.",
};

pack["15932"] = { "Gluth",
"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: Reduce a todos los enemigos al 5% de vida - los zombis adicionales se acercan para alimentarse, mantenlos muertos o alejados.",
"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r: Usar Frenzy periódicamente - aumenta las defensas del tanque.",
};

pack["15928"] = { "Thaddius",
"* |cff71d5ff|Hspell:28089|h[Polaridad cambiante]|h|r: La mitad del grupo gana carga positiva y la otra negativa - separa los lados de la polaridad para que los jugadores con carga no entren en contacto, cualquier carga cruzada detonará.",
"* |cff71d5ff|Hspell:28338|h[Rayo en cadena]|h|r: El rayo en cadena golpea al jugador más alejado de él - un ataque a distancia lejos del resto del grupo.",
};

pack["15989"] = { "Sapphiron",
"* |cff71d5ff|Hspell:28522|h[Bloque de Hielo]|h|r: Un jugador aleatorio se congela en un bloque de hielo, convirtiéndose en cobertura. Planifica la posición.",
"* |cff71d5ff|Hspell:28524|h[Respiración profunda]|h|r: La respiración profunda cubre la sala: acérquate al escudo congelado.",
"* |cff71d5ff|Hspell:28542|h[Life Drain]|h|r: Life drain siphons a random player - keep heals up.",
"* |cff71d5ff|Hspell:28547|h[Blizzard]|h|r: Blizzard arrastra por el suelo - sal de ella.",
};

pack["15990"] = { "Kel'Thuzad",
"* |cff71d5ff|Hspell:27808|h[Frost Blast]|h|r: Frost blast freezes and chains damage through the group - spread until it lands, then burst the frozen stack down.",
"* |cff71d5ff|Hspell:27819|h[Detonación de Maná]|h|r: Cuando la maná de un jugador se agota, manténganse separados para que la explosión no se propague.",
"* |cff71d5ff|Hspell:27810|h[Fisura de la Sombra]|h|r: Al 25% de vida, se crea una zona de vacío debajo de un jugador - sal rápidamente.",
"* |cff71d5ff|Hspell:28410|h[Control Mental]|h|r: Las cadenas esclavizan a jugadores aleatorios - mantenlos bajo control hasta que las cadenas se rompan.",
};

-- --------------------------------- --
-- Utgarde Keep : Zona 574 --
-- --------------------------------- --

pack["23953"] = { "Príncipe Keleseth",
"* |cff71d5ff|Hspell:48400|h[Tumba de Hielo]|h|r: Congela a un jugador en una tumba de hielo; libera rápidamente al jugador y usa un ataque de área para eliminar a los guardias esqueléticos que aparecen en oleadas.",
};

bos = { "Skarvald y Dalronn",
"* |cff71d5ff|Hspell:43650|h[Debilitar]|h|r: El efecto de debilidad drena a quien lo tiene - ten el hechizo de curación lista.",
"* |cff71d5ff|Hspell:52611|h[Sombras]|h|r: Cuando caen, sus sombras se levantan - tira las sombras antes de que se reagrupen.",
};
pack["24200"] = bos; pack["24201"] = bos;

pack["23954"] = { "Ingvar el Desvalijador",
"* |cff71d5ff|Hspell:42730|h[Woe Strike]|h|r: Woe drains his tank - swap it and keep cleans ready.",
"* |cff71d5ff|Hspell:42729|h[Staggering Shout]|h|r: The shout staggers the room - brace and interrupt it.",
"* |cff71d5ff|Hspell:42723|h[Smash]|h|r: En su forma no-muerta, el Smash sacude toda la sala: los personajes de combate deben mantenerse al margen.",
};

-- --------------------------------- --
-- Utgarde Pinnacle : Zona 575 --
-- --------------------------------- --

pack["26668"] = { "Svala Tumbapena",
"* |cff71d5ff|Hspell:48267|h[Sacrificio]|h|r: El objetivo se acerca al altar: interrumpa el ritual antes de que el sacrificio impacte.",
};

pack["26687"] = { "Gortok Pezuña Pálida",
"* |cff71d5ff|Hspell:48261|h[Golpe]|h|r: El rinoceronte golpea al tanque - los curanderos deben estar preparados.",
"* |cff71d5ff|Hspell:48256|h[Withering Roar]|h|r: The roar weakens the pack - keep heals up.",
};

pack["26693"] = { "Skadi el Despiadado",
"* |cff71d5ff|Hspell:59322|h[Whirlwind]|h|r: Su whirlwind gira ampliamente – los personajes que ataquen cuerpo a cuerpo deben retroceder.",
"* |cff71d5ff|Hspell:59331|h[Veneno]|h|r: El veneno sigue el camino de la trampa - corre entre las nubes.",
};

pack["26861"] = { "Rey Ymiron",
"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: The bane channel punishes casters - stop casting while it runs.",
"* |cff71d5ff|Hspell:48291|h[Rot Fétida]|h|r: La Rot Fétida causa daño al portador - purifícala.",
};

-- --------------------------------- --
-- The Nexus : Zona 576 --
-- --------------------------------- --

pack["26731"] = { "Gran maga Telestra",
"* |cff71d5ff|Hspell:47731|h[Congelar]|h|r: Congela a un jugador por completo - rompe el hechizo y ten cuidado con sus clones: tres clones se dispersan, el de hielo cubre la habitación con hielo.",
};

pack["26763"] = { "Anomalus",
"* |cff71d5ff|Hspell:47743|h[Rift de Caos]|h|r: El rift canaliza energía en él - destruye el rift rápidamente.",
};

pack["26794"] = { "Ormorok el Talador",
"* |cff71d5ff|Hspell:47981|h[Reflejo de hechizos]|h|r: Reflejo de hechizos: los lanzadores de hechizos deben dejar de lanzar hechizos mientras el efecto esté activo.",
"* |cff71d5ff|Hspell:47958|h[Espinas]|h|r: Las líneas de espinas barrerán la sala - esquiva las marcas.",
"* |cff71d5ff|Hspell:48017|h[Frenesí]|h|r: Cuando está con poca vida, entra en frenesí; ataca rápidamente.",
"* |cff71d5ff|Hspell:61564|h[Árboles]|h|r: Los árboles se levantan a su alrededor – Elimínalos con ataques de área.",
};

pack["26723"] = { "Keristrasza",
"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: Las cadenas impiden el movimiento - dispersa al grupo y mantén a los curanderos activos.",
"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: Frost nova bursts around her - melee step out.",
"* |cff71d5ff|Hspell:8599|h[Frenesí]|h|r: Al final entra en frenesí - úsalo al máximo.",
};

-- --------------------------------- --
-- The Oculus : Zona 578 --
-- --------------------------------- --

pack["27654"] = { "Drakos el Interrogador",
"* |cff71d5ff|Hspell:50774|h[Thundering Stomp]|h|r: The stomp knocks the room around - brace it.",
};

pack["27447"] = { "Varos Zancanubes",
"* |cff71d5ff|Hspell:51002|h[Capitán del Anillo Azul]|h|r: Los capitanes del anillo convocan al grupo, mata a los capitanes primero.",
"* |cff71d5ff|Hspell:51021|h[Arcane Beam]|h|r: The beam burns along its line - move off it.",
"* |cff71d5ff|Hspell:51054|h[Amplificar Magia]|h|r: Amplificar Magia marca a un jugador – elimina el efecto.",
};

pack["27655"] = { "Señor de la magia Urom",
"* |cff71d5ff|Hspell:51121|h[Bomba de Tiempo]|h|r: La bomba explota cuando está sostenida - corre lejos antes de que haga contacto.",
"* |cff71d5ff|Hspell:51110|h[Explosión Arcana Potenciada]|h|r: El gran ataque arcano - interrumpe su lanzamiento o prepárate bien.",
"* |cff71d5ff|Hspell:51103|h[Frostbomb]|h|r: Frostbombs chill the floor - step off them.",
};

pack["27656"] = { "Guardián-Ley Eregos",
"* |cff71d5ff|Hspell:51162|h[Planar Shift]|h|r: Cambio de planos y los dragones deben mantenerse cerca - mantén al grupo unido durante el cambio.",
"* |cff71d5ff|Hspell:51170|h[Asalto Furioso]|h|r: Lo enrango para infligirle mucho daño antes de que la fase vuelva a empezar.",
};

-- --------------------------------- --
-- The Culling of Stratholme : Zona 595 --
-- --------------------------------- --

pack["26529"] = { "Gancho",
"* |cff71d5ff|Hspell:52696|h[Cadenas Asfixiantes]|h|r: Las cadenas asfixian a un jugador - ten el hechizo de curación lista.",
};

pack["26530"] = { "Salramm",
"* |cff71d5ff|Hspell:58845|h[Curse of Twisted Flesh]|h|r: The curse twists its holder - cleanse it.",
"* |cff71d5ff|Hspell:52451|h[Ghules]|h|r: Los hace reaparecer - Elimínalos rápidamente.",
};

pack["26532"] = { "Cronolord Época",
"* |cff71d5ff|Hspell:52772|h[Maldición de Exigencia]|h|r: La maldición debilita a quien la posee – elimínala.",
"* |cff71d5ff|Hspell:58848|h[Time Warp]|h|r: El Time Warp altera el ritmo de la sala, mantén los curados constantes durante este efecto.",
};

pack["26533"] = { "Mal'Ganis",
"* |cff71d5ff|Hspell:52721|h[Sleep]|h|r: He puts players to sleep - wake them fast and keep the pack spread.",
"* |cff71d5ff|Hspell:52723|h[Toque Vampírico]|h|r: El toque drena a su objetivo - purifica.",
};

-- --------------------------------- --
-- Halls of Stone : Zona 599 --
-- --------------------------------- --

pack["27977"] = { "Krystallus",
"* |cff71d5ff|Hspell:50833|h[Golpe al suelo]|h|r: El golpe al suelo dispersa a los enemigos - espárcense.",
"* |cff71d5ff|Hspell:50810|h[Shatter]|h|r: Después del golpe, se rompe - manténganse separados o el fragmento dañará al grupo.",
};

pack["27975"] = { "Doncella de Pena",
"* |cff71d5ff|Hspell:50761|h[Woe Strike]|h|r: Woe drips on her tank - swap it.",
"* |cff71d5ff|Hspell:50752|h[Storm of Grief]|h|r: The storm sweeps the room - stay off the marks.",
"* |cff71d5ff|Hspell:50760|h[Shock of Sorrow]|h|r: El ataque aturde al grupo – espárcense antes de que impacte.",
};

pack["28070"] = { "El Tribunal de los Tiempos",
"* |cff71d5ff|Hspell:51012|h[Dark Matter]|h|r: Dark matter burns under the pack - step off the marks.",
"* |cff71d5ff|Hspell:51125|h[Searing Gaze]|h|r: The searing gaze fires from the guardians - face them away.",
};

pack["27978"] = { "Sjonnir el Afilador",
"* |cff71d5ff|Hspell:50840|h[Lightning Ring]|h|r: The ring of lightning whips around him - step out before it lands.",
"* |cff71d5ff|Hspell:50834|h[Carga estática]|h|r: La carga se acumula en quien lo toca, mantén al grupo alejado de su anillo.",
};

-- --------------------------------- --
-- Drak'Tharon Keep : Zona 600 --
-- --------------------------------- --

pack["26630"] = { "Cuernotrol",
"* |cff71d5ff|Hspell:49637|h[Infected Wound]|h|r: Infected wounds bleed his tank - keep heals ready.",
"* |cff71d5ff|Hspell:49639|h[Crush]|h|r: Crush slams his tank - defensives up.",
"* |cff71d5ff|Hspell:49380|h[Consume]|h|r: Canaliza en los cadáveres que hay a su alrededor – arrastra los combates mientras él se mueve.",
};

pack["26631"] = { "Novos el Invocador",
"* |cff71d5ff|Hspell:50089|h[Ira de Miseria]|h|r: La Ira debilita al grupo, límpiala.",
"* |cff71d5ff|Hspell:47346|h[Heridas Oscuras]|h|r: Las heridas oscuras se extienden por el suelo – evita pisarlas.",
"* |cff71d5ff|Hspell:59910|h[Minions]|h|r: Los minions llegan en oleadas durante su fase - elimínalos antes de que lleguen a él.",
};

pack["27483"] = { "Rey Dred",
"* |cff71d5ff|Hspell:48878|h[Piercing Slash]|h|r: The slash bleeds its holder - healers up.",
"* |cff71d5ff|Hspell:59416|h[Llamada al Rapto]|h|r: Invoca a los raptores en la sala - Ataque al grupo rápidamente.",
};

pack["26632"] = { "El profeta Tharon'ja",
"* |cff71d5ff|Hspell:49356|h[Decay Flesh]|h|r: Se transforma en un esqueleto - ten cuidado con la lluvia de fuego que arroja mientras esqueleto.",
"* |cff71d5ff|Hspell:49518|h[Lluvia de Fuego]|h|r: La lluvia de fuego quema la sala, muévete para evitar el daño.",
"* |cff71d5ff|Hspell:49527|h[Maldición de la Vida]|h|r: La maldición afecta a quien la usa – elimínala.",
};

-- --------------------------------- --
-- Azjol-Nerub : Zona 601 --
-- --------------------------------- --

pack["28684"] = { "Krik'thir",
"* |cff71d5ff|Hspell:52592|h[Maldición de Fatiga]|h|r: La maldición de fatiga drena a su portador; límpiala; su guardián lanza proyectiles a través de la puerta; usa habilidades de área y controla las telarañas.",
};

pack["28921"] = { "Hadronox",
"* |cff71d5ff|Hspell:53400|h[Acid Cloud]|h|r: Acid clouds pool the floor - step off them.",
"* |cff71d5ff|Hspell:53030|h[Leech Poison]|h|r: El Leech Poison cura mientras daña al portador - límpialo rápidamente; ataca una puerta, mantén a la distancia mientras mantiene la habilidad.",
};

pack["29120"] = { "Anub'arak",
"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: El golpe amplio impacta a los objetivos - aléjate de los objetivos; enjambres de escarabajos fluyen por los túneles en la primera fase - usa ataques de área para eliminarlos.",
};

-- --------------------------------- --
-- Halls of Lightning : Zona 602 --
-- --------------------------------- --

pack["28586"] = { "General Bjarngrim",
"* |cff71d5ff|Hspell:52027|h[Whirlwind]|h|r: Su Whirlwind cubre el área - los personajes cuerpo a cuerpo deben retroceder; alterna entre las posturas Storm, Battle y Berserker entre fases.",
"* |cff71d5ff|Hspell:16856|h[Golpe Mortal]|h|r: El Golpe Mortal inflige daño al tanque - cámbialo y cura.",
};

pack["28587"] = { "Volkhan",
"* |cff71d5ff|Hspell:52237|h[Romper el golpe]|h|r: El golpe sacude el suelo de la forja: los personajes cuerpo a cuerpo deben salir; él forja gólems de lava, déjalos enfriarse y luego destrúyelos.",
};

pack["28546"] = { "Ionar",
"* |cff71d5ff|Hspell:52770|h[Dispersión]|h|r: Utiliza Dispersión para crear chispas. Agrupa las chispas rápidamente y atácalas con ataques de área antes de que exploten.",
"* |cff71d5ff|Hspell:52658|h[Sobrecarga Estática]|h|r: La sobrecarga quema a quien la sostiene - los movimientos marcados lo golpean.",
};

pack["28923"] = { "Loken",
"* |cff71d5ff|Hspell:52960|h[Lightning Nova]|h|r: The nova pulses wider with every beat - step out before it crests.",
};

-- --------------------------------- --
-- Ulduar : Zona 603 --
-- --------------------------------- --

pack["33293"] = { "Desarmador XA-002",
"* |cff71d5ff|Hspell:65121|h[Explosión de Luz]|h|r: Las explosiones de luz explotan cerca de los pies del jugador - aléjate del punto de impacto.",
"* |cff71d5ff|Hspell:64234|h[Bomba de Gravedad]|h|r: Las bombas de gravedad colapsan alrededor del objetivo - manténgase alejado.",
"* |cff71d5ff|Hspell:64206|h[Consumo]|h|r: La fase con el corazón expuesto crea zonas de consumo: evita entrar en ellas y destruye el corazón.",
};

bos = { "La Asamblea de Hierro",
"* |cff71d5ff|Hspell:61920|h[Supercarga]|h|r: Cuando uno de los guardias cae, los otros se fortalecen – explota al par más fuerte o coordina los asesinatos.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: Chain lightning rakes the pack - spread and interrupt.",
"* |cff71d5ff|Hspell:63483|h[Tormenta de Rayo]|h|r: Brundir lanza una tormenta de rayo - interrumpe el ataque.",
"* |cff71d5ff|Hspell:63481|h[Sobrecarga]|h|r: Brundir causa una sobrecarga masiva - correr.",
"* |cff71d5ff|Hspell:61888|h[Poder abrumador]|h|r: El \"Poder abrumador\" se acumula en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Death runes burn the ground - move off them.",
"* |cff71d5ff|Hspell:63489|h[Escudo de Runas]|h|r: Un escudo de runas protege su salud; desmantéllalo o quítaselo.",
};
pack["32867"] = bos; pack["32927"] = bos; pack["32857"] = bos;

pack["32930"] = { "Kologarn",
"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: Eyebeams track a player - kite them around the platform until they fade.",
"* |cff71d5ff|Hspell:64292|h[Agarre]|h|r: Los brazos de piedra agarran a los jugadores – deslícelos rápidamente.",
"* |cff71d5ff|Hspell:64002|h[Armadura de mordisco]|h|r: Aplica stacks de armadura de mordisco al tanque – cambia de tanque.",
};

pack["33515"] = { "Auriaya",
"* |cff71d5ff|Hspell:64386|h[Sonido]|h|r: Su grito causa temor en la sala: mantén un interrupción en cada lanzamiento.",
"* |cff71d5ff|Hspell:64396|h[Enjambre de Guardianes]|h|r: El defensor feral resurge una y otra vez: Aplica daño en área al enjambre, elimina los orbes del Guardian.",
"* |cff71d5ff|Hspell:64675|h[Zona del Vacío]|h|r: Las zonas del vacío persiguen a un jugador - moverse para evitar el contacto.",
};

bos = { "Hodir",
"* |cff71d5ff|Hspell:65123|h[Nube Tormenta]|h|r: La habilidad Nube Tormenta otorga un buff a quien la sostiene y a cualquiera cercano - distribúyanla entre los lanzadores de hechizos.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: The freeze fills the floor - hop on an ice block to ride it out.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: The deep cold bites anyone who stands still - never stop moving.",
};
pack["32845"] = bos; pack["32926"] = bos;

pack["32865"] = { "Thorim",
"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: El martillo aturde a cualquiera en su cono frontal - mantente detrás de una columna.",
"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: Utiliza Lightning Charge para atacar rápidamente cuando aparezcan los enemigos - elimina rápidamente la zona y luego ataca al jefe en el pasillo.",
"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: Brutal strike on his tank - swaps and defensives.",
};

pack["32906"] = { "Freya",
"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: Roots hold players in place - break them out.",
"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: Los Sunbeams explotan ampliamente - corre fuera del objetivo.",
};

pack["33432"] = { "Mimiron",
"* |cff71d5ff|Hspell:63631|h[Shock Blast]|h|r: Huge nova blast from his tank side - the melee steps out.",
"* |cff71d5ff|Hspell:64402|h[Ataque con cohetes]|h|r: Los cohetes atraviesan la línea marcada - abandona inmediatamente.",
"* |cff71d5ff|Hspell:63274|h[Torrente de Láser]|h|r: Gira y dispara los láseres - corre alrededor de él.",
"* |cff71d5ff|Hspell:64529|h[Plasma Blast]|h|r: Plasma blasts the tank - defensive heals.",
"* |cff71d5ff|Hspell:64623|h[Frost Bomb]|h|r: A frost bomb descends - break it before it lands.",
};

pack["33271"] = { "General Vezax",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Shadow Crash persigue a un jugador - correlo hacia la pared.",
"* |cff71d5ff|Hspell:63276|h[Life Siphon]|h|r: The siphon drains his marked target - the marked keeps away.",
"* |cff71d5ff|Hspell:62662|h[Ola de Oscuridad]|h|r: La ola aumenta su daño - los tanks deben usar defensas.",
"* |cff71d5ff|Hspell:62661|h[Searing Flames]|h|r: Searing flames buffs him - interrupt every cast.",
};

pack["33288"] = { "Yogg-Saron",
"* |cff71d5ff|Hspell:63050|h[Sanity]|h|r: Sanity drains near every shadow - watch the meter, pull out of the room under 30.",
"* |cff71d5ff|Hspell:63802|h[Conexión Cerebral]|h|r: Los jugadores conectados se arrastran hacia el otro – mantén las conexiones separadas.",
"* |cff71d5ff|Hspell:57687|h[Portal de Cerebro]|h|r: Los portales se abren para la persecución del cerebro - envía al grupo marcado a través de él y termina la ilusión.",
"* |cff71d5ff|Hspell:62979|h[Guardián de Yogg]|h|r: Los Guardianes emergen de las sombras: Ataca a varios rápidamente.",
};

pack["32871"] = { "Algalon el Observador",
"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: El Big Bang cubre toda la sala: sumérgete en un agujero negro y obsérvalo pasar.",
"* |cff71d5ff|Hspell:65108|h[Agujero Negro]|h|r: Las estrellas que colapsan dejan atrás agujeros negros: entré en ellos, salí después de la explosión.",
"* |cff71d5ff|Hspell:64412|h[Golpe de Fase]|h|r: El golpe de fase se acumula en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:64596|h[Cosmic Smash]|h|r: Cosmic Smash marca el suelo - muévete para evitar el daño.",
};

pack["33113"] = { "Leviatán de llamas",
"* |cff71d5ff|Hspell:62374|h[Persigue]|h|r: Persigue a un vehículo en particular - este vehículo da vueltas mientras los demás se acercan por la flanqueo.",
"* |cff71d5ff|Hspell:62475|h[Apagado del sistema]|h|r: El apagado lo congela - luego, quema todo.",
"* |cff71d5ff|Hspell:62297|h[Furia de Hodir]|h|r: Los buffs de las torres potencian el combate – destruye las torres antes del inicio para debilitarlo.",
};

pack["33118"] = { "Ignis, el Maestro de la Caldera",
"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: Ataca a un jugador para que entre en el charco de lava - cura intensamente hasta que caiga.",
"* |cff71d5ff|Hspell:62488|h[Construcciones de Hierro]|h|r: Las construcciones aparecen por las rendijas - sumérgelas en el agua y deja que su \"Quema\" las destruya.",
"* |cff71d5ff|Hspell:63472|h[Ráfagas de fuego]|h|r: Las ráfagas interrumpen los hechizos que lanza. Los lanzadores deben mantenerse en movimiento.",
};

pack["33186"] = { "Tajoescama",
"* |cff71d5ff|Hspell:48642|h[Torretas de arpón]|h|r: Construye las torretas de arpón alrededor de la arena - atráela entre vuelos.",
"* |cff71d5ff|Hspell:64733|h[Devouring Flame]|h|r: Flame pools spread along the ground - step out of them.",
"* |cff71d5ff|Hspell:64771|h[Fused Armor]|h|r: Fused armor stacks on her tank - swap tanks.",
};

-- --------------------------------- --
-- Gundrak : Zona 604 --
-- --------------------------------- --

pack["29304"] = { "Slad'ran",
"* |cff71d5ff|Hspell:55081|h[Poison Nova]|h|r: The poison nova pools the floor wide - step out and spread.",
};

pack["29307"] = { "Coloso Drakkari",
"* |cff71d5ff|Hspell:54850|h[Aparecer]|h|r: Ataca al elemental antes de que se fusione de nuevo.",
"* |cff71d5ff|Hspell:54878|h[Fusiona]|h|r: La fusión reconstruye al coloso, el elemental muere primero.",
"* |cff71d5ff|Hspell:59451|h[Charca de Mojo]|h|r: Las charcas de mojo queman el suelo – evita pisarlas.",
};

pack["29305"] = { "Moorabi",
"* |cff71d5ff|Hspell:55098|h[Transformación]|h|r: Se transforma en un mamut - interrumpe el lanzamiento o la pelea se vuelve doble.",
};

pack["29932"] = { "Eck el Feroz",
"* |cff71d5ff|Hspell:55817|h[Eck's Residue]|h|r: El residuo quema donde está - manténganse alejados de sus charcos.",
};

pack["29306"] = { "Gal'darah",
"* |cff71d5ff|Hspell:54956|h[Golpe de carga]|h|r: El golpe de carga lanza a un jugador - las barras marcadas.",
"* |cff71d5ff|Hspell:55249|h[Whirling Slash]|h|r: The whirling slash stacks on its target - swap it.",
};

-- --------------------------------- --
-- The Violet Hold : Zona 608 --
-- --------------------------------- --

pack["29315"] = { "Erekem",
"* |cff71d5ff|Hspell:54481|h[Curación en cadena]|h|r: Sus guardias curan en cadena - interrumpirlos.",
"* |cff71d5ff|Hspell:54479|h[Earth Shield]|h|r: Earth shields guard the pack - dispel them.",
"* |cff71d5ff|Hspell:54516|h[Sangre Furiosa]|h|r: La habilidad de Sangre Furiosa lo fortalece - elimínala.",
};

pack["29316"] = { "Moragg",
"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: El enlace del ojo ata y persigue a los jugadores; correlo por el lado exterior del grupo.",
};

pack["29313"] = { "Ícoron",
"* |cff71d5ff|Hspell:54306|h[Burbuja Protectora]|h|r: La burbuja lo hace inmune; destruyela.",
"* |cff71d5ff|Hspell:54241|h[Ráfaga de proyectiles acuáticos]|h|r: La ráfaga bombardea la sala: interrumpe o busca refugio.",
};

pack["29266"] = { "Xevozz",
"* |cff71d5ff|Hspell:54102|h[Esfera Éterea]|h|r: Las esferas orbitan y disparan – elimínalas y mantenlas alejadas del grupo.",
"* |cff71d5ff|Hspell:54160|h[Arcane Power]|h|r: Arcane power pumps him - tank defensives up.",
};

pack["29312"] = { "Lavanthor",
"* |cff71d5ff|Hspell:54282|h[Aliento de Fuego]|h|r: Cono de fuego - haz que ataque de frente.",
"* |cff71d5ff|Hspell:54249|h[Lava Burn]|h|r: Lava Burn hace que el grupo explote - dispersa.",
};

pack["29314"] = { "Zuramat el Obliterador",
"* |cff71d5ff|Hspell:59743|h[Desplazamiento del Vacío]|h|r: El desplazamiento inflige daño al portador - los curanderos deben estar preparados.",
"* |cff71d5ff|Hspell:59745|h[Manto de Oscuridad]|h|r: El manto oculta su atracción — tenlos listos para limpiar.",
};

pack["31134"] = { "Cianigosa",
"* |cff71d5ff|Hspell:58693|h[Blizzard]|h|r: El ataque de Blizzard cubre toda la zona - muévete fuera de la nieve.",
"* |cff71d5ff|Hspell:58694|h[Suck Up]|h|r: El ataque atrae a todo el grupo hacia ella; prepárense y se dispersen, ya que ella será la última en recibir daño después de que las oleadas a través del portal desaparezcan.",
"* |cff71d5ff|Hspell:59374|h[Quema de Maná]|h|r: La quema de maná drena a quien la posee; deshazla.",
};

-- --------------------------------- --
-- The Obsidian Sanctum : Zona 615 --
-- --------------------------------- --

pack["28860"] = { "Sartharion",
"* |cff71d5ff|Hspell:59127|h[Fisura de la Tenebra]|h|r: Las zonas de vacío se abren bajo los jugadores - sal rápidamente; su aliento también envía ondas de fuego a través de la plataforma detrás del siguiente aliento.",
};

pack["30451"] = { "Shadron",
"* |cff71d5ff|Hspell:59127|h[Fisura de la Tenebra]|h|r: Las zonas de vacío explotan bajo los jugadores – sal; su discípulo y los demonios atraviesan el portal – elimina al discípulo antes de que su efecto llegue a él.",
};

pack["30452"] = { "Tenebron",
"* |cff71d5ff|Hspell:59127|h[Fisura de la Tenebra]|h|r: Las zonas de vacío explotan cuando los jugadores están cerca - sal; los huevos de la tenebrosa a lo largo de las paredes se rompen - destruye a las crías.",
};

pack["30449"] = { "Vesperon",
"* |cff71d5ff|Hspell:59127|h[Fisura de la Tenebra]|h|r: Las zonas de vacío explotan bajo los jugadores – sal; su discípulo emerge – explótalo antes de que se acumulen sus bonos de daño en el dragón.",
};

-- --------------------------------- --
-- The Eye of Eternity : Zona 616 --
-- --------------------------------- --

pack["28859"] = { "Malygos",
"* |cff71d5ff|Hspell:56105|h[Vortex]|h|r: Cada 60 segundos, gira la raid y causa daño por pulsos - cura a través de él.",
"* |cff71d5ff|Hspell:56505|h[Respira hondo]|h|r: En la fase 2, su aliento quema una sección de la plataforma - abandona esa zona.",
"* |cff71d5ff|Hspell:60936|h[Ola de Poder]|h|r: Ola inevitable que atraviesa la plataforma - usar defensas de enfriamiento.",
"* |cff71d5ff|Hspell:57430|h[Static Field]|h|r: Electric fields float around the platform - move clear of them.",
};

-- --------------------------------- --
-- Ahn'kahet: The Old Kingdom : Zona 619 --
-- --------------------------------- --

pack["29309"] = { "Ancestro Nadox",
"* |cff71d5ff|Hspell:56130|h[Plaga de la Cría]|h|r: La plaga debilita a quien la posee; limpia la plaga. Su cría ataca en grupo; usa ataques de área.",
};

pack["29308"] = { "Príncipe Taldaram",
"* |cff71d5ff|Hspell:55959|h[Abrazo del Vampiro]|h|r: El abrazo canaliza su efecto en el portador - curas explosivas para romper el control.",
"* |cff71d5ff|Hspell:55931|h[Flame Sphere]|h|r: The flame sphere roams the room - keep clear of its path.",
};

pack["29310"] = { "Jedoga Buscasombras",
"* |cff71d5ff|Hspell:56926|h[Thunderclap]|h|r: Thunderclap tiene un amplio alcance, mantenlo a distancia.",
"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: A twister rips through the pack - move out of the wall.",
};

pack["30258"] = { "Amanitar",
"* |cff71d5ff|Hspell:57055|h[Mini]|h|r: Reduce al portador, lo hace más pequeño y vulnerable, y los hongos lo curan: elimínalos tan pronto como aparezcan.",
};

pack["29311"] = { "Heraldo Volazj",
"* |cff71d5ff|Hspell:57496|h[Insanity]|h|r: The insanity spawns doubles of the whole pack - burn the doubles fast.",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Los ataques de [Shadow Crash] impactan en los jugadores - aléjense.",
"* |cff71d5ff|Hspell:57949|h[Shiver]|h|r: The shiver ticks its holder - cleanse it.",
};

-- --------------------------------- --
-- Vault of Archavon : Zona 624 --
-- --------------------------------- --

pack["31125"] = { "Archavon el Vigía de Piedra",
"* |cff71d5ff|Hspell:58678|h[Fragmentos de roca]|h|r: Lanza fragmentos de roca a los dos jugadores marcados - los sanadores, prepárense.",
"* |cff71d5ff|Hspell:53041|h[Agarre asfixiante]|h|r: Realiza un agarre asfixiante para atraer a un jugador a su lado; la multitud se mantiene alejada del objetivo marcado.",
"* |cff71d5ff|Hspell:60894|h[Salto]|h|r: Salta a un jugador aleatorio - dispersarse y volver a posicionarse rápidamente.",
"* |cff71d5ff|Hspell:60880|h[Stomp]|h|r: Golpear amplio al grupo - dispersarse.",
};

pack["33993"] = { "Emalon el Vigía de la Tormenta",
"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: The storm construct charges up - kill it before the burst lands.",
"* |cff71d5ff|Hspell:65279|h[Lightning Nova]|h|r: Nova around him - the melee steps out.",
};

pack["35013"] = { "Koralon el Vigía de las Llamas",
"* |cff71d5ff|Hspell:66665|h[Flame Breath]|h|r: Cone of flame - face him out from the pack.",
"* |cff71d5ff|Hspell:66725|h[Puñetazos de Meteorito]|h|r: Golpear al tanque con los puños - cambiar de tanque.",
"* |cff71d5ff|Hspell:66721|h[Furia Ardiente]|h|r: Su furia le otorga bonificaciones con el tiempo.",
"* |cff71d5ff|Hspell:66684|h[Cinder]|h|r: Los fragmentos de fuego siguen a un jugador – muévelos hacia la pared.",
};

pack["38433"] = { "Toravon el Vigía de Hielo",
"* |cff71d5ff|Hspell:72090|h[Freezing Ground]|h|r: El hielo se extiende por el suelo - retírense.",
"* |cff71d5ff|Hspell:72034|h[Whiteout]|h|r: Ataque de Whiteout amplio - elimina a los enemigos cercanos.",
"* |cff71d5ff|Hspell:72091|h[Esfera de Hielo]|h|r: Las esferas de hielo orbitan alrededor de él; destrúyelas antes de que exploten.",
"* |cff71d5ff|Hspell:72004|h[Frostbite]|h|r: Frostbite stacks with every orb hit - keep the orbs down.",
};

-- --------------------------------- --
-- Icecrown Citadel : Zona 631 --
-- --------------------------------- --

pack["36612"] = { "Lord Tuétano",
"* |cff71d5ff|Hspell:69076|h[Tormenta de huesos]|h|r: Ataca rápidamente, dispersando fragmentos de hueso - mantén la distancia y evita que te ataque por la espalda.",
"* |cff71d5ff|Hspell:69057|h[Bone Spike]|h|r: Three players get impaled on spikes - break them free fast.",
"* |cff71d5ff|Hspell:69146|h[Coldflame]|h|r: Líneas de fuego helado recorren el suelo – evita tocarlas.",
};

pack["36855"] = { "Lady Susurramuerte",
"* |cff71d5ff|Hspell:71289|h[Dominar la Mente]|h|r: Controla a los jugadores - usa el control de masas sobre los marcados hasta que desaparezca.",
"* |cff71d5ff|Hspell:61131|h[Enemigos]|h|r: Olas de cultistas la acompañan - Aplica daño en área al grupo y detén a los reanimados.",
"* |cff71d5ff|Hspell:70674|h[Vampric Might]|h|r: The cultist buff empowers them - dispel it fast.",
"* |cff71d5ff|Hspell:71001|h[Death and Decay]|h|r: Decay quema el suelo - sal de ahí.",
"* |cff71d5ff|Hspell:71204|h[Toque de Insignificancia]|h|r: El Toque reduce la armadura del tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:71236|h[Martirio Oscuro]|h|r: Un cultista detona - aléjate de la zona marcada.",
"* |cff71d5ff|Hspell:34018|h[Reanimation]|h|r: Fallen cultists reanimate - burn them again.",
};

bos = { "Batalla de naves de guerra",
"* |cff71d5ff|Hspell:69638|h[Furia de Batalla]|h|r: El equipo enemigo se buffea durante la pelea: elimina rápidamente a los enemigos que estén en los bordes.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: Un ataque helado aturde al grupo - dispersen.",
"* |cff71d5ff|Hspell:69652|h[Tormenta de Espadas]|h|r: La tormenta de espadas golpea la cubierta - aléjate.",
"* |cff71d5ff|Hspell:23334|h[Guerreros]|h|r: Los guerreros se balancean sobre - elimínalos antes de que lleguen a las cañones.",
};
pack["37215"] = bos; pack["37540"] = bos;

pack["37813"] = { "Libramorte Colmillosauro",
"* |cff71d5ff|Hspell:72293|h[Marca del Campeón Caído]|h|r: El jugador marcado inflige daño a toda la raid - la curación de raid masiva cubre la cadena.",
"* |cff71d5ff|Hspell:72378|h[Nova de Sangre]|h|r: La Nova de Sangre se dispara ampliamente - dispersarse.",
"* |cff71d5ff|Hspell:72385|h[Sangre hirviente]|h|r: La sangre hirviente causa daño al grupo. Distribúyanse para evitar el daño.",
"* |cff71d5ff|Hspell:72410|h[Rune of Blood]|h|r: The rune drains his tank - swap tanks.",
"* |cff71d5ff|Hspell:72737|h[Frenesí]|h|r: Cuando llega al 30%, entra en frenesí - elimínalo rápidamente.",
"* |cff71d5ff|Hspell:72173|h[Blood Beasts]|h|r: Blood beasts rise - AoE them before they reach the pack.",
};

pack["36626"] = { "Panzachancro",
"* |cff71d5ff|Hspell:69279|h[Gas Spore]|h|r: Gas spores mark players - touch the burst once to gain your inoculation.",
"* |cff71d5ff|Hspell:69166|h[Inhalación de la Plaga]|h|r: Cada inhalación aumenta su daño - al acumular tres stacks, toda la raid recibe daño.",
"* |cff71d5ff|Hspell:69240|h[Gas venenoso]|h|r: El gas venenoso se dispersa, afectando a los personajes a distancia. Mantén a los personajes a distancia lo más alejados posible.",
"* |cff71d5ff|Hspell:69195|h[Pungente Plaga]|h|r: El ataque de plaga se produce con la tercera inhalación - cooldowns defensivos activados.",
"* |cff71d5ff|Hspell:72219|h[Gastric Bloat]|h|r: Gastric bloat stacks on his tank - swap tanks.",
};

pack["36627"] = { "Carapútrea",
"* |cff71d5ff|Hspell:69508|h[Slime Spray]|h|r: Cone of slime - stay behind him.",
"* |cff71d5ff|Hspell:69674|h[Infección Mutante]|h|r: El infectado lo elimina corriendo hacia el gran charco - la explosión crea un charco adicional, quema el charco lejos del grupo.",
"* |cff71d5ff|Hspell:69774|h[Sticky Ooze]|h|r: Sticky ooze pools chase players - step out.",
"* |cff71d5ff|Hspell:69558|h[Oozes inestables]|h|r: Los oozes fusionados crean un gran charco - mantén los pequeños separados de él.",
};

pack["36678"] = { "Profesor Putricidio",
"* |cff71d5ff|Hspell:70341|h[Charcos de baba]|h|r: Los charcos de baba crecen dondequiera que caen – salta y nunca luches sobre ellos.",
"* |cff71d5ff|Hspell:70447|h[Volatile Ooze]|h|r: The ooze glues a player - burst the ooze down to free them.",
"* |cff71d5ff|Hspell:70672|h[Inflamación gaseosa]|h|r: El gas infla al jugador; explota el gas.",
"* |cff71d5ff|Hspell:71255|h[Bomba de Gas Asfixiante]|h|r: Se lanzan bombas de gas asfixiante – salgan inmediatamente.",
"* |cff71d5ff|Hspell:70911|h[Plaga Desatada]|h|r: La plaga desatada salta entre jugadores – pásala antes de que mate al portador.",
"* |cff71d5ff|Hspell:72840|h[Volatile Experiment]|h|r: In phase 3 both experiments fly at once - preplan the ooze and the gas stations.",
};

bos = { "Consejo de Príncipes de Sangre",
"* |cff71d5ff|Hspell:70952|h[Cambiar objetivo]|h|r: Su objetivo cambia al príncipe protegido - nunca atacar al protegido.",
"* |cff71d5ff|Hspell:72040|h[Empowered Flames]|h|r: Empowered flames track a player - run the trail out.",
"* |cff71d5ff|Hspell:72037|h[Shock Vortex]|h|r: El Shock Vortex rebota a través del grupo - extenderse lo máximo posible.",
"* |cff71d5ff|Hspell:72053|h[Bomba cinética]|h|r: Las bombas cinéticas flotan y rebota; explótalas antes de que toquen el suelo.",
};
pack["37970"] = bos; pack["37972"] = bos; pack["37973"] = bos;

pack["37955"] = { "Reina de Sangre Lana'thel",
"* |cff71d5ff|Hspell:71340|h[Pacto de los Oscuros Caídos]|h|r: Los tres malditos comparten el daño - agruparse cerca y destruir el pacto.",
"* |cff71d5ff|Hspell:70946|h[Mordida Vampírica]|h|r: El jugador mordido gana esencia; mantén a un sanador no mordido y ten un plan de intercambio.",
"* |cff71d5ff|Hspell:70877|h[Sangre Sagrada]|h|r: La esencia genera un deseo - la víctima ataca a otro jugador antes de que explote.",
"* |cff71d5ff|Hspell:71266|h[Sombras que acechan]|h|r: Las sombras siguen al jugador marcado - corre en dirección opuesta a las sombras.",
"* |cff71d5ff|Hspell:71772|h[Golpe de Sangre]|h|r: Los golpes de sangre explotan ampliamente - dispersarse.",
"* |cff71d5ff|Hspell:71510|h[Blood Mirror]|h|r: The mirror links damage - keep the mirrored pair apart.",
};

pack["36789"] = { "Valithria Caminasueños",
"* |cff71d5ff|Hspell:72483|h[Portal al Infierno]|h|r: Los portales abren hacia el sueño - los curanderos cruzan, obtienen el buff y regresan para curar a Valithria intensamente.",
"* |cff71d5ff|Hspell:70588|h[Supresión]|h|r: Las nubes de supresión impiden la curación - destruyelas.",
"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay Waste activa la sala - corre fuera de los objetivos.",
"* |cff71d5ff|Hspell:71179|h[Mana Vacío]|h|r: El Mana Vacío drena a los lanzadores de hechizos - manténganse alejados de las marcas.",
"* |cff71d5ff|Hspell:70751|h[Corrosion]|h|r: Blistering zombies rise in waves - AoE them out of the dragon's way.",
};

pack["36853"] = { "Sindragosa",
"* |cff71d5ff|Hspell:70126|h[Frost Beacon]|h|r: Beaconed players rise as ice tombs - the tombs become cover, plan their spots.",
"* |cff71d5ff|Hspell:69766|h[Inestabilidad]|h|r: La inestabilidad se acumula con los hechizos. Detén el lanzamiento cuando tengas cinco stacks y deja que se disipe.",
"* |cff71d5ff|Hspell:70128|h[Mystic Buffet]|h|r: Buffets stack through her breath - swap tanks before five stacks.",
"* |cff71d5ff|Hspell:69762|h[Magia Desatada]|h|r: El efecto de \"Magia Desatada\" impide que los conjuradores lancen hechizos - deténganse hasta que desaparezca.",
"* |cff71d5ff|Hspell:43810|h[Fase de Aire]|h|r: Se levanta para una fase de aire - dispersarse y curar el ataque.",
};

pack["36597"] = { "El Rey Exánime",
"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: Defile se extiende dondequiera que alguien se coloque en él: nunca te pongas dentro y extiéndete, ya que puede destruir la plataforma.",
"* |cff71d5ff|Hspell:70337|h[Plaga Necrótica]|h|r: La plaga salta entre los objetivos – aplícala a los mobs y nunca la disipes.",
"* |cff71d5ff|Hspell:70372|h[Horror que se arrastra]|h|r: Los Horrores que se arrastran aparecen entre fases - elimínalos y mantén la plaga en ellos.",
"* |cff71d5ff|Hspell:69200|h[Espíritu Furioso]|h|r: Los espíritus furiosos aparecen en invierno – elimínalos antes de que lleguen al grupo.",
"* |cff71d5ff|Hspell:68981|h[Remorseless Winter]|h|r: La tormenta invernal arrastra a los jugadores hacia el interior – manténganse fuera del círculo.",
"* |cff71d5ff|Hspell:71844|h[Valkiría]|h|r: Las valquirias agarran a los jugadores; destrúyelas antes de que puedan llevarse las marcadas.",
"* |cff71d5ff|Hspell:72262|h[Quake]|h|r: El temblor destruye la plataforma; muévete a lo largo del lado seguro.",
};

-- --------------------------------- --
-- The Forge of Souls : Zona 632 --
-- --------------------------------- --

pack["36497"] = { "Bronjahm",
"* |cff71d5ff|Hspell:68839|h[Corrupt Soul]|h|r: The corrupted soul drifts back to him - kill the soul orb before it feeds him.",
"* |cff71d5ff|Hspell:68872|h[Torment of the Elements]|h|r: Cuando esté al borde de la muerte, la tormenta destruye la sala: acérquate a los bordes mientras gira.",
};

pack["36502"] = { "Devoraalmas",
"* |cff71d5ff|Hspell:68820|h[Well of Souls]|h|r: The well pools the floor - step off it.",
"* |cff71d5ff|Hspell:69051|h[Alma Reflejada]|h|r: El reflejo ata al jugador a él; detén de atacar mientras dure el efecto.",
"* |cff71d5ff|Hspell:68982|h[Explosión Fantasma]|h|r: La explosión fantasma destruye la sala - interrumpe.",
"* |cff71d5ff|Hspell:68899|h[Almas Lloronas]|h|r: Las Almas Lloronas cubren la sala - corre por el pasillo más seguro.",
};

-- --------------------------------- --
-- Trial of the Crusader : Zona 649 --
-- --------------------------------- --

bos = { "Las bestias de Rasganorte",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus se acumula en el tanque - quema primero a los snobolds que estén en la espalda del tanque.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Fire bombs scatter over the pack - step off the marks.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: La bestia se lanza hacia adelante por el área de combate - esquiva el ataque y aplasta mientras está aturdida.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: Breath of frost sweeps the room - stay out of the cone.",
"* |cff71d5ff|Hspell:66883|h[Pozo de baba]|h|r: Las piscinas de baba se extienden bajo los gusanos - evita que te toquen.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: The toxin paralyzes the marked - keep the cleans ready.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: The burning bile spreads on contact - keep distance from the marked.",
};
pack["34796"] = bos; pack["35144"] = bos; pack["34799"] = bos; pack["34797"] = bos;

pack["34780"] = { "Lord Jaraxxus",
"* |cff71d5ff|Hspell:66197|h[Fuego de la Legión]|h|r: Las llamas siguen el camino que recorre - corre el camino hasta la pared.",
"* |cff71d5ff|Hspell:66237|h[Incinerate Flesh]|h|r: El objetivo entra en una fase de curación - curaciones masivas hasta que se rompa el sello.",
"* |cff71d5ff|Hspell:66269|h[Portal Nether]|h|r: Se abre un portal - elimina a la maestra y a los súbditos rápidamente.",
"* |cff71d5ff|Hspell:66258|h[Volcán Infernal]|h|r: Un volcán entra en erupción - destruye el volcán antes de que las bolas de fuego inunden la sala.",
"* |cff71d5ff|Hspell:67009|h[Poder infernal]|h|r: Se otorga a sí mismo - deshacer la habilidad del jefe.",
"* |cff71d5ff|Hspell:66532|h[Fel Fireball]|h|r: La Fel Fireball bombardea al tanque - interrumpe cada lanzamiento.",
};

bos = { "Gemelas Val'kyr",
"* |cff71d5ff|Hspell:65950|h[Light Essence]|h|r: Half the raid carries light essence - only touch light orbs, the opposite color burns.",
"* |cff71d5ff|Hspell:66001|h[Dark Essence]|h|r: The other half carries dark essence - only touch dark orbs.",
"* |cff71d5ff|Hspell:39089|h[Especial]|h|r: Durante la llamada especial, los núcleos cambian de posición - cruza a los orbes opuestos simultáneamente.",
"* |cff71d5ff|Hspell:65875|h[Pacto de los Gemelos]|h|r: Un gemelo cura al otro - interrumpe el pacto.",
"* |cff71d5ff|Hspell:65916|h[Fuerza de los Gemelos]|h|r: El gemelo potenciado recibe daño reducido - cambia tu daño al otro.",
};
pack["34497"] = bos; pack["34496"] = bos;

pack["34564"] = { "Anub'arak",
"* |cff71d5ff|Hspell:45419|h[Nerubian Burrowers]|h|r: Los Nerubian Burrowers emergen desde el suelo - elimínalos rápidamente e interrumpe sus ataques.",
"* |cff71d5ff|Hspell:67574|h[Seguimiento]|h|r: Las hordas persiguen al jugador marcado - corre a los lados y usa ataques de área para dañarlas mientras se mueven.",
"* |cff71d5ff|Hspell:66013|h[Penetrating Cold]|h|r: En la última fase, el daño por frío se aplica a todos - cura para contrarrestar los efectos.",
"* |cff71d5ff|Hspell:66012|h[Golpe Congelante]|h|r: Golpe Congelante marca a un jugador - curanderos, prepárense.",
"* |cff71d5ff|Hspell:65919|h[Burrow]|h|r: Utiliza la habilidad Burrow con las oleadas de súbditos - elimina al grupo, él emerge al lado de la posición marcada.",
};

bos = { "Campeones de facción",
"* |cff71d5ff|Hspell:65947|h[Tormenta de Espadas]|h|r: El guerrero lanza la tormenta — los guerreros deben salir.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Su buff de heroísmo beneficia al grupo, así que elimínalo rápidamente.",
"* |cff71d5ff|Hspell:65816|h[Infierno]|h|r: El Infierno quema el suelo - mantente fuera de las zonas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Oveja]|h|r: Sus habilidades de control de masas - mantén los dispels listos.",
"* |cff71d5ff|Hspell:66017|h[Agarre de la Muerte]|h|r: El agarre de la muerte atrapa a un jugador; el grupo debe mantener la formación.",
};
pack["34458"] = bos; pack["34451"] = bos; pack["34459"] = bos; pack["34448"] = bos; pack["34449"] = bos; pack["34445"] = bos; pack["34456"] = bos; pack["34447"] = bos; pack["34441"] = bos; pack["34454"] = bos; pack["34444"] = bos; pack["34455"] = bos; pack["34450"] = bos; pack["34453"] = bos; pack["34461"] = bos; pack["34460"] = bos; pack["34469"] = bos; pack["34467"] = bos; pack["34468"] = bos; pack["34471"] = bos; pack["34465"] = bos; pack["34466"] = bos; pack["34473"] = bos; pack["34472"] = bos; pack["34470"] = bos; pack["34463"] = bos; pack["34474"] = bos; pack["34475"] = bos;

-- --------------------------------- --
-- Trial of the Champion : Zona 650 --
-- --------------------------------- --

bos = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Ola de curación]|h|r: Su sanador lanza oleadas - mantengan los interrupciones activas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfía]|h|r: El mago usa polimorfía - deshabilítala rápidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: The shaman hexes - dispel the hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidad]|h|r: El buff de velocidad les otorga poder - elimina al jefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Los charcos de veneno se extienden - evita los puntos de activación.",
};
pack["34657"] = bos; pack["34701"] = bos; pack["34702"] = bos; pack["34703"] = bos; pack["34705"] = bos; pack["35569"] = bos; pack["35570"] = bos; pack["35571"] = bos; pack["35572"] = bos; pack["35617"] = bos;

pack["35119"] = { "Eadric el Puro",
"* |cff71d5ff|Hspell:66935|h[Radiance]|h|r: The radiance dazzles anyone facing him - never look at the flash.",
"* |cff71d5ff|Hspell:66905|h[Martillo]|h|r: Lanza su martillo - lo atrapa y lo devuelve.",
"* |cff71d5ff|Hspell:66889|h[Venganza]|h|r: Su venganza aumenta su poder; quemarlo entre los golpes.",
};

pack["34928"] = { "Confesora Cabelloclaro",
"* |cff71d5ff|Hspell:66620|h[Memoria]|h|r: La memoria se manifiesta y ataca – destruyela, esquiva las heridas que deja.",
"* |cff71d5ff|Hspell:66515|h[Reflective Shield]|h|r: The shield bounces spells - casters keep off it.",
"* |cff71d5ff|Hspell:66538|h[Fuego Sagrado]|h|r: El fuego sagrado quema a los marcados; disipa el efecto.",
"* |cff71d5ff|Hspell:66537|h[Renew]|h|r: She renews herself - dispel the renew.",
};

pack["35451"] = { "El Caballero Negro",
"* |cff71d5ff|Hspell:67781|h[Desecración]|h|r: Desecración se extiende por el suelo - sal de ella.",
"* |cff71d5ff|Hspell:67751|h[Explosión]|h|r: El ghoul explota cerca del grupo - huyan.",
"* |cff71d5ff|Hspell:67823|h[Marcado]|h|r: Marca a un jugador para la peste - los curanderos deben permanecer cerca del marcado.",
};

-- --------------------------------- --
-- Pit of Saron : Zona 658 --
-- --------------------------------- --

pack["36494"] = { "Maestro de forja Gargelus",
"* |cff71d5ff|Hspell:70381|h[Deep Freeze]|h|r: The deep freeze locks its holder - keep cleans ready; the saronite boulders he hurls stay behind as cover against his frost.",
};

pack["36476"] = { "Agh y Puagh",
"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: Ick chases a player and barrages - run wide of the marks.",
"* |cff71d5ff|Hspell:69024|h[Toxic Waste]|h|r: Toxic waste pools the floor - step off it.",
"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: The poison nova pools wide - step out.",
};

bos = { "Señor de la Plaga Tyrannus",
"* |cff71d5ff|Hspell:69172|h[Marca del Señor]|h|r: La marca refleja cada golpe que recibe sobre el grupo, devolviéndolo al grupo - la marca mantiene los ataques.",
"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: Rimefang's grasp chases a player - run it off before the blast lands.",
};
pack["36658"] = bos; pack["36661"] = bos;

-- --------------------------------- --
-- Halls of Reflection : Zona 668 --
-- --------------------------------- --

pack["38112"] = { "Falric",
"* |cff71d5ff|Hspell:72422|h[Quivering Strike]|h|r: The quiver drains its holder - keep the cleanse ready.",
"* |cff71d5ff|Hspell:72426|h[Inminente desesperación]|h|r: La desesperación causa daño al portador - elimínala rápidamente; olas de espíritus atormentados atacan entre los dos.",
};

pack["38113"] = { "Marwyn",
"* |cff71d5ff|Hspell:72363|h[Corrupted Flesh]|h|r: The corrupted flesh burns its holder - keep the cleanse ready.",
"* |cff71d5ff|Hspell:72368|h[Shared Suffering]|h|r: Shared Suffering une al grupo - mantén a los miembros vinculados separados.",
"* |cff71d5ff|Hspell:72383|h[Tocar Corrupto]|h|r: El toque drena a quien lo usa - límpialo.",
"* |cff71d5ff|Hspell:72362|h[Well of Corruption]|h|r: Corruption pools the floor - step off it.",
};

-- --------------------------------- --
-- The Ruby Sanctum : Zona 724 --
-- --------------------------------- --

pack["39863"] = { "Halion",
"* |cff71d5ff|Hspell:74562|h[Combustión Ardiente]|h|r: La Combustión se basa en el daño de fuego y luego deja un rastro de fuego que debes llevar al borde del reino.",
"* |cff71d5ff|Hspell:74792|h[Consumir Sombra]|h|r: Los mismos rastros en el lado de la sombra - guárdalos en el borde del reino.",
"* |cff71d5ff|Hspell:74648|h[Golpe de Rayo]|h|r: Un rayo cae en el reino de fuego – aléjate del objetivo.",
"* |cff71d5ff|Hspell:74769|h[Twilight Cutter]|h|r: The rotating cutter rakes the twilight realm - keep the beam off you.",
"* |cff71d5ff|Hspell:74525|h[Flame Breath]|h|r: Flame breath on the fire-side tank - face him away.",
"* |cff71d5ff|Hspell:74806|h[Dark Breath]|h|r: Utiliza Dark Breath en el tanque que está en el lado de la sombra - haz que se enfrente al jefe.",
};

pack["39751"] = { "Baltharus el Batallante",
"* |cff71d5ff|Hspell:75125|h[Blade Tempest]|h|r: Whirlwind shreds the melee - step out.",
"* |cff71d5ff|Hspell:74509|h[Ola Repulsiva]|h|r: Una ola empuja a todos hacia atrás – manténganse alejados de las paredes.",
"* |cff71d5ff|Hspell:74505|h[Dividir la Marca]|h|r: La marca marca a un jugador; el clon obtiene una copia. Observa la división.",
};

pack["39747"] = { "Saviana Furia Ardiente",
"* |cff71d5ff|Hspell:74453|h[Faro de Fuego]|h|r: Marca a un jugador para el siguiente ataque - toma la marca lejos del grupo.",
"* |cff71d5ff|Hspell:74403|h[Aliento de Fuego]|h|r: Aliento de fuego amplio - haz que ataque desde el frente.",
"* |cff71d5ff|Hspell:78722|h[Enrage]|h|r: La enragea, tranquilízala.",
};

pack["39746"] = { "General Zarithrian",
"* |cff71d5ff|Hspell:74367|h[Armadura de Ataque]|h|r: Aplica stacks de armadura de ataque en el tanque — cambia de tanque.",
"* |cff71d5ff|Hspell:74398|h[Dragones de obsidiana]|h|r: Los dragones de obsidiana entran en la sala - elimínalos, mantén a los interrumpiendo listos.",
"* |cff71d5ff|Hspell:74384|h[Rugido aterrorizante]|h|r: Interrumpe el Rugido Aterrorizante o sufrirás sus efectos.",
};

P.es = es;
