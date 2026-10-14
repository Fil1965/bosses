[English](README.md) · **Español** · [Français](README.fr.md) · [Deutsch](README.de.md)

**Conoce el combate antes de tirar. Sobrevive en él.**

Bosses te explica cómo funciona un combate de jefe —en pocas líneas afiladas, en el momento justo y por el canal correcto. Marca al jefe (o deja que el addon detecte el arranque del encuentro) y recibe el resumen táctico: lo que vigila el tanque, quién esquiva qué, lo que se corta, lo que jamás hay que pisar. Es conocimiento escrito a mano y probado en combate, no un volcado de wiki: cada banda, mazmorra y jefe de mundo lleva tácticas curadas a mano.

## Cobertura — todas las expansiones de World of Warcraft

**12 packs de datos · ~1.590 entradas de jefe · Español / Inglés / Francés / Alemán.** Desde la Sima Ígnea hasta Midnight y todo lo demás:

| Expansión | Packs | Jefes | Idiomas |
|---|---|---|---|
| Vanilla | Sima Ígnea, BWL, AQ20/40, Naxxramas, Onyxia + las mazmorras clásicas (Gnomeregan, Monasterio Escarlata, Maraudon, Uldaman, Zul'Farrak, Templo Sumergido SoD, Stratholme, Dire Maul, Scholomance, Zul'Gurub…) | 334 | EN · ES · FR · DE |
| The Burning Crusade | De Karazhan a Sunwell, mazmorras heroicas, Zul'Aman | 130 | EN · ES · FR · DE |
| Wrath of the Lich King | Naxxramas, Ulduar, ICC + 11 mazmorras, Onyxia, Trial of the Champion | 173 | EN (ES/FR/DE en curso) |
| Cataclysm | Tierras de Fuego, Alma de Dragón, BWD + mazmorras, remakes de ZA/ZG | 113 | EN · ES · FR · DE |
| Mists of Pandaria | Las 5 bandas, 9 mazmorras, jefes de mundo | 134 | EN · ES · FR |
| Warlords of Draenor | Highmaul, Fundición Sangre Negra, Ciudadela del Fuego Infernal + 8 mazmorras, élites de Tanaan | 91 | EN (resto en curso) |
| Legion | Las 5 bandas, 12 mazmorras, 20 jefes de mundo | 147 | EN (resto en curso) |
| Battle for Azeroth | Uldir → Ny'alotha, 12 mazmorras, jefes de frentes de guerra | 133 | EN · ES · FR · DE |
| Shadowlands | Castillo Nathria, Santuario de la Dominación, Sepulcro de los Primeros + 9 mazmorras + Tazavesh + jefes de mundo | 90 | EN (resto en curso) |
| Dragonflight | Aberrus, Amirdrassil, Bóveda de los Encarnados + 9 mazmorras + jefes de mundo | 92 | EN (resto en curso) |
| The War Within | Las bandas y mazmorras de Khaz Algar | 80 | EN · ES · FR · DE |
| Midnight | Bandas, mazmorras, lairs y jefes de mundo de la expansión vigente | 71 | EN · ES · FR · DE |

El addon embarca los packs de idioma que están **completos**; un locale solo se lista in-game cuando cada entrada de ese pack está acabada, así que lo que ves es lo que funciona. Los locales restantes se rellenan pack a pack — **el inglés está siempre** desde el primer día.

## Lo esencial

- **Explica al NPC marcado** en unas líneas telegráficas — un comando, o del todo automático al arrancar cada encuentro (sin timers, sin automatización de combate; el modo automático se puede desactivar)
- **Tácticas escritas a mano** con enlaces de hechizo verificados: cada viñeta nombra la habilidad real, con el enlace directo a tu chat
- **Tu propio frame de alerta**: durante el combate el juego bloquea el chat de addons, así que la explicación completa vive en tu pantalla — arrastrable, cerrable (X / ESC), se esconde a los 15 s tras la pelea y fuera de combate un botón **"Al chat"** la comparte con el grupo
- **Nombres de hechizo en el idioma del lector**, resueltos en vivo contra la base de datos del juego (el tooltip muestra la habilidad al pasar el ratón)
- **Elección inteligente de canal**: raid / grupo / chat de mazmorra LFG automáticamente — o fuerza gremio / local / solo frame
- **Botón de minimapa**: dentro de una mazmorra abre un desplegable con cada jefe de esa zona; fuera, explica a tu objetivo
- **Tus notas pisan la base de datos**: `/bosses + texto` añade tu propia línea a cualquier NPC, en cualquier idioma, por personaje
- Panel de ajustes en **Configuración → AddOns → Bosses** — los cambios aplican al instante, sin librerías externas
- Opcional **modo depuración** que escribe un registro de detección en tu carpeta `WTF`, para que un jefe mudo sea fácil de reportar

## Comandos

```text
/bosses               explica el NPC marcado
/bosses <id>          explica el NPC con esa id
/bosses + texto       añade tu propia línea al NPC marcado
/bosses !             retira la explicación del NPC marcado
/bosses CANAL auto    salida raid / grupo / LFG (por defecto)
/bosses CANAL guild   salida al gremio
/bosses CANAL local   solo tu marco de chat
/bosses CANAL frame   solo tu frame de alerta (avisos privados)
/bosses IDIOMA es|en|fr|de   idioma de la explicación (auto = sigue a tu juego)
/bosses DEBUG on|off  registro de detección en WTF; /bosses log lo muestra
/bosses ?             ayuda completa
```

**Pruébalo ya:** `/bosses 23576` — Nalorakk, Zul'Aman.

## Más recursos

El **proyecto de GitHub** complementario lleva el changelog completo, listas de cobertura y documentación extra: [github.com/Fil1965/bosses](https://github.com/Fil1965/bosses). ¿Echas en falta un jefe que quieras ver explicado? Todo se guarda por personaje — mándame tu `Bosses.lua` guardado y tu conocimiento irá en la próxima versión.

## Bueno saberlo

- Nació como *Boses* en 2011; el veterano de la familia: prueba también **Nas** (saludos automáticos) y **MarcoPolo** (automatización de mercader)
- Funciona en **retail (Midnight 12.1)** y **Classic**: MoP Classic, TBC Classic y Classic Era
- En plena línea con la política de addons del moderno: información bajo tu control, nunca automatización de combate
- **¿Actualizas desde el addon antiguo Boses?** Copia `WTF\Account\<cuenta>\SavedVariables\Boses.lua` → `Bosses.lua` (más la copia por personaje), recarga, y tus notas, ajustes y registro de depuración viajan solos