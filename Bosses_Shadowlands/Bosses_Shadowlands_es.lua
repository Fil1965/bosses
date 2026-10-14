--[[
	Bosses_Shadowlands_es.lua
		Datos en español of the Shadowlands
		pack: the zones' dungeons, Tazavesh and its three raids, plus
		the world bosses. Sources: DBM-Raids-Shadowlands, DBM-Party-Shadowlands
		and DBM-Shadowlands (_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the
		tactics were filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Sanguine Depths : Zona 2284 --
-- --------------------------------- --

pack["162103"] = { "Ejecutor Tarvold",
"* |cff71d5ff|Hspell:322554|h[Castigate]|h|r: Castigate quema al jugador marcado; ten curaciones preparadas.",
"* |cff71d5ff|Hspell:322574|h[Manifestación maliciosa]|h|r: Una manifestación aparece – elimínala antes de que lance su hechizo.",
"* |cff71d5ff|Hspell:328494|h[Sin-touched Anima]|h|r: The anima empowers them - dispel it fast.",
};

pack["162099"] = { "General Kaal",
"* |cff71d5ff|Hspell:323845|h[Aceleración Maligna]|h|r: Las líneas de aceleración se alinean por toda la sala: sal de la línea.",
"* |cff71d5ff|Hspell:324086|h[Radiación Brillante]|h|r: La radiación protege a sus súbditos - deshazla.",
"* |cff71d5ff|Hspell:322903|h[Tormenta de Sombras]|h|r: La tormenta oscurece la sala: cúbrase detrás de las columnas.",
};

pack["162102"] = { "Gran procuradora Beryllia",
"* |cff71d5ff|Hspell:325360|h[Ritual de Supremacia]|h|r: El ritual canaliza la fase final: mantén el ataque constante y ten cuidado con las pozas.",
"* |cff71d5ff|Hspell:325254|h[Picos de Hierro]|h|r: Los picos atraviesan el suelo - activaciones defensivas en uso.",
"* |cff71d5ff|Hspell:326039|h[Endless Torment]|h|r: The torment casts - interrupt it fast.",
};

pack["162100"] = { "Kryxis el Voraz",
"* |cff71d5ff|Hspell:319650|h[Vicious Headbutt]|h|r: Headbutts his tank hard - defensives up.",
"* |cff71d5ff|Hspell:319654|h[Hungering Drain]|h|r: The drain chews its holder - cleanse it and heal through.",
"* |cff71d5ff|Hspell:319685|h[Severing Smash]|h|r: El ataque lo hace tambalearse, así que asegúrate de mantenerlo.",
"* |cff71d5ff|Hspell:319713|h[Juggernaut Charge]|h|r: El ataque marca a un jugador; el grupo se reúne para compartir el daño.",
};

-- --------------------------------- --
-- Spires of Ascension : Zona 2285 --
-- --------------------------------- --

pack["162061"] = { "Devos, dechado de la duda",
"* |cff71d5ff|Hspell:323943|h[Correr]|h|r: Corre con tu arma a través de la zona marcada - la zona marcada se mueve constantemente.",
"* |cff71d5ff|Hspell:322818|h[Lost Confidence]|h|r: Confidence drains the pack - heal through the despair.",
"* |cff71d5ff|Hspell:334625|h[Detonación Abisal]|h|r: La detonación llena la sala; rompe el proyectil detrás de las columnas.",
};

bos = { "Kin-Tara",
"* |cff71d5ff|Hspell:321009|h[Charged Spear]|h|r: The spear charges at the marked player - run it out wide.",
"* |cff71d5ff|Hspell:320966|h[Corte por encima]|h|r: El corte en el tanque - habilidades defensivas activadas.",
"* |cff71d5ff|Hspell:327481|h[Dark Lance]|h|r: The lance casts - interrupt it.",
"* |cff71d5ff|Hspell:324368|h[Barrage]|h|r: El Barrage persigue a su objetivo - mantén la distancia del brillo.",
};
pack["162059"] = bos; pack["163077"] = bos;

pack["162060"] = { "Oryphrion",
"* |cff71d5ff|Hspell:338731|h[Golpe de Tierra]|h|r: El golpe sacude la sala, prepárate.",
"* |cff71d5ff|Hspell:334053|h[Explosión Purificadora]|h|r: El ataque explota ampliamente.",
"* |cff71d5ff|Hspell:324427|h[Empyreal Ordnance]|h|r: El arma cae - corre fuera del alcance.",
"* |cff71d5ff|Hspell:324392|h[Anima Field]|h|r: A field builds around him - pull him out of the glow.",
};

pack["162058"] = { "Ventunax",
"* |cff71d5ff|Hspell:324205|h[Blinding Flash]|h|r: The flash stuns in front of her - keep off her flanks.",
"* |cff71d5ff|Hspell:334485|h[Recarga]|h|r: La recarga se alimenta del anima - da un paso al ancho del brillo.",
};

-- --------------------------------- --
-- The Necrotic Wake : Zona 2286 --
-- --------------------------------- --

pack["163157"] = { "Amarth, el Cosechador",
"* |cff71d5ff|Hspell:321226|h[Tierra de los Muertos]|h|r: Los esqueletos se levantan a su alrededor, elimínalos con ataques de área.",
"* |cff71d5ff|Hspell:321247|h[Cosecha Final]|h|r: La cosecha cubre la sala, prepárense.",
"* |cff71d5ff|Hspell:333493|h[Aliento Necrótico]|h|r: Aliento en curso - los personajes cuerpo a cuerpo se retiran.",
"* |cff71d5ff|Hspell:320170|h[Necrotic Bolt]|h|r: The bolt casts - interrupt it.",
"* |cff71d5ff|Hspell:322493|h[Ráfaga de Escarcha]|h|r: Interrumpir con Ráfaga de Escarcha.",
};

pack["162691"] = { "Huesoañublo",
"* |cff71d5ff|Hspell:320637|h[Gas tóxico]|h|r: Las nubes de gas cubren el suelo - evita que te alcancen.",
"* |cff71d5ff|Hspell:320596|h[Tos violento]|h|r: Tos en un cono amplio - manténgase alejado de su rostro.",
"* |cff71d5ff|Hspell:320655|h[Crunch]|h|r: Ataca al tanque con Crushes, lo hace mucho daño - pone defensas.",
};

pack["162693"] = { "Nalthor Clamaescarcha",
"* |cff71d5ff|Hspell:321754|h[Icebound Aegis]|h|r: The aegis holds - break through the shield.",
"* |cff71d5ff|Hspell:323730|h[Frozen Binds]|h|r: The binds mark a player - shatter the ice fast.",
"* |cff71d5ff|Hspell:321894|h[Dark Exile]|h|r: Exilia a un jugador a la cubierta inferior - sobrevivir y regresar.",
"* |cff71d5ff|Hspell:320772|h[Tempestad de Cometas]|h|r: Los cometas caen al suelo, manténgase alejado de las zonas de impacto.",
};

pack["162689"] = { "Cirujano Cosecarne",
"* |cff71d5ff|Hspell:320358|h[Stitched Creation]|h|r: The creation rises - kill it fast.",
"* |cff71d5ff|Hspell:320376|h[Mutilate]|h|r: Aplica Mutilate al tanque - ten curaciones preparadas.",
"* |cff71d5ff|Hspell:322681|h[Gancho]|h|r: El gancho atrapa a un jugador – libera rápido.",
"* |cff71d5ff|Hspell:327664|h[Embalming Ichor]|h|r: Ichor pools the floor - run out of it.",
};

-- --------------------------------- --
-- Halls of Atonement : Zona 2287 --
-- --------------------------------- --

pack["164185"] = { "Echelon",
"* |cff71d5ff|Hspell:319941|h[Salto de Fragmentación de Piedra]|h|r: Salta hacia la zona marcada; el grupo debe despejar el área.",
"* |cff71d5ff|Hspell:319733|h[Llamada de piedra]|h|r: Piedras surgen a su alrededor - Ataque a área al grupo.",
"* |cff71d5ff|Hspell:328206|h[Maldición de Piedra]|h|r: La maldición petrifica a su portador – límpiala.",
"* |cff71d5ff|Hspell:326389|h[Torrente Sanguíneo]|h|r: El torrente se extiende ampliamente – dispersarse.",
};

pack["165408"] = { "Halkias, el goliat impenitente",
"* |cff71d5ff|Hspell:322943|h[Heave Debris]|h|r: Lanza escombros al grupo - elimina los lanzamientos.",
"* |cff71d5ff|Hspell:322936|h[Golpe Desmoronador]|h|r: El golpe rompe el suelo, muévelo a lo largo del pasillo.",
"* |cff71d5ff|Hspell:322711|h[Refracted Sinlight]|h|r: The sinlight beams sweep - step off the beam.",
};

pack["165410"] = { "Gran adjudicadora Aleez",
"* |cff71d5ff|Hspell:323650|h[Fijarse]|h|r: Se fija en un jugador - corre para esquivar el ataque.",
"* |cff71d5ff|Hspell:1236512|h[Unstable Anima]|h|r: Anima bursts scattered - spread out.",
"* |cff71d5ff|Hspell:323538|h[Fulminada]|h|r: El proyectil lanza – interrumpe.",
};

pack["164218"] = { "Lord chambelán",
"* |cff71d5ff|Hspell:323142|h[Lanzamiento Telekinesico]|h|r: Lanza escombros hacia el grupo - elimínalos.",
"* |cff71d5ff|Hspell:323236|h[Sufrimiento Desatado]|h|r: El Sufrimiento se libera en una onda expansiva – distánciate.",
"* |cff71d5ff|Hspell:329113|h[Telekinetic Onslaught]|h|r: Onslaughts sweep the room - watch the marks.",
"* |cff71d5ff|Hspell:328791|h[Ritual de Dolor]|h|r: El ritual crea una explosión - el grupo se reúne alrededor para absorberla.",
};

-- --------------------------------- --
-- Plaguefall : Zona 2289 --
-- --------------------------------- --

pack["164967"] = { "Doctor Ickus",
"* |cff71d5ff|Hspell:329110|h[Inyección de baba]|h|r: La inyección crece - ¡despela rápido!",
"* |cff71d5ff|Hspell:329217|h[Slime Lunge]|h|r: The lunge swings wide - watch the sweep.",
"* |cff71d5ff|Hspell:321406|h[Virulent Explosion]|h|r: The explosion builds - spread out before it pops.",
"* |cff71d5ff|Hspell:319070|h[Corrosive Gunk]|h|r: Gunk corrodes its holder - keep the cleanse ready.",
};

pack["164266"] = { "Domina Hojaveneno",
"* |cff71d5ff|Hspell:325245|h[Emboscada]|h|r: Emboscada al objetivo marcado desde las sombras - ten los curaciones listos.",
"* |cff71d5ff|Hspell:336258|h[Solitary Prey]|h|r: Solitary prey isolates a player - the pack spreads off them.",
"* |cff71d5ff|Hspell:325552|h[Cytotoxic Slash]|h|r: The poison stacks on his tank - swap tanks.",
};

pack["164255"] = { "Globgrog",
"* |cff71d5ff|Hspell:324527|h[Plague Stomp]|h|r: The stomp shakes the pen - brace it.",
"* |cff71d5ff|Hspell:324667|h[Onda de Slime]|h|r: Las ondas de slime inundan la sala, manténganse alejadas del agua.",
"* |cff71d5ff|Hspell:327608|h[Beckon Slime]|h|r: He beckons slimes close - burn them before they reach him.",
"* |cff71d5ff|Hspell:324652|h[Debilitating Plague]|h|r: The plague drains its holder - cleanse it.",
};

pack["164267"] = { "Margravina Stradama",
"* |cff71d5ff|Hspell:322304|h[Crecimiento Maligno]|h|r: Los crecimientos se desarrollan y lo alimentan; destrúyelos en el momento en que aparezcan.",
"* |cff71d5ff|Hspell:322236|h[Toque de baba]|h|r: El toque necesita un objetivo - coordina y compártelo.",
"* |cff71d5ff|Hspell:322473|h[Plaga de impacto]|h|r: El impacto crea un charco de baba; mantente fuera de las zonas afectadas.",
};

-- --------------------------------- --
-- Mists of Tirna Scithe : Zona 2290 --
-- --------------------------------- --

pack["164567"] = { "Ingra Maloch",
"* |cff71d5ff|Hspell:321005|h[Soul Shackle]|h|r: The shackle binds its holder - break it fast.",
"* |cff71d5ff|Hspell:323059|h[Ira de Droman]|h|r: Los Murkhals lanzan hechizos desde el claro - interrumpan sus hechizos.",
"* |cff71d5ff|Hspell:328756|h[Repulsive Visage]|h|r: The visage fears the pack - brace and spread.",
"* |cff71d5ff|Hspell:323137|h[Bewildering Pollen]|h|r: El polen aturde a su objetivo principal - manténgase alejado de su rostro.",
};

pack["164501"] = { "Clamaneblina",
"* |cff71d5ff|Hspell:336499|h[Juego de adivinanzas]|h|r: El juego de adivinanzas genera dobles - encuentra el original y destrúyelo.",
"* |cff71d5ff|Hspell:321891|h[Fixate]|h|r: Fixate marca a un jugador; el jugador marcado permanece en movimiento.",
"* |cff71d5ff|Hspell:321834|h[Dodge Ball]|h|r: Las pelotas de esquiva se dispersan por la sala – mantente alejado de la línea.",
"* |cff71d5ff|Hspell:321828|h[Patty Cake]|h|r: Interrumpe los golpes de patty cake.",
};

pack["164517"] = { "Tred'ova",
"* |cff71d5ff|Hspell:322563|h[Caza marcada]|h|r: La caza marcada es consumida - la caza se mueve por la sala.",
"* |cff71d5ff|Hspell:322550|h[Incubación Acelerada]|h|r: Los capullos se abren - destruye la fuente antes de que eclosione.",
"* |cff71d5ff|Hspell:322648|h[Conexión Mental]|h|r: La conexión mental une a dos jugadores; separa la conexión.",
"* |cff71d5ff|Hspell:322450|h[Consumo]|h|r: El consumo daña el suelo - sal de las marcas.",
};

-- --------------------------------- --
-- De Other Side : Zona 2291 --
-- --------------------------------- --

pack["164450"] = { "Tratante Xy'exa",
"* |cff71d5ff|Hspell:319619|h[Trampa de Desplazamiento]|h|r: La trampa teletransporta a los jugadores; busca un lugar seguro rápidamente.",
"* |cff71d5ff|Hspell:321948|h[Explosión localizada]|h|r: El arma explosiva de un jugador - aléjalo del grupo.",
"* |cff71d5ff|Hspell:323687|h[Arcane Lightning]|h|r: Lightning arcs between players - spread out.",
"* |cff71d5ff|Hspell:320230|h[Dispositivo Explosivo]|h|r: El dispositivo explota ampliamente; cúbrase detrás de los cristales.",
};

pack["166473"] = { "Hakkar el Cazador de Almas",
"* |cff71d5ff|Hspell:322773|h[Blood Barrier]|h|r: The barrier holds him - stun the casts to strip it.",
"* |cff71d5ff|Hspell:322746|h[Sangre Corrupta]|h|r: Los chorros de sangre deben cubrir un área amplia.",
"* |cff71d5ff|Hspell:332329|h[Sacrificio Devoto]|h|r: Un sacrificio se une a la batalla: destruye.",
"* |cff71d5ff|Hspell:323064|h[Torrente Sanguíneo]|h|r: El torrente interrumpe el hechizo.",
};

pack["169769"] = { "Mueh'zala",
"* |cff71d5ff|Hspell:325725|h[Cosmic Artifice]|h|r: The artifice marks a player - run it out wide.",
"* |cff71d5ff|Hspell:326171|h[Fragmentar la Realidad]|h|r: La realidad se fragmenta alrededor del grupo - cúbrase detrás de las ruinas.",
"* |cff71d5ff|Hspell:325258|h[Maestro de la Muerte]|h|r: El maestro lanza una onda de choque - dispersarse.",
"* |cff71d5ff|Hspell:327646|h[Soulcrusher]|h|r: The soulcrusher lands on his tank - defensives up.",
};

bos = { "Los Tormenta de Maná",
"* |cff71d5ff|Hspell:320787|h[Invocar Cristal de Poder]|h|r: El cristal emite un sonido - destruyelo rápidamente.",
"* |cff71d5ff|Hspell:320168|h[Lanzar Sierra]|h|r: Las sierras cortan a través de la habitación, manténgase fuera de las vías.",
"* |cff71d5ff|Hspell:320147|h[Sangrado]|h|r: El sangrado se acumula en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:320141|h[Doom]|h|r: El doom explota cerca del grupo - dispersarse.",
"* |cff71d5ff|Hspell:323877|h[Laser]|h|r: El láser se extiende hacia adelante - manténgase detrás del jefe.",
};
pack["164555"] = bos; pack["164556"] = bos;

-- --------------------------------- --
-- Theater of Pain : Zona 2293 --
-- --------------------------------- --

bos = { "Una afrenta de contendientes",
"* |cff71d5ff|Hspell:320069|h[Golpe Mortal]|h|r: Golpear al tanque con Golpe Mortal - tener curaciones preparadas.",
"* |cff71d5ff|Hspell:1215741|h[Golpe Poderoso]|h|r: El golpe se extiende ampliamente; distribúyanse.",
"* |cff71d5ff|Hspell:1215738|h[Decaying Breath]|h|r: Breath sweeps a front - step off it.",
"* |cff71d5ff|Hspell:333231|h[Searing Death]|h|r: Los círculos de daño rastrean a los jugadores. Corre para alejarlos.",
"* |cff71d5ff|Hspell:1215600|h[Withering Touch]|h|r: The withering clings to its holder - cleanse it.",
};
pack["164451"] = bos; pack["164463"] = bos; pack["164461"] = bos;

pack["162317"] = { "Tajasangre",
"* |cff71d5ff|Hspell:322795|h[Gancho de carne]|h|r: Los ganchos atraen a los jugadores hacia el molinillo - deshazlos rápidamente.",
"* |cff71d5ff|Hspell:318406|h[Golpe de Desmembramiento]|h|r: El golpe envía a todos volando, manténganse alejados de su frente.",
"* |cff71d5ff|Hspell:323515|h[Hateful Strike]|h|r: Hateful strikes on his tank - defensives up.",
};

pack["162309"] = { "Kul'tharok",
"* |cff71d5ff|Hspell:473540|h[Well of Darkness]|h|r: The well spreads darkness - spread out of it.",
"* |cff71d5ff|Hspell:474298|h[Draw Soul]|h|r: The draw pulls the pack - gather up and soak it.",
"* |cff71d5ff|Hspell:1216474|h[Giro mortal]|h|r: El giro cubre toda la arena, presta atención a las marcas.",
"* |cff71d5ff|Hspell:474087|h[Erupción Necótica]|h|r: La erupción sale hacia adelante - mantente alejado de su cara.",
};

pack["165946"] = { "Mordretha, la Emperatriz Eterna",
"* |cff71d5ff|Hspell:323831|h[Agarre de la Muerte]|h|r: El agarre arrastra a los jugadores hacia ella; prepárense para el tirón.",
"* |cff71d5ff|Hspell:324079|h[Reaping Scythe]|h|r: The scythe cleaves the tank - defensives up.",
"* |cff71d5ff|Hspell:324449|h[Manifest Death]|h|r: La manifestación de la muerte se forma alrededor del grupo - dispersarse.",
"* |cff71d5ff|Hspell:324589|h[Death Bolt]|h|r: El ataque lanza – interrumpe.",
"* |cff71d5ff|Hspell:323685|h[Grasping Rift]|h|r: El abismo atrae todo hacia adentro – manténganse alejados de él.",
};

pack["162329"] = { "Xav el Invicto",
"* |cff71d5ff|Hspell:317231|h[Golpe aplastante]|h|r: El golpe impacta en el tanque - defensas activadas.",
"* |cff71d5ff|Hspell:320729|h[Golpe Masivo]|h|r: Su golpe corta de forma amplia - los personajes que atacan cuerpo a cuerpo deben mantenerse detrás de él.",
"* |cff71d5ff|Hspell:339415|h[Deafening Crash]|h|r: El ataque interrumpe el hechizo.",
"* |cff71d5ff|Hspell:320102|h[Sangre y Gloria]|h|r: Marca a un campeón para obtener gloria - mantén al marcado a salvo.",
"* |cff71d5ff|Hspell:331618|h[Oppressive Banner]|h|r: The banner oppresses the arena - attack it fast.",
};

-- --------------------------------- --
-- Castle Nathria : Zona 2296 --
-- --------------------------------- --

pack["165066"] = { "Altimor el Cazador",
"* |cff71d5ff|Hspell:335114|h[Sinseeker]|h|r: The sinseekers chase their mark - the pack intercepts the chase.",
"* |cff71d5ff|Hspell:334971|h[Garras afiladas]|h|r: Las garras se acumulan en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:334945|h[Golpe Vicioso]|h|r: El golpe necesita un compañero - coordina y compártelo.",
};

pack["166644"] = { "Artificiero Xy'Mox",
"* |cff71d5ff|Hspell:328437|h[Ruptura Dimensional]|h|r: Crea fisuras - cura a través del daño.",
"* |cff71d5ff|Hspell:325361|h[Glyph of Destruction]|h|r: The glyph marks its holder - run it out wide.",
"* |cff71d5ff|Hspell:326271|h[Trampa de Congelación]|h|r: Las trampas congelan el suelo - evita pisarlas.",
"* |cff71d5ff|Hspell:335013|h[Explosión del Abismo]|h|r: El ataque se propaga por una línea - manténgase fuera de la línea.",
};

pack["164261"] = { "Destructor hambriento",
"* |cff71d5ff|Hspell:329298|h[Gluttonous Miasma]|h|r: El miasma se alimenta de los miembros del grupo, así que distribúyanse y utilicen curaciones de área.",
"* |cff71d5ff|Hspell:334266|h[Expulsión Volátil]|h|r: La expulsión impacta al jugador marcado – aléjate.",
"* |cff71d5ff|Hspell:334522|h[Consume]|h|r: He consumes a low player - keep everyone topped up.",
"* |cff71d5ff|Hspell:329725|h[Expulsa]|h|r: El hechizo Expulsa tiene un efecto de área amplia.",
};

pack["165759"] = { "Salvación del Rey del Sol",
"* |cff71d5ff|Hspell:328885|h[Mayor Castigo]|h|r: El castigo causa daño en un área amplia.",
"* |cff71d5ff|Hspell:326456|h[Restos Ardientes]|h|r: Los restos se acumulan en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:325877|h[Explosión de fuego]|h|r: El ataque necesita un objetivo - formen pareja y roten.",
"* |cff71d5ff|Hspell:329509|h[Blazing Surge]|h|r: The surge sweeps the platform - step off it.",
"* |cff71d5ff|Hspell:337865|h[Explosión de Fuego Desatada]|h|r: Interrumpe la explosión de fuego.",
};

pack["165521"] = { "Lady Inerva Venaoscura",
"* |cff71d5ff|Hspell:325936|h[Shared Cognition]|h|r: La Cognition en cadena a los lanzadores — espárcense.",
"* |cff71d5ff|Hspell:340452|h[Cambio de Corazón]|h|r: El corazón se vuelve contra su portador – sácalo hacia los lados.",
"* |cff71d5ff|Hspell:335396|h[Deseo]|h|r: Desire marca a un jugador - mantén el marcado visible.",
"* |cff71d5ff|Hspell:325769|h[Anima en Frasco]|h|r: Los contenedores se llenan de deseo - mantén el contenedor del grupo vacío.",
};

pack["164406"] = { "Alachilla",
"* |cff71d5ff|Hspell:328897|h[Exsangüe]|h|r: Los stacks de Exsangüe se aplican al tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:342074|h[Echolocation]|h|r: Echolocation marca a un jugador - corre el sonido hacia afuera.",
"* |cff71d5ff|Hspell:345936|h[Earsplitting Shriek]|h|r: El grito aturde al grupo - interrumpe.",
"* |cff71d5ff|Hspell:328921|h[Bloodshroud]|h|r: El aura la hace atacar - el grupo se dispersa y sobrevive.",
"* |cff71d5ff|Hspell:345397|h[Ola de Sangre]|h|r: Las olas de sangre inundan la sala, manténganse alejados del agua.",
};

pack["167406"] = { "Sire Denathrius",
"* |cff71d5ff|Hspell:326851|h[Blood Price]|h|r: Blood Price inflige daño al grupo, cura a través del daño.",
"* |cff71d5ff|Hspell:327039|h[Feeding Time]|h|r: Feeding marks a player - run the feed out wide.",
"* |cff71d5ff|Hspell:327796|h[Night Hunter]|h|r: El cazador necesita recibir daño - formen pareja y compartan el daño.",
"* |cff71d5ff|Hspell:326707|h[Cleansing Pain]|h|r: The pain releases in a shockwave - spread out.",
"* |cff71d5ff|Hspell:327227|h[Comando: Devastar]|h|r: Devastar cubre la sala, prepárate.",
};

pack["164407"] = { "Puñolodo",
"* |cff71d5ff|Hspell:331209|h[Mirada Odiosa]|h|r: Su mirada bloquea una línea - nadie debe estar en la línea de ataque.",
"* |cff71d5ff|Hspell:335300|h[Enlace de cadena]|h|r: Los enlaces de cadena requieren compañeros - manténganse separados de su compañero.",
"* |cff71d5ff|Hspell:335470|h[Golpe en cadena]|h|r: El golpe lanza al compañero/a - formen pareja y prepárense.",
"* |cff71d5ff|Hspell:341250|h[Furia Brutal]|h|r: Construye la furia - elimínalo antes de que la furia se agote.",
};

bos = { "Generales de la Legión Pétrea",
"* |cff71d5ff|Hspell:329636|h[Hardened Stone Form]|h|r: The stone form splits the generals - break through the stone.",
"* |cff71d5ff|Hspell:333376|h[Espada Maldita]|h|r: La espada golpea al tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:334765|h[Heart Rend]|h|r: Se necesita que [Heart Rend] absorba daño - formen pareja y compartan la habilidad.",
"* |cff71d5ff|Hspell:342256|h[Shadow Forces]|h|r: Shadow forces join the fight - AoE the pack down.",
};
pack["168112"] = bos; pack["168113"] = bos;

bos = { "El Consejo de Sangre",
"* |cff71d5ff|Hspell:328497|h[Danse Macabre]|h|r: La danza toma el escenario – ten cuidado con las esquinas y mantente alejado de los objetivos.",
"* |cff71d5ff|Hspell:346690|h[Contraataque de los duelistas]|h|r: El contraataque se aplica a los tanques - intercambiar tanques.",
"* |cff71d5ff|Hspell:346698|h[Asistente Devoto]|h|r: Los asistentes se unen a la fiesta: elimínalos.",
"* |cff71d5ff|Hspell:330978|h[Servidores de Dredger]|h|r: Los Dredgers atacan en grupo – Elimínalos rápidamente.",
};
pack["166971"] = bos; pack["166969"] = bos; pack["166970"] = bos;

-- --------------------------------- --
-- Tazavesh, the Veiled Market : Zona 2441 --
-- --------------------------------- --

pack["175663"] = { "Hylbrande",
"* |cff71d5ff|Hspell:346959|h[Purged by Fire]|h|r: La habilidad \"Purged by Fire\" purga al jugador marcado. – Utilízala desde la distancia.",
"* |cff71d5ff|Hspell:353312|h[Explosión Purificadora]|h|r: La explosión purifica a gran escala, distribúyense.",
"* |cff71d5ff|Hspell:358131|h[Lightning Nova]|h|r: The nova casts - interrupt it.",
"* |cff71d5ff|Hspell:347094|h[Colapso Titánico]|h|r: El colapso sacude el suelo – fortifícalo.",
};

pack["175646"] = { "Caos en el cuarto de correos",
"* |cff71d5ff|Hspell:346286|h[Líquidos Peligrosos]|h|r: Los líquidos se acumulan en la sala de correo - evita los charcos.",
"* |cff71d5ff|Hspell:369133|h[Mercancía Inestable]|h|r: La mercancía se vuelve inestable – elimina los paquetes rápidamente.",
"* |cff71d5ff|Hspell:346293|h[Fan Mail]|h|r: El ataque se extiende por todo el área.",
"* |cff71d5ff|Hspell:346962|h[Órden de pago]|h|r: Los órdenes requieren un escudo - formen pareja y lo compartan.",
};

pack["176564"] = { "Oasis de Myza",
"* |cff71d5ff|Hspell:350916|h[Security Slam]|h|r: The slam lands on the tank - defensives up.",
"* |cff71d5ff|Hspell:350922|h[Grito amenazante]|h|r: El grito genera stacks. Interrumpe.",
"* |cff71d5ff|Hspell:350919|h[Control de Manada]|h|r: Control mantiene a la multitud - dispersarse.",
"* |cff71d5ff|Hspell:357436|h[Infectious Solo]|h|r: El personaje solitario corre por la sala – corre de él.",
};

pack["175806"] = { "So'azmi",
"* |cff71d5ff|Hspell:347249|h[Divide]|h|r: Divide la sala en una línea de ataque con espadas - mantente fuera del alcance del ataque.",
"* |cff71d5ff|Hspell:347623|h[Quickblade]|h|r: Quickblade casta para castigar los movimientos lentos, los tanks deben intercambiar ataques rápidamente.",
"* |cff71d5ff|Hspell:347481|h[Tempestada de Shurikanes]|h|r: Los shurikanes atraviesan la sala – mantente en movimiento.",
};

pack["177269"] = { "So'leah",
"* |cff71d5ff|Hspell:353635|h[Collapsing Star]|h|r: La estrella colapsa sobre su objetivo - aléjalo.",
"* |cff71d5ff|Hspell:351124|h[Summon Assassins]|h|r: Assassins close in - hold the line and kill them.",
"* |cff71d5ff|Hspell:351086|h[Power Overwhelming]|h|r: Bebe el poder del cartel - aturde al lanzar.",
"* |cff71d5ff|Hspell:351646|h[Nova hiperlúgida]|h|r: La onda se propaga hacia afuera – mantente a un lado.",
};

bos = { "El Gran Animalario",
"* |cff71d5ff|Hspell:349627|h[Gluttony]|h|r: Gluttony marks a player - run the hunger out wide.",
"* |cff71d5ff|Hspell:349663|h[Agarre de Hambre]|h|r: El agarre arrastra a los jugadores hacia él; manténganse alejados.",
"* |cff71d5ff|Hspell:349797|h[Gran Consumo]|h|r: El consumo lo alimenta, elimina primero a los refuerzos.",
"* |cff71d5ff|Hspell:349954|h[Protocolo de Purificación]|h|r: El protocolo lo limpia, deshazlo rápidamente.",
"* |cff71d5ff|Hspell:350101|h[Cadenas de la Maldición]|h|r: Las cadenas atan a su portador; rompe las cadenas rápidamente.",
};
pack["176556"] = bos; pack["176555"] = bos; pack["176705"] = bos;

pack["175546"] = { "Cronocapitana Colagarfio",
"* |cff71d5ff|Hspell:347149|h[Infinite Breath]|h|r: Breath baits a lane - bait it away from the pack.",
"* |cff71d5ff|Hspell:352345|h[Disparo de Ancla]|h|r: La ancla atrapa a un jugador – libera rápido.",
"* |cff71d5ff|Hspell:1240097|h[Bomba de Tiempo]|h|r: La bomba inflige daño al portador - límpiala rápidamente.",
};

pack["175616"] = { "Zo'phex el Centinela",
"* |cff71d5ff|Hspell:345990|h[Containment Cell]|h|r: Cells cage players - break them open fast.",
"* |cff71d5ff|Hspell:345770|h[Impound Contraband]|h|r: Se confiscan los contrabando - elimina los contenedores antes de que se alimente.",
"* |cff71d5ff|Hspell:348350|h[Interrogación]|h|r: Interrogación afecta a un objetivo, y el grupo lo elimina.",
"* |cff71d5ff|Hspell:1236348|h[Charged Slash]|h|r: The slash cuts in front - stay off his face.",
};

-- --------------------------------- --
-- Sanctum of Domination : Zona 2450 --
-- --------------------------------- --

pack["175730"] = { "Escriba del destino Roh-Kalo",
"* |cff71d5ff|Hspell:354365|h[Grim Portent]|h|r: El portento marca a los jugadores – ten cuidado con la próxima explosión.",
"* |cff71d5ff|Hspell:351680|h[Invocar el Destino]|h|r: Invocar el Destino ata al tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:353432|h[Carga del Destino]|h|r: La carga permanece adherida a quien la sostiene, mientras que el objetivo la transmite.",
"* |cff71d5ff|Hspell:353931|h[Twist Fate]|h|r: Fate distorsiona al grupo - cura a través del desplazamiento.",
};

pack["175731"] = { "Guardián de los Primeros",
"* |cff71d5ff|Hspell:352833|h[Disintegration]|h|r: El rayo recorre su trayectoria - nadie debe estar en su camino.",
"* |cff71d5ff|Hspell:350455|h[Radiant Energy]|h|r: Energy floods the floor - hide behind the generators.",
"* |cff71d5ff|Hspell:352589|h[Meltdown]|h|r: La detonación causa una explosión; aléjate.",
"* |cff71d5ff|Hspell:352538|h[Protocolo de Purga]|h|r: El protocolo purga la sala: dispersarse.",
"* |cff71d5ff|Hspell:350732|h[Sunder]|h|r: El sunder golpea al tanque - habilidades defensivas activadas.",
};

pack["175559"] = { "Kel'Thuzad",
"* |cff71d5ff|Hspell:353808|h[Glacial Wrath]|h|r: Wrath hurls frozen orbs - break them before they reach the pack.",
"* |cff71d5ff|Hspell:348756|h[Frost Blast]|h|r: The blast freezes its holders - shatter them free.",
"* |cff71d5ff|Hspell:352530|h[Evocación oscura]|h|r: La evocación drena toda la vida; interrúmpela con fuerza.",
"* |cff71d5ff|Hspell:348978|h[Agotamiento del Alma]|h|r: El agotamiento se aplica al tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:355389|h[Explosión de cadáveres]|h|r: Los cadáveres explotan al impactar - manténganse alejados.",
};

pack["176523"] = { "Forjapenas Raznal",
"* |cff71d5ff|Hspell:355568|h[Cruciform Axe]|h|r: The axe marks its lane - run it out wide.",
"* |cff71d5ff|Hspell:348508|h[Martillo Resonante]|h|r: El martillo golpea al jugador marcado - el grupo despeja el área.",
"* |cff71d5ff|Hspell:355505|h[Cadenas de Acero Sombrío]|h|r: Las cadenas atan a los jugadores; rompan rápidamente.",
"* |cff71d5ff|Hspell:348456|h[Flameclasp Trap]|h|r: Traps flare the ground - step off the marks.",
};

pack["175729"] = { "Remanente de Ner'zhul",
"* |cff71d5ff|Hspell:349908|h[Orb of Torment]|h|r: Orbs torment the pack - break them before they burst.",
"* |cff71d5ff|Hspell:350469|h[Malevolence]|h|r: Malevolence permanece con su portador - sepáralo.",
"* |cff71d5ff|Hspell:351066|h[Shatter]|h|r: El ataque \"Shatter\" destruye el área - interrumpe.",
"* |cff71d5ff|Hspell:350894|h[Suffering]|h|r: El efecto de {Suffering} se acumula en el tanque - cambiar de tanque.",
};

pack["175727"] = { "Desgarrador de almas Dormazain",
"* |cff71d5ff|Hspell:350647|h[Marca del Tormento]|h|r: Las marcas del torment dañan a sus portadores, cura a través del daño.",
"* |cff71d5ff|Hspell:350422|h[Ruinblade]|h|r: El Ruinblade se aplica al tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:352158|h[Torment]|h|r: His torment lashes the pack - keep the heals ready.",
"* |cff71d5ff|Hspell:351779|h[Agonizing Spike]|h|r: The spike casts - interrupt it.",
};

pack["175732"] = { "Sylvanas Brisaveloz",
"* |cff71d5ff|Hspell:347504|h[Windrunner]|h|r: El Windrunner atraviesa al grupo, manténgase alejado de su ataque.",
"* |cff71d5ff|Hspell:353935|h[Daga de Sombra]|h|r: Las dagas marcan a sus portadores – manténganse separados.",
"* |cff71d5ff|Hspell:348064|h[Flecha aullante]|h|r: La flecha recorre su trayectoria - nadie se encuentra en ella.",
"* |cff71d5ff|Hspell:347704|h[Véu de Oscuridad]|h|r: El véu oscurece al grupo - agrupa y cura a través de él.",
"* |cff71d5ff|Hspell:349419|h[Cadenas de Dominación]|h|r: Atar a los jugadores con las cadenas – romperlas rápidamente.",
};

pack["175725"] = { "Mirada del Carcelero",
"* |cff71d5ff|Hspell:350803|h[Piercing Lens]|h|r: The lens rakes its lane - keep off the beam.",
"* |cff71d5ff|Hspell:358609|h[Arrastrar cadenas]|h|r: Las cadenas arrastran a los jugadores – rompan rápidamente.",
"* |cff71d5ff|Hspell:350604|h[Hopeless Lethargy]|h|r: Lethargy marks a player - run it out wide.",
"* |cff71d5ff|Hspell:350764|h[Destello Devastador]|h|r: El destello cubre la sala - corre alrededor del círculo delante de él.",
"* |cff71d5ff|Hspell:350828|h[Enlace de Muerte]|h|r: El enlace de muerte une a los tanks – intercambiar tanks.",
};

pack["175726"] = { "Las Nueve",
"* |cff71d5ff|Hspell:350202|h[Unending Strike]|h|r: The strike stacks on the tank - swap tanks.",
"* |cff71d5ff|Hspell:350342|h[Formless Mass]|h|r: The mass forms around them - AoE it down.",
"* |cff71d5ff|Hspell:350365|h[Wings of Rage]|h|r: The wings hurl the pack - brace the push.",
"* |cff71d5ff|Hspell:350385|h[Reverberating Refrain]|h|r: La melodía llena la sala: cúbrase tras las columnas.",
"* |cff71d5ff|Hspell:350283|h[Soulful Blast]|h|r: The blast casts - interrupt it.",
};

pack["175611"] = { "El Tarragrue",
"* |cff71d5ff|Hspell:347274|h[Golpe Devastador]|h|r: El golpe lanza al tanque; prepárense para recibirlo.",
"* |cff71d5ff|Hspell:347283|h[Aullido del depredador]|h|r: El aullido dispersa al grupo - prepárate y mantente en el lugar.",
"* |cff71d5ff|Hspell:347369|h[La mirada del Carcelero]|h|r: La mirada marca a su portador – corre la mirada ampliamente.",
"* |cff71d5ff|Hspell:347269|h[Cadenas de la Eterna]|h|r: Las cadenas atan a su portador; rompe las cadenas rápidamente.",
};

-- --------------------------------- --
-- Sepulcher of the First Ones : Zona 2481 --
-- --------------------------------- --

pack["181954"] = { "Anduin Wrynn",
"* |cff71d5ff|Hspell:365295|h[Barrera Contaminada]|h|r: La barrera protege a sus aliados - elimínala rápidamente.",
"* |cff71d5ff|Hspell:365030|h[Star de la Maldición]|h|r: Las estrellas persiguen a sus objetivos – mantenlas alejadas.",
"* |cff71d5ff|Hspell:362405|h[Kingsmourne Hungers]|h|r: La hoja busca al grupo – prepárense para el ataque.",
"* |cff71d5ff|Hspell:361989|h[Blasphemy]|h|r: Blasphemy rips the pack apart - gather up fast.",
"* |cff71d5ff|Hspell:364031|h[Guarda Maligna]|h|r: La guarda maligna se aferra - deshazla.",
};

pack["183501"] = { "Artificiero Xy'Mox",
"* |cff71d5ff|Hspell:363520|h[Anillos de Forerunner]|h|r: Los anillos emiten ondas – manténganse alejados de ellas.",
"* |cff71d5ff|Hspell:362615|h[Ruptura Dimensional]|h|r: Las rupturas drenan la vida del área - cura a través de ellas.",
"* |cff71d5ff|Hspell:362882|h[Trampa de Congelación]|h|r: Las trampas congelan el suelo - evita pisarlas.",
"* |cff71d5ff|Hspell:362803|h[Glyfo de Relocación]|h|r: El glyfo mueve a su portador, el tanque intercambia el foco.",
};

pack["181224"] = { "Dausegne, el Oráculo Caído",
"* |cff71d5ff|Hspell:361966|h[Golpes Infundidos]|h|r: Los golpes se acumulan en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:361018|h[Barrage de aturdimiento]|h|r: Los barrages necesitan que alguien los absorba - formen parejas y compartan el daño.",
"* |cff71d5ff|Hspell:359483|h[Núcleo de Dominación]|h|r: El núcleo está suelto, empújalo de vuelta hacia ella.",
"* |cff71d5ff|Hspell:365373|h[Halo de Disintegración]|h|r: El halo rodea la sala – manténgase fuera del halo.",
};

pack["180906"] = { "Halondrus el Reivindicador",
"* |cff71d5ff|Hspell:367079|h[Temblores Sísmicos]|h|r: Los temblores sacuden la sala, prepárate para el ataque.",
"* |cff71d5ff|Hspell:368957|h[Carga Volátil]|h|r: Aplica cargas volátiles a los jugadores – aléjalos del grupo.",
"* |cff71d5ff|Hspell:361676|h[Earthbreaker Missiles]|h|r: Los proyectiles caen en un área amplia - distribúyanse.",
"* |cff71d5ff|Hspell:365297|h[Crushing Prism]|h|r: Prisms crush the ground - step off the marks.",
};

pack["182169"] = { "Lihuvim, Arquitecto de Principios",
"* |cff71d5ff|Hspell:368738|h[Alineación Armónica]|h|r: La Armonía llama al grupo – reunirse en el círculo.",
"* |cff71d5ff|Hspell:368740|h[Melodic Alignment]|h|r: Melodic llama al grupo para que se disperse - manténganse separados del anillo.",
"* |cff71d5ff|Hspell:362622|h[Unstable Mote]|h|r: Motes burst on their holder - carry them away.",
"* |cff71d5ff|Hspell:363088|h[Cambio Cósmico]|h|r: El cambio afecta a todo, prepárate para el tirón.",
};

bos = { "Señores del Terror",
"* |cff71d5ff|Hspell:360012|h[Nube de carroña]|h|r: La nube se desplaza sobre el grupo – dispersen para evitarla.",
"* |cff71d5ff|Hspell:361913|h[Manifest Shadows]|h|r: Shadows manifest around them - AoE them down.",
"* |cff71d5ff|Hspell:360319|h[Unto Darkness]|h|r: La oscuridad invade la sala – prepárense para el próximo ataque.",
"* |cff71d5ff|Hspell:359960|h[Leeching Claws]|h|r: Claws leech the tank - defensives up.",
};
pack["181398"] = bos; pack["181399"] = bos;

bos = { "Panteón de prototipos",
"* |cff71d5ff|Hspell:360687|h[Runecarver's Deathtouch]|h|r: Deathtouch afecta a los que la llevan - mantengan las marcas separadas.",
"* |cff71d5ff|Hspell:360295|h[Ritual Necrótico]|h|r: El ritual reanima a los muertos - destruye rápidamente.",
"* |cff71d5ff|Hspell:362352|h[Pegado]|h|r: Pegar ata a sus portadores - romper el agarre rápidamente.",
"* |cff71d5ff|Hspell:365272|h[Humillación]|h|r: Los golpes se acumulan en el tanque - cambiar de tanque.",
};
pack["181548"] = bos; pack["181551"] = bos; pack["181546"] = bos; pack["181549"] = bos;

pack["182777"] = { "Rygelon",
"* |cff71d5ff|Hspell:362275|h[Colapso Celestial]|h|r: Los colapsos explotan en secuencia - ten en cuenta el orden.",
"* |cff71d5ff|Hspell:362206|h[Horizonte Oculto]|h|r: El horizonte atrae al grupo hacia él; prepárense para el tirón.",
"* |cff71d5ff|Hspell:362390|h[Manifest Cosmos]|h|r: El [Manifest Cosmos] se manifiesta a su alrededor - Ataca a todos con un ataque de área.",
"* |cff71d5ff|Hspell:363108|h[Celestial Terminator]|h|r: The terminator sweeps the room - brace it.",
};

pack["181395"] = { "Skolex, el Saqueador Insaciable",
"* |cff71d5ff|Hspell:359829|h[Dust Flail]|h|r: Los ataques con [Dust Flail] tienen un amplio alcance - dispersarse.",
"* |cff71d5ff|Hspell:359979|h[Rend]|h|r: Los rends se acumulan en los tanques – intercambiar tanques.",
"* |cff71d5ff|Hspell:359770|h[Ravening Burrow]|h|r: Se hunden - prepárense para el ataque al regresar.",
"* |cff71d5ff|Hspell:360448|h[Retch]|h|r: The retch rakes a shockwave - keep off the front.",
};

pack["180990"] = { "El Carcelero",
"* |cff71d5ff|Hspell:362075|h[Dominación]|h|r: Dominación aplasta al grupo - prepárate para el impacto.",
"* |cff71d5ff|Hspell:360281|h[Rune of Damnation]|h|r: Damnation marks players - carry the marks apart.",
"* |cff71d5ff|Hspell:366374|h[World Crusher]|h|r: El destructor golpea ampliamente - dispersarse.",
"* |cff71d5ff|Hspell:362631|h[Cadenas de Opresión]|h|r: Las cadenas unen a los jugadores, rompe las cadenas.",
"* |cff71d5ff|Hspell:362028|h[Relenting Domination]|h|r: Domination floods the room - hide behind the pillar.",
};

pack["180773"] = { "Guardián vigilante",
"* |cff71d5ff|Hspell:361001|h[Ola de Desintegración]|h|r: La ola golpea la sala, manténgase fuera del haz.",
"* |cff71d5ff|Hspell:359610|h[Deresolution]|h|r: El rayo cubre toda la sala – corre alrededor del círculo delante de él.",
"* |cff71d5ff|Hspell:364447|h[Dissonancia]|h|r: La Dissonancia se aplica al tanque - cambia de tanque.",
"* |cff71d5ff|Hspell:360658|h[Prefabricated Sentry]|h|r: Sentries deploy into the fight - burn them down.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["182466"] = { "Antros",
"* |cff71d5ff|Hspell:361632|h[Banishment Mark]|h|r: The mark banishes its holder - mind the mark.",
"* |cff71d5ff|Hspell:361390|h[Deterrencia]|h|r: La Deterrencia se acumula en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:361209|h[Golpe Furioso]|h|r: El golpe sacude el suelo - dispersarse.",
"* |cff71d5ff|Hspell:361341|h[Destruction Cores]|h|r: Cores rain the clearing - step off the marks.",
};

pack["178958"] = { "Morgeth",
"* |cff71d5ff|Hspell:353741|h[Gritos de Angustia]|h|r: Los gritos de angustia resuenan - prepárense para enfrentarlos.",
"* |cff71d5ff|Hspell:353800|h[Torment]|h|r: La habilidad Torment se aplica al tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:356430|h[Golem de Hierro]|h|r: Un golem de hierro se une a la pelea – elimínalo.",
"* |cff71d5ff|Hspell:355456|h[Damnation]|h|r: Damnation causa un gran daño - dispersarse.",
};

pack["167525"] = { "Mortanis",
"* |cff71d5ff|Hspell:338847|h[Unholy Frenzy]|h|r: Frenzy enrages him - soothe it.",
"* |cff71d5ff|Hspell:338851|h[Cráneo aullante]|h|r: Los cráneos necesitan recibir daño - formen parejas y se turnen para recibirlo.",
"* |cff71d5ff|Hspell:338846|h[Bone Cleave]|h|r: El ataque corta en amplio arco - los personajes cuerpo a cuerpo deben mantenerse a la distancia.",
"* |cff71d5ff|Hspell:338849|h[Restos Descontrolados]|h|r: Los restos giran a su alrededor, elimínalos con ataques de área.",
};

pack["167526"] = { "Nurgash",
"* |cff71d5ff|Hspell:338858|h[Puño de Piedra]|h|r: Los golpes golpean al tanque - defensas activadas.",
"* |cff71d5ff|Hspell:338863|h[Stone Stomp]|h|r: El golpe sacude el suelo - dispersarse.",
"* |cff71d5ff|Hspell:338868|h[Deep Slumber]|h|r: The slumber drops the pack - wake up fast.",
"* |cff71d5ff|Hspell:338867|h[Tormenta de Rocas]|h|r: Las rocas golpean los bordes - manténganse en el centro.",
};

pack["167527"] = { "Oranomonos",
"* |cff71d5ff|Hspell:339040|h[Stone Stomp]|h|r: El golpe sacude el claro - dispersarse.",
"* |cff71d5ff|Hspell:338852|h[Implante]|h|r: Los implantes se suman en el tanque - cambiar de tanque.",
"* |cff71d5ff|Hspell:338857|h[Regrowth]|h|r: Regrowth lo cura - interrumpe.",
"* |cff71d5ff|Hspell:338855|h[Semillas de Dolor]|h|r: Las semillas explotan ampliamente – corre de la flor.",
};

pack["167524"] = { "Valinor",
"* |cff71d5ff|Hspell:327256|h[Vent Anima]|h|r: Anima vents across the floor - keep off the vents.",
"* |cff71d5ff|Hspell:327255|h[Mark of Penitence]|h|r: Penitence stacks on the tank - swap tanks.",
"* |cff71d5ff|Hspell:339278|h[Llamada de Lysonia]|h|r: La llamada marca a su portador; mantén a la persona marcada clara.",
"* |cff71d5ff|Hspell:327262|h[Explosión de Anima Cargada]|h|r: El ataque carga a su objetivo - aléjalo.",
};

P.es = es;
