# Changelog

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

All notable changes to Boses are documented here.

## [0.6.0] - 2026-09-18

- Modernización para Midnight (12.1.5): interfaz 120105.
- Settings API en lugar de InterfaceOptions (eliminada en 11.0).
- GUID moderno via strsplit; IsInRaid/IsInGroup en lugar de GetNumRaidMembers/GetNumPartyMembers.
- math.atan en lugar de math.atan2 (Lua 5.4); C_AddOns.GetAddOnMetadata.
- Interfaz reconstruida en Lua; eliminado Boses.xml.
- Soporte de INSTANCE_CHAT en grupos de mazmorra aleatoria.
- Corregido el reset de la posición del minimapa en cada login.
- Añadidas ayudas Node.js para empaquetado y release (scripts/).