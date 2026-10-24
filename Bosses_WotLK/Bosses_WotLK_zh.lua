--[[
	Bosses_WotLK_zh.lua
		Datos en ZH del pack WotLK.
		Fichero creado por el editor web (2026-10-15); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local zh = {};
local pack = zh;


-- Onyxia's Lair : Zona 249 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10184"] = { "奥妮克希亚",
"* |cff71d5ff|Hspell:18500|h[翅膀风暴]|h|r: 向前方造成大范围击退 - 保持整个队伍在坦克身后。",
"* |cff71d5ff|Hspell:18392|h[火焰球]|h|r: 向随机玩家释放火焰球 - 治疗者保持随时准备。",
"* |cff71d5ff|Hspell:18584|h[深呼吸]|h|r: 当生命值达到66%时，会上升并向区域释放一次火焰 - 立即离开标记区域。",
"* |cff71d5ff|Hspell:18431|h[震耳欲聋的尖叫]|h|r: 当生命值达到40%时，会释放一个区域攻击，造成恐惧效果，因此尽快激活震动和恐惧屏障。",
"* |cff71d5ff|Hspell:68959|h[小狗]|h|r: 当生命值达到40%时，小狗会从战斗区域的蛋中孵化 - 使用区域攻击来将它们远离坦克。"
};

-- Naxxramas : Zona 533 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15928"] = { "塔迪乌斯",
"* |cff71d5ff|Hspell:28089|h[极性变化]|h|r: 团队的一半获得正面能量，另一半获得负面能量 - 将具有能量的玩家分开，避免能量交叉触发。",
"* |cff71d5ff|Hspell:28338|h[连击闪电]|h|r: 连击闪电攻击距离最远的玩家 - 远程攻击，远离团队。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15931"] = { "格罗布鲁斯",
"* |cff71d5ff|Hspell:28169|h[变异注射]|h|r: 注射后的玩家会留下一个有毒的液体，指向墙壁。",
"* |cff71d5ff|Hspell:28240|h[有毒云]|h|r: 随着每次注射，有毒云会生长 - 将它们驱逐出人群。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15932"] = { "格拉斯",
"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: 使所有敌人生命值降至5% - 额外的僵尸会靠近来吸食，保持他们不死或远离。",
"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r:  периодически使用 [Frenzy] - 提高坦克防御。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15936"] = { "肮脏的希尔盖",
"* |cff71d5ff|Hspell:29350|h[喷发]|h|r: 离开房间，地面开始旋转喷发 - 骑在平台周围的安全角落。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15952"] = { "迈克斯纳",
"* |cff71d5ff|Hspell:28622|h[Web Wrap]|h|r: 随机玩家被包裹在墙上 - 尽快解救他们。",
"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: 范围攻击，使敌人在一个宽阔的范围内眩晕 - 尽快眩晕攻击近战的敌人。",
"* |cff71d5ff|Hspell:17332|h[Arañas jóvenes]|h|r: 幼蛛会成群出现 – 尽快消灭它们，防止它们聚集。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15953"] = { "黑女巫法琳娜",
"* |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r: 杀死附近的崇拜者会施放拥抱——这会使费尔琳娜、她和公会沉默，并延迟狂怒。",
"* |cff71d5ff|Hspell:28798|h[Frenzy]|h|r: 如果拥抱结束，则进入狂怒——为坦克提供防御和强化治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15954"] = { "药剂师诺斯",
"* |cff71d5ff|Hspell:29213|h[瘟疫的携带者]|h|r: 诅咒在公会中传播 - 尽快清除，连锁诅咒会造成大量伤害。",
"* |cff71d5ff|Hspell:29208|h[闪现]|h|r: 使用闪现将自己传送到随机玩家 - 将他拉回给坦克。",
"* |cff71d5ff|Hspell:29212|h[骷髅]|h|r: 他会向上传送，并召唤一群骷髅 - 在他返回之前消灭房间里的敌人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15956"] = { "阿努布雷坎",
"* |cff71d5ff|Hspell:28785|h[苦痛群]|h|r: 快速移动，并释放苦痛群，使敌人沉默并吸血 - 保持在它们的扩张圈的前面。",
"* |cff71d5ff|Hspell:28783|h[尖刺]|h|r: 尖刺线穿过团队 - 散开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15989"] = { "萨菲隆",
"* |cff71d5ff|Hspell:28522|h[冰霜之块]|h|r: 随机玩家被冻结在冰霜之块中，成为掩体。 规划位置。",
"* |cff71d5ff|Hspell:28524|h[深呼吸]|h|r: 深呼吸覆盖房间：靠近冰霜护盾。",
"* |cff71d5ff|Hspell:28542|h[生命吸取]|h|r: 生命吸取随机吸取生命 - 保持治疗。",
"* |cff71d5ff|Hspell:28547|h[暴风雪]|h|r: 暴风雪将敌人拉到地面 - 离开它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15990"] = { "克尔苏加德",
"* |cff71d5ff|Hspell:27808|h[冰霜冲击]|h|r: 冰霜冲击会冻结并传递伤害穿过团队 - 扩散直到击中，然后将冻结的堆叠全部击破。",
"* |cff71d5ff|Hspell:27819|h[法力爆发]|h|r: 当一个玩家的法力耗尽时，保持距离，以防止爆炸扩散。",
"* |cff71d5ff|Hspell:27810|h[暗影裂缝]|h|r: 在生命值达到25%时，会在一个玩家下方形成一个空域 - 迅速撤退。",
"* |cff71d5ff|Hspell:28410|h[精神控制]|h|r: 束缚随机玩家 - 保持控制，直到束缚被打破。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16011"] = { "洛欧塞布",
"* |cff71d5ff|Hspell:29234|h[海绵]|h|r: 海绵出现在房间 - 将团移除，其云提供强大的暴击加成。",
"* |cff71d5ff|Hspell:29204|h[Doom]|h|r: Doom 影响一个随机玩家并爆炸 - 提前逃离！",
"* |cff71d5ff|Hspell:55593|h[腐化之光]|h|r: 10秒内，治疗效果被中断 - 使用治疗和辅助法来填补空缺。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16028"] = { "帕奇维克",
"* |cff71d5ff|Hspell:28131|h[狂怒]|h|r: 当生命值降至10%时，进入狂怒状态 - 优先防御和紧急治疗。",
"* |cff71d5ff|Hspell:28311|h[黏液弹]|h|r: 黏液弹随机发射，同时保持发射者的攻击 - 保持发射者攻击的轮换。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16060"] = { "收割者戈提克",
"* |cff71d5ff|Hspell:28025|h[传送：生者阵营]|h|r:  raid 分裂：生者阵营与守卫战斗，死者阵营控制幽灵 - 保持薄弱波数。",
"* |cff71d5ff|Hspell:28026|h[传送：死者阵营]|h|r: 在房间间跳跃，同时幽灵聚集 - 4 分钟后，将他们连接起来，然后消灭。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16061"] = { "教官拉苏维奥斯",
"* |cff71d5ff|Hspell:29107|h[分散攻击]|h|r: 对当前坦克造成大范围伤害 - 使用骨球控制学徒，并打断他们的攻击。"
};

-- [editor web 2026-10-15] Nombres oficiales por la API de Blizzard (criaturas del encuentro); tácticas por jinete --
pack["16063"] = { "瑟里耶克爵士",
"* 他的瑟里耶克之印（|cff71d5ff|Hspell:28835|h[瑟里耶克之印]|h|r）每15秒落在他角落45码内，每次刷新伤害更高：650、1950、4550、9750、16250 - 持印的人轮换承伤，别让叠加太高。",
"* 他的神圣之怒（|cff71d5ff|Hspell:28883|h[神圣之怒]|h|r）在扎堆的玩家之间弹跳，每跳更强：近战在一次施法结束后再进场，保持最大距离，别在近战和远程之间架桥，否则链条会席卷整个队伍。",
"* 他固守在右后方的角落，不会移动：如果他的范围内没有人，谴责会落在整个队伍头上，所以一开始就让一名治疗者和一名远程玩家顶住他，彼此拉开距离，各自只吃自己骑手的印",
"* 记。",
"* 他是最后倒下的骑士，紧跟在布劳缪克丝之后。"
};

