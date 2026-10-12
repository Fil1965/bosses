-- Bosses
-- (c) Copyright 2011 By Philippe Mingo

local _, L = ...;
local _, Bosses = ...;

if GetLocale() == "enUS" then
    L["HELP1"] = "/bosses : Explains the targeted npc";
    L["HELP2"] = "/bosses id : Explains npc id";
    L["HELP3"] = "/bosses + text : Adds text to the npc explanation";
    L["HELP4"] = "/bosses ! : Deletes npc explanation";
    L["HELP5"] = "/bosses CANAL auto : Uses group or raid output";
    L["HELP6"] = "/bosses CANAL local : Uses local output";
    L["HELP7"] = "/bosses CANAL guild : Uses guild output";
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de : Language of the explanations";
    L["HELP9"] = "/bosses DEBUG on|off|vaciar : debug log (WTF file); /bosses LOG [n] : show last lines";
    L["HELP10"] = "/bosses CANAL frame : Everything in the alert frame (only you)";
    L["Language"] = "Language";
    L["Spanish"] = "Spanish";
    L["English"] = "English";
    L["French"] = "French";
    L["German"] = "German";
    L["CanalGrupo"] = "Current group/raid";
    L["OutputNormal"] = "Normal output (only you)";
    L["CanalFrame"] = "Alert frame (only you)";
    L["MenuObjetivo"] = "Explain target";
    L["MenuConfig"] = "Settings";
    L["BotonAlChat"] = "To chat";
    L["FirmaCortesia"] = "Courtesy signature on shared channels";
    L["Cortesia"] = "Boss explanation courtesy of the Bosses addon";
    L["Encuentros"] = "Auto explanation";
    L["AutoEnc"] = "Automatic: on encounter start";
    L["Depuracion"] = "Debug";
    L["Debug"] = "Debug log (WTF file, written on logout)";
    L["VaciarLog"] = "Empty debug log";

    -- Paridad de claves con es/fr/de: todas las claves de interfaz
    -- explícitas también aquí (2026), aunque el fallback las cubriría.
    L["Version"] = "Version";
    L["Select output channel"] = "Select output channel";
    L["Guild"] = "Guild";
    L["Auto"] = "Auto";
    L[": This NPC is not described."] = ": This NPC is not described.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99Left click|r - Explains target NPC";
    L["Data packs"] = "Data packs";
    L["loaded"] = " loaded";
end

-- Textos de la firma por idioma de EXPLICACIÓN (los elige textoCortesia()
-- según BossesConfig.IDIOMA). FUERA del condicional enUS: deben existir en
-- todos los clientes.
L["CortesiaES"] = "Explicación cortesía del addon Bosses";
L["CortesiaEN"] = "Boss explanation courtesy of the Bosses addon";
L["CortesiaFR"] = "Explication du boss offerte par l'addon Bosses";
L["CortesiaDE"] = "Boss-Erklärung angeboten vom Addon Bosses";

local function defaultFunc(L, key)
    -- Cuando no exista localización devolvemos la cadena por defecto que está en inglés
    return key;
end

setmetatable(L, { __index = defaultFunc });
setmetatable(Bosses, { __index = defaultFunc });
