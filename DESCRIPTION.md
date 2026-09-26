**The boss fight, explained in chat right before the pull.**

Boses prints short "telegraphic" explanations of boss encounters into chat, on demand. As a tank you used to copy-paste little explanations before each pull — this addon does it with one command, on the right channel, with your own words or its hand-written tactics. No timers, no automation: just knowledge, when *you* ask for it.

## Highlights

- Explains the targeted NPC in a few lines: human-written tactics, not a wall of text
- Your own notes per NPC in **any language** — they override the built-in database and persist per character
- Comes with a hand-written Spanish database covering Cataclysm heroics and raid bosses from the 2011-2013 era (the good old days)
- Picks the right channel automatically: **raid, party or LFG instance chat** — or force guild / local output
- Minimap button: left-click explains your target, right-click opens Settings, drag to move (position is saved)
- Settings panel in **Settings → AddOns → Boses**, changes apply instantly, no libraries
- **Data packs**: optional `Boses_<Zone>/` folders with explanations for a specific zone, without bloating the core (ships with a Zul'Aman demo pack)
- Information strictly on demand (a click or a command): fully compatible with Midnight's addon policy
- Runs on Retail (**Midnight 12.1**) and Classic: **MoP Classic, TBC Classic and Classic Era** — same flavor list as its siblings

## Commands

```text
/boses               explains the targeted npc
/boses <id>          explains the npc with that id
/boses + text        adds a line with text to the targeted npc
/boses !             deletes the targeted npc explanation
/boses CANAL auto    group / raid / LFG output (default)
/boses CANAL guild   guild output
/boses CANAL local   local output (only your chat frame)
/boses ?             full command help
```

**Tip:** try it right now — `/boses 23574` explains Akil'zon (Zul'Aman), the demo entry translated to English, Spanish, French and German (sorry for the googled translations).

**Note:** explanations are stored **per character**. If you explain a boss yourself and want to share it, send me your saved `Boses.lua` and I'll add it to the next version. Most of the built-in information came from my own experience plus Wowhead and www.guiaswow.com — thanks to both.

Boses is the veteran of the family (2011), big sibling of **Nas** (automatic greetings) and **MarcoPolo** (merchant automation).

---

## En español

**La pelea del jefe, explicada en el chat justo antes del pull.**

Boses saca por chat explicaciones "telegráficas" de los encuentros de jefes, bajo demanda. De tanque, copiabas a mano unas explicaciones cortas antes de cada pull — Boses lo hace por ti: marca al jefe, ejecuta el comando y la explicación sale por el canal correcto. Sin temporizadores, sin automatización: solo conocimiento, cuando tú lo pides.

- Explica el NPC marcado en pocas líneas, escritas por humanos
- Tus notas por NPC en cualquier idioma (`/boses +` y `/boses !`): tienen prioridad sobre la base de datos incluida
- Incluye una base de datos en español cubriendo las heroicas de Cataclysm y jefes de banda de la era 2011-2013
- Elige el canal correcto automáticamente: **banda, grupo o chat de mazmorra aleatoria** — o fuerza hermandad / local
- Botón de minimapa: click izquierdo explica el marcado, click derecho abre Configuración, se arrastra (la posición se guarda)
- Panel en **Configuración → AddOns → Boses**, cambios al instante, sin librerías
- **Packs de datos**: carpetas opcionales (`Boses_<Zona>/`) con explicaciones de zonas concretas, sin engordar el core (incluye un pack de demostración de Zul'Aman)
- Funciona en Retail (**Midnight 12.1**) y Classic: **MoP Classic, TBC Classic y Era** — misma lista de flavors que sus hermanos

**Comandos:**

```text
/boses               explica el npc marcado
/boses <id>          explica el npc con ese id
/boses + texto       añade una línea con el texto al npc marcado
/boses !             borra la explicación del npc marcado
/boses CANAL auto    salida por grupo / banda / mazmorra aleatoria (por omisión)
/boses CANAL guild   salida por la hermandad
/boses CANAL local   salida local (solo tu ventana de chat)
/boses ?             ayuda completa
```

**Prueba:** `/boses 23574` (Akil'zon, Zul'Aman).

**Nota:** todo se guarda por personaje. Si describes jefes tú mismo y quieres compartirlo, mándame tu `Boses.lua` guardado y lo añado a la próxima versión. Boses significa "jefes" en gallego.