-- [editor web 2026-10-15] Nombres oficiales por la API de Blizzard (criaturas del encuentro); tácticas por jinete --
pack["16064"] = { "库尔塔兹领主",
"* 他的库尔塔兹之印（|cff71d5ff|Hspell:28832|h[库尔塔兹之印]|h|r）每15秒落在他角落45码内，每次刷新伤害更高：650、1950、4550、9750、16250 - 前排整体承受：快速击杀他。",
"* 他的陨石（|cff71d5ff|Hspell:57467|h[陨石]|h|r）把残暴的打击分摊给所有叠在被标记者身上的人：让完整的近战叠在被标记者身上，打击就几乎感觉不到，而不是倒下一个玩家。",
"* 他冲向左前方的角落，到达之前无视仇恨，然后像任何近战首领一样作战 - 第一个倒下的骑士，四人存活时使用爆发冷却。"
};

-- [editor web 2026-10-15] Nombres oficiales por la API de Blizzard (criaturas del encuentro); tácticas por jinete --
pack["16065"] = { "女公爵布劳缪克丝",
"* 她的布劳缪克丝之印（|cff71d5ff|Hspell:28833|h[布劳缪克丝之印]|h|r）每15秒落在她角落45码内，每次刷新伤害更高：650、1950、4550、9750、16250 - 后方承伤者在叠加升高时轮换。",
"* 虚空区域（|cff71d5ff|Hspell:28863|h[虚空区域]|h|r）在她周围脚下打开：立刻离开圆圈，承伤者全程盯着地面。",
"* 她固守在左后方的角落，不会移动：一名治疗者和一名远程玩家在距离上顶住她，彼此拉开距离，免得吃到相邻骑手的印记，否则她会用谴责清空队伍。",
"* 第三个倒下，排在两名前排骑士之后。"
};

-- [editor web 2026-10-15] Nombres oficiales por la API de Blizzard (criaturas del encuentro); tácticas por jinete --
pack["30549"] = { "瑞文戴尔男爵",
"* 他的瑞文戴尔之印（|cff71d5ff|Hspell:28834|h[瑞文戴尔之印]|h|r）每15秒落在他角落45码内，每次刷新伤害更高：650、1950、4550、9750、16250 - 前排整体承受：按照击杀顺序走。",
"* 他的邪恶阴影（|cff71d5ff|Hspell:57369|h[邪恶阴影]|h|r）每15秒让他的坦克流血：全程给该坦克额外治疗。",
"* 他冲向右前方的角落，和库尔塔兹一样 - 第二个倒下的骑士，紧跟在库尔塔兹之后。"
};

-- Utgarde Keep : Zona 574 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23953"] = { "凯雷塞斯王子",
"* |cff71d5ff|Hspell:48400|h[冰墓]|h|r: 冻结一名玩家在冰墓中；快速释放玩家，并使用范围攻击来消灭出现的骨骼守卫。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23954"] = { "掠夺者因格瓦尔",
"* |cff71d5ff|Hspell:42730|h[Woe Strike]|h|r: Woe会消耗坦克 - 换掉它，并准备好清除技能。",
"* |cff71d5ff|Hspell:42729|h[Staggering Shout]|h|r: 吼叫会使房间中的所有角色踉跄 - 做好准备并中断它。",
"* |cff71d5ff|Hspell:42723|h[Smash]|h|r: 在非死亡形态中，Smash会震动整个房间：战斗角色应保持距离。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24200"] = { "斯卡沃德和达隆",
"* |cff71d5ff|Hspell:43650|h[削弱]|h|r: 削弱效果会削弱持有者 - 准备好治疗法术。",
"* |cff71d5ff|Hspell:52611|h[阴影]|h|r: 当它们倒下时，阴影会升起 - 在它们重新聚集之前，先攻击阴影。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24201"] = { "斯卡沃德和达隆",
"* |cff71d5ff|Hspell:43650|h[削弱]|h|r: 削弱效果会削弱持有者 - 准备好治疗法术。",
"* |cff71d5ff|Hspell:52611|h[阴影]|h|r: 当它们倒下时，阴影会升起 - 在它们重新聚集之前，先攻击阴影。"
};

-- The Culling of Stratholme : Zona 595 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26529"] = { "肉钩",
"* |cff71d5ff|Hspell:52696|h[缠绕之束]|h|r: 缠绕之束会使一名玩家窒息 - 准备好治疗法术。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26530"] = { "塑血者沙尔拉姆",
"* |cff71d5ff|Hspell:58845|h[Curse of Twisted Flesh]|h|r: 诅咒会影响持有者 - 净化它。",
"* |cff71d5ff|Hspell:52451|h[Ghules]|h|r: 快速消灭他们 - 使他们复活。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26532"] = { "时光领主埃博克",
"* |cff71d5ff|Hspell:52772|h[Exigencia的诅咒]|h|r: 诅咒削弱持有者 – 消除它。",
"* |cff71d5ff|Hspell:58848|h[时间扭曲]|h|r: 时间扭曲改变房间的节奏，在效果期间保持持续治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26533"] = { "玛尔加尼斯",
"* |cff71d5ff|Hspell:52721|h[睡眠]|h|r: 他会使玩家进入睡眠状态 - 快速唤醒并保持队伍分散。",
"* |cff71d5ff|Hspell:52723|h[吸血触碰]|h|r: 触碰会吸取目标生命力 - 净化。"
};

-- Drak'Tharon Keep : Zona 600 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26630"] = { "托尔戈",
"* |cff71d5ff|Hspell:49637|h[感染伤]|h|r: 感染伤会伤害坦克 - 准备好治疗。",
"* |cff71d5ff|Hspell:49639|h[碾压]|h|r: 碾压会伤害坦克 - 提高防御。",
"* |cff71d5ff|Hspell:49380|h[吞噬]|h|r: 在周围的尸体上施法 - 移动时拉扯战斗"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26631"] = { "召唤者诺沃斯",
"* |cff71d5ff|Hspell:50089|h[绝望之怒]|h|r: 绝望之怒会削弱团队，清理它。",
"* |cff71d5ff|Hspell:47346|h[黑暗伤痕]|h|r: 黑暗伤痕会蔓延到地面 – 避免踩到。",
"* |cff71d5ff|Hspell:59910|h[小怪]|h|r: 小怪会成群涌现 – 在它们到达之前消灭它们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26632"] = { "先知萨隆亚",
"* |cff71d5ff|Hspell:49356|h[腐烂肉]|h|r: 变成骷髅 - 小心它投掷火焰的攻击，因为它在骷髅形态下会这样做。",
"* |cff71d5ff|Hspell:49518|h[火焰雨]|h|r: 火焰雨会烧毁房间，移动以避免伤害。",
"* |cff71d5ff|Hspell:49527|h[生命诅咒]|h|r: 诅咒会影响使用它的人 - 消除它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27483"] = { "暴龙之王爵德",
"* |cff71d5ff|Hspell:48878|h[Piercing Slash]|h|r: 这一击会使持有者流血 - 治疗者优先。",
"* |cff71d5ff|Hspell:59416|h[Llamada al Rapto]|h|r: 召唤掠夺者进入房间 - 迅速对整个团队发动攻击。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28684"] = { "克里奇提尔",
"* |cff71d5ff|Hspell:52592|h[疲劳诅咒]|h|r: 疲劳诅咒会影响持有者；清除诅咒；守卫会向门外发射攻击；使用AOE技能并控制蛛丝。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28921"] = { "哈德罗克斯",
"* |cff71d5ff|Hspell:53400|h[酸雾]|h|r: 酸雾覆盖地面 - 避免踩到。",
"* |cff71d5ff|Hspell:53030|h[毒液]|h|r: 毒液会治疗同时对自身造成伤害 - 尽快清除；攻击门，保持距离并使用技能。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["29120"] = { "阿努巴拉克",
"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: 范围攻击击中目标 - 远离目标；在第一阶段，甲虫群在隧道中流动 - 使用AOE来消灭它们。"
};

-- Utgarde Pinnacle : Zona 575 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26668"] = { "席瓦拉·索格蕾",
"* |cff71d5ff|Hspell:48267|h[献祭]|h|r: 目标逼近祭坛：在献祭生效前中断仪式。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26687"] = { "戈托克·苍蹄",
"* |cff71d5ff|Hspell:48261|h[击]|h|r: 犀牛攻击坦克 - 治疗者需要做好准备。",
"* |cff71d5ff|Hspell:48256|h[凋零咆哮]|h|r: 咆哮削弱团队 - 保持治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26693"] = { "残忍的斯卡迪",
"* |cff71d5ff|Hspell:59322|h[旋风]|h|r: 旋风范围广 - 近战角色应后退。",
"* |cff71d5ff|Hspell:59331|h[毒]|h|r: 毒会追踪陷阱 - 跑过毒云。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26861"] = { "伊米隆国王",
"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: 诅咒频道会惩罚法师 - 在频道运行期间停止施法。",
"* |cff71d5ff|Hspell:48291|h[Rot Fétida]|h|r: 腐臭会造成伤害给自身 - 清除它。"
};

