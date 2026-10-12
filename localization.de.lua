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
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de : Sprache der Erklärungen.";
    L["HELP9"] = "/bosses DEBUG on|off|vaciar : Debug-Protokoll (WTF-Datei); /bosses LOG [n] : letzte Zeilen anzeigen."
    L["HELP10"] = "/bosses CANAL frame : Alles im Alarmfenster (nur Sie).";
    L["CanalGrupo"] = "Gruppe/Raid aktuell";
    L["OutputNormal"] = "Normale Ausgabe (nur Sie)";
    L["CanalFrame"] = "Alarmfenster (nur Sie)";
    L["MenuObjetivo"] = "Ziel erklären";
    L["MenuConfig"] = "Einstellungen";
    L["BotonAlChat"] = "Zum Chat";
    L["FirmaCortesia"] = "Höflichkeitssignatur in gemeinsamen Kanälen";
    L["Cortesia"] = "Boss-Erklärung offered vom Addon Bosses";
    L["Encuentros"] = "Automatische Erklärung";
    L["AutoEnc"] = "Automatisch: beim Begegnungsstart";
    L["Depuracion"] = "Fehlersuche";
    L["Debug"] = "Debug-Protokoll (WTF-Datei, wird beim Ausloggen geschrieben)";
    L["VaciarLog"] = "Debug-Protokoll leeren";

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
