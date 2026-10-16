--[[
	Bosses_TBC_ko.lua
		Datos en KO del pack TBC.
		Fichero creado por el editor web (2026-10-16); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ko = {};
local pack = ko;


-- Karazhan : Zona 532 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15687"] = { "모로스",
"* |cff71d5ff|Hspell:29448|h[Vanish]|h|r: 그는 사라지고 치유합니다: 해당 위치를 공격하여 소환합니다.",
"* |cff71d5ff|Hspell:29425|h[Gouge]|h|r: 굴은 탱을 견제합니다: 즉시 다른 탱이 그를 잡습니다.",
"* |cff71d5ff|Hspell:29562|h[Blind]|h|r: 블라인드는 표시된 대상에게 적용됩니다: 제거합니다.",
"* |cff71d5ff|Hspell:29405|h[Garrote]|h|r: 굴은 전투 전체에 지속되는 출혈을 일으킵니다: 표시된 대상에게 최대치까지 치유합니다.",
"* 그는 4명의 무작위 동료와 함께 등장합니다: 가능한 치유사는 먼저 중단되고, 첫 번째로 죽습니다; 전사는 근접 공격을 회피합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15688"] = { "테레스티안 일후프",
"* |cff71d5ff|Hspell:30066|h[소환 킬렉]|h|r: 짐은 죽을 때 돌아온다: 먼저 죽이고 지속적인 피해를 줍니다.",
"* |cff71d5ff|Hspell:30065|h[희생]|h|r: 희생은 플레이어를 표시하고 일호프를 보호합니다: 킬렉을 죽여 방패를 파괴합니다.",
"* 짐들이 그룹 주변에 모입니다: 집중적인 지속 피해는 치유사를 먹지 못하게 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15689"] = { "황천의 원령",
"* |cff71d5ff|Hspell:30400|h[Perseverance]|h|r: 빨간 광선은 탱커를 강화하고, 치유사를 죽입니다: 오직 탱커만이 그 안에 서야 합니다.",
"* |cff71d5ff|Hspell:30401|h[Serenity]|h|r: 녹색 광선은 대상에 있는 모든 것을 치유합니다: 그룹을 번갈아 가며 이 광선에 통과시키세요.",
"* |cff71d5ff|Hspell:30402|h[Dominance]|h|r: 파란 광선은 주문사에게 힘을 부여합니다: 분산시키세요 — 함께 서 있을 때 단점이 공유됩니다.",
"* |cff71d5ff|Hspell:38523|h[Nether Breath]|h|r: Nether Breath은 앞쪽 공격: 탱커가 그룹에서 멀리 향하게 하여 공격합니다.",
"* 쫓아내는 단계에서 그는 표적이 되지 않게 됩니다: 스킬을 보존하고, 데미지 효과를 중지하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15690"] = { "공작 말체자르",
"* |cff71d5ff|Hspell:30843|h[Enfeeble]|h|r: Enfeeble는 당신을 8초 동안 1 hp로 만들고, 치유를 받지 못하게 합니다: 살아남으세요, 아무도 당신에게 구원 주문을 시전하지 않습니다.",
"* |cff71d5ff|Hspell:30852|h[Shadow Nova]|h|r: Shadow Nova는 Enfeeble 직후에 맞습니다: 즉시 프린스에서 벗어나세요.",
"* |cff71d5ff|Hspell:30859|h[Summon Infernal]|h|r: Infernals이 하늘에서 쏟아집니다: 바닥을 주시하고, 충돌 지점에 이동하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15691"] = { "전시 관리인",
"* |cff71d5ff|Hspell:30235|h[Hateful Bolt]|h|r: 2번째로 체력이 높은 대상에게 혐오 광이 발사됩니다: 항상 해당 대상의 체력을 유지하십시오.",
"* |cff71d5ff|Hspell:30403|h[Summon Astral Flare]|h|r: 별 광이 쌍으로 생성됩니다: volley가 쌓이기 전에 AoE로 처리하십시오.",
"* |cff71d5ff|Hspell:30254|h[Evocation]|h|r: Evocation 중에는 2배의 피해를 받습니다: 집중적으로 공격하고, 이 때 폭발 공격을 사용하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16151"] = { "사냥꾼 어튜멘",
"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: 충격이 가장 멀리 있는 대상에게 날아가: 아무도 말에서 떨어지지 않는다.",
"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: 넉다운은 근접 공격에 효과적: 근접 공격자는 뒤로 물러난다.",
"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: 불투명 존재는 데미지 감소 효과: 지정된 대상에서 제거한다.",
"* 밤의 불을 끄세요: 사냥꾼은 체력이 특정 임계값에 도달할 때마다 말을 타고 내린다 — 모든 피해는 동일한 풀에 적용된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16152"] = { "사냥꾼 어튜멘",
"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: 충격이 가장 멀리 있는 대상에게 날아가: 아무도 말에서 떨어지지 않는다.",
"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: 넉다운은 근접 공격에 효과적: 근접 공격자는 뒤로 물러난다.",
"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: 불투명 존재는 데미지 감소 효과: 지정된 대상에서 제거한다.",
"* 밤의 불을 끄세요: 사냥꾼은 체력이 특정 임계값에 도달할 때마다 말을 타고 내린다 — 모든 피해는 동일한 풀에 적용된다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16179"] = { "Hyakiss",
"* 몬스터가 구멍에서 나와 독 공격을 가합니다: 탱커가 공격을 막고, 탱커에게 독 효과를 제거합니다.",
"* Servants Quarters로 올라가는 길에 있는 선택적인 몬스터: 건너뛰거나, 추가 보상을 위해 죽입니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16180"] = { "샤다키스 더 글라이더",
"* Glider는 소닉 원을 생성하여 자신 주위로 회전합니다: 턴은 원의 범위 밖으로 이동합니다.",
"* Servant Quarters의 추가 몬스터: 평범한 전투, 탱커가 움직이지 않으면 위험이 낮습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16181"] = { "로카드",
"* The ravager는 앞쪽에서 강하게 공격합니다: 딜러는 뒤에 있고 탱커는 그것을 막아야 합니다.",
"* Servants Quarters의 추가적인 몬스터: 간단한 전투; 누구도 그것의 턱에 멈춰서서 공격하지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16457"] = { "고결의 여신",
"* |cff71d5ff|Hspell:29511|h[Repentance]|h|r: repentance는 전체 레이드를 멈추게 합니다: 의도적으로 들어가서 파괴하거나, 다음 공격을 받게 됩니다.",
"* |cff71d5ff|Hspell:29522|h[Holy Wrath]|h|r: holy wrath는 플레이어 간에 묶습니다: 서로 멀리 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:29512|h[Consecration]|h|r: consecration은 그녀 아래의 땅에 불을 붙입니다: 근접 캐릭터는 피해야 합니다.",
"* 그녀의 성스러운 불의 에너지는 근접 공격에 피해를 줍니다: 방어력은 도움이 됩니다 — 치유사는 멀리 떨어져 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16524"] = { "아란의 망령",
"* |cff71d5ff|Hspell:29973|h[Flame Wreath]|h|r: 한 걸음도 움직이지 마세요, 그러면 고리가 폭발하여 파티 전체를 삭제합니다 — 사라질 때까지 기다리세요.",
"* |cff71d5ff|Hspell:29991|h[Counterspell]|h|r: 카운터스펠은 한 종류의 마법을 10초 동안 무효화합니다: 주문을 중단하고, 치유사는 주의해서 지원하세요.",
"* |cff71d5ff|Hspell:30004|h[Pyroblast]|h|r: 파이로블라스트는 쌍으로 등장합니다: 둘 다 중단하거나, 누군가가 죽습니다.",
"* |cff71d5ff|Hspell:29951|h[Blizzard]|h|r: 블리자드는 방 전체를 휩쓸어냅니다: 그 안에서 걸어 나오세요 — 달리는 것은 다시 공격받게 됩니다.",
"* 술 마시는 단계는 함정입니다: 술을 마시는 동안 공격하지 마세요, 그렇지 않으면 파티 전체가 파이로블라스트의 벽에 맞게 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17225"] = { "나이트베인",
"* |cff71d5ff|Hspell:30129|h[Charred Earth]|h|r: 불에 타는 땅은 사람 아래에 화염 구역을 만듭니다: 피하세요.",
"* |cff71d5ff|Hspell:36922|h[Bellowing Roar]|h|r: 굉음은 땅에 있는 전체 그룹을 두려워하게 만듭니다: 탱커에게 공포 방어 또는 흔들림을 사용하세요.",
"* |cff71d5ff|Hspell:37098|h[Rain of Bones]|h|r: 뼈 비는 비행 중입니다: 최대한 덜 맞도록 흩어져 움직이세요.",
"* 비행 패턴은 엄격합니다: 모든 사람은 땅의 중간으로 달려가고, 탱커는 꼬리 공격을 피해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17521"] = { "큰 늑대",
"* |cff71d5ff|Hspell:30752|h[Little Red Riding Hood]|h|r: 표시된 대상은 후드를 덮어 늑대를 기둥 주변으로 유인합니다.",
"* 늑대가 후드를 쫓기 위해 시야를 벗어납니다: 무대를 사용하여 회전을 유지하고, 나머지는 늑대를 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17533"] = { "로무스 앤 줄리아노",
"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: 항상 방해 — 그녀의 치유는 전체 성능을 유지합니다.",
"* 한 명이 쓰러지면, 다른 한 명이 분노하게 됩니다: 두 명을 거의 동시에 쓰러뜨리고 함께 마무리하세요.",
"* 독 공격은 표시된 대상에게 지속 피해를 줍니다: 치유사는 로뮬로의 검을 주의하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17534"] = { "로무스 앤 줄리아노",
"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: 항상 방해 — 그녀의 치유는 전체 성능을 유지합니다.",
"* 한 명이 쓰러지면, 다른 한 명이 분노하게 됩니다: 두 명을 거의 동시에 쓰러뜨리고 함께 마무리하세요.",
"* 독 공격은 표시된 대상에게 지속 피해를 줍니다: 치유사는 로뮬로의 검을 주의하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18168"] = { "오즈의 마법사",
"* 네 플레이어는 함께 생성됩니다: 티토가 먼저 죽고, 그런 다음 도로테가, 그런 다음 스트로우맨을 빠르게 처치합니다.",
"* 틴헤드가 기어갑니다: 한 플레이어가 그를 뒤로 쫓아내고, 나머지는 계속 처치합니다.",
"* 로어가 죽으면 크론이 나타납니다: 토네이도는 무대 위를 돌고 있습니다 — 패스에서 피하고 그녀를 처치합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21684"] = { "메디브의 메아리",
"* 조각들은 움직이지 않고 있습니다: 움직이거나 아니면 발밑의 불이 그들을 태웁니다 — 한 칸씩 돌아가며.",
"* 냉각 효과를 유지하세요: 말뚝들은 방어, 왕은 탱킹, 치유사는 당신의 편을만 치유합니다.",
"* 당신의 조각이 죽으면 강력한 힘이 솟아납니다: 사용하고, 그 다음에는 벤치에서 새로운 조각을 가져옵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21752"] = { "메디브의 메아리",
"* 조각들은 움직이지 않고 있습니다: 움직이거나 아니면 발밑의 불이 그들을 태웁니다 — 한 칸씩 돌아가며.",
"* 냉각 효과를 유지하세요: 말뚝들은 방어, 왕은 탱킹, 치유사는 당신의 편을만 치유합니다.",
"* 당신의 조각이 죽으면 강력한 힘이 솟아납니다: 사용하고, 그 다음에는 벤치에서 새로운 조각을 가져옵니다."
};

-- The Shattered Halls : Zona 540 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16807"] = { "대흑마법사 네더쿠르스",
"* |cff71d5ff|Hspell:30496|h[Death Coil]|h|r: 데스 코일이 탱을 맞추면, 탱을 치유하고, 중단할 수 없습니다.",
"* 20% 이하로 내려가면, 날카로운 칼날을 회전시킵니다: 근접 공격자는 OUT 하고, 원거리 공격자가 마무리합니다.",
"* 그 앞의 쓰레기를 먹는 팩을 정리합니다: 탱을 깨끗한 복도 안으로 끌어들여 펠 하운드가 전투에 참여하도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16808"] = { "대족장 카르가스 블레이드피스트",
"* |cff71d5ff|Hspell:5927|h[Sweep]|h|r: 휩 공격은 앞쪽에서 강하게 쳐서: 근접 딜러는 날의 뒤에 머물러야 합니다.",
"* |cff71d5ff|Hspell:30739|h[Blade Dance]|h|r: 날의 춤은 무작위 사람들에게 튕겨: 넓게 퍼뜨려 한 번에 아무도 맞지 않도록 해야 합니다.",
"* 옆에 있는 두 추가몹을 CC하거나 빠르게 처치: 탱을 두 번째 날의 공격에서 해방시켜야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16809"] = { "전쟁인도자 오므로그",
"* 두 머리가 서로 공격 대상 역할을 번갈아 수행합니다: 탱커는 공격이 들어올 때 즉시 대상에게 턴을 돌립니다.",
"* 밟는 공격으로 근접 몬스터를 넘어뜨립니다: 반경 밖으로 벗어나지 않거나 공격 지속 시간을 잃게 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20923"] = { "혈투사 포룽",
"* 오직 하이로닉 난이도에서 방을 시작하는 수비: 그는 패를 사용하여 베고, 떼가 모일 때까지 중간에 처치해야 합니다.",
"* 일반적인 전투: 베기와 그를 따라오는 몬스터 외에는 특별한 점이 없습니다."
};

