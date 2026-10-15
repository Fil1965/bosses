[English](README.md) · [Español](README.es.md) · [Français](README.fr.md) · **Deutsch** · [Português](README.pt.md) · [中文](README.zh.md)

**Kennen Sie den Kampf, bevor Sie ihn beginnen. Überleben Sie ihn während.**

Bosses erklärt Ihnen, wie ein Bosskampf funktioniert – in wenigen präzisen Zeilen, zum richtigen Zeitpunkt und über den richtigen Kanal. Markieren Sie den Boss (oder lassen Sie das Addon den Kampfbeginn erkennen) und erhalten Sie die taktische Auskunft: was der Tank beachten muss, wer was ausweichen muss, was unterbrochen werden muss, was man niemals blockieren sollte. Es handelt sich um von Menschen verfasste, im Kampf erprobte Kenntnisse, nicht um eine Wiki-Zusammenstellung: Jeder Raid, jede Dungeon und Welt-Bosskampf enthält sorgfältig erstellte Taktiken.

## Abdeckung — alle World-of-Warcraft-Erweiterungen

**12 Datensets · ~1.590 Boss-Einträge · Spanisch / Englisch / Französisch / Deutsch / Portugiesisch (Brasilien) / Chinesisch (vereinfacht).** Von Molten Core bis Midnight und allem dazwischen:

| Erweiterung | Packs | Bosse | Sprachen |
|---|---|---|---|
| Vanilla | Molten Core, BWL, AQ20/40, Naxxramas, Onyxia + the classic dungeons (Gnomeregan, Scarlet Monastery, Maraudon, Uldaman, Zul'Farrak, Sunken Temple SoD, Stratholme, Dire Maul, Scholomance, Zul'Gurub…) | 334 | EN · ES · FR · DE · PT · ZH |
| The Burning Crusade | Karazhan to Sunwell, Heroic dungeons, Zul'Aman | 130 | EN · ES · FR · DE · PT · ZH |
| Wrath of the Lich King | Naxxramas, Ulduar, ICC + 11 dungeons, Onyxia, Trial of the Champion | 173 | EN · ES · FR · DE · PT · ZH |
| Cataclysm | Firelands, Dragon Soul, BWD + dungeons, ZA/ZG remakes | 113 | EN · ES · FR · DE · PT · ZH |
| Mists of Pandaria | All 5 raids, 9 dungeons, world bosses | 134 | EN · ES · FR · DE · PT · ZH |
| Warlords of Draenor | Highmaul, Blackrock Foundry, Hellfire Citadel + 8 dungeons, Tanaan elites | 91 | EN · ES · FR · DE · PT · ZH |
| Legion | All 5 raids, 12 dungeons, 20 world bosses | 147 | EN · ES · FR · DE · PT · ZH |
| Battle for Azeroth | Uldir → Ny'alotha, 12 dungeons, warfront bosses | 133 | EN · ES · FR · DE · PT · ZH |
| Shadowlands | Castle Nathria, Sanctum, Sepulcher + 9 dungeons + Tazavesh + world bosses | 90 | EN · ES · FR · DE · PT · ZH |
| Dragonflight | Aberrus, Amirdrassil, Vault of the Incarnates + 9 dungeons + world bosses | 92 | EN · ES · FR · DE · PT · ZH |
| The War Within | The raids and dungeons of Khaz Algar | 80 | EN · ES · FR · DE · PT · ZH |
| Midnight | Current-expansion raids, dungeons, lairs and world bosses | 71 | EN · ES · FR · DE · PT · ZH |

Jedes der zwölf oben genannten Pakete liefert mit **allen sechs Sprachen vollständig**; eine Locale wird erst dann im Spiel aufgelistet, wenn alle Einträge dieses Pakets fertig sind, sodass Sie sehen, was funktioniert.

## Höhepunkte

