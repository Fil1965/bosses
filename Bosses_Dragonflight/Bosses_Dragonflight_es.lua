--[[
	Bosses_Dragonflight_es.lua
		Datos en español of the Dragonflight
		pack: the three raids (Vault of the Incarnates, Aberrus, Amirdrassil),
		the dungeons and Dawn of the Infinite, plus the Dragon Isles world
		bosses. Sources: DBM-Raids/Party-Dragonflight and DBM-DragonIsles
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Uldaman: Legacy of Tyr : Zona 2451 --
-- --------------------------------- --

pack["184018"] = { "Bromach",
"* |cff71d5ff|Hspell:369605|h[Llamada de las profundidades]|h|r: Invoca a las profundidades y los trogs responden - Aplica daño en área a los trogs rápidamente.",
"* |cff71d5ff|Hspell:369754|h[Sangre Furiosa]|h|r: Su Sangre Furiosa pone al clan en un estado de frenesí: ataca y mantén el buff.",
"* |cff71d5ff|Hspell:369700|h[Árbol Sacudido]|h|r: el árbol sacudido sacude la sala, elimínalo antes de que termine.",
"* |cff71d5ff|Hspell:369675|h[Relámpago en cadena]|h|r: su relámpago en cadena salta entre los grupos - interrumpelo cada vez.",
"* |cff71d5ff|Hspell:369703|h[Golpe Tétrico]|h|r: el Golpe Tétrico agrietará el suelo, da un paso fuera del golpe.",
};

pack["184125"] = { "Cronolord Deios",
"* |cff71d5ff|Hspell:376292|h[Eternal Orb]|h|r: eternal orbs drift through the room - keep clear of them.",
"* |cff71d5ff|Hspell:376208|h[Rewind Timeflow]|h|r: Rebobina el flujo temporal y el área regresa a su estado original; mantén la compostura.",
"* |cff71d5ff|Hspell:377405|h[Fuente de daño]|h|r: la fuente de daño arrastra a sus víctimas hacia ella – huye de ella inmediatamente.",
"* |cff71d5ff|Hspell:376049|h[Alas de viento]|h|r: las alas de viento empujan a todos hacia atrás – prepárense antes del ataque.",
"* |cff71d5ff|Hspell:375727|h[Sand Breath]|h|r: sand breath burns the front of him - keep out of the front.",
};

pack["184422"] = { "Ascuas",
"* |cff71d5ff|Hspell:369049|h[Buscador de Fuego]|h|r: el buscador de fuego persigue a su objetivo - usa el movimiento para alejarlo del grupo.",
"* |cff71d5ff|Hspell:369110|h[Humo Inestable]|h|r: los fragmentos orbitan a su alrededor y luego se dispersan - déles espacio a las chispas.",
"* |cff71d5ff|Hspell:368990|h[Purging Flames]|h|r: Una ola de llamas purificadoras atraviesa la sala: sal de su trayectoria.",
"* |cff71d5ff|Hspell:369061|h[Searing Clap]|h|r: El Searing Clap quema todo lo que está delante de él; prepárate para bloquearlo o aléjate.",
};

pack["184124"] = { "Centinela Talondras",
"* |cff71d5ff|Hspell:372600|h[Inexorable]|h|r: se transforma en Inexorable y nada la detiene, mantén la distancia hasta que termine.",
"* |cff71d5ff|Hspell:382071|h[Esfera Resonante]|h|r: las esferas resonantes atraviesan la sala - esquiva las esferas y las ondas que generan.",
"* |cff71d5ff|Hspell:372718|h[Fragmentos de tierra]|h|r: los fragmentos de tierra caen en los marcados - esquivar los fragmentos.",
"* |cff71d5ff|Hspell:372719|h[Titanic Empowerment]|h|r: her titanic power peaks - brace the spike or burn her down before it.",
"* |cff71d5ff|Hspell:372701|h[Golpe aplastante]|h|r: el golpe aplastante impacta con un empujón, prepárate para el retroceso.",
};

bos = { "Los enanos desaparecidos",
"* |cff71d5ff|Hspell:369563|h[Golpe Salvaje]|h|r: el golpe salvaje ataca a todos los que estén delante - manténganse alejados de la parte delantera.",
"* |cff71d5ff|Hspell:369573|h[Flecha Pesada]|h|r: la flecha pesada corta una línea - muévete fuera del alcance de la flecha.",
"* |cff71d5ff|Hspell:369791|h[Skullcracker]|h|r: Skullcracker carga a su objetivo - aléjate del camino de ataque.",
"* |cff71d5ff|Hspell:369677|h[Escudo reflectante]|h|r: el escudo rebota entre los jugadores; espárcense para evitar que rebote.",
"* |cff71d5ff|Hspell:369602|h[Escudo Defensivo]|h|r: el escudo fuerza bloquea sus defensas - interrumpe cada vez.",
};
pack["184580"] = bos; pack["184581"] = bos; pack["184582"] = bos;

-- --------------------------------- --
-- The Azure Vault : Zona 2515 --
-- --------------------------------- --

pack["186739"] = { "Filoazur",
"* |cff71d5ff|Hspell:372222|h[Arcane Cleave]|h|r: his arcane cleave rips out front - keep out of the front.",
"* |cff71d5ff|Hspell:385578|h[Ancient Orb]|h|r: ancient orbs track their targets - the marked dodge away from the group.",
"* |cff71d5ff|Hspell:373932|h[Rayo Ilusorio]|h|r: interrumpe el rayo ilusorio cada vez que lo lance.",
"* |cff71d5ff|Hspell:384132|h[Energía Abrumadora]|h|r: su poder aumenta durante la fase – prepárate para el pico.",
"* |cff71d5ff|Hspell:384223|h[Summon Draconic Image]|h|r: sus imágenes dracónicas se separan del combate - quema las imágenes.",
};

pack["186644"] = { "Leymor",
"* |cff71d5ff|Hspell:374364|h[Brotes de la línea ley]|h|r: los brotes de la línea ley florecen en el suelo - no se deben estar de pie sobre las líneas.",
"* |cff71d5ff|Hspell:374567|h[Erupción Explosiva]|h|r: la erupción ocurre en ráfagas - elimina el terreno cuando explote.",
"* |cff71d5ff|Hspell:374720|h[Devorar y Golpear]|h|r: su ataque de \"Devorar y Golpear\" afecta a todos los cercanos – distribúyanse y utilicen curaciones.",
"* |cff71d5ff|Hspell:386660|h[Fissura Erupción]|h|r: las fisuras se abren hacia afuera desde él - esquiva las grietas.",
"* |cff71d5ff|Hspell:374789|h[Infused Strike]|h|r: his infused strike lands hard on the tank - alternate tanks.",
};

pack["186737"] = { "Telash Alagrís",
"* |cff71d5ff|Hspell:386781|h[Bomba de Hielo]|h|r: lanza una bomba al jugador para aplicarle daño por frío - los jugadores marcados deben huir del grupo.",
"* |cff71d5ff|Hspell:387151|h[Icy Devastator]|h|r: el Icy Devastator corta una línea de hielo - sal de la línea.",
"* |cff71d5ff|Hspell:388008|h[Guerra del Cero Absoluto]|h|r: la Guerra del Cero Absoluto cubre la sala: aprovecha el refugio que ofrece la arena.",
};

pack["186738"] = { "Umbracráneo",
"* |cff71d5ff|Hspell:384978|h[Golpe del Dragón]|h|r: el golpe del dragón marca al portador - elimina el debuff del marcado.",
"* |cff71d5ff|Hspell:385399|h[Destrucción Desatada]|h|r: vuela y desata destrucción en su camino - prepárense para el paso.",
"* |cff71d5ff|Hspell:384699|h[Rugido Cristalino]|h|r: el rugido cristalino provoca una onda expansiva – manténgase alejado.",
"* |cff71d5ff|Hspell:385075|h[Arcane Eruption]|h|r: the shard erupts with arcane force - never touch the eruption.",
};

-- --------------------------------- --
-- The Nokhud Offensive : Zona 2516 --
-- --------------------------------- --

pack["186151"] = { "Balakar Khan",
"* |cff71d5ff|Hspell:376634|h[Iron Spear]|h|r: iron spears spear outward from him - dodge the spear lines.",
"* |cff71d5ff|Hspell:376864|h[Pico estático]|h|r: el pico estático marca a su objetivo, que se aleja del grupo.",
"* |cff71d5ff|Hspell:376725|h[Tormenta]|h|r: Interrumpe el ataque de tormenta cada vez que sea posible.",
"* |cff71d5ff|Hspell:375943|h[Upheaval]|h|r: su habilidad de \"Upheaval\" destruye el suelo debajo - muévete mientras el suelo se agrieta.",
"* |cff71d5ff|Hspell:375937|h[Rending Strike]|h|r: su ataque de Rending inflige mucho daño - la mitigación ayuda.",
};

pack["186616"] = { "Granyth",
"* |cff71d5ff|Hspell:388817|h[Fragmentos de Piedra]|h|r: lanza los fragmentos de piedra hacia afuera - sal de los fragmentos.",
"* |cff71d5ff|Hspell:387155|h[Lanced]|h|r: el lanza se lanza y golpea a su objetivo - el objetivo debe esquivar el ataque del lanza.",
"* |cff71d5ff|Hspell:388283|h[Erupción]|h|r: Interrumpir la erupción cuando se está formando.",
"* |cff71d5ff|Hspell:385916|h[Tectonic Stomp]|h|r: el \"Tectonic Stomp\" - aléjate del epicentro.",
};

bos = { "Teera y Maruuk",
"* |cff71d5ff|Hspell:382670|h[Gale Arrow]|h|r: el flechazo corta una línea por la habitación - sal de la trayectoria del flechazo.",
"* |cff71d5ff|Hspell:386547|h[Repel]|h|r: el ataque de repulsión empuja a todos hacia atrás – prepárense para el empujón.",
"* |cff71d5ff|Hspell:385339|h[Earthsplitter]|h|r: Earthsplitter destruye el suelo por delante – muévete fuera de las líneas de grieta.",
"* |cff71d5ff|Hspell:386063|h[Frightful Roar]|h|r: the frightful roar - run from the roar.",
"* |cff71d5ff|Hspell:382836|h[Brutalizar]|h|r: los golpes de brutalizar infligen mucho daño - mitígalos.",
};
pack["186339"] = bos; pack["186338"] = bos;

pack["186615"] = { "La Tempestad Enfurecida",
"* |cff71d5ff|Hspell:384686|h[Energy Surge]|h|r: her energy surge empowers her - dispel it off the boss.",
"* |cff71d5ff|Hspell:384620|h[Electrical Storm]|h|r: the electrical storm batters everyone near - spread and heal it through.",
"* |cff71d5ff|Hspell:384316|h[Lightning Strike]|h|r: lightning strikes land at marks - spread from the strikes.",
};

-- --------------------------------- --
-- Neltharus : Zona 2519 --
-- --------------------------------- --

pack["189340"] = { "Chargath, Perdición de las Escamas",
"* |cff71d5ff|Hspell:373424|h[Pico de Tierra]|h|r: el piko de tierra marca a su objetivo; el objetivo debe esquivar el piko.",
"* |cff71d5ff|Hspell:374655|h[Fetter]|h|r: the fetter pins players down - keep clear as it binds.",
"* |cff71d5ff|Hspell:373742|h[Onda de Magma]|h|r: la onda de magma se extiende por la sala - esquiva la ola mientras se desplaza.",
"* |cff71d5ff|Hspell:375056|h[Enfoque Ardiente]|h|r: su enfoque ardiente reduce su campo de visión - manténgase fuera de su línea de visión.",
};

pack["181861"] = { "Magmacolmillo",
"* |cff71d5ff|Hspell:375068|h[Magma Lob]|h|r: los ataques de magma impactan en el suelo - esquivar los ataques.",
"* |cff71d5ff|Hspell:375251|h[Lava Spray]|h|r: his lava spray bursts out front - keep out of the front.",
"* |cff71d5ff|Hspell:375436|h[Carga Ardiente]|h|r: está cargando con [Carga Ardiente] - aléjate del camino de la carga.",
"* |cff71d5ff|Hspell:374365|h[Mutación Volátil]|h|r: la mutación volátil agita a su manada – proporciona espacio para que se muevan.",
};

pack["189478"] = { "Maestro de forja Gorek",
"* |cff71d5ff|Hspell:374842|h[Escudo Ardiente]|h|r: el escudo ardiente gira por la sala, esquiva el escudo volador.",
"* |cff71d5ff|Hspell:374534|h[Golpes Calientes]|h|r: sus golpes calientes se acumulan en el tanque - alternar tanques.",
"* |cff71d5ff|Hspell:374635|h[Fuerza de la Forja]|h|r: la fuerza de la forja se intensifica – prepárate para el ataque y cura.",
"* |cff71d5ff|Hspell:374969|h[Forgestorm]|h|r: el rayo de forja golpea el suelo - sal de la tormenta.",
};

pack["189901"] = { "Señora de la guerra Sargha",
"* |cff71d5ff|Hspell:376780|h[Magma Shield]|h|r: his magma shield bars him - melt it with the hall's dragonfire cannon.",
"* |cff71d5ff|Hspell:377522|h[Burning Pursuit]|h|r: Burning Pursuit persigue a su objetivo: el objetivo marcado corre.",
"* |cff71d5ff|Hspell:377018|h[Oro Fundido]|h|r: los charcos de oro fundido se extienden por el suelo - nunca te quedes en el oro.",
"* |cff71d5ff|Hspell:377204|h[Horno del Dragón]|h|r: el horno del dragón explota hacia afuera - sal de la explosión.",
};

-- --------------------------------- --
-- Brackenhide Hollow : Zona 2520 --
-- --------------------------------- --

pack["186121"] = { "Descompotriarca Ojoiracundo",
"* |cff71d5ff|Hspell:373944|h[Totem de Explosión Rot]|h|r: Destruye el totem de explosión antes de que explote.",
"* |cff71d5ff|Hspell:376170|h[Nube de Podredumbre]|h|r: las nubes de podredumbre se desplazan - nunca te quedes dentro de la nube.",
"* |cff71d5ff|Hspell:373917|h[Decaystrike]|h|r: Asegúrate de que tu Decaystrike cause mucho daño - la mitigación ayuda.",
};

pack["186116"] = { "Rompetripas",
"* |cff71d5ff|Hspell:384827|h[Llama a las hyenas]|h|r: llama a sus hyenas – elimina al grupo rápidamente.",
"* |cff71d5ff|Hspell:384425|h[Olor a carne]|h|r: el olor a carne y las hienas persiguen - corre para alejar al objetivo.",
"* |cff71d5ff|Hspell:384148|h[Trampa de Enredar]|h|r: las trampas de enredar se extienden por el suelo - pisa cuidadosamente alrededor de las trampas.",
"* |cff71d5ff|Hspell:384638|h[Master's Call]|h|r: su control sobre la manada - interrumpe el hechizo.",
};

bos = { "Banda guerrera de Cortagarra",
"* |cff71d5ff|Hspell:381461|h[Savage Charge]|h|r: El Savage Charge se lanza contra su objetivo: despeja el camino o espera a que marque.",
"* |cff71d5ff|Hspell:377827|h[Tormenta de Espadas]|h|r: la tormenta de espadas gira alrededor de los personajes de combate cuerpo a cuerpo - los personajes de combate cuerpo a cuerpo deben salir de la zona de efecto.",
"* |cff71d5ff|Hspell:378229|h[Marcado para Butchery]|h|r: el marcado para Butchery roba la espada del grupo - prepárate para el golpe.",
"* |cff71d5ff|Hspell:381379|h[Sentidos Descompuestos]|h|r: los sentidos descompuestos – elimina el efecto de debuff del objetivo marcado.",
"* |cff71d5ff|Hspell:381466|h[Hextrick]|h|r: el hechizo - disipa el efecto de maldición inmediatamente.",
};
pack["186122"] = bos; pack["186124"] = bos; pack["186125"] = bos;

pack["186120"] = { "Bocaárbol",
"* |cff71d5ff|Hspell:377222|h[Consume]|h|r: he splits open and swallows his mark - free the swallowed before digestion.",
"* |cff71d5ff|Hspell:376933|h[Enredaderas]|h|r: las enredaderas atacan - retira tus pies de su alcance.",
"* |cff71d5ff|Hspell:376811|h[Decay Spray]|h|r: the decay spray showers outward - keep clear of the spray.",
"* |cff71d5ff|Hspell:381770|h[Gushing Ooze]|h|r: el chorro de baba - interrumpe el chorro.",
};

-- --------------------------------- --
-- Ruby Life Pools : Zona 2521 --
-- --------------------------------- --

pack["189232"] = { "Kokia Pezuña de Fuego",
"* |cff71d5ff|Hspell:372110|h[Molten Boulder]|h|r: the molten boulder rolls at its mark - dodge the boulder.",
"* |cff71d5ff|Hspell:372864|h[Ritual de Vinculación al Fuego]|h|r: el ritual permanece mientras el djaradin esté vivo - destruye al djaradin para interrumpirlo.",
"* |cff71d5ff|Hspell:372858|h[Golpe Ardiente]|h|r: sus golpes ardientes se acumulan en el tanque - alternar tanques.",
"* |cff71d5ff|Hspell:384823|h[Infierno]|h|r: el infierno cubre la sala: extiéndelo y cura.",
};

bos = { "Kyrakka y Erkhart Venatormenta",
"* |cff71d5ff|Hspell:381517|h[Vientos del Cambio]|h|r: los vientos del cambio empujan la sala - prepárense para el empuje.",
"* |cff71d5ff|Hspell:381525|h[Aliento de fuego ensordecedor]|h|r: El aliento de fuego ensordecedor de Kyrakka la golpea por delante - manténgase fuera del alcance del aliento.",
"* |cff71d5ff|Hspell:381516|h[Interrupting Cloudburst]|h|r: Erkhart's cloudburst cuts your casts - interrupt it every time.",
"* |cff71d5ff|Hspell:381862|h[Núcleo del Infierno]|h|r: el núcleo del infierno explota – corre fuera del núcleo.",
"* |cff71d5ff|Hspell:381512|h[Tempestad Imponente]|h|r: Tempestad Imponente causa mucho daño - la mitigación ayuda.",
};
pack["190484"] = bos; pack["190485"] = bos;

pack["188252"] = { "Melidrussa Ajafrío",
"* |cff71d5ff|Hspell:373046|h[Despertar Cachorros]|h|r: Despierta a sus cachorros - mata a los cachorros rápidamente.",
"* |cff71d5ff|Hspell:372851|h[Torment of the Elements]|h|r: la tormenta de hielo la rodea - sal de la tormenta.",
"* |cff71d5ff|Hspell:372988|h[Ice Bulwark]|h|r: the ice bulwark shields her - burst the bulwark down.",
"* |cff71d5ff|Hspell:372682|h[Frío Primordial]|h|r: el frío primordial se acumula en los personajes que lo usan; vigila las acumulaciones y mitígalo.",
"* |cff71d5ff|Hspell:373022|h[Congelado Sólido]|h|r: el hielo encierra a un jugador de forma sólida; libera al congelado inmediatamente.",
};

-- --------------------------------- --
-- Vault of the Incarnates : Zona 2522 --
-- --------------------------------- --

pack["190245"] = { "Vigilante de linaje Dyurna",
"* |cff71d5ff|Hspell:376073|h[Incubación Rápida]|h|r: los nidos eclosionan solos; mantén a las nuevas crías bajo control.",
"* |cff71d5ff|Hspell:378782|h[Heridas mortales]|h|r: sus heridas mortales provocan sangrado en el tanque - alternar tanques.",
"* |cff71d5ff|Hspell:390561|h[La Mirada de Diurna]|h|r: su mirada quema a quien la mira - el paso marcado lo elimina.",
"* |cff71d5ff|Hspell:375889|h[Gran Bastón de la Ira]|h|r: su Gran Bastón de la Ira golpea - prepárate para la ira.",
"* |cff71d5ff|Hspell:388716|h[Icy Shroud]|h|r: the icy shroud chills everyone - spread and heal it through.",
};

pack["189813"] = { "Dathea, ascendida",
"* |cff71d5ff|Hspell:391686|h[Marca de Conductividad]|h|r: la marca de conductividad salta al personaje que está cerca - extiéndela para que deje de saltar.",
"* |cff71d5ff|Hspell:388410|h[Crosswinds]|h|r: los vientos crean corrientes - sal de las líneas de los vientos.",
"* |cff71d5ff|Hspell:375580|h[Golpe de Zephyr]|h|r: el golpe de zephyr lanza al tanque al aire - alternar tanques.",
"* |cff71d5ff|Hspell:395501|h[Blowback]|h|r: el efecto de retroceso lanza a todos -> prepárense para el impacto.",
"* |cff71d5ff|Hspell:376943|h[Ciclón]|h|r: el ciclón arrastra a los jugadores - corre del ciclón.",
"* |cff71d5ff|Hspell:387849|h[Coalescing Storm]|h|r: se transforma en un elemental de tormenta - elimínalos rápidamente.",
};

pack["184972"] = { "Eranog",
"* |cff71d5ff|Hspell:390715|h[Flamerift]|h|r: el flamerift marca a su portador - el portador permanece marcado hasta que salta.",
"* |cff71d5ff|Hspell:396094|h[Gran Campo de Fuego]|h|r: el Gran Campo de Fuego golpea al otro tanque - alternar tanques.",
"* |cff71d5ff|Hspell:394906|h[Burning Wound]|h|r: his burning wound stacks up fast - swap the tank before the stacks bite.",
"* |cff71d5ff|Hspell:370615|h[Molten Cleave]|h|r: su ataque Molten Cleave corta el suelo - esquiva el ataque.",
"* |cff71d5ff|Hspell:396023|h[Grito Incinerante]|h|r: el grito incinerante - extiéndelo y cura.",
"* |cff71d5ff|Hspell:396022|h[Pico de Fuego]|h|r: el pico de fuego se lanza hacia los objetivos - esquivar los picos.",
};

pack["184986"] = { "Kurog Tótem Siniestro",
"* |cff71d5ff|Hspell:372158|h[Golpe de Desgarro]|h|r: Golpe de Desgarro impacta fuertemente en el tanque - alternar tanques.",
"* |cff71d5ff|Hspell:373329|h[Molten Rupture]|h|r: su Molten Rupture crea un anillo de fuego - muévete entre los anillos.",
"* |cff71d5ff|Hspell:374023|h[Carnage abrasador]|h|r: el Carnage abrasador explota en las marcas - muévete fuera del Carnage.",
"* |cff71d5ff|Hspell:372458|h[Absolute Zero]|h|r: Absolute Zero afecta a su objetivo: marca al objetivo y lo arrastra lejos del grupo.",
"* |cff71d5ff|Hspell:373678|h[Biting Chill]|h|r: the biting chill lingers where it landed - avoid the lingering frost.",
};

pack["189492"] = { "Raszageth la Devoradora de Tormentas",
"* |cff71d5ff|Hspell:381615|h[Carga estática]|h|r: la carga estática salta hacia adelante – dispersa para que deje de saltar.",
"* |cff71d5ff|Hspell:377612|h[Hurricane Wing]|h|r: the hurricane wing blasts everyone back - brace the wing.",
"* |cff71d5ff|Hspell:388643|h[Corriente Volátil]|h|r: las corrientes volátiles dispersan chispas – extenderse desde las chispas.",
"* |cff71d5ff|Hspell:395906|h[Electrified Jaws]|h|r: her electrified jaws maul the tank - alternate tanks.",
"* |cff71d5ff|Hspell:377594|h[Lightning Breath]|h|r: her lightning breath sears her front - keep out of the breath.",
};

pack["187967"] = { "Sennarth, el Frío Aliento",
"* |cff71d5ff|Hspell:371976|h[Chilling Blast]|h|r: el ataque de congelación salta hacia quien está cerca - espárcate para que no salte.",
"* |cff71d5ff|Hspell:372082|h[Redes envolventes]|h|r: las redes envolventes atrapan a un jugador - corta al jugador de las redes.",
"* |cff71d5ff|Hspell:372238|h[Llamar a las crías de araña]|h|r: llama a sus crías – elimina al grupo rápidamente.",
"* |cff71d5ff|Hspell:372030|h[Sticky Webbing]|h|r: the sticky webbing stacks slow anyone wrapped - clear the webs fast.",
"* |cff71d5ff|Hspell:373405|h[Gossamer Burst]|h|r: the gossamer burst yanks everyone to her - brace the pull.",
};

pack["190496"] = { "Terros",
"* |cff71d5ff|Hspell:380487|h[Rock Blast]|h|r: the rock blast hurls boulders at marks - dodge the boulders.",
"* |cff71d5ff|Hspell:381253|h[Tierra Despertada]|h|r: la tierra despierta entra en erupción bajo su marca, obligando al objetivo a moverse.",
"* |cff71d5ff|Hspell:376279|h[Golpe Contundente]|h|r: su golpe contundente - prepárate para el golpe y cura el espino.",
"* |cff71d5ff|Hspell:377166|h[Resonancia de Aniquilación]|h|r: la resonancia de aniquilación es su habilidad principal - prepárate para la aniquilación y cura intensamente.",
"* |cff71d5ff|Hspell:383073|h[Shattering Impact]|h|r: los ataques de impacto hacen temblar el suelo – esquiva los impactos.",
};

bos = { "El Consejo Primigenio",
"* |cff71d5ff|Hspell:371591|h[Tumba de Hielo]|h|r: los túmulos de hielo son atacados por un jugador – rompa el túmulo inmediatamente.",
"* |cff71d5ff|Hspell:386440|h[Convocación Glacial]|h|r: la invocación glacial – prepárate para el ritual helado y cura.",
"* |cff71d5ff|Hspell:373059|h[Primal Blizzard]|h|r: the primal blizzard batters the room - spread and heal it through.",
"* |cff71d5ff|Hspell:371624|h[Marca conductora]|h|r: cada marca conductora reclama su propio pilar - lleva tu marca a su pilar.",
"* |cff71d5ff|Hspell:372315|h[Frost Spike]|h|r: the frost spike - interrupt it every time.",
};
pack["187771"] = bos; pack["187768"] = bos; pack["187772"] = bos; pack["187767"] = bos;

-- --------------------------------- --
-- Algeth'ar Academy : Zona 2526 --
-- --------------------------------- --

pack["191736"] = { "Crawth",
"* |cff71d5ff|Hspell:377004|h[Grito ensordecedor]|h|r: el grito ensordecedor - extenderse desde el grito.",
"* |cff71d5ff|Hspell:377034|h[Viento Devastador]|h|r: su viento devastador empuja hacia adelante - resiste el viento o retírate.",
"* |cff71d5ff|Hspell:376997|h[Golpe Salvaje]|h|r: el golpe salvaje golpea con fuerza - la mitigación ayuda.",
"* |cff71d5ff|Hspell:376448|h[Tempestad de fuego]|h|r: la tempestad de fuego cae - evita las llamas que caen.",
};

pack["190609"] = { "Eco de Doragosa",
"* |cff71d5ff|Hspell:374352|h[Energy Bomb]|h|r: the energy bombs scatter out at marks - spread from the bursts.",
"* |cff71d5ff|Hspell:374361|h[Aliento Astral]|h|r: mantén a  fuera de su aliento astral.",
"* |cff71d5ff|Hspell:388820|h[Power Vacuum]|h|r: el vacío de poder atrae a todos - corre para evitar que te atraiga.",
};

pack["186951"] = { "Anciano desmesurado",
"* |cff71d5ff|Hspell:388796|h[Germinate]|h|r: seeds germinate into lashers - clear the sprouts before they grow.",
"* |cff71d5ff|Hspell:396640|h[Toque Curativo]|h|r: su toque curativo lo cura - interrúmpelo cada vez.",
"* |cff71d5ff|Hspell:388544|h[Barkbreaker]|h|r: his barkbreaker lands heavy - mitigation helps.",
"* |cff71d5ff|Hspell:388923|h[Explosión]|h|r: la explosión - prepárate y cura.",
};

pack["194181"] = { "Vexamus",
"* |cff71d5ff|Hspell:385974|h[Arcane Orbs]|h|r: the arcane orbs drift loose - intercept the orbs before they drift loose on the room.",
"* |cff71d5ff|Hspell:386173|h[Bomba de Maná]|h|r: las bombas de maná persiguen a sus objetivos – dispersenlas desde los objetivos.",
"* |cff71d5ff|Hspell:385958|h[Arcane Expulsion]|h|r: la expulsión arcana afecta a todos los cercanos - mitiga y cura a través.",
"* |cff71d5ff|Hspell:388537|h[Arcane Fissure]|h|r: arcane fissures tear the floor - avoid the fissures.",
};

-- --------------------------------- --
-- Halls of Infusion : Zona 2527 --
-- --------------------------------- --

pack["189722"] = { "Goliat tragaldabas",
"* |cff71d5ff|Hspell:385551|h[Gulp]|h|r: se traga al objetivo, el grupo recupera el control del objetivo de la garganta.",
"* |cff71d5ff|Hspell:385531|h[Golpe]|h|r: realiza un golpe a través de — mantente fuera del camino del golpe.",
"* |cff71d5ff|Hspell:374389|h[Veneno de Swog]|h|r: el veneno de Swog se acumula en el tanque - mitigar los stacks.",
"* |cff71d5ff|Hspell:385187|h[Croak ensordecedor]|h|r: su croak ensordecedor - dispersa y cura.",
};

pack["189727"] = { "Khajin la Implacable",
"* |cff71d5ff|Hspell:390111|h[Frost Cyclone]|h|r: frost cyclones whip through the room - never stand in the cyclones.",
"* |cff71d5ff|Hspell:386757|h[Hailstorm]|h|r: La tormenta de granizo cubre la arena, busca refugio en el área que ofrece.",
"* |cff71d5ff|Hspell:386559|h[Glacial Surge]|h|r: la ola de Glacial se extiende - esquiva la ola.",
"* |cff71d5ff|Hspell:385963|h[Frost Shock]|h|r: the frost shock - dispel it off the marked.",
};

pack["189729"] = { "Tsunami primigenio",
"* |cff71d5ff|Hspell:387571|h[Golpe Concentrado]|h|r: el golpe concentrado marca su objetivo - prepárate para el golpe.",
"* |cff71d5ff|Hspell:387474|h[Esfera Infundida]|h|r: las esferas infundidas flotan libremente – destruye las esferas antes de que floten sobre el grupo.",
"* |cff71d5ff|Hspell:388424|h[Furia de la Tormenta]|h|r: la furia de la tormenta golpea toda la sala, prepárate para el ataque y cura.",
"* |cff71d5ff|Hspell:387504|h[Squall Buffet]|h|r: el Squall Buffet empuja a todos hacia atrás – prepárense para el empuje.",
};

pack["189719"] = { "Vigía Irideus",
"* |cff71d5ff|Hspell:389179|h[Sobrecarga de Poder]|h|r: sus ráfagas de sobrecarga generan hechizos salvajes - aléjate de la sobrecarga.",
"* |cff71d5ff|Hspell:383840|h[Barrera Ablativa]|h|r: la barrera ablativa lo protege - destruye la barrera.",
"* |cff71d5ff|Hspell:384014|h[Oleada Estática]|h|r: la oleada estática golpea a todos - extiéndete y cura a través de ella.",
"* |cff71d5ff|Hspell:384524|h[Puños Titánicos]|h|r: sus puños titánicos sacuden hacia adelante - manténgase fuera de la zona frontal.",
};

-- --------------------------------- --
-- Amirdrassil, the Dream's Hope : Zona 2549 --
-- --------------------------------- --

bos = { "Consejo de los Sueños",
"* |cff71d5ff|Hspell:418187|h[Rebirth]|h|r: el guardián caído vuelve a la vida a menos que sea quemado - quema al caído rápidamente.",
"* |cff71d5ff|Hspell:421022|h[Agonizing Claws]|h|r: the agonizing claws maul their tank - alternate tanks.",
"* |cff71d5ff|Hspell:420948|h[Carga de impacto]|h|r: la carga de impacto se lanza hacia su objetivo - despeja el camino de la carga.",
"* |cff71d5ff|Hspell:420525|h[Blinding Rage]|h|r: the blinding rage - spread and heal it through.",
"* |cff71d5ff|Hspell:420671|h[Flor nociva]|h|r: las flores nocivas aparecen en el suelo - evitar las flores.",
};
pack["208363"] = bos; pack["208365"] = bos; pack["208367"] = bos;

pack["204931"] = { "Fyrakk el Llameante",
"* |cff71d5ff|Hspell:417443|h[Marca de Fyralath]|h|r: su marca ataca al tanque principal - alternar tanques.",
"* |cff71d5ff|Hspell:419506|h[Tempestad de fuego]|h|r: la tempestad de fuego quema la sala; prepárense para la tormenta y curar intensamente.",
"* |cff71d5ff|Hspell:430441|h[Sombras de fuego oscuro]|h|r: sus sombras de fuego oscuro se acercan - elimina las sombras rápidamente.",
"* |cff71d5ff|Hspell:417455|h[Dream Rend]|h|r: el Dream Rend - corre de al Rend.",
"* |cff71d5ff|Hspell:420422|h[Fuego Salvaje]|h|r: el fuego salvaje inflige daño en área y cura a los aliados.",
"* |cff71d5ff|Hspell:414186|h[Blaze]|h|r: the blazing trail lingers behind him - avoid the trail.",
};

pack["209333"] = { "Tuercerraíces",
"* |cff71d5ff|Hspell:421898|h[Plaga Ardiente]|h|r: la plaga ardiente extiende su hedionda llama – mitiga la plaga.",
"* |cff71d5ff|Hspell:422053|h[Espinas de sombra]|h|r: su lanza de espinas de sombra se lanza -> esquiva las espinas.",
"* |cff71d5ff|Hspell:421972|h[Controlled Burn]|h|r: el Controlled Burn utiliza su habilidad como una bomba, marcando al objetivo y luego eliminándolo con la explosión.",
"* |cff71d5ff|Hspell:424352|h[Dreadfire Barrage]|h|r: el ataque de Dreadfire Barrage - los tanks alternan entre él.",
"* |cff71d5ff|Hspell:422026|h[Grito de Tortura]|h|r: el grito de tortura - extiéndelo y cura.",
"* |cff71d5ff|Hspell:425816|h[Blazing Pollen]|h|r: the blazing pollen - interrupt it every time.",
};

pack["200926"] = { "Igira la Cruel",
"* |cff71d5ff|Hspell:414340|h[Drenched Blades]|h|r: Su ataque con cuchillas empapadas causa кровотечение al tanque - alternar tanques.",
"* |cff71d5ff|Hspell:414888|h[Blistering Spear]|h|r: her blistering spears skewer their marks - dodge the spears.",
"* |cff71d5ff|Hspell:414367|h[Cosecha de Tormento]|h|r: el Cosechador de Tormento busca a su presa – reduce el daño antes de que alcance su máximo.",
"* |cff71d5ff|Hspell:416048|h[Umbral Destrucción]|h|r: el daño de la Umbral Destrucción – concentra el daño y cura intensamente.",
"* |cff71d5ff|Hspell:419462|h[Desmembramiento de carne]|h|r: el desmembramiento de carne se beneficia de su portador; elimínelo cuando alcance su máximo.",
};

pack["208445"] = { "Larodar, Vigilante de las Llamas",
"* |cff71d5ff|Hspell:417653|h[Fuerza de la Naturaleza]|h|r: sus fuerzas de la naturaleza se acercan – elimina rápidamente a las fuerzas.",
"* |cff71d5ff|Hspell:418520|h[Blistering Splinters]|h|r: the blistering splinters spear out - dodge the splinters.",
"* |cff71d5ff|Hspell:422614|h[Scorching Roots]|h|r: his scorching roots root their bearers - burn the roots free.",
"* |cff71d5ff|Hspell:417667|h[Árbol Quemado]|h|r: los árboles quemados bloquean el camino – elimínalos.",
"* |cff71d5ff|Hspell:429032|h[Fuego Eterna]|h|r: el fuego eterna quema todo - prepárate para el fuego y cura intensamente.",
};

pack["206172"] = { "Nymue, Tejedora del Ciclo",
"* |cff71d5ff|Hspell:420846|h[Continuum]|h|r: el anillo de Continuum barre el suelo - muévete por el sendero que ya ha limpiado.",
"* |cff71d5ff|Hspell:420554|h[Matriz Verde]|h|r: la matriz verde cubre el suelo — nunca te pongas dentro de la red.",
"* |cff71d5ff|Hspell:430563|h[Ephemeral Flora]|h|r: the ephemeral flora shares its bloom - soak it together.",
"* |cff71d5ff|Hspell:429615|h[Tejido Inminente]|h|r: el tejido inminente se alinea - aléjate de las líneas.",
"* |cff71d5ff|Hspell:420907|h[Viridian Rain]|h|r: the viridian rain - avoid the rain.",
};

pack["200927"] = { "Arderon",
"* |cff71d5ff|Hspell:421656|h[Herida Quemada]|h|r: la herida quemada quema al tanque principal - alternar tanques.",
"* |cff71d5ff|Hspell:422577|h[Consecuencia Ardiente]|h|r: la consecuencia ardiente inflige daño por quemaduras; aléjate de la consecuencia.",
"* |cff71d5ff|Hspell:425885|h[Cazador del Infierno]|h|r: los cazadores del infierno persiguen a sus objetivos - los persiguen y los alejan.",
"* |cff71d5ff|Hspell:421343|h[Marca de la Condena]|h|r: la marca de la condena viaja con su portador – defiende la marca.",
"* |cff71d5ff|Hspell:421455|h[Sobrecalentado]|h|r: Sobrecalienta y aumenta su daño - cura intensamente a través del sobrecalentamiento.",
};

pack["209090"] = { "Tindral Sabioveloz, Vidente de la Llama",
"* |cff71d5ff|Hspell:422000|h[Searing Wrath]|h|r: his searing wrath - alternate tanks.",
"* |cff71d5ff|Hspell:423260|h[Blazing Mushroom]|h|r: his blazing mushrooms bloom - burst the mushrooms before they burst.",
"* |cff71d5ff|Hspell:420236|h[Falling Stars]|h|r: las estrellas caen y golpean en los puntos marcados - esquiva las estrellas.",
"* |cff71d5ff|Hspell:424581|h[Crecimiento Ardiente]|h|r: el crecimiento ardiente viaja con su portador – mantén al portador alejado del grupo.",
"* |cff71d5ff|Hspell:424495|h[Enredamiento Masivo]|h|r: el enredamiento masivo ata al grupo; libera rápidamente a los atados.",
};

pack["208478"] = { "Volcoross",
"* |cff71d5ff|Hspell:421207|h[Coiling Flames]|h|r: las llamas enroscadas envuelven a sus portadores; los envueltos se dispersan antes de que las enroscadas exploten.",
"* |cff71d5ff|Hspell:427201|h[Erupción de Enredo]|h|r: la erupción de enredo explota en sus portadores - los portadores eliminan la explosión.",
"* |cff71d5ff|Hspell:420933|h[Inundación de las Tierras Ardientes]|h|r: la inundación de las Tierras Ardientes comparte su explosión - ¡absorbanla juntos!",
"* |cff71d5ff|Hspell:421616|h[Garganta Volcánica]|h|r: su garganta volcánica arroja lava — evita el fuego que cae.",
"* |cff71d5ff|Hspell:421703|h[Ira del Serpiente]|h|r: la ira del serpiente alcanza su punto máximo – prepárate para la ira.",
};

-- --------------------------------- --
-- Aberrus, the Shadowed Crucible : Zona 2569 --
-- --------------------------------- --

pack["199659"] = { "Invasión de los zaqali",
"* |cff71d5ff|Hspell:401258|h[Heavy Cudgel]|h|r: the heavy cudgel batters its tank - alternate tanks.",
"* |cff71d5ff|Hspell:401108|h[Aceleración del Fénix]|h|r: la aceleración del fénix - sal de la línea de ataque.",
"* |cff71d5ff|Hspell:397383|h[Místico de la Magma]|h|r: los místicos de la magma se encienden – elimina a los místicos rápidamente.",
"* |cff71d5ff|Hspell:401381|h[Awakened Focus]|h|r: the awakened focus - run from the focus.",
"* |cff71d5ff|Hspell:407009|h[Vigorous Gale]|h|r: el vendaval empuja la sala - prepárate para el empuje.",
};

pack["201668"] = { "Eco de Neltharion",
"* |cff71d5ff|Hspell:402902|h[Twisted Earth]|h|r: the twisted earth walls up - never stand in the walls.",
"* |cff71d5ff|Hspell:407221|h[Rushing Darkness]|h|r: el Rushing Darkness persigue a su objetivo – el objetivo puede esquivar al Darkness.",
"* |cff71d5ff|Hspell:402115|h[Echoing Fissure]|h|r: the echoing fissure - run from the fissure.",
"* |cff71d5ff|Hspell:401998|h[Golpe Catastrófico]|h|r: su golpe catastrófico empuja al tanque hacia atrás - alternar tanques.",
"* |cff71d5ff|Hspell:410953|h[Corazón Volcánico]|h|r: los corazones volcánicos florecen bajo tus pies – evita los corazones.",
};

pack["201261"] = { "Kazzara la Infernoforjada",
"* |cff71d5ff|Hspell:407196|h[Abismos de Terror]|h|r: los abismos de terror se extienden por la sala - sal de los abismos.",
"* |cff71d5ff|Hspell:402253|h[Ray of Anguish]|h|r: her ray of anguish burns down its bearer's line - the marked cut the beam away.",
"* |cff71d5ff|Hspell:400430|h[Hellbeam]|h|r: her hellbeam sweeps the floor - get out of the beam.",
"* |cff71d5ff|Hspell:404743|h[Garras de Terror]|h|r: que las garras de Terror golpeen al tanque - alternar los tanques.",
"* |cff71d5ff|Hspell:403326|h[Vientos de Extinción]|h|r: los vientos de extinción empujan hacia atrás - prepárense para el empuje.",
};

pack["201579"] = { "Magmorax",
"* |cff71d5ff|Hspell:408839|h[Acumulación de calor]|h|r: su calor continúa acumulándose en todos - prepárense para el daño y aceleren el combate.",
"* |cff71d5ff|Hspell:402994|h[Molten Spittle]|h|r: his molten spittle shares its splatter - soak it together.",
"* |cff71d5ff|Hspell:403740|h[Rugido Inflamado]|h|r: el rugido inflamado - extiéndelo y cura.",
"* |cff71d5ff|Hspell:407879|h[Furor Ardiente]|h|r: su furia quema el suelo a su alrededor; el tanque lo mueve para mantenerlo fuera del alcance.",
"* |cff71d5ff|Hspell:409093|h[Blazing Breath]|h|r: his blazing breath washes his front - keep out of the breath.",
};

pack["201320"] = { "Rashok el Anciano",
"* |cff71d5ff|Hspell:401419|h[Absorber de energía]|h|r: Absorbe su carga del pilar - ataca rápido o se recupera.",
"* |cff71d5ff|Hspell:405316|h[Furia Antigua]|h|r: la furia antigua - aprovecha la furia cuando ataque; mantén su carga drenada.",
"* |cff71d5ff|Hspell:400777|h[Golpe Cargado]|h|r: el golpe cargado comparte su explosión, absorban juntos.",
"* |cff71d5ff|Hspell:406851|h[Llama de la Destrucción]|h|r: la llama de la destrucción comparte su explosión; ataquen juntos.",
"* |cff71d5ff|Hspell:405821|h[Golpe Ardiente]|h|r: su golpe ardiente causa mucho daño - alternar tanques.",
};

pack["201754"] = { "Escamandante Sarkareth",
"* |cff71d5ff|Hspell:401951|h[Oblivion]|h|r: Oblivion acumula daño en la zona - prepárense para el daño sostenido.",
"* |cff71d5ff|Hspell:401215|h[Emptiness Between Stars]|h|r: el vacío entre las estrellas teletransporta a su portador - el brace marcado, el vacío.",
"* |cff71d5ff|Hspell:407576|h[Foco Astral]|h|r: los focos astrales - se extienden desde los focos.",
"* |cff71d5ff|Hspell:401383|h[Oppressing Howl]|h|r: his oppressing howl presses down - brace the howl.",
"* |cff71d5ff|Hspell:401810|h[Ola Brillante]|h|r: la ola brillante - extiéndela y cura.",
};

bos = { "La Cámara de Amalgama",
"* |cff71d5ff|Hspell:401809|h[Sombra Corruptora]|h|r: la sombra corruptora afecta a su portador - el paso marcado sale de la sombra.",
"* |cff71d5ff|Hspell:405036|h[Explosión de Umbral]|h|r: la explosión de umbral explota en su objetivo: elimina el objetivo marcado.",
"* |cff71d5ff|Hspell:407640|h[Convergencia de las Sombras]|h|r: la convergencia de las sombras – mantente alejado de su trayectoria.",
"* |cff71d5ff|Hspell:404732|h[Meteorito Ardiente]|h|r: el meteorito ardiente comparte su explosión: absorban juntos.",
"* |cff71d5ff|Hspell:403459|h[Vacío Cohesivo]|h|r: el vacío cohesivo - extiéndelo y cura.",
};
pack["201774"] = bos; pack["201773"] = bos; pack["201934"] = bos;

bos = { "Los experimentos olvidados",
"* |cff71d5ff|Hspell:406311|h[Golpes Infundidos]|h|r: los golpes infundidos se acumulan en el tanque - alternar tanques.",
"* |cff71d5ff|Hspell:406358|h[Rending Charge]|h|r: los ataques de Rending Charge se dirigen a los objetivos - esquivar los ataques.",
"* |cff71d5ff|Hspell:404472|h[Golpe masivo]|h|r: el golpe masivo se extiende hacia afuera - sal de la zona del golpe.",
"* |cff71d5ff|Hspell:404713|h[Rugido ensordecedor]|h|r: el rugido ensordecedor empuja hacia atrás – prepárense para el rugido.",
"* |cff71d5ff|Hspell:407327|h[Esencia inestable]|h|r: la esencia inestable marca a su portador; mantén la esencia alejada del grupo.",
};
pack["200912"] = bos; pack["200913"] = bos; pack["200918"] = bos;

pack["202375"] = { "Administrador vigilante Zskarn",
"* |cff71d5ff|Hspell:405736|h[Trampas de fuego del dragón]|h|r: las trampas de fuego del dragón se activan - esquiva las trampas activadas.",
"* |cff71d5ff|Hspell:405812|h[Animate Golems]|h|r: his golems wake - kill the golems fast.",
"* |cff71d5ff|Hspell:405919|h[Activar Trampa]|h|r: activación de la trampa – interrumpirla antes de que se dispare.",
"* |cff71d5ff|Hspell:403978|h[Onda de Explosión]|h|r: la onda de explosión empuja hacia atrás – prepárense para el impacto.",
"* |cff71d5ff|Hspell:404010|h[Cenizas Inestables]|h|r: las cenizas inestables se dispersan - evitar las cenizas.",
};

-- --------------------------------- --
-- Dawn of the Infinite : Zona 2579 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["203678"] = { "Grommash Hellscream",
"* |cff71d5ff|Hspell:410235|h[Tormenta de Espadas]|h|r: las espadas giran en el combate cuerpo a cuerpo - sal de la zona de efecto.",
"* |cff71d5ff|Hspell:410254|h[Decapitular]|h|r: la decapitación daña al tanque - defensas en el golpe marcado.",
"* |cff71d5ff|Hspell:408227|h[Shockwave]|h|r: the shockwave rolls across the field - move off its path.",
"* |cff71d5ff|Hspell:418046|h[FOR THE HORDE!]|h|r: the cry rouses his army - clear the charged soldiers fast.",
"* |cff71d5ff|Hspell:407122|h[Lluvia de Fuego]|h|r: sus soldados lanzan fuego en parches - sal de cada parche.",
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["203679"] = { "Anduin Lothar",
"* |cff71d5ff|Hspell:410235|h[Tormenta de Espadas]|h|r: las espadas giran en el combate cuerpo a cuerpo - sal de la zona de efecto.",
"* |cff71d5ff|Hspell:418059|h[Golpes Fatales]|h|r: los golpes aplastan al tanque - defensas en el golpe marcado.",
"* |cff71d5ff|Hspell:418054|h[Shockwave]|h|r: the shockwave rolls across the field - move off its path.",
"* |cff71d5ff|Hspell:418047|h[FOR THE ALLIANCE!]|h|r: the cry rouses his army - clear the charged soldiers fast.",
"* |cff71d5ff|Hspell:417018|h[Blizzard]|h|r: sus soldados invocan tormentas heladas - sal de cada tormenta.",
};
-- --------------------------------- --

bos = { "Añublo de Galakrond",
"* |cff71d5ff|Hspell:407406|h[Corrosion]|h|r: the corrosion rides its bearer - the marked keep the blight off the group.",
"* |cff71d5ff|Hspell:407159|h[Reclamation]|h|r: el área de [Reclamation] - manténgase fuera del área de explosión.",
"* |cff71d5ff|Hspell:407978|h[Vientos Necróticos]|h|r: los vientos necroticos - extiéndelos y cura a los miembros del grupo.",
"* |cff71d5ff|Hspell:406886|h[Corrosive Infusion]|h|r: the corrosive infusion bubbles underfoot - avoid the infusion.",
"* |cff71d5ff|Hspell:408141|h[Aliento de la Plaga]|h|r: el aliento de la plaga lo afecta al frente - manténgase fuera del alcance del aliento.",
};
pack["198997"] = bos; pack["201792"] = bos; pack["201788"] = bos; pack["201790"] = bos;

pack["198995"] = { "Cronikar",
"* |cff71d5ff|Hspell:413142|h[Eon Shatter]|h|r: el Eon Shatter rasga el suelo - sal de la zona afectada.",
"* |cff71d5ff|Hspell:413013|h[Chrono Shear]|h|r: Su Chrono Shear inflige mucho daño al tanque, alternen.",
"* |cff71d5ff|Hspell:401421|h[Golpe de arena]|h|r: el golpe de arena se extiende, causando daño a los enemigos cercanos.",
};

pack["199000"] = { "Cronolord Deios",
"* |cff71d5ff|Hspell:416152|h[Summon Infinite Keeper]|h|r: his infinite keepers wake - burn the keepers fast.",
"* |cff71d5ff|Hspell:410904|h[Esfera de la Infinitud]|h|r: la esfera de la infinitud hace un movimiento aleatorio - nunca toques la esfera.",
"* |cff71d5ff|Hspell:411763|h[Explosión Infinita]|h|r: Interrumpe la Explosión Infinita cada vez que puedas.",
"* |cff71d5ff|Hspell:416139|h[Temporal Breath]|h|r: his temporal breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:412027|h[Quema Cronal]|h|r: la quema cronal – elimínala de los objetivos marcados.",
};

pack["198933"] = { "Iridikron el Escamapiedra",
"* |cff71d5ff|Hspell:409261|h[Extinción]|h|r: su Extinción es demasiado grande para esquivarla; busca refugio en el área que proporciona la arena.",
"* |cff71d5ff|Hspell:409456|h[Earthsurge]|h|r: su Earthsurge hace que caigan rocas - prepárate para el ataque.",
"* |cff71d5ff|Hspell:414535|h[Torrente de piedra]|h|r: el torrente de piedra comparte su explosión; absorban juntos.",
"* |cff71d5ff|Hspell:409635|h[Pulverizing Breath]|h|r: his pulverizing breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:414184|h[Destrucción Cataclísmica]|h|r: la destrucción cataclísmica es su habilidad más poderosa - prepárate para la destrucción y cura intensamente.",
};

pack["198996"] = { "Líneas temporales manifestadas",
"* |cff71d5ff|Hspell:405696|h[Chrono-faded]|h|r: el chrono-faded agarra a su portador - prepárate para el desvanecimiento.",
"* |cff71d5ff|Hspell:405431|h[Fragmentos del Tiempo]|h|r: los fragmentos del tiempo flotan libremente – manténgase alejado de los fragmentos.",
};

pack["198999"] = { "Mocri",
"* |cff71d5ff|Hspell:403891|h[Más problemas]|h|r: sus versiones pasadas se abalanzan - elimínalas rápidamente.",
"* |cff71d5ff|Hspell:401200|h[Fijación]|h|r: la fijación se centra en su objetivo - el objetivo marcado corre.",
"* |cff71d5ff|Hspell:404364|h[Aliento de dragón]|h|r: Su aliento de dragón la golpea por delante - mantenla fuera del alcance del aliento.",
"* |cff71d5ff|Hspell:406481|h[Trampas de Tiempo]|h|r: las trampas de tiempo se activan en el suelo - nunca pises las trampas.",
"* |cff71d5ff|Hspell:401667|h[Time Stasis]|h|r: la Time Stasis congela a quien la usa - evita la Time Stasis.",
};

pack["198998"] = { "Tyr, el Guardián Infinito",
"* |cff71d5ff|Hspell:400681|h[Chispa de Tyr]|h|r: las chispas de Tyr se dispersan en los puntos marcados - espárcate desde las chispas.",
"* |cff71d5ff|Hspell:400642|h[Absorber de Juramento]|h|r: el escudo de Absorción de Juramento lo protege - destruye el escudo.",
"* |cff71d5ff|Hspell:401248|h[Golpe Titánico]|h|r: su golpe titánico hace que el tanque salte - cambiar de tanque.",
"* |cff71d5ff|Hspell:400641|h[Golpe Divisivo]|h|r: el golpe divisivo comparte su explosión; absorban juntos.",
"* |cff71d5ff|Hspell:401482|h[Aniquilación Infinita]|h|r: la aniquilación infinita - aléjate del área de efecto.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["209574"] = { "Aurostor, El Hibernador",
"* |cff71d5ff|Hspell:421059|h[Cranky Tantrum]|h|r: su ataque de ira se intensifica cuando se enfada - mantén la calma durante su ataque.",
"* |cff71d5ff|Hspell:420895|h[Groggy Bash]|h|r: his groggy bash swings wide - keep off the swing.",
"* |cff71d5ff|Hspell:420925|h[Explosión pulverizante]|h|r: la explosión pulverizante - aléjate de la explosión.",
"* |cff71d5ff|Hspell:421260|h[Rugido tembloroso]|h|r: su rugido tembloroso sacude el suelo – mantente saltando sobre la onda de choque.",
};

pack["193535"] = { "Basrikron, La Ala de Arcilla",
"* |cff71d5ff|Hspell:385506|h[Awaken the Crag]|h|r: the crag wakes to fight - clear the crag fast.",
"* |cff71d5ff|Hspell:385270|h[Fracturing Tremor]|h|r: el temblor fracturante - prepárate para el temblor.",
"* |cff71d5ff|Hspell:385137|h[Aliento de grava]|h|r: el aliento de grava lo golpea en la parte frontal - mantenlo fuera del alcance del aliento.",
"* |cff71d5ff|Hspell:386259|h[Sundering Crash]|h|r: el Sundering Crash – aléjate del impacto.",
"* |cff71d5ff|Hspell:385652|h[Earth Bolt]|h|r: his earth bolt - interrupt it every time.",
};

pack["193532"] = { "Bazual, La Llama Terrible",
"* |cff71d5ff|Hspell:389725|h[Erupción de Magma]|h|r: la erupción de magma - evita la erupción.",
"* |cff71d5ff|Hspell:389431|h[Repelente de Fuego]|h|r: el repelente de fuego empuja hacia atrás – prepárate para el fuego.",
"* |cff71d5ff|Hspell:389514|h[Lava Breath]|h|r: his lava breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:390635|h[Tormenta de Destrucción]|h|r: la tormenta de destrucción - prepárate para la tormenta.",
};

pack["193533"] = { "Liskanoth",
"* |cff71d5ff|Hspell:389954|h[Binding Ice]|h|r: the binding ice roots its bearer - the bound break free.",
"* |cff71d5ff|Hspell:388925|h[Chilling Breath]|h|r: the chilling breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:389289|h[Tormenta Glacial]|h|r: la tormenta glacial crea ráfagas de viento — nunca te quedes en medio de la tormenta.",
"* |cff71d5ff|Hspell:389762|h[Deep Freeze]|h|r: the deep freeze - don't stand in the freeze.",
};

pack["193534"] = { "Strunraan, La Miseria del Cielo",
"* |cff71d5ff|Hspell:385980|h[Vórtice de Trueno]|h|r: el vórtice de trueno gira – manténgase fuera del vórtice.",
"* |cff71d5ff|Hspell:387199|h[Tempest]|h|r: su ataque Tempest afecta al portador - el portador debe protegerse del ataque.",
"* |cff71d5ff|Hspell:389951|h[Arcing Expulsion]|h|r: el ataque de expulsión en arco - manténgase alejado de su frente.",
};

bos = { "Los ancianos Zaqali",
"* |cff71d5ff|Hspell:403779|h[Sombras Ardientes]|h|r: las Sombras Ardientes acumulan daño por quemaduras; mitiga el daño y mantente en movimiento.",
"* |cff71d5ff|Hspell:403855|h[Blazing Pitch]|h|r: the blazing pitch pools the floor - avoid the pitch.",
"* |cff71d5ff|Hspell:404171|h[Enveloping Darkness]|h|r: la oscuridad envolvente se acerca – corre de la oscuridad.",
"* |cff71d5ff|Hspell:404517|h[Eclipse de Quema]|h|r: el Eclipse de Quema – observa el suelo bajo su sombra.",
};
pack["199855"] = bos; pack["199853"] = bos;

P.es = es;