-- Magtheridon's Lair : Zona 544 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17257"] = { "마그테리돈",
"* 다섯 채널러는 방을 열어: 먼저 한 번에 하나씩 죽이거나, 주문이 닿지 않을 것입니다.",
"* |cff71d5ff|Hspell:30616|h[Blast Nova]|h|r: 블래스트 노바는 방 전체를 삭제합니다: 모든 플레이어는 주문을 방해하기 위해 큐브를 클릭합니다.",
"* |cff71d5ff|Hspell:30511|h[Quake]|h|r: 콰이크는 근접 공격자를 벽에 던져: 치유사는 각자 후 각 그룹을 회복합니다.",
"* 바닥의 불은 얼룩으로 타는: 즉시 이동, DoT는 약하지 않습니다."
};

-- Hellfire Ramparts : Zona 543 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17306"] = { "감시자 가르골마르",
"* 그의 팔에 있는 상처가 공격당할 때마다 치유: 상처를 중단하거나 싸움이 길어질 수 있습니다.",
"* 폭풍은 탱을 몬에게 던져 넣습니다: 그의 뒤를 깨끗하게 하고 복도를 먼저 정리하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17307"] = { "사자 바즈루덴",
"* 헤럴드는 와이버를 타고: 두 명을 동시에 태우고, 기사는 건강이 줄어들 때까지 내려오지 않습니다.",
"* 바즈루덴이 착지하면 탱커가 즉시 그를 선택해야 합니다: 다른 사람은 불 뿜는 것을 막을 수 없습니다.",
"* 나잔이 계속 이동합니다: 원거리에서 불덩이를 끊어주세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17308"] = { "무적의 오모르",
"* |cff71d5ff|Hspell:37566|h[Whip of Despair]|h|r: 챔피언은 탱커에게 그림자 저주를 사용합니다: 치유하거나, 의사들이 그것에 잠길 것입니다.",
"* 개 떼는 그를 끌어당겨서: 의사들이 뭉치는 것을 막고, 한 번에 한 떼를 죽입니다.",
"* 그는 짧은 간격으로 공격 범위 밖으로 떠납니다: 근접 공격자는 그를 잡고, 각 점프 후 근접 공격자가 다시 교전합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17537"] = { "사자 바즈루덴",
"* 헤럴드는 와이버를 타고: 두 명을 동시에 태우고, 기사는 건강이 줄어들 때까지 내려오지 않습니다.",
"* 바즈루덴이 착지하면 탱커가 즉시 그를 선택해야 합니다: 다른 사람은 불 뿜는 것을 막을 수 없습니다.",
"* 나잔이 계속 이동합니다: 원거리에서 불덩이를 끊어주세요."
};

-- The Blood Furnace : Zona 542 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17377"] = { "파괴자 켈리단",
"* 폭발 파동은 그의 블링크 직후에 발생: 그는 방 중앙으로 순간이동할 때 즉시 도망치세요.",
"* 그는 순간이동 패턴을 반복합니다: 치유사는 그룹을 계속 치유하고, 폭발은 낮은 체력을 가진 플레이어를 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17380"] = { "브로고크",
"* 감옥은 파동으로 열립니다: 빠르게 정리하거나 탱커가 한 번에 두 개의 패키지를 먹게 됩니다.",
"* 독 가스는 구역의 감옥을 채웁니다: 깨끗한 공간으로 이동하세요 — 잘못된 장소에 DoT가 빠르게 쌓입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17381"] = { "재앙의 창조자",
"* |cff71d5ff|Hspell:30923|h[Dominate Mind]|h|r: 사용자를 한 명 선택하여 마비시키고, 죽이지 않고 기다립니다.",
"* 산성 웅덩이들이 파티 주변으로 퍼져 나갑니다: 아무도 녹색 영역에 서 있지 마세요."
};

