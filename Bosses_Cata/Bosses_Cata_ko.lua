--[[
	Bosses_Cata_ko.lua
		Datos en KO del pack Cata.
		Fichero creado por el editor web (2026-10-16); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ko = {};
local pack = ko;


-- Castillo de Colmillo Oscuro : Zona 209 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3887"] = { "남작 실버레인",
"* Dispel |cff71d5ff|Hspell:93956|h[Veil of Shadow]|h|r so healing is not reduced.",
"* 적이 생성될 때, 적에게 모든 데미지를 집중합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4278"] = { "사령관 스프링베일",
"* 몬스터는 통제 가능하며 가능한 한 빨리 처치해야 합니다; 그의 Unholy Empowerment은 중단해야 합니다.",
"* 탱커는 그룹에서 멀리하도록 유지하고 바닥의 오염을 피해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46962"] = { "남작 애쉬버리",
"* |cff71d5ff|Hspell:93712|h[Pain and Suffering]|h|r를 중단하거나 해제하세요.",
"* |cff71d5ff|Hspell:93710|h[Asphyxiate]|h|r로 인해 모두 1% 체력이 감소하고, 그 후 |cff71d5ff|Hspell:93705|h[Stay of Execution]|h|r를 사용하는데, 그룹이 어느 정도 체력을 회복하면 즉시 중단해야 합니다. 왜냐하면 이 스킬은 적으로도 회복시키기 때문입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46963"] = { "월든 경",
"* 그는 녹색 포션을 사용할 때, 모두 움직여야 합니다.",
"* 그는 빨간 포션을 사용할 때, 모두 멈춰 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46964"] = { "고드프리 경",
"* 가능한 한 |cff71d5ff|Hspell:93761|h[Cursed Bullets]|h|r 저주를 해제하십시오.",
"* |cff71d5ff|Hspell:93520|h[Pistol Barrage]|h|r에서 멀리 떨어져서."
};

-- Zul'Aman : Zona 3805 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23574"] = { "아킬존",
"* All apart from +6 yards. |cff71d5ff|Hspell:61911|h[Static Disruption]|h|r increases the damage if there are players around.",
"* 플레이어를 들어 올리는 흰 독수리에 전체 데미지를 집중하세요.",
"* A player gets lifted for |cff71d5ff|Hspell:45336|h[Electrical Storm]|h|r: everyone stacks under them to avoid the damage."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23576"] = { "나로락",
"* |cff71d5ff|Hspell:42402|h[Surge]|h|r는 가장 멀리 있는 플레이어를 공격합니다; 각 공격 후에는 반드시 교체해야 합니다, 그렇지 않으면 죽습니다.",
"* 곰 형태로 변신하면 인터럽트를 시전합니다; 치유사가 시전하는 것이 |cff71d5ff|Hspell:42395|h[Lacerating Slash]|h|r와 겹치면 주의하십시오. 이 기술은 180K의 피해를 줍니다.",
"* 보스에게 전체 DPS를 줍니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23577"] = { "할라지",
"* 물 토템 영역에서 보스를 멀리 유지하십시오.",
"* 캐스터는 물 토템 영역을 사용하여 체력과 마나를 회복할 수 있습니다.",
"* 번개 토템을 즉시 파괴하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23578"] = { "잔'알라이 <드래곤hawk 아바타>",
"* 그는 2개의 추가몹을 소환하고, 단 1개만 죽입니다.",
"* 다른 추가몹 옆에 있는 보스를 탱킹하고, 알을 모으는 통로 앞을 향해 AoE 공격합니다.",
"* 보스가 중앙으로 이동하여 바닥에 폭탄을 설치하고, 폭발을 피해야 합니다.",
"* 이러한 작업은 전투 전체에 반복됩니다.",
"* 때로는 보스가 전방에서 불을 뿜어 바닥에 줄을 만들고, 이를 피해야 합니다.",
"|cFFFF0000팁:|r 파티에 마법사가 있다면, 이전 턴에 얻은 지진을 사용해 보스에게 던지는 것이 좋습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23863"] = { "다아카라",
"* 그는 무작위로 4 형태 중 2 형태로 변신합니다:",
"독수리. 번개 토템을 파괴하고 사이클론을 피하십시오.",
"곰. 치유사는 마비 상태를 해제하고 충격을 기억해야 합니다.",
"lynx. 치유사에게는 어려움; 가능한 한 빨리 2개의 작은 고양이를 죽이십시오. 보스는 무작위로 출혈을 적용합니다.",
"드래곤hawk. 홈과 불 열기에서 피해를 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24239"] = { "사술 군주 말라크라스",
"* 먼저 두 몬스터를 제거합시다.",
"이상적으로, 왼쪽 몬스터에 CC를 사용하면서 오른쪽 몬스터에 데미지를 주는 것이 좋습니다.",
"그리고 CC를 유지하면서 끝까지 진행할 수 있다면, 보스와 싸우도록 합니다.",
"그렇지 않으면 보스와 싸우기 전에 두 번째 몬스터를 제거합니다.",
"* 그는 플레이어의 능력을 사용할 것입니다. 모든 것을 방해하고 해제할 준비를 하십시오."
};

-- Throne of the Tides (remasterizada) : Zona 643 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23870"] = { "코렌 디어브루",
"* 탱커: 빠르게 코렌과 그의 하수인들을 처치하여 얇은 갑옷이나 가벼운 갑옷 DPS에 피해를 주지 않도록 합니다.",
"* 추가 몬스터: 그는 소환하는 하수인들을 먼저 처치하여 그룹 피해를 줄입니다.",
"* 테이블 위의 맥주 병: 일시적인 피해 버프를 던지거나 사용하거나 보스의 디버프를 완화하는 데 사용합니다.",
"* 치유: 강력한 자가 치유 능력을 가진 탱커(DK, 워리어)는 자신을 보호할 수 있지만, 일반적인 치유사는 전투를 위험 없이 진행할 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40788"] = { "환각술사 구르샤",
"* 에루낙 페이즈: |cff71d5ff|Hspell:429051|h[어스퓨리]|h|r와 |cff71d5ff|Hspell:429037|h[스톰플러리 토템]|h|r을 한 번에 사용.",
"* |cff71d5ff|Hspell:429172|h[테러파잉 비전]|h|r은 긴 쿨타임을 가지고 있습니다: 중단하세요.",
"* |cff71d5ff|Hspell:429048|h[플레임 샷]|h|r은 해제됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44566"] = { "오주마트",
"* |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r로 표시된 플레이어는 이동해야 합니다 (말합니다).",
"* |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r에 주의하세요.",
"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r는 탱킹 메커니즘입니다; 네프툴론이 플럭스로 도와줍니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["213770"] = { "오주마트",
"* |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r로 표시된 플레이어는 이동해야 합니다 (말합니다).",
"* |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r에 주의하세요.",
"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r는 탱킹 메커니즘입니다; 네프툴론이 플럭스로 도와줍니다."
};

-- Cámaras de los Orígenes : Zona 4945 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39378"] = { "라지",
"* 불 원을 피하세요.",
"* |cff71d5ff|Hspell:80352|h[소환 광구]|h|r를 중단하여 피해를 피해야 합니다.",
"* |cff71d5ff|Hspell:76355|h[태양의 축복]|h|r은 피해를 주고, 또한 우리가 입히는 피해를 증가시킵니다. 그 순간에 모든 DPS에 집중하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39425"] = { "사원 수호자 안후르",
"* 누구든지 |cff71d5ff|Hspell:75592|h[Divine Atonement]|h|r를 받으면, 8초 동안 그룹에서 멀어 나가, 보스에게 과도하게 치유되지 않도록 해야 합니다.",
"* When he starts casting |cff71d5ff|Hspell:75322|h[Reverberating Hymn]|h|r the whole group goes down to pull the two levers. On the way back we interrupt the hymn and continue.",
"참고: 일반 난에서는 각 측에 DPS 1명만 필요하며, 각자가 레버 중 하나를 당깁니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39428"] = { "대지전복자 프타",
"* 이것은 선택적인 DPS 경쟁 보스입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39587"] = { "이시세트",
"* Cuando lance |cff71d5ff|Hspell:74137|h[Supernova]|h|r, deben girarse antes de que termine el lanzamiento para evitar quedar aturdido.",
"* Cuando se divida, el orden de matar las copias debe ser:",
"1er Astral Call",
"2do Astral Rain",
"3er Veil of Sky"
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39731"] = { "아뮤내",
"* 포드 팟에 우선적으로 데미지를 주고, 보스가 회복하지 못하도록 해야 합니다. 또한, 블러드페탈 꽃에 데미지를 주어 피해를 피해야 합니다.",
"* If possible dispel |cff71d5ff|Hspell:76043|h[Wither]|h|r when it targets players.",
"참고: 영웅 난이도에서 탱커는 죽은 스포를 이용하여 보스의 죽음을 더 빠르게 만들 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39732"] = { "세테쉬",
"* 보스는 탱킹 대상이 아니며, 생성되는 추가몹은 탱킹 대상입니다.",
"* 높은 DPS를 활용하면 포탈을 무시하고, 가능한 한 빨리 보스를 처치하는 것이 좋습니다.",
"* 안전을 위해, 포탈이 생성되는 즉시 파괴하고, 탱커는 생성되는 추가몹을 잡아야 합니다 (죽이지 마세요)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39788"] = { "안라펫",
"* Move the boss to avoid the areas caused by the |cff71d5ff|Hspell:76184|h[Alpha Beams]|h|r.",
"* Try to use mitigations during the |cff71d5ff|Hspell:75622|h[Omega Stance]|h|r."
};

