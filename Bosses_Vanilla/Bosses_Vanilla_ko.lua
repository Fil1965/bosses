--[[
	Bosses_Vanilla_ko.lua
		Datos en KO del pack Vanilla.
		Fichero creado por el editor web (2026-10-16); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ko = {};
local pack = ko;


-- The Stockade : Zona 34 (classic) --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1663"] = { "데스트렌 튜터",
"* 공포 능력: Dextren은 파티를 공포 상태로 만들 수 있으므로, 전투를 시작하기 전에 방과 주변의 적을 정리하는 것이 좋습니다.",
"* 도망: 체력이 줄어들면 도망치려고 시도하므로, 파티를 통제하여 더 많은 적을 끌어들이는 것을 방지하는 것이 좋습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1666"] = { "캄 딥퓨리",
"* 단순한 근접 전투: 방해하거나 해제할 필요 없음."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1696"] = { "타르고르",
"* 단순한 근접 전투: 방해하거나 해제할 필요가 없음, 탱커는 끈적하게 붙어있고, 데미지를 줌."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1716"] = { "바질 쓰레드",
"* 마지막 전투는 정원에서 벌어지며, 그의 감금된 자들이 전투가 시작되자 함께 참여합니다: 먼저 몬스터를 처치하고, 그 다음 보스."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1717"] = { "햄호크",
"* 단순한 근접 전투로, 강력한 데미지를 줍니다: 방해하거나 해제할 필요가 없습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1720"] = { "브루갈 아이언나클",
"* 단순한 근접 전투: 방해하거나 해제할 필요 없음."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46254"] = { "들창코",
"* 전설적인 엘윈의 악당, 이제 폭동의 수장: 그의 |cff71d5ff|Hspell:86620|h[매독 콜]|h|r를 방해하세요.",
"* 나머지는 근접 공격: DBM 플래그는 다른 메커니즘이 없습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46264"] = { "군주 열지옥",
"* 직접적인 파이어볼 공격을 탱커에게 (화염 피해): 일반적인 탱킹 및 회복 패턴.",
"* 그의 불의 폭풍은 9초 동안 특정 지역을 끓게 만듭니다: 5미터 이내의 모든 플레이어는 타게 됩니다 - 폭풍이 닿는 즉시 해당 지역에서 벗어나세요.",
"* 그의 오버히트는 무작위 플레이어를 공격하여 즉시 화염 피해를 입히고, 매 3초마다 9초 지속되는 화상 피해를 줍니다 (마법력이 높을수록 피해량이 증가). 마법 피해이므로, 즉시 제거해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46383"] = { "란돌프 몰로크",
"* 리마스터의 최종 보스, 메인 터널의 끝에 반란을 일으킨 죄수들 앞에서.",
"* 광범위한 찌르기: 극단적인 속도의 찌르기 광란 (0.3초마다 한 번씩 공격) 동안, 공격 확률이 35% 감소하며: 탱커는 폭풍에 맞서 싸웁니다.",
"* 그의 휩은 전면적인 공격으로, 탱커와 가장 가까운 아군을 공격합니다: 아무도 그를 막거나 탱커에게 붙지 않습니다.",
"* 사라지기: 70-60%와 40-30% 체력으로 내려가면, 그는 무작위 플레이어 뒤에 나타나고: 탱커는 빠르게 위협을 되찾습니다."
};

-- Gnomeregan : Zona 90 (classic and modern journal) --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1853"] = { "암흑스승 간들링",
"* 그의 그림 포탈(|cff71d5ff|Hspell:17950|h[Shadow Portal]|h|r) 플레이어를 잠긴 방에 던져 (경고는 주문을 알림, 대상은 아님).",
"* 고립된 캐릭터는 방의 학생들을 혼자 싸우고 문이 열릴 때까지; 나머지는 그림 화살을 맞고 계속 DPS를 유지합니다.",
"* 그는 떨어질 때까지 반복합니다: 방이 계속해서 플레이어를 내보내면서 DPS 클록."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["2748"] = { "아라케다스",
"* 금고의 잠든 거인: 서몬을 정리하면서 그를 지치게 만드는 긴 전투.",
"* Earthen Guardians (|cff71d5ff|Hspell:10252|h[Awaken Earthen Guardians]|h|r)과 Vault Warder (|cff71d5ff|Hspell:10258|h[Awaken Vault Warder]|h|r)을 깨우기: 서포트가 파도처럼 도착합니다 — 그들을 베어내고, 보스는 탱커에게 남습니다.",
"* Ground Tremor (|cff71d5ff|Hspell:6524|h[Ground Tremor]|h|r)이 주변을 공격합니다: 딜러는 회복을 유지하고, 피할 필요가 없습니다.",
"* 고전적인 규칙: 탱커는 그를 그의 플랫폼에 고정하고, 딜러는 보호자에게 피해를 주고, Archaedas는 마지막에 쓰러집니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3974"] = { "사냥개조련사 록시",
"* 그는 개들로 인해 측면에서 공격하고, 패에 대해 |cff71d5ff|Hspell:6742|h[Bloodlust]|h|r를 사용합니다: 그들은 더 빠르게 공격하므로, 탱이 그를 고정하는 동안 개들을 최대한 빨리 제거하십시오.",
"* 그게 전부: 개들이 모이면 먼저 죽이고, 그는 곧 쓰러집니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3975"] = { "헤롯",
"* Whirlwind (|cff71d5ff|Hspell:8989|h[Whirlwind]|h|r)은 약 18초마다 회전합니다: 공격자는 회전이 끝날 때까지 범위 밖으로 이동한 다음 돌아옵니다.",
"* 건강이 낮을 때, 그는 Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r)를 사용합니다: 더 많은 피해, 탱커에게 압박을 가하고 치유합니다.",
"* 헤로드가 쓰러질 때, 붉은색 훈련병들이 문을 통해 몰려옵니다: 그들이 쓸려나갈 때까지 멈추지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3976"] = { "스칼렛 커맨더 모그레이인",
"* 간단한 공격, 그는 시작합니다: 와이트메인은 그녀의 발코니에서 한 번만 나갑니다.",
"* 첫 번째 죽음 이후, 와이트메인의 치유 (|cff71d5ff|Hspell:12039|h[Heal]|h|r)가 중단됩니다: 공격이 없으면 그는 완전히 회복됩니다.",
"* 치유가 완료되고 부활이 성공하면, 전투는 둘을 떨어뜨립니다. 서두르지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3977"] = { "종교재판관 화이트메인",
"* 그녀는 모그레이인이 쓰러질 때 내려와 플레이어를 대상으로 10초 동안 |cff71d5ff|Hspell:9256|h[Deep Sleep]|h|r를 시전하여, 모그레이인의 귀환을 가리는 커튼을 만듭니다.",
"* She then casts Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) to refill the revived one: interrupt it every time.",
"* 그녀가 그를 부활시키면, 그녀가 먼저 쓰러집니다; 부활한 모그레인은 마지막 보상이 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3983"] = { "인터로그 담당 비샤스",
"* 간단하고 직관적인 전투: 그의 유일한 특수 기술은 플레이어에게 적용되는 Immolate (|cff71d5ff|Hspell:9034|h[Immolate]|h|r), 지속적인 마법 피해입니다. 해제하거나 신중하게 치유하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4542"] = { "하이 인퀴지셔터 페인브리즈",
"* 한 인퀴지터가 무덤 무덤 속에 숨어 있습니다: 대부분의 그룹은 나중에 처리합니다. 만약 당신이 그를 끌어들인다면, 그것은 간단한 전투입니다.",
"* 그의 블러드 저주 (|cff71d5ff|Hspell:8282|h[Curse of Blood]|h|r)는 저주입니다: 저주 제거로 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4543"] = { "혈법사 탈노스",
"* Flame Spike (|cff71d5ff|Hspell:8814|h[Flame Spike]|h|r) 원거리에서 사용하고 Fire Nova (|cff71d5ff|Hspell:12470|h[Fire Nova]|h|r)를 주변에 던지며: 그는 노바를 발사할 때, 닿는 공격을 차단합니다.",
"* 다른 메커니즘 없음: 그를 세우고, 쓰러뜨리면 묘지가 완성됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4854"] = { "그림록",
"* Shaman trogg, lower caverns의 보스: 체인 볼트 (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r)를 항상 방해하고, 보너스로 라이트닝 볼트 (|cff71d5ff|Hspell:12167|h[Lightning Bolt]|h|r)를 사용합니다.",
"* 블러드러스트 (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r): 블러드러스트를 사용하는 플레이어는 첫 번째로 쓰러집니다.",
"* 크리스탈 슬럼버 (|cff71d5ff|Hspell:3636|h[Crystalline Slumber]|h|r): 플레이어를 잠재우는 (마법) 스킬: 디스펠 또는 피해를 가하면 깨어납니다.",
"* 리플렉션 (|cff71d5ff|Hspell:9906|h[Reflection]|h|r): 지속되는 동안에는 스킬을 사용하지 마십시오. 동일한 스킬 반사 규칙이 적용됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5709"] = { "에라니쿠스의 그림자",
"* 녹색 용의 신성한 의식을 통해 제단에 소환되는 그림자: 고전적인 신전의 마지막 소환.",
"* 그의 깊은 잠 (|cff71d5ff|Hspell:12890|h[Deep Slumber]|h|r)은 누구든 잠들게 하고, 산성 숨결 (|cff71d5ff|Hspell:12533|h[Acid Breath]|h|r)은 탱커를 공격하며, 전쟁 발을 (|cff71d5ff|Hspell:24375|h[War Stomp]|h|r)은 근접 공격 범위에 떨어뜨립니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5710"] = { "자말란, 예언자",
"* 홀의 예언자, 그의 보호수인 오고(자체 입력 없음)가 그 옆에 서서: 개방된 공간에서 듀오 전투.",
"* 자말란은 그의 에어그랩 토템(|cff71d5ff|Hspell:8376|h[에어그랩 토템]|h|r)을 설치합니다 - 이는 그룹을 고정시키고, 덮인 플레이어를 헥스 오브 자말란(|cff71d5ff|Hspell:12479|h[헥스 오브 자말란]|h|r)으로 표시합니다 - 그는 또한 힐링 웨이브(12492)와 플레임스트라이크(12468)를 시전합니다.",
"* 오고는 항상 섀도 볼트(|cff71d5ff|Hspell:12471|h[섀도 볼트]|h|r)로 처벌하고, 섀도 워드: 페인(|cff71d5ff|Hspell:11639|h[섀도 워드: 페인]|h|r)(마법)과 약점 저주(|cff71d5ff|Hspell:12493|h[약점 저주]|h|r)(저주)를 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5712"] = { "졸로",
"* 아탈라이 수비대의 강력한 트롤 미니 보스: 체인 라이팅은 뭉쳐 있는 플레이어 사이를 뛰어다닙니다 — 매번 공격 후에는 흩어져 주세요.",
"* 그는 그 옆에 토템을 심어 뼈를 계속 생성합니다: 토템이 나타나면 즉시 파괴하세요.",
"* 그의 영역 디버프는 모든 능력치를 10만큼 감소시키고, 전투가 길어지면 중첩됩니다 — 빠르게 처치하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5719"] = { "모르파즈",
"* 물에 잠긴 구덩이의 녹색 드래곤: 이 킷은 사원의 4명의 방어수와 쌍둥이입니다.",
"* 간단한 전투: 그의 산성 호흡 (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r)은 앞쪽을 공격하고, 날개 짓 (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r)은 밀어내는 — 탱커는 자리 잡고, 나머지는 뒤에 위치합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5720"] = { "직조공",
"* 상층의 드래곤, 드림사이프 옆: 투인 워더 킷.",
"* 단순한 전투: 산성 호흡 (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r)은 앞쪽을 공격하고 날개 짓 (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r)으로 밀어내는 — 탱커는 버티고, 그룹은 그 뒤에 숨음."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5721"] = { "드림스카이프",
"* 상층 드래곤, 위버 옆: 튜인 워더 킷.",
"* 간단한 전투: 그의 산성 호흡 (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r)은 앞쪽으로 닿고 자연의 상처를 남기며, 날개 박차 (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r)는 뒤로 밀어냅니다 — 탱커는 버티고, 그룹은 그 뒤에 숨습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5722"] = { "하자스",
"* 물에 잠긴 구덩이의 녹색 드레이크, 그리고 모파즈: 쌍 방어 키와 함께.",
"* 간단한 전투: 산성 호흡 (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r)은 앞쪽을 공격하고 날개 깃털 (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r)은 밀어내기 — 탱커는 버티고, 그룹은 그 뒤에 숨음."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6229"] = { "고철 압축기 9-60",
"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): 공격을 공중으로 던지는 밟기: 오직 탱커만이 안에, 나머지는 범위 밖.",
"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) 탱커에게: 일반적인 탱킹과 회복 리듬."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6235"] = { "기계화 문지기 6000",
"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r)과 Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r)은 중단 가능: 뿌리에서 끊으세요.",
"* Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r)은 탱커에게 피해를 주고: 회복은 필요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6487"] = { "아카나 이스트 도안",
"* 그는 플레이어에게 Polymorph (|cff71d5ff|Hspell:13323|h[Polymorph]|h|r)를 시전하고, 그 주변에 Arcane Explosion (|cff71d5ff|Hspell:9433|h[Arcane Explosion]|h|r)을 반복적으로 사용합니다: 아무도 그에게 붙어 있지 않습니다.",
"* 그의 Silence (|cff71d5ff|Hspell:8988|h[Silence]|h|r)는 주변의 주문을 차단합니다: 아카나이스트에게 가까이 가지 않고 주문을 계속할 수 있도록 하십시오.",
"* Detonate (|cff71d5ff|Hspell:9435|h[Detonate]|h|r)가 진짜 공격입니다: 충전되면, 폭발하기 전에 반경 밖으로 벗어나거나 방 안의 책장 뒤로 시야를 가리는 것이 좋습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6906"] = { "길 잃은 도르프",
"* 세 명의 드워프 (바일로그, 에릭 «더 스위프트» 및 올라프)가 수공예자 홀에서: 세 명 모두 한 번에, 간단한 전투.",
"* 한 번에 세 명을, DBM으로 표시되지 않은 메커니즘 없이: 탱커가 그들을 모으고 AoE + 클리브를 사용하여 처치."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6907"] = { "잃어버린 도르프",
"* 세 명의 드워프 (바일로그, 에릭 «더 스위프트» 및 올라프)가 수공예자 홀에서: 세 명 모두 한 번에, 간단한 전투.",
"* 한 번에 세 명을, DBM으로 표시되지 않은 메커니즘 없이: 탱커가 그들을 모으고 AoE + 클리브를 사용하여 처치."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6908"] = { "길 잃은 도르프",
"* 세 명의 드워프 (바일로그, 에릭 «더 스위프트» 및 올라프)가 수공예자 홀에서: 세 명 모두 한 번에, 간단한 전투.",
"* 한 번에 세 명을, DBM으로 표시되지 않은 메커니즘 없이: 탱커가 그들을 모으고 AoE + 클리브를 사용하여 처치."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6910"] = { "리벨로쉬",
"* Hall de entrada, chamán trogg: su Rayo en Cadena (|cff71d5ff|Hspell:16006|h[Chain Lightning]|h|r) se interrumpe cada vez.",
"* Si un Rayo (|cff71d5ff|Hspell:15801|h[Lightning Bolt]|h|r) pasa, interrumpa también si el grupo puede."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7023"] = { "흑요석 감시병",
"* Obsidian sentinel golem: his Reflection (|cff71d5ff|Hspell:9941|h[Reflection]|h|r) throws spells back at the caster — casters hold casts while it runs.",
"* Splintered Obsidian (|cff71d5ff|Hspell:10072|h[Splintered Obsidian]|h|r): bursts cleared as soon as they spawn."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7079"] = { "방사성 폐기물",
"* 독 공격 (|cff71d5ff|Hspell:21687|h[Toxic Volley]|h|r): 가까운 대상에게 주기적인 독 피해; 독 제거 효과는 지속됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7206"] = { "고대 돌 수호자",
"* 중앙 홀의 돌 지킴이: 고정 전투, 높은 물리 피해.",
"* 모래 폭풍 (|cff71d5ff|Hspell:10132|h[Sand Storms]|h|r) 멈추지 않음: 광역 피해, 원거리 공격은 뭉치지 않고, 치유사는 분담."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7228"] = { "아이로나야",
"* 지도 방의 수호자: 정적인 전투, 탱킹 위치에 고정.",
"* 그녀의 Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r)은 전방: 근접 공격자는 그녀 앞에 직접 서지 않습니다.",
"* 그녀 주변에서 War Stomp (|cff71d5ff|Hspell:11876|h[War Stomp]|h|r)을 사용: 근접 공격자는 이를 활용하고, 회복은 계속됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7267"] = { "족장 우코르즈 샌드스칼프",
"* 피라미드의 꼭대기에 있는 장군, 그의 오른손인 루즈루(별도의 항목 없음): 정면 전투, 하드 물리 피해로 탱킹.",
"* 루즈루가 FIRST 죽는다: 장군이 죽으면 (+30% 피해 및 +40% 공격 속도) 분노를 일으키고 방에 남은 모든 것을 처벌한다.",
"* 체력이 줄어들 때, 그는 분노(|cff71d5ff|Hspell:8269|h[Enrage]|h|r)를 사용한다: 탱커는 굳고, 치유가 마지막 구간을 담당한다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7271"] = { "위치 도터 줌라",
"* 정원 수호자, 그의 신도의 치유 주문을 방해받음 — 치유 파동 (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r)과, 특히 그림자 볼트 연사 (|cff71d5ff|Hspell:15245|h[Shadow Bolt Volley]|h|r)이 30야드 거리에 있는 전체 그룹에게 피해를 줌.",
"* 줌라의 방패 (|cff71d5ff|Hspell:11086|h[Ward of Zum'rah]|h|r)은 그의 발 아래에 토템을 심어, 5초마다 스켈레톤을 소환함 — 소환되는 즉시 파괴해야 함.",
"* 좀비 깨우기: 그는 방 근처의 무덤에서 즈울파락 좀비를 소환 — 좀비와 스켈레톤은 나타나자마자 쓰러짐."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7272"] = { "테카, 희생자",
"* 단일 대상 전투: 그의 감염된 질병 (|cff71d5ff|Hspell:8600|h[감염된 질병]|h|r)은 치료 가능한 질병입니다 — 즉시 제거하세요.",
"* 전투 중간에 변신 (|cff71d5ff|Hspell:11089|h[변신]|h|r): 탱커는 그를 잡고 계속해서 떨어뜨립니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7273"] = { "가즈릴라",
"* 광장 중앙의 거대한 몬스터: 탱커는 그녀를 제자리에서 고정하고, 원거리 공격자는 그녀 뒤에 뭉치지 않는다.",
"* 그녀의 펀치 (|cff71d5ff|Hspell:11902|h[Slam]|h|r)는 바닥에 충격을 가한다: 근접 공격자는 치유를 사용하여 피해를 피한다.",
"* 얼음 폭 (|cff71d5ff|Hspell:11836|h[Freeze Solid]|h|r)은 누구든 얼려 버린다: 치유는 효과가 지속되는 동안 적용된다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7275"] = { "네크룸 & 세즈지즈",
"* 피라미드 이벤트 (해방된 죄수들이 당신을 공격): 그들이 나타날 때, 미니언 파도 이후에 처치하세요.",
"* 세즈'지즈의 치유 - 재생 (|cff71d5ff|Hspell:8362|h[Renew]|h|r) 및 치유 (|cff71d5ff|Hspell:12039|h[Heal]|h|r) - 매번 방해하면, 그 콤보가 싸움을 길게 만듭니다.",
"* 신성 방어 (|cff71d5ff|Hspell:13704|h[Divine Shield]|h|r) - 직접적인 피해를 차단합니다: 효과가 지속되는 동안, 노력 낭비를 방지합니다.",
"* 열열병 (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) - 여기에도 나타납니다: 치료 가능한 질병, 해제 가능."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7291"] = { "갈가른 화염 망치",
"* Fire shaman of the craftsmen halls: Flame Spike (|cff71d5ff|Hspell:6725|h[Flame Spike]|h|r) and Flame Lash (|cff71d5ff|Hspell:3356|h[Flame Lash]|h|r), both interrupt every time.",
"* Fire Nova (|cff71d5ff|Hspell:11969|h[Fire Nova]|h|r) bursts around: melee leaves the radius and returns."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7361"] = { "그루비스",
"* 평범한 전투로 표시된 DBM에 의해 지정된 전투: 탱커, 데미지 딜러, 힐러, 그리고 그 옆에 나타나는 추가 대상 (그의  chomper)을 주의"
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7795"] = { "수중 마법사 벨라타",
"* 고위 마법사: 단순한 전투, 단 하나의 세부 사항만 존재 — 모든 치유 파동 (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r)이 방해받음."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7796"] = { "네크룸 & 세즈지즈",
"* 피라미드 이벤트 (해방된 죄수들이 당신을 공격): 그들이 나타날 때, 미니언 파도 이후에 처치하세요.",
"* 세즈'지즈의 치유 - 재생 (|cff71d5ff|Hspell:8362|h[Renew]|h|r) 및 치유 (|cff71d5ff|Hspell:12039|h[Heal]|h|r) - 매번 방해하면, 그 콤보가 싸움을 길게 만듭니다.",
"* 신성 방어 (|cff71d5ff|Hspell:13704|h[Divine Shield]|h|r) - 직접적인 피해를 차단합니다: 효과가 지속되는 동안, 노력 낭비를 방지합니다.",
"* 열열병 (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) - 여기에도 나타납니다: 치료 가능한 질병, 해제 가능."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7800"] = { "기계박사 텔마플러그",
"* 그는 무작위 플레이어에게 살아있는 폭탄을 부착합니다 (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): 표시된 사람은 폭발할 때까지 그룹에서 도망갑니다.",
"* Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 탱커를 날려버립니다: 그가 착지할 위치를 염두에 두세요.",
"* 카타 이후 그는 중단 가능한 스팀 블래스트를 사용하고 탱커를 공격합니다: 블래스트를 적절한 시점에 끊으세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8127"] = { "안투술",
"* 첫 번째 보스, 입구 구덩이에서: 토롤 치유사가 토템과 하수인으로 자신을 지지합니다.",
"* 그의 치유 파동이 방해되면: 자기 치유 (|cff71d5ff|Hspell:11895|h[Healing Wave]|h|r)와 하수인에게 보내는 치유 파동 (|cff71d5ff|Hspell:15982|h[Healing Wave]|h|r)이 중단됩니다.",
"* 그의 토템이 솟아오르는 즉시: 앤그랩 토템 (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r)이 파티를 묶고, 치유 워드 (|cff71d5ff|Hspell:4971|h[Healing Ward]|h|r)가 보스와 그의 팀을 치유합니다.",
"* 그는 소환하는 하수인 (|cff71d5ff|Hspell:11894|h[Minions]|h|r)이 먼저 쓰러집니다: 탱커가 보스를 막고, 그들을 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8443"] = { "하카르의 형상",
"* 뱀 신의 사제 의식으로 잠시, 독성 전투가 시작됩니다.",
"* 그의 \"Tongues의 저주\" (|cff71d5ff|Hspell:12889|h[Tongues의 저주]|h|r) (저주)는 그룹의 주문을 길게 만들고, \"Cause Insanity\" (|cff71d5ff|Hspell:12888|h[Cause Insanity]|h|r)가 플레이어에게 적용될 때 — DBM의 가장 큰 경고, 빠르게 처리하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10432"] = { "벡터스",
"* 네크로맨시 교실의 다른 대상: 평면형 캐스터 — 그의 하수인과 영혼 조각은 시야에 들어오면 즉시 제거됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10433"] = { "마드룩 블랙폴",
"* 네크로맨시 교실, 베크투스 옆: 천천히 공격하여 한 번에 둘을 잡지 않도록; 그의 뼈 군대는 빠르게 제거됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10435"] = { "마가시트 바르틸라스",
"* His Crowd Pummel (|cff71d5ff|Hspell:10887|h[Crowd Pummel]|h|r)은 근접 공격에 큰 피해를 입힙니다: 파티는 퍼져야 합니다.",
"* His Furious Anger (|cff71d5ff|Hspell:16791|h[Furious Anger]|h|r)은 클래식에서 매우 빠르게 스택됩니다: DPS는 망설이지 마세요.",
"* His Mighty Blow (|cff71d5ff|Hspell:14099|h[Mighty Blow]|h|r)는 힐을 사용하는 탱커에게 큰 피해를 입힙니다.",
"* 그는 전투가 시작되면 즉시 방으로 달려갑니다: 주변의 몬스터는 미리 처치해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10436"] = { "바론네스 아나스타리",
"* 플레이어를 지배합니다 (|cff71d5ff|Hspell:17244|h[Possess]|h|r): 지배된 대상은 파티와 싸우고 – 반으로 줄여서 자유롭게 합니다. 죽이지 마세요.",
"* 그녀의 침묵 (|cff71d5ff|Hspell:18327|h[Silence]|h|r)은 광역 공격입니다: 모두에게 피해가 가지 않도록 퍼뜨리세요.",
"* 그녀의 뱅스 해프 (|cff71d5ff|Hspell:16867|h[Banshee Curse]|h|r)는 치료를 차단하는 저주입니다: 즉시 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10437"] = { "네루벤칸",
"* 거대한 거미는 끊임없이  undead scarab을 소환합니다 (|cff71d5ff|Hspell:17235|h[Raise Undead Scarab]|h|r): AoE로 처리합니다.",
"* 그의 Pierce Armor (|cff71d5ff|Hspell:6016|h[Pierce Armor]|h|r)는 탱커에게 방어력을 없애버립니다: 방어 또는 두 번째 탱커가 필요합니다.",
"* 그의 Encasing Webs (|cff71d5ff|Hspell:4962|h[Encasing Webs]|h|r)는 플레이어를 잠시 묶습니다: 회복하고 계속 싸우세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10438"] = { "말레이, 창백한",
"* 그의 아이스 덤 (|cff71d5ff|Hspell:16869|h[Ice Tomb]|h|r)는 플레이어를 몇 초 동안 얼려: 그들을 치유하고 전투가 끝나지 않습니다.",
"* 그의 드레인 라이프 (|cff71d5ff|Hspell:17620|h[Drain Life]|h|r)는 플레이어를 흡수합니다 - 주의 깊은 치유.",
"* 그의 냉기 발사 공격은 캐스터를 느리게 하고 마나를 소모시킵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10439"] = { "람슈테인 더 고거",
"* 바론 방 앞의 몬: 탱커에게 지속적인 회복을 제공하는 강력한 공격; Knockout (|cff71d5ff|Hspell:17307|h[Knockout]|h|r) 스턴 효과를 전체 파티에 사용하며, Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r)는 근접 몬을 처치합니다.",
"* 그는 쓰러질 때, 유령 경비병이 광장을 덮쳐옵니다: 바론 전에 함께 모여 정리하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10440"] = { "바론 리벤데어",
"* 최종 바론: 그의 Raise Dead (|cff71d5ff|Hspell:17473|h[Raise Dead]|h|r)은 뼈를 소환하여 그를 향해 행진하고, 접촉 시 그를 치유하며, 약 12초 후에 Death Pact (|cff71d5ff|Hspell:17471|h[Death Pact]|h|r)을 사용합니다. — 거리를 유지하면서 미리 AoE 공격을 사용하세요.",
"* 그의 Shadow Bomb (|cff71d5ff|Hspell:17434|h[Shadow Bomb]|h|r)이 플레이어에게 맞을 경우, 그룹 전체에 영향을 미칩니다.",
"* 그의 unholy aura는 가까운 사람을 공격하고 탱커에게 Mortal Wounds를 부여합니다: 밴드 전체에 지속적인 치유 효과를 제공합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10502"] = { "레이디 일루시아 바로프",
"* MIND-control을 사용하여 플레이어를 stun, fear 또는 polymorph 하지만, 제어된 플레이어를 죽이지 않도록 합니다.",
"* 그녀의 Shadow Bolts는 항상 중단됩니다; 그녀의 area silence는 캐스터와 힐러를 탱커 뒤로 밀어냅니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10503"] = { "잔다이스 바로브",
"* 그녀는 자신을 동일한 환상으로 복제합니다: 파티는 실제 몸(또는 AoE로 복사본을 파괴)을 사냥하거나, 합쳐진 피해가 치유사를 먼저 녹여버리기 전에 복사본을 파괴합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10504"] = { "로드 알렉시 바로프",
"* 그는 두 명의 경비원과 함께 도착합니다: 먼저 처치하거나, 공격이 두 개로 나뉩니다.",
"* 그의 그림 드리블(|cff71d5ff|Hspell:17820|h[Veil of shadow]|h|r)은 75%의 치유 효과를 감소시키는 상태 이상입니다: 시야에 나타나면 즉시 제거하세요 (DBM이 대상에게 알림을 보냅니다)."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10505"] = { "조교 칠하트",
"* 그녀는 뼈에 묻힌 학생들 주변에서 강의를 하고 있습니다: AoE (그리고 뼈에 묻힌 상태를 해제)는 파도에 즉시 대응합니다.",
"* 그녀의 치유는, 항상 방해됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10506"] = { "키르토노스, 전령",
"* 그는 \"Blood of the Innocents\" (출입구 몬스터에서 얻음)을 제단에 놓아 소환됩니다.",
"* 거유 형태일 때, 그는 피해를 건 공격에 저주를 걸어: 저주, 시야에서 해제 가능.",
"* 그의 넉백은 사람들을 발코니에서 날려 버립니다: 탱커는 그를 그룹 뒤로, 그리고 가장자리에 멀리 위치하게 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10507"] = { "라베니안",
"* 암흑 유령 거인: 탱커에게 치명적인 공격 — 전투 내내 탱커에게 계속 치료를 제공해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10508"] = { "라스 프로스트위스퍼",
"* Frost lich: 그의 노바는 근접 공격을 얼립니다 — 공격을 맞고, 뒤로 물러나고, 폭발 사이에 공격하세요.",
"* 그의 Frost Armor은 공격자를 둔화시키고, 그의 Frost Throw는 탱커를 멀리 던지고 위협을 제거합니다: 탱커는 뒤로 물러나, 아무도 그를 따라잡지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10516"] = { "용서받지 못한 자",
"The gatehouse ghost: flat fight; his Frost Nova (|cff71d5ff|Hspell:14907|h[Frost Nova]|h|r) freezes the melee — step out and return to him."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10558"] = { "하스싱어 포레스턴",
"* Его заклинание \"Убаюшка\" ( |cff71d5ff|Hspell:16798|h[Enchanting Lullaby]|h|r) поражает всю группу: всегда прерывается.",
"* Его заклинание \"Унижающий крик\" ( |cff71d5ff|Hspell:16244|h[Demoralizing Shout]|h|r) ослабляет бойцов ближнего боя; остальные получают урон."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10808"] = { "잔혹한 티미",
"* 거대한 괴물: 그의 맹독 발톱 (|cff71d5ff|Hspell:17470|h[맹독 발톱]|h|r)은 앞쪽에서 공격하며 그를 치유합니다 — 오직 탱커가 앞으로 이동해야 합니다; 50%일 때 그는 분노를 일으킵니다 (|cff71d5ff|Hspell:8599|h[분노]|h|r) — 분노를 이겨낼 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10811"] = { "아치비스트 갈포드",
"* 불을 가르치는 사람: 그의 불 폭탄 (|cff71d5ff|Hspell:17366|h[Fire Nova]|h|r) 주변의 모든 것에 큰 피해를 입힙니다 — 근접 딜러는 공격을 피합니다.",
"* 그의 불길 바람 (|cff71d5ff|Hspell:17293|h[Burning Winds]|h|r) 한 플레이어에게 맞으면, 그룹 전체에 피해를 줍니다.",
"* 그의 파이로블래스트 (|cff71d5ff|Hspell:17274|h[Pyroblast]|h|r)는 항상 방해됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10812"] = { "발나자르",
"* 전투는 대 성직자 다트로한과 그의 크루세이더의 망치(|cff71d5ff|Hspell:17286|h[Crusader's Hammer]|h|r)로 시작합니다. 중간에 그는 발나잘로라는 악마로 변신합니다.",
"* 발나잘로: 그의 잠복(|cff71d5ff|Hspell:12098|h[Sleep]|h|r)은 마법 — 제거하세요; 그의 정신 폭탄(|cff71d5ff|Hspell:17287|h[Mind Blast]|h|r)은 한 명의 캐스터를 맞추고, 그의 정신 외침(|cff71d5ff|Hspell:13704|h[Psychic Scream]|h|r)은 그룹을 공포에 빠뜨립니다 — 퍼뜨려 공포가 전염되지 않도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10813"] = { "발나자르",
"* 전투는 대 성직자 다트로한과 그의 크루세이더의 망치(|cff71d5ff|Hspell:17286|h[Crusader's Hammer]|h|r)로 시작합니다. 중간에 그는 발나잘로라는 악마로 변신합니다.",
"* 발나잘로: 그의 잠복(|cff71d5ff|Hspell:12098|h[Sleep]|h|r)은 마법 — 제거하세요; 그의 정신 폭탄(|cff71d5ff|Hspell:17287|h[Mind Blast]|h|r)은 한 명의 캐스터를 맞추고, 그의 정신 외침(|cff71d5ff|Hspell:13704|h[Psychic Scream]|h|r)은 그룹을 공포에 빠뜨립니다 — 퍼뜨려 공포가 전염되지 않도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10901"] = { "로레킵퍼 폴켈트",
"* 그는 측면에 있는 하수인들을 먼저 정리하고, 그 다음 자신을 공격합니다.",
"* 그는 바닥에 산/독 웅덩이를 생성합니다: 웅덩이에 닿지 말고, 그의 독을 빠르게 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10997"] = { "캐논 마스터 윌리",
"* 파라펫에서: 넓은 범위에 있는 포탄 공격과 (|cff71d5ff|Hspell:17279|h[Summon Risen Rifleman]|h|r) 부활한 라이플맨을 파도처럼 사용: 시야에 들어오면 즉시 제거.",
"* 그의 Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 탱커를 멀리 던져: 그는 돌아다니며 다른 누구도 따라오지 못한다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11032"] = { "맹렬한 신앙",
"* His Ground Smash (|cff71d5ff|Hspell:12734|h[Ground Smash]|h|r)은 넓은 영역을 공격하여 2초 동안 둔화시킵니다 — 마법사는 거리를 유지하고 탱커에게 치유를 집중해야 합니다; 그의 Head Crack (|cff71d5ff|Hspell:16172|h[Head Crack]|h|r)은 탱커를 공격합니다.",
"* His Holy Light (|cff71d5ff|Hspell:15493|h[Holy Light]|h|r)는 항상 중단됩니다: 그는 자신을 치유합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11143"] = { "우체국장 말로운",
"* 선택 사항, 마켓 스퀘어에서 (우편을 확인 중): 그의 백핸드 (|cff71d5ff|Hspell:6253|h[Backhand]|h|r)는 둔화 효과를 발사하고, 그의 약점 저주 (|cff71d5ff|Hspell:12741|h[Curse of Weakness]|h|r)는 제거해야 하는 저주입니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11261"] = { "닥터 테올렌 크라스티노프",
"* 살인마: 지속적인 근접 공격; 분노 상태가 되면, 공격 속도와 데미지를 극대화하며 FRENZY 상태에 진입 — 방어 모드에서는 탱커가 우선적으로 치유, 가능한 한 오래 지속되는 동안."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11380"] = { "진'도 더 헥서",
"* 그의 환상 (|cff71d5ff|Hspell:24306|h[Delusion of Jin'do]|h|r)은 표시된 대상에게 거짓말을 합니다: 저주를 해제합니다.",
"* 그의 뇌 세척 (|cff71d5ff|Hspell:24261|h[Brain Wash]|h|r)은 플레이어를 굴복시킵니다: 저주, 즉시 제거.",
"* 그의 저주 (|cff71d5ff|Hspell:17172|h[Hex]|h|r)는 플레이어를 5초 동안 묶습니다: 마법, 해제.",
"* 그의 토템은 즉시 파괴됩니다: 힐링 워드 (|cff71d5ff|Hspell:24309|h[Healing Ward]|h|r)는 그와 뇌 세척 토템 (|cff71d5ff|Hspell:24262|h[Brain Wash Totem]|h|r)을 계속 치유합니다.",
"* 그의 추방 (|cff71d5ff|Hspell:24466|h[Banish]|h|r)은 몇 초 동안 플레이어를 전투에서 끄집어냅니다 — 기다립니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11382"] = { "혈군주 만도키르",
"* 플랫폼의 혈액 마법사: 2인전, 그리고 래프터 오가(14988)가 자신의 공격을 수행합니다.",
"* 그의 충전(확인되지 않은 ID)은 멀리 있는 플레이어(8-30야드)를 공격합니다: 멀리 있는 헌터는 Feign Death를 사용하거나 지정된 랭드 딜러가 공격을 받아내도록 합니다.",
"* 그의 와일드하운드는 근접 공격을 유발합니다: 공격 시작 시 즉시 반 경계를 벗어나세요.",
"* 그의 위협적인 시선(|cff71d5ff|Hspell:24314|h[Threatening Gaze]|h|r)은 플레이어를 6초 동안 마크합니다: 모든 것을 멈추세요(스킬, 데미지 및 이동) 또는 즉사!",
"* 매 3명의 플레이어 사망(체인드 스피릿)이 그의 크기와 피해를 증가시킵니다: 죽지 않는 것이 전술의 일부입니다.",
"* 오가(14988)가 쓰러질 때, 그의 1분 분노(|cff71d5ff|Hspell:24318|h[Frenzy]|h|r)가 시작됩니다 — 미리 결정하세요: 먼저 래프터를 죽이고, 무거운 치유를 통해 분노를 감당하거나, 탱커와 분리하여 마지막에 그를 죽이세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11622"] = { "들창엄니",
"* Ossuary giant이 해골을 둘러싼 채 등장: 탱커가 먼저 처리해야 합니다.",
"* 그는 CLEAVE 공격을 사용합니다: 앞에는 탱커만.",
"* 그는 탱커의 분노를 계속 감소시킵니다: DPS가 aggro를 훔치는 대신, 딜을 줄입니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12201"] = { "프린세스 테라드라스",
"* 최종 보스, 거대한: 그녀의 홀에서 정적인 전투.",
"* 끔찍한 시선 (|cff71d5ff|Hspell:21869|h[끔찍한 시선]|h|r) 주변에 공포를 퍼뜨립니다 (공포): 약간 분산되어, 샤먼의 진동 토템은 한 번에 제거합니다.",
"* 바위 (|cff71d5ff|Hspell:21832|h[바위]|h|r) 멀리 있는 곳으로 날아갑니다: 원거리 공격 위치를 잡고 뭉치지 마세요.",
"* 먼지 필드 (|cff71d5ff|Hspell:21909|h[먼지 필드]|h|r) 주변을 휘감습니다: 근접 공격자는 반경 밖으로 도망칩니다 (DBM 울리는 도망) 그리고 끝날 때 돌아옵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12203"] = { "지각",
"* 첫 번째 동굴의 큰 바위 괴물: 탱커에게 큰 물리 피해를 주는 단순한 전투.",
"* Knock Away (|cff71d5ff|Hspell:11130|h[Knock Away]|h|r)는 탱커를 뒤로 밀고 위협을 제거합니다: 탱커는 즉시 다시 잡고, 모두는 위치를 유지합니다.",
"* Landslide (|cff71d5ff|Hspell:21808|h[Landslide]|h|r)는 그를 중심으로 모든 사람을 끌어내립니다: 근접 딜러는 다시 일어났고 계속 공격합니다: 도망치는 것은 무의미합니다.",
"* Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r)는 그 옆 땅을 밟습니다: 그를 묶어두면 무해합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12225"] = { "저주받은 축하",
"* 포탈로 왕녀를 향해 지키는 케이퍼: 그의 분노(|cff71d5ff|Hspell:21807|h[Wrath]|h|r)는 매번 방해를 받으며, 완전히 맞을 경우 심각한 마법 피해를 입힙니다.",
"* 엉키는 뿌리 (|cff71d5ff|Hspell:12747|h[Entangling Roots]|h|r): 플레이어를 엉키는 뿌리로 묶습니다: 마법이므로, 해제하거나 피해로 파괴합니다.",
"* DBM, 부패한 힘 (|cff71d5ff|Hspell:21968|h[Corrupt Forces]|h|r): 피해를 주고 쓰러뜨립니다; 피하기 불가능."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12236"] = { "로드 비렛톤구",
"* Ghost satyr: 암흑 피해를 사용하는 캐스터, 그리고 시야를 가리는 (|cff71d5ff|Hspell:7964|h[Smoke Bomb]|h|r) 스모크 뱅으로 싸우는.",
"* 안개 속에서 탱커는 위협을 사용하여 그를 묶고, 딜러는 연막이 걷히기를 기다린다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12258"] = { "레이저래시",
"* 거친 길의 거대한 가시 식물: 단순한 전투, 탱커를 공격하고 거의 다른 것은 공격하지 않습니다.",
"* DBM에 의해 표시되지 않은 메커니즘 없음: 탱커, 치유, 처치"
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13282"] = { "녹션",
"* Emerald elemental of the crystal hall: 정적 전투는 그 둥지에서 발생합니다.",
"* Uppercut (|cff71d5ff|Hspell:10966|h[Uppercut]|h|r)은 탱을 높이 띄웁니다: 발과 뒤에서 치유하고 위치를 되돌립니다.",
"* 주기적인 미니언 소환 (|cff71d5ff|Hspell:21707|h[Noxxion's Minions]|h|r): 그들이 모일 때 즉시 AoE 공격하고, 압력을 증가시키기 전에."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13596"] = { "로트그립",
"* Crocolisk de la piscina antes del salón de la princesa: combate sencillo en el agua.",
"* Fatal Bite (|cff71d5ff|Hspell:16495|h[Fatal Bite]|h|r) ataca al tanque: cura en turnos con la emergencia reservada."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13601"] = { "티크어 긱락",
"* Goblin engineer of the deep cave: his Goblin Dragon Gun (|cff71d5ff|Hspell:21833|h[Goblin Dragon Gun]|h|r) 발사합니다.",
"* 탱커가 그를 그룹에서 멀리 향하게 묶고: 아무도 총을 향해 서 있지 않고 그는 넘어집니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14507"] = { "대사제 베녹시스",
"* 시작은 섀도우 프리스트로: 그의 리뉴 (|cff71d5ff|Hspell:23895|h[Renew]|h|r)는 그에게 적용되고, 효과가 사라집니다 (그렇지 않으면 무한히 치유 가능); 그의 홀리 파이어 (|cff71d5ff|Hspell:23860|h[Holy Fire]|h|r)는 플레이어에게 피해를 줍니다 - 마법, 해제 또는 타격.",
"* At ~55% he turns serpent (|cff71d5ff|Hspell:23849|h[Form of the Serpent]|h|r) and opens his final phase.",
"* 그런 다음 그는 독성 구름을 떨어뜨립니다 (|cff71d5ff|Hspell:23861|h[Toxic Cloud]|h|r), 10초 동안 바닥에: 공격을 피하십시오.",
"* 그의 뱀 독 (|cff71d5ff|Hspell:23865|h[Snake Venom]|h|r)은 플레이어를 마크합니다: 제거하거나 치유로 유지합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14509"] = { "대사제 베녹시스",
"* 전투는 세 명의 대상, 그의 두 성직자, Lor'Khan (11348, 치유사)와 Zath (11347, 도적)를 중심으로 진행됩니다.",
"* 세 명을 한 번에 모두 처치하세요: 세 명이 폭발적으로 떨어지면 죽은 척하고 Thekal은 약 15초 후에 표범 형태로 추가 몬스터와 함께 깨어납니다. — 처음부터 세 명에게 균등한 압력을 가해야 합니다.",
"* 그의 Greater Heal (|cff71d5ff|Hspell:24208|h[Greater Heal]|h|r)는 항상 (그와 Lor'Khan)에게 캔슬됩니다.",
"* Zath는 공격자를 Blind (|cff71d5ff|Hspell:21060|h[Blind]|h|r) 상태로 만들고 Gouged (|cff71d5ff|Hspell:12540|h[Gouge]|h|r) 상태로 만듭니다. — 그를 통제해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14510"] = { "대여사제 킬나라",
"* 그녀의 Enlarge (|cff71d5ff|Hspell:24109|h[Enlarge]|h|r) 능력은 그녀를 더 커고 흉악하게 만들며: 이 능력은 그녀에게서 제거될 수 있습니다 (특수 경고).",
"* 그녀의 Drain Life (|cff71d5ff|Hspell:24300|h[Drain Life]|h|r) 능력은 플레이어를 공격: 마법이며, 그녀는 그것을 먹습니다 — 빠르게 제거하세요.",
"* 그녀의 Corrosive Poison (|cff71d5ff|Hspell:24111|h[Corrosive Poison]|h|r) 능력은 플레이어에게 30초 동안 지속: 제거하세요.",
"* 그녀의 Poison Volley (|cff71d5ff|Hspell:24099|h[Poison Volley]|h|r) 능력은 모든 사람에게 피해를 줍니다: 항독제와 치유 준비를 하세요.",
"* 그녀는 거미를 소환합니다 (|cff71d5ff|Hspell:24083|h[Summon Spiders]|h|r): DPS가 그녀에게 집중하고, AoE로 거미를 처리하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14515"] = { "대여사제 킬나라",
"* 그녀의 마크 (|cff71d5ff|Hspell:24210|h[Mark of Arlokk]|h|r) 플레이어를 묶습니다 (당신이 맞다면 특별 경고).",
"* 그녀는 사라집니다 (|cff71d5ff|Hspell:24223|h[Vanish]|h|r) - 전투 시작 직후에 다시 플레이어에게 나타납니다; 근접 공격으로 다시 묶을 수 있습니다.",
"* 그녀의 그림자 단어: 고통 (|cff71d5ff|Hspell:24212|h[Shadow Word: Pain]|h|r)은 마법입니다: 해제하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14517"] = { "대여사제 킬나라",
"* 그녀의 Greater Heal (|cff71d5ff|Hspell:23954|h[Greater Heal]|h|r)는 항상 팅크됩니다 (~20초 재사용 시간).",
"* 그녀의 Sonic Burst (|cff71d5ff|Hspell:23918|h[Sonic Burst]|h|r)는 근접 딜러에게 적중: 마법, 디스펠 또는 이동합니다.",
"* 그녀의 Panic (|cff71d5ff|Hspell:22884|h[Panic]|h|r)는 근접 딜러를 4초 동안 흩어집니다: 그녀가 회전할 때 뒤로 이동합니다.",
"* 그녀의 Shadow Word: Pain (|cff71d5ff|Hspell:23952|h[Shadow Word: Pain]|h|r)는 지속적인 마법 피해: 디스펠합니다.",
"* 생명력이 절반이 되면 박쥐 떼를 소환합니다: AoE로 처리하고 DPS는 계속됩니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14834"] = { "하카르, 영혼을 파괴하는 자",
"* 그의 블러드 사이폰 (|cff71d5ff|Hspell:24324|h[Blood Siphon]|h|r)은 90초마다 전체 레이드를 소모하고 자신을 치유합니다 — 이것이 DPS 타이밍입니다: 레이드가 소모되기 전에 승리해야 합니다.",
"* 그의 인산티 (|cff71d5ff|Hspell:24327|h[Insanity]|h|r)은 약 21초마다 나타나 플레이어를 혼란시킵니다: 효과가 사라질 때까지 주의해야 합니다.",
"* 그의 꼬리된 피 (|cff71d5ff|Hspell:24328|h[Corrupted Blood]|h|r)은 플레이어 간에 뛰어다닙니다: 효과가 닿는 즉시 제거해야 합니다.",
"* 하드 모드 (밴드의 성직자들이 살아 있어야 함): Aspect 루프 — 제클릭의 (|cff71d5ff|Hspell:24687|h[Aspect of Jeklik]|h|r)는 캐스터를 무력화시키고, 베녹시스의 (24688)는 독을 흩뿌리고, 마르리의 (24686)는 소모를 일으키고, 아로크의 (24690)는 마크를 찍고, 테칼의 (|cff71d5ff|Hspell:24689|h[Aspect of Thekal]|h|r)는 그를 분노하게 만듭니다 — 그 효과는 반드시 제거해야 합니다 (분노 제거, 특별 경고). 성직자를 먼저 처치하면 모든 Aspect가 종료됩니다.",
"* SoD 재현판에서 Aspect는 항상 나타납니다 (약 20초마다, 무작위 순서).",
"* 약 9:45에 최종 분노를 풀어줍니다: 전투는 10분 이상 진행될 수 없습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14988"] = { "오그란",
"* Mandokir's raptor: pelea comienza, su jinete se desmonta y se separan — su tanque lo mantiene alejado del grupo.",
"* Su Mortal Wound (|cff71d5ff|Hspell:16856|h[Mortal Wound]|h|r) se aplica al tanque: rotación de dos tanques.",
"* Su muerte ENRAGEA a Mandokir durante un minuto — planifica la estrategia antes de comenzar (consulta la entrada de Bloodlord Mandokir)."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15082"] = { "그리렉",
"* 그는 구루바시 모조 매드니스 포션과 함께 코너의 브레이저에서 소환되며, 죽으면 그의 블러드 오브 그리렉을 ZG 클래스 트랭킷에 드랍합니다.",
"* 그의 아바타 (|cff71d5ff|Hspell:24646|h[Avatar]|h|r)는 그를 확대시키고, 탱커의 위협을 제거하며, 물리 피해를 발생시킵니다 — 그리고 그는 더 느리게 움직입니다: 핀된 것은 그의 반경 밖으로 움직일 때까지 움직이지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15083"] = { "하자라",
"* 코너의 불상은 2주 동안 활성화된 Gurubashi Mojo Madness 포션 (화학: 1 Blood of Heroes, 1 Massive Mojo, 6 Powerful Mojo, 1 Black Lotus)을 소환하는 트롤을 활성화합니다. 죽으면 ZG 클래스 장비의 재료를 드롭합니다 (여기서는 Hazza'rah의 Dream-Thread).",
"* 그의 Nightmare Illusions (|cff71d5ff|Hspell:24728|h[Nightmare Illusion]|h|r)는 느린 복사본이지만 작은 HP 풀과 5,000 이상 가치의 공격을 가합니다: 즉시 처치 (즉시 주문으로 충분). 전투의 최우선 목표.",
"* 그의 chained Mana Burn (|cff71d5ff|Hspell:24684|h[Mana Burn]|h|r)는 파티 전체에 영향을 미치는 연쇄입니다 - 그는 거의 마나를 사용하지 않으므로 (약 5,000), 뱀 꼬리 공격과 마나 드레인으로 뱀을 건조하게 유지하고, 스킬이 스스로 굶게 됩니다.",
"* 그의 Sleep (|cff71d5ff|Hspell:24664|h[Sleep]|h|r)는 넓은 범위, 6초: 파티를 분산하고, 중반에 아무도 잠들지 않도록 합니다.",
"* 그의 회전 동료 Gri'lek, Renataki, Wushoolay는 자체 항목을 가지고 있습니다: 불상은 2주 동안 활성화된 트롤만 소환합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15084"] = { "렌타키",
"* 그는 구루바시 모조 매드니스 포션이 있는 코너의 브레이저에서 소환되며, 죽으면 Renataki의 치아를 ZG 클래스 장비로 드롭합니다.",
"* 그는 사라지고 (|cff71d5ff|Hspell:24699|h[Vanish]|h|r) 그리고 치명적인 공격으로 대상에게 나타나며, AoE로 감지하고, PET도 추적합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15085"] = { "우슈울레이",
"* 그는 구루바시 모조 매드니스 포션과 함께 코너의 브레이저에서 소환되며, 죽으면 그의 와슈울레이 머리를 ZG 클래스 장비로 드롭합니다.",
"* 그의 체인 라이팅은 전방 콘 (확인되지 않은 ID): 모든 때 그는 뒤에 서서 공격합니다.",
"* 그는 바닥에 번개 구름 (|cff71d5ff|Hspell:24683|h[Lightning Cloud]|h|r)을 15초 동안 생성합니다: 즉시 벗어나거나, 파티 전체가 피해를 입습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15114"] = { "가즈랭카",
"* 선택 사항: 그는 올바른 미끼를 사용하여 습지 어종 구멍에서 폭발합니다.",
"* 그의 얼음 호흡 (|cff71d5ff|Hspell:16099|h[Frost Breath]|h|r)은 앞쪽으로 좁은 영역을 휩쓸고: 아무도 그 범위에 들어가지 않습니다.",
"* 그의 지오세르 (|cff71d5ff|Hspell:22421|h[Geyser]|h|r)은 물에 서 있는 사람들을 발사합니다: 가장자리에서 싸우세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["215728"] = { "고철 압축기 9-60",
"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): 공격을 공중으로 던지는 밟기: 오직 탱커만이 안에, 나머지는 범위 밖.",
"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) 탱커에게: 일반적인 탱킹과 회복 리듬."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["217280"] = { "그루비스",
"* 평범한 전투로 표시된 DBM에 의해 지정된 전투: 탱커, 데미지 딜러, 힐러, 그리고 그 옆에 나타나는 추가 대상 (그의  chomper)을 주의"
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218242"] = { "기계 동물원",
"* 네 개의 기계 부품을 함께 사용: 검은 용 (STX-04/BD), 양 (STX-13/LL), 다람쥐 (STX-25/NB) 및 닭 (STX-37/CN).",
"* 모두 Self-Repair 및 Frayed Wiring을 공유합니다: 각 부품을 빠르게 파괴하여 회복할 수 없게 하고, 수동적인 Wiring 손상을 주의하십시오.",
"* 양은 이진 코드로 울고, 다람쥐는 위젯을 발사하고, 과열되며, 견고한 보호막 뒤에 방어막을 생성하고, 닭은 꼬리 치기를 반복합니다: 지속적인 피해, 그런 다음 다음 하나."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218243"] = { "기계 동물원",
"* 네 개의 기계 부품을 함께 사용: 검은 용 (STX-04/BD), 양 (STX-13/LL), 다람쥐 (STX-25/NB) 및 닭 (STX-37/CN).",
"* 모두 Self-Repair 및 Frayed Wiring을 공유합니다: 각 부품을 빠르게 파괴하여 회복할 수 없게 하고, 수동적인 Wiring 손상을 주의하십시오.",
"* 양은 이진 코드로 울고, 다람쥐는 위젯을 발사하고, 과열되며, 견고한 보호막 뒤에 방어막을 생성하고, 닭은 꼬리 치기를 반복합니다: 지속적인 피해, 그런 다음 다음 하나."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218244"] = { "기계 동물원",
"* 네 개의 기계 부품을 함께 사용: 검은 용 (STX-04/BD), 양 (STX-13/LL), 다람쥐 (STX-25/NB) 및 닭 (STX-37/CN).",
"* 모두 Self-Repair 및 Frayed Wiring을 공유합니다: 각 부품을 빠르게 파괴하여 회복할 수 없게 하고, 수동적인 Wiring 손상을 주의하십시오.",
"* 양은 이진 코드로 울고, 다람쥐는 위젯을 발사하고, 과열되며, 견고한 보호막 뒤에 방어막을 생성하고, 닭은 꼬리 치기를 반복합니다: 지속적인 피해, 그런 다음 다음 하나."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218245"] = { "기계 동물원",
"* 네 개의 기계 부품을 함께 사용: 검은 용 (STX-04/BD), 양 (STX-13/LL), 다람쥐 (STX-25/NB) 및 닭 (STX-37/CN).",
"* 모두 Self-Repair 및 Frayed Wiring을 공유합니다: 각 부품을 빠르게 파괴하여 회복할 수 없게 하고, 수동적인 Wiring 손상을 주의하십시오.",
"* 양은 이진 코드로 울고, 다람쥐는 위젯을 발사하고, 과열되며, 견고한 보호막 뒤에 방어막을 생성하고, 닭은 꼬리 치기를 반복합니다: 지속적인 피해, 그런 다음 다음 하나."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218537"] = { "기계박사 텔마플러그",
"* 그는 무작위 플레이어에게 살아있는 폭탄을 부착합니다 (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): 표시된 사람은 폭발할 때까지 그룹에서 도망갑니다.",
"* Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 탱커를 날려버립니다: 그가 착지할 위치를 염두에 두세요.",
"* 카타 이후 그는 중단 가능한 스팀 블래스트를 사용하고 탱커를 공격합니다: 블래스트를 적절한 시점에 끊으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218538"] = { "기계박사 텔마플러그",
"* 그는 무작위 플레이어에게 살아있는 폭탄을 부착합니다 (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): 표시된 사람은 폭발할 때까지 그룹에서 도망갑니다.",
"* Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 탱커를 날려버립니다: 그가 착지할 위치를 염두에 두세요.",
"* 카타 이후 그는 중단 가능한 스팀 블래스트를 사용하고 탱커를 공격합니다: 블래스트를 적절한 시점에 끊으세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218571"] = { "에라니쿠스의 그림자",
"* 리메이크의 최종 보스: 에메랄드 드림의 녹색 드레이크, 핏 안",
"* Corrosive Breath (|cff71d5ff|Hspell:437353|h[Corrosive Breath]|h|r) 처벌하는 기술 — 사용 후 턴을 변경 — 그리고 Deep Slumber (|cff71d5ff|Hspell:437301|h[Deep Slumber]|h|r)은 리듬에 맞춰 방 전체를 공격합니다.",
"* 그의 깨어난 악몽 (|cff71d5ff|Hspell:437398|h[Waking Nightmare]|h|r)은 약 66초마다 치명적: 딥 슬럼버 위치를 향해 달리고, 공격받은 지면에서 벗어나세요.",
"* 그의 느린 독 (|cff71d5ff|Hspell:437390|h[Lethargic Poison]|h|r)은 독이며, 제거해야 합니다; 70%와 40%에서, 그의 꿈이 생성되고 (그들이 표시됨), 그들의 채널링된 느린 독 (|cff71d5ff|Hspell:437425|h[Lethargic Poison]|h|r)은 항상 중단됩니다, 이는 \"Bellowing Roar\" (|cff71d5ff|Hspell:445498|h[Bellowing Roar]|h|r)과 동일합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218624"] = { "아탈라라리온",
"* 첫 번째 다리의 수호자 (리메이크): 평평하고 단단한 거대 생물.",
"* 그의 Might의 기둥 (|cff71d5ff|Hspell:437503|h[Might의 기둥]|h|r)는 고정된 리듬 (~12초)으로 공격하며, Demolishing Smash (|cff71d5ff|Hspell:437597|h[Demolishing Smash]|h|r)는 약 ~27초마다 그룹의 절반을 공격: 기둥 뒤로 달아나세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218718"] = { "자말란과 오고만",
"* 리메이크의 홀 짝: 두 트롤이 서로를 먹고, 생존자는 강화됩니다.",
"* 1단계: Smite (437805)는 항상 중단 가능; Holy Nova (437817)는 범위 내에서 피하고, Holy Fire (437809) (마법)를 타이밍에 맞춰 사용하고, Mortal Lash (437847)는 탱커에게, Agonizing Weakness (437868)는 그룹에게 사용합니다.",
"* 2단계 (먹힌 자가 쓰러짐): Jammal'an은 Psychic Screams (437928) (공포), Shadow Sermon: Pain (437927) (마법), Power Word: Shield (437930) (해제 가능) 및 Mass Penance (437921)를 사용하고, Ogom은 Hammers of Justice (437915) (정지), Consecration (437884) — 땅에서 떨어지지 않도록 — 및 Divine Storm (437920) (1.5초 소모)를 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218721"] = { "잠말란과 오고음",
"* 리메이크의 홀 짝: 두 트롤이 서로를 먹고, 생존자는 강화됩니다.",
"* 1단계: Smite (437805)는 항상 중단 가능; Holy Nova (437817)는 범위 내에서 피하고, Holy Fire (437809) (마법)를 타이밍에 맞춰 사용하고, Mortal Lash (437847)는 탱커에게, Agonizing Weakness (437868)는 그룹에게 사용합니다.",
"* 2단계 (먹힌 자가 쓰러짐): Jammal'an은 Psychic Screams (437928) (공포), Shadow Sermon: Pain (437927) (마법), Power Word: Shield (437930) (해제 가능) 및 Mass Penance (437921)를 사용하고, Ogom은 Hammers of Justice (437915) (정지), Consecration (437884) — 땅에서 떨어지지 않도록 — 및 Divine Storm (437920) (1.5초 소모)를 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218819"] = { "썩은 록슬라이ம்",
"* 운하의 슬라임: 그의 Devour (|cff71d5ff|Hspell:448824|h[Devour]|h|r)는 플레이어를 OR 방의 장치(탬, 슬래브, 마스크 및 캔들)를 삼키고 — 치유는 삼킨 것을 유지합니다.",
"* 그의 슬라임 타임 (|cff71d5ff|Hspell:446311|h[Slime Time]|h|r): 한 번 제거되면 그는 느려지게 됩니다 — 그 때 DPS가 강하게 압박합니다.",
"* 덩크 (|cff71d5ff|Hspell:438142|h[Gunk]|h|r)와 Nauseous Gas (|cff71d5ff|Hspell:438130|h[Nauseous Gas]|h|r)를 리듬에 맞춰 사용합니다; 처벌된 땅을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218868"] = { "아타라이 방어대",
"* 재해석의 정원 트롤 경비병: 여섯 명의 보스가 한 줄로, 한 명씩 격파하고, 각 죽음은 동일한 능력치(링크 없음)를 가진 언데드 동반자를 소환합니다 — 측면의 룬 문은 무시합니다.",
"* 즈울'로르 221640: 그의 차지(446369)는 부패한 슬램(446372) 전에 발생합니다 — 차지 후에 피하기 — 그리고 그는 프레일티(446364)를 사용합니다.",
"* 미잔 218868: 그의 thorn(438294)(마법)은 피해를 공격자에게 반사합니다 — 해제하고 공격자는 멈춥니다 — 또한 그의 아탈'라이 뱀 토템(445912)을 사용합니다.",
"* 졸로 221639: 그의 전체 스펠 휠은 중단됩니다 — 체인 라이팅(446338), 리뉴(438341)와 힐링 웨이브(438339) — 그리고 그의 아탈'라이 뼈 토템(446339)이 사용됩니다; 불안정한 케스크(445940)는 탱커를 stun할 수 있습니다.",
"* 가셰르 221637: 스피닝 액스(445289)는 공격자를 공격하고 그의 페르보르(445284)는 싸움이 길어지면 스택됩니다 — 빠르게 죽입니다.",
"* 로로 221638: 타운크에 데모랄라이징 쇼트(23511)를 리듬에 맞춰 사용하고 쉴드 슬램(446354)을 타운크에 사용합니다.",
"* 후쿠 223586: 섀도 볼트(446361)는 항상 중단되고 그의 가디언(446360)이 전투에 들어옵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218970"] = { "기계박사 텔마플러그",
"* 그는 무작위 플레이어에게 살아있는 폭탄을 부착합니다 (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): 표시된 사람은 폭발할 때까지 그룹에서 도망갑니다.",
"* Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 탱커를 날려버립니다: 그가 착지할 위치를 염두에 두세요.",
"* 카타 이후 그는 중단 가능한 스팀 블래스트를 사용하고 탱커를 공격합니다: 블래스트를 적절한 시점에 끊으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218972"] = { "기계박사 텔마플러그",
"* 그는 무작위 플레이어에게 살아있는 폭탄을 부착합니다 (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): 표시된 사람은 폭발할 때까지 그룹에서 도망갑니다.",
"* Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 탱커를 날려버립니다: 그가 착지할 위치를 염두에 두세요.",
"* 카타 이후 그는 중단 가능한 스팀 블래스트를 사용하고 탱커를 공격합니다: 블래스트를 적절한 시점에 끊으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218974"] = { "기계박사 텔마플러그",
"* 그는 무작위 플레이어에게 살아있는 폭탄을 부착합니다 (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): 표시된 사람은 폭발할 때까지 그룹에서 도망갑니다.",
"* Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 탱커를 날려버립니다: 그가 착지할 위치를 염두에 두세요.",
"* 카타 이후 그는 중단 가능한 스팀 블래스트를 사용하고 탱커를 공격합니다: 블래스트를 적절한 시점에 끊으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["220007"] = { "방사성 폐기물",
"* 독 공격 (|cff71d5ff|Hspell:21687|h[Toxic Volley]|h|r): 가까운 대상에게 주기적인 독 피해; 독 제거 효과는 지속됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["220072"] = { "기계화 문지기 6000",
"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r)과 Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r)은 중단 가능: 뿌리에서 끊으세요.",
"* Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r)은 탱커에게 피해를 주고: 회복은 필요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["220833"] = { "드림스카이프와 위버",
"* 리메이크의 녹색 드래곤 듀오: 둘은 같은 방을 공유합니다.",
"* 산성 호흡 (|cff71d5ff|Hspell:442622|h[Acid Breath]|h|r)은 탱커에게 쌓입니다 — 각 공격 후에는 턴을 사용합니다 — 그리고 날개 깃털 (|cff71d5ff|Hspell:442620|h[Wing Flap]|h|r)이 함께 날아갑니다.",
"* 날개 폭격 (|cff71d5ff|Hspell:443766|h[Wing Buffet]|h|r)은 사람들을 공중으로 던집니다: 꽉 잡고 가장자리에 접근하지 마세요.",
"* 2단계: 드림사이프는 에메랄드 방패 (|cff71d5ff|Hspell:443302|h[Emerald Ward]|h|r)로 자신을 보호합니다 — 공격하여 3단계가 더 강력해집니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["220864"] = { "드림스카이프와 위버",
"* 리메이크의 녹색 드래곤 듀오: 둘은 같은 방을 공유합니다.",
"* 산성 호흡 (|cff71d5ff|Hspell:442622|h[Acid Breath]|h|r)은 탱커에게 쌓입니다 — 각 공격 후에는 턴을 사용합니다 — 그리고 날개 깃털 (|cff71d5ff|Hspell:442620|h[Wing Flap]|h|r)이 함께 날아갑니다.",
"* 날개 폭격 (|cff71d5ff|Hspell:443766|h[Wing Buffet]|h|r)은 사람들을 공중으로 던집니다: 꽉 잡고 가장자리에 접근하지 마세요.",
"* 2단계: 드림사이프는 에메랄드 방패 (|cff71d5ff|Hspell:443302|h[Emerald Ward]|h|r)로 자신을 보호합니다 — 공격하여 3단계가 더 강력해집니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221394"] = { "하카르의 형상",
"* 리메이크의 뱀 신, 두 단계로: 의식을 먼저, 그런 다음 짐승.",
"* 정신 단계: Spirit Chains (|cff71d5ff|Hspell:443975|h[Spirit Chains]|h|r)는 플레이어를 끌어당겨 — 묶인 사람은 해제됨 — 그리고 Frightsome Howl (|cff71d5ff|Hspell:443990|h[Frightsome Howl]|h|r)는 항상 중단됨, Hakkari의 피 보관자는 의식과 함께 떨어짐.",
"* 짐승 단계: Blood Nova (|cff71d5ff|Hspell:444050|h[Blood Nova]|h|r)는 ~8초마다, Corrupted Blood (|cff71d5ff|Hspell:444253|h[Corrupted Blood]|h|r)는 플레이어 간에 점프함 — 표시된 사람은 해제됨 — Insanity (|cff71d5ff|Hspell:444039|h[Insanity]|h|r)는 표시된 플레이어에게, Curse of Tongues (|cff71d5ff|Hspell:444046|h[Curse of Tongues]|h|r) (저주)와 Drain Blood (|cff71d5ff|Hspell:444132|h[Drain Blood]|h|r): Corrupted Blood을 든 사람이 탱커 앞에 서야 함."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221637"] = { "아타라이 방어대",
"* 재해석의 정원 트롤 경비병: 여섯 명의 보스가 한 줄로, 한 명씩 격파하고, 각 죽음은 동일한 능력치(링크 없음)를 가진 언데드 동반자를 소환합니다 — 측면의 룬 문은 무시합니다.",
"* 즈울'로르 221640: 그의 차지(446369)는 부패한 슬램(446372) 전에 발생합니다 — 차지 후에 피하기 — 그리고 그는 프레일티(446364)를 사용합니다.",
"* 미잔 218868: 그의 thorn(438294)(마법)은 피해를 공격자에게 반사합니다 — 해제하고 공격자는 멈춥니다 — 또한 그의 아탈'라이 뱀 토템(445912)을 사용합니다.",
"* 졸로 221639: 그의 전체 스펠 휠은 중단됩니다 — 체인 라이팅(446338), 리뉴(438341)와 힐링 웨이브(438339) — 그리고 그의 아탈'라이 뼈 토템(446339)이 사용됩니다; 불안정한 케스크(445940)는 탱커를 stun할 수 있습니다.",
"* 가셰르 221637: 스피닝 액스(445289)는 공격자를 공격하고 그의 페르보르(445284)는 싸움이 길어지면 스택됩니다 — 빠르게 죽입니다.",
"* 로로 221638: 타운크에 데모랄라이징 쇼트(23511)를 리듬에 맞춰 사용하고 쉴드 슬램(446354)을 타운크에 사용합니다.",
"* 후쿠 223586: 섀도 볼트(446361)는 항상 중단되고 그의 가디언(446360)이 전투에 들어옵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221638"] = { "아타라이 방어대",
"* 재해석의 정원 트롤 경비병: 여섯 명의 보스가 한 줄로, 한 명씩 격파하고, 각 죽음은 동일한 능력치(링크 없음)를 가진 언데드 동반자를 소환합니다 — 측면의 룬 문은 무시합니다.",
"* 즈울'로르 221640: 그의 차지(446369)는 부패한 슬램(446372) 전에 발생합니다 — 차지 후에 피하기 — 그리고 그는 프레일티(446364)를 사용합니다.",
"* 미잔 218868: 그의 thorn(438294)(마법)은 피해를 공격자에게 반사합니다 — 해제하고 공격자는 멈춥니다 — 또한 그의 아탈'라이 뱀 토템(445912)을 사용합니다.",
"* 졸로 221639: 그의 전체 스펠 휠은 중단됩니다 — 체인 라이팅(446338), 리뉴(438341)와 힐링 웨이브(438339) — 그리고 그의 아탈'라이 뼈 토템(446339)이 사용됩니다; 불안정한 케스크(445940)는 탱커를 stun할 수 있습니다.",
"* 가셰르 221637: 스피닝 액스(445289)는 공격자를 공격하고 그의 페르보르(445284)는 싸움이 길어지면 스택됩니다 — 빠르게 죽입니다.",
"* 로로 221638: 타운크에 데모랄라이징 쇼트(23511)를 리듬에 맞춰 사용하고 쉴드 슬램(446354)을 타운크에 사용합니다.",
"* 후쿠 223586: 섀도 볼트(446361)는 항상 중단되고 그의 가디언(446360)이 전투에 들어옵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221639"] = { "아타라이 방어대",
"* 재해석의 정원 트롤 경비병: 여섯 명의 보스가 한 줄로, 한 명씩 격파하고, 각 죽음은 동일한 능력치(링크 없음)를 가진 언데드 동반자를 소환합니다 — 측면의 룬 문은 무시합니다.",
"* 즈울'로르 221640: 그의 차지(446369)는 부패한 슬램(446372) 전에 발생합니다 — 차지 후에 피하기 — 그리고 그는 프레일티(446364)를 사용합니다.",
"* 미잔 218868: 그의 thorn(438294)(마법)은 피해를 공격자에게 반사합니다 — 해제하고 공격자는 멈춥니다 — 또한 그의 아탈'라이 뱀 토템(445912)을 사용합니다.",
"* 졸로 221639: 그의 전체 스펠 휠은 중단됩니다 — 체인 라이팅(446338), 리뉴(438341)와 힐링 웨이브(438339) — 그리고 그의 아탈'라이 뼈 토템(446339)이 사용됩니다; 불안정한 케스크(445940)는 탱커를 stun할 수 있습니다.",
"* 가셰르 221637: 스피닝 액스(445289)는 공격자를 공격하고 그의 페르보르(445284)는 싸움이 길어지면 스택됩니다 — 빠르게 죽입니다.",
"* 로로 221638: 타운크에 데모랄라이징 쇼트(23511)를 리듬에 맞춰 사용하고 쉴드 슬램(446354)을 타운크에 사용합니다.",
"* 후쿠 223586: 섀도 볼트(446361)는 항상 중단되고 그의 가디언(446360)이 전투에 들어옵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221640"] = { "아타라이 방어대",
"* 재해석의 정원 트롤 경비병: 여섯 명의 보스가 한 줄로, 한 명씩 격파하고, 각 죽음은 동일한 능력치(링크 없음)를 가진 언데드 동반자를 소환합니다 — 측면의 룬 문은 무시합니다.",
"* 즈울'로르 221640: 그의 차지(446369)는 부패한 슬램(446372) 전에 발생합니다 — 차지 후에 피하기 — 그리고 그는 프레일티(446364)를 사용합니다.",
"* 미잔 218868: 그의 thorn(438294)(마법)은 피해를 공격자에게 반사합니다 — 해제하고 공격자는 멈춥니다 — 또한 그의 아탈'라이 뱀 토템(445912)을 사용합니다.",
"* 졸로 221639: 그의 전체 스펠 휠은 중단됩니다 — 체인 라이팅(446338), 리뉴(438341)와 힐링 웨이브(438339) — 그리고 그의 아탈'라이 뼈 토템(446339)이 사용됩니다; 불안정한 케스크(445940)는 탱커를 stun할 수 있습니다.",
"* 가셰르 221637: 스피닝 액스(445289)는 공격자를 공격하고 그의 페르보르(445284)는 싸움이 길어지면 스택됩니다 — 빠르게 죽입니다.",
"* 로로 221638: 타운크에 데모랄라이징 쇼트(23511)를 리듬에 맞춰 사용하고 쉴드 슬램(446354)을 타운크에 사용합니다.",
"* 후쿠 223586: 섀도 볼트(446361)는 항상 중단되고 그의 가디언(446360)이 전투에 들어옵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221942"] = { "모프라즈와 하자스",
"* SoD 사원에서 가장 긴 전투인 리메이크의 피 드레이크 듀오",
"* 오염된 숨 (|cff71d5ff|Hspell:446487|h[Corrupted Breath]|h|r)은 탱커에게 쌓이고, 움직이는 불꽃 (|cff71d5ff|Hspell:446661|h[Animate Flame]|h|r)이 바닥에서 솟아오릅니다.",
"* 전투의 핵심은 [Lucid Dreaming]에 달려 있습니다: 첫 번째 ~20초 동안의 쿨다운 (|cff71d5ff|Hspell:445235|h[Lucid Dreaming]|h|r)은 파티를 에메랄드 드림으로 보냅니다 - 불은 주문 중반에 꺼집니다; 두 번째 쿨다운 (4초)은 이미 불이 붙은 상태로 도착하며, 그 후 [Eternal Slumber] (|cff71d5ff|Hspell:446144|h[Eternal Slumber]|h|r) 30초 동안의 주문이 모든 사람을 죽입니다, 단 그들이 포털을 통해 시간을 충분히 확보하여 탈출할 수 있다면."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221943"] = { "모프라즈와 하자스",
"* SoD 사원에서 가장 긴 전투인 리메이크의 피 드레이크 듀오",
"* 오염된 숨 (|cff71d5ff|Hspell:446487|h[Corrupted Breath]|h|r)은 탱커에게 쌓이고, 움직이는 불꽃 (|cff71d5ff|Hspell:446661|h[Animate Flame]|h|r)이 바닥에서 솟아오릅니다.",
"* 전투의 핵심은 [Lucid Dreaming]에 달려 있습니다: 첫 번째 ~20초 동안의 쿨다운 (|cff71d5ff|Hspell:445235|h[Lucid Dreaming]|h|r)은 파티를 에메랄드 드림으로 보냅니다 - 불은 주문 중반에 꺼집니다; 두 번째 쿨다운 (4초)은 이미 불이 붙은 상태로 도착하며, 그 후 [Eternal Slumber] (|cff71d5ff|Hspell:446144|h[Eternal Slumber]|h|r) 30초 동안의 주문이 모든 사람을 죽입니다, 단 그들이 포털을 통해 시간을 충분히 확보하여 탈출할 수 있다면."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["223586"] = { "아타라이 방어대",
"* 재해석의 정원 트롤 경비병: 여섯 명의 보스가 한 줄로, 한 명씩 격파하고, 각 죽음은 동일한 능력치(링크 없음)를 가진 언데드 동반자를 소환합니다 — 측면의 룬 문은 무시합니다.",
"* 즈울'로르 221640: 그의 차지(446369)는 부패한 슬램(446372) 전에 발생합니다 — 차지 후에 피하기 — 그리고 그는 프레일티(446364)를 사용합니다.",
"* 미잔 218868: 그의 thorn(438294)(마법)은 피해를 공격자에게 반사합니다 — 해제하고 공격자는 멈춥니다 — 또한 그의 아탈'라이 뱀 토템(445912)을 사용합니다.",
"* 졸로 221639: 그의 전체 스펠 휠은 중단됩니다 — 체인 라이팅(446338), 리뉴(438341)와 힐링 웨이브(438339) — 그리고 그의 아탈'라이 뼈 토템(446339)이 사용됩니다; 불안정한 케스크(445940)는 탱커를 stun할 수 있습니다.",
"* 가셰르 221637: 스피닝 액스(445289)는 공격자를 공격하고 그의 페르보르(445284)는 싸움이 길어지면 스택됩니다 — 빠르게 죽입니다.",
"* 로로 221638: 타운크에 데모랄라이징 쇼트(23511)를 리듬에 맞춰 사용하고 쉴드 슬램(446354)을 타운크에 사용합니다.",
"* 후쿠 223586: 섀도 볼트(446361)는 항상 중단되고 그의 가디언(446360)이 전투에 들어옵니다."
};

-- Wailing Caverns : Zona 43 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3653"] = { "크레쉬",
"* 단순한 물리적 전투: 방해하거나 제거하지 마십시오. 견고한 탱킹과 데미지를 극대화하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3654"] = { "걸신들린 무타누스",
"* |cff71d5ff|Hspell:7967|h[나라렉스의 악몽]|h|r는 전투의 핵심: 주문이 시작될 때마다 중단하세요.",
"* 그의 |cff71d5ff|Hspell:7399|h[공포]|h|r (공포)는 마법: 치유사는 해당 주문을 해제하고, 그의 |cff71d5ff|Hspell:8150|h[번개 충격]|h|r 공격은 넓은 영역에 영향을 미치므로, 치유사는 준비하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3669"] = { "군주 코브란",
"* Anacondra와 동일: |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r와 |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r에 공격하고,",
"* 그의 |cff71d5ff|Hspell:17330|h[Poison]|h|r는 독 제거 효과로 즉시 발동됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3670"] = { "군주 피타스",
"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3671"] = { "여군주 아나콘드라",
"* 그녀는 드루이드 형태로 변신: 그녀의 |cff71d5ff|Hspell:8040|h[드루이드의 잠]|h|r (플레이어를 잠재우는) 또는 |cff71d5ff|Hspell:23381|h[치유의 손길]|h|r을 방해하여 싸움이 길어지게 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3673"] = { "군주 서펜티스",
"* Same as Anacondra: kick the |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r and the |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3674"] = { "스컴",
"* 저는 |cff71d5ff|Hspell:6254|h[체인 볼트]|h|r를 사용하여 대상 간에 번갈아 공격하며, 그룹을 뭉치지 않고 빠르게 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["5775"] = { "영생의 베르단",
"* 중단 그의 |cff71d5ff|Hspell:8142|h[Vines]|h|r: 이것이 전투의 유일한 부분이며, 나머지는 근접 공격입니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5912"] = { "변이 요정 용",
"* 선택 사항, 부분적으로 숨겨진 보스: 맵을 완료하기 위해 죽일 필요가 없습니다.",
"* 그의 |cff71d5ff|Hspell:8040|h[드루이드의 잠]|h|r는 플레이어를 잠재우고 (해제 가능한 마법): 아무도 주문을 취소하지 않으면, 치유사가 취소합니다."
};

-- Razorfen Kraul : Zona 47 (classic) --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4420"] = { "오버로드 람투스크",
"* 저는 회전하는 폭격 (|cff71d5ff|Hspell:8259|h[Whirling Barrage]|h|r)을 사용합니다: 중단하거나, 폭격이 발사되면 회전이 떨어지는 동안 회피하십시오.",
"* 격렬한 전투: 그는 강하게 공격하고 두 명의 수호자가 측면에서 공격합니다; 탱커는 그들을 치우고, 힐러는 압박합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4421"] = { "서슬깃 차를가",
"* [체인 볼트] (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r)는 방해 가능: 킥은 전체 파티를 보호합니다.",
"* 마법 효과는 즉시 제거됩니다 (|cff71d5ff|Hspell:8361|h[순수]|h|r): 물리 피해가 효과적인 방법입니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4422"] = { "아가텔로스, 분노의 화신",
"* He는 (|cff71d5ff|Hspell:8269|h[Enrage]|h|r)와 그의 처벌 스파이크를 사용합니다: 탱커는 집중적인 치유를 통해 올라가는 것을 이용합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4424"] = { "애게  thorncurse",
"* 그는 때때로 돼지 (|cff71d5ff|Hspell:8286|h[Summon Boar]|h|r)를 소환합니다: 나타나면 즉시 처치하세요.",
"* 그의 치유 파동 (|cff71d5ff|Hspell:14900|h[Healing Wave]|h|r)은 중단 가능합니다: 무자비하게 끊거나, 탱커가 지치지 않도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4425"] = { "사냥꾼 본터스크",
"* 평범한 격투가 (DBM에 의해 표시됨): 근접 공격만 사용: 탱킹, 데미지, 회복."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4428"] = { "죽음의 언동자 자르바",
"* 정신을 지배하여 플레이어를 제압합니다 (|cff71d5ff|Hspell:14515|h[Dominate]|h|r): 일반적인 인터럽트는 효과가 없습니다; 스턴은 효과가 있지만, 스턴이 풀릴 때 즉시 재사용됩니다: 지배된 플레이어를 계속 공격하여 패배시킵니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4842"] = { "얼드콜러 할마르",
"* 땅을 울리는 존재들 (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r)을 소환하면, 분산시켜 빠르게 처치하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6168"] = { "루구그",
"* 그는 땅을 흔드는 존재들(|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r)을 부릅니다. 탱커는 그들을 잡고 즉시 죽게 만듭니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74462"] = { "장군 램터스크",
"* 현대적인 재해석, 최고의 램투스크: DBM에 의해 표시되지 않는 단순한 격투 스타일, 탱킹, 딜링 및 힐링에 적합."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74948"] = { "루구그",
"* 그는 땅을 흔드는 존재들(|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r)을 부릅니다. 탱커는 그들을 잡고 즉시 죽게 만듭니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75001"] = { "사냥꾼 본터스크",
"* 현대 크라울의 또 다른 일반적인 덩어리형 탱커: 순서대로 탱킹, 데미지, 힐."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75247"] = { "눈먼사냥꾼",
"* 맹인 사냥꾼의 현대 재해석: 또 다른 단순한 격투가, DBM은 그에게 아무것도 표시하지 않습니다."
};

-- Blackfathom Deeps : Zona 48 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4829"] = { "아쿠마이",
"* 간단한 독 공격: 그의 |cff71d5ff|Hspell:3815|h[독 구름]|h|r는 그 자리에 머물러; 탱커는 그를 파티에서 멀리하고, 아무도 그 안에 들어가지 않도록 합니다.",
"* As he dies he enters |cff71d5ff|Hspell:3490|h[Frenzied Rage]|h|r and hits faster: healers pick up the pace."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4830"] = { "올드 세라키스",
"* 간단한 근접 전투, 얕은 물웅덩이에서: 탱커가 그를 잡고, 근접 공격자는 독에 주의하고, 나머지는 데미지를 분산합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4831"] = { "레이디 사레베스",
"* 그녀는 숙련된 경비병에 의해 보호를 받습니다: 몬스터(폴리모프, 함정)를 제어하고 그녀에게 집중 공격을 합니다.",
"* 그녀의 |cff71d5ff|Hspell:407546|h[얼음 화살]|h|r는 맞은 사람을 얼립니다(치유사는 제거로 해제), 그녀가 |cff71d5ff|Hspell:407653|h[분기된 번개]|h|r를 특정 플레이어에게 조준하면, 해당 플레이어가 그룹에서 벗어납니다.",
"* 그녀가 플레이어에게 |cff71d5ff|Hspell:407791|h[아쿠마이의 분노]|h|r를 걸면, 치유사가 보이면 즉시 제거합니다; 그녀의 땅에 생긴 물웅덩이는 피해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4832"] = { "황혼의 군주 바시엘",
"* In the Era client this is a simple fight: dispel the |cff71d5ff|Hspell:8399|h[Sleep]|h|r he casts on a random player and keep tanking and damaging."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4887"] = { "가무라",
"* 간단한 탱킹 및 데미지 전투: 그의 |cff71d5ff|Hspell:5568|h[Trample]|h|r는 그에게 가까운 모든 사람을 흔듭니다; 근접 딜러는 가까이 있고, 나머지는 흩어져야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6243"] = { "게리하스트",
"* 간단한 전투: 주요 문제는 |cff71d5ff|Hspell:6533|h[네트워크]|h|r로 인해 몇 초 동안 전투에서 벗어나게 만드는 것 (파괴하거나 해제해야 함); 그렇지 않으면 탱킹과 데미지를 해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74446"] = { "가무라",
"* 그는 모든 데미지를 크게 감소시키는 보호막 뒤에서 시작합니다: 모든 공격과 주문이 이를 파괴하여 지속적인 데미지를 가합니다.",
"* 보호막이 파괴되면 그는 폭발하여 전체 그룹에 피해를 입힙니다(치유사는 이를 완화합니다) 및 노출됩니다: 모든 데미지 재사용 타이밍에 맞춰 공격합니다.",
"* 그의 |cff71d5ff|Hspell:407077|h[트리플  chomps]|h|r는 탱커에게 떨어집니다: 치유사는 그의 건강을 주시합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74476"] = { "도미나",
"* 그녀의 Shadow 피해는 매 초마다 무작위 플레이어에게 지속적으로 피해를 입힙니다: 치명적인 지속 피해; 치유사는 속도를 설정합니다.",
"* 그녀의 Shadow 피해는 2초 동안 전면 코너에 파동을 일으킵니다: 탱커는 그룹에서 그녀를 멀리하고 아무도 앞에 접근하지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74505"] = { "쓰럭",
"* His Catch of the Day hooks a random player up to 45 yd away and drags them to his feet: the hooked one scatters the moment they let go and nobody crosses the pull.",
"* His Fillet of Flesh slams the axe into the ground: 500% weapon damage to all enemies within 10 yd; spread around with healers ready."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74565"] = { "정복자 코르울",
"* Leviathan's Grip 상대로 매 초마다 8초 동안 물리 피해를 가합니다: 치유사는 해당 대상에게 탑승합니다.",
"* His Darkness Calls는 Aku'mai를 소환하여 먹이를 제공합니다: Aku'mai의 효과는 미니언에도 적용됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74728"] = { "황혼의 군주 바시엘",
"* 그는 방에 자신의 일부를 흩뿌려 치유 물 원을 만듭니다: 만약 그가 하나에 도달하면 마시며 (치유 흡수) 5%의 체력을 회복하고, 폭발하는 물 (물 폭발)은 5야드에 냉기 피해를 던집니다; 원을 주의하고 그에게 물을 주지 마세요.",
"* 그의 꿰뚫는 비는 각 초마다 무작위 플레이어에게 냉기 피해를 줍니다: 치유사는 지속적인 피해를 관리해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74988"] = { "집행자 고어",
"* His Devouring Blackness (중단 가능)는 대상에게 묶고 매 0.8초마다 6초 동안 건강을 소모하여 그에게 먹이를 공급합니다: 사용할 때마다 중단하십시오; 대상이 맞을 경우, 치유사는 소모를 상쇄합니다.",
"* His Executioner's Strike는 톱을 휘두릅니다: 전방 획에 있는 모든 대상에게 섀도우 피해를 입히고, 지속적인 회오리를 생성하여 그 안에 있는 사람을 멈춥니다: 획을 피하고 회오리에서 벗어나십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75408"] = { "아쿠마이",
"* 1단계 (수달 형태): 주요 탱커는 독 디버프를 쌓고, 오프 탱커는 3~4번째 단계에서 대상에게 대상 지정하여 첫 번째 탱커가 방의 원소 분수(즉시 죽는 애드 소환)를 만지면서 치유합니다.",
"* |cff71d5ff|Hspell:429168|h[부식 폭발]|h|r를 사용할 때 회피됩니다: 표시된 플레이어가 폭발 획에 빠져나갑니다.",
"* 2단계 (공허 형태, 50% 미만): 물리 피해가 증가하고, 어둠 폭발을 던집니다 (|cff71d5ff|Hspell:429359|h[공허 폭발]|h|r은 동일한 방식으로 회피); 탱커는 더 주의해서 회전하고, 그룹은 모든 쿨다운을 사용하여 그녀를 처치합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75410"] = { "심연의 수호자",
"* 그의 스포 클라우드 알 낭은 무작위 위치에 떨어지고, 가디언 해치링을 부화시킵니다: 얼룩 위에 있지 않고 빠르게 해치링을 제거하세요.",
"* 그는 근처의 블루 셰일 크롤러를 먹어 25%의 체력을 회복합니다: 그의 사정 범위 안에 남은 크롤러는 없습니다.",
"* 그의 쉐이팅 송은 방 전체에 피해를 줍니다: 지속적인 광역 피해; 치유사는 집중하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["201722"] = { "가무라",
"* 그는 모든 데미지를 크게 감소시키는 보호막 뒤에서 시작합니다: 모든 공격과 주문이 이를 파괴하여 지속적인 데미지를 가합니다.",
"* 보호막이 파괴되면 그는 폭발하여 전체 그룹에 피해를 입힙니다(치유사는 이를 완화합니다) 및 노출됩니다: 모든 데미지 재사용 타이밍에 맞춰 공격합니다.",
"* 그의 |cff71d5ff|Hspell:407077|h[트리플  chomps]|h|r는 탱커에게 떨어집니다: 치유사는 그의 건강을 주시합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["202699"] = { "바론 아쿠안리스",
"* 플랫폼 전체에 퍼져서 번개 폭풍이 레이드에 연쇄 피해를 주지 않도록; 근접 및 탱커는 그에게 붙어 있어야 합니다.",
"* |cff71d5ff|Hspell:404806|h[Depth Charge]|h|r는 플레이어에게 치명적인 충격을 발사합니다: 표시된 사람은 즉시 물로 뛰어들어 폭발로 인해 그룹이 손상되거나 밀리지 않도록 합니다.",
"* 물에 빠지는 것을 피하세요: 회오리가 당신을 끌어내립니다; 근접은 속성 구체나 점프를 사용하여 올라가고, 원거리 캐스터는 아래에서 계속 공격할 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["204068"] = { "레이디 사레베스",
"* 그녀는 숙련된 경비병에 의해 보호를 받습니다: 몬스터(폴리모프, 함정)를 제어하고 그녀에게 집중 공격을 합니다.",
"* 그녀의 |cff71d5ff|Hspell:407546|h[얼음 화살]|h|r는 맞은 사람을 얼립니다(치유사는 제거로 해제), 그녀가 |cff71d5ff|Hspell:407653|h[분기된 번개]|h|r를 특정 플레이어에게 조준하면, 해당 플레이어가 그룹에서 벗어납니다.",
"* 그녀가 플레이어에게 |cff71d5ff|Hspell:407791|h[아쿠마이의 분노]|h|r를 걸면, 치유사가 보이면 즉시 제거합니다; 그녀의 땅에 생긴 물웅덩이는 피해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["204921"] = { "게리하스트",
"* 전투는 피해와 전환 단계가 번갈아 나타납니다: 그는 방 중앙에서 면역 상태가 됩니다.",
"* 전환 중에 그림 텐타클과 휩스웨이는 나타납니다: 피하거나 텐타클을 파괴하여 다시 공격 가능한 상태가 되도록 합니다.",
"* 그의 |cff71d5ff|Hspell:411956|h[Curse of the Deep]|h|r는 저주 해제 효과로 제거할 수 있으며, 그의 |cff71d5ff|Hspell:412456|h[March of Murlocs]|h|r는 측면에서 파도 공격을 가합니다: 빠르게 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["207356"] = { "로르 Gus 제트",
"* 그의 토템이 최우선 목표입니다: 낮은 체력과 잔혹한 효과; 즉시 제거 ( |cff71d5ff|Hspell:419636|h[Molten Fury Totem]|h|r는 광역 피해를 입히고, |cff71d5ff|Hspell:414691|h[Windfury Totem]|h|r는 측면을 강화합니다).",
"* 만약 그가 치유를 시작하면, 탱커 또는 근접 딜러가 즉시 방해합니다.",
"* 그는 탱커에게 피해를 증가시키는 디버프를 적용합니다: 전투 중에 탱커 교체가 필요합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["209678"] = { "황혼의 군주 바시엘",
"* 1단계 (100%에서 35%): 그는 무작위 플레이어를 섀도우 월드로 보냅니다; 그곳에서 그는 빠르게 뼈 사제들을 죽여 포탈을 활성화하고 돌아옵니다; 표면에서는 그의 번개 사슬은 항상 방해됩니다.",
"* 2단계 (35% 미만): 그는 분노하고 더 이상 사람을 보낼 수 없습니다; 섀도우 보호 물약을 사용하기 전에 또는 단계 중에 딜레이 레이스입니다: 지속적인 그림 손상은 그룹을 파괴합니다.",
"* 그의 |cff71d5ff|Hspell:423135|h[수면]|h|r는 여전히 무작위 플레이어를 기절시킵니다: 해제하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["213334"] = { "아쿠마이",
"* 1단계 (수달 형태): 주요 탱커는 독 디버프를 쌓고, 오프 탱커는 3~4번째 단계에서 대상에게 대상 지정하여 첫 번째 탱커가 방의 원소 분수(즉시 죽는 애드 소환)를 만지면서 치유합니다.",
"* |cff71d5ff|Hspell:429168|h[부식 폭발]|h|r를 사용할 때 회피됩니다: 표시된 플레이어가 폭발 획에 빠져나갑니다.",
"* 2단계 (공허 형태, 50% 미만): 물리 피해가 증가하고, 어둠 폭발을 던집니다 (|cff71d5ff|Hspell:429359|h[공허 폭발]|h|r은 동일한 방식으로 회피); 탱커는 더 주의해서 회전하고, 그룹은 모든 쿨다운을 사용하여 그녀를 처치합니다."
};

