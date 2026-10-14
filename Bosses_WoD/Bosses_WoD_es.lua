--[[
	Bosses_WoD_es.lua
		Datos en español of the WoD
		pack: the two raids (Highmaul, Blackrock Foundry), Hellfire Citadel, the
		dungeons and the Draenor world bosses. Sources: DBM-Raids/Party-WoD and DBM-Draenor
		(_doc). Skeleton by web-editor/_cache/_df-gen.mjs; the tactics were
		filled by hand (EN) or through the editor batch translator.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reused for shared entries (several NPC IDs, same table)

-- --------------------------------- --
-- Bloodmaul Slag Mines : Zona 1175 --
-- --------------------------------- --

pack["74787"] = { "Vigilante de esclavos Crushto",
"* |cff71d5ff|Hspell:150751|h[Salto aplastante]|h|r: su salto aplastante salta a su objetivo: el objetivo marcado.",
"* |cff71d5ff|Hspell:150759|h[Grito feroz]|h|r: interrumpe cada vez que lo use.",
"* |cff71d5ff|Hspell:150801|h[Elevar mineros]|h|r: Eleva a sus mineros - elimina a los mineros rápidamente.",
"* |cff71d5ff|Hspell:153679|h[Earth Crush]|h|r: su Earth Crush rompe el suelo - sal de la zona afectada.",
"* |cff71d5ff|Hspell:150753|h[Golpe Salvaje]|h|r: su golpe salvaje lanza al oponente hacia atrás - prepárate para el golpe.",
};

pack["74790"] = { "Gug'rokk",
"* |cff71d5ff|Hspell:150678|h[Núcleo de Fuego]|h|r: su núcleo de fuego arde en su interior – destruye inmediatamente.",
"* |cff71d5ff|Hspell:150677|h[Molten Blast]|h|r: his molten blast - stun or stop it at every cast.",
"* |cff71d5ff|Hspell:150755|h[Unstable Slag]|h|r: the unstable slags kindle in - burn them before they burst.",
"* |cff71d5ff|Hspell:150784|h[Erupción de Magma]|h|r: sus burbujas de erupción de magma hacen que el suelo se hinche - nunca te pongas en el área de la erupción.",
};

bos = { "Magmolatus",
"* |cff71d5ff|Hspell:149975|h[Danza de Fuego]|h|r: sus ataques de danza de fuego se transfieren al portador - elimínalos rápidamente.",
"* |cff71d5ff|Hspell:150038|h[Impacto Fundido]|h|r: su impacto fundido causa mucho daño - alternar los tanques.",
"* |cff71d5ff|Hspell:150011|h[Torrente de Magma]|h|r: el torrente de magma cae - esquiva el torrente.",
"* |cff71d5ff|Hspell:149941|h[Golpe Bruto]|h|r: su golpe bruto causa un gran daño; aléjate del golpe.",
"* |cff71d5ff|Hspell:149997|h[Firestorm]|h|r: his firestorm - stun or stop it at every cast.",
};
pack["74366"] = bos; pack["74475"] = bos;

pack["75786"] = { "Roltall",
"* |cff71d5ff|Hspell:152940|h[Onda de calor]|h|r: su onda de calor quema a cualquiera que esté cerca - manténgase alejado.",
"* |cff71d5ff|Hspell:152939|h[Burning Slag]|h|r: the burning slag spreads underfoot - avoid the slag.",
"* |cff71d5ff|Hspell:153247|h[Piedra Ardiente]|h|r: la piedra ardiente impacta en su posición - corre lejos de la piedra.",
};

-- --------------------------------- --
-- Shadowmoon Burial Grounds : Zona 1176 --
-- --------------------------------- --

pack["75452"] = { "Quijahueso",
"* |cff71d5ff|Hspell:154175|h[Golpe]|h|r: su golpe hace que el área se sacude - esquivar el golpe.",
"* |cff71d5ff|Hspell:165578|h[Aliento de cadáver]|h|r: su aliento de cadáver exhala hacia adelante - manténgase alejado del aliento.",
"* |cff71d5ff|Hspell:177694|h[Submerge]|h|r: Sumérgete bajo el limo - prepárate para reemerger.",
"* |cff71d5ff|Hspell:153692|h[Necrotic Pitch]|h|r: los charcos de Necrotic Pitch cubren el suelo - evita el charco.",
};

pack["76407"] = { "Ner'zhul",
"* |cff71d5ff|Hspell:154350|h[Omen of Death]|h|r: the omen of death - get out of the omen's line.",
"* |cff71d5ff|Hspell:154671|h[Ritual de Huesos]|h|r: el ritual de huesos es su principal ataque - prepárate para el ritual.",
"* |cff71d5ff|Hspell:154442|h[Malevolence]|h|r: su malevolencia golpea el suelo - esquiva el golpe.",
};

pack["75829"] = { "Nhallish",
"* |cff71d5ff|Hspell:152801|h[Void Vortex]|h|r: the void vortex yanks everyone in - run from the pull.",
"* |cff71d5ff|Hspell:152979|h[Desgarrar Alma]|h|r: el desgarrar alma roba el espíritu del jugador; mata al espíritu para devolverlo.",
"* |cff71d5ff|Hspell:153067|h[Devastación del Vacío]|h|r: la devastación del vacío - extiéndela y cura.",
};

pack["75509"] = { "Sadana Furia Sangrienta",
"* |cff71d5ff|Hspell:153240|h[Dagger Fall]|h|r: lanza tu lanza hacia los enemigos marcados - esquiva las dagas.",
"* |cff71d5ff|Hspell:153153|h[Dark Communion]|h|r: su Dark Communion se alimenta de sus adoradores, así que elimina a los adoradores.",
"* |cff71d5ff|Hspell:153094|h[Susurros]|h|r: los susurros atacan a todos - dispersarse y curar.",
"* |cff71d5ff|Hspell:164974|h[Eclipse Oscuro]|h|r: el eclipse oscuro se mueve con su portador – prepárate para el eclipse.",
};

-- --------------------------------- --
-- Auchindoun : Zona 1182 --
-- --------------------------------- --

pack["75927"] = { "Azzakel",
"* |cff71d5ff|Hspell:153396|h[Cortina de Fuego]|h|r: la cortina de fuego se extiende - sal de la cortina.",
"* |cff71d5ff|Hspell:153234|h[Fel Lash]|h|r: el Fel Lash golpea - mantén la distancia del golpe.",
"* |cff71d5ff|Hspell:157173|h[Paso de Fel]|h|r: su paso de fel hace temblar el suelo - prepárate para el golpe.",
"* |cff71d5ff|Hspell:153764|h[Garras de Argus]|h|r: las garras de Argus infligen daño continuo; elimina las garras rápidamente.",
};

pack["76177"] = { "Vinculadora de almas Nyami",
"* |cff71d5ff|Hspell:154477|h[Palabra Sombría: Dolor]|h|r: Su dolor es transportado por sus portadores, límpialos rápidamente.",
"* |cff71d5ff|Hspell:155327|h[Soul Vessel]|h|r: her soul vessel - brace the pull around the vessel.",
"* |cff71d5ff|Hspell:153991|h[Espíritus Desgarrados]|h|r: llama a sus espíritus desgarrados - quema a los espíritus rápidamente.",
};

pack["75839"] = { "Vigilante Kaathar",
"* |cff71d5ff|Hspell:153006|h[Luz Consagrada]|h|r: la luz consagrada cae - cúbrase detrás del escudo sagrado.",
"* |cff71d5ff|Hspell:153002|h[Escudo Sagrado]|h|r: su escudo sagrado protege al grupo de la luz — manténgalo en alto en el momento adecuado.",
"* |cff71d5ff|Hspell:161457|h[Tierra Sagrada]|h|r: la tierra sagrada quema bajo los pies - evita el suelo.",
};

pack["77734"] = { "Teron'gor",
"* |cff71d5ff|Hspell:156854|h[Drenar Vida]|h|r: su habilidad de drenar vida lo cura, interrumpirla cada vez.",
"* |cff71d5ff|Hspell:157168|h[Fijarse]|h|r: su fijación se centra en su objetivo: el objetivo marcado, el baluarte.",
"* |cff71d5ff|Hspell:156965|h[Doom]|h|r: su Doom - prepárate para el Doom y cura intensamente.",
"* |cff71d5ff|Hspell:156857|h[Lluvia de Fuego]|h|r: evita el fuego que cae.",
"* |cff71d5ff|Hspell:156842|h[Corrupción]|h|r: su corrupción afecta a su portador; elimínala rápidamente.",
};

-- --------------------------------- --
-- Iron Docks : Zona 1195 --
-- --------------------------------- --

bos = { "Déspotas Malavía",
"* |cff71d5ff|Hspell:163689|h[Esfera Sanguínea]|h|r: la esfera sanguínea envuelve a uno de ellos – deja de atacar a la esfera.",
"* |cff71d5ff|Hspell:163665|h[Flaming Slash]|h|r: his flaming slash cuts a burning line - dodge the slash.",
"* |cff71d5ff|Hspell:165152|h[Golpe de Lava]|h|r: el golpe de lava golpea el suelo - sal de la zona del golpe.",
"* |cff71d5ff|Hspell:163379|h[Gran Explosión]|h|r: Gran Explosión - aléjate del área de efecto.",
};
pack["80805"] = bos; pack["80816"] = bos; pack["80808"] = bos;

bos = { "Sacrificador Nok'gar",
"* |cff71d5ff|Hspell:164426|h[Provocación imprudente]|h|r: su provocación imprudente lo enfurece; detén el ataque mientras dure.",
"* |cff71d5ff|Hspell:164835|h[Llamada de sangrado]|h|r: su llamada de sangrado - prepárate para la llamada y cura.",
"* |cff71d5ff|Hspell:164635|h[Flechas Ardientes]|h|r: las flechas ardientes caen - evita las flechas.",
};
pack["81297"] = bos; pack["81305"] = bos;

pack["79852"] = { "Oshir",
"* |cff71d5ff|Hspell:162415|h[Time to Feed]|h|r: his time to feed grips its victim - heal the victim hard to outlast it.",
"* |cff71d5ff|Hspell:161239|h[Rending Slashes]|h|r: los ataques de desgarro cubren su frente - esquiva los ataques.",
"* |cff71d5ff|Hspell:163054|h[Rugido]|h|r: su rugido causa una onda expansiva - dispersen y utilicen la curación.",
"* |cff71d5ff|Hspell:178156|h[Salpicadura de Ácido]|h|r: las piscinas de ácido están en el suelo — evita que te salpique.",
};

pack["83612"] = { "Skulloc",
"* |cff71d5ff|Hspell:168398|h[Rapid Fire]|h|r: su ataque rápido golpea a su objetivo - el objetivo marcado debe esquivarlo.",
"* |cff71d5ff|Hspell:168929|h[Cañonada]|h|r: la cañonada golpea la cubierta – aprovechen la cobertura que ofrece.",
"* |cff71d5ff|Hspell:168227|h[Golpe de Gron]|h|r: su golpe de Gron devuelve el proyectil - prepárate para el golpe.",
};

-- --------------------------------- --
-- Blackrock Foundry : Zona 1205 --
-- --------------------------------- --

pack["77325"] = { "Puño Negro",
"* |cff71d5ff|Hspell:156479|h[Demolición Masiva]|h|r: las demoliciones masivas caen - aléjate de las demoliciones.",
"* |cff71d5ff|Hspell:156096|h[Marked for Death]|h|r: su marca de la muerte lo acompaña a su portador - el marcado debe resistir la oleada.",
"* |cff71d5ff|Hspell:156667|h[Siegemaker]|h|r: sus Siegemaker se despiertan – quema a los Siegemaker rápidamente.",
"* |cff71d5ff|Hspell:157000|h[Attach Slag Bombs]|h|r: his slag bombs land at marks - the marked haul away.",
"* |cff71d5ff|Hspell:155992|h[Shattering Smash]|h|r: his shattering smash lands brutal - alternate tanks.",
};

bos = { "El Horno de Fundición",
"* |cff71d5ff|Hspell:155192|h[Bomba]|h|r: las bombas de explosión impactan en las zonas marcadas – recoge las que caen rápidamente.",
"* |cff71d5ff|Hspell:176121|h[Fuego Volátil]|h|r: el fuego volátil salta hacia quien está cerca - extiéndete para que deje de saltar.",
"* |cff71d5ff|Hspell:155179|h[Ingeniero]|h|r: llama a sus ingenieros - elimina a los ingenieros rápidamente.",
"* |cff71d5ff|Hspell:155196|h[Fijarse]|h|r: Fijarse se centra en su objetivo: el objetivo marcado corre.",
};
pack["76809"] = bos; pack["76806"] = bos;

pack["76865"] = { "Señor de las bestias Darmac",
"* |cff71d5ff|Hspell:154960|h[Atrapar]|h|r: sus púas de agarre dañan el suelo en los puntos de ataque - esquivar las púas.",
"* |cff71d5ff|Hspell:154975|h[Call the Pack]|h|r: he calls the pack - kill the beasts fast.",
"* |cff71d5ff|Hspell:155236|h[Romper Armadura]|h|r: su habilidad de romper armadura debilita al tanque principal - alternar con otros tanques.",
"* |cff71d5ff|Hspell:155247|h[Stampede]|h|r: El stampede atraviesa la zona - aléjate de la estampida.",
"* |cff71d5ff|Hspell:154989|h[Aliento del Infierno]|h|r: su aliento del infierno quema la línea del frente - manténgase fuera del alcance del aliento.",
};

pack["76877"] = { "Gruul",
"* |cff71d5ff|Hspell:155078|h[Golpe Devastador]|h|r: su golpe devastador inflige daño al tanque - alternar tanques.",
"* |cff71d5ff|Hspell:155080|h[Corte del Infierno]|h|r: su corte del infierno comparte el daño por quemaduras. Alinearse en la primera fila y atacar juntos.",
"* |cff71d5ff|Hspell:155326|h[Golpe de Piedra]|h|r: su golpe de piedra golpea al grupo - la piedra petrificada se libera.",
"* |cff71d5ff|Hspell:155730|h[Rugido desmoronándose]|h|r: utiliza su rugido desmoronándose para extender y curarlo.",
"* |cff71d5ff|Hspell:173192|h[Desmoronamiento]|h|r: el desmoronamiento provoca que el suelo se derrumbe - esquiva las caídas.",
};

bos = { "Hans'gar y Franzok",
"* |cff71d5ff|Hspell:153470|h[Skullcracker]|h|r: su ataque de \"Skullcracker\" golpea al tanque principal - alternar los tanques.",
"* |cff71d5ff|Hspell:160838|h[Disrupting Roar]|h|r: his disrupting roar - stop casting while it roars.",
"* |cff71d5ff|Hspell:156938|h[Agarre de Supresión]|h|r: su agarre de supresión afecta duramente al tanque - alternar tanques.",
"* |cff71d5ff|Hspell:161570|h[Searing Plates]|h|r: the searing plates blaze the floor - avoid the plates.",
"* |cff71d5ff|Hspell:174825|h[Stampers]|h|r: los Stampers golpean el suelo - nunca te pongas debajo de un Stamber.",
};
pack["76974"] = bos; pack["76973"] = bos;

bos = { "Las Doncellas de Hierro",
"* |cff71d5ff|Hspell:157854|h[Bombardment Alpha]|h|r: el bombardeo golpea la cubierta - prepárate para el bombardeo.",
"* |cff71d5ff|Hspell:156631|h[Rapid Fire]|h|r: her rapid fire hunts its mark - the marked kite it clear.",
"* |cff71d5ff|Hspell:156214|h[Sombras Convulsivas]|h|r: las sombras convulsivas marcan a su portador: el marcado queda fuera del grupo.",
"* |cff71d5ff|Hspell:158707|h[Protective Earth]|h|r: her protective earth shields her - burst the shield down.",
"* |cff71d5ff|Hspell:158315|h[Caza Oscura]|h|r: la caza oscura carga a su objetivo - fuera del camino de la caza.",
};
pack["77557"] = bos; pack["77231"] = bos; pack["77477"] = bos;

pack["76814"] = { "Dominallamas Ka'graz",
"* |cff71d5ff|Hspell:155318|h[Corte de Lava]|h|r: Su corte de lava se extiende - aléjate del corte.",
"* |cff71d5ff|Hspell:155277|h[Blazing Radiance]|h|r: the blazing radiance marks its bearer - the bearer keeps their distance.",
"* |cff71d5ff|Hspell:156724|h[Invoca Armas Encantadas]|h|r: tus armas encantadas toman las armas - quema las armas rápidamente.",
"* |cff71d5ff|Hspell:154932|h[Torrente de Fuego]|h|r: usa Torrente de Fuego para que su objetivo ataque a .",
"* |cff71d5ff|Hspell:155074|h[Aliento de Quema]|h|r: su aliento de quema quema la parte frontal - mantenla fuera del alcance del aliento.",
};

pack["77692"] = { "Kromog",
"* |cff71d5ff|Hspell:161923|h[Crushing Earth]|h|r: el ataque de \"Crushing Earth\" golpea con ambas manos - esquivar los golpes.",
"* |cff71d5ff|Hspell:158130|h[Geyser de piedra]|h|r: los proyectiles del geyser apuntan a los objetivos - esquiva los proyectiles.",
"* |cff71d5ff|Hspell:157060|h[Grasping Earth]|h|r: las manos de Grasping Earth se extienden - mantén la distancia antes de que se cierren.",
"* |cff71d5ff|Hspell:157054|h[Golpes Trovazónicos]|h|r: sus golpes trovazónicos explotan la sala -> prepárense para recibir los golpes.",
"* |cff71d5ff|Hspell:156852|h[Stone Breath]|h|r: his stone breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:156766|h[Armadura Distorsionada]|h|r: su armadura distorsionada daña al tanque principal - alternar tanques.",
};

pack["77182"] = { "Tragamenas",
"* |cff71d5ff|Hspell:156240|h[Acid Torrent]|h|r: his acid torrent grinds the tank - alternate tanks.",
"* |cff71d5ff|Hspell:156179|h[Retched Blackrock]|h|r: his retched vomit streams out - run from the stream.",
"* |cff71d5ff|Hspell:155898|h[Rolling Fury]|h|r: su ataque de furia lo hace rodar por la sala - evita estar en la trayectoria de su ataque.",
"* |cff71d5ff|Hspell:156877|h[Blackrock Barrage]|h|r: sus ataques con martillo golpean de cerca; dispersarse y curar.",
};

pack["76906"] = { "Operador Thogar",
"* |cff71d5ff|Hspell:176312|h[Entrenamiento]|h|r: los trenes avanzan por sus carriles - nunca te pongas en el camino de un tren.",
"* |cff71d5ff|Hspell:155864|h[Granada de Proto]|h|r: las granadas de proto explotan en su objetivo - el objetivo afectado causa la explosión.",
"* |cff71d5ff|Hspell:155921|h[Enkindle]|h|r: las stacks de Enkindle en el tanque - alternar tanques.",
"* |cff71d5ff|Hspell:159481|h[Bomba de asedio retrasada]|h|r: las bombas de asedio retrasadas impactan en los puntos marcados - el área de efecto resultante de la explosión.",
};

-- --------------------------------- --
-- Grimrail Depot : Zona 1208 --
-- --------------------------------- --

pack["79545"] = { "Nitrogg Torre del Trueno",
"* |cff71d5ff|Hspell:163550|h[Mortar]|h|r: sus mortiros lanzan proyectiles al suelo en los enemigos - esquivar los proyectiles.",
"* |cff71d5ff|Hspell:160681|h[Fuego de supresión]|h|r: el fuego de supresión cubre un área amplia – aprovecha la cobertura que ofrece el terreno.",
"* |cff71d5ff|Hspell:160943|h[Explosión de fragmentos]|h|r: su explosión de fragmentos afecta al frente - sal de la explosión.",
};

bos = { "Chispahete y Borka",
"* |cff71d5ff|Hspell:162407|h[X21-01A Missile]|h|r: los misiles se lanzan en ráfaga - salen desde las cascadas.",
"* |cff71d5ff|Hspell:161090|h[Carrera Salvaje]|h|r: la carrera salvaje quema una línea - sal de la línea de la carrera salvaje.",
"* |cff71d5ff|Hspell:162500|h[VX18-B]|h|r: su bomba VX rebota - esquiva la bomba.",
};
pack["77803"] = bos; pack["77816"] = bos;

pack["80005"] = { "Señora del cielo Tovra",
"* |cff71d5ff|Hspell:162066|h[Freezing Snare]|h|r: the freezing snares spear down at marks - dodge the snares.",
"* |cff71d5ff|Hspell:163447|h[Marca de Hielo]|h|r: las marcas de hielo siguen a sus portadores - las criaturas marcadas permanecen en movimiento.",
"* |cff71d5ff|Hspell:162058|h[Spinning Spear]|h|r: su lanza giratoria golpea el suelo - sal de la trayectoria de la lanza.",
};

-- --------------------------------- --
-- Skyreach : Zona 1209 --
-- --------------------------------- --

pack["76141"] = { "Araknath",
"* |cff71d5ff|Hspell:154115|h[Golpe de Fuego]|h|r: sus golpes de fuego explotan al frente – manténganse alejados del frente.",
"* |cff71d5ff|Hspell:154162|h[Energizar]|h|r: bebe de su conducto - destruye el conducto para cortar el suministro.",
"* |cff71d5ff|Hspell:154135|h[Supernova]|h|r: la supernova - extiéndela y cura.",
};

pack["75964"] = { "Ranjit",
"* |cff71d5ff|Hspell:153757|h[Fan of Blades]|h|r: his blade fans cut out at marks - dodge the fans.",
"* |cff71d5ff|Hspell:156793|h[Vórtex de Chakrams]|h|r: el vórtice de chakrams gira sin control – aléjate de la rotación.",
"* |cff71d5ff|Hspell:153315|h[Wind Fall]|h|r: el viento golpea el suelo, esquiva los golpes.",
"* |cff71d5ff|Hspell:154043|h[Explosión]|h|r: las explosiones causan daño; evita las explosiones.",
};

pack["76143"] = { "Rukhran",
"* |cff71d5ff|Hspell:1253510|h[Sunbreak]|h|r: Los Sunbreaks se rompen y se extienden - dispersen y curan.",
"* |cff71d5ff|Hspell:1253527|h[Agujas abrasadoras]|h|r: las agujas abrasadoras - rompa la línea de visión hasta que pasen.",
"* |cff71d5ff|Hspell:153810|h[Explosión solar]|h|r: la explosión solar - prepárate para la explosión y cura.",
"* |cff71d5ff|Hspell:153794|h[Romper Armadura]|h|r: su ataque de armadura daña al tanque principal - alternar con otros tanques.",
"* |cff71d5ff|Hspell:159382|h[Quills]|h|r: las púas dañan a los objetivos marcados - rompe la línea de visión y cura.",
};

pack["76266"] = { "Suma sabia Viryx",
"* |cff71d5ff|Hspell:1253538|h[Scorching Ray]|h|r: her scorching rays burn their bearers - the burned keep apart.",
"* |cff71d5ff|Hspell:1253998|h[Cast Down]|h|r: Su habilidad Cast Down busca a su objetivo: el objetivo marcado protege la lanza.",
"* |cff71d5ff|Hspell:154396|h[Solar Blast]|h|r: her solar blast - interrupt it every time.",
"* |cff71d5ff|Hspell:154055|h[Escudo]|h|r: su escudo se repara - interrumpe cada lanzamiento.",
};

-- --------------------------------- --
-- Highmaul : Zona 1228 --
-- --------------------------------- --

pack["78491"] = { "Frondaespora",
"* |cff71d5ff|Hspell:159219|h[Necrotic Breath]|h|r: his necrotic breath washes his front - keep out of the breath.",
"* |cff71d5ff|Hspell:163241|h[Rot]|h|r: Los stacks de rot del tanque - alternar entre los tanques.",
"* |cff71d5ff|Hspell:160022|h[Living Mushroom]|h|r: his living mushrooms mend whoever stands on them - keep the good fungi alive.",
"* |cff71d5ff|Hspell:163590|h[Musgo Asfixiante]|h|r: el musgo asfixiante lo alimenta, elimina el musgo de su camino.",
"* |cff71d5ff|Hspell:159996|h[Esponjas infecciosas]|h|r: las esponjas infecciosas – preparen las esponjas y curen intensamente.",
};

pack["78714"] = { "Kargath Garrafilada",
"* |cff71d5ff|Hspell:159947|h[Lanzamiento en cadena]|h|r: su lanzamiento en cadena lanza a la víctima a las gradas - el ataque con la espada, los tigres y los proyectiles.",
"* |cff71d5ff|Hspell:159178|h[Open Wounds]|h|r: his open wounds gash the tank - alternate tanks.",
"* |cff71d5ff|Hspell:158986|h[Berserker Rush]|h|r: su ataque de furia se lanza al frente - aléjate del ataque.",
"* |cff71d5ff|Hspell:159113|h[Golpe]|h|r: utiliza Golpe para atacar al tanque — prepárate para el Golpe.",
"* |cff71d5ff|Hspell:159413|h[Mauling Brew]|h|r: the mauling brews soak the floor - avoid the brew.",
};

pack["79015"] = { "Ko'ragh",
"* |cff71d5ff|Hspell:161411|h[Expulsa Magia: Hielo]|h|r: su expulsión de magia de hielo congela a su objetivo - el objetivo afectado se protege contra el frío profundo.",
"* |cff71d5ff|Hspell:162186|h[Expulsa Magia: Arcana]|h|r: las esferas arcanas vuelan libremente: sus marcas atrapan las esferas.",
"* |cff71d5ff|Hspell:156803|h[Barrera Nula]|h|r: utiliza su barrera nula para absorber todo. Destruye la barrera y aprovecha su momento de debilidad.",
"* |cff71d5ff|Hspell:163101|h[Trample]|h|r: su ataque de trample atraviesa -> fuera del camino del ataque.",
};

bos = { "Imperador Mar'gok",
"* |cff71d5ff|Hspell:158605|h[Mark of Chaos]|h|r: the mark of chaos rides its bearer - the bearer keeps clear of the group.",
"* |cff71d5ff|Hspell:156225|h[Branded]|h|r: la marca de quemaduras afecta al portador - la armadura de quemaduras, un giro de fase.",
"* |cff71d5ff|Hspell:158553|h[Romper Armadura]|h|r: su habilidad de romper armadura daña al tanque principal - alternar con otros tanques.",
"* |cff71d5ff|Hspell:165243|h[Visión de la Locura]|h|r: las visiones de la locura causan daño; aléjate de las visiones.",
"* |cff71d5ff|Hspell:178607|h[Estrella Oscura]|h|r: las estrellas oscuras se desplazan - no toques las estrellas.",
};
pack["77428"] = bos; pack["78623"] = bos;

bos = { "Tectus",
"* |cff71d5ff|Hspell:162346|h[Torrente Cristalino]|h|r: el torrente cristalino persigue a sus objetivos – esquivar los fragmentos.",
"* |cff71d5ff|Hspell:162475|h[Tectónica]|h|r: la tectónica - prepárate para la explosión y cura.",
"* |cff71d5ff|Hspell:162518|h[Pilares de tierra]|h|r: los pilares de tierra se dirigen hacia los objetivos – esquivar los pilares.",
"* |cff71d5ff|Hspell:162968|h[Flechas de Tierra]|h|r: las flechas de tierra se extienden hacia afuera – salta fuera del alcance de las flechas.",
"* |cff71d5ff|Hspell:162894|h[Gift of Earth]|h|r: his gift of earth shields him - burst the shield down.",
};
pack["78948"] = bos; pack["80557"] = bos; pack["80551"] = bos;

pack["77404"] = { "El Carnicero",
"* |cff71d5ff|Hspell:156157|h[Cleave]|h|r: sus ataques con área de efecto cubren su frente - los personajes cuerpo a cuerpo deben mantenerse detrás.",
"* |cff71d5ff|Hspell:156151|h[Tenderizer]|h|r: sus tenderizers se acumulan en el tanque - alternar entre diferentes tanques.",
"* |cff71d5ff|Hspell:156152|h[Gushing Wounds]|h|r: los Gushing Wounds saltan hacia quien está cerca - extiéndanse para que dejen de saltar.",
"* |cff71d5ff|Hspell:156160|h[Ataque en área]|h|r: el ataque en área - agruparse y compartir el ataque.",
"* |cff71d5ff|Hspell:156598|h[Frenzy]|h|r: su frenesí alcanza su punto máximo cuando tiene poca vida - elimínalo mientras está frenético.",
};

bos = { "Gemelos ogrones",
"* |cff71d5ff|Hspell:157943|h[Whirl Wind]|h|r: el ataque de Whirl Wind gira rápidamente - aléjate del ataque.",
"* |cff71d5ff|Hspell:158385|h[Pulverizar]|h|r: el ataque de Pulverizar causa un gran daño en área, extendiéndose desde la explosión.",
"* |cff71d5ff|Hspell:158057|h[Rugido debilitante]|h|r: utiliza su rugido debilitante - prepárate para el rugido y cura.",
"* |cff71d5ff|Hspell:158241|h[Blaze]|h|r: el fuego se extiende por una línea - esquiva la línea.",
"* |cff71d5ff|Hspell:158134|h[Shield Charge]|h|r: su ataque de carga golpea directamente - despeja el camino de la carga.",
"* |cff71d5ff|Hspell:163372|h[Volatilidad Arcana]|h|r: la volatilidad arcana se mueve con su portador – el portador permanece separado.",
};
pack["78238"] = bos; pack["78237"] = bos;

-- --------------------------------- --
-- The Everbloom : Zona 1279 --
-- --------------------------------- --

bos = { "Ancianos protectores",
"* |cff71d5ff|Hspell:168082|h[Revitalize]|h|r: her revitalizing waters mend him - interrupt them at every cast.",
"* |cff71d5ff|Hspell:427510|h[Carga nociva]|h|r: su carga nociva marca su objetivo - despeja el camino de la carga.",
"* |cff71d5ff|Hspell:427459|h[Toxic Bloom]|h|r: las toxinas florecen - evita las toxinas.",
"* |cff71d5ff|Hspell:167977|h[Bramble]|h|r: las espinas atrapan el suelo - evita las espinas.",
};
pack["83894"] = bos; pack["83892"] = bos; pack["83893"] = bos;

pack["82682"] = { "Archimaga Sol",
"* |cff71d5ff|Hspell:427899|h[Tormenta de Cinderbolt]|h|r: su Tormenta de Cinderbolt golpea la sala, esquiva los proyectiles.",
"* |cff71d5ff|Hspell:428082|h[Fusión Glacial]|h|r: Usa tus esferas de fusión glacial, pero evita las esferas fusionadas.",
"* |cff71d5ff|Hspell:428139|h[Compresión Espacial]|h|r: Su habilidad de compresión espacial atrae a todos - corre para evitar el pull.",
"* |cff71d5ff|Hspell:427863|h[Frostbolt]|h|r: her frostbolts - interrupt them at every cast.",
};

pack["81522"] = { "Cortezamustia",
"* |cff71d5ff|Hspell:164294|h[Crecimiento Descontrolado]|h|r: su crecimiento descontrolado se aprovecha de su portador: destruye el crecimiento antes de que se desarrolle.",
"* |cff71d5ff|Hspell:164275|h[Brittle Bark]|h|r: su corteza se vuelve quebradiza después del crecimiento - los ataques cuerpo a cuerpo lo queman a través de ella.",
"* |cff71d5ff|Hspell:164357|h[Agarre Seco]|h|r: su agarre seco causa daño en primer lugar - manténgase fuera del alcance.",
};

pack["84550"] = { "Xeri'tac",
"* |cff71d5ff|Hspell:169233|h[Inhala]|h|r: su inhalación arrastra a todos — prepárense para el tirón.",
"* |cff71d5ff|Hspell:169382|h[Ráfaga gaseosa]|h|r: sus ráfagas gaseosas crean una nube; aléjate de la nube.",
"* |cff71d5ff|Hspell:169223|h[Gas Tóxico]|h|r: el gas tóxico permanece en el suelo - evita el gas.",
};

pack["83846"] = { "Yalnu",
"* |cff71d5ff|Hspell:428746|h[Fuego]|h|r: sus fuegos se extienden por sus líneas - esquiva las líneas.",
"* |cff71d5ff|Hspell:428823|h[Erupción Verde]|h|r: su erupción verde crea ataques de [Lashers] - elimina rápidamente a los [Lashers].",
"* |cff71d5ff|Hspell:169179|h[Golpe Colosal]|h|r: su golpe colosal golpea el suelo - sal de la zona del golpe.",
"* |cff71d5ff|Hspell:169251|h[Entanglement]|h|r: el efecto de enredamiento afecta a un jugador - libera al enredado.",
"* |cff71d5ff|Hspell:173563|h[Veneno de lasher]|h|r: Interrumpe el veneno de lasher en cada lanzamiento.",
};

-- --------------------------------- --
-- Upper Blackrock Spire : Zona 1358 --
-- --------------------------------- --

pack["76413"] = { "Doblegamenas Gor'ashan",
"* |cff71d5ff|Hspell:166168|h[Power Conduit]|h|r: his power conduits hum around him - smash the conduits to break his cast.",
"* |cff71d5ff|Hspell:154448|h[Shrapnel Nova]|h|r: su Nova de fragmentos causa una explosión; corre de la explosión.",
};

pack["76021"] = { "Kyrak",
"* |cff71d5ff|Hspell:161203|h[Rejuvenating Serum]|h|r: her rejuvenating serum mends him - interrupt the serum at every cast.",
"* |cff71d5ff|Hspell:161199|h[Apego debilitante]|h|r: interrumpe su apego debilitante en cada lanzamiento.",
"* |cff71d5ff|Hspell:155037|h[Erupción]|h|r: las erupciones golpean bajo los pies - nunca te pongas en el alcance del golpe.",
"* |cff71d5ff|Hspell:161288|h[Vileblood Serum]|h|r: the vileblood serum pools the floor - avoid the pools.",
};

pack["76585"] = { "Alaíra el Indomable",
"* |cff71d5ff|Hspell:155620|h[Burning Rage]|h|r: his burning rage flares at low life - burn him down through it.",
"* |cff71d5ff|Hspell:155051|h[Sal de Magma]|h|r: su sal de magma impacta en el objetivo marcado; esquivar el ataque.",
"* |cff71d5ff|Hspell:155057|h[Pozo de Magma]|h|r: los pozos de magma se extienden por el suelo - evitar los pozos.",
"* |cff71d5ff|Hspell:154996|h[Engulfing Fire]|h|r: his engulfing fire washes his front - keep out of the fire.",
};

bos = { "Comandante Tharbek",
"* |cff71d5ff|Hspell:161989|h[Iron Reaver]|h|r: su arma de hierro atraviesa y golpea desde la trayectoria del ataque.",
"* |cff71d5ff|Hspell:162090|h[Imbued Iron Axe]|h|r: his imbued iron axe flies out at marks - dodge the axe.",
"* |cff71d5ff|Hspell:161833|h[Salpicadura nociva]|h|r: su salpicadura nociva se acumula en el suelo - evita la salpicadura.",
};
pack["79912"] = bos; pack["80098"] = bos;

pack["77120"] = { "Señora de la guerra Zaela",
"* |cff71d5ff|Hspell:155673|h[Destructive Smite]|h|r: her destructive smite lands heavy - alternate tanks.",
"* |cff71d5ff|Hspell:155705|h[Rebounding Blade]|h|r: su hoja rebotante rebota - esquiva la hoja.",
"* |cff71d5ff|Hspell:155721|h[Ciclón de Hierro Negro]|h|r: su ciclón de hierro negro gira - sal de la rotación.",
};

-- --------------------------------- --
-- Hellfire Citadel : Zona 1448 --
-- --------------------------------- --

pack["91331"] = { "Archimonde",
"* |cff71d5ff|Hspell:182879|h[Doomfire Fixate]|h|r: el doomfire persigue a su objetivo - esquiva hasta que se quede sin maná.",
"* |cff71d5ff|Hspell:183254|h[Encanto de las Llamas]|h|r: el encanto empuja a toda la sala - prepárate para el empuje.",
"* |cff71d5ff|Hspell:183817|h[Explosión de Fuego]|h|r: las explosiones de fuego golpean a sus objetivos marcados; los objetivos marcados se defienden.",
"* |cff71d5ff|Hspell:184964|h[Shackled Torment]|h|r: Los Shackled Torment agarran a sus portadores - los Shackled se liberan uno tras otro.",
"* |cff71d5ff|Hspell:184265|h[Wrought Chaos]|h|r: los fuegos de Wrought Chaos entre sus enlaces - no cruces las líneas de caos.",
"* |cff71d5ff|Hspell:186574|h[Dread Fixate]|h|r: El Dread persigue a su objetivo - el objetivo debe esquivar al Dread.",
};

pack["90199"] = { "Sanguino",
"* |cff71d5ff|Hspell:179864|h[Sombra de la Muerte]|h|r: la sombra de la muerte consume a su objetivo por completo - el fuego consumido provoca un daño interno.",
"* |cff71d5ff|Hspell:179977|h[Toque de la Muerte]|h|r: el toque de la muerte salta hacia quien está cerca - el objetivo debe mantenerse a distancia.",
"* |cff71d5ff|Hspell:179995|h[Doom Well]|h|r: the doom wells pool the floor - avoid the wells.",
"* |cff71d5ff|Hspell:179909|h[Shared Fate]|h|r: Shared Fate une a su par - mantén el nudo tenso.",
"* |cff71d5ff|Hspell:180148|h[Apetito por la vida]|h|r: su apetito por la vida crece a medida que los espíritus viven - quema los espíritus rápidamente.",
};

pack["90019"] = { "Asalto a Fuego Infernal",
"* |cff71d5ff|Hspell:180079|h[Felfire Munitions]|h|r: acumulación de felfire munitions - explótalas antes de que se encienda la mecha.",
"* |cff71d5ff|Hspell:160240|h[Felfire Crusher]|h|r: sus ataques de Felfire Crusher se acercan - elimina rápidamente a los Crushers.",
"* |cff71d5ff|Hspell:181155|h[Hechicero Fel]|h|r: los hechiceros Fel mantienen su hechizo - interrumpan a los hechiceros.",
"* |cff71d5ff|Hspell:184369|h[Howling Axe]|h|r: the howling axes whirl in - dodge the axes.",
"* |cff71d5ff|Hspell:180945|h[Nova]|h|r: las explosiones de Nova son devastadoras, prepárate para ellas.",
};

bos = { "Alto Consejo del Fuego Infernal",
"* |cff71d5ff|Hspell:184449|h[Mark of the Necromancer]|h|r: the marks leap to whoever stands close - spread so they stop leaping.",
"* |cff71d5ff|Hspell:184476|h[Reap]|h|r: the reap shears its mark's ground - get out of the reap.",
"* |cff71d5ff|Hspell:184360|h[Fel Rage]|h|r: his fel rage burns him up - brace the rage.",
"* |cff71d5ff|Hspell:184847|h[Acidic Wound]|h|r: his acidic wounds gash the tank - alternate tanks.",
"* |cff71d5ff|Hspell:184681|h[Darkness]|h|r: mantente alejado de la oscuridad.",
};
pack["92142"] = bos; pack["92144"] = bos; pack["92146"] = bos;

pack["90284"] = { "Atracador de la Horda de Hierro",
"* |cff71d5ff|Hspell:182280|h[Artillery]|h|r: los proyectiles de artillería impactan en los objetivos marcados - los objetivos marcados huyen de los proyectiles.",
"* |cff71d5ff|Hspell:182001|h[Unstable Orb]|h|r: the unstable orbs drift out - dodge the orbs.",
"* |cff71d5ff|Hspell:182020|h[Golpes]|h|r: sus golpes poderosos golpean la sala - prepárate para los golpes.",
"* |cff71d5ff|Hspell:179889|h[Blitz]|h|r: su ataque de Blitz atraviesa el campo - fuera del camino de Blitz.",
"* |cff71d5ff|Hspell:182074|h[Immolación]|h|r: la Immolación quema el suelo, evita el daño.",
};

pack["90316"] = { "Señor de las Sombras Iskar",
"* |cff71d5ff|Hspell:179202|h[Eye of Anzu]|h|r: the eye of anzu unblinds its holder - pass the eye to whoever needs sight.",
"* |cff71d5ff|Hspell:181957|h[Vientos Fantasmales]|h|r: los vientos fantasmales ciegan al portador - el portador se apoya en el ojo.",
"* |cff71d5ff|Hspell:182178|h[Fel Chakram]|h|r: lanza sus fel chakrams hacia los objetivos - esquiva los chakrams.",
"* |cff71d5ff|Hspell:182582|h[Laser]|h|r: su rayo afecta al objetivo, mantén al objetivo fuera del rayo.",
"* |cff71d5ff|Hspell:179219|h[Bomba Felígen]|h|r: la bomba felígen explota en su objetivo, y los objetivos marcados también reciben daño.",
};

pack["90378"] = { "Kilrogg Mortojo",
"* |cff71d5ff|Hspell:180372|h[Heartseeker]|h|r: Heartseeker utiliza a sus objetivos como escudos, haciendo que los marcados corran por separado.",
"* |cff71d5ff|Hspell:180313|h[Posesión Demoniaca]|h|r: la muerte provoca posesiones demoníacas - elimina rápidamente a los poseídos.",
"* |cff71d5ff|Hspell:180199|h[Desgarro]|h|r: sus garras que desgarra dañan la armadura - alternar tanques.",
"* |cff71d5ff|Hspell:181488|h[Visión de la Muerte]|h|r: las visiones de la muerte llaman a los ciegos – consume las visiones rápidamente.",
"* |cff71d5ff|Hspell:180224|h[Death Throes]|h|r: su ataque final - extiéndelo y cura.",
};

pack["90435"] = { "Kormrok",
"* |cff71d5ff|Hspell:180244|h[Golpe]|h|r: sus golpes destruyen la sala por completo; distribúyalos para que impacten por separado.",
"* |cff71d5ff|Hspell:181306|h[Explosión]|h|r: los ataques explosivos explotan en sus objetivos - los objetivos huyen del ataque.",
"* |cff71d5ff|Hspell:181292|h[Sal de Fuego]|h|r: el Sal de Fuego se lanza en oleadas – esquiva las oleadas.",
"* |cff71d5ff|Hspell:181305|h[Swat]|h|r: su ataque de Swat lanza su ataque de vuelo al tanque - alternar tanques.",
"* |cff71d5ff|Hspell:186882|h[Enrage]|h|r: his enrage peaks at low life - burn him down through it.",
};

pack["91349"] = { "Mannoroth",
"* |cff71d5ff|Hspell:181275|h[La Maldición de la Legión]|h|r: la maldición se traslada a sus portadores - los portadores deben mantenerse separados.",
"* |cff71d5ff|Hspell:181099|h[Mark of Doom]|h|r: the mark of doom chases its bearer - the marked haul away.",
"* |cff71d5ff|Hspell:181735|h[Cazador de las Sombras]|h|r: sus cazadores de sombras atacan a sus objetivos - esquiva el ataque.",
"* |cff71d5ff|Hspell:181180|h[Infernos]|h|r: los infernos caen en los puntos de impacto - esquivar las caídas.",
"* |cff71d5ff|Hspell:186362|h[Ira de Gul'dan]|h|r: la ira de Gul'dan alcanza su punto máximo – prepárate para la ira y cura intensamente.",
};

pack["92330"] = { "Socrethar el Eterno",
"* |cff71d5ff|Hspell:183017|h[Fel Prison]|h|r: his fel prisons bag their bearers - free the bagged at once.",
"* |cff71d5ff|Hspell:180221|h[Esfera Felín Volátil]|h|r: las esferas felín volátiles persiguen a sus objetivos — las esferas marcadas las desvían.",
"* |cff71d5ff|Hspell:182051|h[Fel Charge]|h|r: su ataque de Fel Charge - aléjate de la línea de ataque.",
"* |cff71d5ff|Hspell:182769|h[Obsesión espectral]|h|r: las obsesiones espectrales persiguen a sus portadores – los portadores deben esquivar.",
};

pack["90269"] = { "Tirana Velhari",
"* |cff71d5ff|Hspell:180166|h[Toque de daño]|h|r: su Toque de daño la cura, así que deshace el efecto rápidamente.",
"* |cff71d5ff|Hspell:180260|h[Golpe de Aniquilación]|h|r: Sus golpes de aniquilación desgarran al tanque - alternar tanques.",
"* |cff71d5ff|Hspell:180000|h[Seal of Decay]|h|r: her seal of decay rides its bearer - the bearer keeps away.",
"* |cff71d5ff|Hspell:180600|h[Baluarte del Tirano]|h|r: Su baluarte absorbe todo - quema el baluarte.",
};

pack["93068"] = { "Xhul'horac",
"* |cff71d5ff|Hspell:186134|h[Fel tocado]|h|r: el fel tocado marca a su portador: el marcado mantiene sus llamas a raya.",
"* |cff71d5ff|Hspell:186490|h[Cadenas del Fel]|h|r: las cadenas del fel atacan - esquiva las cadenas.",
"* |cff71d5ff|Hspell:112866|h[Imps]|h|r: sus imps se abalanzan sobre nosotros - elimina a los imps rápidamente.",
"* |cff71d5ff|Hspell:187204|h[Caos Abrumador]|h|r: el caos abrumador alcanza su punto máximo – prepárate para el caos y cura intensamente.",
"* |cff71d5ff|Hspell:186073|h[Fel Singed]|h|r: el fel singed permanece en el suelo, evita el área afectada.",
};

pack["89890"] = { "Señor vil Zakuun",
"* |cff71d5ff|Hspell:179407|h[Alma Desincarnada]|h|r: sus almas descorporalizadas marcan a sus portadores - los marcados permanecen fuera del grupo.",
"* |cff71d5ff|Hspell:179711|h[Befouled]|h|r: el Befouled contamina el suelo de sus objetivos - evita que te contamine.",
"* |cff71d5ff|Hspell:181508|h[Seed of Destruction]|h|r: the seeds of destruction blow up underfoot - dodge the seeds.",
"* |cff71d5ff|Hspell:179406|h[Soul Cleave]|h|r: su Soul Cleave divide el daño por toda la sala, dispersa para dividir el ataque.",
"* |cff71d5ff|Hspell:179681|h[Enrage]|h|r: his enrage peaks at low life - burn him down through it.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["90802"] = { "Annihilon",
"* |cff71d5ff|Hspell:180939|h[Void Bomb]|h|r: his void bombs blow at their marks - the marked flee the blast.",
"* |cff71d5ff|Hspell:180932|h[Whirling Void]|h|r: sus ataques de vacío giratorio giran — manténgase fuera de los vórtices.",
"* |cff71d5ff|Hspell:180950|h[Twist of Mind]|h|r: su Twist of Mind hiackea a jugador - el grupo elimina el hiack.",
};

pack["90841"] = { "Drogan",
"* |cff71d5ff|Hspell:180882|h[Whirling Axe]|h|r: sus hachas giratorias rebotan, causando daño en área - esquivar los hachos.",
"* |cff71d5ff|Hspell:180880|h[Agarre en cadena]|h|r: su agarre en cadena ata a sus víctimas; rompa las cadenas rápidamente.",
};

pack["81252"] = { "Drov el Destructor",
"* |cff71d5ff|Hspell:175791|h[Golpe Colosal]|h|r: su golpe colosal golpea el suelo - sal del golpe.",
"* |cff71d5ff|Hspell:175827|h[Llamada a la Tierra]|h|r: utiliza su llamada a la tierra - prepárate para el hechizo y cura.",
};

pack["90943"] = { "Gaur",
"* |cff71d5ff|Hspell:180879|h[Goren]|h|r: sus Goren atacan - elimina los Goren rápidamente.",
"* |cff71d5ff|Hspell:180868|h[Golpe de Tierra]|h|r: su golpe de tierra lanza al objetivo. Prepárate para recibir el golpe.",
"* |cff71d5ff|Hspell:180830|h[Runic Spike]|h|r: the runic spikes spear up - dodge the spikes.",
};

pack["90995"] = { "Goggnathog",
"* |cff71d5ff|Hspell:180908|h[Energía Desatada]|h|r: su energía desatada causa una explosión; aléjate del impacto.",
"* |cff71d5ff|Hspell:180815|h[Polimorfía Salvaje]|h|r: la polimorfía salvaje transforma a su portador; deshazla lo antes posible.",
"* |cff71d5ff|Hspell:180819|h[Arcane Orb]|h|r: the arcane orbs drift out - dodge the orbs.",
"* |cff71d5ff|Hspell:180816|h[Arcane Surge]|h|r: Interrumpe su Arcane Surge en cada lanzamiento.",
};

pack["94015"] = { "Supremo Señor Kazzak",
"* |cff71d5ff|Hspell:187668|h[Mark of Kazzak]|h|r: his mark leaps to whoever stands close - spread so it stops leaping.",
"* |cff71d5ff|Hspell:187466|h[Doom]|h|r: su doom - prepárate para el doom y cura intensamente.",
};

pack["91012"] = { "Lady Fleshsear",
"* |cff71d5ff|Hspell:180774|h[Lluvia de Fuego]|h|r: usa tu Lluvia de Fuego para extenderla y mantenerla activa.",
"* |cff71d5ff|Hspell:180776|h[Llamadas abrumadoras]|h|r: sus llamas abrumadoras extinguen el fuego -> corre de las llamas.",
"* |cff71d5ff|Hspell:180779|h[Llamada de la llama]|h|r: usa tu llamada de la llama - prepárate para el ataque.",
};

pack["83746"] = { "Rukhmar",
"* |cff71d5ff|Hspell:167615|h[Armadura perforante]|h|r: Utiliza la habilidad de \"Armadura perforante\" para dañar al tanque principal - rota los tanques.",
"* |cff71d5ff|Hspell:167647|h[Plumas sueltas]|h|r: sus plumas sueltas causan daño en área y curan a los enemigos.",
"* |cff71d5ff|Hspell:167679|h[Solar Breath]|h|r: her solar breath washes her front - keep out of the breath.",
"* |cff71d5ff|Hspell:167630|h[Explosión]|h|r: El ataque explosivo causa una gran explosión; aléjate del impacto.",
};

pack["81535"] = { "Tarlna Gorosi",
"* |cff71d5ff|Hspell:176004|h[Enredaderas Salvajes]|h|r: sus enredaderas salvajes golpean -> Sal de las enredaderas.",
"* |cff71d5ff|Hspell:175973|h[Golpe Colosal]|h|r: su golpe colosal golpea el suelo - sal de la zona del golpe.",
"* |cff71d5ff|Hspell:175979|h[Genesis]|h|r: su fase inicial inunda las raíces - elimina rápidamente las raíces que emergen.",
"* |cff71d5ff|Hspell:176013|h[Despertar Mandragora Salvaje]|h|r: sus mandragoras se despiertan - elimínalas rápidamente.",
"* |cff71d5ff|Hspell:176037|h[Salpicadura nociva]|h|r: su salpicadura nociva se acumula en el suelo - evita la salpicadura.",
};

pack["90946"] = { "Teluur",
"* |cff71d5ff|Hspell:180849|h[Enjambre de Podlings]|h|r: su enjambre de podlings se agrupan - elimina rápidamente a los podlings.",
"* |cff71d5ff|Hspell:180836|h[Entanglement]|h|r: los hechizos de enredamiento fijan el suelo – nunca te pongas dentro de las raíces.",
"* |cff71d5ff|Hspell:180825|h[Esponjas]|h|r: las esponjas se dispersan - evitar las esponjas.",
};

P.es = es;
