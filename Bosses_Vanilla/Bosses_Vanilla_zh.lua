--[[
	Bosses_Vanilla_zh.lua
		Datos en ZH del pack Vanilla.
		Fichero creado por el editor web (2026-10-15); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local zh = {};
local pack = zh;
local bos; -- 复用于共享条目(多个 NPC ID,同一张表)


-- The Stockade : Zona 34 (classic) --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1663"] = { "德克斯特伦导师",
"* 恐惧技能：Dextren 可以使整个团队陷入恐惧，因此建议在开始战斗之前先清理房间和附近的敌人。",
"* 逃跑：当它的生命值降低时，它会尝试逃跑，因此建议控制它以防止它拉更多的敌人。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1666"] = { "卡姆·深怒",
"* 简单的近战战斗：没有任何需要中断或解除的技能。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1696"] = { "塔戈尔，恐惧之主",
"* 简单的近战战斗：无需中断或解除，坦克保持粘性，持续输出。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1716"] = { "巴兹尔·瑟德",
"* 最终战斗发生在庭院中，他的囚犯会在战斗开始时加入：首先击杀小怪，然后击杀Boss。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1717"] = { "猪腿",
"* 一場簡單的近戰戰鬥，傷害很高：沒有需要打斷或解除的技能。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1720"] = { "布鲁格尔·铁拳",
"* 简单的近战战斗：没有任何需要中断或解除的技能。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46254"] = { "霍格",
"* 传奇的埃尔温恩反派，现在是暴乱的首领：打断他的 |cff71d5ff|Hspell:86620|h[Maddening Call]|h|r。",
"* 其余的都是近战：DBM 标志没有其他机制。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46264"] = { "灼热勋爵",
"* 直接对坦克造成火焰伤害：正常的治疗和承受节奏。",
"* 他的火焰雨会在一个区域持续9秒：所有人都在5米范围内被烧伤 - 落地后立即离开该区域。",
"* 他的过热会随机烧伤一名玩家：瞬间火焰伤害加上每3秒持续9次（伤害越高，数值越高）：这是一个魔法效果，及时解除。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46383"] = { "兰多菲·摩洛克",
"* 最终BOSS，位于主隧道末端的反叛囚犯的头。",
"* 疯狂刺击：一种极速刺击狂潮（每0.3秒一次），同时命中率降低35%：坦克承受风暴。",
"* 他的扫荡是一种前冲，攻击坦克和最近的盟友：没有人站在他面前或贴近坦克。",
"* 消失：当生命值降至70-60%和40-30%时，他会消失并在随机玩家身后出现：坦克迅速夺回仇恨。"
};

-- Gnomeregan : Zona 90 (classic and modern journal) --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1853"] = { "黑暗院长加丁",
"* 他的影传送 (|cff71d5ff|Hspell:17950|h[Shadow Portal]|h|r) 将玩家传送到一个充满学生的封闭房间（施法提示表明目标，而不是玩家）。",
"* 孤立的玩家独自与房间里的学生战斗，直到门打开；其余玩家则持续攻击他的影弹，并保持持续的输出。",
"* 他会重复进行，直到他倒下：在房间不断吐出人时，保持输出。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["2748"] = { "阿卡伊达斯",
"* 储藏室的沉睡巨魔：这是一场漫长的战斗，需要清理召唤生物，同时削弱他的生命值。",
"* 唤醒地狱守护者 (|cff71d5ff|Hspell:10252|h[Awaken Earthen Guardians]|h|r) 和 唤醒储藏室守卫 (|cff71d5ff|Hspell:10258|h[Awaken Vault Warder]|h|r): 增援生物会成群出现——清除它们，Boss 留在坦克身上。",
"* 地震颤动 (|cff71d5ff|Hspell:6524|h[Ground Tremor]|h|r) 冲击周围区域：近战职业保持站位，提供治疗，无需躲避。",
"* 经典规则：坦克将其固定在平台上，伤害清除守护者，Archadas 最后一个倒下。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3974"] = { "Houndmaster Loksey",
"* 他在卫队的狗的侧翼上战斗，并对整个群体施放“血腥欲” (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r)：他们攻击速度更快，所以尽快消灭狗，同时让坦克控制他。",
"* 没什么特别的：如果狗群聚集，首先消灭它们，然后他很快就会倒下。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3975"] = { "赫羅得",
"* 他的旋风 (|cff71d5ff|Hspell:8989|h[Whirlwind]|h|r) 每约 18 秒旋转一次：如果战士走出范围，则返回。",
"* 在低血量时，他会使用狂暴 (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r)：造成更多伤害，让坦克承受，并进行治疗。",
"* 当赫罗德倒下时，一群红色训练生会涌入：直到他们被清除，不要松懈。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3976"] = { "红色的指挥官莫格雷恩",
"* 简单的击败战，从他开始：白曼只会在他倒下后离开阳台。",
"* 在他第一次死亡后，白曼的治疗（|cff71d5ff|Hspell:12039|h[治疗]|h|r）被打断：没有切断，他会恢复满血。",
"* 治疗和复活都处理好后，战斗双方都会倒下，不用着急。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3977"] = { "大检察官怀特迈恩",
"* 她在莫格雷因倒下时降临，并在 10 秒内对一名玩家施放“深度睡眠” (|cff71d5ff|Hspell:9256|h[Deep Sleep]|h|r)：这是遮盖莫格雷因回归的帷幕。",
"* 然后她施放治疗 (|cff71d5ff|Hspell:12039|h[Heal]|h|r) 来回复被复活的玩家：每次打断它。",
"* 一旦她复活他，她会先倒；复活后的莫格雷恩是最后的战利品。"
};


