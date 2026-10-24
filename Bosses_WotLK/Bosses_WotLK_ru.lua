--[[
	Bosses_WotLK_ru.lua
		Datos en RU del pack WotLK.
		Fichero creado por el editor web (2026-10-16); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local ru = {};
local pack = ru;


-- Onyxia's Lair : Zona 249 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10184"] = { "Ониксия",
"* |cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r: Большой удар впереди нее — держите группу за танка.",
"* |cff71d5ff|Hspell:18392|h[Fireball]|h|r: Повторяющийся огненный шар на случайного игрока — целители должны быть готовы.",
"* |cff71d5ff|Hspell:18584|h[Deep Breath]|h|r: На 66% она взлетает и поджигает линию в лоре — немедленно покиньте отмеченную линию.",
"* |cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r: На 40% она приземляется — AoE страх, поэтому стоит ставить тремор-тотемы и щиты от страха как можно раньше.",
"* |cff71d5ff|Hspell:68959|h[Whelps]|h|r: На 40% яйца вылупляются со всех сторон лора — используйте AoE, чтобы уничтожить их вдали от танка."
};

-- Naxxramas : Zona 533 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15928"] = { "Таддиус",
"* |cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r: Половине группы дается положительный заряд, а другой половине — отрицательный — разделить группы с противоположными",
"* зарядами, чтобы заряженные игроки не касались друг друга, любое пересечение зарядов приводит к взрыву.",
"* |cff71d5ff|Hspell:28338|h[Chain Lightning]|h|r: Молния цепью поражает игрока, находящегося дальше всех — один из игроков должен находиться на дальней дистанции от",
"* группы."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15931"] = { "Гроббулус",
"* |cff71d5ff|Hspell:28169|h[Мутирующая инъекция]|h|r: Игрок, получивший инъекцию, оставляет облако, наносящее урон, в месте, где он стоит - направляйте его к стене.",
"* |cff71d5ff|Hspell:28240|h[Облако яда]|h|r: Облака яда растут с каждой инъекцией - оттесняйте их от группы."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15932"] = { "Глут",
"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: Все здоровье падает до 5% - зомби добавляются и перемещаются к нему, чтобы питаться, держите их мертвыми или на расстоянии.",
"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r: Он периодически впадает в состояние безумия - танк использует защитные способности."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15936"] = { "Хейган Нечестивый",
"* |cff71d5ff|Hspell:29350|h[Eruption]|h|r: Он покидает комнату, и пол взрывается поочередно — катайтесь по безопасным углам вокруг платформы."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15952"] = { "Мексна",
"* |cff71d5ff|Hspell:28622|h[Web Wrap]|h|r: Случайный игрок оказывается в коконе у стены - быстро освободите его.",
"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: Обширный разбрызгивающий эффект ошеломляет врагов ближнего боя - пора времени для атак.",
"* |cff71d5ff|Hspell:17332|h[Spiderlings]|h|r: Личи появляются волнами - используйте AoE, чтобы их уничтожить, прежде чем они скопируются."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15953"] = { "Великая вдова Фарлина",
"* |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r: Убийство поклоника рядом с ней вызывает эффект \"Объятия\" - это отключает Фаэлин, ее и всю группу,",
"* а также откладывает эффект ярости.",
"* |cff71d5ff|Hspell:28798|h[Frenzy]|h|r: Если \"Объятия\" заканчиваются, она впадает в ярость - использует защитные способности и мощное лечение."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15954"] = { "Нот Чумной",
"* |cff71d5ff|Hspell:29213|h[Проклятие Плавучего]|h|r: Проклятия распространяются по рейду — быстро снимайте их, связанные проклятия взрываются.",
"* |cff71d5ff|Hspell:29208|h[Блик]|h|r: Бликует к случайному игроку — возвращает таута обратно танку.",
"* |cff71d5ff|Hspell:29212|h[Скелеты]|h|r: Телепортируется над комнатой с волной скелетов — очищает комнату, прежде чем вернуться."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15956"] = { "Ануб'Рекан",
"* |cff71d5ff|Hspell:28785|h[Наводнение насекомых]|h|r: Он создает рой насекомых, который оглушает и истощает — оставайтесь впереди его расширяющегося круга.",
"* |cff71d5ff|Hspell:28783|h[Пронзание]|h|r: Колючие лучи прорываются сквозь группу — расставьтесь от каждого."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15989"] = { "Сапфирон",
"* |cff71d5ff|Hspell:28522|h[Ледяная защита]|h|r: Случайный игрок превращается в ледяной блок — становится укрытием, спланируйте позицию.",
"* |cff71d5ff|Hspell:28524|h[Глубокое дыхание]|h|r: Глубокое дыхание охватывает комнату — прижмитесь к замерзшему укрытию.",
"* |cff71d5ff|Hspell:28542|h[Жизненный отток]|h|r: Жизненный отток поглощает случайного игрока — поддерживайте лечение.",
"* |cff71d5ff|Hspell:28547|h[Близнецовый шторм]|h|r: Близнецовый шторм распространяется по полу — выйдите из него."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15990"] = { "Кел'Тузад",
"* |cff71d5ff|Hspell:27808|h[Frost Blast]|h|r: Frost Blast замораживает и наносит урон через всю группу — распространяйте его, пока он не попадет,",
"* затем разрушайте замороженную массу.",
"* |cff71d5ff|Hspell:27819|h[Detonate Mana]|h|r: Мана игрока взрывается — держитесь на расстоянии, чтобы взрыв не распространился.",
"* |cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r: На 25% открывается зона вакуума под игроком — быстро покиньте ее.",
"* |cff71d5ff|Hspell:28410|h[Mind Control]|h|r: Цепи захватывают случайных игроков — удерживайте их под контролем, пока цепи не разрушатся."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16011"] = { "Лотхиб",
"* |cff71d5ff|Hspell:29234|h[Споры]|h|r: Споры появляются в комнате — убивайте одну рядом с группой, её облако даёт большой бонус к критическому урону.",
"* |cff71d5ff|Hspell:29204|h[Дождь]|h|r: Дождь попадает на случайного игрока и взрывается — немедленно уходите.",
"* |cff71d5ff|Hspell:55593|h[Некротическая аура]|h|r: Исцеление блокируется на 10 секунд при каждом импульсе — используйте большие исцеления и хоты,",
"* чтобы заполнить пробелы."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16028"] = { "Лоскутик",
"* |cff71d5ff|Hspell:28131|h[Frenzy]|h|r: При 10% здоровья он впадает в состояние безумия - защищайте танка и оказывайте экстренную помощь.",
"* |cff71d5ff|Hspell:28311|h[Slime Bolt]|h|r: Слизь вылетает случайным образом, чтобы поразить заклинателей,",
"* а затем он использует \"Hateful Strikes\" - поддерживайте ротацию заклинателей."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16060"] = { "Готик Жнец",
"* |cff71d5ff|Hspell:28025|h[Телепорт: Живая сторона]|h|r: Райд разделяется: живая сторона сражается со своими телохранителями,",
"* а мертвая сторона справляется с тенями - удерживайте волны, чтобы они не перегружались.",
"* |cff71d5ff|Hspell:28026|h[Телепорт: Мертвая сторона]|h|r: Он перепрыгивает из комнаты, пока тени не скопились - ворота открываются через 4 минуты,",
"* затем объединитесь и поджгите его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16061"] = { "Инструктор Разувий",
"* |cff71d5ff|Hspell:29107|h[Unbalancing Strike]|h|r: Мощный удар по текущему танку — используйте костяные сферы,",
"* чтобы контролировать подмастерьев и перенаправлять их внимание."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16063"] = { "Сэр Зелик",
"* Его метка Зелик (|cff71d5ff|Hspell:28835|h[Mark of Zeliek]|h|r) наносит урон каждые ~15 секунд на расстоянии до 45 ярдов от его угла и наносит больший урон при каждом",
"* обновлении: 650, 1950, 4550, 9750, 16250 - тот, кто принимает урон, должен выходить из боя, прежде чем наберутся слишком много слоев.",
"* Его Священный Гнев (|cff71d5ff|Hspell:28883|h[Holy Wrath]|h|r) отскакивает между сгруппированными игроками и увеличивается при каждом прыжке: игроки ближнего боя",
"* должны войти сразу после броска, оставаться на максимальном расстоянии и никогда не создавать промежуток между ближним и дальним",
"* боем, иначе цепь нанесет урон всей группе.",
"* Он занимает задний правый угол и не двигается: если никто не находится в его радиусе, он обрушивает на всю группу урон от Condemnation,",
"* поэтому целитель и дальний игрок должны принять урон с самого начала, находясь на достаточном расстоянии,",
"* чтобы каждый получал только метку Зелик.",
"* Он последний, кто принимает урон, сразу после Леди Бламу."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16064"] = { "Тэн Корт'аз",
"* Его метка Korth'azza (|cff71d5ff|Hspell:28832|h[Mark of Korth'azz]|h|r) поражает каждые ~15 секунд на расстоянии до 45 ярдов от его угла и наносит больше урона при каждом",
"* обновлении: 650, 1950, 4550, 9750, 16250 - передний ряд должен его полностью уничтожить.",
"* Его молния (|cff71d5ff|Hspell:57467|h[Meteor]|h|r) разделяет свой жестокий удар между всеми, кто находится рядом с меткой на указанном игроке: полностью скопируйте",
"* на них всех воинов и бой почти не ощущается, вместо того чтобы убить одного игрока.",
"* Он атакует левый передний угол, игнорируя угрозу, пока не прибудет и сражается как любой другой босс ближнего боя - первым падает",
"* всадник, используйте все свои способности, пока все четверо живы."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16065"] = { "Леди Бламукс",
"* Её метка Бламуа (|cff71d5ff|Hspell:28833|h[Mark of Blaumeux]|h|r) наносит урон каждые ~15 секунд на расстоянии до 45 ярдов от её угла и наносит больший урон при каждом",
"* обновлении: 650, 1950, 4550, 9750, 16250 - задний тактик вращается, как только появляются стоки.",
"* Пустые зоны (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) открываются под её ногами: выходите из круга СЕЙЧАС,",
"* и её тактик будет следить за полом на протяжении всей битвы.",
"* Она занимает задний левый угол и не двигается: целитель и дальность держат её на расстоянии, достаточно большое,",
"* чтобы каждый мог нанести урон только ей, или она опустошит рейдовую группу с помощью Condemnation.",
"* Третья, после двух фронтальных бойцов."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30549"] = { "Барон Ривендар",
"* Его метка Ривендара (|cff71d5ff|Hspell:28834|h[Mark of Rivendare]|h|r) попадает каждые ~15 секунд на расстоянии до 45 ярдов от его угла и наносит больше урона при каждом",
"* обновлении: 650, 1950, 4550, 9750, 16250 - передний персонаж полностью ее поглощает: следуйте порядку убийства.",
"* Его Нежить (|cff71d5ff|Hspell:57369|h[Unholy Shadow]|h|r) кровоточит его танка каждые ~15 секунд: дополнительное лечение для этого танка на протяжении всей битвы.",
"* Он атакует правый передний угол так же, как и Тане - ВТОРОЙ всадник падает прямо за Тане."
};