-- Grim Batol : Zona 4950 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39625"] = { "장군 움브리스",
"* 그는 |cff71d5ff|Hspell:74670|h[번개 공격]|h|r를 사용할 때, 표적 플레이어가 피해를 피합니다.",
"* 치유사는 탱커가 |cff71d5ff|Hspell:74846|h[출혈]|h|r를 받을 때를 주시하고, 최소 90%까지 회복시켜 디버프를 제거합니다.",
"* DPS는 어그로(트로그)를 처리합니다; 탱커는 잡지 않아야 합니다.",
"HERO의 경우 보라색 트로그가 생성됩니다; 전투 시작 전에 1명의 DPS를 지정합니다.",
"CC(Crowd Control)를 사용해야 합니다; 불가능한 경우, 그룹과 다른 어그로로부터 멀리 떨어뜨려, 지정된 DPS만 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40177"] = { "제련장인 트롱구스",
"* Avoid the area of the |cff71d5ff|Hspell:74984|h[Mighty Stomp]|h|r.",
"* Throngus가 마법 지팡이를 선택하면, 탱커는 그를 방 안으로 움직여 데미지를 피하도록 합니다.",
"* 그는 검을 선택하면, 치유사는 탱커에게 집중해야 합니다.",
"* 방패 탱커가 방패를 든 경우, 그를 입구의 구석에 두고, 탱커를 제외한 모든 사람은 그 뒤에 서세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40319"] = { "드라그가 섀도우번너",
"* 즉, |cff71d5ff|Hspell:75218|h[Summon Flames]|h|r가 생성되는 즉시, 그 뒤를 따라오는 플레이어는 다른 플레이어들이 즉시 처치할 수 있도록 반대 방향으로 달아 움직여야 합니다.",
"* When he mounts the dragon, tank him in the center of the room to make it easier to avoid the |cff71d5ff|Hspell:75321|h[Valiona's Flame]|h|r by standing behind the dragon.",
"* When he casts the |cff71d5ff|Hspell:90966|h[Devastating Scourge]|h|r avoid the fissures that damage and slow."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40484"] = { "에루닥스",
"* 원거리 딜러는 흩어져서 |cff71d5ff|Hspell:79466|h[바인딩 쇼우]|h|r가 한 명에게만 영향을 미치도록 해야 합니다.",
"* 그는 |cff71d5ff|Hspell:75664|h[게일 오브 쇼우]|h|r를 사용할 때, 모두 바람의 눈에 들어가거나 죽습니다.",
"* 게일 이후, 튜울라이트 코르루터가 생성되거나, 영웅에게는 2마리가 생성됩니다.",
"DPS는 가능한 한 빨리 죽도록 분산되어야 합니다. 왜냐하면, 알에 도달하면 보스가 치유하고, 드래곤이 파티 전체를 공격하기 때문입니다."
};

-- Cavernas Roca Negra : Zona 4926 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39665"] = { "해골분쇄자 롬오그",
"* |cff71d5ff|Hspell:75272|h[Quake]|h|r에서 발생하는 먼 구름을 피하십시오. 영웅적인 엘리먼탈이 생성될 때, 탱커와 힐러가 편안하다면 무시할 수 있지만, 그렇지 않으면 처치하십시오.",
"* |cff71d5ff|Hspell:75539|h[Chains of Woe]|h|r를 사용할 때, 모든 DPS가 체인을 파괴하는 데 집중하고, 한 번 파괴되면 가능한 한 빨리 도망쳐 |cff71d5ff|Hspell:75543|h[The Skullcracker]|h|r에 죽는 것을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39679"] = { "황혼의 전령 코를라",
"* 이 보스의 목표는 플레이어와 추가 모두에게 |cff71d5ff|Hspell:75610|h[진화]|h|r가 100틱 쌓이는 것을 막는 것입니다. 만약 그런 일이 발생하면 영향을 받은 캐릭터는 드래곤킨으로 변신하고, HERO의 경우 게임 오버가 됩니다.",
"이를 피하기 위해, 추가의 빔이 80에 도달하기 전에 차단하고, 우리 캐릭터가 80에 도달했을 때 교체합니다.",
"각 추가에 한 명씩을 할당하는 것이 가장 좋습니다.",
"팁: 만약 우리가 주의를 잃고 디버프를 보지 못하면, 캐릭터가 깜빡거리기 시작하면 변신을 준비하고 있다는 신호입니다. 그 때 빔을 받는 캐릭터를 교체해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39698"] = { "카쉬 스틸벤더",
"* 탱커는 보스가 5~6번의 화염에 맞을 때까지 불 속에서 유지하고, 즉시 꺼내줍니다.",
"* 방패의 지속 시간이 거의 소모될 때, 다시 넣습니다. 만약 소모되면, 원소 생물이 생성되고 전투가 복잡해집니다.",
"참고: 가능한 한 많은 시간을 보스가 불 속에서 유지하도록 반복적으로 넣는 것이 좋습니다. 보스가 오래 불 속에 있으면 파티가 더 많은 피해를 입습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39700"] = { "아름이",
"* 이상적으로는 늑대들을 CC로 제어하면서 보스를 처치합니다. 그렇지 않은 경우, 늑대들을 먼저 처치합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39705"] = { "승천 군주 옵시디우스",
"* 이상적으로는 한 DPS가 그림자를 교활하게 움직여야 합니다 (느려짐을 사용). 그들은 공격 대상이 아니며, 마지막으로 공격한 대상에게만 공격합니다.",
"* 그 동안 탱커와 나머지 그룹은 보스에게 집중합니다.",
"* 때때로 보스가 그림자와 교체될 것이고, 교활하게 움직이는 DPS와 탱커는 몬스터를 교체합니다."
};

-- El Núcleo Pétreo : Zona 5088 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40586"] = { "레이디 나자르",
"* Interrupt |cff71d5ff|Hspell:91477|h[Shock Blast]|h|r.",
"* Avoid the geyser from |cff71d5ff|Hspell:75722|h[Summon Geyser]|h|r.",
"* Avoid the |cff71d5ff|Hspell:76001|h[Fungal Spores]|h|r.",
"* At 66% and 33% she will do the |cff71d5ff|Hspell:75683|h[Waterspout]|h|r and 3 adds will spawn that should be CC'd to make the fight easier."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40765"] = { "울토크 대장",
"* 모든 플레이어가 |cff71d5ff|Hspell:76047|h[Dark Fissure]|h|r를 피하는 것을 항상 피해야 합니다.",
"* 탱커는 보스를 방에 계속 움직여서, 공격 범위를 분산시켜야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40792"] = { "넵투론",
"* 1단계, 탱커는 Restless Behemoths를 잡고, 작은 애들은 DPS가 직접 처치할 수 있습니다. Behemoths는 방 안을 돌아다니며 죽을 때까지 이동합니다.",
"* 2단계, 짐승과 3개의 Smashers가 Neptulon에게 텔레포트합니다.",
"Smashers는 가능한 한 빨리 처치해야 하지만, 동시에 짐승을 탱커가 죽지 않도록 돕어야 합니다.",
"탱커는 남은 Behemoth와 짐승을 계속 이동시킵니다.",
"바닥의 잉크 풀을 피하십시오.",
"* 3단계, Neptulon은 |cff71d5ff|Hspell:76133|h[Tidal Surge]|h|r를 사용합니다. 이 시점에서 보스가 죽을 때까지 풀 DPS를 사용하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40825"] = { "에루낙 스톤스피커",
"* 파티 뒤쪽으로 그를 공격하여 |cff71d5ff|Hspell:76170|h[Magma Splash]|h|r 데미지를 피하십시오.",
"* 탱크가 |cff71d5ff|Hspell:76165|h[Ember Strike]|h|r를 받을 때, 디스펠을 시도하십시오.",
"* 그는 그것을 사용할 때마다 |cff71d5ff|Hspell:76234|h[Mind Fog]|h|r에서 보스를 끌어내십시오.",
"* 만약 그가 |cff71d5ff|Hspell:76307|h[Absorb Magic]|h|r를 사용한다면, 반드시 디스펠해야 합니다. 그렇지 않으면 모든 마법 데미지가 그를 치유합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42188"] = { "오즈룩",
"* 탱커는 벽에 등을 대고 서서 |cff71d5ff|Hspell:78807|h[Shatter]|h|r를 사용할 때 밀리는 것을 피합니다.",
"* |cff71d5ff|Hspell:92410|h[Ground Slam]|h|r를 사용할 때, 탱커를 포함한 모든 플레이어가 |cff71d5ff|Hspell:92662|h[Shatter]|h|r 데미지를 피하기 위해 후퇴합니다; 데미지 범위는 바닥에 매우 뚜렷하게 보입니다.",
"* HERO, |cff71d5ff|Hspell:78939|h[Bulwark of Elementium]|h|r를 사용할 때, 모든 원거리 DPS는 데미지-오버-타임 스킬을 사용하여 반사시키고 다음 |cff71d5ff|Hspell:92426|h[Paralyze]|h|r를 유도해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42333"] = { "대여사제 아질",
"* 당신은 |cff71d5ff|Hspell:79340|h[Summon Gravity Well]|h|r에서 멀어 나가야 하지만 동시에 이를 사용하여 추종자들을 안으로 끌어당겨야 합니다.",
"* Dispel |cff71d5ff|Hspell:79351|h[Force Grip]|h|r from the tank every time he puts it on him.",
"* 만약 누군가가 저주를 제거할 수 있다면, 가능한 한 |cff71d5ff|Hspell:79345|h[Curse of Blood]|h|r를 제거하는 것이 좋습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["42810"] = { "결정 생성 거대",
"* Jump right before the cast of the |cff71d5ff|Hspell:92631|h[Quake]|h|r ends."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43214"] = { "돌거죽",
"* Avoid the floor pools from |cff71d5ff|Hspell:80800|h[Eruption]|h|r.",
"* 천장에서 떨어지는 바위들을 피하십시오; 바닥에는 그림자에 의해 표시됩니다.",
"* On HERO, when he casts |cff71d5ff|Hspell:92265|h[Crystal Storm]|h|r, get behind one of the fallen rocks to avoid the damage."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43438"] = { "코보루스",
"* Move away immediately from |cff71d5ff|Hspell:92648|h[Crystal Barrage]|h|r and on HERO kill the spiders that come out of the crystals right away.",
"* Dispel the |cff71d5ff|Hspell:82415|h[Dampening Wave]|h|r debuff as soon as it appears.",
"* On HERO, when Corborus goes underground, avoid the dust clouds that deal damage at all costs."
};