-- Zul'Aman : Zona 568 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17711"] = { "둠워커",
"* |cff71d5ff|Hspell:32686|h[지진]|h|r: 지진은 영역을 흔들어 놓습니다: 치유사는 흔들림 동안 그룹을 안정시키도록 유지합니다.",
"* 충격은 탱커를 날려 버립니다: 탱커를 벽이나 구덩이에서 멀리 유지하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18728"] = { "둠 로드 카자크",
"* |cff71d5ff|Hspell:21063|h[Twisted Reflection]|h|r: Twisted Reflection은 저주입니다: 치유하거나, 매 공격마다 회복됩니다.",
"* |cff71d5ff|Hspell:32964|h[Frenzy]|h|r: Frenzy는 속도를 증가시킵니다: 소멸될 때까지 추격합니다.",
"* Doom Lord의 저주는 근처의 캐스터의 마나를 소모합니다: 캐스터는 거리를 유지합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23574"] = { "아킬존",
"* |cff71d5ff|Hspell:43648|h[Electrical Storm]|h|r: 폭풍은 한 플레이어를 제거합니다: 모든 플레이어는 폭풍 아래로 달아나거나, 외부가 파티를 공격합니다.",
"* 독수리는 플랫폼에 맹공을 가합니다: 그들이 의무병을 선택하기 전에 AoE 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23576"] = { "날로라크",
"* 격렬한 공격은 두 대상에 맞고: 두 탱커가 공격을 공유하며, 한 명은 받지 않습니다.",
"* 폭풍은 가장 멀리 있는 대상에게: 곰으로부터 멀리 떨어지지 마세요.",
"* 맹렬한 울음소리는 레이드를 침묵시킵니다: 울음소리가 닿기 전에 치유사가 미리 방어하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23577"] = { "할라지",
"* 영혼이  lynx에서 두 번 분리: 탱커는 번개 공격을 모두 막고, 단계는 lynx가 끝나게 됩니다.",
"* 토템이 모서리에서 뿜어: 즉시 죽이거나, 공격이 멈추지 않습니다.",
"* 플레임 샷이 탱커에게 맞을 때: 빠르게 치유하거나, 치유사는 물에 잠깁니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23578"] = { "잔알라이",
"* |cff71d5ff|Hspell:43962|h[Hatch Eggs]|h|r: the eggs hatch once he burns: either ALL hatch or NONE — AoE the swarms right.",
"* 폭탄이 파티 주변에 떨어집니다: 폭탄이 떨어지기 전에 미리 퍼뜨립니다.",
"* 불 뿜는 공격은 앞쪽으로 뻗어나갑니다: 탱커는 그룹에서 멀리 떨어져서 공격을 받아야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23863"] = { "줄진",
"* 네 형태가 순환합니다: 곰은 공격, 독수리는 사이클론을 던집니다,  lynx는 탱커를 찢고, 드래곤hawk는 불의 열을 뿜습니다.",
"* 몽은 폭풍 속을 추격합니다: 넓게 쫓아내세요, 잡은 사람은 모두 타게 됩니다.",
"* 땅의 불은 드래곤hawk의 숨결을 따라갑니다: 각 열을 표시하는 곳에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24239"] = { "사술 군주 말라크라스",
"* 영혼의 폭탄은 몇 초마다 전체 파티에 피해를 입힙니다: 치유사는 그 사이에서 타이밍을 조절해야 합니다.",
"* 한 플레이어의 영혼이 전투 중에 떠다닙니다: 죽이거나 피해를 받게 됩니다.",
"* 흡수 능력은 즉시 플레이어의 스킬을 흡수합니다: 스킬을 사용할 때마다 즉시 적응해야 합니다."
};

-- The Battle for Mount Hyjal : Zona 534 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17767"] = { "격노한 윈터칠",
"* |cff71d5ff|Hspell:31249|h[Death and Decay]|h|r: 썩음은 바닥에 화염 구역을 퍼뜨립니다: 모두 계속 움직여야 합니다.",
"* |cff71d5ff|Hspell:31258|h[Frost Nova]|h|r: 냉기 폭풍은 그룹을 제자리에 고정합니다: 장치 또는 치유자들이 D&D에 고정됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17808"] = { "아네테론",
"* |cff71d5ff|Hspell:31298|h[Carrion Swarm]|h|r: 카르션 스워姆은 전면 코너 공격으로, 무력화 효과를 발휘합니다: 탱커를 그룹에서 멀리 있는 방향으로 향하게 하세요.",
"* |cff71d5ff|Hspell:31299|h[Sleep]|h|r: 슬립은 한 플레이어를 무력화합니다: 무력화된 플레이어를 즉시 깨우거나, D&D에 의해 먹히게 됩니다.",
"* |cff71d5ff|Hspell:31306|h[Inferno]|h|r: 인페르노는 불타는 인페르널을 소환합니다: 메디컬에게 도달하기 전에 AoE 공격하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17842"] = { "아즈갈로",
"* |cff71d5ff|Hspell:31340|h[Howl of Azgalor]|h|r: 울음소리는 전체 파티를 두려워합니다: 탱커에게 굳건한 자세를 유지하도록 탬버 또는 공포 방어를 사용하십시오.",
"* |cff71d5ff|Hspell:31344|h[Unending Pain]|h|r: 끊임없는 고통은 광범위한 지속 피해입니다: 치유하십시오. 효과를 제거할 수 없습니다.",
"* 죽을 때 한 플레이어에게 저주를 걸어: 표시된 플레이어는 멀리 도망가므로 피 령이 아무도 먹지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17888"] = { "카즈로갈",
"* |cff71d5ff|Hspell:31447|h[Mark of Kaz'rogal]|h|r: 마크는 마나를 흡수합니다: 마나가 0이 되면 마크된 대상이 폭발합니다 — 캐스터는 마나가 부족할 때 주문을 중단합니다.",
"* 앞쪽의 공격 범위가 매우 강력합니다: 딜러는 뒤에 위치하고 탱커는 몸통이 닿는 벽에서 멀리 떨어져 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17968"] = { "아키몬드",
"* |cff71d5ff|Hspell:32014|h[Doomfire]|h|r: 둠파이의 추적은 플레이어를 땅 위로 쫓아갑니다: 파티에서 멀리 도망치세요.",
"* |cff71d5ff|Hspell:31970|h[Air Burst]|h|r: 에어 버스트는 파티의 절반을 하늘로 던집니다: 각 공격 전에 깃털 버프를 유지하세요.",
"* |cff71d5ff|Hspell:31972|h[Fear]|h|r: 공포는 무작위로 사람들에게 영향을 미칩니다: 탱커에게 방어형을 배치하여 공포 상태에서 버티도록 하세요."
};

-- The Underbog : Zona 546 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17770"] = { "헝가르펜",
"* |cff71d5ff|Hspell:31673|h[Foul Spores]|h|r: 포자 구름이 그를 반 건강 이하로 떨어뜨립니다: 구름에서 빼내거나 창문을 통해 폭발시켜 제거하세요.",
"* Underspores이 영역을 둘러싸: 떼를 지어 치유사를 공격하기 전에 먼저 AoE로 처리하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17826"] = { "늪군주 뮤즐레크",
"* |cff71d5ff|Hspell:31429|h[Congelar]|h|r: el ataque de congelamiento afecta a un objetivo cuerpo a cuerpo inmediatamente: rompe el efecto o cura a través del daño explosivo que sigue.",
"* Un jugador mantiene al objetivo atrapado: el ataque de alas del ave obliga a los personajes cuerpo a cuerpo a moverse.",
"* Su disparo dirigido castiga al objetivo marcado a distancia: nadie puede permanecer lejos del grupo sin protección."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17882"] = { "검은 추적자",
"* |cff71d5ff|Hspell:31704|h[Static Charge]|h|r: 공이 한 플레이어를 따라다니도록: 그룹에서 멀리 떨어뜨려 소멸될 때까지 따라다니도록.",
"* |cff71d5ff|Hspell:31715|h[Chain Lightning]|h|r: 겹쳐진 사람들을 통해 닿도록: 닿는 범위와 치유사를 준비해두세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18105"] = { "가즈안",
"* |cff71d5ff|Hspell:15716|h[Terrifying Roar]|h|r: 울음소리는 근접 공격자를 도망치게 합니다: 공포 방어 능력이 활성화되어 있거나, 비행하여 다시 교전합니다.",
"* 앞쪽의 산성 호흡: 탱커는 그를 등지고, 근접 공격자는 다리 뒤에 머물러야 합니다."
};

