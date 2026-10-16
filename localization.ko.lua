-- Bosses
-- (c) Copyright 2011 By Philippe Mingo
-- Textos de interfaz en coreano (koKR).
--
-- Traducción (2026) del asistente de código: paridad de claves con
-- localization.es.lua (a revisar por hablantes nativos).

local _, L = ...;

if GetLocale() == "koKR" then
    L["Version"] = "버전";
    L["Select output channel"] = "출력 채널 선택";
    L["Auto"] = "자동";
    L["Guild"] = "길드";
    L["Language"] = "언어";
    L["Spanish"] = "스페인어";
    L["English"] = "영어";
    L["French"] = "프랑스어";
    L["German"] = "독일어";
    L["CanalGrupo"] = "현재 파티/레이드";
    L["OutputNormal"] = "일반 출력(나만)";
    L["CanalFrame"] = "경고 프레임(나만)";
    L["MenuObjetivo"] = "대상 설명";
    L["MenuConfig"] = "설정";
    L["BotonAlChat"] = "채팅으로";
    L["BotonEditar"] = "편집";
    L["Data packs"] = "데이터 팩";
    L["FirmaCortesia"] = "공용 채널의 공손 서명";
    L["Cortesia"] = "보스 설명은 Bosses 애드온이 제공합니다";
    L["Encuentros"] = "자동 설명";
    L["AutoEnc"] = "자동: 전투 시작 시";
    L["Depuracion"] = "디버그";
    L["Debug"] = "디버그 로그(WTF 폴더의 파일, 종료 시 기록)";
    L["VaciarLog"] = "디버그 로그 비우기";

    -- Editor in-game de explicaciones (2026)
    L["Editor"] = "편집기";
    L["MenuEditor"] = "설명 편집기";
    L["EditorNombre"] = "이름:";
    L["EditorSpell"] = "주문 ID:";
    L["EditorAnadir"] = "+ 링크";
    L["EditorLinea"] = "+ 줄";
    L["EditorCopiar"] = "팩에서 복사";
    L["EditorProbar"] = "프레임에서 테스트";
    L["EditorQuitar"] = "메모 제거";
    L["EditorFilaSubir"] = "줄 위로";
    L["EditorFilaBajar"] = "줄 아래로";
    L["EditorFilaQuitar"] = "줄 제거";
    L["EditorDeNota"] = "개인 메모";
    L["EditorDePack"] = "팩 사본";
    L["EditorSinBase"] = "기본 데이터 없는 보스";
    L["EditorSinTarget"] = "보스를 대상으로 지정하거나(또는 /bosses EDITAR <id> 사용) 편집기를 엽니다";

    -- Idiomas nuevos del editor web (RU/PT/ZH/KO)
    L["Russian"] = "러시아어";
    L["Portuguese"] = "포르투갈어(브라질)";
    L["ChineseSimple"] = "중국어(간체)";
    L["Korean"] = "한국어";

    L["HELP1"] = "/bosses : 대상 NPC를 설명합니다.";
    L["HELP2"] = "/bosses id : 해당 ID의 NPC를 설명합니다.";
    L["HELP3"] = "/bosses + 텍스트 : 대상 NPC에 텍스트 설명을 추가합니다.";
    L["HELP4"] = "/bosses ! : 대상 NPC의 설명을 제거합니다.";
    L["HELP5"] = "/bosses CANAL AUTO : 기본 채널로 정보를 출력합니다.";
    L["HELP6"] = "/bosses CANAL LOCAL : 로컬로 정보를 출력합니다.";
    L["HELP7"] = "/bosses CANAL GUILD : 길드 채널로 정보를 출력합니다.";
    L["HELP8"] = "/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko : 설명 언어.";
    L["HELP9"] = "/bosses DEBUG on|off|비우기 : 디버그 로그(WTF 폴더의 파일); /bosses LOG [n] : 최근 줄을 표시합니다.";
    L["HELP10"] = "/bosses CANAL FRAME : 모두 경고 프레임으로 출력(나만).";
    L["HELP11"] = "/bosses EDITAR [id] : 설명 편집기를 엽니다(내 메모용 UI).";

    L[": This NPC is not described."] = ": 이 NPC는 설명되어 있지 않습니다.";
    L["|cff33ff99Left click|r - Explains target NPC"] = "|cff33ff99왼쪽 클릭.|r - 선택한 NPC를 설명합니다.";
    L["loaded"] = " 로드됨";
end