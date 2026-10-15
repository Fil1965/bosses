--[[
	Bosses_TBC_zh.lua
		Datos en ZH del pack TBC.
		Fichero creado por el editor web (2026-10-15); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local zh = {};
local pack = zh;


-- Karazhan : Zona 532 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15687"] = { "莫罗斯",
"* |cff71d5ff|Hspell:29448|h[Vanish]|h|r: 他会消失并治疗：对该点进行范围攻击，将他带出来。",
"* |cff71d5ff|Hspell:29425|h[Gouge]|h|r: 凿击会击退坦克：第二个坦克立即接手。",
"* |cff71d5ff|Hspell:29562|h[Blind]|h|r: 眩晕会落在标记上：尽快移除。",
"* |cff71d5ff|Hspell:29405|h[Garrote]|h|r: 缠绕会导致持续伤害：将标记治疗至最大。",
"* 他会带着四个随机的客人进入：可能的治疗者首先被中断并死亡；战士用旋风攻击近战。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15688"] = { "特雷斯坦·邪蹄",
"* |cff71d5ff|Hspell:30066|h[召唤基尔里克]|h|r: 当它死亡时，恶魔会复活：首先杀死它，并保持对它的范围攻击。",
"* |cff71d5ff|Hspell:30065|h[献祭]|h|r: 献祭标记一名玩家并为伊洛夫提供护盾：杀死基尔里克来打破护盾。",
"* 恶魔会聚集在团队周围：一个专门的范围攻击可以防止它们攻击治疗师。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15689"] = { "虚空幽龙",
"* |cff71d5ff|Hspell:30400|h[Perseverance]|h|r: 红色光束使坦克受损并杀死治疗师：只有坦克才能站在里面。",
"* |cff71d5ff|Hspell:30401|h[Serenity]|h|r: 绿色光束治疗所有人在里面：轮流让组通过它。",
"* |cff71d5ff|Hspell:30402|h[Dominance]|h|r: 蓝色光束增强法师：分散它——一起站在一起共享负面效果。",
"* |cff71d5ff|Hspell:38523|h[Nether Breath]|h|r: Nether Breath是前置攻击：让坦克远离组。",
"* 在驱逐阶段他会变为不可选中：保存冷却，停止毒点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15690"] = { "玛克扎尔王子",
"* |cff71d5ff|Hspell:30843|h[削弱]|h|r: 削弱效果会使你生命值降至1点，且无任何治疗效果持续8秒：坚持下去，没有人会施放治疗技能。",
"* |cff71d5ff|Hspell:30852|h[暗影之爆]|h|r: 暗影之爆会在削弱效果后立即释放：立刻从王子身边逃离。",
"* |cff71d5ff|Hspell:30859|h[召唤恶魔]|h|r: 恶魔会从天而降：观察地面并移动到它们击中的地方。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15691"] = { "馆长",
"* |cff71d5ff|Hspell:30235|h[Hateful Bolt]|h|r:  hateful bolt 飞向第二高的生命值：始终保持这个生命值。",
"* |cff71d5ff|Hspell:30403|h[Summon Astral Flare]|h|r: astral flares 形成对：在它们的弹雨堆积之前，集中消灭它们。",
"* |cff71d5ff|Hspell:30254|h[Evocation]|h|r: 在evocation期间，他会承受双倍伤害：集中攻击他，将爆发伤害留到这个阶段。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16151"] = { "猎手阿图门",
"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: 冲刺攻击目标，距离最远的那个：没人能躲开。",
"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: 击倒效果对近战职业有伤害：近战职业需要后退。",
"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: 隐身效果是一种伤害减免诅咒：将其从标记目标移除。",
"* 燃烧之午：猎人根据生命值阈值，骑乘和下马——所有伤害都集中在同一个目标上。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16152"] = { "猎手阿图门",
"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: 冲刺攻击目标，距离最远的那个：没人能躲开。",
"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: 击倒效果对近战职业有伤害：近战职业需要后退。",
"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: 隐身效果是一种伤害减免诅咒：将其从标记目标移除。",
"* 燃烧之午：猎人根据生命值阈值，骑乘和下马——所有伤害都集中在同一个目标上。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16179"] = { "百 kissed",
"* 潜伏者从它的洞穴中爬出来，用毒液攻击：坦克优先，为坦克解除毒液效果。",
"* 向上 Servant Quarters 路上可选的野兽：跳过它或杀死它以获得额外的箱子。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16180"] = { "沙迪基斯，滑翔者",
"* 飞船在自身周围形成一个声波环：近战玩家应避免进入环内的区域。",
"* 可选：在侍从区，这是一场简单的战斗，如果坦克保持不动，风险较低。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16181"] = { "罗卡德",
"* 破坏者在前方猛击：近战职业保持在它的身后，坦克将其面对。",
"* 可选：在仆从区域的生物：简单战斗；没有人站在它的嘴前。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16457"] = { "贞节圣女",
"* |cff71d5ff|Hspell:29511|h[Repentance]|h|r: 忏悔效果会使整个公会眩晕：主动进入并破坏它，或者你将承受下一个。",
"* |cff71d5ff|Hspell:29522|h[Holy Wrath]|h|r: 圣怒效果会使人之间产生连锁：尽量分散。",
"* |cff71d5ff|Hspell:29512|h[Consecration]|h|r: 祝福效果会烧毁地面：近战角色远离。",
"* 她的圣火效果会对近距离的近战角色造成伤害：抗性效果有帮助——治疗者保持距离。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16524"] = { "埃兰之影",
"* |cff71d5ff|Hspell:29973|h[火焰护戒]|h|r: 不要移动一步，戒指会爆炸并清除整个团队 — 等待它消失。",
"* |cff71d5ff|Hspell:29991|h[反制法术]|h|r: 反制法术会使一个法术持续10秒: 停止施法，治疗者谨慎施放。",
"* |cff71d5ff|Hspell:30004|h[火焰术]|h|r: 火焰术会成对出现: 干扰两者中的任何一个，否则有人会死亡。",
"* |cff71d5ff|Hspell:29951|h[暴风雪]|h|r: 暴风雪会扫荡房间: 走出去 — 跑步会再次被击中。",
"* 饮酒阶段是一个陷阱: 在他喝的时候不要对他造成伤害，否则整个团队会受到火焰术的攻击。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17225"] = { "夜魇",
"* |cff71d5ff|Hspell:30129|h[Charred Earth]|h|r: 焦土会留下火区域：远离它们。",
"* |cff71d5ff|Hspell:36922|h[Bellowing Roar]|h|r: 吼叫声会恐吓地面上的整个团队：坦克可以使用恐惧护盾或震颤。",
"* |cff71d5ff|Hspell:37098|h[Rain of Bones]|h|r: 骨雨在飞行期间落下：分散开来，尽可能少地被它击中。",
"* 飞行周期严格：每个人在地面上相遇，坦克面向尾部，进行扫尾攻击。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17521"] = { "大坏狼",
"* |cff71d5ff|Hspell:30752|h[小红帽]|h|r: 被标记的目标变成帽子：让狼在柱子周围飞舞。",
"* 狼打破视线追赶帽子：利用舞台让他旋转，其他人烧掉他。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17533"] = { "罗穆洛和朱莉娅",
"* |cff71d5ff|Hspell:30878|h[永恒的爱]|h|r: 始终中断——她的治疗使整个团队保持存活。",
"* 一个倒下，另一个进入狂暴状态：将两个近距离击倒，然后一起结束。",
"* 毒刺会给标记的目标造成持续伤害：治疗者要观察罗慕洛的剑臂。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17534"] = { "罗穆洛和朱莉娅",
"* |cff71d5ff|Hspell:30878|h[永恒的爱]|h|r: 始终中断——她的治疗使整个团队保持存活。",
"* 一个倒下，另一个进入狂暴状态：将两个近距离击倒，然后一起结束。",
"* 毒刺会给标记的目标造成持续伤害：治疗者要观察罗慕洛的剑臂。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18168"] = { "奥兹巫师",
"* 四名玩家同时生成： Tito 率先倒下，然后是 Dorothee，然后快速击杀 Strawman。",
"* Tinhead 爬行：一名玩家让他向后移动，其他人保持攻击。",
"* 当 Roar 倒下时，Crone 出现：旋风在舞台上旋转 — 在通过时躲避，然后杀死她。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21684"] = { "麦迪文的回音",
"* 棋子静止不动：移动它们或火焰从它们的脚下烧毁——每回合一个格子。",
"* 保持冷却时间：棋子吸收伤害，国王承受伤害，治疗者只治疗你的方。",
"* 当你的棋子死亡时，你会获得力量爆发：使用它，然后从凳子上拿一个新的棋子。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21752"] = { "麦迪文的回音",
"* 棋子静止不动：移动它们或火焰从它们的脚下烧毁——每回合一个格子。",
"* 保持冷却时间：棋子吸收伤害，国王承受伤害，治疗者只治疗你的方。",
"* 当你的棋子死亡时，你会获得力量爆发：使用它，然后从凳子上拿一个新的棋子。"
};

-- The Shattered Halls : Zona 540 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16807"] = { "高阶术士奈瑟库斯",
"* |cff71d5ff|Hspell:30496|h[死亡之环]|h|r: 死亡之环会反弹到坦克身上：治疗它，无法被打断。",
"* 当生命低于20%时，他开始旋转并挥舞刀刃：近战职业退开，让远程职业攻击。",
"* 前面的垃圾会吸引小队：将他拉到干净的走廊，或者让费尔犬加入战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16808"] = { "酋长卡加斯·刃拳",
"* |cff71d5ff|Hspell:5927|h[Sweep]|h|r: 扫击攻击会集中在前方：近战职业保持在刀刃后方。",
"* |cff71d5ff|Hspell:30739|h[Blade Dance]|h|r: 刀舞会随机击中其他玩家：保持分散，避免被攻击两次。",
"* 他的两侧两个小怪需要控制或快速击杀：解放坦克，避免第二次刀刃攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16809"] = { "战争使者沃姆罗格",
"* 他的两个头会自行切换目标：坦克在击打生效时立即进行嘲讽。",
"* 跺脚会使近战角色倒地：离开范围或失去挥舞时间。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20923"] = { "血卫士伯鲁恩",
"* 仅在英雄模式下，房间开始时出现的守卫：他会用群体攻击，在人群堆积之前，击杀他。",
"* 简单战斗：除了群体攻击和跟随他的生物，没有什么特别之处。"
};