-- Descenso de Alanegra : Zona 5094 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41270"] = { "네파리안",
"* 네파리안은 온직스를 부활시키고 (|cff71d5ff|Hspell:-3277|h[Rise, Sister!]|h|r): 그들이 50미터 이내에 있으면 |cff71d5ff|Hspell:-3278|h[데드윙의 자손]|h|r의 공격 속도를 두 배로 증가시키므로, 두 용은 서로 다른 곳에서 탱킹해야 합니다.",
"* 1단계: 먼저 온직스를 처치하세요; 그녀의 |cff71d5ff|Hspell:-3284|h[전기 에너지]|h|r는 시간이 지남에 따라 쌓이고 네파리안의 |cff71d5ff|Hspell:-3276|h[전격]|h|r와 함께 발생하며, 완전한 |cff71d5ff|Hspell:-3288|h[전기 과부하]|h|r는 방 전체를 파괴합니다. 네파리안은 착지하기 전에 |cff71d5ff|Hspell:-3280|h[뼈 전사]|h|r를 소환하고 플레이어에게 |cff71d5ff|Hspell:-3295|h[지배]|h|r를 적용합니다(그들의 |cff71d5ff|Hspell:-3297|h[도둑 훔친 힘]|h|r를 치유하고, 그들을 손상시키지 마세요).",
"* 2단계 (온직스 죽음): 바닥이 용암으로 채워지고 3개의 플랫폼이 남습니다: 각각 |cff71d5ff|Hspell:-3299|h[색상 프로토타입]|h|r을 빠르게 처치하세요, 왜냐하면 그들의 |cff71d5ff|Hspell:-3300|h[블래스트 노바]|h|r는 모두에게 피해를 주고, 네파리안이 날아갈 때 |cff71d5ff|Hspell:-3301|h[섀도플레임 바라지]|h|r와 |cff71d5ff|Hspell:-3302|h[폭발하는 연탄]|h|r를 피하세요.",
"* 3단계: 네파리안이 착지하고, 쾌활함/영웅주의 상태를 유지하며, 시간을 끌지 마세요(그의 |cff71d5ff|Hspell:-3305|h[섀도플레임 스파크]|h|r가 성장하고, |cff71d5ff|Hspell:-3306|h[뼈 전사]|h|r가 |cff71d5ff|Hspell:-3307|h[강화된 공격]|h|r으로 부활합니다)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41376"] = { "네파리안",
"* 네파리안은 온직스를 부활시키고 (|cff71d5ff|Hspell:-3277|h[Rise, Sister!]|h|r): 그들이 50미터 이내에 있으면 |cff71d5ff|Hspell:-3278|h[데드윙의 자손]|h|r의 공격 속도를 두 배로 증가시키므로, 두 용은 서로 다른 곳에서 탱킹해야 합니다.",
"* 1단계: 먼저 온직스를 처치하세요; 그녀의 |cff71d5ff|Hspell:-3284|h[전기 에너지]|h|r는 시간이 지남에 따라 쌓이고 네파리안의 |cff71d5ff|Hspell:-3276|h[전격]|h|r와 함께 발생하며, 완전한 |cff71d5ff|Hspell:-3288|h[전기 과부하]|h|r는 방 전체를 파괴합니다. 네파리안은 착지하기 전에 |cff71d5ff|Hspell:-3280|h[뼈 전사]|h|r를 소환하고 플레이어에게 |cff71d5ff|Hspell:-3295|h[지배]|h|r를 적용합니다(그들의 |cff71d5ff|Hspell:-3297|h[도둑 훔친 힘]|h|r를 치유하고, 그들을 손상시키지 마세요).",
"* 2단계 (온직스 죽음): 바닥이 용암으로 채워지고 3개의 플랫폼이 남습니다: 각각 |cff71d5ff|Hspell:-3299|h[색상 프로토타입]|h|r을 빠르게 처치하세요, 왜냐하면 그들의 |cff71d5ff|Hspell:-3300|h[블래스트 노바]|h|r는 모두에게 피해를 주고, 네파리안이 날아갈 때 |cff71d5ff|Hspell:-3301|h[섀도플레임 바라지]|h|r와 |cff71d5ff|Hspell:-3302|h[폭발하는 연탄]|h|r를 피하세요.",
"* 3단계: 네파리안이 착지하고, 쾌활함/영웅주의 상태를 유지하며, 시간을 끌지 마세요(그의 |cff71d5ff|Hspell:-3305|h[섀도플레임 스파크]|h|r가 성장하고, |cff71d5ff|Hspell:-3306|h[뼈 전사]|h|r가 |cff71d5ff|Hspell:-3307|h[강화된 공격]|h|r으로 부활합니다)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41378"] = { "말로리악",
"* 그는 연마에 flask를 붓고, |cff71d5ff|Hspell:-2935|h[Red Vial]|h|r를 사용하여 |cff71d5ff|Hspell:-2936|h[Consuming Flames]|h|r를 대상에 던지고, |cff71d5ff|Hspell:-2937|h[Scorching Blast]|h|r가 주변에 있는 사람들에게 분산됩니다(레이드 겹침); |cff71d5ff|Hspell:-2938|h[Blue Vial]|h|r를 사용하면 |cff71d5ff|Hspell:-2939|h[Biting Chill]|h|r이 가까운 사람들에게 맞고, |cff71d5ff|Hspell:-2940|h[Flash Freeze]|h|r가 플레이어를 가둡니다; |cff71d5ff|Hspell:-2941|h[Green Vial]|h|r를 사용하면 |cff71d5ff|Hspell:-2942|h[Debilitating Slime]|h|r가 모든 것을 더 많은 피해를 입도록 만듭니다(사용: 완전 DPS).",
"* 각 flask를 사용하면 |cff71d5ff|Hspell:-2931|h[Aberrations]|h|r가 해제됩니다: 그들은 서로를 강화하면서 분리되어 죽습니다, |cff71d5ff|Hspell:-2933|h[Growth Catalyst]|h|r로.",
"* |cff71d5ff|Hspell:-2943|h[Dark Magic flask]|h|r(히어로)를 사용하면 |cff71d5ff|Hspell:-2946|h[Vile Swills]|h|r가 |cff71d5ff|Hspell:-2947|h[Dark Sludge]|h|r로 웅덩이를 만들고, |cff71d5ff|Hspell:-2945|h[Engulfing Darkness]|h|r를 채널링합니다: 중단합니다.",
"* STAGE 2 (25%): |cff71d5ff|Hspell:-2949|h[Release All]|h|r(Aberrations + 2개의 |cff71d5ff|Hspell:-2953|h[Prime Subjects]|h|r, 우선 순위 사냥), |cff71d5ff|Hspell:-2950|h[Magma Jets]|h|r를 피하면서, |cff71d5ff|Hspell:-2951|h[Absolute Zero]|h|r가 멀리 폭발하고, |cff71d5ff|Hspell:-2952|h[Acid Nova]|h|r가 성장하는 닷: 치유 및 최종 피해."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41442"] = { "아트라메데스",
"* 전투 전체는 |cff71d5ff|Hspell:-3072|h[소리]|h|r를 중심으로 진행됩니다: 파티는 0에서 시작하여 모든 소리 효과가 막대를 채웁니다; 100%에 도달하면 |cff71d5ff|Hspell:-3455|h[파괴]|h|r를 사용하여 파티를 죽이므로 소리 원을 피하는 것이 중요합니다.",
"* |cff71d5ff|Hspell:-3073|h[고대 드워프 방패]|h|r (10개 분산)는 중요한 순간에 사용됩니다: |cff71d5ff|Hspell:-3074|h[공명 충돌]|h|r는 그를 방해하고 |cff71d5ff|Hspell:-3075|h[빙글빙글]|h|r를 +50% 데미지를 적용합니다.",
"* 땅에 있는: |cff71d5ff|Hspell:-3076|h[소나 펄스]|h|r 디스크는 대상에게 쫓아갑니다, |cff71d5ff|Hspell:-3077|h[모듈레이션]|h|r은 모든 사람에게 맞습니다 (치유는 보존), |cff71d5ff|Hspell:-3078|h[소닉 브레스]|h|r는 플레이어를 쫓아갑니다, |cff71d5ff|Hspell:-3079|h[서잉 플레임]|h|r은 바닥을 태웁니다.",
"* 공중: 그의 |cff71d5ff|Hspell:-3086|h[로링 플레임 브레스]|h|r와 |cff71d5ff|Hspell:-3087|h[로링 플레임]|h|r는 바닥을 태웁니다, |cff71d5ff|Hspell:-3085|h[소나 붐]|h|r은 플레이어 근처에 떨어지고 |cff71d5ff|Hspell:-3088|h[소닉 파이어볼]|h|r은 표시된 사람을 쫓아갑니다 (다른 사람은 줄에 없습니다).",
"* 영웅: |cff71d5ff|Hspell:-3082|h[오브노이우스 펜드]|h|r는 파티를 Atramedes를 버프하여 괴롭힙니다 (파티가 할 수 있는 즉시 불태우십시오)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41570"] = { "용암아귀",
"* 공격 대상인 탱커를 |cff71d5ff|Hspell:-3314|h[Mangle]|h|r로 공격 (그것은 |cff71d5ff|Hspell:-3315|h[Sweltering Armor]|h|r로 방어력을 녹임) 하고, 그 순간 두 명의 플레이어가 톱니를 잡고: 그들은 |cff71d5ff|Hspell:-3320|h[Throw Hook]|h|r로 톱니에 닿고, 그를 꿰뚫어 |cff71d5ff|Hspell:-3321|h[Point of Vulnerability]|h|r를 만들어내, 지속적으로 피해를 입힘.",
"* 탱커는 그를 아무도 공격할 대상 없이 남겨두지 않아야 합니다: 만약 그가 누구도 공격할 수 없다면, |cff71d5ff|Hspell:-3317|h[Molten Tantrum]|h|r로 변신합니다.",
"* |cff71d5ff|Hspell:-3312|h[Lava Parasites]|h|r는 플레이어에게 점프하여 지속적으로 피해를 주고 (|cff71d5ff|Hspell:-3313|h[Parasitic Infection]|h|r) : 레이드는 그들을 공격하여 광역 피해를 입힙니다.",
"* |cff71d5ff|Hspell:-3310|h[Magma Spit]|h|r는 3명의 플레이어를 대상으로 하며, |cff71d5ff|Hspell:-3311|h[Pillar of Flame]|h|r가 대상의 발 앞에 떨어지므로, 대상은 움직여야 합니다.",
"* 하드 모드: 란다리우스는 30%에서 |cff71d5ff|Hspell:-3323|h[불타는 불꽃]|h|r (지면에 불이 붙음), |cff71d5ff|Hspell:-3325|h[불타는 뼈 구조물]|h|r의 |cff71d5ff|Hspell:-3327|h[아르마게돈]|h|r (폭발하기 전에 전체 데미지) 및 |cff71d5ff|Hspell:-3328|h[그림자 호흡]|h|r을 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42166"] = { "옴노트 방어 시스템",
"* 네 개의 골렘은 번갈아 가며 2개씩 공격합니다: 활성화된 골렘만 공격하고 다른 골렘은 재활용합니다.",
"* 마그마트론: |cff71d5ff|Hspell:-3264|h[인세이너이션 보안 조치]|h|r는 방 전체에 영향을 미칩니다(지속적인 치유); |cff71d5ff|Hspell:-3265|h[타겟 획득]|h|r로 표시된 플레이어는 |cff71d5ff|Hspell:-3266|h[플레임스프레이]|h|r 빔에서 벗어나고, 하이로닉에서는 |cff71d5ff|Hspell:-3267|h[인카싱 섀도우]|h|r를 치유로 견뎌냅니다. 그의 |cff71d5ff|Hspell:-3268|h[방벽]|h|r는 피해로 파괴됩니다.",
"* 아크네트론: |cff71d5ff|Hspell:-3195|h[파워 제너레이터]|h|r는 그 위에 서 있는 모든 사람(및 골렘)을 강화하므로, 표시된 플레이어는 그룹에서 끌어냅니다. |cff71d5ff|Hspell:-3196|h[아카인 안니히레이터]|h|r는 가능한 한 중단되고, |cff71d5ff|Hspell:-3197|h[파워 컨버전]|h|r가 활성화된 동안에는 누구도 방패를 공격하지 않습니다.",
"* 전자: |cff71d5ff|Hspell:-3202|h[라이팅 컨덕터]|h|r로 표시된 플레이어는 멀어집니다(주변에 피해를 입힙니다); |cff71d5ff|Hspell:-3203|h[전기 방전]|h|r를 위해 흩어져 있고, 그의 |cff71d5ff|Hspell:-3204|h[불안정한 방패]|h|r(하이로닉: |cff71d5ff|Hspell:-3205|h[섀도우 인퓨전]|h|r)를 공격하지 마십시오.",
"* 토시트론: |cff71d5ff|Hspell:-3269|h[화학 폭탄]|h|r와 |cff71d5ff|Hspell:-3270|h[화학 구름]|h|r(+50% 내부 피해: 누구도) 및 그의 |cff71d5ff|Hspell:-3271|h[독 프로토콜]|h|r는 추격 폭탄을 떨어뜨려 |cff71d5ff|Hspell:-3273|h[독 웅덩이]|h|r를 남깁니다. 그의 |cff71d5ff|Hspell:-3274|h[독에 젖은 껍데기]|h|r는 또한 혼자 남겨둡니다(공격자를 독에 잠식합니다)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42178"] = { "옴노트 방어 시스템",
"* 네 개의 골렘은 번갈아 가며 2개씩 공격합니다: 활성화된 골렘만 공격하고 다른 골렘은 재활용합니다.",
"* 마그마트론: |cff71d5ff|Hspell:-3264|h[인세이너이션 보안 조치]|h|r는 방 전체에 영향을 미칩니다(지속적인 치유); |cff71d5ff|Hspell:-3265|h[타겟 획득]|h|r로 표시된 플레이어는 |cff71d5ff|Hspell:-3266|h[플레임스프레이]|h|r 빔에서 벗어나고, 하이로닉에서는 |cff71d5ff|Hspell:-3267|h[인카싱 섀도우]|h|r를 치유로 견뎌냅니다. 그의 |cff71d5ff|Hspell:-3268|h[방벽]|h|r는 피해로 파괴됩니다.",
"* 아크네트론: |cff71d5ff|Hspell:-3195|h[파워 제너레이터]|h|r는 그 위에 서 있는 모든 사람(및 골렘)을 강화하므로, 표시된 플레이어는 그룹에서 끌어냅니다. |cff71d5ff|Hspell:-3196|h[아카인 안니히레이터]|h|r는 가능한 한 중단되고, |cff71d5ff|Hspell:-3197|h[파워 컨버전]|h|r가 활성화된 동안에는 누구도 방패를 공격하지 않습니다.",
"* 전자: |cff71d5ff|Hspell:-3202|h[라이팅 컨덕터]|h|r로 표시된 플레이어는 멀어집니다(주변에 피해를 입힙니다); |cff71d5ff|Hspell:-3203|h[전기 방전]|h|r를 위해 흩어져 있고, 그의 |cff71d5ff|Hspell:-3204|h[불안정한 방패]|h|r(하이로닉: |cff71d5ff|Hspell:-3205|h[섀도우 인퓨전]|h|r)를 공격하지 마십시오.",
"* 토시트론: |cff71d5ff|Hspell:-3269|h[화학 폭탄]|h|r와 |cff71d5ff|Hspell:-3270|h[화학 구름]|h|r(+50% 내부 피해: 누구도) 및 그의 |cff71d5ff|Hspell:-3271|h[독 프로토콜]|h|r는 추격 폭탄을 떨어뜨려 |cff71d5ff|Hspell:-3273|h[독 웅덩이]|h|r를 남깁니다. 그의 |cff71d5ff|Hspell:-3274|h[독에 젖은 껍데기]|h|r는 또한 혼자 남겨둡니다(공격자를 독에 잠식합니다)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42179"] = { "옴노트 방어 시스템",
"* 네 개의 골렘은 번갈아 가며 2개씩 공격합니다: 활성화된 골렘만 공격하고 다른 골렘은 재활용합니다.",
"* 마그마트론: |cff71d5ff|Hspell:-3264|h[인세이너이션 보안 조치]|h|r는 방 전체에 영향을 미칩니다(지속적인 치유); |cff71d5ff|Hspell:-3265|h[타겟 획득]|h|r로 표시된 플레이어는 |cff71d5ff|Hspell:-3266|h[플레임스프레이]|h|r 빔에서 벗어나고, 하이로닉에서는 |cff71d5ff|Hspell:-3267|h[인카싱 섀도우]|h|r를 치유로 견뎌냅니다. 그의 |cff71d5ff|Hspell:-3268|h[방벽]|h|r는 피해로 파괴됩니다.",
"* 아크네트론: |cff71d5ff|Hspell:-3195|h[파워 제너레이터]|h|r는 그 위에 서 있는 모든 사람(및 골렘)을 강화하므로, 표시된 플레이어는 그룹에서 끌어냅니다. |cff71d5ff|Hspell:-3196|h[아카인 안니히레이터]|h|r는 가능한 한 중단되고, |cff71d5ff|Hspell:-3197|h[파워 컨버전]|h|r가 활성화된 동안에는 누구도 방패를 공격하지 않습니다.",
"* 전자: |cff71d5ff|Hspell:-3202|h[라이팅 컨덕터]|h|r로 표시된 플레이어는 멀어집니다(주변에 피해를 입힙니다); |cff71d5ff|Hspell:-3203|h[전기 방전]|h|r를 위해 흩어져 있고, 그의 |cff71d5ff|Hspell:-3204|h[불안정한 방패]|h|r(하이로닉: |cff71d5ff|Hspell:-3205|h[섀도우 인퓨전]|h|r)를 공격하지 마십시오.",
"* 토시트론: |cff71d5ff|Hspell:-3269|h[화학 폭탄]|h|r와 |cff71d5ff|Hspell:-3270|h[화학 구름]|h|r(+50% 내부 피해: 누구도) 및 그의 |cff71d5ff|Hspell:-3271|h[독 프로토콜]|h|r는 추격 폭탄을 떨어뜨려 |cff71d5ff|Hspell:-3273|h[독 웅덩이]|h|r를 남깁니다. 그의 |cff71d5ff|Hspell:-3274|h[독에 젖은 껍데기]|h|r는 또한 혼자 남겨둡니다(공격자를 독에 잠식합니다)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42180"] = { "옴노트 방어 시스템",
"* 네 개의 골렘은 번갈아 가며 2개씩 공격합니다: 활성화된 골렘만 공격하고 다른 골렘은 재활용합니다.",
"* 마그마트론: |cff71d5ff|Hspell:-3264|h[인세이너이션 보안 조치]|h|r는 방 전체에 영향을 미칩니다(지속적인 치유); |cff71d5ff|Hspell:-3265|h[타겟 획득]|h|r로 표시된 플레이어는 |cff71d5ff|Hspell:-3266|h[플레임스프레이]|h|r 빔에서 벗어나고, 하이로닉에서는 |cff71d5ff|Hspell:-3267|h[인카싱 섀도우]|h|r를 치유로 견뎌냅니다. 그의 |cff71d5ff|Hspell:-3268|h[방벽]|h|r는 피해로 파괴됩니다.",
"* 아크네트론: |cff71d5ff|Hspell:-3195|h[파워 제너레이터]|h|r는 그 위에 서 있는 모든 사람(및 골렘)을 강화하므로, 표시된 플레이어는 그룹에서 끌어냅니다. |cff71d5ff|Hspell:-3196|h[아카인 안니히레이터]|h|r는 가능한 한 중단되고, |cff71d5ff|Hspell:-3197|h[파워 컨버전]|h|r가 활성화된 동안에는 누구도 방패를 공격하지 않습니다.",
"* 전자: |cff71d5ff|Hspell:-3202|h[라이팅 컨덕터]|h|r로 표시된 플레이어는 멀어집니다(주변에 피해를 입힙니다); |cff71d5ff|Hspell:-3203|h[전기 방전]|h|r를 위해 흩어져 있고, 그의 |cff71d5ff|Hspell:-3204|h[불안정한 방패]|h|r(하이로닉: |cff71d5ff|Hspell:-3205|h[섀도우 인퓨전]|h|r)를 공격하지 마십시오.",
"* 토시트론: |cff71d5ff|Hspell:-3269|h[화학 폭탄]|h|r와 |cff71d5ff|Hspell:-3270|h[화학 구름]|h|r(+50% 내부 피해: 누구도) 및 그의 |cff71d5ff|Hspell:-3271|h[독 프로토콜]|h|r는 추격 폭탄을 떨어뜨려 |cff71d5ff|Hspell:-3273|h[독 웅덩이]|h|r를 남깁니다. 그의 |cff71d5ff|Hspell:-3274|h[독에 젖은 껍데기]|h|r는 또한 혼자 남겨둡니다(공격자를 독에 잠식합니다)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43296"] = { "키마이론",
"* |cff71d5ff|Hspell:-3009|h[Bile-O-Tron]|h|r (Pip Quickwit의 로봇)은 레이드를 10,000 HP 이상으로 유지합니다: 그 이하에서는 |cff71d5ff|Hspell:-3012|h[Caustic Slime]|h|r가 직접적으로 죽이기 때문에, 힐러는 모든 사람의 HP를 유지하는 데 집중합니다.",
"* |cff71d5ff|Hspell:-3013|h[Massacre]|h|r는 모든 사람을 1% HP로 만듭니다 (|cff71d5ff|Hspell:-3010|h[Pip's Mixture]|h|r가 그들을 구합니다) 그리고 즉시 치료해야 합니다.",
"* 그의 |cff71d5ff|Hspell:-3015|h[Break]|h|r 스택은 탱커에게 25%의 물리 피해를 추가하고, |cff71d5ff|Hspell:-3016|h[Double Attack]|h|r는 두 번 공격합니다: 탱커는 2 스택마다 교대합니다.",
"* 20%에서 그는 |cff71d5ff|Hspell:-3018|h[Mortality]|h|r를 시전합니다 (타운트 면역 및 거의 회복 불가능): Pip's Mixture를 사용하여 1%를 유지합니다.",
"* 영웅: 네파리우스는 주기적으로 |cff71d5ff|Hspell:-3020|h[Mocking Shadows]|h|r를 발사하여 모든 사람에게 피해를 줍니다 (영역 힐 준비)."
};

