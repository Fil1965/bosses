-- Bosses
-- (c) Copyright 2011 By Philippe Mingo
-- Version en français

local _, L = ...;

if GetLocale() == "frFR" then
    L["Version"] = "Version";

    L["HELP1"] = "/bosses : Explique le npc ciblé.";
    L["HELP2"] = "/bosses id : Explique le id.";
    L["HELP3"] = "/bosses + text : Ajoute du texte à l'explication du npc.";
    L["HELP4"] = "/bosses ! : Supprime l'explication du npc.";
    L["HELP5"] = "/bosses CANAL auto : Utilise la canal standard.";
    L["HELP6"] = "/bosses CANAL local : Utilise le canal local.";
    L["HELP7"] = "/bosses CANAL guild : Utilise la canal de la guilde.";
    L["HELP8"] = "/bosses IDIOMA auto|es|en : Langue des explications.";
    L["HELP9"] = "/bosses DEBUG on|off|vaciar : journal de débogage (fichier WTF); /bosses LOG [n] : affiche les dernières lignes.";
    L["CanalGrupo"] = "Groupe/Raid actuel";
    L["OutputNormal"] = "Sortie normale (seulement vous)";
    L["FirmaCortesia"] = "Signature de courtoisie sur les canaux partagés";
    L["Cortesia"] = "Explication du boss offerte par l'addon Bosses";
    L["Encuentros"] = "Explication automatique";
    L["AutoEnc"] = "Automatique : au début du combat";
    L["Depuracion"] = "Débogage";
    L["Debug"] = "Journal de débogage (fichier WTF, écrit à la déconnexion)";
    L["VaciarLog"] = "Vider le journal de débogage";

    -- Claves completadas para estar a la par con EN/ES (2026)
    L["Select output channel"] = "Sélectionnez le canal de sortie";
    L["Auto"] = "Automatique";
    L["Guild"] = "Guilde";
    L["Language"] = "Langue";
    L["Spanish"] = "Espagnol";
    L["English"] = "Anglais";
    L["Data packs"] = "Packs de données";
    L[": This NPC is not described."] = " : Ce PNJ n'est pas décrit.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99Clic gauche|r - Explique le PNJ ciblé";
    L["loaded"] = " chargée";
end