-- Magtheridon's Lair : Zona 544 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17257"] = { "玛瑟里顿",
"* 五个频道使用者打开房间：先消灭他们，一次一个阵营，否则驱逐效果不会生效。",
"* |cff71d5ff|Hspell:30616|h[爆裂之光]|h|r: 爆裂之光会清空房间：所有五名玩家点击他们的立方体来中断驱逐。",
"* |cff71d5ff|Hspell:30511|h[震荡]|h|r: 震荡会把近战角色推向墙壁：治疗者在每次击败后优先治疗。",
"* 地上的火焰在局部燃烧：立即移动，持续伤害不轻。"
};

-- Hellfire Ramparts : Zona 543 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17306"] = { "巡视者加戈玛",
"* 他的手臂上的伤每击都会治愈他：中断伤口或战斗会变得漫长。",
"* 冲击会把坦克推向小怪：保持他的后方干净并先清理走走廊。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17307"] = { "传令官瓦兹德",
"* 旗兵骑乘翼龙：一起烧毁这对目标，骑手直到生命值下降才下马。",
"* 当瓦兹鲁登落地时，坦克立即选择他：其他人不能站在火焰吐息前。",
"* 纳赞不断移动：远程打断火焰球，在移动之间进行中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17308"] = { "无疤者奥摩尔",
"* |cff71d5ff|Hspell:37566|h[Whip of Despair]|h|r: 鞭是针对坦克的一击，治疗它，否则治疗师会被淹没。",
"* 猎犬群在他拉动时加入：先控制一个群体，在他们堆叠治疗师之前杀死另一个。",
"* 他会短距离爆发：远程攻击他，近战在每次跳跃后重新参与。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17537"] = { "传令官瓦兹德",
"* 旗兵骑乘翼龙：一起烧毁这对目标，骑手直到生命值下降才下马。",
"* 当瓦兹鲁登落地时，坦克立即选择他：其他人不能站在火焰吐息前。",
"* 纳赞不断移动：远程打断火焰球，在移动之间进行中断。"
};

-- The Blood Furnace : Zona 542 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17377"] = { "击碎者克里丹",
"* 冲击波在他在瞬间消失后立即发动：当他传送到房间中央时，立即跑开。",
"* 他会重复传送循环：治疗者保持团队的生命值，冲击伤害低生命值的目标。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17380"] = { "布洛戈克",
"* 囚犯会以波次形式解锁：快速清除它们，否则坦克会同时受到两组的攻击。",
"* 毒气会填充区域内的牢房：移动到干净的区域——在错误的位置施加持续伤害会迅速叠加。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17381"] = { "制造者",
"* |cff71d5ff|Hspell:30923|h[Dominate Mind]|h|r: Dominate Mind会偷取一名玩家：使他眩晕，不要杀死他，等待它消失。",
"* 绿色的酸液池扩散在团队中：没有人站在绿色区域。"
};