bos = {
	"无头骑士",
	"* 经典万圣节节日首领：在修道院的墓园与入口处的南瓜神龛对话即可召唤。",
	"* |cff71d5ff|Hspell:42380|h[燃烧]|h|r 点燃随机玩家 4 秒并使其惊慌逃窜：燃烧期间离他远点；治疗把他捞回来。",
	"* |cff71d5ff|Hspell:42514|h[碾压灵魂]|h|r 折磨另一名玩家 15 秒：给被标记者加血。",
	"* 战斗的节奏：身体打到 1% -> 免疫，脑袋飞出而身体趁机回血 -> 全部火力集中在脑袋上，别让它回身；它会出来三次，第三次不再回去：打掉脑袋收尾。",
	"* 最后一轮身体阶段会有脉动的南瓜（小怪无 ID）：坦克拉住，团队用 AoE 清掉。"
};
pack["23682"] = bos;
pack["23775"] = bos;
-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3983"] = { "审讯者维莎斯",
"* 简短而直接的战斗：他的唯一标志性技能是施加在玩家身上的“焚烧”（|cff71d5ff|Hspell:9034|h[Immolate]|h|r），造成持续魔法伤害；解除或小心治疗该标记。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4542"] = { "高主教费尔班克斯",
"* 一名潜伏在墓穴中的审判者：大多数组会稍后处理他；如果你选择攻击他，这将是一场简单的战斗。",
"* 他的【血诅咒】（|cff71d5ff|Hspell:8282|h[血诅咒]|h|r）是一种诅咒：使用解除诅咒技能去除它。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4543"] = { "血魔塔尔诺斯",
"* 远程发射 |cff71d5ff|Hspell:8814|h[Flame Spike]|h|r 和周围的 |cff71d5ff|Hspell:12470|h[Fire Nova]|h|r，近战在发射nova时中断接触。",
"* 没有其他机制：站起来，让他倒下，就完成了。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4854"] = { "格里姆洛克",
"* 托格低地洞穴中的萨满：总是中断链弹 (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r)，并作为额外攻击使用闪电弹 (|cff71d5ff|Hspell:12167|h[Lightning Bolt]|h|r)。",
"* 鲜血沸腾 (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r)：携带者，无论是你还是一个增援，会先倒下。",
"* 晶体睡眠 (|cff71d5ff|Hspell:3636|h[Crystalline Slumber]|h|r)：使玩家（魔法）进入睡眠：解除或造成伤害可以唤醒他们。",
"* 反射 (|cff71d5ff|Hspell:9906|h[Reflection]|h|r)：在持续时间内不能施法，相同的法术返回规则。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5709"] = { "艾拉尼库斯之影",
"* 绿龙祭坛的召唤仪式唤醒了：经典的寺庙的最终召唤。",
"* 他的深度睡眠 (|cff71d5ff|Hspell:12890|h[Deep Slumber]|h|r) 会让任何被它击中的人陷入沉睡，酸性呼吸 (|cff71d5ff|Hspell:12533|h[Acid Breath]|h|r) 会惩罚坦克，而战争踩 (|cff71d5ff|Hspell:24375|h[War Stomp]|h|r) 会使其在近战范围内。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5710"] = { "贾姆兰，先知",
"* 殿堂的先知，以及身旁的卫兵奥古姆（不单独进入）：在开放区域的双人战斗。",
"* 贾玛兰种植大地束缚法术（|cff71d5ff|Hspell:8376|h[大地束缚法术]|h|r），这会使团队根结——并用贾玛兰的法术（|cff71d5ff|Hspell:12479|h[贾玛兰的法术]|h|r）标记一名玩家，该玩家躲在掩体后；他还施放了治疗浪潮（12492）和火焰冲击（12468）。",
"* 奥古姆会用影箭（|cff71d5ff|Hspell:12471|h[影箭]|h|r）惩罚——总是被打断，并施放影语：痛苦（|cff71d5ff|Hspell:11639|h[影语：痛苦]|h|r）（魔法）和虚弱诅咒（|cff71d5ff|Hspell:12493|h[虚弱诅咒]|h|r）（诅咒）。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5712"] = { "祖洛",
"* 可选，强大的阿塔莱守护者的迷你BOSS：他的链电攻击会跳跃到聚集在一起的玩家之间——每次攻击后分散。",
"* 他在他旁边放置了一个符文，会不断地召唤骷髅：尽快摧毁它。",
"* 他的区域效果会剥离每个玩家的10点所有属性，并且会叠加——尽快击杀他。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5719"] = { "莫法斯",
"* 淹没坑的绿色龙：这个小怪是神殿的四个卫兵的孪生。",
"* 简单战斗：他的酸气喷射 (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) 攻击前方，而翅膀扇动 (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) 则会向后击退——坦克站在前面，队伍在后面。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5720"] = { "织者",
"* 楼上绿龙，在梦魇旁边：双卫士套。",
"* 简单战术：酸气吐息(|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r)攻击前方，翅膀扇动(|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r)击退——坦克保持防御，团队躲在他身后。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5721"] = { "梦魇",
"* 楼上绿龙，在 Weaver 旁边：双卫士套装。",
"* 简单战斗：他的酸气喷射 (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) 攻击前方锥形，造成自然伤害，并且翅膀拍击 (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) 将目标向后推——坦克保持，团队躲在他身后。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5722"] = { "哈扎斯",
"* 淹没坑的绿色龙，与莫法斯：双重守护者套配合。",
"* 简单战术：酸气喷吐 (|cff71d5ff|Hspell:12884|h[Acid Breath]|h|r) 攻击前方，翅膀扇动 (|cff71d5ff|Hspell:12882|h[Wing Flap]|h|r) 击退 — 坦克保持站位，团队躲在他身后。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6229"] = { "群体打击者9-60",
"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): 一脚踢，将近战目标踢飞：只有坦克留在原地，其他人超出范围。",
"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) 对坦克：正常的坦克和治疗节奏。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6235"] = { "电刑器6000型",
"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) 和 Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r) 可中断：在根处切断。",
"* Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r) 攻击坦克：需要治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6487"] = { "奥拉尼斯特·多安",
"* 他施放了“变形术”(|cff71d5ff|Hspell:13323|h[Polymorph]|h|r)，对一名玩家施法，并围绕该玩家释放“法术爆裂”(|cff71d5ff|Hspell:9433|h[Arcane Explosion]|h|r)：没有人贴在他身边。",
"* 他的“沉默”(|cff71d5ff|Hspell:8988|h[Silence]|h|r)技能可以打断附近的法术：远离法师，以便继续施法。",
"* “爆炸”(|cff71d5ff|Hspell:9435|h[Detonate]|h|r)是最危险的技能：当他蓄力时，逃离该区域，或者在房间的书架后面打破视线，防止爆炸。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6906"] = { "失落的矮人",
"* 三个矮人（Baelog、Eric «the Swift» 和 Olaf）在工匠大厅：同时攻击所有三人，这是一场简单的战斗。",
"* 同时攻击三个目标，没有标记为DBM的机制：坦克聚集他们，并使用AOE + 斩击来消灭他们。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6907"] = { "失落的矮人",
"* 三个矮人（Baelog、Eric «the Swift» 和 Olaf）在工匠大厅：同时攻击所有三人，这是一场简单的战斗。",
"* 同时攻击三个目标，没有标记为DBM的机制：坦克聚集他们，并使用AOE + 斩击来消灭他们。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6908"] = { "失落的矮人",
"* 三个矮人（Baelog、Eric «the Swift» 和 Olaf）在工匠大厅：同时攻击所有三人，这是一场简单的战斗。",
"* 同时攻击三个目标，没有标记为DBM的机制：坦克聚集他们，并使用AOE + 斩击来消灭他们。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6910"] = { "揭罗什",
"* 入厅的托格萨满：他的链电 (|cff71d5ff|Hspell:16006|h[Chain Lightning]|h|r) 会被中断。",
"* 如果一道闪电 (|cff71d5ff|Hspell:15801|h[Lightning Bolt]|h|r) 穿过，如果团队可以，请也中断它。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7023"] = { "黑曜石哨兵",
"* 黑色哨兵石像：它的反射（|cff71d5ff|Hspell:9941|h[Reflection]|h|r）会把法术反弹给施法者——施法者需要保持法术，同时让石像移动。",
"* 破碎的黑色石像（|cff71d5ff|Hspell:10072|h[Splintered Obsidian]|h|r）：一旦出现，就会立即消失。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7079"] = { "粘性辐射尘",
"* 毒液射击 (|cff71d5ff|Hspell:21687|h[Toxic Volley]|h|r): 对附近的任何玩家造成周期性中毒；中毒解除效果会持续生效。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7206"] = { "古老的石守护者",
"* 石塔中央大廳守護者：靜態戰鬥，造成大量物理傷害。",
"* 沙塵暴 (|cff71d5ff|Hspell:10132|h[Sand Storms]|h|r) 永不停息：區域傷害，遠程攻擊不聚集，治療者需要分散。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7228"] = { "铁娜娅",
"* 地图房间的守护者：静态战斗，在原地承受伤害。",
"* 她的弧形重击 (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) 是前置攻击：近战永远不会直接面对她。",
"* 在她周围使用“战冲” (|cff71d5ff|Hspell:11876|h[War Stomp]|h|r)：范围眩晕，近战会跟随它，并保持治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7267"] = { "酋长乌科兹·桑斯凯普",
"* 站在金字塔上的指挥官，用右手攻击 Ruuzlu：正面战斗，坦克在原地承受高物理伤害。",
"* Ruuzlu 会先倒：当首领死亡时，他会进入狂暴状态（+30%伤害和+40%攻击速度），并对房间里剩余的任何人都造成惩罚。",
"* 随着他的生命值下降，他会释放狂暴 (|cff71d5ff|Hspell:8269|h[Enrage]|h|r)：坦克会更加紧密，治疗会完成最后的阶段。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7271"] = { "巫医 Zum'rah",
"* 庭院的治疗者及其侍从：每次治疗都会被打断——治疗波 (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r)，以及，最重要的是，影刃连击 (|cff71d5ff|Hspell:15245|h[Shadow Bolt Volley]|h|r)，这会惩罚整个团队，距离为30码。",
"* 祖玛的护盾 (|cff71d5ff|Hspell:11086|h[Ward of Zum'rah]|h|r) 在他的脚下放置一个符文，每5秒召唤一个骷髅：一旦出现就立即摧毁。",
"* 唤醒僵尸：他从房间附近的坟墓中召唤祖尔法拉克僵尸——骷髅和僵尸一旦出现就会死亡。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7272"] = { "血祭泰卡",
"* 单目标战斗：他的发烧瘟疫 (|cff71d5ff|Hspell:8600|h[发烧瘟疫]|h|r) 是一种可治疗的疾病——一旦生效，立即解除。",
"* 战斗中期，他会变形 (|cff71d5ff|Hspell:11089|h[变形]|h|r)：坦克保持控制，他仍然会掉落。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7273"] = { "嘎什里拉",
"* 广场上的巨兽：坦克将其固定，远程玩家保持在身后。",
"* 她的“击地”(|cff71d5ff|Hspell:11902|h[Slam]|h|r) 击中地面：近战玩家使用治疗，远程玩家远离。",
"* “冰冻”(|cff71d5ff|Hspell:11836|h[Freeze Solid]|h|r) 冻结目标：治疗持续期间，目标恢复生命值。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7275"] = { "纳克鲁姆 & 塞兹兹兹",
"* 金字塔事件（被释放的囚犯反叛你）：当他们出现时，立即击杀他们，在小怪波数之后。",
"* Sezz'ziz 的治疗——恢复 (|cff71d5ff|Hspell:8362|h[Renew]|h|r) 和治疗 (|cff71d5ff|Hspell:12039|h[Heal]|h|r)——每次被打断，或者这对角色会拖延战斗。",
"* 神圣护盾 (|cff71d5ff|Hspell:13704|h[Divine Shield]|h|r) 直接阻挡伤害：在护盾生效期间，伤害不会浪费精力。",
"* 发烧瘟 (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) 也会出现：可治疗的疾病，驱散可用。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7291"] = { "加尔甘 火锤",
"* 炉匠大厅的火焰法师：火焰尖啸 (|cff71d5ff|Hspell:6725|h[Flame Spike]|h|r) 和火焰鞭 (|cff71d5ff|Hspell:3356|h[Flame Lash]|h|r)，都会在每次攻击时中断。",
"* 火焰爆发 (|cff71d5ff|Hspell:11969|h[Fire Nova]|h|r) 爆发周围：近战角色会离开范围并返回。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7361"] = { "格鲁比斯",
"* 标记为 DBM 的简单战斗：坦克、伤害和治疗，注意在他旁边出现的增援（他的“咬者”）。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7795"] = { "水之法师 维尔拉塔",
"* 高階法師：簡單的戰鬥，只有一個細節——每波治療浪潮 (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r)都會被打斷。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7796"] = { "纳克鲁姆 & 塞兹齐兹",
"* 金字塔事件（被释放的囚犯反叛你）：当他们出现时，立即击杀他们，在小怪波数之后。",
"* Sezz'ziz 的治疗——恢复 (|cff71d5ff|Hspell:8362|h[Renew]|h|r) 和治疗 (|cff71d5ff|Hspell:12039|h[Heal]|h|r)——每次被打断，或者这对角色会拖延战斗。",
"* 神圣护盾 (|cff71d5ff|Hspell:13704|h[Divine Shield]|h|r) 直接阻挡伤害：在护盾生效期间，伤害不会浪费精力。",
"* 发烧瘟 (|cff71d5ff|Hspell:8600|h[Fevered Plague]|h|r) 也会出现：可治疗的疾病，驱散可用。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7800"] = { "机械师瑟玛普拉格",
"* 他将一个活体炸弹附加到一名随机玩家身上 (|cff71d5ff|Hspell:11518|h[活体炸弹]|h|r): 被标记的玩家会从队伍中逃开，直到爆炸。",
"* 击退 (|cff71d5ff|Hspell:10101|h[击退]|h|r) 使坦克飞起：注意他落下的位置。",
"* 从 Cata 开始，他会施放一个可中断的蒸汽冲击，并攻击坦克：在时机上切断冲击。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8127"] = { "安图蘇",
"* 第一首BOSS，在入口坑中：治疗德鲁伊，利用符文和生物来支撑自己。",
"* 他的治疗波被打断：自施的波 (|cff71d5ff|Hspell:11895|h[Healing Wave]|h|r) 和发送给生物的波 (|cff71d5ff|Hspell:15982|h[Healing Wave]|h|r)。",
"* 他的符文在出现后立即生效：大地抓符 (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) 束缚团队，治疗屏 (|cff71d5ff|Hspell:4971|h[Healing Ward]|h|r) 喂养BOSS和他的团队。",
"* 他召唤的生物 (|cff71d5ff|Hspell:11894|h[Minions]|h|r) 优先被消灭：攻击他们，同时坦克保持BOSS。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8443"] = { "哈卡尔的化身",
"* 蛇神的神殿仪式唤醒了阴影：简短、有毒的战斗。",
"* 他的“舌语诅咒”（|cff71d5ff|Hspell:12889|h[Curse of Tongues]|h|r）（诅咒）会延长团队的施法，而他的“精神错乱”(|cff71d5ff|Hspell:12888|h[Cause Insanity]|h|r)会影响一名玩家——DBM的最高警告，请尽快处理。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10432"] = { "维克图斯",
"* 死亡法术教室的另一人：平坦型施法者——他的仆人和灵魂碎片一出现就会被清除。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10433"] = { "马德克·布克莱",
"* 在 Necromancy 教室，靠近 Vectus：缓慢地攻击，避免同时击中他；他的骨骼召唤会很快被清除。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10435"] = { "玛吉斯特巴瑟拉斯",
"* 他的群体猛击 (|cff71d5ff|Hspell:10887|h[Crowd Pummel]|h|r) 针对近战：组分散。",
"* 他的愤怒 (|cff71d5ff|Hspell:16791|h[Furious Anger]|h|r) 在经典模式下非常快地叠加：DPS 不要拖延。",
"* 他的猛击 (|cff71d5ff|Hspell:14099|h[Mighty Blow]|h|r) 对坦克造成治疗效果：坦克需要及时治疗。",
"* 他一旦被击中就立即跑到房间后方：周围的敌人需要优先清除。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10436"] = { "巴洛娜·安纳斯塔里",
"* 占领一名玩家 (|cff71d5ff|Hspell:17244|h[占领]|h|r): 被占领的玩家与队伍战斗——将他们带到一半血量以下以释放他们，而不杀死他们。",
"* 她的沉默 (|cff71d5ff|Hspell:18327|h[沉默]|h|r) 是范围技能：分散使用，以免伤害所有人。",
"* 她的魅魔诅咒 (|cff71d5ff|Hspell:16867|h[魅魔诅咒]|h|r) 是一种诅咒，会削弱标记的目标的治疗效果：立即解除。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10437"] = { "奈鲁本卡",
"* 巨蜘蛛不断召唤不死卡车（|cff71d5ff|Hspell:17235|h[Raise Undead Scarab]|h|r）：它们具有范围攻击。",
"* 他的穿刺盔甲（|cff71d5ff|Hspell:6016|h[Pierce Armor]|h|r）使坦克没有防御：需要防御或第二个坦克。",
"* 他的缠绕蛛网（|cff71d5ff|Hspell:4962|h[Encasing Webs]|h|r）会缠住一名玩家一段时间：通过治疗并继续战斗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10438"] = { "马莱基，苍白",
"* 他的冰墓 (|cff71d5ff|Hspell:16869|h[冰墓]|h|r) 使玩家在几秒钟内冻结：治疗他们，战斗永不停止。",
"* 他的吸血 (|cff71d5ff|Hspell:17620|h[吸血]|h|r) 抽取玩家的生命值——需要注意治疗。",
"* 他的冰弹减缓施法者并消耗他们的法力。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10439"] = { "拉姆斯廷，吞噬者",
"* 在巴洛恩房間之前的那個：對坦克持續治療，造成致命傷害；他的【昏迷】 (|cff71d5ff|Hspell:17307|h[Knockout]|h|r) 讓整個隊伍陷入【昏迷】，他的【踩踏】 (|cff71d5ff|Hspell:5568|h[Trample]|h|r) 懲罰近戰。",
"* 当他掉落时，不死守卫的浪潮会涌入广场：群起行动，先清理掉广场上的守卫。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10440"] = { "巴洛恩·里文达雷",
"* 最终 barons：他的复活 (|cff71d5ff|Hspell:17473|h[Raise Dead]|h|r) 召唤骷髅，它们向他行进，并在接触时治愈他，并且 ~12 秒后，他会使用死亡契约 (|cff71d5ff|Hspell:17471|h[Death Pact]|h|r) — 在距离内优先消灭它们。",
"* 他的影炸 (|cff71d5ff|Hspell:17434|h[Shadow Bomb]|h|r) 落在玩家身上：群体会扩散。",
"* 他的不圣之光会攻击附近的任何玩家，并给坦克造成致命伤：持续治疗给乐队。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10502"] = { "莉迪·伊卢西亚·巴罗夫",
"* 控制玩家：使玩家眩晕、恐惧或变形，但不杀死被控制的玩家。",
"* 她的暗影箭ALWAYS会被中断；她的区域沉默效果会将法师和治疗者推向坦克身后。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10503"] = { "詹迪斯·巴罗夫",
"* 她会复制自身成相同的幻影：组需要先追击真实的身体（或用AOE击杀复制品），然后再集中火力攻击治疗师。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10504"] = { "洛德·阿列克谢·巴洛夫",
"* 他带着两个守卫：优先击杀他们，或者仇恨会分散。",
"* 他的影之纱（|cff71d5ff|Hspell:17820|h[Veil of shadow]|h|r）是一种诅咒，降低受到的治疗效果75%：在看到目标时立即解除（DBM会发出提示）。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10505"] = { "指导者寒心",
"* 她在死灵学生周围进行教学：AOE（以及束缚死灵）可以尽快清除波数。",
"* 她的治疗，总是被打断。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10506"] = { "克里托诺斯",
"* 他在阳台上被召唤，通过将《无辜之血》（来自入口怪物）放在其平台上。",
"* 他以石像怪的形式施放一个诅咒，使造成的伤害无效：诅咒，看到即解除。",
"* 他的击退将人从阳台上甩出去：坦克将其放在团队后方，远离边缘。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10507"] = { "乌鸦之王",
"* 墓穴幽灵巨魔：对坦克造成毁灭性的打击——治疗需要全程紧随其后。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10508"] = { "霜语",
"* 冰霜法师：他的冰霜之触冻结近战——承受伤害，后退，并在攻击之间进行攻击。",
"* 他的冰霜护甲减缓攻击者的速度，他的冰霜投掷将坦克推开并消灭威胁：坦克退后，没有人能超越他。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10516"] = { "不可宽恕者",
"^ 守卫塔幽灵：近战；他的冰霜之触(|cff71d5ff|Hspell:14907|h[Frost Nova]|h|r)会冻结近战职业——退后并返回到他身边。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10558"] = { "弗雷斯特恩",
"* 他的魅惑之歌 (|cff71d5ff|Hspell:16798|h[Enchanting Lullaby]|h|r) 会使整个团队进入睡眠状态：总是会被打断。",
"* 他的沮丧的吼叫 (|cff71d5ff|Hspell:16244|h[Demoralizing Shout]|h|r) 会削弱近战职业；其他职业，则会造成直接伤害。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10808"] = { "残忍的提米",
"* 巨大的怪物：他的【贪婪之爪】 (|cff71d5ff|Hspell:17470|h[Ravenous Claw]|h|r) 在前方攻击并治疗他——只有坦克向前；在50%时，他会使怒 (|cff71d5ff|Hspell:8599|h[Enrage]|h|r)——击败怒火。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10811"] = { "档案馆加尔福德",
"* 火术师：他的火焰之爆发 (|cff71d5ff|Hspell:17366|h[Fire Nova]|h|r) 攻击周围的一切——近战角色会退开进行攻击。",
"* 他的燃烧之风 (|cff71d5ff|Hspell:17293|h[Burning Winds]|h|r) 落在一名玩家身上：群体会扩散。",
"* 他的火焰弹 (|cff71d5ff|Hspell:17274|h[Pyroblast]|h|r) 总是会被打断。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10812"] = { "巴纳扎尔",
"* 战斗开始时，大圣骑士达特罗罕使用他的圣锤（|cff71d5ff|Hspell:17286|h[圣锤]|h|r）；在战斗中期，他会变形为恶魔巴尔纳扎尔。",
"* 巴尔纳扎尔：他的睡眠（|cff71d5ff|Hspell:12098|h[睡眠]|h|r）是一种魔法——消除它；他的精神冲击（|cff71d5ff|Hspell:17287|h[精神冲击]|h|r）会攻击一个法师，他的精神尖叫（|cff71d5ff|Hspell:13704|h[精神尖叫]|h|r）会恐吓整个团队——分散，以防止恐慌蔓延。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10813"] = { "巴纳扎尔",
"* 战斗开始时，大圣骑士达特罗罕使用他的圣锤（|cff71d5ff|Hspell:17286|h[圣锤]|h|r）；在战斗中期，他会变形为恶魔巴尔纳扎尔。",
"* 巴尔纳扎尔：他的睡眠（|cff71d5ff|Hspell:12098|h[睡眠]|h|r）是一种魔法——消除它；他的精神冲击（|cff71d5ff|Hspell:17287|h[精神冲击]|h|r）会攻击一个法师，他的精神尖叫（|cff71d5ff|Hspell:13704|h[精神尖叫]|h|r）会恐吓整个团队——分散，以防止恐慌蔓延。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10901"] = { "洛克尔特",
"* 他在两侧有小怪：先清掉它们，然后攻击他。",
"* 他在地面上洒出酸/毒液：不要站在上面，并尽快解除他的毒素。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10997"] = { "炮术大师威利",
"* 从瞭望塔：对区域进行炮火攻击，以及|cff71d5ff|Hspell:17279|h[召唤升起的枪兵]|h|r：一波一波地清除。",
"* 他的|cff71d5ff|Hspell:10101|h[击退]|h|r将坦克推开：他悠闲地走回去，无人能追上。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11032"] = { "玛洛，狂热者",
"* 他的地面击 (|cff71d5ff|Hspell:12734|h[Ground Smash]|h|r) 击打一个区域，并使目标2秒处于眩晕状态——法师保持距离，并专注于治疗坦克；他的头部击 (|cff71d5ff|Hspell:16172|h[Head Crack]|h|r) 惩罚坦克。",
"* 他的圣光 (|cff71d5ff|Hspell:15493|h[Holy Light]|h|r) 总是会被中断：他治疗自己。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11143"] = { "邮差马龙",
"* 可选在市场广场（他观察邮件）：他的后击 (|cff71d5ff|Hspell:6253|h[Backhand]|h|r) 使人眩晕，他的“虚弱诅咒” (|cff71d5ff|Hspell:12741|h[Curse of Weakness]|h|r) 是一种需要解除的诅咒。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11261"] = { "德奥伦·克拉斯诺夫医生",
"* 屠夫：持续近战；怒吼时，会进入狂暴状态，造成大量伤害和攻击速度 — 防守时，坦克优先治疗，直到狂暴结束。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11380"] = { "金多·赫克斯",
"* 他的幻觉（|cff71d5ff|Hspell:24306|h[Delusion of Jin'do]|h|r）欺骗目标——他看到不存在的幽灵：解除（驱散）。",
"* 他的洗脑（|cff71d5ff|Hspell:24261|h[Brain Wash]|h|r）控制玩家：解除诅咒，立即解除。",
"* 他的法术（|cff71d5ff|Hspell:17172|h[Hex]|h|r）束缚玩家5秒：魔法，解除。",
"* 他的祭坛立即被破坏：治疗之塔（|cff71d5ff|Hspell:24309|h[Healing Ward]|h|r）持续修复他，以及洗脑祭坛（|cff71d5ff|Hspell:24262|h[Brain Wash Totem]|h|r）在它周围清洗大脑。",
"* 他的驱逐（|cff71d5ff|Hspell:24466|h[Banish]|h|r）将玩家从战斗中拉走几秒——保持。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11382"] = { "血领主曼多基尔",
"* 平台上的血主：双人战斗，以及迅爪奥甘（14988）负责他的进入。",
"* 他的“Charges”（未验证ID）会吸引远距离玩家（8-30码）：远距离猎人可以使用“Feign Death”或指定远程角色来吸收伤害。",
"* 他的“Whirlwind”会惩罚近战：一旦开始，立即离开范围。",
"* 他的“Threatening Gaze”（|cff71d5ff|Hspell:24314|h[Threatening Gaze]|h|r）会标记玩家6秒：停止一切（包括施法、造成伤害和移动），否则会直接秒杀！",
"* 每死掉3名玩家（幽灵）会增加他的体型和伤害：不死亡是战术的一部分。",
"* 当奥甘倒下时，他的“Frenzy”（|cff71d5ff|Hspell:24318|h[Frenzy]|h|r）会开始——在开始前决定：要么先杀死迅爪，然后用重度治疗度过怒火，要么将其分开，最后杀死他。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11622"] = { "血骨傀儡",
"* 骸巨人到达，周围环绕着骷髅：前排的坦克先被击败。",
"* 他使用范围攻击——只有坦克在前，其他人都在后方。",
"* 他持续降低坦克的仇恨：DPS优先攻击，而不是抢夺仇恨。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12201"] = { "艾尔德拉斯公主",
"* 最终Boss，巨大的：她在她的大厅中进行静态战斗。",
"* 令人厌恶的凝视（|cff71d5ff|Hspell:21869|h[令人厌恶的凝视]|h|r）在周围散布恐慌（恐惧）：分散开一点；一个萨满的震颤法术可以一次清除。",
"* 岩石（|cff71d5ff|Hspell:21832|h[岩石]|h|r）飞向远处的：保持射程，不要聚集。",
"* 尘雾（|cff71d5ff|Hspell:21909|h[尘雾]|h|r）鞭打周围区域：近战角色需要离开该区域（DBM会发出“逃跑”提示），并在尘雾结束时返回。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12203"] = { "滑坡",
"* 洞穴中的第一个大岩石傀儡：坦克需要承受大量的物理伤害。",
"* 击退 (|cff71d5ff|Hspell:11130|h[Knock Away]|h|r) 将坦克向后推，并解除威胁：坦克立即抓住，其他人保持位置。",
"* 滑坡 (|cff71d5ff|Hspell:21808|h[Landslide]|h|r) 使周围的所有人倒下：近战角色站起来继续前进，奔跑毫无用处。",
"* 践踏 (|cff71d5ff|Hspell:5568|h[Trample]|h|r) 在他旁边踩踏地面：保持他不动使其无效。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12225"] = { "庆祝诅咒",
"* 守护者，保护通往公主的传送门：他的愤怒 (|cff71d5ff|Hspell:21807|h[Wrath]|h|r) 会被打断，如果完全命中，会造成严重的魔法伤害。",
"* 缠绕根 (|cff71d5ff|Hspell:12747|h[Entangling Roots]|h|r) 缠绕一名玩家：这是魔法，需要解除或用伤害破坏。",
"* 腐化力量 (|cff71d5ff|Hspell:21968|h[Corrupt Forces]|h|r) 推动伤害并使其瘫痪；无法躲避。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12236"] = { "洛德·维莱托ング",
"* 幽灵萨提尔：使用暗影伤害进行战斗，并使用(|cff71d5ff|Hspell:7964|h[烟雾弹]|h|r)来使其隐形。",
"* 在雾中，坦克通过威胁来控制他，同时近战玩家等待烟雾消散。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12258"] = { "Razorlash",
"* 绿色的路径上的巨型荆棘植物：简单战斗，主要攻击坦克，对其他玩家影响不大。",
"* DBM 没有标记的机制：坦克，治疗，消灭它。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13282"] = { "诺克西翁",
"* 晶石大厅的翡翠元素：在它的巢穴中进行静态战斗。",
"* Uppercut (|cff71d5ff|Hspell:10966|h[Uppercut]|h|r) 将坦克抬起：在你的脚下和后方进行治疗，然后回到原位。",
"* 周期性召唤生物 (|cff71d5ff|Hspell:21707|h[Noxxion's Minions]|h|r): 尽快对它们进行范围攻击，在它们聚集之前，以减轻压力。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13596"] = { "腐蚀之爪",
"* 在公主大厅前的池塘中与鳄鱼蜥战斗：在池塘水中进行常规战斗。",
"* 致命咬 (|cff71d5ff|Hspell:16495|h[致命咬]|h|r) 攻击坦克：轮流治疗，并保留紧急治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13601"] = { "Tinkerer Gizlock",
"* 深洞中的哥布林工程师：他的哥布林龙枪 (|cff71d5ff|Hspell:21833|h[哥布林龙枪]|h|r) 向前方喷射火焰。",
"* 坦克让他面向远离团队：没有人站在枪前，他就会倒下。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14507"] = { "高阶祭司温诺希斯",
"* 从影法师开始：他的治疗 (|cff71d5ff|Hspell:23895|h[Renew]|h|r) 作用于自身，并被解除（否则会无限治疗）；他的圣火 (|cff71d5ff|Hspell:23860|h[Holy Fire]|h|r) 作用于玩家——如果使用魔法、解除或被烧伤。",
"* 在 ~55% 时，他变成蛇 (|cff71d5ff|Hspell:23849|h[Form of the Serpent]|h|r)，进入他的最终阶段。",
"* 然后他释放有毒云 (|cff71d5ff|Hspell:23861|h[Toxic Cloud]|h|r)，持续 10 秒，在地面上：避免被喷射。",
"* 他的蛇毒 (|cff71d5ff|Hspell:23865|h[Snake Venom]|h|r) 标记一名玩家：解除或用治疗来承受。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14509"] = { "高阶祭司温诺希斯",
"* 战斗主要围绕三个目标：他的两个狂热者，洛尔·卡恩（11348，治疗师）和扎斯（11347，盗贼）。",
"* 集中消灭所有三个：当三个目标同时出现时，他们会假装死亡，并在大约15秒后，泰卡尔会以老虎形态出现，并召唤其他生物——最初的拉取应该同时对所有三个目标施加压力。",
"* 他的“治疗”技能（|cff71d5ff|Hspell:24208|h[治疗]|h|r）总是会被取消（他和他和洛尔·卡恩）。",
"* 扎斯会使目标失明（|cff71d5ff|Hspell:21060|h[失明]|h|r）和被戳刺（|cff71d5ff|Hspell:12540|h[戳刺]|h|r）——保持对他的控制。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14510"] = { "高阶祭司基尔娜拉",
"* 她的放大 (|cff71d5ff|Hspell:24109|h[Enlarge]|h|r) 使她变得更大更凶：这种法术会被解除 (特别警告)。",
"* 她的吸血 (|cff71d5ff|Hspell:24300|h[Drain Life]|h|r) 攻击玩家：这种法术，她会吸收它 — 快速解除。",
"* 她的腐蚀毒液 (|cff71d5ff|Hspell:24111|h[Corrosive Poison]|h|r) 附着在玩家身上 30 秒：解除。",
"* 她的毒液射 (|cff71d5ff|Hspell:24099|h[Poison Volley]|h|r) 攻击所有人：准备好抗毒药和治疗。",
"* 她召唤蜘蛛 (|cff71d5ff|Hspell:24083|h[Summon Spiders]|h|r): 用范围攻击清除它们，同时 DPS 集中攻击她。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14515"] = { "高阶祭司基尔娜拉",
"* 标记 ({|cff71d5ff|Hspell:24210|h[Mark of Arlokk]|h|r) 附着在玩家身上 (如果它是你，请注意)。",
"* 她消失 ({|cff71d5ff|Hspell:24223|h[Vanish]|h|r) 在拉出后不久 — 她回到一个玩家身上；近战通过攻击重新附着她。",
"* 她的痛苦之词: 痛苦 ({|cff71d5ff|Hspell:24212|h[Shadow Word: Pain]|h|r) 是魔法: 驱散它。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14517"] = { "高阶祭司基尔娜拉",
"* 她的治疗术 (|cff71d5ff|Hspell:23954|h[Greater Heal]|h|r) 总是会被驱逐 (~20 秒冷却时间)。",
"* 她的音爆 (|cff71d5ff|Hspell:23918|h[Sonic Burst]|h|r) 会攻击附近的近战：魔法、解除或远离。",
"* 她的恐慌 (|cff71d5ff|Hspell:22884|h[Panic]|h|r) 会分散近战：近战在发动时会后退。",
"* 她的“痛苦” (|cff71d5ff|Hspell:23952|h[Shadow Word: Pain]|h|r) 是持续的魔法伤害：解除它。",
"* 在生命值的一半时，她会召唤蝙蝠群：对它进行范围攻击，然后继续输出。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14834"] = { "哈卡克，灵魂毁灭者",
"* 他的血吸 (|cff71d5ff|Hspell:24324|h[Blood Siphon]|h|r) 每 90 秒吸取整个公会血量，并治愈自己——这是 DPS 时间：在血吸耗尽公会之前击败他。",
"* 他的疯狂 (|cff71d5ff|Hspell:24327|h[Insanity]|h|r) 约每 21 秒出现，使一名玩家混乱 10 秒：混乱效果会自行消失。",
"* 他的腐化血 (|cff71d5ff|Hspell:24328|h[Corrupted Blood]|h|r) 在玩家之间跳跃：在它生效时立即解除。",
"* 困难模式（乐队的神灵存活）：Aspect 循环——杰里克 (|cff71d5ff|Hspell:24687|h[Aspect of Jeklik]|h|r) 沉默法师，维诺克斯 ({24688}) 散布毒药，马尔利 ({24686}) 的吸血，阿拉洛克的 ({24690}) 标记，以及泰卡尔 (|cff71d5ff|Hspell:24689|h[Aspect of Thekal]|h|r) 发动狂怒——必须解除他身上的狂怒效果（特殊警告）。在杀死神灵之前，所有 Aspect 都会失效。",
"* 在《圣殿归来》的重制版中，Aspect 总是出现（每 20 秒，随机顺序）。",
"* 在大约 9:45 时，他释放最终的狂怒：战斗时间不能超过 10 分钟。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14988"] = { "奥甘",
"* 曼多基尔的掠夺者：战斗开始时，他的骑手下马并分开——他的坦克负责保持他远离团队。",
"* 他的致命伤（|cff71d5ff|Hspell:16856|h[致命伤]|h|r）在坦克身上叠加：双坦克轮转。",
"* 他的死亡会使曼多基尔愤怒一分钟——在开战前制定策略（参见血主曼多基尔条目）。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15082"] = { "格里勒克",
"* 他在角落的祭坛上召唤，使用 Gurubashi Mojo 药剂，并在第 15 轮时；死亡时会掉落他的 Blood of Gri'lek，用于 ZG 饰品。",
"* 他的 Avatar (|cff71d5ff|Hspell:24646|h[Avatar]|h|r) 会让他变大，消除坦克的目标，并造成物理伤害——并且他会变慢：被束缚的坦克会跑出他的范围，直到他再次缩小。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15083"] = { "哈扎拉",
"* 拐角的祭坛召唤 Gurubashi Mojo Madness 药剂（炼金：1 英雄之血，1 大 Mojo，6 强大的 Mojo，1 黑 Lotus）的活跃 Troll，在两周轮换中；死亡后会掉落其 ZG 饰品（例如 Hazza'rah 的 Dream-Thread）。",
"* 他的 Nightmare Illusions (|cff71d5ff|Hspell:24728|h[Nightmare Illusion]|h|r) 是缓慢的复制体，具有小生命值，但造成的伤害超过 5,000：一次性解决（只需要一个瞬间法术）—— 这是遭遇战的首要目标。",
"* 他的 chained Mana Burn (|cff71d5ff|Hspell:24684|h[Mana Burn]|h|r) 会在 raid 中造成连锁伤害——他几乎没有魔力（大约 5,000），因此猎人使用 Viper Sting 和术士使用 Mana Drain 可以保持他干燥，并且该技能会自行失效。",
"* 他的 Sleep (|cff71d5ff|Hspell:24664|h[Sleep]|h|r) 是范围攻击，持续 6 秒：将队伍分散，避免在 raid 中有人睡觉。",
"* 他的同伴 Gri'lek、Renataki 和 Wushoolay 都有自己的条目：祭坛只会召唤两周轮换中的活跃 Troll。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15084"] = { "雷纳塔基",
"* 他在角落的祭坛上召唤，饮用 Gurubashi Mojo Madness 药剂；死亡时会掉落 Renataki's Tooth，可用于 ZG 职业的饰品。",
"* 他消失 (|cff71d5ff|Hspell:24699|h[Vanish]|h|r) 并出现在一个目标身上，造成致命伤害：范围攻击会显露他，宠物也会追踪他，即使在隐形状态下。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15085"] = { "沃什乌莱",
"* 他在角落的祭坛上召唤，使用 Gurubashi Mojo Madness 药剂，在死亡时会掉落他的 Mane of Wushoolay，用于 ZG 饰品。",
"* 他的 Chain Lightning 产生一个 FRONTAL 锥形 (未验证 ID)：所有近战职业都必须在他身后。",
"* 他会在地面上播撒闪电云 (|cff71d5ff|Hspell:24683|h[Lightning Cloud]|h|r)，持续 15 秒：一旦离开，立即离开，否则会伤害整个队伍。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15114"] = { "嘎哈兰卡",
"* 可选：从沼泽钓鱼点喷出，使用正确的鱼饵。",
"* 他的冰息 (|cff71d5ff|Hspell:16099|h[Frost Breath]|h|r) 向前方扫出一道锥形：没有人能穿过这道气浪。",
"* 他的喷泉 (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) 攻击站在水中的人：在边缘战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["215728"] = { "群体打击者9-60",
"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): 一脚踢，将近战目标踢飞：只有坦克留在原地，其他人超出范围。",
"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) 对坦克：正常的坦克和治疗节奏。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["217280"] = { "格鲁比斯",
"* 标记为 DBM 的简单战斗：坦克、伤害和治疗，注意在他旁边出现的增援（他的“咬者”）。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218242"] = { "机械动物园",
"* 四个机械部件组合：黑龙（STX-04/BD）、小羊（STX-13/LL）、松鼠（STX-25/NB）和鸡（STX-37/CN）。",
"* 它们都拥有自我修复和短路：快速烧毁每个部件，使其无法恢复，并注意被动短路造成的伤害。",
"* 小羊发出二进制信号，松鼠发射部件，过热并用坚果盾提供保护，而鸡则在咯咯叫之间啄：持续造成伤害，然后是下一个。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218243"] = { "机械动物园",
"* 四个机械部件组合：黑龙（STX-04/BD）、小羊（STX-13/LL）、松鼠（STX-25/NB）和鸡（STX-37/CN）。",
"* 它们都拥有自我修复和短路：快速烧毁每个部件，使其无法恢复，并注意被动短路造成的伤害。",
"* 小羊发出二进制信号，松鼠发射部件，过热并用坚果盾提供保护，而鸡则在咯咯叫之间啄：持续造成伤害，然后是下一个。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218244"] = { "机械动物园",
"* 四个机械部件组合：黑龙（STX-04/BD）、小羊（STX-13/LL）、松鼠（STX-25/NB）和鸡（STX-37/CN）。",
"* 它们都拥有自我修复和短路：快速烧毁每个部件，使其无法恢复，并注意被动短路造成的伤害。",
"* 小羊发出二进制信号，松鼠发射部件，过热并用坚果盾提供保护，而鸡则在咯咯叫之间啄：持续造成伤害，然后是下一个。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218245"] = { "机械动物园",
"* 四个机械部件组合：黑龙（STX-04/BD）、小羊（STX-13/LL）、松鼠（STX-25/NB）和鸡（STX-37/CN）。",
"* 它们都拥有自我修复和短路：快速烧毁每个部件，使其无法恢复，并注意被动短路造成的伤害。",
"* 小羊发出二进制信号，松鼠发射部件，过热并用坚果盾提供保护，而鸡则在咯咯叫之间啄：持续造成伤害，然后是下一个。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218537"] = { "机械师瑟玛普拉格",
"* 他将一个活体炸弹附加到一名随机玩家身上 (|cff71d5ff|Hspell:11518|h[活体炸弹]|h|r): 被标记的玩家会从队伍中逃开，直到爆炸。",
"* 击退 (|cff71d5ff|Hspell:10101|h[击退]|h|r) 使坦克飞起：注意他落下的位置。",
"* 从 Cata 开始，他会施放一个可中断的蒸汽冲击，并攻击坦克：在时机上切断冲击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218538"] = { "机械师瑟玛普拉格",
"* 他将一个活体炸弹附加到一名随机玩家身上 (|cff71d5ff|Hspell:11518|h[活体炸弹]|h|r): 被标记的玩家会从队伍中逃开，直到爆炸。",
"* 击退 (|cff71d5ff|Hspell:10101|h[击退]|h|r) 使坦克飞起：注意他落下的位置。",
"* 从 Cata 开始，他会施放一个可中断的蒸汽冲击，并攻击坦克：在时机上切断冲击。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218571"] = { "影之埃拉尼库斯",
"* 最终BOSS：翡翠梦境中的绿色龙在坑里。",
"* 腐蚀之息 (|cff71d5ff|Hspell:437353|h[腐蚀之息]|h|r) 惩罚坦克——在施放后用嘲讽替换——，以及深度睡眠 (|cff71d5ff|Hspell:437301|h[深度睡眠]|h|r) 在节奏中扫荡房间。",
"* 他的苏醒噩梦 (|cff71d5ff|Hspell:437398|h[苏醒噩梦]|h|r) 每约66秒致命：朝深度睡眠点跑，离开受惩罚的地面。",
"* 他的嗜睡毒液 (|cff71d5ff|Hspell:437390|h[嗜睡毒液]|h|r) 是毒液（驱散它）；在70%和40%时，他的梦魇会生成（它们会被标记），并且他们的施放的嗜睡毒液 (|cff71d5ff|Hspell:437425|h[嗜睡毒液]|h|r) 总是会被中断，与咆哮之吼 (|cff71d5ff|Hspell:445498|h[咆哮之吼]|h|r) 相同。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218624"] = { "阿塔拉拉里翁",
"* 改造桥的第一座桥的守卫：平坦、坚硬的巨人。",
"* 他的力量之柱 (|cff71d5ff|Hspell:437503|h[力量之柱]|h|r) 在固定的节奏下（~12 秒）造成伤害，而“摧毁之击” (|cff71d5ff|Hspell:437597|h[摧毁之击]|h|r) 约每 ~27 秒一次，会击中一半的队伍：躲在柱子后面。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218718"] = { "贾姆兰和奥古姆",
"* 改造后的大厅：两个兽人互相吞噬，幸存者获得强化。",
"* 第一阶段：圣光冲击 (437805) 总是被打断； 圣光之怒 (437817) 在范围内可以躲避， 他的圣火 (437809) (魔法) 落在节奏上； 致命之鞭 (437847) 对坦克， 痛苦之弱 (437868) 对整个团队。",
"* 第二阶段（被吞噬者倒下）： 贾玛兰使用精神尖叫 (437928) (恐惧)， 他的影语：痛苦 (437927) (魔法)， 力量之词：护盾 (437930) (解除效果)， 以及 大赦 (437921)； 奥格姆使用正义之锤 (437915) (眩晕)， 圣洁之祭 (437884) — 保持站立 — 以及 圣风 (437920) (1.5 秒施法)。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218721"] = { "贾姆兰和奥甘",
"* 改造后的大厅：两个兽人互相吞噬，幸存者获得强化。",
"* 第一阶段：圣光冲击 (437805) 总是被打断； 圣光之怒 (437817) 在范围内可以躲避， 他的圣火 (437809) (魔法) 落在节奏上； 致命之鞭 (437847) 对坦克， 痛苦之弱 (437868) 对整个团队。",
"* 第二阶段（被吞噬者倒下）： 贾玛兰使用精神尖叫 (437928) (恐惧)， 他的影语：痛苦 (437927) (魔法)， 力量之词：护盾 (437930) (解除效果)， 以及 大赦 (437921)； 奥格姆使用正义之锤 (437915) (眩晕)， 圣洁之祭 (437884) — 保持站立 — 以及 圣风 (437920) (1.5 秒施法)。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218819"] = { "腐烂的黏液",
"* 水道中的黏液：它的吞噬 (|cff71d5ff|Hspell:448824|h[Devour]|h|r) 吞噬玩家或房间内的道具（鼓、石板、面具和蜡烛）—— 治疗可以维持被吞噬者的生命。",
"* 黏液时间 (|cff71d5ff|Hspell:446311|h[Slime Time]|h|r) 堆积在他身上：一旦移除，他就会变得迟缓——这时DPS可以全力输出。",
"* 污垢 (|cff71d5ff|Hspell:438142|h[Gunk]|h|r) 和 恶心气体 (|cff71d5ff|Hspell:438130|h[Nauseous Gas]|h|r) 配合使用；躲避受到的惩罚。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218868"] = { "阿塔莱防御者",
"* 重新设计的庭院的 trolls 守卫：六个 Boss 连续战斗，逐个击破，每次死亡都会产生其不死版本，拥有相同的技能（无链接）—— 侧面的符文门可以忽略。",
"* Zul'Lor 221640：他的 Charge (446369) 优先于 Corrupted Slam (446372) —— 在 Charge 之后躲避 —— 并且他施放 Frailty (446364)。",
"* Mijan 218868：他的 Thorns (438294) (魔法) 反射伤害给近战职业 —— 解除它们，近战职业就会停止 —— 并且他的 Healing Ward (438335) 效果消失；使用 Atal'ai 蛇形符文 (445912)。",
"* Zolo 221639：他的整个法术轮会被中断 —— Chain Lightning (446338), Renew (438341) 和 Healing Wave (438339) —— 并且他的 Atal'ai 骷髅符文 (446339) 效果消失； Unstable Cask (445940) 可以使坦克眩晕。",
"* Gasher 221637： Spinning Axes (445289) 针对近战职业，如果战斗拖延，他的 Fervor (445284) 效果叠加 —— 尽快击杀他。",
"* Loro 221638：在节奏上施放 Demoralizing Shout (23511) 并对坦克使用 Shield Slam (446354)。",
"* Hukku 223586：Shadow Bolts (446361) 总是会被中断，并且他的 Guardians (446360) 会进入战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218970"] = { "机械师瑟玛普拉格",
"* 他将一个活体炸弹附加到一名随机玩家身上 (|cff71d5ff|Hspell:11518|h[活体炸弹]|h|r): 被标记的玩家会从队伍中逃开，直到爆炸。",
"* 击退 (|cff71d5ff|Hspell:10101|h[击退]|h|r) 使坦克飞起：注意他落下的位置。",
"* 从 Cata 开始，他会施放一个可中断的蒸汽冲击，并攻击坦克：在时机上切断冲击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218972"] = { "机械师瑟玛普拉格",
"* 他将一个活体炸弹附加到一名随机玩家身上 (|cff71d5ff|Hspell:11518|h[活体炸弹]|h|r): 被标记的玩家会从队伍中逃开，直到爆炸。",
"* 击退 (|cff71d5ff|Hspell:10101|h[击退]|h|r) 使坦克飞起：注意他落下的位置。",
"* 从 Cata 开始，他会施放一个可中断的蒸汽冲击，并攻击坦克：在时机上切断冲击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218974"] = { "机械师瑟玛普拉格",
"* 他将一个活体炸弹附加到一名随机玩家身上 (|cff71d5ff|Hspell:11518|h[活体炸弹]|h|r): 被标记的玩家会从队伍中逃开，直到爆炸。",
"* 击退 (|cff71d5ff|Hspell:10101|h[击退]|h|r) 使坦克飞起：注意他落下的位置。",
"* 从 Cata 开始，他会施放一个可中断的蒸汽冲击，并攻击坦克：在时机上切断冲击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["220007"] = { "粘性辐射尘",
"* 毒液射击 (|cff71d5ff|Hspell:21687|h[Toxic Volley]|h|r): 对附近的任何玩家造成周期性中毒；中毒解除效果会持续生效。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["220072"] = { "电刑器6000型",
"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) 和 Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r) 可中断：在根处切断。",
"* Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r) 攻击坦克：需要治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["220833"] = { "梦魇与编织者",
"* 重新设计的绿色龙：它们共享同一个房间。",
"* 腐蚀之息 (|cff71d5ff|Hspell:442622|h[腐蚀之息]|h|r) 集中在坦克身上 — 每次施放后使用嘲讽 — 并跟随飞行 (|cff71d5ff|Hspell:442620|h[飞行]|h|r)。",
"* 翅膀风暴 (|cff71d5ff|Hspell:443766|h[翅膀风暴]|h|r) 将人抛向空中：保持紧贴并远离边缘。",
"* 第二阶段：梦魇使用翠绿护盾 (|cff71d5ff|Hspell:443302|h[翠绿护盾]|h|r) — 击破它，第三阶段到来时，风暴更加紧密。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["220864"] = { "梦魇与编织者",
"* 重新设计的绿色龙：它们共享同一个房间。",
"* 腐蚀之息 (|cff71d5ff|Hspell:442622|h[腐蚀之息]|h|r) 集中在坦克身上 — 每次施放后使用嘲讽 — 并跟随飞行 (|cff71d5ff|Hspell:442620|h[飞行]|h|r)。",
"* 翅膀风暴 (|cff71d5ff|Hspell:443766|h[翅膀风暴]|h|r) 将人抛向空中：保持紧贴并远离边缘。",
"* 第二阶段：梦魇使用翠绿护盾 (|cff71d5ff|Hspell:443302|h[翠绿护盾]|h|r) — 击破它，第三阶段到来时，风暴更加紧密。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221394"] = { "哈卡尔的化身",
"* 改造后的蛇神，分为两个阶段：首先是仪式，然后是野兽。",
"* 精神阶段：精神链 (|cff71d5ff|Hspell:443975|h[Spirit Chains]|h|r) 标记一名玩家，使其被拉开——被束缚的玩家会打破——，而恐怖的嚎叫 (|cff71d5ff|Hspell:443990|h[Frightsome Howl]|h|r) 总是会被中断，而 Hakkari 血守护者会伴随仪式掉落。",
"* 野兽阶段：血脉爆发 (|cff71d5ff|Hspell:444050|h[Blood Nova]|h|r) 每约 8 秒，腐化之血 (|cff71d5ff|Hspell:444253|h[Corrupted Blood]|h|r) 从玩家到玩家跳跃——被标记的玩家会打破——，疯狂 (|cff71d5ff|Hspell:444039|h[Insanity]|h|r) 在被标记的玩家身上，诅咒之语 (|cff71d5ff|Hspell:444046|h[Curse of Tongues]|h|r) (诅咒) 和吸血 (|cff71d5ff|Hspell:444132|h[Drain Blood]|h|r)：携带腐化之血的玩家站在坦克面前。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221637"] = { "阿塔莱防御者",
"* 重新设计的庭院的 trolls 守卫：六个 Boss 连续战斗，逐个击破，每次死亡都会产生其不死版本，拥有相同的技能（无链接）—— 侧面的符文门可以忽略。",
"* Zul'Lor 221640：他的 Charge (446369) 优先于 Corrupted Slam (446372) —— 在 Charge 之后躲避 —— 并且他施放 Frailty (446364)。",
"* Mijan 218868：他的 Thorns (438294) (魔法) 反射伤害给近战职业 —— 解除它们，近战职业就会停止 —— 并且他的 Healing Ward (438335) 效果消失；使用 Atal'ai 蛇形符文 (445912)。",
"* Zolo 221639：他的整个法术轮会被中断 —— Chain Lightning (446338), Renew (438341) 和 Healing Wave (438339) —— 并且他的 Atal'ai 骷髅符文 (446339) 效果消失； Unstable Cask (445940) 可以使坦克眩晕。",
"* Gasher 221637： Spinning Axes (445289) 针对近战职业，如果战斗拖延，他的 Fervor (445284) 效果叠加 —— 尽快击杀他。",
"* Loro 221638：在节奏上施放 Demoralizing Shout (23511) 并对坦克使用 Shield Slam (446354)。",
"* Hukku 223586：Shadow Bolts (446361) 总是会被中断，并且他的 Guardians (446360) 会进入战斗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221638"] = { "阿塔莱防御者",
"* 重新设计的庭院的 trolls 守卫：六个 Boss 连续战斗，逐个击破，每次死亡都会产生其不死版本，拥有相同的技能（无链接）—— 侧面的符文门可以忽略。",
"* Zul'Lor 221640：他的 Charge (446369) 优先于 Corrupted Slam (446372) —— 在 Charge 之后躲避 —— 并且他施放 Frailty (446364)。",
"* Mijan 218868：他的 Thorns (438294) (魔法) 反射伤害给近战职业 —— 解除它们，近战职业就会停止 —— 并且他的 Healing Ward (438335) 效果消失；使用 Atal'ai 蛇形符文 (445912)。",
"* Zolo 221639：他的整个法术轮会被中断 —— Chain Lightning (446338), Renew (438341) 和 Healing Wave (438339) —— 并且他的 Atal'ai 骷髅符文 (446339) 效果消失； Unstable Cask (445940) 可以使坦克眩晕。",
"* Gasher 221637： Spinning Axes (445289) 针对近战职业，如果战斗拖延，他的 Fervor (445284) 效果叠加 —— 尽快击杀他。",
"* Loro 221638：在节奏上施放 Demoralizing Shout (23511) 并对坦克使用 Shield Slam (446354)。",
"* Hukku 223586：Shadow Bolts (446361) 总是会被中断，并且他的 Guardians (446360) 会进入战斗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221639"] = { "阿塔莱防御者",
"* 重新设计的庭院的 trolls 守卫：六个 Boss 连续战斗，逐个击破，每次死亡都会产生其不死版本，拥有相同的技能（无链接）—— 侧面的符文门可以忽略。",
"* Zul'Lor 221640：他的 Charge (446369) 优先于 Corrupted Slam (446372) —— 在 Charge 之后躲避 —— 并且他施放 Frailty (446364)。",
"* Mijan 218868：他的 Thorns (438294) (魔法) 反射伤害给近战职业 —— 解除它们，近战职业就会停止 —— 并且他的 Healing Ward (438335) 效果消失；使用 Atal'ai 蛇形符文 (445912)。",
"* Zolo 221639：他的整个法术轮会被中断 —— Chain Lightning (446338), Renew (438341) 和 Healing Wave (438339) —— 并且他的 Atal'ai 骷髅符文 (446339) 效果消失； Unstable Cask (445940) 可以使坦克眩晕。",
"* Gasher 221637： Spinning Axes (445289) 针对近战职业，如果战斗拖延，他的 Fervor (445284) 效果叠加 —— 尽快击杀他。",
"* Loro 221638：在节奏上施放 Demoralizing Shout (23511) 并对坦克使用 Shield Slam (446354)。",
"* Hukku 223586：Shadow Bolts (446361) 总是会被中断，并且他的 Guardians (446360) 会进入战斗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221640"] = { "阿塔莱防御者",
"* 重新设计的庭院的 trolls 守卫：六个 Boss 连续战斗，逐个击破，每次死亡都会产生其不死版本，拥有相同的技能（无链接）—— 侧面的符文门可以忽略。",
"* Zul'Lor 221640：他的 Charge (446369) 优先于 Corrupted Slam (446372) —— 在 Charge 之后躲避 —— 并且他施放 Frailty (446364)。",
"* Mijan 218868：他的 Thorns (438294) (魔法) 反射伤害给近战职业 —— 解除它们，近战职业就会停止 —— 并且他的 Healing Ward (438335) 效果消失；使用 Atal'ai 蛇形符文 (445912)。",
"* Zolo 221639：他的整个法术轮会被中断 —— Chain Lightning (446338), Renew (438341) 和 Healing Wave (438339) —— 并且他的 Atal'ai 骷髅符文 (446339) 效果消失； Unstable Cask (445940) 可以使坦克眩晕。",
"* Gasher 221637： Spinning Axes (445289) 针对近战职业，如果战斗拖延，他的 Fervor (445284) 效果叠加 —— 尽快击杀他。",
"* Loro 221638：在节奏上施放 Demoralizing Shout (23511) 并对坦克使用 Shield Slam (446354)。",
"* Hukku 223586：Shadow Bolts (446361) 总是会被中断，并且他的 Guardians (446360) 会进入战斗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221942"] = { "莫法兹和哈扎斯",
"* 重新设计的深渊巨龙对：圣殿的SoD是最长的战斗。",
"* 腐化的呼吸 (|cff71d5ff|Hspell:446487|h[腐化的呼吸]|h|r) 叠加在坦克身上，而动画火焰 (|cff71d5ff|Hspell:446661|h[动画火焰]|h|r) 从地面升起。",
"* 舞台在“梦境”中：第一个~20秒的施法 (|cff71d5ff|Hspell:445235|h[梦境]|h|r) 将整个团队送入翡翠梦境——火焰在施法过程中死亡；第二个施法（4秒）已经燃烧，并在之后，他会施放“永恒的睡眠” (|cff71d5ff|Hspell:446144|h[永恒的睡眠]|h|r)，持续30秒，除非他们及时通过传送门逃脱。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221943"] = { "莫法兹和哈扎斯",
"* 重新设计的深渊巨龙对：圣殿的SoD是最长的战斗。",
"* 腐化的呼吸 (|cff71d5ff|Hspell:446487|h[腐化的呼吸]|h|r) 叠加在坦克身上，而动画火焰 (|cff71d5ff|Hspell:446661|h[动画火焰]|h|r) 从地面升起。",
"* 舞台在“梦境”中：第一个~20秒的施法 (|cff71d5ff|Hspell:445235|h[梦境]|h|r) 将整个团队送入翡翠梦境——火焰在施法过程中死亡；第二个施法（4秒）已经燃烧，并在之后，他会施放“永恒的睡眠” (|cff71d5ff|Hspell:446144|h[永恒的睡眠]|h|r)，持续30秒，除非他们及时通过传送门逃脱。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["223586"] = { "阿塔莱防御者",
"* 重新设计的庭院的 trolls 守卫：六个 Boss 连续战斗，逐个击破，每次死亡都会产生其不死版本，拥有相同的技能（无链接）—— 侧面的符文门可以忽略。",
"* Zul'Lor 221640：他的 Charge (446369) 优先于 Corrupted Slam (446372) —— 在 Charge 之后躲避 —— 并且他施放 Frailty (446364)。",
"* Mijan 218868：他的 Thorns (438294) (魔法) 反射伤害给近战职业 —— 解除它们，近战职业就会停止 —— 并且他的 Healing Ward (438335) 效果消失；使用 Atal'ai 蛇形符文 (445912)。",
"* Zolo 221639：他的整个法术轮会被中断 —— Chain Lightning (446338), Renew (438341) 和 Healing Wave (438339) —— 并且他的 Atal'ai 骷髅符文 (446339) 效果消失； Unstable Cask (445940) 可以使坦克眩晕。",
"* Gasher 221637： Spinning Axes (445289) 针对近战职业，如果战斗拖延，他的 Fervor (445284) 效果叠加 —— 尽快击杀他。",
"* Loro 221638：在节奏上施放 Demoralizing Shout (23511) 并对坦克使用 Shield Slam (446354)。",
"* Hukku 223586：Shadow Bolts (446361) 总是会被中断，并且他的 Guardians (446360) 会进入战斗。"
};