-- Utgarde Keep : Zona 574 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23953"] = { "Принц Келесет",
"* |cff71d5ff|Hspell:48400|h[Гробница Льда]|h|r: Замораживает игрока в ледяном склепе — быстро освободите его и используйте AoE на скелетных стражей,",
"* которые прибывают волнами."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23954"] = { "Ингвар Расхититель",
"* |cff71d5ff|Hspell:42730|h[Woe Strike]|h|r: Woe истощает танка — замените его и держите готовы очищения.",
"* |cff71d5ff|Hspell:42729|h[Staggering Shout]|h|r: Гром оглушает комнату — приготовиться и прервать его.",
"* |cff71d5ff|Hspell:42723|h[Smash]|h|r: В форме нежити, Smash сотрясает всю комнату — отступите в ближний бой."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24200"] = { "Скарвальд и Далронн",
"* |cff71d5ff|Hspell:43650|h[Ослабление]|h|r: Эффект тени истощает цель — будьте готовы к снятию.",
"* |cff71d5ff|Hspell:52611|h[Тени]|h|r: Когда они падают, появляются тени — сбрасывайте тени, прежде чем они воссоединятся."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24201"] = { "Скарвальд и Далронн",
"* |cff71d5ff|Hspell:43650|h[Ослабление]|h|r: Эффект тени истощает цель — будьте готовы к снятию.",
"* |cff71d5ff|Hspell:52611|h[Тени]|h|r: Когда они падают, появляются тени — сбрасывайте тени, прежде чем они воссоединятся."
};

-- The Culling of Stratholme : Zona 595 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26529"] = { "Мясной Крюк",
"* |cff71d5ff|Hspell:52696|h[Constricting Chains]|h|r: Цепи сковывают игрока — держите под рукой очищение."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26530"] = { "Салрамм Плоторез",
"* |cff71d5ff|Hspell:58845|h[Curse of Twisted Flesh]|h|r: Проклятие искаженной плоти — очистите его.",
"* |cff71d5ff|Hspell:52451|h[Ghouls]|h|r: Он поднимает гоблинов — уничтожайте их."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26532"] = { "Хронолорд Эпох",
"* |cff71d5ff|Hspell:52772|h[Curse of Exertion]|h|r: Проклятие ослабляет того, кто его носит - очистите его.",
"* |cff71d5ff|Hspell:58848|h[Time Warp]|h|r: Временная петля искажает темп в комнате - поддерживайте постоянное лечение."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26533"] = { "Мал'Ганис",
"* |cff71d5ff|Hspell:52721|h[Sleep]|h|r: Он заставляет игроков засыпать - быстро разбудите их и держите группу в разбросанном состоянии.",
"* |cff71d5ff|Hspell:52723|h[Vampiric Touch]|h|r: Прикосновение высасывает жизненную силу - очистите его."
};

-- Drak'Tharon Keep : Zona 600 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26630"] = { "Кровотролль",
"* |cff71d5ff|Hspell:49637|h[Инфицированная рана]|h|r: Инфицированные раны кровоточат танка – будьте готовы к лечению.",
"* |cff71d5ff|Hspell:49639|h[Разрушение]|h|r: Разрушение бьет танка – используйте защиту.",
"* |cff71d5ff|Hspell:49380|h[Поглощение]|h|r: Он направляет заклинание на тела вокруг него – отвлекайте бой, пока он использует заклинание."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26631"] = { "Новос Призыватель",
"* |cff71d5ff|Hspell:50089|h[Wrath of Misery]|h|r: Дебаф Wrath на группу - очистите его.",
"* |cff71d5ff|Hspell:47346|h[Dark Wounds]|h|r: Темные раны распространяются по полу - избегайте их.",
"* |cff71d5ff|Hspell:59910|h[Minions]|h|r: Минионы прибывают во время его канала - уничтожьте их, прежде чем они достигнут его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26632"] = { "Пророк Тарон'джа",
"* |cff71d5ff|Hspell:49356|h[Разложение]|h|r: Он превращается в скелет - следите за огненным дождем, который он выливает, пока кости разрушаются.",
"* |cff71d5ff|Hspell:49518|h[Огненный дождь]|h|r: Огненный дождь сжигает комнату - убирайтесь.",
"* |cff71d5ff|Hspell:49527|h[Проклятие жизни]|h|r: Проклятие поражает того, кто его использует - очистите его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27483"] = { "Король Дред",
"* |cff71d5ff|Hspell:48878|h[Piercing Slash]|h|r: Этот удар кровоточит того, кто его использует - целители, будьте начеку.",
"* |cff71d5ff|Hspell:59416|h[Raptor Call]|h|r: Он вызывает рапторов в комнату - быстро атакуйте всю группу."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28684"] = { "Крик'тир, страж ворот",
"* |cff71d5ff|Hspell:52592|h[Проклятие Усталости]|h|r: Проклятие Усталости истощает своего обладателя — очистите его;",
"* его страж, [Watcher], атакует через ворота — используйте AoE и перекрывайте пути."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28921"] = { "Hadronox",
"* |cff71d5ff|Hspell:53400|h[Acid Cloud]|h|r: Облака кислоты образуют лужи на полу - избегайте их.",
"* |cff71d5ff|Hspell:53030|h[Leech Poison]|h|r: Яд личи лечит ее, пока он воздействует на носителя - быстро очистите его;",
"* она закрывает дверь, двигайтесь по потоку нерубиан, пока она держит ее."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["29120"] = { "Ануб'ара́к",
"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: Удар \"Pound\" наносит урон по большой площади — убегите от целей;",
"* рои скарабеев атакуют в туннелях на первом этапе — используйте AoE, чтобы их уничтожить."
};

-- Utgarde Pinnacle : Zona 575 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26668"] = { "Свала Вечноскорбящая",
"* |cff71d5ff|Hspell:48267|h[Жертвоприношение]|h|r: Отмеченный поднимается к алтарю — прервите ритуал, прежде чем жертва достигнет цели."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26687"] = { "Горток Бледное Копыто",
"* |cff71d5ff|Hspell:48261|h[Impale]|h|r: Рог пронзает танка - целители готовы.",
"* |cff71d5ff|Hspell:48256|h[Withering Roar]|h|r: Резкий рык ослабляет группу - продолжайте лечить."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26693"] = { "Скади Безжалостный",
"* |cff71d5ff|Hspell:59322|h[Whirlwind]|h|r: Его вращение создает широкий круг - отступайте от ближнего боя.",
"* |cff71d5ff|Hspell:59331|h[Poison]|h|r: Яды следуют по пути - бегите между облаками."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26861"] = { "Король Имирон",
"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: Канал \"Bane\" наносит урон заклинателям - прекратите использование заклинаний, пока он активен.",
"* |cff71d5ff|Hspell:48291|h[Fetid Rot]|h|r: \"Fetid Rot\" наносит урон тому, кто его держит - очистите его."
};