-- Zul'Aman : Zona 568 --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17711"] = { "毁灭者",
"* |cff71d5ff|Hspell:32686|h[地震]|h|r: 地震会震动该区域：治疗者需要保持团队的生命值。",
"* 冲刺技能将坦克击退：保持坦克远离墙壁和陷阱。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18728"] = { "毁灭之主卡扎克",
"* |cff71d5ff|Hspell:21063|h[扭曲之影]|h|r: 扭曲之影是一种诅咒：治疗它或每次攻击都会使其恢复生命值。",
"* |cff71d5ff|Hspell:32964|h[狂怒]|h|r: 狂怒会提高他的速度：在他消失之前，让他远离。",
"* 死亡之主的印记会消耗附近的法师的魔力：法师保持距离。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23574"] = { "埃基尔松",
"* |cff71d5ff|Hspell:43648|h[Electrical Storm]|h|r: 暴风雨会使一名玩家脱离：所有人跑过暴风雨，或者外面会攻击整个队伍。",
"* 鹰会使队伍聚集在平台：在他们选择治疗师之前，先对他们进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23576"] = { "纳洛拉克",
"* 凶猛的挥击攻击两个目标：两个坦克共享攻击，绝不只一个。",
"* 冲击波攻击距离最远的那个：没有人能远离熊。",
"* 震耳欲聋的咆哮使公会安静：治疗者在咆哮攻击前预先施加护盾。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23577"] = { "哈尔拉兹",
"* 灵体从猞猁身上分裂两次：坦克通过闪电攻击同时击败它，相位结束时猞猁会消失。",
"* 符文从角落处爆发：立即消灭它，否则攻击不会停止。",
"* 火焰冲击击中坦克：快速解除它，否则治疗者会死亡。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23578"] = { "加亚莱",
"* |cff71d5ff|Hspell:43962|h[孵化蛋]|h|r: 蛋在烧伤时孵化：要么全部孵化，要么全部不孵化——用AOE攻击成群。",
"* 火球会围绕着整个团队：在投掷之前分散。",
"* 火焰呼吸扫射前方：坦克背对着队伍。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23863"] = { "祖尔金",
"* 四种形态循环：熊撕裂，鹰投掷旋风，猞猁撕裂坦克，龙鹰喷射火焰柱。",
"* 幽灵追逐在风暴中：将它们驱逐到远处，它们会烧死任何被抓住的人。",
"* 地面火焰跟随龙鹰的呼吸：离开它标记的每一列。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24239"] = { "妖术领主玛拉卡斯",
"* 灵魂能量每隔几秒钟会消耗整个公会：治疗者需要交替施法。",
"* 某个玩家的灵魂能量在战斗中会飘散：杀死它或它会继续消耗他的能量。",
"* 吸取技能会立即从玩家那里获取：在技能生效时立即调整战术。"
};

-- The Battle for Mount Hyjal : Zona 534 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17767"] = { "雷基·冬寒",
"* |cff71d5ff|Hspell:31249|h[Death and Decay]|h|r: 腐烂会使地面产生火焰区域：每个人都要不断移动。",
"* |cff71d5ff|Hspell:31258|h[Frost Nova]|h|r: 冰冻之触会使团队原地不动：饰品或治疗者可以利用此效果。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17808"] = { "安纳塞隆",
"* |cff71d5ff|Hspell:31298|h[腐肉群]|h|r: 腐肉群是一个前置锥形技能，会使目标沉默：让坦克背对着队伍。",
"* |cff71d5ff|Hspell:31299|h[睡眠]|h|r: 睡眠技能会使一个目标昏迷：立即唤醒昏迷的目标，否则会受到伤害。",
"* |cff71d5ff|Hspell:31306|h[地狱之火]|h|r: 地狱之火会召唤燃烧的恶魔：在它们靠近治疗师之前进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17842"] = { "阿兹加洛",
"* |cff71d5ff|Hspell:31340|h[Azgalor的咆哮]|h|r: 咆哮会恐吓整个公会：让坦克使用震动或恐惧护盾来保持位置。",
"* |cff71d5ff|Hspell:31344|h[永无止境的痛苦]|h|r: 永无止境的痛苦是一种范围伤害：尽快治疗它，无法解除。",
"* 在他死亡时，他会施加诅咒给一名玩家：被标记的玩家会跑得非常远，让地狱之主无法吃掉。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17888"] = { "卡兹洛加",
"* |cff71d5ff|Hspell:31447|h[卡祖罗格的标记]|h|r: 标记会吸取魔力：当魔力耗尽时，被标记的目标会爆炸——法师在魔力耗尽时停止施法。",
"* 前方攻击非常猛烈：近战职业保持在后方，坦克让他远离人群。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17968"] = { "阿克蒙德",
"* |cff71d5ff|Hspell:32014|h[Doomfire]|h|r: 恶魔火焰追踪会使人沿着地面移动：将它引开，远离公会。",
"* |cff71d5ff|Hspell:31970|h[Air Burst]|h|r: 气流爆发会把一半的公会的人抛向空中：在每次施法前保持羽毛效果。",
"* |cff71d5ff|Hspell:31972|h[Fear]|h|r: 恐惧效果会随机影响：将防御者放在坦克身上，以便他在被恐惧时保持。"
};

-- The Underbog : Zona 546 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17770"] = { "霍加尔芬",
"* |cff71d5ff|Hspell:31673|h[污浊孢子]|h|r: 孢子云使他从半血以下下降：将他拉出云或通过窗户爆破他。",
"* 孢子环绕区域：在它们蜂拥到治疗师之前，先对它们进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17826"] = { "沼地领主穆塞雷克",
"* |cff71d5ff|Hspell:31429|h[Freeze]|h|r: 冻结效果会立刻将一名近战目标束缚：打破束缚或通过随后的爆发进行治疗。",
"* 玩家保持[Owl]被锁定：鸟类的[Wing Buffet]会使近战目标四处乱动。",
"* 他的精准射击会惩罚被标记的远距离目标：没有人可以远离队伍而不被保护。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17882"] = { "黑色阔步者",
"* |cff71d5ff|Hspell:31704|h[静态能量]|h|r: 能量球跟随一个玩家：让它远离团队，直到消失。",
"* |cff71d5ff|Hspell:31715|h[链闪电]|h|r: 链闪电穿过堆叠的人：保持扩散，并准备好治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18105"] = { "加兹安",
"* |cff71d5ff|Hspell:15716|h[恐怖咆哮]|h|r: 咆哮会使近战角色逃跑：如果防御恐惧效果，或者选择撤退并重新交战。",
"* 酸性呼吸是正面攻击：坦克让他背对，近战角色保持在腿后。"
};

