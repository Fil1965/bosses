-- Bosses
-- (c) Copyright 2011 By Philippe Mingo
-- Sorry for the "googled" german translation

local _, L = ...;

if GetLocale() == "deDE" then
    L["Version"] = "Version";

    L["HELP1"] = "/bosses : Erklärt die gezielte npc";
    L["HELP2"] = "/bosses id : Erklärt npc id";
    L["HELP3"] = "/bosses + text : Fügt Text an den NPC Erklärung";
    L["HELP4"] = "/bosses ! : Löscht npc Erklärung";
    L["HELP5"] = "/bosses CANAL auto : Verwendet Gruppe oder Raid-Ausgang";
    L["HELP6"] = "/bosses CANAL local : Verwendet lokalen Ausgang";
    L["HELP7"] = "/bosses CANAL guild : Verwendet Gilde Ausgang";
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko : Sprache der Erklärungen.";
    L["HELP9"] = "/bosses DEBUG on|off|vaciar : Debug-Protokoll (WTF-Datei); /bosses LOG [n] : letzte Zeilen anzeigen."
    L["HELP10"] = "/bosses CANAL frame : Alles im Alarmfenster (nur Sie).";
    L["HELP11"] = "/bosses EDITAR [id] : Öffnet den Erklärungs-Editor (die Oberfläche für deine eigenen Notizen).";
    L["CanalGrupo"] = "Gruppe/Raid aktuell";
    L["OutputNormal"] = "Normale Ausgabe (nur Sie)";
    L["CanalFrame"] = "Alarmfenster (nur Sie)";
    L["MenuObjetivo"] = "Ziel erklären";
    L["MenuConfig"] = "Einstellungen";
    L["BotonAlChat"] = "Zum Chat";
    L["BotonEditar"] = "bearbeiten";
    L["FirmaCortesia"] = "Höflichkeitssignatur in gemeinsamen Kanälen";
    L["Cortesia"] = "Boss-Erklärung angeboten vom Addon Bosses";
    L["Encuentros"] = "Automatische Erklärung";
    L["AutoEnc"] = "Automatisch: beim Begegnungsstart";
    L["Depuracion"] = "Fehlersuche";
    L["Debug"] = "Debug-Protokoll (WTF-Datei, wird beim Ausloggen geschrieben)";
    L["VaciarLog"] = "Debug-Protokoll leeren";

    -- Erklärungs-Editor (2026)
    L["Editor"] = "EDITOR";
    L["MenuEditor"] = "Erklärungs-Editor";
    L["EditorNombre"] = "Name:";
    L["EditorSpell"] = "Zauber-ID:";
    L["EditorAnadir"] = "+ Link";
    L["EditorLinea"] = "+ Zeile";
    L["EditorCopiar"] = "aus Pack übernehmen";
    L["EditorProbar"] = "im Frame testen";
    L["EditorQuitar"] = "Notiz entfernen";
    L["EditorFilaSubir"] = "Zeile nach oben";
    L["EditorFilaBajar"] = "Zeile nach unten";
    L["EditorFilaQuitar"] = "Zeile entfernen";
    L["EditorDeNota"] = "persönliche Notiz";
    L["EditorDePack"] = "Pack-Kopie";
    L["EditorSinBase"] = "Boss ohne Basis";
    L["EditorSinTarget"] = "Boss anvisieren (oder /bosses EDITAR <id>), um den Editor zu öffnen";

    -- Idiomas nuevos del editor web (RU/PT/ZH/KO)
    L["Russian"] = "Russisch";
    L["Portuguese"] = "Portugiesisch (Brasilien)";
    L["ChineseSimple"] = "Chinesisch (vereinfacht)";
    L["Korean"] = "Koreanisch";

    -- Claves completadas para estar a la par con EN/ES (2026)
    L["Select output channel"] = "Ausgabekanal wählen";
    L["Auto"] = "Automatisch";
    L["Guild"] = "Gilde";
    L["Language"] = "Sprache";
    L["Spanish"] = "Spanisch";
    L["English"] = "Englisch";
    L["French"] = "Französisch";
    L["German"] = "Deutsch";
    L["Data packs"] = "Datenpakete";
    L[": This NPC is not described."] = ": Dieser NPC ist nicht beschrieben.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99Linksklick|r - Erklärt das anvisierte NPC";
    L["loaded"] = " geladen";
end