-- El Bastión del Crepúsculo : Zona 5334 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43324"] = { "초갈",
"* |cff71d5ff|Hspell:-3165|h[Corrupting Blood]|h|r 능력 사용 시마다 부패 막대가 채워집니다: 25%일 때 속도가 빨라지고, 50%일 때 지속적인 혼란, 75%일 때 촉수 형태의 변형, 100%일 때 캐릭터를 통제하지 못하게 됩니다 — 낮은 상태를 유지하는 것이 중요하며, 이것이 전투의 핵심입니다.",
"* |cff71d5ff|Hspell:-3161|h[Twilight Zealot]|h|r이 측 포털에서 나타납니다: DPS/CC를 사용하여 빠르게 처치하고, |cff71d5ff|Hspell:-3162|h[Depravity]|h|r는 광역 피해입니다.",
"* 마법 지팡이가 |cff71d5ff|Hspell:-3156|h[Order of the Flame]|h|r와 |cff71d5ff|Hspell:-3158|h[Order of Shadow]|h|r를 번갈아 사용합니다: 불꽃을 사용하면 탱커가 레이드를 멀리 유지하고, |cff71d5ff|Hspell:-3211|h[Flare]|h|r로 인해; 그림자를 사용하면 약간 분산합니다.",
"* |cff71d5ff|Hspell:-3155|h[Conversion]|h|r 플레이어를 포로로 만듭니다: 환호성을 방해하기 위해 스턴/중단을 사용합니다 (각 환호는 |cff71d5ff|Hspell:-3209|h[Perverted Devotion]|h|r로 쵸갈을 강화합니다).",
"* 쵸갈의 |cff71d5ff|Hspell:-3160|h[Summonings]|h|r은 잔해를 생성하며, 이 잔해에서 |cff71d5ff|Hspell:-3216|h[Old God Blood]|h|r이 생겨납니다 — 레이드의 경로에서 멀리 처치합니다.",
"* 2단계: 25%: |cff71d5ff|Hspell:-3218|h[Old God Corruption]|h|r가 방 전체에 촉수를 채웁니다 — 영웅/욕망으로 최대한 DPS를 사용하고, |cff71d5ff|Hspell:-3220|h[Darkened Creations]|h|r을 주의합니다: 75%의 치유 감소를 하는 |cff71d5ff|Hspell:-3221|h[Debilitating Beam]|h|r이 있습니다 — 표시된 플레이어를 분리합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43686"] = { "이그나시우스",
"1단계",
"* 한쪽 끝에서 1명의 탱커와 보스 뒤에 위치한 근접 딜러로 탱킹",
"* Players who receive |cff71d5ff|Hspell:82660|h[Burning Blood]|h|r will stand near Feludius's ranged DPS to increase the damage they do while the buff lasts.",
"* 그는 플레이어를 대상으로 |cff71d5ff|Hspell:92521|h[인페르노 립]|h|r를 사용했을 때, 착지 시 바닥에 발자국을 남기고, |cff71d5ff|Hspell:82762|h[드렌치]|h|r 효과를 가지고 있는 경우 |cff71d5ff|Hspell:82700|h[워터 펌]|h|r를 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43687"] = { "펠루디우스",
"1단계",
"* 이그나시우스의 반대쪽 끝에서 1명의 탱커와 탱킹. 원을 이루는 딜러는 보스에게서 멀리 떨어져 있어야 하며, 서로 간격을 유지해야 합니다.",
"* |cff71d5ff|Hspell:82667|h[Heart of Ice]|h|r를 받는 플레이어는 이그나시우스의 근접 딜러 근처에 서서 버프가 지속되는 동안 데미지를 증가시킵니다.",
"* |cff71d5ff|Hspell:92509|h[Hydro Lance]|h|r는 중단해야 합니다. 그렇지 않으면 플레이어 중 한 명이 사망합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43688"] = { "아리온",
"2단계",
"* |cff71d5ff|Hspell:-3131|h[번개 지점]|h|r는 여러 플레이어를 표지합니다: 넓게 퍼져서 |cff71d5ff|Hspell:-3132|h[연쇄 번개]|h|r가 파티 전체로 튕겨나가지 않도록 합니다.",
"* |cff71d5ff|Hspell:-3133|h[Disperse]|h|r는 그를 순간이동시킵니다: 그는 다시 나타나서 주변의 사람들을 죽이는 |cff71d5ff|Hspell:-3134|h[번개 폭발]|h|r을 목표에 맞춥니다 (단, 표시된 플레이어만).",
"* Before his |cff71d5ff|Hspell:-3130|h[Thunder Shock]|h|r, touch one of the |cff71d5ff|Hspell:-3129|h[Summon Cyclone]|h|r cyclones: the |cff71d5ff|Hspell:-3152|h[Swirling Winds]|h|r (levitation) avoids the electric damage.",
"* 25%에서 그는 테라스트라와 합쳐서 엘리멘티움 괴물로 변신: 빠르게 파괴하세요 (그의 정보를 참조하세요)."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43689"] = { "테라스트라",
"2단계",
"* |cff71d5ff|Hspell:-3138|h[폭발]|h|r: 바위가 그녀 주변으로 올라오므로, 탱커가 그녀를 움직이고 아무도 그 위에 서 있지 않도록 합니다.",
"* (사이클론에서) 떠오른 플레이어는 |cff71d5ff|Hspell:-3136|h[중력 구]|h|r에 닿아 착지해야 합니다. 그렇지 않으면 |cff71d5ff|Hspell:-3139|h[진동]|h|r에 피해를 입습니다. 공중 상태의 플레이어가 가장 큰 피해를 입습니다.",
"* |cff71d5ff|Hspell:-3137|h[피부 강화]|h|r는 그녀를 강화하고 피해를 흡수합니다: DPS는 이를 소모합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43735"] = { "요소늄 괴물",
"3단계",
"* 영웅, 러스트 등은 이 단계에 필요하며, 이는 DPS 경쟁 단계입니다.",
"* |cff71d5ff|Hspell:-3146|h[전기 불안정]|h|r: 매 1초마다 증가하는 자연 피해, 래이드에 흩어져 있으며, 딜러는 탱커에게 겹치지 않도록 합니다.",
"* |cff71d5ff|Hspell:-3147|h[중력 압착]|h|r 플레이어를 기둥으로 띄웁니다: 나머지는 기둥을 파괴합니다.",
"* |cff71d5ff|Hspell:-3148|h[용암 씨앗]|h|r: 땅에 폭발하는 씨앗을 뿌립니다: 피하세요, 밟지 마세요.",
"* |cff71d5ff|Hspell:-3149|h[동결 영역]|h|r 바닥을 얼립니다 (움직임이 어려움) 및 그녀가 받는 피해를 25% 감소시킵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44600"] = { "할푸스 웜브레이커",
"* 우선순위: Time Warden, Storm Rider, Abyssal Successor, Orphaned Emerald Whelp, Slate Dragon.",
"* 이상적으로, MT는 Halfus와 한 마리의 드래곤을 탱킹하고, OT는 다른 드래곤을 탱킹합니다.",
"* 보스의 상단에 있는 드래곤을 처치하여 모든 데미지를 활용합니다.",
"* Slate Dragon이 있다면, |cff71d5ff|Hspell:39171|h[Malevolent Strikes]|h|r의 4틱마다 보스를 교체해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["45213"] = { "시네스트라",
"* 25 heroic only. STAGE 1 (until 30%): 그녀는 날아다니며, 아래에서 타는 것이 필요; |cff71d5ff|Hspell:-3229|h[Twilight Slicers]|h|r 구체가 공중에서 플레이어를 추격합니다: 표시된 구체는 멀리 도망가고, 구체가 죽으면 아무도 앞에 서 있지 않습니다 (|cff71d5ff|Hspell:-3230|h[Twilight Blast]|h|r).",
"* The |cff71d5ff|Hspell:-3227|h[Wrack]|h|r lands on a player with growing damage and will JUMP to another nearby player when its time runs out: the marked one separates from the raid and the healers carry it to the limit.",
"* The |cff71d5ff|Hspell:-3231|h[Twilight Whelps]|h|r drop with their |cff71d5ff|Hspell:-3232|h[Twilight Spit]|h|r on a player: one group kites them to the back and kills them fast, without stepping on the |cff71d5ff|Hspell:-3233|h[Twilight Essence]|h|r pools.",
"* STAGE 2 (at 30%): Calen 시작하여, |cff71d5ff|Hspell:-3238|h[Pulsing Twilight Eggs]|h|r는 매 윈도우마다 |cff71d5ff|Hspell:-3308|h[Twilight Carapace]|h|r의 완전한 피해를 입은 후 노출됩니다; |cff71d5ff|Hspell:-3239|h[Twilight Spitecallers]|h|r가 도착하고, 그들의 |cff71d5ff|Hspell:-3240|h[Unleash Essence]|h|r가 중단됩니다 ( |cff71d5ff|Hspell:-3241|h[Indomitable]|h|r는 긴 CC에 대한 보상), 그리고 |cff71d5ff|Hspell:-3242|h[Twilight Drakes]|h|r는 |cff71d5ff|Hspell:-3243|h[Twilight Breath]|h|r를 사용하여 공격합니다.",
"* 3단계 (계란 죽음): |cff71d5ff|Hspell:-3246|h[Essence of the Red]|h|r 버프는 레이드와 전체 DPS에게 마무리 공격을 가능하게 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45992"] = { "발리오나",
"* 테랄리온은 |cff71d5ff|Hspell:92909|h[파뷸러스 플레임즈]|h|r를 사용할 것이므로, 발리온의 첫 번째 공격 전에 분산 유지.",
"* 플레이어가 |cff71d5ff|Hspell:92878|h[블랙아웃]|h|r을 받으면, 플레이어와 파티 전체(탱커 제외)는 보스의 꼬리에서 서서, 모두 모이면 해제하여 데미지를 분산.",
"* 그녀가 |cff71d5ff|Hspell:92873|h[디바운징 플레임]|h|r을 사용할 때, 모두 보스의 뒤에 서서 데미지를 피해야 함.",
"* 그는 |cff71d5ff|Hspell:93063|h[다즐링 디스트럭션]|h|r을 사용할 때, 3명 이하의 플레이어 아래에 원이 나타나므로, 떠나야 함.",
"5초 후, 미사일이 트와일라이트 영역에 있는 플레이어를 끌어들여, 분홍 포털로 이동하여 바닥의 분홍 공을 만지지 않고 빠져나감."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["45993"] = { "테랄리온",
"* Valiona는 |cff71d5ff|Hspell:92861|h[Twilight Meteorite]|h|r를 사용하며 날아다닐 때, 이는 Blackout과 유사한 효과를 낼 것입니다.",
"그녀는 영향을 받은 플레이어를 표시하고 3초 후에 주변 플레이어에게 150K의 피해를 분산시킵니다. 5명이면 충분합니다.",
"* |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r는 플레이어 아래에 보라색 영역을 생성하여 피해야 합니다.",
"* |cff71d5ff|Hspell:95641|h[Engulfing Magic]|h|r 버프를 받는 플레이어는 다른 플레이어를 피해, 그들을 손상시키지 않습니다.",
"* |cff71d5ff|Hspell:86059|h[Deep Breath]|h|r는 방의 1/3을 불로 덮고, 그 안에 들어가는 사람은 Twilight Realm으로 들어갑니다.",
"핑크 포털을 통해 Twilight Realm을 빠져나갈 때, 바닥의 핑크 볼을 밟지 않도록 주의하세요."
};

-- Ciudad perdida de los Tol'vir : Zona 5396 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43612"] = { "고위 사제 바림",
"* 첫 번째 단계에서 페닉스는 기동됩니다.",
"* 두 번째 단계 (쉐이드) 페닉스에 대한 전체 DPS."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43614"] = { "톱니아귀",
"* 표시된 플레이어가 몬스터를 탱커에게 데려가서 쉽게 처치하도록 돕습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44577"] = { "장군 후삼",
"* 바닥의 뢰를 피하기 위해 보스의 위치를 이동하십시오.",
"* 바닥 영역을 피하십시오; 그는 먼지로 경고합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44819"] = { "시아마트",
"* 집중을 유지하세요"
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["49045"] = { "오우",
"* Avoid the |cff71d5ff|Hspell:91408|h[Whirlwind]|h|r."
};

-- Minas de la muerte : Zona 1581 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43778"] = { "전투 절단기 5000",
"* 1 DPS 잡고, 그들은 4명의 해더를 죽입니다.",
"* 마지막 해더가 죽으면 보스가 활성화됩니다; 모두가 올라가지만, 해더를 가진 사람은 모든 추가몹을 죽입니다.",
"* 보스가 |cff71d5ff|Hspell:88501|h[Harvest]|h|r로 플레이어를 표시하면, 모두 표시된 장소에서 멀어집니다.",
"* |cff71d5ff|Hspell:88481|h[Blazing Speed]|h|r를 얻으면, 모두 멀어집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47162"] = { "글럽토크",
"* 첫 번째 단계에서 그는 각 순간이동 후 분노를 잃게 되므로, 탱커는 주의해야 합니다.",
"* 40%에서 두 번째 단계가 시작되며, 회전하는 용암 벽을 피해야 합니다.",
"* 두 번째 단계의 원소들은 조금씩 죽여야 합니다. 왜냐하면 계속해서 더 많이 생성되기 때문입니다; Heroism을 사용하는 좋은 순간입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47296"] = { "헬릭스 기어브레이커",
"* 그가 던지는 폭탄을 피하십시오.",
"* The player hit by |cff71d5ff|Hspell:88352|h[Chest Bomb]|h|r moves away from the group until it explodes."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47626"] = { "제독 으르렁니",
"* 치유사는 마나를 절약해야 합니다.",
"* 몬스터는 가능한 한 빨리 처치해야 합니다. 그렇지 않으면 성장하여 파티를 죽일 것입니다.",
"* 보스는 가능한 한 빨리 처치하여 |cff71d5ff|Hspell:88736|h[Thirst for Blood]|h|r가 너무 많이 쌓이는 것을 막아야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47739"] = { "\"선장\" 쿠키",
"* 보스는 좋은 (흰색) 음식과 나쁜 (녹색) 음식을 동시에 떨어뜨려 상쇄 효과를 냅니다;",
"전투 내내 좋은 음식 1개와 나쁜 음식 1개를 선택하여 바닥에 나쁜 음식의 피해 영역이 채워지는 것을 방지합니다.",
"탱커는, 대상이 지정되지 않는 경우, 좋은 음식 1개와 나쁜 음식 2개를 선택할 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["49429"] = { "바네사 밴클리프",
"* Nightmare phase:",
"cauldron에 나타나 4개의 수도를 활성화하여 탈출해야 합니다.",
"Glubtok을 죽일 때까지 불과 눈보라를 피하십시오.",
"Helix 단계에서 움직이지 말고, 가능한 한 많은 거미를 유인하지 마십시오.",
"Foe Reaper가 터널을 따라 회전하는 번개 장벽을 만들므로, 밟거나 뛰어넘어야 합니다.",
"다음 단계에서, 친숙한 NPC를 공격하는 모든 워겐을 빠르게 처치하십시오.",
"* Vanessa phase:",
"우선적으로 생성되는 모든 적을 처리하십시오.",
"그녀가 폭발물을 적용할 때, 녹색 화살표에서 밧줄을 잡으십시오."
};