-- The Steamvault : Zona 545 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17796"] = { "机械师斯蒂里格",
"* |cff71d5ff|Hspell:35107|h[召唤机制]|h|r: 三个机制在他周围生成：快速击杀它们，或者治疗师会受到伤害。",
"* 机器液体在标记区域喷射：移动到喷射点，并保持地面没有水坑。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17797"] = { "水术师瑟丝比娅",
"* |cff71d5ff|Hspell:31481|h[闪电云]|h|r: 云会随机攻击玩家：在攻击次数累积前离开它。",
"* |cff71d5ff|Hspell:25033|h[包围之风]|h|r: 风会使一名施法者沉默：解除魔法或准备好第二位治疗者。",
"* 她的攻击对坦克很强：治疗者在拉怪时预先施放护盾，最初几秒攻击最猛。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17798"] = { "督军卡利瑟里斯",
"* |cff71d5ff|Hspell:6001|h[Disarm]|h|r: 击晕会使坦克失去武器：携带备用武器或辅助坦克接替。",
"* 水柱球生成并他站在上面施法：坦克将他拉开——在球内他的伤害会累积。",
"* 魔法反弹会将法术反弹给玩家：法师持有主要技能，并在反弹时使用。"
};

-- Old Hillsbrad Foothills : Zona 560 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17848"] = { "德拉克中尉",
"* |cff71d5ff|Hspell:33792|h[火球连发]|h|r: 连发对三个目标造成伤害：在射击之间优先治疗爆发。",
"* 护卫波在战斗中加入：坦克保持增益远离治疗者，快速AOE。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17862"] = { "斯卡洛克上尉",
"* |cff71d5ff|Hspell:29427|h[圣光]|h|r: 始终中断 — 他的圣光会让他恢复满血。",
"* 献祭会烧毁他周围的地面：近战玩家远离它。",
"* 护卫波会涌入：在治疗师倒下之前，控制怪物远离他们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18096"] = { "时空猎手",
"* |cff71d5ff|Hspell:33834|h[Whirlwind]|h|r: 旋风旋转绕过近战：在施法时，让近战远离旋风范围。",
"* 翅膀风暴将坦克推开：将他固定在要塞墙边。",
"* 他落地时有两名骑兵保护：控制一个，在坦克失去位置前爆发另一个。"
};

-- The Black Morass : Zona 269 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17879"] = { "时空领主德亚",
"* |cff71d5ff|Hspell:38539|h[Arcane Blast]|h|r: 始终中断——它伤害很大，并且会给坦克叠加。",
"* |cff71d5ff|Hspell:31467|h[Time Lapse]|h|r: 时间停止会使区域中的目标进入眩晕状态：远离被眩晕的目标。",
"* |cff71d5ff|Hspell:31472|h[Arcane Discharge]|h|r: 能量爆发会在房间内弹跳：每次使用后，治疗团队。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17880"] = { "坦普卢斯",
"* |cff71d5ff|Hspell:31458|h[Hasten]|h|r: 自身施法：解除它或他会非常快速地切换。",
"* |cff71d5ff|Hspell:38592|h[Wing Buffet]|h|r: 翅膀风暴将坦克向后击退：保持他的背部朝墙。",
"* 裂隙传送阵会不断在你的身后生成杂兵：坦克将其引开，其他人不拉。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17881"] = { "埃欧努斯",
"* |cff71d5ff|Hspell:31422|h[Time Stop]|h|r: Time Stop 使整个团队陷入眩晕：使用饰品和防御来生存。",
"* |cff71d5ff|Hspell:37605|h[Sand Breath]|h|r: Sand Breath 是前置攻击：让坦克面向远离团队。",
"* 永远不要站在开放传送门附近：计时器非常苛刻，杂兵群会吃掉治疗师。"
};

-- The Slave Pens : Zona 547 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17941"] = { "背叛者门努",
"* |cff71d5ff|Hspell:31985|h[腐化的治疗符文]|h|r: 治疗符文每秒恢复他的生命值：首先摧毁它。",
"* |cff71d5ff|Hspell:34980|h[腐化的新星符文]|h|r: 新星符文在附近爆炸：立即杀死它或保持距离。",
"* 结石皮肤符文强化包：在开始时对符文进行范围攻击，然后烧死Boss。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17942"] = { "夸格米拉",
"* |cff71d5ff|Hspell:39340|h[酸喷泉]|h|r: 酸喷泉在前方爆发：没有人站到巨口前。",
"* 菌类腐烂造成持续毒性：在第二次堆积之前清除它，否则治疗师会溺水。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17991"] = { "巨钳鲁克玛尔",
"* |cff71d5ff|Hspell:31956|h[Grievous Wound]|h|r:  grievous wound 会对坦克造成一半的伤害：恢复至满血或更换坦克。",
"* |cff71d5ff|Hspell:34970|h[Water Spit]|h|r: 水喷射是前置攻击：坦克需要面对远离团队的方向。",
"* |cff71d5ff|Hspell:38801|h[Ensnaring Moss]|h|r: 缠绕藤蔓会使人固定在原地：分散开，避免同时缠绕两个目标。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25697"] = { "阿 洪",
"* |cff71d5ff|Hspell:45954|h[Ahune的盾牌]|h|r: 盾牌使他无法被选中——在每次循环中，团队将烧掉冰核以将其移除。",
"* 召唤者从冰石开始：首先清理洞穴环，然后触发仪式，战斗在石头融化时开始。",
"* 水元素从池塘中涌出时，盾牌保持：在循环之间进行范围攻击，并且没有人站在冰冷的地面上。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25740"] = { "阿 洪",
"* |cff71d5ff|Hspell:45954|h[Ahune的盾牌]|h|r: 盾牌使他无法被选中——在每次循环中，团队将烧掉冰核以将其移除。",
"* 召唤者从冰石开始：首先清理洞穴环，然后触发仪式，战斗在石头融化时开始。",
"* 水元素从池塘中涌出时，盾牌保持：在循环之间进行范围攻击，并且没有人站在冰冷的地面上。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25865"] = { "阿 洪",
"* |cff71d5ff|Hspell:45954|h[Ahune的盾牌]|h|r: 盾牌使他无法被选中——在每次循环中，团队将烧掉冰核以将其移除。",
"* 召唤者从冰石开始：首先清理洞穴环，然后触发仪式，战斗在石头融化时开始。",
"* 水元素从池塘中涌出时，盾牌保持：在循环之间进行范围攻击，并且没有人站在冰冷的地面上。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40446"] = { "阿 洪",
"* |cff71d5ff|Hspell:45954|h[Ahune的盾牌]|h|r: 盾牌使他无法被选中——在每次循环中，团队将烧掉冰核以将其移除。",
"* 召唤者从冰石开始：首先清理洞穴环，然后触发仪式，战斗在石头融化时开始。",
"* 水元素从池塘中涌出时，盾牌保持：在循环之间进行范围攻击，并且没有人站在冰冷的地面上。"
};