-- Razorfen Downs : Zona 129 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7354"] = { "래글스나웃",
"* Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r)은 플레이어를 파티에 대항하게 만듭니다: stun하거나 마법을 제거합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7355"] = { "투텐카슈",
"* 지하묘의 거미: 그녀의 투트 저주 (|cff71d5ff|Hspell:12255|h[Curse of Tut]|h|r)는 플레이어를 (저주, 제거)하고, 그녀의 웹 스프레이 (|cff71d5ff|Hspell:12252|h[Web Spray]|h|r)는 근접 공격자를 공격합니다.",
"* 그녀의 거미 독은 탱커를 공격: 지속적인 치유."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7356"] = { "썩은 입",
"* 그의 Withered Touch (|cff71d5ff|Hspell:11442|h[Withered Touch]|h|r) 은 플레이어에게 DISEASE: 드루이드는 이를 제거합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7357"] = { "불꽃눈 모드레쉬",
"* 그는 엘리트 골렘이 아닌 뼈 언덕 위에서 싸우고 있습니다: 탱커는 AoE를 사용하여 모두를 잡고, 그룹을 모아서 먼저 떼를 정리합니다; 보스에게 빠르게 공격할 필요는 없습니다.",
"* 그는 불구슬을 사용할 때마다, 탱커나 딜러가 인터럽트합니다: 중단된 모든 공격은 덜 받는 데 도움이 됩니다.",
"* 치유사는 떼에 대한 탱커의 공격을 확보한 후 몇 초 동안 기다린 다음 강력하게 치유합니다: 초반 치유는 골렘을 제거하고 딜을 막을 수 있습니다.",
"* 그의 불파동(|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r)은 그의 발 아래에서 딜러를 향해 뻗어 나갑니다: 물러서세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7358"] = { "혹한의 암네나르",
"* 무덤의 차가운 공기: 그의 암네나라의 분노(|cff71d5ff|Hspell:13009|h[암네나라의 분노]|h|r)이 넓은 범위에 폭발 — 넓게 퍼져 있고, 강력한 회복을 유지하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8567"] = { "탐욕",
"* Flesh Devourer: 그는 낮은 체력 상태에서 Frenzy (|cff71d5ff|Hspell:12795|h[Frenzy]|h|r) 상태로 전환하여, 마지막에 높은 DPS를 줍니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74347"] = { "불꽃눈 모드레쉬",
"* 그는 엘리트 골렘이 아닌 뼈 언덕 위에서 싸우고 있습니다: 탱커는 AoE를 사용하여 모두를 잡고, 그룹을 모아서 먼저 떼를 정리합니다; 보스에게 빠르게 공격할 필요는 없습니다.",
"* 그는 불구슬을 사용할 때마다, 탱커나 딜러가 인터럽트합니다: 중단된 모든 공격은 덜 받는 데 도움이 됩니다.",
"* 치유사는 떼에 대한 탱커의 공격을 확보한 후 몇 초 동안 기다린 다음 강력하게 치유합니다: 초반 치유는 골렘을 제거하고 딜을 막을 수 있습니다.",
"* 그의 불파동(|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r)은 그의 발 아래에서 딜러를 향해 뻗어 나갑니다: 물러서세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74412"] = { "아룩스",
"* 그의 웹 스런드가 원거리 플레이어를 묶어, 적으로 끌어당기고 플래그드 바이트를 한 번에 심습니다 (자연 피해, 10초 동안, -50% 이동 속도): 치유사는 제거하거나 묶인 플레이어를 강력하게 치유합니다.",
"* 그의 버스팅 푸스툴은 가까운 대상에게 자연 피해를 입힙니다: 거리와 범위."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["74434"] = { "혹한의 암네나르",
"* 동맹 Koristrasza가 Redeemed Soil의 물을 생성합니다: 그를 물을 통과하는 동안 멀리 날아가게 하십시오, 땅이 Overwhelms 및 6초 동안 그를 둔화시킵니다.",
"* 그의 Soul Leech는 표시된 플레이어(75%의 피해가 그에게 적용됨)를 흡수하고, 근처 플레이어에게 Shadow를 던집니다: 표시된 플레이어가 Redeemed Soil 위로 밟으면, 즉시 디버프를 제거하고 그를 둔화시킵니다.",
"* 그의 Frozen Bomb은 Frost 물을 흩뿌립니다: 얼음 물이 떨어지는 즉시 멀리 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74435"] = { "살점곤죽",
"* 직접적인 격투: 그의 시끄러운 Stomp은 전체 그룹에 영향을 미치고, 주문 중인 캐스터를 때릴 수 있습니다; 치유사는 계속해서 치료하고, 캐스터는 타이밍을 잘 맞춰야 합니다.",
"* 그는 덩어리와 좀비 몬스터를 임의로 생성합니다: 탱커는 즉시 모아지고, DPS는 (DoT 또는 AoE)로 처치하여 치유사를 공격하기 전에 처치합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["74875"] = { "죽음예언자 블랙쏜",
"* 그의 폭발 (그림자와 번개)는 플레이어 간에 연쇄됩니다: 가능한 한 주문을 중단하십시오.",
"* 그는 바닥에 어두운 얼룩을 만듭니다: 즉시 벗어나십시오, 그곳에 머무르면 피해를 입습니다.",
"* 때때로 그는 영혼 방패로 자신을 보호하고 그 뒤에서 채널링합니다: 직접 피해를 가하여 채널을 끊으십시오."
};

-- Blackrock Depths : Zona 230 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["8983"] = { "골렘 군주 아젤마크",
"* 찰광선을 사용하여 가까운 적들 사이를 뛰어다니는: 적들이 흩어져 있도록 해야 합니다.",
"* 그는 두 개의 구조물을 활성화하여 싸우는: 탱커는 그들을 분리하고 그 영향력을 분산합니다.",
"* 서두르지 마세요: 쓰러진 골렘은 전투를 끝내지 않습니다 — 홀 전체를 청소하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9016"] = { "밸가르",
"* 그의 마그마 스플래시 효과는 24초마다 3번까지 탱크에게 적용: 턴 순서 또는 사용 가능한 경우에 힐.",
"* 브루드 소환은 무덤 미니언을 선물로 하여 불을 무작위로 던집니다: 턴은 잡고 빠르게 죽습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9017"] = { "불의 군주 인센디우스",
"* 원소 군주의 저주: 100-132의 화염 저항을 제거하고, 30초 이상 지속되며 최대 3회: 마커가 지정된 위치에서 불로부터 벗어납니다.",
"* 강력한 일격: 탱커를 뒤로 던집니다 (용암이 흩뿌려짐): 벽으로 돌아갑니다.",
"* 화염 폭풍은 주변 지역을 ~30초 동안 공격하며, 불꽃 폭발은 20m 범위: 근접 플레이어는 벗어나고, 힐러는 공격을 커버합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9018"] = { "대심문관 게르스탄",
"* 심문실의 보스: 그녀의 그림자 광탄은 캐스터에게 피해를 입힙니다 — 주의 깊은 치유와 방의 넓이."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9019"] = { "제왕 다그란 타우릿산",
"* 불의 아바타: 10초 동안 완전히 마법 저항, 그리고 공격에 화염 추가: 캐스터는 이 효과가 지속되는 동안 버텨야 합니다.",
"* ธอ어리산의 손: 5초 동안 stun을 유발하는 화염 공격 — 여러 명이 동시에 제어력을 잃지 않도록 덩어리 없이 사용하는 것이 좋습니다.",
"* 아이언 래지: 그의 마법 망치에 최대 3개의 추가 공격과 5초 동안 10%의 크리티컬 확률 증가: 탱커는 치유를 통해 지속 공격을 유지합니다.",
"* 프린세스 모이라 브론즈비어드가 그의 옆에서 싸웁니다: 그녀는 끊임없이 그를 치유하고 성스러운 및 그림자 마법으로 공격합니다: 그녀를 통제하거나, 그룹이 빠르게 파괴되면 그 전에 처치하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9024"] = { "화염술사 로어그레인",
"* 펜스 지역의 파이로맨서: 그룹에 대한 광역 화염 — 흩어져서 그를 통과하면서 치유하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9025"] = { "불의 군주 록코르",
"* 그의 워 스템프 (2초)는 근처의 모든 것을 처벌하고, 그의 어스 샷은 주문을 중단합니다: 넓게 퍼져서 그 안에 주문을 하지 마세요.",
"* 플레임 웨이브는 대략 12초마다 발생합니다: 근접 공격자는 반경 밖으로 걸어 나와 다시 돌아옵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9027"] = { "대법관 그림스톤",
"* 아레나 이벤트: 링은 여섯 명의 챔피언 중 하나 (아누브'샤이아, 헤드럼, 에비스커이터, 그리즐, 오크'토르 또는 레프트록)를 생성합니다. 탱커가 잡고, 전투는 단순한 교전이 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9028"] = { "대법관 그림스톤",
"* 아레나 이벤트: 링은 여섯 명의 챔피언 중 하나 (아누브'샤이아, 헤드럼, 에비스커이터, 그리즐, 오크'토르 또는 레프트록)를 생성합니다. 탱커가 잡고, 전투는 단순한 교전이 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9029"] = { "대법관 그림스톤",
"* 아레나 이벤트: 링은 여섯 명의 챔피언 중 하나 (아누브'샤이아, 헤드럼, 에비스커이터, 그리즐, 오크'토르 또는 레프트록)를 생성합니다. 탱커가 잡고, 전투는 단순한 교전이 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9030"] = { "대법관 그림스톤",
"* 아레나 이벤트: 링은 여섯 명의 챔피언 중 하나 (아누브'샤이아, 헤드럼, 에비스커이터, 그리즐, 오크'토르 또는 레프트록)를 생성합니다. 탱커가 잡고, 전투는 단순한 교전이 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9031"] = { "대법관 그림스톤",
"* 아레나 이벤트: 링은 여섯 명의 챔피언 중 하나 (아누브'샤이아, 헤드럼, 에비스커이터, 그리즐, 오크'토르 또는 레프트록)를 생성합니다. 탱커가 잡고, 전투는 단순한 교전이 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9032"] = { "대법관 그림스톤",
"* 아레나 이벤트: 링은 여섯 명의 챔피언 중 하나 (아누브'샤이아, 헤드럼, 에비스커이터, 그리즐, 오크'토르 또는 레프트록)를 생성합니다. 탱커가 잡고, 전투는 단순한 교전이 됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9033"] = { "사령관 앵거포지",
"* 그의 썬더가 지속적으로 탱커의 방어력을 감소시키므로, 스택이 쌓일 때 회피 전략을 사용해야 합니다.",
"* 크리티컬은 그의 손을 빠르게 만들고, 앙쥐는 신체 피해를 증가시키므로, 치유사는 그와 함께 회복해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9034"] = { "운명의 문지기",
"* 용암 홀에 7명의 고스트 다우어드가 한 번에 여러 명으로 나타나, 각자 고전적인 클래스 키트로 공격합니다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머를 사용하고, 배틀 셔트와 쇼크웨이브를 타이밍에 맞춰 사용합니다.",
"* 워록 둠렐: 섀도우 볼트와 커스 오브 에고니를 사용하고, 엑스칼라 또는 바이드워커를 소환하여 페어를 해제하고 소환을 마무리합니다.",
"* 로거 도프렐: 뒤에서 독을 사용하고, 바니쉬: 뒤에 아무도 서지 않도록 합니다.",
"* 쉐만 글룸렐: 토템, 어스 샷과 버프 제거: 토템이 솟아오르는 동안 파괴됩니다.",
"* 메이지 헤이트렐: 프라이스트 볼트, 블리자드와 폴리모프: 폴리모프를 방해하고 블리자드에서 벗어납니다.",
"* 헌터 시스렐: 원거리에서 사격, 트랩을 설치하고, 맹수 펫을 소환: 주의해서 거리를 좁힙니다.",
"* 성직자 빌렐: 플래시 히얼과 파워 워드를 사용하여 자신을 치유하고, 쉴드를 사용하고 마인드 블래스트를 사용하여 치유를 우선합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9035"] = { "운명의 문지기",
"* 용암 홀에 7명의 고스트 다우어드가 한 번에 여러 명으로 나타나, 각자 고전적인 클래스 키트로 공격합니다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머를 사용하고, 배틀 셔트와 쇼크웨이브를 타이밍에 맞춰 사용합니다.",
"* 워록 둠렐: 섀도우 볼트와 커스 오브 에고니를 사용하고, 엑스칼라 또는 바이드워커를 소환하여 페어를 해제하고 소환을 마무리합니다.",
"* 로거 도프렐: 뒤에서 독을 사용하고, 바니쉬: 뒤에 아무도 서지 않도록 합니다.",
"* 쉐만 글룸렐: 토템, 어스 샷과 버프 제거: 토템이 솟아오르는 동안 파괴됩니다.",
"* 메이지 헤이트렐: 프라이스트 볼트, 블리자드와 폴리모프: 폴리모프를 방해하고 블리자드에서 벗어납니다.",
"* 헌터 시스렐: 원거리에서 사격, 트랩을 설치하고, 맹수 펫을 소환: 주의해서 거리를 좁힙니다.",
"* 성직자 빌렐: 플래시 히얼과 파워 워드를 사용하여 자신을 치유하고, 쉴드를 사용하고 마인드 블래스트를 사용하여 치유를 우선합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9036"] = { "운명의 문지기",
"* 용암 홀에 7명의 고스트 다우어드가 한 번에 여러 명으로 나타나, 각자 고전적인 클래스 키트로 공격합니다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머를 사용하고, 배틀 셔트와 쇼크웨이브를 타이밍에 맞춰 사용합니다.",
"* 워록 둠렐: 섀도우 볼트와 커스 오브 에고니를 사용하고, 엑스칼라 또는 바이드워커를 소환하여 페어를 해제하고 소환을 마무리합니다.",
"* 로거 도프렐: 뒤에서 독을 사용하고, 바니쉬: 뒤에 아무도 서지 않도록 합니다.",
"* 쉐만 글룸렐: 토템, 어스 샷과 버프 제거: 토템이 솟아오르는 동안 파괴됩니다.",
"* 메이지 헤이트렐: 프라이스트 볼트, 블리자드와 폴리모프: 폴리모프를 방해하고 블리자드에서 벗어납니다.",
"* 헌터 시스렐: 원거리에서 사격, 트랩을 설치하고, 맹수 펫을 소환: 주의해서 거리를 좁힙니다.",
"* 성직자 빌렐: 플래시 히얼과 파워 워드를 사용하여 자신을 치유하고, 쉴드를 사용하고 마인드 블래스트를 사용하여 치유를 우선합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9037"] = { "운명의 문지기",
"* 용암 홀에 7명의 고스트 다우어드가 한 번에 여러 명으로 나타나, 각자 고전적인 클래스 키트로 공격합니다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머를 사용하고, 배틀 셔트와 쇼크웨이브를 타이밍에 맞춰 사용합니다.",
"* 워록 둠렐: 섀도우 볼트와 커스 오브 에고니를 사용하고, 엑스칼라 또는 바이드워커를 소환하여 페어를 해제하고 소환을 마무리합니다.",
"* 로거 도프렐: 뒤에서 독을 사용하고, 바니쉬: 뒤에 아무도 서지 않도록 합니다.",
"* 쉐만 글룸렐: 토템, 어스 샷과 버프 제거: 토템이 솟아오르는 동안 파괴됩니다.",
"* 메이지 헤이트렐: 프라이스트 볼트, 블리자드와 폴리모프: 폴리모프를 방해하고 블리자드에서 벗어납니다.",
"* 헌터 시스렐: 원거리에서 사격, 트랩을 설치하고, 맹수 펫을 소환: 주의해서 거리를 좁힙니다.",
"* 성직자 빌렐: 플래시 히얼과 파워 워드를 사용하여 자신을 치유하고, 쉴드를 사용하고 마인드 블래스트를 사용하여 치유를 우선합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9038"] = { "운명의 문지기",
"* 용암 홀에 7명의 고스트 다우어드가 한 번에 여러 명으로 나타나, 각자 고전적인 클래스 키트로 공격합니다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머를 사용하고, 배틀 셔트와 쇼크웨이브를 타이밍에 맞춰 사용합니다.",
"* 워록 둠렐: 섀도우 볼트와 커스 오브 에고니를 사용하고, 엑스칼라 또는 바이드워커를 소환하여 페어를 해제하고 소환을 마무리합니다.",
"* 로거 도프렐: 뒤에서 독을 사용하고, 바니쉬: 뒤에 아무도 서지 않도록 합니다.",
"* 쉐만 글룸렐: 토템, 어스 샷과 버프 제거: 토템이 솟아오르는 동안 파괴됩니다.",
"* 메이지 헤이트렐: 프라이스트 볼트, 블리자드와 폴리모프: 폴리모프를 방해하고 블리자드에서 벗어납니다.",
"* 헌터 시스렐: 원거리에서 사격, 트랩을 설치하고, 맹수 펫을 소환: 주의해서 거리를 좁힙니다.",
"* 성직자 빌렐: 플래시 히얼과 파워 워드를 사용하여 자신을 치유하고, 쉴드를 사용하고 마인드 블래스트를 사용하여 치유를 우선합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9039"] = { "운명의 문지기",
"* 용암 홀에 7명의 고스트 다우어드가 한 번에 여러 명으로 나타나, 각자 고전적인 클래스 키트로 공격합니다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머를 사용하고, 배틀 셔트와 쇼크웨이브를 타이밍에 맞춰 사용합니다.",
"* 워록 둠렐: 섀도우 볼트와 커스 오브 에고니를 사용하고, 엑스칼라 또는 바이드워커를 소환하여 페어를 해제하고 소환을 마무리합니다.",
"* 로거 도프렐: 뒤에서 독을 사용하고, 바니쉬: 뒤에 아무도 서지 않도록 합니다.",
"* 쉐만 글룸렐: 토템, 어스 샷과 버프 제거: 토템이 솟아오르는 동안 파괴됩니다.",
"* 메이지 헤이트렐: 프라이스트 볼트, 블리자드와 폴리모프: 폴리모프를 방해하고 블리자드에서 벗어납니다.",
"* 헌터 시스렐: 원거리에서 사격, 트랩을 설치하고, 맹수 펫을 소환: 주의해서 거리를 좁힙니다.",
"* 성직자 빌렐: 플래시 히얼과 파워 워드를 사용하여 자신을 치유하고, 쉴드를 사용하고 마인드 블래스트를 사용하여 치유를 우선합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9040"] = { "운명의 문지기",
"* 용암 홀에 7명의 고스트 다우어드가 한 번에 여러 명으로 나타나, 각자 고전적인 클래스 키트로 공격합니다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머를 사용하고, 배틀 셔트와 쇼크웨이브를 타이밍에 맞춰 사용합니다.",
"* 워록 둠렐: 섀도우 볼트와 커스 오브 에고니를 사용하고, 엑스칼라 또는 바이드워커를 소환하여 페어를 해제하고 소환을 마무리합니다.",
"* 로거 도프렐: 뒤에서 독을 사용하고, 바니쉬: 뒤에 아무도 서지 않도록 합니다.",
"* 쉐만 글룸렐: 토템, 어스 샷과 버프 제거: 토템이 솟아오르는 동안 파괴됩니다.",
"* 메이지 헤이트렐: 프라이스트 볼트, 블리자드와 폴리모프: 폴리모프를 방해하고 블리자드에서 벗어납니다.",
"* 헌터 시스렐: 원거리에서 사격, 트랩을 설치하고, 맹수 펫을 소환: 주의해서 거리를 좁힙니다.",
"* 성직자 빌렐: 플래시 히얼과 파워 워드를 사용하여 자신을 치유하고, 쉴드를 사용하고 마인드 블래스트를 사용하여 치유를 우선합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9041"] = { "문지기 스틸기스",
"* 금고의 수호자: 그의 오그, 베렉이 그의 옆에서 싸운다 — 탱커는 분리하거나 멀리 떨어뜨려야 하며, 지속적인 치유가 필요합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9056"] = { "파이너스 다크바이어",
"* 용광로 골렘: 좋은 탱커 뒤에서 펼쳐지는 정면 전투."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9156"] = { "사자 화염채찍",
"* 지속적인 화염 폭발: 근접 공격 시 회전 또는 회복.",
"* 불타는 영혼: 홀의 룬을 통해 엘리먼트; 그가 도달하는 것은 +5% 데미지와 50 스택 크기 증가를 제공합니다: 그들의 길을 차단하고 가는 길에 마무리합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9319"] = { "사냥개조련사 그렙마르",
"* 먼저 묶인 팩을 처리합니다: 개에 대한 AoE 및 제어; 탱커에게 마스터."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9499"] = { "플러거 스패즈링",
"* 게즐러의 바텐: 그는 쓰러질 때, 술집 전체가 몰려든다 — 손님들이 파도처럼 몰려온다: 탱커는 AoE를 사용하고, 실수하지 않도록 주의."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9502"] = { "팔랑크스",
"* 용광로 홀의 기계 경비병: 탱커에게 집중적인 근접 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9537"] = { "헐레이 블랙브레스",
"* Taverna의 음주꾼: 좋은 탱커 뒤에서 직접적으로 공격하는 것이 좋습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9938"] = { "마그무스",
"* 시티델 거인: 탱커에게 지속적인 근접 공격과 꾸준한 회복."
};

-- Lower/Upper Blackrock Spire : Zona 229 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9196"] = { "대영주 오모크",
"* 계단 위의 오그 군주: 탱커에게 지속적인 근접 공격, 지속적인 치유."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9236"] = { "어둠사냥꾼 보쉬가진",
"* 그림자 성직자: 그녀의 그림자 광선은 캐스터에게 피해를 줍니다 — 그들에게 주의 깊게 치유합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9237"] = { "대장군 부네",
"* 워 마스터: 단일 대상과의 직접적인 전투, 견고한 탱커와 함께."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9568"] = { "대군주 웜타라크",
"* 영역의 지배자: 지속적인 근접 공격과 지속적인 치유."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9736"] = { "병참장교 지그리스",
"* 상인: 좋은 탱커 뒤에서 직선으로 진행하는 것이 좋습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["9816"] = { "불꽃 방어사 에머서",
"* 용광로 수호자: 그의 의식이 시작되면, 다른 적들과 마찬가지로 쉽게 쓰러집니다 — 단순한 전투."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10220"] = { "할리콘",
"* 웹 자식: 탱커에게 근접 공격, 특수 기술 사용 금지."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10264"] = { "솔카르 플레임웨어스",
"* 달걀의 주인이: 알을 열면 드라코나이드 군집이 생성됨 — 군집을 AoE 공격하고, 지속적인 근접 공격을 보스에게 가합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10268"] = { "흉포한 기즈룰",
"* 노예 상인: 탱커에게 근접 공격, 특수 기술 사용 금지."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10339"] = { "워치피프 렌 블랙핸드",
"* 워치피프는 그의 드레이크 기스와 함께 전투에서 쓰러집니다: 탱커에게 강력한 치유와 드레이크의 불에 주의하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10363"] = { "일반 드락키사스",
"* 상위 날개 군사: 그의 \"불길\" (|cff71d5ff|Hspell:16805|h[Conflagration]|h|r)은 플레이어를 불태워 — 마크된 플레이어는 불이 붙을 때 그룹에서 즉시 벗어난다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10429"] = { "워치피프 렌 블랙핸드",
"* 워치피프는 그의 드레이크 기스와 함께 전투에서 쓰러집니다: 탱커에게 강력한 치유와 드레이크의 불에 주의하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10430"] = { "짐승",
"* 야수: 그의 울음소리는 파티를 공포에 떨게 하고, 지속적으로 탱커를 치명타 공격합니다 — 지속적인 회복."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10509"] = { "제드 룬워처",
"* 룬워처: 탱커에게 직접적인 근접 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10584"] = { "우로크 둠하울",
"* 동굴 제단 의 의식을 통해 탄생: 소환은 떼를 불러오게 함 — AoE 공격과 1대1 전투를 먼저 정리."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10596"] = { "여왕 불그물거미",
"* 거미 어머니: 그녀의 결정화는 파티 구성원 중 한 명을 고정시키고, 그녀의 독은 근접 공격자에게 피해를 입힙니다 — 주의 깊은 치유가 필요합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10899"] = { "고랄룩 앤빌크래크",
"* 드라코나이드 대장장이: 좋은 탱커 뒤에서 펼쳐지는 정면 교전."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16042"] = { "로드 발타락",
"* 고위 사제: 그의 소환 (|cff71d5ff|Hspell:27249|h[Summon Assassin]|h|r)은 암살자를 소환합니다 - 탱커가 잡고, 근접 딜러는 계속 공격합니다."
};

