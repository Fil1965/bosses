--[[
	Bosses_Cata_zh.lua
		Datos en ZH del pack Cata.
		Fichero creado por el editor web (2026-10-14); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local zh = {};
local pack = zh;


-- Castillo de Colmillo Oscuro : Zona 209 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3887"] = { "席瓦莱恩男爵",
"* 驱散 |cff71d5ff|Hspell:93956|h[Veil of Shadow]|h|r 以防止治疗效果降低。",
"* 当增援出现时，全队集中攻击增援。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4278"] = { "指挥官斯普林瓦尔",
"* 增员可以控制，应尽快消灭；他的Unholy Empowerment必须中断。",
"* 坦克让他背对着队伍，并避免站在地面上的亵渎。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46962"] = { "灰葬男爵",
"* 施加或解除 |cff71d5ff|Hspell:93712|h[痛苦折磨]|h|r。",
"* |cff71d5ff|Hspell:93710|h[窒息]|h|r会使所有人恢复至1%血，然后他施放|cff71d5ff|Hspell:93705|h[死刑]|h|r；在团队恢复一些血后立即中断它，因为这也会治疗Boss。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46963"] = { "沃登勋爵",
"* 当他施放绿色药剂时，每个人都必须移动。",
"* 当他施放红色药剂时，每个人都必须站着不动。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46964"] = { "高弗雷勋爵",
"* 尽可能解除 |cff71d5ff|Hspell:93761|h[Cursed Bullets]|h|r 的诅咒。",
"* 远离 |cff71d5ff|Hspell:93520|h[Pistol Barrage]|h|r。"
};

-- Zul'Aman : Zona 3805 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23574"] = { "阿基尔扎恩",
"* 除了距离+6码以外的所有目标。|cff71d5ff|Hspell:61911|h[静电干扰]|h|r如果附近有玩家，会增加伤害。",
"* 集中对抬起玩家的白色巨鹰造成伤害。",
"* 玩家被抬起时会受到|cff71d5ff|Hspell:45336|h[电击风暴]|h|r的伤害：所有人应该在下面堆叠，以避免伤害。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23576"] = { "纳洛拉克",
"* |cff71d5ff|Hspell:42402|h[Surge]|h|r 攻击距离最远的玩家；每次攻击后必须切换，否则会死亡。",
"* 在熊形态下，他会施放中断；如果治疗师的施法与|cff71d5ff|Hspell:42395|h[撕裂切割]|h|r重叠，会造成18万伤害。",
"* 对Boss全输出。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23577"] = { "哈拉齐",
"* 保持 boss 远离水元素法术区域。",
"* 法师可以使用水元素法术区域来恢复生命和法力。",
"* 立即破坏闪电元素法术。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23578"] = { "Jan'alai <龙鹰之灵>",
"* 他会召唤 2 个小怪，只消灭 1 个。",
"* 让坦克站在其他小怪旁边，站在走道前方，消灭它们。",
"* 领主会走到中间，在地上放置炸弹，我们避免它们爆炸。",
"* 这些操作会在整个战斗中重复。",
"* 有时领主会释放前置火焰，在地上留下一个凹槽，我们避免。",
"|cFFFF0000提示：|r 如果队伍中有法师，可以从之前的拉出偷取地震，然后扔给领主。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23863"] = { "达卡拉",
"* 他会随机变成 4 种形态中的 2 种：",
"鹰。打破闪电符文并避免旋风。",
"熊。治疗者必须解除麻痹效果并记住攻击次数。",
"猞猁。对治疗者来说很困难；尽快杀死 2 只小猫。 boss 随机施加出血效果。",
"龙鹰。躲避凹槽和火焰柱的伤害。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24239"] = { "妖术领主玛拉卡斯",
"* 首先，我们先消灭两个小怪。",
"理想情况下，在对右侧的怪进行全伤害输出的同时，控制左侧的怪。",
"如果能一直控制住，直到结束，我们继续攻击Boss。",
"否则，在继续攻击Boss之前，先杀死第二个小怪。",
"* 他会使用玩家的技能。 准备好打断和解除一切。"
};

-- Throne of the Tides (remasterizada) : Zona 643 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23870"] = { "核心·迪布鲁",
"* 坦克：快速击杀核心和他的手下，防止他们攻击穿着轻甲或轻甲的DPS。",
"* 增援：优先杀死他召唤的增援，以减少团队伤害。",
"* 桌上的啤酒瓶：扔或使用它们，以获得临时伤害加成或减轻Boss的负面效果。",
"* 治疗：拥有强大自愈能力的坦克（DK、战士）可以独自应付，但标准治疗者可以使遭遇战无风险。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40788"] = { "蛊心魔古厄夏",
"* Erunak phase: |cff71d5ff|Hspell:429051|h[Earthfury]|h|r and the |cff71d5ff|Hspell:429037|h[Stormflurry Totem]|h|r, one at a time.",
"* |cff71d5ff|Hspell:429172|h[Terrifying Vision]|h|r 有较长的施法时间：打断它。",
"* The |cff71d5ff|Hspell:429048|h[Flame Shock]|h|r gets dispelled."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44566"] = { "厄祖玛特",
"* 被 |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r标记的玩家应该移动 (说)。",
"* 注意 |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r。",
"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r是坦克机制；涅普托隆会用他的能量帮助你。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["213770"] = { "厄祖玛特",
"* 被 |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r标记的玩家应该移动 (说)。",
"* 注意 |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r。",
"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r是坦克机制；涅普托隆会用他的能量帮助你。"
};

-- Cámaras de los Orígenes : Zona 4945 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39378"] = { "拉夏",
"* 避免火焰旋风。",
"* |cff71d5ff|Hspell:80352|h[召唤球体]|h|r 必须被打断，以避免造成伤害。",
"* |cff71d5ff|Hspell:76355|h[Blessing of the Sun]|h|r会造成伤害，并且还会增加我们造成的伤害。在那个时候集中所有DPS。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39425"] = { "神殿守护者安努尔",
"* 收到 |cff71d5ff|Hspell:75592|h[Divine Atonement]|h|r 的玩家应该远离团队，直到它消失在 8 秒内，以避免过度治疗。",
"* 当他开始施放 |cff71d5ff|Hspell:75322|h[Reverberating Hymn]|h|r 时，整个团队应该一起拉动两个杠杆。 在返回时，我们中断吟唱并继续。",
"注意：在普通模式下，每侧只需要 1 名 DPS，每个人拉动一个杠杆。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39428"] = { "地怒者塔赫",
"* 这是一个可选的 DPS 竞速 Boss。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39587"] = { "伊希斯特",
"* 当他施放 |cff71d5ff|Hspell:74137|h[Supernova]|h|r 技能时，您必须在技能结束前转向，以避免被眩晕。",
"* 当他分裂时，副本的击杀顺序应为：",
"1号 Astral Call",
"2号 Astral Rain",
"3号 Veil of Sky"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39731"] = { "阿穆纳伊",
"* 优先对孢子花进行伤害输出，以防止其治疗首领，并对血瓣花进行伤害输出以避免受到伤害。",
"* 如果可能，在它针对玩家时，尝试解除 |cff71d5ff|Hspell:76043|h[Wither]|h|r。",
"注意：在英雄模式下，坦克可以将Boss放在一个已死亡的孢子上，以加快Boss的死亡。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39732"] = { "塞特斯",
"* 副本不是目标，副本会受到控制。",
"* 如果DPS很高，可以忽略传送门，尽快消灭目标。",
"* 为了安全，尽快摧毁传送门，坦克必须拾取生成的副本（不要杀死它们）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39788"] = { "安拉斐特",
"* 将领移动以避免由 |cff71d5ff|Hspell:76184|h[Alpha 束]|h|r 造成的区域。",
"* 尝试在 |cff71d5ff|Hspell:75622|h[Omega 姿势]|h|r 中使用缓解措施。"
};

