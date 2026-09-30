**The boss fight, explained in chat right before the pull.**

Bosses prints short "telegraphic" explanations of boss encounters into chat. As a tank you used to copy-paste little explanations before each pull — this addon does it with one command, on the right channel, with your own words or its hand-written tactics. No timers, no combat automation: just knowledge, on demand or as each encounter starts.

## Highlights

- Explains the targeted NPC in a few lines: human-written tactics, not a wall of text
- Your own notes per NPC in **any language** — they override the built-in database and persist per character
- Hand-written explanations for **Cataclysm** dungeons, Zul'Aman/Zul'Gurub and raids from the 2011-2013 era (the good old days), plus data packs for **The War Within** and **Midnight** — everything in **English and Spanish**
- Picks the right channel automatically: **raid, party or LFG instance chat** — or force guild / local output
- Bosses get explained **automatically as each encounter starts** (no timers, no combat automation; you can turn it off in Settings)
- Minimap button: left-click explains your target, right-click opens Settings, drag to move (position is saved)
- Settings panel in **Settings → AddOns → Bosses**, changes apply instantly, no libraries
- **Data packs**: optional `Bosses_<Zone>/` folders with explanations for a specific zone, without bloating the core (ships with packs for Cataclysm, The War Within and Midnight)
- Optional debug mode: writes a detection log to your `WTF` folder so missing bosses are easy to spot
- Fully compatible with Midnight's addon policy: information under your control, never combat automation
- Runs on Retail (**Midnight 12.1**) and Classic: **MoP Classic, TBC Classic and Classic Era** — same flavor list as its siblings

## Commands

```text
/bosses               explains the targeted npc
/bosses <id>          explains the npc with that id
/bosses + text        adds a line with text to the targeted npc
/bosses !             deletes the targeted npc explanation
/bosses CANAL auto    group / raid / LFG output (default)
/bosses CANAL guild   guild output
/bosses CANAL local   local output (only your chat frame)
/bosses IDIOMA es|en  language of the explanations (auto = follows the game)
/bosses DEBUG on|off  debug log (written to WTF on logout); /bosses log shows it
/bosses ?             full command help
```

**Tip:** try it right now — `/bosses 23576` explains Nalorakk (Zul'Aman, Cataclysm pack), translated to English and Spanish.

**Note:** explanations are stored **per character**. If you explain a boss yourself and want to share it, send me your saved `Bosses.lua` and I'll add it to the next version. Most of the built-in information came from my own experience plus Wowhead and www.guiaswow.com — thanks to both.

**Upgrading from the old Boses addon?** Copy `WTF\Account\<account>\SavedVariables\Boses.lua` → `Bosses.lua` (and also the one in `WTF\Account\<account>\<realm>\<character>\SavedVariables\`), reload, and your notes, settings and debug log carry over automatically.

Bosses is the veteran of the family (born as Boses in 2011, renamed in 2026 when the old CurseForge project had to be abandoned), big sibling of **Nas** (automatic greetings) and **MarcoPolo** (merchant automation).

---

## En español

**La pelea del jefe, explicada en el chat justo antes del pull.**

Bosses saca por chat explicaciones "telegráficas" de los encuentros de jefes. De tanque, copiabas a mano unas explicaciones cortas antes de cada pull — Bosses lo hace por ti: marca al jefe, ejecuta el comando y la explicación sale por el canal correcto. Sin temporizadores, sin automatización de combate: solo conocimiento, lo pides tú o sale solo al empezar el encuentro.

- Explica el NPC marcado en pocas líneas, escritas por humanos
- Tus notas por NPC en cualquier idioma (`/bosses +` y `/bosses !`): tienen prioridad sobre la base de datos incluida
- Explicaciones escritas a mano de las mazmorras de **Cataclysm**, Zul'Aman/Zul'Gurub y bandas de la era 2011-2013, más packs de **The War Within** y **Midnight** — todo en **español e inglés**
- Elige el canal correcto automáticamente: **banda, grupo o chat de mazmorra aleatoria** — o fuerza hermandad / local
- **Explicación automática al empezar cada encuentro** (sin temporizadores ni automatización de combate; se puede desactivar en Configuración)
- Botón de minimapa: click izquierdo explica el marcado, click derecho abre Configuración, se arrastra (la posición se guarda)
- Panel en **Configuración → AddOns → Bosses**, cambios al instante, sin librerías
- **Packs de datos**: carpetas opcionales (`Bosses_<Zona>/`) con explicaciones de zonas concretas, sin engordar el core (incluye packs de Cataclysm, The War Within y Midnight)
- Modo depuración opcional: escribe un registro de detección en tu carpeta `WTF` para localizar jefes sin explicación
- Compatible con la política de addons de Midnight: la información bajo tu control, nunca automatización de combate
- Funciona en Retail (**Midnight 12.1**) y Classic: **MoP Classic, TBC Classic y Era** — misma lista de flavors que sus hermanos

**Comandos:**

```text
/bosses               explica el npc marcado
/bosses <id>          explica el npc con ese id
/bosses + texto       añade una línea con el texto al npc marcado
/bosses !             borra la explicación del npc marcado
/bosses CANAL auto    salida por grupo / banda / mazmorra aleatoria (por omisión)
/bosses CANAL guild   salida por la hermandad
/bosses CANAL local   salida local (solo tu ventana de chat)
/bosses IDIOMA es|en  idioma de las explicaciones (auto = sigue el juego)
/bosses DEBUG on|off  registro de depuración (se escribe en WTF al salir); /bosses log lo muestra
/bosses ?             ayuda completa
```

**Prueba:** `/bosses 23576` (Nalorakk, Zul'Aman).

**Nota:** todo se guarda por personaje. Si describes jefes tú mismo y quieres compartirlo, mándame tu `Bosses.lua` guardado y lo añado a la próxima versión. Bosses es el veterano de la familia (nació como Boses — "jefes" en gallego — en 2011; se renombró en 2026 al abrir el proyecto nuevo de CurseForge).

**¿Venías del addon Boses (proyecto anterior)?** Copia `WTF\Account\<cuenta>\SavedVariables\Boses.lua` → `Bosses.lua` (y también el de `WTF\Account\<cuenta>\<reino>\<personaje>\SavedVariables\`), recarga, y tus notas y ajustes se importan solos al primer arranque.