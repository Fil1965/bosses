-- Bosses
-- (c) Copyright 2011 By Philippe Mingo
-- Textos de interfaz en chino (simplificado).
--
-- Traducción (2026) con el Ollama local del propietario (translategemma),
-- revisada a mano: paridad de claves con localization.es.lua.

local _, L = ...;

if GetLocale() == "zhCN" then
    L["Version"] = "版本";
    L["Select output channel"] = "选择输出频道";
    L["Auto"] = "自动";
    L["Guild"] = "公会";
    L["Language"] = "语言";
    L["Spanish"] = "西班牙语";
    L["English"] = "英语";
    L["French"] = "法语";
    L["German"] = "德语";
    L["CanalGrupo"] = "当前小队/团队";
    L["OutputNormal"] = "正常输出（仅你）";
    L["CanalFrame"] = "警报框（仅你）";
    L["MenuObjetivo"] = "说明目标";
    L["MenuConfig"] = "设置";
    L["BotonAlChat"] = "发送到聊天";
    L["BotonAlGrupo"] = "发送到团队";
    L["EnviaAlCanal"] = "将说明发送到 %s 聊天频道";
    L["BotonEditar"] = "编辑";
    L["Data packs"] = "数据包";
    L["FirmaCortesia"] = "共享频道中的礼貌签名";
    L["Cortesia"] = "说明由 Bosses 插件提供";
    L["Encuentros"] = "自动说明";
    L["AutoEnc"] = "自动：遭遇战开始时";
    L["Depuracion"] = "调试";
    L["Debug"] = "调试日志（WTF 文件夹中的文件，退出时写入）";
    L["VaciarLog"] = "清空调试日志";

    -- Editor in-game de explicaciones (2026)
    L["Editor"] = "编辑器";
    L["MenuEditor"] = "说明编辑器";
    L["EditorNombre"] = "名称：";
    L["EditorSpell"] = "法术 ID：";
    L["EditorAnadir"] = "+ 链接";
    L["EditorLinea"] = "+ 行";
    L["EditorCopiar"] = "从包复制";
    L["EditorProbar"] = "在框架上测试";
    L["EditorQuitar"] = "删除备注";
    L["EditorFilaSubir"] = "上移行";
    L["EditorFilaBajar"] = "下移行";
    L["EditorFilaQuitar"] = "删除行";
    L["EditorDeNota"] = "个人备注";
    L["EditorDePack"] = "来自数据包";
    L["EditorSinBase"] = "无基础数据的 Boss";
    L["EditorSinTarget"] = "标记 Boss（或使用 /bosses EDITAR <id>）以打开编辑器";

    -- Idiomas nuevos del editor web (RU/PT/ZH/KO)
    L["Russian"] = "俄语";
    L["Portuguese"] = "葡萄牙语（巴西）";
    L["ChineseSimple"] = "中文（简体）";
    L["Korean"] = "韩语";

    L["HELP1"] = "/bosses : 说明目标 NPC。";
    L["HELP2"] = "/bosses id : 按 ID 说明 NPC。";
    L["HELP3"] = "/bosses + 文本 : 将说明文本添加到目标 NPC。";
    L["HELP4"] = "/bosses ! : 删除目标 NPC 的说明。";
    L["HELP5"] = "/bosses CANAL AUTO : 通过默认频道输出说明。";
    L["HELP6"] = "/bosses CANAL LOCAL : 本地输出说明。";
    L["HELP7"] = "/bosses CANAL GUILD : 通过公会频道输出说明。";
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko : 说明的语言。";
    L["HELP9"] = "/bosses DEBUG on|off|清空|clear : 调试日志（WTF 文件夹中的文件）；/bosses LOG [n] : 显示最近的几行。";
    L["HELP10"] = "/bosses CANAL FRAME : 全部输出到警报框（仅你）。";
    L["HELP11"] = "/bosses EDITAR [id] : 打开说明编辑器（存放你自己的备注的 UI）。";

    L[": This NPC is not described."] = ": 该 NPC 未被说明。";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99左键|r - 说明选中的 NPC。";
    L["loaded"] = " 已加载";

    -- 警报框：1.0.18 改进
    L["Alert frame"] = "警报框";
    L["Frame max height"] = "框体最大高度（屏幕比例，0 = 不限）";
    L["Frame opacity"] = "框体背景不透明度";
    L["Always visible"] = "保持框体可见（15 秒后不自动隐藏）";
    L["Font scale"] = "正文字体缩放";
    L["Lock position"] = "锁定位置（禁用左键拖动）";
    L["Start collapsed"] = "启动时折叠（仅标题）";
    L["Auto height"] = "自动高度（框体随文字增长）";
    L["Collapse"] = "折叠";
    L["Expand"] = "展开";
    L["Lock"] = "锁定";
    L["Unlock"] = "解锁";
    L["Target boss"] = "选中首领";
    L["Previous"] = "上一个";
    L["Next"] = "下一个";
end