-- Wailing Caverns : Zona 43 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3653"] = { "克雷什",
"* 简单的物理战斗：不要中断或解除，坚实的坦克和持续伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3654"] = { "吞噬者穆坦努斯",
"* |cff71d5ff|Hspell:7967|h[纳拉克的噩梦]|h|r是战斗的核心：每次吟唱时都要打断。",
"* 他的|cff71d5ff|Hspell:7399|h[恐惧]|h|r（恐慌）是法术：治疗者解除击中的，而他的|cff71d5ff|Hspell:8150|h[雷击]|h|r攻击范围——治疗者做好准备。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3669"] = { "考布莱恩",
"* 与安康德拉相同：使用 |cff71d5ff|Hspell:8040|h[德鲁伊的睡眠]|h|r 和 |cff71d5ff|Hspell:23381|h[治疗之触]|h|r。",
"* 他的 |cff71d5ff|Hspell:17330|h[毒]|h|r 立即生效，可以通过毒药解除效果。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3670"] = { "皮萨斯",
"* 就像 Anacondra：使用 |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r 和 |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r 进行反击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3671"] = { "安娜科德拉",
"* 她会变成德鲁伊形态：打断她使用 |cff71d5ff|Hspell:8040|h[德鲁伊的睡眠]|h|r（使玩家睡眠）和她的 |cff71d5ff|Hspell:23381|h[治疗之触]|h|r，否则战斗会持续很长时间。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3673"] = { "瑟芬迪斯",
"* 就像 Anacondra：使用 |cff71d5ff|Hspell:8040|h[Druid's Slumber]|h|r 和 |cff71d5ff|Hspell:23381|h[Healing Touch]|h|r 进行反击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3674"] = { "斯卡姆",
"* 我会交替使用 |cff71d5ff|Hspell:6254|h[连击闪电]|h|r，该技能会随机攻击目标：不要让团成员聚集在一起，快速击杀他。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["5775"] = { "永生者沃尔丹",
"* 激活他的 |cff71d5ff|Hspell:8142|h[藤]|h|r：这是战斗的唯一要点，其余部分都是近战。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5912"] = { "扭曲飞龙",
"* 可选，半隐形的领主：您不需要杀死它才能完成地下城。",
"* 它的 |cff71d5ff|Hspell:8040|h[德鲁伊的睡眠]|h|r 使一名玩家睡觉（可解除的法术）：如果没有人解除，治疗师会解除。"
};