-- The Nexus : Zona 576 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26723"] = { "克莉斯塔萨",
"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: 缠绕效果会阻止移动 - 分散队伍并保持治疗者活跃。",
"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: 冰霜爆发围绕她 - 近战角色退开。",
"* |cff71d5ff|Hspell:8599|h[Frenesí]|h|r: 最终进入狂暴状态 - 尽可能使用。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26731"] = { "大魔导师泰蕾丝塔",
"* |cff71d5ff|Hspell:47731|h[冰冻]|h|r: 完全冻结一名玩家 - 破除法术，注意他的克隆体：三个克隆体分散，冰霜克隆体覆盖房间。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26763"] = { "阿诺玛鲁斯",
"* |cff71d5ff|Hspell:47743|h[混沌裂隙]|h|r: 裂隙正在吸收能量——迅速摧毁裂隙。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26794"] = { "塑树者奥莫洛克",
"* |cff71d5ff|Hspell:47981|h[法术反弹]|h|r: 法术反弹：法术施放者应停止施放法术，直到效果生效。",
"* |cff71d5ff|Hspell:47958|h[刺]|h|r: 刺线会扫射房间 - 躲避标记。",
"* |cff71d5ff|Hspell:48017|h[狂暴]|h|r: 生命值较低时进入狂暴状态；快速攻击。",
"* |cff71d5ff|Hspell:61564|h[树]|h|r: 树木会围绕你 - 用AOE攻击消灭它们。"
};

-- The Oculus : Zona 578 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27447"] = { "瓦尔洛斯·云击",
"* |cff71d5ff|Hspell:51002|h[蓝环船长]|h|r: 蓝环船长召唤，先杀死船长。",
"* |cff71d5ff|Hspell:51021|h[法术束]|h|r: 束光沿着其路径 - 移动离开它。",
"* |cff71d5ff|Hspell:51054|h[强化法术]|h|r: 强化法术标记一个玩家 - 移除效果。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27654"] = { "审讯者达库斯",
"* |cff71d5ff|Hspell:50774|h[雷霆踩踏]|h|r: 踩踏会使房间震动 - 保持稳定。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27655"] = { "法师领主伊洛姆",
"* |cff71d5ff|Hspell:51121|h[时间炸弹]|h|r: 炸弹在握持时爆炸 - 在接触前跑开。",
"* |cff71d5ff|Hspell:51110|h[强化奥术爆炸]|h|r: 强大的奥术攻击 - 阻止其释放或做好准备。",
"* |cff71d5ff|Hspell:51103|h[冰冻炸弹]|h|r: 冰冻炸弹会冷却地面 - 避开它们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27656"] = { "魔网守护者埃雷苟斯",
"* |cff71d5ff|Hspell:51162|h[Planar Shift]|h|r: 改变维度，并保持龙类生物靠近 - 在维度变化时保持团队团结。",
"* |cff71d5ff|Hspell:51170|h[Asalto Furioso]|h|r: 在阶段重新开始前，优先对其造成大量伤害。"
};

-- Halls of Stone : Zona 599 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27975"] = { "悲伤圣女",
"* |cff71d5ff|Hspell:50761|h[Woe Strike]|h|r: 毒液攻击目标 - 转移目标。",
"* |cff71d5ff|Hspell:50752|h[Storm of Grief]|h|r: 狂暴风暴席卷房间 - 远离危险区域。",
"* |cff71d5ff|Hspell:50760|h[Shock of Sorrow]|h|r: 痛苦冲击使全员眩晕 – 散开，避免被击中。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27977"] = { "克莱斯塔卢斯",
"* |cff71d5ff|Hspell:50833|h[击地]|h|r: 地击会分散敌人 - 散开。",
"* |cff71d5ff|Hspell:50810|h[破碎]|h|r: 击后会破碎 - 保持距离，否则碎片会伤害团队。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27978"] = { "塑铁者斯约尼尔",
"* |cff71d5ff|Hspell:50840|h[闪电环]|h|r: 环上的闪电在周围旋转 - 在它击中之前离开。",
"* |cff71d5ff|Hspell:50834|h[静电]|h|r: 静电积聚在接触者身上 - 保持团队远离他的环。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28070"] = { "布莱恩·铜须",
"* |cff71d5ff|Hspell:51012|h[暗物质]|h|r: 暗物质在守护者面前燃烧 - 离开它们。",
"* |cff71d5ff|Hspell:51125|h[灼热凝视]|h|r: 灼热凝视从守护者身上发出 - 面对它们。"
};

-- Halls of Lightning : Zona 602 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28546"] = { "艾欧纳尔",
"* |cff71d5ff|Hspell:52770|h[分散]|h|r: 使用分散来制造火花。快速聚集火花，然后在它们爆炸之前使用范围攻击。",
"* |cff71d5ff|Hspell:52658|h[静电爆发]|h|r: 爆发会灼伤持有者 - 标记的动作会击中他们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28586"] = { "比亚格里将军",
"* |cff71d5ff|Hspell:52027|h[旋风]|h|r: 旋风覆盖范围 - 近战角色应后退; 在阶段之间切换 Storm、Battle 和 Berserker 姿势。",
"* |cff71d5ff|Hspell:16856|h[致命一击]|h|r: 致命一击对坦克造成伤害 - 切换并进行治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28587"] = { "沃尔坎",
"* |cff71d5ff|Hspell:52237|h[打破攻击]|h|r: 攻击会震动锻造的地面：近战职业需要离开；他会制造熔岩傀儡，让它们冷却后，然后摧毁它们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28923"] = { "洛肯",
"* |cff71d5ff|Hspell:52960|h[闪电冲击]|h|r: 冲击波会随着每一次冲击而扩散 - 在它达到顶峰之前，及时离开。"
};

-- The Eye of Eternity : Zona 616 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28859"] = { "玛里苟斯",
"* |cff71d5ff|Hspell:56105|h[漩涡]|h|r: 每 60 秒，旋转整个队伍并造成脉冲伤害 - 穿过它进行治疗。",
"* |cff71d5ff|Hspell:56505|h[深呼吸]|h|r: 在第二阶段，他的呼吸会灼伤平台上的一个区域 - 离开该区域。",
"* |cff71d5ff|Hspell:60936|h[能量冲击]|h|r: 无法避免的冲击波穿过平台 - 使用冷却技能。",
"* |cff71d5ff|Hspell:57430|h[静电场]|h|r: 静电围绕平台 - 移动到远离它们的地方。"
};

-- The Obsidian Sanctum : Zona 615 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28860"] = { "萨塔里奥",
"* |cff71d5ff|Hspell:59127|h[暗影裂隙]|h|r: 玩家下方出现空域 - 迅速离开; 他们的气息也会向下一个气息的后面平台发送火焰冲击波。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30449"] = { "维斯佩隆",
"* |cff71d5ff|Hspell:59127|h[黑暗裂隙]|h|r: 空域区域会爆炸，攻击玩家——使用盐；他的弟子会出现——在龙获得增益之前优先击杀他。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30451"] = { "沙德隆",
"* |cff71d5ff|Hspell:59127|h[黑暗裂隙]|h|r: 虚空区域在玩家下方爆炸——盐，他的学生和恶魔穿过传送门——在效果到达他之前消灭学生。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30452"] = { "泰内布隆",
"* |cff71d5ff|Hspell:59127|h[暗影裂隙]|h|r: 玩家靠近时，虚空区域会爆炸 - 闪避；墙壁上的暗影蛋会破碎 - 摧毁幼崽。"
};