-- Grim Batol : Zona 4950 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39625"] = { "乌比斯将军",
"* 当他施放 |cff71d5ff|Hspell:74670|h[闪电攻击]|h|r时，目标玩家移动以躲避伤害。",
"* 治疗者要留意当坦克获得 |cff71d5ff|Hspell:74846|h[流血]|h|r时，并将其恢复至至少90%，以移除该负面效果。",
"* DPS负责处理小怪（Troggs）；坦克不应该拾取它们。",
"在英雄模式下，会生成一个紫色Trogg；在开始战斗前，分配1名DPS。",
"应该进行控制；如果无法，则必须将其远离组和其它小怪，只有分配的DPS才能攻击它。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40177"] = { "铸炉之主索朗格斯",
"* 避免 |cff71d5ff|Hspell:74984|h[强大的踩踏]|h|r 的区域。",
"* 当Throngus拿起战锤时，坦克将他移动到房间周围以避免伤害。",
"* 当他拿起剑时，治疗师将集中治疗坦克，因为他会受到严重伤害。",
"* 当他拿起盾牌时，将坦克放在入口的角落，而除坦克之外的所有人站在他身后。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40319"] = { "德拉加影焰者",
"* 一旦 |cff71d5ff|Hspell:75218|h[召唤火焰]|h|r 出现，跟随它的玩家必须朝相反的方向跑，以保持它们分开，同时其他人立即攻击。",
"* 当他骑上龙时，在房间中央控制住他，以便更容易躲避 |cff71d5ff|Hspell:75321|h[Valiona的火焰]|h|r，站在龙的后面。",
"* When he casts the |cff71d5ff|Hspell:90966|h[Devastating Scourge]|h|r avoid the fissures that damage and slow."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40484"] = { "埃鲁达克",
"* 远程输出应保持分散，以便|cff71d5ff|Hspell:79466|h[绑定之影]|h|r 不会同时击中多个目标。",
"* 当他施放|cff71d5ff|Hspell:75664|h[暗影之风]|h|r时，每个人都应进入风暴的中心，或者死亡。",
"* 在风暴结束后，将出现一个暮光腐化者，或者在英雄身上出现2个。",
"远程输出应分散，以便尽快死亡，因为如果他们到达蛋，则Boss会进行治疗，并召唤龙，直到战斗结束。"
};

-- Cavernas Roca Negra : Zona 4926 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39665"] = { "摧骨者罗姆欧格",
"* 避免从 |cff71d5ff|Hspell:75272|h[Quake]|h|r 产生的灰尘云。在英雄元素生物出现时；如果坦克和治疗师感到舒适，可以忽略它们，否则杀死它们。",
"* 当他施放 |cff71d5ff|Hspell:75539|h[Chains of Woe]|h|r 时，将所有 DPS 集中在打破锁链上，一旦打破，尽快逃跑以避免被 |cff71d5ff|Hspell:75543|h[The Skullcracker]|h|r 杀死。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39679"] = { "柯尔拉，暮光之兆",
"* The goal of this boss is to prevent both players and adds from gaining 100 ticks of |cff71d5ff|Hspell:75610|h[Evolution]|h|r; if that happens the affected one turns into a dragonkin and on HERO it's a wipe.",
"为了避免它，在光束到达 80 之前拦截它，并在我们自身达到 80 时进行切换。",
"最好将一名玩家分配给每个新增敌人。",
"提示：如果我们在被打扰时没有注意到效果，当一个角色开始闪烁时，他们即将转换；这就是切换承受光束的玩家的最佳时机。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39698"] = { "卡什·钢铁弯曲 <暮色盔甲匠>",
"* 坦克会把BOSS拉到熔岩喷射区，直到他有5或6个标记，然后立即把他拉出来。",
"* 当盾牌能量即将耗尽时，再次把他拉进去。如果能量耗尽，元素会生成，战斗会变得复杂。",
"注意：最好反复把他拉进去，尽可能控制他待在里面的时间。他待的时间越长，团队受到的伤害就越大。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39700"] = { "如花",
"* 理想情况下，在击杀首领的同时，保持幼崽处于控制状态。如果无法做到，则先击杀幼崽。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39705"] = { "升腾者领主奥西迪斯",
"* 理想情况下，一个 DPS 负责引诱阴影（使用减速效果），因为它们没有仇恨，并且会攻击最近攻击它们的目标。",
"* 与此同时，坦克和其余玩家集中攻击 Boss。",
"* 偶尔，Boss 会与一个阴影交换，而引诱 DPS 和坦克会交换目标。"
};