-- Razorfen Kraul : Zona 47 (classic) --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4420"] = { "奥弗洛德 兰图斯克",
"* 他会释放一个旋转的攻击 (|cff71d5ff|Hspell:8259|h[Whirling Barrage]|h|r): 阻止它，或者在攻击落下的同时，迅速离开攻击范围。",
"* 这是一个艰难的战斗：他攻击力强，并且两侧有两名守护者；坦克需要将他们分开，然后进行治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4421"] = { "卡尔加·刺肋",
"* 链弹 (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) 可中断：使用踢击可以保护整个团队。",
"* 法术在落地后立即被清除 (|cff71d5ff|Hspell:8361|h[Purity]|h|r)：物理伤害是关键。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4422"] = { "阿加瑟洛斯，怒吼者",
"* 让他进入怒火状态(|cff71d5ff|Hspell:8269|h[Enrage]|h|r)，并利用他的惩罚爆发：坦克利用专注的治疗来应对。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4424"] = { "阿格姆·索恩克",
"* 他会在不规则的时间召唤野猪 (|cff71d5ff|Hspell:8286|h[召唤野猪]|h|r): 尽快消灭它们。",
"* 他的治疗波 (|cff71d5ff|Hspell:14900|h[治疗波]|h|r) 可以被打断: 毫不留情地打断，否则坦克会疲劳。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4425"] = { "猎手布塔斯克",
"* 标记为 DBM 的普通战士：近战，无其他技能：坦克，输出和治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4428"] = { "死亡之语者贾格巴",
"* 控制玩家的意志 (|cff71d5ff|Hspell:14515|h[Dominate]|h|r): 普通的中断效果无效；眩晕效果可以阻止，但重用效果会在中断时立即生效：击败被控制的玩家，直到它倒下。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4842"] = { "艾尔斯卡尔·哈尔姆加",
"* 召唤大地轰鸣者 (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): 将它们分开，并迅速击败它们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6168"] = { "鲁古格",
"* 他召唤大地震动者 (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r)：坦克抓住他们，并立即消灭。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74462"] = { "督军拉姆塔斯",
"* 现代版的最高级Ramtusk：一个简单的战士，没有任何DBM标记：坦克、输出和治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74948"] = { "鲁古格",
"* 他召唤大地震动者 (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r)：坦克抓住他们，并立即消灭。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75001"] = { "猎手布塔斯克",
"* 现代克劳尔的另一个普通战士：轮流承受伤害、造成伤害和治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75247"] = { "盲眼猎手",
"* 盲猎人的现代重制版：又一个简单的格斗型职业，DBM无法在他身上找到任何标记。"
};