-- The Nexus : Zona 576 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26723"] = { "Керистраза",
"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: Цепи сковывают движение - разделите группу и держите цели под защитой.",
"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: Волны заморозки распространяются вокруг нее - призывающие отступают.",
"* |cff71d5ff|Hspell:8599|h[Frenzy]|h|r: В конце она впадает в ярость - используйте это."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26731"] = { "Великая ведунья Телестра",
"* |cff71d5ff|Hspell:47731|h[Freeze]|h|r: Она замораживает игрока - разрушьте её и обратите внимание на её клонов: три клона расходятся,",
"* а замораживающая - обстреливает комнату."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26763"] = { "Аномалус",
"* |cff71d5ff|Hspell:47743|h[Разрыв Хаоса]|h|r: Разрыв направляет энергию в него — быстро разрушьте разрыв."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26794"] = { "Орморок Воспитатель Дерев",
"* |cff71d5ff|Hspell:47981|h[Spell Reflection]|h|r: Он отражает заклинания - маги не могут использовать заклинания, пока эффект действует.",
"* |cff71d5ff|Hspell:47958|h[Spikes]|h|r: Линии шипов охватывают комнату - избегайте отметок.",
"* |cff71d5ff|Hspell:48017|h[Frenzy]|h|r: При низком уровне здоровья он впадает в состояние ярости - быстро нанесите ему урон.",
"* |cff71d5ff|Hspell:61564|h[Treants]|h|r: Деревья поднимаются вокруг него - используйте на них AoE."
};

-- The Oculus : Zona 578 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27447"] = { "Варос Заоблачный Странник",
"* |cff71d5ff|Hspell:51002|h[Командир Кольца]|h|r: Командиры колец призывают группу – сначала убивайте командиров.",
"* |cff71d5ff|Hspell:51021|h[Арканический луч]|h|r: Луч распространяется по прямой – уходите от него.",
"* |cff71d5ff|Hspell:51054|h[Усиление магии]|h|r: Усиление магии отмечает игрока – очистите его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27654"] = { "Дракос Дознаватель",
"* |cff71d5ff|Hspell:50774|h[Громовой удар]|h|r: Удар сбивает всё вокруг — укройте себя."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27655"] = { "Маг-лорд Уром",
"* |cff71d5ff|Hspell:51121|h[Time Bomb]|h|r: Таймер взрывается, когда его держит игрок - убегите, пока он не активировался.",
"* |cff71d5ff|Hspell:51110|h[Empowered Arcane Explosion]|h|r: Большая магическая взрывная волна - прервите заклинание или укрепитесь.",
"* |cff71d5ff|Hspell:51103|h[Frostbomb]|h|r: Ледяные бомбы замораживают пол - избегайте их."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27656"] = { "Хранитель энергии Эрегос",
"* |cff71d5ff|Hspell:51162|h[Планарный сдвиг]|h|r: Я перемещаюсь между планами, и драконам нужно оставаться рядом — держите группу вместе во время сдвига.",
"* |cff71d5ff|Hspell:51170|h[Ярость]|h|r: Я в ярости — нанесите ему урон до возвращения сдвига."
};

-- Halls of Stone : Zona 599 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27975"] = { "Дева Скорби",
"* |cff71d5ff|Hspell:50761|h[Woe Strike]|h|r: Woe капает на танка — меняйте.",
"* |cff71d5ff|Hspell:50752|h[Storm of Grief]|h|r: Шторм охватывает комнату — оставайтесь вне зоны поражения.",
"* |cff71d5ff|Hspell:50760|h[Shock of Sorrow]|h|r: Шок ошеломляет группу — распределяйтесь перед тем, как он достигнет."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27977"] = { "Кристаллус",
"* |cff71d5ff|Hspell:50833|h[Ground Slam]|h|r: Удар землёй разбрасывает комнату — распределитесь по площади.",
"* |cff71d5ff|Hspell:50810|h[Shatter]|h|r: После удара он разрушается — держите всех на расстоянии или разрушение поразит группу."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27978"] = { "Сьоннир Литейщик",
"* |cff71d5ff|Hspell:50840|h[Lightning Ring]|h|r: Кольцо молнии обволакивает его — не подходите слишком близко.",
"* |cff71d5ff|Hspell:50834|h[Static Charge]|h|r: Энергия накапливается у тех, кто касается его — держите группу подальше от кольца."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28070"] = { "Бранн Бронзобород",
"* |cff71d5ff|Hspell:51012|h[Dark Matter]|h|r: Темная материя горит под натиском группы – отступайте.",
"* |cff71d5ff|Hspell:51125|h[Searing Gaze]|h|r: Ослепляющий взгляд исходит от стражей – смотрите им в спину."
};

-- Halls of Lightning : Zona 602 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28546"] = { "Ионар",
"* |cff71d5ff|Hspell:52770|h[Disperse]|h|r: Разбросьтесь в искры — искры быстро собираются, уничтожайте их волной, прежде чем произойдет взрыв.",
"* |cff71d5ff|Hspell:52658|h[Static Overload]|h|r: Перегрузка обжигает своего владельца — помеченные враги исчезают."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28586"] = { "Генерал Бьярнгрим",
"* |cff71d5ff|Hspell:52027|h[Whirlwind]|h|r: Его вращение охватывает линию — при необходимости отступайте; он переходит в позы \"Битва\", \"Берсерк\" и \"Шторм\" между фазами.",
"* |cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r: Удар смертного ранит танка — замените его и лечите."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28587"] = { "Волхан",
"* |cff71d5ff|Hspell:52237|h[Разрушительный удар]|h|r: Удар сотрясает пол кузницы — призывайте бойцов в ближний бой;",
"* он создает расплавленных големов в лаве, дайте им остыть и разбейте их."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28923"] = { "Локен",
"* |cff71d5ff|Hspell:52960|h[Молния]|h|r: Волны пульсируют всё шире с каждым ударом — уходите, пока они не достигнут пика."
};

-- The Eye of Eternity : Zona 616 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28859"] = { "Малигос",
"* |cff71d5ff|Hspell:56105|h[Vortex]|h|r: Каждые 60 секунд он создает вихрь для рейда и наносит урон - лечитесь через него.",
"* |cff71d5ff|Hspell:56505|h[Deep Breath]|h|r: Во 2 фазе его дыхание сжигает один участок платформы - избегайте этой секции.",
"* |cff71d5ff|Hspell:60936|h[Surge of Power]|h|r: Неизбежный импульс на платформе - используйте защитные способности.",
"* |cff71d5ff|Hspell:57430|h[Static Field]|h|r: Электрические поля плавают вокруг платформы - перемещайтесь, чтобы избежать их."
};

-- The Obsidian Sanctum : Zona 615 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28860"] = { "Сартарион",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Зоны пустоты открываются под игроками — быстро покиньте их;",
"* его дыхание также посылает волны огня по платформе за следующим вдохом."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30449"] = { "Весперон",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Зоны Void взрываются под игроками — выходите из них;",
"* её ученик появляется — уничтожьте его, пока не наступит эффект усиления урона."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30451"] = { "Шадро́н",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Зоны Void взрываются под игроками — выходите из них;",
"* его ученик и демоны появляются через портал — утилизируйте ученика, прежде чем его бафф попадет на него."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30452"] = { "Тенеброн",
"* |cff71d5ff|Hspell:59127|h[Twilight Fissure]|h|r: Зоны пустоты взрываются под игроками — выходите из них; яйца Тьмы вдоль стен лопаются — уничтожьте щенков."
};

