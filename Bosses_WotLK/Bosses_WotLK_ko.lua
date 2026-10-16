--[[
	Bosses_WotLK_ko.lua
		Datos en KO del pack WotLK.
		Fichero creado por el editor web (2026-10-16); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ko = {};
local pack = ko;


-- Onyxia's Lair : Zona 249 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10184"] = { "오닉시아",
"* |cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r: 앞쪽에 큰 피해를 입힙니다 - 레이드를 탱커 뒤에 유지하세요.",
"* |cff71d5ff|Hspell:18392|h[Fireball]|h|r: 무작위 플레이어에게 반복적인 화염 공격 - 치유사는 준비를 하세요.",
"* |cff71d5ff|Hspell:18584|h[Deep Breath]|h|r: 66%에서 날아오르며 공간을 태웁니다 - 표시된 공간을 즉시 벗어나세요.",
"* |cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r: 40%에서 착륙합니다 - AoE 공포, 따라서 트레머 토템과 공포 방어를 미리 설치하세요.",
"* |cff71d5ff|Hspell:68959|h[Whelps]|h|r: 40%에서 알에서 몬스터가 부화합니다 - 탱커를 피해서 AoE 공격하세요."
};

-- Naxxramas : Zona 533 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15928"] = { "타디우스",
"* |cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r: 1/2 파티가 양극과 음극을 얻음 - 양극과 음극 플레이어가 서로 닿지 않도록 분리하고, 교차 충전은 폭발.",
"* |cff71d5ff|Hspell:28338|h[Chain Lightning]|h|r: 체인 라이팅은 가장 멀리 있는 플레이어를 공격 - 원거리 딜러는 그룹에서 가장 멀리 떨어져 있어야."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15931"] = { "그라불루스",
"* |cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r: 주입된 플레이어는 그 위치에 해로운 슬라임 구름을 남깁니다 - 벽으로 밀어 넣으세요.",
"* |cff71d5ff|Hspell:28240|h[Poison Cloud]|h|r: 독 구름은 주입과 함께 성장합니다 - 패에서 멀리 떨어져서 움직이세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15932"] = { "글루스",
"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: 체력이 5%까지 떨어질 때까지 모든 공격이 쏟아짐 - 좀비 애드들은 먹이를 위해 그에게로 흩어져, 죽거나 멀리 떨어뜨려.",
"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r: 그는 주기적으로 광란 상태가 됨 - 탱커는 방어 자세를 취해야 함."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15936"] = { "부정의 헤이건",
"* |cff71d5ff|Hspell:29350|h[Erupción]|h|r: Él sale de la habitación y el suelo entra en erupción en rotación - monta en las esquinas seguras alrededor de la plataforma."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15952"] = { "맥스나",
"* |cff71d5ff|Hspell:28622|h[Web Wrap]|h|r: 무작위 플레이어가 벽에 갇히면 빠르게 풀어주세요.",
"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: 넓은 범위의 공격은 그녀의 근접 공격을 마비시킵니다 - 근접 공격은 바로 뒤에서 공격하세요.",
"* |cff71d5ff|Hspell:17332|h[Spiderlings]|h|r: 스파이더링이 파도처럼 나타납니다 - 그들이 모여 공격하기 전에 AoE로 처리하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15953"] = { "귀부인 팰리나",
"* |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r: Faerlina 근처에 숭배자를 처치하면 포옹을 발동합니다 - 포옹은 Faerlina, 그녀와 파티를 무력화시키고, 광란을 지연시킵니다.",
"* |cff71d5ff|Hspell:28798|h[Frenzy]|h|r: 포옹이 만료되면 광란 상태가 됩니다 - 탱커의 방어 기술과 강력한 치유를 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15954"] = { "역병술사 노스",
"* |cff71d5ff|Hspell:29213|h[Curse of the Plaguebringer]|h|r: 룬이 파티 전체에 퍼집니다 - 빠르게 해제하고, 연쇄 룬은 큰 피해를 입힙니다.",
"* |cff71d5ff|Hspell:29208|h[Blink]|h|r: 무작위 플레이어로 이동합니다 - 탱커에게 다시 주의를 돌립니다.",
"* |cff71d5ff|Hspell:29212|h[Skeletons]|h|r: 스켈레톤 파도를 사용하여 위로 이동합니다 - 돌아올 때 방에 있는 적들을 먼저 처치합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15956"] = { "아눕레칸",
"* |cff71d5ff|Hspell:28785|h[Locust Swarm]|h|r: Locusts가 파고들어, 소음을 일으키고 피해를 주는 - 확장되는 원을 따라 앞서가세요.",
"* |cff71d5ff|Hspell:28783|h[Impale]|h|r: 핀 공격이 파티를 관통 - 모두에서 분산하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15989"] = { "사피론",
"* |cff71d5ff|Hspell:28522|h[얼음 블록]|h|r: 무작위 플레이어가 얼음 블록으로 얼어붙음 - 은폐물로 활용, 위치를 계획.",
"* |cff71d5ff|Hspell:28524|h[심호흡]|h|r: 심호흡은 방 전체를 휩쓸어 - 얼음 블록에 기대.",
"* |cff71d5ff|Hspell:28542|h[생명 흡수]|h|r: 생명 흡수는 무작위 플레이어를 대상으로 - 회복을 유지.",
"* |cff71d5ff|Hspell:28547|h[폭풍]|h|r: 폭풍이 바닥을 따라 이동함 - 그 안에서 벗어나."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15990"] = { "켈투자드",
"* |cff71d5ff|Hspell:27808|h[Frost Blast]|h|r: Frost Blast은 그룹을 통해 얼리고, 피해를 연결합니다 - 닿을 때까지 흩어져서, 얼어붙은 덩어리를 파괴합니다.",
"* |cff71d5ff|Hspell:27819|h[Detonate Mana]|h|r: 플레이어의 마나가 폭발합니다 - 멀리 떨어져서 폭발이 좁혀지도록 유지합니다.",
"* |cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r: 25%에서 플레이어 아래에 void 영역이 열립니다 - 빠르게 벗어나세요.",
"* |cff71d5ff|Hspell:28410|h[Mind Control]|h|r: 쇄는 무작위 플레이어를 제압합니다 - 쇄가 끊길 때까지 제어합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16011"] = { "로데브",
"* |cff71d5ff|Hspell:29234|h[Spores]|h|r: Spores가 방에 자라나 - 그룹 근처에 있는 것을 죽이고, 그 구름은 큰 크리티컬 버프를 제공합니다.",
"* |cff71d5ff|Hspell:29204|h[Doom]|h|r: Doom이 무작위 플레이어에게 떨어지고 폭발합니다 - 폭발 전에 디큐어스하세요.",
"* |cff71d5ff|Hspell:55593|h[Necrotic Aura]|h|r: 각 펄스마다 10초 동안 치유가 차단됩니다 - 큰 치유와 핫을 틈새에 활용하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16028"] = { "패치워크",
"* |cff71d5ff|Hspell:28131|h[Frenzy]|h|r: 10% 남았을 때 Frenzy를 사용 - 탱커에게 방어 및 긴급 치유.",
"* |cff71d5ff|Hspell:28311|h[Slime Bolt]|h|r: 슬라임 볼트가 무작위 캐스터에게 발사 - 다음 위협에 대해 Hateful Strikes를 먹도록 하고, 캐스터 회전을 겹쳐서 유지."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16060"] = { "영혼 착취자 고딕",
"* |cff71d5ff|Hspell:28025|h[텔레포트: 라이빙 사이드]|h|r: 파티가 분리: 라이빙 사이드는 그의 동료들을 상대하고, 데드 사이드는 그림자들을 상대합니다 - 파도를 좁게 유지하세요.",
"* |cff71d5ff|Hspell:28026|h[텔레포트: 데드 사이드]|h|r: 그는 방을 이동하면서 그림자들이 쌓입니다 - 문이 4분 후에 열리고, 합쳐서 불태우세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16061"] = { "훈련교관 라주비어스",
"* |cff71d5ff|Hspell:29107|h[Unbalancing Strike]|h|r: 대규모 공격 - 뼈 구슬을 사용하여 보조 탱커를 조종하고, 턴을 교대로 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16063"] = { "Sir Zeliek",
"* 그의 젤리크의 마크 (|cff71d5ff|Hspell:28835|h[Mark of Zeliek]|h|r)는 그의 모서리에서 약 15초마다 45야드 이내에 있는 모든 플레이어를 대상으로 하며, 매번 재생될 때마다 피해량이 증가: 650, 1950, 4550, 9750, 16250 - 탱커는 스택이 너무 높아지기 전에 교대로 역할을 수행합니다.",
"* 그의 홀리  Wrath (|cff71d5ff|Hspell:28883|h[Holy Wrath]|h|r)는 뭉쳐 있는 플레이어 사이를 튕겨 다니며, 매번 점프할 때마다 피해량이 증가: 적으로 점프 후 즉시 메이즈가 개입하고, 최대 거리 유지하며, 메이즈와 랭징 사이의 간격을 좁히지 않아야 합니다. 그렇지 않으면, 랭징 전체에 휩쓸립니다.",
"* 그는 뒷쪽 오른쪽 모서리에 위치하고 움직이지 않습니다: 아무도 그의 범위 내에 없을 때, 그는 전체 레이드에 콘데미네이션을 내립니다. 따라서, 힐러와 랭징이 함께 시작하여 멀리 떨어져 있어야 합니다. 각자가 그의 라이더의 마크만 받도록 합니다.",
"* 그는 마지막 라이더이며, 블로메옥 뒤에 위치합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16064"] = { "탄 케르타즈",
"* His Mark of Korth'azz (|cff71d5ff|Hspell:28832|h[Mark of Korth'azz]|h|r) 매 ~15초마다 45야드 거리의 구석에서 발생하며, 갱신될 때마다 더 강하게 공격: 650, 1950, 4550, 9750, 16250 - 앞쪽 플레이어를 완전히 태우는 것이 좋습니다.",
"* His Meteor (|cff71d5ff|Hspell:57467|h[Meteor]|h|r)는 표시된 플레이어에 겹쳐 있는 모든 풀 메이저에게 잔혹한 폭발을 분산시킵니다: 표시된 플레이어에 완전히 겹쳐 있는 풀 메이저를 쌓고, 공격은 거의 인식되지 않습니다. 혼자서 한 플레이어를 삭제하는 대신.",
"* 그는 왼쪽 앞쪽 구석으로 돌진하며, 도착할 때까지 위협을 무시하고, 모든 네 명이 살아있는 동안 다른 메이지 보스와 싸웁니다 - 첫 번째 라이더가 쓰러질 때, 모든 냉기를 발동합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16065"] = { "레이디 블로메",
"* 그녀의 마크 오브 블라우메ಕ್ಸ್ (|cff71d5ff|Hspell:28833|h[Mark of Blaumeux]|h|r)는 그녀의 코너에서 약 15초마다 최대 45야드 거리에서 나타나고, 매번 재활성화될 때마다 더 강력하게 공격: 650, 1950, 4550, 9750, 16250 - 뒤쪽의 소커는 스택이 커질 때마다 회전합니다.",
"* 빈 영역 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r)은 그녀 주변에 바닥 아래에 나타납니다: 원 안으로 즉시 벗어나고, 그녀의 소커는 전투 내내 바닥을 주시합니다.",
"* 그녀는 뒤쪽 왼쪽 코너에 정착하고 움직이지 않습니다: 치유사와 원거리 공격자는 그녀를 멀리 떨어뜨려, 각자가 그녀의 라이더 마크를 받거나, 그녀가 콘데미네이션으로 파티를 쓸어버립니다.",
"* 앞쪽 두 라이더 이후에 쓰러지는 세 번째."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30549"] = { "바론 리벤데어",
"* His Mark of Rivendare (|cff71d5ff|Hspell:28834|h[Mark of Rivendare]|h|r) 은 그의 모서리에서 약 15초마다 45야드 이내에 있는 곳에 떨어지고, 갱신될 때마다 더 강하게 공격하며: 650, 1950, 4550, 9750, 16250 - 앞쪽은 완전히 흡수합니다: 처치 순서를 따르세요.",
"* His Unholy Shadow (|cff71d5ff|Hspell:57369|h[Unholy Shadow]|h|r) 은 약 15초마다 그의 탱커에게 지속 피해를 줍니다: 전투 전체 동안 해당 탱커에게 추가 치유 효과가 적용됩니다.",
"* 그는 ຖານ처럼 정면 오른쪽 모서리로 돌진합니다 - 2번째 라이더가 ຖານ 바로 뒤에 위치합니다."
};