-- The Violet Hold : Zona 608 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29266"] = { "谢沃兹",
"* |cff71d5ff|Hspell:54102|h[埃瑟尔球]|h|r: 球体围绕并发射 – 消除并将其远离团队。",
"* |cff71d5ff|Hspell:54160|h[奥术之力]|h|r: 奥术之力增强他的防御 – 坦克防御。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29312"] = { "拉文索尔",
"* |cff71d5ff|Hspell:54282|h[火焰之息]|h|r: 火焰之息 - 让他正面攻击。",
"* |cff71d5ff|Hspell:54249|h[熔岩灼烧]|h|r: 熔岩灼烧会使团队爆炸 - 散开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29313"] = { "艾库隆",
"* |cff71d5ff|Hspell:54306|h[守护泡]|h|r: 泡使他免疫；摧毁它。",
"* |cff71d5ff|Hspell:54241|h[水箭]|h|r: 箭攻击房间：中断或寻找掩护。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29314"] = { "湮灭者祖拉玛特",
"* |cff71d5ff|Hspell:59743|h[虚空位移]|h|r: 位移会给使用者造成伤害 - 治疗者需要做好准备。",
"* |cff71d5ff|Hspell:59745|h[黑暗斗篷]|h|r: 斗篷会隐藏其吸引力 - 准备好清理。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29315"] = { "埃雷克姆",
"* |cff71d5ff|Hspell:54481|h[链式治疗]|h|r: 他的卫兵进行链式治疗 - 阻止他们。",
"* |cff71d5ff|Hspell:54479|h[大地护盾]|h|r: 大地护盾保护小队 - 解除它们。",
"* |cff71d5ff|Hspell:54516|h[狂怒]|h|r: 狂怒技能增强他 - 消除它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29316"] = { "摩拉格",
"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: 眼睛链接会束缚并追踪玩家；将其引导到组的外侧。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31134"] = { "塞安妮苟萨",
"* |cff71d5ff|Hspell:58693|h[暴风雪]|h|r: 暴风雪攻击覆盖整个区域 - 移动到雪外。",
"* |cff71d5ff|Hspell:58694|h[吸取]|h|r: 攻击吸引整个团队 - 做好准备并分散，因为她会在通过传送门的波次消失后，最后承受伤害。",
"* |cff71d5ff|Hspell:59374|h[法力燃烧]|h|r: 法力燃烧会消耗持有者 - 消除它。"
};

-- Gundrak : Zona 604 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29304"] = { "斯拉德兰",
"* |cff71d5ff|Hspell:55081|h[Poison Nova]|h|r: 毒球会扩散到地面 - 离开安全区域，让毒球扩散。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29305"] = { "莫拉比",
"* |cff71d5ff|Hspell:55098|h[变形]|h|r: 变形为巨熊 - 阻止攻击或战斗变为双打。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29306"] = { "迦尔达拉",
"* |cff71d5ff|Hspell:54956|h[突击攻击]|h|r: 突击攻击会击退目标 - 标记目标。",
"* |cff71d5ff|Hspell:55249|h[旋风挥击]|h|r: 旋风挥击会持续对目标造成伤害 - 切换目标。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29307"] = { "达卡莱巨像",
"* |cff71d5ff|Hspell:54850|h[出现]|h|r: 先攻击元素，在它再次融合之前。",
"* |cff71d5ff|Hspell:54878|h[融合]|h|r: 融合会重建巨兽，元素先死。",
"* |cff71d5ff|Hspell:59451|h[魔力池]|h|r: 魔力池会烧毁地面——避免踩到。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29932"] = { "凶残的伊克",
"* |cff71d5ff|Hspell:55817|h[Eck's Residue]|h|r: 残液会灼伤 - 保持距离，避免接触。"
};

-- Ahn'kahet: The Old Kingdom : Zona 619 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29308"] = { "塔达拉姆王子",
"* |cff71d5ff|Hspell:55959|h[吸血拥抱]|h|r: 拥抱会施加效果给目标 - 爆发性治疗来打破控制。",
"* |cff71d5ff|Hspell:55931|h[火焰球]|h|r: 火焰球在房间内移动 - 保持远离其路径。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29309"] = { "纳多克斯长老",
"* |cff71d5ff|Hspell:56130|h[幼崽瘟疫]|h|r: 瘟疫削弱持有者；清除瘟疫。 幼崽成群攻击；使用AOE。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29310"] = { "耶戈达·觅影者",
"* |cff71d5ff|Hspell:56926|h[Thunderclap]|h|r: Thunderclap 的攻击范围广，保持距离。",
"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: Twister 穿过人群 - 远离墙壁。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29311"] = { "传令官沃拉兹",
"* |cff71d5ff|Hspell:57496|h[疯狂]|h|r: 疯狂会生成整个队伍的复制体 - 尽快消灭复制体。",
"* |cff71d5ff|Hspell:62660|h[影击]|h|r: [影击]的攻击会击中玩家 - 远离。",
"* |cff71d5ff|Hspell:57949|h[震颤]|h|r: 震颤会影响持有者 - 清除它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["30258"] = { "埃曼尼塔",
"* |cff71d5ff|Hspell:57055|h[Mini]|h|r: 降低携带者，使其变小且易受攻击，并由蘑菇治疗：尽快清除它们。"
};

-- Vault of Archavon : Zona 624 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31125"] = { "岩石看守者阿尔卡冯",
"* |cff71d5ff|Hspell:58678|h[岩块]|h|r: 攻击两个标记的目标——治疗者——，让他们做好准备。",
"* |cff71d5ff|Hspell:53041|h[缠绕]|h|r: 使用缠绕来吸引一个玩家到自己身边；群体保持远离标记的目标。",
"* |cff71d5ff|Hspell:60894|h[跳跃]|h|r: 跳向一个随机玩家——分散并迅速重新站位。",
"* |cff71d5ff|Hspell:60880|h[踩踏]|h|r: 攻击群体——分散。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33993"] = { "风暴看守者埃玛尔隆",
"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: 暴风之灵正在蓄力 - 在爆发前将其击杀。",
"* |cff71d5ff|Hspell:65279|h[Lightning Nova]|h|r: 围绕他移动 - 战士会出来。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35013"] = { "火焰看守者科拉隆",
"* |cff71d5ff|Hspell:66665|h[火焰呼吸]|h|r: 面对他，从队伍中分开。",
"* |cff71d5ff|Hspell:66725|h[陨石拳]|h|r: 用拳击治疗者 - 轮换治疗者。",
"* |cff71d5ff|Hspell:66721|h[烈焰怒吼]|h|r: 他的怒吼会提供时间增益。",
"* |cff71d5ff|Hspell:66684|h[灰烬]|h|r: 火焰碎片跟随玩家 - 将它们移动到墙边。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38433"] = { "寒冰看守者图拉旺",
"* |cff71d5ff|Hspell:72090|h[冰冻地面]|h|r: 冰霜蔓延 - 撤退。",
"* |cff71d5ff|Hspell:72034|h[白茫]|h|r: 白茫攻击 - 攻击附近的敌人。",
"* |cff71d5ff|Hspell:72091|h[冰球]|h|r: 冰球围绕他旋转 - 在它们爆炸之前摧毁它们。",
"* |cff71d5ff|Hspell:72004|h[冻伤]|h|r: 冻伤与每次击中冰球时叠加 - 保持冰球在地面上。"
};