-- The Botanica : Zona 553 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17975"] = { "高级植物学家弗雷温",
"* |cff71d5ff|Hspell:34557|h[平静]|h|r: 始终中断——平静不会从零恢复到满血。",
"* 幼苗会成群地攻击玩家：用AOE技能消灭它们，否则它们会迅速堆积。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17976"] = { "指挥官萨拉妮丝",
"* |cff71d5ff|Hspell:34803|h[Arcane Resonance]|h|r: 当生命值较低时，她会在区域内爆炸：在战斗转折时，立即释放。",
"* 血守护者会保护她：在战斗开始时，对他们进行范围攻击，以防止治疗者死亡。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17977"] = { "迁跃扭木",
"* |cff71d5ff|Hspell:34716|h[Grow]|h|r: 在他变大时，他会变得巨大，造成巨大伤害：在他变小时，让他远离。",
"* 树人在他阴影中涌现：在他们包围团队之前，先对他们进行范围攻击。",
"* 没人在他吸血时进行近战：吸血会攻击最近的目标——保持近战距离。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17978"] = { "看管者索恩格林",
"* |cff71d5ff|Hspell:34660|h[地狱之火]|h|r: 地狱之火会烧毁周围的一切：近战职业在整个频道中保持距离。",
"* 牺牲标记一名玩家：治疗被标记者，并保持与他的前方的距离。",
"* 痛苦诅咒会中断治疗：尽快解除对坦克的影响。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17980"] = { "拉伊",
"* 荆棘对近战造成爆发伤害：近战玩家需要保持挥击，否则会迅速损失生命值。",
"* 变异体在他周围生成：快速用范围技能清除他们，并保持地面清洁。"
};

-- Sethekk Halls : Zona 556 --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18341"] = { "潘德莫尼厄",
"* |cff71d5ff|Hspell:32358|h[虚空冲击]|h|r: 虚空冲击使他进入阴影状态：近战时，保持挥舞，直到他被虚空击中。",
"* 黑暗重击击中近战：没有人留在挥舞的前面。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18343"] = { "塔瓦洛克",
"* |cff71d5ff|Hspell:2021|h[解除武器]|h|r: 解除武器会使坦克失去武器：后排坦克可以捡起备用武器。",
"* 地震技能会使区域内的法师沉默：治疗者分散治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18344"] = { "纳克斯-王子沙法",
"* 虚幻的法阵在他周围生成：首先消灭它们，否则它们会变成更多的敌人来战斗。",
"* 他的传送技能让他移动到房间的各个角落：近战立即跟随，法术不会等待。",
"* 冰冻冲击技能将近战锁定：持续治疗他们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18472"] = { "黑暗编织者塞斯",
"* 四个元素形象在生命值减少一半时出现：集中攻击它们，或者会淹没治疗者。",
"* 阴影之箭随机攻击：保持扩散范围适中。",
"* 恐惧效果使团队逃跑：在坦克上使用恐惧防御，保持位置。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18473"] = { "利爪之王艾吉斯",
"* |cff71d5ff|Hspell:38197|h[Polymorph]|h|r: 使用“Polymorph”效果的羊：解除魔法或等待羊消失。",
"* |cff71d5ff|Hspell:40425|h[Arcane Explosion]|h|r: 爆炸在闪烁后立即发生：立即后退。",
"* |cff71d5ff|Hspell:38245|h[Blizzard]|h|r: 暴风雪覆盖其区域：每个人都保持移动，远离它。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22930"] = { "尤尔",
"* 冲击会使近战角色倒下：在施法时离开攻击范围，或失去一次完整的攻击窗口。",
"* 他从塔瓦洛克的尸体上站起来：在召唤之前或战斗开始时，团队需要补充。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23035"] = { "安苏",
"* 恐惧乌鸦在他周围孵化：一旦降落，立即对其进行范围攻击。",
"* 仪式圈召唤他：组进入时或在第一分钟，情况会变得不利。",
"* 他的驱逐效果会覆盖法师：近战角色可以穿透窗口。"
};

-- Auchenai Crypts : Zona 558 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18371"] = { "死亡观察者希尔拉克",
"* |cff71d5ff|Hspell:32300|h[审判之眼]|h|r: 眼睛会跟随一名玩家，并造成伤害：将它远离队伍。",
"* 死亡的守卫在地面上四处游荡：在它们聚集之前，先对它们造成伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18373"] = { "大主教玛拉达尔",
"* 玩家的黑暗副本在战斗中中期出现：首先杀死副本，它比它的主人更强。",
"* 灵魂尖啸在区域内使人沉默：法师远离尖啸线。",
"* 影箭集中在坦克身上：治疗者在它们之间预先施加护盾。"
};

-- Shadow Labyrinth : Zona 555 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18667"] = { "煽动者布莱卡特",
"* |cff71d5ff|Hspell:33676|h[Charge]|h|r: 冲刺攻击距离最远的那个：没人能远离队伍。",
"* 狂暴踩踏击倒近战：迅速重新交锋，时间窗口很短。",
"* 旋风攻击在他下方：近战迅速回到攻击范围之外。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18708"] = { "摩摩尔",
"* |cff71d5ff|Hspell:33711|h[Murmur's Touch]|h|r: 触击计数，并在标记处爆炸：标记会独自逃离。",
"* |cff71d5ff|Hspell:33923|h[Sonic Shockwave]|h|r: 冲击波是前冲锥形：近战保持在他身体后方。",
"* |cff71d5ff|Hspell:38796|h[Sonic Boom]|h|r: 爆炸会击中整个房间：所有人需要在施法时离开该区域。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18731"] = { "赫尔默大使",
"* |cff71d5ff|Hspell:33547|h[Fear]|h|r: 恐惧会使坦克失去位置：在坦克身上使用震颤或恐惧护盾。",
"* 突击会使坦克后退：保持后墙干净或让巡逻者加入战斗。",
"* 他在入口处巡逻一个宽区域：将他拉到两堆怪物之间的空区域。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18732"] = { "沃匹尔大师",
"* |cff71d5ff|Hspell:33563|h[Rain of Fire]|h|r: 火雨会烧毁整个区域：远离标记区域。",
"* 他跑到虚空传送门并返回，带来增援：组队保存AOE，不要追逐他。",
"* 虚空旅行者会逐个追逐玩家：没人静止不动。"
};

