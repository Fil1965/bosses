-- Bosses
-- (c) Copyright 2011 By Philippe Mingo
-- Textos de interfaz en portugués (Brasil).
--
-- Traducción (2026) con el Ollama local del propietario (translategemma),
-- revisada a mano: paridad de claves con localization.es.lua.

local _, L = ...;

if GetLocale() == "ptBR" then
    L["Version"] = "Versão";
    L["Select output channel"] = "Selecione o canal de saída";
    L["Auto"] = "Automático";
    L["Guild"] = "Guilda";
    L["Language"] = "Idioma";
    L["Spanish"] = "Espanhol";
    L["English"] = "Inglês";
    L["French"] = "Francês";
    L["German"] = "Alemão";
    L["CanalGrupo"] = "Grupo/Raid atual";
    L["OutputNormal"] = "Saída normal (apenas você)";
    L["CanalFrame"] = "Frame de alerta (apenas você)";
    L["MenuObjetivo"] = "Explicar alvo";
    L["MenuConfig"] = "Configuração";
    L["BotonAlChat"] = "Para o chat";
    L["BotonAlGrupo"] = "Ao grupo";
    L["EnviaAlCanal"] = "Envia a explicação para o chat %s";
    L["BotonEditar"] = "editar";
    L["Data packs"] = "Pacotes de dados";
    L["FirmaCortesia"] = "Assinatura de cortesia em canais compartilhados";
    L["Cortesia"] = "Explicação por cortesia do addon Bosses";
    L["Encuentros"] = "Explicação automática";
    L["AutoEnc"] = "Automático: no início do encontro";
    L["Depuracion"] = "Depuração";
    L["Debug"] = "Registro de depuração (arquivo no WTF, é gravado ao sair)";
    L["VaciarLog"] = "Limpar registro de depuração";

    -- Editor in-game de explicaciones (2026)
    L["Editor"] = "EDITOR";
    L["MenuEditor"] = "Editor de explicações";
    L["EditorNombre"] = "Nome:";
    L["EditorSpell"] = "id de spell:";
    L["EditorAnadir"] = "+ link";
    L["EditorLinea"] = "+ linha";
    L["EditorCopiar"] = "copiar do pack";
    L["EditorProbar"] = "testar no frame";
    L["EditorQuitar"] = "remover nota";
    L["EditorFilaSubir"] = "subir linha";
    L["EditorFilaBajar"] = "baixar linha";
    L["EditorFilaQuitar"] = "remover linha";
    L["EditorDeNota"] = "nota pessoal";
    L["EditorDePack"] = "cópia do pack";
    L["EditorSinBase"] = "chefe sem base";
    L["EditorSinTarget"] = "Marque o chefe (ou use /bosses EDITAR <id>) para abrir o editor";

    -- Idiomas nuevos del editor web (RU/PT/ZH/KO)
    L["Russian"] = "Russo";
    L["Portuguese"] = "Português (Brasil)";
    L["ChineseSimple"] = "Chinês (simplificado)";
    L["Korean"] = "Coreano";

    L["HELP1"] = "/bosses : Explica o npc no alvo.";
    L["HELP2"] = "/bosses id : Explica o npc do id.";
    L["HELP3"] = "/bosses + Texto : Adiciona a explicação Texto ao npc no alvo.";
    L["HELP4"] = "/bosses ! : Remove a explicação do npc no alvo.";
    L["HELP5"] = "/bosses CANAL AUTO : Exibe a informação pelo canal padrão.";
    L["HELP6"] = "/bosses CANAL LOCAL : Exibe a informação localmente.";
    L["HELP7"] = "/bosses CANAL GUILD : Exibe a informação pelo canal da guilda.";
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko : Idioma das explicações.";
    L["HELP9"] = "/bosses DEBUG on|off|limpar|clear : registro de depuração (arquivo em WTF); /bosses LOG [n] : exibe as últimas linhas.";
    L["HELP10"] = "/bosses CANAL FRAME : Tudo no frame de alerta (apenas para você).";
    L["HELP11"] = "/bosses EDITAR [id] : Abre o editor de explicações (a UI para suas próprias notas).";

    L[": This NPC is not described."] = ": Este NPC não está descrito.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99Clique esquerdo.|r - Explica o NPC selecionado.";
    L["loaded"] = " carregada";

    -- Frame de alerta: melhorias 1.0.18
    L["Alert frame"] = "Frame de alerta";
    L["Frame max height"] = "Altura máx. do frame (fração do ecrã, 0 = sem limite)";
    L["Frame opacity"] = "Opacidade do fundo do frame";
    L["Always visible"] = "Manter o frame visível (não esconder aos 15 s)";
    L["Font scale"] = "Escala do tipo de letra do corpo";
    L["Lock position"] = "Bloquear posição (arrastar desativado)";
    L["Start collapsed"] = "Começar colapsado (só cabeçalho)";
    L["Auto height"] = "Altura automática (o frame cresce com o texto)";
    L["Collapse"] = "Colapsar";
    L["Expand"] = "Expandir";
    L["Lock"] = "Bloquear";
    L["Unlock"] = "Desbloquear";
    L["Target boss"] = "Alvo: chefe";
    L["Previous"] = "Anterior";
    L["Next"] = "Seguinte";
end