-- The Violet Hold : Zona 608 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29266"] = { "Ксевозз",
"* |cff71d5ff|Hspell:54102|h[Эфирная сфера]|h|r: Сферы вращаются и выпускают огонь - уничтожайте их и не позволяйте им приближаться к группе.",
"* |cff71d5ff|Hspell:54160|h[Арканическая сила]|h|r: Арканическая сила усиливает его - танк должен использовать защитные способности."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29312"] = { "Лавантор",
"* |cff71d5ff|Hspell:54282|h[Flame Breath]|h|r: Направьте его лицом к огню.",
"* |cff71d5ff|Hspell:54249|h[Lava Burn]|h|r: Лава взрывает группу - разделитесь."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29313"] = { "Гнойрон",
"* |cff71d5ff|Hspell:54306|h[Защитная сфера]|h|r: Сфера делает его неуязвимым - разрушьте ее.",
"* |cff71d5ff|Hspell:54241|h[Водяной залп]|h|r: Залп бомбардирует комнату - прервите или укройтесь."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29314"] = { "Зурамат Уничтожитель",
"* |cff71d5ff|Hspell:59743|h[Void Shift]|h|r: Сдвиг истощает того, кто его использует, - целители, будьте готовы.",
"* |cff71d5ff|Hspell:59745|h[Shroud of Darkness]|h|r: Покрывало скрывает его притяжение - держите под рукой очистки."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29315"] = { "Эрекем",
"* |cff71d5ff|Hspell:54481|h[Цепная исцеление]|h|r: Его охранники исцеляют друг друга - прервите их.",
"* |cff71d5ff|Hspell:54479|h[Земная защита]|h|r: Земные щиты защищают группу - рассейте их.",
"* |cff71d5ff|Hspell:54516|h[Кровь]|h|r: Способность Крови усиливает его - нейтрализуйте ее."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29316"] = { "Морагг",
"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: Связь глаза привязывается и преследует игроков — убегайте в стороне от группы."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31134"] = { "Синигоса",
"* |cff71d5ff|Hspell:58693|h[Blizzard]|h|r: Волны Близнецов охватывают комнату — переместитесь в безопасное место.",
"* |cff71d5ff|Hspell:58694|h[Vacuum]|h|r: Вакуум тянет всю группу к себе — укройтесь и расставьтесь, она будет последней, после волн портала.",
"* |cff71d5ff|Hspell:59374|h[Mana Burn]|h|r: Mana Burn истощает своего владельца — нейтрализуйте его."
};

-- Gundrak : Zona 604 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29304"] = { "Слад'ран",
"* |cff71d5ff|Hspell:55081|h[Poison Nova]|h|r: Взрыв яда распространяется по полу — выходите из-под его действия."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29305"] = { "Мураби",
"* |cff71d5ff|Hspell:55098|h[Трансформация]|h|r: Он превращается в мамонта — прерывайте заклинание или бой станет двойным."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29306"] = { "Гал'дара",
"* |cff71d5ff|Hspell:54956|h[Impaling Charge]|h|r: Атака \"Impaling Charge\" отбрасывает игрока - отмеченные скобки.",
"* |cff71d5ff|Hspell:55249|h[Whirling Slash]|h|r: Атака \"Whirling Slash\" накладывается на цель - меняйте ее."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29307"] = { "Колосс Драккари",
"* |cff71d5ff|Hspell:54850|h[Emerge]|h|r: Он превращается в элементаль – уничтожьте элементаля, прежде чем он снова объединится.",
"* |cff71d5ff|Hspell:54878|h[Merge]|h|r: Объединение восстанавливает колосса – сначала уничтожается элементаль.",
"* |cff71d5ff|Hspell:59451|h[Mojo Puddle]|h|r: Можовые лужи поджигают пол – избегайте их."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29932"] = { "Эк Свирепый",
"* |cff71d5ff|Hspell:55817|h[Эк'с Резиду]|h|r: Резиду вызывает ожоги там, где он стоит — держитесь подальше от его луж."
};

-- Ahn'kahet: The Old Kingdom : Zona 619 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29308"] = { "Принц Талдарам",
"* |cff71d5ff|Hspell:55959|h[Объятие вампира]|h|r: Объятия каналами на владельце - всплески исцеления для разрушения контроля.",
"* |cff71d5ff|Hspell:55931|h[Огненный шар]|h|r: Огненный шар перемещается по комнате - избегайте его пути."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29309"] = { "Старейшина Надокс",
"* |cff71d5ff|Hspell:56130|h[Plaga de la Cría]|h|r: La plaga debilita a su portador – purifica; su cría ataca en grupos – ataca a todos."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29310"] = { "Джедога Искательница Теней",
"* |cff71d5ff|Hspell:56926|h[Thundershock]|h|r: Удар молнии распространяется во все стороны - расставьтесь.",
"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: Торнадо проносится через группу - покиньте стену."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29311"] = { "Глашатай Волаж",
"* |cff71d5ff|Hspell:57496|h[Безумие]|h|r: Безумие порождает двойники всей группы — быстро уничтожайте их.",
"* |cff71d5ff|Hspell:62660|h[Теневой удар]|h|r: Теневые удары наносят урон игрокам — уходите.",
"* |cff71d5ff|Hspell:57949|h[Дрожь]|h|r: Дрожь наносит урон тому, кто её использует — очистите."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["30258"] = { "Аманитар",
"* |cff71d5ff|Hspell:57055|h[Мини]|h|r: Он уменьшает размер того, кто его держит – маленький чувствует дополнительную боль, и вырастают грибы,",
"* которые его исцеляют: отрубайте их, как только они появляются."
};

-- Vault of Archavon : Zona 624 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31125"] = { "Аркавон Страж Камня",
"* |cff71d5ff|Hspell:58678|h[Камни]|h|r: Он бросает каменные осколки на своих целей - целители, будьте готовы.",
"* |cff71d5ff|Hspell:53041|h[Удушение]|h|r: Он хватает игрока и тянет его в сторону - толпа держитесь от целей.",
"* |cff71d5ff|Hspell:60894|h[Прыжок]|h|r: Он прыгает к случайному игроку - быстро разбейте и пересадите.",
"* |cff71d5ff|Hspell:60880|h[Удар]|h|r: Широкий удар по группе - разбейте."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33993"] = { "Эмалон Страж Бури",
"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: Конструк атакует - уничтожьте его, прежде чем произойдет взрыв.",
"* |cff71d5ff|Hspell:65279|h[Lightning Nova]|h|r: Атакуйте его молнией - примените к ближним врагам."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35013"] = { "Коралон Страж Огня",
"* |cff71d5ff|Hspell:66665|h[Пламенный взрыв]|h|r: Пламенный луч - заставьте его стоять лицом к группе.",
"* |cff71d5ff|Hspell:66725|h[Удар молотом]|h|r: Удары молотом по танку - меняйте танка.",
"* |cff71d5ff|Hspell:66721|h[Ярость]|h|r: Его ярость усиливает его со временем.",
"* |cff71d5ff|Hspell:66684|h[Уголь]|h|r: Угли пламени следуют за игроком - переместите их к стене."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38433"] = { "Торавон Страж Льда",
"* |cff71d5ff|Hspell:72090|h[Freezing Ground]|h|r: Ледяной покров распространяется по всей группе — не выходите из укрытия.",
"* |cff71d5ff|Hspell:72034|h[Whiteout]|h|r: Широкий взрыв белым снегом — распределите задачу по очистке.",
"* |cff71d5ff|Hspell:72091|h[Orb]|h|r: Ледяные сферы вращаются вокруг него — разрушайте их, прежде чем они взорвутся.",
"* |cff71d5ff|Hspell:72004|h[Frostbite]|h|r: Слой \"Заморозки\" накладывается при каждом попадании сферы — удерживайте сферы под контролем."
};

