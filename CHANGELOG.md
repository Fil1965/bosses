# Changelog

## Unreleased (1.0.4)
- **La posición del frame de alerta se recuerda por personaje**: si arrastras la ventana a otro sitio, al recargar (o en la próxima sesión de ese personaje) reaparece donde la dejaste — `BossesConfig.framePos`, igual que la posición del botón de minimapa. La primera vez se abre centrada arriba; el guardado ocurre al soltar el arrastre y la restauración valida los valores antes de usarlos.
- **Pack Midnight completado (cotejo con `_doc`)**: añadidas la **Lightblossom Trinity (Meittik) 243028 / ENC 3199** — el primer jefe del Valle Cegador, el que salió mudo en la prueba del dueño — y **Kith'ix 267861 / ENC 3513** (lair The Unbinding of Kith'ix), ES/EN con tácticas de los módulos DBM. Verificado que Lu'ashal, Thorm'belan, Nymrissa, Cragpine y Rotmire ya estaban (la revisión inicial los dio por ausentes por greps de patrón único — buscar siempre ambos estilos de entrada y los apóstrofes de los nombres). Sigue pendiente: Predaxas (módulo DBM vacío), los delves y los nombres esES.
- **Pack TWW: índice ENC de las bandas**: las 24 ENC de Nerub'ar Palace, Liberación de Undermine y Manaforge Omega, curadas de los módulos BigWigs (`SetEncounterID` + `RegisterEnableMob`) — antes las bandas dependían solo del diario; ahora la ruta rápida funciona también en banda. Las 24 entradas de banda y los 6 jefes de mundo de Khaz Algar ya estaban en el pack.
- **El frame del dueño se llena SIEMPRE con la explicación completa (decisión del propietario, 2026-10-01, tras Coren)**: la microcarrera del pull partía la explicación — mitad al chat (reparto frío empezado antes del pull) y mitad al frame (las líneas que el pull cazó). Ahora `enviarEntrada` vuelca la entrada ENTERA al frame en el lanzamiento, salga o no algo al chat; el chat reparte solo lo que la zona permita y las líneas que el pull caza se pierden para el grupo (no las habría recibido de todos modos: bloqueo). `lineaEnCombate` queda RETIRADA y el listener de `ADDON_ACTION_BLOCKED` ya no recupera líneas al frame — solo anota en el registro: no hay nada que recuperar. La salida solo-local en combate sigue escribiendo la copia del dueño por chat.
- **Radar de instancia + desplegable en el minimapa + botón "Al chat" (fase 1 de la hoja de ruta, decisión del propietario 2026-10-01)**: los packs ganan un índice de zonas opcional (`Bosses_<X>_zonas.lua`, clave `ZON` en `BossesAPI.register`; lo traen TWW y Midnight, Cata pendiente). Al entrar en una instancia reconocida, el click izquierdo del minimapa abre un desplegable con los jefes de la zona (solo los que tienen entrada) más "explicar objetivo" y "Configuración"; fuera de instancia, el click explica el objetivo como siempre. Al elegir un jefe, su explicación aparece en el frame y, fuera de combate, el frame gana un botón **"Al chat"** que la manda por la ruta fría normal (reparto espaciado + firma: la vía del grito de Coren) — se esconde en combate, donde el cliente bloquea esos envíos. Detección por `instanceID` de `GetInstanceInfo()` contra el índice de zonas (v1 sin fallback por nombre; el registro de depuración anota el id detectado). CORRECCIÓN tras prueba in-game: `EasyMenu` YA NO existe en Midnight 12.1 (crash "attempt to call a nil value") y el nuevo sistema Menu no existe en los flavors clásicos — el desplegable es artesanal (frame propio con aspecto de tooltip, botones reutilizables y fondo invisible que lo cierra al clickar fuera), compatible con los cuatro flavors.
- **Cierre del frame de alerta (fix tras prueba in-game, 2026-10-01)**: una vista fría (menú del minimapa, avisos, explicaciones en frío) dejaba el frame abierto para siempre — solo lo apagaba el fin del combate. Ahora cualquier vista fría arma el apagado automático de 15s (en caliente lo sigue armando el `PLAYER_REGEN_ENABLED`), y el frame gana botón **X** arriba a la derecha y cierre con la tecla **ESC** (`UISpecialFrames`). El separador del desplegable pinta una raya blanca horizontal entre los jefes y los atajos fijos.