-- El Núcleo Pétreo : Zona 5088 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40586"] = { "纳兹贾尔",
"* 施放 |cff71d5ff|Hspell:91477|h[冲击波]|h|r。",
"* 躲避 |cff71d5ff|Hspell:75722|h[召唤喷泉]|h|r。",
"* 躲避 |cff71d5ff|Hspell:76001|h[真菌孢子]|h|r。",
"* 在66%和33%时，她会使用 |cff71d5ff|Hspell:75683|h[水柱]|h|r，并且会产生3个增援单位，应该进行控制以使战斗更容易。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40765"] = { "指挥官乌托克",
"* 所有人总是避免 |cff71d5ff|Hspell:76047|h[暗裂]|h|r。",
"* 坦克会不断地将怪物移动到房间的不同区域。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40792"] = { "涅普图崙",
"* 第一阶段，坦克拾取【Restless Behemoths】；小生物可以由 DPS 直接杀死。 巨魔会移动到房间的不同位置，直到死亡。",
"* 第二阶段，野兽和 3 个【Smashers】 出现，并对【Neptulon】施加法术。",
"必须尽快杀死【Smashers】，但也要帮助坦克处理野兽，以免杀死他。",
"坦克继续移动剩余的【Behemoth】和野兽。",
"避免地板上的墨水池。",
"* 第三阶段，【Neptulon】会给我们提供 |cff71d5ff|Hspell:76133|h[Tidal Surge]|h|r；此时全力输出，直到 Boss 死亡。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40825"] = { "埃鲁纳克·斯通斯皮克",
"* Tank him with his back to the party to avoid the damage from the |cff71d5ff|Hspell:76170|h[Magma Splash]|h|r.",
"* 当坦克收到时，尝试解除 |cff71d5ff|Hspell:76165|h[Ember Strike]|h|r。",
"* 每次他施放 |cff71d5ff|Hspell:76234|h[Mind Fog]|h|r时，将领主拉出。",
"* If he puts up |cff71d5ff|Hspell:76307|h[Absorb Magic]|h|r it must be dispelled, otherwise all magic damage will heal him."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42188"] = { "欧泽鲁克",
"* 坦克面向墙壁，以避免被击退时施放 |cff71d5ff|Hspell:78807|h[Shatter]|h|r。",
"* 当他施放 |cff71d5ff|Hspell:92410|h[Ground Slam]|h|r时，包括坦克在内的所有人退到一边，以避免 |cff71d5ff|Hspell:92662|h[Shatter]|h|r造成的伤害；伤害区域非常明显。",
"* 在英雄角色上，当他施放 |cff71d5ff|Hspell:78939|h[Bulwark of Elementium]|h|r时，所有远程DPS应对其施加持续伤害，使其反弹并将其拉出下一个 |cff71d5ff|Hspell:92426|h[Paralyze]|h|r。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42333"] = { "高阶女祭司艾苏尔",
"* You have to move away from the |cff71d5ff|Hspell:79340|h[Summon Gravity Well]|h|r but at the same time use them to pull the followers inside.",
"* 每次[坦克]使用时，从他身上解除|cff71d5ff|Hspell:79351|h[Force Grip]|h|r。",
"* If someone can remove curses it's a good idea to remove |cff71d5ff|Hspell:79345|h[Curse of Blood]|h|r whenever possible."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["42810"] = { "水晶矿脉巨魔",
"* 在 |cff71d5ff|Hspell:92631|h[Quake]|h|r 施放结束前立即跳跃。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43214"] = { "岩皮",
"* 避免从 |cff71d5ff|Hspell:80800|h[Eruption]|h|r 的地面池中。",
"* 避免从天花板上掉落的岩石；它们在地板上被阴影标记。",
"* 在英雄时，当他施放 |cff71d5ff|Hspell:92265|h[Crystal Storm]|h|r 时，躲在掉落的岩石后面以避免伤害。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43438"] = { "克伯鲁斯",
"* 立即远离 |cff71d5ff|Hspell:92648|h[水晶弹雨]|h|r，并在英雄杀死右边的蜘蛛时立即杀死它们。",
"* 尽快解除 |cff71d5ff|Hspell:82415|h[压抑浪]|h|r负面效果。",
"* 在英雄时，当科博鲁斯进入地下时，务必避免灰尘云。"
};

-- Descenso de Alanegra : Zona 5094 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41270"] = { "奈法利安",
"* 奈法里复活奥尼克萨 (|cff71d5ff|Hspell:-3277|h[Rise, Sister!]|h|r): 如果他们距离小于 50 米，|cff71d5ff|Hspell:-3278|h[死亡之翼的后裔]|h|r 会使他们的攻击速度翻倍，因此两只龙分别由坦克控制。",
"* STAGE 1: kill Onyxia first; her |cff71d5ff|Hspell:-3284|h[Electric Energy]|h|r builds over time and with every |cff71d5ff|Hspell:-3276|h[Electrocute]|h|r from Nefarian, and a full |cff71d5ff|Hspell:-3288|h[Electrical Overload]|h|r blasts the room;",
"* Nefarian summons |cff71d5ff|Hspell:-3280|h[Bone Warriors]|h|r before landing and applies |cff71d5ff|Hspell:-3295|h[Dominion]|h|r on a player (heal their |cff71d5ff|Hspell:-3297|h[Stolen Power]|h|r, do not damage them).",
"* 2 阶段（奥尼克西亚死亡）：地面充满熔岩，3 个平台剩余，每个平台 |cff71d5ff|Hspell:-3299|h[彩虹原型]|h|r：尽快杀死它们，因为它们的 |cff71d5ff|Hspell:-3300|h[爆裂之触]|h|r 伤害所有人，同时躲避",
"* |cff71d5ff|Hspell:-3301|h[影焰冲击]|h|r 和 |cff71d5ff|Hspell:-3302|h[爆炸灰烬]|h|r，当他飞时。",
"* 3 阶段：奈法里的领地，以及满额的 DPS，不要拖延（他的 |cff71d5ff|Hspell:-3305|h[影焰闪光]|h|r 增强，以及 |cff71d5ff|Hspell:-3306|h[骨战士]|h|r 随着 |cff71d5ff|Hspell:-3307|h[强化攻击]|h|r 重新复活）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41376"] = { "奈法利安",
"* 奈法里复活奥尼克萨 (|cff71d5ff|Hspell:-3277|h[Rise, Sister!]|h|r): 如果他们距离小于 50 米，|cff71d5ff|Hspell:-3278|h[死亡之翼的后裔]|h|r 会使他们的攻击速度翻倍，因此两只龙分别由坦克控制。",
"* STAGE 1: kill Onyxia first; her |cff71d5ff|Hspell:-3284|h[Electric Energy]|h|r builds over time and with every |cff71d5ff|Hspell:-3276|h[Electrocute]|h|r from Nefarian, and a full |cff71d5ff|Hspell:-3288|h[Electrical Overload]|h|r blasts the room;",
"* Nefarian summons |cff71d5ff|Hspell:-3280|h[Bone Warriors]|h|r before landing and applies |cff71d5ff|Hspell:-3295|h[Dominion]|h|r on a player (heal their |cff71d5ff|Hspell:-3297|h[Stolen Power]|h|r, do not damage them).",
"* 2 阶段（奥尼克西亚死亡）：地面充满熔岩，3 个平台剩余，每个平台 |cff71d5ff|Hspell:-3299|h[彩虹原型]|h|r：尽快杀死它们，因为它们的 |cff71d5ff|Hspell:-3300|h[爆裂之触]|h|r 伤害所有人，同时躲避",
"* |cff71d5ff|Hspell:-3301|h[影焰冲击]|h|r 和 |cff71d5ff|Hspell:-3302|h[爆炸灰烬]|h|r，当他飞时。",
"* 3 阶段：奈法里的领地，以及满额的 DPS，不要拖延（他的 |cff71d5ff|Hspell:-3305|h[影焰闪光]|h|r 增强，以及 |cff71d5ff|Hspell:-3306|h[骨战士]|h|r 随着 |cff71d5ff|Hspell:-3307|h[强化攻击]|h|r 重新复活）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41378"] = { "马洛拉克",
"* He pours vials into the cauldron and the color rules: with the |cff71d5ff|Hspell:-2935|h[Red Vial]|h|r he casts |cff71d5ff|Hspell:-2936|h[Consuming Flames]|h|r on a target and the |cff71d5ff|Hspell:-2937|h[Scorching Blast]|h|r splits among whoever is nearby (raid",
"* stacked); with the |cff71d5ff|Hspell:-2938|h[Blue Vial]|h|r the |cff71d5ff|Hspell:-2939|h[Biting Chill]|h|r hits whoever is close (raid stacked) and the |cff71d5ff|Hspell:-2940|h[Flash Freeze]|h|r traps players; with the |cff71d5ff|Hspell:-2941|h[Green Vial]|h|r the |cff71d5ff|Hspell:-2942|h[Debilitating Slime]|h|r makes everything take more damage (use it: full DPS).",
"* 每次他释放的药剂 |cff71d5ff|Hspell:-2931|h[Aberrations]|h|r：它们会分开杀死，因为它们通过 |cff71d5ff|Hspell:-2933|h[Growth Catalyst]|h|r相互强化。",
"* 使用 |cff71d5ff|Hspell:-2943|h[黑暗魔法药水]|h|r（英雄难度），|cff71d5ff|Hspell:-2946|h[恶魔猪]|h|r会从水面浮出，并释放 |cff71d5ff|Hspell:-2947|h[黑暗污泥]|h|r，同时施放 |cff71d5ff|Hspell:-2945|h[吞噬之暗]|h|r：打断它。",
"* 2 阶段 (25%): |cff71d5ff|Hspell:-2949|h[释放所有]|h|r (异形 + 2 个 |cff71d5ff|Hspell:-2953|h[优先目标]|h|r, 优先击杀)，同时躲避 |cff71d5ff|Hspell:-2950|h[熔岩喷射]|h|r, |cff71d5ff|Hspell:-2951|h[绝对零度]|h|r在远处爆炸，以及 |cff71d5ff|Hspell:-2952|h[酸性新星]|h|r形成持续伤害。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41442"] = { "艾卓曼德斯",
"* 整个战斗围绕 |cff71d5ff|Hspell:-3072|h[声音]|h|r：  raid 从 0 开始，每个声音效果都会填充条； 在 100 时，他会施放 |cff71d5ff|Hspell:-3455|h[毁灭]|h|r，杀死 raid，因此避免声音来源是关键。",
"* |cff71d5ff|Hspell:-3073|h[古代矮人盾牌]|h|r (10 个分散) 在关键时刻使用： |cff71d5ff|Hspell:-3074|h[共鸣冲击]|h|r 可以中断他并施加 |cff71d5ff|Hspell:-3075|h[眩晕]|h|r，造成 +50% 的伤害。",
"* 地面： |cff71d5ff|Hspell:-3076|h[声波脉冲]|h|r 盘追目标，|cff71d5ff|Hspell:-3077|h[调制]|h|r 攻击所有人（治疗保留），|cff71d5ff|Hspell:-3078|h[声波呼吸]|h|r 追逐一名玩家，|cff71d5ff|Hspell:-3079|h[灼烧之火]|h|r 烧毁地面。",
"* 空中： 他的 |cff71d5ff|Hspell:-3086|h[咆哮之火呼吸]|h|r 和 |cff71d5ff|Hspell:-3087|h[咆哮之火]|h|r 烧毁地面，|cff71d5ff|Hspell:-3085|h[声波炸弹]|h|r 落在玩家附近，|cff71d5ff|Hspell:-3088|h[声波火焰球]|h|r 追逐标记的目标（其他人不在队列中）。",
"* 英雄： |cff71d5ff|Hspell:-3082|h[恶搞怪]|h|r 扰乱 raid，通过增强 Atramedes（raid 能够时，立即烧毁它）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41570"] = { "熔喉",
"* 他咬住坦克，使用 |cff71d5ff|Hspell:-3314|h[Mangle]|h|r (它的 |cff71d5ff|Hspell:-3315|h[Sweltering Armor]|h|r 融化盔甲)，此时两个玩家同时攻击，用 |cff71d5ff|Hspell:-3320|h[Throw Hook]|h|r 钩住尖刺，然后刺穿他，打开 |cff71d5ff|Hspell:-3321|h[Point of Vulnerability]|h|r，使其承受大量伤害。",
"* 坦克不能让他没有近战目标：如果他无法攻击任何人，他会使用 |cff71d5ff|Hspell:-3317|h[Molten Tantrum]|h|r。",
"* |cff71d5ff|Hspell:-3312|h[Lava Parasites]|h|r 攻击玩家，并持续吸取生命值 (|cff71d5ff|Hspell:-3313|h[Parasitic Infection]|h|r)：  raid 集中攻击它们，同时扩散。",
"* |cff71d5ff|Hspell:-3310|h[Magma Spit]|h|r 攻击 3 个玩家，|cff71d5ff|Hspell:-3311|h[Pillar of Flame]|h|r 落在目标脚下，目标必须移动。",
"* 英雄：纳菲瑞斯增加了 |cff71d5ff|Hspell:-3323|h[Blazing Inferno]|h|r (地面燃烧)，|cff71d5ff|Hspell:-3325|h[Blazing Bone Constructs]|h|r 来自 |cff71d5ff|Hspell:-3327|h[Armageddon]|h|r (在爆炸前全伤害)，以及他的 |cff71d5ff|Hspell:-3328|h[Shadow Breath]|h|r 在 30% 的生命值时。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42166"] = { "奥莫特防御系统",
"* 四个傀儡轮流每次两个：只有主动的那个会被攻击，而其他那个会恢复。",
"* 熔岩傀儡：|cff71d5ff|Hspell:-3264|h[焚烧安全措施]|h|r攻击整个房间（持续治疗）；|cff71d5ff|Hspell:-3265|h[获取目标]|h|r标记的玩家从|cff71d5ff|Hspell:-3266|h[火焰喷射器]|h|r的锥形中逃脱，并在英雄模式下承受|cff71d5ff|Hspell:-3267|h[包裹阴影]|h|r的治疗；他的|cff71d5ff|Hspell:-3268|h[屏障]|h|r会被伤害破坏。",
"* 魔法傀儡：|cff71d5ff|Hspell:-3195|h[能量生成器]|h|r会给站在上面的所有人（包括傀儡）提供增益，因此标记的玩家应该将它拉出队伍；|cff71d5ff|Hspell:-3196|h[魔法消灭]|h|r在可能的情况下会被中断，并且",
"* 当|cff71d5ff|Hspell:-3197|h[能量转换]|h|r处于激活状态时，没有人会攻击护盾。",
"* 电子傀儡：|cff71d5ff|Hspell:-3202|h[雷霆导体]|h|r标记的玩家应该移动（伤害附近的敌人）；保持|cff71d5ff|Hspell:-3203|h[电击]|h|r的范围，不要攻击他的|cff71d5ff|Hspell:-3204|h[不稳定护盾]|h|r(英雄模式：会触发|cff71d5ff|Hspell:-3205|h[阴影注入]|h|r)。",
"* 毒液傀儡：|cff71d5ff|Hspell:-3269|h[化学炸弹]|h|r和它们|cff71d5ff|Hspell:-3270|h[化学云]|h|r(+50%内部受到的伤害：没人)以及他的|cff71d5ff|Hspell:-3271|h[毒液协议]|h|r会追逐炸弹，留下|cff71d5ff|Hspell:-3273|h[毒液坑]|h|r；他的|cff71d5ff|Hspell:-3274|h[毒液浸透的外壳]|h|r也会被单独放置（浸泡攻击者）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42178"] = { "奥莫特防御系统",
"* 四个傀儡轮流每次两个：只有主动的那个会被攻击，而其他那个会恢复。",
"* 熔岩傀儡：|cff71d5ff|Hspell:-3264|h[焚烧安全措施]|h|r攻击整个房间（持续治疗）；|cff71d5ff|Hspell:-3265|h[获取目标]|h|r标记的玩家从|cff71d5ff|Hspell:-3266|h[火焰喷射器]|h|r的锥形中逃脱，并在英雄模式下承受|cff71d5ff|Hspell:-3267|h[包裹阴影]|h|r的治疗；他的|cff71d5ff|Hspell:-3268|h[屏障]|h|r会被伤害破坏。",
"* 魔法傀儡：|cff71d5ff|Hspell:-3195|h[能量生成器]|h|r会给站在上面的所有人（包括傀儡）提供增益，因此标记的玩家应该将它拉出队伍；|cff71d5ff|Hspell:-3196|h[魔法消灭]|h|r在可能的情况下会被中断，并且",
"* 当|cff71d5ff|Hspell:-3197|h[能量转换]|h|r处于激活状态时，没有人会攻击护盾。",
"* 电子傀儡：|cff71d5ff|Hspell:-3202|h[雷霆导体]|h|r标记的玩家应该移动（伤害附近的敌人）；保持|cff71d5ff|Hspell:-3203|h[电击]|h|r的范围，不要攻击他的|cff71d5ff|Hspell:-3204|h[不稳定护盾]|h|r(英雄模式：会触发|cff71d5ff|Hspell:-3205|h[阴影注入]|h|r)。",
"* 毒液傀儡：|cff71d5ff|Hspell:-3269|h[化学炸弹]|h|r和它们|cff71d5ff|Hspell:-3270|h[化学云]|h|r(+50%内部受到的伤害：没人)以及他的|cff71d5ff|Hspell:-3271|h[毒液协议]|h|r会追逐炸弹，留下|cff71d5ff|Hspell:-3273|h[毒液坑]|h|r；他的|cff71d5ff|Hspell:-3274|h[毒液浸透的外壳]|h|r也会被单独放置（浸泡攻击者）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42179"] = { "奥莫特防御系统",
"* 四个傀儡轮流每次两个：只有主动的那个会被攻击，而其他那个会恢复。",
"* 熔岩傀儡：|cff71d5ff|Hspell:-3264|h[焚烧安全措施]|h|r攻击整个房间（持续治疗）；|cff71d5ff|Hspell:-3265|h[获取目标]|h|r标记的玩家从|cff71d5ff|Hspell:-3266|h[火焰喷射器]|h|r的锥形中逃脱，并在英雄模式下承受|cff71d5ff|Hspell:-3267|h[包裹阴影]|h|r的治疗；他的|cff71d5ff|Hspell:-3268|h[屏障]|h|r会被伤害破坏。",
"* 魔法傀儡：|cff71d5ff|Hspell:-3195|h[能量生成器]|h|r会给站在上面的所有人（包括傀儡）提供增益，因此标记的玩家应该将它拉出队伍；|cff71d5ff|Hspell:-3196|h[魔法消灭]|h|r在可能的情况下会被中断，并且",
"* 当|cff71d5ff|Hspell:-3197|h[能量转换]|h|r处于激活状态时，没有人会攻击护盾。",
"* 电子傀儡：|cff71d5ff|Hspell:-3202|h[雷霆导体]|h|r标记的玩家应该移动（伤害附近的敌人）；保持|cff71d5ff|Hspell:-3203|h[电击]|h|r的范围，不要攻击他的|cff71d5ff|Hspell:-3204|h[不稳定护盾]|h|r(英雄模式：会触发|cff71d5ff|Hspell:-3205|h[阴影注入]|h|r)。",
"* 毒液傀儡：|cff71d5ff|Hspell:-3269|h[化学炸弹]|h|r和它们|cff71d5ff|Hspell:-3270|h[化学云]|h|r(+50%内部受到的伤害：没人)以及他的|cff71d5ff|Hspell:-3271|h[毒液协议]|h|r会追逐炸弹，留下|cff71d5ff|Hspell:-3273|h[毒液坑]|h|r；他的|cff71d5ff|Hspell:-3274|h[毒液浸透的外壳]|h|r也会被单独放置（浸泡攻击者）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42180"] = { "奥莫特防御系统",
"* 四个傀儡轮流每次两个：只有主动的那个会被攻击，而其他那个会恢复。",
"* 熔岩傀儡：|cff71d5ff|Hspell:-3264|h[焚烧安全措施]|h|r攻击整个房间（持续治疗）；|cff71d5ff|Hspell:-3265|h[获取目标]|h|r标记的玩家从|cff71d5ff|Hspell:-3266|h[火焰喷射器]|h|r的锥形中逃脱，并在英雄模式下承受|cff71d5ff|Hspell:-3267|h[包裹阴影]|h|r的治疗；他的|cff71d5ff|Hspell:-3268|h[屏障]|h|r会被伤害破坏。",
"* 魔法傀儡：|cff71d5ff|Hspell:-3195|h[能量生成器]|h|r会给站在上面的所有人（包括傀儡）提供增益，因此标记的玩家应该将它拉出队伍；|cff71d5ff|Hspell:-3196|h[魔法消灭]|h|r在可能的情况下会被中断，并且",
"* 当|cff71d5ff|Hspell:-3197|h[能量转换]|h|r处于激活状态时，没有人会攻击护盾。",
"* 电子傀儡：|cff71d5ff|Hspell:-3202|h[雷霆导体]|h|r标记的玩家应该移动（伤害附近的敌人）；保持|cff71d5ff|Hspell:-3203|h[电击]|h|r的范围，不要攻击他的|cff71d5ff|Hspell:-3204|h[不稳定护盾]|h|r(英雄模式：会触发|cff71d5ff|Hspell:-3205|h[阴影注入]|h|r)。",
"* 毒液傀儡：|cff71d5ff|Hspell:-3269|h[化学炸弹]|h|r和它们|cff71d5ff|Hspell:-3270|h[化学云]|h|r(+50%内部受到的伤害：没人)以及他的|cff71d5ff|Hspell:-3271|h[毒液协议]|h|r会追逐炸弹，留下|cff71d5ff|Hspell:-3273|h[毒液坑]|h|r；他的|cff71d5ff|Hspell:-3274|h[毒液浸透的外壳]|h|r也会被单独放置（浸泡攻击者）。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43296"] = { "奇美隆",
"* |cff71d5ff|Hspell:-3009|h[Bile-O-Tron]|h|r (皮普·奎奎特的机器人) 保持整个团队的生命值在 10,000 点以上：低于此，|cff71d5ff|Hspell:-3012|h[腐蚀性粘液]|h|r 会直接杀死所有人，因此治疗师需要专注于保持所有人的生命值。",
"* |cff71d5ff|Hspell:-3013|h[屠杀]|h|r 会将所有人带到 1% 生命值 ( |cff71d5ff|Hspell:-3010|h[皮普的混合物]|h|r 可以拯救他们)，必须立即治疗。",
"* 他的 |cff71d5ff|Hspell:-3015|h[破击]|h|r 叠加 +25% 的物理伤害给坦克，并且 |cff71d5ff|Hspell:-3016|h[双击]|h|r 会造成两次伤害：坦克每 2 叠加时轮换。",
"* 在 20% 生命值时，他施放 |cff71d5ff|Hspell:-3018|h[死亡]|h|r (免疫嘲讽且几乎无法治疗)：使用皮普的混合物维持 1% 生命值。",
"* 英雄难度：奈法利斯会周期性地发射 |cff71d5ff|Hspell:-3020|h[嘲讽之影]|h|r，对所有人造成伤害 (准备好区域治疗)。"
};