-- Utgarde Keep : Zona 574 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23953"] = { "공작 켈레세스",
"* |cff71d5ff|Hspell:48400|h[Frost Tomb]|h|r: 플레이어를 얼음 무덤으로 얼려 - 빠르게 해제하고, 웨이브로 몰려오는 뼈 무덤 경비병에게 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23954"] = { "약탈자 잉그바르",
"* |cff71d5ff|Hspell:42730|h[Woe Strike]|h|r: Woe는 탱커를 소모 - 교체하고, 클리어 준비를 해두세요.",
"* |cff71d5ff|Hspell:42729|h[Staggering Shout]|h|r: 소리는 방 전체를 둔화시킵니다 - 방어하고, 중단하세요.",
"* |cff71d5ff|Hspell:42723|h[Smash]|h|r: 언데드 형태로 Smash는 방 전체를 흔듭니다 - 근접 공격은 물러서세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24200"] = { "스칼발드와 달론",
"* |cff71d5ff|Hspell:43650|h[Debilitate]|h|r: 그림자 디버프는 사용자를 소모합니다 - 클리어 준비를 해두세요.",
"* |cff71d5ff|Hspell:52611|h[Shades]|h|r: 그들이 쓰러질 때 그림자가 나타납니다 - 그들이 재정비하기 전에 그림을 떨어뜨리세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24201"] = { "스칼발드와 달론",
"* |cff71d5ff|Hspell:43650|h[Debilitate]|h|r: 그림자 디버프는 사용자를 소모합니다 - 클리어 준비를 해두세요.",
"* |cff71d5ff|Hspell:52611|h[Shades]|h|r: 그들이 쓰러질 때 그림자가 나타납니다 - 그들이 재정비하기 전에 그림을 떨어뜨리세요."
};

-- The Culling of Stratholme : Zona 595 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26529"] = { "살덩이갈고리",
"* |cff71d5ff|Hspell:52696|h[Constricting Chains]|h|r: 쇠사슬이 플레이어를 묶습니다 - 정화 준비를 해두세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26530"] = { "살덩이창조자 살람",
"* |cff71d5ff|Hspell:58845|h[Curse of Twisted Flesh]|h|r: 저 마법은 사용자를 변형시킨다 - 제거하십시오.",
"* |cff71d5ff|Hspell:52451|h[Ghouls]|h|r: 그는 좀비들을 소환한다 - 모두 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26532"] = { "시간의 군주 에포크",
"* |cff71d5ff|Hspell:52772|h[Curse of Exertion]|h|r: 이 저주는 사용자를 약화시킵니다 - 제거하십시오.",
"* |cff71d5ff|Hspell:58848|h[Time Warp]|h|r: 시간 왜곡은 방의 속도를 왜곡합니다 - 이 속에서 일정한 치유를 유지하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26533"] = { "말가니스",
"* |cff71d5ff|Hspell:52721|h[Sleep]|h|r: 플레이어를 잠들게 합니다 - 빠르게 깨우고 패를 흩뜨립니다.",
"* |cff71d5ff|Hspell:52723|h[Vampiric Touch]|h|r: 접촉은 보유자를 소모합니다 - 정화합니다."
};

-- Drak'Tharon Keep : Zona 600 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26630"] = { "송곳아귀",
"* |cff71d5ff|Hspell:49637|h[Infected Wound]|h|r: 감염된 상처는 탱커를 멈추게 합니다 - 즉시 치유 준비.",
"* |cff71d5ff|Hspell:49639|h[Crush]|h|r: 크러쉬는 탱커를 공격합니다 - 방어적인 역할 필요.",
"* |cff71d5ff|Hspell:49380|h[Consume]|h|r: 그는 주변의 시체에 집중합니다 - 싸움을 분산시키면서 움직이도록 유도."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26631"] = { "소환사 노보스",
"* |cff71d5ff|Hspell:50089|h[Wrath of Misery]|h|r: Wrath는 몬드에 데미지를 주고 - 치유.",
"* |cff71d5ff|Hspell:47346|h[Dark Wounds]|h|r: 어두운 상처가 바닥에 퍼져 나간다 - 피하기.",
"* |cff71d5ff|Hspell:59910|h[Minions]|h|r: 그는 채널을 사용할 때 몬드가 나타난다 - 그가 다가오기 전에 제거."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26632"] = { "예언자 타론자",
"* |cff71d5ff|Hspell:49356|h[Decay Flesh]|h|r: 그는 뼈로 변하여 뼈로 변합니다 - 뼈가 떨어지는 불의 폭에 주의하세요.",
"* |cff71d5ff|Hspell:49518|h[Rain of Fire]|h|r: 불의 폭이 방을 태웁니다 - 움직이세요.",
"* |cff71d5ff|Hspell:49527|h[Curse of Life]|h|r: 저주는 그를 감염시킵니다 - 치유하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27483"] = { "랩터왕 서슬발톱",
"* |cff71d5ff|Hspell:48878|h[Piercing Slash]|h|r: 그 공격은 사용자를 꿰뚫어 - 치유자들, 주의.",
"* |cff71d5ff|Hspell:59416|h[Raptor Call]|h|r: 그는 방에 랩터를 소환합니다 - 빠르게 패를 AoE."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28684"] = { "크릭티르, 문지기",
"* |cff71d5ff|Hspell:52592|h[Curse of Fatigue]|h|r: 저주는 대상에게 피해를 주고, 대상의 감시자가 문을 통해 쏟아져 나오므로, 저주를 제거하고, 감시자를 AoE 공격하며, 웹을 설치하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28921"] = { "하드로녹스",
"* |cff71d5ff|Hspell:53400|h[Acid Cloud]|h|r: 산성 구름은 바닥을 덮습니다 - 피하십시오.",
"* |cff71d5ff|Hspell:53030|h[Leech Poison]|h|r: 힐치는 그녀가 자신을 치유하는 동안 - 빠르게 제거하십시오; 그녀는 문을 묶고, 그녀가 그것을 유지하는 동안 네루비안의 흐름을 따라 움직이십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["29120"] = { "아누바라크",
"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: 공격은 넓게 퍼져서 목표를 향해 - 목표에서 멀리 벗어나세요; 첫 번째 단계에서 스카라브 떼가 터널을 따라 흐르는데 - AoE로 제거하세요."
};

-- Utgarde Pinnacle : Zona 575 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26668"] = { "스발라 소로우그레이브",
"* |cff71d5ff|Hspell:48267|h[희생]|h|r: 표시된 대상이 제단으로 이동합니다 - 희생이 제단에 도달하기 전에 의식을 중단하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26687"] = { "고르톡 페일후프",
"* |cff71d5ff|Hspell:48261|h[Impale]|h|r: 코끼리의 찌르기는 탱커를 찌르는데 - 치유자들은 준비.",
"* |cff71d5ff|Hspell:48256|h[Withering Roar]|h|r: 울음소리는 패를 약화시키는데 - 계속 치유."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26693"] = { "학살자 스카디",
"* |cff71d5ff|Hspell:59322|h[Whirlwind]|h|r: Whirlwind은 넓게 회전합니다 - 근접 공격은 뒤로 물러서세요.",
"* |cff71d5ff|Hspell:59331|h[Poison]|h|r: 독은 길을 따라 쫓아옵니다 - 구름 사이를 달려나가세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26861"] = { "왕 이미론",
"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: Bane 채널은 캐스터를 처벌합니다 - 채널이 작동하는 동안에는 주문을 중단하세요.",
"* |cff71d5ff|Hspell:48291|h[Fetid Rot]|h|r: Fetid Rot은 소유자를 태웁니다 - 정화하세요."
};