-- Ulduar : Zona 603 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32845"] = { "霍迪尔",
"* |cff71d5ff|Hspell:65123|h[云之怒]|h|r: 技能“云之怒”会给持有者和附近的所有人提供增益——合理分配给法师。",
"* |cff71d5ff|Hspell:61968|h[冰冻]|h|r: 冰冻会覆盖地面——在冰块上骑行。",
"* |cff71d5ff|Hspell:62188|h[寒冰之牙]|h|r: 寒冰之牙会攻击站立不动的人——永远不要停止移动。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32857"] = { "铁议会",
"* |cff71d5ff|Hspell:61920|h[超级攻击]|h|r: 当其中一个卫兵倒下时，其他卫兵会加强——利用最强的组合或协调杀死。",
"* |cff71d5ff|Hspell:64215|h[链闪电]|h|r: 链闪电攻击群体——分散和中断。",
"* |cff71d5ff|Hspell:63483|h[雷之风暴]|h|r: 布林迪尔释放雷之风暴——中断攻击。",
"* |cff71d5ff|Hspell:63481|h[超载]|h|r: 布林迪尔造成大规模超载——逃跑。",
"* |cff71d5ff|Hspell:61888|h[压倒性力量]|h|r: “压倒性力量”集中在坦克身上——更换坦克。",
"* |cff71d5ff|Hspell:63490|h[死亡符文]|h|r: 死亡符文烧毁地面——远离它们。",
"* |cff71d5ff|Hspell:63489|h[符文护盾]|h|r: 符文护盾保护其生命值；拆除或夺走它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32865"] = { "托里姆",
"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: 锤子会使任何人在其前方锥形区域内眩晕 - 保持在柱子的后面。",
"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: 使用闪电冲刺快速攻击时，当敌人出现时 - 快速清除区域，然后攻击走廊中的Boss。",
"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: 对坦克使用 - 交换和防御。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32867"] = { "铁议会",
"* |cff71d5ff|Hspell:61920|h[超级攻击]|h|r: 当其中一个卫兵倒下时，其他卫兵会加强——利用最强的组合或协调杀死。",
"* |cff71d5ff|Hspell:64215|h[链闪电]|h|r: 链闪电攻击群体——分散和中断。",
"* |cff71d5ff|Hspell:63483|h[雷之风暴]|h|r: 布林迪尔释放雷之风暴——中断攻击。",
"* |cff71d5ff|Hspell:63481|h[超载]|h|r: 布林迪尔造成大规模超载——逃跑。",
"* |cff71d5ff|Hspell:61888|h[压倒性力量]|h|r: “压倒性力量”集中在坦克身上——更换坦克。",
"* |cff71d5ff|Hspell:63490|h[死亡符文]|h|r: 死亡符文烧毁地面——远离它们。",
"* |cff71d5ff|Hspell:63489|h[符文护盾]|h|r: 符文护盾保护其生命值；拆除或夺走它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32871"] = { "观察者奥尔加隆",
"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: Big Bang 覆盖整个房间：进入黑洞并观察其穿过。",
"* |cff71d5ff|Hspell:65108|h[黑洞]|h|r: 坍塌的恒星留下黑洞：我进入其中，在爆炸后逃了出来。",
"* |cff71d5ff|Hspell:64412|h[相位打击]|h|r: 相位打击集中在坦克上 - 切换坦克。",
"* |cff71d5ff|Hspell:64596|h[宇宙重击]|h|r: 宇宙重击标记地面 - 移动以避免伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32906"] = { "弗蕾亚",
"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: 根藤使玩家原地不动 - 尽快解除。",
"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: 太阳光束会广泛爆发 - 尽快远离目标。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32926"] = { "霍迪尔",
"* |cff71d5ff|Hspell:65123|h[云之怒]|h|r: 技能“云之怒”会给持有者和附近的所有人提供增益——合理分配给法师。",
"* |cff71d5ff|Hspell:61968|h[冰冻]|h|r: 冰冻会覆盖地面——在冰块上骑行。",
"* |cff71d5ff|Hspell:62188|h[寒冰之牙]|h|r: 寒冰之牙会攻击站立不动的人——永远不要停止移动。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32927"] = { "铁议会",
"* |cff71d5ff|Hspell:61920|h[超级攻击]|h|r: 当其中一个卫兵倒下时，其他卫兵会加强——利用最强的组合或协调杀死。",
"* |cff71d5ff|Hspell:64215|h[链闪电]|h|r: 链闪电攻击群体——分散和中断。",
"* |cff71d5ff|Hspell:63483|h[雷之风暴]|h|r: 布林迪尔释放雷之风暴——中断攻击。",
"* |cff71d5ff|Hspell:63481|h[超载]|h|r: 布林迪尔造成大规模超载——逃跑。",
"* |cff71d5ff|Hspell:61888|h[压倒性力量]|h|r: “压倒性力量”集中在坦克身上——更换坦克。",
"* |cff71d5ff|Hspell:63490|h[死亡符文]|h|r: 死亡符文烧毁地面——远离它们。",
"* |cff71d5ff|Hspell:63489|h[符文护盾]|h|r: 符文护盾保护其生命值；拆除或夺走它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32930"] = { "科隆加恩",
"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: 眼睛追踪玩家 - 将他们引到平台周围，直到它们消失。",
"* |cff71d5ff|Hspell:64292|h[Grab]|h|r: 石头的手臂抓住玩家 - 快速移动。",
"* |cff71d5ff|Hspell:64002|h[Bite Shield]|h|r: 将咬伤护盾堆叠施加给坦克 - 轮换坦克。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33113"] = { "烈焰巨兽",
"* |cff71d5ff|Hspell:62374|h[追逐特定车辆]|h|r: 追逐特定车辆 - 该车辆会转圈，而其他人则会从侧翼接近。",
"* |cff71d5ff|Hspell:62475|h[系统关闭]|h|r: 关闭会使其冻结 - 然后烧毁一切。",
"* |cff71d5ff|Hspell:62297|h[霍迪怒火]|h|r: 塔的增益会增强战斗 - 在战斗开始前摧毁塔可以削弱他。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33118"] = { "掌炉者伊格尼斯",
"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: 攻击一个玩家，使其进入熔岩池 - 持续治疗，直到他倒下。",
"* |cff71d5ff|Hspell:62488|h[Iron Structures]|h|r: 铁结构从缝隙中出现 - 将其浸入水中，让“烧毁”摧毁它们。",
"* |cff71d5ff|Hspell:63472|h[Fireblasts]|h|r: 火箭会中断施法。施法者需要保持移动。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33186"] = { "锋鳞",
"* |cff71d5ff|Hspell:48642|h[鱼叉炮塔]|h|r: 在竞技场周围建造鱼叉炮塔 - 吸引她进入飞行。",
"* |cff71d5ff|Hspell:64733|h[吞噬之焰]|h|r: 焰池在地面上蔓延 - 离开它们。",
"* |cff71d5ff|Hspell:64771|h[融合盔甲]|h|r: 融合盔甲堆积在坦克身上 - 换坦克。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33271"] = { "维扎克斯将军",
"* |cff71d5ff|Hspell:62660|h[影击]|h|r: 影击追击目标 - 跑向墙壁。",
"* |cff71d5ff|Hspell:63276|h[汲取生命]|h|r: 汲取生命会吸取标记目标 - 标记目标保持距离。",
"* |cff71d5ff|Hspell:62662|h[黑暗浪潮]|h|r: 黑暗浪潮会增加他的伤害 - 坦克需要使用防御。",
"* |cff71d5ff|Hspell:62661|h[灼烧之火]|h|r: 灼烧之火会强化他 - 每次施法时打断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33288"] = { "尤格-萨隆",
"* |cff71d5ff|Hspell:63050|h[理智]|h|r: 理智流动的源点位于阴影附近 - 观察计量，在低于 30 点时从房间中撤退。",
"* |cff71d5ff|Hspell:63802|h[脑连接]|h|r: 连接的玩家会相互移动 - 保持连接分开。",
"* |cff71d5ff|Hspell:57687|h[脑部传送]|h|r: 传送门会打开用于追逐脑部 - 将标记的队伍通过传送门，结束幻象。",
"* |cff71d5ff|Hspell:62979|h[Yogg守护者]|h|r: 守护者从阴影中出现：快速攻击多个。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33293"] = { "XT-002拆解者",
"* |cff71d5ff|Hspell:65121|h[光爆]|h|r: 光爆爆炸在玩家脚下 - 远离爆炸点。",
"* |cff71d5ff|Hspell:64234|h[重力炸弹]|h|r: 重力炸弹围绕目标 - 保持距离。",
"* |cff71d5ff|Hspell:64206|h[消耗]|h|r: 露出心脏的阶段会产生消耗区域：避免进入并摧毁心脏。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33432"] = { "米米尔隆",
"* |cff71d5ff|Hspell:63631|h[冲击波]|h|r: 来自他的坦克侧的大型爆炸 - 近战角色需要退开。",
"* |cff71d5ff|Hspell:64402|h[火箭攻击]|h|r: 火箭穿过标记线 - 立即撤退。",
"* |cff71d5ff|Hspell:63274|h[激光洪流]|h|r: 旋转并发射激光 - 绕着他跑。",
"* |cff71d5ff|Hspell:64529|h[等离子炮]|h|r: 等离子炮击中坦克 - 防御性治疗。",
"* |cff71d5ff|Hspell:64623|h[冰冻炸弹]|h|r: 一颗冰冻炸弹降落 - 在它着陆之前打破它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33515"] = { "欧尔莉亚",
"* |cff71d5ff|Hspell:64386|h[声音]|h|r: 他的尖叫在房间里引起恐惧：在每次释放时保持中断。",
"* |cff71d5ff|Hspell:64396|h[守护者蜂群]|h|r: 野兽守护者会不断复活：对蜂群造成AOE伤害，消除守护者的球。",
"* |cff71d5ff|Hspell:64675|h[虚空区域]|h|r: 虚空区域追逐一名玩家 - 移动以避免接触。"
};