-- The Eye : Zona 550 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18805"] = { "大星术师索兰莉安",
"* |cff71d5ff|Hspell:33045|h[Astromancer's Wrath]|h|r: 怒火炸弹标记一名玩家：在炸弹爆炸前，远离人群。",
"* 代理人在战斗中在房间周围出现：快速对他们进行范围攻击，优先攻击治疗师。",
"* 当她生命值较低时，她会分裂成多个副本：杀死真正的那个——如果祭司仍然存活，她们会复活她。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19514"] = { "阿尔·阿",
"* |cff71d5ff|Hspell:35410|h[融化护甲]|h|r: 融化护甲会剥夺坦克，在每次融化后立即更换坦克。",
"* |cff71d5ff|Hspell:35383|h[火焰羽]|h|r: 羽落下，在平台上点燃：在施放时躲在她的下方。",
"* 她放弃的平台上孵化幼崽：在它们堆积在治疗者身上之前进行范围攻击。",
"* 她从一个平台跳到另一个平台：坦克快速跟随，并确保公会不会在错误的平台上露面。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19516"] = { "空灵机甲",
"* |cff71d5ff|Hspell:34162|h[Pounding Slam]|h|r: 击打会使目标沉默并击退近战：近战角色在击打时退出。",
"* |cff71d5ff|Hspell:34172|h[Arcane Orb]|h|r: 魔法球随机落在远程目标身上：没有人站在爆炸点附近。",
"* 他会忽略嘲讽：坦克会干净地吸引仇恨，其他人会注意被击退。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19622"] = { "凯尔萨斯·逐日者",
"* 四个顾问会一个接一个倒下：控制牧师，然后用全体攻击击杀其余。",
"* 武器阶段召唤武器：拿起史诗级装备，它们能支撑整个战斗。",
"* |cff71d5ff|Hspell:36819|h[火焰术]|h|r: 始终中断——第五阶段的火焰术会击杀目标。",
"* |cff71d5ff|Hspell:36735|h[火焰冲击]|h|r: 火焰冲击会在地面上造成灼伤：在它标记时移动。",
"* |cff71d5ff|Hspell:34341|h[引力倒塌]|h|r: 引力倒塌会抬起全体：围绕他旋转，并拾取能量球。"
};

-- Gruul's Lair : Zona 565 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18831"] = { "莫加尔大王",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: Whirlwind攻击近战，形成环状：每次旋转，近战需要退出该范围。",
"* 他的顾问中的两个治疗者必须先死：每次治疗都会被中断，总是。",
"* 疯狂的Kiggler使用区域弹药：一个玩家专门吸引他远离公会。",
"* 巫师Krosh拉近法师：一个远程角色引诱法师远离其他所有人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18832"] = { "莫加尔大王",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: Whirlwind攻击近战，形成环状：每次旋转，近战需要退出该范围。",
"* 他的顾问中的两个治疗者必须先死：每次治疗都会被中断，总是。",
"* 疯狂的Kiggler使用区域弹药：一个玩家专门吸引他远离公会。",
"* 巫师Krosh拉近法师：一个远程角色引诱法师远离其他所有人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18834"] = { "莫加尔大王",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: Whirlwind攻击近战，形成环状：每次旋转，近战需要退出该范围。",
"* 他的顾问中的两个治疗者必须先死：每次治疗都会被中断，总是。",
"* 疯狂的Kiggler使用区域弹药：一个玩家专门吸引他远离公会。",
"* 巫师Krosh拉近法师：一个远程角色引诱法师远离其他所有人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18835"] = { "莫加尔大王",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: Whirlwind攻击近战，形成环状：每次旋转，近战需要退出该范围。",
"* 他的顾问中的两个治疗者必须先死：每次治疗都会被中断，总是。",
"* 疯狂的Kiggler使用区域弹药：一个玩家专门吸引他远离公会。",
"* 巫师Krosh拉近法师：一个远程角色引诱法师远离其他所有人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18836"] = { "莫加尔大王",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: Whirlwind攻击近战，形成环状：每次旋转，近战需要退出该范围。",
"* 他的顾问中的两个治疗者必须先死：每次治疗都会被中断，总是。",
"* 疯狂的Kiggler使用区域弹药：一个玩家专门吸引他远离公会。",
"* 巫师Krosh拉近法师：一个远程角色引诱法师远离其他所有人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19044"] = { "屠龙者格鲁尔",
"* |cff71d5ff|Hspell:36240|h[地面冲击]|h|r: 冲击会把所有人推向墙壁：在它击中后分散，或者破碎会伤害附近的玩家。",
"* |cff71d5ff|Hspell:36300|h[破碎]|h|r: 破碎会摧毁冰冻：没人靠近时，它会爆发。",
"* |cff71d5ff|Hspell:33525|h[生长]|h|r: 生长会叠加：战斗在叠加之前结束。"
};

-- The Mechanar : Zona 554 --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19218"] = { "守卫大门的陀螺杀",
"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: 锤击会使近战职业眩晕：离开挥舞之间的弧线。",
"* 影箭群攻击团队：保持阵型，并确保治疗师做好准备。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19219"] = { "机械领主卡帕西图斯",
"* |cff71d5ff|Hspell:35158|h[反射伤害盾]|h|r: 伤害盾会反射攻击：近战玩家在闪光时停止攻击。",
"* |cff71d5ff|Hspell:35159|h[反射魔法盾]|h|r: 魔法盾会反射施法：法师在闪光时保持不动。",
"* Nether的能量球在地面上滚动：避开它们，接触时会爆炸。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19220"] = { "计算者帕萨雷恩",
"* |cff71d5ff|Hspell:35280|h[Dominate Mind]|h|r: 霸主技能会影响一名玩家：让无脑目标承受伤害，技能会自动结束。",
"* 当不死之魂生命值较低时，它们会成群出现：在它们到达时立即对它们进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19221"] = { "灵术师塞比瑟蕾",
"* 火焰轨迹追逐一名玩家：将轨迹拉开，远离队伍。",
"* 地狱之火会生成并攻击：远程一人一人的消灭它们。",
"* 龙息攻击是前置：坦克在每次攻击时面向远离队伍。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19710"] = { "铁手守卫",
"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: 锤子会使近战者眩晕：分散在锤子的攻击范围内。",
"* |cff71d5ff|Hspell:35327|h[Static Disruption]|h|r: 干扰会向堆叠的人造成推：永远不要在范围内聚集。",
"* 没人能正面攻击他：他的攻击会使近战者原地不动。"
};