-- The Steamvault : Zona 545 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17796"] = { "기계박사 스팀리거",
"* |cff71d5ff|Hspell:35107|h[Summon Mechanics]|h|r: 세 개의 메커니즘이 그 주변에 생성됩니다: 빠르게 모두를 공격하거나, 치유사를 공격합니다.",
"* 기계 액체가 표시된 곳에서 솟아오릅니다: 액이 솟아오르는 곳으로 이동하고 바닥에 물웅덩이가 생기지 않도록 유지합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17797"] = { "풍수사 세스피아",
"* |cff71d5ff|Hspell:31481|h[Lightning Cloud]|h|r: 구름이 무작위로 사람들에게 퍼집니다: 틱이 쌓이기 전에 벗어나세요.",
"* |cff71d5ff|Hspell:25033|h[Enveloping Winds]|h|r: 바람이 한 캐스터를 침묵 상태로 감쌉니다: 마법을 해제하거나 두 번째 치유사를 준비하세요.",
"* 그녀의 공격은 탱커에게 매우 강합니다: 치유사는 pull 전에 미리 방어막을 준비하고, 첫 몇 초 동안 가장 강한 공격을 받습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17798"] = { "장군 칼리스레쉬",
"* |cff71d5ff|Hspell:6001|h[Disarm]|h|r: Disarm은 탱커의 무기를 파괴: 백업 무기를 챙기거나 오프탱이 대신합니다.",
"* Water Spout 오브가 생성되고, 그는 그것에 집중: 탱커는 그를 밖으로 끌어당깁니다 - 오브 안에서 데미지가 증가합니다.",
"* Spell reflections은 주문을 플레이어에게 되돌려 보냅니다: 캐스터는 큰 공격 주문을 사용하고, Shimmer가 활성화되어 있을 때."
};

-- Old Hillsbrad Foothills : Zona 560 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17848"] = { "부관 드레이크",
"* |cff71d5ff|Hspell:33792|h[화염구 연사]|h|r: 연사가 세 대상에게 화염을 쏟아지게 합니다: 사격 사이에 치유합니다.",
"* 보호 파티는 전투 중반에 합류: 탱커는 몬스터를 치유자로부터 멀리하고 빠르게 광역 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17862"] = { "경비대장 스칼록",
"* |cff71d5ff|Hspell:29427|h[성스러운 빛]|h|r: 항상 방해 — 그의 성스러운 빛으로 완전히 회복됩니다.",
"* 신성한 불꽃은 땅을 태웁니다: 근접 몬스터는 피해야 합니다.",
"* 보호 캐들은 그가 후퇴할 때 몰려들 때: 의사들을 보호 캐들이 공격 대상에서 밀어낼 때까지 기다립니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18096"] = { "시대의 사냥꾼",
"* |cff71d5ff|Hspell:33834|h[Whirlwind]|h|r: 와일드윈드는 근접 공격을 회피: 주문 시, 근접 공격을 회피하는 범위에 위치.",
"* 날개 공격은 탱커를 밀어내: 벽에 밀어 넣도록.",
"* 그는 두 명의 라이더를 데리고 도착: 한 명은 CC, 다른 한 명은 탱커가 위치를 잃기 전에 공격."
};

-- The Black Morass : Zona 269 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17879"] = { "시간의 군주 데자",
"* |cff71d5ff|Hspell:38539|h[Arcane Blast]|h|r: 항상 방해 — 강력하게 공격하고, 탱커에게 쌓입니다.",
"* |cff71d5ff|Hspell:31467|h[Time Lapse]|h|r: 타임 랩은 넓은 범위에 둔화를 일으킵니다: 둔화된 곳에서 멀리 떨어져서 움직이세요.",
"* |cff71d5ff|Hspell:31472|h[Arcane Discharge]|h|r: 방전은 방 전체에 흩뿌려집니다: 각 방전에 대해 그룹을 치유하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17880"] = { "템퍼루스",
"* |cff71d5ff|Hspell:31458|h[Hasten]|h|r: 자신에게 속도 증가: 디스펠하거나 매우 빠르게 교체하기 시작합니다.",
"* |cff71d5ff|Hspell:38592|h[Wing Buffet]|h|r: 윙 버핏은 탱커를 밀어내: 벽에 등을 대고 유지합니다.",
"* 리프트 포털이 계속해서 뒤에서 쓰레기를 생성합니다: 탱커는 그를 멀리하고 아무도 그들을 끌지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17881"] = { "아에누스",
"* |cff71d5ff|Hspell:31422|h[Time Stop]|h|r: Time Stop은 전체 파티를 둔화시킵니다: 생존을 위해 장신구와 방어 기술을 사용하세요.",
"* |cff71d5ff|Hspell:37605|h[Sand Breath]|h|r: Sand Breath은 전방 공격입니다: 그룹에서 멀리 떨어져서 탱킹하세요.",
"* 항상 개방된 포털 근처에 서지 마세요: 타이머는 매우 까다롭고, 쓰레기 떼는 의무를 수행하는 사람들을 먹습니다."
};

-- The Slave Pens : Zona 547 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17941"] = { "배반자 멘누",
"* |cff71d5ff|Hspell:31985|h[Corrupted Healing Totem]|h|r: 치유 토템은 매 초마다 그를 치유합니다: 먼저 파괴하십시오.",
"* |cff71d5ff|Hspell:34980|h[Corrupted Nova Totem]|h|r: 노바 토템은 가까이에서 폭발합니다: 즉시 죽이거나 거리를 유지하십시오.",
"* 돌 피부 토템은 파티를 강화합니다: 시작 시 토템을 AoE 공격, 그런 다음 보스에게 화상 공격을 가하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17942"] = { "쿠아그미란",
"* |cff71d5ff|Hspell:39340|h[Acid Geyser]|h|r: 액체 지열이 앞쪽에서 폭발: 아무도 턱에 들어가지 않도록.",
"* 곰팡이 부패는 쌓이는 독으로 나타납니다: 두 번째 스택이 생기기 전에 제거하거나, 치유사가 물에 잠길 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17991"] = { "딱딱이 로크마르",
"* |cff71d5ff|Hspell:31956|h[Grievous Wound]|h|r: grievous wound은 탱커의 회복력을 절반으로 감소시킵니다: 완전 회복하거나 탱커를 교체하세요.",
"* |cff71d5ff|Hspell:34970|h[Water Spit]|h|r: water spit는 전방 공격입니다: 탱커는 그룹에서 멀리 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:38801|h[Ensnaring Moss]|h|r: moss는 사람을 땅에 고정시킵니다: 서로 멀리 떨어뜨려 한 번에 두 명을 고정하지 않도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25697"] = { "아후네",
"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: 방패는 그를 공격 불가능하게 만들고, 각 사이클마다 방패를 유지하면, 파티는 얼음 핵을 제거합니다.",
"* 소환수는 얼음 돌에서 시작합니다: 먼저 동굴의 고리를 정리하고 의식을 활성화하면, 돌이 녹는 순간 전투가 시작됩니다.",
"* 물 원소 생물들이 방패가 유지되는 동안 연못에서 솟아나옵니다: 각 사이클 사이에 AoE 공격을 하고, 얼음 바닥에 아무도 움직이지 않도록 하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25740"] = { "아후네",
"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: 방패는 그를 공격 불가능하게 만들고, 각 사이클마다 방패를 유지하면, 파티는 얼음 핵을 제거합니다.",
"* 소환수는 얼음 돌에서 시작합니다: 먼저 동굴의 고리를 정리하고 의식을 활성화하면, 돌이 녹는 순간 전투가 시작됩니다.",
"* 물 원소 생물들이 방패가 유지되는 동안 연못에서 솟아나옵니다: 각 사이클 사이에 AoE 공격을 하고, 얼음 바닥에 아무도 움직이지 않도록 하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25865"] = { "아후네",
"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: 방패는 그를 공격 불가능하게 만들고, 각 사이클마다 방패를 유지하면, 파티는 얼음 핵을 제거합니다.",
"* 소환수는 얼음 돌에서 시작합니다: 먼저 동굴의 고리를 정리하고 의식을 활성화하면, 돌이 녹는 순간 전투가 시작됩니다.",
"* 물 원소 생물들이 방패가 유지되는 동안 연못에서 솟아나옵니다: 각 사이클 사이에 AoE 공격을 하고, 얼음 바닥에 아무도 움직이지 않도록 하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40446"] = { "아후네",
"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: 방패는 그를 공격 불가능하게 만들고, 각 사이클마다 방패를 유지하면, 파티는 얼음 핵을 제거합니다.",
"* 소환수는 얼음 돌에서 시작합니다: 먼저 동굴의 고리를 정리하고 의식을 활성화하면, 돌이 녹는 순간 전투가 시작됩니다.",
"* 물 원소 생물들이 방패가 유지되는 동안 연못에서 솟아나옵니다: 각 사이클 사이에 AoE 공격을 하고, 얼음 바닥에 아무도 움직이지 않도록 하십시오."
};

