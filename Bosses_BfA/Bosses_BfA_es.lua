--[[
 Bosses_BfA_es.lua
 Datos en español del pack Battle for Azeroth. Esqueleto generado con
 scripts/generar-pack-bfa.mjs; TODAS las tácticas REESCRITAS A MANO
 2026-10 (tácticas reales, nada telegráfico). El registro lo hace
 Bosses_BfA.lua, que se carga después en el .toc.
 Los nombres de hechizo se re-localizan por id en cada cliente.
 aviso de DBM); los tooltips de los hechizos localizan por sí solos.
 Nombres: corpus del journal (nombres-jefe) + respaldo del mapa.
 In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local es = {};
local pack = es;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Battle of Dazar'alor : Zona 2070 --
-- --------------------------------- --

bos = { "Ra'wani Kanae y Frida Fuelleférreo",
	"* |cff71d5ff|Hspell:283573|h[Sacred Blade]|h|r: golpe sagrado brutal al tanque — alterna y usa defensivas.",
	"* |cff71d5ff|Hspell:283662|h[Call to Arms]|h|r: llaman refuerzos: el tanque los aparta del grupo y matadlos en prioridad.",
	"* |cff71d5ff|Hspell:283598|h[Wave of Light]|h|r: ondas de luz que cruzan la sala: esquivalas al pasar.",
	"* |cff71d5ff|Hspell:283933|h[Judgment: Righteousness]|h|r: juicio sagrado en el suelo marcado: salid del círculo.",
};
pack["144683"] = bos; pack["144680"] = bos;

bos = { "Cónclave de los Elegidos",
	"* |cff71d5ff|Hspell:282444|h[Lacerating Claws]|h|r: garras desgarrantes al tanque: alterna y defensivas.",
	"* |cff71d5ff|Hspell:285945|h[Hastening Winds]|h|r: vientos acelerantes que buffan a los casters enemigos: purgadlos.",
	"* |cff71d5ff|Hspell:282098|h[Gift of Wind]|h|r: SIEMPRE cortable — cura a los cuatro del cónclave.",
	"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: en la forma espiritual quedan intocables: bajarlos casi por igual y rematarlos en bloque.",
};
pack["144747"] = bos; pack["144767"] = bos; pack["144963"] = bos; pack["144941"] = bos;

bos = { "Grong",
	"* |cff71d5ff|Hspell:285671|h[Crushed]|h|r: agarra al tanque y lo aprieta con daño creciente: sanad a tope al atrapado.",
	"* |cff71d5ff|Hspell:285875|h[Rending Bite]|h|r: mordisco sangrante al tanque: alterna tras cada mordisco.",
	"* |cff71d5ff|Hspell:289292|h[Throw]|h|r: el objetivo del lanzamiento se aparta del grupo al momento.",
	"* |cff71d5ff|Hspell:289307|h[Throw Target]|h|r: el marcado corre lejos del grupo; los esbirros que canaliza Grong suben su daño — prioridad a cortarlos.",
};
pack["144638"] = bos; pack["144637"] = bos;

bos = { "Ma'ra Colmillotétrico y Anathos Fuego Llamado",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: llamas crecientes en el marcado: alejaos del grupo hasta que expiran.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: trampas de magma por el suelo: no las piséis.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: los espíritus de Xuen atacan en oleada: matadlos en prioridad o se acumulan.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: cuando proyecte el escudo, rompedlo o el duelo se alarga.",
	"* El dúo pelea junto: alternad objetivos con cuidado y limpiad las babas de fuego entre oleadas.",
};
pack["144691"] = bos; pack["144692"] = bos;

pack["145261"] = { "Opulencia",
	"* |cff71d5ff|Hspell:287037|h[Coin Sweep]|h|r: barrido de monedas al tanque: alterna cada barrido.",
	"* |cff71d5ff|Hspell:284798|h[Grossly Incandescent]|h|r: haz incandescente en el marcado: dispersaos y cruzad la línea apenas toque.",
	"* |cff71d5ff|Hspell:283507|h[Volatile Charge]|h|r: la carga volátil marca a dos: dispersaos para que el estallido no toque a nadie.",
	"* |cff71d5ff|Hspell:289383|h[Chaotic Displacement]|h|r: los desplazamientos cambian posiciones al vuelo: mantened espacio entre vosotros.",
	"* Fase 1 en la cámara del tesoro: matad la Mano de In'Zashi y sus tesoros animados; el oro maldito del marcado se pasa de cerca — muévete lejos o lo heredas.",
};

pack["145616"] = { "Rey Rastakhan",
	"* |cff71d5ff|Hspell:284831|h[Scorching Detonation]|h|r: detonación abrasadora en el marcado: dispersaos para que el estallido quede solo.",
	"* |cff71d5ff|Hspell:288415|h[Caress of Death]|h|r: la caricia de muerte apila daño en el grupo: sanadla a medida — la fase 3 es una carrera.",
	"* |cff71d5ff|Hspell:286742|h[Necrotic Smash]|h|r: azote necrótico grande al tanque: alterna con defensivas.",
	"* Fases de los Loa: llega un loa a su lado en la fase 2 (cada loa trae un kit distinto) — matad al loa en prioridad antes de volver al rey.",
};

pack["144796"] = { "Manitas mayor Mekkatorque",
	"* |cff71d5ff|Hspell:286646|h[Giga-Volt Charge]|h|r: carga gigavoltio al tanque: alterna y no la llevéis al grupo al expirar.",
	"* |cff71d5ff|Hspell:284168|h[Shrunk]|h|r: el rayo encogedor marca el suelo: no crucéis el haz o quedáis encogidos.",
	"* |cff71d5ff|Hspell:289699|h[Electroshock Amp]|h|r: los electroshocks saltan por la sala: mantened espacio a la vez que esquiváis.",
	"* |cff71d5ff|Hspell:287114|h[Mis Tele]|h|r: los teletransportes cambian su posición al vuelo: recolocaos rápido.",
	"* Fases: primero el traje con las ovejas explosivas que hay que kitear (corren a explotar); al caer el traje pelea a pie; al final vuela en hoverboard — manteneos en movimiento.",
};

bos = { "Bloqueo de la tormenta",
	"* |cff71d5ff|Hspell:285000|h[Kelp Wrapped]|h|r: el alga aprisiona al marcado: liberadlo al momento — la envoltura lo ahoga.",
	"* |cff71d5ff|Hspell:284393|h[Translocate]|h|r: los esbirros se translocan de lado: el tanque los re-engancha al momento.",
	"* |cff71d5ff|Hspell:288205|h[Crackling Lightning]|h|r: relámpagos que barran la sala en zonas: esquivad cada barrido.",
	"* |cff71d5ff|Hspell:287995|h[Elec Shroud]|h|r: el manto eléctrico del barco: no crucéis su área al moverse.",
	"* Duelo de barcos: fase 1 matad a la tripulación que salta a bordo; en fase 2 los cañones y las medusas deciden la pelea — prioridad de esbirros.",
};
pack["146251"] = bos; pack["146253"] = bos; pack["146256"] = bos;

pack["146409"] = { "Lady Jaina Valiente",
	"* |cff71d5ff|Hspell:287993|h[Chilling Stack]|h|r: el frío de su aura apila daño en TODOS: el DPS de la fase manda — no lo dejéis crecer.",
	"* |cff71d5ff|Hspell:287565|h[Avalanche]|h|r: avalancha enorme al tanque: alterna al borde y sanad el estallido.",
	"* |cff71d5ff|Hspell:285177|h[Freezing Blast]|h|r: el estallido congelante marca una zona: salid de ella al lanzar el grito.",
	"* |cff71d5ff|Hspell:285253|h[Ice Shard]|h|r: esquirlas de hielo caen en la barcaza: esquivad los impactos.",
	"* Fases: barcaza con bombardeos primero; luego la isla de hielo con el aura Helada, avalanchas y los muros de hielo que hay que romper; la pelea es una carrera contra el apilado del frío.",
};

bos = { "Manceroy Puño Llama y Mestrah",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: llamas crecientes en el marcado: alejaos del grupo hasta que expiran.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: trampas de magma por el suelo: no las piséis.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: los espíritus de Xuen atacan en oleada: matadlos en prioridad o se acumulan.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: cuando proyecte el escudo, rompedlo o el duelo se alarga.",
	"* El dúo pelea junto: alternad objetivos con cuidado y limpiad las babas de fuego entre oleadas.",
};
pack["144693"] = bos; pack["144690"] = bos;


-- --------------------------------- --
-- Crucible of Storms : Zona 2096 --
-- --------------------------------- --

bos = { "La Cábala Infatigable",
	"* |cff71d5ff|Hspell:282384|h[Shear Mind]|h|r: corte mental brutal al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:282566|h[Power Stack]|h|r: cada esbirro vivo canaliza poder al ritual y APILA el desastre: matadlos en prioridad absoluta.",
	"* |cff71d5ff|Hspell:282741|h[Umbral Shell]|h|r: el caparazón umbroso los vuelve intocables mientras avanza el ritual: matad a lo umbroso para romperlo.",
	"* |cff71d5ff|Hspell:284772|h[Custody of the Deep]|h|r: la custodia marca al tanque: el marcado se aparta del grupo hasta expirar.",
	"* Dos sacerdotes a la vez: alternad objetivos, cortad SIEMPRE lo que se pueda y no dejéis crecer el poder del ritual.",
};
pack["144755"] = bos; pack["144754"] = bos;

pack["145371"] = { "Uu'nat, Presagista del Vacío",
	"* |cff71d5ff|Hspell:284851|h[Touch of the End]|h|r: toque del fin al tanque, sangría brutal: alterna con defensivas.",
	"* |cff71d5ff|Hspell:286310|h[Void Shield]|h|r: durante el escudo salen las reliquias — el jefe no recibe daño: matad las reliquias rápido.",
	"* |cff71d5ff|Hspell:284684|h[Void Relic]|h|r: la reliquia del vacío canaliza y SIEMPRE matar YA.",
	"* |cff71d5ff|Hspell:284768|h[Ocean Relic]|h|r: la reliquia del océano alimenta al jefe si sobrevive: prioridad también.",
};


-- --------------------------------- --
-- The Eternal Palace : Zona 2164 --
-- --------------------------------- --

pack["150653"] = { "Behemoth de Aguasnegras",
	"* |cff71d5ff|Hspell:298424|h[Feeding Frenzy]|h|r: la voracidad apila en el tanque: alterna y sanad a tope al marcado.",
	"* |cff71d5ff|Hspell:292205|h[Bioluminescent Cloud]|h|r: la nube bioluminiscente marca el suelo: salid de ella al caer.",
	"* |cff71d5ff|Hspell:292167|h[Toxic Spine]|h|r: púas tóxicas en el marcado: alejaos del grupo hasta que expiran.",
	"* |cff71d5ff|Hspell:301494|h[Piercing Barb]|h|r: la púa perfora al marcado con daño fuerte: sanación inmediata al tocado.",
	"* La pelea se hace en la oscuridad: manteneos cerca de lo iluminado y lejos de las fauces; el frenesí de alimentación llega con esbirros de la fauna del fondo.",
};

pack["150859"] = { "Za'qul, Presagista de Ny'alotha",
	"* |cff71d5ff|Hspell:292971|h[Hysteria]|h|r: la histeria apila pánico en el grupo: sanadla a medida — no la dejéis crecer.",
	"* |cff71d5ff|Hspell:300133|h[Snapped]|h|r: el marcado cruje: al romper se vuelve CONTRA el grupo — controladlo y no lo matéis en plena melé.",
	"* |cff71d5ff|Hspell:292996|h[Maddening Eruption]|h|r: la erupción enloquecedora marca zonas: dispersaos cuando caen.",
	"* |cff71d5ff|Hspell:292981|h[Disciple of N'Zoth]|h|r: los discípulos de N'Zoth canalizan la locura: matadlos YA.",
	"* Fases: la pesadilla va tragando la sala; en la fase oscura matad los espíritus de la pesadilla antes de que alimenten a Za'qul.",
};

pack["151881"] = { "Comandante abisal Sivara",
	"* |cff71d5ff|Hspell:300701|h[Rimefrost]|h|r: escarcha en el marcado: CRUZAD al otro lado del jefe para limpiarla — el baile de Sivara manda.",
	"* |cff71d5ff|Hspell:300705|h[Septic Taint]|h|r: tinta séptica en el marcado: cruzad de vuelta al lado contrario para limpiarla.",
	"* |cff71d5ff|Hspell:294726|h[Chimeric Marks]|h|r: las marcas quiméricas caen por parejas: cada tocado cruza cuando le toca, sin cruzarse entre vosotros.",
	"* |cff71d5ff|Hspell:295348|h[Overflowing Chill]|h|r: el frío desbordante golpea en zona: dispersaos alrededor del jefe.",
	"* En la fase final los charcos de escarcha y tinta invaden el suelo: el baile del cruce decide la pelea.",
};

pack["152910"] = { "Reina Azshara",
	"* |cff71d5ff|Hspell:298569|h[Drained Soul]|h|r: alma drenada en el marcado: sanadla con cuidado hasta que pase.",
	"* |cff71d5ff|Hspell:297937|h[Painful Memories]|h|r: los recuerdos dolorosos marcan zonas: dispersaos y no compartáis el daño.",
	"* |cff71d5ff|Hspell:298014|h[Cold Blast]|h|r: el soplido frío barre un cono: no quedéis delante.",
	"* |cff71d5ff|Hspell:302999|h[Arcane Vulnerability]|h|r: la vulnerabilidad arcano marca al tanque: alterna tras cada una.",
	"* Fases: cuidado con los esbirros de la corte mientras la reina castiga, y prioridad en las oleadas que llegan por el agua.",
};

pack["152128"] = { "Orgozoa",
	"* |cff71d5ff|Hspell:298156|h[Desensitizing Sting]|h|r: aguijón insensible al tanque, daño creciente: alterna.",
	"* |cff71d5ff|Hspell:298306|h[Incubation Fluid]|h|r: el fluido de incubación eclosiona en el marcado: las crías salen — matadlas lejos del jefe.",
	"* |cff71d5ff|Hspell:305057|h[Call of the Tender]|h|r: la llamada trae esbirros: prioridad sobre el jefe.",
	"* |cff71d5ff|Hspell:295825|h[Arcing Current]|h|r: la corriente en arco salta entre jugadores: dispersaos.",
};

pack["152236"] = { "Lady Gobernalle",
	"* |cff71d5ff|Hspell:296725|h[Barnacle Bash]|h|r: el mazazo de percebes al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:297324|h[Bubble]|h|r: las burbujas atrapan: romped las de los aliados al momento.",
	"* |cff71d5ff|Hspell:296650|h[Shield]|h|r: el escudo la protege: rompedlo o la pelea se estanca.",
	"* |cff71d5ff|Hspell:298055|h[Upsurge]|h|r: la oleada barre el suelo: esquivad el barrido al alzarla.",
};

pack["152364"] = { "Radiancia de Azshara",
	"* |cff71d5ff|Hspell:296566|h[Tide Fist]|h|r: el puño de marea al tanque: alterna.",
	"* |cff71d5ff|Hspell:296430|h[Arcanado Burst]|h|r: ráfagas arcanas en el suelo: dispersaos y no las compartáis.",
	"* |cff71d5ff|Hspell:296459|h[Squall Trap]|h|r: las trampas de vendaval atrapan al que las pisa: no las crucéis.",
	"* |cff71d5ff|Hspell:296737|h[Arcane Bomb]|h|r: la bomba arcana explota en el marcado: dispersaos para que caiga sola.",
	"* Los esbirros de la marea entran en oleadas: prioridad sobre ellos entre trampas y bombas.",
};

bos = { "Corte de la reina",
	"* |cff71d5ff|Hspell:301244|h[Repeat Performance]|h|r: la representación se repite: los duelos marcados tocan dos veces — dispersaos.",
	"* |cff71d5ff|Hspell:297585|h[Obey or Suffer]|h|r: obedecer o sufrir al marcado: haced lo que pide el duelo o el castigo estalla al grupo.",
	"* |cff71d5ff|Hspell:244899|h[Silivaz Touch]|h|r: el toque de Silivaz apila al tanque: alterna en ambos duelistas.",
	"* |cff71d5ff|Hspell:301828|h[Silivaz Touch]|h|r: la segunda cuerda del toque sigue apilando: vigilad el conteo y alternad sin esperas.",
	"* Dos duelistas a la vez: matadlos casi juntos y controla el daño acumulado de los toques en los tanques.",
};
pack["152852"] = bos; pack["152853"] = bos;


-- --------------------------------- --
-- Ny'alotha : Zona 2217 --
-- --------------------------------- --

pack["156523"] = { "Maut",
	"* |cff71d5ff|Hspell:307399|h[Shadow Wounds]|h|r: heridas de sombra al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:307805|h[Devour Magic]|h|r: devora la magia del marcado: los casters vigilan el momento del cast.",
	"* |cff71d5ff|Hspell:315025|h[Ancient Curse]|h|r: la maldición antigua revienta al expirar: el marcado se aparta del grupo.",
	"* |cff71d5ff|Hspell:308044|h[Stygian Annihilation]|h|r: la aniquilación estigia es una BOMBA GRANDE en zona: dispersaos al canalizar.",
	"* Los acólitos oscuros que invoca alimentan su ritual: matadlos en prioridad antes de que crezcan el daño del suelo.",
};

pack["156575"] = { "Inquisidora oscura Xanesh",
	"* |cff71d5ff|Hspell:311551|h[Abyssal Strike]|h|r: el golpe abisal cae en zona: dispersaos del impacto.",
	"* |cff71d5ff|Hspell:314179|h[Fanaticism]|h|r: los esbirros fanatizados suben su daño: matadlos YA.",
	"* |cff71d5ff|Hspell:312336|h[Void Ritual]|h|r: el ritual del vacío avanza mientras sus obeliscos viven: matadlos rápido.",
	"* |cff71d5ff|Hspell:306495|h[Summon Ritual Obelisk]|h|r: los obeliscos del ritual caen por la sala: prioridad absoluta sobre ellos.",
};

pack["156818"] = { "Wrathion, el Emperador Negro",
	"* |cff71d5ff|Hspell:306015|h[Searing Armor]|h|r: armadura al rojo en el tanque: alternad tras cada carga.",
	"* |cff71d5ff|Hspell:306111|h[Incineration]|h|r: la incineración marca zonas de fuego: salid del círculo.",
	"* |cff71d5ff|Hspell:306289|h[Gale Blast]|h|r: la ráfaga empuja lejos: no os quedéis en el borde de la sala.",
	"* |cff71d5ff|Hspell:306735|h[Burning Cataclysm]|h|r: la catástrofe ardiente suelta daño grande por zonas: esquivad el círculo al caer.",
};

pack["156866"] = { "Ra Den el Arrasado",
	"* |cff71d5ff|Hspell:306819|h[Nullifying Strike]|h|r: el golpe anula al tanque: alterna y sanad fuerte.",
	"* |cff71d5ff|Hspell:306634|h[Unstable Void]|h|r: el vacío inestable salta al marcado: alejaos del grupo mientras lo lleváis.",
	"* |cff71d5ff|Hspell:313227|h[Decaying Wound]|h|r: la herida decadente apila en el tocado: sanarla antes de que reviente.",
	"* |cff71d5ff|Hspell:306091|h[Call Essence]|h|r: la llamada trae esencias de esbirros: matadlas antes de que toquen al grupo.",
};

bos = { "La mente colmena",
	"* |cff71d5ff|Hspell:307569|h[Dark Recon]|h|r: el reconocimiento oscuro cae en zonas: esquivad cada barrido.",
	"* |cff71d5ff|Hspell:307213|h[Tek'riss Hive Control]|h|r: el control mental apaga al marcado: los aliados lo sacamos del trance.",
	"* |cff71d5ff|Hspell:307201|h[Kaz'riss Hive Control]|h|r: el segundo control sigue apagando voluntades: vigilad a los dos y liberad rápido.",
	"* |cff71d5ff|Hspell:313672|h[GTFO]|h|r: charcos al suelo: fuera de ellos al momento.",
	"* Dos mentes al unísono: alternad objetivo y matad a las abejas de la colmena si se amontonan.",
};
pack["157253"] = bos; pack["157254"] = bos;

pack["157620"] = { "El profeta Skitra",
	"* |cff71d5ff|Hspell:308059|h[Shadow Shock]|h|r: descarga de sombra al tanque: alterna.",
	"* |cff71d5ff|Hspell:307937|h[Shred Psyche]|h|r: el psique desgarra al tanque marcado: alterna con defensivas.",
	"* |cff71d5ff|Hspell:309687|h[Psychic Outburst]|h|r: el estallido psíquico marca zonas: dispersaos.",
	"* |cff71d5ff|Hspell:313239|h[Images of Absolution]|h|r: las falsificaciones del profeta aparecen: matadlas rápido — confunden el foco del DPS.",
};

pack["157231"] = { "Shad'har el Insaciable",
	"* |cff71d5ff|Hspell:312328|h[Hunger]|h|r: su hambre crece con el tiempo: el DPS manda — matadlo rápido.",
	"* |cff71d5ff|Hspell:307471|h[Crush]|h|r: el machaque al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:307472|h[Dissolve]|h|r: la disolución marca el suelo de ácido: no crucéis el charco.",
	"* |cff71d5ff|Hspell:306930|h[Entropic Breath]|h|r: el aliento entrópico barre en cono: salid del frente.",
};

pack["157354"] = { "Vexiona",
	"* |cff71d5ff|Hspell:306981|h[Gift of the Void]|h|r: el regalo del vacío marca al azar: alejaos del grupo hasta que pase.",
	"* |cff71d5ff|Hspell:307729|h[Fanatical Ascension]|h|r: la ascensión fanática de los esbirros: SIEMPRE cortable.",
	"* |cff71d5ff|Hspell:307075|h[Power of the Chosen]|h|r: el poder de los elegidos sube el daño de los esbirros: matadlos antes de que lo ganen.",
	"* |cff71d5ff|Hspell:307396|h[Spiteful Assault]|h|r: el asalto rencoroso al tanque: alterna.",
	"* El dragón y su culto: los esbirros del vacío mandan la agenda — prioridad en sus castings entre fases.",
};

pack["157439"] = { "Caparazón de N'Zoth",
	"* |cff71d5ff|Hspell:315954|h[Black Scar]|h|r: la cicatriz negra marca zonas: no las crucéis.",
	"* |cff71d5ff|Hspell:313334|h[Gift of N'Zoth]|h|r: el regalo de N'Zoth cae al margen: dispersaos.",
	"* |cff71d5ff|Hspell:307831|h[Will Broken]|h|r: la voluntad del marcado se quiebra: hacedlo correr lejos o se vuelve contra vosotros.",
	"* |cff71d5ff|Hspell:307832|h[Servant of N'Zoth]|h|r: los siervos de N'Zoth atacan a los aliados: controladlos hasta que el efecto pase.",
};

pack["157602"] = { "Drest'agath",
	"* |cff71d5ff|Hspell:310246|h[Void Grip]|h|r: el agarre del vacío atrae al grupo al centro: alejaos al canalizarlo.",
	"* |cff71d5ff|Hspell:310563|h[Mutterings of Betrayal]|h|r: los murmullos marcan zonas: dispersaos.",
	"* |cff71d5ff|Hspell:310277|h[Volatile Seed]|h|r: la semilla volátil explota en el marcado: que caiga sola, lejos del grupo.",
	"* |cff71d5ff|Hspell:310361|h[Unleashed Insanity]|h|r: los esbirros de la cordura liberada llegan: matadlos YA.",
	"* Las piezas del cuerpo traen castings continuos: alternad objetivo según lo que canalice y limpiad las babas.",
};

pack["158041"] = { "N'Zoth, el Corruptor",
	"* |cff71d5ff|Hspell:313184|h[Synaptic Shock]|h|r: el choque sináptico apila a todos: no lo dejéis crecer.",
	"* |cff71d5ff|Hspell:316711|h[Mindwrack]|h|r: el desgarro mental al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:310184|h[Creeping Anguish]|h|r: la angustia que se arrastra marca el suelo: salid de las zonas.",
	"* |cff71d5ff|Hspell:310042|h[Tumultuous Burst]|h|r: el estallido tumultuoso marca al azar: dispersaos.",
	"* Las fases del psique: matad a los esbirros de la mente antes de que alimenten al Corruptor y limpiad el suelo entre oleadas.",
};

pack["158328"] = { "Il'gynoth, Corrupción Renacida",
	"* |cff71d5ff|Hspell:309961|h[Eye of N'Zoth]|h|r: el ojo de N'Zoth: matadlo en prioridad cuando cae.",
	"* |cff71d5ff|Hspell:311367|h[Touch of the Corruptor]|h|r: el toque del corruptor al tanque: alterna.",
	"* |cff71d5ff|Hspell:315094|h[Fixate]|h|r: la fijación marca: el marcado corre lejos del grupo.",
	"* |cff71d5ff|Hspell:310319|h[Corruptor's Gaze]|h|r: la mirada del corruptor barre el suelo: fuera de sus zonas.",
	"* Los esbirros de la corrupción alimentan al ojo: alternad entre matarlos y pegar al ojo en sus ventanas.",
};


-- --------------------------------- --
-- Uldir : Zona 1861 --
-- --------------------------------- --

pack["132998"] = { "G'huun",
	"* |cff71d5ff|Hspell:267412|h[Massive Smash]|h|r: azote brutal al tanque con daño de área — alternad tanques y sanad al grupo.",
	"* |cff71d5ff|Hspell:270447|h[Growing Corruption]|h|r: los orbes de la onda de corrupción dejan manchas que CRECEN — mantened al grupo lejos.",
	"* |cff71d5ff|Hspell:272506|h[Explosive Corruption]|h|r: esas manchas acaban estallando: corrid al borde cuando el orbe se acerca.",
	"* |cff71d5ff|Hspell:267409|h[Dark Bargain]|h|r: matad los esbirros del pacto en cuanto salen.",
	"* La mecánica clave: usad los pilones de Uldir para desviar los orbes; al caer la plataforma matad la corrupción reptante y esquivad los rayos de reorigenación de la fase final.",
};

pack["133298"] = { "Devorador fétido",
	"* |cff71d5ff|Hspell:262313|h[Malodorous Miasma]|h|r: aliento frontal que deja charcos de miasma: el tanque los arrastra FUERA del grupo y nunca los pisa.",
	"* |cff71d5ff|Hspell:262314|h[Putrid Paroxysm]|h|r: los charcos de miasma revientan al pisarlos: mantened la sala limpia.",
	"* |cff71d5ff|Hspell:262277|h[Thrash]|h|r: zarandeo a los más cercanos que NO llevan el tanque: dispersaos alrededor.",
	"* |cff71d5ff|Hspell:262378|h[Frenzy]|h|r: el furor sube su daño — el tanque guarda defensivas y la sanación se concentra en él.",
};

pack["134442"] = { "Vectis",
	"* |cff71d5ff|Hspell:265127|h[Lingering Infection]|h|r: infección que apila daño en el marcado: el sanador lo vigila y los sanadores lo limpian a tiempo.",
	"* |cff71d5ff|Hspell:265178|h[Evolving Affliction]|h|r: la aflicción en evolución se marca por parejas: los marcados se separan del grupo.",
	"* |cff71d5ff|Hspell:265212|h[Gestate]|h|r: siembra una larva dentro del marcado: al eclosionar, matadla lejos del grupo antes de que llegue al jefe.",
	"* |cff71d5ff|Hspell:266926|h[Plague Bomb]|h|r: bombas de plaga que caen en zonas: salid de las manchas verdes.",
};

pack["134546"] = { "Mythrax el Desintegrador",
	"* |cff71d5ff|Hspell:274693|h[Essence Shear]|h|r: sangría brutal al tanque durante 20 s: alterna el otro con defensivas.",
	"* |cff71d5ff|Hspell:272407|h[Oblivion Sphere]|h|r: abre el umbral de la obliteración y sale del área invulnerable: repartíos por las esquinas entre oleadas.",
	"* |cff71d5ff|Hspell:279157|h[Void Echoes]|h|r: ecos de vacío que avanzan desde los muros: matadlos ANTES de que alcanzen el umbral.",
	"* |cff71d5ff|Hspell:273538|h[Obliteration Blast]|h|r: el rayo gigante gira en círculos desde su esfera: dadle la vuelta corriendo.",
};

pack["134445"] = { "Zek'voz, Heraldo de N'Zoth",
	"* |cff71d5ff|Hspell:265264|h[Void Lash]|h|r: latigazo del vacío encadenado al tanque (dos golpes): alterna el otro con defensivas.",
	"* |cff71d5ff|Hspell:264382|h[Eye Beam]|h|r: haz que gira en círculos desde él: movéos con la rotación, nunca quedéis delante.",
	"* |cff71d5ff|Hspell:265360|h[Roiling Deceit]|h|r: engaño rodante al marcado: dejad la baba de vacío lejos del grupo.",
	"* Las esferas de aniquilación canalizan un haz letal contra el grupo: matadlas en cuanto bajan y no os crucéis con su línea.",
};

pack["135452"] = { "MADRE",
	"* |cff71d5ff|Hspell:267787|h[Sanitizing Strike]|h|r: golpe quirúrgico al tanque y el vacío le roba la sanación: alternad tanques y defensivas.",
	"* |cff71d5ff|Hspell:267945|h[Wind Tunnel]|h|r: túnel de viento frontal que empuja lejos: no os pongáis delante.",
	"* |cff71d5ff|Hspell:274205|h[Depleted Energy]|h|r: tras la purga MADRE queda agotada: momento de dañar al máximo.",
	"* |cff71d5ff|Hspell:268095|h[Cleansing Purge]|h|r: la purga barre la sala con oleadas de rayos purificadores desde la puerta: esquivad las líneas — lastiman y quitan beneficios.",
};

pack["137119"] = { "Taloc",
	"* |cff71d5ff|Hspell:275205|h[Enlarged Heart]|h|r: el corazón agrandado golpea al tanque con daño creciente cada 10 s: sanación constante al marcado y alterna el otro.",
	"* |cff71d5ff|Hspell:271225|h[Plasma Discharge]|h|r: ráfagas de plasma en zonas del suelo: salid de las manchas al caer.",
	"* |cff71d5ff|Hspell:271965|h[Powering Down]|h|r: al desconectarse, matad al robot de defensa y a la vaina volátil mientras no daña.",
	"* |cff71d5ff|Hspell:275270|h[Fixate]|h|r: la vaina volátil fija a uno y estalla al llegar: arastradla lejos del grupo y matadla.",
};

pack["138967"] = { "Zul el Renacido",
	"* |cff71d5ff|Hspell:274358|h[Rupturing Blood]|h|r: la sangre del tanque revienta al caer y deja charco: alternad tanques y sacad el charco del grupo.",
	"* |cff71d5ff|Hspell:273361|h[Pool of Darkness]|h|r: estanques de oscuridad sobre el suelo: no los piséis.",
	"* |cff71d5ff|Hspell:273365|h[Dark Rev]|h|r: la revelación oscura cae si un orbe llega: matad a los orbes de vacío que avanzan hacia Zul antes de que lo toquen.",
	"* Fase 1 sin orbes: sanad, dispersaos y limpiad estanques; en fase 2 los orbes avanzan desde los muros en oleadas y alimentan la revelación si llegan.",
};


-- --------------------------------- --
-- Atal'Dazar : Zona 1763 --
-- --------------------------------- --

pack["122967"] = { "Sacerdotisa Alun'za",
	"* |cff71d5ff|Hspell:255579|h[Claws]|h|r: garras al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:255577|h[Transfusion]|h|r: SIEMPRE cortable — se curar con la sangre del marcado.",
	"* |cff71d5ff|Hspell:255582|h[Molten Gold]|h|r: el oro fundido marca el suelo: no lo crucéis.",
	"* |cff71d5ff|Hspell:259205|h[Spirit of Gold]|h|r: los espíritus de oro van primero: matadlos antes del jefe.",
};

pack["122965"] = { "Vol'kaal",
	"* |cff71d5ff|Hspell:250190|h[Totems Left]|h|r: los tótems que quedan canalizan: rompedlos YA cuantos caigan.",
	"* |cff71d5ff|Hspell:250258|h[Leap]|h|r: salta y golpea en zona: alejaos del impacto.",
	"* |cff71d5ff|Hspell:259572|h[Noxious Stench]|h|r: SIEMPRE cortable.",
	"* |cff71d5ff|Hspell:250585|h[GTFO]|h|r: charcos al suelo: fuera de ellos al momento.",
};

pack["122963"] = { "Rezan",
	"* |cff71d5ff|Hspell:257407|h[Pursuit]|h|r: persigue a uno: el perseguido corre lejos del grupo — no lo crucéis ni lo aturdáis.",
	"* |cff71d5ff|Hspell:255434|h[Teeth]|h|r: los dientes muerden al tanque con fuerza: alterna y defensivas.",
	"* |cff71d5ff|Hspell:255371|h[Fear]|h|r: el terror estalla en zona: el marcado se aparta del grupo.",
	"* |cff71d5ff|Hspell:260683|h[Bone Quake]|h|r: el terremoto de huesos trae esbirros: matadlos.",
};

pack["122968"] = { "Yazma",
	"* |cff71d5ff|Hspell:259187|h[Soul Rend]|h|r: el desgarro de alma marca al azar: dispersaos.",
	"* |cff71d5ff|Hspell:250096|h[Wracking Pain]|h|r: el dolor apila en el marcado: sanadlo a medida.",
	"* |cff71d5ff|Hspell:249919|h[Skewer]|h|r: el espetón al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:250050|h[Echoes]|h|r: los ecos dejan zonas al suelo: fuera de ellas.",
};


-- --------------------------------- --
-- Freehold : Zona 1754 --
-- --------------------------------- --

pack["126832"] = { "Capitán de los cielos Kragg",
	"* |cff71d5ff|Hspell:256005|h[Vilebombardment]|h|r: cuidado.",
	"* |cff71d5ff|Hspell:256106|h[Powder Shot]|h|r: cuidado.",
	"* |cff71d5ff|Hspell:255952|h[Charge]|h|r: embestida, fuera de su línea.",
	"* |cff71d5ff|Hspell:272046|h[Dive Bomb]|h|r: fuera del suelo.",
};

bos = { "Consejo de capitanes",
	"* |cff71d5ff|Hspell:265088|h[Good Brew]|h|r: el buen brebaje deja charco sano: pisadlo vosotros y dejad fuera a los enemigos.",
	"* |cff71d5ff|Hspell:265168|h[Caustic Brew]|h|r: el brebaje cáustico quema: no lo crucéis.",
	"* |cff71d5ff|Hspell:278467|h[Caustic Brew On Boss]|h|r: el brebaje cae sobre el jefe: aléjate de sus salpicaduras.",
	"* |cff71d5ff|Hspell:257117|h[Lucky Sevens]|h|r: el dado trae golpe de área a los marcados: dispersaos.",
};
pack["126845"] = bos; pack["126847"] = bos; pack["126848"] = bos;

pack["126969"] = { "Círculo del Botín",
	"* |cff71d5ff|Hspell:256358|h[Shark Toss]|h|r: el tiburón barre en zona: esquivad el barrido.",
	"* |cff71d5ff|Hspell:257829|h[Greasy]|h|r: el suelo engrasado hace deslizar: cuidado con el kiting del tiburón.",
	"* |cff71d5ff|Hspell:256489|h[Rearm]|h|r: el cañón se rearma: alejaos de su barrido cuando dispara.",
	"* |cff71d5ff|Hspell:256405|h[Sharknado]|h|r: el torbellino de tiburones recorre la sala: CORRED en el escape.",
};

pack["126983"] = { "Harlan Sweete",
	"* |cff71d5ff|Hspell:257314|h[Black Powder]|h|r: la plovera negra explota en zonas: aléjate de cada explosión.",
	"* |cff71d5ff|Hspell:257305|h[Cannon Barrage]|h|r: el cañoneo barre el suelo en líneas: esquivadlas.",
	"* |cff71d5ff|Hspell:413131|h[Whirling Dagger]|h|r: el torbellino de dagas gira a su alrededor: no os crucéis con él.",
	"* |cff71d5ff|Hspell:257278|h[Swiftwind Saber]|h|r: la espada al tanque: alterna y defensivas.",
};


-- --------------------------------- --
-- Kings' Rest : Zona 1762 --
-- --------------------------------- --

pack["135322"] = { "Serpiente dorada",
	"* |cff71d5ff|Hspell:265773|h[Spit Gold]|h|r: el escupitajo de oro cae en zonas: salidle del radio.",
	"* |cff71d5ff|Hspell:265910|h[Tail Thrash]|h|r: el azote de cola al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:265923|h[Lucre Call]|h|r: la llamada trae esbirros de oro: matadlos en prioridad.",
	"* |cff71d5ff|Hspell:1311987|h[Serpentine]|h|r: la serpentina salta por el suelo: cuidado con su recorrido.",
};

bos = { "El Consejo de las Tribus",
	"* |cff71d5ff|Hspell:266206|h[Whirling Axes]|h|r: los hachas giradoras barren el suelo: esquivadlas.",
	"* |cff71d5ff|Hspell:267494|h[Barrel Through]|h|r: el barril SE COMPARTE el daño: al menos dos lo absorben.",
	"* |cff71d5ff|Hspell:266237|h[Debilitating Backhand]|h|r: el revés llega al marcado: corre lejos del grupo.",
	"* |cff71d5ff|Hspell:267273|h[Poison Nova]|h|r: la nova de veneno: SIEMPRE cortable.",
};
pack["135475"] = bos; pack["135470"] = bos; pack["135472"] = bos;

pack["134993"] = { "Mchimba el Embalsamador",
	"* |cff71d5ff|Hspell:267618|h[Drain Fluids]|h|r: el drenado marca zonas y roba vida: sanead al tocado al momento.",
	"* |cff71d5ff|Hspell:267639|h[Burn Corruption]|h|r: la corrupción se quema en su zona: alejaos del incendio.",
	"* |cff71d5ff|Hspell:267702|h[Entomb]|h|r: EL ENTIERRO — encierra a un jugador momificado: el grupo rompe la tumba al momento.",
	"* |cff71d5ff|Hspell:1312146|h[Awakening Slam]|h|r: el golpe despertador: daño de área fuerte — sanad al grupo tras el impacto.",
};

pack["136160"] = { "Dazar, el primer Rey",
	"* |cff71d5ff|Hspell:1303115|h[Aerial Smash]|h|r: el azote aéreo marca zonas: esquivad el círculo al caer.",
	"* |cff71d5ff|Hspell:269230|h[Hunting Leap]|h|r: salta sobre el marcado: el objetivo se aparta del grupo.",
	"* |cff71d5ff|Hspell:1303488|h[Savage Maul]|h|r: el magullamiento salvaje golpea en área: sanad al grupo.",
	"* |cff71d5ff|Hspell:268586|h[Blade Combo]|h|r: la cadena de espada al tanque encadena rápido: alterna SIN esperas.",
};


-- --------------------------------- --
-- Operation: Mechagon : Zona 2097 --
-- --------------------------------- --

bos = { "Tonques de combate",
	"* |cff71d5ff|Hspell:1216443|h[Electrical Storm]|h|r: la tormenta eléctrica marca zonas: salid de ellas.",
	"* |cff71d5ff|Hspell:282801|h[Plating Cast]|h|r: el blindaje del tonk sube: rompedlo con daño continuo.",
	"* |cff71d5ff|Hspell:1215065|h[Platinum Pummel]|h|r: los mazazos al tanque: alterna.",
	"* |cff71d5ff|Hspell:1215102|h[Ground Pound]|h|r: el golpe al suelo: daño de área fuerte — sanad al grupo.",
};
pack["144244"] = bos; pack["145185"] = bos;

pack["144246"] = { "KU-J0",
	"* |cff71d5ff|Hspell:294929|h[Blazing Chomp]|h|r: el mordisco ardiendo al tanque: alterna.",
	"* |cff71d5ff|Hspell:291930|h[Air Drop]|h|r: los paquetes del aire traen esbirros: matadlos al caer.",
	"* |cff71d5ff|Hspell:291972|h[Explosive Leap]|h|r: salta y estalla en su zona: fuera del círculo.",
	"* |cff71d5ff|Hspell:291946|h[Venting Flames]|h|r: las lenguas de fuego barren el suelo: fuera del fuego.",
};

pack["144248"] = { "Jardín del Maquinista",
	"* |cff71d5ff|Hspell:285454|h[Discom Bomb]|h|r: la bomba explota en su radio: salidle del círculo.",
	"* |cff71d5ff|Hspell:294954|h[Self Trimming Hedge]|h|r: el seto se recorta y rueda: no os crucéis con él.",
	"* |cff71d5ff|Hspell:294853|h[Plant]|h|r: las plantas crecen por el jardín: matadlas antes de que florezcan.",
	"* |cff71d5ff|Hspell:285440|h[Flame Cannon]|h|r: el cañón de llamas: daño de área — sanad al grupo.",
};

bos = { "Rey Mecandria",
	"* |cff71d5ff|Hspell:291928|h[Mega Zap]|h|r: el megazap marca: cruzad por los lados del rayo.",
	"* |cff71d5ff|Hspell:291865|h[Recalibrate]|h|r: recalibra a sus esbirros: matad los recalibrados YA.",
	"* |cff71d5ff|Hspell:291626|h[Cutting Beam]|h|r: el rayo cortante barre la sala: esquivadlo.",
	"* |cff71d5ff|Hspell:283143|h[Magneto Arm]|h|r: el brazo magnético imanta al marcado: corre lejos del grupo.",
};
pack["150396"] = bos; pack["144249"] = bos; pack["150397"] = bos;

pack["150159"] = { "Rey Gobbamak",
	"* |cff71d5ff|Hspell:297257|h[Electrical Charge]|h|r: la carga eléctrica al marcado: dispersaos.",
	"* |cff71d5ff|Hspell:297254|h[Charged Smash]|h|r: el machaque SE COMPARTE: al menos dos lo absorben.",
	"* |cff71d5ff|Hspell:297261|h[Rumble]|h|r: el retumbe golpea en zona: sanad al grupo.",
};

pack["150190"] = { "Unidad de opresión aérea KPU7",
	"* |cff71d5ff|Hspell:301351|h[Reinforcement Relay]|h|r: el relé trae refuerzos: matadlos YA.",
	"* |cff71d5ff|Hspell:302274|h[Fulminating Zap]|h|r: el fulminante marca a los cercanos: dispersaos.",
	"* |cff71d5ff|Hspell:295536|h[Cannon Blast]|h|r: el cañonazo marca una zona: fuera del círculo.",
	"* |cff71d5ff|Hspell:302279|h[Wreck]|h|r: azote al tanque: alterna con defensivas.",
};

pack["150222"] = { "Mugroso",
	"* |cff71d5ff|Hspell:298259|h[Gooped]|h|r: el pegote al marcado: apartaos del grupo.",
	"* |cff71d5ff|Hspell:297985|h[Splatter]|h|r: las salpicaduras marcan el suelo: no las crucéis.",
	"* |cff71d5ff|Hspell:297834|h[Toxic Wave]|h|r: la ola tóxica barre: esquivadla.",
	"* |cff71d5ff|Hspell:297913|h[Toxic Goop Dispel]|h|r: el pegote tóxico se LO LLEVA lejos antes de purgar — purgarlo junto deja charco.",
};

bos = { "Trixie y Naeno",
	"* |cff71d5ff|Hspell:298940|h[Bolt Buster]|h|r: el antipernos salta al grupo: cuidado con la descarga.",
	"* |cff71d5ff|Hspell:302682|h[Mega Taze]|h|r: el megataze al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:298897|h[Jump Start]|h|r: el arranque recarga su poder: cortadlo SIEMPRE.",
	"* |cff71d5ff|Hspell:298669|h[Taze]|h|r: el taze SIEMPRE cortable.",
};
pack["153755"] = bos; pack["150712"] = bos;


-- --------------------------------- --
-- Shrine of the Storm : Zona 1864 --
-- --------------------------------- --

pack["134056"] = { "Aqu'sirr",
	"* |cff71d5ff|Hspell:264144|h[Undertow]|h|r: la succión del fondo atrae al grupo al centro: alejaos al cast.",
	"* |cff71d5ff|Hspell:264560|h[Choking Brine]|h|r: la salmuera asfixia en su zona: no la crucéis.",
	"* |cff71d5ff|Hspell:264903|h[Erupting Waters]|h|r: las aguas que erupcionan: salid de cada burbuja.",
	"* |cff71d5ff|Hspell:264101|h[Surging Rush]|h|r: la embestida barre en línea: no os crucéis con ella.",
};

bos = { "Consejo Sabiomar",
	"* |cff71d5ff|Hspell:267901|h[Blessing of Ironsides]|h|r: la bendición acoraza al sacerdote: rompedla con daño continuo.",
	"* |cff71d5ff|Hspell:267830|h[Blessing of Tempest]|h|r: la bendición de tempestad sube su daño: purgadla.",
	"* |cff71d5ff|Hspell:267891|h[Swiftness Ward]|h|r: el guardián de rapidez acelera su cast: matadlo YA.",
	"* |cff71d5ff|Hspell:267818|h[Slicing Blast]|h|r: la ráfaga cortante SIEMPRE cortable.",
};
pack["134063"] = bos; pack["134058"] = bos;

pack["134060"] = { "Lord Canto Tormenta",
	"* |cff71d5ff|Hspell:268347|h[Void Bolt]|h|r: el dardo del vacío SIEMPRE cortable.",
	"* |cff71d5ff|Hspell:268896|h[Mind Rend]|h|r: el rasgar mental marca: dispersaos del tocado.",
	"* |cff71d5ff|Hspell:269097|h[Wake the Void]|h|r: el vacío despierto marca zonas: no las crucéis.",
	"* |cff71d5ff|Hspell:269131|h[Ancient Mindbender]|h|r: el quebrantador CONTROLA al tocado: los aliados lo despertamos o apagamos su daño.",
};

pack["134069"] = { "Vol'zith la Susurradora",
	"* |cff71d5ff|Hspell:267299|h[Call the Abyss]|h|r: la llamada del abismo trae tentáculos: matadlos en prioridad.",
	"* |cff71d5ff|Hspell:267385|h[Tentacle Slam]|h|r: el azote de tentáculo marca zonas: esquivad.",
	"* |cff71d5ff|Hspell:269399|h[Yawning Gate]|h|r: la Puerta que bosteza succiona y expulsa: CORRED del radio.",
	"* |cff71d5ff|Hspell:267360|h[Grasp]|h|r: el agarre inyecta al tocado: sanad al instante.",
};


-- --------------------------------- --
-- Siege of Boralus : Zona 1822 --
-- --------------------------------- --

pack["130834"] = { "Sargento Bainbridge",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: el gancho trae al tocado al jefe: sanal al instante.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: el gancho carnoso apila al tocado: sanación continua.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: el gancho de hierro al tanque: alterna.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: la mirada de hierro marca zona: dispersaos.",
};

pack["128650"] = { "Cortador Ganchorrojo",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: el gancho trae al tocado al jefe: sanad al instante.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: el gancho carnoso apila al tocado: sanación continua.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: el gancho de hierro al tanque: alterna.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: la mirada de hierro marca zona: dispersaos.",
};

pack["128651"] = { "Hadal Brazasombría",
	"* |cff71d5ff|Hspell:261563|h[Crashing Tide]|h|r: la marea que rompe barre en zona: esquivad cada rodada.",
	"* |cff71d5ff|Hspell:257882|h[Break Water]|h|r: el rompe-aguas marca el suelo: salid del radio.",
	"* |cff71d5ff|Hspell:276068|h[Tidal Surge]|h|r: la oleada crece por la sala: mantened distancia del borde que avanza.",
};

pack["120553"] = { "Viq'Goth",
	"* |cff71d5ff|Hspell:275014|h[Putrid Waters]|h|r: las aguas pútridas inundan el suelo: no las crucéis.",
	"* |cff71d5ff|Hspell:269366|h[Repair]|h|r: la reparación del cañonero SIEMPRE cortable.",
	"* |cff71d5ff|Hspell:269456|h[Eradication]|h|r: la erradicación barre al grupo: dispersaos.",
	"* |cff71d5ff|Hspell:270185|h[Call of the Deep]|h|r: la llamada del abismo trae esbirros: matadlos.",
};

pack["129208"] = { "Capitana aterradora Lockwood",
	"* |cff71d5ff|Hspell:269029|h[Clear the Deck]|h|r: despeja la cubierta con cañones por zonas: esquivadlas.",
	"* |cff71d5ff|Hspell:268260|h[Broadside]|h|r: la andanada barre un costado: cambiad de lado a tiempo.",
	"* |cff71d5ff|Hspell:268752|h[Withdraw]|h|r: se retira con la escolta al castear: prioridad en los guardias que deja.",
	"* |cff71d5ff|Hspell:268230|h[Crimson Swipe]|h|r: el zarpazo carmesí al tanque: alterna.",
};


-- --------------------------------- --
-- Temple of Sethraliss : Zona 1877 --
-- --------------------------------- --

bos = { "Adderis y Aspix",
	"* |cff71d5ff|Hspell:1288049|h[Thunder and Lightning]|h;r: el trueno-relámpago SE COMPARTE: al menos dos lo absorben.",
	"* |cff71d5ff|Hspell:1311804|h[Overload]|h;r: la sobrecarga al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:1311805|h[Tempest Winds]|h;r: los vientos empujan por la sala: cuidado con el borde.",
	"* |cff71d5ff|Hspell:1289059|h[Gale Force]|h;r: el vendaval barre zonas: esquivadlo.",
};
pack["133379"] = bos; pack["133944"] = bos;

pack["133384"] = { "Merektha",
	"* |cff71d5ff|Hspell:264172|h[Burrow]|h;r: se entierra y emerge con carga: cuidado al reaparecer.",
	"* |cff71d5ff|Hspell:1290029|h[Knot of Snakes]|h;r: el nudo de serpientes ataca en masa: matadlo antes de que anude.",
	"* |cff71d5ff|Hspell:1289109|h[Thunderspit]|h;r: el escupitajo cae al marcado: aléjate del grupo al momento.",
	"* |cff71d5ff|Hspell:1289205|h[Hatch]|h;r: los huevos eclosionan: matad las crías en cuanto salen.",
};

pack["133389"] = { "Galvazzt",
	"* |cff71d5ff|Hspell:266923|h[Galvanize]|h;r: la galvanización sube su daño: controlad las cargas al matarlo.",
	"* |cff71d5ff|Hspell:1309525|h[Induction]|h;r: la inducción golpea en zona: sanad al grupo.",
	"* |cff71d5ff|Hspell:1291618|h[Lightning Spire]|h;r: la aguja SOAK: al menos dos la absorben.",
	"* |cff71d5ff|Hspell:266511|h[Capacitance]|h;r: la capacitancia marca el suelo: no lo crucéis.",
};

pack["133392"] = { "Avatar de Sethraliss",
	"* |cff71d5ff|Hspell:1301963|h[Cleansed]|h;r: los que limpian quedan marcados: cuidado al moverse.",
	"* |cff71d5ff|Hspell:1301202|h[Defiling Taint]|h;r: la tinta profana marca el suelo: salid de las manchas.",
	"* |cff71d5ff|Hspell:273677|h[Taint]|h;r: la tinta al tocado: alejaos del grupo hasta expirar.",
	"* |cff71d5ff|Hspell:268024|h[Pulse]|h;r: el pulso golpea en área: sanad al grupo.",
};


-- --------------------------------- --
-- The MOTHERLODE!! : Zona 1594 --
-- --------------------------------- --

pack["129214"] = { "Repartetundas de pago",
	"* |cff71d5ff|Hspell:271784|h[Throw Coins]|h|r: los puñetazos de monedón caen en zonas: esquivad.",
	"* |cff71d5ff|Hspell:269493|h[Footbomb Launcher]|h|r: el lanzador de balones marca el suelo: salidle del radio.",
	"* |cff71d5ff|Hspell:271903|h[Coin Magnet]|h|r: el imán atrae monedas que estallan: no crucéis su línea de tiro.",
	"* |cff71d5ff|Hspell:262347|h[Static Pulse]|h|r: el pulso estático marca en área: dispersaos.",
};

pack["129227"] = { "Azerokk",
	"* |cff71d5ff|Hspell:257582|h[Raging Gaze]|h|r: la mirada enfurecida marca al azar: el tocado se aparta.",
	"* |cff71d5ff|Hspell:258622|h[Pulse]|h|r: el pulso golpea en zona al grupo: sanad.",
	"* |cff71d5ff|Hspell:257593|h[Call Earth Rager]|h|r: los furiosos de la tierra entran: matadlos YA (apilan daño al jefe si viven).",
	"* |cff71d5ff|Hspell:271698|h[Infusion]|h|r: la infusión alimenta a los furiosos: cortad el cast SIEMPRE.",
};

pack["129231"] = { "Rixxa Flujollama",
	"* |cff71d5ff|Hspell:259022|h[Azerite Catalyst]|h|r: el catalizador la potencia de daño: matadlo antes de que crezca.",
	"* |cff71d5ff|Hspell:259940|h[Propellant Blast]|h|r: la ráfaga propelente marca al tocado: corre lejos al cast.",
	"* |cff71d5ff|Hspell:259853|h[Chem Burn]|h|r: la quemadura química apila al tocado: sanad continuo.",
};

bos = { "Mogul Razdunk",
	"* |cff71d5ff|Hspell:260189|h[Drill]|h|r: la taladradora embiste en carrusel: corred con el giro, no la crucéis.",
	"* |cff71d5ff|Hspell:262515|h[Heartseeker]|h|r: el buscacorazones marca al tocado: corre del grupo al cast.",
	"* |cff71d5ff|Hspell:260811|h[Homing Missile]|h|r: los misiles siguen al marcado: corre del grupo y soportad los impactos.",
	"* |cff71d5ff|Hspell:271456|h[Drill Smash]|h|r: el martilleo de taladro: daño de área — sanad al grupo.",
};
pack["129232"] = bos; pack["132713"] = bos;


-- --------------------------------- --
-- The Underrot : Zona 1841 --
-- --------------------------------- --

pack["131318"] = { "Anciana Leaxa",
	"* |cff71d5ff|Hspell:260879|h[Blood Bolt]|h|r: el dardo de sangre SIEMPRE cortable.",
	"* |cff71d5ff|Hspell:260894|h[Creeping Rot]|h|r: el pudrijo se arrastra por el suelo: salid de las manchas.",
	"* |cff71d5ff|Hspell:264757|h[Sanguine Feast]|h|r: el festín sanguinolento marca el suelo: fuera del radio al caer.",
};

pack["131383"] = { "Clamaesporas Zancha",
	"* |cff71d5ff|Hspell:272457|h[Shockwave]|h|r: la onda de choque golpea en frente: el tanque aparta al jefe del grupo.",
	"* |cff71d5ff|Hspell:259718|h[Upheaval]|h|r: el sometimiento marca zonas al suelo: fuera de ellas.",
	"* |cff71d5ff|Hspell:273271|h[Volatile Pods]|h|r: las bolsas volátiles estallan: matadlas AL MOMENTO.",
	"* |cff71d5ff|Hspell:259732|h[Festering Harvest]|h|r: la cosecha pútrida trae esporas: cuidado con las que caen cerca del grupo.",
};

pack["131817"] = { "Bocarrisco el Infestado",
	"* |cff71d5ff|Hspell:260793|h[Indigestion]|h|r: la indigestión explota en su radio: el melé sale del círculo al cast.",
	"* |cff71d5ff|Hspell:260292|h[Charge]|h|r: embiste en línea al marcado: no os crucéis con su recorrido.",
	"* |cff71d5ff|Hspell:260333|h[Tantrum]|h|r: el berrinche golpea en área: sanad al grupo.",
};

pack["133007"] = { "Abominación desatada",
	"* |cff71d5ff|Hspell:269692|h[Visage]|h|r: el rostro marca al tocado: corre del grupo al cast.",
	"* |cff71d5ff|Hspell:269843|h[Vile Expulsion]|h|r: la expulsión vil deja zonas: esquivadlas al caer.",
	"* |cff71d5ff|Hspell:269310|h[Cleansing Light]|h|r: la luz limpia el pasillo por tramos: moveos de tramo a tiempo.",
	"* |cff71d5ff|Hspell:269838|h[GTFO]|h|r: charcos del suelo: fuera de ellos al momento.",
};


-- --------------------------------- --
-- Tol Dagor : Zona 1771 --
-- --------------------------------- --

pack["127479"] = { "Reina de las arenas",
	"* |cff71d5ff|Hspell:257617|h[Upheaval]|h|r: el alzamiento marca zonas al suelo: fuera de ellas.",
	"* |cff71d5ff|Hspell:257092|h[Sand Trap]|h|r: las trampas de arena engullen: no piséis el círculo al formarse.",
	"* |cff71d5ff|Hspell:257495|h[Sandstorm]|h|r: la tormenta de arena golpea en área: sanad al grupo.",
};

pack["127484"] = { "Jes Howlis",
	"* |cff71d5ff|Hspell:257793|h[Smoke Powder]|h|r: la pólvora de humo oscurece: cuidado con sus golpes en la niebla.",
	"* |cff71d5ff|Hspell:257827|h[Motivating Cry]|h|r: el grito envalentona a los presos: matadlos YA.",
	"* |cff71d5ff|Hspell:260067|h[Vicious Mauling]|h|r: la mauled brutal al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:257777|h[Crip Shiv]|h|r: el punzón cojea al tocado: sanadlo al momento.",
};

pack["127490"] = { "Capitana caballero Valyri",
	"* |cff71d5ff|Hspell:256955|h[Cinderflame]|h|r: la llama de ceniza deja charcos al suelo: no los crucéis.",
	"* |cff71d5ff|Hspell:257028|h[Fuselighter]|h|r: el fusible marca al tocado: corre lejos del grupo al cast.",
	"* |cff71d5ff|Hspell:256970|h[Ignition]|h|r: la ignición explota al terminar el cast: esquivad el radio marcado.",
};

pack["127503"] = { "Sobrestante Korgus",
	"* |cff71d5ff|Hspell:256199|h[AZBlast]|h|r: el estallido de azerita marca en zona: fuera del radio.",
	"* |cff71d5ff|Hspell:256198|h[AZIncendiary]|h|r: las balas incendiarias siguen al tocado: corre del grupo cuando el punto vaya a ti.",
	"* |cff71d5ff|Hspell:256038|h[Deadeye]|h|r: el puntero exacto apunta y dispara: el tocado se aparta del tiro.",
	"* |cff71d5ff|Hspell:256105|h[Explosive Burst]|h|r: la explosión revienta al expirar: sanad al marcado antes del estallido.",
};


-- --------------------------------- --
-- Waycrest Manor : Zona 1862 --
-- --------------------------------- --

bos = { "Tríada Aterracorazón",
	"* |cff71d5ff|Hspell:260741|h[Jagged Nettles]|h|r: las ortigas apilan al tocado: no compartid el debuff.",
	"* |cff71d5ff|Hspell:260703|h[Unstable Mark]|h|r: la marca inestable explota al tocado: aléjate del grupo al cast.",
	"* |cff71d5ff|Hspell:268086|h[Aura of Dread]|h|r: la aura de pavor presiona al grupo: sanad de continuo.",
	"* |cff71d5ff|Hspell:260907|h[Soul Manipulation]|h|r: la manipulación del alma CONTROLA al tocado: los aliados lo despertamos.",
};
pack["135358"] = bos; pack["135359"] = bos; pack["135360"] = bos; pack["131823"] = bos; pack["131824"] = bos; pack["131825"] = bos;

pack["260551"] = { "Goliat de almas",
	"* |cff71d5ff|Hspell:260512|h[Soul Harvest]|h|r: la cosecha de almas drena al grupo: sanad fuerte durante el cast.",
	"* |cff71d5ff|Hspell:260541|h[Burning Bush]|h|r: los matorrales ardiendo marcan el suelo: no los crucéis.",
	"* |cff71d5ff|Hspell:260508|h[Crush]|h|r: el aplastamiento al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:267907|h[Thorns]|h|r: las espinas castigan al melé: melé atrás al apilarse.",
};

pack["131863"] = { "Raal el Glotón",
	"* |cff71d5ff|Hspell:264923|h[Tenderize]|h|r: el machacado al tanque encadena: alterna rápido.",
	"* |cff71d5ff|Hspell:264734|h[Consume All]|h|r: la devoradora engulle al marcado: corre del radio de boca.",
	"* |cff71d5ff|Hspell:264931|h[Servant]|h|r: los sirvientes entran: matadlos YA.",
	"* |cff71d5ff|Hspell:264694|h[Rotten Expulsion]|h|r: la expulsión podrida marca zonas: esquivadlas.",
};

bos = { "Lord y lady Crestavía",
	"* |cff71d5ff|Hspell:261440|h[Virulent Pathogen]|h|r: el patógeno salta por cercanía: separad a los tocados.",
	"* |cff71d5ff|Hspell:261446|h[Vitality Transfer]|h|r: la transferencia de vitalidad entre los dos SIEMPRE cortable.",
	"* |cff71d5ff|Hspell:268306|h[Discordant Cadenza]|h|r: la cadencia discordante barre desde el piano: aléjaos del radio sonoro.",
};
pack["131527"] = bos; pack["131545"] = bos;

pack["131864"] = { "Gorak Tul",
	"* |cff71d5ff|Hspell:268202|h[Deathlens]|h|r: la ojeadora fatal marca al tocado: corre del grupo al cast.",
	"* |cff71d5ff|Hspell:266198|h[Rising Flames]|h|r: las ascujas queman el suelo: fuera de las zonas.",
	"* |cff71d5ff|Hspell:266266|h[Summon Slaver]|h|r: los esclavistas entran: matadlos en prioridad.",
	"* |cff71d5ff|Hspell:266181|h[Dread Essence]|h|r: la esencia del pavor golpea en área: sanad al grupo.",
};


-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["136385"] = { "Azurethos",
	"* |cff71d5ff|Hspell:274829|h[Gale Force]|h|r: el vendaval empuja hacia el borde: cuidado con la caída del acantilado.",
	"* |cff71d5ff|Hspell:274839|h[Azurethos Fury]|h|r: la furia deja zonas al suelo: fuera de ellas.",
	"* |cff71d5ff|Hspell:274832|h[Wing Buffet]|h|r: el aletazo empuja lejos: pegaos al centro al cast.",
};

pack["140252"] = { "Ensamblaje de granizo",
	"* |cff71d5ff|Hspell:274896|h[Permafrost Spike]|h|r: las púas de escarcha brotan en zonas: no las crucéis.",
	"* |cff71d5ff|Hspell:274891|h[Glacial Breath]|h|r: el aliento glacial barre en cono: quedad a sus espaldas.",
	"* |cff71d5ff|Hspell:274895|h[Freezing Tempest]|h|r: la tempestad helada ronda el grupo: mantened el radio de seguridad.",
};

pack["132253"] = { "Ji'arak",
	"* |cff71d5ff|Hspell:260908|h[Storm Wing]|h|r: la ala tormentosa golpea en área: sanad al grupo.",
	"* |cff71d5ff|Hspell:261088|h[Hurricane Crash]|h|r: se lanza en picado a un punto: CORRED del círculo marcado.",
	"* |cff71d5ff|Hspell:261467|h[Matriarchs Call]|h|r: la matriarca trae crías: matadlas en prioridad.",
};

pack["138794"] = { "Tragadunas Kraulok",
	"* |cff71d5ff|Hspell:275200|h[Primal Rage]|h|r: la furia primigenia sube su daño con el tiempo: matadlo antes de acumular.",
	"* |cff71d5ff|Hspell:276046|h[Shake Loose]|h|r: se sacude y lanza a los cercanos: cuidado con el derribo.",
	"* |cff71d5ff|Hspell:275175|h[Sonic Bellow]|h|r: el bramido sónico golpea en área: sanad al grupo.",
	"* |cff71d5ff|Hspell:275194|h[Earth Spike]|h|r: las púas terrestres brotan al suelo: fuera de los círculos.",
};

pack["132701"] = { "T'zane",
	"* |cff71d5ff|Hspell:262004|h[Crushing Slam]|h|r: el machaque al tanque: alterna.",
	"* |cff71d5ff|Hspell:261605|h[Consuming Spirits]|h|r: los espíritus consumen vidas: matadlos YA.",
	"* |cff71d5ff|Hspell:261600|h[Coalesced Essence]|h|r: la esencia coalescida marca zonas: fuera de ellas.",
	"* |cff71d5ff|Hspell:261552|h[Terror Wall]|h|r: el muro de terror avanza: cruzadlo con defensivas o corred.",
};

pack["140163"] = { "Belisario Yenajz",
	"* |cff71d5ff|Hspell:274842|h[Void Nova]|h|r: la nova del vacío marca al azar: dispersaos.",
	"* |cff71d5ff|Hspell:274932|h[Endless Abyss]|h|r: el abismo sin fin avanza devorando: CORRED del radio.",
};

pack["148295"] = { "Ivus el Descomunal",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: la petrificación marca al grupo: dispersaos del tocado.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: la onda de choque golpea en línea: esquivadla.",
	"* El jefe de guerra de Costa Oscura: cuidado con los refuerzos del bando contrario durante la pelea.",
};

pack["144946"] = { "Ivus el Señor del Bosque",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: la petrificación marca al grupo: dispersaos del tocado.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: la onda de choque golpea en línea: esquivadla.",
	"* El jefe de guerra de Costa Oscura: cuidado con los refuerzos del bando contrario durante la pelea.",
};

pack["152697"] = { "Ulmath",
	"* |cff71d5ff|Hspell:301748|h[Endless Doom]|h|r: la condena sin fin apila daño continuo: sanad fuerte.",
	"* |cff71d5ff|Hspell:301773|h[Mental Collapse]|h|r: el colapso mental marca al tocado: CORRED del radio antes del estallido.",
	"* |cff71d5ff|Hspell:301840|h[Void Dance]|h|r: el baile del vacío marca el suelo: fuera de las zonas.",
};

pack["152671"] = { "Wekemara",
	"* |cff71d5ff|Hspell:303451|h[Electric Discharge]|h|r: la descarga eléctrica salta entre los cercanos: dispersaos.",
	"* |cff71d5ff|Hspell:303319|h[Bioelectric Blast]|h|r: la detonación bioeléctrica marca el suelo: fuera del círculo.",
	"* |cff71d5ff|Hspell:303488|h[Shock Burst]|h|r: el estallido de choque al tocado: aléjate del grupo al cast.",
};

pack["154638"] = { "Gran emperatriz Shek'zara",
	"* |cff71d5ff|Hspell:314304|h[Song of the Empress]|h|r: el canto de la emperatriz marca en área: dispersaos.",
	"* |cff71d5ff|Hspell:314333|h[Force and Verve]|h|r: la fuerza y el ímpetu marcan zonas: esquivadlas.",
	"* |cff71d5ff|Hspell:314307|h[Summon Swarmguard]|h|r: la guardia del enjambre entra: matadla en prioridad.",
};

pack["160970"] = { "Vuk'laz el Rompetierras",
	"* |cff71d5ff|Hspell:314618|h[Crushing Claws]|h|r: las garras al tanque: alterna con defensivas.",
	"* |cff71d5ff|Hspell:314698|h[Razor Spines]|h|r: las púas afiladas brotan alrededor: melé cuidado con el radio.",
	"* |cff71d5ff|Hspell:314527|h[Tremor Wave]|h|r: la onda telúrica avanza: saltadla al llegar.",
	"* |cff71d5ff|Hspell:314659|h[Writhing Sands]|h|r: las arenas retorcidas traen bestias: matadlas YA.",
};

pack["138122"] = { "Aullido del Destino",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: el pulso estallante marca en área: dispersaos.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: el modo asedio cambia su kit: cuidado con las zonas que abre.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: el mortero cae al punto marcado: fuera del círculo.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: las bocas de llamas barren por tramos: moveos de tramo a tiempo.",
};

pack["137374"] = { "Rugido del León",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: el pulso estallante marca en área: dispersaos.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: el modo asedio cambia su kit: cuidado con las zonas que abre.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: el mortero cae al punto marcado: fuera del círculo.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: las bocas de llamas barren por tramos: moveos de tramo a tiempo.",
};

P.es = es;