-- El Bastión del Crepúsculo : Zona 5334 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43324"] = { "古加尔",
"* |cff71d5ff|Hspell:-3165|h[Corrupting Blood]|h|r 每使用技能都会填充腐败条：达到25%时会加速，达到50%时会持续眩晕，达到75%时会产生触手状畸变，达到100%时会失去对角色的控制——保持腐败条低是关键，这是战",
"* 斗的要点。",
"* 位于侧传送门中的 |cff71d5ff|Hspell:-3161|h[Twilight Zealot]|h|r 角色会从传送门中出现：优先进行 DPS/控制，并迅速击杀他们，他们的 |cff71d5ff|Hspell:-3162|h[Depravity]|h|r 技能会造成范围伤害。",
"* 巨锤交替使用 |cff71d5ff|Hspell:-3156|h[火焰之军]|h|r 和 |cff71d5ff|Hspell:-3158|h[暗影之军]|h|r：使用火焰，坦克保持Boss远离公会，因为有 |cff71d5ff|Hspell:-3211|h[火焰]|h|r效果；使用暗影，分散开。",
"* The |cff71d5ff|Hspell:-3155|h[Conversion]|h|r enslaves players: break the worship out with stuns/interrupts (every cheer buffs Cho'gall with |cff71d5ff|Hspell:-3209|h[Perverted Devotion]|h|r).",
"* Cho'gall's |cff71d5ff|Hspell:-3160|h[Summonings]|h|r leave corpses from which |cff71d5ff|Hspell:-3216|h[Old God Blood]|h|r is born — kill them away from the raid's path.",
"* STAGE 2 at 25%: the |cff71d5ff|Hspell:-3218|h[Old God Corruption]|h|r fills the room with tentacles — full DPS with Hero/lust, watch the |cff71d5ff|Hspell:-3220|h[Darkened Creations]|h|r: their |cff71d5ff|Hspell:-3221|h[Debilitating Beam]|h|r cuts healing by 75%, the marked player separates."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43686"] = { "伊格纳休斯",
"第一阶段",
"* 在房间的一端用 1 个坦克，以及位于 boss 后的近战 DPS 进行输出。",
"* 收到 |cff71d5ff|Hspell:82660|h[Burning Blood]|h|r的玩家应该靠近 Feludius 的远程 DPS，以便在增益持续期间提高他们的伤害。",
"* 当他向玩家使用 |cff71d5ff|Hspell:92521|h[Inferno Leap]|h|r 技能时，落地后会在地面上留下一个凹痕，当我们有 |cff71d5ff|Hspell:82762|h[Drench]|h|r 效果（来自 |cff71d5ff|Hspell:82700|h[Water Bomb]|h|r）时，踩到这个凹痕。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43687"] = { "费伦迪乌斯",
"第一阶段",
"* 在 Ignacious 的相反端进行防御，使用 1 名坦克。远程 DPS 远离 Boss 并分散站位。",
"* 获得 |cff71d5ff|Hspell:82667|h[冰之心]|h|r 的玩家应靠近 Ignacious 的近战 DPS，以在增益持续期间提高其伤害。",
"* 必须中断 |cff71d5ff|Hspell:92509|h[水龙冲击]|h|r，否则会杀死一名玩家。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43688"] = { "艾里昂",
"第二阶段",
"* |cff71d5ff|Hspell:-3131|h[闪电导引]|h|r标记多个玩家：分散站位，以防止|cff71d5ff|Hspell:-3132|h[链闪电]|h|r在公会中反弹。",
"* |cff71d5ff|Hspell:-3133|h[分散]|h|r传送他：当他重新出现时，|cff71d5ff|Hspell:-3134|h[闪电爆发]|h|r落在目标身上，并杀死附近的任何玩家（仅限标记玩家，其他人）。",
"* 在他 |cff71d5ff|Hspell:-3130|h[雷击]|h|r 攻击前，触摸一个 |cff71d5ff|Hspell:-3129|h[召唤旋风]|h|r 旋风：|cff71d5ff|Hspell:-3152|h[旋风]|h|r (飞行) 可以避免电攻击。",
"* 在 25% 时，与泰拉斯特融合为元素怪物：快速将其烧毁（参见其条目）。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43689"] = { "泰拉斯卓",
"2 阶段",
"* |cff71d5ff|Hspell:-3138|h[爆发]|h|r: 岩块从她周围升起，坦克移动她，没有人站在上面。",
"* 被旋风抬起的玩家必须接触 |cff71d5ff|Hspell:-3136|h[引力井]|h|r才能降落，然后再接触 |cff71d5ff|Hspell:-3139|h[地震]|h|r: 空中玩家受到的伤害最大。",
"* |cff71d5ff|Hspell:-3137|h[强化皮肤]|h|r增强她的防御，吸收伤害：DPS将伤害转化为火焰。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43735"] = { "元素巨兽",
"3 阶段",
"* 英雄、欲望等必须在这一阶段保存，因为这是一个 DPS 竞赛。",
"* |cff71d5ff|Hspell:-3146|h[电击不稳定]|h|r: 每 1 秒增加的自然伤害，分散公会，并避免肉盾堆叠。",
"* |cff71d5ff|Hspell:-3147|h[重力压碎]|h|r 将玩家困在一个气泡中，使其上升：其余人打破气泡。",
"* |cff71d5ff|Hspell:-3148|h[熔岩种子]|h|r: 在地面上播撒爆炸种子：躲避它们，不要踩到它们。",
"* |cff71d5ff|Hspell:-3149|h[低温领域]|h|r 使地面结冰（难以移动），并减少她承受的伤害 25%。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44600"] = { "哈尔弗斯·碎龙者",
"* 优先目标：时间守卫、暴风骑兵、深渊继承者、孤儿翡翠幼龙、石板龙。",
"* 理想情况下，MT 优先击杀哈夫斯和一只龙，同时 OT 优先击杀另一只。",
"* 优先杀死站在 boss 上的龙，以充分利用所有伤害。",
"* 如果我们有石板龙，则每 |cff71d5ff|Hspell:39171|h[Malevolent Strikes]|h|r 4 次 tick 时需要轮换 boss。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["45213"] = { "希奈丝特拉",
"* 仅限英雄模式。第一阶段（直到30%）：她会飞，需要从下方烧死；|cff71d5ff|Hspell:-3229|h[暮光刀刃]|h|r的球会追逐一名玩家：被标记的玩家会跑得非常远，当球死亡时，没有人站在它前面（|cff71d5ff|Hspell:-3230|h[暮光冲击]|h|r）。",
"* The |cff71d5ff|Hspell:-3227|h[Wrack]|h|r lands on a player with growing damage and will JUMP to another nearby player when its time runs out: the marked one separates from the raid and the healers carry it to the limit.",
"* The |cff71d5ff|Hspell:-3231|h[Twilight Whelps]|h|r drop with their |cff71d5ff|Hspell:-3232|h[Twilight Spit]|h|r on a player: one group kites them to the back and kills them fast, without stepping on the |cff71d5ff|Hspell:-3233|h[Twilight Essence]|h|r pools.",
"* STAGE 2 (at 30%): Calen starts his duel and the |cff71d5ff|Hspell:-3238|h[Pulsing Twilight Eggs]|h|r are exposed after each |cff71d5ff|Hspell:-3308|h[Twilight Carapace]|h|r full damage on the eggs in every window;",
"* the |cff71d5ff|Hspell:-3239|h[Twilight Spitecallers]|h|r arrive and their |cff71d5ff|Hspell:-3240|h[Unleash Essence]|h|r is interrupted (the |cff71d5ff|Hspell:-3241|h[Indomitable]|h|r punishes long CC), and the |cff71d5ff|Hspell:-3242|h[Twilight Drakes]|h|r sweep in with their |cff71d5ff|Hspell:-3243|h[Twilight Breath]|h|r.",
"* 3 阶段（蛋死亡）：|cff71d5ff|Hspell:-3246|h[红色精华]|h|r 效果增强，使全体 DPS 能够完成。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45992"] = { "瓦里昂娜",
"* Theralion will cast |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r, so stay spread out until Valiona's first attack.",
"* 当玩家收到 |cff71d5ff|Hspell:92878|h[Blackout]|h|r时，玩家和整个团队（除了坦克）站在Boss的尾部；一旦所有人到达，就会解除，以便分散伤害。",
"* 当她施放 |cff71d5ff|Hspell:92873|h[Devouring Flames]|h|r时，所有人站在Boss身后以避免受 daño。",
"* When he casts |cff71d5ff|Hspell:93063|h[Dazzling Destruction]|h|r circles will appear under 3 players that you must leave;",
"5 秒后，导弹会拉到在暮光领域内的玩家，而你可以通过前往粉色传送门，而不触碰地面上的粉色球，离开该领域。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["45993"] = { "瑟纳利昂",
"* Valiona 将使用 |cff71d5ff|Hspell:92861|h[Twilight Meteorite]|h|r 在飞行时，效果类似于 Blackout。",
"她会标记受影响的玩家，并在 3 秒后向附近的玩家造成 150K 伤害。 5 个足够。",
"* |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r 会在玩家下方放置一个紫色区域，我们应避免。",
"* 获得 |cff71d5ff|Hspell:95641|h[Engulfing Magic]|h|r 效果的玩家会与其它玩家分离，以避免伤害他们。",
"* |cff71d5ff|Hspell:86059|h[Deep Breath]|h|r 会覆盖房间的三分之一，任何踩到它的人都会进入 Twilight Realm。",
"你通过粉色传送门离开 Twilight Realm，而无需踩到地板上的粉色球。"
};