-- Trial of the Crusader : Zona 649 --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34441"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34444"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34445"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34447"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34448"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34449"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34450"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34451"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34453"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34454"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34455"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34456"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34458"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34459"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34460"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34461"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34463"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34465"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34466"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34467"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34468"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34469"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34470"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34471"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34472"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34473"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34474"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34475"] = { "阵营冠军",
"* |cff71d5ff|Hspell:65947|h[剑之狂暴]|h|r: 战士释放狂暴 — 战士需要离开。",
"* |cff71d5ff|Hspell:65983|h[英勇]|h|r: 他的英勇加成对团队有益，所以尽快移除。",
"* |cff71d5ff|Hspell:65816|h[地狱]|h|r: 恶魔会烧毁地面 — 保持在标记区域外。",
"* |cff71d5ff|Hspell:65801|h[绵羊]|h|r: 他的群体控制技能 — 准备好解除技能。",
"* |cff71d5ff|Hspell:66017|h[死亡之握]|h|r: 死亡之握会抓住一名玩家；团队需要保持阵型。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34496"] = { "双Val'kyr",
"* |cff71d5ff|Hspell:65950|h[光之精华]|h|r: 整个队伍中，只有一半携带光之精华 - 仅触碰光之球，颜色相反会灼伤。",
"* |cff71d5ff|Hspell:66001|h[暗之精华]|h|r: 另一半携带暗之精华 - 仅触碰暗之球。",
"* |cff71d5ff|Hspell:39089|h[特殊]|h|r: 在特殊召唤期间，核心位置会改变 - 同时触碰颜色相反的球。",
"* |cff71d5ff|Hspell:65875|h[双胞胎契约]|h|r: 双胞胎互相治疗 - 终止契约。",
"* |cff71d5ff|Hspell:65916|h[双胞胎力量]|h|r: 强化者会受到减少伤害 - 将伤害转移到另一人。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34497"] = { "双Val'kyr",
"* |cff71d5ff|Hspell:65950|h[光之精华]|h|r: 整个队伍中，只有一半携带光之精华 - 仅触碰光之球，颜色相反会灼伤。",
"* |cff71d5ff|Hspell:66001|h[暗之精华]|h|r: 另一半携带暗之精华 - 仅触碰暗之球。",
"* |cff71d5ff|Hspell:39089|h[特殊]|h|r: 在特殊召唤期间，核心位置会改变 - 同时触碰颜色相反的球。",
"* |cff71d5ff|Hspell:65875|h[双胞胎契约]|h|r: 双胞胎互相治疗 - 终止契约。",
"* |cff71d5ff|Hspell:65916|h[双胞胎力量]|h|r: 强化者会受到减少伤害 - 将伤害转移到另一人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34564"] = { "阿努巴拉克",
"* |cff71d5ff|Hspell:45419|h[奈鲁比亚挖掘者]|h|r: 奈鲁比亚挖掘者从地面出现 - 快速消灭它们并中断它们的攻击。",
"* |cff71d5ff|Hspell:67574|h[追击]|h|r: 兽人追逐标记玩家 - 跑向两侧并使用AOE攻击来伤害它们，同时移动。",
"* |cff71d5ff|Hspell:66013|h[穿透寒冷]|h|r: 在最后一阶段，寒冷伤害会施加给所有人 - 治疗来抵消效果。",
"* |cff71d5ff|Hspell:66012|h[冰冻冲击]|h|r: 冰冻冲击标记一个玩家 - 治疗者，做好准备。",
"* |cff71d5ff|Hspell:65919|h[挖掘]|h|r: 使用挖掘技能来消灭小队 - 消灭该团，它会在标记位置旁边出现。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34780"] = { "加拉克苏斯大王",
"* |cff71d5ff|Hspell:66197|h[Legion's Fire]|h|r: 火焰会跟随路径 - 沿着路径跑到墙上。",
"* |cff71d5ff|Hspell:66237|h[Incinerate Flesh]|h|r: 目标进入治疗阶段 - 持续治疗直到解除封印。",
"* |cff71d5ff|Hspell:66269|h[Nether Portal]|h|r: 开启传送门 - 快速击杀导师和仆人。",
"* |cff71d5ff|Hspell:66258|h[Infernal Volcano]|h|r: 熔岩爆发 - 在火球淹没房间之前摧毁熔岩。",
"* |cff71d5ff|Hspell:67009|h[Infernal Power]|h|r: 给予自身 - 撤销法术。",
"* |cff71d5ff|Hspell:66532|h[Fel Fireball]|h|r: Fel Fireball 攻击坦克 - 阻止每次释放。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34796"] = { "撕裂之兽",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus 堆积在坦克身上 - 首先烧死背靠在坦克上的小怪。",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 火球散落在人群中 - 离开目标。",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 怪物向战斗区域冲 - 躲避攻击，并在昏迷时攻击。",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 寒气波遍及房间 - 远离攻击范围。",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 黏液池扩散在蠕虫下方 - 避免被它们碰到。",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 毒素使目标麻痹 - 准备好清洁技能。",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 燃烧的胆汁接触时扩散 - 保持与目标的安全距离。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34797"] = { "撕裂之兽",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus 堆积在坦克身上 - 首先烧死背靠在坦克上的小怪。",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 火球散落在人群中 - 离开目标。",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 怪物向战斗区域冲 - 躲避攻击，并在昏迷时攻击。",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 寒气波遍及房间 - 远离攻击范围。",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 黏液池扩散在蠕虫下方 - 避免被它们碰到。",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 毒素使目标麻痹 - 准备好清洁技能。",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 燃烧的胆汁接触时扩散 - 保持与目标的安全距离。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34799"] = { "撕裂之兽",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus 堆积在坦克身上 - 首先烧死背靠在坦克上的小怪。",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 火球散落在人群中 - 离开目标。",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 怪物向战斗区域冲 - 躲避攻击，并在昏迷时攻击。",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 寒气波遍及房间 - 远离攻击范围。",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 黏液池扩散在蠕虫下方 - 避免被它们碰到。",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 毒素使目标麻痹 - 准备好清洁技能。",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 燃烧的胆汁接触时扩散 - 保持与目标的安全距离。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["35144"] = { "撕裂之兽",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus 堆积在坦克身上 - 首先烧死背靠在坦克上的小怪。",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: 火球散落在人群中 - 离开目标。",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: 怪物向战斗区域冲 - 躲避攻击，并在昏迷时攻击。",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: 寒气波遍及房间 - 远离攻击范围。",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: 黏液池扩散在蠕虫下方 - 避免被它们碰到。",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: 毒素使目标麻痹 - 准备好清洁技能。",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: 燃烧的胆汁接触时扩散 - 保持与目标的安全距离。"
};

-- Trial of the Champion : Zona 650 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34657"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34701"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34702"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34703"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34705"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34928"] = { "银色神官帕尔崔丝",
"* |cff71d5ff|Hspell:66620|h[记忆]|h|r: 记忆显现并攻击 – 摧毁它，躲避它造成的伤害。",
"* |cff71d5ff|Hspell:66515|h[反射护盾]|h|r: 护盾会反弹法术 – 法师远离它。",
"* |cff71d5ff|Hspell:66538|h[圣火]|h|r: 圣火灼烧标记 – 消除效果。",
"* |cff71d5ff|Hspell:66537|h[恢复]|h|r: 她会恢复 – 消除恢复效果。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35119"] = { "纯洁者耶德瑞克",
"* |cff71d5ff|Hspell:66935|h[Radiance]|h|r: 光芒会迷惑任何面对他的人 - 永远不要看光。",
"* |cff71d5ff|Hspell:66905|h[Hammer]|h|r: 挥舞他的锤子 - 抓住并扔回。",
"* |cff71d5ff|Hspell:66889|h[Revenge]|h|r: 他的复仇会增强他的力量；在攻击中烧他。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35451"] = { "黑骑士",
"* |cff71d5ff|Hspell:67781|h[腐蚀]|h|r: 腐蚀扩散到地面 - 离开它。",
"* |cff71d5ff|Hspell:67751|h[爆炸]|h|r: 幽灵在队伍附近爆炸 - 逃离。",
"* |cff71d5ff|Hspell:67823|h[标记]|h|r: 标记一名玩家 - 治疗者应保持在标记玩家附近。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35569"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35570"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35571"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35572"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35617"] = { "伟大的冠军",
"* |cff71d5ff|Hspell:67528|h[治疗潮]|h|r: 治疗者会释放治疗潮 - 保持中断生效。",
"* |cff71d5ff|Hspell:66043|h[变形]|h|r: 法师使用变形 - 快速解除。",
"* |cff71d5ff|Hspell:67534|h[法术]|h|r: 萨满施法 - 解除法术。",
"* |cff71d5ff|Hspell:66045|h[速度]|h|r: 速度加成赋予他们力量 - 击败首领。",
"* |cff71d5ff|Hspell:67594|h[毒]|h|r: 毒液扩散 - 避免激活点。"
};

