-- Bosses
-- (c) Copyright 2011 By Philippe Mingo
-- Textos de interfaz en español.
--
-- NOTA (2026-09): los datos de encuentros (jefes) que vivieron aquí
-- migraron al pack Bosses_Cata (formato multilenguaje ES/EN). Backup del
-- fichero original de 2011: _backups/localization.es.lua.2011.bak

local _, L = ...;

if GetLocale() == "esES" or GetLocale() == "esMX" then
    L["Version"] = "Versión";
    L["Select output channel"] = "Selecciona el canal de salida";
    L["Auto"] = "Automático";
    L["Guild"] = "Guild";
    L["Language"] = "Idioma";
    L["Spanish"] = "Español";
    L["English"] = "Inglés";
    L["French"] = "Francés";
    L["German"] = "Alemán";
    L["CanalGrupo"] = "Grupo/Banda actual";
    L["OutputNormal"] = "Output normal (solo tú)";
    L["CanalFrame"] = "Frame de alerta (solo tú)";
    L["MenuObjetivo"] = "Explicar objetivo";
    L["MenuConfig"] = "Configuración";
    L["BotonAlChat"] = "Al chat";
    L["Data packs"] = "Packs de datos";
    L["FirmaCortesia"] = "Firma de cortesía en canales compartidos";
    L["Cortesia"] = "Explicación cortesía del addon Bosses";
    L["Encuentros"] = "Explicación automática";
    L["AutoEnc"] = "Automático: al empezar el encuentro";
    L["Depuracion"] = "Depuración";
    L["Debug"] = "Registro de depuración (fichero en WTF, se escribe al salir)";
    L["VaciarLog"] = "Vaciar registro de depuración";

    L["HELP1"] = "/bosses : Explica el npc en target.";
    L["HELP2"] = "/bosses id : Explica el npc del id.";
    L["HELP3"] = "/bosses + Texto : Añade la explicación Texto al npc en target.";
    L["HELP4"] = "/bosses ! : Elimina la explicación del npc en target.";
    L["HELP5"] = "/bosses CANAL AUTO : Saca la información por el canal por omisión.";
    L["HELP6"] = "/bosses CANAL LOCAL : Saca la información localmente.";
    L["HELP7"] = "/bosses CANAL GUILD : Saca la información por el canal de la guild.";
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de : Idioma de las explicaciones.";
    L["HELP9"] = "/bosses DEBUG on|off|vaciar : registro de depuración (fichero en WTF); /bosses LOG [n] : muestra las últimas líneas.";
    L["HELP10"] = "/bosses CANAL FRAME : Todo en el frame de alerta (solo tú).";

    L[": This NPC is not described."] = ": Este NPC no está descrito.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99Click izdo.|r - Explica el NPC seleccionado.";
    L["loaded"] = " cargada";
end