-- La Cumbre del Vórtice : Zona 5035

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43873"] = { "알타이루스",
"* 가능한 한 바람이 등 뒤에 있도록 유지하여 버프의 이점을 활용하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43875"] = { "아사드 (칼리프 오브 제피러스)",
"* When the cast of |cff71d5ff|Hspell:87618|h[Static Cling]|h|r is about to finish, jump to avoid sticking to the floor.",
"* 시간을 맞춰 점프하지 못한 모든 사람에게 끈을 제거하세요.",
"* عندما он использует |cff71d5ff|Hspell:86911|h[Unstable Grounding Field]|h|r, все должны находиться внутри треугольника, чтобы избежать смерти."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43878"] = { "대장로 에르탄",
"* You have to avoid the |cff71d5ff|Hspell:86292|h[Cyclone Shields]|h|r."
};

-- Trono de los Cuatro Vientos : Zona 5638 -- Canario

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45870"] = { "안샬",
"일반적인 참고 사항",
"* 이 전투는 3명의 원소 군주, 안샬, 네지르와 로하쉬로 구성되며, 8분 동안의 분노 지속 시간",
"세 명 모두를 1분 차이 내로 처치해야 하며, 그렇지 않으면 부활합니다.",
"* 보스들은 에너지 막이 있으며, 이 막이 가득 차면 (90%에 도달하면) 특별 능력을 사용합니다. 막이 80%에 도달하는 시점에 플랫폼 이동을 해야 합니다.",
"전략:",
"* 4개의 그룹: 1번째: 1명의 탱커, 1명의 힐러, 1명의 DPS [안샬]; 2번째: 1명의 탱커, 1명의 힐러 (선호하는 것은 홀리 팔라딘, 왜냐하면 그들은 자신의 디버프를 제거할 수 있기 때문); 3번째: 1명의 DPS, 1명의 힐러 [로하쉬]; 4번째: 3명의 DPS로 구성된 이동 그룹",
"* 세 명의 보스 모두에게 DPS를 최적화하여 동시에 처치",
"* 안샬의 플랫폼: 주기적으로 |cff71d5ff|Hspell:86205|h[Soothing Breeze]|h|r를 사용하여 안샬과 그의 동료(크리퍼)를 치유하고, 레이드를 무력화합니다.",
"* 그는 |cff71d5ff|Hspell:85422|h[Nurture]|h|r를 사용하여 크리퍼를 소환하고, 이 크리퍼들은 순환적으로 |cff71d5ff|Hspell:93121|h[Toxic Spores]|h|r를 사용합니다.",
"* 특별: |cff71d5ff|Hspell:84638|h[Zephyr]|h|r - 특별 능력을 사용하기 전에 크리퍼가 없도록 확인"
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45871"] = { "네지르",
"능력:",
"* |cff71d5ff|Hspell:86082|h[Permafrost]|h|r, 이는 당신이 흩어져 있도록 강제합니다.",
"* |cff71d5ff|Hspell:93130|h[Ice Patch]|h|r, 즉시 영향을 받는 영역을 떠나십시오.",
"* |cff71d5ff|Hspell:84645|h[Chilling Winds]|h|r, 가장 위험한 능력; 이는 탱커/힐러가 피해를 치유할 수 없을 때 플랫폼을 교체하도록 강제합니다(스택)(Anshal-Nezir).",
"* 특별: |cff71d5ff|Hspell:84644|h[Hailstorm]|h|r"
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45872"] = { "로하시",
"능력:",
"* |cff71d5ff|Hspell:86193|h[Wind Blast]|h|r, 가장 위험한 능력; 그가 사용하는 시에 앞에 있는 사람은 200미터 뒤로 밀려나.",
"* |cff71d5ff|Hspell:86182|h[Slicing Gale]|h|r, 원거리 공격.",
"* 특별: |cff71d5ff|Hspell:86481|h[Hurricane]|h|r - 가장 큰 피해는 낙하에서 발생 (약 70k), 따라서 가능한 모든 사람은 고양이 형태로, 느린 낙하 등을 사용해야 함."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46753"] = { "알아키르",
"* STAGE 1 (until 80%): |cff71d5ff|Hspell:-3022|h[Wind Burst]|h|r와 |cff71d5ff|Hspell:-3023|h[Squall Line]|h|r는 범위 공격을 하며, |cff71d5ff|Hspell:-3024|h[Ice Storms]|h|r는 바닥을 따라 이동(회피)하고, |cff71d5ff|Hspell:-3025|h[Lightning Strike]|h|r는 표시된 대상에게 피해를 줍니다.",
"* STAGE 2: |cff71d5ff|Hspell:-3032|h[Acid Rain]|h|r는 시간이 지남에 따라 계속 성장(최대 DPS로 시간을 끌지 않음)하고, |cff71d5ff|Hspell:-3033|h[Stormlings]|h|r는 살아남아야 합니다: 누군가가 하나를 처치하면, |cff71d5ff|Hspell:-3034|h[Feedback]|h|r는 Al'Akir에게 버프를 제공합니다.",
"* STAGE 3 (at 25%): 플랫폼이 파괴되고, 모두 |cff71d5ff|Hspell:-3037|h[Eye of the Storm]|h|r를 사용하여 날아갑니다: 최대 DPS; |cff71d5ff|Hspell:-3039|h[Lightning Rod]|h|r 표시된 대상이 움직이고, |cff71d5ff|Hspell:-3040|h[Lightning Clouds]|h|r는 회피해야 합니다."
};

