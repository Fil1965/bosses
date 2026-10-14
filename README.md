**English** · [Español](README.es.md)

**Know the fight before the pull. Survive it during.**

Bosses tells you how a boss fight works — in a few sharp lines, at the right moment, on the right channel. Mark the boss (or let the addon spot the encounter starting) and get the tactical gist: what the tank must watch, who needs to dodge what, what to interrupt, what to never stand in. It is human-written, battle-tested knowledge, not a wiki dump: every raid, dungeon and world boss carries hand-curated tactics.

## Coverage — every World of Warcraft expansion

**12 data packs · ~1,590 boss entries · Spanish / English / French / German.** From Molten Core to Midnight and everything in between:

| Expansion | Packs | Bosses | Languages |
|---|---|---|---|
| Vanilla | Molten Core, BWL, AQ20/40, Naxxramas, Onyxia + the classic dungeons (Gnomeregan, Scarlet Monastery, Maraudon, Uldaman, Zul'Farrak, Sunken Temple SoD, Stratholme, Dire Maul, Scholomance, Zul'Gurub…) | 334 | EN · ES · FR · DE |
| The Burning Crusade | Karazhan to Sunwell, Heroic dungeons, Zul'Aman | 130 | EN · ES · FR · DE |
| Wrath of the Lich King | Naxxramas, Ulduar, ICC + 11 dungeons, Onyxia, Trial of the Champion | 173 | EN (ES/FR/DE in progress) |
| Cataclysm | Firelands, Dragon Soul, BWD + dungeons, ZA/ZG remakes | 113 | EN · ES · FR · DE |
| Mists of Pandaria | All 5 raids, 9 dungeons, world bosses | 134 | EN · ES · FR |
| Warlords of Draenor | Highmaul, Blackrock Foundry, Hellfire Citadel + 8 dungeons, Tanaan elites | 91 | EN (rest in progress) |
| Legion | All 5 raids, 12 dungeons, 20 world bosses | 147 | EN (rest in progress) |
| Battle for Azeroth | Uldir → Ny'alotha, 12 dungeons, warfront bosses | 133 | EN · ES · FR · DE |
| Shadowlands | Castle Nathria, Sanctum, Sepulcher + 9 dungeons + Tazavesh + world bosses | 90 | EN (rest in progress) |
| Dragonflight | Aberrus, Amirdrassil, Vault of the Incarnates + 9 dungeons + world bosses | 92 | EN (rest in progress) |
| The War Within | The raids and dungeons of Khaz Algar | 80 | EN · ES · FR · DE |
| Midnight | Current-expansion raids, dungeons, lairs and world bosses | 71 | EN · ES · FR · DE |

The addon ships the language packs that are **complete**; a locale is only listed in-game once every entry of that pack is done, so what you see is what works. The remaining locales are being filled pack by pack — **English is always there** from day one.

## Highlights

- **Explains the targeted NPC** in a few telegraphic lines — one command, or fully automatic as each encounter starts (no timers, no combat automation; automatic mode can be turned off)
- **Hand-written tactics** with verified spell links: each bullet names the actual ability, clicked straight into your chat
- **Your own alert frame**: during combat the game blocks addon chat, so the full explanation lives on your screen — draggable, closable (X / ESC), auto-hides 15s after the fight, and out of combat a **"To chat"** button shares it with the group
- **Spell names in the reader's own language**, resolved live from the game database (the tooltip shows the ability on hover)
- **Smart channel choice**: raid / party / LFG instance chat automatically — or force guild / local / frame-only
- **Minimap button**: inside an instance it opens a dropdown with every boss of that zone; outside, it explains your target
- **Your notes override the database**: `/bosses + text` adds your own line to any NPC, in any language, per character
- Settings panel in **Settings → AddOns → Bosses** — changes apply instantly, no external libraries
- Optional **debug mode** writes a detection log to your `WTF` folder, so a silent boss is easy to report

## Commands

```text
/bosses               explains the targeted NPC
/bosses <id>          explains the NPC with that id
/bosses + text        adds your own line to the targeted NPC
/bosses !             removes the targeted NPC explanation
/bosses CANAL auto    raid / party / LFG output (default)
/bosses CANAL guild   guild output
/bosses CANAL local   only your chat frame
/bosses CANAL frame   only your alert frame (private briefings)
/bosses IDIOMA es|en|fr|de   explanation language (auto = follows your game)
/bosses DEBUG on|off  detection log to WTF; /bosses log displays it
/bosses ?             full help
```

**Try it now:** `/bosses 23576` — Nalorakk, Zul'Aman.

## More resources

The companion **GitHub project** carries the full changelog, coverage checklists and extra documentation: [github.com/Fil1965/bosses](https://github.com/Fil1965/bosses). Missing a boss you want explained? Everything is stored per character — send me your saved `Bosses.lua` and your knowledge rides in the next version.

## Good to know

- Born as *Boses* in 2011; the veteran of the family: also try **Nas** (automatic greetings) and **MarcoPolo** (merchant automation)
- Runs on **retail (Midnight 12.1)** and **Classic**: MoP Classic, TBC Classic and Classic Era
- Fully in line with Modern's addon policy: information under your control, never combat automation
- **Upgrading from the old Boses addon?** Copy `WTF\Account\<account>\SavedVariables\Boses.lua` → `Bosses.lua` (plus the per-character copy), reload, and your notes, settings and debug log carry over automatically