-- Blackfathom Deeps : Zona 48 --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4829"] = { "阿库麦尔",
"* 简单的毒液战：他的 |cff71d5ff|Hspell:3815|h[毒云]|h|r 保持在他原地的位置；坦克负责将他远离群体，并且没有人进入其中。",
"* 随着他死亡，他进入|cff71d5ff|Hspell:3490|h[狂怒]|h|r状态，攻击速度加快：治疗者需要加快节奏。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4830"] = { "奥尔·塞拉基斯",
"* 在浅水坑中进行简单的近战：坦克控制目标，近战职业注意其毒药，其他玩家分散伤害。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4831"] = { "Lady Sarevess",
"* 她由精英卫队护卫：控制小怪（变形术、陷阱），并集中对她造成伤害。",
"* 她的 |cff71d5ff|Hspell:407546|h[冰冻箭]|h|r会冻结目标（治疗者通过解除来解除），当她用 |cff71d5ff|Hspell:407653|h[双叉闪电]|h|r攻击时，标记的目标会从队伍中移动。",
"* 如果她将 |cff71d5ff|Hspell:407791|h[阿库梅的怒火]|h|r施加在玩家身上，治疗者看到后立即解除；她的地面水坑会被忽略。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4832"] = { "暮光领主巴赛尔",
"* In the Era client this is a simple fight: dispel the |cff71d5ff|Hspell:8399|h[Sleep]|h|r he casts on a random player and keep tanking and damaging."
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4887"] = { "加摩拉",
"* 简单的坦克和输出战术：他的 |cff71d5ff|Hspell:5568|h[Trample]|h|r 震动附近的每个人；近战保持靠近，其他人保持分散。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6243"] = { "格利哈斯特",
"* 简单战斗：他的主要威胁是 |cff71d5ff|Hspell:6533|h[Net]|h|r，这会使某人离开战斗几秒钟（中断或解除），否则则需要坦克和输出。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74446"] = { "加摩拉",
"* 他躲在一个壳后面，该壳会大幅减少所有伤害：每次攻击和法术都会降低它的效果，所以持续输出，直到它破碎。",
"* 当壳破碎时，他会爆发，对整个团队造成伤害（治疗者可以减轻），并且暴露：此时使用所有高伤害技能。",
"* 他的 |cff71d5ff|Hspell:407077|h[Triple Chomp]|h|r 攻击坦克：治疗者注意他的生命值。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74476"] = { "多米尼娜",
"* 她的阴影风暴每秒对随机玩家造成阴影伤害：持续的伤害；治疗师掌握节奏。",
"* 她的死亡之口以 2 秒的波浪形式对前方锥形造成阴影伤害：坦克将她拉离群体，没有人前进。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74505"] = { "苏克",
"* 他的“每日捕捞”会随机将一名玩家拉到 45 码以外，并将其拖回：被拉的人一旦松开，就会立即消失，并且没有人可以穿过拉动。",
"* 他的“肉块”会猛击地面：对 10 码内的所有敌人造成 500% 武器伤害；请让治疗师做好准备，以便分散注意力。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74565"] = { "征服者克鲁尔",
"* Leviathan的束缚会给目标造成每秒8秒的物理伤害：治疗者需要攻击这个目标。",
"* 他的黑暗之呼召唤阿库梅：阿库梅的技能也会对小兵生效。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74728"] = { "暮光领主巴赛尔",
"* 他在房间里散落碎片，形成恢复水区域：如果他进入其中，他会饮用（治疗吸收），恢复 5% 的生命值，并且会饮用（水爆），向 5 码范围内造成冰霜伤害；注意这些区域，切勿给他水。",
"* 他的冰雨会每秒对随机玩家造成冰霜伤害：持续的伤害，治疗者需要保持。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74988"] = { "刽子手戈尔",
"* 吞噬之黑影（可中断）使目标被束缚，并每 0.8 秒消耗其生命值 6 秒，为他提供：在它生效时立即中断；如果生效，则治疗者需要优先治疗。",
"* 刽子手之击：对前方锥形内的所有人造成暗影伤害，并留下一个持续的漩涡，使留在其中的人被碾压；远离锥形，并离开漩涡。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75408"] = { "阿库麦尔",
"* 第一阶段（水龙形态）：主要坦克施加毒药效果；副坦克在第三或第四次毒药效果时进行嘲讽，以便第一个坦克通过触摸房间内的元素喷泉来解除自身（它们会召唤一个立即死亡的生物）。",
"* 当她施放 |cff71d5ff|Hspell:429168|h[腐蚀之爆]|h|r时，会被躲避：被标记的玩家会离开锥形。",
"* 第二阶段（虚空形态，低于50%）：物理伤害增加，她会投掷黑暗爆裂（|cff71d5ff|Hspell:429359|h[虚空爆裂]|h|r以相同方式躲避）；坦克需要更小心地轮流，并利用每个冷却技能来结束战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75410"] = { "深渊守护者",
"* 他的孢子云卵随机落在各个位置（造成物理伤害），并孵化出守护幼崽：远离斑点，并快速清理幼崽。",
"* 他吞噬附近的蓝色石虫，恢复 25% 的生命值：确保没有其他石虫在可达范围内。",
"* 他的震荡之歌会影响整个房间：持续的区域伤害；治疗者需要保持关注。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["201722"] = { "加摩拉",
"* 他躲在一个壳后面，该壳会大幅减少所有伤害：每次攻击和法术都会降低它的效果，所以持续输出，直到它破碎。",
"* 当壳破碎时，他会爆发，对整个团队造成伤害（治疗者可以减轻），并且暴露：此时使用所有高伤害技能。",
"* 他的 |cff71d5ff|Hspell:407077|h[Triple Chomp]|h|r 攻击坦克：治疗者注意他的生命值。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["202699"] = { "巴洛恩·阿夸尼斯",
"* 散布在平台上，以防止他的闪电风暴对公会造成连锁伤害；近战和坦克保持在他身边。",
"* His |cff71d5ff|Hspell:404806|h[Depth Charge]|h|r plants a deadly charge on a player: whoever is marked jumps into the water right away so the blast cannot damage or push the group.",
"* 沉入水中：旋风会将你推下；近战职业可以使用速度球或跳跃来攀爬，而远程职业则可以继续从下方攻击。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["204068"] = { "Lady Sarevess",
"* 她由精英卫队护卫：控制小怪（变形术、陷阱），并集中对她造成伤害。",
"* 她的 |cff71d5ff|Hspell:407546|h[冰冻箭]|h|r会冻结目标（治疗者通过解除来解除），当她用 |cff71d5ff|Hspell:407653|h[双叉闪电]|h|r攻击时，标记的目标会从队伍中移动。",
"* 如果她将 |cff71d5ff|Hspell:407791|h[阿库梅的怒火]|h|r施加在玩家身上，治疗者看到后立即解除；她的地面水坑会被忽略。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["204921"] = { "格利哈斯特",
"* 战斗交替进行伤害和过渡阶段：每次他损失约 30% 的生命值时，他会在房间中央获得免疫效果。",
"* 在过渡期间，阴影触手和扫射投影会出现：躲避它们或摧毁触手，直到他再次可被攻击。",
"* 他的 |cff71d5ff|Hspell:411956|h[诅咒之深]|h|r 可以通过解除诅咒来移除，而他的 |cff71d5ff|Hspell:412456|h[海豚的行军]|h|r 会从两侧产生波浪：快速清除它们。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["207356"] = { "洛格斯·杰特",
"* 他的符文是绝对的优先目标：低生命值和残酷的效果；立即消灭它们（|cff71d5ff|Hspell:419636|h[熔岩怒火符文]|h|r造成范围伤害，|cff71d5ff|Hspell:414691|h[风之符文]|h|r增强他的队伍）。",
"* 如果他开始治疗，请坦克或近战职业尽快中断他。",
"* 他给坦克施加一个效果，增加受到的伤害：这需要战斗中更换坦克。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["209678"] = { "暮光领主巴赛尔",
"* 第一阶段 (100% 到 35%): 他会随机将两个玩家传送到影界；在那里，他们会快速杀死幽灵祭司来激活传送门并返回；在地面上，他的闪电链总是会被中断。",
"* 第二阶段 (低于 35%): 他会变得狂暴，停止将人传送到影界；这变成了一个与影界保护药水相关的伤害竞赛：持续的影界伤害会击垮团队，否则会。",
"* 他的 |cff71d5ff|Hspell:423135|h[睡眠]|h|r 仍然会随机击晕一个玩家：解除这个效果。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["213334"] = { "阿库麦尔",
"* 第一阶段（水龙形态）：主要坦克施加毒药效果；副坦克在第三或第四次毒药效果时进行嘲讽，以便第一个坦克通过触摸房间内的元素喷泉来解除自身（它们会召唤一个立即死亡的生物）。",
"* 当她施放 |cff71d5ff|Hspell:429168|h[腐蚀之爆]|h|r时，会被躲避：被标记的玩家会离开锥形。",
"* 第二阶段（虚空形态，低于50%）：物理伤害增加，她会投掷黑暗爆裂（|cff71d5ff|Hspell:429359|h[虚空爆裂]|h|r以相同方式躲避）；坦克需要更小心地轮流，并利用每个冷却技能来结束战斗。"
};

-- Razorfen Downs : Zona 129 --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7354"] = { "Ragglesnout",
"* 精神控制 (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) 使玩家反叛团队：使其眩晕或解除他们的魔法效果。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7355"] = { "图腾卡什",
"* 墓穴中的蜘蛛：她的《图坦卡蒙诅咒》（|cff71d5ff|Hspell:12255|h[Curse of Tut]|h|r）会使玩家（诅咒，移除它），并且她的《蛛网喷射》（|cff71d5ff|Hspell:12252|h[Web Spray]|h|r）会惩罚近战职业。",
"* 她的蛛丝毒液攻击坦克：持续治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7356"] = { "腐烂之爪",
"* 他的腐烂之触 (|cff71d5ff|Hspell:11442|h[Withered Touch]|h|r) 对玩家造成疾病：德鲁伊可以解除。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7357"] = { "火眼莫德雷斯",
"* 他在骨堆上与一群非精英骷髅周围战斗：坦克首先使用AOE将它们全部拉取，保持它们聚集在一起，然后整个团队先清扫群：不要急于攻击Boss。",
"* 每次他施放火焰球时，坦克或近战职业进行中断：每次中断造成的伤害减少。",
"* 治疗师在坦克成功吸引骷髅群的几秒钟后等待：过早的治疗可能会将骷髅剥离并结束拉取。",
"* 他的火焰波 (|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r) 扫过脚下的近战职业：退开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7358"] = { "寒冰之王亚门纳尔",
"* 墓地的寒意：他的阿门纳的怒火 (|cff71d5ff|Hspell:13009|h[Amnennar's Wrath]|h|r) 爆发，范围广，保持强大的治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8567"] = { "贪食者",
"* 肉食者：当生命值较低时，他会进入狂暴状态(|cff71d5ff|Hspell:12795|h[狂暴]|h|r)——在生命值较低时造成高伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74347"] = { "火眼莫德雷斯",
"* 他在骨堆上与一群非精英骷髅周围战斗：坦克首先使用AOE将它们全部拉取，保持它们聚集在一起，然后整个团队先清扫群：不要急于攻击Boss。",
"* 每次他施放火焰球时，坦克或近战职业进行中断：每次中断造成的伤害减少。",
"* 治疗师在坦克成功吸引骷髅群的几秒钟后等待：过早的治疗可能会将骷髅剥离并结束拉取。",
"* 他的火焰波 (|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r) 扫过脚下的近战职业：退开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74412"] = { "阿鲁克斯",
"* 他的蛛丝缠绕会抓住远程玩家，将其拉入近战，并同时放置“腐蚀之咬”（对自然伤害10秒，移动速度降低50%）：治疗者清除它或对被缠住的玩家进行强力治疗。",
"* 他的爆裂脓疱会造成对附近的自然伤害：距离和扩散。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["74434"] = { "寒冰之王亚门纳尔",
"* 盟友的 Koristrasza 召唤 Redeemed Soil 区域：在他移动时，地面会使他陷入 Overwhelms 状态并使其眩晕 6 秒。",
"* 他的 Soul Leech 会使标记玩家（75% 的伤害会对其造成）和附近的玩家造成 Shadow 伤害：被标记的玩家踩在 Redeemed Soil 区域会立即解除该效果，并使其眩晕。",
"* 他的 Frozen Bomb 会爆发成 Frost 区域：在冰区域附近立即移动。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74435"] = { "麦什伦",
"* 直接的肉搏战：他的嘈杂的“踩踏”技能会攻击整个团队，并且可以打断法师在施法时；治疗者需要保持警惕，法师需要注意时机。",
"* 他会随机地召唤“污秽”和“僵尸”生物：坦克会立即将它们收拢，然后DPS（高伤害输出）用持续伤害技能或范围技能（DoTs或AOE）消灭它们，防止它们攻击治疗者。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["74875"] = { "亡语者布莱克松",
"* 他的爆发（阴影和闪电）会向玩家之间传递：尽可能中断施法。",
"* 他会在地面上制造黑暗污点：立即离开，因为留在原地会受到伤害。",
"* 有时他会用灵魂护盾保护自己，然后在其后施法：用直接伤害打破屏障来中断施法。"
};

-- Blackrock Depths : Zona 230 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["8983"] = { "傀儡统帅阿格曼奇",
"* 一道链闪电会跳到附近的敌人：保持分散，直到它结束。",
"* 他同时使用两个构造：坦克分开它们，分散攻击。",
"* 不要急：倒下的傀儡不会结束战斗——扫清整个大厅。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9016"] = { "贝尔加",
"* 他的熔岩冲击效果最多叠加3次，持续24秒，针对坦克：坦克轮转或如果可用，则进行净化。",
"* 幼崽召唤会随机向目标造成火焰伤害，并附带一个泥泞生物：坦克抓住它，它会迅速死亡。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9017"] = { "伊森迪奥斯",
"* 元素之主诅咒：剥离 100-132 的火焰抗性，持续 30 秒，最多三次：标记的玩家远离火焰。",
"* 猛击：将坦克向后击飞（到处是熔岩）：返回到墙边。",
"* 火球攻击附近的区域 ~30 秒，火焰爆发范围 20 米：近战玩家退开，治疗者覆盖伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9018"] = { "审讯官格斯塔恩",
"* 审讯室的领主：她的影箭会惩罚法师——需要注意治疗和范围。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9019"] = { "达格兰·索瑞森大帝",
"* 火焰之灵：10 秒完全免疫魔法，并且火焰攻击会附加：法师在持续时间内需要保持。",
"* 泰瑞西安之手：火焰攻击会使目标眩晕 5 秒 — 最好不要堆叠，以免多个目标同时失去控制。",
"* 钢铁怒火：他的战锤可以附加最多 3 次攻击，并且提高他的暴击率 10% 5 秒：坦克需要保持连击，并进行治疗。",
"* 莫伊拉·布伦兹贝德在旁边战斗：她不断地治疗他，并使用圣光和暗影魔法进行惩罚：控制她，或者如果团队消耗过快，则在击败她之前击败他。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9024"] = { "控火师罗格雷恩",
"* 笼子里的火焰法师：对整个团队造成范围火焰伤害 — 散开，并穿过它进行治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9025"] = { "洛考尔",
"* 他的战争踩踏（2 秒）会惩罚附近的任何生物，并且会中断施法：分散开，不要直接攻击。",
"* 火浪每约 12 秒一次：近战角色需要走出范围，然后返回。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9027"] = { "裁决者格里斯通",
"* 竞技场事件： 戒指会召唤六位冠军中的一个（安布什娅、赫德鲁姆、恶食者、格里兹、奥克托或莱夫托克）——坦克会抓住它，战斗将是一场直接的对抗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9028"] = { "裁决者格里斯通",
"* 竞技场事件： 戒指会召唤六位冠军中的一个（安布什娅、赫德鲁姆、恶食者、格里兹、奥克托或莱夫托克）——坦克会抓住它，战斗将是一场直接的对抗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9029"] = { "裁决者格里斯通",
"* 竞技场事件： 戒指会召唤六位冠军中的一个（安布什娅、赫德鲁姆、恶食者、格里兹、奥克托或莱夫托克）——坦克会抓住它，战斗将是一场直接的对抗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9030"] = { "裁决者格里斯通",
"* 竞技场事件： 戒指会召唤六位冠军中的一个（安布什娅、赫德鲁姆、恶食者、格里兹、奥克托或莱夫托克）——坦克会抓住它，战斗将是一场直接的对抗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9031"] = { "裁决者格里斯通",
"* 竞技场事件： 戒指会召唤六位冠军中的一个（安布什娅、赫德鲁姆、恶食者、格里兹、奥克托或莱夫托克）——坦克会抓住它，战斗将是一场直接的对抗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9032"] = { "裁决者格里斯通",
"* 竞技场事件： 戒指会召唤六位冠军中的一个（安布什娅、赫德鲁姆、恶食者、格里兹、奥克托或莱夫托克）——坦克会抓住它，战斗将是一场直接的对抗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9033"] = { "怒炉将军",
"* 他的 Sunder 持续剥夺坦克防御，当叠层时需要注意：如果叠层，则需要注意节奏。",
"* 暴击会加快他的攻击速度，并且 Enrage 会增加物理伤害：治疗者需要与他保持节奏。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9034"] = { "杜姆雷尔",
"* 锻造大厅中，七个幽灵矮人一个接一个出现，每个人都使用经典职业技能。",
"* 战士 Anger'rel：对坦克使用英雄打击和撕裂盔甲，同时使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤魅魔或虚空行者，并使用恐惧：解除恐惧并结束召唤。",
"* 盗贼 Dope'rel：从背后咬人，使用消失：确保没有人后撤。",
"* 德鲁伊 Gloom'rel：使用法术，大地冲击和增强解除：法术在激活时死亡。",
"* 法师 Hate'rel：使用冰霜之箭，暴风雪和变形：中断变形并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，设置陷阱，并释放野兽宠物：小心接近。",
"* 牧师 Vile'rel：使用闪光治疗，并使用力量之词：护盾和心灵冲击：在治疗时先中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9035"] = { "杜姆雷尔",
"* 锻造大厅中，七个幽灵矮人一个接一个出现，每个人都使用经典职业技能。",
"* 战士 Anger'rel：对坦克使用英雄打击和撕裂盔甲，同时使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤魅魔或虚空行者，并使用恐惧：解除恐惧并结束召唤。",
"* 盗贼 Dope'rel：从背后咬人，使用消失：确保没有人后撤。",
"* 德鲁伊 Gloom'rel：使用法术，大地冲击和增强解除：法术在激活时死亡。",
"* 法师 Hate'rel：使用冰霜之箭，暴风雪和变形：中断变形并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，设置陷阱，并释放野兽宠物：小心接近。",
"* 牧师 Vile'rel：使用闪光治疗，并使用力量之词：护盾和心灵冲击：在治疗时先中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9036"] = { "杜姆雷尔",
"* 锻造大厅中，七个幽灵矮人一个接一个出现，每个人都使用经典职业技能。",
"* 战士 Anger'rel：对坦克使用英雄打击和撕裂盔甲，同时使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤魅魔或虚空行者，并使用恐惧：解除恐惧并结束召唤。",
"* 盗贼 Dope'rel：从背后咬人，使用消失：确保没有人后撤。",
"* 德鲁伊 Gloom'rel：使用法术，大地冲击和增强解除：法术在激活时死亡。",
"* 法师 Hate'rel：使用冰霜之箭，暴风雪和变形：中断变形并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，设置陷阱，并释放野兽宠物：小心接近。",
"* 牧师 Vile'rel：使用闪光治疗，并使用力量之词：护盾和心灵冲击：在治疗时先中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9037"] = { "杜姆雷尔",
"* 锻造大厅中，七个幽灵矮人一个接一个出现，每个人都使用经典职业技能。",
"* 战士 Anger'rel：对坦克使用英雄打击和撕裂盔甲，同时使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤魅魔或虚空行者，并使用恐惧：解除恐惧并结束召唤。",
"* 盗贼 Dope'rel：从背后咬人，使用消失：确保没有人后撤。",
"* 德鲁伊 Gloom'rel：使用法术，大地冲击和增强解除：法术在激活时死亡。",
"* 法师 Hate'rel：使用冰霜之箭，暴风雪和变形：中断变形并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，设置陷阱，并释放野兽宠物：小心接近。",
"* 牧师 Vile'rel：使用闪光治疗，并使用力量之词：护盾和心灵冲击：在治疗时先中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9038"] = { "杜姆雷尔",
"* 锻造大厅中，七个幽灵矮人一个接一个出现，每个人都使用经典职业技能。",
"* 战士 Anger'rel：对坦克使用英雄打击和撕裂盔甲，同时使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤魅魔或虚空行者，并使用恐惧：解除恐惧并结束召唤。",
"* 盗贼 Dope'rel：从背后咬人，使用消失：确保没有人后撤。",
"* 德鲁伊 Gloom'rel：使用法术，大地冲击和增强解除：法术在激活时死亡。",
"* 法师 Hate'rel：使用冰霜之箭，暴风雪和变形：中断变形并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，设置陷阱，并释放野兽宠物：小心接近。",
"* 牧师 Vile'rel：使用闪光治疗，并使用力量之词：护盾和心灵冲击：在治疗时先中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9039"] = { "杜姆雷尔",
"* 锻造大厅中，七个幽灵矮人一个接一个出现，每个人都使用经典职业技能。",
"* 战士 Anger'rel：对坦克使用英雄打击和撕裂盔甲，同时使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤魅魔或虚空行者，并使用恐惧：解除恐惧并结束召唤。",
"* 盗贼 Dope'rel：从背后咬人，使用消失：确保没有人后撤。",
"* 德鲁伊 Gloom'rel：使用法术，大地冲击和增强解除：法术在激活时死亡。",
"* 法师 Hate'rel：使用冰霜之箭，暴风雪和变形：中断变形并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，设置陷阱，并释放野兽宠物：小心接近。",
"* 牧师 Vile'rel：使用闪光治疗，并使用力量之词：护盾和心灵冲击：在治疗时先中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9040"] = { "杜姆雷尔",
"* 锻造大厅中，七个幽灵矮人一个接一个出现，每个人都使用经典职业技能。",
"* 战士 Anger'rel：对坦克使用英雄打击和撕裂盔甲，同时使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤魅魔或虚空行者，并使用恐惧：解除恐惧并结束召唤。",
"* 盗贼 Dope'rel：从背后咬人，使用消失：确保没有人后撤。",
"* 德鲁伊 Gloom'rel：使用法术，大地冲击和增强解除：法术在激活时死亡。",
"* 法师 Hate'rel：使用冰霜之箭，暴风雪和变形：中断变形并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，设置陷阱，并释放野兽宠物：小心接近。",
"* 牧师 Vile'rel：使用闪光治疗，并使用力量之词：护盾和心灵冲击：在治疗时先中断。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9041"] = { "典狱官斯迪尔基斯",
"* 宝库的守卫：他的奥格 Verek 在他身边战斗——坦克需要分开或保持他们分开；持续治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9056"] = { "弗诺斯·达克维尔",
"* 熔炼矮人：在坦克身后进行近距离战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9156"] = { "弗莱拉斯大使",
"* 近战时持续使用火焰冲击：根据节奏进行技能释放或治疗。",
"* 燃烧之魂：通过大厅的符文，击杀元素会获得+5%伤害和最大50层效果：阻挡他们的路径并一路消灭。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9319"] = { "驯犬者格雷布玛尔",
"* 首先击杀牵引包：对狗的AOE和控制；对坦克的主宰。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9499"] = { "普拉格",
"* 酒馆老板（The Guzzler）：当他倒地时，整个酒馆的人会涌上来——顾客会成波次出现：坦克进行AOE，并且不要出现失误。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9502"] = { "法拉克斯",
"* 锻造大厅的机械守卫：向坦克施加持续的近战伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9537"] = { "霍尔雷·黑须",
"* 酒馆洞穴的醉汉：在优秀的坦克身后直接冲锋。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9938"] = { "玛格姆斯",
"* citadel giant: 针对坦克进行重型近战，并持续治疗。"
};

