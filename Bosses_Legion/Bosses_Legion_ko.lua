--[[
	Bosses_Legion_ko.lua
		Datos en KO del pack Legion.
		Fichero creado por el editor web (2026-10-16); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ko = {};
local pack = ko;


-- Neltharion's Lair : Zona 1458 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91003"] = { "로크모라",
"* |cff71d5ff|Hspell:188169|h[Razor Shards]|h|r: 라자 덩어리가 그의 결정에서 날아옵니다 - 덩어리가 흩날리는 것을 피하세요.",
"* |cff71d5ff|Hspell:188114|h[Shatter]|h|r: 그는 바위를 부수고 있습니다 - 폭발에 공간을 주고, 잔해를 피해 이동하세요.",
"* |cff71d5ff|Hspell:192800|h[Toxic Gas]|h|r: 독성 가스가 홀을 통해 퍼집니다 - 떠다니는 구름에 들어가지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91004"] = { "바위구체자 울라로그",
"* |cff71d5ff|Hspell:216290|h[Strike of the Mountain]|h|r: 그의 공격이 산에서 내려칩니다 - 충돌하는 공격을 피하십시오.",
"* |cff71d5ff|Hspell:193375|h[Bellow of the Deeps]|h|r: 그의 외침은 트로그를 소환합니다 - 공격을 먼저 처리하여 떼를 소환하지 않도록 하십시오.",
"* |cff71d5ff|Hspell:216249|h[Stance of the Mountain]|h|r: 그는 자세를 높이고 전투를 변경합니다 - 단계 변화에 대비하십시오.",
"* |cff71d5ff|Hspell:198496|h[Sunder]|h|r: 그의 썬더는 탱커의 플레이트를 쪼개 버립니다 - 탱킹 메커니즘: 방어 기술을 사용하여 교체하고 흡수하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91005"] = { "나락사스",
"* |cff71d5ff|Hspell:209906|h[Fixate]|h|r: 그의 픽세이트는 플레이어를 붙잡아 - 붙잡힌 대상은 해제되고 추가 대상이 폭발합니다.",
"* |cff71d5ff|Hspell:199176|h[Spiked Tongue]|h|r: 그의 스파이크된 혀가 앞쪽으로 뻗어 나갑니다 - 앞쪽은 닿지 않습니다.",
"* |cff71d5ff|Hspell:199817|h[Adds]|h|r: 의식가들이 그녀에게 먹이를 줍니다 - 의식을 파괴하고 빠르게 AoE 공격합니다.",
"* |cff71d5ff|Hspell:188494|h[Rancid Maw]|h|r: 그녀의 썩은 입은 바닥에 웅덩이를 만듭니다 - 절대 입 안쪽에 서 있지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91007"] = { "다르그룰",
"* |cff71d5ff|Hspell:200700|h[Molten Landslide]|h|r: 그의 용암 슬라이드는 동굴을 가로지르며 - 슬라이드가 쏟아지는 것을 피하십시오.",
"* |cff71d5ff|Hspell:200551|h[Crystal Spikes]|h|r: 플레이어 아래에 수정 스파이크가 솟아오르며 - 스파이크가 올라오는 것을 피하십시오.",
"* |cff71d5ff|Hspell:200154|h[Burning Hatred]|h|r: 그의 맹렬한 분노가 쌓이면서 격노하며 - 분노가 최고점에 도달하기 전에 밀어내십시오.",
"* |cff71d5ff|Hspell:200732|h[Molten Overload]|h|r: 그의 용암 과부하는 탱커에게 망치를 던집니다 - 탱커 메커니즘: 방어 기술로 교체하고 흡수하십시오."
};

-- Eye of Azshara : Zona 1456 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91784"] = { "전쟁군주 파르제쉬",
"* |cff71d5ff|Hspell:192072|h[보강병]|h|r: 그는 보강병을 소환합니다 - 빠르게 그들을 제압하여 뭉쳐서 공격하지 않도록 하세요.",
"* |cff71d5ff|Hspell:192094|h[침투하는 창]|h|r: 그는 땅에 창을 던져 - 창이 떨어지는 것을 피하세요.",
"* |cff71d5ff|Hspell:191900|h[충격파]|h|r: 그의 충격파가 플랫폼을 가로질러 뻗어 나갑니다 - 파도의 길을 벗어나세요.",
"* |cff71d5ff|Hspell:197502|h[치유]|h|r: 그는 자신을 치유합니다 - 치유를 매번 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91789"] = { "증오갈퀴 여군주",
"* |cff71d5ff|Hspell:193682|h[몬스터]|h|r: 그녀는 해파리를 소환합니다 - 탱커는 그들을 잡고, 레이드는 그들을 공격합니다.",
"* |cff71d5ff|Hspell:193698|h[마법]|h|r: 그녀의 저주는 플레이어를 감염시킵니다 - 감염된 플레이어는 레이드에서 멀어집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91797"] = { "국왕 딥비어드",
"* |cff71d5ff|Hspell:193093|h[Ground Slam]|h|r: 그의 땅 펀은 플랫폼을 흔들어 - 지지하고 균열에 닿지 않도록.",
"* |cff71d5ff|Hspell:193152|h[Quake]|h|r: 그의 흔들림이 땅을 통해 퍼져나갑니다 - 흔들림 속에서 계속 움직이세요.",
"* |cff71d5ff|Hspell:193051|h[Call the Seas]|h|r: 그는 파도처럼 굴러가는 파도를 불러옵니다 - 방을 휩쓸 때 각 파도를 피하세요.",
"* |cff71d5ff|Hspell:193018|h[Bubbles]|h|r: 그의 방울이 플레이어를 삼킵니다 - 파티는 방울을 열고 그들을 해방합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["91808"] = { "서펜트릭스",
"* |cff71d5ff|Hspell:191855|h[독성 상처]|h|r: 독성 상처는 탱커에게 쌓입니다 - 탱커는 그것이 썩기 전에 싸웁니다.",
"* |cff71d5ff|Hspell:191798|h[바람]|h|r: 바람은 플랫폼을 관통합니다 - 바람에 맞서 계속 움직이세요.",
"* |cff71d5ff|Hspell:191873|h[잠수]|h|r: 그는 잠수하고 다른 곳에서 떠오릅니다 - 잠수하는 동안 주의를 기울이고 깔끔하게 재참전하세요.",
"* |cff71d5ff|Hspell:191858|h[독성 수영장]|h|r: 독성 수영장은 그가 잠수할 때 나타납니다 - 수영장에 서 있지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["96028"] = { "아즈샤라의 분노",
"* |cff71d5ff|Hspell:192617|h[Massive Deluge]|h|r: 그의 거대한 폭풍은 플랫폼 전체를 덮쳐 - 레이드 재사용 효과로 방어하세요.",
"* |cff71d5ff|Hspell:192680|h[Tornado]|h|r: 토네이도는 플랫폼 위를 돌아다니는 플레이어를 추격합니다 - 표시된 위치로 날아가도록 하세요.",
"* |cff71d5ff|Hspell:192706|h[Arcane Bomb]|h|r: 그의 아카인 캔이 표시된 위치에 떨어집니다 - 폭발하기 전에 이동하세요."
};

-- Halls of Valor : Zona 1477 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["94960"] = { "하임달",
"* |cff71d5ff|Hspell:193092|h[Sweeping Cleave]|h|r: 그의 휩 스웨이는 땅을 긁습니다 - 스웨이를 피하고 측면에서 싸우세요.",
"* |cff71d5ff|Hspell:188404|h[Breath]|h|r: 그는 숨을 불어 땅에 닿습니다 - 숨에서 벗어나세요.",
"* |cff71d5ff|Hspell:193235|h[Dancing Blade]|h|r: 춤추는 칼날이 그 주변으로 회전합니다 - 회전하는 칼날에서 멀리 떨어져 계세요.",
"* |cff71d5ff|Hspell:191284|h[Horn of Valor]|h|r: 그의 호는 짐승을 그의 측면으로 부릅니다 - 짐승이 착지하는 즉시 짐승을 공격하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95674"] = { "펜리르",
"* |cff71d5ff|Hspell:197556|h[Leap]|h|r: 그는 플레이어의 위치로 점프합니다 - 대상 플레이어는 착륙 지점을 정리합니다.",
"* |cff71d5ff|Hspell:196838|h[Fixate]|h|r: 그는 플레이어를 고정하고 추격합니다 - 표시된 플레이어를 홀 주변으로 묶습니다.",
"* |cff71d5ff|Hspell:196512|h[Claw Frenzy]|h|r: 그의 발톱 광기는 도달 가능한 모든 사람을 긁습니다 - 광기의 동안 흩어져서 대비합니다.",
"* |cff71d5ff|Hspell:196543|h[Howl]|h|r: 그의 울음은 홀을 혼란스럽게 만듭니다 - 울음을 중단하거나 혼란에 대비합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95675"] = { "신왕 스코발드",
"* |cff71d5ff|Hspell:193783|h[Aegis of Avaloren]|h|r: 그는 방패를 들고 있을 때 거의 모든 공격을 막아 - 불 공격을 계속해서 방패를 깨뜨릴 때까지 사용하세요.",
"* |cff71d5ff|Hspell:193659|h[Felblaze Rush]|h|r: 그는 펠블레이즈를 사용하여 돌진 - 돌진 라인을 피하세요.",
"* |cff71d5ff|Hspell:194112|h[Claim the Aegis]|h|r: 그는 방패를 차지하려고 시도 - 차지를 방해하거나 싸움이 더 어려워집니다.",
"* |cff71d5ff|Hspell:193668|h[Savage Blade]|h|r: 그의 잔혹한 칼은 탱커를 찢어 - 탱킹 메커니즘: 방어적인 기술로 교체하고 흡수하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95676"] = { "오딘",
"* |cff71d5ff|Hspell:198072|h[Spear of Light]|h|r: 그는 땅에 창을 던져서 공격 - 떨어지는 창을 피하세요.",
"* |cff71d5ff|Hspell:198263|h[Tempest]|h|r: 그의 폭풍 스캐이드는 그 주변을 돌아요 - 폭풍을 맞으면서 서 있는 것보다 도망치세요.",
"* |cff71d5ff|Hspell:198077|h[Shatter Spears]|h|r: 그의 창은 부서지고 조각을 던져요 - 각 부서짐에서 멀리 떨어져서 움직이세요.",
"* |cff71d5ff|Hspell:197961|h[Runic Brand]|h|r: 룬 브랜드는 플레이어를 상처를 입혀요 - 상처를 받은 플레이어는 손에 상처를 받고 룬 위에 서요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95833"] = { "히리아",
"* |cff71d5ff|Hspell:192048|h[Expel Light]|h|r: 그녀는 방 안으로 빛 조각을 발사합니다 - 빛 조각을 피하세요.",
"* |cff71d5ff|Hspell:192018|h[Shield of Light]|h|r: 그녀의 빛 방패는 탱커를 방패 안으로 가둡니다 - 탱커는 자유롭게 움직이고 새로운 탱커가 공격합니다.",
"* |cff71d5ff|Hspell:192307|h[Sanctify]|h|r: 그녀의 성전은 플랫폼에 성스러운 불을 쏟습니다 - 빛나는 고리를 벗어나세요.",
"* |cff71d5ff|Hspell:200901|h[Eye of the Storm]|h|r: 폭풍의 눈은 플레이어를 끌어당깁니다 - 끌림과 가장자리에서 멀리 떨어져 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["99868"] = { "펜리르",
"* |cff71d5ff|Hspell:197556|h[Leap]|h|r: 그는 플레이어의 위치로 점프합니다 - 대상 플레이어는 착륙 지점을 정리합니다.",
"* |cff71d5ff|Hspell:196838|h[Fixate]|h|r: 그는 플레이어를 고정하고 추격합니다 - 표시된 플레이어를 홀 주변으로 묶습니다.",
"* |cff71d5ff|Hspell:196512|h[Claw Frenzy]|h|r: 그의 발톱 광기는 도달 가능한 모든 사람을 긁습니다 - 광기의 동안 흩어져서 대비합니다.",
"* |cff71d5ff|Hspell:196543|h[Howl]|h|r: 그의 울음은 홀을 혼란스럽게 만듭니다 - 울음을 중단하거나 혼란에 대비합니다."
};

-- Vault of the Wardens : Zona 1493 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95885"] = { "티라손 살데릴",
"* |cff71d5ff|Hspell:204151|h[Dark Strikes]|h|r: 그의 어둠 공격은 탱커에게 쌓입니다 - 탱커 메커니즘: 방어 기술을 사용합니다.",
"* |cff71d5ff|Hspell:191823|h[Furious Blast]|h|r: 그의 분노 폭발은 방 전체에 터집니다 - 폭발을 매번 방해합니다.",
"* |cff71d5ff|Hspell:202913|h[Fel Mortar]|h|r: 그의 펠 모터는 필드에 던집니다 - 던진 모터와 그 튀김을 피합니다.",
"* |cff71d5ff|Hspell:202919|h[Fel Mortar Burn]|h|r: 떨어지는 모터는 계속 타게 됩니다 - 타는 부분에 절대 서 있지 않습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95886"] = { "잿바위거수",
"* |cff71d5ff|Hspell:192522|h[Fissure]|h|r: 그의 균열이 바닥을 뚫어 - 균열이 갈라지는 것을 피하세요.",
"* |cff71d5ff|Hspell:192621|h[Volcano]|h|r: 그의 화산이 땅을 뚫고 터져 - 폭발 전에 움직이세요.",
"* |cff71d5ff|Hspell:192631|h[Lava Wreath]|h|r: 그의 용암 덩굴이 복도를 가로질러 회전 - 회전하는 불에서 멀리 떨어져."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95887"] = { "꿈벅마",
"* |cff71d5ff|Hspell:194942|h[Gaze]|h|r: 그의 시선이 경기장을 돌아다닌다 - 빛나는 선을 피하세요.",
"* |cff71d5ff|Hspell:194289|h[Focused]|h|r: 그의 집중된 시선이 한 플레이어를 향한다 - 모두가 회전하는 광선을 피하세요.",
"* |cff71d5ff|Hspell:194945|h[Gaze Burn]|h|r: 모인 시선이 바닥을 태운다 - 절대로 태운 곳에 서지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["95888"] = { "콜다나",
"* |cff71d5ff|Hspell:197251|h[Kick]|h|r: 그녀의 킥은 탱크의 플레이트를 파괴합니다 - 탱크는 킥을 통해 교환합니다.",
"* |cff71d5ff|Hspell:213583|h[Deepening Shadows]|h|r: 그녀의 딥닝 섀도우는 셀 블록을 삼킵니다 - 밝은 땅에 머물고 섀도우를 파괴합니다.",
"* |cff71d5ff|Hspell:205004|h[Vengeance]|h|r: 그녀의 벤젠스는 그녀가 분노할 때 쌓입니다 - 그녀가 최고점에 도달하기 전에 그녀를 태웁니다.",
"* |cff71d5ff|Hspell:192750|h[Hidden]|h|r: 그녀는 마지막 단계로 그림자 속으로 들어갑니다 - 재모습하고 각 공개에서 그녀를 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["96015"] = { "심문관 토르멘토룸",
"* |cff71d5ff|Hspell:200898|h[Teleport]|h|r: 그는 연구실을 돌아다니며 순간이동 - 그는 다시 나타날 때마다 재참전하고, 추가몹을 통제하세요.",
"* |cff71d5ff|Hspell:200905|h[Sap Soul]|h|r: 그의 소울 흡수는 플레이어를 말아먹음 - 매번 소울 흡수를 방해하세요.",
"* |cff71d5ff|Hspell:201488|h[Fear]|h|r: 그의 공포는 방 전체를 휩쓸음 - 공포 감소 효과로 공포를 막으세요.",
"* |cff71d5ff|Hspell:212564|h[Stare]|h|r: 그의 시선은 플레이어를 고정 - 표시된 대상은 계속 움직이고 시선을 피하세요."
};