-- Onyxia's Lair : Zona 249 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10184"] = { "오닉시아",
"* 1단계: 땅에 있는 상태에서: 그녀의 불 호흡(|cff71d5ff|Hspell:18435|h[불 호흡]|h|r)은 탱커를 공격하고, 그녀의 날개 소용돌이(|cff71d5ff|Hspell:18500|h[날개 소용돌이]|h|r)는 근접 공격자를 뒤로 밀고, 그녀의 밀어내는 능력(|cff71d5ff|Hspell:19633|h[밀어내는 능력]|h|r)은 탱커의 그립을 끊습니다.",
"* 2단계: 공중 상태에서: 그녀의 마크된 위치에 불덩이(|cff71d5ff|Hspell:18392|h[불덩이]|h|r)와 그녀의 깊은 숨(|cff71d5ff|Hspell:17086|h[깊은 숨]|h|r)은 둥지 절반을 공격합니다 — 채팅 경고 규칙: 반대쪽으로 달립니다.",
"* 3단계: 착지 후: 모든 것이 돌아오고, 그 위에 그녀의 굉음(|cff71d5ff|Hspell:18431|h[굉음]|h|r)은 그룹의 절반을 공포에 떨게 합니다; 동굴의 생물이 나타납니다 — 무리를 AoE 공격하여 보스 리듬을 유지합니다."
};