-- The Nexus : Zona 576 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26723"] = { "케리스트라자",
"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: 쇠사슬이 움직임을 묶습니다 - 파티를 흩뜨리고 치유를 유지하세요.",
"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: 그녀 주변에 frost nova가 폭발합니다 - 근접 딜러는 물러서세요.",
"* |cff71d5ff|Hspell:8599|h[Frenzy]|h|r: 마지막에 그녀는 frenzies 상태가 됩니다 - 빠르게 처리하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26731"] = { "대학자 텔레스트라",
"* |cff71d5ff|Hspell:47731|h[Freeze]|h|r: She freezes a player solid - break it and mind her split: three clones fan out, the frost one blizzards the room."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26763"] = { "아노말루스",
"* |cff71d5ff|Hspell:47743|h[카오스 리프트]|h|r: 리프트가 그에게 에너지를 전달하고 있습니다 - 리프트를 빠르게 파괴하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26794"] = { "정원사 오르모로크",
"* |cff71d5ff|Hspell:47981|h[Spell Reflection]|h|r: 주문을 반사합니다 - 캐스터는 주문을 멈추어야 합니다.",
"* |cff71d5ff|Hspell:47958|h[Spikes]|h|r: 스파이크 줄은 방을 휩쓸어 - 마크를 피하십시오.",
"* |cff71d5ff|Hspell:48017|h[Frenzy]|h|r: 체력이 낮을 때 광란 상태가 됩니다 - 빠르게 처치하십시오.",
"* |cff71d5ff|Hspell:61564|h[Treants]|h|r: 트렌트들이 그 주변으로 나타납니다 - AoE로 처치하십시오."
};

-- The Oculus : Zona 578 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27447"] = { "바로스 클라우드스트라이더",
"* |cff71d5ff|Hspell:51002|h[Azure Ring Captain]|h|r: 링 카프틴은 파티를 소환합니다 - 먼저 카프틴을 처치하십시오.",
"* |cff71d5ff|Hspell:51021|h[Arcane Beam]|h|r: 광선은 선을 따라 닿습니다 - 그곳에서 벗어나십시오.",
"* |cff71d5ff|Hspell:51054|h[Amplify Magic]|h|r: 매직을 증폭하면 플레이어를 표시합니다 - 해당 효과를 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27654"] = { "심문관 드라코스",
"* |cff71d5ff|Hspell:50774|h[Thunderous Stomp]|h|r: 발을 밟으면 방 전체가 흔들리므로, 몸을 안정시키세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27655"] = { "마법사 군주 우롬",
"* |cff71d5ff|Hspell:51121|h[Time Bomb]|h|r: 타이 뱅은 소유자를 폭발시킵니다 - 폭발하기 전에 안전하게 피하세요.",
"* |cff71d5ff|Hspell:51110|h[Empowered Arcane Explosion]|h|r: 큰 아카인 폭발 - 주문을 끊거나, 강하게 방어하세요.",
"* |cff71d5ff|Hspell:51103|h[Frostbomb]|h|r: 프스밤은 바닥을 얼립니다 - 얼음 위로 걸으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27656"] = { "지맥 수호자 에레고스",
"* |cff71d5ff|Hspell:51162|h[Planar Shift]|h|r: 그는 평면을 이동하고, 드래곤은 가까이 있어야 합니다 - 이동 중에 파티를 유지하세요.",
"* |cff71d5ff|Hspell:51170|h[Enraged Assault]|h|r: 그는 분노 상태가 됩니다 - 이동이 돌아오기 전에 빠르게 처치하세요."
};

-- Halls of Stone : Zona 599 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27975"] = { "고뇌의 마녀",
"* |cff71d5ff|Hspell:50761|h[Woe Strike]|h|r: Woe가 탱커에게 떨어지므로 교체하세요.",
"* |cff71d5ff|Hspell:50752|h[Storm of Grief]|h|r: 폭풍이 방을 휩쓸고 - 마크에서 벗어나세요.",
"* |cff71d5ff|Hspell:50760|h[Shock of Sorrow]|h|r: 충격이 패를 stun시키므로, 충격이 떨어지기 전에 퍼뜨리세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27977"] = { "크리스탈루스",
"* |cff71d5ff|Hspell:50833|h[Ground Slam]|h|r: 땅을 덮는 공격은 방 전체에 피해를 줍니다 - 넓게 퍼져서 회피하세요.",
"* |cff71d5ff|Hspell:50810|h[Shatter]|h|r: 공격 후에는 파괴 - 모두를 분산시키거나 파괴가 그룹 전체에 큰 피해를 입힙니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27978"] = { "무쇠구체자 쇼니르",
"* |cff71d5ff|Hspell:50840|h[Lightning Ring]|h|r: 번개 반지 주변에 번개가 휘두르며 - 번개가 떨어지기 전에 피하십시오.",
"* |cff71d5ff|Hspell:50834|h[Static Charge]|h|r: 충전은 그를 만지는 사람에게 쌓입니다 - 파티가 그의 반지 주변에 있지 않도록 하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28070"] = { "브란 브론즈비어드",
"* |cff71d5ff|Hspell:51012|h[Dark Matter]|h|r: 어둠의 물질은 패의 공격에 의해 타 - 마크에서 벗어나세요.",
"* |cff71d5ff|Hspell:51125|h[Searing Gaze]|h|r: 타는 시선은 수호자로부터 발사 - 그들을 마주보지 마세요."
};

-- Halls of Lightning : Zona 602 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28546"] = { "아이오나",
"* |cff71d5ff|Hspell:52770|h[Disperse]|h|r: 스파크로 분산 - 스파크가 빠르게 재형성되므로 폭발 전에 AoE로 처리하십시오.",
"* |cff71d5ff|Hspell:52658|h[Static Overload]|h|r: 과부하는 소유자를 태웁니다 - 표시된 대상이 사라집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28586"] = { "장군 비야른그림",
"* |cff71d5ff|Hspell:52027|h[Whirlwind]|h|r: Whirlwind이 라인을 휩쓸고 - 근접 공격자는 뒤로 물러나야 합니다. 그는 페이즈 사이에서 스트라이크, 배틀, 베르세커 자세로 전환합니다.",
"* |cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r: Mortal Strike는 탱커를 공격합니다 - 교체하고 회복합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28587"] = { "볼칸",
"* |cff71d5ff|Hspell:52237|h[Shattering Stomp]|h|r: 발을 밟으면 용암 바닥이 흔들립니다 - 근접 공격은 뒤로 물러서고, 용암에 녹은 고블린을 만들게 하여 식을 때까지 기다렸다가 부수세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28923"] = { "로켄",
"* |cff71d5ff|Hspell:52960|h[번개 폭발]|h|r: 폭발이 점점 더 넓게 퍼져 나갈 때 - 폭발이 최고조에 달하기 전에 벗어나세요."
};

-- The Eye of Eternity : Zona 616 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28859"] = { "말리고스",
"* |cff71d5ff|Hspell:56105|h[Vortex]|h|r: 60초마다, 그는 레이드를 회전시키고 피해를 발사합니다 - 회피하여 치유합니다.",
"* |cff71d5ff|Hspell:56505|h[Deep Breath]|h|r: 2단계에서, 그의 숨결은 플랫폼 섹션을 불태웁니다 - 해당 사분면을 떠납니다.",
"* |cff71d5ff|Hspell:60936|h[Surge of Power]|h|r: 플랫폼을 가로질러 피할 수 없는 폭발 - 방어 대기 시간을 사용합니다.",
"* |cff71d5ff|Hspell:57430|h[Static Field]|h|r: 전기 필드는 플랫폼 주변에 떠다닙니다 - 그들로부터 멀리 이동합니다."
};

-- The Obsidian Sanctum : Zona 615 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28860"] = { "살타리온",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones open under players - step out fast; his breath also sends flame waves across the platform behind the next breath."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30449"] = { "베스페론",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones explode under players - step back; her disciple emerges - burst it before its damage buff stacks on the drake."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30451"] = { "쉐드론",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones burst under players - step out; his disciple and the fiends come through the portal - drop the disciple before its buff lands on him."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30452"] = { "테네브론",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Void zones explode under players - move away; the twilight eggs along the walls crack open - break the whelps."
};