-- The Botanica : Zona 553 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17975"] = { "고위 식물학자 프레이윈",
"* |cff71d5ff|Hspell:34557|h[Tranquilidad]|h|r: 항상 중단 — Tranquilidad은 아무것도 없이 완전히 회복시킵니다.",
"* 씨앗들이 파도처럼 그룹을 공격합니다: 빠르게 쌓이지 않도록 AoE로 처리하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17976"] = { "지휘관 새래니스",
"* |cff71d5ff|Hspell:34803|h[Arcane Resonance]|h|r: when she is at low health, she detonates in an area: SPREAD the moment the fight turns.",
"* 블러드키퍼는 그녀를 보호합니다: 몬스터가 나타날 때 공격하여 광역 공격을 하거나, 치유사들을 죽게 할 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17977"] = { "차원의 분리자",
"* |cff71d5ff|Hspell:34716|h[Grow]|h|r: 그는 커질 때 엄청나게 커지고 큰 피해를 입힙니다: 그는 작아질 때까지 계속 피하세요.",
"* 나무 트렌트는 그의 그림자에서 쏟아집니다: 그들이 그룹을 감싸기 전에 AoE로 처리하세요.",
"* 그는 드레인을 받을 때 아무도 그를 껴안지 않습니다: 드레인은 가장 가까운 사람을 마십니다 — 딜러는 뒤로 한 걸음 물러서세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17978"] = { "감시인 쏜그린",
"* |cff71d5ff|Hspell:34660|h[Hellfire]|h|r: 불길은 주변 모든 것을 태웁니다: 근접 공격자는 전체 채널 동안 후퇴합니다.",
"* 희생 마크는 한 플레이어를 지정합니다: 지정된 플레이어를 치유하고 앞쪽으로 거리를 유지하십시오.",
"* 고통의 저주는 치유를 방해합니다: 탱커에게서 빠르게 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17980"] = { "라즈",
"* Thorns 공격은 근접 공격에 순간적으로 피해를 줍니다: 근접 공격자는 공격을 유지하면 피해를 받거나 체력이 감소합니다.",
"* Mutants는 그 주변에 생성됩니다: 빠르게 AoE 공격을 사용하여 바닥을 깨끗하게 유지하십시오."
};

-- Sethekk Halls : Zona 556 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18341"] = { "판데모니우스",
"* |cff71d5ff|Hspell:32358|h[Void Blast]|h|r: void blast은 그를 그림자로 전환시키므로: 근접 공격 시, void 상태일 때 공격을 계속 유지합니다.",
"* The dark cleave는 근접 공격을 파괴합니다: 아무도 공격 범위 앞에는 머물지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18343"] = { "타바록",
"* |cff71d5ff|Hspell:2021|h[Disarm]|h|r: Disarm은 탱커의 무기를 가져갑니다: 백업 무기 또는 오프탱이 픽업합니다.",
"* Earthshock은 특정 지역의 캐스터를 무력화시킵니다: 치유사는 치유를 분산합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18344"] = { "넥서스 프린스 샤파르",
"* 에테리얼 비콘이 그 주변에 생성됩니다: 먼저 제거하거나, 추가 몬스터로 변합니다.",
"* 그의 블링크는 그를 방 전체로 이동시킵니다: 근접 공격은 즉시 따라갑니다, 캐스팅은 기다리지 않습니다.",
"* 프스트 노바는 근접 공격을 제자리에 묶습니다: 그들을 통과하는 동안 계속 치유하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18472"] = { "흑마술사 시스",
"* 네 개의 원소 이미지가 반 건강으로 생성: 모두를 공격하거나, 치유사를 잠수시키도록 합니다.",
"* 그림자 광선이 무작위로 사람들에게 떨어집니다: 확산을 최소화합니다.",
"* 공포는 파티를 도망치게 합니다: 탱커의 공포 방어는 위치를 유지합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18473"] = { "갈퀴대왕 이키스",
"* |cff71d5ff|Hspell:38197|h[Polymorph]|h|r: Polymorph 늑대 한 플레이어: 마법을 해제하거나 늑대를 기다립니다.",
"* |cff71d5ff|Hspell:40425|h[Arcane Explosion]|h|r: 폭발은 그의 블링크 직후에 떨어집니다: 즉시 공격합니다.",
"* |cff71d5ff|Hspell:38245|h[Blizzard]|h|r: 폭풍은 해당 영역을 휩쓸고: 모두가 그것에서 벗어납니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22930"] = { "요르",
"* 밟기가 근접 몬스터를 넘어뜨립니다: 주문 시 반경 밖으로 이동하거나, 공격 윈도우를 잃습니다.",
"* 타바록의 시체에서 일어납니다: 소환 전에 그룹이 회복하거나, 전투가 혼란스럽게 시작됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23035"] = { "안주",
"* 끔은 까마귀들이 그 주변에 나타납니다: 착지하는 즉시 모두에게 공격하세요.",
"* 의식 원형이 그를 소환합니다: 파티가 원형에 들어가거나 첫 번째 분이 실패합니다.",
"* 그의 주문이 캐스터를 보호합니다: 근접 딜러는 창을 통해 데미지를 처리합니다."
};

-- Auchenai Crypts : Zona 558 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18371"] = { "죽음의 감시인 쉴라크",
"* |cff71d5ff|Hspell:32300|h[Inquisitor's Watching Eye]|h|r: 눈이 한 플레이어를 따라가며 불을 붙입니다: KITE 그것을 그룹에서 멀리 떨어뜨립니다.",
"* 죽은 감시자가 바닥을 돌아다닙니다: 힐러가 모이는 것을 막기 전에 AoE 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18373"] = { "총독 말라다르",
"* 플레이어의 어두운 복제가 전투 중 생성됩니다: 복제를 먼저 처치하고, 소유주보다 더 강력합니다.",
"* 소울 스cream은 영역에서 무효화됩니다: 캐스터들은 스cream 라인에서 멀어집니다.",
"* 섀도 볼트는 탱커에게 집중됩니다: 힐러는 미리 방어막을 사이에 배치합니다."
};

-- Shadow Labyrinth : Zona 555 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18667"] = { "선동자 검은심장",
"* |cff71d5ff|Hspell:33676|h[Charge]|h|r: 가장 멀리 있는 대상에게 찰지: 그룹에서 떨어져 있지 않아야 합니다.",
"* 워스톰은 근접 공격자를 넘어뜨립니다: 빠르게 재참전하세요, 윈도우는 짧습니다.",
"* 와일드허운은 그 아래에서 회전합니다: 근접 공격자는 회전 윈도우에서 다시 올라옵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18708"] = { "울림",
"* |cff71d5ff|Hspell:33711|h[Murmur's Touch]|h|r: 촉이 카운트다운되고, 표시된 위치에서 폭발합니다: 표시된 위치에서 혼자 튀어나갑니다.",
"* |cff71d5ff|Hspell:33923|h[Sonic Shockwave]|h|r: 충격파는 전면 콘 형태입니다: 근접 딜러는 그의 몸 뒤에 있어야 합니다.",
"* |cff71d5ff|Hspell:38796|h[Sonic Boom]|h|r: 폭발은 방 전체에 맞습니다: 주문 시, 모두 범위를 벗어납니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18731"] = { "사자 지옥아귀",
"* |cff71d5ff|Hspell:33547|h[Fear]|h|r: 공포는 탱커를 위치에서 벗어나게 합니다: 탱커를 보호하는 사람에게 트레머 또는 공포 방어구를 사용하십시오.",
"* 기습은 탱커를 뒤로 밀어냅니다: 뒤쪽 벽을 정리하거나, 패트롤이 전투에 참여하도록 하십시오.",
"* 그는 입구에서 넓은 길을 순찰합니다: 그를 패키지 사이에 있는 빈 공간으로 끌어오십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18732"] = { "단장 보르필",
"* |cff71d5ff|Hspell:33563|h[Rain of Fire]|h|r: 불의 비는 전체 지역을 태웁니다: 표시된 지형에서 벗어나세요.",
"* 그는 공허 포털로 달려가고 돌아와 몬스터를 데려옵니다: 파티는 돌아올 때 AoE를 보존하고, 그를 추격하지 않습니다.",
"* 공허 여행자들은 각 플레이어를 추적합니다: 그들이 사냥할 때 아무도 움직이지 않습니다."
};