-- Dire Maul : Zona 429 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11486"] = { "왕자 토르텔드린",
"* 피ylon을 지키는 공주: 그의 보호대는 먼저 쓰러지고, 그 다음 그를 공격합니다.",
"* 그의 소환 (|cff71d5ff|Hspell:22995|h[Summon]|h|r)이 방을 가득 채우고, 와일링 스트라이크 (|cff71d5ff|Hspell:67037|h[Whirling Strike]|h|r)는 특정 지역에 피해를 입힙니다 — 움직이세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11487"] = { "마법학자 칼렌드리스",
"* 마스터: 50%에서 섀도우폼(|cff71d5ff|Hspell:22917|h[Shadowform]|h|r)을 사용하고 더 강하게 공격합니다.",
"* 그의 도미네이트 마인드(|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r)는 플레이어를 훔칩니다: 그들의 마법을 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11488"] = { "일리아나 레이븐오크",
"* 궁수: 그녀의 차지(|cff71d5ff|Hspell:22911|h[Charge]|h|r)는 가장 멀리 날아와서 불사조 함정(|cff71d5ff|Hspell:22910|h[Immolation Trap]|h|r)에 아무도 서 있지 않습니다.",
"* 컨커시브 샷(|cff71d5ff|Hspell:22914|h[Concussive Shot]|h|r)은 느리게 하고, 그녀의 볼리(|cff71d5ff|Hspell:30933|h[Volley]|h|r)는 범위에 맞습니다: 그룹은 흩어집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11489"] = { "굽이나무 텐드리스",
"* 고대 나무: 그의 Grasping Vines (|cff71d5ff|Hspell:22924|h[Grasping Vines]|h|r)이 얽히고, 그의 뿌리 (|cff71d5ff|Hspell:22994|h[Entangle]|h|r)는 근접 공격을 묶음 — 마법과 움직임을 제거.",
"* 그의 Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r)은 근접 공격에 피해를 줌."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11490"] = { "제비림 thorn호프",
"* 그의 희생 (|cff71d5ff|Hspell:22651|h[Sacrifice]|h|r) 플레이어를 묶고 악마를 보냅니다: 표시된 사람이 회복되는 동안 즉시 악마를 죽이세요.",
"* 극심한 고통 (|cff71d5ff|Hspell:22478|h[Intense Pain]|h|r) 표시된 사람을 공격합니다: 회복.",
"* 그의 그림자 볼트 연사 (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) 영역에 대한 공격: 근접 공격자는 뒤로 물러납니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11492"] = { "알지인, 야생 조형가",
"* 변신자: 그는 트리 형태(|cff71d5ff|Hspell:22688|h[Tree Form]|h|r)를 사용한 다음, 디어 울프 형태(|cff71d5ff|Hspell:22660|h[Dire Wolf Form]|h|r)로 변신합니다. 전투는 각 변신과 함께 변화합니다.",
"* 그의 와일드 리제네레이션(|cff71d5ff|Hspell:7948|h[Wild Regeneration]|h|r)은 항상 중단 가능: 착륙하면, 그는 건강으로 덮입니다.",
"* 에너베이트(|cff71d5ff|Hspell:22661|h[Enervate]|h|r)와 와이더(|cff71d5ff|Hspell:22662|h[Wither]|h|r)는 질병입니다: 드루이는 이를 제거합니다.",
"* 맹글(|cff71d5ff|Hspell:22689|h[Mangle]|h|r)은 탱커에게 출혈을 일으키고, 그의 뿌리(|cff71d5ff|Hspell:22415|h[Entangling Roots]|h|r)는 캐스터를 묶고, 넉 어웨이(|cff71d5ff|Hspell:10101|h[Knock Away]|h|r)는 그들을 날려버립니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11496"] = { "이몰타르",
"* 다섯 피라미드로 가두어진 악마: 피라미드가 파괴될 때, 그는 자유로워집니다 — 방 전체가 전투장입니다.",
"* 그의 눈 (|cff71d5ff|Hspell:22899|h[Eyes of Immol'thar]|h|r)는 한 플레이어를 불태우고, 트램플 (|cff71d5ff|Hspell:5568|h[Trample]|h|r)은 근접 공격을 휩쓸어버립니다.",
"* 그는 포탈을 엽니다 (|cff71d5ff|Hspell:22950|h[Portal of Immol'thar]|h|r): 포탈을 통해 몬스터를 소환하고, 탱커는 포탈 주변을 관리합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11501"] = { "킹 고독",
"* 왕의 베르세커 차지 (|cff71d5ff|Hspell:22886|h[Berserker Charge]|h|r)는 표시된 대상에게 치명적인 타격을 가하며 (|cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r)는 탱커를 파괴하고, 워 스타мп (|cff71d5ff|Hspell:16727|h[War Stomp]|h|r)는 넓은 범위에 스턴을 겁니다.",
"* 그의 썬더 아머 (|cff71d5ff|Hspell:15572|h[Sunder Armor]|h|r)는 탱커에게 쌓입니다: 강력한 집중적인 치유가 필요합니다.",
"* 헌납을 위한 런: 왕이 쓰러질 때, 살아있는 모든 경비병은 미즐의 가슴에 피해를 줍니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13280"] = { "수중 생명체",
"* 신사에서 물 폭탄: 그의 리프트아이(|cff71d5ff|Hspell:22419|h[Riptide]|h|r)는 영역에 피해를 입힙니다 — 근접 공격자들에게.",
"* 그의 지거(|cff71d5ff|Hspell:22421|h[Geyser]|h|r)는 발 아래에서 폭발합니다: 풀에 발을 딛지 마세요.",
"* 66% 및 33%에서 그는 수동을 소환합니다 (|cff71d5ff|Hspell:22714|h[Summon Hydroling]|h|r): 몬스터와 탱커에게 AoE 피해를 입힙니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14321"] = { "가드 펑 gus",
"* 경비병, 특수 기술이 기록되지 않았을 경우 — 안정적인 탱커 뒤에서, 깔끔한 몬스터를 상대하는 직접적인 교전."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14322"] = { "스토머 크리그",
"* 법정의 술꾼: 그의 술 뱉기 (|cff71d5ff|Hspell:22833|h[Booze Spit]|h|r)는 좁은 범위에 닿고, 그의 전쟁 발을 (|cff71d5ff|Hspell:16740|h[War Stomp]|h|r)은 넓은 범위에 피해를 줍니다.",
"* 회전 (|cff71d5ff|Hspell:15578|h[Whirlwind]|h|r)은 근접 공격에 집중 공격하며, 50% 시에 술 취한 분노 (|cff71d5ff|Hspell:22835|h[Drunken Rage]|h|r)로 공격하고, 회복 준비."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14323"] = { "가드 슬립'키크",
"* 또 다른 경비병, 특수 기술이 기록되지 않았을 경우 — 탱커에게 근접 공격을 하고, 실수를 하지 않도록 주의."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14324"] = { "초러쉬",
"* 법정의 치유사: 그의 치유는 경고를 발생시키지 않습니다 — 왕이 쓰러질 때, Mizzle의 가슴을 채우는 것을 막기 위해 모든 녹색 공격을 즉시 방해하십시오.",
"* 보상 획득을 위해, 그를 살리는 것이 좋습니다: 왕이 쓰러질 때, 경비병을 배치하여 Mizzle의 가슴을 채우는 것을 막으십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14325"] = { "캡틴 크롬크러쉬",
"* 고독 경비병이 특별 주문을 사용하지 않았을 경우 — 탱커를 앞쪽에 배치하고, 그룹 전체를 경계하도록."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14326"] = { "가드 몰달",
"* Shield Bash (|cff71d5ff|Hspell:11972|h[Shield Bash]|h|r)은 방해하고 Shield Charge (|cff71d5ff|Hspell:15749|h[Shield Charge]|h|r)는 탱을 목표로 하여 체력을 깎아: 거리를 유지하고 뒤쪽을 확보해야 합니다.",
"* 그의 Strike (|cff71d5ff|Hspell:14516|h[Strike]|h|r)는 탱을 공격하고 50%에서 Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r)로 전환: 마지막에 높은 DPS를 낼 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14327"] = { "레트엔드리스",
"* 그녀의 섀도 볼트 볼레이 (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r)가 영역에 내리: 근접 딜러들이 흩어진다.",
"* 그녀의 저주 (|cff71d5ff|Hspell:13338|h[Curse of Thorns]|h|r 및 |cff71d5ff|Hspell:16247|h[Curse of Tongues]|h|r)가 제거되고, 불태움 (|cff71d5ff|Hspell:11962|h[Immolate]|h|r)이 표시된 대상에게 피해를 준다.",
"* 그녀의 임파 핌기비가 커진다 (|cff71d5ff|Hspell:22710|h[Enlarge]|h|r, 제거), 불 뷔페 (|cff71d5ff|Hspell:22713|h[Flame Buffet]|h|r)를 뱉어, 겹쳐지고, 그의 블래스트 웨이브 (|cff71d5ff|Hspell:15744|h[Blast Wave]|h|r)가 영역에 닿아, 피해를 준다."
};