-- The Arcatraz : Zona 552 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20870"] = { "自由的瑟雷凯斯",
"* |cff71d5ff|Hspell:30533|h[虚空区域]|h|r: 虚空区域会烧毁地面上的所有生物：一旦它们打开，立即离开。",
"* |cff71d5ff|Hspell:32863|h[腐化种子]|h|r: 种子会在标记区域爆炸：治疗爆发或爆炸会连锁伤害整个团队。",
"* 虚空生物在他身边生成：在它们到达治疗师之前，对它们进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20885"] = { "末日预言者达尔莉安",
"* |cff71d5ff|Hspell:36142|h[纳鲁的礼物]|h|r: 始终中断——她的礼物几乎会让她恢复完整。",
"* |cff71d5ff|Hspell:36173|h[旋风]|h|r: 旋风会切断近战：近战离开该区域。",
"* 她会切换到与她的守卫：集中攻击一个，永远不要在他们之间分配伤害。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["20886"] = { "天怒预言者苏克拉底",
"* |cff71d5ff|Hspell:36512|h[Felfire Ground]|h|r: felfire打开地板上的裂缝：没有人站在燃烧的地面上。",
"* |cff71d5ff|Hspell:35759|h[Knock Away]|h|r: 冲撞将坦克推开：让坦克站稳，或者让第二个坦克接住他。",
"* 他轮流与达利亚交替：焦点集中在当前目标上，控制技能等待换位。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20912"] = { "预言者斯克瑞斯",
"* |cff71d5ff|Hspell:36924|h[Mind Rend]|h|r: Mind Rend 对标记的目标造成伤害：在 Rend 之间治疗标记的目标。",
"* 精神幻象从组中生成：每个人首先杀死自己的幻象。",
"* Mind Control 会让一名玩家被控制一段时间：保持对他们的伤害，它会自动结束。"
};

-- Serpentshrine Cavern : Zona 548 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21212"] = { "瓦丝琪",
"* |cff71d5ff|Hspell:38575|h[Entangle]|h|r: 缠绕根会缠住多个目标：通过它来解除效果，没有人独自对抗根。",
"* |cff71d5ff|Hspell:38511|h[Shock Blast]|h|r: 冲击波会使目标在区域内眩晕：分散冲击波的影响范围。",
"* 第二阶段在污染核心上：抓住一个，传递给发电机，依次打破所有四个护盾。",
"* 巡逻者在平台上追击，而纳加则原地死亡：在核心运行时，没有人会被垃圾怪物杀死。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21213"] = { "莫洛格里·踏潮者",
"* |cff71d5ff|Hspell:37730|h[Tidal Wave]|h|r: Tidal Wave 是一种正面冲击：坦克面向他，远离队伍。",
"* |cff71d5ff|Hspell:37850|h[Watery Graves]|h|r: 坟墓召唤水怪：在波浪之间进行范围攻击。",
"* 水球追逐一名玩家并增大：将它引开——它会对接触到它的任何人都造成伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21214"] = { "深水领主卡拉瑟雷斯",
"* |cff71d5ff|Hspell:38236|h[Cataclysmic Bolt]|h|r: 弹飞向第二高的生命值：始终保持该生命值。",
"* |cff71d5ff|Hspell:38330|h[Tidal Surge]|h|r: 冲击将整个团队推回平台：让自己站稳或进行治疗。",
"* 三个携带者首先倒下：鲨基斯，然后泰德雷斯，然后卡里迪斯——领主之后融化。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21215"] = { "盲眼者莱欧瑟拉斯",
"* |cff71d5ff|Hspell:37749|h[Whirlwind]|h|r: Whirlwind会使近战目标流血：停止攻击并等待。",
"* |cff71d5ff|Hspell:37640|h[Chaos Blast]|h|r: Chaos Blast会链式攻击法师：分散并打破链。",
"* 在恶魔阶段，会复制整个团队：每个人先杀死自己的副本，然后团队完成。",
"* 召唤术阶段会打开人形态：术士会保留召唤术，用于阶段分裂。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21216"] = { "不稳定的海度斯",
"* |cff71d5ff|Hspell:38219|h[Frost Tomb]|h|r: 冰墓会冻结一名玩家：治疗其他人穿过它，被冻结的玩家是安全的。",
"* 坦克通过阈值来施放元素：只有在标记时或施放错误的元素时，才会堆叠负面效果。",
"* 在毒液区域，腐蚀堆积很快：离开池子，并保持堆积计数。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21217"] = { "鱼斯拉",
"* |cff71d5ff|Hspell:37660|h[Spout]|h|r: 喷口像钟表一样旋转：与光束一起奔跑，永远不要穿过它。",
"* |cff71d5ff|Hspell:21873|h[Whirl]|h|r: 旋风将近战者推入水池：在施法时离开范围。",
"* 蛇人会在战斗中从水池中产生：对它们进行范围攻击，远程攻击那些攻击者。"
};