- **Erklärt das anvisierte NPC** in wenigen prägnanten Zeilen – entweder mit einem Befehl oder vollständig automatisch, sobald jede Begegnung beginnt (keine Timer, keine Automatisierung des Kampfes; der Automodus kann deaktiviert werden)
- **Von Hand geschriebene Taktiken** mit verifizierten Zauberlinks: jeder Punkt nennt die tatsächliche Fähigkeit, die direkt in Ihren Chat eingefügt wird
- **Ihr eigenes Warnfenster**: während des Kampfes blockiert das Spiel Addon-Chat, sodass die vollständige Erklärung auf Ihrem Bildschirm angezeigt wird – verschiebbar, schließbar (X / ESC), automatisch versteckt nach 15 Sekunden nach dem Kampf und außerhalb des Kampfes ein "Zum Chat"-Button teilt es mit der Gruppe
- **Zaubernamen in der Sprache des Lesers**, wobei die Informationen live aus der Spiel-Datenbank abgerufen werden (der Tooltip zeigt die Fähigkeit beim Hovern an)
- **Intelligente Kanalauswahl**: automatische Kommunikation im Raid-/Party-/LFG-Instanz-Chat – oder Erzwingen von Kommunikation in der Gilde / lokal / nur im Frame
- **Minimapsymbol**: innerhalb einer Instanz öffnet es ein Dropdown mit jedem Boss dieser Zone; außerhalb erklärt es, welches Ziel Sie haben
- **Ihre Notizen überschreiben die Datenbank**: `/bosses + text` fügt Ihre eigene Zeile zu jedem NPC in jeder Sprache hinzu, pro Charakter
- **Bearbeiten Sie jede Erklärung im Spiel**: der **Bearbeiten**-Button des Warnfensters (oder `/bosses EDITAR [id]`) öffnet den Notiz-Editor — Zauber-Links und Zeilen hinzufügen, umordnen oder entfernen und das Ergebnis im Fenster testen
- Optionaler **Debug-Modus** schreibt ein Erkennungsprotokoll in Ihren `WTF`-Ordner, so dass ein "stummer" Boss leicht zu melden ist

## Befehle

```text
/bosses               erklärt das anvisierte NPC
/bosses <id>          erklärt das NPC mit dieser id
/bosses + Text        fügt dem anvisierten NPC Ihre eigene Zeile hinzu
/bosses !             entfernt die Erklärung des anvisierten NPCs
/bosses CANAL auto    Ausgabe Raid / Gruppe / LFG (Standard)
/bosses CANAL guild   Ausgabe an die Gilde
/bosses CANAL local   nur Ihr Chatfenster
/bosses CANAL frame   nur Ihr Alarmfenster (private Briefings)
/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko   Sprache der Erklärung (auto = folgt Ihrem Spiel)
/bosses DEBUG on|off  Erkennungsprotokoll in WTF; /bosses log zeigt es
/bosses ?             volle Hilfe
```

**Sofort testen:** `/bosses 23576` — Nalorakk, Zul'Aman.

## Weitere Ressourcen

Das zugehörige **GitHub-Projekt** enthält den vollständigen Changelog, die Abdeckungslisten und zusätzliche Dokumentation: [github.com/Fil1965/bosses](https://github.com/Fil1965/bosses). Fehlt ein Boss, den Sie erklärt haben möchten? Alles ist pro Charakter gespeichert — senden Sie mir Ihre gespeicherte `Bosses.lua`-Datei und Ihr Wissen wird in der nächsten Version enthalten sein.

## Gut zu wissen

- Geboren als *Boses* im Jahr 2011; der Veteran der Familie: probieren Sie auch **Nas** (automatische Begrüßungen) und **MarcoPolo** (Automatisierung für Händler)
- Läuft auf **Retail (Midnight 12.1)** und **Classic**: MoP Classic, TBC Classic und Classic Era
- Das Repository enthält auch einen lokalen **Web-Editor** zum Nachziehen der Datenpakete (Entwicklerwerkzeug; lokal mit `npm start`)
- Voll in Übereinstimmung mit der Add-on-Richtlinie von Modern: Informationen unter Ihrer Kontrolle, niemals Kampfautomatisierung
- **Upgrade vom alten Boses-Addon?** Kopieren Sie `WTF\Account\<account>\SavedVariables\Boses.lua` → `Bosses.lua` (plus die per-Charakter-Kopie), laden Sie neu, und Ihre Notizen, Einstellungen und Ihr Debug-Protokoll werden automatisch übertragen