-- Ulduar : Zona 603 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32845"] = { "Ходир",
"* |cff71d5ff|Hspell:65123|h[Storm Cloud]|h|r: Облака шторма усиливают тех, кто их держит, и всех, кто находится рядом - делитесь ими с заклинателями.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: Заморозка заполняет пол - садитесь на ледяной блок, чтобы перемещаться.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: Глубокий холод поражает тех, кто стоит неподвижно - никогда не останавливайтесь."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32857"] = { "Совет Железа",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: Когда один страж падает, остальные получают усиление - используйте самую сильную пару или равномерно распределяйте",
"* убийства.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: Цепная молния поражает группу - распространите и прервите.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: Брундир создает вихрь молнии - прервите вихрь.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: Брундир перегружает с огромной волной - убегите.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: Перегрузка накапливается на танкере - меняйте танк.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Руны смерти сжигают землю - удалитесь от них.",
"* |cff71d5ff|Hspell:63489|h[Shield of Runes]|h|r: Рунный щит защищает их здоровье - нейтрализуйте или снимите его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32865"] = { "Торим",
"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: Молот ошеломляет всех в его зоне поражения — оставайтесь за колонной.",
"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: Атака зарядом — используйте, когда появляются враги, быстро очистите проход и нанесите урон в коридоре.",
"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: Сильный удар по танку — меняйте позиции и используйте защитные способности."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32867"] = { "Совет Железа",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: Когда один страж падает, остальные получают усиление - используйте самую сильную пару или равномерно распределяйте",
"* убийства.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: Цепная молния поражает группу - распространите и прервите.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: Брундир создает вихрь молнии - прервите вихрь.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: Брундир перегружает с огромной волной - убегите.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: Перегрузка накапливается на танкере - меняйте танк.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Руны смерти сжигают землю - удалитесь от них.",
"* |cff71d5ff|Hspell:63489|h[Shield of Runes]|h|r: Рунный щит защищает их здоровье - нейтрализуйте или снимите его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32871"] = { "Алгалон Наблюдатель",
"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: Большой взрыв поглощает всю комнату — нырните в черную дыру и используйте её.",
"* |cff71d5ff|Hspell:65108|h[Black Hole]|h|r: Коллапсирующие звезды оставляют после себя черные дыры — войдите в них, выйдите после взрыва.",
"* |cff71d5ff|Hspell:64412|h[Phase Punch]|h|r: Атака фазы наносит урон танку — меняйте танки.",
"* |cff71d5ff|Hspell:64596|h[Cosmic Smash]|h|r: Космический удар оставляет метки на полу — двигайтесь, чтобы очистить."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32906"] = { "Фрейя",
"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: Корни удерживают игроков на месте — выведите их.",
"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: Солнечные лучи взрываются — убегите от цели."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32926"] = { "Ходир",
"* |cff71d5ff|Hspell:65123|h[Storm Cloud]|h|r: Облака шторма усиливают тех, кто их держит, и всех, кто находится рядом - делитесь ими с заклинателями.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: Заморозка заполняет пол - садитесь на ледяной блок, чтобы перемещаться.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: Глубокий холод поражает тех, кто стоит неподвижно - никогда не останавливайтесь."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32927"] = { "Совет Железа",
"* |cff71d5ff|Hspell:61920|h[Supercharge]|h|r: Когда один страж падает, остальные получают усиление - используйте самую сильную пару или равномерно распределяйте",
"* убийства.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: Цепная молния поражает группу - распространите и прервите.",
"* |cff71d5ff|Hspell:63483|h[Lightning Whirl]|h|r: Брундир создает вихрь молнии - прервите вихрь.",
"* |cff71d5ff|Hspell:63481|h[Overload]|h|r: Брундир перегружает с огромной волной - убегите.",
"* |cff71d5ff|Hspell:61888|h[Overwhelming Power]|h|r: Перегрузка накапливается на танкере - меняйте танк.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Руны смерти сжигают землю - удалитесь от них.",
"* |cff71d5ff|Hspell:63489|h[Shield of Runes]|h|r: Рунный щит защищает их здоровье - нейтрализуйте или снимите его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32930"] = { "Кологарн",
"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: Нацеленные лучи отслеживают игрока — гоните его вокруг платформы, пока они не исчезнут.",
"* |cff71d5ff|Hspell:64292|h[Grip]|h|r: Каменные руки хватают игроков — быстро освободите их.",
"* |cff71d5ff|Hspell:64002|h[Crunch Armor]|h|r: Наложение брони \"Crunch\" на танка — меняйте танка."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33113"] = { "\"Огненный Левиафан\"",
"* |cff71d5ff|Hspell:62374|h[Pursued]|h|r: Он преследует один транспорт – он бегает кругами, пока остальные подходят с фланга.",
"* |cff71d5ff|Hspell:62475|h[System Shutdown]|h|r: Отключение замораживает его – сжигайте все вокруг, а затем.",
"* |cff71d5ff|Hspell:62297|h[Hodir's Fury]|h|r: Башни усиливают бой – разрушайте башни до начала боя, чтобы ослабить его."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33118"] = { "Повелитель горнов Игнис",
"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: Он собирает игрока в шлак - лечите его, пока он не упадет.",
"* |cff71d5ff|Hspell:62488|h[Iron Constructs]|h|r: Конструкты выходят из вентилей - утопите их в воде и позвольте его \"Scorch\" их разрушить.",
"* |cff71d5ff|Hspell:63472|h[Flame Jets]|h|r: Жаркие струи прерывают заклинания вокруг него - заклинатели должны оставаться в движении."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33186"] = { "Острокрылая",
"* |cff71d5ff|Hspell:48642|h[Harpoon Turrets]|h|r: Размещайте гарпунные башни вокруг арены — привязывайте ее между полетами.",
"* |cff71d5ff|Hspell:64733|h[Devouring Flame]|h|r: Пламенные лужи распространяются по полу — выходите из них.",
"* |cff71d5ff|Hspell:64771|h[Fused Armor]|h|r: Слой \"Сросшегося брони\" на танк — меняйте танки."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33271"] = { "Генерал Везакс",
"* |cff71d5ff|Hspell:62660|h[Shadow Crash]|h|r: Shadow Crash преследует игрока - бегите к стене.",
"* |cff71d5ff|Hspell:63276|h[Life Siphon]|h|r: Поток высасывает цель, помеченную - помеченная цель остается в стороне.",
"* |cff71d5ff|Hspell:62662|h[Surge of Darkness]|h|r: Поток усиливает его урон - танк защищает от атак.",
"* |cff71d5ff|Hspell:62661|h[Searing Flames]|h|r: Ожоги усиливают его - прерывайте каждое заклинание."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33288"] = { "Йогг-Сарон",
"* |cff71d5ff|Hspell:63050|h[Sanity]|h|r: Дренаж здоровья происходит возле каждого тени — следите за показателем, выходите из комнаты,",
"* когда показатель опустится ниже 30.",
"* |cff71d5ff|Hspell:63802|h[Brain Link]|h|r: Связанные игроки тянутся друг к другу — держите связи в растянутом состоянии.",
"* |cff71d5ff|Hspell:57687|h[Brain Portal]|h|r: Порталы открываются для преследования мозга — отправьте отмеченную группу через них и завершите иллюзию.",
"* |cff71d5ff|Hspell:62979|h[Guardian of Yogg]|h|r: Стражи поднимаются из теней — быстро атакуйте их AoE."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33293"] = { "Разрушитель XT-002",
"* |cff71d5ff|Hspell:65121|h[Light Bomb]|h|r: Светящиеся бомбы взрываются вокруг игрока — убегите от цели.",
"* |cff71d5ff|Hspell:64234|h[Gravity Bomb]|h|r: Гравитационные бомбы обрушиваются вокруг цели — не стойте на ней.",
"* |cff71d5ff|Hspell:64206|h[Consumption]|h|r: Фаза с открытым сердцем оставляет зоны потребления — не стойте в них и сжигайте сердце."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33432"] = { "Мимирон",
"* |cff71d5ff|Hspell:63631|h[Shock Blast]|h|r: Огромный взрыв из его боковой части - призывайте бойцов.",
"* |cff71d5ff|Hspell:64402|h[Rocket Strike]|h|r: Ракеты обрушиваются по отмеченной линии - немедленно покиньте её.",
"* |cff71d5ff|Hspell:63274|h[Laser Barrage]|h|r: Он вращается и стреляет лазерами - бегите по широкой орбите.",
"* |cff71d5ff|Hspell:64529|h[Plasma Blast]|h|r: Плавные взрывы поражают танка - оказывайте защитные исцеления.",
"* |cff71d5ff|Hspell:64623|h[Frost Bomb]|h|r: Замораживающая бомба падает - разрушьте её, прежде чем она приземлится."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33515"] = { "Ауриайя",
"* |cff71d5ff|Hspell:64386|h[Звуковой крик]|h|r: Её крик пугает комнату — держите прерывание на каждый бросок.",
"* |cff71d5ff|Hspell:64396|h[Гвардейская роя]|h|r: Ферменный защитник снова и снова поднимается — используйте AoE для уничтожения роя, убивайте сферы стража.",
"* |cff71d5ff|Hspell:64675|h[Пустотная зона]|h|r: Пустотные зоны преследуют игрока — сделайте шаг в сторону."
};

