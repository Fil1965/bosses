-- Boses
-- (c) Copyright 2011 By Philippe Mingo
-- Version en français

local _, L = ...;
local _, Boses = ...;

if GetLocale() == "frFR" then
    L["Version"] = "Version";

    L["HELP1"] = "/boses : Explique le npc ciblé.";
    L["HELP2"] = "/boses id : Explique le id.";
    L["HELP3"] = "/boses + text : Ajoute du texte à l'explication du npc.";
    L["HELP4"] = "/boses ! : Supprime l'explication du npc.";
    L["HELP5"] = "/boses CANAL auto : Utilise la canal standard.";
    L["HELP6"] = "/boses CANAL local : Utilise le canal local.";
    L["HELP7"] = "/boses CANAL guild : Utilise la canal de la guilde.";
    L["HELP8"] = "/boses IDIOMA auto|es|en : Langue des explications.";
    L["CanalGrupo"] = "Groupe/Raid actuel";
    L["OutputNormal"] = "Sortie normale (seulement vous)";
    L["FirmaCortesia"] = "Signature de courtoisie sur les canaux partagés";
    L["Cortesia"] = "Explication du boss offerte par l'addon Boses";
    L["Encuentros"] = "Explication automatique";
    L["AutoEnc"] = "Automatique : au début du combat";

end