-- Ciudad perdida de los Tol'vir : Zona 5396 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43612"] = { "高阶预言者巴林姆",
"* 在第一阶段，凤凰会被远程控制。",
"* 在第二阶段（阴影），全队集中攻击凤凰。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43614"] = { "锁喉",
"* 标记的目标将小怪生物拉到坦克身边，以便坦克可以轻松地击杀它们。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44577"] = { "胡辛姆将军",
"* 将Boss移动，以避免踩到地板上的地雷。",
"* 避免踩到地面区域；他会通过尘埃信号发出警告。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44819"] = { "希亚玛特",
"* 集中注意力"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["49045"] = { "奥弗",
"* 避免使用 |cff71d5ff|Hspell:91408|h[Whirlwind]|h|r。"
};

-- Minas de la muerte : Zona 1581 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43778"] = { "死神5000",
"* 1 DPS 抓取一个收割者，并且他们杀死 4 个收割者。",
"* 当最后一个收割者死亡时，Boss 激活；每个人都向上移动，除了携带收割者的那个，他将杀死所有生成的增援。",
"* 当 Boss 将玩家标记为 |cff71d5ff|Hspell:88501|h[Harvest]|h|r 时，每个人都远离标记位置。",
"* 当他获得 |cff71d5ff|Hspell:88481|h[Blazing Speed]|h|r 时，我们分散。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47162"] = { "格卢博克",
"* 在第一阶段，他每次传送后会失去仇恨，坦克必须注意。",
"* 在40%时，第二阶段开始，我们应该避免旋转的熔岩墙。",
"* 第二阶段的元素必须一点点地杀死，因为它们会不断生成；这是使用“英勇”的好时机。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47296"] = { "赫利克斯·破甲",
"* 避免他扔出的炸弹。",
"* 被 |cff71d5ff|Hspell:88352|h[胸部炸弹]|h|r 击中的玩家会从队伍中移动，直到爆炸。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47626"] = { "撕心狼将军",
"* 治疗者必须控制法力。",
"* 必须尽快消灭小怪，否则它们会增援并杀死整个团队。",
"* 尽快消灭Boss，以防止|cff71d5ff|Hspell:88736|h[Thirst for Blood]|h|r堆积过多。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47739"] = { "“船长”曲奇",
"* 领主掉落好的（白色）和坏的（绿色）食物，互相抵消；",
"在整个战斗中，选择1个坏的食物，对应1个好的食物，以防止地板被坏食物的伤害区域覆盖。",
"如果没有问题，坦克可以选择2个坏的食物，对应1个好的食物。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["49429"] = { "梵妮莎·范克里夫",
"* 噩梦阶段：",
"我们出现在一个锅中，必须激活 4 个水龙头才能逃脱。",
"躲避火焰和雪崩，直到格布托克被杀死。",
"在螺旋阶段，不要移动，尽量吸引尽可能少的蜘蛛。",
"敌方死神会在隧道中旋转闪电屏障，我们必须穿过；避免踩到或跳过。",
"在下一阶段，迅速杀死攻击友方 NPC 的所有狼人。",
"* 瓦内莎阶段：",
"优先处理任何生成的生物。",
"当她施放爆炸时，抓住绿色箭头上的绳索。"
};