-- Black Temple : Zona 564 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22841"] = { "阿卡玛之影",
"* 阿卡玛通过打破锁链来施放：在波浪中或施放期间保持防御，否则施放永远不会结束。",
"* 增援从两个方向涌入：快速清除频道施放者，否则治疗者会先死。",
"* 当阴影逃脱时，每个人都攻击他：冷却技能会生效，而不是之前。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22871"] = { "塔隆·血魔",
"* 死亡之影选择一名玩家：他们倒下，并继续作为阴影构造继续战斗——公会首先解除他们的诅咒。",
"* 亡灵的幽灵追赶整个团队：转身进行范围攻击，在他们堆积之前。",
"* 悲伤诅咒会削弱标记的目标：尽快解除它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22887"] = { "高阶督军纳因图斯",
"* |cff71d5ff|Hspell:39837|h[Needle Spine]|h|r: 刺弹伤害在区域内：分散开，并治疗爆发。",
"* |cff71d5ff|Hspell:39872|h[Tidal Shield]|h|r: 潮汐护盾让他产生气泡：在它期间没有人进行近战，公会后退一步。",
"* 被刺穿的刺扎在后方：使用针对标记的快速移除物品。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22898"] = { "苏普雷姆斯",
"* |cff71d5ff|Hspell:41951|h[Molten Blaze]|h|r: 火焰追逐一名玩家：KITE将其远离法队，以防止火焰池到达其他人。",
"* 跺脚将近战者击倒：准备或接受击倒并重新参与。",
"* 两个坦克轮流控制他：当不负责控制的坦克时，会出现机会。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22917"] = { "伊利丹·怒风",
"* 锋刃会将坦克劈成两半：在每次锋刃攻击时切换坦克，否则治疗者会失去生命条。",
"* 眼睛的束光扫过他所面对的线：当他转身时，公会立即清理该区域。",
"* 影魔会攻击两个玩家：拿取影魔饰品并控制它们，否则它们会造成伤害。",
"* 在恶魔形态下，公会形成阵型并进行治疗：翅膀会打开爆发窗口。",
"* 火焰冲击会烧伤周围区域：移动，火焰会蔓延到接触到的地方。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22947"] = { "莎赫拉丝主母",
"* |cff71d5ff|Hspell:40891|h[Fatal Attraction]|h|r: 链式束缚三个玩家：他们远离法团，并彼此靠近。",
"* 光线旋转：切换你对它造成的魔法。",
"* 射线横扫她的前方：没有人站在扫射区域。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22948"] = { "古尔图格·血沸",
"* |cff71d5ff|Hspell:40481|h[酸性伤]|h|r: 酸性伤害效果叠加在坦克身上：在叠加时轮换坦克，或者治疗者会溺水。",
"* 恐惧怒火会影响一名玩家：将治疗效果集中给他们，他们承受着巨大的压力。",
"* 脓包会集中在五个目标的群体上：治疗者优先处理脓包，而公会则由团队分工处理。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22949"] = { "伊利达里议会",
"* 四个成员分布均匀：一个人独自攻击会激怒整个议会。",
"* 牧师治疗其他人：始终打断她的大治疗。",
"* 反射护盾笼罩其中一人：法师在闪光时持有法术。",
"* 毒液池聚集在近战者下方：快速清除并从绿色区域撤退。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22950"] = { "伊利达里议会",
"* 四个成员分布均匀：一个人独自攻击会激怒整个议会。",
"* 牧师治疗其他人：始终打断她的大治疗。",
"* 反射护盾笼罩其中一人：法师在闪光时持有法术。",
"* 毒液池聚集在近战者下方：快速清除并从绿色区域撤退。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22951"] = { "伊利达里议会",
"* 四个成员分布均匀：一个人独自攻击会激怒整个议会。",
"* 牧师治疗其他人：始终打断她的大治疗。",
"* 反射护盾笼罩其中一人：法师在闪光时持有法术。",
"* 毒液池聚集在近战者下方：快速清除并从绿色区域撤退。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22952"] = { "伊利达里议会",
"* 四个成员分布均匀：一个人独自攻击会激怒整个议会。",
"* 牧师治疗其他人：始终打断她的大治疗。",
"* 反射护盾笼罩其中一人：法师在闪光时持有法术。",
"* 毒液池聚集在近战者下方：快速清除并从绿色区域撤退。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23420"] = { "灵魂精华",
"* 三种精华轮换：愤怒、欲望和痛苦——完全燃烧每个精华之前，先完全消耗。",
"* 欲望的领域会惩罚其他人的治疗：优先处理伤口，永远不要让任何人恢复。",
"* 愤怒的领域意味着不能治疗他：纯伤害获胜。",
"* 灵魂汲取会造成一个强大的魔法效果：一旦标记，立即解除。"
};

-- Magisters' Terrace : Zona 585 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24560"] = { "女祭司德莉希亚",
"* |cff71d5ff|Hspell:44141|h[Flash Heal]|h|r: 始终中断 — Flash会保持她的团队在场。",
"* 五个战士作为团队行动：控制治疗师，爆发一个目标，永远不要分散伤害。",
"* 战士旋转进行近战：近战从旋转窗口中退出。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24664"] = { "凯尔萨斯·逐日者",
"* |cff71d5ff|Hspell:44194|h[Fireball]|h|r: 火球会消灭标记：在每次释放时，都会消灭预先的护盾。",
"* 重力减速会拉动和抬起玩家：没有人靠近房间边缘。",
"* 凤凰从灰烬中孵化和复生：对鸟群进行范围攻击，先杀死蛋。",
"* 火焰冲击会灼伤区域：一旦标记，立即撤退。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24723"] = { "塞林·火心",
"* 恶魔能量频道会消耗团队：任何中断都会中断它，包括击打。",
"* 恶魔能量束会提高他的伤害：尽快杀死消耗的生物。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24744"] = { "维萨鲁斯",
"* 纯能量球在他周围生成：在他接触之前消灭每个球，否则他会变得更强大。",
"* 能量堆积在末端：治疗者需要引导公会通过风暴。"
};

-- Sunwell Plateau : Zona 580 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24850"] = { "卡雷苟斯",
"* 幽灵冲击打开标记上的传送门：标记与恶魔领域进行交易，两个首领同时倒下。",
"* |cff71d5ff|Hspell:45010|h[ arcane breath]|h|r: arcane breath 是前置攻击：坦克面向远离组。",
"* 狂野魔法会产生随机效果：治疗保持灵活性，没有保证。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24882"] = { "布鲁塔卢斯",
"* |cff71d5ff|Hspell:45141|h[烧伤]|h|r: 烧伤效果对坦克有很大影响：在烧伤叠加数上轮换坦克。",
"* 跺脚会击退近战职业：让队伍原地不动，或通过治疗来抵消效果。",
"* 限制代谢会使法师们无法施法：治疗者在法术准备期间进行优先处理。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25038"] = { "菲米丝",
"* |cff71d5ff|Hspell:45717|h[恶魔之息]|h|r: 雾追踪一个玩家：KITE 保持距离，不要靠近队伍。",
"* |cff71d5ff|Hspell:45661|h[包裹]|h|r: 包裹将一个玩家抬起：通过抬升来治疗，他们悬浮在空中。",
"* 呼吸在飞行中像钟摆一样：每个人都随着呼吸移动。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25165"] = { "埃雷达双生児",
"* 两个角色几乎同时倒下：一个倒下的角色会强化幸存者。",
"* 大火蔓延会影响最近的目标：保持目标之间的距离。",
"* 影之爆发对黑暗面造成巨大伤害：治疗者在影之爆发前为影坦克提供保护。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25166"] = { "埃雷达双生児",
"* 两个角色几乎同时倒下：一个倒下的角色会强化幸存者。",
"* 大火蔓延会影响最近的目标：保持目标之间的距离。",
"* 影之爆发对黑暗面造成巨大伤害：治疗者在影之爆发前为影坦克提供保护。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25315"] = { "基尔加丹",
"* |cff71d5ff|Hspell:45848|h[Darkness of a Thousand Souls]|h|r: 黑暗吞噬整个公会：在施法时，使用防御冷却和最大治疗效果。",
"* 盾牌球在柱子上生成：远程攻击它们，或者让光束摧毁营地。",
"* 影尖在波浪中爆发：分散在爆发区域。",
"* 能量球在末端升起：抓住它们，以应对光束。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25741"] = { "穆鲁",
"* 虚空守卫会成群出现：对他们使用范围攻击，并在他们落地时立即切换目标。",
"* 负能量会影响整个房间：治疗者在能量脉冲之间进行治疗。",
"* 当他倒下时，熵托斯就会取代他：躲避黑洞并重新开始燃烧。"
};
P.zh = zh;
