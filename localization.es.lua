-- Boses
-- (c) Copyright 2011 By Philippe Mingo
-- Textos de interfaz en español.
--
-- NOTA (2026-09): los datos de encuentros (jefes) que vivieron aquí
-- migraron al pack Boses_Cata (formato multilenguaje ES/EN). Backup del
-- fichero original de 2011: _backups/localization.es.lua.2011.bak

local _, L = ...;

if GetLocale() == "esES" or GetLocale() == "esMX" then

    L["Version"] = "Versión";
    L["Select output channel"] = "Selecciona el canal de salida";
    L["Configuration"] = "Configuración";
    L["Auto"] = "Automático";
    L["Guild"] = "Guild";
    L["Private"] = "Privado";
    L["Language"] = "Idioma";
    L["Spanish"] = "Español";
    L["English"] = "Inglés";
    L["CanalGrupo"] = "Grupo/Banda actual";
    L["OutputNormal"] = "Output normal (solo tú)";
    L["FirmaCortesia"] = "Firma de cortesía en canales compartidos";
    L["Cortesia"] = "Explicación cortesía del addon Boses";
    L["Encuentros"] = "Explicación automática";
    L["AutoEnc"] = "Automático: al empezar el encuentro";

    L["HELP1"] = "/boses : Explica el npc en target.";
    L["HELP2"] = "/boses id : Explica el npc del id.";
    L["HELP3"] = "/boses + Texto : Añade la explicación Texto al npc en target.";
    L["HELP4"] = "/boses ! : Elimina la explicación del npc en target.";
    L["HELP5"] = "/boses CANAL AUTO : Saca la información por el canal por omisión.";
    L["HELP6"] = "/boses CANAL LOCAL : Saca la información localmente.";
    L["HELP7"] = "/boses CANAL GUILD : Saca la información por el canal de la guild.";
    L["HELP8"] = "/boses IDIOMA auto|es|en : Idioma de las explicaciones.";

    L[": This NPC is not described."] = ": Este NPC no está descrito.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99Click izdo.|r - Explica el NPC seleccionado.";

end