-- La Cumbre del Vórtice : Zona 5035

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43873"] = { "阿尔泰鲁斯",
"* 尽可能保持风向在你身后，以获得增益效果。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43875"] = { "阿萨德（塞菲尔之君）",
"* 当 |cff71d5ff|Hspell:87618|h[Static Cling]|h|r 的施法即将结束时，跳跃以避免粘在地面上。",
"* 驱散所有没有及时跳跃的人身上的粘性。",
"* 当他施放 |cff71d5ff|Hspell:86911|h[Unstable Grounding Field]|h|r 时，所有人进入三角形以避免死亡。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43878"] = { "大宰相埃尔坦",
"* 你需要避免使用 |cff71d5ff|Hspell:86292|h[旋风护盾]|h|r。"
};

-- Trono de los Cuatro Vientos : Zona 5638 -- Canario

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45870"] = { "安舍尔",
"通用注意事项",
"* 此次遭遇由三个元素领主组成，分别是安沙尔、尼泽尔和罗哈什，持续时间为8分钟",
"三个领主必须在最多1分钟内全部击杀，否则会复活。",
"* 领主有能量条，当能量条充满（达到90）时，他们会使用特殊技能；平台移动必须在能量条达到80时",
"策略：",
"* 4个组：1组：1坦克、1治疗师和1输出[安沙尔]；2组：1坦克和1治疗师（最好是圣骑士，因为他们可以移除自己的负面效果）；3组：1输出和1治疗师[罗哈什]；4组：移动组，3个输出",
"* 优化所有三个领主的输出，使其以相似的方式击杀",
"* 安沙尔平台：定期施放 |cff71d5ff|Hspell:86205|h[舒缓之风]|h|r，治疗安沙尔和他的盟友（小怪），同时使法团沉默。",
"* 他施放 |cff71d5ff|Hspell:85422|h[滋养]|h|r，召唤小怪，而小怪则使用 |cff71d5ff|Hspell:93121|h[有毒孢子]|h|r",
"* 特殊技能：|cff71d5ff|Hspell:84638|h[西风]|h|r - 确保在特殊技能生效前没有小怪"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45871"] = { "尼希尔",
"技能：",
"* |cff71d5ff|Hspell:86082|h[永久冰]|h|r, 迫使你保持分散。",
"* |cff71d5ff|Hspell:93130|h[冰冻区域]|h|r, 立即离开其影响范围。",
"* |cff71d5ff|Hspell:84645|h[寒风]|h|r, 最危险的技能；它迫使坦克/治疗者在无法治疗伤害时切换平台（叠加）（安沙尔-尼齐尔）。",
"* 特殊：|cff71d5ff|Hspell:84644|h[暴风雪]|h|r"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45872"] = { "洛哈西",
"技能：",
"* |cff71d5ff|Hspell:86193|h[狂风]|h|r, 他的最危险技能；当他使用时，站在他面前的人会被推回 200 米。",
"* |cff71d5ff|Hspell:86182|h[切割风]|h|r, 远程攻击。",
"* 特殊：|cff71d5ff|Hspell:86481|h[飓风]|h|r - 最大伤害来自坠落（约 70k），所以所有人应使用猫形态、减速坠落等。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46753"] = { "奥拉基尔",
"* STAGE 1 (until 80%): |cff71d5ff|Hspell:-3022|h[Wind Burst]|h|r 和 |cff71d5ff|Hspell:-3023|h[Squall Line]|h|r 造成范围伤害，|cff71d5ff|Hspell:-3024|h[Ice Storms]|h|r 爬行地面（躲避），|cff71d5ff|Hspell:-3025|h[Lightning Strike]|h|r 攻击目标。",
"* STAGE 2: |cff71d5ff|Hspell:-3032|h[Acid Rain]|h|r 会随着时间增长（全力输出，避免拖延），|cff71d5ff|Hspell:-3033|h[Stormlings]|h|r 保持存活：如果有人杀死一个，它的 |cff71d5ff|Hspell:-3034|h[Feedback]|h|r 会强化 Al'Akir。",
"* STAGE 3 (at 25%): 平台破碎，所有人使用 |cff71d5ff|Hspell:-3037|h[Eye of the Storm]|h|r：全力输出；|cff71d5ff|Hspell:-3039|h[Lightning Rod]|h|r 移动的目标，|cff71d5ff|Hspell:-3040|h[Lightning Clouds]|h|r 躲避。"
};