-- Molten Core : Zona 409 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11502"] = { "라그나로스",
"* 그의 라그나로스의 분노 (|cff71d5ff|Hspell:20566|h[Wrath of Ragnaros]|h|r)은 전열을 공격합니다: 탱커는 치유와 딜러는 흩어져서 대응합니다.",
"* 그는 대략 3분마다 잠수합니다: 그의 불의 자식들은 깊은 곳에서 떠오릅니다 — 탱커는 그들을 피하고, 그는 돌아오기 전에 죽습니다 (~90초)."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11663"] = { "청지기 이그젝큐투스",
"* Teleport (|cff71d5ff|Hspell:20534|h[Teleport]|h|r)은 전체 파티를 재배치합니다: DPS와 근접 딜러를 떨어뜨리지 않고 재정비합니다.",
"* Damage Shield (|cff71d5ff|Hspell:21075|h[Damage Shield]|h|r)은 딜을 받는 동안 근접 딜러를 공격합니다: 딜을 받는 동안 멈춥니다.",
"* 그의 불꽃 발사기는 자신을 치유하고 보호합니다: 먼저 치유에 중점을 두고, 마지막에는 메인 딜러에게 집중합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11664"] = { "청지기 이그젝큐투스",
"* Teleport (|cff71d5ff|Hspell:20534|h[Teleport]|h|r)은 전체 파티를 재배치합니다: DPS와 근접 딜러를 떨어뜨리지 않고 재정비합니다.",
"* Damage Shield (|cff71d5ff|Hspell:21075|h[Damage Shield]|h|r)은 딜을 받는 동안 근접 딜러를 공격합니다: 딜을 받는 동안 멈춥니다.",
"* 그의 불꽃 발사기는 자신을 치유하고 보호합니다: 먼저 치유에 중점을 두고, 마지막에는 메인 딜러에게 집중합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11982"] = { "마그마다르",
"* 그의 용암 호흡은 공포 (|cff71d5ff|Hspell:19408|h[Panic]|h|r)를 일으킵니다: 탱커는 그룹에서 그를 멀리 당깁니다; 공포에 질린 런너들은 불에 집중합니다 — 주의 깊은 치유.",
"* 그의 광란 (|cff71d5ff|Hspell:19451|h[Frenzy]|h|r)은 낮은 건강 상태에서 그의 피해를 증가시킵니다: 헌터는 Tranquilizing Shots로 줄이거나, 탱커는 치유로 견고하게 유지합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11988"] = { "초열의 골레마그",
"* His Earthquake (|cff71d5ff|Hspell:19798|h[Earthquake]|h|r) shakes the melee: melee holds on with a head.",
"* The two lava ragers come with him: the tank parks them apart, they get no reckless touches and the DPS stays on the boss."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12018"] = { "청지기 이그젝큐투스",
"* Teleport (|cff71d5ff|Hspell:20534|h[Teleport]|h|r)은 전체 파티를 재배치합니다: DPS와 근접 딜러를 떨어뜨리지 않고 재정비합니다.",
"* Damage Shield (|cff71d5ff|Hspell:21075|h[Damage Shield]|h|r)은 딜을 받는 동안 근접 딜러를 공격합니다: 딜을 받는 동안 멈춥니다.",
"* 그의 불꽃 발사기는 자신을 치유하고 보호합니다: 먼저 치유에 중점을 두고, 마지막에는 메인 딜러에게 집중합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12056"] = { "남작 게돈",
"* His Ignite Mana (|cff71d5ff|Hspell:19659|h[Ignite Mana]|h|r)은 마법사에게 피해를 주고, 마나가 소진되면 그 위에서 폭발합니다: 마법사는 자신의 마나를 관리합니다.",
"* The BOMB (|cff71d5ff|Hspell:20475|h[Inferno]|h|r)은 한 플레이어를 폭발시키도록 준비합니다: 표시된 플레이어는 폭발 전에 그룹에서 튀어 나갑니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12057"] = { "가르",
"* 그의 마그마 쇄도 (|cff71d5ff|Hspell:19496|h[Magma Shackles]|h|r) 영역에 뿌리: 근접 공격자는 리듬을 떨어뜨리고 돌아옵니다; 그의 불태움 (|cff71d5ff|Hspell:15732|h[Immolate]|h|r)은 지속적인 불로 한 플레이어를 공격합니다.",
"* Anti-Magic Pulse (|cff71d5ff|Hspell:19492|h[Anti-Magic Pulse]|h|r)은 그룹의 마법 버프를 삭제합니다: 각 펄스 후 방패가 다시 올라옵니다.",
"* 그의 Firesworn은 죽을 때 폭발합니다 (|cff71d5ff|Hspell:20506|h[Firesworn]|h|r): 근접 공격자는 시신에서 벗어납니다 — 모든 것이 쓸려갈 때까지 안정적인 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12098"] = { "설퍼론 선구자",
"* 그의 4명의 플레임워커 치유사는 먼저 공격해야 합니다: 그들이 치유를 할 때마다 중단하고, 그 전에 떨어뜨려야 합니다.",
"* 그의 영감 (|cff71d5ff|Hspell:19779|h[Inspire]|h|r)는 즉시 발동됩니다: 사냥꾼이 쏘아 맞추거나, 또는 제거됩니다.",
"* 랑나로스의 손 (|cff71d5ff|Hspell:19780|h[Hand of Ragnaros]|h|r)은 둔화 및 광역 공격을 합니다 — 넓게 퍼뜨려야 합니다. 그의 그림자 단어: 고통 (|cff71d5ff|Hspell:19776|h[Shadow Word: Pain]|h|r)과 불태움 (|cff71d5ff|Hspell:20294|h[Immolate]|h|r)은 표시된 대상에게 치유를 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12099"] = { "가르",
"* 그의 마그마 쇄도 (|cff71d5ff|Hspell:19496|h[Magma Shackles]|h|r) 영역에 뿌리: 근접 공격자는 리듬을 떨어뜨리고 돌아옵니다; 그의 불태움 (|cff71d5ff|Hspell:15732|h[Immolate]|h|r)은 지속적인 불로 한 플레이어를 공격합니다.",
"* Anti-Magic Pulse (|cff71d5ff|Hspell:19492|h[Anti-Magic Pulse]|h|r)은 그룹의 마법 버프를 삭제합니다: 각 펄스 후 방패가 다시 올라옵니다.",
"* 그의 Firesworn은 죽을 때 폭발합니다 (|cff71d5ff|Hspell:20506|h[Firesworn]|h|r): 근접 공격자는 시신에서 벗어납니다 — 모든 것이 쓸려갈 때까지 안정적인 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12118"] = { "루시프론",
"* 그의 임박한 파멸(|cff71d5ff|Hspell:19702|h[Impending Doom]|h|r)이 몇 초 후에 그룹 전체에 폭발: 치유가 방어선을 유지합니다.",
"* 그의 저주(|cff71d5ff|Hspell:19703|h[Lucifron's Curse]|h|r)는 주문을 더 비싸게 만듭니다 — 빠르게 해제하십시오; 캐스터는 마나 여유를 유지합니다.",
"* 그의 정신 지배(|cff71d5ff|Hspell:20604|h[Mind Control]|h|r)가 플레이어를 제어합니다: 그룹의 인터럽트는 이를 끊고, 표시된 플레이어는 치유에 의존합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12259"] = { "게헨나스",
"* 그의 저주 (|cff71d5ff|Hspell:19716|h[Gehennas' Curse]|h|r) GUTS 치유 — 지금 바로 해제하세요; 마법사는 그의 비의 범위를 받습니다.",
"* 불의 비 (|cff71d5ff|Hspell:19717|h[Rain of Fire]|h|r)은 특정 지역에 떨어집니다: 넓게 퍼뜨리세요; 그의 주먹 (|cff71d5ff|Hspell:20277|h[Fist of Gehennas]|h|r)은 표시된 곳을 공격합니다.",
"* 그의 두 그림자 경비원이 함께 옵니다: 탱커는 분리하여, AoE 공격은 머리에서, 아무도 그 끈에서 벗어나지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12264"] = { "샤즈라",
"* 그의 저주는 (|cff71d5ff|Hspell:19713|h[Shazzrah's Curse]|h|r) 그룹을 마법에 취약하게 만듭니다: 해제하십시오.",
"* 그의 마법 무효화 (|cff71d5ff|Hspell:19714|h[Deaden Magic]|h|r)는 표시된 캐스터를 처벌합니다: 주의 깊은 치유; 그리고 그의 반응 마법 (|cff71d5ff|Hspell:19715|h[Counterspell]|h|r)는 캐스터를 무력화합니다.",
"* 그는 그룹을 가로질러 이동합니다 (|cff71d5ff|Hspell:23138|h[Gate of Shazzrah]|h|r): 탱커는 그를 다시 안정시키면서 그를 잡습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228432"] = { "가르",
"* 동일한 Magma Shackles (19496), Immolate (15732) 및 Anti-Magic Pulse (19492)를 고전처럼 사용: 리메이크는 더 강력합니다 — 치유와 광역 공격이 방어선을 유지합니다.",
"* Firesworn은 죽을 때 폭발: 근접 공격자는 시체에서 떨어집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228437"] = { "청지기 이그젝큐투스",
"* Teleport (20534)은 그룹을 고전 방식처럼 재배치하고, Damage Shield (21075)은 근접 공격을 막습니다: 같은 반응 속도, 더 강력한 공격.",
"* 그의 Flamewakers는 치유합니다: 먼저 그들의 치유를 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228834"] = { "가르",
"* 동일한 Magma Shackles (19496), Immolate (15732) 및 Anti-Magic Pulse (19492)를 고전처럼 사용: 리메이크는 더 강력합니다 — 치유와 광역 공격이 방어선을 유지합니다.",
"* Firesworn은 죽을 때 폭발: 근접 공격자는 시체에서 떨어집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228836"] = { "청지기 이그젝큐투스",
"* Teleport (20534)은 그룹을 고전 방식처럼 재배치하고, Damage Shield (21075)은 근접 공격을 막습니다: 같은 반응 속도, 더 강력한 공격.",
"* 그의 Flamewakers는 치유합니다: 먼저 그들의 치유를 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228837"] = { "청지기 이그젝큐투스",
"* Teleport (20534)은 그룹을 고전 방식처럼 재배치하고, Damage Shield (21075)은 근접 공격을 막습니다: 같은 반응 속도, 더 강력한 공격.",
"* 그의 Flamewakers는 치유합니다: 먼저 그들의 치유를 방해하세요."
};