## [1.0.4] - 2026-10-01
- **Nombres de spells traducidos al vuelo**: el texto visible de los enlaces de spell (inglés en la tabla ES de los packs) se muestra en el idioma del CLIENTE — el id del enlace ya resolvía el tooltip así; ahora el nombre entre corchetes acompaña (`localizarEnlaces` con `C_Spell.GetSpellInfo` y fallback al `GetSpellInfo` clásico; el texto del pack queda de respaldo si el cliente no trae el spell). Aplica a frame, chat local y canal compartido; los packs NO necesitan re-traducirse.
- **Tooltip al pasar el ratón por los enlaces del frame**: como en las barras de acción — OnHyperlinkEnter/Leave muestran el tooltip del juego anclado al cursor, en el idioma de quien mira.
- **Click derecho → cuadro de chat: RETIRADO antes del release (decisión del propietario, 2026-10-01)**: la prueba in-game destapó que el texto insertado por un addon contamina la ruta de envío del cuadro de chat — el Enter del propio jugador en plena pelea acaba en `ADDON_ACTION_BLOCKED` (BugGrabber lo cazó) y, fuera de combate, el atajo no aportaba valor. La función no viaja en el zip; NO reintroducir: el Enter del jugador NO lava la contaminación del addon.

- Verificado in-game (2026-10-01): nombres de spells en el idioma del cliente y tooltip al pasar el ratón por los enlaces — probados por el propietario antes del release.

## [1.0.2] - 2026-10-01
- **Aviso de encuentros sin entrada en la vía automática (fin del silencio)**: el primer jefe del Valle Cegador (2026-10-01) no anunció nada por ninguna vía — en `explicarEncuentroAutomatico` un jefe sin entrada solo dejaba huella en el registro de depuración y el dueño se quedaba sin saber ni que el jefe estaba sin describir. Ahora, tras fallar también el reintento de los 2s, se avisa UNA vez por pull (frame en combate o con canal "solo frame", chat local en frío; huella "aviso sin entrada"; clave `e:<enc>` en `explicadosRecientes` para no repetir si la redundancia IEEU llega dos veces). Al grupo no va nada. Este fix llegó justo después de empaquetar la 1.0.1, así que no está en su zip publicado.
- **Canal "solo frame" (opción nueva del propietario, 2026-10-01)**: `/bosses CANAL frame` o cuarta casilla del panel — TODO lo que el addon anuncia va a la ventana de alerta del dueño: nada al chat de grupo (ni siquiera en la ventana pre-pull), nada al chat local, sin firma y sin anti-spam entre jugadores (con este canal no se reclama al grupo ni se atienden reclamaciones ajenas — la explicación es privada y no compite con la que otro jugador saque al chat del grupo). Los avisos de "sin entrada" (clicks y vía automática) también van al frame con este canal; la ayuda del addon y el resto de su interfaz siguen en el chat local.