-- The Eye : Zona 550 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18805"] = { "고위 점성술사 솔라리안",
"* |cff71d5ff|Hspell:33045|h[Wrath of the Astromancer]|h|r: 폭탄 마법의 분노는 한 플레이어를 표적으로 삼습니다: 폭탄이 터지기 전까지 사람들에게서 멀리 떨어져 있어야 합니다.",
"* 전투 중, 에이전트들이 방에 흩어져 나타납니다: 빠르게 공격하여, 우선적으로 치유사를 공격하세요.",
"* 체력이 낮아지면 복제본으로 나뉩니다: 진짜 한 명을 죽여야 합니다 — 성직자는 살아있다면 그녀를 부활시킵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19514"] = { "알'아",
"* |cff71d5ff|Hspell:35410|h[Melt Armor]|h|r: 멜트 아머는 탱커를 완전히 벗겨내: 각 멜트 후마다 탱커를 즉시 교체.",
"* |cff71d5ff|Hspell:35383|h[Flame Quills]|h|r: 깃털이 플랫폼 위로 불을 내리: 주문 시 그녀 아래로 숨어.",
"* 그녀가 버리는 플랫폼에서 새끼들이 부화: 치유사들이 모이는 것을 막기 위해 미리 AoE 공격.",
"* 그녀는 플랫폼에서 플랫폼으로 점프: 탱커는 빠르게 따라가고, 레이드는 잘못된 플랫폼에 묶이지 않도록."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19516"] = { "공허의 절단기",
"* |cff71d5ff|Hspell:34162|h[Pounding Slam]|h|r: 펀칭은 침묵을 유발하고 근접 공격자를 던져 버립니다: 근접 공격자는 펀칭 시에 걸어 나갑니다.",
"* |cff71d5ff|Hspell:34172|h[Arcane Orb]|h|r: 원거리 공격에 폭탄이 떨어지는 곳에 아무도 서 있지 않습니다: 원거리 마법구체는 무작위로 떨어집니다.",
"* 그는 장난을 무시합니다: 탱커는 깔끔하게 끌어당기고, 모두는 넉백에 대한 위협을 주의합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19622"] = { "캘타스 선스트라이더",
"* 네 조력자는 한 번씩 쓰러집니다: 성직자를 제어하고, 나머지는 레이드 콜을 통해 폭발시켜 제거합니다.",
"* 무기 단계는 무기 팩을 생성합니다: 획득하고, 그들은 전투의 대부분을 담당합니다.",
"* |cff71d5ff|Hspell:36819|h[파이어볼]|h|r: 항상 중단 — 5단계의 파이어볼은 대상에 맞을 때 삭제합니다.",
"* |cff71d5ff|Hspell:36735|h[플레임 스트라이크]|h|r: 플레임 스트라이크는 바닥에 화염을 일으킵니다: 즉시 움직이세요.",
"* |cff71d5ff|Hspell:34341|h[그레이비티 랩스]|h|r: 그레이비티 랩스는 레이드를 들어 올립니다: 그 주변을 돌면서 파워 오브를 잡으세요."
};

-- Gruul's Lair : Zona 565 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18831"] = { "왕중왕 마울가르",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: 와일드윈드는 링 형태로 근접 공격을 베어: 각 회전마다 근접 공격자는 반경 밖으로 이동.",
"* 그의 자문 중 두 명의 치유사가 FIRST 죽어야 함: 모든 치유는 항상 인터럽트를 받음.",
"* 광란한 키글러는 영역 폭탄을 사용: 한 명의 플레이어가 그를 멀리서 견제.",
"* 크로쉬는 캐스터를 끌어당김: 한 명의 원거리 공격자가 다른 모든 사람으로부터 멀리서 공격을 유도."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18832"] = { "왕중왕 마울가르",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: 와일드윈드는 링 형태로 근접 공격을 베어: 각 회전마다 근접 공격자는 반경 밖으로 이동.",
"* 그의 자문 중 두 명의 치유사가 FIRST 죽어야 함: 모든 치유는 항상 인터럽트를 받음.",
"* 광란한 키글러는 영역 폭탄을 사용: 한 명의 플레이어가 그를 멀리서 견제.",
"* 크로쉬는 캐스터를 끌어당김: 한 명의 원거리 공격자가 다른 모든 사람으로부터 멀리서 공격을 유도."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18834"] = { "왕중왕 마울가르",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: 와일드윈드는 링 형태로 근접 공격을 베어: 각 회전마다 근접 공격자는 반경 밖으로 이동.",
"* 그의 자문 중 두 명의 치유사가 FIRST 죽어야 함: 모든 치유는 항상 인터럽트를 받음.",
"* 광란한 키글러는 영역 폭탄을 사용: 한 명의 플레이어가 그를 멀리서 견제.",
"* 크로쉬는 캐스터를 끌어당김: 한 명의 원거리 공격자가 다른 모든 사람으로부터 멀리서 공격을 유도."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18835"] = { "왕중왕 마울가르",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: 와일드윈드는 링 형태로 근접 공격을 베어: 각 회전마다 근접 공격자는 반경 밖으로 이동.",
"* 그의 자문 중 두 명의 치유사가 FIRST 죽어야 함: 모든 치유는 항상 인터럽트를 받음.",
"* 광란한 키글러는 영역 폭탄을 사용: 한 명의 플레이어가 그를 멀리서 견제.",
"* 크로쉬는 캐스터를 끌어당김: 한 명의 원거리 공격자가 다른 모든 사람으로부터 멀리서 공격을 유도."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18836"] = { "왕중왕 마울가르",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: 와일드윈드는 링 형태로 근접 공격을 베어: 각 회전마다 근접 공격자는 반경 밖으로 이동.",
"* 그의 자문 중 두 명의 치유사가 FIRST 죽어야 함: 모든 치유는 항상 인터럽트를 받음.",
"* 광란한 키글러는 영역 폭탄을 사용: 한 명의 플레이어가 그를 멀리서 견제.",
"* 크로쉬는 캐스터를 끌어당김: 한 명의 원거리 공격자가 다른 모든 사람으로부터 멀리서 공격을 유도."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19044"] = { "용 학살자 그룰",
"* |cff71d5ff|Hspell:36240|h[Ground Slam]|h|r: 땅을 쳐서 모든 사람을 벽으로 던져버립니다: 그 후에 흩어져야 하거나, 파괴가 주변 사람들을 공격합니다.",
"* |cff71d5ff|Hspell:36300|h[Shatter]|h|r: 얼음을 깨뜨립니다: 아무도 주변에 가까이 서 있지 않아야 합니다.",
"* |cff71d5ff|Hspell:33525|h[Growth]|h|r: 성장이 시간이 지나면서 누적됩니다: 싸움이 전에 성장이 승리하기 전에 끝납니다."
};

-- The Mechanar : Zona 554 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19218"] = { "게이트워처 자이로킬",
"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: 펀치는 근접 공격자를 얼립니다: 회전 공격 사이의 공간에서 벗어나세요.",
"* 그림의 폭격이 그룹에 영향을 미칩니다: 넓게 퍼지는 것을 유지하고, 치유사가 준비되어 있도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19219"] = { "기계군주 캐퍼시투스",
"* |cff71d5ff|Hspell:35158|h[반사 피해 방어막]|h|r: 피해막은 공격을 반사합니다: 근접 공격은 찰칵 소리가 나면 멈춰야 합니다.",
"* |cff71d5ff|Hspell:35159|h[반사 마법 방어막]|h|r: 마법 방어막은 주문을 반사합니다: 주문사는 찰칵 소리가 나면 멈춰서야 합니다.",
"* 네더 충격파가 바닥을 가로질러 굴러갑니다: 피하세요, 만지면 폭발합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19220"] = { "철두철미한 파탈리온",
"* |cff71d5ff|Hspell:35280|h[Dominate Mind]|h|r: Domination은 한 플레이어를 대상으로 합니다: 무의식적인 대상에게 데미지를 지속적으로 가하면, 자동으로 종료됩니다.",
"* Nether Wraiths는 낮은 체력 상태에서 맹렬하게 공격합니다: 도착 즉시 AoE 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19221"] = { "황천술사 세페스레아",
"* 불 추적은 방 안에서 한 플레이어를 따라다닙니다: KITE 추적을 넓게 퍼뜨려, 그룹 근처에 두지 마세요.",
"* 지옥의 존재가 나타나 추격합니다: 원거리 공격으로 하나씩 제거하세요.",
"* 용의 숨결은 앞쪽입니다: 탱커는 모든 공격 시에 그룹에서 멀리 떨어져 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19710"] = { "문지기 철손",
"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: 망치는 근접 공격자를 둔화시킵니다: 망치의 범위 밖으로 흩어져.",
"* |cff71d5ff|Hspell:35327|h[Static Disruption]|h|r: 방해는 겹쳐진 사람을 밀어냅니다: 반경 내에 모이지 마세요.",
"* 그는 앞에서 싸우지 않습니다: 스윙은 근접 공격자를 제자리에서 묶습니다."
};