-- The Violet Hold : Zona 608 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29266"] = { "제보즈",
"* |cff71d5ff|Hspell:54102|h[Ethereal Sphere]|h|r: 구체들이 회전하고 발사합니다 - 죽이고 패에서 떨어뜨려야 합니다.",
"* |cff71d5ff|Hspell:54160|h[Arcane Power]|h|r: 아카네 파워가 그를 강화합니다 - 탱커에게 방어력을 높여줍니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29312"] = { "라반토르",
"* |cff71d5ff|Hspell:54282|h[Flame Breath]|h|r: 불꽃 - 그를 마주보게 하세요.",
"* |cff71d5ff|Hspell:54249|h[Lava Burn]|h|r: 용암 폭발 - 흩어져서 공격하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29313"] = { "이코론",
"* |cff71d5ff|Hspell:54306|h[Protective Bubble]|h|r: 버블은 그를 면역 상태로 만듭니다 - 터뜨리세요.",
"* |cff71d5ff|Hspell:54241|h[Water Bolt Volley]|h|r: 볼리는 방 전체에 피해를 줍니다 - 중단하거나 피하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29314"] = { "파멸자 주라마트",
"* |cff71d5ff|Hspell:59743|h[Void Shift]|h|r: 이 기술은 사용자를 강력하게 소모합니다 - 치유사가 준비하세요.",
"* |cff71d5ff|Hspell:59745|h[Shroud of Darkness]|h|r: 이 기술은 공격을 숨깁니다 - 클린을 준비하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29315"] = { "에레켐",
"* |cff71d5ff|Hspell:54481|h[연쇄 치유]|h|r: 그의 경비병들이 연쇄 치유를 사용합니다 - 중단시키세요.",
"* |cff71d5ff|Hspell:54479|h[지구 방패]|h|r: 지구 방패는 파티를 보호합니다 - 해제하세요.",
"* |cff71d5ff|Hspell:54516|h[블러드러스트]|h|r: 블러드러스트는 그를 강화합니다 - 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29316"] = { "모라그",
"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: 눈 링크는 플레이어를 묶고 추격합니다 - 패를 피해서 달아나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31134"] = { "시아니고사",
"* |cff71d5ff|Hspell:58693|h[블리자드]|h|r: 블리자드의 공격 범위 - 눈에 닿지 않도록 이동.",
"* |cff71d5ff|Hspell:58694|h[Vacuum]|h|r: 진공은 전체 팩을 끌어당깁니다 - 방어하고 흩어져야 합니다. 포탈 파동이 사라진 후 마지막으로 나타납니다.",
"* |cff71d5ff|Hspell:59374|h[Mana Burn]|h|r: Mana Burn은 소모형 스킬로, 소모된 사용자를 무력화시킵니다. 즉시 해제해야 합니다."
};

-- Gundrak : Zona 604 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29304"] = { "슬라드란",
"* |cff71d5ff|Hspell:55081|h[독성 폭발]|h|r: 독성 폭발은 바닥 전체에 퍼지므로, 움직이지 말고 넓게 퍼지게 하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29305"] = { "무라비",
"* |cff71d5ff|Hspell:55098|h[변신]|h|r: 저는 공룡으로 변신합니다 - 주문을 중단하거나 전투가 두 배로 진행됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29306"] = { "갈다라",
"* |cff71d5ff|Hspell:54956|h[Impaling Charge]|h|r: Impaling Charge는 플레이어를 던지는 - 표시된 괄호.",
"* |cff71d5ff|Hspell:55249|h[Whirling Slash]|h|r: Whirling Slash은 대상에 쌓이는 - 교체."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29307"] = { "드라카리 거대골렘",
"* |cff71d5ff|Hspell:54850|h[Emerge]|h|r: 원소에 진입하면 - 원소를 먼저 폭발시켜 합쳐지기 전에 파괴하세요.",
"* |cff71d5ff|Hspell:54878|h[Merge]|h|r: 합쳐지는 것은 콜로스를 재건합니다 - 먼저 원소가 죽어야 합니다.",
"* |cff71d5ff|Hspell:59451|h[Mojo Puddle]|h|r: 모조 웅덩이는 바닥을 태웁니다 - 피하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29932"] = { "사나운 엑크",
"* |cff71d5ff|Hspell:55817|h[Eck의 잔재]|h|r: 잔재는 그가 서 있는 곳에 타므로 - 그의 물웅덩이에서 떨어져 있어야 합니다."
};

-- Ahn'kahet: The Old Kingdom : Zona 619 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29308"] = { "공작 탈다람",
"* |cff71d5ff|Hspell:55959|h[Embrace of the Vampyr]|h|r: 챔프는 소유자를 감싸 - 홀드를 깨기 위해 순간 치유를 발사합니다.",
"* |cff71d5ff|Hspell:55931|h[Flame Sphere]|h|r: 불구체는 방을 돌아다닙니다 - 경로를 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29309"] = { "장로 나독스",
"* |cff71d5ff|Hspell:56130|h[Brood Plague]|h|r: 이 질병은 감염자를 소모합니다 - 치유; 그의 새끼들은 무리 지어 나타납니다 - 그들을 광역 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29310"] = { "어둠추적자 제도가",
"* |cff71d5ff|Hspell:56926|h[Thundershock]|h|r: Thundershock은 넓게 퍼지는 - 넓게 퍼지세요.",
"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: Twister는 패를 찢어 - 벽에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29311"] = { "사자 볼라즈",
"* |cff71d5ff|Hspell:57496|h[Insanity]|h|r: 인산은 전체 파티의 복제본을 생성합니다 - 복제본을 빠르게 제거하세요.",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: 섀도우 크래시는 플레이어에게 폭발합니다 - 벗어나세요.",
"* |cff71d5ff|Hspell:57949|h[Shiver]|h|r: 셔버는 보유자를 공격합니다 - 정화하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["30258"] = { "아마니타르",
"* |cff71d5ff|Hspell:57055|h[Mini]|h|r: 그를 줄여서 - 작은 것은 매우 아파하고, 버섯이 자라면서 치유합니다: 팝업 시 즉시 제거하세요."
};

-- Vault of Archavon : Zona 624 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31125"] = { "바위 감시자 아카본",
"* |cff71d5ff|Hspell:58678|h[Rock Shards]|h|r: 그는 지정된 대상에게 돌 조각을 던져 - 치유사는 대비.",
"* |cff71d5ff|Hspell:53041|h[Choking Grab]|h|r: 그는 플레이어를 옆으로 잡아채 - 무리는 지정된 대상에서 멀리 떨어져.",
"* |cff71d5ff|Hspell:60894|h[Leap]|h|r: 그는 무작위 플레이어로 점프 - 빠르게 흩어져 재배치.",
"* |cff71d5ff|Hspell:60880|h[Stomp]|h|r: 패에 넓은 발을 밟아 - 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33993"] = { "폭풍 감시자 에말론",
"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: 폭풍 구조물이 충전 중 - 폭발이 발생하기 전에 파괴하세요.",
"* |cff71d5ff|Hspell:65279|h[Lightning Nova]|h|r: 그 주변으로 회전 - 근접 챔피언이 나타납니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35013"] = { "화염 감시자 코랄론",
"* |cff71d5ff|Hspell:66665|h[Flame Breath]|h|r: 불꽃 - 패에서 그를 마주 보고 공격하세요.",
"* |cff71d5ff|Hspell:66725|h[Meteor Fists]|h|r: 탱커에게 망치 공격 - 탱커 교체.",
"* |cff71d5ff|Hspell:66721|h[Burning Fury]|h|r: 그의 분노는 시간이 지남에 따라 그를 강화합니다.",
"* |cff71d5ff|Hspell:66684|h[Cinder]|h|r: 불꽃 조각은 플레이어를 추적합니다 - 벽으로 이동하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38433"] = { "얼음 감시자 토라본",
"* |cff71d5ff|Hspell:72090|h[Freezing Ground]|h|r: 얼음 폭이 레이드 아래로 퍼져 나갑니다 - 움직이세요.",
"* |cff71d5ff|Hspell:72034|h[Whiteout]|h|r: 넓은 눈보라 공격 - 광역으로 정리하세요.",
"* |cff71d5ff|Hspell:72091|h[Orb]|h|r: 얼음 구체가 그를 돌며 - 터지기 전에 파괴하세요.",
"* |cff71d5ff|Hspell:72004|h[Frostbite]|h|r: 얼음 피해는 구체 공격마다 쌓입니다 - 구체를 계속 파괴하세요."
};