-- Ragefire Chasm : Zona 389 (classic) --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11517"] = { "오글글린트",
"* 전면 공격 (분열/베기): 탱커는 그룹에서 멀리 떨어뜨려 공격이 딜러나 치유사가 직접 맞지 않도록 합니다.",
"* 먼저 몬스터를 처치하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11518"] = { "제르고쉬, 소환사",
"* 그는 두 명의 하수인과 함께 등장합니다: 한 명은 Crowd Control, 다른 한 명에게 집중 피해를 주고, 둘 다 쓰러지면 나머지 싸움은 단순한 탱킹과 딜링입니다.",
"* 그의 |cff71d5ff|Hspell:20800|h[Immolate]|h|r는 매우 강력한 화상 (빠르게 제거)이며, 그의 |cff71d5ff|Hspell:18267|h[Curse of Weakness]|h|r는 데미지와 힘을 감소시키므로, 마법으로 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11519"] = { "바잘란",
"* 그는 최종 램프의 맨 위에 두 명의 열광자 옆에 앉아 있습니다: 딜을 시작하기 전에 먼저 한 미니언을 단독으로 공격할 수 있습니다.",
"* 남은 미니언을 제어하고 보스에게 피해를 입히세요: 탱을 위해 그의 |cff71d5ff|Hspell:744|h[치명적인 독]|h|r에 주의하세요: 효과가 사라지지 않으므로, 드루이드의 치유나 안티독으로 제거해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11520"] = { "타라가만, 끊임없이 먹는 자",
"* 그의 |cff71d5ff|Hspell:11970|h[파이어 노바]|h|r 공격은 주변 모든 대상에 맞습니다: 닿기 전에, 근접 공격자는 뒤로 물러나고, 원거리 및 힐러는 최대 거리 유지.",
"* 그의 |cff71d5ff|Hspell:18072|h[업퍼컷]|h|r는 탱을 날려버립니다: 용암 가장자리에 탱을 위치시켜, 넉백으로 인해 아무도 용암에 떨어지지 않도록."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61408"] = { "아다로그",
"* 그는 플레이어를 응시하고 (인페르노 차지) 해당 위치로 돌진합니다: 경로 또는 충돌 지점에 있는 모든 사람에게 피해를 입힙니다; 표시된 플레이어는 해당 위치를 벗어나고, 그룹은 통과하지 않습니다.",
"* 그의 불 호흡은 무작위 대상에게 불을 붙입니다: 치유사는 계속 활동합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61412"] = { "암흑주술사 코란살",
"* 그의 꼬인 엘리먼트 볼트 (섀도우 데미지)는 중단 가능: 모든 공격이 빗나가면 데미지가 발생하지 않습니다.",
"* 그의 섀도우 스톰은 넓은 영역에 뒤틀린 마법을 내립니다: 치유사가 준비되어 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61463"] = { "화산아귀",
"* 쉬운 시작 전투: 그는 무작위 플레이어의 위치에 용을 뱉고, 3야드 이내에 맞습니다; 투사체에서 벗어나세요.",
"* 정확히 다섯 번의 공격 후, 그는 물에 잠기고 다른 턱의 끝에서 다시 나타납니다: 재배치 위치를 조정하세요.",
"* 그의 닿는 범위가 매우 큽니다: 플랫폼에서 닿는 범위가 매우 큽니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61528"] = { "용암경비병 고르도스",
"* His Seismic Slam and Ground Rupture inflict Physical damage and knockbacks on nearby targets: tanks and melee should watch their footing near ledges and avoid clumping.",
"* At 30% health, he enrages (+30% attack speed and +10% damage): a final burst race with healers ready."
};