-- Bastión de Baradin : Zona 5600 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47120"] = { "아르갈로스",
"* 10번에서 2개의 그룹을 구성하고, 각 그룹에는 1명의 탱커, 1명의 힐러, 3명의 DPS가 포함됩니다.",
"* 각 그룹은 아르갈로스 한쪽에 서서, 딜을 분산하기 위해 탱커에게 겹쳐서 위치합니다.",
"* 각 |cff71d5ff|Hspell:88942|h[Meteor Slash]|h|r 후, 탱커들은 보스와 위치를 교환합니다.",
"* During the |cff71d5ff|Hspell:88972|h[Fel Firestorm]|h|r phase everyone moves to avoid the damage without stepping on fire.",
"* 폭풍이 끝날 때마다 각 그룹은 원래 위치로 돌아가고, 위 단계가 반복됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["47901"] = { "데몬 컨테인먼트 유닛",
"* 이러한 몬스터는 탱크가 |cff71d5ff|Hspell:89348|h[데몬 퇴치 광선]|h|r의 피해를 분산하기 위해 전체 그룹에 의해 처치해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52363"] = { "오큐타르",
"* Nobody crosses his front: the |cff71d5ff|Hspell:-2606|h[Searing Shadows]|h|r is a cone in front of him (melee go behind).",
"* |cff71d5ff|Hspell:-2607|h[Eyes of Occu'thar]|h|r는 모든 플레이어를 표적으로 삼습니다: 10초마다 각 눈이 호스트(|cff71d5ff|Hspell:-2609|h[Occu'thar's Destruction]|h|r)를 통과하고 죽게 만듭니다. 따라서 눈이 빠르게 파괴되고 |cff71d5ff|Hspell:-2608|h[Gaze of Occu'thar]|h|r는 회피됩니다.",
"* |cff71d5ff|Hspell:-2605|h[Focused Fire]|h|r는 플레이어 아래에 있는 바닥에 있는 불 덩어리입니다: 해당 플레이어가 움직입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55869"] = { "알리자발",
"* Her |cff71d5ff|Hspell:-4120|h[Skewer]|h|r는 탱을 8초 동안 둔화시킵니다: OT는 즉시 회수합니다.",
"* |cff71d5ff|Hspell:-4121|h[Seething Hate]|h|r는 플레이어를 고정합니다: 표시된 플레이어는 나머지와 떨어져 있습니다.",
"* |cff71d5ff|Hspell:-4122|h[Blade Dance]|h|r는 매 초마다 물리 피해를 증가시킵니다: 치유사가 계속 주의해야 하며, 빠르게 마무리합니다."
};