-- Ulduar : Zona 603 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32845"] = { "호디르",
"* |cff71d5ff|Hspell:65123|h[Storm Cloud]|h|r: Storm Cloud 버프를 가진 플레이어와 주변 플레이어 모두에게 공유하세요 - 주로 캐스터에게 사용하세요.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: 얼음은 바닥을 채웁니다 - 얼음 블록 위를 타고 이동하세요.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: 깊은 추위는 움직이지 않는 사람을 공격합니다 - 절대 움직이지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32857"] = { "아이언 컨실",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: 한 명의 워치맨이 쓰러질 때, 다른 워치맨들이 강화되므로, 가장 강력한 조합을 사용하거나, 죽음 속도를 조절하세요.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: 체인 라이팅은 패를 공격합니다 - 흩어져서 방해하세요.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: 브룬디르의 라이팅 회전 - 회전을 방해하세요.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: 브룬디르가 엄청난 폭발로 과부하 상태가 됩니다 - 도망치세요.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: 오버파워가 탱커에게 쌓입니다 - 탱커를 교체하세요.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: 데스 룬이 땅을 태웁니다 - 그곳에서 벗어나세요.",
"* |cff71d5ff|Hspell:63489|h[Shield of Runes]|h|r: 룬 방패가 건강을 보호합니다 - 해제하거나 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32865"] = { "토림",
"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: 망치는 자신의 얼굴 범위 내의 모든 사람을 둔화시킵니다 - 기둥 뒤에 서서 피하십시오.",
"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: 적들이 떨어지면 충격을 사용합니다 - 빠르게 관문 통로를 통과하여 폭발 공격을 하십시오.",
"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: 탱커에게 강력한 공격 - 교환 및 방어."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32867"] = { "아이언 컨실",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: 한 명의 워치맨이 쓰러질 때, 다른 워치맨들이 강화되므로, 가장 강력한 조합을 사용하거나, 죽음 속도를 조절하세요.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: 체인 라이팅은 패를 공격합니다 - 흩어져서 방해하세요.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: 브룬디르의 라이팅 회전 - 회전을 방해하세요.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: 브룬디르가 엄청난 폭발로 과부하 상태가 됩니다 - 도망치세요.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: 오버파워가 탱커에게 쌓입니다 - 탱커를 교체하세요.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: 데스 룬이 땅을 태웁니다 - 그곳에서 벗어나세요.",
"* |cff71d5ff|Hspell:63489|h[Shield of Runes]|h|r: 룬 방패가 건강을 보호합니다 - 해제하거나 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32871"] = { "관찰자 알갈론",
"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: 빅 뱅은 방 전체를 먹어치운다 - 검은 구멍에 들어가서 탈출한다.",
"* |cff71d5ff|Hspell:65108|h[Black Hole]|h|r: 블랙홀은 붕괴된 별을 남긴다 - 그 안으로 들어가, 폭발 후 나오자.",
"* |cff71d5ff|Hspell:64412|h[Phase Punch]|h|r: 페이즈 펀치는 그의 탱커에게 쌓인다 - 탱커를 교체한다.",
"* |cff71d5ff|Hspell:64596|h[Cosmic Smash]|h|r: 코스믹 스매시는 바닥에 표시한다 - 안전하게 이동한다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32906"] = { "프레이야",
"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: 뿌리가 플레이어를 제자리에 고정합니다 - 풀어내세요.",
"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: 태양 광선이 넓게 폭발합니다 - 표시에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32926"] = { "호디르",
"* |cff71d5ff|Hspell:65123|h[Storm Cloud]|h|r: Storm Cloud 버프를 가진 플레이어와 주변 플레이어 모두에게 공유하세요 - 주로 캐스터에게 사용하세요.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: 얼음은 바닥을 채웁니다 - 얼음 블록 위를 타고 이동하세요.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: 깊은 추위는 움직이지 않는 사람을 공격합니다 - 절대 움직이지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32927"] = { "아이언 컨실",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: 한 명의 워치맨이 쓰러질 때, 다른 워치맨들이 강화되므로, 가장 강력한 조합을 사용하거나, 죽음 속도를 조절하세요.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: 체인 라이팅은 패를 공격합니다 - 흩어져서 방해하세요.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: 브룬디르의 라이팅 회전 - 회전을 방해하세요.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: 브룬디르가 엄청난 폭발로 과부하 상태가 됩니다 - 도망치세요.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: 오버파워가 탱커에게 쌓입니다 - 탱커를 교체하세요.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: 데스 룬이 땅을 태웁니다 - 그곳에서 벗어나세요.",
"* |cff71d5ff|Hspell:63489|h[Shield of Runes]|h|r: 룬 방패가 건강을 보호합니다 - 해제하거나 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32930"] = { "콜로간",
"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: Eyebeams는 플레이어를 추적합니다 - 플랫폼 주변을 돌아다니게 하여 소멸시킵니다.",
"* |cff71d5ff|Hspell:64292|h[Grip]|h|r: 돌로 된 팔은 플레이어를 잡습니다 - 빠르게 자유롭게 합니다.",
"* |cff71d5ff|Hspell:64002|h[Crunch Armor]|h|r: 덩크 아머는 탱커에게 적용됩니다 - 탱커를 교체합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33113"] = { "거대 화염전차",
"* |cff71d5ff|Hspell:62374|h[Pursued]|h|r: 한 차량을 추격 - 그 차량은 원을 그리며 움직이고, 나머지는 측면에서 접근.",
"* |cff71d5ff|Hspell:62475|h[System Shutdown]|h|r: 시스템 종료는 그를 얼립니다 - 모든 것을 파괴한 다음.",
"* |cff71d5ff|Hspell:62297|h[Hodir's Fury]|h|r: 타워 버프는 전투를 강화합니다 - 전투 시작 전에 타워를 파괴하여 약화시킵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33118"] = { "용광로 군주 이그니스",
"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: 플레이어를 슬래그에 넣고 - 그들이 떨어질 때까지 열심히 치유하세요.",
"* |cff71d5ff|Hspell:62488|h[Iron Constructs]|h|r: 벤트에서 아이언 컨스트럭트가 쏟아짐 - 물에 잠기고, 그의 스코치를 사용하여 부서지게 만드세요.",
"* |cff71d5ff|Hspell:63472|h[Flame Jets]|h|r: 그 주변의 캐스팅을 방해합니다 - 캐스터는 계속 움직여야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33186"] = { "칼날비늘",
"* |cff71d5ff|Hspell:48642|h[Harpoon Turrets]|h|r: 아레나 주변에 해포 타워를 건설하세요 - 비행 사이에서 그녀를 묶으세요.",
"* |cff71d5ff|Hspell:64733|h[Devouring Flame]|h|r: 불 풀이 바닥에 퍼져 있습니다 - 그 안에서 나오세요.",
"* |cff71d5ff|Hspell:64771|h[Fused Armor]|h|r: 탱커에게 융합된 갑옷이 쌓입니다 - 탱커를 교체하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33271"] = { "장군 베작스",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: 섀도우 크래시가 플레이어를 추격합니다 - 벽으로 밀어내세요.",
"* |cff71d5ff|Hspell:63276|h[Life Siphon]|h|r: 흡수는 그의 표시된 표적을 소모합니다 - 표시된 표적이 멀어집니다.",
"* |cff71d5ff|Hspell:62662|h[Surge of Darkness]|h|r: 서지는 그의 피해를 증가시킵니다 - 탱커는 방어적인 공격을 막아야 합니다.",
"* |cff71d5ff|Hspell:62661|h[Searing Flames]|h|r: 화염은 그를 강화합니다 - 모든 주문을 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33288"] = { "요그사론",
"* |cff71d5ff|Hspell:63050|h[Sanity]|h|r: Sanity 소모는 그림자 근처에 발생 - 지표를 주시하고, 30 이하로 떨어지면 방에서 빠져나와.",
"* |cff71d5ff|Hspell:63802|h[Brain Link]|h|r: 연결된 플레이어는 서로 끌어당김 - 끈을 멀리 유지.",
"* |cff71d5ff|Hspell:57687|h[Brain Portal]|h|r: 뇌 추격 포탈이 열림 - 표시된 그룹을 통과시키고 환상을 끝냄.",
"* |cff71d5ff|Hspell:62979|h[Guardian of Yogg]|h|r: 요그의 수호자가 그림자에서 등장 - 빠르게 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33293"] = { "XT-002 해체자",
"* |cff71d5ff|Hspell:65121|h[Light Bomb]|h|r: 라이트 뱅이 플레이어 발 아래에서 폭발 - 마크를 피하세요.",
"* |cff71d5ff|Hspell:64234|h[Gravity Bomb]|h|r: 중력 뱅이가 마크 주변으로 붕괴 - 마크에 닿지 마세요.",
"* |cff71d5ff|Hspell:64206|h[Consumption]|h|r: 노출된 심 턴은 소비 영역을 남겨둡니다 - 해당 영역에서 벗어나 심을 태우세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33432"] = { "미미론",
"* |cff71d5ff|Hspell:63631|h[Shock Blast]|h|r: 거대한 폭발 공격이 그의 탱커 측에서 발생 - 근접 딜러는 피해야 합니다.",
"* |cff71d5ff|Hspell:64402|h[Rocket Strike]|h|r: 표시된 경로를 따라 로켓이 날아옵니다 - 즉시 벗어나세요.",
"* |cff71d5ff|Hspell:63274|h[Laser Barrage]|h|r: 그는 회전하며 레이저를 발사합니다 - 넓게 회피하세요.",
"* |cff71d5ff|Hspell:64529|h[Plasma Blast]|h|r: 플라즈마 공격이 탱커를 맞습니다 - 방어적인 회복을 준비하세요.",
"* |cff71d5ff|Hspell:64623|h[Frost Bomb]|h|r: 냉기 폭탄이 떨어집니다 - 착지하기 전에 파괴하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33515"] = { "아우리아야",
"* |cff71d5ff|Hspell:64386|h[Sonic Screech]|h|r: 그의 울음소리는 방 전체를 공포에 떨게 한다 - 모든 주문에 대해 인터럽트 유지.",
"* |cff71d5ff|Hspell:64396|h[Guardian Swarm]|h|r: 맹렬한 방어자가 계속해서 나타난다 - 군집을 AoE로 공격하고, 방어자 둥지를 처치.",
"* |cff71d5ff|Hspell:64675|h[Void Zone]|h|r: 虚空 영역은 플레이어를 추격한다 - 즉시 벗어나."
};