-- Pit of Saron : Zona 658 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36476"] = { "伊克",
"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: 追踪技能：玩家被追踪并持续攻击 - 跑开，避开目标。",
"* |cff71d5ff|Hspell:69024|h[Toxic Waste]|h|r: 毒液：毒液在地面上聚集 - 避免踩到。",
"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: 毒云：毒云扩散 - 离开该区域。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36494"] = { "熔炉之主加弗斯特",
"* |cff71d5ff|Hspell:70381|h[Deep Freeze]|h|r: 冰冻效果会冻结持有者，保持清空准备；他扔出的萨罗尼岩石可以作为他冰霜攻击的掩护。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36658"] = { "天灾领主泰兰努斯",
"* |cff71d5ff|Hspell:69172|h[领主之印]|h|r: 印记反映团队承受的每一次攻击，并将其返还给团队 - 印记保留攻击。",
"* |cff71d5ff|Hspell:69275|h[冰爪]|h|r: 莱芬的爪子追逐一名玩家 - 在爆炸击中之前将其跑掉。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36661"] = { "天灾领主泰兰努斯",
"* |cff71d5ff|Hspell:69172|h[领主之印]|h|r: 印记反映团队承受的每一次攻击，并将其返还给团队 - 印记保留攻击。",
"* |cff71d5ff|Hspell:69275|h[冰爪]|h|r: 莱芬的爪子追逐一名玩家 - 在爆炸击中之前将其跑掉。"
};

-- The Forge of Souls : Zona 632 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36497"] = { "布隆亚姆",
"* |cff71d5ff|Hspell:68839|h[腐化的灵魂]|h|r: 腐化的灵魂返回给他 - 在它喂养他之前，杀死灵魂球。",
"* |cff71d5ff|Hspell:68872|h[元素之怒]|h|r: 当他濒死时，风暴会摧毁房间：在他旋转时，靠近边缘。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36502"] = { "噬魂者",
"* |cff71d5ff|Hspell:68820|h[灵魂之井]|h|r: 井池占据地面 - 离开它。",
"* |cff71d5ff|Hspell:69051|h[镜像之魂]|h|r: 镜像束缚玩家; 在效果持续时停止攻击。",
"* |cff71d5ff|Hspell:68982|h[幽灵爆炸]|h|r: 幽灵爆炸摧毁房间 - 停止。",
"* |cff71d5ff|Hspell:68899|h[哭泣之魂]|h|r: 哭泣之魂占据房间 - 跑过最安全的走廊。"
};

-- Icecrown Citadel : Zona 631 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36597"] = { "巫妖王",
"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: Defile 扩散到任何站在其上的地方：永远不要站在里面，也不要扩散，因为它会破坏平台。",
"* |cff71d5ff|Hspell:70337|h[Plaga Necrótica]|h|r: 瘟疫会跳跃到目标之间——将它施加在怪物身上，不要解除它。",
"* |cff71d5ff|Hspell:70372|h[Horror que se arrastra]|h|r: 拖行恐怖会在阶段之间出现——消灭它们，并保持在它们身上。",
"* |cff71d5ff|Hspell:69200|h[Espíritu Furioso]|h|r: 愤怒的灵魂会在冬季出现——在它们到达团队之前消灭它们。",
"* |cff71d5ff|Hspell:68981|h[Remorseless Winter]|h|r: 冬季会把玩家拉向中心——保持在圈外。",
"* |cff71d5ff|Hspell:71844|h[Valkiría]|h|r: 亡灵会抓住玩家；在它们能带走标记之前摧毁它们。",
"* |cff71d5ff|Hspell:72262|h[Quake]|h|r: 震动会破坏平台；移动到安全的一侧。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36612"] = { "玛洛加尔领主",
"* |cff71d5ff|Hspell:69076|h[骨骼風暴]|h|r: 快速攻擊，散落骨骼碎片 - 保持距離，避免被從背後攻擊。",
"* |cff71d5ff|Hspell:69057|h[骨刺]|h|r: 三名玩家被刺穿 - 快速釋放。",
"* |cff71d5ff|Hspell:69146|h[寒焰]|h|r: 冰冷的火焰在地面上蔓延 - 避免接觸。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36626"] = { "烂肠",
"* |cff71d5ff|Hspell:69279|h[气体孢子]|h|r: 气体孢子标记玩家 - 触摸爆发一次以获得免疫。",
"* |cff71d5ff|Hspell:69166|h[瘟疫吸入]|h|r: 每次吸入都会增加其伤害 - 积累三个堆叠时，整个公会会受到伤害。",
"* |cff71d5ff|Hspell:69240|h[有毒气体]|h|r: 有毒气体扩散，影响远程角色。尽可能将远程角色保持在最远位置。",
"* |cff71d5ff|Hspell:69195|h[恶臭瘟疫]|h|r: 瘟疫攻击在第三次吸入时发生 - 激活防御冷却。",
"* |cff71d5ff|Hspell:72219|h[胃胀]|h|r: 胃胀堆叠在坦克身上 - 换坦克。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36627"] = { "腐面",
"* |cff71d5ff|Hspell:69508|h[Slime Spray]|h|r: 黏液锥 - 保持在他身后。",
"* |cff71d5ff|Hspell:69674|h[Mutated Infection]|h|r: 受感染者会冲向大水坑 - 爆炸会产生额外的水坑，远离水坑烧。",
"* |cff71d5ff|Hspell:69774|h[Sticky Ooze]|h|r: 黏液池会追逐玩家 - 离开。",
"* |cff71d5ff|Hspell:69558|h[Unstable Oozes]|h|r: 融合的黏液会形成一个大水坑 - 保持小水坑远离它。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36678"] = { "普崔塞德教授",
"* |cff71d5ff|Hspell:70341|h[黏液池]|h|r: 黏液池会在接触的地方生长 – 跳跃，永远不要在上面战斗。",
"* |cff71d5ff|Hspell:70447|h[有毒黏液]|h|r: 黏液会粘住玩家 – 爆破黏液以释放他们。",
"* |cff71d5ff|Hspell:70672|h[气体炎症]|h|r: 气体会使玩家膨胀 – 爆破气体。",
"* |cff71d5ff|Hspell:71255|h[窒息气体炸弹]|h|r: 投掷窒息气体炸弹 – 立即撤退。",
"* |cff71d5ff|Hspell:70911|h[爆发性瘟疫]|h|r: 爆发性瘟疫会跳跃到玩家之间 – 在携带者死亡之前将其传递。",
"* |cff71d5ff|Hspell:72840|h[有毒实验]|h|r: 在第三阶段，两个实验同时飞行 – 提前计划黏液和气体。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36789"] = { "踏梦者瓦莉瑟瑞娅",
"* |cff71d5ff|Hspell:72483|h[地狱传送]|h|r: 传送门打开通往梦境——治疗者穿过，获得增益，然后返回来强烈治疗瓦利特里亚。",
"* |cff71d5ff|Hspell:70588|h[压制]|h|r: 压制云会阻止治疗——摧毁它们。",
"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay Waste 激活房间——跑出目标区域。",
"* |cff71d5ff|Hspell:71179|h[虚空能量]|h|r: 虚空能量会吸取法术施放者——远离标记。",
"* |cff71d5ff|Hspell:70751|h[腐蚀]|h|r: 腐蚀僵尸会成波次出现——用范围攻击将它们赶走。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36853"] = { "辛达苟萨",
"* |cff71d5ff|Hspell:70126|h[冰晶塔]|h|r: 被击中的玩家会升起，形成冰坟——坟墓作为掩体，规划好位置。",
"* |cff71d5ff|Hspell:69766|h[不稳定]|h|r: 不稳定性会随着法术的施放累积。在有五层时停止施放，让其消散。",
"* |cff71d5ff|Hspell:70128|h[神秘盛宴]|h|r: 盛宴会通过她的呼吸叠加——在有五层时换坦。",
"* |cff71d5ff|Hspell:69762|h[魔法爆发]|h|r: \"魔法爆发\"效果会阻止法师施法——直到效果消失时停止施放。",
"* |cff71d5ff|Hspell:43810|h[空中阶段]|h|r: 她会进入空中阶段——分散和治疗攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36855"] = { "亡语者女士",
"* |cff71d5ff|Hspell:71289|h[控制心灵]|h|r: 控制玩家 - 使用群体控制效果，直到目标消失。",
"* |cff71d5ff|Hspell:61131|h[敌人]|h|r: 狂信者群围绕 - 对群体造成伤害，并阻止复活者。",
"* |cff71d5ff|Hspell:70674|h[吸血力量]|h|r: 狂信者加成增强他们 - 快速解除它。",
"* |cff71d5ff|Hspell:71001|h[腐朽]|h|r: 腐朽会灼烧地面 - 离开那里。",
"* |cff71d5ff|Hspell:71204|h[渺小之触]|h|r: 触感降低坦克防御 - 更换坦克。",
"* |cff71d5ff|Hspell:71236|h[黑暗折磨]|h|r: 狂信者爆炸 - 远离标记区域。",
"* |cff71d5ff|Hspell:34018|h[复活]|h|r: 倒下的狂信者复活 - 再次烧死他们。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37215"] = { "萨鲁法尔大王",
"* |cff71d5ff|Hspell:69638|h[战斗怒火]|h|r: 敌方队伍受到增益：迅速击杀边缘位置的敌人。",
"* |cff71d5ff|Hspell:69705|h[冰冻]|h|r: 冰冻攻击使全体麻痹 - 分散。",
"* |cff71d5ff|Hspell:69652|h[剑之狂暴]|h|r: 剑之狂暴攻击甲板 - 远离。",
"* |cff71d5ff|Hspell:23334|h[战士]|h|r: 战士冲锋 - 优先击杀他们，防止到达炮台。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37540"] = { "萨鲁法尔大王",
"* |cff71d5ff|Hspell:69638|h[战斗怒火]|h|r: 敌方队伍受到增益：迅速击杀边缘位置的敌人。",
"* |cff71d5ff|Hspell:69705|h[冰冻]|h|r: 冰冻攻击使全体麻痹 - 分散。",
"* |cff71d5ff|Hspell:69652|h[剑之狂暴]|h|r: 剑之狂暴攻击甲板 - 远离。",
"* |cff71d5ff|Hspell:23334|h[战士]|h|r: 战士冲锋 - 优先击杀他们，防止到达炮台。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37813"] = { "死亡使者萨鲁法尔",
"* |cff71d5ff|Hspell:72293|h[堕落英雄]|h|r: 被标记的目标对整个公会造成伤害 - 公会范围治疗可覆盖。",
"* |cff71d5ff|Hspell:72378|h[血脉爆发]|h|r: 血脉爆发会广泛释放 - 分散。",
"* |cff71d5ff|Hspell:72385|h[沸血]|h|r: 沸血对群体造成伤害。分散以避免伤害。",
"* |cff71d5ff|Hspell:72410|h[血符]|h|r: 符文会消耗坦克 - 换坦克。",
"* |cff71d5ff|Hspell:72737|h[狂暴]|h|r: 当达到30%时，进入狂暴状态 - 迅速清除。",
"* |cff71d5ff|Hspell:72173|h[血兽]|h|r: 血兽升起 - 在它们到达群体之前进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37955"] = { "鲜血女王兰娜瑟尔",
"* |cff71d5ff|Hspell:71340|h[黑暗神契]|h|r: 三个恶魔共享伤害 - 聚集在一起，摧毁契约。",
"* |cff71d5ff|Hspell:70946|h[吸血]|h|r: 被吸血的玩家获得生命精华；保持一个未被吸血的治疗师，并制定交换计划。",
"* |cff71d5ff|Hspell:70877|h[圣血]|h|r: 圣血会产生欲望 - 受害者攻击其他玩家，在爆炸前。",
"* |cff71d5ff|Hspell:71266|h[潜伏之影]|h|r: 影跟随标记玩家 - 朝与影相反的方向奔跑。",
"* |cff71d5ff|Hspell:71772|h[血击]|h|r: 血击会广泛爆炸 - 分散。",
"* |cff71d5ff|Hspell:71510|h[血镜]|h|r: 镜会传递伤害 - 将镜子中的两名玩家分开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37970"] = { "血王之议",
"* |cff71d5ff|Hspell:70952|h[改变目标]|h|r: 目标变为保护者 - 永远不要攻击保护者。",
"* |cff71d5ff|Hspell:72040|h[强化火焰]|h|r: 强化火焰追踪玩家 - 沿着火焰轨迹跑。",
"* |cff71d5ff|Hspell:72037|h[电冲击漩涡]|h|r: 电冲击漩涡会反弹 - 尽可能扩大范围。",
"* |cff71d5ff|Hspell:72053|h[动能炸弹]|h|r: 动能炸弹会漂浮并反弹 - 在接触地面之前爆炸。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37972"] = { "血王之议",
"* |cff71d5ff|Hspell:70952|h[改变目标]|h|r: 目标变为保护者 - 永远不要攻击保护者。",
"* |cff71d5ff|Hspell:72040|h[强化火焰]|h|r: 强化火焰追踪玩家 - 沿着火焰轨迹跑。",
"* |cff71d5ff|Hspell:72037|h[电冲击漩涡]|h|r: 电冲击漩涡会反弹 - 尽可能扩大范围。",
"* |cff71d5ff|Hspell:72053|h[动能炸弹]|h|r: 动能炸弹会漂浮并反弹 - 在接触地面之前爆炸。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37973"] = { "血王之议",
"* |cff71d5ff|Hspell:70952|h[改变目标]|h|r: 目标变为保护者 - 永远不要攻击保护者。",
"* |cff71d5ff|Hspell:72040|h[强化火焰]|h|r: 强化火焰追踪玩家 - 沿着火焰轨迹跑。",
"* |cff71d5ff|Hspell:72037|h[电冲击漩涡]|h|r: 电冲击漩涡会反弹 - 尽可能扩大范围。",
"* |cff71d5ff|Hspell:72053|h[动能炸弹]|h|r: 动能炸弹会漂浮并反弹 - 在接触地面之前爆炸。"
};