-- Zul'Gurub : Zona 1977 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52053"] = { "잔질",
"* Voodoo Bolt 사용.",
"* Zanzil의 불에서 멀리 떨어져.",
"* Blue Elixir: Frost Cauldron에서 마시고 가능한 한 빨리 Berserker를 처치하세요 (그에게 공격 대상이 되지 않음).",
"* Green Elixir: Poison Cauldron에서 가능한 한 빨리 마시세요.",
"* Red Elixir: Fire Cauldron에서 마셔 좀비들을 AoE로 처치하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52059"] = { "대여사제 킬나라",
"* 보라색 벽을 피하세요 (예: 사르타리온의 파도와 같이).",
"* 블러드의 눈물을 방해하세요.",
"* 보스가 50% 이하로 내려가기 전에, 표범을 1마리씩 또는 2마리씩 죽이세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52148"] = { "신파괴자 진도",
"* 닥의 영역에 닥을 넣고, 그는 하카르의 그림자를 소환할 때 플레이어도 그 영역에 들어갑니다.",
"* 탱커가 거대 트롤을 처리하는 동안, 나머지 그룹은 소환된 영혼과 체인을 처치해야 합니다.",
"* 그림자 바위 피하기."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52151"] = { "혈군주 만도키르",
"* 영혼이 핵심입니다. 랩터가 풀리면 가능한 한 빨리 죽여야 합니다. 그렇지 않으면 영혼을 죽일 수 있습니다.",
"각 영혼은 죽은 플레이어를 되살릴 수 있으며, 되살아난 플레이어는 더 많은 피해를 입고 덜 받는 피해를 입습니다.",
"* 보스가 그 스킬을 사용할 때 바닥의 홈을 피하십시오.",
"* 핏 샌딩을 받는 사람에게 과치료를 하지 마십시오. 7500 정도를 유지하는 것이 충분합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52155"] = { "대사제 베녹시스",
"* 그가 미로를 그릴 때, 녹색 선을 만지지 마세요.",
"* 2명의 플레이어가 독성 링크로 연결되면 가능한 한 멀리 떨어져서 끊으세요.",
"아무도 그가 깨질 때 가까이 있지 않도록 하세요. 왜냐하면 광역 피해를 줍니다.",
"* 바닥의 수영장을 피하세요. 보스를 움직여서 발을 닿지 않도록 치세요. 수영장은 커집니다.",
"* 녹색 숨결을 피하려면 뒤에 숨으세요.",
"* 그는 빔을 사용할 때, 피하세요.",
"* 보스가 멍해질 때, 최대한 DPS를 사용하세요. 왜냐하면 +100% 피해 수정치가 있기 때문입니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52258"] = { "그리렉",
"* |cff71d5ff|Hspell:68987|h[Pursue]|h|r로 표시된 플레이어가 보스를 기어 다니게 합니다.",
"* |cff71d5ff|Hspell:89932|h[Fault Line]|h|r 영역이 표시되면 해당 영역을 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52269"] = { "레나타키",
"* {W1} Vanish에 의해 공격받는 플레이어를 치유하세요.",
"* |cff71d5ff|Hspell:96645|h[천개의 칼]|h|r의 영역 피해를 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52271"] = { "하자라",
"* Wrath의 공격을 방해하세요.",
"* 악몽이 플레이어를 공격하기 전에 죽이세요, 그렇지 않으면 그들이 플레이어를 죽일 것입니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52286"] = { "우슐레이",
"* 탱커는 파티 뒤로 돌아서서 위치한다.",
"* |cff71d5ff|Hspell:96710|h[Lightning Cloud]|h|r를 사용하지 않는다.",
"* 서로 떨어져서 위치한다."
};