-- Trial of the Crusader : Zona 649 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34441"] = { "파벌의 우두머리",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34444"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34445"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34447"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34448"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34449"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34450"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34451"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34453"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34454"] = { "파벌의 우두머리",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34455"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34456"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34458"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34459"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34460"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34461"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34463"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34465"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34466"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34467"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34468"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34469"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34470"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34471"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34472"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34473"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34474"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34475"] = { "파벌의 우승자",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: 전사는 폭풍을 일으킨다 - 근접 공격에 주의.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: 그들의 영웅 버프는 파티를 강화한다 - 빠르게 제거.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: 불길은 바닥을 태운다 - 마크를 벗어나.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: 그들의 군중 제어는 성공한다 - 지속적으로 제거 준비.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: 데스 그립은 플레이어를 잡는다 - 마크된 플레이어와 파티는 흩어져."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34496"] = { "발'키르 쌍",
"* |cff71d5ff|Hspell:65950|h[Light Essence]|h|r: 반은 파티 전체가 라이트 에센스를 짊어지게 합니다 - 오직 라이트 오블만 만지세요, 반대 색깔은 타게 됩니다.",
"* |cff71d5ff|Hspell:66001|h[Dark Essence]|h|r: 다른 반은 어두운 에센스를 짊어지게 합니다 - 오직 어두운 오블만 만지세요.",
"* |cff71d5ff|Hspell:39089|h[Special]|h|r: 특수 부름 시 에센스가 전환됩니다 - 한 번에 반대 오블로 교차합니다.",
"* |cff71d5ff|Hspell:65875|h[Twin's Pact]|h|r: 한 쌍은 다른 쌍을 치유합니다 - 계약을 중단하세요.",
"* |cff71d5ff|Hspell:65916|h[Power of the Twins]|h|r: 강화된 쌍은 감소된 피해를 받습니다 - 다른 쌍에게 피해를 전환하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34497"] = { "발'키르 쌍",
"* |cff71d5ff|Hspell:65950|h[Light Essence]|h|r: 반은 파티 전체가 라이트 에센스를 짊어지게 합니다 - 오직 라이트 오블만 만지세요, 반대 색깔은 타게 됩니다.",
"* |cff71d5ff|Hspell:66001|h[Dark Essence]|h|r: 다른 반은 어두운 에센스를 짊어지게 합니다 - 오직 어두운 오블만 만지세요.",
"* |cff71d5ff|Hspell:39089|h[Special]|h|r: 특수 부름 시 에센스가 전환됩니다 - 한 번에 반대 오블로 교차합니다.",
"* |cff71d5ff|Hspell:65875|h[Twin's Pact]|h|r: 한 쌍은 다른 쌍을 치유합니다 - 계약을 중단하세요.",
"* |cff71d5ff|Hspell:65916|h[Power of the Twins]|h|r: 강화된 쌍은 감소된 피해를 받습니다 - 다른 쌍에게 피해를 전환하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34564"] = { "아눕아락",
"* |cff71d5ff|Hspell:45419|h[Nerubian Burrowers]|h|r: 굴러서 바닥을 통해 올라오는 굴러서 - 빠르게 죽이고, 그들의 공격을 방해하세요.",
"* |cff71d5ff|Hspell:67574|h[Pursued]|h|r: 떼들이 표시된 플레이어를 추적합니다 - 넓게 달리고, 움직일 때 AoE를 사용하세요.",
"* |cff71d5ff|Hspell:66013|h[Penetrating Cold]|h|r: 마지막 단계에서 차가 모든 사람에게 쌓입니다 - 틱을 통과하여 치료하세요.",
"* |cff71d5ff|Hspell:66012|h[Freezing Slash]|h|r: Freezing slash는 플레이어를 표시합니다 - 치료사 준비.",
"* |cff71d5ff|Hspell:65919|h[Burrow]|h|r: 그는 추가 파도와 함께 굴러서 - 파티를 정리하고, 표시된 플레이어 옆에 나타납니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34780"] = { "군주 자락서스",
"* |cff71d5ff|Hspell:66197|h[Legion Flame]|h|r: 불길이 따라붙는 곳을 따라가 - 벽까지 길을 따라가세요.",
"* |cff71d5ff|Hspell:66237|h[Incinerate Flesh]|h|r: 대상이 치유 경쟁을 시작합니다 - 씰이 풀릴 때까지 치유하세요.",
"* |cff71d5ff|Hspell:66269|h[Nether Portal]|h|r: 포탈이 열립니다 - 여주인과 몬스터를 빠르게 처치하세요.",
"* |cff71d5ff|Hspell:66258|h[Nether Volcano]|h|r: 화산이 폭발합니다 - 방에 불꽃이 쏟아지지 않도록 화산을 먼저 처치하세요.",
"* |cff71d5ff|Hspell:67009|h[Nether Power]|h|r: 그는 자신을 강화합니다 - 보스를 디스펠하세요.",
"* |cff71d5ff|Hspell:66532|h[Fel Fireball]|h|r: 펠 화염구는 탱을 공격합니다 - 매번 투척 시마다 중단하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34796"] = { "북렌드 짐승",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: 대상에게 둔기를 사용하면 효과가 중첩됩니다 - 먼저 탱커의 등에 있는 스노볼드를 먼저 제거하십시오.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 폭탄이 패에 흩뿌려집니다 - 목표 지점을 피하십시오.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 몬스터가 아레나를 가로질러 달려옵니다 - 회피하고, 기절한 상태에서 공격하십시오.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 얼음 호흡이 방을 휩쌉니다 - 호환을 피하십시오.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 슬라임이 웜 아래로 퍼집니다 - 피하십시오.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 표적을 마비시킵니다 - 클린을 준비하십시오.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 타는 담즙이 접촉 시 퍼집니다 - 표적 지점으로부터 거리를 유지하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34797"] = { "북렌드 짐승",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: 대상에게 둔기를 사용하면 효과가 중첩됩니다 - 먼저 탱커의 등에 있는 스노볼드를 먼저 제거하십시오.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 폭탄이 패에 흩뿌려집니다 - 목표 지점을 피하십시오.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 몬스터가 아레나를 가로질러 달려옵니다 - 회피하고, 기절한 상태에서 공격하십시오.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 얼음 호흡이 방을 휩쌉니다 - 호환을 피하십시오.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 슬라임이 웜 아래로 퍼집니다 - 피하십시오.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 표적을 마비시킵니다 - 클린을 준비하십시오.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 타는 담즙이 접촉 시 퍼집니다 - 표적 지점으로부터 거리를 유지하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34799"] = { "북렌드 짐승",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: 대상에게 둔기를 사용하면 효과가 중첩됩니다 - 먼저 탱커의 등에 있는 스노볼드를 먼저 제거하십시오.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 폭탄이 패에 흩뿌려집니다 - 목표 지점을 피하십시오.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 몬스터가 아레나를 가로질러 달려옵니다 - 회피하고, 기절한 상태에서 공격하십시오.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 얼음 호흡이 방을 휩쌉니다 - 호환을 피하십시오.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 슬라임이 웜 아래로 퍼집니다 - 피하십시오.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 표적을 마비시킵니다 - 클린을 준비하십시오.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 타는 담즙이 접촉 시 퍼집니다 - 표적 지점으로부터 거리를 유지하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["35144"] = { "북렌드 짐승",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: 대상에게 둔기를 사용하면 효과가 중첩됩니다 - 먼저 탱커의 등에 있는 스노볼드를 먼저 제거하십시오.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 폭탄이 패에 흩뿌려집니다 - 목표 지점을 피하십시오.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 몬스터가 아레나를 가로질러 달려옵니다 - 회피하고, 기절한 상태에서 공격하십시오.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 얼음 호흡이 방을 휩쌉니다 - 호환을 피하십시오.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 슬라임이 웜 아래로 퍼집니다 - 피하십시오.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 표적을 마비시킵니다 - 클린을 준비하십시오.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 타는 담즙이 접촉 시 퍼집니다 - 표적 지점으로부터 거리를 유지하십시오."
};

-- Trial of the Champion : Zona 650 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34657"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34701"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34702"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34703"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34705"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34928"] = { "은빛 고해사제 페일트레스",
"* |cff71d5ff|Hspell:66620|h[Memory]|h|r: 기억이 나타나 싸우는데 - 파괴하고, 남겨진 상처를 피하세요.",
"* |cff71d5ff|Hspell:66515|h[Reflective Shield]|h|r: 방패가 주문을 반사합니다 - 캐스터들은 멀리하세요.",
"* |cff71d5ff|Hspell:66538|h[Holy Fire]|h|r: 성스러운 불이 표시된 곳에 타게 만듭니다 - 불을 제거하세요.",
"* |cff71d5ff|Hspell:66537|h[Renew]|h|r: 그녀는 자신을 재생합니다 - 재생을 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35119"] = { "성기사 에드릭",
"* |cff71d5ff|Hspell:66935|h[Radiance]|h|r: 빛이 모든 사람을 눈부시게 만듭니다 - 반사광을 절대 보지 마세요.",
"* |cff71d5ff|Hspell:66905|h[Hammer]|h|r: 그는 망치를 던집니다 - 표시된 사람은 그것을 잡고 다시 던집니다.",
"* |cff71d5ff|Hspell:66889|h[Vengeance]|h|r: 그의 복수는 그의 힘을 쌓습니다 - 망치 공격 사이에 그를 태우세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35451"] = { "흑기사",
"* |cff71d5ff|Hspell:67781|h[Desecration]|h|r: Desecration이 바닥을 따라 움직입니다 - 벗어나세요.",
"* |cff71d5ff|Hspell:67751|h[Explode]|h|r: 좀비가 패 근처에서 폭발합니다 - 벗어나세요.",
"* |cff71d5ff|Hspell:67823|h[Marked]|h|r: 플레이어를 질병으로 표시합니다 - 치유사는 표시를 유지하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35569"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35570"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35571"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35572"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35617"] = { "그랜드 챔피언",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: 그들의 치유사가 파동을 채널링합니다 - 그에게 중단을 유지하세요.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: 마법사가 폴리모프를 사용합니다 - 빠르게 해제하세요.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: 샤먼이 헥스를 사용합니다 - 헥스를 해제하세요.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: 속도 버프가 그들을 강화합니다 - 보스를 제거하세요.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: 독이 퍼집니다 - 마크에서 벗어나세요."
};

-- Pit of Saron : Zona 658 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36476"] = { "이크",
"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: 플레이어를 쫓아 공격하며 지속적으로 공격 - 표시를 피하세요.",
"* |cff71d5ff|Hspell:69024|h[Toxic Waste]|h|r: 독성 폐액이 바닥에 고여 있습니다 - 피하세요.",
"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: 독성 폭발이 넓게 퍼집니다 - 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36494"] = { "제련장인 가프로스트",
"* |cff71d5ff|Hspell:70381|h[Deep Freeze]|h|r: 얼음 폭은 소유자를 고정시키고 - 항상 청소 준비를 해두세요; 그는 얼음 공격에 대한 방어선으로 사용되는 사로나이트 바위를 던집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36658"] = { "스컬지군주 티라누스",
"* |cff71d5ff|Hspell:69172|h[Overlord's Brand]|h|r: 해당 마크는 브랜드된 지역에 반사되는 모든 공격을 되돌려 패에 가합니다 - 브랜드된 공격을 유지합니다.",
"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: 라이판의 손길은 플레이어를 추격합니다 - 폭발이 닿기 전에 벗어나십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36661"] = { "스컬지군주 티라누스",
"* |cff71d5ff|Hspell:69172|h[Overlord's Brand]|h|r: 해당 마크는 브랜드된 지역에 반사되는 모든 공격을 되돌려 패에 가합니다 - 브랜드된 공격을 유지합니다.",
"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: 라이판의 손길은 플레이어를 추격합니다 - 폭발이 닿기 전에 벗어나십시오."
};