-- Lower/Upper Blackrock Spire : Zona 229 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9196"] = { "欧莫克大王",
"* 楼梯上的巨魔领主：对坦克进行持续的近战攻击，并保持持续治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9236"] = { "暗影猎手沃什加斯",
"* 影祭司：她的暗影箭会惩罚法师——注意对他们的治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9237"] = { "指挥官沃恩",
"* 战争大师：与坚定的坦克进行直接对抗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9568"] = { "维姆萨拉克",
"* 巢穴之主：持续近战和持续治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9736"] = { "军需官兹格雷斯",
"* 季度商：在优秀的坦克身后进行直线推进。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["9816"] = { "火焰卫士 Emberseer",
"* 锻造守卫：一旦他的仪式开始，他就会像其他人一样倒下——这是一场直线战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10220"] = { "哈雷肯",
"* 蜘蛛幼崽：对坦克进行近战，不要使用任何技能。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10264"] = { "索拉卡尔·火焰冠",
"* 孵化主：打开蛋会召唤德拉科尼德群 — 对群进行AOE攻击，并持续对Boss进行近战。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10268"] = { "奴役者基兹鲁尔",
"* 奴隶主：对坦克进行近战，不要使用任何技能。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10339"] = { "瓦尔奇·伦德·黑手",
"* 战争之主与他的龙[Gyth]在战斗中会倒下：给坦克提供强大的治疗，并注意龙的火焰。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10363"] = { "德拉基萨斯将军",
"* 顶翼的统帅：他的“燃烧之怒”（|cff71d5ff|Hspell:16805|h[Conflagration]|h|r）会点燃玩家——标记的玩家会立即离开队伍。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10429"] = { "瓦尔奇·伦德·黑手",
"* 战争之主与他的龙[Gyth]在战斗中会倒下：给坦克提供强大的治疗，并注意龙的火焰。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10430"] = { "野兽",
"* 野兽：它的咆哮会恐吓整个团队，并且会持续攻击坦克——需要持续治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10509"] = { "杰·瑞纽瓦奇",
"* 符文守护者：对坦克进行近战。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10584"] = { "尤洛克·暗嚎",
"* 源自洞穴祭坛的仪式：召唤会带来群攻——在与近战职业对抗之前，先清扫。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10596"] = { "烟网蛛后",
"* 蜘蛛母亲：她的结晶会使一个组员石化，她的毒液攻击近战——需要专注的治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10899"] = { "戈拉鲁克·安维克拉克",
"* 德拉科尼드의 장인: 在一个优秀的坦克身后进行近战。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16042"] = { "洛德·瓦尔塔拉克",
"* 圣骑士：他的召唤 (|cff71d5ff|Hspell:27249|h[Summon 刺客]|h|r) 召唤刺客——坦克负责收手，近战保持攻击。"
};

-- Onyxia's Lair : Zona 249 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10184"] = { "奥妮克希亚",
"* 第一阶段：她火焰吐息 (|cff71d5ff|Hspell:18435|h[Flame Breath]|h|r) 惩罚坦克，她的翅膀风 (|cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r) 将近战者向后推，她的击退 (|cff71d5ff|Hspell:19633|h[Knock Away]|h|r) 破坏坦克的控制。",
"* 第二阶段：空中攻击：对标记区域的火焰球 (|cff71d5ff|Hspell:18392|h[Fireball]|h|r)，以及她的深呼吸 (|cff71d5ff|Hspell:17086|h[Deep Breath]|h|r) 扫荡半个区域——聊天警告：跑向对侧。",
"* 第三阶段：落地后：所有技能都回来了，而且，她的咆哮 (|cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r) 恐吓一半的队伍；洞穴生物升起——对群攻进行AOE，同时保持Boss节奏。"
};

-- Dire Maul : Zona 429 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11486"] = { "托塞德林王子",
"* 守卫柱子的王子：他的护卫先倒，然后才是他。",
"* 他的召唤 (|cff71d5ff|Hspell:22995|h[Summon]|h|r) 填满了房间，而旋转攻击 (|cff71d5ff|Hspell:67037|h[Whirling Strike]|h|r) 在一个区域内造成伤害 — 尽快离开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11487"] = { "卡雷迪斯镇长",
"* 魔法师：在50%时，他会使用暗影形态(|cff71d5ff|Hspell:22917|h[暗影形态]|h|r)，并造成更高的伤害。",
"* 他的精神控制(|cff71d5ff|Hspell:7645|h[精神控制]|h|r)会偷取一名玩家：解除他们的魔法效果。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11488"] = { "伊琳娜·暗木",
"* 弓箭手：她的冲锋 (|cff71d5ff|Hspell:22911|h[冲锋]|h|r) 飞向最远距离，并且没有人站在焚烧陷阱上 (|cff71d5ff|Hspell:22910|h[焚烧陷阱]|h|r)。",
"* 击晕射 (|cff71d5ff|Hspell:22914|h[击晕射]|h|r) 减速，她的群体射 (|cff71d5ff|Hspell:30933|h[群体射]|h|r) 覆盖范围广：团队分散。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11489"] = { "特迪斯·扭木",
"* 古老的树：它的缠绕藤蔓（|cff71d5ff|Hspell:22924|h[Grasping Vines]|h|r）和根（|cff71d5ff|Hspell:22994|h[Entangle]|h|r）会缠住近战职业——清除（魔法和移动）。",
"* 他的践踏（|cff71d5ff|Hspell:5568|h[Trample]|h|r）会惩罚近战职业。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11490"] = { "泽弗里姆·索恩霍夫",
"* 他的牺牲 (|cff71d5ff|Hspell:22651|h[Sacrifice]|h|r) 吸引玩家并发送一个恶魔：现在杀死恶魔，同时让被标记的目标恢复。",
"* 剧痛 (|cff71d5ff|Hspell:22478|h[Intense Pain]|h|r) 攻击被标记的目标：治疗。",
"* 他的暗影之箭连发 (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) 在区域内进行惩罚：近战角色向后退。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11492"] = { "阿尔兹因，狂野塑形者",
"* 变形者：他会变成树形态 (|cff71d5ff|Hspell:22688|h[树形态]|h|r)，然后变成狼形态 (|cff71d5ff|Hspell:22660|h[狼形态]|h|r) — 每次转变都会改变战斗。",
"* 他的狂野再生 (|cff71d5ff|Hspell:7948|h[狂野再生]|h|r) 总是可以被打断：如果成功，他会恢复大量生命值。",
"* 疲劳 (|cff71d5ff|Hspell:22661|h[疲劳]|h|r) 和腐化 (|cff71d5ff|Hspell:22662|h[腐化]|h|r) 是疾病：德鲁伊可以清除它们。",
"* 撕裂 (|cff71d5ff|Hspell:22689|h[撕裂]|h|r) 会给坦克造成出血，他的根 (|cff71d5ff|Hspell:22415|h[缠绕根]|h|r) 会给法师束缚，而击退 (|cff71d5ff|Hspell:10101|h[击退]|h|r) 会将他们击飞。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11496"] = { "伊莫塔尔",
"* 被五个柱子囚禁的恶魔：当柱子爆炸时，他会获得自由——整个房间是战场。",
"* 他的眼睛 (|cff71d5ff|Hspell:22899|h[Eyes of Immol'thar]|h|r) 烧伤一名玩家，而踩踏 (|cff71d5ff|Hspell:5568|h[Trample]|h|r) 扫射近战。",
"* 他会打开传送门 (|cff71d5ff|Hspell:22950|h[Portal of Immol'thar]|h|r)，这些传送门会吐出小怪：坦克保持，同时对环形区域进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11501"] = { "国王戈多克",
"* 国王的狂战士冲锋（|cff71d5ff|Hspell:22886|h[狂战士冲锋]|h|r）猛击目标，他的致命打击（|cff71d5ff|Hspell:16856|h[致命打击]|h|r）会摧毁坦克（旋转两次）和战争踩踏（|cff71d5ff|Hspell:16727|h[战争踩踏]|h|r）会使区域内的目标眩晕。",
"* 他的“削弱盔甲”（|cff71d5ff|Hspell:15572|h[削弱盔甲]|h|r）会叠加在坦克身上：需要强大的注意力治疗。",
"* 为了完成任务：当他倒下时，每个守卫都活着，会使米泽尔的胸部变大。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13280"] = { "水生生物",
"* 圣所的水弹：他的riptide (|cff71d5ff|Hspell:22419|h[Riptide]|h|r) 在区域内造成伤害 — 近战职业会扩散。",
"* 他的Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) 在脚下爆发：离开水池。",
"* 在66%和33%时，他召唤hydrolings (|cff71d5ff|Hspell:22714|h[Summon Hydroling]|h|r)：对小怪造成范围伤害，并返回给坦克。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14321"] = { "卫兵芬格斯",
"* 守卫，没有记录的特殊技能——在稳固的坦克引导下进行直接的肉搏战。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14322"] = { "斯托姆珀·克里格",
"* 法庭上的醉酒者：他的酒喷 (|cff71d5ff|Hspell:22833|h[Booze Spit]|h|r) 形成一个锥形，他的战冲 (|cff71d5ff|Hspell:16740|h[War Stomp]|h|r) 在范围内震动。",
"* 旋风 (|cff71d5ff|Hspell:15578|h[Whirlwind]|h|r) 攻击近战，在 50% 时，醉酒怒 (|cff71d5ff|Hspell:22835|h[Drunken Rage]|h|r) 照亮他：准备好治疗。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14323"] = { "守卫 斯利克·基克",
"* 另一个没有记录特殊技能的卫兵——近战攻击坦克，并且没有失误。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14324"] = { "卓· rush",
"* 法庭的治疗者：他的治疗不会引起警报——在看到绿色技能时立即中断。",
"* 为了完成 tribute 任务，最好让他活着：当国王倒下时，让守卫站在他身边，这会增加 Mizzle 的伤害。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14325"] = { "船长克罗姆克拉斯",
"* 确保戈多克没有记录的特殊技能——在前排担任坦克，并让团队保持警惕。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14326"] = { "守卫莫尔达",
"* Shield Bash (|cff71d5ff|Hspell:11972|h[Shield Bash]|h|r) 可以中断，Shield Charge (|cff71d5ff|Hspell:15749|h[Shield Charge]|h|r) 可以对目标施加伤害：保持距离并确保后方有空间。",
"* His Strike (|cff71d5ff|Hspell:14516|h[Strike]|h|r) 攻击坦克，在 50% 时进入狂暴状态 (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r)：在最后阶段进行高伤害输出。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14327"] = { "莱斯滕德里斯",
"* 她的暗影弹雨 (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) 在范围内：近战角色需要分散。",
"* 她的诅咒 (|cff71d5ff|Hspell:13338|h[Curse of Thorns]|h|r 和 |cff71d5ff|Hspell:16247|h[Curse of Tongues]|h|r) 被移除，并点燃 (|cff71d5ff|Hspell:11962|h[Immolate]|h|r) 标记目标。",
"* 她的小精灵 Pimgib 变大 (|cff71d5ff|Hspell:22710|h[Enlarge]|h|r, 消除它)，吐出火焰冲击 (|cff71d5ff|Hspell:22713|h[Flame Buffet]|h|r)，该技能堆叠，他的冲击波 (|cff71d5ff|Hspell:15744|h[Blast Wave]|h|r) 在范围内平击。"
};

-- Molten Core : Zona 409 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11502"] = { "拉格纳罗斯",
"* 他的拉格纳罗斯的怒火 ({|cff71d5ff|Hspell:20566|h[Wrath of Ragnaros]|h|r) 惩罚前排：坦克保持站姿，治疗，其他玩家保持分散。",
"* 他每 ~3 分钟潜伏：他的火焰之子从深处升起——坦克将他们拉开，并在他返回之前消灭 (~90 秒)。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11663"] = { "管理者埃克索图斯",
"* 传送 (|cff71d5ff|Hspell:20534|h[传送]|h|r) 会重新排列整个团队：在不降低 DPS 和近战职业的情况下重新组织。",
"* 伤害盾 (|cff71d5ff|Hspell:21075|h[伤害盾]|h|r) 主要攻击近战职业，而自身则在盾持续时保持移动：盾持续时，近战职业必须停止。",
"* 他的火焰术士会治疗和保护自己：首先打断治疗，最后攻击主控职业。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11664"] = { "管理者埃克索图斯",
"* 传送 (|cff71d5ff|Hspell:20534|h[传送]|h|r) 会重新排列整个团队：在不降低 DPS 和近战职业的情况下重新组织。",
"* 伤害盾 (|cff71d5ff|Hspell:21075|h[伤害盾]|h|r) 主要攻击近战职业，而自身则在盾持续时保持移动：盾持续时，近战职业必须停止。",
"* 他的火焰术士会治疗和保护自己：首先打断治疗，最后攻击主控职业。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11982"] = { "玛格曼达",
"* 他的熔岩呼吸会造成恐慌 (|cff71d5ff|Hspell:19408|h[Panic]|h|r): 坦克将他拉开，恐惧的跑者前往火焰——需要专注的治疗。",
"* 他的狂暴 (|cff71d5ff|Hspell:19451|h[Frenzy]|h|r) 在低血量时会增加他的伤害：猎人使用镇静射击将其击倒，或者坦克使用治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11988"] = { "焚化者古雷曼格",
"* 他的地震 (|cff71d5ff|Hspell:19798|h[Earthquake]|h|r) 冲击近战：近战保持距离，用头部进行防御。",
"* 两个熔岩狂战士会跟随他：坦克将他们分开，避免他们使用【鲁莽冲锋】，DPS 保持在Boss身上。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12018"] = { "管理者埃克索图斯",
"* 传送 (|cff71d5ff|Hspell:20534|h[传送]|h|r) 会重新排列整个团队：在不降低 DPS 和近战职业的情况下重新组织。",
"* 伤害盾 (|cff71d5ff|Hspell:21075|h[伤害盾]|h|r) 主要攻击近战职业，而自身则在盾持续时保持移动：盾持续时，近战职业必须停止。",
"* 他的火焰术士会治疗和保护自己：首先打断治疗，最后攻击主控职业。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12056"] = { "迦顿男爵",
"* His Ignite Mana (|cff71d5ff|Hspell:19659|h[Ignite Mana]|h|r) bites casters and, if the mana runs dry, bursts on top of them: casters manage their tank of mana.",
"* 炸弹 (|cff71d5ff|Hspell:20475|h[Inferno]|h|r) 迫使一名玩家在爆炸前冲出队伍。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12057"] = { "加尔",
"* 他的熔岩锁链 (|cff71d5ff|Hspell:19496|h[Magma Shackles]|h|r) 根：近战角色打破节奏并返回；他的焚烧 (|cff71d5ff|Hspell:15732|h[Immolate]|h|r) 对一名玩家持续造成伤害。",
"* 魔法反弹 (|cff71d5ff|Hspell:19492|h[Anti-Magic Pulse]|h|r) 清除团队的魔法增益：每次脉冲后，盾牌会恢复。",
"* 他的火焰战士在死亡时爆炸 (|cff71d5ff|Hspell:20506|h[Firesworn]|h|r)：近战角色从尸体上撤退——持续范围攻击，直到所有尸体都被清除。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12098"] = { "萨弗隆先驱者",
"* 他的4名火焰治疗者必须先手：每次他们释放治疗效果时立即中断，并在他之前将其击落。",
"* 他的“激励”（|cff71d5ff|Hspell:19779|h[Inspire]|h|r）会在生效瞬间生效：猎人可以将其击落或使其被净化。",
"* “拉格纳罗斯之手”（|cff71d5ff|Hspell:19780|h[Hand of Ragnaros]|h|r）会使目标眩晕并造成范围伤害——分散；他的“痛苦之词”（|cff71d5ff|Hspell:19776|h[Shadow Word: Pain]|h|r）和“焚烧”（|cff71d5ff|Hspell:20294|h[Immolate]|h|r）会针对标记的目标造成治疗效果。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12099"] = { "加尔",
"* 他的熔岩锁链 (|cff71d5ff|Hspell:19496|h[Magma Shackles]|h|r) 根：近战角色打破节奏并返回；他的焚烧 (|cff71d5ff|Hspell:15732|h[Immolate]|h|r) 对一名玩家持续造成伤害。",
"* 魔法反弹 (|cff71d5ff|Hspell:19492|h[Anti-Magic Pulse]|h|r) 清除团队的魔法增益：每次脉冲后，盾牌会恢复。",
"* 他的火焰战士在死亡时爆炸 (|cff71d5ff|Hspell:20506|h[Firesworn]|h|r)：近战角色从尸体上撤退——持续范围攻击，直到所有尸体都被清除。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12118"] = { "鲁西弗隆",
"* 他的即将到来的毁灭（|cff71d5ff|Hspell:19702|h[Impending Doom]|h|r）会在落地后几秒内爆发，影响整个团队：保持治疗可以抵挡。",
"* 他的诅咒（|cff71d5ff|Hspell:19703|h[Lucifron's Curse]|h|r）使法术消耗更多——尽快解除它；法师要保持法力。",
"* 他的心灵控制（|cff71d5ff|Hspell:20604|h[Mind Control]|h|r）会控制一名玩家：团队的中断可以解除它，被控制的玩家依靠治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12259"] = { "基赫纳斯",
"* 他的诅咒（|cff71d5ff|Hspell:19716|h[Gehennas' Curse]|h|r）会回复生命值——立即解除；法师会受到他的雨的范围影响。",
"* 火雨（|cff71d5ff|Hspell:19717|h[Rain of Fire]|h|r）会形成区域：分散；他的拳击（|cff71d5ff|Hspell:20277|h[Fist of Gehennas]|h|r）会击打标记目标。",
"* 他的两个影子卫兵会跟随他：坦克分开，AOE攻击，没有人偏离控制。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12264"] = { "沙斯拉尔",
"* 他的诅咒 (|cff71d5ff|Hspell:19713|h[Shazzrah's Curse]|h|r) 使团队脆弱，易受魔法伤害：解除它。",
"* 他的“解除魔法” (|cff71d5ff|Hspell:19714|h[Deaden Magic]|h|r) 惩罚标记的法师：积极的治疗；他的“反制法术” (|cff71d5ff|Hspell:19715|h[Counterspell]|h|r) 沉默法师。",
"* 他横扫整个团队 (|cff71d5ff|Hspell:23138|h[Gate of Shazzrah]|h|r)：坦克重新抓住他，而不会失去控制。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228432"] = { "加尔",
"* 与经典的熔岩锁链（19496）、标记为“焚烧”（15732）和“反魔法脉冲”（19492）相同：重制版本更强——治疗和控制保持阵线。",
"* Firesworn 在死亡时仍然爆炸：近战角色会从尸体上退开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228437"] = { "管理者埃克索图斯",
"* 传送 (20534) 重新排列队伍，就像经典版本一样，他的伤害盾 (21075) 阻止近战：同样的反应，更重的攻击。",
"* 他的火焰术士会治疗：首先打断他们的治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228834"] = { "加尔",
"* 与经典的熔岩锁链（19496）、标记为“焚烧”（15732）和“反魔法脉冲”（19492）相同：重制版本更强——治疗和控制保持阵线。",
"* Firesworn 在死亡时仍然爆炸：近战角色会从尸体上退开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228836"] = { "管理者埃克索图斯",
"* 传送 (20534) 重新排列队伍，就像经典版本一样，他的伤害盾 (21075) 阻止近战：同样的反应，更重的攻击。",
"* 他的火焰术士会治疗：首先打断他们的治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228837"] = { "管理者埃克索图斯",
"* 传送 (20534) 重新排列队伍，就像经典版本一样，他的伤害盾 (21075) 阻止近战：同样的反应，更重的攻击。",
"* 他的火焰术士会治疗：首先打断他们的治疗。"
};