-- Darkheart Thicket : Zona 1466 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["96512"] = { "대드루이드 글라이달리스",
"* |cff71d5ff|Hspell:196354|h[Leap]|h|r: 그는 플레이어의 위치로 점프합니다 - 대상 플레이어가 착지 지점에서 움직입니다.",
"* |cff71d5ff|Hspell:212464|h[Night Fall]|h|r: 어두운 원이 숲에 떨어집니다 - 모든 떨어지는 영역을 피하십시오.",
"* |cff71d5ff|Hspell:198379|h[Rampage]|h|r: 그의 램페이지는 탱커에게 쌓입니다 - 탱커 메커니즘: 방어형과 교체하여 흡수합니다.",
"* |cff71d5ff|Hspell:198477|h[Fixate]|h|r: 그는 플레이어를 고정합니다 - 표시된 플레이어가 계속 움직이고 고정된 플레이어를 쫓습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["99192"] = { "자비우스의 망령",
"* |cff71d5ff|Hspell:200243|h[Waking Nightmare]|h|r: 깨어 있는 악몽은 플레이어를 괴롭히고 - 표시된 움직임은 환상이 사라질 때까지 물러나 있습니다.",
"* |cff71d5ff|Hspell:200289|h[Paranoia]|h|r: 공포는 플레이어의 신경을 건드리고 - 건드린 플레이어는 서로 떨어져 있습니다.",
"* |cff71d5ff|Hspell:200050|h[Apocalyptic Nightmare]|h|r: 그의 초월적인 악몽은 숲 전체에 폭발합니다 - 회복력을 사용하여 대비하십시오.",
"* |cff71d5ff|Hspell:200238|h[Feed on the Weak]|h|r: 그는 상처 입은 자를 먹습니다 - 모두가 하위 1/3 아래로 유지하여 먹이가 닿지 않도록 하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["99200"] = { "드레사론",
"* |cff71d5ff|Hspell:191325|h[Breath]|h|r: 앞쪽으로 들이치는 공격을 막아야 합니다.",
"* |cff71d5ff|Hspell:199389|h[Roar]|h|r: 그의 울음소리는 주변 사람들을 혼란스럽게 만듭니다 - 두려움을 감소시키는 효과로 대응하세요.",
"* |cff71d5ff|Hspell:199345|h[Down Draft]|h|r: 그의 바람은 모든 사람을 끌어당깁니다 - 바람의 힘에 저항하세요.",
"* |cff71d5ff|Hspell:199460|h[Falling Rocks]|h|r: 바위가 넓은 지역에 떨어집니다 - 떨어지는 바위를 주의하고 충돌을 피하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["103344"] = { "나무심장",
"* |cff71d5ff|Hspell:204666|h[Shattered Earth]|h|r: 그는 앞 땅을 파괴하며 공격 - 뒤에서 근접 전투를 하고, 다른 플레이어는 균열에서 멀리 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:204658|h[Throw Target]|h|r: 그는 플레이어를 잡고 벽으로 던집니다 - 벽 쪽은 안전하고, 치유사는 착지하는 플레이어를 보호합니다.",
"* |cff71d5ff|Hspell:212786|h[Uproot]|h|r: 그는 자세를 바꾸고 뿌리에서 떼어냅니다 - 단계 변화에 대비합니다.",
"* |cff71d5ff|Hspell:204574|h[Roots]|h|r: 끈끈한 뿌리가 땅에 퍼집니다 - 발에 주의하고, 뿌리에서 벗어나세요."
};

-- Maw of Souls : Zona 1492 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["96754"] = { "하르바론",
"* |cff71d5ff|Hspell:194327|h[Summon the Fragment]|h|r: 그는 자신의 편에 조각을 소환합니다 - 조각이 떨어지기 전에 조각을 파괴하십시오.",
"* |cff71d5ff|Hspell:194231|h[Servitor of the Tide]|h|r: 그의 종들이 밀물과 함께 일어납니다 - 빠르게 그들을 AoE로 파괴하십시오.",
"* |cff71d5ff|Hspell:194266|h[Void Snap]|h|r: 그의 void snap은 파티를 엉망으로 만듭니다 - 한 명이 자유로울 때마다 snap을 방해하십시오.",
"* |cff71d5ff|Hspell:194216|h[Scythe]|h|r: 그의 scythe 충격파가 쏟아집니다 - 파도를 뛰어넘거나 멀리 떨어져 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["96756"] = { "타락한 왕 이미론",
"* |cff71d5ff|Hspell:193460|h[Bane]|h|r: 그의 바인 볼트가 플레이어를 향해 쏘아 - 볼트가 날아가는 것을 피하십시오.",
"* |cff71d5ff|Hspell:193211|h[Dark Slash]|h|r: 그의 다크 슬래시는 탱커를 찢어 - 탱킹 메커니즘: 방어형과 교체하여 흡수하십시오.",
"* |cff71d5ff|Hspell:193364|h[Screams of the Dead]|h|r: 죽은 자의 외침이 배를 통과합니다 - 외침에 서 있는 대신 외침에 대비하십시오.",
"* |cff71d5ff|Hspell:193977|h[Winds]|h|r: 바람이 갑판을 가로지릅니다 - 넉을 통해 갑판 가장자리에서 떨어지지 않도록 하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["96759"] = { "헬리아",
"* |cff71d5ff|Hspell:197262|h[Taint of the Sea]|h|r: 그녀의 독이 물에 스며듭니다 - 오염된 물이 고이는 것을 피하십시오.",
"* |cff71d5ff|Hspell:196947|h[Submerged]|h|r: 그녀는 잠수하고 위상을 변경합니다 - 깔끔하게 재정비하고 잠수하는 동안 주의하십시오.",
"* |cff71d5ff|Hspell:202088|h[Brackwater Barrage]|h|r: 그녀의  brackwater barrage가 앞쪽으로 쏟아집니다 - 딜러는 그녀 뒤에 있어야 합니다.",
"* |cff71d5ff|Hspell:227233|h[Breath]|h|r: 그녀의 호흡이 앞쪽으로 불을 뿜습니다 - 앞쪽에 접근하지 마십시오."
};

-- The Arcway : Zona 1516 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98203"] = { "아이반니르",
"* |cff71d5ff|Hspell:196562|h[Volátil Magia]|h|r: 그의 불안정한 마법 구체는 플레이어들 사이를 떠돌아다닌다 - 아무도 두 개를 가지 않도록 퍼뜨려라.",
"* |cff71d5ff|Hspell:196805|h[Nether Link]|h|r: 그의 네더 링크는 두 플레이어를 연결한다 - 연결된 플레이어는 연결이 끊어질 때까지 서로 끌어당긴다.",
"* |cff71d5ff|Hspell:196392|h[Overcharge Mana]|h|r: 그는 자신의 마나를 과충전하고 강화한다 - 과충전을 매번 방해하라."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98205"] = { "코스틸락스",
"* |cff71d5ff|Hspell:196070|h[Suppression]|h|r: 그의 억제 필드는 플레이어를 고정시킵니다 - 필드에서 벗어나 재배치하십시오.",
"* |cff71d5ff|Hspell:195804|h[Quarantine]|h|r: 그의 격리 구역은 플레이어를 가둡니다 - 구역을 열고 자유롭게 하십시오.",
"* |cff71d5ff|Hspell:196115|h[Cleansing]|h|r: 그의 정화 파동은 방을 휩쌉니다 - 파동을 통해 흩어져 치유하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98206"] = { "장군 자칼",
"* |cff71d5ff|Hspell:197776|h[Fissure]|h|r: 그의 균열이 바닥을 찢어 - 균열이 갈라지는 것을 피하세요.",
"* |cff71d5ff|Hspell:212030|h[Darkfall]|h|r: 그의 어두운 충격파가 퍼져 나갑니다 - 파도를 뛰어넘거나 멀리 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:197810|h[Slam]|h|r: 그의 펀치는 모두를 밀어냅니다 - 펀치로 인해 가장자리에서 떨어지지 않도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98207"] = { "날티라",
"* |cff71d5ff|Hspell:199811|h[Blink]|h|r: 그녀는 플레이어의 위치로 순간이동 - 대상 플레이어가 착륙 지점을 정리합니다.",
"* |cff71d5ff|Hspell:200284|h[Web]|h|r: 그녀의 거미줄이 플레이어를 묶습니다 - 레이드가 빠르게 묶인 플레이어를 해방합니다.",
"* |cff71d5ff|Hspell:200040|h[Venom]|h|r: 그녀의 독이 바닥에 흩뿌려집니다 - 독 안에 서지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98208"] = { "조언자 반드로스",
"* |cff71d5ff|Hspell:203957|h[Time Lock]|h|r: 그의 타임 락은 플레이어를 제자리에 멈추게 합니다 - 락을 견고하게 하고 릴리프될 때 다시 참여하세요.",
"* |cff71d5ff|Hspell:203176|h[Unstable Mana]|h|r: 그의 불안정한 마나 구체는 튀어나옵니다 - 구체가 날아갈 때 피하세요.",
"* |cff71d5ff|Hspell:203833|h[Time Split]|h|r: 그는 시간을 분할하고, 그 중 하나가 방을 걷습니다 - 원본과 같은 복사체를 불태우세요.",
"* |cff71d5ff|Hspell:202974|h[Force Bomb]|h|r: 그의 포스 덤은 모든 사람을 넘어뜨립니다 - 덤으로 인한 넘어짐을 피하세요."
};

-- Black Rook Hold : Zona 1501 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98542"] = { "영혼의 융합체",
"* |cff71d5ff|Hspell:196930|h[Soulgorge]|h|r: 그는 영혼을 삼키고, 각 스택마다 더 강해집니다 - 휩 추가물이 그에게 도달하지 않도록 하고, 그가 삼킨 영혼을 모두 불태우세요.",
"* |cff71d5ff|Hspell:194956|h[Reap Soul]|h|r: 그는 앞쪽으로 베어 이동합니다 - 탱커는 각 Reap에서 피합니다.",
"* |cff71d5ff|Hspell:195254|h[Swirling Scythe]|h|r: 그는 플레이어를 향해 회전하는 도끼를 던집니다 - 표시된 플레이어는 회전하는 동안 움직입니다.",
"* |cff71d5ff|Hspell:194966|h[Soul Echoes]|h|r: 소울 에코는 플레이어를 고정합니다 - 표시된 플레이어는 에코가 쫓아오는 동안 그룹에서 벗어납니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98696"] = { "일리산나 레이븐크레스트",
"* |cff71d5ff|Hspell:197974|h[Bonebreaking Strike]|h|r: 뼈를 부수는 공격을 탱커에게 사용 - 탱커는 방어 자세를 취하고, 탱커는 교환하며 공격합니다.",
"* |cff71d5ff|Hspell:197546|h[Brutal Glaive]|h|r: 그녀는 플레이어를 쫓는 잔혹한 창을 던집니다 - 표시된 플레이어가 그것을 잡고, 견제합니다.",
"* |cff71d5ff|Hspell:197478|h[Dark Rush]|h|r: 그녀는 표시된 플레이어를 통과하는 어두운 공격을 사용합니다 - 표시된 플레이어는 공격 경로를 피합니다.",
"* |cff71d5ff|Hspell:197418|h[Vengeful Shear]|h|r: 그녀의 복수적인 톱은 탱커에게 닿습니다 - 무거운 탱커 메커니즘: 방어 자세를 취하고 교환합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98949"] = { "혐오스러운 원한강타",
"* |cff71d5ff|Hspell:198245|h[Brutal Haymaker]|h|r: 그는 탱커에게 강력한 펀치를 날립니다 - 펀치가 떨어지기 전에 방어 자세를 취하세요.",
"* |cff71d5ff|Hspell:198079|h[Hateful Gaze]|h|r: 그는 플레이어를 응시합니다 - 마크된 플레이어는 시선에서 벗어나 시선을 피합니다.",
"* |cff71d5ff|Hspell:198073|h[Stomp]|h|r: 그는 모두를 플랫폼에서 밀어냅니다 - 플랫폼 가장자리에서 떨어지는 것을 피하세요.",
"* |cff71d5ff|Hspell:198446|h[Fel Vomit]|h|r: 그는 바닥에 펠을 뱉습니다 - 펠이 닿는 곳에서 멀리 떨어져 각 영역이 닿도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98965"] = { "군주 쿠르탈로스 레이븐크레스트",
"* |cff71d5ff|Hspell:198641|h[Whirling Blade]|h|r: 그는 방을 가로질러 칼을 회전하며 공격합니다 - 회전 범위 밖으로 피하십시오.",
"* |cff71d5ff|Hspell:198820|h[Darkblast]|h|r: Darkblast은 플레이어의 위치에서 폭발합니다 - 각 폭발 지역에서 피하세요.",
"* |cff71d5ff|Hspell:199143|h[Cloud]|h|r: 그는 해당 지역에 악몽 구름을 소환합니다 - 움직이고 구름 안으로 들어가지 마세요.",
"* |cff71d5ff|Hspell:201733|h[떼]|h|r: 박쥐들이 한 플레이어를 공격 - 표시된 플레이어가 떼를 제거하고, 파티는 AoE로 떼를 분산합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["98970"] = { "군주 쿠르탈로스 레이븐크레스트",
"* |cff71d5ff|Hspell:198641|h[Whirling Blade]|h|r: 그는 방을 가로질러 칼을 회전하며 공격합니다 - 회전 범위 밖으로 피하십시오.",
"* |cff71d5ff|Hspell:198820|h[Darkblast]|h|r: Darkblast은 플레이어의 위치에서 폭발합니다 - 각 폭발 지역에서 피하세요.",
"* |cff71d5ff|Hspell:199143|h[Cloud]|h|r: 그는 해당 지역에 악몽 구름을 소환합니다 - 움직이고 구름 안으로 들어가지 마세요.",
"* |cff71d5ff|Hspell:201733|h[떼]|h|r: 박쥐들이 한 플레이어를 공격 - 표시된 플레이어가 떼를 제거하고, 파티는 AoE로 떼를 분산합니다."
};