-- Trial of the Crusader : Zona 649 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34441"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34444"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34445"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34447"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34448"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34449"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34450"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34451"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34453"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34454"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34455"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34456"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34458"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34459"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34460"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34461"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34463"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34465"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34466"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34467"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34468"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34469"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34470"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34471"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34472"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34473"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34474"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34475"] = { "Чемпионы фракций",
"* |cff71d5ff|Hspell:65947|h[Bladestorm]|h|r: Воин обрушивает удар - бойцы отступают.",
"* |cff71d5ff|Hspell:65983|h[Heroism]|h|r: Их героизм усиливает группу - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:65816|h[Hellfire]|h|r: Огонь ада поджигает пол - отходите от целей.",
"* |cff71d5ff|Hspell:65801|h[Sheep]|h|r: Их контроль толпы срабатывает - держите готовыми снятие эффектов.",
"* |cff71d5ff|Hspell:66017|h[Death Grip]|h|r: Удушающий захват хватает игрока - отмеченные игроки и группа держатся вместе."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34496"] = { "Братство Валь-Кир",
"* |cff71d5ff|Hspell:65950|h[Светлая эссенция]|h|r: Половина группы несет светлую эссенцию - касайтесь только светлых сфер,",
"* сферы противоположного цвета вызывают ожог.",
"* |cff71d5ff|Hspell:66001|h[Темная эссенция]|h|r: Другая половина несет темную эссенцию - касайтесь только темных сфер.",
"* |cff71d5ff|Hspell:39089|h[Специальный зов]|h|r: При специальном зове эссенции меняются местами - переходите к сферам противоположного цвета одновременно.",
"* |cff71d5ff|Hspell:65875|h[Двойное соглашение]|h|r: Один двойник лечит другого - прервите соглашение.",
"* |cff71d5ff|Hspell:65916|h[Сила двойников]|h|r: Сильный двойник получает уменьшенный урон - перераспределите урон между собой."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34497"] = { "Братство Валь-Кир",
"* |cff71d5ff|Hspell:65950|h[Светлая эссенция]|h|r: Половина группы несет светлую эссенцию - касайтесь только светлых сфер,",
"* сферы противоположного цвета вызывают ожог.",
"* |cff71d5ff|Hspell:66001|h[Темная эссенция]|h|r: Другая половина несет темную эссенцию - касайтесь только темных сфер.",
"* |cff71d5ff|Hspell:39089|h[Специальный зов]|h|r: При специальном зове эссенции меняются местами - переходите к сферам противоположного цвета одновременно.",
"* |cff71d5ff|Hspell:65875|h[Двойное соглашение]|h|r: Один двойник лечит другого - прервите соглашение.",
"* |cff71d5ff|Hspell:65916|h[Сила двойников]|h|r: Сильный двойник получает уменьшенный урон - перераспределите урон между собой."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34564"] = { "Ануб'арак",
"* |cff71d5ff|Hspell:45419|h[Nerubian Burrowers]|h|r: Burrowers поднимаются из пола - быстро их убивайте и прерывайте их атаки.",
"* |cff71d5ff|Hspell:67574|h[Преследуют]|h|r: Стаи преследуют отмеченного игрока – убегайте в стороны и используйте AoE в движении.",
"* |cff71d5ff|Hspell:66013|h[Penetrating Cold]|h|r: На последнем этапе эффект заморозки накладывается на всех – лечите, чтобы нейтрализовать.",
"* |cff71d5ff|Hspell:66012|h[Freezing Slash]|h|r: Freezing Slash наносит урон игроку — целители готовы.",
"* |cff71d5ff|Hspell:65919|h[Burrow]|h|r: Используйте Burrow с волнами появления прислужников — расчистите группу, он появится рядом с отмеченной зоной."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34780"] = { "Лорд Джараксус",
"* |cff71d5ff|Hspell:66197|h[Пламя Легиона]|h|r: Следы пламени, где бы ни шёл отмеченный – бегите по этой тропе к стене.",
"* |cff71d5ff|Hspell:66237|h[Ожигание плоти]|h|r: Отмеченный вступает в соревнование по исцелению – исцеляйте до тех пор, пока не исчезнет печать.",
"* |cff71d5ff|Hspell:66269|h[Переход в Нижний мир]|h|r: Открывается портал – быстро убивайте хозяина и призываемых.",
"* |cff71d5ff|Hspell:66258|h[Нижний вулкан]|h|r: Извергается вулкан – уничтожьте его, прежде чем огненные шары заполонят комнату.",
"* |cff71d5ff|Hspell:67009|h[Нижняя сила]|h|r: Он усиливает себя – отменяйте способность босса.",
"* |cff71d5ff|Hspell:66532|h[Огненный шар Нижнего мира]|h|r: Огненный шар поражает танка – прерывайте его при каждом применении."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34796"] = { "Северные звери",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: Импе́йлы накапливаются через танка — сначала нужно сжечь снебольдов с задней части танка.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Огненные бомбы распространяются по группе — уходите от отмеченных целей.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: Зверь бежит по арене — уклоняйтесь от атаки и нападайте, пока он оглушен.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: Дыхание льда охватывает комнату — избегайте зоны воздействия.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: Слизь распространяется под червями — избегайте контакта.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: Токсин парализует отмеченных — держите под рукой целителей.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: Ожоги распространяются при контакте — держите дистанцию от отмеченных целей."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34797"] = { "Северные звери",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: Импе́йлы накапливаются через танка — сначала нужно сжечь снебольдов с задней части танка.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Огненные бомбы распространяются по группе — уходите от отмеченных целей.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: Зверь бежит по арене — уклоняйтесь от атаки и нападайте, пока он оглушен.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: Дыхание льда охватывает комнату — избегайте зоны воздействия.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: Слизь распространяется под червями — избегайте контакта.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: Токсин парализует отмеченных — держите под рукой целителей.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: Ожоги распространяются при контакте — держите дистанцию от отмеченных целей."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34799"] = { "Северные звери",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: Импе́йлы накапливаются через танка — сначала нужно сжечь снебольдов с задней части танка.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Огненные бомбы распространяются по группе — уходите от отмеченных целей.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: Зверь бежит по арене — уклоняйтесь от атаки и нападайте, пока он оглушен.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: Дыхание льда охватывает комнату — избегайте зоны воздействия.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: Слизь распространяется под червями — избегайте контакта.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: Токсин парализует отмеченных — держите под рукой целителей.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: Ожоги распространяются при контакте — держите дистанцию от отмеченных целей."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["35144"] = { "Северные звери",
"* |cff71d5ff|Hspell:66331|h[Impale]|h|r: Импе́йлы накапливаются через танка — сначала нужно сжечь снебольдов с задней части танка.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Огненные бомбы распространяются по группе — уходите от отмеченных целей.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: Зверь бежит по арене — уклоняйтесь от атаки и нападайте, пока он оглушен.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: Дыхание льда охватывает комнату — избегайте зоны воздействия.",
"* |cff71d5ff|Hspell:66883|h[Slime Pool]|h|r: Слизь распространяется под червями — избегайте контакта.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: Токсин парализует отмеченных — держите под рукой целителей.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: Ожоги распространяются при контакте — держите дистанцию от отмеченных целей."
};

-- Trial of the Champion : Zona 650 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34657"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34701"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34702"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34703"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34705"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34928"] = { "Исповедница Серебряного Авангарда Пейлтресс",
"* |cff71d5ff|Hspell:66620|h[Память]|h|r: Память проявляется и сражается — уничтожьте её, уклоняйтесь от ран, которые она наносит.",
"* |cff71d5ff|Hspell:66515|h[Отражающий щит]|h|r: Щит отражает заклинания — заклинателям следует держаться от него подальше.",
"* |cff71d5ff|Hspell:66538|h[Святая искра]|h|r: Святая искра поджигает помеченных — нейтрализуйте эффект.",
"* |cff71d5ff|Hspell:66537|h[Восстановление]|h|r: Она восстанавливается — нейтрализуйте эффект восстановления."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35119"] = { "Эдрик Чистый",
"* |cff71d5ff|Hspell:66935|h[Radiance]|h|r: Сияние ослепляет всех, кто смотрит на него – никогда не смотрите на вспышку.",
"* |cff71d5ff|Hspell:66905|h[Hammer]|h|r: Он бросает свой молот – отмеченный ловит его и бросает обратно.",
"* |cff71d5ff|Hspell:66889|h[Vengeance]|h|r: Его ярость усиливает его силу – поджигайте его между ударами молотом."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35451"] = { "Черный рыцарь",
"* |cff71d5ff|Hspell:67781|h[Desecration]|h|r: Desecration ползет по полу — выходите из зоны.",
"* |cff71d5ff|Hspell:67751|h[Explode]|h|r: Гул приближается к группе — уходите.",
"* |cff71d5ff|Hspell:67823|h[Marked]|h|r: Он накладывает эффект болезни на игрока — целители оставайтесь рядом."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35569"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35570"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35571"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35572"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35617"] = { "Великие чемпионы",
"* |cff71d5ff|Hspell:67528|h[Healing Wave]|h|r: Их целитель использует волну исцеления - держите на нем прерывания.",
"* |cff71d5ff|Hspell:66043|h[Polymorph]|h|r: Маг использует полиморф - быстро нейтрализуйте.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: Шаман использует проклятие - нейтрализуйте проклятие.",
"* |cff71d5ff|Hspell:66045|h[Haste]|h|r: Ускорение усиливает их - очистите эффект от босса.",
"* |cff71d5ff|Hspell:67594|h[Poisons]|h|r: Яды распространяются - уходите от отметок."
};

-- Pit of Saron : Zona 658 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36476"] = { "Ик",
"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: Монстр преследует игрока и обстреливает его - убегайте в сторону.",
"* |cff71d5ff|Hspell:69024|h[Toxic Waste]|h|r: Ядовитые лужи покрывают пол - не стойте на них.",
"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: Ядовитая волна покрывает большую площадь - уходите."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36494"] = { "Начальник кузни Гархлад",
"* |cff71d5ff|Hspell:70381|h[Глубокое замораживание]|h|r: Глубокое замораживание фиксирует того, кого держит, — держите под рукой средства для очистки;",
"* валуны из саронита, которые он бросает, остаются позади, чтобы служить укрытием от его холода."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36658"] = { "Повелитель Плети Тираний",
"* |cff71d5ff|Hspell:69172|h[Overlord's Brand]|h|r: Бренд отражает каждый удар, нанесенный целевой группе, — бренд блокирует атаки.",
"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: Лапа Рименфанга преследует игрока — убегите, прежде чем произойдет взрыв."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36661"] = { "Повелитель Плети Тираний",
"* |cff71d5ff|Hspell:69172|h[Overlord's Brand]|h|r: Бренд отражает каждый удар, нанесенный целевой группе, — бренд блокирует атаки.",
"* |cff71d5ff|Hspell:69275|h[Icy Grasp]|h|r: Лапа Рименфанга преследует игрока — убегите, прежде чем произойдет взрыв."
};