-- Ragefire Chasm : Zona 389 (classic) --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11517"] = { "奥格弗林",
"* 前方攻击（撕裂/撕咬）：坦克让他背向队伍，避免前置伤害对近战或治疗者造成伤害。",
"* 先杀死他的小怪。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11518"] = { "杰戈什，召唤者",
"* 他会带来两个小怪：一个控制，另一个专注于造成伤害，一旦两个都死了，剩下的就只是简单的坦克和输出。",
"* 他的 |cff71d5ff|Hspell:20800|h[Immolate]|h|r 造成持续伤害（尽快解除），他的 |cff71d5ff|Hspell:18267|h[Curse of Weakness]|h|r 降低伤害和力量：用魔法解除。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11519"] = { "巴扎兰",
"* 他坐在最终坡的顶端，两侧有两位狂热者：你可以先单独拉一个生物，然后再攻击Boss。",
"* 控制剩下的生物，然后攻击Boss；注意他的 |cff71d5ff|Hspell:744|h[致命毒液]|h|r对坦克的影响：它不会消失，必须进行净化（德鲁伊净化或抗毒）。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11520"] = { "塔拉加曼，饥饿者",
"* 他的 |cff71d5ff|Hspell:11970|h[火焰冲击波]|h|r 攻击周围的一切：近战玩家在它落下的前一刻后退；远程和治疗玩家保持最大距离。",
"* 他的 |cff71d5ff|Hspell:18072|h[上抛]|h|r 将坦克击飞：将他放置在熔岩边缘之外，以防止击退将任何人击入熔岩中。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61408"] = { "阿达罗格",
"* 他将目光锁定在一个玩家身上，并冲向该点（地狱冲刺）：它会击中他路径上的所有人或靠近冲击点的人；被标记的玩家跑出该区域，而团队不会越过该区域。",
"* 他的火焰呼吸会随机点燃一个目标：治疗者保持战斗状态。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61412"] = { "黑暗萨满柯兰萨",
"* 他的扭曲元素弹（暗影伤害）可以被打断：每次被打断，伤害就不会生效。",
"* 他的暗影风暴在区域内降下扭曲的魔法：请让治疗者做好准备，分散火力。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61463"] = { "焰喉",
"* 轻松的初始战斗：他会随机喷射熔岩，攻击距离在3码内；离开攻击范围。",
"* 在准确的五次喷射后，他会潜入并出现在另一个边缘：重新调整位置，当他再次出现时。",
"* 他的攻击范围很大：近战角色可以在平台上方轻松击败他，无需跨越熔岩坑。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61528"] = { "熔岩守卫戈多斯",
"* 他的地震冲击和地面裂缝会用物理伤害和击退效果惩罚附近的区域：坦克和近战职业要注意脚下的安全，不要聚集在一起。",
"* 在30%血量时，他会进入狂暴状态（攻击速度+30%和伤害+10%）：与治疗师一起进行最后的爆发战。"
};

-- Blackwing Lair : Zona 469 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11583"] = { "奈法利安",
"* 第一阶段：从大厅的侧墙上涌出大量的生物 — 坦克控制它们，并在不丢失节奏的情况下清理它们。",
"* 职业技能会每约 30 秒出现一次：每个技能都会召唤不同的职业 — 阅读聊天警告并保持冷静。",
"* 他的暗影之火 (|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r) 攻击前方，他的咆哮 (|cff71d5ff|Hspell:22686|h[Roar]|h|r) 恐吓整个团队：分散注意力，持续治疗，并有坚定的坦克。",
"* 第三阶段：落地时，骨堆释放骷髅 — 使用头部进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11981"] = { "弗莱格尔",
"* 他的影焰 (22539) 和翅膀风暴 (23339)：相同的柱子攻击。",
"* 他的狂暴 (|cff71d5ff|Hspell:23342|h[Frenzy]|h|r) 在安抚射击下平静：猎人会在它出现时立即将其沉默。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11983"] = { "费尔默",
"* 他的影焰 (|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r) 扫过前方：法师在柱子后面可以切断视线。",
"* 火焰盛宴 (|cff71d5ff|Hspell:23341|h[Flame Buffet]|h|r) 在所有可见的目标上叠加魔法伤害：在柱子后面停留，并让飞行之翼 (|cff71d5ff|Hspell:23339|h[Wing Buffet]|h|r) 将坦克击飞。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12017"] = { "勒什雷尔",
"* 他的冲击波 (|cff71d5ff|Hspell:23331|h[冲击波]|h|r) 将附近的任何人都推向房间的另一边：在走廊上分散，并与近战职业保持距离。",
"* 击退 (|cff71d5ff|Hspell:18670|h[击退]|h|r) 将附近的近战职业击退，他的致命一击 (|cff71d5ff|Hspell:24573|h[致命一击]|h|r) 堆叠在坦克身上：两个坦克轮流进行。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12435"] = { "狂野的拉佐格尔",
"* 第一阶段：小队一次一次地打破栅栏内的蛋；与此同时，会涌入各种小怪和龙 — 用头部进行范围攻击，并在坦克上进行治疗。",
"* 第二阶段，蛋被打破后，Boss开始独自行动：他的火焰球 (|cff71d5ff|Hspell:22425|h[Fireball Volley]|h|r) 造成范围伤害，他的烈焰 (|cff71d5ff|Hspell:23023|h[Conflagration]|h|r) 点燃目标 — 范围攻击和治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["13020"] = { "堕落的瓦拉斯塔兹",
"* 他的火焰呼吸 (|cff71d5ff|Hspell:23461|h[火焰呼吸]|h|r) 攻击坦克：强大的治疗和一套，如果他咬住了。",
"* 红色精华 (|cff71d5ff|Hspell:18173|h[红色精华]|h|r) 将整个团队浸泡在魔法和速度中：战斗以全速进行，DPS永不减速。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["14020"] = { "克洛玛古斯",
"* 他的两个呼吸在走廊中随机旋转：每个都绘制自己的区域 — 近战重新定位到哪个区域。",
"* 四个血统：红色 (|cff71d5ff|Hspell:23155|h[血统：红色]|h|r) 是疾病，如果无人解除，则治疗他；绿色 (|cff71d5ff|Hspell:23169|h[血统：绿色]|h|r) 是毒；蓝色 (|cff71d5ff|Hspell:23153|h[血统：蓝色]|h|r) 是魔法；黑色 (|cff71d5ff|Hspell:23154|h[血统：黑色]|h|r) 是诅咒 — 驱散甲板上的所有类型。",
"* 他的狂暴 (|cff71d5ff|Hspell:23128|h[狂暴]|h|r) 在安抚射击下平静，而怒火 (|cff71d5ff|Hspell:23537|h[怒火]|h|r) 最终到达：DPS 必须尽快行动。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["14601"] = { "埃博诺克",
"* 他的影焰 (22539) 和翅膀风暴 (23339) 镜像火魔：在柱子后面。",
"* 他的影 ( |cff71d5ff|Hspell:23340|h[影之暗龙]|h|r) 标记坦克：带有标记，每次攻击他都会治疗龙——两个坦克和在它逃跑时进行交接。"
};

-- Temple of Ahn'Qiraj : Zona 531 (classic) --

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15263"] = { "预言者斯克拉姆",
"* 他会瞬间移动到房间的另一端 (|cff71d5ff|Hspell:20449|h[传送]|h|r)，并在自己的形象下召唤出一群复制体 (|cff71d5ff|Hspell:747|h[召唤复制]|h|r)：坦克持有原始体，而克隆体则会倒下。",
"* 他的心灵控制 (|cff71d5ff|Hspell:785|h[心灵控制]|h|r)会控制一名玩家：被控制的玩家在治疗的同时，由团队成员将其释放。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15275"] = { "双帝",
"* 两个双胞胎会不断交换位置 (|cff71d5ff|Hspell:800|h[传送]|h|r): 前排坦克重新站稳，DPS 成员分散。",
"* 攻击型双胞胎会干扰坦克 (|cff71d5ff|Hspell:26613|h[失衡打击]|h|r)，而另一人则攻击法师——两个坦克，一人对应一个双胞胎。",
"* 变异的昆虫 (|cff71d5ff|Hspell:802|h[变异昆虫]|h|r) 从地板上爬出来——用头进行范围攻击，不要忘记攻击双胞胎。"
};

-- [editor web 2026-10-15] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15276"] = { "双帝",
"* 两个双胞胎会不断交换位置 (|cff71d5ff|Hspell:800|h[传送]|h|r): 前排坦克重新站稳，DPS 成员分散。",
"* 攻击型双胞胎会干扰坦克 (|cff71d5ff|Hspell:26613|h[失衡打击]|h|r)，而另一人则攻击法师——两个坦克，一人对应一个双胞胎。",
"* 变异的昆虫 (|cff71d5ff|Hspell:802|h[变异昆虫]|h|r) 从地板上爬出来——用头进行范围攻击，不要忘记攻击双胞胎。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15299"] = { "维希度斯",
"* 毒弹连击 (|cff71d5ff|Hspell:25991|h[Poison Bolt Volley]|h|r) 会有波浪效果：治疗者保持节奏。",
"* 冰冻效果会冻结他：冰冻法师持续攻击他，直到他完全冻结；物理攻击会打破他——近战角色在冰冻时冲入攻击。",
"* 他会复原，并且循环会重复：耐心，并进行治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15509"] = { "哈霍兰公主",
"* 她的毒刺（|cff71d5ff|Hspell:26180|h[Wyvern Sting]|h|r）会标记玩家，她的毒液（|cff71d5ff|Hspell:26053|h[Noxious Poison]|h|r）会覆盖整个团队：通过水池，然后离开。",
"* 她的酸会攻击坦克（|cff71d5ff|Hspell:26050|h[Acid Spit]|h|r），她的狂暴（|cff71d5ff|Hspell:26051|h[Frenzy]|h|r）会使观察者处于麻痹状态——猎人。",
"* 在30%时，她进入狂怒状态（|cff71d5ff|Hspell:26068|h[Berserk]|h|r）：全速前进直到倒下——DPS和治疗在边缘。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15510"] = { "顽强的范克瑞斯",
"* 他的缠绕 (|cff71d5ff|Hspell:720|h[Entangle]|h|r) 会留下多个缠绕：在不掉线的情况下切断网。",
"* 致命伤 (|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r) 针对坦克：两个坦克；他的召唤的蠕虫 (|cff71d5ff|Hspell:25831|h[Worm Call]|h|r|cff71d5ff|Hspell:26631|h[Worm Spawn]|h|r) 会轮流出现 — 用头部进行范围攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15511"] = { "丝莉提德王族",
"* 同时攻击三个皇家：坦克先攻击，然后一人一人的近战清理。",
"* 他们的治疗 (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r) 每次都会被打断；恐惧 (|cff71d5ff|Hspell:26580|h[Fear]|h|r) 会分散团队 — 散开并保持。",
"* 毒弹 (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r) 攻击近战：通过毒药来治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15516"] = { "沙尔图拉",
"* 她的旋风 (|cff71d5ff|Hspell:26083|h[Whirlwind]|h|r) 在房间里旋转，并在飞行中改变目标：近战玩家在它开始时退开，坦克在它切换时重新控制她。",
"* 在低血量时，她会狂暴 (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r)：输出角色进行攻击，治疗者保持连击。",
"* 她的皇家卫兵会跟随她：一个坦克分开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15517"] = { "奥罗",
"* 他的扫击 (|cff71d5ff|Hspell:26103|h[Sweep]|h|r) 将坦克甩到墙上：让它始终抓住：永远不要松开。",
"* 他每 ~3 分钟潜入，让地板上到处都是甲虫：在他不在的时候，可以轻松地进行范围攻击。",
"* 他的狂暴 (|cff71d5ff|Hspell:26615|h[Berserk]|h|r) 在末端：DPS 冲向它，以便在它开始之前。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15543"] = { "丝莉丝女王",
"* 同时攻击三个皇家：坦克先攻击，然后一人一人的近战清理。",
"* 他们的治疗 (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r) 每次都会被打断；恐惧 (|cff71d5ff|Hspell:26580|h[Fear]|h|r) 会分散团队 — 散开并保持。",
"* 毒弹 (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r) 攻击近战：通过毒药来治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15544"] = { "丝莉丝女王",
"* 同时攻击三个皇家：坦克先攻击，然后一人一人的近战清理。",
"* 他们的治疗 (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r) 每次都会被打断；恐惧 (|cff71d5ff|Hspell:26580|h[Fear]|h|r) 会分散团队 — 散开并保持。",
"* 毒弹 (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r) 攻击近战：通过毒药来治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15589"] = { "克苏恩",
"* 眼睛睁开并发出旋转光束：团队分散，没有人站在光束中。",
"* 爪子和眼睛触须每隔几秒钟伸出：爪子用于近战，眼睛用于远程——快速清除它们，并清除对坦克。",
"* 每一次削弱窗口（约45秒）是DPS全力输出的时机：清理剩余的怪物。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15727"] = { "克苏恩",
"* 眼睛睁开并发出旋转光束：团队分散，没有人站在光束中。",
"* 爪子和眼睛触须每隔几秒钟伸出：爪子用于近战，眼睛用于远程——快速清除它们，并清除对坦克。",
"* 每一次削弱窗口（约45秒）是DPS全力输出的时机：清理剩余的怪物。"
};

-- Ruins of Ahn'Qiraj : Zona 509 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15339"] = { "无疤者奥斯里安",
"* 他的 Supreme 模式 (|cff71d5ff|Hspell:25176|h[Supreme Mode]|h|r) 在下一个水晶出现之前是不可击中的：房间会冲向点亮它们。",
"* 每一个水晶都会掉落一个弱点（火焰 25177，寒冰 25178，自然 25180，奥术 25181，暗影 25183）：DPS 立即用对应的技能攻击。",
"* 旋风 (|cff71d5ff|Hspell:25189|h[Cyclone]|h|r) 旋转并施加 诅咒之语 (|cff71d5ff|Hspell:25195|h[Curse of Tongues]|h|r) 减速法师——解除诅咒。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15340"] = { "莫阿姆",
"* 他的法术会持续消耗法力，使法师和DPS受到影响。",
"* 他的石化形态 (|cff71d5ff|Hspell:25685|h[石化形态]|h|r) 在生命值较低时会冻结战斗，并唤醒他的爪牙：在石化之前优先提升DPS。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15341"] = { "拉贾克斯将军",
"* 旗帜的浪潮：第一个人带着队长，最后一个是将军本人——坦克负责每个波，并按顺序清除。",
"* 他的雷霆冲击 (|cff71d5ff|Hspell:25599|h[Thunder Crash]|h|r) 造成范围伤害：扩散；瘟疫云会冲击地面——远离水池。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15348"] = { "库林纳克斯",
"* 他的沙坑 (|cff71d5ff|Hspell:25656|h[Sand Trap]|h|r) 吞噬标记目标：坦克移动时会触发，并治疗倒地的队友。",
"* 他的致命伤 (|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r) 叠加在坦克身上：两个坦克轮流攻击；他的狂暴 (|cff71d5ff|Hspell:26527|h[Frenzy]|h|r) 在最后 — DPS 负责输出。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15369"] = { "狩猎者阿亚米斯",
"* 他的麻痹 (|cff71d5ff|Hspell:25725|h[Paralyze]|h|r) 标记祭坛献祭：在麻痹期间立即治疗受麻痹的目标。",
"* 在低血量时，他悬浮在空中：只有远程攻击才能命中他——近战攻击必须在地面上。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15370"] = { "吞咽者布鲁",
"* 他选择一名玩家并追击：被追击者将他引开，远离团队。",
"* 他的蛋在他前进的路上爆炸，伤害他：被追击者让他踩在上面，进入终点。",
"* 他的“撕裂”(|cff71d5ff|Hspell:96|h[Dismember]|h|r)效果叠加在坦克身上：当他咬时，保持强力。"
};