-- The Forge of Souls : Zona 632 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36497"] = { "브론잠",
"* |cff71d5ff|Hspell:68839|h[Corrupt Soul]|h|r: 오염된 영혼이 그에게 돌아옵니다 - 영혼 구슬을 죽이기 전에 먹이를 주지 마세요.",
"* |cff71d5ff|Hspell:68872|h[Soul Storm]|h|r: 낮은 체력 상태에서 폭풍이 방을 파괴합니다 - 회전하는 동안 가장자리에 붙어있으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36502"] = { "영혼의 포식자",
"* |cff71d5ff|Hspell:68820|h[Well of Souls]|h|r: 소울의 샘은 바닥을 채웁니다 - 거기서 발을 떼세요.",
"* |cff71d5ff|Hspell:69051|h[Mirrored Soul]|h|r: 거울은 플레이어를 그에게 묶습니다 - 묶음이 유지되는 동안 공격을 멈추세요.",
"* |cff71d5ff|Hspell:68982|h[Phantom Blast]|h|r: 幻影 폭발은 방을 파괴합니다 - 중단하세요.",
"* |cff71d5ff|Hspell:68899|h[Wailing Souls]|h|r: 울부짖는 영혼은 방을 휩쓸어 갑니다 - 안전한 길을 이용하세요."
};

-- Icecrown Citadel : Zona 631 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36597"] = { "리치 왕",
"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: Defile는 누군가가 거기에 서 있을 때마다 퍼져 나갑니다 - 절대 발을 디디지 마세요.",
"* |cff71d5ff|Hspell:70337|h[Necrotic Plague]|h|r: 질병은 대상 간에 전염됩니다 - 애드에 놓고 절대 해제하지 마세요.",
"* |cff71d5ff|Hspell:70372|h[Shambling Horror]|h|r:  shamblings는 페이즈 사이에서 나타납니다 - 죽이고 질병을 계속 애드에 유지하세요.",
"* |cff71d5ff|Hspell:69200|h[Raging Spirit]|h|r: 겨울에 맹렬한 영혼이 나타납니다 - 그들이 패에 도달하기 전에 파괴하세요.",
"* |cff71d5ff|Hspell:68981|h[Remorseless Winter]|h|r: 겨울 폭풍은 플레이어를 안쪽으로 끌어당깁니다 - 링에서 벗어나세요.",
"* |cff71d5ff|Hspell:71844|h[Valkyr]|h|r: 발키리는 플레이어를 잡습니다 - 그들이 표시된 플레이어를 데려가지 않도록 먼저 파괴하세요.",
"* |cff71d5ff|Hspell:72262|h[Quake]|h|r: 지진은 플랫폼을 파괴합니다 - 안전한 측면을 따라 이동하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36612"] = { "군주 매로우가르",
"* |cff71d5ff|Hspell:69076|h[Bone Storm]|h|r: 방을 휩쓸며 뼈 조각을 흩뿌림 - 넓게 퍼져서 뒤에서 공격받지 않도록.",
"* |cff71d5ff|Hspell:69057|h[Bone Spike]|h|r: 세 명의 플레이어가 뾰족한 것에 찔림 - 빠르게 자유로 만들어.",
"* |cff71d5ff|Hspell:69146|h[Coldflame]|h|r: 차가운 불길이 바닥을 휩쓸고 - 피해야."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36626"] = { "구린속",
"* |cff71d5ff|Hspell:69279|h[가스 스포어]|h|r: 가스 스포어는 플레이어를 표시합니다 - 폭발을 한 번 만에 닿으면 면역을 얻습니다.",
"* |cff71d5ff|Hspell:69166|h[흡입된 질병]|h|r: 각 흡입은 데미지를 뿜어냅니다 - 세 개의 스택이 쌓이면 전체 파티가 방어력을 사용합니다.",
"* |cff71d5ff|Hspell:69240|h[비열 가스]|h|r: 비열 가스는 원거리 공격자를 흩뜨립니다 - 원거리 공격자를 넓게 분산합니다.",
"* |cff71d5ff|Hspell:69195|h[매콤한 질병]|h|r: 매콤한 폭발은 세 번째 흡입과 함께 발생합니다 - 방어 쿨다운을 사용합니다.",
"* |cff71d5ff|Hspell:72219|h[위장성 부종]|h|r: 위장성 부종은 탱커에게 스택됩니다 - 탱커를 교체합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36627"] = { "썩은얼굴",
"* |cff71d5ff|Hspell:69508|h[Slime Spray]|h|r: 슬라임 덩어리 - 그 뒤에 머물러라.",
"* |cff71d5ff|Hspell:69674|h[Mutating Infection]|h|r: 감염된 것은 큰 덩어리로 달려가 제거합니다 - 폭발은 덩어리 몬스터를 생성하며, 그 몬스터를 파괴하세요.",
"* |cff71d5ff|Hspell:69774|h[Sticky Ooze]|h|r: 끈적끈적한 덩어리 - 플레이어를 쫓아옵니다 - 벗어나세요.",
"* |cff71d5ff|Hspell:69558|h[Unstable Ooze]|h|r: 융합된 덩어리는 큰 물을 키웁니다 - 작은 덩어리를 그 것에서 멀리 떨어뜨려 놓으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36678"] = { "교수 퓨트리사이드",
"* |cff71d5ff|Hspell:70341|h[Slime Puddle]|h|r: 슬라이머는 어디에든 자라나 - 거기서 내려와 싸우지 마세요.",
"* |cff71d5ff|Hspell:70447|h[Volatile Ooze]|h|r: 슬라임이 플레이어를 묶습니다 - 슬라임을 터뜨려 자유롭게 해주세요.",
"* |cff71d5ff|Hspell:70672|h[Gaseous Bloat]|h|r: 가스가 플레이어를 부풀립니다 - 가스를 터뜨리세요.",
"* |cff71d5ff|Hspell:71255|h[Choking Gas Bomb]|h|r: 질식 가스 폭탄이 떨어집니다 - 즉시 벗어나세요.",
"* |cff71d5ff|Hspell:70911|h[Unbound Plague]|h|r: 자유로운 전염병이 플레이어 간에 뛰어다닙니다 - 죽기 전에 먼저 전염병을 옮겨주세요.",
"* |cff71d5ff|Hspell:72840|h[Volatile Experiment]|h|r: 3단계에서 두 실험체는 동시에 날아다닙니다 - 슬라임과 가스 스테이션을 미리 계획하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36789"] = { "발리스리아 드림워커",
"* |cff71d5ff|Hspell:72483|h[Nightmare Portal]|h|r: 포털이 꿈으로 열림 - 치유사는 지나가, 버프를 획득하고 발리트리아를 강하게 치유합니다.",
"* |cff71d5ff|Hspell:70588|h[Suppression]|h|r: 억압 구름은 치유를 차단합니다 - 깨뜨리세요.",
"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay Waste가 방을 폭발시킵니다 - 마크에서 벗어나세요.",
"* |cff71d5ff|Hspell:71179|h[Mana Void]|h|r: Mana Void는 캐스터를 소모시킵니다 - 마크에서 벗어나세요.",
"* |cff71d5ff|Hspell:70751|h[Corrosion]|h|r: 썩은 좀이 파도처럼 일어납니다 - 드래곤의 길에서 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36853"] = { "신드라고사",
"* |cff71d5ff|Hspell:70126|h[Frost Beacon]|h|r: Beaconed 플레이어는 얼음 무덤으로 일어납니다 - 무덤은 덮개 역할을 하며, 그 위치를 계획합니다.",
"* |cff71d5ff|Hspell:69766|h[Instability]|h|r: Instability는 주문 시에 쌓입니다 - 5번 쌓이면 주문을 멈추고, 소멸되도록 둡니다.",
"* |cff71d5ff|Hspell:70128|h[Mystic Buffet]|h|r: 버프는 그녀의 호흡을 통해 쌓입니다 - 5번 쌓이면 탱커를 교체합니다.",
"* |cff71d5ff|Hspell:69762|h[Unchained Magic]|h|r: Unchained 디버프는 캐스터를 봉합니다 - 주문을 멈추도록 둡니다.",
"* |cff71d5ff|Hspell:43810|h[Air Phase]|h|r: 그녀는 공기 단계로 일어납니다 - 공격을 분산하고 치유합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36855"] = { "여교주 데스위스퍼",
"* |cff71d5ff|Hspell:71289|h[Dominate Mind]|h|r: 플레이어를 제압합니다 - 표시된 대상이 사라질 때까지 제어합니다.",
"* |cff71d5ff|Hspell:61131|h[Adds]|h|r: 사제 파티가 그녀를 보호합니다 - 파티를 AoE로 공격하고 재활성화되는 것을 막습니다.",
"* |cff71d5ff|Hspell:70674|h[Vampric Might]|h|r: 사제 파티 버프가 그들을 강화합니다 - 빠르게 해제합니다.",
"* |cff71d5ff|Hspell:71001|h[Death and Decay]|h|r: 썩음이 바닥을 태웁니다 - 벗어나세요.",
"* |cff71d5ff|Hspell:71204|h[Touch of Insignificance]|h|r: 사제가 탱을 감싸줍니다 - 탱을 교체합니다.",
"* |cff71d5ff|Hspell:71236|h[Dark Martyrdom]|h|r: 사제가 폭발합니다 - 표시된 대상에서 벗어나세요.",
"* |cff71d5ff|Hspell:34018|h[Reanimation]|h|r: 재활성화된 사제 파티를 다시 태웁니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37215"] = { "대군주 사울팽",
"* |cff71d5ff|Hspell:69638|h[Battle Fury]|h|r: 적대적인 크루가 전투 중에 버프를 사용합니다 - 빠르게 경계를 태우세요.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: 얼음 폭이 갑판을 얼립니다 - 벗어나세요.",
"* |cff71d5ff|Hspell:69652|h[Bladestorm]|h|r: 블래스토어가 갑판을 베어냅니다 - 피하세요.",
"* |cff71d5ff|Hspell:23334|h[Boarders]|h|r: 보더가 휘두릅니다 - 포탑에 도달하기 전에 처치하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37540"] = { "대군주 사울팽",
"* |cff71d5ff|Hspell:69638|h[Battle Fury]|h|r: 적대적인 크루가 전투 중에 버프를 사용합니다 - 빠르게 경계를 태우세요.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: 얼음 폭이 갑판을 얼립니다 - 벗어나세요.",
"* |cff71d5ff|Hspell:69652|h[Bladestorm]|h|r: 블래스토어가 갑판을 베어냅니다 - 피하세요.",
"* |cff71d5ff|Hspell:23334|h[Boarders]|h|r: 보더가 휘두릅니다 - 포탑에 도달하기 전에 처치하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37813"] = { "죽음의 인도자 사울팽",
"* |cff71d5ff|Hspell:72293|h[Mark of the Fallen Champion]|h|r: 마크된 플레이어가 전체 레이드에 데미지를 입힙니다 - 강력한 레이드 치유가 사슬을 커버합니다.",
"* |cff71d5ff|Hspell:72378|h[Blood Nova]|h|r: 블러드 노바가 폭발합니다 - 넓게 퍼져 나갑니다.",
"* |cff71d5ff|Hspell:72385|h[Boiling Blood]|h|r: 끓는 피가 패를 태웁니다 - 넓게 정리합니다.",
"* |cff71d5ff|Hspell:72410|h[Rune of Blood]|h|r: 룬이 탱커를 소모합니다 - 탱커를 교체합니다.",
"* |cff71d5ff|Hspell:72737|h[Frenzy]|h|r: 30%에서 광란 상태가 됩니다 - 그를 죽입니다.",
"* |cff71d5ff|Hspell:72173|h[Blood Beasts]|h|r: 피 짐승이 나타납니다 - 그들이 패에 도달하기 전에 광역 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37955"] = { "피의 여왕 라나텔",
"* |cff71d5ff|Hspell:71340|h[Pact of the Darkfallen]|h|r: 저주받은 세 명은 고통을 공유합니다 - 어깨를 맞대고 계약을 파괴하세요.",
"* |cff71d5ff|Hspell:70946|h[Vampric Bite]|h|r: 물린 플레이어는 에센스를 얻습니다 - 한 명의 치유사를 남기고 교환 계획을 세우세요.",
"* |cff71d5ff|Hspell:70877|h[Bloodthirst]|h|r: 에센스는 갈망을 키웁니다 - 물린 플레이어가 갈망이 폭발하기 전에 다른 플레이어를 물도록 하세요.",
"* |cff71d5ff|Hspell:71266|h[Swarming Shadows]|h|r: 그림자는 표시된 플레이어를 따라갑니다 - 표시를 넓게 이동하세요.",
"* |cff71d5ff|Hspell:71772|h[Blood Bolt]|h|r: 혈액 폭탄이 흩어져 나갑니다 - 흩어져 이동하세요.",
"* |cff71d5ff|Hspell:71510|h[Blood Mirror]|h|r: 거울은 피해를 연결합니다 - 거울에 있는 두 명을 분리하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37970"] = { "블러드 프린스 코운슬",
"* |cff71d5ff|Hspell:70952|h[타겟 변경]|h|r: 그 대상은 방패를 가진 왕에게로 이동합니다 - 절대 방패를 가진 왕을 공격하지 마세요.",
"* |cff71d5ff|Hspell:72040|h[강화된 불꽃]|h|r: 강화된 불꽃은 플레이어를 추적합니다 - 추적 경로를 따라가세요.",
"* |cff71d5ff|Hspell:72037|h[충격 회오리]|h|r: 충격 회오리는 파티를 통과합니다 - 넓게 퍼뜨리세요.",
"* |cff71d5ff|Hspell:72053|h[운동 에너지 폭탄]|h|r: 운동 에너지 폭탄은 떠다니고 튀어 나갑니다 - 떨어지기 전에 터뜨리세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37972"] = { "블러드 프린스 컨실",
"* |cff71d5ff|Hspell:70952|h[타겟 변경]|h|r: 그 대상은 방패를 가진 왕에게로 이동합니다 - 절대 방패를 가진 왕을 공격하지 마세요.",
"* |cff71d5ff|Hspell:72040|h[강화된 불꽃]|h|r: 강화된 불꽃은 플레이어를 추적합니다 - 추적 경로를 따라가세요.",
"* |cff71d5ff|Hspell:72037|h[충격 회오리]|h|r: 충격 회오리는 파티를 통과합니다 - 넓게 퍼뜨리세요.",
"* |cff71d5ff|Hspell:72053|h[운동 에너지 폭탄]|h|r: 운동 에너지 폭탄은 떠다니고 튀어 나갑니다 - 떨어지기 전에 터뜨리세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37973"] = { "블러드 프린스 컨실",
"* |cff71d5ff|Hspell:70952|h[타겟 변경]|h|r: 그 대상은 방패를 가진 왕에게로 이동합니다 - 절대 방패를 가진 왕을 공격하지 마세요.",
"* |cff71d5ff|Hspell:72040|h[강화된 불꽃]|h|r: 강화된 불꽃은 플레이어를 추적합니다 - 추적 경로를 따라가세요.",
"* |cff71d5ff|Hspell:72037|h[충격 회오리]|h|r: 충격 회오리는 파티를 통과합니다 - 넓게 퍼뜨리세요.",
"* |cff71d5ff|Hspell:72053|h[운동 에너지 폭탄]|h|r: 운동 에너지 폭탄은 떠다니고 튀어 나갑니다 - 떨어지기 전에 터뜨리세요."
};

