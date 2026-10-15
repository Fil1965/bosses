[English](README.md) · [Español](README.es.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Português](README.pt.md) · **中文**

**开团先知情，战时方能生还。**

Bosses 用几行精炼的文字、在正确的时机、通过正确的频道说明一场首领战如何进行。标记 Boss（或让插件自动发现遭遇战开始），即可获得战术要点：坦克需要盯什么、谁需要躲开什么、该打断什么、绝不能站哪里。这是手写并经实战检验的知识，不是维基堆料：每个团本、地下城和世界首领都带有手工打磨的战术。

## 覆盖范围 — World of Warcraft 全部资料片

**12 个数据包 · ~1,590 个首领条目 · 西班牙语 / 英语 / 法语 / 德语 / 葡萄牙语（巴西） / 中文（简体）。** 从熔火之心到 Midnight，中间应有尽有：

| 资料片 | Packs | 首领 | 语言 |
|---|---|---|---|
| Vanilla（经典旧世） | 熔火之心、黑翼之巢、安其拉 20/40、纳克萨玛斯、奥妮克希亚 + 经典地下城（诺莫瑞根、血色修道院、玛拉顿、厄运之槌、祖尔法拉克、沉没的神庙 SoD、斯坦索姆、通灵学院、祖尔格拉布…） | 334 | EN · ES · FR · DE · PT · ZH |
| The Burning Crusade（燃烧的远征） | 卡拉赞 → 太阳之井高地、英雄地下城、祖阿曼 | 130 | EN · ES · FR · DE · PT · ZH |
| Wrath of the Lich King（巫妖王之怒） | 纳克萨玛斯、奥杜尔、冰冠堡垒 + 11 个地下城、奥妮克希亚、冠军的试炼 | 173 | EN · ES · FR · DE · PT · ZH |
| Cataclysm（大地的裂变） | 火焰之地、巨龙之魂、黑翼血环 + 地下城、祖阿曼/祖尔格拉布重制 | 113 | EN · ES · FR · DE · PT · ZH |
| Mists of Pandaria（熊猫人之谜） | 全部 5 个团本、9 个地下城、世界首领 | 134 | EN · ES · FR · DE · PT · ZH |
| Warlords of Draenor（德拉诺之王） | 悬槌堡、黑石铸造厂、地狱火堡垒 + 8 个地下城、塔纳安丛林精英 | 91 | EN · ES · FR · DE · PT · ZH |
| Legion（军团再临） | 全部 5 个团本、12 个地下城、20 个世界首领 | 147 | EN · ES · FR · DE · PT · ZH |
| Battle for Azeroth（争霸艾泽拉斯） | 奥迪尔 → 尼奥罗萨、12 个地下城、战争前线首领 | 133 | EN · ES · FR · DE · PT · ZH |
| Shadowlands（暗影国度） | 纳斯利亚堡、统御圣所、初诞者圣墓 + 9 个地下城 + 塔扎维什 + 世界首领 | 90 | EN · ES · FR · DE · PT · ZH |
| Dragonflight（巨龙时代） | 化身巨龙牢窟、亚贝鲁斯、阿米达希尔 + 9 个地下城 + 世界首领 | 92 | EN · ES · FR · DE · PT · ZH |
| The War Within（地心之战） | Khaz Algar 的团本与地下城 | 80 | EN · ES · FR · DE · PT · ZH |
| Midnight | 当前资料片的团本、地下城、巢穴与世界首领 | 71 | EN · ES · FR · DE · PT · ZH |

以上 12 个数据包全部随 **六种语言完整** 出货；只有该包的每一条说明都完成，对应语言才会进入游戏列表——所见即所得。

## 亮点

- **说明标记的目标 NPC**：寥寥数行，一击即中；也可在每个遭遇战开始时全自动说明（无计时器、无战斗自动化；自动模式可关闭）
- **手写战术** 附带经验证的法术链接：每个要点都点名真实技能，链接直达你的聊天
- **你自己的警报框**：战斗中游戏会封锁插件聊天，因此完整说明直接显示在你的屏幕上——可拖动、可关闭（X / ESC），战斗结束后 15 秒自动隐藏；脱战后 **“发送到聊天”** 按钮可分享给团队
- **法术名称以读者语言** 实时解析自游戏数据库（鼠标悬停时工具提示显示该技能）
- **智能频道选择**：自动使用 raid / 小队 / 战场分组频道——也可指定公会 / 本地 / 仅警报框
- **小地图按钮**：在地下城中打开该区域全部首领的下拉列表；在外说明你的当前目标
- **你的备注优先于数据库**：`/bosses + 文本` 为任意 NPC 添加你自己的行，任意语言，按角色保存
- **在游戏内编辑任何说明**：警报框的 **编辑** 按钮（或 `/bosses EDITAR [id]`）打开备注编辑器——添加链接与行、重新排序或删除，并在框架上预览结果
- 设置面板位于 **设置 → 插件 → Bosses**——改动即时生效，无外部依赖
- 可选 **调试模式**：在你的 `WTF` 文件夹写入检测日志，让沉默的首领易于反馈

## 命令

```text
/bosses               说明标记的目标 NPC
/bosses <id>          说明该 ID 对应的 NPC
/bosses + 文本        在标记的 NPC 上添加你自己的行
/bosses !             删除标记 NPC 的说明
/bosses CANAL auto    raid / 小队 / 战场分组输出（默认）
/bosses CANAL guild   公会输出
/bosses CANAL local   仅输出到你的聊天
/bosses CANAL frame   仅输出到你的警报框（私密简报）
/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko   说明的语言（auto = 跟随你的游戏）
/bosses DEBUG on|off|清空   WTF 中的检测日志；/bosses LOG [n] 显示最近的几行
/bosses EDITAR [id]   打开说明编辑器（存放你自己的备注的 UI）
/bosses ?             完整帮助
```

**立即试一试：** `/bosses 23576` — 祖阿曼的 Nalorakk。

## 更多资源

配套 **GitHub 项目** 提供完整的更新日志、覆盖清单和额外文档：[github.com/Fil1965/bosses](https://github.com/Fil1965/bosses). 缺少你想要说明的首领？所有内容按角色保存——把你保存的 `Bosses.lua` 发给我，你的知识就会进入下一个版本。

## 小贴士

- 2011 年以 *Boses* 之名诞生；家族中的老前辈：也试试 **Nas**（自动问候）与 **MarcoPolo**（商人自动化）
- 运行于 **零售版 (Midnight 12.1)** 与 **经典版**：MoP Classic、TBC Classic 和 Classic Era
- 完全符合现代版插件政策：信息尽在掌控，绝无战斗自动化
- 仓库还自带一个本地 **网页编辑器**，用于微调数据包（开发工具；在本地用 `npm start` 运行）
- **从旧的 Boses 插件升级？** 将 `WTF\Account\<账号>\SavedVariables\Boses.lua` 复制为 `Bosses.lua`（外加按角色的副本），重载后，你的备注、设置和调试日志会自动迁移