## [1.0.1] - 2026-10-01
- **Veredicto in-game 2026-09-30**: durante un encuentro el cliente bloquea `SendChatMessage` de forma FIABLE en todos los contextos (manejador de evento, `C_Timer`) y no responde a `InCombatLockdown()` — que devuelve `false` a mitad de pelea (día de hoy: 0/4 explicaciones al grupo en una mazmorra de Midnight, BugGrabber las cazó a todas). El modelo "enviar al grupo durante la pelea" queda retirado: Blizzard lo cerró para todos los addons (DBM no anuncia por chat hace tiempo).
- **DECISIÓN del propietario (2026-10-01, tras probar con Coren)**: ni enviar al grupo en plena pelea (el cliente lo bloquea) NI guardar para soltarlo todo tras morir el jefe (llega tarde y no sirve ni al que tiene el addon ni al resto). En zona de combate la explicación vive SOLO en el frame de alerta del dueño (+ su chat local si la salida es solo para él); al grupo sale únicamente la parte que cupo en la ventana pre-pull (gritos de entrada), fuera de zona caliente. RETIRADA la cola de chat entera (encolarSalida/colaSalida, el volcado del regen con su guardia y el anti-bloqueo reencolador); el listener de bloqueos ahora lleva al frame la línea que el grupo no recibió.
- **Frame de alerta del propietario** (nuevo): durante el combate el dueño ve la explicación completa en un frame propio arrastrable bajo el título "Bosses", con marcado y links — las frames no se bloquean nunca; es el mismo medio que adoptó DBM al respecto. Se oculta 15s tras el combate.
- **Recuperación de líneas bloqueadas**: se escucha `ADDON_ACTION_BLOCKED` (evento legal, el mismo que usa BugGrabber); si el envío comido es nuestro, la línea "en vuelo" se reencola — nada se pierde por la microcarrera del pull.
- **Huella de zona de combate** (`enZonaCaliente`): `InCombatLockdown()` palpita, así que sirve la combinación de señales reales (`PLAYER_REGEN_DISABLED`, stamps en ENCOUNTER_START y `UNIT_AURA` con lockdown) + gracia de 5s antes y después.
- **Frame de alerta rediseñado (2026-10-01, tras la prueba con Coren, que salió redonda: frame durante la pelea + entrega completa al grupo con firma tras matar)**: aspecto de tooltip nativo del juego (fondo y borde), etiqueta "BOSSES" dorada, el nombre del jefe como cabecera grande con divisoria dorada, cada consejo en su propio párrafo con viñeta dorada y links clicables; el marcado decorativo se inyecta SOLO en el texto del frame (al chat sigue saliendo saneado). Además, si el combate muerde en pleno reparto frío, el frame se abre con la cabecera del jefe aunque el nombre no se hubiera mostrado aún.
- Los gritos de escena de jefes ya cubiertos por las tablas ENC del pack no adelantan la explicación (Punto de Nexo: Xenas 2026, Lothraxion narrando de lejos); la entrega la hace el `ENCOUNTER_START` del pull real (ventana pre-pull pendiente de datos: grito de Kystia 16s antes del pull).
- NOTA Midnight 12.1: registrar `COMBAT_LOG_EVENT_UNFILTERED` está SIEMPRE vetado — `ADDON_ACTION_FORBIDDEN` incluso fuera de combate (BugGrabber 2026-09-29); la prohibición se anuncia por evento y ni el `pcall` la silencia, así que ya no se intenta.
- Los hablantes de monster-chat sin entrada en la base anotan en el registro su NPC id (derivado del GUID); con eso se pueden mapear con datos reales los NPCs de escena de los festivos (Ilsa/Ursula de Coren).
- **Prueba in-game 2026-10-01 (Madriguera Ancestral, grupo de 5)**: la detección y la cola funcionaron (Rav'i 3456/259445 y La Espiral Retorcida 3457/259446 resueltas vía tabla ENC, 5 líneas encoladas en cada pull), pero el volcado de la Espiral saltó con un regeneración FALSA a mitad de encuentro (19:19:31, con ENCOUNTER_END a las 19:20:30) y el cliente se comió los envíos (BugGrabber x2). Fixes del día: (1) retirada la cola de chat y su volcado (ver DECISIÓN de arriba; el guardia anti-regen-falso que se redactó ese día usaba además una variable INEXISTENTE — `encActivoID` en vez de `encuentroActivoID` — y nunca habría protegido nada); (2) el frame de alerta gana ancho real (360px), estrato TOOLTIP y letra grande — la primera versión sin `SetWidth` tenía fondo de 0px; (3) el aviso "not described" también enciende el frame del dueño en combate, y la línea en combate se muestra en el frame también en salida solo-local (estés solo o acompañado).

- **Blindaje del frame de alerta (2026-10-01)**: BugGrabber reportó `attempt to index field 'nombre'` con el frame creado a medias (solo "marca", sin nombre/cuerpo) — la sesión seguía ejecutando la iteración anterior en memoria (sin `/reload` tras la copia a AddOns, que ya estaba al día). Fixes: (1) si el frame existe con alguna pieza a nil (marca/nombre/cuerpo) se descarta y se rehace completo — un frame cojo ya no puede arrastrarse ni cascar; (2) los links se activan solo si el cliente trae `SetHyperlinksEnabled` (sin el método el texto sale igual, solo sin link); (3) los tres puntos que miran la cabecera fuera de `salidaEnPantalla` (reparto frío, firma y listener de bloqueos) chequean también el campo a nil.

- **La firma de cortesía ya no aparece en el frame del dueño (decisión 2026-10-01)**: es solo para el grupo. En zona caliente no se emite (el grupo no puede recibirla en combate) y, si el pull caza su envío en el reparto frío, se pierde sin más — `salida(txt, esFirma)` no la marca `enVueloCanal`, así que el listener de bloqueos jamás la lleva al frame (en el registro caerá como "bloqueo sin línea en vuelo").

## [1.0.0] - 2026-09-29
- Primera subida a CurseForge del proyecto nuevo (https://www.curseforge.com/wow/addons/bosses; el proyecto con el nombre anterior quedó abandonado sin poderse cambiar).
- **Renombrado del proyecto: Boses → Bosses.** Cambian la carpeta del addon (`Bosses/`), los packs (`Bosses_*`), el TOC, la API (`BossesAPI`), el comando (`/bosses`), el prefijo de mensajes de addons (`Bosses`), las SavedVariables (`BossesConfig`/`BossesDebug`) y el zip (`Bosses_<v>.zip`). El directorio de desarrollo no se renombra.
- Migración de datos del addon antiguo: el TOC declara también `BosesConfig`/`BosesDebug`; copiando los ficheros `Boses.lua` de WTF (el de la cuenta y el del personaje) como `Bosses.lua`, el primer arranque adopta configuración, notas y registro por referencia.
- Incluye el trabajo acumulado de la etapa 0.11.x: modo depuración (registro en WTF, casilla y botón "Vaciar", `/bosses DEBUG|log`), cadena de detección estilo DBM (tabla ENC del pack → unidades boss → diario EJ → índice de nombres, con reintento a 2s), packs con `Bosses_<X>_enc.lua` generados con `npm run comparar-dbm`, y reparto de líneas siempre espaciado (0.25s) con **todo por local cuando hay chat lockdown** (también la primera línea: la ruta inmediata en combate pierde líneas de forma intermitente — Seranel y Kasreth, confirmado con BugGrabber `ADDON_ACTION_BLOCKED` + throttle).

## [0.10.3] - 2026-09-28
- Reorganización de packs (ficheros por idioma + registrador, estilo bos), paridad de localización FR/DE, npm run pendientes, Akil'zon fusionado en Boses_Cata, update con wipe+copiar

## [0.10.2] - 2026-09-26
- Bugfix en Mazmorras

## [0.10.1] - 2026-09-26
- Modo Automático (encuentros + jefes festivos) con anti-spam entre jugadores, firma de cortesía configurable, pack The War Within (65 jefes), Coren Cerveza Temible, y fixes de envío (throttle, secret strings, gritos de entrada/derrota)

## [0.9.1] - 2026-09-26
- Packs TWW, modo Automático, anti-spam entre jugadores, firma de cortesía

## [0.8.0] - 2026-09-26
- Packs: Midnight, Cata, TWW; identificación completa en Midnight; modo Automático

## [0.7.3] - 2026-09-22
- Secret strings de Midnight: fallbacks por nombre y encuentro, salida local en combate

## [0.7.2] - 2026-09-22
- Secret strings de Midnight: fallbacks por nombre y encuentro, salida local en combate

## [0.7.1] - 2026-09-19
- Bugfix

## [0.7.0] - 2026-09-19
- Packs de expansión via BosesAPI (Midnight 54, Cata 81); idioma configurable; botón de minimapa con LibDBIcon

## [0.6.1] - 2026-09-18
- Maintenance release

All notable changes to Bosses (formerly Boses) are documented here.

## [0.6.0] - 2026-09-18

- Modernización para Midnight (12.1.5): interfaz 120105.
- Settings API en lugar de InterfaceOptions (eliminada en 11.0).
- GUID moderno via strsplit; IsInRaid/IsInGroup en lugar de GetNumRaidMembers/GetNumPartyMembers.
- math.atan en lugar de math.atan2 (Lua 5.4); C_AddOns.GetAddOnMetadata.
- Interfaz reconstruida en Lua; eliminado Boses.xml.
- Soporte de INSTANCE_CHAT en grupos de mazmorra aleatoria.
- Corregido el reset de la posición del minimapa en cada login.
- Añadidas ayudas Node.js para empaquetado y release (scripts/).