-- Halls of Reflection : Zona 668 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38112"] = { "法瑞克",
"* |cff71d5ff|Hspell:72422|h[Quivering Strike]|h|r: 震动攻击：攻击者会消耗自身 - 保持净化准备。",
"* |cff71d5ff|Hspell:72426|h[Inminente desesperación]|h|r: 绝望：绝望会伤害持有者 - 尽快清除；被困的幽灵攻击双方。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38113"] = { "玛维恩",
"* |cff71d5ff|Hspell:72363|h[腐化的肉]|h|r: 腐化的肉会灼伤持有者 - 准备好清除效果。",
"* |cff71d5ff|Hspell:72368|h[共享痛苦]|h|r: 共享痛苦团结团队 - 保持团队成员分开。",
"* |cff71d5ff|Hspell:72383|h[触碰腐化]|h|r: 触碰会消耗使用者 - 清除效果。",
"* |cff71d5ff|Hspell:72362|h[腐化之井]|h|r: 腐化会覆盖地面 - 避开它。"
};

-- The Ruby Sanctum : Zona 724 --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39746"] = { "扎尔斯里安",
"* |cff71d5ff|Hspell:74367|h[攻击防御]|h|r: 在坦克上施加攻击防御效果 - 轮换坦克。",
"* |cff71d5ff|Hspell:74398|h[黑曜石龙]|h|r: 黑曜石龙进入房间 - 消除它们，保持中断者随时待命。",
"* |cff71d5ff|Hspell:74384|h[恐怖咆哮]|h|r: 阻止恐怖咆哮，否则会受到其影响。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39747"] = { "萨维亚娜，烈焰之怒",
"* |cff71d5ff|Hspell:74453|h[火焰之光]|h|r: 标记一个玩家，用于下一次攻击 - 将标记放在远离团队的位置。",
"* |cff71d5ff|Hspell:74403|h[火焰之息]|h|r: 广度火焰之息 - 让它从正面攻击。",
"* |cff71d5ff|Hspell:78722|h[怒火]|h|r: 激怒它，让它冷静下来。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39751"] = { "巴尔塔罗斯，战斗者",
"* |cff71d5ff|Hspell:75125|h[刀锋风暴]|h|r: 旋风撕裂近战——退开。",
"* |cff71d5ff|Hspell:74509|h[反弹浪]|h|r: 一道浪推所有人都向后——远离墙壁。",
"* |cff71d5ff|Hspell:74505|h[分裂标记]|h|r: 标记标记一名玩家；克隆获得副本。观察分裂。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39863"] = { "海里昂",
"* |cff71d5ff|Hspell:74562|h[烈焰燃烧]|h|r: 烈焰燃烧基于火焰伤害，并留下火焰痕迹，需要将其带到王国边缘。",
"* |cff71d5ff|Hspell:74792|h[吞噬阴影]|h|r: 同样在阴影侧留下痕迹 - 将其带到王国边缘。",
"* |cff71d5ff|Hspell:74648|h[闪电冲击]|h|r: 闪电冲击落入火焰王国 - 远离目标。",
"* |cff71d5ff|Hspell:74769|h[暮光切割]|h|r: 旋转切割在暮光领域 - 保持光束远离你。",
"* |cff71d5ff|Hspell:74525|h[火焰呼吸]|h|r: 在火焰侧的坦克上使用火焰呼吸 - 面向他。",
"* |cff71d5ff|Hspell:74806|h[黑暗呼吸]|h|r: 在阴影侧的坦克上使用黑暗呼吸 - 让他面对Boss。"
};
P.zh = zh;