-- Halls of Reflection : Zona 668 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38112"] = { "팔릭",
"* |cff71d5ff|Hspell:72422|h[Quivering Strike]|h|r: 콰이어링 스트라이크는 소유자를 고갈시킵니다 - 클린스를 준비해두세요.",
"* |cff71d5ff|Hspell:72426|h[Impending Despair]|h|r: 임펜딩 디스페어는 소유자를 묶습니다 - 빠르게 클린스하세요; 끔찍한 영혼의 파도가 두 명 사이에 휩쓸립니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38113"] = { "마윈",
"* |cff71d5ff|Hspell:72363|h[Corrupted Flesh]|h|r: 오염된 살은 소유자를 태웁니다 - 클린스를 준비해 두세요.",
"* |cff71d5ff|Hspell:72368|h[Shared Suffering]|h|r: 공유된 고통은 파티를 묶습니다 - 묶음을 분리하세요.",
"* |cff71d5ff|Hspell:72383|h[Corrupted Touch]|h|r: 접촉은 소유자를 소모합니다 - 클린스하세요.",
"* |cff71d5ff|Hspell:72362|h[Well of Corruption]|h|r: 오염이 바닥에 모입니다 - 거기서 벗어나세요."
};

-- The Ruby Sanctum : Zona 724 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39746"] = { "제네럴 자리스리안",
"* |cff71d5ff|Hspell:74367|h[방어력 증폭]|h|r: 방어력 증폭 효과를 적으로에게 적용 - 탱커 교체.",
"* |cff71d5ff|Hspell:74398|h[드래곤]|h|r: 오닉스 드래곤이 등장 - 처치, 방해 효과 준비.",
"* |cff71d5ff|Hspell:74384|h[공포 울부짖음]|h|r: 공포 울부짖음 - 중단하거나 공포에 직면."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39747"] = { "사비아나 레이지파이어",
"* |cff71d5ff|Hspell:74453|h[Beacon of Flames]|h|r: 그녀는 다음 호흡에 플레이어를 표시합니다 - 패에서 멀리 표시를 받으세요.",
"* |cff71d5ff|Hspell:74403|h[Flame Breath]|h|r: 넓은 불 호흡 - 그녀를 마주보세요.",
"* |cff71d5ff|Hspell:78722|h[Enrage]|h|r: 그녀가 분노합니다 - 진정시키세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39751"] = { "발타러스, 전쟁의 씨앗",
"* |cff71d5ff|Hspell:75125|h[Blade Tempest]|h|r: 와일드하운드가 근접 공격을 찢어 - 움직이지 마세요.",
"* |cff71d5ff|Hspell:74509|h[Repelling Wave]|h|r: 파동이 모든 사람을 밀어내 - 벽에서 멀리 떨어져.",
"* |cff71d5ff|Hspell:74505|h[Splitting Brand]|h|r: 브랜드가 플레이어를 표시 - 클론이 복사, 분열을 주의하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39863"] = { "할리온",
"* |cff71d5ff|Hspell:74562|h[Fiery Combustion]|h|r: 화염 측면의 Combustion은 화염 추를 생성하여 영역의 가장자리로 이동합니다.",
"* |cff71d5ff|Hspell:74792|h[Shadow Consumption]|h|r: 그림자 측면의 동일한 추 - 영역의 가장자리에 보관합니다.",
"* |cff71d5ff|Hspell:74648|h[Meteor Strike]|h|r: 화염 영역으로 메테오가 떨어집니다 - 목표 지점에서 멀리 떨어져 있습니다.",
"* |cff71d5ff|Hspell:74769|h[Twilight Cutter]|h|r: 회전하는 커터는 그림자 영역을 긁습니다 - 광선을 피하십시오.",
"* |cff71d5ff|Hspell:74525|h[Flame Breath]|h|r: 화염 측면 탱커에게 Flame Breath - 그를 마주보지 마세요.",
"* |cff71d5ff|Hspell:74806|h[Dark Breath]|h|r: 그림자 측면 탱커에게 Dark Breath - 그를 마주보지 마세요."
};
P.ko = ko;