-- Bastión de Baradin : Zona 5600 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47120"] = { "阿尔加洛斯",
"* 在第10回合时，将2个组分别组成，每个组包含1名坦克、1名治疗师和3名DPS。",
"* 每个组站在Argalth的一侧，并保持在坦克周围，以分散伤害。",
"* 在每次|cff71d5ff|Hspell:88942|h[Meteor Slash]|h|r后，坦克交换位置。",
"* 在|cff71d5ff|Hspell:88972|h[Fel Firestorm]|h|r阶段，每个人移动以避免受到伤害，但不要踩到火焰。",
"* 暴风雨结束后，每个组返回到原来的位置，并且上述过程重复。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["47901"] = { "恶魔约束单位",
"* These monsters must be killed by the whole group stacked on the tank to spread the damage from the |cff71d5ff|Hspell:89348|h[Demon-repelling Ray]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52363"] = { "欧库塔尔",
"* Nobody crosses his front: the |cff71d5ff|Hspell:-2606|h[Searing Shadows]|h|r is a cone in front of him (melee go behind).",
"* 每一个玩家都会被 |cff71d5ff|Hspell:-2607|h[Occu'thar 的眼睛]|h|r 标记：在 10 秒后，每个眼睛会穿过宿主 (|cff71d5ff|Hspell:-2609|h[Occu'thar 的毁灭]|h|r) 并杀死它，因此眼睛会很快被摧毁，并且 |cff71d5ff|Hspell:-2608|h[Occu'thar 的凝视]|h|r 可以被躲避。",
"* |cff71d5ff|Hspell:-2605|h[Focused Fire]|h|r 是一个在玩家下方地上的火焰池：该玩家会移动。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55869"] = { "阿丽萨巴尔",
"* 她的 |cff71d5ff|Hspell:-4120|h[刺]|h|r 眩晕坦克 8 秒: OT 立即拾取。",
"* |cff71d5ff|Hspell:-4121|h[狂怒]|h|r 束缚一名玩家: 被标记的玩家远离其他人。",
"* |cff71d5ff|Hspell:-4122|h[舞刃]|h|r 每秒增加物理伤害: 治疗师需要时刻保持警惕，尽快结束。"
};

-- Zul'Gurub : Zona 1977 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52053"] = { "赞吉尔",
"* 施放 Voodoo Bolt。",
"* 远离 Zanzil 的火焰。",
"* 蓝色药剂：从 Frost Cauldron 饮用，并尽快结束 Berserker（它不会吸引仇恨）。",
"* 绿色药剂：尽快从 Poison Cauldron 饮用。",
"* 红色药剂：从 Fire Cauldron 饮用，用于对僵尸进行范围攻击。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52059"] = { "高阶祭司基尔娜拉",
"* 避免紫色墙壁（如萨尔托尼的浪潮）。",
"* 打断“血泪”。",
"* 在将Boss降低到50%之前，先杀死猎豹，逐个或成对。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52148"] = { "碎神者金度",
"* 将Boss进入死亡区域；当他召唤哈卡克的阴影时，玩家也会进入。",
"* 当坦克处理巨怪时，其余玩家必须消灭召唤的幽灵，以及锁链。",
"* 避免使用影刺。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52151"] = { "血领主曼多基尔",
"* 灵魂是关键。当迅鸟脱逃时，必须尽快杀死它，以防止它杀死灵魂。",
"每个灵魂都可以复活已死玩家，并且复活的玩家会造成更多伤害并承受更少伤害。",
"* 避免在Boss施法时，避开地面上的凹槽。",
"* 不要通过过度治疗来给Boss提供生命，让接受治疗的玩家保持在7500点左右即可。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52155"] = { "高阶祭司温诺希斯",
"* 当他画出迷宫时，不要触摸或跳过绿色线条。",
"* 当2名玩家被有毒链接连接时，尽可能拉开距离以打破它。",
"没人应该靠近，因为当它破碎时会造成范围伤害。",
"* 避免地板上的水池，将Boss移动，以便在不踩到它们的情况下攻击他。水池会生长。",
"* 通过躲在他身后来避免绿色气息。",
"* 当他施放光束时，跑开以避免。",
"* 当Boss被眩晕时，必须全力输出，因为有+100%的伤害修正。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52258"] = { "格里雷克",
"* The player marked with |cff71d5ff|Hspell:68987|h[Pursue]|h|r kites the boss.",
"* 当该区域被标记时，离开 |cff71d5ff|Hspell:89932|h[Fault Line]|h|r 区域。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52269"] = { "雷纳塔基",
"* 治疗被消失法术攻击的玩家。",
"* 避免从 |cff71d5ff|Hspell:96645|h[千刃]|h|r 造成的区域伤害。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52271"] = { "哈扎拉尔",
"* 停止愤怒。",
"* 在噩梦生物到达玩家之前杀死它们，否则它们会杀死玩家。"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52286"] = { "乌苏雷",
"* 将坦克背对着队伍。",
"* 离开 |cff71d5ff|Hspell:96710|h[闪电云]|h|r。",
"* 分散在彼此周围。"
};

