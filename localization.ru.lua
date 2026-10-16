-- Bosses
-- (c) Copyright 2011 By Philippe Mingo
-- Textos de interfaz en ruso (ruRU).
--
-- Traducción (2026) del asistente de código: paridad de claves con
-- localization.es.lua (a revisar por hablantes nativos).

local _, L = ...;

if GetLocale() == "ruRU" then
    L["Version"] = "Версия";
    L["Select output channel"] = "Выберите канал вывода";
    L["Auto"] = "Авто";
    L["Guild"] = "Гильдия";
    L["Language"] = "Язык";
    L["Spanish"] = "Испанский";
    L["English"] = "Английский";
    L["French"] = "Французский";
    L["German"] = "Немецкий";
    L["CanalGrupo"] = "Текущая группа/рейд";
    L["OutputNormal"] = "Обычный вывод (только вы)";
    L["CanalFrame"] = "Окно оповещений (только вы)";
    L["MenuObjetivo"] = "Объяснить цель";
    L["MenuConfig"] = "Настройки";
    L["BotonAlChat"] = "В чат";
    L["BotonEditar"] = "изменить";
    L["Data packs"] = "Пакеты данных";
    L["FirmaCortesia"] = "Подпись-вежливость в общих каналах";
    L["Cortesia"] = "Объяснение босса предоставлено аддоном Bosses";
    L["Encuentros"] = "Автообъяснение";
    L["AutoEnc"] = "Автоматически: при начале боя";
    L["Depuracion"] = "Отладка";
    L["Debug"] = "Журнал отладки (файл в WTF, записывается при выходе)";
    L["VaciarLog"] = "Очистить журнал отладки";

    -- Editor in-game de explicaciones (2026)
    L["Editor"] = "РЕДАКТОР";
    L["MenuEditor"] = "Редактор объяснений";
    L["EditorNombre"] = "Имя:";
    L["EditorSpell"] = "id заклинания:";
    L["EditorAnadir"] = "+ ссылка";
    L["EditorLinea"] = "+ строка";
    L["EditorCopiar"] = "копировать из пакета";
    L["EditorProbar"] = "проверить в окне";
    L["EditorQuitar"] = "убрать заметку";
    L["EditorFilaSubir"] = "строку вверх";
    L["EditorFilaBajar"] = "строку вниз";
    L["EditorFilaQuitar"] = "убрать строку";
    L["EditorDeNota"] = "личная заметка";
    L["EditorDePack"] = "копия пакета";
    L["EditorSinBase"] = "босс без базы";
    L["EditorSinTarget"] = "Выберите босса (или используйте /bosses EDITAR <id>), чтобы открыть редактор";

    -- Idiomas nuevos del editor web (RU/PT/ZH/KO)
    L["Russian"] = "Русский";
    L["Portuguese"] = "Португальский (Бразилия)";
    L["ChineseSimple"] = "Китайский (упрощённый)";
    L["Korean"] = "Корейский";

    L["HELP1"] = "/bosses : Объясняет NPC, выбранного целью.";
    L["HELP2"] = "/bosses id : Объясняет NPC с этим id.";
    L["HELP3"] = "/bosses + Текст : Добавляет объяснение Текст к NPC, выбранному целью.";
    L["HELP4"] = "/bosses ! : Удаляет объяснение NPC, выбранного целью.";
    L["HELP5"] = "/bosses CANAL AUTO : Выводит информацию в канал по умолчанию.";
    L["HELP6"] = "/bosses CANAL LOCAL : Выводит информацию локально.";
    L["HELP7"] = "/bosses CANAL GUILD : Выводит информацию в канал гильдии.";
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko : Язык объяснений.";
    L["HELP9"] = "/bosses DEBUG on|off|очистить : журнал отладки (файл в WTF); /bosses LOG [n] : показывает последние строки.";
    L["HELP10"] = "/bosses CANAL FRAME : Всё в окно оповещений (только вы).";
    L["HELP11"] = "/bosses EDITAR [id] : Открывает редактор объяснений (UI для ваших собственных заметок).";

    L[": This NPC is not described."] = ": Этот NPC не описан.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99Клик слева.|r - Объясняет выбранного NPC.";
    L["loaded"] = " загружена";
end