-- Blackwing Lair : Zona 469 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11583"] = { "네파리안",
"* 1단계: 홀의 측벽에서 몬스터 파동이 발생합니다 — 탱커는 이를 막고, 스레드를 잃지 않고 정리합니다.",
"* 클래스 콜은 약 30초마다 도착합니다: 각각 다른 클래스를 사용합니다 — 채팅 경고를 읽고 침착함을 유지하세요.",
"* 그의 그림 불꽃(|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r)은 앞을 공격하고, 그의 울음(|cff71d5ff|Hspell:22686|h[Roar]|h|r)은 그룹을 공포로 몰아넣습니다: 넓게 퍼지고, 지속적인 치유와 단호한 탱킹.",
"* 3단계: 착지 후, 뼈 더미에서 뼈가 쏟아집니다 — 머리로 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11981"] = { "플레임고르",
"* His Shadow Flame (22539) and Wing Buffet (23339): 동일한 패턴.",
"* His Frenzy (|cff71d5ff|Hspell:23342|h[Frenzy]|h|r)는 Tranquilizing Shot에 의해 잠재워집니다: 사냥꾼은 즉시 무력화시킵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11983"] = { "화염아귀",
"* 그의 섀도우 플레임 (|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r)이 앞쪽을 휩쓸고: 캐스터들이 기둥 뒤에 있으면 시야를 차단합니다.",
"* 플레임 버핏 (|cff71d5ff|Hspell:23341|h[Flame Buffet]|h|r)이 모든 보이는 대상에게 마법 피해를 누적시킵니다: 기둥 뒤에 머물면, 윙 버핏 (|cff71d5ff|Hspell:23339|h[Wing Buffet]|h|r)이 탱커를 날려버립니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12017"] = { "용기대장 래쉬레이어",
"* His Blast Wave (|cff71d5ff|Hspell:23331|h[Blast Wave]|h|r)은 그에게 가까이 있는 사람을 방으로 던져 버립니다: 홀을 넓히고, 마구 싸우세요.",
"* Knock Away (|cff71d5ff|Hspell:18670|h[Knock Away]|h|r)은 가까운 적을 날려 버리고, 그의 Mortal Wound (|cff71d5ff|Hspell:24573|h[Mortal Wound]|h|r)은 탱커에게 쌓입니다: 두 탱커가 번갈아 공격하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12435"] = { "폭군 서슬송곳니",
"* 1단계: 파티는 한 번에 한 마리의 알을 부수고, 그 사이에 몬스터와 드레이크의 파도가 쏟아짐 — 헤드를 사용하여 AoE 공격하고 탱커에게 치유.",
"* 2단계, 알이 모두 사라졌을 때, 보스가 홀로 등장: 그의 파이어볼 볼리(|cff71d5ff|Hspell:22425|h[Fireball Volley]|h|r)는 AoE 공격이며, 콘플래그레이션(|cff71d5ff|Hspell:23023|h[Conflagration]|h|r)은 표시된 지역을 불태움 — 넓게 퍼지고 치유."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["13020"] = { "타락한 밸라스트라즈",
"* 그의 불 숨결 (|cff71d5ff|Hspell:23461|h[불 숨결]|h|r)은 탱커를 때립니다: 강력한 치유와 회피 동작이 필요합니다.",
"* 붉은 에너지의 핵심 (|cff71d5ff|Hspell:18173|h[붉은 에너지의 핵심]|h|r)은 전체 파티에 마나와 속도를 부여합니다: 전투는 최고 속도로 진행되며, DPS는 멈추지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["14020"] = { "크로마구스",
"* 그의 두 호흡은 홀을 따라 무작위로 회전합니다: 각각 자신의 길을 그립니다 — 근접 공격자는 어느 쪽이 닿는지에 따라 위치를 조정합니다.",
"* 네 가지 브루드 영향: 빨간색 (|cff71d5ff|Hspell:23155|h[Brood Affliction: Red]|h|r)은 질병이며 아무도 제거하지 못하면 그를 치유합니다; 녹색 (|cff71d5ff|Hspell:23169|h[Brood Affliction: Green]|h|r)은 독입니다; 파란색 (|cff71d5ff|Hspell:23153|h[Brood Affliction: Blue]|h|r)은 마법입니다; 검은색 (|cff71d5ff|Hspell:23154|h[Brood Affliction: Black]|h|r)은 저주입니다 — 선상에 있는 모든 종류를 제거합니다.",
"* 그의 광란 (|cff71d5ff|Hspell:23128|h[Frenzy]|h|r)은 진정 효과에 의해 차분해지고, 격노 (|cff71d5ff|Hspell:23537|h[Enrage]|h|r)은 마지막에 도착합니다: DPS는 시간을 경쟁합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["14601"] = { "에본로크",
"* 그의 섀도우 플레임 (22539)과 윙 버프 (23339)는 파이어메우를 따라: 기둥 뒤에.",
"* 그의 섀도우 (|cff71d5ff|Hspell:23340|h[섀도우 오브 에본록]|h|r)는 탱을 표기: 표기가 있는 경우, 드래곤에게 히트하면 치유 — 두 탱과 즉시 넘겨주기."
};

-- Temple of Ahn'Qiraj : Zona 531 (classic) --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15263"] = { "예언자 스케람",
"* 그는 방을 가로질러 순간이동 (|cff71d5ff|Hspell:20449|h[Teleport]|h|r) 하고 자신의 모습과 똑같은 DUPLICATES 무리를 소환 (|cff71d5ff|Hspell:747|h[Summon Duplicate]|h|r) 합니다: 탱커는 원본을 잡고, 클론들은 끝까지 이동합니다.",
"* 그의 마인드 컨트롤 (|cff71d5ff|Hspell:785|h[Mind Control]|h|r) 에 의해 플레이어가 한 명을 제어당합니다: 마커가 있는 플레이어는 치유를 받으면서, 나머지는 그를 풀어줍니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15275"] = { "쌍왕",
"* 쌍둥이는 계속 위치를 바꾸는 것 (|cff71d5ff|Hspell:800|h[텔레포트]|h|r): 탱커는 다시 자리 잡고, DPS는 분산한다.",
"* 근접 쌍둥이는 탱커를 불안정하게 만든다 (|cff71d5ff|Hspell:26613|h[언밸런싱 스트라이크]|h|r) 그리고 다른 쌍둥이는 캐스터를 공격한다 — 한 쌍당 한 명의 탱커.",
"* 변이된 곤충 (|cff71d5ff|Hspell:802|h[뮤테이트 버그]|h|r)은 바닥에서 기어 나온다 — 쌍둥이를 잊지 않고 헤드 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15276"] = { "쌍왕",
"* 쌍둥이는 계속 위치를 바꾸는 것 (|cff71d5ff|Hspell:800|h[텔레포트]|h|r): 탱커는 다시 자리 잡고, DPS는 분산한다.",
"* 근접 쌍둥이는 탱커를 불안정하게 만든다 (|cff71d5ff|Hspell:26613|h[언밸런싱 스트라이크]|h|r) 그리고 다른 쌍둥이는 캐스터를 공격한다 — 한 쌍당 한 명의 탱커.",
"* 변이된 곤충 (|cff71d5ff|Hspell:802|h[뮤테이트 버그]|h|r)은 바닥에서 기어 나온다 — 쌍둥이를 잊지 않고 헤드 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15299"] = { "비시두스",
"* 독 공격 ({|cff71d5ff|Hspell:25991|h[Poison Bolt Volley]|h|r)은 파동으로 공격하며, 치유사는 리듬을 유지해야 합니다.",
"* FROST는 그를 얼립니다: FROST 스쿨은 그를 얼릴 때까지 공격하며, 물리적인 BREAK는 그를 파괴합니다 — 근접 공격은 얼음이 사라질 때 파괴합니다.",
"* 그는 재형성되고, 사이클이 반복됩니다: 방 전체에 인내심을 가지고, 마나를 회복하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15509"] = { "공주 후후란",
"* 그녀의 독 공격 (|cff71d5ff|Hspell:26180|h[Wyvern Sting]|h|r)은 플레이어를 표적으로 삼고, 그녀의 독 공격 (|cff71d5ff|Hspell:26053|h[Noxious Poison]|h|r)은 그룹을 덮습니다: 치유를 하고, 풀에서 벗어나세요.",
"* 그녀의 산성 공격은 탱커를 공격 (|cff71d5ff|Hspell:26050|h[Acid Spit]|h|r)하고, 그녀의 혼란 상태 (|cff71d5ff|Hspell:26051|h[Frenzy]|h|r)는 \"트랜킬라이징 샷\"을 사용한 헌터에게 영향을 줍니다.",
"* 30%에서 그녀는 퓨리 (|cff71d5ff|Hspell:26068|h[Berserk]|h|r) 상태로 전환됩니다: 최대 속도로 공격할 때까지 — DPS와 치유는 가장자리에서 수행합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15510"] = { "불굴의 판크리스",
"* 그의 엔태글(|cff71d5ff|Hspell:720|h[Entangle]|h|r)은 여러 개의 묶음을 남깁니다: 실을 자르지 않고 끈을 끊으세요.",
"* 치명적인 상처(|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r)는 탱커에게 적용됩니다: 두 명의 탱커; 그의 소환 웜(|cff71d5ff|Hspell:25831|h[Worm Call]|h|r|cff71d5ff|Hspell:26631|h[Worm Spawn]|h|r)은 한 번에 여러 번 등장합니다 — 머리를 사용하여 AoE 공격."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15511"] = { "실리티드 왕족",
"* 세 왕을 한 번에: 탱커는 순서대로 시작하고, 근접 딜러는 한 명씩 처치합니다.",
"* 그들의 치유 (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r)는 매번 방해됩니다; 공포 (|cff71d5ff|Hspell:26580|h[Fear]|h|r)는 그룹을 흩뜨립니다 - 흩어져서 유지합니다.",
"* 독 발사 (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r)는 근접 딜러를 공격합니다: 치유를 통해 독을 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15516"] = { "전투감시병 살투라",
"* 그녀의 회전 공격 (|cff71d5ff|Hspell:26083|h[Whirlwind]|h|r)은 방을 가로질러 움직이며, 즉석에서 마크를 변경합니다: 공격 대상은 시작 시 후퇴하고, 탱커는 그녀가 전환될 때 다시 제압합니다.",
"* 건강이 낮을 때, 그녀는 광란 상태가 됩니다 (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): DPS는 공격하고, 치유사는 지속 공격을 유지합니다.",
"* 그녀의 왕실 경비병이 함께 옵니다: 탱커는 분리됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15517"] = { "아우로",
"* His Sweep (|cff71d5ff|Hspell:26103|h[Sweep]|h|r)은 탱을 방으로 던져 벽에 붙게 만듭니다: 그가 사라질 때, AoE 공격을 자유롭게 할 수 있습니다.",
"* 그는 약 3분마다 잠수하고 바닥에 스카라브들이 쏟아집니다: 그는 사라질 때, AoE 공격을 자유롭게 할 수 있습니다.",
"* His Fury (|cff71d5ff|Hspell:26615|h[Berserk]|h|r)는 마지막에 나타납니다: DPS는 빠르게 달려가서 먼저 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15543"] = { "실리티드 왕족",
"* 세 왕을 한 번에: 탱커는 순서대로 시작하고, 근접 딜러는 한 명씩 처치합니다.",
"* 그들의 치유 (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r)는 매번 방해됩니다; 공포 (|cff71d5ff|Hspell:26580|h[Fear]|h|r)는 그룹을 흩뜨립니다 - 흩어져서 유지합니다.",
"* 독 발사 (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r)는 근접 딜러를 공격합니다: 치유를 통해 독을 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15544"] = { "실리티드 왕족",
"* 세 왕을 한 번에: 탱커는 순서대로 시작하고, 근접 딜러는 한 명씩 처치합니다.",
"* 그들의 치유 (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r)는 매번 방해됩니다; 공포 (|cff71d5ff|Hspell:26580|h[Fear]|h|r)는 그룹을 흩뜨립니다 - 흩어져서 유지합니다.",
"* 독 발사 (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r)는 근접 딜러를 공격합니다: 치유를 통해 독을 사용합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15589"] = { "크툰",
"* 눈이 회전하는 광선으로 열립니다: 파티는 서로 흩어져 광선에 맞지 않도록 합니다.",
"* 발톱과 눈 촉수가 몇 초마다 솟아납니다: 발톱은 근접 공격, 눈은 원거리 공격 — 지연 없이 정리하고 거인들을 탱커에게 집중합니다.",
"* 약화 창(약 45초)은 DPS가 풀 스피드로 때리는 시간입니다: 남은 것을 모두 정리합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15727"] = { "크툰",
"* 눈이 회전하는 광선으로 열립니다: 파티는 서로 흩어져 광선에 맞지 않도록 합니다.",
"* 발톱과 눈 촉수가 몇 초마다 솟아납니다: 발톱은 근접 공격, 눈은 원거리 공격 — 지연 없이 정리하고 거인들을 탱커에게 집중합니다.",
"* 약화 창(약 45초)은 DPS가 풀 스피드로 때리는 시간입니다: 남은 것을 모두 정리합니다."
};

-- Ruins of Ahn'Qiraj : Zona 509 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15339"] = { "무적의 오시리안",
"* 그의 최상위 모드 (|cff71d5ff|Hspell:25176|h[Supreme Mode]|h|r)는 다음 크리스탈이 나타날 때까지 무적: 방은 빛을 켜기 위해 달려갑니다.",
"* 모든 크리스탈은 약점을 떨어뜨립니다 (불 25177, 얼음 25178, 자연 25180, 마법 25181, 그림자 25183): DPS는 해당 스쿨의 공격을 즉시 사용합니다.",
"* 사이클론 (|cff71d5ff|Hspell:25189|h[Cyclone]|h|r)은 표시된 곳을 회전시키고, 그의 혀의 저주 (|cff71d5ff|Hspell:25195|h[Curse of Tongues]|h|r)는 캐스터를 느리게 만듭니다 - 저주를 사용하여 제거합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15340"] = { "모암",
"* 그의 아우라의 마나 소모는 캐스터에게 마나를 소모시키고, 주의 깊은 DPS에게 영향을 미칩니다.",
"* 그의 스톤 폼 (|cff71d5ff|Hspell:25685|h[Stone Form]|h|r)는 낮은 체력에서 전투를 멈추고, 미니언을 깨우는 데 사용됩니다: 그는 석화되기 전에 DPS를 밀어내세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15341"] = { "장군 라작스",
"* 웨이브의 깃발 행렬: 깃발을 가진 첫 번째, 마지막에는 장군 자신 — 탱커는 각 웨이브를 시작하고 순서대로 정리됩니다.",
"* 그의 썬더 크래시 (|cff71d5ff|Hspell:25599|h[Thunder Crash]|h|r)는 영역에 대한 처벌: 흩뿌리기; 플레그 클라우드는 땅에 닿음 — 수영장에서 벗어나세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15348"] = { "쿠린낙스",
"* 그의 모래 함정 (|cff71d5ff|Hspell:25656|h[Sand Trap]|h|r)은 지정된 대상에게 영향을 미치며: 탱커가 그 위에 닿으면 치유를 제공합니다.",
"* 그의 치명적인 상처 (|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r)는 탱커에게 적용되며: 두 탱커가 번갈아 공격하며, 그의 광란 (|cff71d5ff|Hspell:26527|h[Frenzy]|h|r)은 라인 끝에 DPS가 공격할 때 발동됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15369"] = { "사냥꾼 아야미스",
"* 그의 패러라이즈 (|cff71d5ff|Hspell:25725|h[Paralyze]|h|r)는 ALTAR 희생을 나타내며: 패러라이즈된 동안 즉각적인 치유 효과를 발휘합니다.",
"* 건강이 낮을 때 그는 공중에 떠다니며: 위쪽에는 범위 공격만, 근접 공격은 바닥에 머뭅니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15370"] = { "먹보 부루",
"* 그는 플레이어를 선택하고 추격합니다: 추격당하는 대상은 그룹에서 벗어나도록 도망칩니다.",
"* 그의 알이 그의 길을 따라 터지고 그를 다치게 합니다: 추격당하는 대상은 그를 통해 끝까지 밀어냅니다.",
"* 그의 Dismember (|cff71d5ff|Hspell:96|h[Dismember]|h|r)는 탱크에게 쌓입니다: 강력한 홀드를 할 때 씹습니다."
};