-- The Arcatraz : Zona 552 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20870"] = { "속박 풀린 제레케스",
"* |cff71d5ff|Hspell:30533|h[Void Zone]|h|r: void zone는 땅에 불을 지피고: 사람들이 나타날 때 즉시 벗어나세요.",
"* |cff71d5ff|Hspell:32863|h[Seed of Corruption]|h|r: 씨앗은 표시된 곳에서 폭발합니다: 폭발 전에 치유하거나, 폭발이 그룹을 묶습니다.",
"* void fiends는 그의 옆에서 생성됩니다: 의사에게 도달하기 전에 AoE로 처리하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20885"] = { "파멸의 예언자 달리아",
"* |cff71d5ff|Hspell:36142|h[Gift of the Naaru]|h|r: 항상 중단 — 그녀의 선물은 그녀를 거의 완전히 치유합니다.",
"* |cff71d5ff|Hspell:36173|h[Whirlwind]|h|r: 와일드윈드는 링 모양으로 근접 공격을 멈춥니다: 근접 공격은 반경 밖으로 이동합니다.",
"* 그녀는 워든으로 교체합니다: 활성인 대상에 집중하고 두 대상 간에 피해를 분산하지 마십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["20886"] = { "격노의 점술사 소코드라테스",
"* |cff71d5ff|Hspell:36512|h[Felfire Ground]|h|r:  felfire가 바닥에 균열을 일으킵니다: 아무도 타오르는 바닥에 서 있지 않습니다.",
"* |cff71d5ff|Hspell:35759|h[Knock Away]|h|r: 차지 공격이 탱커를 밀어냅니다: 탱커를 보호하거나, 두 번째 탱커가 그를 잡습니다.",
"* 그는 Dalliah와 번갈아 공격합니다: 초점은 순서대로 누구에게 향하고, Crowd Control은 교체될 때까지 기다립니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20912"] = { "선구자 스키리스",
"* |cff71d5ff|Hspell:36924|h[Mind Rend]|h|r: 마인 렌드가 마크에 맞을 때: 렌드 사이에 마크를 치유하세요.",
"* 정신 속의 환상이 그룹에서 생성됩니다: 각 사람은 먼저 자신의 OWN 환상을 죽여야 합니다.",
"* 정신 지배는 한 플레이어를 잠시 동안 지배합니다: 그들에게 피해를 유지하고, 자동으로 종료됩니다."
};

-- Serpentshrine Cavern : Zona 548 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21212"] = { "여군주 바쉬",
"* |cff71d5ff|Hspell:38575|h[Entangle]|h|r: 덩굴이 여러 사람을 묶습니다: 이를 통과하여 치유하고, 혼자서 덩굴을 싸우지 마세요.",
"* |cff71d5ff|Hspell:38511|h[Shock Blast]|h|r: 쇼크 블래스트는 넓은 범위에 둔화를 일으킵니다: 폭발선에서 벗어나세요.",
"* 두 번째 단계는 오염된 코어에서 진행됩니다: 하나를 잡고, 제너레이터로 전달하고, 네 개의 방패를 순서대로 파괴하세요.",
"* 스트라이더는 플랫폼 위를 이동하고, 나가스는 제자리에 죽습니다: 코어가 움직이는 동안 쓰레기를 죽이지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21213"] = { "겅둥파도 모로그림",
"* |cff71d5ff|Hspell:37730|h[Tidal Wave]|h|r: Tidal Wave는 전방 넉백 공격: 탱커는 그룹에서 멀리 떨어뜨립니다.",
"* |cff71d5ff|Hspell:37850|h[Watery Graves]|h|r: 무덤은 수영장에서 물고기를 소환: 파도 사이의 소환 지점을 AoE 공격합니다.",
"* 물방울이 한 플레이어를 쫓아 공격하며 성장: 쫓아냅니다 — 만지는 모든 사람에게 데미지를 줍니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21214"] = { "심해군주 카라드레스",
"* |cff71d5ff|Hspell:38236|h[Cataclysmic Bolt]|h|r: 번개가 SECOND 가장 낮은 체력에 맞습니다: 항상 체력을 최대로 유지하십시오.",
"* |cff71d5ff|Hspell:38330|h[Tidal Surge]|h|r: 물결은 전체 파티를 플랫폼으로 밀어냅니다: 자신을 고정하거나 치유하십시오.",
"* 세 명의 운반자가 먼저 쓰러집니다: Sharkkis, 그런 다음 Tideress, 그런 다음 Caribdis — 주인만 나중에 녹습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21215"] = { "눈먼 레오테라스",
"* |cff71d5ff|Hspell:37749|h[Whirlwind]|h|r: 와일드윈드는 근접 공격 대상에게 피를 흘립니다: 공격을 멈추고 기다리세요.",
"* |cff71d5ff|Hspell:37640|h[Chaos Blast]|h|r: 카오스 블레이스트는 캐스터에게 닿을 때 연쇄됩니다: 흩어져서 연쇄를 끊으세요.",
"* 악마 단계에서 그룹의 복제가 생성됩니다: 모든 사람이 먼저 자신의 복제를 처치하고, 나머지는 레이드가 처리합니다.",
"* 인간 형태의 바니쉬 창이 열립니다: 워록은 페이즈 분할에 바니쉬를 보존합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21216"] = { "불안정한 히드로스",
"* |cff71d5ff|Hspell:38219|h[Frost Tomb]|h|r: 얼음 무덤은 한 플레이어를 완전히 얼립니다: 나머지를 통과하면서 치유하고, 얼어붙은 사람은 안전합니다.",
"* 탱커는 요소를 이동하기 위해 문턱을 건넙니다: 올바른 타이밍에만 건너가야 하고, 잘못 건너가면 디버프가 쌓입니다.",
"* 독 영역에서는 부패가 빠르게 쌓입니다: 풀에서 벗어나 스택을 관리하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21217"] = { "심연의 잠복꾼",
"* |cff71d5ff|Hspell:37660|h[Spout]|h|r: Spout가 시계 바늘처럼 회전하며 움직입니다: 광선과 함께 달리고, 광선을 통과하는 것은 피하세요.",
"* |cff71d5ff|Hspell:21873|h[Whirl]|h|r: Whirl은 근접 공격자를 수영장으로 밀어냅니다: 주문 시, 반경 밖으로 이동하세요.",
"* 전투 중 수나가 수영장에서 생성됩니다: AoE 공격하여, 원거리 공격자는 기습자를 제거합니다."
};