-- Tierras de Fuego : Zona 5043 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52409"] = { "拉格纳罗斯",
"* 1 阶段：从每个 |cff71d5ff|Hspell:-2631|h[熔岩浪潮]|h|r 产生，并躲避 |cff71d5ff|Hspell:-2630|h[硫磺破坏]|h|r，然后一次性用 |cff71d5ff|Hspell:-2634|h[熔岩陷阱]|h|r 攻击所有人（|cff71d5ff|Hspell:-2635|h[熔岩陷阱爆发]|h|r 伤害所有人）。",
"* 在中间阶段，|cff71d5ff|Hspell:-2637|h[火焰之子]|h|r 追逐标记目标，目标远离队伍，并造成最大伤害；没有人会遇到他们，因为 |cff71d5ff|Hspell:-2639|h[超新星]|h|r 正在发生。",
"* 2 阶段：|cff71d5ff|Hspell:-2643|h[吞噬之火]|h|r 是前方锥形（向外），|cff71d5ff|Hspell:-2644|h[世界燃烧]|h|r 烧毁整个区域（没有人进入），|cff71d5ff|Hspell:-2645|h[熔岩种子]|h|r 在标记目标周围爆炸（远离；剩余的 |cff71d5ff|Hspell:-2647|h[熔岩元素]|h|r 会被范围攻击）。",
"* 3 阶段（40%）：|cff71d5ff|Hspell:-2661|h[活着的陨石]|h|r 追逐一名玩家（远离队伍；穿越者会给予 |cff71d5ff|Hspell:-2663|h[燃料]|h|r），|cff71d5ff|Hspell:-2658|h[吞噬之火]|h|r 和 |cff71d5ff|Hspell:-2659|h[世界燃烧]|h|r 继续。",
"* 英雄难度（4 阶段）：在盟友（Cenarius, Hamuul 和 Malfurion）的支援下，全力输出；他的 |cff71d5ff|Hspell:-2680|h[超热]|h|r、|cff71d5ff|Hspell:-2681|h[强化硫磺]|h|r (|cff71d5ff|Hspell:-2682|h[硫磺之火]|h|r) 和 |cff71d5ff|Hspell:-2683|h[恐惧之火]|h|r 攻击房间。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52498"] = { "贝丝缇拉克",
"* 1 阶段：她站在蛛网上，公会成员在下方攻击，在|cff71d5ff|Hspell:-2773|h[Cinderweb 飞蜓]|h|r被火焰覆盖之前消灭（它们会吃|cff71d5ff|Hspell:-2778|h[Cinderweb 幼崽]|h|r来恢复生命：先消灭幼崽）。",
"* 坦克吸引 |cff71d5ff|Hspell:-2770|h[Cinderweb Spinner]|h|r 的注意力，让队伍围绕它（它的 |cff71d5ff|Hspell:-2772|h[Igneous Web Spin]|h|r 使目标持续石化 25 秒）：全队输出。",
"* 顶端的团队观察她 |cff71d5ff|Hspell:-2765|h[火焰能量]|h|r：当它耗尽时，她会施放 |cff71d5ff|Hspell:-2769|h[燃烧的毁灭]|h|r，从而降低她的等级，因此顶端的团队必须在（它发生3次后）进入 |cff71d5ff|Hspell:-2782|h[第二阶段]|h|r 狂暴状态之前完成。",
"* 2 阶段：她会降下来并烧到尽头；坦克吃 |cff71d5ff|Hspell:-2783|h[Widow's Kiss]|h|r (消耗治疗：恢复至最大值)，并且 |cff71d5ff|Hspell:-2784|h[Ember Flares]|h|r 惩罚近距离的目标。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52530"] = { "奥利瑟拉佐尔",
"* 1 阶段：她飞翔，公会成员在下方战斗：两名玩家收集 |cff71d5ff|Hspell:-2828|h[熔岩羽毛]|h|r（三人给予 |cff71d5ff|Hspell:-2829|h[火焰之翼]|h|r",
"* 以协助飞行和在高处），|cff71d5ff|Hspell:-2836|h[贪婪幼虫]|h|r被分开承受（喂食 |cff71d5ff|Hspell:-2843|h[肥胖熔岩蠕虫]|h|r），而两名 |cff71d5ff|Hspell:-2834|h[炽热爪尖初级]|h|r迅速死亡（使用 |cff71d5ff|Hspell:-3335|h[炽热护盾]|h|r：全输出）。",
"* 阶段结束时，|cff71d5ff|Hspell:-2845|h[燃烧之末的先锋]|h|r出现：他的 |cff71d5ff|Hspell:-2846|h[灾难]|h|r召唤 |cff71d5ff|Hspell:-2847|h[熔岩陨石]|h|r（在着陆前全输出）。",
"* 2 阶段：她进入 |cff71d5ff|Hspell:-2849|h[炽热漩涡]|h|r（被束缚）：全输出，利用狂怒/英勇；飞行者躲避 |cff71d5ff|Hspell:-2850|h[炽热龙卷]|h|r，而下方则躲避 |cff71d5ff|Hspell:-3332|h[狂风]|h|r。",
"* 3 阶段（当她的力量耗尽时）：|cff71d5ff|Hspell:-2852|h[耗尽]|h|r，使用 |cff71d5ff|Hspell:-2853|h[翡翠精华]|h|r（所有人都飞行），并在恢复前全输出；如果战斗达到 4 阶段，她将完全恢复力量",
"* (|cff71d5ff|Hspell:-2858|h[炽热盛宴]|h|r)，循环将重复：循环次数越少越好。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52558"] = { "雷奥利斯领主",
"* 1 阶段 (直到 25%): 他不被坦克，他被控制：公会攻击他的左或右脚来让他转动，并且他必须远离 |cff71d5ff|Hspell:-2530|h[岩浆]|h|r 和巨大的 |cff71d5ff|Hspell:-2534|h[火山]|h|r (小的 |cff71d5ff|Hspell:-2535|h[火山口]|h|r 由 DPS 消除)。",
"* 他的 |cff71d5ff|Hspell:-2527|h[黑曜石盔甲]|h|r 堆叠层，减少他受到的伤害：用伤害磨灭它；每当 |cff71d5ff|Hspell:-2531|h[碎片]|h|r 和 |cff71d5ff|Hspell:-2532|h[火花]|h|r 的 Rhyolith 出现并获得 |cff71d5ff|Hspell:-2533|h[地狱之怒]|h|r，则迅速消灭它们。",
"* 他的 |cff71d5ff|Hspell:-2528|h[冲击踢]|h|r 现在会随机击中所有人：周期性治疗。",
"* 2 阶段 (在 25%): 转向结束，|cff71d5ff|Hspell:-2538|h[焚烧]|h|r 以一种不断增长的方式伤害所有人：全 DPS，躲避 |cff71d5ff|Hspell:-2539|h[狂暴火焰]|h|r。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52571"] = { "管理者鹿盔",
"* Every |cff71d5ff|Hspell:-2912|h[Shapeshift]|h|r rules: in |cff71d5ff|Hspell:-2913|h[cat form]|h|r he leaps |cff71d5ff|Hspell:-2914|h[Leaping Flames]|h|r after the target (leaving fire trails on the floor) and in |cff71d5ff|Hspell:-2918|h[scorpion form]|h|r the |cff71d5ff|Hspell:-2919|h[Flame Scythe]|h|r punishes whoever is hitting him (the melee eats it with heals).",
"* The |cff71d5ff|Hspell:-2916|h[Adrenaline]|h|r builds with every repeated cast: the longer the fight drags the more it hurts, so full DPS.",
"* In |cff71d5ff|Hspell:-2922|h[night elf form]|h|r (mid-fight) he grabs the close ones with the |cff71d5ff|Hspell:-2923|h[Fiery Cyclone]|h|r (spread), drops |cff71d5ff|Hspell:-2924|h[Searing Seeds]|h|r under the marked one (move far before they explode) and throws the chasing |cff71d5ff|Hspell:-2925|h[Burning Orbs]|h|r (dodge them away from the raid)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["53494"] = { "贝尔洛克",
"* The |cff71d5ff|Hspell:-2592|h[Shard of Torment]|h|r channels the |cff71d5ff|Hspell:-2593|h[Torment]|h|r on a player, who takes growing damage: move away from the shard when the damage bites; if it is not interrupted in time the |cff71d5ff|Hspell:-2595|h[Wave of Torment]|h|r comes out.",
"* 治疗者分散：2-3人站在碎片旁收集 |cff71d5ff|Hspell:-2596|h[生命火花]|h|r（每个人都能通过使用 |cff71d5ff|Hspell:-2597|h[生命之焰]|h|r来增强治疗效果），其余治疗者治疗 {Torment} 目标。",
"* 使用 |cff71d5ff|Hspell:-2599|h[Decimation Blade]|h|r 的攻击带有阴影效果，使用 |cff71d5ff|Hspell:-2600|h[Inferno Blade]|h|r 的攻击带有火焰效果：坦克轮流承受，同时使用 |cff71d5ff|Hspell:-2590|h[Blaze of Glory]|h|r（他的增益）叠加效果。",
"* Heroic: the |cff71d5ff|Hspell:-2601|h[Countdown]|h|r pairs players: the pairs stay close to each other and away from the rest when it blows."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["53691"] = { "沙恩诺克斯",
"* 双坦克策略：一人使用 |cff71d5ff|Hspell:-2581|h[Riplimb]|h|r，另一人使用 |cff71d5ff|Hspell:-2583|h[Rageface]|h|r，远离沙诺克斯，因为杀死第一个狗会让他获得 |cff71d5ff|Hspell:-2580|h[Frenzy]|h|r。",
"* Rageface dies first: his |cff71d5ff|Hspell:-2584|h[Face Rage]|h|r devours the marked one (full DPS to finish him before); then Riplimb, and Shannox last.",
"* 珊諾克斯的 |cff71d5ff|Hspell:-2577|h[弧形斬]|h|r 擊中 |cff71d5ff|Hspell:-2578|h[尖刺]|h|r (對坦克造成大量流血效果)：治療者應應對； 隨著 |cff71d5ff|Hspell:-2579|h[投擲 spears]|h|r， 瑞普林姆跑去取回 (坦克可以利用它來重新站位)。",
"* 他的 |cff71d5ff|Hspell:-2575|h[燃烧陷阱]|h|r 和 |cff71d5ff|Hspell:-2576|h[水晶牢笼陷阱]|h|r 靠近狗：距离最近的人移动开，被抓住是致命的（尤其是在英雄模式下），地面上的 |cff71d5ff|Hspell:-2928|h[熔岩裂缝]|h|r 可以躲避。"
};

-- El Fin de los Tiempos : Zona 938 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54123"] = { "希尔瓦娜斯的残影",
"* |cff71d5ff|Hspell:-3951|h[高位生物的尖叫]|h|r: 高伤害，已准备好治疗。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54431"] = { "贝恩的残影",
"* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r 攻击：坦克和治疗者注意。",
"* 从 |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r 产生的符文是优先处理的目标。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54432"] = { "姆诺兹多",
"* 躲避 |cff71d5ff|Hspell:-3676|h[扭曲炸弹]|h|r。",
"* 地牢最终 Boss：在最后保持防御。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54445"] = { "吉安娜的残影",
"* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: 她传送，注意她的新位置。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54544"] = { "泰兰德的残影",
"* 注意 |cff71d5ff|Hspell:-4207|h[暗月光]|h|r。"
};

-- La Hora del Crepúsculo : Zona 940 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54590"] = { "阿奎里恩",
"* |cff71d5ff|Hspell:102582|h[冰霜之链]|h|r 束缚你；挣脱出来。",
"* 通过打破 |cff71d5ff|Hspell:103252|h[冰冻墓地]|h|r 来释放被困的玩家。",
"* |cff71d5ff|Hspell:104050|h[冰霜之潮]|h|r: 造成 raid 伤害，治疗。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54938"] = { "大主教本尼迪塔斯",
"* 两个阶段：光明和黑暗。",
"* 被 |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r 或 |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r 标记的玩家应大声喊出来（说），然后移动。",
"* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r 和 |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r：离开该区域。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54968"] = { "埃希拉·黎明克星",
"* 被 |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r 标记的玩家会失去治疗效果：解除它。",
"* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: 眩晕烟雾弹，退出去。",
"* 不要越过 |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r。"
};

-- El Pozo de la Eternidad : Zona 939 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54853"] = { "艾萨拉女王",
"* 魔法使是首要目标。",
"* |cff71d5ff|Hspell:-3969|h[完全服从]|h|r: 长距离施法，打断它。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54882"] = { "艾萨拉女王",
"* 魔法使是首要目标。",
"* |cff71d5ff|Hspell:-3969|h[完全服从]|h|r: 长距离施法，打断它。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54883"] = { "艾萨拉女王",
"* 魔法使是首要目标。",
"* |cff71d5ff|Hspell:-3969|h[完全服从]|h|r: 长距离施法，打断它。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54884"] = { "艾萨拉女王",
"* 魔法使是首要目标。",
"* |cff71d5ff|Hspell:-3969|h[完全服从]|h|r: 长距离施法，打断它。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54969"] = { "玛诺洛斯",
"* Mind what comes out of the |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r.",
"* 坦克控制曼诺罗斯；瓦罗·然后会很快死亡。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55085"] = { "佩罗萨恩",
"* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: 重要减益，治疗它。",
"* 在隐形阶段，当他发送眼睛时，不要移动。",
"* 被 |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r标记的玩家处于脆弱状态：全力输出。"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55419"] = { "玛诺洛斯",
"* Mind what comes out of the |cff71d5ff|Hspell:-4287|h[Nether Portal]|h|r.",
"* 坦克控制曼诺罗斯；瓦罗·然后会很快死亡。"
};
P.zh = zh;