-- The Forge of Souls : Zona 632 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36497"] = { "Броньям",
"* |cff71d5ff|Hspell:68839|h[Зараженная душа]|h|r: Зараженная душа возвращается к нему - уничтожьте сферу души, прежде чем она накормит его.",
"* |cff71d5ff|Hspell:68872|h[Шторм души]|h|r: При низком уровне здоровья шторм разрушает комнату - прижимайтесь к краям, пока он вращается."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36502"] = { "Пожиратель Душ",
"* |cff71d5ff|Hspell:68820|h[Well of Souls]|h|r: Колодец собирает пол - не стойте на нем.",
"* |cff71d5ff|Hspell:69051|h[Mirrored Soul]|h|r: Зеркало привязывает игрока к нему - прекратите атаку, пока привязка действует.",
"* |cff71d5ff|Hspell:68982|h[Phantom Blast]|h|r: Призрачный взрыв разрушает комнату - прервите его.",
"* |cff71d5ff|Hspell:68899|h[Wailing Souls]|h|r: Плачущие души охватывают комнату - бегите по безопасной стороне."
};

-- Icecrown Citadel : Zona 631 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36597"] = { "Король-лич",
"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: Defile распространяется, где бы ни стоял кто-либо - никогда не вставайте в него и не распространяйте его,",
"* иначе он уничтожит платформу.",
"* |cff71d5ff|Hspell:70337|h[Necrotic Plague]|h|r: Яд переходит между целями - разместите его на мобов и никогда не рассеивайте его.",
"* |cff71d5ff|Hspell:70372|h[Shambling Horror]|h|r: Шамблинги поднимаются между фазами - убивайте их и поддерживайте яд на них.",
"* |cff71d5ff|Hspell:69200|h[Raging Spirit]|h|r: Яростные духи появляются зимой - уничтожайте их, прежде чем они достигнут группы.",
"* |cff71d5ff|Hspell:68981|h[Remorseless Winter]|h|r: Зимняя буря тянет игроков внутрь - оставайтесь вне кольца.",
"* |cff71d5ff|Hspell:71844|h[Valkyr]|h|r: Валькирии хватают игроков - уничтожайте их, прежде чем они отберут метку.",
"* |cff71d5ff|Hspell:72262|h[Quake]|h|r: Землетрясение разрушает платформу - распространяйтесь по безопасной стороне."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36612"] = { "Лорд Ребрад",
"* |cff71d5ff|Hspell:69076|h[Bone Storm]|h|r: Он обрушивает на комнату костяные осколки – распределяйте их широко и держитесь от спины.",
"* |cff71d5ff|Hspell:69057|h[Bone Spike]|h|r: Три игрока получают уколы от шипов – быстро освободите их.",
"* |cff71d5ff|Hspell:69146|h[Coldflame]|h|r: Линии холодной пламени проносятся по полу – не стойте на них."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36626"] = { "Тухлопуз",
"* |cff71d5ff|Hspell:69279|h[Газовые споры]|h|r: Газовые споры маркируют игроков - коснитесь взрыва один раз, чтобы получить иммунитет.",
"* |cff71d5ff|Hspell:69166|h[Вдыхаемый гной]|h|r: Каждый вдох наносит урон - при трех слоях вся группа получает защитные эффекты.",
"* |cff71d5ff|Hspell:69240|h[Зловещий газ]|h|r: Зловещий газ распространяет дальность - удерживайте дальность в широком диапазоне.",
"* |cff71d5ff|Hspell:69195|h[Острый гной]|h|r: Острый взрыв происходит с третьим вдохом - защитные перезагрузки активируются.",
"* |cff71d5ff|Hspell:72219|h[Желудочный вздутие]|h|r: Желудочное вздутие накладывается на танка - меняйте танка."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36627"] = { "Гниломорд",
"* |cff71d5ff|Hspell:69508|h[Slime Spray]|h|r: Конус слизи – оставайтесь за ним.",
"* |cff71d5ff|Hspell:69674|h[Mutating Infection]|h|r: Инфицированный очищает это, бегая к большому слизи – взрыв порождает слизистого моба, уничтожьте его вдали от группы.",
"* |cff71d5ff|Hspell:69774|h[Sticky Ooze]|h|r: Слизь преследует игроков – уходите от нее.",
"* |cff71d5ff|Hspell:69558|h[Unstable Ooze]|h|r: Объединенные слизи увеличивают большую лужу – держите маленькие вдали от нее."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36678"] = { "Профессор Мерзоцид",
"* |cff71d5ff|Hspell:70341|h[Slime Puddle]|h|r: Слизь образуется везде, где она появляется – не вставайте на нее и не сражайтесь.",
"* |cff71d5ff|Hspell:70447|h[Volatile Ooze]|h|r: Слизь приклеивает игрока – взорвите ее, чтобы освободить.",
"* |cff71d5ff|Hspell:70672|h[Gaseous Bloat]|h|r: Газ надувает игрока – взорвите газ.",
"* |cff71d5ff|Hspell:71255|h[Choking Gas Bomb]|h|r: Газовые бомбы – не вставайте на них.",
"* |cff71d5ff|Hspell:70911|h[Unbound Plague]|h|r: Неконтролируемая болезнь перепрыгивает между игроками – передайте ее, прежде чем она убьет носителя.",
"* |cff71d5ff|Hspell:72840|h[Volatile Experiment]|h|r: На 3-й фазе оба эксперимента летают одновременно – заранее спланируйте слизь и газовые станции."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36789"] = { "Валитрия Сноходица",
"* |cff71d5ff|Hspell:72483|h[Nightmare Portal]|h|r: Порталы открываются в сновидения - целители переходят, получают бафф и возвращаются, чтобы лечить Валитрию.",
"* |cff71d5ff|Hspell:70588|h[Suppression]|h|r: Облака подавления блокируют лечение - разрушайте их.",
"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay Waste взрывает комнату - бегите из отмеченных мест.",
"* |cff71d5ff|Hspell:71179|h[Mana Void]|h|r: Пустоты маны истощают заклинателей - уходите от отмеченных мест.",
"* |cff71d5ff|Hspell:70751|h[Corrosion]|h|r: Разъяренные зомби поднимаются волнами - используйте на них AoE."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36853"] = { "Синдрагоса",
"* |cff71d5ff|Hspell:70126|h[Ледяной маяк]|h|r: Игроки, пораженные маяком, поднимаются как ледяные гробницы - гробницы становятся укрытием,",
"* спланируйте свои позиции.",
"* |cff71d5ff|Hspell:69766|h[Нестабильность]|h|r: Нестабильность накапливается при использовании заклинаний - прекратите использование заклинаний при пяти",
"* слоях и дайте ей рассеяться.",
"* |cff71d5ff|Hspell:70128|h[Мистический буф]|h|r: Буффы накапливаются через ее дыхание - меняйте танка перед пятью слоями.",
"* |cff71d5ff|Hspell:69762|h[Освобожденная магия]|h|r: Дебафф Освобожденной магии блокирует заклинателей - прекратите использование заклинаний,",
"* пока он не исчезнет.",
"* |cff71d5ff|Hspell:43810|h[Фаза воздуха]|h|r: Она поднимается для фазы воздуха - распределите и лечите обстрел."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36855"] = { "Леди Смертный Шепот",
"* |cff71d5ff|Hspell:71289|h[Dominate Mind]|h|r: Она подчиняет игроков — контролируйте отмеченных до тех пор, пока эффект не исчезнет.",
"* |cff71d5ff|Hspell:61131|h[Adds]|h|r: Волны культистов сопровождают её — наносите урон всей группе и останавливайте возрождающихся.",
"* |cff71d5ff|Hspell:70674|h[Vampric Might]|h|r: Культистский бафф усиливает их — быстро нейтрализуйте его.",
"* |cff71d5ff|Hspell:71001|h[Death and Decay]|h|r: Разложение сжигает пол — покиньте область.",
"* |cff71d5ff|Hspell:71204|h[Touch of Insignificance]|h|r: Прикосновение снижает защиту танка — меняйте танка.",
"* |cff71d5ff|Hspell:71236|h[Dark Martyrdom]|h|r: Культист взрывается — убегите от отмеченных.",
"* |cff71d5ff|Hspell:34018|h[Reanimation]|h|r: Возрождающиеся культисты — снова наносите им урон."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37215"] = { "Верховный воевода Саурфанг",
"* |cff71d5ff|Hspell:69638|h[Battle Fury]|h|r: Вражеская команда усиливает себя во время боя — быстро уничтожайте врагов на периферии.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: Замораживающий удар ошеломляет палубу — расступайтесь.",
"* |cff71d5ff|Hspell:69652|h[Bladestorm]|h|r: Шторм рассекает палубу — отступайте.",
"* |cff71d5ff|Hspell:23334|h[Boarders]|h|r: Воины нападают — уничтожайте их, прежде чем они достигнут орудий."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37540"] = { "Верховный воевода Саурфанг",
"* |cff71d5ff|Hspell:69638|h[Battle Fury]|h|r: Вражеская команда усиливает себя во время боя — быстро уничтожайте врагов на периферии.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: Замораживающий удар ошеломляет палубу — расступайтесь.",
"* |cff71d5ff|Hspell:69652|h[Bladestorm]|h|r: Шторм рассекает палубу — отступайте.",
"* |cff71d5ff|Hspell:23334|h[Boarders]|h|r: Воины нападают — уничтожайте их, прежде чем они достигнут орудий."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37813"] = { "Саурфанг Смертоносный",
"* |cff71d5ff|Hspell:72293|h[Mark of the Fallen Champion]|h|r: Закрытый игрок наносит урон всей группе — требуется интенсивное лечение группы для нейтрализации.",
"* |cff71d5ff|Hspell:72378|h[Blood Nova]|h|r: Взрыв крови распространяется — распределитесь.",
"* |cff71d5ff|Hspell:72385|h[Boiling Blood]|h|r: Кипящая кровь поджигает группу — расчищайте.",
"* |cff71d5ff|Hspell:72410|h[Rune of Blood]|h|r: Руна высасывает здоровье у танка — меняйте танка.",
"* |cff71d5ff|Hspell:72737|h[Frenzy]|h|r: На 30% здоровья он впадает в ярость — уничтожайте его.",
"* |cff71d5ff|Hspell:72173|h[Blood Beasts]|h|r: Крововые звери восстанавливаются — наносите им урон, прежде чем они достигнут группы."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37955"] = { "Кровавая королева Лана'тель",
"* |cff71d5ff|Hspell:71340|h[Пакта Тёмных Павших]|h|r: Проклятые трое делят боль – сгруппируйтесь и сожгите пакт.",
"* |cff71d5ff|Hspell:70946|h[Жало вампира]|h|r: Игрок, укушенный, получает сущность – поддерживайте одного не укушенного целителя и имейте план обмена.",
"* |cff71d5ff|Hspell:70877|h[Кровопийство]|h|r: Сущность вызывает тягу – укушенный кусает другого игрока, прежде чем сущность взорвется.",
"* |cff71d5ff|Hspell:71266|h[Теневые набеги]|h|r: Тени преследуют отмеченного игрока – разбегайтесь, чтобы избежать отметок.",
"* |cff71d5ff|Hspell:71772|h[Крововой разряд]|h|r: Крововые разряды распространяются – расставьтесь.",
"* |cff71d5ff|Hspell:71510|h[Крововое зеркало]|h|r: Зеркало отражает урон – держите пару, отражающую урон, на расстоянии."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37970"] = { "Совет крови",
"* |cff71d5ff|Hspell:70952|h[Переключение цели]|h|r: Цель переключается на защищенного принца - никогда не атакуйте защищенного.",
"* |cff71d5ff|Hspell:72040|h[Одаренное пламя]|h|r: Одаренное пламя следует за игроком - бегите по следу.",
"* |cff71d5ff|Hspell:72037|h[Волновая стая]|h|r: Волновая стая отскакивает от группы - разнеситесь.",
"* |cff71d5ff|Hspell:72053|h[Кинетические бомбы]|h|r: Кинетические бомбы плавают и отскакивают - ловите их, прежде чем они упадут."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37972"] = { "Совет крови",
"* |cff71d5ff|Hspell:70952|h[Переключение цели]|h|r: Цель переключается на защищенного принца - никогда не атакуйте защищенного.",
"* |cff71d5ff|Hspell:72040|h[Одаренное пламя]|h|r: Одаренное пламя следует за игроком - бегите по следу.",
"* |cff71d5ff|Hspell:72037|h[Волновая стая]|h|r: Волновая стая отскакивает от группы - разнеситесь.",
"* |cff71d5ff|Hspell:72053|h[Кинетические бомбы]|h|r: Кинетические бомбы плавают и отскакивают - ловите их, прежде чем они упадут."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37973"] = { "Совет крови",
"* |cff71d5ff|Hspell:70952|h[Переключение цели]|h|r: Цель переключается на защищенного принца - никогда не атакуйте защищенного.",
"* |cff71d5ff|Hspell:72040|h[Одаренное пламя]|h|r: Одаренное пламя следует за игроком - бегите по следу.",
"* |cff71d5ff|Hspell:72037|h[Волновая стая]|h|r: Волновая стая отскакивает от группы - разнеситесь.",
"* |cff71d5ff|Hspell:72053|h[Кинетические бомбы]|h|r: Кинетические бомбы плавают и отскакивают - ловите их, прежде чем они упадут."
};

