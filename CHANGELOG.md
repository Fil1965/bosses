# Changelog

## Unreleased (1.0.1)
- **Cola de chat de combate**: las líneas que no se pueden emitir con el chat lockdown activo no caen a local, se ENCOLAN y el manejador de eventos las reenvía — los envíos desde un evento funcionan en combate (verificado 2026: Zul'jan, y el nombre de cada explicación en combate; el registro de combate dispara sin parar durante la pelea y hace de bomba, con el reparto espaciado 0.25s). Resultado: el grupo recibe la explicación completa con su firma de cortesía durante la pelea; lo que quede se vacía al terminar el combate (PLAYER_REGEN_ENABLED).
- La primera línea sigue intentando el canal inmediatamente desde el contexto del manejador (decisión del propietario; flaky: Kasreth la perdió, Zul'jan la mandó); en lanzamientos ya desde timer (reintento de 2s) la entrada completa va por la cola.
- Los gritos de escena de jefes ya cubiertos por las tablas ENC del pack ya no adelantan la explicación (Punto de Nexo: Xenas 2026: Lothraxion narraba de lejos, tras morir el jefe anterior, y el grito lanzó la explicación del grupo al vacío): la explicación la entrega el `ENCOUNTER_START` del pull real.

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