-- Naxxramas : Zona 533 (classic) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15928"] = { "타디우스",
"* 두 개의 컨스트럭트가 탱커에게 폭발 공격으로 시작: 흩어져서, 균등하게 치고, 치유도 제공합니다.",
"* 폴라리티 시프트 (|cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r)는 전체 그룹에 영향을 미칩니다: 한쪽에는 긍정, 다른 쪽에는 부정 — 아무도 측을 바꾸지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15931"] = { "그라불루스",
"* Mutating Injection (|cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r)은 플레이어를 마크하고, Cloud (|cff71d5ff|Hspell:28240|h[Poison Cloud]|h|r)는 폭발할 때 독성 상태가 됩니다: 마크된 플레이어는 폭발하기 전에 그룹에서 멀어집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15932"] = { "글루스",
"* 데시메이트(|cff71d5ff|Hspell:28374|h[Decimate]|h|r)가 파티 전체를 5% 체력으로 떨어뜨립니다: 필요할 때 강력한 치유.",
"* 룸의 좀비들이 그것을 향해 걷고, 만지는 순간 치유합니다: 길을 막고 AoE로 마무리.",
"* 펜트리(|cff71d5ff|Hspell:28371|h[Frenzy]|h|r)는 트랜퀼라이징 샷 아래에서 멈추고, 앙라지(|cff71d5ff|Hspell:26662|h[Enrage]|h|r)는 끝에 있습니다: DPS를 마무리."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15936"] = { "부정의 헤이건",
"* 바닥이 순환 공격을 시작합니다: 그의 불결한 춤 (|cff71d5ff|Hspell:29350|h[Unclean Dance]|h|r)이 파티를 네 개의 아크 패턴을 통해 안내합니다 — 움직임을 익히고 바닥을 주시하십시오.",
"* 때때로 그는 플레이어 옆으로 점프합니다 (|cff71d5ff|Hspell:30211|h[Teleport]|h|r): 표시된 런과 즉석 치유.",
"* 그의 불결한 고통 (|cff71d5ff|Hspell:29998|h[Unclean Affliction]|h|r)은 접촉된 대상에 영향을 미칩니다: 질병을 조기에 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15952"] = { "맥스나",
"* 그녀의 웹 랩 (|cff71d5ff|Hspell:28622|h[Web Wrap]|h|r) 플레이어를 감싸: 즉시 웹을 자르세요.",
"* 그녀의 스파이더링 (|cff71d5ff|Hspell:29434|h[Summon Spiderlings]|h|r) 매 웹 회전마다 나타납니다: 그들의 길을 AoE로 공격하세요.",
"* 스프레이 (|cff71d5ff|Hspell:29484|h[Web Spray]|h|r) 매 회전마다 전체 그룹을 stun하고 그녀의 프레니 (|cff71d5ff|Hspell:28747|h[Frenzy]|h|r) 끝에 噛습니다: DPS는 30%로 감소합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15953"] = { "귀부인 팰리나",
"* The Widow's Embrace (|cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r) 은 일시적으로 그녀를 무력화시키고: 그녀의 추종자들을 떨어뜨리면 그녀를 강화합니다.",
"* 포옹이 끝나면 그녀의 Frenzy (|cff71d5ff|Hspell:28131|h[Frenzy]|h|r)가 발동됩니다: 강력한 치유와 마무리 DPS."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15954"] = { "역병술사 노스",
"* 그는 각 턴마다 발코니로 순간이동합니다 (|cff71d5ff|Hspell:29208|h[Blink]|h|r): 뼈 미니언은 아래에 남아 있습니다 — AoE는 그들을 동시에 제거합니다.",
"* 그의 전염 마법 (|cff71d5ff|Hspell:29213|h[Curse of the Plaguebringer]|h|r)은 표시된 대상에게 영향을 미칩니다: 즉시 제거하거나, 돌아올 때 폭발합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15956"] = { "아눕레칸",
"* Locust Swarm (|cff71d5ff|Hspell:28785|h[Locust Swarm]|h|r)이 방을 휩쓸 때: 중앙 원에 들어가고 지나갈 때 그립으로 돌아가세요.",
"* Impale (|cff71d5ff|Hspell:28783|h[Impale]|h|r)는 가까운 적을 찌르기: 마진과 단호한 탱킹으로 교전하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15989"] = { "사피론",
"* His Life Drain (|cff71d5ff|Hspell:28542|h[Life Drain]|h|r) 공격 대상에게 적용: 즉시 저주 해제.",
"* His ice blocks (|cff71d5ff|Hspell:28522|h[Icebolt]|h|r)은 계속 서 있을 때: 드래곤이 다시 숨을 쉴 때, 한 명을 껴안아, 그의 깊은 호흡이 방 전체를 쓸어버릴 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15990"] = { "켈투자드",
"* 그의 켈'추자드의 정신 지배는 (|cff71d5ff|Hspell:28410|h[Chains of Kel'Thuzad]|h|r) 여러 번에 걸쳐 지속됩니다: 묶인 대상은 무자비하게 CC됩니다.",
"* 그림자 균열 (|cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r)은 대상에게 닿으면 stun을 겁니다: 이제 즉시.",
"* 얼음 폭탄 (|cff71d5ff|Hspell:27808|h[Frost Blast]|h|r)은 대상에게 얼려, 주변의 치유에도 영향을 줍니다.",
"* 마지막에, 사원들이 나타납니다: 탱커가 그들을 처리하고, 전투는 계속됩니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16011"] = { "로데브",
"* 힐링 스포어 (|cff71d5ff|Hspell:29234|h[Fungal Creep]|h|r)은 리듬에 따라 팝됩니다: 근접 공격은 떨어지는 즉시 섭취합니다 — 이것이 전투의 치유입니다.",
"* 필연적인 파멸 (|cff71d5ff|Hspell:29204|h[Inevitable Doom]|h|r)은 네크로틱 오라의 시계에 따라 마크를 씹습니다: 치유는 억제되고 DPS는 달립니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16028"] = { "패치워크",
"* 그의 혐오스러운 공격은 범위 내에서 가장 많은 HP를 가진 메이지를 표적으로 삼습니다: 같은 HP 수준의 모든 사람, 심지어 치유 대상도.",
"* HP가 절반으로 줄어들면 그의 광란 (|cff71d5ff|Hspell:28131|h[Frenzy]|h|r)이 발동됩니다: 탱커가 강하게 버티고 치유 효과가 두 배로 증가합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16060"] = { "영혼 착취자 고딕",
"* 방은 살아있는 부분과 죽은 부분으로 나뉘어져 있으며, 각 측면은 합쳐질 때까지 자신의 절반을 유지합니다.",
"* 그의 점프는 방을 가로질러 이동합니다 (|cff71d5ff|Hspell:28025|h[텔레포트]|h|r -> |cff71d5ff|Hspell:28026|h[텔레포트 죽은]|h|r): 한 번 합쳐지면, 탱커는 그를 고정하고 DPS는 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16061"] = { "훈련교관 라주비어스",
"* UNDERSTUDIES는 팅을 사용하여 그를 데려갑니다: 회전에서 2명, 실제 탱커는 그를 공격하지 못합니다.",
"* 그의 방해 소리 (|cff71d5ff|Hspell:29107|h[Disrupting Shout]|h|r)는 근접 공격자를 휩쓸어냅니다: 소리가 들릴 때 벗어납니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16062"] = { "네 명의 기사",
"* 사방에 네 명, 각자 한쪽으로: 탱커는 2명씩 묶어 모으고, 딜러는 원을 따라 분산.",
"* 메테오 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 공격: 각 라이더 중 가장 가까운—탱커가 경계.",
"* 와이드 존 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 발 아래에 나타남: 한 번에 원 밖으로."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16063"] = { "네 명의 기사",
"* 사방에 네 명, 각자 한쪽으로: 탱커는 2명씩 묶어 모으고, 딜러는 원을 따라 분산.",
"* 메테오 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 공격: 각 라이더 중 가장 가까운—탱커가 경계.",
"* 와이드 존 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 발 아래에 나타남: 한 번에 원 밖으로."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16064"] = { "네 마의 기사",
"* 사방에 네 명, 각자 한쪽으로: 탱커는 2명씩 묶어 모으고, 딜러는 원을 따라 분산.",
"* 메테오 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 공격: 각 라이더 중 가장 가까운—탱커가 경계.",
"* 와이드 존 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 발 아래에 나타남: 한 번에 원 밖으로."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16065"] = { "네 명의 기사",
"* 사방에 네 명, 각자 한쪽으로: 탱커는 2명씩 묶어 모으고, 딜러는 원을 따라 분산.",
"* 메테오 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 공격: 각 라이더 중 가장 가까운—탱커가 경계.",
"* 와이드 존 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 발 아래에 나타남: 한 번에 원 밖으로."
};

-- Blackrock Depths : Zona 2792 (10-15 band remaster) --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226302"] = { "사자 화염채찍",
"* 지속적인 화염 폭발: 근접 공격에 대한 회전 또는 리듬적인 치유.",
"* 불의 영혼: 그는 방의 문양에서 원소를 소환합니다. 누구든지 그에게 다가가면 +5%의 피해 및 크기 버프를 제공하고, 최대 50개의 스택: 그들의 길을 막고 이동 중에 처치하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226303"] = { "밸가르",
"* Magma Splash: 3초마다 24의 피해를 입히고, 3회까지 적으로 쌓을 수 있습니다: 탱커 회전 또는 손에 있는 디스펠 사용.",
"* Summon Spawn: 무작위로 화염 폭발을 사용하고, 늪 몬스터를 던집니다: 탱커가 잡고 빠르게 죽습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226304"] = { "불의 군주 인센디우스",
"* 엘리먼트 마스터의 저주: 100-132의 화염 저항을 30초 동안, 최대 3번까지 감소시킵니다: 표적은 불로부터 멀어집니다.",
"* 강력한 공격: 탱커를 뒤로 날려버리는 공격 (주변에 용암): 벽에 기대게 됩니다.",
"* 화염 폭풍은 주변 지역에 30초 동안 피해를 주고, 그의 폭발 파동은 20미터까지 굴러갑니다: 근접 딜러는 나가고, 힐러는 공격을 막습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226305"] = { "제왕 다그란 타우릿산",
"* 불의 아바타: 10초 동안 모든 마법에 완전히 면역이며, 그의 공격은 불을 추가합니다: 캐스터는 그 동안 뒤로 물러서야 합니다.",
"* ธอ어리산의 손: 5초 동안 멈추게 하는 불 공격: 덩어리 없이 사용하는 것이 더 좋으므로 한 번에 여러 명이 죽지 않습니다.",
"* 아이언포: 그의 전설적인 망치에서 파생된 수동 공격, 5초 동안 최대 3개의 추가 공격을 연결하고, 크리티컬 피해가 10% 증가합니다: 탱커는 치유를 받으며 공격을 따라갑니다.",
"* 프린세스 모이라 브론즈비어드가 그의 옆에서 싸웁니다: 그는 때때로 그를 치유하고 성스러운 마법과 그림자 마법으로 공격합니다: 그녀를 통제하거나, 그룹이 경쟁하는 경우 그 전에 죽입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226306"] = { "골렘 군주 아젤마크",
"* Chain Lightning는 가까운 플레이어 간에 점프하며: 지속되는 동안에는 분산되도록.",
"* 그는 두 개의 구조물과 함께 싸우며: 탱커는 그것들을 분리하고 위협을 공유합니다.",
"* 밴드 버전에 주의: 그의 영혼은 쓰러진 고블린을 소유할 수 있으며, 쓰러진 몸이 항상 전투를 끝내지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226307"] = { "칠",
"* 용암 지하실에 7명의 골드워프 고블린이 한 번에 여러 명으로 나타나, 각자 고유한 클래스 기술을 사용한다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머, 그리고 턴마다 배틀 셔트와 쇼크웨이브를 사용한다.",
"* 워록 둠렐: 섀도 볼트와 저주, 인큐버스 또는 바이드워커를 소환하고 페어를 해제하고 소환체를 죽인다.",
"* 로거 도프렐: 뒤에서 독을 사용하는 고우지, 그리고 바니쉬: 뒤를 노출하지 않고 움직인다.",
"* 쉐만 글룸렐: 토템, 어스 샷, 버프 제거: 토템이 터질 때 죽는다.",
"* 매지 헤이트렐: 프라이스트 쇼크, 블리자드, 폴리모프: 폴리모프를 끊고 블리자드에서 벗어난다.",
"* 헌터 시스렐: 원거리에서 사격, 함정 설치, 그리고 야생 펫을 소환: 신중하게 거리를 좁힌다.",
"* 성직자 빌렐: 플래시 히얼, 파워 워드: 쉴드를 사용하고 마인드 컨트롤: 우선적으로 치유가 중단된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226308"] = { "칠",
"* 용암 지하실에 7명의 골드워프 고블린이 한 번에 여러 명으로 나타나, 각자 고유한 클래스 기술을 사용한다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머, 그리고 턴마다 배틀 셔트와 쇼크웨이브를 사용한다.",
"* 워록 둠렐: 섀도 볼트와 저주, 인큐버스 또는 바이드워커를 소환하고 페어를 해제하고 소환체를 죽인다.",
"* 로거 도프렐: 뒤에서 독을 사용하는 고우지, 그리고 바니쉬: 뒤를 노출하지 않고 움직인다.",
"* 쉐만 글룸렐: 토템, 어스 샷, 버프 제거: 토템이 터질 때 죽는다.",
"* 매지 헤이트렐: 프라이스트 쇼크, 블리자드, 폴리모프: 폴리모프를 끊고 블리자드에서 벗어난다.",
"* 헌터 시스렐: 원거리에서 사격, 함정 설치, 그리고 야생 펫을 소환: 신중하게 거리를 좁힌다.",
"* 성직자 빌렐: 플래시 히얼, 파워 워드: 쉴드를 사용하고 마인드 컨트롤: 우선적으로 치유가 중단된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226309"] = { "칠",
"* 용암 지하실에 7명의 골드워프 고블린이 한 번에 여러 명으로 나타나, 각자 고유한 클래스 기술을 사용한다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머, 그리고 턴마다 배틀 셔트와 쇼크웨이브를 사용한다.",
"* 워록 둠렐: 섀도 볼트와 저주, 인큐버스 또는 바이드워커를 소환하고 페어를 해제하고 소환체를 죽인다.",
"* 로거 도프렐: 뒤에서 독을 사용하는 고우지, 그리고 바니쉬: 뒤를 노출하지 않고 움직인다.",
"* 쉐만 글룸렐: 토템, 어스 샷, 버프 제거: 토템이 터질 때 죽는다.",
"* 매지 헤이트렐: 프라이스트 쇼크, 블리자드, 폴리모프: 폴리모프를 끊고 블리자드에서 벗어난다.",
"* 헌터 시스렐: 원거리에서 사격, 함정 설치, 그리고 야생 펫을 소환: 신중하게 거리를 좁힌다.",
"* 성직자 빌렐: 플래시 히얼, 파워 워드: 쉴드를 사용하고 마인드 컨트롤: 우선적으로 치유가 중단된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226310"] = { "칠",
"* 용암 지하실에 7명의 골드워프 고블린이 한 번에 여러 명으로 나타나, 각자 고유한 클래스 기술을 사용한다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머, 그리고 턴마다 배틀 셔트와 쇼크웨이브를 사용한다.",
"* 워록 둠렐: 섀도 볼트와 저주, 인큐버스 또는 바이드워커를 소환하고 페어를 해제하고 소환체를 죽인다.",
"* 로거 도프렐: 뒤에서 독을 사용하는 고우지, 그리고 바니쉬: 뒤를 노출하지 않고 움직인다.",
"* 쉐만 글룸렐: 토템, 어스 샷, 버프 제거: 토템이 터질 때 죽는다.",
"* 매지 헤이트렐: 프라이스트 쇼크, 블리자드, 폴리모프: 폴리모프를 끊고 블리자드에서 벗어난다.",
"* 헌터 시스렐: 원거리에서 사격, 함정 설치, 그리고 야생 펫을 소환: 신중하게 거리를 좁힌다.",
"* 성직자 빌렐: 플래시 히얼, 파워 워드: 쉴드를 사용하고 마인드 컨트롤: 우선적으로 치유가 중단된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226311"] = { "칠",
"* 용암 지하실에 7명의 골드워프 고블린이 한 번에 여러 명으로 나타나, 각자 고유한 클래스 기술을 사용한다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머, 그리고 턴마다 배틀 셔트와 쇼크웨이브를 사용한다.",
"* 워록 둠렐: 섀도 볼트와 저주, 인큐버스 또는 바이드워커를 소환하고 페어를 해제하고 소환체를 죽인다.",
"* 로거 도프렐: 뒤에서 독을 사용하는 고우지, 그리고 바니쉬: 뒤를 노출하지 않고 움직인다.",
"* 쉐만 글룸렐: 토템, 어스 샷, 버프 제거: 토템이 터질 때 죽는다.",
"* 매지 헤이트렐: 프라이스트 쇼크, 블리자드, 폴리모프: 폴리모프를 끊고 블리자드에서 벗어난다.",
"* 헌터 시스렐: 원거리에서 사격, 함정 설치, 그리고 야생 펫을 소환: 신중하게 거리를 좁힌다.",
"* 성직자 빌렐: 플래시 히얼, 파워 워드: 쉴드를 사용하고 마인드 컨트롤: 우선적으로 치유가 중단된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226312"] = { "칠",
"* 용암 지하실에 7명의 골드워프 고블린이 한 번에 여러 명으로 나타나, 각자 고유한 클래스 기술을 사용한다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머, 그리고 턴마다 배틀 셔트와 쇼크웨이브를 사용한다.",
"* 워록 둠렐: 섀도 볼트와 저주, 인큐버스 또는 바이드워커를 소환하고 페어를 해제하고 소환체를 죽인다.",
"* 로거 도프렐: 뒤에서 독을 사용하는 고우지, 그리고 바니쉬: 뒤를 노출하지 않고 움직인다.",
"* 쉐만 글룸렐: 토템, 어스 샷, 버프 제거: 토템이 터질 때 죽는다.",
"* 매지 헤이트렐: 프라이스트 쇼크, 블리자드, 폴리모프: 폴리모프를 끊고 블리자드에서 벗어난다.",
"* 헌터 시스렐: 원거리에서 사격, 함정 설치, 그리고 야생 펫을 소환: 신중하게 거리를 좁힌다.",
"* 성직자 빌렐: 플래시 히얼, 파워 워드: 쉴드를 사용하고 마인드 컨트롤: 우선적으로 치유가 중단된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226313"] = { "칠",
"* 용암 지하실에 7명의 골드워프 고블린이 한 번에 여러 명으로 나타나, 각자 고유한 클래스 기술을 사용한다.",
"* 워리어 앙겔렐: 탱커에게 어그러스트와 샌더 아머, 그리고 턴마다 배틀 셔트와 쇼크웨이브를 사용한다.",
"* 워록 둠렐: 섀도 볼트와 저주, 인큐버스 또는 바이드워커를 소환하고 페어를 해제하고 소환체를 죽인다.",
"* 로거 도프렐: 뒤에서 독을 사용하는 고우지, 그리고 바니쉬: 뒤를 노출하지 않고 움직인다.",
"* 쉐만 글룸렐: 토템, 어스 샷, 버프 제거: 토템이 터질 때 죽는다.",
"* 매지 헤이트렐: 프라이스트 쇼크, 블리자드, 폴리모프: 폴리모프를 끊고 블리자드에서 벗어난다.",
"* 헌터 시스렐: 원거리에서 사격, 함정 설치, 그리고 야생 펫을 소환: 신중하게 거리를 좁힌다.",
"* 성직자 빌렐: 플래시 히얼, 파워 워드: 쉴드를 사용하고 마인드 컨트롤: 우선적으로 치유가 중단된다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226314"] = { "제왕 다그란 타우릿산",
"* 불의 아바타: 10초 동안 모든 마법에 완전히 면역이며, 그의 공격은 불을 추가합니다: 캐스터는 그 동안 뒤로 물러서야 합니다.",
"* ธอ어리산의 손: 5초 동안 멈추게 하는 불 공격: 덩어리 없이 사용하는 것이 더 좋으므로 한 번에 여러 명이 죽지 않습니다.",
"* 아이언포: 그의 전설적인 망치에서 파생된 수동 공격, 5초 동안 최대 3개의 추가 공격을 연결하고, 크리티컬 피해가 10% 증가합니다: 탱커는 치유를 받으며 공격을 따라갑니다.",
"* 프린세스 모이라 브론즈비어드가 그의 옆에서 싸웁니다: 그는 때때로 그를 치유하고 성스러운 마법과 그림자 마법으로 공격합니다: 그녀를 통제하거나, 그룹이 경쟁하는 경우 그 전에 죽입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226315"] = { "불의 군주 록코르",
"* Ground Tremor은 20미터 이내의 전체 파티를 2초 동안 둔화시킵니다: 방을 중심으로 돌아다니지 마세요.",
"* Earth Shock은 중에 주문을 사용하는 사람을 공격합니다: 주문을 사용하는 플레이어는 여유를 가지고 주문을 완료합니다.",
"* Flame Shock: 즉시 화염 피해 + 3초마다 화염 피해: 치유사는 화염 피해를 주의해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226316"] = { "사령관 앵거포지",
"* Sunder Armor 점진적으로 탱커를 약화시킵니다: 스택될 때 탱커를 교대합니다.",
"* Flurry: 그의 크리트 속도가 그의 공격 속도를 높이고, 그의 Enrage는 신체적 고통을 증가시킵니다: 치유사는 그와 함께 공격을 감당합니다.",
"* Intruder Alert! 40%: 그는 요새에 보충병 (Anvilrage Reservists)과 의사를 소환하고, 의사는 그를 치유합니다: 먼저 의사를 죽이고, 모든 사람이 죽기 전에 의사를 죽입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230216"] = { "골렘 군주 아젤마크",
"* Chain Lightning는 가까운 플레이어 간에 점프하며: 지속되는 동안에는 분산되도록.",
"* 그는 두 개의 구조물과 함께 싸우며: 탱커는 그것들을 분리하고 위협을 공유합니다.",
"* 밴드 버전에 주의: 그의 영혼은 쓰러진 고블린을 소유할 수 있으며, 쓰러진 몸이 항상 전투를 끝내지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230217"] = { "골렘 군주 아젤마크",
"* Chain Lightning는 가까운 플레이어 간에 점프하며: 지속되는 동안에는 분산되도록.",
"* 그는 두 개의 구조물과 함께 싸우며: 탱커는 그것들을 분리하고 위협을 공유합니다.",
"* 밴드 버전에 주의: 그의 영혼은 쓰러진 고블린을 소유할 수 있으며, 쓰러진 몸이 항상 전투를 끝내지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230218"] = { "골렘 군주 아젤마크",
"* Chain Lightning는 가까운 플레이어 간에 점프하며: 지속되는 동안에는 분산되도록.",
"* 그는 두 개의 구조물과 함께 싸우며: 탱커는 그것들을 분리하고 위협을 공유합니다.",
"* 밴드 버전에 주의: 그의 영혼은 쓰러진 고블린을 소유할 수 있으며, 쓰러진 몸이 항상 전투를 끝내지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230219"] = { "골렘 군주 아젤마크",
"* Chain Lightning는 가까운 플레이어 간에 점프하며: 지속되는 동안에는 분산되도록.",
"* 그는 두 개의 구조물과 함께 싸우며: 탱커는 그것들을 분리하고 위협을 공유합니다.",
"* 밴드 버전에 주의: 그의 영혼은 쓰러진 고블린을 소유할 수 있으며, 쓰러진 몸이 항상 전투를 끝내지 않습니다."
};
P.ko = ko;