-- The Violet Hold : Zona 1544 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["99929"] = { "플롯샘",
"* |cff71d5ff|Hspell:220340|h[Getsam]|h|r: Getsam은 챔을 향해 충격파를 휘두른다 - 챔은 각 공격을 피한다.",
"* |cff71d5ff|Hspell:223373|h[Yaksam]|h|r: Yaksam은 플레이어를 공격한다 - 공격 공간을 주고 옆으로 피한다.",
"* |cff71d5ff|Hspell:220295|h[Jetsam]|h|r: Jetsam은 해안을 가로지르는 플레이어를 목표로 한다 - 목표는 충돌을 피한다.",
"* |cff71d5ff|Hspell:223317|h[Break Sam]|h|r: Break Sam은 해안을 가로지르는 공격을 던진다 - 공격은 도달하지 않는다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["101950"] = { "정신파괴자 카르즈",
"* |cff71d5ff|Hspell:201920|h[Shadow Crash]|h|r: 그의 섀도우 크래시는 바닥에 흩뿌려집니다 - 흩뿌림을 피하고, 확산에 주의하세요.",
"* |cff71d5ff|Hspell:201148|h[Doom]|h|r: 그의 둠은 탱커를 공격합니다 - 탱킹 방법: 방어 기술을 사용하여 교환하고 흡수하세요.",
"* |cff71d5ff|Hspell:201153|h[Eternal Darkness]|h|r: 그의 영원한 어둠은 홀을 덮습니다 - 회복을 사용하여 전체 파도에 대비하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["101951"] = { "한기아귀",
"* |cff71d5ff|Hspell:201379|h[Breath]|h|r: 그녀의 숨결이 홀 전체에 얼음을 퍼뜨립니다 - 앞쪽에 접근하지 마세요.",
"* |cff71d5ff|Hspell:201672|h[Relentless Storm]|h|r: 그녀의 끊임없는 폭풍은 셀 블록에 있는 반지들을 파괴합니다 - 모든 폭풍 반지 공격을 피하세요.",
"* |cff71d5ff|Hspell:201960|h[Ice Bomb]|h|r: 그녀의 얼음 폭탄이 플레이어 주변에 떨어집니다 - 폭탄이 떨어지는 곳에 숨어서 피하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["101976"] = { "밀리피센트 마나스톰",
"* Spinsaw: 그녀는 쌓이는 출혈로 탱커를 깎아내며 - 방어 능력을 일찍 사용하거나, 스택이 너무 높아지면 한 번 도망가세요.",
"* |cff71d5ff|Hspell:201159|h[Delta Finger Laser X-treme]|h|r: 플레이어를 즉시 불 공격으로 표시하고 지속적인 화상 효과를 남깁니다 - 표시된 플레이어를 우선적으로 공격하세요.",
"* |cff71d5ff|Hspell:201240|h[Elementium Squirrel Bomb]|h|r: 그녀는 광범위한 레이드에 큰 폭발을 일으키는 폭탄을 던집니다 - 폭탄이 터지기 전에 마우스 오른쪽 버튼을 클릭하여 해제하세요.",
"* |cff71d5ff|Hspell:201392|h[Thorium Rocket Chicken]|h|r: 메카닭이 로켓을 발사하며 공격합니다 - 빠르게 파괴하거나, 공격을 피하세요.",
"* |cff71d5ff|Hspell:201572|h[Millificent's Rage]|h|r: 그녀는 분노하며, 장비가 더 빠르게 작동하고 더 강력해집니다 - 과부하된 폭탄, 강화된 닭 - 데미지를 극대화하세요.",
"* 상단 엣지 교전: 그녀의 동료가 상단 엣지에서 지원합니다 - 위험한 채널(예: Diabolical Doom)은 Millificent의 레이저 또는 제어 마법으로 막을 수 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["101995"] = { "구린얼굴",
"* |cff71d5ff|Hspell:202266|h[Ooze]|h|r: 그의 웅덩이는 바닥을 덮습니다 - 절대 웅덩이 안에서 서 있지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["102075"] = { "썩은 지임",
"* Withered Presence: 그의 필드에 들어갈 때 90%의 피해 감소 디버프를 적용하고, 당신을 축소하고 느리게 만듭니다 - 그의 미약한 HP 풀은 이를 상쇄하기 위한 것입니다.",
"* Nightshifted Bolts: 그는 4m 이내에 아카인 에너지를 발사합니다 - 충돌 지점에서 멀리 떨어져 있어야 합니다.",
"* Nightstable Energy: 그는 주기적인 영역 피해를 일으키는 아카인 에너지 구체를 소환합니다 - 구체에서 멀리 떨어져 있고, 필요하면 구체를 파괴하십시오.",
"* Resonance: 그는 15초 동안 30%의 피해 감소 방패를 생성하고, 불안정한 공명을 생성합니다 - 20초 후에 5m 반경 내에서 폭발합니다.",
"* MORE, MORE, MORE!: 공명 방패가 활성화된 동안에는 그를 공격하지 마십시오 - 그가 받는 피해는 복제체를 소환합니다.",
"* Unstable Resonances: 폭발하기 전에 빠르게 AoE로 제거하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["102246"] = { "아눕에세트",
"* |cff71d5ff|Hspell:202341|h[Impale]|h|r: 그의 뾰족한 창이 플레이어 아래로 솟아오르지만 - 창이 올라오면 움직여서 피하십시오.",
"* |cff71d5ff|Hspell:201863|h[Swarm]|h|r: 떼가 그 주변으로 퍼져나갑니다 - 빠르게 떼를 AoE로 처리하십시오.",
"* |cff71d5ff|Hspell:202480|h[Fixate]|h|r: 거미가 플레이어를 목표로 합니다 - 표시된 플레이어를 쫓아 죽을 때까지 움직이십시오.",
"* |cff71d5ff|Hspell:202217|h[Mandible Strike]|h|r: 그의 턱 공격은 탱커를 파괴합니다 - 탱커 메커니즘: 방어형 스킬로 교체하고 흡수하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["102431"] = { "피의 공주 탈레나",
"* |cff71d5ff|Hspell:202779|h[Essence of the Blood Queen]|h|r: 블러드 퀸의 에센스는 플레이어를 타고 – 에센스 보유자는 다른 사람에게서 멀리 떨어져 있어야 하며, 에센스를 소모할 때까지 기다립니다.",
"* |cff71d5ff|Hspell:202792|h[Bloodthirst]|h|r: 그녀의 블러드 써스트는 빠르게 그녀의 힘을 강화합니다 – 치유사는 레이드를 압박하고, 그녀가 최고점에 도달하기 전에 빠르게 처치해야 합니다.",
"* |cff71d5ff|Hspell:202804|h[Mind Control]|h|r: 그녀의 마인드 컨트롤은 플레이어를 포획합니다 – 마인드 컨트롤된 플레이어를 제거하고, 주문을 준비합니다.",
"* |cff71d5ff|Hspell:203381|h[Call Blood]|h|r: 그녀는 블러드 배트를 소환합니다 – 배트가 떼를 지르기 전에 AoE로 처치해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["102446"] = { "지옥 군주 베트루그",
"* |cff71d5ff|Hspell:203641|h[Fel Slash]|h|r: 그의 펠 슬래시는 탱커를 열어 - 탱커 메커니즘: 방어와 교환.",
"* |cff71d5ff|Hspell:210879|h[Seed of Destruction]|h|r: 그의 씨앗이 돋아나고 폭발 - 모든 돋아나는 씨앗을 피하십시오.",
"* |cff71d5ff|Hspell:205233|h[Execute]|h|r: 그는 서 있는 사람을 공격 - 치유사는 레이드를 잘 유지하십시오.",
"* |cff71d5ff|Hspell:202328|h[Mighty Smash]|h|r: 그의 Mighty Smash은 모두를 밀어 - Knockback을 통해 가장자리에서 떨어져 있도록 유지하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["106981"] = { "영혼을 앗아가는 자",
"* |cff71d5ff|Hspell:213420|h[Tentacle Bash]|h|r: 그들의 촉수가 잔해를 공격합니다 - 근접 공격자는 각 공격을 피해야 합니다.",
"* |cff71d5ff|Hspell:213532|h[Shatter Crew]|h|r: 셔터 크루는 갑판을 휩쓸어 갑니다 - 그들이 올라타는 동안 크루를 AoE로 공격합니다.",
"* |cff71d5ff|Hspell:213665|h[Marauding Mists]|h|r: 마라우딩 미스트가 플레이어에게 드리워집니다 - 미스트에서 벗어나 계속 움직이세요.",
"* |cff71d5ff|Hspell:213522|h[Cursed Crew]|h|r: 저주받은 크루가 올라타기 시작합니다 - 그들이 복제되기 전에 저주받은 크루를 빠르게 죽이세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["106982"] = { "영혼을 수집하는 자",
"* |cff71d5ff|Hspell:213420|h[Tentacle Bash]|h|r: 그들의 촉수가 잔해를 공격합니다 - 근접 공격자는 각 공격을 피해야 합니다.",
"* |cff71d5ff|Hspell:213532|h[Shatter Crew]|h|r: 셔터 크루는 갑판을 휩쓸어 갑니다 - 그들이 올라타는 동안 크루를 AoE로 공격합니다.",
"* |cff71d5ff|Hspell:213665|h[Marauding Mists]|h|r: 마라우딩 미스트가 플레이어에게 드리워집니다 - 미스트에서 벗어나 계속 움직이세요.",
"* |cff71d5ff|Hspell:213522|h[Cursed Crew]|h|r: 저주받은 크루가 올라타기 시작합니다 - 그들이 복제되기 전에 저주받은 크루를 빠르게 죽이세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["106984"] = { "영혼을 수집하는 자",
"* |cff71d5ff|Hspell:213420|h[Tentacle Bash]|h|r: 그들의 촉수가 잔해를 공격합니다 - 근접 공격자는 각 공격을 피해야 합니다.",
"* |cff71d5ff|Hspell:213532|h[Shatter Crew]|h|r: 셔터 크루는 갑판을 휩쓸어 갑니다 - 그들이 올라타는 동안 크루를 AoE로 공격합니다.",
"* |cff71d5ff|Hspell:213665|h[Marauding Mists]|h|r: 마라우딩 미스트가 플레이어에게 드리워집니다 - 미스트에서 벗어나 계속 움직이세요.",
"* |cff71d5ff|Hspell:213522|h[Cursed Crew]|h|r: 저주받은 크루가 올라타기 시작합니다 - 그들이 복제되기 전에 저주받은 크루를 빠르게 죽이세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["107023"] = { "니토그",
"* |cff71d5ff|Hspell:212852|h[Breath]|h|r: 그의 숨이 언덕을 가로지른다 - 숨이 휩쓸 때 피하십시오.",
"* |cff71d5ff|Hspell:212887|h[Static Charge]|h|r: 정전기가 플레이어에게 달라붙는다 - 충전된 에너지는 흩어져 땅에 닿을 때까지 움직입니다.",
"* |cff71d5ff|Hspell:212943|h[Lightning Rod]|h|r: 번개 막대는 플레이어를 고정한다 - 막을 든 사람은 모두에게서 멀리 도망가면서 땅에 닿습니다.",
"* |cff71d5ff|Hspell:212841|h[Crackling Jolt]|h|r: 그의 스파크는 바닥에 흩어진다 - 각 스파크에 맞지 않도록 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["108678"] = { "샤르토스",
"* |cff71d5ff|Hspell:215821|h[Breath]|h|r: 그의 호흡은 그를 공격하는 앞쪽을 태웁니다 - 태울 때 앞쪽에 접근하지 마세요.",
"* |cff71d5ff|Hspell:215876|h[Burning Earth]|h|r: 그는 지나갈 때 땅이 타버립니다 - 타는 땅에 접근하지 마세요.",
"* |cff71d5ff|Hspell:216044|h[Fear]|h|r: 그의 공포는 섬 전체에 퍼집니다 - 공포 감소 효과로 공포를 상쇄하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["108829"] = { "레반투스",
"* |cff71d5ff|Hspell:217235|h[Rending Whirl]|h|r: 그의 렌딩 와일은 물 위를 찢어 - 근접 공격은 와일에서 멀리 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:217344|h[Electrify]|h|r: 그의 전기 충전은 플레이어를 감전합니다 - 충전된 플레이어는 그룹에서 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:217249|h[Massive Spout]|h|r: 그의 대규모 분출은 파도처럼 폭발합니다 - 파도가 쏟아지는 것을 피하십시오.",
"* |cff71d5ff|Hspell:217352|h[Electrify Dispel]|h|r: 전기 충전은 충전을 해제합니다 - 치유사는 충전이 닿는 즉시 해제해야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["108879"] = { "움몬그리스",
"* |cff71d5ff|Hspell:216817|h[Bang]|h|r: 그의 뱅 슬램은 탱을 휩쓸어 - 탱은 슬램을 주고받습니다.",
"* |cff71d5ff|Hspell:216432|h[Ice Fist]|h|r: 그의 아이스 핏은 플레이어를 추적합니다 - 표시된 플레이어가 밖으로 뛰어나고, 차이를 극복합니다.",
"* |cff71d5ff|Hspell:216467|h[Snow]|h|r: 눈 덩어리가 영역에 쌓입니다 - 쌓인 눈을 피하세요, 왜냐하면 올라옵니다.",
"* |cff71d5ff|Hspell:216428|h[Fire Boom]|h|r: 그의 파이어 붐이 플레이어 아래에서 폭발합니다 - 표시된 플레이어가 뛰어나고, 주변의 사람은 뒤로 물러납니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["109331"] = { "칼라미르",
"* |cff71d5ff|Hspell:217563|h[Ancient Rage: Fire]|h|r: 그의 고대 분노는 바닥에 불을 일으킵니다 - 불이 휩쓸 때 피하십시오.",
"* |cff71d5ff|Hspell:217877|h[Burning Bomb]|h|r: 그의 화염 폭탄이 특정 위치에 떨어집니다 - 폭탄이 터지기 전에 이동하십시오.",
"* |cff71d5ff|Hspell:217831|h[Ancient Rage: Frost]|h|r: 그의 고대 분노는 얼음으로 변하고 바닥을 차갑게 만듭니다 - 얼음으로 피하십시오.",
"* |cff71d5ff|Hspell:217966|h[Howling Gale]|h|r: 그의 울부짖는 폭풍은 플레이어를 끌어당깁니다 - 바람에 대비하고 끌림 방향으로 이동하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["109943"] = { "아나-무즈",
"* |cff71d5ff|Hspell:218888|h[Impish Flames]|h|r: 그의 임피시 플레임은 타격을 입힙니다 - 탱커는 방어적으로 불을 막습니다.",
"* |cff71d5ff|Hspell:219045|h[Mother's Embrace]|h|r: 그의 어머니의 포옹이 플레이어를 옯깁니다 - 치유사는 포옹을 빠르게 해제합니다.",
"* |cff71d5ff|Hspell:219068|h[Mother's Embrace Fail]|h|r: 포옹의 실패는 옯겨진 플레이어에게 큰 피해를 입힙니다 - 실패가 도달하기 전에 해제합니다.",
"* |cff71d5ff|Hspell:219254|h[Gaseous Breath]|h|r: 그의 기체 호흡이 섬 전체를 씻어냅니다 - 가스로부터 멀리 떨어져 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["110321"] = { "나자크",
"* |cff71d5ff|Hspell:219349|h[Corroding Spray]|h|r: 그녀의 부식성 스프레이는 플레이어를 공격합니다 - 스프레이를 피하세요.",
"* |cff71d5ff|Hspell:219865|h[Web Wrap]|h|r: 그녀의 웹 랩은 플레이어를 감싸 묶습니다 - 묶인 플레이어를 빠르게 풀어주세요.",
"* |cff71d5ff|Hspell:219591|h[Foundation]|h|r: 그녀의 기초가 땅을 흔듭니다 - 흔들림에 대비하고 계속 움직이세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["110378"] = { "드루고",
"* |cff71d5ff|Hspell:219542|h[Avalanche]|h|r: 그의 아발란치는 플레이어를 맞추고 - 표시된 경로에서 떨어지는 것을 피합니다.",
"* |cff71d5ff|Hspell:219602|h[Snow Plow]|h|r: 그의 스노우 플로우가 경사면을 가로지릅니다 - 플로우를 피하고 지나가면 다시 교전합니다.",
"* |cff71d5ff|Hspell:219493|h[Snow Crash]|h|r: 그의 스노우 크래시는 딜러를 밀어냅니다 - 딜러는 방어하고 경계선을 피합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["117239"] = { "브루탈러스",
"* |cff71d5ff|Hspell:233484|h[Meteor Slash]|h|r: 메테오 슬래시가 주변의 모든 것을 파괴합니다 - 가까이 모여서 슬래시를 분리 공격하세요.",
"* |cff71d5ff|Hspell:233515|h[Crashing Embers]|h|r: 크래싱 엠버가 해안에 떨어집니다 - 엠버가 떨어지는 것을 피하세요.",
"* |cff71d5ff|Hspell:233566|h[Rupture]|h|r: 땅이 갈라집니다 - 갈라진 땅에 닿지 않도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["117303"] = { "말리피커스",
"* |cff71d5ff|Hspell:233568|h[Incite Panic]|h|r: 그의 공황 상태가 파티 전체를 관통합니다 - 공황을 감소시키는 효과로 대비하세요.",
"* |cff71d5ff|Hspell:234452|h[Shadow Barrage]|h|r: 그의 그림 폭격은 플레이어를 공격합니다 - 넓게 퍼지고 폭격에 대처하세요.",
"* |cff71d5ff|Hspell:233850|h[Virulent Infection]|h|r: 그녀의 치명적인 감염은 플레이어를 공격합니다 - 감염된 플레이어는 질병이 사라질 때까지 떨어져 있어야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["117470"] = { "시바쉬",
"* |cff71d5ff|Hspell:241433|h[Submerge]|h|r: 그녀가 잠수하고 플레이어 위로 떠오르는데 - 그녀가 떠오를 때마다 피하세요.",
"* |cff71d5ff|Hspell:233968|h[Summon Honor Guard]|h|r: 그녀의 명예 경비대가 들어옵니다 - 빠르게 공격하여 떼로 몰려오기 전에 제거하세요.",
"* |cff71d5ff|Hspell:233996|h[Tidal Wave]|h|r: 그녀의 조류 파도가 해안을 따라 쏟아집니다 - 파도가 쏟아지는 것을 피하세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["121124"] = { "아포크론",
"* |cff71d5ff|Hspell:241518|h[Sear]|h|r: 그의 sear은 지나가는 곳마다 타격을 입힙니다 - 표시된 단계에서 타격 피해를 피하십시오.",
"* |cff71d5ff|Hspell:241498|h[Felfire Missiles]|h|r: 그의 felfire 미사일은 플레이어 주변으로 쏟아집니다 - 미사일이 떨어지는 것을 피하십시오.",
"* |cff71d5ff|Hspell:241458|h[Quake]|h|r: 그의 quake는 모두를 밀어냅니다 - 밀려나 떨어지는 것을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["124492"] = { "옥큘러스",
"* |cff71d5ff|Hspell:247318|h[Gushing Wound]|h|r: 그의 웅덩이 상처는 탱커에게 쌓입니다 - 탱커는 상처를 활용합니다.",
"* |cff71d5ff|Hspell:247325|h[Lash]|h|r: 그의 휩은 그룹을 가로지릅니다 - 휩을 피하고 분산합니다.",
"* |cff71d5ff|Hspell:247320|h[Searing Gaze]|h|r: 그의 타는 시선은 그를 태웁니다 - 시선을 매번 방해합니다.",
"* |cff71d5ff|Hspell:247393|h[Phantasm]|h|r: 그의 환상은 그로부터 분리됩니다 - 진정한 형태를 태우고 복사본을 AoE합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["124514"] = { "마트론 폴누나",
"* |cff71d5ff|Hspell:247361|h[Infected Claws]|h|r: 그녀의 감염된 발톱이 탱커에게 영향을 미치고 - 탱커는 그녀의 발톱을 제거합니다.",
"* |cff71d5ff|Hspell:247389|h[Slumbering Gasp]|h|r: 그녀의 졸린 숨결이 플레이어를 잠들게 합니다 - 잠든 플레이어를 깨우고 졸린 숨결을 막습니다.",
"* |cff71d5ff|Hspell:247443|h[Grotesque Spawn]|h|r: 그녀의 기괴한 생물이 그녀에게서 쏟아집니다 - 생물을 빠르게 처치하여 뭉치지 않도록 합니다.",
"* |cff71d5ff|Hspell:247379|h[Slumbering Gasp Cone]|h|r: 그녀의 숨결이 원뿔 모양으로 퍼져나갑니다 - 근접 딜러는 그녀 뒤에 위치합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["124555"] = { "소타나토르",
"* |cff71d5ff|Hspell:247410|h[Soul Cleave]|h|r: 그의 소울 클리브는 앞의 모든 것을 긁어내 - 클리브는 앞쪽을 피해야 합니다.",
"* |cff71d5ff|Hspell:247444|h[Cloven Soul]|h|r: 그의 클로븐 소울은 플레이어의 영혼을 분리합니다 - 클로븐 소울은 방어하고 통과해야 합니다.",
"* |cff71d5ff|Hspell:247437|h[Seed of Destruction]|h|r: 그의 씨앗은 싹을 틔우고 폭발합니다 - 싹이 틔우는 씨앗을 피하십시오.",
"* |cff71d5ff|Hspell:247698|h[Silence]|h|r: 그의 침묵은 땅에 죽은 공기를 묻습니다 - 침묵 안에 서 있지 마십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["124592"] = { "메토",
"* |cff71d5ff|Hspell:247495|h[Sow]|h|r: 그녀는 전장에 공포를 퍼뜨린다 - 씨앗이 자라는 것을 피하십시오.",
"* |cff71d5ff|Hspell:247492|h[Reap]|h|r: 그녀는 앞쪽으로 수확한다 - 수확 범위에서 벗어나십시오.",
"* |cff71d5ff|Hspell:247632|h[Death Field]|h|r: 그녀의 죽음의 영역이 착륙 지역을 덮는다 - 영역이 누군가를 포획하기 전에 벗어나십시오.",
"* |cff71d5ff|Hspell:247585|h[Seedsof Chaos]|h|r: 그녀의 혼돈의 씨앗이 땅에 싹을 낸다 - 씨앗이 싹을 틔우기 전에 파괴하십시오."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["124625"] = { "미스 트리스 알루라델",
"* |cff71d5ff|Hspell:247544|h[Sadist Other]|h|r: 그녀의 잔혹한 습성이, 탱커에게 영향을 미치며 - 탱커는 스파이크를 교환해야 합니다.",
"* |cff71d5ff|Hspell:247549|h[Beguiling Charm]|h|r: 그녀의 매혹적인 매력이 플레이어를 붙잡습니다 - 매혹된 플레이어를 빠르게 풀어주세요.",
"* |cff71d5ff|Hspell:247604|h[Fel Lash]|h|r: 그녀의 펠 래시는 그룹을 관통합니다 - 래시를 피하세요.",
"* |cff71d5ff|Hspell:247517|h[Heart Breaker]|h|r: 그녀의 하트 브레이커는 그녀의 표적을 파괴합니다 - 방어적으로 압박을 견뎌내세요."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["124719"] = { "피트 래드 빌레무스",
"* |cff71d5ff|Hspell:247742|h[Drain]|h|r: 그의 드레인은 가장 가까운 플레이어를 흡수합니다 - 플레이어가 겹쳐서 드레인이 두 배로 늘어나지 않도록 약간 떨어져 있도록 유지하십시오.",
"* |cff71d5ff|Hspell:247731|h[Fel Breath]|h|r: 그의 펠 브레스는 앞쪽을 태웁니다 - 앞쪽에 있지 않도록 유지하십시오.",
"* |cff71d5ff|Hspell:247733|h[Stomp]|h|r: 그의 덤프는 모두를 밀어냅니다 - 덤프를 통해 밀려나지 않도록 가장자리에서 멀리 떨어져 있도록 유지하십시오."
};

-- The Emerald Nightmare : Zona 1520 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["100497"] = { "우르속",
"* |cff71d5ff|Hspell:197943|h[Overwhelm]|h|r: 두 탱커가 매번 버프를 교환하여 - 각 Overwhelm 스택이 다음 렌 핏을 강화하고, 버프를 받은 탱커는 스택을 제거하기 위해 움직여 새로운 탱커가 이를 맡도록 합니다.",
"* |cff71d5ff|Hspell:197942|h[Rend Flesh]|h|r: 두 번째 Overwhelm 스택 후 바로 사용; 버프를 받은 탱커가 보스에게 있을 때, 이는 큰 문제가 되지 않지만, 스택을 가진 탱커에게는 치명적일 수 있습니다. - 적절한 타이밍에 턴을 가져오세요.",
"* |cff71d5ff|Hspell:198006|h[Focused Gaze]|h|r: 러스록이 한 플레이어를 찰징 대상으로 표시합니다; 표시된 플레이어는 벽을 따라 러스록을 돌고, 나머지는 경로를 피합니다.",
"* |cff71d5ff|Hspell:198388|h[Blood Frenzy]|h|r: 싸움이 길어질수록 점점 더 강해집니다 (프렌지 스택), 따라서 초반에 모든 치유 및 영웅성을 사용하고 싸움이 길어지지 않도록 하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["102672"] = { "니센드라",
"* |cff71d5ff|Hspell:204463|h[Volatile Rot]|h|r: 누구든 그것을 얻으면 방의 가장자리에 가서 곰팡이가 터져서 그룹에서 멀어지게 합니다. 자신의 곰팡이 범위 안에 서 있으면 곰팡이가 퍼지는 대신 제거됩니다.",
"* |cff71d5ff|Hspell:204504|h[Infested]|h|r: 곰팡이는 가까이 서 있는 사람에게 퍼지고, 데미지가 쌓일 때마다 밖으로 터져 나옵니다. 파티는 퍼지고, 탱커는 항상 가장 많은 곰팡이를 가지고 있습니다.",
"* |cff71d5ff|Hspell:203096|h[Rot]|h|r: 곰팡이 범위가 더 많은 곰팡이를 남기는 호흡 범위 - 그녀가 돌면, 근접 전투는 뒤에서 하고, 모두 곰팡이 범위에서 벗어납니다.",
"* |cff71d5ff|Hspell:203552|h[Heart of Swarm]|h|r: 숲이 울리기 시작하면, 그녀의 몸에서 곰팡이 범위가 반복적으로 터져 나옵니다 - 각 범위가 터질 때마다 뛰쳐나가고, 펄스가 터지는 사이에 돌아갑니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["102679"] = { "악마의 드래곤",
"* |cff71d5ff|Hspell:204720|h[Nightmare Dragon]|h|r: 네 개의 타락한 용 (Ysondre, Emeriss, Lethon, Taerar)이 위치를 교환합니다 - 한 번에 두 마리가 땅에만 존재하며, 활성화된 쌍에 집중하고, 한 마리가 쓰러질 때 쌍이 교체됩니다.",
"* |cff71d5ff|Hspell:204100|h[Shades of Taerar]|h|r: Taerar이 활성화되면 세 개의 그림자로 나뉩니다 - 각 근접 그룹에 하나씩 할당하고, 세 개를 동시에 불태우거나, 다시 형상화하고 다시 나뉩니다.",
"* |cff71d5ff|Hspell:203110|h[Slumbering Nightmare]|h|r: 잠 자는 구름은 플레이어를 악몽 영역으로 떨어뜨립니다 - 할당된 치유사는 함께 들어가 각 잠자는 사람을 해제하기 전에 잠이 끝날 때마다 깨웁니다.",
"* |cff71d5ff|Hspell:203028|h[Corrupted Breath]|h|r: 용의 앞쪽에서 긴 숨을 들이마십니다 - 숨을 들이마시는 용 뒤에 머물고, 넓게 퍼져서 악몽의 표시가 동일한 대상에 두 번 닿지 않도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["103769"] = { "자비우스",
"* |cff71d5ff|Hspell:224649|h[Tormenting Swipe]|h|r: 앞쪽에 큰 공격 - 탱커는 래드를 멀리하고, 공격을 피하며 방어하고, 두 번째 단계에서 공격이 훨씬 강하다.",
"* |cff71d5ff|Hspell:206651|h[Darkening Soul]|h|r: 틱하는 악몽 오염이 플레이어를 끌어당기는 - 지정된 치유사가 오염 효과를 제거하여 모두를 안전한 위치에 유지한다.",
"* |cff71d5ff|Hspell:209158|h[Blackening Soul]|h|r: 두 번째 단계 버전도 운반자를 중심으로 악몽 고통을 폭발시킨다 - 플레이어는 흩어져, 다음 공격을 누가 받을지 정하고, 폭발하기 전에 그룹에서 멀리한다.",
"* |cff71d5ff|Hspell:209443|h[Nightmare Infusion]|h|r: 자비우스는 싸움이 두 번째 단계로 진행되는 동안 계속해서 자신을 강화한다; 싸움을 빠르게 끝내서 강화가 그의 피해를 통제 불능 상태로 만들지 않도록 한다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104636"] = { "세나리우스",
"* |cff71d5ff|Hspell:210279|h[Creeping Nightmares]|h|r: 보스에게 마법을 사용하는 동안 주변에 있는 사람은 지속적으로 악몽 피해를 입습니다 - 메이플은 마법이 끝날 때 걸어 돌아옵니다.",
"* |cff71d5ff|Hspell:213162|h[Nightmare Blast]|h|r: 부패한 말퓨리온 단계에서 폭발은 표시된 플레이어에게 맞습니다 - 표시된 사람은 즉시 그룹을 떠납니다. 왜냐하면 폭발은 뒤에 오염된 구덩이를 남깁니다.",
"* |cff71d5ff|Hspell:214529|h[Spear of Nightmares]|h|r: 마지막 단계에서 세나리우스는 악몽의 창을 던집니다 - 흡수 그룹은 함께 창을 잡아야 합니다 - 흡수 그룹은 각 창으로 달려가고, 나머지는 멀리 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:210290|h[Nightmare Brambles]|h|r: 가시가 영역을 통해 자라며 앞에 있는 사람을 공격합니다 - 가시가 자라는 동안 움직임을 멈추고, 안정되면 뛰어넘으세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["105393"] = { "일기노스",
"* |cff71d5ff|Hspell:210984|h[Eye of Fate]|h|r: 중앙 광장에 있는 거대한 눈이 무작위 공격자에게 발사합니다 - 외곽 단계 동안, 치유사는 공격을 막고, 파티는 눈 사이로 분산됩니다.",
"* |cff71d5ff|Hspell:215234|h[Nightmarish Fury]|h|r: 외곽 촉수가 사라지면 심장이 열립니다 - 오염되지 않은 플레이어만 들어갈 수 있습니다 - 오염을 제거하고, 꿈의 꽃을 통과하여, 내부 눈을 죽이고 심장이 폭발하기 전에 빠져나와야 합니다.",
"* |cff71d5ff|Hspell:210931|h[Nightmare Gaze]|h|r: 어두운 눈은 플랫폼 전체에 넓은 시야를 발사합니다 - 광선에 들어가지 않고 어두운 눈을 빠르게 태우십시오. 왜냐하면 살아있는 동안 데미지가 누적되기 때문입니다.",
"* |cff71d5ff|Hspell:210099|h[Fixate]|h|r: 악몽의 존재가 한 플레이어에게 고정됩니다 - 유령 같은 플레이어가 넓은 원을 그리며 존재를 쫓고, 파티는 원거리에서 존재를 태웁니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["106087"] = { "엘레레스 렌퍼럴",
"* |cff71d5ff|Hspell:212512|h[Web Wrap]|h|r: 거미 형태로, 그녀는 플레이어를 웹으로 감싸고, 근접 공격이 껍질을 빠르게 열고, 레이드가 퍼져나가므로 다음 웹이 새로운 대상에 맞도록 합니다.",
"* |cff71d5ff|Hspell:215582|h[Raking Talons]|h|r: 발톱 공격은 보스 탱커에게 강하게 쌓이고, 두 탱커가 각 쌍의 공격을 주고받고, 공격을 받은 탱커는 물러납니다.",
"* |cff71d5ff|Hspell:210326|h[Spider Form]|h|r: 그녀는 거미 형태로 (전방 웹과 공격)와 까마귀 형태로 (바람 깃발이 플레이어를 가장자기로 밀어내는)를 번갈아 사용합니다 - 전환을 읽고, 초기에 재배치합니다.",
"* |cff71d5ff|Hspell:212364|h[Feeding Time]|h|r: 수많은 브루들링이 표시된 플레이어를 먹이로 생성됩니다; 표시된 플레이어는 레이드를 멀리 날아가게 하고, 나머지는 안전한 지점에서 떼를 태웁니다."
};

-- The Nighthold : Zona 1530 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["101002"] = { "크로서스",
"* |cff71d5ff|Hspell:206677|h[Searing Brand]|h|r: 2명의 탱커가 4번째 스택을 쌓기 전에 서로 공격하고, 마지막 공격을 하는 탱커는 그 자리에서 빠져나갑니다.",
"* |cff71d5ff|Hspell:205344|h[Expel: Orb of Destruction]|h|r: 그는 다리 위를 쫓는 펠 오브를 발사합니다 - 표시된 플레이어가 오브를 다리의 반대쪽 끝으로 끌고, 그곳에서 폭발하도록 합니다.",
"* |cff71d5ff|Hspell:205862|h[Slam]|h|r: 매번 램은 다리의 조각을 부숩니다 - 레이드는 그가 램을 하지 않는 부분을 이동하고, 무너지는 가장자리에서 멀리 떨어져 있으며, 충격을 감당하기 위해 코일다운을 사용합니다.",
"* |cff71d5ff|Hspell:205368|h[Fel Beam]|h|r: 다리의 한쪽으로 펠 에너지를 쏘는 광선 - 광선에 걸려 넘어지지 않고, 타격될 때 안전한 곳에 머물도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["102263"] = { "스코르파이론",
"* |cff71d5ff|Hspell:204275|h[Arcanoslash]|h|r: 강력한 탱커에게 적중 시 슈퍼차지를 부여 - 탱커는 방어 스킬로 흡수하고, 레이드가 지속적으로 움직여서 스킬 사이를 이동합니다.",
"* |cff71d5ff|Hspell:204372|h[Call of Scorpid]|h|r: 스코립드가 균열에서 튀어나옴 - 빠르게 AoE로 정리하고, 독이 쌓여서 공간이 불가능해지기 전에 제거합니다.",
"* |cff71d5ff|Hspell:204292|h[Broken Shard]|h|r: 바닥에서 솟아오르는 수정 조각 - 흩어질 때 넓게 흩날리도록 공간을 확보하고, 동시에 쇼크웨이브 시작 시 숨을 곳으로 사용합니다.",
"* |cff71d5ff|Hspell:204459|h[Vulnerable]|h|r: 흩어질 때 걸린 피해자는 15초 동안 취약 상태를 띄며, 다음 아크네 스킬 피해를 증폭시킵니다 - 넓게 퍼뜨려 다음 공격 전에 사라지도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["103685"] = { "티콘드리우스",
"* |cff71d5ff|Hspell:216024|h[Volatile Wound]|h|r: 스테크가 쌓이는 것을 막기 위한 탱커의 디버프 - 탱커들이 먼저 공격하여 스테크가 쌓이지 않도록 하고, 새로운 탱커가 적절한 시점에 교체.",
"* |cff71d5ff|Hspell:208230|h[Feast of Blood]|h|r: 그는 레이드의 혈액을 흡수하기 시작 - 30야드 이내에 있는 모든 사람은 도주하거나, 스스로 회복.",
"* |cff71d5ff|Hspell:206480|h[Carrion Plague]|h|r: 가까이 서 있는 플레이어에게 전염되는 질병 디버프 - 질병을 옮기는 플레이어는 다른 레이드 멤버와 거리를 유지.",
"* |cff71d5ff|Hspell:212794|h[Brand of Argus]|h|r: 그는 4명의 플레이어를 마크로 표시 - 마크가 적용된 플레이어는 서로 거리를 유지."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["103758"] = { "별 점술가 에트레우스",
"* |cff71d5ff|Hspell:205984|h[Gravitational Pull]|h|r: 딜을 사용하는 탱커가 활성 페이즈(얼음, 펠 또는 빈)를 가진 탱커에게 끌려가 - 다른 탱커는 보스를 턴하고 탱커에게 스택이 다시 쌓이지 않도록 합니다.",
"* |cff71d5ff|Hspell:205429|h[Star Sign: Crab]|h|r: 노란색 신호 - 동일 신호를 공유하는 플레이어는 함께 모이고, 다른 신호를 가진 플레이어는 멀어지며, 두 그룹은 분리됩니다.",
"* |cff71d5ff|Hspell:216344|h[Star Sign: Dragon]|h|r: 파란색 신호 - 동일 규칙: 동일 신호를 가진 플레이어와 함께하고, 다른 신호를 가진 플레이어는 멀리 떨어뜨립니다.",
"* |cff71d5ff|Hspell:216345|h[Star Sign: Hunter]|h|r: 초록색 신호 - 동일 규칙: 동일 신호만 짝을 지어 만들고, 다른 신호는 멀리 떨어뜨립니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104154"] = { "굴단",
"* |cff71d5ff|Hspell:206222|h[Bonds of Fel]|h|r: 플레이어를 (그리고 탱커) 연결하여 - 연결된 파는 분리되고, 링크가 소모될 때 나머지 레이드에서 멀어지고, 신선한 탱커는 보스에게 탭합니다.",
"* |cff71d5ff|Hspell:208802|h[Soul Corrosion]|h|r: Bonds of Fel에서 나오는 펠이 쌓일 때마다 더 깊게 화상을 입힙니다 - 운반자는 초기에 벗어나서 부식이 통제되지 않도록 합니다.",
"* |cff71d5ff|Hspell:221606|h[Flames of Sargeras]|h|r: 플레이어에게 펠 불을 던집니다 - 표시된 사람은 레이드에서 뛰어나 불이 닿는 곳에 불을 남깁니다.",
"* |cff71d5ff|Hspell:206219|h[Liquid Hellfire]|h|r: 녹은 펠을 던집니다 - 방 중앙으로 웅덩이를 몰아넣지 마세요, 왜냐하면 싸움이 길어질수록 웅덩이가 커지고 더 뜨거워지기 때문입니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104288"] = { "트릴리악스",
"* |cff71d5ff|Hspell:206641|h[Arcano Slash]|h|r: 탱커들이 첫 번째 공격 후 각 사이클마다 교환 - 탱커들이 그를 공격합니다.",
"* |cff71d5ff|Hspell:206488|h[Arcane Seepage]|h|r: 아카인 슬러지가 바닥에 묻어 - 그 안에 서지 마세요, 그 안에 서 있으면 화상으로 인해 데미지를 입습니다.",
"* |cff71d5ff|Hspell:206560|h[Cleaner Mode]|h|r: 그의 클리너 측이 45초 동안 활성화 - 방에 그의 씨앗 흔적이 가득 차므로 깨끗한 땅에 서 있고, 그의 길을 피하세요.",
"* |cff71d5ff|Hspell:206788|h[Toxic Slice]|h|r: 그는 독성 조각을 분사 (청소하는 동안) - 분사된 액체는 웅덩이를 남기므로, 분사 공격을 피하고 바닥을 주시하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104415"] = { "시간 변형체",
"* |cff71d5ff|Hspell:206607|h[Chronometric Particles]|h|r: 스택 탱 데부프 - 탱들이 이상 현상을 먼저 처리하여 스택이 심화되지 않도록 합니다.",
"* |cff71d5ff|Hspell:219823|h[Power Overwhelming]|h|r: 이상 현상은 매 시간 변화마다 얻는 스택을 유지합니다 - 싸움이 길어질수록 모든 공격이 더 강력해지므로, 스택이 승리하기 전에 데미지를 누적하고 끝내세요.",
"* |cff71d5ff|Hspell:207012|h[Normal Time]|h|r: 방이 다시 정상 속도로 흐릅니다 - 최대한 빨리 화상 공격을 할 수 있는 기회입니다.",
"* |cff71d5ff|Hspell:207013|h[Fast Time]|h|r: 시간 경쟁 - 모든 주문, 폭탄, 빔이 자연보다 빠르게 도착하므로, 미리 피하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104528"] = { "고위 식물학자 텔아른",
"* |cff71d5ff|Hspell:218503|h[Recursive Strikes]|h|r: 탱커 디버프 쌓기 - 3번째 공격 전에 탱커들이 그를 교환합니다.",
"* |cff71d5ff|Hspell:218806|h[Flare]|h|r: 탱커를 향해 직접 발사하는 태양 광선 - 오프 탱커와 그를 껴안는 플레이어는 피해야 합니다. 왜냐하면 광선이 빠르게 반복되기 때문입니다.",
"* |cff71d5ff|Hspell:218927|h[Grace of Nature]|h|r: 그는 그 안에서 치유하고 강화하는 숲을 생성합니다 - 탱커는 그를 숲에서 끌어내고, 레이드는 숲을 파괴합니다.",
"* |cff71d5ff|Hspell:218438|h[Controlled Chaos]|h|r: 그는 혼란 지역을 생성하고 채널링합니다 - 바닥을 주의하세요. 영역이 퍼지고 깨끗한 타일로 이동합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104881"] = { "마법검사 알루리엘",
"* |cff71d5ff|Hspell:212492|h[Annihilate]|h|r: 그녀는 2번의 강력한 공격으로 탱커를 공격합니다 - 탱커는 냉기를 사용하여 공격을 막고, 탱커는 그녀와 교환하며 마법이 지속되는 동안 공격합니다.",
"* |cff71d5ff|Hspell:212647|h[Frostbitten]|h|r: 표시된 냉기 운반자는 가까이 있는 사람에게 냉기 피해를 줍니다 - 운반자를 멀리하고, 냉기 효과는 사라집니다.",
"* |cff71d5ff|Hspell:213864|h[Frost Phase]|h|r: 그녀는 검에 냉기를 부여합니다 - 방 안에 얼음 조각과 얼음 구체가 생깁니다; 넓게 퍼져서 얼음이 어디에 놓이는지 주의하세요.",
"* |cff71d5ff|Hspell:213867|h[Fire Phase]|h|r: 검이 불에 타버립니다 - 그녀의 발걸음과 공격에 불타는 흔적이 생깁니다; 움직이고 불을 피하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["106643"] = { "그랜드 마지스트릭 엘리산드",
"* |cff71d5ff|Hspell:209615|h[Ablation]|h|r: 탱커들의 스택 데미지 - 탱커들이 먼저 그녀를 처치하여 스택이 쌓이는 것을 막아야 합니다.",
"* |cff71d5ff|Hspell:209973|h[Ablating Explosion]|h|r: 보스가 폭탄을 들고 - 탱커는 그녀를 방으로 가장자리로 데리고 가서 폭발이 파티 전체를 맞추지 않도록 서서 있어야 합니다.",
"* |cff71d5ff|Hspell:209598|h[Conflexive Burst]|h|r: 표시된 플레이어는 만료 시 강하게 터지는 버스트를 유지합니다 - 표시된 플레이어는 버스트가 소모될 때까지 흩어져서 모두를 피해야 합니다.",
"* |cff71d5ff|Hspell:209971|h[Ablative Pulse]|h|r: 중단 가능한 캐스트 - 한 명이 자유로울 때마다 끊어주세요, 그렇지 않으면 파울스가 전체 파티를 공격합니다."
};

-- Court of Stars : Zona 1571 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104215"] = { "경비대 대장 게르도",
"* |cff71d5ff|Hspell:219488|h[Streetsweeper]|h|r: 그는 길에 트랩 마인을 흩뿌려 놓습니다 - 그 사이를 이동하고 절대 한 마인 위에 서 있지 마세요.",
"* |cff71d5ff|Hspell:207815|h[Flask]|h|r: 그는 타는 병을 던집니다 - 뒤에 남은 불에서 벗어나세요.",
"* |cff71d5ff|Hspell:207261|h[Resonant Slash]|h|r: 공명 공격은 땅에 원을 만듭니다 - 각 원이 폭발하기 전에 움직이세요.",
"* |cff71d5ff|Hspell:207278|h[Arcane Lockdown]|h|r: 그의 아카네 락다운은 움직이지 않는 사람을 가둡니다 - 계속 움직이고 룬 위에 서 있지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104217"] = { "탈릭세이 플레임리스",
"* |cff71d5ff|Hspell:208165|h[Withering Soul]|h|r: 그의 쇠퇴한 영혼은 탱커에게 생명력을 흡수합니다 - 신선한 탱커는 공격하고, 흡수된 탱커는 떨어져서 안전한 거리를 유지합니다.",
"* |cff71d5ff|Hspell:207906|h[Burning Intensity]|h|r: 그는 무대에서 오래 버틸수록, 그의 타는 강렬함이 증가합니다 - 스택이 최고점에 도달하기 전에 그를 태웁니다.",
"* |cff71d5ff|Hspell:207881|h[Infernal Eruption]|h|r: 불타는 폭발이 땅을 뚫고 올라옵니다 - 폭발이 남기는 모든 원을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["104218"] = { "조언가 멜란드루스",
"* |cff71d5ff|Hspell:209602|h[Surge]|h|r: 그의 서지는 앞쪽에 집중되므로, 근접 딜러는 뒤에 머물고 앞쪽은 비워두세요.",
"* |cff71d5ff|Hspell:209676|h[Slicing Maelstrom]|h|r: 그의 슬라이싱 메일스트롬은 방 전체를 관통하므로, 넓게 퍼져서 피해를 흡수하세요.",
"* |cff71d5ff|Hspell:209628|h[Gale]|h|r: 강한 바람이 플랫폼을 휩쓸어 버리므로, 바람 벽이 지나갈 때 피하세요."
};

-- Return to Karazhan : Zona 1651 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["113971"] = { "고결의 여신",
"* |cff71d5ff|Hspell:227789|h[Sacred Ground]|h|r: 그의 성스러운 땅은 정화된 고리에 서 있는 사람을 불태웁니다 - 고리에서 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:227823|h[Holy Wrath]|h|r: 그의 성스러운 분노가 폭발합니다 - 폭발을 통해 서로, 그리고 탱커로부터 분산됩니다.",
"* |cff71d5ff|Hspell:227800|h[Holy Shock]|h|r: 그녀는 스스로 회복되지만 - 항상 홀리 쨞을 방해하세요.",
"* |cff71d5ff|Hspell:227508|h[Repentance]|h|r: Repentance de [Repentance] ataca la mente de los jugadores - elimina rápidamente a los controlados y prepárate para el lanzamiento."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114251"] = { "오페라 홀: 위키트",
"* |cff71d5ff|Hspell:227477|h[몬스터 소환]|h|r: 몬스터들이 주변에 몰려온다 - 빠르게 몬스터들을 제압하세요.",
"* |cff71d5ff|Hspell:227776|h[멋진 마법]|h|r: 그의 멋진 마법이 무대 전체를 관통한다 - 엄폐물 뒤로 이동하여 시야를 차단하세요.",
"* |cff71d5ff|Hspell:227416|h[놀라운 광채]|h|r: 그의 놀라운 광채가 홀을 가득 채운다 - 광채에서 멀리 떨어져 눈부심에 대비하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114252"] = { "마나 포식자",
"* |cff71d5ff|Hspell:227523|h[Energy Void]|h|r: 그의 에너지 void는 캐스터들을 마나를 소모하게 만듭니다 - 치유사는 마나를 관리하고 void가 생성된 위치에 머물도록 합니다.",
"* |cff71d5ff|Hspell:227618|h[Arcane Bomb]|h|r: 그의 arcane bomb은 표시된 위치에 떨어집니다 - 폭발하기 전에 움직이세요.",
"* |cff71d5ff|Hspell:227507|h[Decimating Essence]|h|r: decimating essence는 방 전체에 퍼집니다 - 폭발 시에 퍼지고 치유하세요.",
"* |cff71d5ff|Hspell:227297|h[Coalesce Power]|h|r: 그의 coalesced orb는 하나의 거대한 공으로 융합됩니다 - 공의 폭발을 함께 공유하세요, 공을 통째로 먹지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114260"] = { "오페라 홀: 웨스트폴 스토리",
"* |cff71d5ff|Hspell:227568|h[Leg Sweep]|h|r: 그의 레 휩은 주변의 모든 사람에게 피해를 입힙니다 - 휩을 피하는 것이 먹는 것보다 낫습니다.",
"* |cff71d5ff|Hspell:227777|h[Thunder Ritual]|h|r: 썬더 리투얼은 플레이어를 마크합니다 - 각 마크된 위치에서 분산됩니다.",
"* |cff71d5ff|Hspell:227420|h[Bubble Blast]|h|r: 파라트는 버블 블래스트를 채널합니다 - 캐스팅을 방해합니다.",
"* |cff71d5ff|Hspell:227783|h[Wash Away]|h|r: 그의 워시 어웨이는 갑판 전체를 파괴합니다 - 파도를 뛰어넘거나 안전한 곳에 서 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114261"] = { "오페라 홀: 웨스트폴 스토리",
"* |cff71d5ff|Hspell:227568|h[Leg Sweep]|h|r: 그의 레 휩은 주변의 모든 사람에게 피해를 입힙니다 - 휩을 피하는 것이 먹는 것보다 낫습니다.",
"* |cff71d5ff|Hspell:227777|h[Thunder Ritual]|h|r: 썬더 리투얼은 플레이어를 마크합니다 - 각 마크된 위치에서 분산됩니다.",
"* |cff71d5ff|Hspell:227420|h[Bubble Blast]|h|r: 파라트는 버블 블래스트를 채널합니다 - 캐스팅을 방해합니다.",
"* |cff71d5ff|Hspell:227783|h[Wash Away]|h|r: 그의 워시 어웨이는 갑판 전체를 파괴합니다 - 파도를 뛰어넘거나 안전한 곳에 서 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114262"] = { "사냥꾼 어튜멘",
"* |cff71d5ff|Hspell:227363|h[Mighty Stomp]|h|r: 그의 강력한 발을 끊어 - 발이 자유로워질 때마다 중단하세요.",
"* |cff71d5ff|Hspell:227365|h[Spectral Charge]|h|r: 그의 스펙트럴 차지가 방을 통과합니다 - 충돌 경로를 피하세요.",
"* |cff71d5ff|Hspell:227339|h[Mezair]|h|r: 그의 메자이어는 말을 타고 방을 휩쓸어 - 말을 타고 충돌하는 경로를 정리하세요.",
"* |cff71d5ff|Hspell:227493|h[Mortal Strike]|h|r: 그의 몰탈 스트라이크는 탱을 파괴합니다 - 탱킹 메커니즘: 방어 기술로 교체하고 흡수하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114264"] = { "사냥꾼 어튜멘",
"* |cff71d5ff|Hspell:227363|h[Mighty Stomp]|h|r: 그의 강력한 발을 끊어 - 발이 자유로워질 때마다 중단하세요.",
"* |cff71d5ff|Hspell:227365|h[Spectral Charge]|h|r: 그의 스펙트럴 차지가 방을 통과합니다 - 충돌 경로를 피하세요.",
"* |cff71d5ff|Hspell:227339|h[Mezair]|h|r: 그의 메자이어는 말을 타고 방을 휩쓸어 - 말을 타고 충돌하는 경로를 정리하세요.",
"* |cff71d5ff|Hspell:227493|h[Mortal Strike]|h|r: 그의 몰탈 스트라이크는 탱을 파괴합니다 - 탱킹 메커니즘: 방어 기술로 교체하고 흡수하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114284"] = { "오페라 홀: 위키트",
"* |cff71d5ff|Hspell:227477|h[몬스터 소환]|h|r: 몬스터들이 주변에 몰려온다 - 빠르게 몬스터들을 제압하세요.",
"* |cff71d5ff|Hspell:227776|h[멋진 마법]|h|r: 그의 멋진 마법이 무대 전체를 관통한다 - 엄폐물 뒤로 이동하여 시야를 차단하세요.",
"* |cff71d5ff|Hspell:227416|h[놀라운 광채]|h|r: 그의 놀라운 광채가 홀을 가득 채운다 - 광채에서 멀리 떨어져 눈부심에 대비하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114312"] = { "모로스",
"* |cff71d5ff|Hspell:227672|h[Will Breaker]|h|r: 그의 윌 브레이커는 탱커의 방어를 공격 - 탱커는 공격을 교환합니다.",
"* |cff71d5ff|Hspell:227737|h[Vanish]|h|r: 그는 그림자 속으로 사라져서 공격 - 사라질 때 흩어져서 공격합니다.",
"* |cff71d5ff|Hspell:227872|h[Ghastly Purge]|h|r: 그의 끔찍한 정화는 손님들을 소환합니다 - 손님들이 모일 때까지 AoE로 공격합니다.",
"* |cff71d5ff|Hspell:227545|h[Mana Drain]|h|r: 그의 마나 드레인은 캐스터를 소모합니다 - 킥하거나 드레인을 방어합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114328"] = { "오페라 홀: 아름다운 짐승",
"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: 빗자루가 심한 먼지를 휩쓸어 - 빗자루를 AoE 공격하고 먼지가 죽도록 놔두세요.",
"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: 카라 카자햄의 마법 - 마법이 걸린 것을 먼저 끊어내세요.",
"* |cff71d5ff|Hspell:228193|h[Burning Blaze]|h|r: 불꽃이 무대 위로 흩뿌려짐 - 불을 피하고 흩뿌려지도록 하세요.",
"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: 지팡이가 열파를 발사함 - 매번 주문을 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114329"] = { "오페라 홀: 아름다운 짐승",
"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: 빗자루가 심한 먼지를 휩쓸어 - 빗자루를 AoE 공격하고 먼지가 죽도록 놔두세요.",
"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: 카라 카자햄의 마법 - 마법이 걸린 것을 먼저 끊어내세요.",
"* |cff71d5ff|Hspell:228193|h[Burning Blaze]|h|r: 불꽃이 무대 위로 흩뿌려짐 - 불을 피하고 흩뿌려지도록 하세요.",
"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: 지팡이가 열파를 발사함 - 매번 주문을 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114330"] = { "오페라 홀: 아름다운 짐승",
"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: 빗자루가 심한 먼지를 휩쓸어 - 빗자루를 AoE 공격하고 먼지가 죽도록 놔두세요.",
"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: 카라 카자햄의 마법 - 마법이 걸린 것을 먼저 끊어내세요.",
"* |cff71d5ff|Hspell:228193|h[Burning Blaze]|h|r: 불꽃이 무대 위로 흩뿌려짐 - 불을 피하고 흩뿌려지도록 하세요.",
"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: 지팡이가 열파를 발사함 - 매번 주문을 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114350"] = { "메디브의 망령",
"* |cff71d5ff|Hspell:227615|h[Inferno Bolt]|h|r: 그의 인페르노 볼트는 홀을 가로질러 튀어 - 볼트가 날아갈 때 피하십시오.",
"* |cff71d5ff|Hspell:228269|h[Flame Wreath]|h|r: 그의 불 원은 바닥을 감싸 - 원에 닿지 마십시오, 접촉 시 폭발합니다.",
"* |cff71d5ff|Hspell:227628|h[Arcane Missiles]|h|r: 그의 아카네 미사일은 탱커를 공격 - 탱커는 미사일과 교환합니다.",
"* |cff71d5ff|Hspell:227592|h[Frostbite]|h|r: 그의 냉동은 탱커의 플레이트를 얼립니다 - 냉동을 중단하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114462"] = { "전시 관리인",
"* |cff71d5ff|Hspell:227267|h[몬스터]|h|r: 폭이 주변에 쏟아지므로 - 모두를 처치하지만, 그들을 원래 위치에서 쫓아내지 마세요.",
"* |cff71d5ff|Hspell:227254|h[마법]|h|r: 그는 자신을 회복하기 위해 마법을 사용합니다 - 창문으로 집중적으로 공격하세요.",
"* |cff71d5ff|Hspell:227465|h[힘 방출]|h|r: 그의 힘 방출이 폭에서 뿜어져 나옵니다 - 각 방출 지점에서 멀리 떨어지세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114522"] = { "오페라 홀: 아름다운 짐승",
"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: 빗자루가 심한 먼지를 휩쓸어 - 빗자루를 AoE 공격하고 먼지가 죽도록 놔두세요.",
"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: 카라 카자햄의 마법 - 마법이 걸린 것을 먼저 끊어내세요.",
"* |cff71d5ff|Hspell:228193|h[Burning Blaze]|h|r: 불꽃이 무대 위로 흩뿌려짐 - 불을 피하고 흩뿌려지도록 하세요.",
"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: 지팡이가 열파를 발사함 - 매번 주문을 방해하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114790"] = { "감시자 비즈아둠",
"* |cff71d5ff|Hspell:229159|h[Chaotic Shadows]|h|r: 혼란스러운 그림자가 플레이어에게 닫히고 있습니다 - 전투에서 그림자를 멀리 공격하세요.",
"* |cff71d5ff|Hspell:229242|h[Fel Beam]|h|r: 그의 펠 빔이 전투터 위를 가로지릅니다 - 빔 라인을 피하세요.",
"* |cff71d5ff|Hspell:229151|h[Disintegrate]|h|r: 그의 디스인테그레이트는 플랫폼 전체를 찢어냅니다 - 라인을 보고 벗어나세요.",
"* |cff71d5ff|Hspell:229083|h[Burning Blast]|h|r: 그의 버닝 블래스트는 그를 태웁니다 - 근접은 뒤에 머물러야 합니다."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["114895"] = { "나이트베인",
"* |cff71d5ff|Hspell:228796|h[Ignite Soul]|h|r: 그의 아이지 소울은 가장 가까운 플레이어를 태웁니다 - 태움으로부터 멀리 떨어져서, 탱커로부터 멀리 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:228785|h[Breath]|h|r: 그의 호흡은 앞쪽에 화상을 입힙니다 - 앞쪽에 위치하지 않도록 해야 합니다.",
"* |cff71d5ff|Hspell:229307|h[Reverb Shadows]|h|r: 리버브 쉐도우는 rookery에 울려 퍼집니다 - 쉐도우를 AoE로 공격해야 합니다.",
"* |cff71d5ff|Hspell:228808|h[Charred Earth]|h|r: 그의 찰드 얼스는 땅을 불태웁니다 - 찰드 얼판 위에 서지 마세요."
};

-- Trial of Valor : Zona 1648 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114263"] = { "오딘",
"* |cff71d5ff|Hspell:227626|h[Odyn's Test]|h|r: 그의 테스트는 탱커가 그를 잡고 쌓이는 방식으로 진행됩니다 - 두 탱커는 서로 교대하며 테스트를 진행하고, 한 탱커가 모든 공격을 감당하지 않도록 합니다.",
"* |cff71d5ff|Hspell:228918|h[Stormforged Spear]|h|r: 그는 탱커 또는 치유사에 스톰포지드 창을 던집니다 - 창을 피하고, 신선한 탱커가 그를 끄는 역할을 합니다.",
"* |cff71d5ff|Hspell:228171|h[Revivify]|h|r: 발'키르는 상처를 치료하는 리비파이 힐을 채널합니다 - 힐을 끊고 지속적인 데미지를 유지합니다.",
"* |cff71d5ff|Hspell:227503|h[Branded]|h|r: 플레이어는 그의 공격력을 흡수하도록 브랜드됩니다 - 브랜드된 플레이어는 지정된 위치에 모여 함께 공격력을 흡수합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114323"] = { "구아름",
"* |cff71d5ff|Hspell:228201|h[Off the Leash]|h|r: 그는 리치를 끊고 30초 동안 맹렬하게 달립니다 - 공격 중에는 라인을 유지하고 탱커를 보호하세요.",
"* |cff71d5ff|Hspell:227514|h[Fangs]|h|r: 그의 송곳니가 탱커를 심하게 물어뜯습니다 - 탱커는 두 번째 물어뜯기 전에 탱커와 교환합니다.",
"* |cff71d5ff|Hspell:228253|h[Shadow Lick]|h|r: 한 머리가 어둠의 그림자를 핥아 플레이어를 공격합니다 - 핥은 플레이어는 공격하는 머리의 침과 일치하는 라인을 형성하고, 그림자는 절대 섞여서는 안 됩니다.",
"* |cff71d5ff|Hspell:228248|h[Frost Lick]|h|r: 얼음 핥기는 핥는 사람을 얼리고 얼립니다 - 핥은 플레이어가 핥은 즉시 치유합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114360"] = { "오딘",
"* |cff71d5ff|Hspell:227626|h[Odyn's Test]|h|r: 그의 테스트는 탱커가 그를 잡고 쌓이는 방식으로 진행됩니다 - 두 탱커는 서로 교대하며 테스트를 진행하고, 한 탱커가 모든 공격을 감당하지 않도록 합니다.",
"* |cff71d5ff|Hspell:228918|h[Stormforged Spear]|h|r: 그는 탱커 또는 치유사에 스톰포지드 창을 던집니다 - 창을 피하고, 신선한 탱커가 그를 끄는 역할을 합니다.",
"* |cff71d5ff|Hspell:228171|h[Revivify]|h|r: 발'키르는 상처를 치료하는 리비파이 힐을 채널합니다 - 힐을 끊고 지속적인 데미지를 유지합니다.",
"* |cff71d5ff|Hspell:227503|h[Branded]|h|r: 플레이어는 그의 공격력을 흡수하도록 브랜드됩니다 - 브랜드된 플레이어는 지정된 위치에 모여 함께 공격력을 흡수합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114361"] = { "오딘",
"* |cff71d5ff|Hspell:227626|h[Odyn's Test]|h|r: 그의 테스트는 탱커가 그를 잡고 쌓이는 방식으로 진행됩니다 - 두 탱커는 서로 교대하며 테스트를 진행하고, 한 탱커가 모든 공격을 감당하지 않도록 합니다.",
"* |cff71d5ff|Hspell:228918|h[Stormforged Spear]|h|r: 그는 탱커 또는 치유사에 스톰포지드 창을 던집니다 - 창을 피하고, 신선한 탱커가 그를 끄는 역할을 합니다.",
"* |cff71d5ff|Hspell:228171|h[Revivify]|h|r: 발'키르는 상처를 치료하는 리비파이 힐을 채널합니다 - 힐을 끊고 지속적인 데미지를 유지합니다.",
"* |cff71d5ff|Hspell:227503|h[Branded]|h|r: 플레이어는 그의 공격력을 흡수하도록 브랜드됩니다 - 브랜드된 플레이어는 지정된 위치에 모여 함께 공격력을 흡수합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["114537"] = { "헬리아",
"* |cff71d5ff|Hspell:227982|h[Bilewater Redox]|h|r: 핏물 덩어리가 그녀의 갑옷을 덮습니다 - 신선한 탱커가 그녀를 끄집어내고, 나머지는 덩어리가 따라오는 것을 피합니다.",
"* |cff71d5ff|Hspell:228519|h[Anchor Slam]|h|r: 그녀가 땅에 앵커를 쳐 - 그녀를 레이드를 멀리하고, 신선한 탱커가 각 쳐짐에 들어갈 수 있도록 합니다.",
"* |cff71d5ff|Hspell:229119|h[Orb of Corruption]|h|r: 부패의 구체가 플레이어를 감싸 - 운반자는 구체를 레이드에서 멀리하고, 가장자리에 터뜨립니다.",
"* |cff71d5ff|Hspell:228054|h[Taint of the Sea]|h|r: 그녀의 오염이 전투 주변의 물에 스며듭니다 - 오염된 물을 피하고, 악취가 닿는 사람에게 퍼집니다."
};

-- Tomb of Sargeras : Zona 1676 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["115767"] = { "여군주 사스즈인",
"* |cff71d5ff|Hspell:230201|h[Burden of Pain]|h|r: 그녀는 힐러를 묶어 고통의 짐을 지게 하여, 힐러는 힐러를 보호하면서, 힐러는 힐러를 보호하고, 탱커는 그녀를 교환하며, 힐러는 힐러를 보호합니다.",
"* |cff71d5ff|Hspell:230139|h[Hydra Shot]|h|r: 그녀는 4개의 머리에서 모든 플레이어를 대상으로 발사 - 표시된 플레이어는 흩어져서, 공격이 맞습니다.",
"* |cff71d5ff|Hspell:230273|h[Dark Depths]|h|r: 그녀는 바닥에 어두운 깊이를 쏟아 - 검은 물은 썩고, 안에 서 있는 모든 사람을 덮어, 돌아다니고, 오래 머물지 마세요.",
"* |cff71d5ff|Hspell:230214|h[Burden Pulse]|h|r: 짐의 고통이 방 전체로 퍼져 나갑니다 - 힐러는 힐러의 쿨다운을 사용하여 힐러를 보호하고, 탱커는 짐을 그룹에서 멀리 유지합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["115844"] = { "고로스",
"* |cff71d5ff|Hspell:231363|h[Burning Armor]|h|r: 그의 갑옷은 매번 공격할 때마다 더 뜨거워집니다 - 탱커들은 타격이 심해지기 전에 먼저 공격하여, 타격하는 탱커가 후속 공격에서 벗어나도록 합니다.",
"* |cff71d5ff|Hspell:233055|h[Infernal Spike]|h|r: 불타는 바위가 플레이어 아래에서 솟아오릅니다 - 떠오르는 바닥에서 벗어나고, 바위가 떨어지는 위치를 주의하세요. 녹지 않습니다.",
"* |cff71d5ff|Hspell:233272|h[Shattering Star]|h|r: 거대한 광선이 플레이어를 통과합니다 - 목표는 파티에서 벗어나고, 광선의 경로에 서거나, 바위가 떨어지는 곳 뒤에 있으면 파괴됩니다.",
"* |cff71d5ff|Hspell:232249|h[Crashing Comet]|h|r: 표시된 플레이어 뒤에 소행성이 떨어집니다 - 표시된 플레이어는 각 소행성을 옆으로 밀어내고, 모두가 멀리 떨어진 타격 구역에 떨어지도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["116407"] = { "하르자탄",
"* |cff71d5ff|Hspell:231998|h[Jagged Abrasion]|h|r: 그의 껍질은 매 타격으로 탱커를 깎아내 - 탱커는 4번째 스택이 쌓이기 전에 그를 맞선다.",
"* |cff71d5ff|Hspell:233429|h[Frigid Blows]|h|r: 그의 공격은 얼음을 씌워 - 버프가 쌓일 때 그를 밀고, 가장 강한 공격에 대비한다.",
"* |cff71d5ff|Hspell:231729|h[Aqueous Burst]|h|r: 웨이머는 목표물 주위에 폭발 물을 생성하고 그를 치료한다 - 폭발 물을 받는 플레이어는 물줄기를 피하고, 레이드가 먼저 웨이머를 처치한다.",
"* |cff71d5ff|Hspell:234016|h[Driven Assault]|h|r: 글라디에이터는 플레이어를 고정하고 돌진한다 - 고정된 플레이어가 돌진을 피하고, 레이드는 즉시 추가몹을 처치한다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["116689"] = { "악마의 수사",
"* |cff71d5ff|Hspell:233426|h[Scythe Sweep]|h|r: 악마는 넓은 반경으로 자신의 낫을 휘두릅니다 - 탱커는 래이드에서 멀리하고 각 공격에서 벗어납니다.",
"* |cff71d5ff|Hspell:248713|h[Soul Corruption]|h|r: 부패는 각 스택마다 더 깊이 파고듭니다 - 각 플레이어의 스택을 10 미만으로 유지하기 위해 역할을 번갈아 수행합니다.",
"* |cff71d5ff|Hspell:233104|h[Torment]|h|r: 고문은 감금된 플레이어에게 영향을 미칩니다 - 고문이 최대치에 도달하기 전에 감금된 플레이어를 풀어냅니다.",
"* |cff71d5ff|Hspell:233431|h[Quills]|h|r: 석화된 깃털이 플레이어 주변으로 흩뿌려집니다 - 표시된 플레이어는 래이드에서 멀리하고 깃털이 자유롭게 날도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["116691"] = { "악마의 수사",
"* |cff71d5ff|Hspell:233426|h[Scythe Sweep]|h|r: 악마는 넓은 반경으로 자신의 낫을 휘두릅니다 - 탱커는 래이드에서 멀리하고 각 공격에서 벗어납니다.",
"* |cff71d5ff|Hspell:248713|h[Soul Corruption]|h|r: 부패는 각 스택마다 더 깊이 파고듭니다 - 각 플레이어의 스택을 10 미만으로 유지하기 위해 역할을 번갈아 수행합니다.",
"* |cff71d5ff|Hspell:233104|h[Torment]|h|r: 고문은 감금된 플레이어에게 영향을 미칩니다 - 고문이 최대치에 도달하기 전에 감금된 플레이어를 풀어냅니다.",
"* |cff71d5ff|Hspell:233431|h[Quills]|h|r: 석화된 깃털이 플레이어 주변으로 흩뿌려집니다 - 표시된 플레이어는 래이드에서 멀리하고 깃털이 자유롭게 날도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["116939"] = { "몰락한 화신",
"* |cff71d5ff|Hspell:236494|h[Desolate]|h|r: 그의 고립된 접촉은 탱커에게 쌓입니다 - 탱커는 스택이 위험해지기 전에 그를 공격합니다.",
"* |cff71d5ff|Hspell:233556|h[Corrupted Matrix]|h|r: 그는 오염된 매트릭스로 이동합니다 - 탱커는 그와 함께 움직이고, 빔이 다시 발사되기 전에 재정착하여 전투를 다시 시작합니다.",
"* |cff71d5ff|Hspell:240728|h[Tainted Essence]|h|r: 그의 그림자 폭발은 그들이 닿는 사람의 에센스를 오염시킵니다 - 오염된 단계는 오염이 사라질 때까지 나오도록 하고, 스택이 올라가지 않도록 합니다.",
"* |cff71d5ff|Hspell:234059|h[Unbound Chaos]|h|r: 그의 해방된 혼돈은 플랫폼을 돌아다니며 타는 길을 만듭니다 - 바닥을 보고, 스트림을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["117269"] = { "킬제덴",
"* |cff71d5ff|Hspell:239932|h[Fel Claw]|h|r: 펠 클로가 플랫폼 위로 탱커를 밀어냅니다 - 공격을 회피하도록 유도하고, 방어적인 자세를 취하며, 신선한 탱커가 유인하면 좋습니다.",
"* |cff71d5ff|Hspell:236710|h[Erupting Reflections]|h|r: 그는 플레이어와 그들의 그림자 반사체를 공격하며 발 아래에 폭발을 일으킵니다 - 표시된 움직임을 빠르게 이동하고, 모든 사람이 폭발을 피해야 합니다.",
"* |cff71d5ff|Hspell:235059|h[Rupturing Singularity]|h|r: 단일성이 열리고 플랫폼을 찢어냅니다 - 경고를 주의하고, 폭발은 모든 사람을 끌고 던지므로, 멀리서 고정하고 비행 준비를 해야 합니다.",
"* |cff71d5ff|Hspell:238430|h[Bursting Dreadflame]|h|r: 그는 플랫폼 위로 끔찍한 불을 던집니다 - 신선한 불꽃에 가까이 가지 않고, 서로 떨어져 있어야 하며, 모든 불꽃이 밖으로 터져 나옵니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["118289"] = { "경계의 여신",
"* |cff71d5ff|Hspell:235117|h[불안정한 영혼]|h|r: 당신의 영혼이 빛이나 펠로 불안정해집니다 - 일치하는 인퓨저로 이동하고, 영혼이 안정될 때까지 해당 색상을 유지하십시오.",
"* |cff71d5ff|Hspell:235267|h[대규모 불안정]|h|r: 대규모 불안정성이 플랫폼 전체에 폭발합니다 - 냉각 효과를 사용하여 버티고, 플레이어 간에 약간의 간격을 유지하십시오.",
"* |cff71d5ff|Hspell:235271|h[인퓨전]|h|r: 그녀는 빛이나 펠의 인퓨전을 채널합니다 - 일치하는 색상을 유지하고, 오른쪽 측면에 함께 폭발을 흡수하십시오.",
"* |cff71d5ff|Hspell:236061|h[에센스 조각]|h|r: 큰 공격 후 에센스 조각이 흩뿌려집니다 - 불안정한 영혼을 안정시키기 위해 조각을 줍습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["118374"] = { "달의 자매",
"* |cff71d5ff|Hspell:239264|h[Lunar Fire]|h|r: 그녀의 룬 라이어 스택을 탱커에게 적용 - 탱커는 스택이 두 배로 쌓이는 것을 방지하기 위해 먼저 교환합니다.",
"* |cff71d5ff|Hspell:236357|h[Font of Elune]|h|r: 룬의 엘룬 폰트 스택을 쌓고 플레이어의 달 색깔을 반전시킵니다 - 반전 시기를 예측하고 변화를 통해 치유합니다.",
"* |cff71d5ff|Hspell:236550|h[Discorporate]|h|r: 탱커의 달 색깔이 더 이상 그녀와 일치하지 않으면, 탱커는 분리됩니다 - 신선한 탱커는 탭하고, 두 사람은 매번 교환합니다.",
"* |cff71d5ff|Hspell:236596|h[Rapid Shot]|h|r: 플레이어에게 빠른 화살을 발사합니다 - 표적 플레이어는 레이드에서 도망가고 화살이 꽂힙니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["118460"] = { "황폐의 숙주",
"* |cff71d5ff|Hspell:236548|h[Torment]|h|r: 영혼 영역 내 플레이어에게 피해가 빠르게 적용됩니다 - 영혼 영역 임무를 회전시켜 특정 플레이어가 너무 높은 수치를 얻지 않도록 합니다.",
"* |cff71d5ff|Hspell:236542|h[Sundering Doom]|h|r: 폭탄을 채널링한 다음 엄청난 폭발을 일으킵니다 - 레이드가 모여 분해하고, 충격파에서 벗어나 신선한 탱커가 이어받습니다.",
"* |cff71d5ff|Hspell:236544|h[Doomed Sundering]|h|r: 다른 쪽의 반대 - 다른 탱커가 폭탄을 들고, 어느 쪽도 같은 탱커에 두 번 닿지 않습니다.",
"* |cff71d5ff|Hspell:235924|h[Spear of Anguish]|h|r: 고통의 창이 플레이어를 심하게 출혈시킵니다 - 표시된 플레이어가 레이드를 벗어나고 고통의 출혈이 사라집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["118462"] = { "황폐의 숙주",
"* |cff71d5ff|Hspell:236548|h[Torment]|h|r: 영혼 영역 내 플레이어에게 피해가 빠르게 적용됩니다 - 영혼 영역 임무를 회전시켜 특정 플레이어가 너무 높은 수치를 얻지 않도록 합니다.",
"* |cff71d5ff|Hspell:236542|h[Sundering Doom]|h|r: 폭탄을 채널링한 다음 엄청난 폭발을 일으킵니다 - 레이드가 모여 분해하고, 충격파에서 벗어나 신선한 탱커가 이어받습니다.",
"* |cff71d5ff|Hspell:236544|h[Doomed Sundering]|h|r: 다른 쪽의 반대 - 다른 탱커가 폭탄을 들고, 어느 쪽도 같은 탱커에 두 번 닿지 않습니다.",
"* |cff71d5ff|Hspell:235924|h[Spear of Anguish]|h|r: 고통의 창이 플레이어를 심하게 출혈시킵니다 - 표시된 플레이어가 레이드를 벗어나고 고통의 출혈이 사라집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["118518"] = { "달의 자매",
"* |cff71d5ff|Hspell:239264|h[Lunar Fire]|h|r: 그녀의 룬 라이어 스택을 탱커에게 적용 - 탱커는 스택이 두 배로 쌓이는 것을 방지하기 위해 먼저 교환합니다.",
"* |cff71d5ff|Hspell:236357|h[Font of Elune]|h|r: 룬의 엘룬 폰트 스택을 쌓고 플레이어의 달 색깔을 반전시킵니다 - 반전 시기를 예측하고 변화를 통해 치유합니다.",
"* |cff71d5ff|Hspell:236550|h[Discorporate]|h|r: 탱커의 달 색깔이 더 이상 그녀와 일치하지 않으면, 탱커는 분리됩니다 - 신선한 탱커는 탭하고, 두 사람은 매번 교환합니다.",
"* |cff71d5ff|Hspell:236596|h[Rapid Shot]|h|r: 플레이어에게 빠른 화살을 발사합니다 - 표적 플레이어는 레이드에서 도망가고 화살이 꽂힙니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["118523"] = { "달의 자매",
"* |cff71d5ff|Hspell:239264|h[Lunar Fire]|h|r: 그녀의 룬 라이어 스택을 탱커에게 적용 - 탱커는 스택이 두 배로 쌓이는 것을 방지하기 위해 먼저 교환합니다.",
"* |cff71d5ff|Hspell:236357|h[Font of Elune]|h|r: 룬의 엘룬 폰트 스택을 쌓고 플레이어의 달 색깔을 반전시킵니다 - 반전 시기를 예측하고 변화를 통해 치유합니다.",
"* |cff71d5ff|Hspell:236550|h[Discorporate]|h|r: 탱커의 달 색깔이 더 이상 그녀와 일치하지 않으면, 탱커는 분리됩니다 - 신선한 탱커는 탭하고, 두 사람은 매번 교환합니다.",
"* |cff71d5ff|Hspell:236596|h[Rapid Shot]|h|r: 플레이어에게 빠른 화살을 발사합니다 - 표적 플레이어는 레이드에서 도망가고 화살이 꽂힙니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["119072"] = { "황폐의 숙주",
"* |cff71d5ff|Hspell:236548|h[Torment]|h|r: 영혼 영역 내 플레이어에게 피해가 빠르게 적용됩니다 - 영혼 영역 임무를 회전시켜 특정 플레이어가 너무 높은 수치를 얻지 않도록 합니다.",
"* |cff71d5ff|Hspell:236542|h[Sundering Doom]|h|r: 폭탄을 채널링한 다음 엄청난 폭발을 일으킵니다 - 레이드가 모여 분해하고, 충격파에서 벗어나 신선한 탱커가 이어받습니다.",
"* |cff71d5ff|Hspell:236544|h[Doomed Sundering]|h|r: 다른 쪽의 반대 - 다른 탱커가 폭탄을 들고, 어느 쪽도 같은 탱커에 두 번 닿지 않습니다.",
"* |cff71d5ff|Hspell:235924|h[Spear of Anguish]|h|r: 고통의 창이 플레이어를 심하게 출혈시킵니다 - 표시된 플레이어가 레이드를 벗어나고 고통의 출혈이 사라집니다."
};

-- Cathedral of Eternal Night : Zona 1677 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["117193"] = { "아그로녹스",
"* |cff71d5ff|Hspell:236524|h[Sporas]|h|r: sporas가 주변에 퍼져 나간다 - sporas가 퍼지는 것을 피해야 합니다.",
"* |cff71d5ff|Hspell:235751|h[Timber Smash]|h|r: Timber Smash은 플레이어를 밀어낸다 - 가장자리에서 떨어져 있고 공격을 버텨야 합니다.",
"* |cff71d5ff|Hspell:238598|h[Choking Vine]|h|r: Choking Vine은 플레이어를 묶는다 - 틱이 쌓이기 전에 묶인 플레이어를 제거해야 합니다.",
"* |cff71d5ff|Hspell:240065|h[Succulent Secretion]|h|r: Succulent Secretion은 바닥에 웅덩이를 만든다 - 꿀을 조심하고 절대 그 안에 서 있지 마세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["117194"] = { "경멸하는 난타이빨",
"* |cff71d5ff|Hspell:237726|h[Scornful Gaze]|h|r: 그의 경멸적인 시선이 플레이어를 고정합니다 - 시선이 타는 동안 도망칩니다.",
"* |cff71d5ff|Hspell:243124|h[Heave Crud]|h|r: 그는 플레이어에게 덩어리를 던집니다 - 날아가는 덩어리를 피하고, 그들이 닿는 곳을 주의하세요.",
"* |cff71d5ff|Hspell:237276|h[Pulverizing Crudgel]|h|r: 그는 파쇄된 크러드를 들고 들어갑니다 - 공격을 피하고, 절대 탱킹하지 마세요.",
"* |cff71d5ff|Hspell:238484|h[Mind Control]|h|r: 그의 정신 지배가 플레이어를 포획합니다 - 파티는 정신 지배된 플레이어를 제어하여 깨질 때까지 제어합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["119542"] = { "도마트락스",
"* |cff71d5ff|Hspell:236543|h[Felsoul Cleave]|h|r: 그의 펠솔 클리브는 탱커를 긁습니다 - 탱커는 클리브를 교환합니다.",
"* |cff71d5ff|Hspell:241622|h[Approaching Doom]|h|r: 접근하는 둠은 래이드에 꾸준히 피해를 줍니다 - 이를 통과하고, 최고치에 도달하기 전에 그를 폭격하세요.",
"* |cff71d5ff|Hspell:234107|h[Chaotic Energy]|h|r: 그는 홀을 통해 혼돈 에너지를 발사합니다 - 기둥 뒤에 숨고 시야를 차단하세요.",
"* |cff71d5ff|Hspell:200597|h[Adds]|h|r: 악마들이 그 주변으로 쏟아집니다 - 탱커가 그들을 유지하는 동안 빠르게 그들을 AoE로 제거하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["120793"] = { "메피스트로스",
"* |cff71d5ff|Hspell:233155|h[Carrion Swarm]|h|r: 그의 카리온 스워밍은 앞으로 휩쓸어 - 근접은 그 뒤에 있고, 앞은 비어 있어야 합니다.",
"* |cff71d5ff|Hspell:234817|h[Dark Solitude]|h|r: 어둠의 고독이 플레이어를 브랜드합니다 - 만료되면 혼자 남은 사람을 처벌하므로, 사라질 때까지 함께 있어야 합니다.",
"* |cff71d5ff|Hspell:233206|h[Shadow Fade]|h|r: 그는 그림 속으로 사라지고, 그의 악마들이 쏟아져 나옵니다 - 이 단계와 AoE 스폰을 주의하면서 있어야 합니다.",
"* |cff71d5ff|Hspell:233963|h[Demonic Upheaval]|h|r: 악마의 격변이 홀을 뚫습니다 - 큰 공격에 대해 냉각 효과를 사용하세요."
};

-- Antorus, the Burning Throne : Zona 1712 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["121975"] = { "아그라마르",
"* |cff71d5ff|Hspell:245990|h[Taeshalach Reach]|h|r: 탱커 디버프 쌓기 - 8번째 스택 전에 탱커들이 그를 공격하고, 공격받은 탱커가 다음 공격을 피합니다.",
"* |cff71d5ff|Hspell:245458|h[Foe Breaker]|h|r: 기술을 사용할 때, 적을 찌르는 공격을 사용합니다 - 탱커들이 번갈아 공격하고, 받는 탱커는 방어 자세를 취합니다.",
"* |cff71d5ff|Hspell:245463|h[Flame Rend]|h|r: 렌 공격은 펠 불을 원뿔에 쏘아 - 원정을 향해 그를 돌리고, 딜러는 뒤에 머물고, 탱커들은 렌 공격을 번갈아 합니다.",
"* |cff71d5ff|Hspell:245994|h[Scorching Blaze]|h|r: 불이 표시된 플레이어에게 달라붙습니다 - 표시된 플레이어들이 서로 흩어질 때까지 불이 타도록 합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122104"] = { "차원문 수호병 하사벨",
"* |cff71d5ff|Hspell:244016|h[Reality Tear]|h|r: 탱커들이 그녀의 데미지를 쌓기 전에 먼저 교환 - 데미지가 쌓이지 않도록 탱커들이 먼저 교환합니다.",
"* |cff71d5ff|Hspell:244677|h[Transport Portal]|h|r: 그녀는 플랫폼으로 이동 포탈을 엽니다 - 포탈을 통해 파티를 분산하고 빠르게 케이퍼를 파괴합니다.",
"* |cff71d5ff|Hspell:243983|h[Collapsing World]|h|r: 그녀는 주변 세계를 무너뜨립니다 - 각 붕괴에 대비하고, 공격이 떨어지는 것을 세십시오.",
"* |cff71d5ff|Hspell:244000|h[Felstorm Barrage]|h|r: 펠 빔이 긴 줄로 방을 때립니다 - 발사 전에 줄에서 멀리 떨어져 있습니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122135"] = { "세라게스의 펠하운드",
"* |cff71d5ff|Hspell:251356|h[Focusing Power]|h|r: 개들은 15초 동안 함께 힘을 모으고 - 채널을 통해 버텨서, 그들의 큰 주문을 시작합니다.",
"* |cff71d5ff|Hspell:251448|h[Burning Maw]|h|r: 개가 탱크를 불타는 입으로 씹습니다 - 탱크는 씹는 것을 교환하여 화가 올라갈 때까지 버텨야 합니다.",
"* |cff71d5ff|Hspell:244768|h[Desolate Gaze]|h|r: 텅 빈 시선이 플레이어에게 달라붙습니다 - 표시된 플레이어가 레이드를 벗어나 시선이 끝날 때까지 유지합니다.",
"* |cff71d5ff|Hspell:244057|h[Enflamed Corruption]|h|r: 불타는 오염이 타오르는 개에서 폭발합니다 - 펠 오염의 파도가 플랫폼 위로 퍼져나갑니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122333"] = { "안토란 고위 지휘부",
"* |cff71d5ff|Hspell:244892|h[취약점 활용]|h|r: 탱커 디버프 쌓기 - 탱커가 먼저 디버프를 쌓도록 합니다.",
"* |cff71d5ff|Hspell:244172|h[정신 공격]|h|r: 정신 공격은 모든 사람에게 디버프를 쌓습니다 - 자신의 디버프를 주의하고 10초 이상 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:253040|h[명령 승인]|h|r: 다음 명령관이 플랫폼을 장악합니다 - 신선한 명령관에게 전환하고 그들의 기술을 사용합니다.",
"* |cff71d5ff|Hspell:244141|h[포드에서 벗어나]|h|r: 포드가 열리고 그 안의 기수가 기어나옵니다 - 그들이 갑옷 밖으로 나오자 즉시 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122366"] = { "바리마트라스",
"* |cff71d5ff|Hspell:243960|h[Shadow Strike]|h|r: 섀도 스트라이크가 매 몇 초마다 탱커에게 강력하게 명중 - 탱커는 이를 활용하여 교환합니다.",
"* |cff71d5ff|Hspell:243961|h[Misery]|h|r: 고통은 명중을 받은 탱커를 따라 이동합니다 - 새로운 탱커는 고통 요소가 이동할 때마다 숭배합니다.",
"* |cff71d5ff|Hspell:243967|h[Torment of Flames]|h|r: 불의 고통이 통치하는 동안, 레이드는 꾸준히 타도록 합니다 - 방어 냉각 효과로 창을 대비합니다.",
"* |cff71d5ff|Hspell:243976|h[Torment of Frost]|h|r: 그 후, 얼음의 고통이 전체 레이드를 얼리고 - 다시 대비하고 고통을 단일 탱커에게 유지합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122367"] = { "안토란 고위 지휘부",
"* |cff71d5ff|Hspell:244892|h[취약점 활용]|h|r: 탱커 디버프 쌓기 - 탱커가 먼저 디버프를 쌓도록 합니다.",
"* |cff71d5ff|Hspell:244172|h[정신 공격]|h|r: 정신 공격은 모든 사람에게 디버프를 쌓습니다 - 자신의 디버프를 주의하고 10초 이상 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:253040|h[명령 승인]|h|r: 다음 명령관이 플랫폼을 장악합니다 - 신선한 명령관에게 전환하고 그들의 기술을 사용합니다.",
"* |cff71d5ff|Hspell:244141|h[포드에서 벗어나]|h|r: 포드가 열리고 그 안의 기수가 기어나옵니다 - 그들이 갑옷 밖으로 나오자 즉시 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122369"] = { "안토란 고위 지휘부",
"* |cff71d5ff|Hspell:244892|h[취약점 활용]|h|r: 탱커 디버프 쌓기 - 탱커가 먼저 디버프를 쌓도록 합니다.",
"* |cff71d5ff|Hspell:244172|h[정신 공격]|h|r: 정신 공격은 모든 사람에게 디버프를 쌓습니다 - 자신의 디버프를 주의하고 10초 이상 떨어져 있어야 합니다.",
"* |cff71d5ff|Hspell:253040|h[명령 승인]|h|r: 다음 명령관이 플랫폼을 장악합니다 - 신선한 명령관에게 전환하고 그들의 기술을 사용합니다.",
"* |cff71d5ff|Hspell:244141|h[포드에서 벗어나]|h|r: 포드가 열리고 그 안의 기수가 기어나옵니다 - 그들이 갑옷 밖으로 나오자 즉시 공격합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122450"] = { "가로시 세계파괴자",
"* |cff71d5ff|Hspell:246220|h[Fel Bombardment]|h|r: 캐논이 탱커를 폭격으로 공격 - 신선한 탱커가 들어와서, 이전 탱커는 화염 범위에서 레이드를 멀리 걸어 나간다.",
"* |cff71d5ff|Hspell:244410|h[Decimation]|h|r: 데시메이션 캐논은 레이드 전체에 폭발을 일으킨다 - 함께 뭉쳐서 발사 전에 넓게 퍼뜨려라.",
"* |cff71d5ff|Hspell:244152|h[Apoc Drive]|h|r: 아포칼립스 드라이브가 한 캐논에서 작동 - 30초 안에 캐논을 파괴한다.",
"* |cff71d5ff|Hspell:244969|h[Eradication]|h|r: 드라이브가 끝나면, 에라디케이션 빔이 플랫폼 전체를 베어낸다 - 빔의 경로에서 벗어나, 최대한 버텨라."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122467"] = { "시바라의 무당",
"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: 세 명 중 하나를 활성화 - 탱커는 그녀에게 이동하고, 레이드는 그녀의 노래에 대한 인터럽트를 유지합니다.",
"* |cff71d5ff|Hspell:244899|h[Fiery Strike]|h|r: 불을 사용하는 것은 탱커에게 불타는 주먹을 휘두릅니다 - 탱커는 그녀의 공격을 맞추기 전에 교환합니다.",
"* |cff71d5ff|Hspell:245518|h[Flash Freeze]|h|r: 얼음 공격은 탱커의 갑옷을 얼립니다 - 탱커와 얼음 공격을 교환하고, 얼음이 깨질 때까지 물러납니다.",
"* |cff71d5ff|Hspell:245634|h[Ground Hazards]|h|r: 마법사들은 바닥을 태우고 차갑게 만듭니다 - 발 아래에서 빛나는 것을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122468"] = { "시바라의 무당",
"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: 세 명 중 하나를 활성화 - 탱커는 그녀에게 이동하고, 레이드는 그녀의 노래에 대한 인터럽트를 유지합니다.",
"* |cff71d5ff|Hspell:244899|h[Fiery Strike]|h|r: 불을 사용하는 것은 탱커에게 불타는 주먹을 휘두릅니다 - 탱커는 그녀의 공격을 맞추기 전에 교환합니다.",
"* |cff71d5ff|Hspell:245518|h[Flash Freeze]|h|r: 얼음 공격은 탱커의 갑옷을 얼립니다 - 탱커와 얼음 공격을 교환하고, 얼음이 깨질 때까지 물러납니다.",
"* |cff71d5ff|Hspell:245634|h[Ground Hazards]|h|r: 마법사들은 바닥을 태우고 차갑게 만듭니다 - 발 아래에서 빛나는 것을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122469"] = { "시바라의 무당",
"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: 세 명 중 하나를 활성화 - 탱커는 그녀에게 이동하고, 레이드는 그녀의 노래에 대한 인터럽트를 유지합니다.",
"* |cff71d5ff|Hspell:244899|h[Fiery Strike]|h|r: 불을 사용하는 것은 탱커에게 불타는 주먹을 휘두릅니다 - 탱커는 그녀의 공격을 맞추기 전에 교환합니다.",
"* |cff71d5ff|Hspell:245518|h[Flash Freeze]|h|r: 얼음 공격은 탱커의 갑옷을 얼립니다 - 탱커와 얼음 공격을 교환하고, 얼음이 깨질 때까지 물러납니다.",
"* |cff71d5ff|Hspell:245634|h[Ground Hazards]|h|r: 마법사들은 바닥을 태우고 차갑게 만듭니다 - 발 아래에서 빛나는 것을 피하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122477"] = { "세라게스의 펠하운드",
"* |cff71d5ff|Hspell:251356|h[Focusing Power]|h|r: 개들은 15초 동안 함께 힘을 모으고 - 채널을 통해 버텨서, 그들의 큰 주문을 시작합니다.",
"* |cff71d5ff|Hspell:251448|h[Burning Maw]|h|r: 개가 탱크를 불타는 입으로 씹습니다 - 탱크는 씹는 것을 교환하여 화가 올라갈 때까지 버텨야 합니다.",
"* |cff71d5ff|Hspell:244768|h[Desolate Gaze]|h|r: 텅 빈 시선이 플레이어에게 달라붙습니다 - 표시된 플레이어가 레이드를 벗어나 시선이 끝날 때까지 유지합니다.",
"* |cff71d5ff|Hspell:244057|h[Enflamed Corruption]|h|r: 불타는 오염이 타오르는 개에서 폭발합니다 - 펠 오염의 파도가 플랫폼 위로 퍼져나갑니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["122578"] = { "킨가로스",
"* |cff71d5ff|Hspell:244312|h[Forging Strike]|h|r: 그의 포징 스트라이크는 탱커를 때립니다 - 방어 자세를 취하고 새로운 탱커에게 다음 공격을 맡깁니다.",
"* |cff71d5ff|Hspell:248375|h[Shattering Strike]|h|r: 그의 포지 아미가 올라갈 때, 쉐이팅 스트라이크는 땅을 쪼개 - 포지 플랫폼을 주의하고 각 쪼개진 곳에서 벗어나세요.",
"* |cff71d5ff|Hspell:246779|h[Diabolic Bomb]|h|r: 디아볼릭 냄비는 필드에 던져서 폭발시켜 큰 피해를 입힙니다 - 전체 폭발에 맞지 않도록 함께 폭발 지점을 소화하세요.",
"* |cff71d5ff|Hspell:254926|h[Reverberating Strike]|h|r: 리버베레이팅 스트라이크는 플레이어를 향해 던져지고 파동이 퍼져나갑니다 - 표시된 움직임은 벗어나고 주변의 모든 사람이 파동에서 멀어집니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["124158"] = { "영혼사냥꾼 이모나르",
"* |cff71d5ff|Hspell:247367|h[Shocklance]|h|r: 그의 쇼클랜스가 지속적으로 탱커를 찌른다 - 스택이 닿기 전에 랜스를 교환하십시오.",
"* |cff71d5ff|Hspell:247687|h[Sever]|h|r: 세버 셰어스가 공격할 때마다 플레이트의 틈을 벌린다 - 탱커는 교환하고, 치유사는 썰린 플레이어를 주의해야 한다.",
"* |cff71d5ff|Hspell:247552|h[Sleep Canister]|h|r: 수면 캐니스터가 플레이어에게 달라붙는다 - 표시된 플레이어는 레이드를 피하고, 치유사는 그들이 쓰러지기 전에 수면을 해제한다.",
"* |cff71d5ff|Hspell:247565|h[Slumber Gas]|h|r: 수면 가스가 잠자는 플레이어 주변에 웅덩이로 흩어진다 - 가스 자체와 그 안에 있는 플레이어가 잠들지 않도록 주의하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["124445"] = { "에노아, 생명 결속자",
"* |cff71d5ff|Hspell:250140|h[Foul Steps]|h|r: 펠 오염이 갑판을 통해 스며들어, 갑판에 서 있는 모든 사람에게 풋 스텝을 쌓습니다 - 깨끗한 갑판으로 이동하고 모든 플레이어의 스택을 낮게 유지합니다.",
"* |cff71d5ff|Hspell:248332|h[Rain of Fel]|h|r: 펠 폭이 위에서 플레이어를 표식합니다 - 표식된 사람은 다른 사람들과 떨어져 있고, 폭이 떨어지는 곳에 서서 떨어뜨립니다.",
"* |cff71d5ff|Hspell:246888|h[Warp In]|h|r: 보조병이 갑판 주변으로 워프합니다 - 갑판에 추가물이 쏟아지는 것을 방지하기 위해 각 워프를 초반에 제거합니다.",
"* |cff71d5ff|Hspell:250048|h[Life Force]|h|r: 그녀는 갑판을 통해 자신의 생명력을 채널합니다 - 각 파동을 막고 싸움을 계속합니다."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["124828"] = { "사멸자 아르거스",
"* |cff71d5ff|Hspell:248499|h[Sweeping Scythe]|h|r: 탱커 디버프 쌓기 - 3번째 스택 전에 탱커들이 그를 먼저 공격합니다.",
"* |cff71d5ff|Hspell:258838|h[Soul Rending Scythe]|h|r: 전투가 끝나갈 무렵, 그의 낫은 전체 레이드에 영혼을 찢습니다 - 치유사는 낫을 통해 강화하고, 아무도 스택을 오래 두지 않습니다.",
"* |cff71d5ff|Hspell:258039|h[Deadly Scythe]|h|r: 마지막 단계에서 모든 낫이 치명적으로 변합니다 - 탱커들은 방어 기술을 사용하고 끊임없이 회전합니다. 이 놈은 즉사시킵니다.",
"* |cff71d5ff|Hspell:248167|h[Ground Hazards]|h|r: 영혼 폭풍이 플랫폼을 태웁니다 - 발 아래에서 빛나는 것을 피하십시오."
};

-- Seat of the Triumvirate : Zona 1753 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["124870"] = { "르우라",
"* |cff71d5ff|Hspell:1265426|h[Discordant Beam]|h|r: 그녀의 디스콘다넌트 빔이 홀을 휩쓸고 지나갑니다 - 빔 경로를 피하십시오.",
"* |cff71d5ff|Hspell:1265421|h[Dirge]|h|r: 그녀의 디르지는 방 전체에 울려 퍼집니다 - 넓게 퍼져서 울림을 통해 치유하십시오.",
"* |cff71d5ff|Hspell:1264151|h[Disintegrate]|h|r: 그녀의 디스인테그레이트는 줄을 따라 내려갑니다 - 줄에서 멀리 떨어지십시오.",
"* |cff71d5ff|Hspell:1265689|h[Grim Chorus]|h|r: 그림 코러스가 그녀 주위를 솟아오릅니다 - 코러스를 파괴하고 스폰을 AoE하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["124871"] = { "승천자 주라알",
"* |cff71d5ff|Hspell:1263282|h[Decimate]|h|r: 그의 데시메이트는 방 전체를 파괴합니다 - 큰 공격에 대비하여 냉각기를 사용하세요.",
"* |cff71d5ff|Hspell:1268916|h[Null Palm]|h|r: 그의 널 팜은 앞에 내려칩니다 - 딜러는 그 뒤에 위치합니다.",
"* |cff71d5ff|Hspell:1263399|h[Oozing Slam]|h|r: 그의 오징 슬램은 오징을 남깁니다 - 오징이들이 모일 때 추가 몬스터를 AoE 공격하세요.",
"* |cff71d5ff|Hspell:1263440|h[Void Slash]|h|r: 그의 void slash는 탱을 찢어버립니다 - 탱킹 메커니즘: 방어 기술을 사용하여 교체하고 흡수하세요."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["124872"] = { "사프리쉬",
"* |cff71d5ff|Hspell:1280064|h[Phase Dash]|h|r: 그는 그의 애완동물 플랫폼 사이를 이동합니다 - 그는 다시 나타날 때마다 재개하십시오.",
"* |cff71d5ff|Hspell:245738|h[Shadow Pounce]|h|r: 그의 그림 애완동물이 플레이어를 공격합니다 - 표적 플레이어는 공격을 막습니다.",
"* |cff71d5ff|Hspell:247175|h[Void Bomb]|h|r: 그의 Void Bomb은 위치를 표시합니다 - 폭발 전에 해당 위치에서 멀어지십시오.",
"* |cff71d5ff|Hspell:1263523|h[Overload]|h|r: 그의 Overload는 방을 찢어버립니다 - 폭발과 확산을 통해 치유하십시오."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["124874"] = { "총독 네자르",
"* |cff71d5ff|Hspell:244750|h[Mind Blast]|h|r: 그의 마인드 블래스트는 탱커를 관통합니다 - 탱커는 블래스트를 교환합니다.",
"* |cff71d5ff|Hspell:1263542|h[Mass Void Infusion]|h|r: 그의 대규모 void infusion이 방을 덮칩니다 - 냉각 효과로 대비하십시오.",
"* |cff71d5ff|Hspell:1263538|h[Umbral Tentacles]|h|r: 으름표 텐타클이 그 주변으로 솟아오릅니다 - 텐타클을 빠르게 파괴하십시오.",
"* |cff71d5ff|Hspell:1263528|h[Repulse]|h|r: 그의 repel은 모두를 밀어냅니다 - 넉백을 통해 가장자리에 있지 않도록 유지하십시오."
};
P.ko = ko;