-- Halls of Reflection : Zona 668 --

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38112"] = { "Фалрик",
"* |cff71d5ff|Hspell:72422|h[Трещащий удар]|h|r: Стрел становится слабее - держите под рукой очищение.",
"* |cff71d5ff|Hspell:72426|h[Неминуемая отчаяние]|h|r: Отчаяние охватывает цель - быстро очистите ее; волны отвратительных духов обрушиваются между ними."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38113"] = { "Марвин",
"* |cff71d5ff|Hspell:72363|h[Corrupted Flesh]|h|r: Заражённая плоть сжигает того, кто её держит — будьте готовы к очищению.",
"* |cff71d5ff|Hspell:72368|h[Shared Suffering]|h|r: Совместная боль сковывает группу — держите союзников вдали.",
"* |cff71d5ff|Hspell:72383|h[Corrupted Touch]|h|r: Прикосновение высасывает энергию — очистите.",
"* |cff71d5ff|Hspell:72362|h[Well of Corruption]|h|r: Коррупция заполняет пол — не стойте на ней."
};

-- The Ruby Sanctum : Zona 724 --

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39746"] = { "Генерал Заритриан",
"* |cff71d5ff|Hspell:74367|h[Броня рассечения]|h|r: Накопление брони рассечения на танк — меняйте танки.",
"* |cff71d5ff|Hspell:74398|h[Драки]|h|r: Ониксовые драки появляются в комнате - убивайте их, будьте готовы прервать действия.",
"* |cff71d5ff|Hspell:74384|h[Страшный рев]|h|r: Страшный рев — прервите его или столкнитесь со страхом."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39747"] = { "Савиана Рэйджфайр",
"* |cff71d5ff|Hspell:74453|h[Beacon of Flames]|h|r: Она накладывает эффект на игрока для следующего дыхания - уберите эффект подальше от группы.",
"* |cff71d5ff|Hspell:74403|h[Flame Breath]|h|r: Широкое дыхание огнем - смотрите на нее.",
"* |cff71d5ff|Hspell:78722|h[Enrage]|h|r: Она вызывает ярость - успокойте ее."
};

-- [editor web 2026-10-16] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39751"] = { "Балтарус, Воитель",
"* |cff71d5ff|Hspell:75125|h[Blade Tempest]|h|r: Whirlwind разрезает врагов в ближнем бою - выходите из-под атаки.",
"* |cff71d5ff|Hspell:74509|h[Repelling Wave]|h|r: Волна отталкивает всех - держитесь от стен.",
"* |cff71d5ff|Hspell:74505|h[Splitting Brand]|h|r: Огонь маркирует игрока - клон получает копию, следите за разделением."
};

-- [editor web 2026-10-16] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39863"] = { "Халион",
"* |cff71d5ff|Hspell:74562|h[Огненная Комбинация]|h|r: Комбинация основана на огненном уроне, а затем оставляет огненный след за собой — направьте его к краю",
"* мира.",
"* |cff71d5ff|Hspell:74792|h[Теневая Поглощение]|h|r: То же самое — следы на темной стороне — складывайте их у края мира.",
"* |cff71d5ff|Hspell:74648|h[Удар Метеоритом]|h|r: Метеорит падает в огненную сферу — уходите от цели.",
"* |cff71d5ff|Hspell:74769|h[Ночной Клинок]|h|r: Вращающийся клинок наносит удар в сферу ночи — держите луч подальше от себя.",
"* |cff71d5ff|Hspell:74525|h[Огненное Дыхание]|h|r: Огненное дыхание для танка в огненной сфере — направьте его на него.",
"* |cff71d5ff|Hspell:74806|h[Теневое Дыхание]|h|r: Теневое дыхание для танка в ночной сфере — направьте его на него."
};
P.ru = ru;
