-- Boses
-- (c) Copyright 2011 By Philippe Mingo

local _, L = ...;
local _, Boses = ...;

if GetLocale() == "enUS" then

    L["HELP1"] = "/boses : Explains the targeted npc";
    L["HELP2"] = "/boses id : Explains npc id";
    L["HELP3"] = "/boses + text : Adds text to the npc explanation";
    L["HELP4"] = "/boses ! : Deletes npc explanation";
    L["HELP5"] = "/boses CANAL auto : Uses group or raid output";
    L["HELP6"] = "/boses CANAL local : Uses local output";
    L["HELP7"] = "/boses CANAL guild : Uses guild output";
    L["HELP8"] = "/boses IDIOMA auto|es|en : Language of the explanations";
    L["Language"] = "Language";
    L["Spanish"] = "Spanish";
    L["English"] = "English";
    L["CanalGrupo"] = "Current group/raid";
    L["OutputNormal"] = "Normal output (only you)";
    L["FirmaCortesia"] = "Courtesy signature on shared channels";
    L["Cortesia"] = "Boss explanation courtesy of the Boses addon";
    L["Encuentros"] = "Auto explanation";
    L["AutoEnc"] = "Automatic: on encounter start";

end

-- Textos de la firma por idioma de EXPLICACIÓN (los elige textoCortesia()
-- según BosesConfig.IDIOMA). FUERA del condicional enUS: deben existir en
-- todos los clientes.
L["CortesiaES"] = "Explicación cortesía del addon Boses";
L["CortesiaEN"] = "Boss explanation courtesy of the Boses addon";

local function defaultFunc(L, key)
    -- Cuando no exista localización devolvemos la cadena por defecto que está en inglés
    return key;
end

setmetatable(L, {__index=defaultFunc});
setmetatable(Boses, {__index=defaultFunc});