-- Tierras de Fuego : Zona 5043 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52409"] = { "라그나로스",
"* 1단계: 각 |cff71d5ff|Hspell:-2631|h[라바 웨이브]|h|r가 생성되는 |cff71d5ff|Hspell:-2630|h[설퓨라스 스매시]|h|r를 한쪽으로 피하고, |cff71d5ff|Hspell:-2634|h[마그마 트랩]|h|r을 한 번씩 모두가 최대 HP 상태일 때 터뜨립니다 (|cff71d5ff|Hspell:-2635|h[마그마 트랩 폭발]|h|r은 모두에게 피해를 줍니다).",
"* In the INTERMISSION the |cff71d5ff|Hspell:-2637|h[Sons of Flame]|h|r chase the marked one, who runs far from the raid while they take full DPS; nobody crosses their path because of the final |cff71d5ff|Hspell:-2639|h[Supernova]|h|r.",
"* STAGE 2: the |cff71d5ff|Hspell:-2643|h[Engulfing Flame]|h|r is the front cone (out), the |cff71d5ff|Hspell:-2644|h[World in Flames]|h|r burns whole sectors (nobody inside) and the |cff71d5ff|Hspell:-2645|h[Molten Seeds]|h|r blow up under the marked one (move far; the leftover |cff71d5ff|Hspell:-2647|h[Molten Elementals]|h|r get AoE'd down).",
"* 3단계 (40%): |cff71d5ff|Hspell:-2661|h[라이빙 메테오]|h|r가 플레이어를 추격 (파티에서 멀리 벗어나; 지나가는 사람은 |cff71d5ff|Hspell:-2663|h[연료]|h|r를 제공)하고, |cff71d5ff|Hspell:-2658|h[엔글링 펌]|h|r와 |cff71d5ff|Hspell:-2659|h[월드 인 플레임]|h|r는 계속 공격합니다.",
"* 하이퍼 (스테이지 4): 동료 (센시아, 함울, 말퓨리온)의 지원을 받으며, 완전한 데미지; 그의 |cff71d5ff|Hspell:-2680|h[슈퍼히트]|h|r, |cff71d5ff|Hspell:-2681|h[에너지 서플러스]|h|r (|cff71d5ff|Hspell:-2682|h[설퓨러스의 불꽃]|h|r) 및 |cff71d5ff|Hspell:-2683|h[드레드플레임]|h|r은 방을 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52498"] = { "베스틸락",
"* 1단계: 그녀는 웹 위에서, 레이드가 아래에서 싸우고, |cff71d5ff|Hspell:-2773|h[Cinderweb 드론]|h|r가 불에 덮이기 전에 죽습니다 (그들은 |cff71d5ff|Hspell:-2778|h[Cinderweb 새끼]|h|r를 먹어 치유합니다: 먼저 새끼를 죽입니다).",
"* 탱커는 |cff71d5ff|Hspell:-2770|h[Cinderweb Spinner]|h|r를 소환하여, 그룹이 그 위로 겹쳐서 (그의 |cff71d5ff|Hspell:-2772|h[Igneous Web Spin]|h|r는 25초 동안 지정된 대상에게 둔화 효과를 줍니다): 최대 DPS.",
"* 상단 팀은 그녀의 |cff71d5ff|Hspell:-2765|h[불 에너지]|h|r를 관찰합니다: 소모되면 |cff71d5ff|Hspell:-2769|h[태움의 파멸]|h|r를 시전하여 레벨을 낮추므로, 상단 팀은 미리 떨어뜨려야 합니다 (3번 반복 후 |cff71d5ff|Hspell:-2782|h[2단계]|h|r 상태로 진입).",
"* STAGE 2: 그녀가 내려와서 끝까지 불을 지릅니다; 탱커는 |cff71d5ff|Hspell:-2783|h[위도우스 키스]|h|r를 먹어 (치유를 소모: 최대치로 치유) 하고, |cff71d5ff|Hspell:-2784|h[에임버 플레어]|h|r는 가까운 적에게 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52530"] = { "알리스라조르",
"* 1단계: 그녀는 날아다니며, 파티는 아래에서 싸웁니다: 2명의 플레이어가 |cff71d5ff|Hspell:-2828|h[Molten Feathers]|h|r (3명은 |cff71d5ff|Hspell:-2829|h[Wings of Flame]|h|r를 사용하여 날아다니고 위에서 도움을 줍니다), |cff71d5ff|Hspell:-2836|h[Voracious Hatchlings]|h|r는 분리하여 탱킹 ( |cff71d5ff|Hspell:-2843|h[Plump Lava Worms]|h|r로 먹이 공급)하고, 2명의 |cff71d5ff|Hspell:-2834|h[Blazing Talon Initiates]|h|r는 빠르게 죽습니다 (|cff71d5ff|Hspell:-3335|h[Blazing Shield]|h|r 사용, 최대 DPS).",
"* 1단계의 끝에 |cff71d5ff|Hspell:-2845|h[Herald of the Burning End]|h|r가 나타납니다: 그의 |cff71d5ff|Hspell:-2846|h[Cataclysm]|h|r는 |cff71d5ff|Hspell:-2847|h[Molten Meteor]|h|r를 소환합니다 (착륙하기 전에 최대 DPS).",
"* 2단계: 그녀는 |cff71d5ff|Hspell:-2849|h[Fiery Vortex]|h|r에 진입합니다 (제동): 쾌활/영웅주의 상태에서 최대 DPS; 날아다니는 플레이어는 |cff71d5ff|Hspell:-2850|h[Fiery Tornadoes]|h|r를 피하고, 아래에 있는 플레이어는 |cff71d5ff|Hspell:-3332|h[Harsh Winds]|h|r를 피합니다.",
"* 3단계 (힘이 소진될 때): |cff71d5ff|Hspell:-2852|h[Burnout]|h|r를 사용하고 |cff71d5ff|Hspell:-2853|h[Essence of the Green]|h|r (모두를 위한 비행) 및 회복 전 최대 DPS, 4단계에 도달하면 완전히 재생됩니다 (|cff71d5ff|Hspell:-2858|h[Blazing Buffet]|h|r) 및 반복: 덜 반복할수록 좋습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52558"] = { "군주 라이올리스",
"* 1단계 (25%까지): 그는 탱킹 대상이 아니며, 방향을 전환해야 합니다: 레이드가 그의 왼쪽 또는 오른쪽 발을 공격하여 그를 회전시키고, |cff71d5ff|Hspell:-2530|h[마그마]|h|r와 큰 |cff71d5ff|Hspell:-2534|h[화산]|h|r(작은 |cff71d5ff|Hspell:-2535|h[동굴]|h|r는 DPS에 의해 파괴됩니다).",
"* 그의 |cff71d5ff|Hspell:-2527|h[흑요석 갑옷]|h|r은 피해를 줄이는 층을 생성합니다: 피해를 주면서 닳도록 합니다; 각 화산 |cff71d5ff|Hspell:-2531|h[조각]|h|r과 |cff71d5ff|Hspell:-2532|h[불꽃]|h|r이 생성되고 |cff71d5ff|Hspell:-2533|h[악마의 분노]|h|r을 얻으므로 빠르게 죽입니다.",
"* 그의 |cff71d5ff|Hspell:-2528|h[충격 발]|h|r은 때때로 모든 사람에게 피해를 줍니다: 주기적인 치유.",
"* 2단계 (25%): 방향 전환이 끝나고 |cff71d5ff|Hspell:-2538|h[사로화]|h|r은 모든 사람에게 피해를 줍니다: 쾌활/영웅 상태로, |cff71d5ff|Hspell:-2539|h[폭발하는 불꽃]|h|r을 피합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52571"] = { "청지기 스태그헬름",
"* Every |cff71d5ff|Hspell:-2912|h[Shapeshift]|h|r rules: in |cff71d5ff|Hspell:-2913|h[cat form]|h|r he leaps |cff71d5ff|Hspell:-2914|h[Leaping Flames]|h|r after the target (leaving fire trails on the floor) and in |cff71d5ff|Hspell:-2918|h[scorpion form]|h|r the |cff71d5ff|Hspell:-2919|h[Flame Scythe]|h|r punishes whoever is hitting him (the melee eats it with heals).",
"* The |cff71d5ff|Hspell:-2916|h[Adrenaline]|h|r builds with every repeated cast: the longer the fight drags the more it hurts, so full DPS.",
"* 전투 중, 그는 |cff71d5ff|Hspell:-2922|h[나이트 엘프 형태]|h|r로 근접 공격을 하고, |cff71d5ff|Hspell:-2923|h[불타는 사이클론]|h|r(넓게 퍼지는) 공격으로 상대를 제압한 후, |cff71d5ff|Hspell:-2924|h[화염 씨앗]|h|r을 표시된 대상 아래에 던져 (폭발 전에 멀리 이동) 그리고, 추격하는 |cff71d5ff|Hspell:-2925|h[불타는 구체]|h|r(이를 피하여) 공격을 회피합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["53494"] = { "발레록",
"* |cff71d5ff|Hspell:-2592|h[Shard of Torment]|h|r는 플레이어에게 |cff71d5ff|Hspell:-2593|h[Torment]|h|r를 발사하며, 플레이어는 지속적인 피해를 입습니다: 덩어리가 피해를 입을 때 피하십시오; 시간이 지나면 |cff71d5ff|Hspell:-2595|h[Wave of Torment]|h|r가 발사됩니다.",
"* The healers split up: two or three stand by the shard collecting |cff71d5ff|Hspell:-2596|h[Vital Sparks]|h|r (each one strengthens their heals with the |cff71d5ff|Hspell:-2597|h[Vital Flame]|h|r) and the rest heal the Torment target.",
"* With the |cff71d5ff|Hspell:-2599|h[Decimation Blade]|h|r his swings hit with shadow and with the |cff71d5ff|Hspell:-2600|h[Inferno Blade]|h|r with fire: the tanks swap while the |cff71d5ff|Hspell:-2590|h[Blaze of Glory]|h|r (his buff) stacks up.",
"* 하이로닉: |cff71d5ff|Hspell:-2601|h[카운트다운]|h|r 조합은 플레이어를 분리하여 사용: 조합은 서로 가까이 있고, 폭발할 때 다른 플레이어와 떨어져 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["53691"] = { "샤녹스",
"* 두 명의 탱커 역할: 한 명은 |cff71d5ff|Hspell:-2581|h[Riplimb]|h|r를 사용하고, 다른 한 명은 |cff71d5ff|Hspell:-2583|h[Rageface]|h|r를 사용하며, 샨녹으로부터 멀리 떨어져 있어야 합니다. 왜냐하면 첫 번째 개를 처치하면 그는 |cff71d5ff|Hspell:-2580|h[Frenzy]|h|r 상태가 되기 때문입니다.",
"* Rageface 먼저 죽여야 합니다: 그의 |cff71d5ff|Hspell:-2584|h[Face Rage]|h|r가 표시된 대상(그를 먼저 처치하기 위해)을 먹어치웁니다; 그런 다음 Riplimb, 그리고 마지막으로 Shannox.",
"* Shannox's |cff71d5ff|Hspell:-2577|h[Arcing Slash]|h|r leaves the |cff71d5ff|Hspell:-2578|h[Jagged Tear]|h|r (heavy bleed on the tank): the healer covers it; with the |cff71d5ff|Hspell:-2579|h[Hurl Spear]|h|r Riplimb runs to fetch it (the tanks use it to reposition).",
"* 그의 |cff71d5ff|Hspell:-2575|h[화염 함정]|h|r과 |cff71d5ff|Hspell:-2576|h[결정 감옥 함정]|h|r은 개들 근처에 떨어집니다: 가까운 사람은 움직여서 피해야 합니다 (잡히면 치명적, 특히 영웅 난이도), 그리고 바닥의 |cff71d5ff|Hspell:-2928|h[마그마 균열]|h|r은 피해야 합니다."
};

-- El Fin de los Tiempos : Zona 938 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54123"] = { "실바나스의 환영",
"* |cff71d5ff|Hspell:-3951|h[Shriek of the Highborne]|h|r: 큰 피해, 회복 준비 완료."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54431"] = { "바인의 환영",
"* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r 공격: 탱커와 치유자는 주의하세요.",
"* |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r에서 생성되는 토템은 우선 처리해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54432"] = { "무르도즈노",
"* Dodge the |cff71d5ff|Hspell:-3676|h[Distortion Bomb]|h|r.",
"* 최종 보스 몬스터: 방어 기술을 마지막에 사용하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54445"] = { "제이나의 환영",
"* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: 그녀는 순간이동을 사용합니다, 그녀의 새로운 위치를 주의하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54544"] = { "티란데의 환영",
"* Mind the |cff71d5ff|Hspell:-4207|h[Dark Moonlight]|h|r."
};

-- La Hora del Crepúsculo : Zona 940 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54590"] = { "아큐리온",
"* |cff71d5ff|Hspell:102582|h[Chains of Frost]|h|r가 당신을 묶습니다; 자유로 나오세요.",
"* |cff71d5ff|Hspell:103252|h[Icy Tomb]|h|r에 갇힌 플레이어를 파괴하여 해제하세요.",
"* |cff71d5ff|Hspell:104050|h[Torrent of Frost]|h|r: 레이드 피해, 치유."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54938"] = { "대주교 베네딕투스",
"* 두 단계: 빛과 그림자.",
"* |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r 또는 |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r로 표시된 플레이어는 (말함) 소리치고 물러나야 합니다.",
"* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r 및 |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r: 해당 지역에서 벗어나야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54968"] = { "아시라 돈슬레이어",
"* |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r로 표시된 플레이어는 치유를 잃게 됩니다: 해제하십시오.",
"* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: 둔화 연기, 빠져나오세요.",
"* |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r를 건너뛰지 마세요."
};

-- El Pozo de la Eternidad : Zona 939 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54853"] = { "여왕 아즈샤라",
"* 마법의 마법사는 먼저 우선순위입니다.",
"* |cff71d5ff|Hspell:-3969|h[전체 복종]|h|r: 긴 주문, 중단하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54882"] = { "여왕 아즈샤라",
"* 마법의 마법사는 먼저 우선순위입니다.",
"* |cff71d5ff|Hspell:-3969|h[전체 복종]|h|r: 긴 주문, 중단하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54883"] = { "여왕 아즈샤라",
"* 마법의 마법사는 먼저 우선순위입니다.",
"* |cff71d5ff|Hspell:-3969|h[전체 복종]|h|r: 긴 주문, 중단하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54884"] = { "여왕 아즈샤라",
"* 마법의 마법사는 먼저 우선순위입니다.",
"* |cff71d5ff|Hspell:-3969|h[전체 복종]|h|r: 긴 주문, 중단하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54969"] = { "만노로스",
"* Mind what comes out of the |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r.",
"* 탱커는 만노로스를 홀드합니다; 바로테인은 빠르게 죽습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55085"] = { "페로스안",
"* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: 중요한 디버프, 치유.",
"* 은신 단계에서, 그는 눈을 보낼 때 움직이지 마세요.",
"* |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r로 표시된 플레이어는 취약합니다: 최대 DPS."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55419"] = { "만노로스",
"* Mind what comes out of the |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r.",
"* 탱커는 만노로스를 홀드합니다; 바로테인은 빠르게 죽습니다."
};
P.ko = ko;