-- Naxxramas : Zona 533 (classic) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15928"] = { "塔迪乌斯",
"* 两个构造体首先对坦克发动攻击：分散和均匀的治疗。",
"* 极性转变（|cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r）对整个团队造成伤害：在一个侧面增加，在另一个侧面减少——没有人会改变阵营。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15931"] = { "格罗布鲁斯",
"* mutating 注入 (|cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r) 标记一名玩家，并且它的云 (|cff71d5ff|Hspell:28240|h[Poison Cloud]|h|r) 在爆炸时会产生毒性：被标记的玩家在爆炸前会离开队伍。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15932"] = { "格拉斯",
"* 死亡之刃（|cff71d5ff|Hspell:28374|h[Decimate]|h|r）让整个团队的生命值降至 5%：在呼叫时提供强大的治疗。",
"* 房间里的僵尸朝它冲去，并接触时对其进行治疗：切断路径，让AOE结束它们。",
"* 它的狂暴（|cff71d5ff|Hspell:28371|h[Frenzy]|h|r）在镇静射击下消失，而它的怒火（|cff71d5ff|Hspell:26662|h[Enrage]|h|r）在最后出现：需要集中火力。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15936"] = { "肮脏的希尔盖",
"* 地面会在回合中爆发：他的不洁舞蹈 (|cff71d5ff|Hspell:29350|h[Unclean Dance]|h|r) 会带领团队走过四弧图案——学习步骤，并时刻注意地面。",
"* 有时他会跳到玩家旁边 (|cff71d5ff|Hspell:30211|h[Teleport]|h|r)：标记的路线和在场上的治疗。",
"* 他的不洁影响 (|cff71d5ff|Hspell:29998|h[Unclean Affliction]|h|r) 会在接触者身上累积：尽早清除疾病。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15952"] = { "迈克斯纳",
"* 她的蛛丝束缚 (|cff71d5ff|Hspell:28622|h[Web Wrap]|h|r) 缠绕玩家：立即切断蛛丝。",
"* 她的幼蛛 (|cff71d5ff|Hspell:29434|h[Summon Spiderlings]|h|r) 每次蛛丝束缚后出现：在他们的路径上进行AOE。",
"* 喷射 (|cff71d5ff|Hspell:29484|h[Web Spray]|h|r) 每次都会使整个团队眩晕，并且她的狂暴 (|cff71d5ff|Hspell:28747|h[Frenzy]|h|r) 在最后咬：DPS 降至 30%。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15953"] = { "黑女巫法琳娜",
"* 幽灵拥抱（|cff71d5ff|Hspell:28732|h[幽灵拥抱]|h|r）让她沉默：击杀她的追随者会加强她。",
"* 拥抱结束后，她的狂暴（|cff71d5ff|Hspell:28131|h[狂暴]|h|r）生效：强大的治疗和输出，快速结束战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15954"] = { "药剂师诺斯",
"* 他会传送至阳台 (|cff71d5ff|Hspell:29208|h[Blink]|h|r)，每回合都会进行：骷髅生物停留在下方——范围攻击可以清除它们。",
"* 他的瘟疫诅咒 (|cff71d5ff|Hspell:29213|h[Curse of the Plaguebringer]|h|r) 会攻击标记的目标：立即解除它，否则会在他返回时爆炸。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15956"] = { "阿努布雷坎",
"* 他的 Locust Swarm (|cff71d5ff|Hspell:28785|h[Locust Swarm]|h|r) 扫荡房间：在叫喊时进入中心的圆形，并在它过去时返回。",
"* 他的 Impale (|cff71d5ff|Hspell:28783|h[Impale]|h|r) 击退近战者：与边缘进行格斗，并由坦克坚定地进行。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15989"] = { "萨菲隆",
"* 他的生命汲取 (|cff71d5ff|Hspell:28542|h[Life Drain]|h|r) 攻击标记目标：现在移除诅咒。",
"* 他的冰块 (|cff71d5ff|Hspell:28522|h[Icebolt]|h|r) 保持站立：当龙抬起时，靠近一个，因为他的深呼吸会扫荡房间。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15990"] = { "克尔苏加德",
"* 他的心灵控制链 (|cff71d5ff|Hspell:28410|h[Chains of Kel'Thuzad]|h|r) 需要多次攻击：被控制的目标会受到无情压制，直到它消失。",
"* 影裂 (|cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r) 会使目标陷入眩晕：立刻从水中离开。",
"* 冰霜冲击 (|cff71d5ff|Hspell:27808|h[Frost Blast]|h|r) 会使目标冻结，同时还会影响房间内的其他玩家：即使是治疗效果也会减弱。",
"* 最终，墓穴守卫进入：坦克会优先处理他们，然后继续战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16011"] = { "洛欧塞布",
"* 治疗孢子 (|cff71d5ff|Hspell:29234|h[Fungal Creep]|h|r) 随着节奏爆发：近战立即吸收它们——这就是战斗中的治疗。",
"* 不可避免的死亡 (|cff71d5ff|Hspell:29204|h[Inevitable Doom]|h|r) 咬击标记，与腐烂之力的时钟同步：治疗被压制，DPS 爆发。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16028"] = { "帕奇维克",
"* 他的愤怒之击攻击距离内生命值最高的近战目标：与同一生命值等级，甚至治疗的目标。",
"* 当生命值减半时，他的狂暴（|cff71d5ff|Hspell:28131|h[狂暴]|h|r）生效：坦克保持强力，治疗效果翻倍。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16060"] = { "收割者戈提克",
"* 房间被分为生者和死者两部分：每侧都占据一半，直到合并。",
"* 他的跳跃横跨房间 (|cff71d5ff|Hspell:28025|h[传送]|h|r 到 |cff71d5ff|Hspell:28026|h[传送死者]|h|r)：一旦合并，坦克将其固定，DPS进行攻击。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16061"] = { "教官拉苏维奥斯",
"* 辅助者会用嘲讽将他拉走：两个人在轮流使用，真正的坦克无法靠近。",
"* 他的扰乱的吼叫 (|cff71d5ff|Hspell:29107|h[Disrupting Shout]|h|r) 扫射近战：在喊叫时退开。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16062"] = { "四位骑士",
"* 四人一组，每个人占据一个角落：坦克将他们分成两组，DPS则以轮流的方式分散。",
"* 陨石 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 攻击它：每个骑手的最接近的人——坦克保持警惕。",
"* 虚空区域 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 在脚下打开：一次性离开圆圈。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16063"] = { "四位骑士",
"* 四人一组，每个人占据一个角落：坦克将他们分成两组，DPS则以轮流的方式分散。",
"* 陨石 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 攻击它：每个骑手的最接近的人——坦克保持警惕。",
"* 虚空区域 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 在脚下打开：一次性离开圆圈。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16064"] = { "四位骑士",
"* 四人一组，每个人占据一个角落：坦克将他们分成两组，DPS则以轮流的方式分散。",
"* 陨石 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 攻击它：每个骑手的最接近的人——坦克保持警惕。",
"* 虚空区域 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 在脚下打开：一次性离开圆圈。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16065"] = { "四位骑士",
"* 四人一组，每个人占据一个角落：坦克将他们分成两组，DPS则以轮流的方式分散。",
"* 陨石 (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) 攻击它：每个骑手的最接近的人——坦克保持警惕。",
"* 虚空区域 (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) 在脚下打开：一次性离开圆圈。"
};

-- Blackrock Depths : Zona 2792 (10-15 band remaster) --

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226302"] = { "弗莱拉斯大使",
"* 近战时持续发射火焰冲击波：使用旋转或有节奏的治疗。",
"* 燃烧之灵：他从房间的符文召唤元素；任何一个到达他的人会牺牲自己，获得 +5% 伤害和大小加成，最多 50 个：阻挡他们的道路并一路消灭他们。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226303"] = { "贝尔加",
"* 熔岩冲击：每 3 秒施放一次，持续 24 秒，最多叠加 3 次，主要针对坦克：坦克轮转或使用驱散。",
"* 召唤生物：随机施放火焰冲击，并召唤一个泥沼生物：坦克抓住它，生物会迅速死亡。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226304"] = { "伊森迪奥斯",
"* 元素之主诅咒：降低 100-132 的火焰抗性，持续 30 秒，最多三次：被标记的目标远离火焰。",
"* 强力一击：一次攻击，让坦克向后飞，周围充满熔岩：背靠墙。",
"* 火焰风暴：对附近的区域造成 30 秒伤害，并使他的爆炸波扩散 20 米：近战角色退后，治疗者保护。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226305"] = { "达格兰·索瑞森大帝",
"* 火焰之灵：10秒内完全免疫法术，并且他的挥击会附加火焰：法师在此时需要保持距离。",
"* 泰瑞西安之手：一个火焰冲击，使目标5秒眩晕：最好不要成群，这样不会同时失去多个目标。",
"* 铁敌：来自他传奇战锤的被动效果，最多可以附加3次额外挥击，并且关键击率提高10%，持续5秒：坦克可以利用这个机会进行治疗。",
"* 莫伊拉·布伦兹贝德在旁边战斗：她偶尔会治疗他，并使用圣光和暗影魔法进行惩罚：控制她，或者如果团队赶时间，则在击败她之前杀死她。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226306"] = { "傀儡统帅阿格曼奇",
"* 闪电链会跳跃到附近的玩家之间：保持分散，直到它结束。",
"* 他与两个构造体一起战斗：坦克将它们分开并分享威胁。",
"* 注意版本：他的灵魂可以附身在倒下的傀儡身上，倒下的身体并不总是结束战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226307"] = { "七",
"* 舞动的七个幽灵矮人，在锻造大厅中，一个接一个，每个人都使用自己的经典技能。",
"* 战士 Anger'rel：对坦克使用英雄级突击和破甲，在回合中使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤一个孵魔或虚空行者，并施放恐惧：解除恐惧并杀死召唤物。",
"* 盗贼 Dope'rel：从背后使用毒药的 Gouge，以及消失：没人能在他背对着时站立。",
"* 萨满 Gloom'rel：使用符文，大地冲击和增益移除：符文在弹出后立即死亡。",
"* 法师 Hate'rel：使用冰霜冲击，暴风雪和变形：切断变形，并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，放置陷阱，并释放野兽宠物：小心地缩小距离。",
"* 牧师 Vile'rel：使用闪光治疗，使用力量之词：盾牌，并施放心灵控制：首先中断治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226308"] = { "七",
"* 舞动的七个幽灵矮人，在锻造大厅中，一个接一个，每个人都使用自己的经典技能。",
"* 战士 Anger'rel：对坦克使用英雄级突击和破甲，在回合中使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤一个孵魔或虚空行者，并施放恐惧：解除恐惧并杀死召唤物。",
"* 盗贼 Dope'rel：从背后使用毒药的 Gouge，以及消失：没人能在他背对着时站立。",
"* 萨满 Gloom'rel：使用符文，大地冲击和增益移除：符文在弹出后立即死亡。",
"* 法师 Hate'rel：使用冰霜冲击，暴风雪和变形：切断变形，并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，放置陷阱，并释放野兽宠物：小心地缩小距离。",
"* 牧师 Vile'rel：使用闪光治疗，使用力量之词：盾牌，并施放心灵控制：首先中断治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226309"] = { "七",
"* 舞动的七个幽灵矮人，在锻造大厅中，一个接一个，每个人都使用自己的经典技能。",
"* 战士 Anger'rel：对坦克使用英雄级突击和破甲，在回合中使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤一个孵魔或虚空行者，并施放恐惧：解除恐惧并杀死召唤物。",
"* 盗贼 Dope'rel：从背后使用毒药的 Gouge，以及消失：没人能在他背对着时站立。",
"* 萨满 Gloom'rel：使用符文，大地冲击和增益移除：符文在弹出后立即死亡。",
"* 法师 Hate'rel：使用冰霜冲击，暴风雪和变形：切断变形，并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，放置陷阱，并释放野兽宠物：小心地缩小距离。",
"* 牧师 Vile'rel：使用闪光治疗，使用力量之词：盾牌，并施放心灵控制：首先中断治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226310"] = { "七",
"* 舞动的七个幽灵矮人，在锻造大厅中，一个接一个，每个人都使用自己的经典技能。",
"* 战士 Anger'rel：对坦克使用英雄级突击和破甲，在回合中使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤一个孵魔或虚空行者，并施放恐惧：解除恐惧并杀死召唤物。",
"* 盗贼 Dope'rel：从背后使用毒药的 Gouge，以及消失：没人能在他背对着时站立。",
"* 萨满 Gloom'rel：使用符文，大地冲击和增益移除：符文在弹出后立即死亡。",
"* 法师 Hate'rel：使用冰霜冲击，暴风雪和变形：切断变形，并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，放置陷阱，并释放野兽宠物：小心地缩小距离。",
"* 牧师 Vile'rel：使用闪光治疗，使用力量之词：盾牌，并施放心灵控制：首先中断治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226311"] = { "七",
"* 舞动的七个幽灵矮人，在锻造大厅中，一个接一个，每个人都使用自己的经典技能。",
"* 战士 Anger'rel：对坦克使用英雄级突击和破甲，在回合中使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤一个孵魔或虚空行者，并施放恐惧：解除恐惧并杀死召唤物。",
"* 盗贼 Dope'rel：从背后使用毒药的 Gouge，以及消失：没人能在他背对着时站立。",
"* 萨满 Gloom'rel：使用符文，大地冲击和增益移除：符文在弹出后立即死亡。",
"* 法师 Hate'rel：使用冰霜冲击，暴风雪和变形：切断变形，并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，放置陷阱，并释放野兽宠物：小心地缩小距离。",
"* 牧师 Vile'rel：使用闪光治疗，使用力量之词：盾牌，并施放心灵控制：首先中断治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226312"] = { "七",
"* 舞动的七个幽灵矮人，在锻造大厅中，一个接一个，每个人都使用自己的经典技能。",
"* 战士 Anger'rel：对坦克使用英雄级突击和破甲，在回合中使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤一个孵魔或虚空行者，并施放恐惧：解除恐惧并杀死召唤物。",
"* 盗贼 Dope'rel：从背后使用毒药的 Gouge，以及消失：没人能在他背对着时站立。",
"* 萨满 Gloom'rel：使用符文，大地冲击和增益移除：符文在弹出后立即死亡。",
"* 法师 Hate'rel：使用冰霜冲击，暴风雪和变形：切断变形，并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，放置陷阱，并释放野兽宠物：小心地缩小距离。",
"* 牧师 Vile'rel：使用闪光治疗，使用力量之词：盾牌，并施放心灵控制：首先中断治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226313"] = { "七",
"* 舞动的七个幽灵矮人，在锻造大厅中，一个接一个，每个人都使用自己的经典技能。",
"* 战士 Anger'rel：对坦克使用英雄级突击和破甲，在回合中使用战吼和冲击波。",
"* 法师 Doom'rel：使用暗影之箭和痛苦诅咒，召唤一个孵魔或虚空行者，并施放恐惧：解除恐惧并杀死召唤物。",
"* 盗贼 Dope'rel：从背后使用毒药的 Gouge，以及消失：没人能在他背对着时站立。",
"* 萨满 Gloom'rel：使用符文，大地冲击和增益移除：符文在弹出后立即死亡。",
"* 法师 Hate'rel：使用冰霜冲击，暴风雪和变形：切断变形，并从暴风雪中逃脱。",
"* 猎人 Seeth'rel：远程射击，放置陷阱，并释放野兽宠物：小心地缩小距离。",
"* 牧师 Vile'rel：使用闪光治疗，使用力量之词：盾牌，并施放心灵控制：首先中断治疗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226314"] = { "达格兰·索瑞森大帝",
"* 火焰之灵：10秒内完全免疫法术，并且他的挥击会附加火焰：法师在此时需要保持距离。",
"* 泰瑞西安之手：一个火焰冲击，使目标5秒眩晕：最好不要成群，这样不会同时失去多个目标。",
"* 铁敌：来自他传奇战锤的被动效果，最多可以附加3次额外挥击，并且关键击率提高10%，持续5秒：坦克可以利用这个机会进行治疗。",
"* 莫伊拉·布伦兹贝德在旁边战斗：她偶尔会治疗他，并使用圣光和暗影魔法进行惩罚：控制她，或者如果团队赶时间，则在击败她之前杀死她。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226315"] = { "洛考尔",
"* 地震使整个团队在 20 米内的房间内持续 2 秒：不要在房间里游荡。",
"* 地震冲击：攻击正在施法的玩家：法师应及时完成他们的法术。",
"* 火焰冲击：立即的火焰攻击加上每 3 秒一次的持续伤害：治疗者注意持续伤害。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226316"] = { "怒炉将军",
"* 逐渐剥离防御：当它堆叠时，轮流担任坦克。",
"* 旋风：他的暴击会加快他的攻击速度，而他的怒火会增加物理伤害：治疗者应配合他的攻击。",
"* 警报！在40%时：他召唤要塞的增援（Anvilrage的守卫和医生），医生会治疗他：先杀死医生，然后再杀死其他人。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230216"] = { "傀儡统帅阿格曼奇",
"* 闪电链会跳跃到附近的玩家之间：保持分散，直到它结束。",
"* 他与两个构造体一起战斗：坦克将它们分开并分享威胁。",
"* 注意版本：他的灵魂可以附身在倒下的傀儡身上，倒下的身体并不总是结束战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230217"] = { "傀儡统帅阿格曼奇",
"* 闪电链会跳跃到附近的玩家之间：保持分散，直到它结束。",
"* 他与两个构造体一起战斗：坦克将它们分开并分享威胁。",
"* 注意版本：他的灵魂可以附身在倒下的傀儡身上，倒下的身体并不总是结束战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230218"] = { "傀儡统帅阿格曼奇",
"* 闪电链会跳跃到附近的玩家之间：保持分散，直到它结束。",
"* 他与两个构造体一起战斗：坦克将它们分开并分享威胁。",
"* 注意版本：他的灵魂可以附身在倒下的傀儡身上，倒下的身体并不总是结束战斗。"
};

-- [editor web 2026-10-15] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230219"] = { "傀儡统帅阿格曼奇",
"* 闪电链会跳跃到附近的玩家之间：保持分散，直到它结束。",
"* 他与两个构造体一起战斗：坦克将它们分开并分享威胁。",
"* 注意版本：他的灵魂可以附身在倒下的傀儡身上，倒下的身体并不总是结束战斗。"
};
P.zh = zh;