-- Black Temple : Zona 564 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22841"] = { "아카마의 망령",
"* Akama는 체인을 끊기 위해 채널을 사용합니다: 파도 속에서 방어하거나 채널이 끝나지 않을 것입니다.",
"* 추가가 두 줄로 쏟아집니다: 채널을 사용하는 사람을 빠르게 정리하고, 치유사가 먼저 죽으면 안 됩니다.",
"* 그림자가 자유로워지면 모두가 그를 불태웁니다: 냉각 효과가 그때에 맞춰서, 이전에는 아닙니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22871"] = { "테론 고어핀드",
"* 죽음의 그림자가 한 플레이어를 선택합니다: 그들은 쓰러지고 그림자 구조체로 계속 플레이합니다 — 파티는 먼저 그들의 저주를 끝냅니다.",
"* 죽은 영혼은 그 뒤를 쫓습니다: 그들이 모일 때까지 돌아서 AoE합니다.",
"* 슬픔의 저주는 표시된 사람의 치유를 끊습니다: 빠르게 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22887"] = { "대장군 나젠투스",
"* |cff71d5ff|Hspell:39837|h[Needle Spine]|h|r: 척추 발사 공격은 넓은 범위에 피해를 줍니다: 넓게 퍼져서, 폭발에 집중적으로 회복.",
"* |cff71d5ff|Hspell:39872|h[Tidal Shield]|h|r: 파도 방패는 그를 보호합니다: 적으로 공격하지 마세요, 레이드가 한 단계 뒤로 물러서세요.",
"* 꿰뚫린 척추는 뒤에 꽂혀 있습니다: 표시된 빠른 대상에 제거 아이템을 사용하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22898"] = { "궁극의 심연",
"* |cff71d5ff|Hspell:41951|h[Molten Blaze]|h|r: 불이 한 플레이어를 추격: KITE를 사용하여 파이프가 다른 사람에게 닿지 않도록 파티에서 멀리 떨어뜨립니다.",
"* 밟는 공격으로 근접 딜러를 넘어뜨립니다: 방어하거나 넘어지는 것을 받아들이고 다시 교전합니다.",
"* 두 탱커가 번갈아 가며 그를 잡습니다: 탱킹하지 않는 사람이 기회를 얻습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22917"] = { "일리단 스톰레이지",
"* The shear cuts the tank in half: swap tanks on every shear or the healers lose the bar.",
"* The eye beam sweeps the line he faces: the raid clears the lane the moment he turns.",
"* The shadow demons hunt two players: take the demon trinket and control them, or they feast.",
"* In the demon form the raid stacks and heals through: the wings open the burst window.",
"* The flame crash burns zones under people: move out, the fire spreads where it lands."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22947"] = { "대모 샤라즈",
"* |cff71d5ff|Hspell:40891|h[Fatal Attraction]|h|r: 사슬은 세 명의 플레이어를 함께 묶어두고, 적으로부터 멀어지면서 서로 가까이 있게 만듭니다.",
"* 프리즘 방패는 스킬을 회전시키므로, 거기에 던지는 마법을 바꿔주세요.",
"* 그녀의 앞쪽으로 레이가 퍼져 나갑니다: 아무도 레이가 지나가는 길에 서 있지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22948"] = { "구르토그 블러드보일",
"* |cff71d5ff|Hspell:40481|h[Acidic Wound]|h|r: the acidic bleed stacks on the tank: swap tanks on the stacks or the healers drown.",
"* 펠 래지는 한 플레이어를 대상으로 합니다: 치유를 집중적으로 제공하고, 그들은 엄청난 부담을 짊어집니다.",
"* 끓는 물은 5명씩의 그룹에 영향을 미칩니다: 치유사는 끓는 물을 처리하고, 파티는 팀별로 확산을 진행합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22949"] = { "일리다리 의회",
"* 네 명의 멤버가 거의 균등하게 떨어집니다: 한 명이 혼자 남겨져 전체 의회에 분노를 일으킵니다.",
"* 성직자는 다른 사람들을 치유합니다: 항상 그녀의 큰 치유를 방해하십시오.",
"* 반사 방패가 한 명에게 덮입니다: 캐스터들은 빛이 닿을 때 주문을 유지하십시오.",
"* 독이 있는 풀들이 적으로 모입니다: 빠르게 정화하고 녹색에서 벗어나십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22950"] = { "일리다리 의회",
"* 네 명의 멤버가 거의 균등하게 떨어집니다: 한 명이 혼자 남겨져 전체 의회에 분노를 일으킵니다.",
"* 성직자는 다른 사람들을 치유합니다: 항상 그녀의 큰 치유를 방해하십시오.",
"* 반사 방패가 한 명에게 덮입니다: 캐스터들은 빛이 닿을 때 주문을 유지하십시오.",
"* 독이 있는 풀들이 적으로 모입니다: 빠르게 정화하고 녹색에서 벗어나십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22951"] = { "일리다리 의회",
"* 네 명의 멤버가 거의 균등하게 떨어집니다: 한 명이 혼자 남겨져 전체 의회에 분노를 일으킵니다.",
"* 성직자는 다른 사람들을 치유합니다: 항상 그녀의 큰 치유를 방해하십시오.",
"* 반사 방패가 한 명에게 덮입니다: 캐스터들은 빛이 닿을 때 주문을 유지하십시오.",
"* 독이 있는 풀들이 적으로 모입니다: 빠르게 정화하고 녹색에서 벗어나십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22952"] = { "일리다리 의회",
"* 네 명의 멤버가 거의 균등하게 떨어집니다: 한 명이 혼자 남겨져 전체 의회에 분노를 일으킵니다.",
"* 성직자는 다른 사람들을 치유합니다: 항상 그녀의 큰 치유를 방해하십시오.",
"* 반사 방패가 한 명에게 덮입니다: 캐스터들은 빛이 닿을 때 주문을 유지하십시오.",
"* 독이 있는 풀들이 적으로 모입니다: 빠르게 정화하고 녹색에서 벗어나십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23420"] = { "영혼의 정수",
"* 세 가지 에센스가 회전합니다: 분노, 욕망, 고통 — 완전히 소모되기 전에 각각을 먼저 사용하세요.",
"* 욕망의 에너지는 다른 사람의 치유를 처벌합니다: 상처를 우선 처리하고, 누구도 회복시키지 마세요.",
"* 분노의 에너지는 그에게 치유를 하지 못하게 합니다: 순수한 피해가 승리합니다.",
"* 소울 드레인은 큰 마법 디버프로 나타납니다: 즉시 해제하세요."
};

-- Magisters' Terrace : Zona 585 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24560"] = { "여사제 델리사",
"* |cff71d5ff|Hspell:44141|h[Flash Heal]|h|r: 항상 방해 — 플래시는 그녀의 아레나 팀을 계속 생존하게 합니다.",
"* 다섯 명의 전사는 팀으로 플레이합니다: 치유사를 제어하고, 한 목표를 폭격하며, 피해를 분산하지 마세요.",
"* 전사는 근접 공격을 회전합니다: 근접 공격은 회전 창에서 빠져나옵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24664"] = { "캘타스 선스트라이더",
"* |cff71d5ff|Hspell:44194|h[Fireball]|h|r: 불꽃은 마법 시전 시 표시된 모든 보호막을 삭제합니다.",
"* 중력 효과는 사람들을 끌어당기고 들어 올립니다: 방의 가장자리에 서 있지 마세요.",
"* 페닉스는 불꽃 속에서 부화하고 다시 나타납니다: 새를 AoE 공격하고, 알을 두 번째로 죽입니다.",
"* 불꽃 공격은 영역을 태웁니다: 표시되면 즉시 이동하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24723"] = { "셀린 파이어하트",
"* 펠 채널은 파티를 소모합니다: 어떤 인터럽트도 이를 끊을 수 있으며, 심지어 바쉬도 가능합니다.",
"* 펠 광선은 파티가 소모되는 동안 데미지를 증가시킵니다: 소모된 애드들을 빠르게 처치하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24744"] = { "벡살루스",
"* 순수한 에너지 구체가 그 주변에 생성됩니다: 그가 다가오기 전에 각각을 죽여야 합니다, 그렇지 않으면 그는 팽창합니다.",
"* 방전이 끝에 모입니다: 치유사는 폭풍 속에서 레이드를 이끌어야 합니다."
};

-- Sunwell Plateau : Zona 580 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24850"] = { "칼렉고스",
"* 영혼 폭발은 표시된 위치에서 포탈을 엽니다: 표시된 위치는 악마 영역과 교환하며, 두 보스가 함께 쓰러집니다.",
"* |cff71d5ff|Hspell:45010|h[Arcane Breath]|h|r: Arcane Breath은 전방 공격입니다: 탱커는 그룹에서 멀리 떨어져 있어야 합니다.",
"* Wild Magic은 무작위 효과를 던집니다: 치유는 유연하게 유지되며, 어떤 것도 보장되지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24882"] = { "브루탈루스",
"* |cff71d5ff|Hspell:45141|h[화상]|h|r: 화상 효과는 탱커에게 매우 효과적입니다: 스택 수를 기준으로 탱커를 교체하세요.",
"* 풋스탬은 근접 딜러를 날려버립니다: 그룹을 보호하거나, 데미지를 흡수합니다.",
"* 대사 블로크는 캐스터를 봉쇄합니다: 치유사는 캐스트가 유지되는 동안 우선순위를 정합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25038"] = { "지옥안개",
"* |cff71d5ff|Hspell:45717|h[Demonic Vapor]|h|r: 안개는 한 플레이어를 따라감: KITE를 넓게 사용하고, 파티 근처에 접근하지 마세요.",
"* |cff71d5ff|Hspell:45661|h[Encapsulate]|h|r: 캡슐은 한 플레이어를 들어올립니다: 들어올리는 동안 치유하고, 공중에 떠 있습니다.",
"* 비 속은 시계 바늘처럼 뻗어 나갑니다: 모두 비 속을 따라 움직이세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25165"] = { "에레다르 쌍둥이",
"* 쌍둥이는 거의 동일하게 쓰러집니다: 한쪽이 남은 생존자를 강화합니다.",
"* 거대한 불길은 가장 가까운 대상에게 닿습니다: 마크 사이의 간격을 유지하세요.",
"* 그림자의 폭발은 어두운 쪽에서 치명적으로 공격합니다: 치유사는 그림자 탱커를 미리 보호합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25166"] = { "에레다르 쌍둥이",
"* 쌍둥이는 거의 동일하게 쓰러집니다: 한쪽이 남은 생존자를 강화합니다.",
"* 거대한 불길은 가장 가까운 대상에게 닿습니다: 마크 사이의 간격을 유지하세요.",
"* 그림자의 폭발은 어두운 쪽에서 치명적으로 공격합니다: 치유사는 그림자 탱커를 미리 보호합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25315"] = { "킬제덴",
"* |cff71d5ff|Hspell:45848|h[Darkness of a Thousand Souls]|h|r: 어둠이 전체 파티를 삼키는: 방어 대기열 및 주문 시 최대 치유.",
"* 방패 둥지가 기둥에 생성됨: 원거리 공격하여 파괴하거나, 광선이 파티를 공격함.",
"* 그림자 바늘이 파동으로 폭발함: 폭발 지역에서 벗어나세요.",
"* 둥지 능력은 마지막에 나타남: 광선을 피하기 위해 잡으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25741"] = { "므우루",
"* Void sentinels는 파동으로 등장: 그들이 착지할 때마다 AoE 공격하고, 즉시 목표를 변경하세요.",
"* 부정적인 에너지는 방 전체에 퍼집니다: 치유사는 파동 사이의 치유를 조율해야 합니다.",
"* 그는 쓰러질 때 Entropius가 그 자리에 나타납니다: 검은 구멍을 피하고, 불을 다시 시작하세요."
};
P.ko = ko;
