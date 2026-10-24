--[[
	Bosses_Cata_pt.lua
		Datos en PT del pack Cata.
		Fichero creado por el editor web (2026-10-14); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local pt = {};
local pack = pt;


-- Castillo de Colmillo Oscuro : Zona 209 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3887"] = { "Barão Silverlaine",
"* Dispel |cff71d5ff|Hspell:93956|h[Veil of Shadow]|h|r para que a cura não seja reduzida.",
"* Quando os mobs spawnem, DPS total nos mobs."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4278"] = { "Comandante Floraval",
"* Os adds podem ser controlados e devem ser mortos o mais rápido possível; sua Unholy Empowerment deve ser interrompida.",
"* O tanque deve mantê-lo voltado para longe do grupo e evitar as profanações no chão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46962"] = { "Barão Ashbury",
"* Interromper ou dissipar |cff71d5ff|Hspell:93712|h[Dor e Sofrimento]|h|r.",
"* |cff71d5ff|Hspell:93710|h[Asfixiar]|h|r deixa todos com 1% de vida, e então ele lança |cff71d5ff|Hspell:93705|h[Sob a Execução]|h|r; interrompa assim que o grupo recuperar alguma vida, porque também cura o chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46963"] = { "Lorde Walden",
"* Quando ele conjurar a poção verde, TODOS devem se mover.",
"* Quando ele conjurar a poção vermelha, TODOS devem ficar parados."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46964"] = { "Lorde Godfrey",
"* Remover o |cff71d5ff|Hspell:93761|h[Maldição de Balas Amaldiçadas]|h|r sempre que possível.",
"* Afastar-se do |cff71d5ff|Hspell:93520|h[Barragem de Pistolas]|h|r."
};

-- Zul'Aman : Zona 3805 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23574"] = { "Akil'zon",
"* Todos, excepto a +6 jardas. |cff71d5ff|Hspell:61911|h[Interrupção Estática]|h|r aumenta o dano se houver jogadores por perto.",
"* Concentrar todo o dano em cima do águia branca que levanta um jogador.",
"* Um jogador é arremessado para |cff71d5ff|Hspell:45336|h[Tempestade Elétrica]|h|r: todos se agrupam embaixo dele para evitar o dano."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23576"] = { "Nalorakk",
"* |cff71d5ff|Hspell:42402|h[Surge]|h|r ataca ao jogador mais distante; você deve trocar após cada ataque ou morrerá.",
"* Na forma de urso, ele lança interrupções; tenha cuidado se o cast do curandeiro sobrepor-se com |cff71d5ff|Hspell:42395|h[Corte Lacerante]|h|r que causa 180K.",
"* DPS total no chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23577"] = { "Halazzi Avatar do Lynx",
"* Mantenha o chefe longe da área do totem de água.",
"* Os conjuradores podem usar a área do totem de água para restaurar a saúde e a mana.",
"* Quebre os totems de raio imediatamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23578"] = { "Jan'alai <Avatar do Dragão-Garra>",
"* Ele instancia 2 adicionais, matar APENAS 1.",
"* Tanke o chefe ao lado do outro adicional, na frente do caminho para coletar os filhotes e atacar com AoE.",
"* O chefe irá para o centro e colocará bombas no chão que devemos evitar porque explodem.",
"* Estas operações se repetem durante todo o encontro.",
"* Às vezes, o chefe libera uma chama frontal que deixa uma marca no chão que devemos evitar.",
"|cFFFF0000Dica:|r Se houver um mago no grupo, é interessante roubar o terremoto do pull anterior e lançá-lo no chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23863"] = { "Daakara <O Invencível>",
"* Ele se transformará aleatoriamente em 2 das 4 formas:",
"Águia. Quebre o totem de raio e evite os ciclones.",
"Urso. O curandeiro deve dissipar a paralisia e lembrar-se dos ataques.",
"Lince. Difícil para o curandeiro; mate os 2 pequenos gatos o mais rápido possível. O chefe aplica sangramentos aleatórios.",
"Dragão-leão. Evite os danos das fendas e das colunas de fogo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24239"] = { "Grão-bagateiro Malacrass",
"* Primeiro, neutralizamos os dois adicionais.",
"Idealmente, use um controle para o adicional à esquerda enquanto faz DPS total no adicional à direita",
"e se pudermos mantê-lo sob controle até o final, continuamos com o chefe,",
"caso contrário, mate o segundo adicional antes de continuar com o chefe.",
"* Ele usará as habilidades dos jogadores. Esteja pronto para interromper e dissipar tudo o que puder."
};

-- Throne of the Tides (remasterizada) : Zona 643 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23870"] = { "Coren Direbrew",
"* Tanque: ataque rapidamente a Coren e seus minions para que não causem dano em DPS com armadura leve ou de tecido.",
"* Adicionais: mate os minions que ele chama primeiro para reduzir o dano do grupo.",
"* Os baldes de cerveja nas mesas: jogue-os ou use-os para bônus de dano temporários ou para mitigar os debuffs do chefe.",
"* Cura: tanques com forte cura pessoal (DKs, Guerreiros) podem se manter, mas um curandeiro padrão torna o encontro sem risco."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40788"] = { "Dobramentes Ghur'sha",
"* Erunak fase: |cff71d5ff|Hspell:429051|h[Earthfury]|h|r e o |cff71d5ff|Hspell:429037|h[Stormflurry Totem]|h|r, um de cada vez.",
"* |cff71d5ff|Hspell:429172|h[Terrifying Vision]|h|r tem um longo tempo de conjuração: interrompa-o.",
"* O |cff71d5ff|Hspell:429048|h[Flame Shock]|h|r é desfeito."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44566"] = { "Ozumat",
"* O jogador marcado por |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r deve se afastar (DIZER).",
"* Fique atento ao |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r.",
"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r é um efeito do tanque; Neptulon ajuda com seu fluxo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["213770"] = { "Ozumat",
"* O jogador marcado por |cff71d5ff|Hspell:428407|h[Blotting Barrage]|h|r deve se afastar (DIZER).",
"* Fique atento ao |cff71d5ff|Hspell:428594|h[Deluge of Filth]|h|r.",
"* |cff71d5ff|Hspell:428889|h[Foul Bolt]|h|r é um efeito do tanque; Neptulon ajuda com seu fluxo."
};

-- Cámaras de los Orígenes : Zona 4945 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39378"] = { "Rajh, o Constructo do Sol",
"* Evite os ciclones de fogo.",
"* |cff71d5ff|Hspell:80352|h[Summon Orb]|h|r deve ser interrompido para evitar o dano.",
"* O |cff71d5ff|Hspell:76355|h[Blessing of the Sun]|h|r causa dano e também aumenta o dano que nós causamos. Concentre toda a DPS nesse momento."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39425"] = { "Guardião do Templo Anhuur",
"* Quem receber |cff71d5ff|Hspell:75592|h[Divine Atonement]|h|r deve se afastar do grupo até que desapareça em 8 segundos, para evitar curar o chefe em excesso.",
"* Quando ele começar a lançar |cff71d5ff|Hspell:75322|h[Reverberating Hymn]|h|r, todo o grupo deve descer para puxar as duas alavancas. Ao voltarmos, interrompemos o cântico e continuamos.",
"Nota: Em normal, apenas 1 dano por lado é necessário, cada um puxando uma das alavancas."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39428"] = { "Ptah Furitérreo",
"* É um chefe opcional de foco em dano, onde a competição é para quem causa mais dano."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39587"] = { "Isiset, o Constructo Mágico",
"* Quando ele conjurar |cff71d5ff|Hspell:74137|h[Supernova]|h|r, você deve se afastar antes que o ataque termine para evitar ser atordoado.",
"* Quando ele se divide, a ordem de abate para as cópias deve ser:",
"1ª Chamada Astral",
"2ª Chuva Astral",
"3ª Véu Celeste"
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39731"] = { "Ammunae, o Constructo Vital",
"* Priorizar o DPS nos Spore Pods para que não curem o chefe, e nas Bloodpetal Flowers para evitar dano.",
"* If possible dispel |cff71d5ff|Hspell:76043|h[Wither]|h|r when it targets players.",
"Observação: No modo heróico, o tanque pode posicionar o chefe sobre um fungo morto para acelerar a morte do chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39732"] = { "Setesh, o Constructo Destrutivo",
"* O chefe não é alvo principal; os adjuntos que spawn são alvo principal.",
"* Com alto DPS, os portais podem ser ignorados e você tenta derrubar o chefe o mais rápido possível.",
"* Para ser seguro, destrua os portais assim que spawnem, e o alvo deve pegar os adjuntos que spawn (não os mate)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39788"] = { "Anraphet",
"* Mova o chefe para evitar as áreas causadas pelos |cff71d5ff|Hspell:76184|h[Feixes de Alpha]|h|r.",
"* Tente usar as mitigações durante o |cff71d5ff|Hspell:75622|h[Postura Omega]|h|r."
};

-- Grim Batol : Zona 4950 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39625"] = { "General Umbriss",
"* Quando ele lança |cff71d5ff|Hspell:74670|h[Ataque Elétrico]|h|r, o jogador alvo se move para evitar o dano.",
"* O curandeiro deve ficar atento quando o tanque recebe |cff71d5ff|Hspell:74846|h[Ferida Sanguinolenta]|h|r e o cura até pelo menos 90% para remover o debuff.",
"* Os DPS lidam com os adds (Troggs); o tanque não deve pegá-los.",
"Em HERO, um Trogg roxo aparece; antes de iniciar a luta, designe 1 DPS.",
"Deve ser CC'ado; caso contrário, deve ser morto longe do grupo e dos outros adds, APENAS o DPS designado deve atacá-lo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40177"] = { "Mestre Forjador Throngus",
"* Evite a área do |cff71d5ff|Hspell:74984|h[Mighty Stomp]|h|r.",
"* Quando Throngus pega o machado, o tanque o move pela sala para evitar o dano.",
"* Quando ele pega a espada, o curandeiro foca no tanque, pois ele receberá muito dano.",
"* Quando ele pega o escudo, coloque o tanque no canto da entrada e todos os outros atrás dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40319"] = { "Drahga Shadowburner",
"* Assim que |cff71d5ff|Hspell:75218|h[Summon Flames]|h|r aparecer, o jogador que o segue deve correr na direção oposta para mantê-lo afastado enquanto todos os outros o matam imediatamente.",
"* Quando ele monta no dragão, tanke-o no centro da sala para facilitar a evitar o |cff71d5ff|Hspell:75321|h[Valiona's Flame]|h|r ficando atrás do dragão.",
"* Quando ele lança o |cff71d5ff|Hspell:90966|h[Devastating Scourge]|h|r, evite as fissuras que causam dano e lentidão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["40484"] = { "Erúdax, o Duque do Abismo",
"* Os DPS de longo alcance devem permanecer espalhados para que os |cff71d5ff|Hspell:79466|h[Shadows Binding]|h|r não atinjam mais de um alvo.",
"* Quando ele lança o |cff71d5ff|Hspell:75664|h[Gale of Shadows]|h|r, todos devem se mover para o centro da rajada ou morrer.",
"* Após a rajada, um Twilight Corruptor (ou 2 para o herói) irá spawn.",
"Os DPS devem ser divididos para que morram o mais rápido possível, pois se atingirem os ovos, o chefe irá curar e dragões irão spawn, causando dano a toda a party até o final."
};

-- Cavernas Roca Negra : Zona 4926 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39665"] = { "Rom'ogg Esmaga-ossos",
"* Evite a nuvem de poeira do |cff71d5ff|Hspell:75272|h[Quake]|h|r. Em spawn de elementais heróicos; se o tanque e o curandeiro estiverem confortáveis, podem ser ignorados, caso contrário, mate-os.",
"* Quando ele conjurar |cff71d5ff|Hspell:75539|h[Chains of Woe]|h|r concentre TODO o DPS em quebrar as correntes, e uma vez quebradas, fuja o mais rápido possível para evitar morrer ao |cff71d5ff|Hspell:75543|h[The Skullcracker]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39679"] = { "Corla, a Arauto do Crepúsculo",
"* O objetivo deste chefe é impedir que tanto os jogadores quanto os adds alcancem 100 ticks de |cff71d5ff|Hspell:75610|h[Evolução]|h|r; se isso acontecer, o afetado se transforma em um dragão e, no caso do HERÓI, é um wipe.",
"Para evitar isso, intercepte o feixe do add antes que ele atinja 80, e troque quando nós mesmos atingirem 80.",
"O ideal é designar um jogador para cada add.",
"Dica: Se ficarmos distraídos e não virmos o debuff, quando um personagem começar a piscar, ele está prestes a se transformar; é o momento de trocar o jogador que está recebendo o feixe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39698"] = { "Karsh Steelbender <Armeiro da Crepúsculo>",
"* O tanque colocará o chefe no jato de lava até que ele tenha 5 ou 6 marcações, tirando-o imediatamente.",
"* Quando a barreira estiver prestes a esgotar, coloque-o novamente. Se esgotar, os elementais spawn e a luta fica complicada.",
"Nota: O ideal é colocá-lo repetidamente, para controlar o máximo possível o tempo que ele permanece dentro. Quanto mais tempo ele permanecer, mais dano o grupo recebe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39700"] = { "Bela",
"* Idealmente, mantenha os filhotes sob controle enquanto mata o chefe. Se isso não for possível, mate os filhotes antes do chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39705"] = { "Lorde Ascendente Obsidius",
"* Idealmente, um DPS deve flanquear as sombras (usando lentimentos); elas não têm aggro e atacam o que as atacou pela última vez.",
"* Enquanto isso, o tanque e o resto do grupo devem focar no chefe.",
"* Ocasionalmente, o chefe irá trocar com uma sombra, e o DPS de flanqueamento e o tanque irão trocar de alvo."
};

-- El Núcleo Pétreo : Zona 5088 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40586"] = { "Lady Naz'jar",
"* Interromper a habilidade |cff71d5ff|Hspell:91477|h[Shock Blast]|h|r.",
"* Evitar o jipe de |cff71d5ff|Hspell:75722|h[Summon Geyser]|h|r.",
"* Evitar as |cff71d5ff|Hspell:76001|h[Fungal Spores]|h|r.",
"* Aos 66% e 33%, ela fará o |cff71d5ff|Hspell:75683|h[Waterspout]|h|r e 3 adicionais aparecerão, que devem ser controladas para facilitar a luta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40765"] = { "Comandante Ulthok",
"* TODOS devem evitar sempre o |cff71d5ff|Hspell:76047|h[Fissura Negra]|h|r.",
"* O tanque manterá o chefe se movendo pela sala, espalhando as áreas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40792"] = { "Neptulon",
"* FASE 1, o tanque pega os Restless Behemoths; os pequenos adicionais podem ser mortos diretamente pelos DPS. Os Behemoths são movidos ao redor da sala até morrerem.",
"* FASE 2, animais e 3 Smashers spawn que canalizam em Neptulon.",
"Os Smashers devem ser mortos o mais rápido possível, mas também ajudar o tanque com os Behemoths para que ele não seja morto.",
"O tanque continua movendo o Behemoth restante e os Behemoths.",
"Evite as poças de tinta no chão.",
"* FASE 3, Neptulon nos dará |cff71d5ff|Hspell:76133|h[Tidal Surge]|h|r; neste ponto, vá com FULL DPS até que o chefe morra."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40825"] = { "Erunak Stonespeaker",
"* Use o tanque para que fique com as costas voltadas para o grupo, para evitar o dano do |cff71d5ff|Hspell:76170|h[Magma Splash]|h|r.",
"* Tente cancelar o |cff71d5ff|Hspell:76165|h[Ember Strike]|h|r quando o tanque receber.",
"* Retire o chefe do |cff71d5ff|Hspell:76234|h[Mind Fog]|h|r sempre que ele lançar.",
"* Se ele colocar |cff71d5ff|Hspell:76307|h[Absorb Magic]|h|r, ele deve ser cancelado, caso contrário, todo o dano mágico irá curá-lo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42188"] = { "Ozruk",
"* O tanque fica com as costas voltadas para a parede para evitar ser arremessado quando ele lança |cff71d5ff|Hspell:78807|h[Shatter]|h|r.",
"* Quando ele lança |cff71d5ff|Hspell:92410|h[Ground Slam]|h|r, todos, incluindo o tanque, recuam para evitar o dano de |cff71d5ff|Hspell:92662|h[Shatter]|h|r; a área de dano é muito visível no chão.",
"* No HERO, quando ele lança |cff71d5ff|Hspell:78939|h[Bulwark of Elementium]|h|r, todos os DPS à distância devem lançar um dano contínuo nele para que seja refletido e o tire do próximo |cff71d5ff|Hspell:92426|h[Paralyze]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42333"] = { "Alta-sacerdotisa Azil",
"* Você precisa se afastar de |cff71d5ff|Hspell:79340|h[Summon Gravity Well]|h|r, mas ao mesmo tempo use-as para puxar os seguidores para dentro.",
"* Desfaça |cff71d5ff|Hspell:79351|h[Force Grip]|h|r do tanque sempre que ele colocar.",
"* Se alguém puder remover maldições, é uma boa ideia remover |cff71d5ff|Hspell:79345|h[Curse of Blood]|h|r sempre que possível."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["42810"] = { "Gigante criador de cristais",
"* Salte imediatamente antes do lançamento de |cff71d5ff|Hspell:92631|h[Quake]|h|r terminar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43214"] = { "Couro-pétreo",
"* Evite as poças no chão causadas por |cff71d5ff|Hspell:80800|h[Eruption]|h|r.",
"* Evite as rochas que caem do teto; elas estão marcadas no chão por uma sombra.",
"* No HERO, quando ele lança |cff71d5ff|Hspell:92265|h[Crystal Storm]|h|r, procure se posicionar atrás de uma das rochas caídas para evitar o dano."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43438"] = { "Corborus",
"* Afaste-se imediatamente de |cff71d5ff|Hspell:92648|h[Crystal Barrage]|h|r e, ao matar os aran que saem dos cristais, mate-os imediatamente.",
"* Desfaça o debuff |cff71d5ff|Hspell:82415|h[Dampening Wave]|h|r assim que aparecer.",
"* No [Corborus], evite ao máximo as nuvens de poeira que causam dano."
};

-- Descenso de Alanegra : Zona 5094 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41270"] = { "Nefarian",
"* Nefarian revive Onyxia (|cff71d5ff|Hspell:-3277|h[Rise, Sister!]|h|r): se eles permanecerem a menos de 50m de distância, os |cff71d5ff|Hspell:-3278|h[Children of Deathwing]|h|r dobram a velocidade de ataque, então os dois dragões devem ser controlados em extremidades opostas.",
"* FASE 1: matar Onyxia primeiro; sua |cff71d5ff|Hspell:-3284|h[Electric Energy]|h|r acumula-se com o tempo e com cada |cff71d5ff|Hspell:-3276|h[Electrocute]|h|r de Nefarian, e uma |cff71d5ff|Hspell:-3288|h[Electrical Overload]|h|r explode a sala;",
"* Nefarian invoca |cff71d5ff|Hspell:-3280|h[Bone Warriors]|h|r antes de pousar e aplica |cff71d5ff|Hspell:-3295|h[Dominion]|h|r em um jogador (cure sua |cff71d5ff|Hspell:-3297|h[Stolen Power]|h|r, não os danifique).",
"* FASE 2 (Onyxia morta): o chão fica cheio de lava e 3 plataformas permanecem, uma |cff71d5ff|Hspell:-3299|h[Chromatic Prototype]|h|r cada uma: mate as 3 rapidamente porque seu |cff71d5ff|Hspell:-3300|h[Blast Novas]|h|r causa dano a todos,",
"* desviando do |cff71d5ff|Hspell:-3301|h[Shadowflame Barrage]|h|r e do |cff71d5ff|Hspell:-3302|h[Explosive Cinders]|h|r enquanto ele voa.",
"* FASE 3: Nefarian pousa e DPS máximo com lust/heroísmo, não prolongue (sua |cff71d5ff|Hspell:-3305|h[Shadowflame Spark]|h|r cresce e os |cff71d5ff|Hspell:-3306|h[Bone Warriors]|h|r revive com |cff71d5ff|Hspell:-3307|h[Empowered Strikes]|h|r)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41376"] = { "Nefarian",
"* Nefarian revive Onyxia (|cff71d5ff|Hspell:-3277|h[Rise, Sister!]|h|r): se eles permanecerem a menos de 50m de distância, os |cff71d5ff|Hspell:-3278|h[Children of Deathwing]|h|r dobram a velocidade de ataque, então os dois dragões devem ser controlados em extremidades opostas.",
"* FASE 1: matar Onyxia primeiro; sua |cff71d5ff|Hspell:-3284|h[Electric Energy]|h|r acumula-se com o tempo e com cada |cff71d5ff|Hspell:-3276|h[Electrocute]|h|r de Nefarian, e uma |cff71d5ff|Hspell:-3288|h[Electrical Overload]|h|r explode a sala;",
"* Nefarian invoca |cff71d5ff|Hspell:-3280|h[Bone Warriors]|h|r antes de pousar e aplica |cff71d5ff|Hspell:-3295|h[Dominion]|h|r em um jogador (cure sua |cff71d5ff|Hspell:-3297|h[Stolen Power]|h|r, não os danifique).",
"* FASE 2 (Onyxia morta): o chão fica cheio de lava e 3 plataformas permanecem, uma |cff71d5ff|Hspell:-3299|h[Chromatic Prototype]|h|r cada uma: mate as 3 rapidamente porque seu |cff71d5ff|Hspell:-3300|h[Blast Novas]|h|r causa dano a todos,",
"* desviando do |cff71d5ff|Hspell:-3301|h[Shadowflame Barrage]|h|r e do |cff71d5ff|Hspell:-3302|h[Explosive Cinders]|h|r enquanto ele voa.",
"* FASE 3: Nefarian pousa e DPS máximo com lust/heroísmo, não prolongue (sua |cff71d5ff|Hspell:-3305|h[Shadowflame Spark]|h|r cresce e os |cff71d5ff|Hspell:-3306|h[Bone Warriors]|h|r revive com |cff71d5ff|Hspell:-3307|h[Empowered Strikes]|h|r)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41378"] = { "Maloriak",
"* Ele despeja frascos no caldeirão e a cor segue: com o |cff71d5ff|Hspell:-2935|h[Frasco Vermelho]|h|r ele lança |cff71d5ff|Hspell:-2936|h[Chamas Consumidoras]|h|r em um alvo e o |cff71d5ff|Hspell:-2937|h[Explosão Queimante]|h|r se espalha entre quem estiver por",
"* perto (raia agrupada); com o |cff71d5ff|Hspell:-2938|h[Frasco Azul]|h|r o |cff71d5ff|Hspell:-2939|h[Arrepios Gelados]|h|r atinge quem estiver perto (raia agrupada) e o |cff71d5ff|Hspell:-2940|h[Congelar]|h|r aprisiona jogadores; com o |cff71d5ff|Hspell:-2941|h[Frasco Verde]|h|r o |cff71d5ff|Hspell:-2942|h[Slime Debilitante]|h|r faz com que tudo receba mais dano (use-o: DPS total).",
"* Com cada frasco, ele libera |cff71d5ff|Hspell:-2931|h[Aberrações]|h|r: elas são mortas separadamente, porque elas se buffam com o |cff71d5ff|Hspell:-2933|h[Catalisador de Crescimento]|h|r.",
"* Com o |cff71d5ff|Hspell:-2943|h[Frasco de Magia Negra]|h|r (heróico), os |cff71d5ff|Hspell:-2946|h[Swills Vilosos]|h|r saem em poças com seu |cff71d5ff|Hspell:-2947|h[Lodo Escuro]|h|r e canalizando o |cff71d5ff|Hspell:-2945|h[Escuridão Envolvente]|h|r: interrompa.",
"* STAGE 2 (25%): |cff71d5ff|Hspell:-2949|h[Liberar Tudo]|h|r (aberrações + os 2 |cff71d5ff|Hspell:-2953|h[Alvos Primários]|h|r, prioridade de abate) enquanto evita os |cff71d5ff|Hspell:-2950|h[Jatos de Magma]|h|r, o |cff71d5ff|Hspell:-2951|h[Absoluto Zero]|h|r explode longe e o |cff71d5ff|Hspell:-2952|h[Nova de Ácido]|h|r é um ponto crescente: cura e dano final."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41442"] = { "Atramedes",
"* Toda a luta gira em torno de |cff71d5ff|Hspell:-3072|h[Som]|h|r: a raid começa em 0 e cada efeito sonoro preenche a barra; em 100, ele canaliza |cff71d5ff|Hspell:-3455|h[Devastação]|h|r que mata a raid, então evitar as fontes de som é a chave.",
"* Os |cff71d5ff|Hspell:-3073|h[Escudos de Anões Antigos]|h|r (10 espalhados) são usados em momentos-chave: o |cff71d5ff|Hspell:-3074|h[Conflito Ressonante]|h|r o interrompe e aplica |cff71d5ff|Hspell:-3075|h[Vertigem]|h|r com +50% de dano recebido.",
"* No chão: os |cff71d5ff|Hspell:-3076|h[Pulso de Sonar]|h|r perseguem o alvo, a |cff71d5ff|Hspell:-3077|h[Modulação]|h|r atinge a todos (cura em reserva), o |cff71d5ff|Hspell:-3078|h[Respiração Sônica]|h|r persegue um jogador e o |cff71d5ff|Hspell:-3079|h[Chamas Ardentes]|h|r queima o chão.",
"* No ar: sua |cff71d5ff|Hspell:-3086|h[Respiração de Chamas]|h|r e as |cff71d5ff|Hspell:-3087|h[Chamas]|h|r queimam o chão, a |cff71d5ff|Hspell:-3085|h[Bomba de Som]|h|r cai perto de um jogador e a |cff71d5ff|Hspell:-3088|h[Bola de Fogo Sônica]|h|r persegue o marcado (ninguém mais na fila).",
"* Heroico: o |cff71d5ff|Hspell:-3082|h[Criatura Desagradável]|h|r incomoda a raid, buffando Atramedes (queime-o assim que a raid puder)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["41570"] = { "Magorja",
"* Ele morde o tanque com |cff71d5ff|Hspell:-3314|h[Mangle]|h|r (seu |cff71d5ff|Hspell:-3315|h[Sweltering Armor]|h|r derrete a armadura) e, nesse momento,",
"* dois jogadores ligados atacam com as garras: eles prendem a espícula com o |cff71d5ff|Hspell:-3320|h[Throw Hook]|h|r e a perfuram, abrindo a |cff71d5ff|Hspell:-3321|h[Point of Vulnerability]|h|r que causa dano crescente.",
"* O tanque não pode deixá-lo sem um alvo de combate: se não conseguir atingir ninguém, ele usa |cff71d5ff|Hspell:-3317|h[Molten Tantrum]|h|r.",
"* Os |cff71d5ff|Hspell:-3312|h[Lava Parasites]|h|r saltam nos jogadores e continuam a drená-los (|cff71d5ff|Hspell:-3313|h[Parasitic Infection]|h|r): a raid os ataca com AoEs enquanto se espalham.",
"* O |cff71d5ff|Hspell:-3310|h[Magma Spit]|h|r atinge 3 jogadores e a |cff71d5ff|Hspell:-3311|h[Pillar of Flame]|h|r cai aos pés do alvo, que deve se afastar.",
"* Heroico: o Lorde Nefarius adiciona o |cff71d5ff|Hspell:-3323|h[Blazing Inferno]|h|r (fogo no chão), as |cff71d5ff|Hspell:-3325|h[Blazing Bone Constructs]|h|r de |cff71d5ff|Hspell:-3327|h[Armageddon]|h|r (dano total antes de explodir) e sua |cff71d5ff|Hspell:-3328|h[Shadow Breath]|h|r em 30%."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42166"] = { "Sistema de Defesa Omnotron",
"* Os quatro golems alternam dois de cada vez: apenas o ativo é atacado enquanto o outro recarrega.",
"* Magmatron: o |cff71d5ff|Hspell:-3264|h[Incineration Security Measure]|h|r atinge toda a sala (curas constantes); o |cff71d5ff|Hspell:-3265|h[Acquiring Target]|h|r marcado corre da |cff71d5ff|Hspell:-3266|h[Flamethrower]|h|r e, no modo heróico, resiste ao |cff71d5ff|Hspell:-3267|h[Encasing Shadows]|h|r com curas; sua |cff71d5ff|Hspell:-3268|h[Barrier]|h|r é quebrada com dano.",
"* Arcanotron: o |cff71d5ff|Hspell:-3195|h[Power Generator]|h|r buffa quem esteja sobre ele (e os golems), para que o marcado o tire do grupo;",
"* o |cff71d5ff|Hspell:-3196|h[Arcane Annihilator]|h|r é interrompido sempre que possível e, enquanto o |cff71d5ff|Hspell:-3197|h[Power Conversion]|h|r estiver ativo, NINGUÉM ataca o escudo.",
"* Electron: o |cff71d5ff|Hspell:-3202|h[Lightning Conductor]|h|r marcado se afasta (danificando os próximos); mantenha a dispersão para o |cff71d5ff|Hspell:-3203|h[Electrical Discharge]|h|r e não ataque seu |cff71d5ff|Hspell:-3204|h[Unstable Shield]|h|r (no modo heróico: ele ativa o |cff71d5ff|Hspell:-3205|h[Shadow Infusion]|h|r).",
"* Toxitron: as |cff71d5ff|Hspell:-3269|h[Chemical Bombs]|h|r e suas |cff71d5ff|Hspell:-3270|h[Chemical Clouds]|h|r (+50% de dano dentro: ninguém) e seu |cff71d5ff|Hspell:-3271|h[Poison Protocol]|h|r lançam bombas que deixam |cff71d5ff|Hspell:-3273|h[Poison Puddles]|h|r; sua |cff71d5ff|Hspell:-3274|h[Poison Soaked Shell]|h|r também fica sozinha (envenenando o atacante)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42178"] = { "Sistema de Defesa Omnotron",
"* Os quatro golems alternam dois de cada vez: apenas o ativo é atacado enquanto o outro recarrega.",
"* Magmatron: o |cff71d5ff|Hspell:-3264|h[Incineration Security Measure]|h|r atinge toda a sala (curas constantes); o |cff71d5ff|Hspell:-3265|h[Acquiring Target]|h|r marcado corre da |cff71d5ff|Hspell:-3266|h[Flamethrower]|h|r e, no modo heróico, resiste ao |cff71d5ff|Hspell:-3267|h[Encasing Shadows]|h|r com curas; sua |cff71d5ff|Hspell:-3268|h[Barrier]|h|r é quebrada com dano.",
"* Arcanotron: o |cff71d5ff|Hspell:-3195|h[Power Generator]|h|r buffa quem esteja sobre ele (e os golems), para que o marcado o tire do grupo;",
"* o |cff71d5ff|Hspell:-3196|h[Arcane Annihilator]|h|r é interrompido sempre que possível e, enquanto o |cff71d5ff|Hspell:-3197|h[Power Conversion]|h|r estiver ativo, NINGUÉM ataca o escudo.",
"* Electron: o |cff71d5ff|Hspell:-3202|h[Lightning Conductor]|h|r marcado se afasta (danificando os próximos); mantenha a dispersão para o |cff71d5ff|Hspell:-3203|h[Electrical Discharge]|h|r e não ataque seu |cff71d5ff|Hspell:-3204|h[Unstable Shield]|h|r (no modo heróico: ele ativa o |cff71d5ff|Hspell:-3205|h[Shadow Infusion]|h|r).",
"* Toxitron: as |cff71d5ff|Hspell:-3269|h[Chemical Bombs]|h|r e suas |cff71d5ff|Hspell:-3270|h[Chemical Clouds]|h|r (+50% de dano dentro: ninguém) e seu |cff71d5ff|Hspell:-3271|h[Poison Protocol]|h|r lançam bombas que deixam |cff71d5ff|Hspell:-3273|h[Poison Puddles]|h|r; sua |cff71d5ff|Hspell:-3274|h[Poison Soaked Shell]|h|r também fica sozinha (envenenando o atacante)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42179"] = { "Sistema de Defesa Omnotron",
"* Os quatro golems alternam dois de cada vez: apenas o ativo é atacado enquanto o outro recarrega.",
"* Magmatron: o |cff71d5ff|Hspell:-3264|h[Incineration Security Measure]|h|r atinge toda a sala (curas constantes); o |cff71d5ff|Hspell:-3265|h[Acquiring Target]|h|r marcado corre da |cff71d5ff|Hspell:-3266|h[Flamethrower]|h|r e, no modo heróico, resiste ao |cff71d5ff|Hspell:-3267|h[Encasing Shadows]|h|r com curas; sua |cff71d5ff|Hspell:-3268|h[Barrier]|h|r é quebrada com dano.",
"* Arcanotron: o |cff71d5ff|Hspell:-3195|h[Power Generator]|h|r buffa quem esteja sobre ele (e os golems), para que o marcado o tire do grupo;",
"* o |cff71d5ff|Hspell:-3196|h[Arcane Annihilator]|h|r é interrompido sempre que possível e, enquanto o |cff71d5ff|Hspell:-3197|h[Power Conversion]|h|r estiver ativo, NINGUÉM ataca o escudo.",
"* Electron: o |cff71d5ff|Hspell:-3202|h[Lightning Conductor]|h|r marcado se afasta (danificando os próximos); mantenha a dispersão para o |cff71d5ff|Hspell:-3203|h[Electrical Discharge]|h|r e não ataque seu |cff71d5ff|Hspell:-3204|h[Unstable Shield]|h|r (no modo heróico: ele ativa o |cff71d5ff|Hspell:-3205|h[Shadow Infusion]|h|r).",
"* Toxitron: as |cff71d5ff|Hspell:-3269|h[Chemical Bombs]|h|r e suas |cff71d5ff|Hspell:-3270|h[Chemical Clouds]|h|r (+50% de dano dentro: ninguém) e seu |cff71d5ff|Hspell:-3271|h[Poison Protocol]|h|r lançam bombas que deixam |cff71d5ff|Hspell:-3273|h[Poison Puddles]|h|r; sua |cff71d5ff|Hspell:-3274|h[Poison Soaked Shell]|h|r também fica sozinha (envenenando o atacante)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["42180"] = { "Sistema de Defesa Omnotron",
"* Os quatro golems alternam dois de cada vez: apenas o ativo é atacado enquanto o outro recarrega.",
"* Magmatron: o |cff71d5ff|Hspell:-3264|h[Incineration Security Measure]|h|r atinge toda a sala (curas constantes); o |cff71d5ff|Hspell:-3265|h[Acquiring Target]|h|r marcado corre da |cff71d5ff|Hspell:-3266|h[Flamethrower]|h|r e, no modo heróico, resiste ao |cff71d5ff|Hspell:-3267|h[Encasing Shadows]|h|r com curas; sua |cff71d5ff|Hspell:-3268|h[Barrier]|h|r é quebrada com dano.",
"* Arcanotron: o |cff71d5ff|Hspell:-3195|h[Power Generator]|h|r buffa quem esteja sobre ele (e os golems), para que o marcado o tire do grupo;",
"* o |cff71d5ff|Hspell:-3196|h[Arcane Annihilator]|h|r é interrompido sempre que possível e, enquanto o |cff71d5ff|Hspell:-3197|h[Power Conversion]|h|r estiver ativo, NINGUÉM ataca o escudo.",
"* Electron: o |cff71d5ff|Hspell:-3202|h[Lightning Conductor]|h|r marcado se afasta (danificando os próximos); mantenha a dispersão para o |cff71d5ff|Hspell:-3203|h[Electrical Discharge]|h|r e não ataque seu |cff71d5ff|Hspell:-3204|h[Unstable Shield]|h|r (no modo heróico: ele ativa o |cff71d5ff|Hspell:-3205|h[Shadow Infusion]|h|r).",
"* Toxitron: as |cff71d5ff|Hspell:-3269|h[Chemical Bombs]|h|r e suas |cff71d5ff|Hspell:-3270|h[Chemical Clouds]|h|r (+50% de dano dentro: ninguém) e seu |cff71d5ff|Hspell:-3271|h[Poison Protocol]|h|r lançam bombas que deixam |cff71d5ff|Hspell:-3273|h[Poison Puddles]|h|r; sua |cff71d5ff|Hspell:-3274|h[Poison Soaked Shell]|h|r também fica sozinha (envenenando o atacante)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43296"] = { "Khímaron",
"* O |cff71d5ff|Hspell:-3009|h[Bile-O-Tron]|h|r (robô de Pip Quickwit) mantém a raid acima de 10.000 HP: abaixo disso, o |cff71d5ff|Hspell:-3012|h[Caustic Slime]|h|r mata diretamente, então o curandeiro se concentra em manter o HP de todos.",
"* O |cff71d5ff|Hspell:-3013|h[Massacre]|h|r deixa todos com 1% de HP (o |cff71d5ff|Hspell:-3010|h[Pip's Mixture]|h|r os salva) e devem ser curados imediatamente.",
"* Seu |cff71d5ff|Hspell:-3015|h[Break]|h|r empilha 25% de dano físico no tanque e o |cff71d5ff|Hspell:-3016|h[Double Attack]|h|r ataca duas vezes: os tanques trocam a cada 2 empilhamentos.",
"* A 20% ele canaliza |cff71d5ff|Hspell:-3018|h[Mortality]|h|r (imune a taunt e quase indetectável): cura total com Pip's Mixture mantendo o 1%.",
"* Heroico: Nefarius dispara periodicamente |cff71d5ff|Hspell:-3020|h[Mocking Shadows]|h|r que danificam a todos (cura de área pronta)."
};

-- El Bastión del Crepúsculo : Zona 5334 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43324"] = { "Cho'gall",
"* A |cff71d5ff|Hspell:-3165|h[Corrupting Blood]|h|r enche a barra de Corrupção com cada habilidade: em 25% acelera, em 50% causa confusão contínua,",
"* em 75% uma deformação tentacular e em 100% você perde o controle do seu personagem — mantê-lo baixo exige estratégia, pois é a chave para a luta.",
"* O |cff71d5ff|Hspell:-3161|h[Twilight Zealot]|h|r sai dos portais laterais: DPS/CC e mate-os rapidamente, seu |cff71d5ff|Hspell:-3162|h[Depravity]|h|r causa dano em área.",
"* O machado alterna |cff71d5ff|Hspell:-3156|h[Ordem da Chama]|h|r e |cff71d5ff|Hspell:-3158|h[Ordem das Sombras]|h|r: com chama, o tanque mantém o chefe longe da raid devido ao |cff71d5ff|Hspell:-3211|h[Explosão]|h|r; com sombra, espalhem-se um pouco.",
"* A |cff71d5ff|Hspell:-3155|h[Conversão]|h|r aprisiona os jogadores: interrompa o culto com stun/interrupções (cada aplauso concede a Cho'gall |cff71d5ff|Hspell:-3209|h[Devoção Corrompida]|h|r).",
"* Cho'gall's |cff71d5ff|Hspell:-3160|h[Summonings]|h|r leave corpses from which |cff71d5ff|Hspell:-3216|h[Old God Blood]|h|r is born — kill them away from the raid's path.",
"* FASE 2 a 25%: o |cff71d5ff|Hspell:-3218|h[Corrupção do Velho Deus]|h|r preenche a sala com tentáculos — DPS máximo com Hero/lust, observe os |cff71d5ff|Hspell:-3220|h[Criações Escuridas]|h|r: o seu |cff71d5ff|Hspell:-3221|h[Feixe Debilitante]|h|r corta a cura em 75%, o jogador marcado se separa."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43686"] = { "Ignícius",
"FASE 1",
"* Concentrar o tanque em uma extremidade da sala com 1 tanque e o DPS de melee atrás do chefe.",
"* Os jogadores que receberem |cff71d5ff|Hspell:82660|h[Sangue Ardente]|h|r ficarão perto do DPS à distância de Feludius para aumentar o dano enquanto o efeito durar.",
"* Quando ele fizer |cff71d5ff|Hspell:92521|h[Salto Infernal]|h|r em um jogador, ao pousar, deixa uma marca no chão que pisamos quando temos o efeito |cff71d5ff|Hspell:82762|h[Encharcamento]|h|r do |cff71d5ff|Hspell:82700|h[Bomba d'Água]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43687"] = { "Feludius",
"FASE 1",
"* Concentrar o dano em o lado oposto a Ignacious, con 1 tanque. DPS de longo alcance devem manter distância do chefe e espalhar-se.",
"* Os jogadores que receberem |cff71d5ff|Hspell:82667|h[Heart of Ice]|h|r devem ficar perto dos DPS de longo alcance de Ignacious para aumentar o dano enquanto o buff estiver ativo.",
"* |cff71d5ff|Hspell:92509|h[Hydro Lance]|h|r deve ser interrompido, caso contrário, matará um dos jogadores."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43688"] = { "Arion",
"FASE 2",
"* |cff71d5ff|Hspell:-3131|h[Lightning Rod]|h|r marca vários jogadores: espalhem-se para que o |cff71d5ff|Hspell:-3132|h[Chain Lightning]|h|r não rebote pela raid.",
"* |cff71d5ff|Hspell:-3133|h[Disperse]|h|r o teletransporta: a |cff71d5ff|Hspell:-3134|h[Lightning Explosion]|h|r atinge seu alvo quando ele reaparece e mata quem estiver por perto (apenas o jogador marcado, os outros ficam).",
"* Antes do seu |cff71d5ff|Hspell:-3130|h[Thunder Shock]|h|r, toque um dos |cff71d5ff|Hspell:-3129|h[Summon Cyclone]|h|r ciclones: o |cff71d5ff|Hspell:-3152|h[Swirling Winds]|h|r (levitação) evita o dano elétrico.",
"* Quando estiver em 25%, ele se funde com o Terrastra para formar a Monstrosidade de Elementium: queime-o rapidamente (veja sua entrada)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43689"] = { "Terrastra",
"FASE 2",
"* |cff71d5ff|Hspell:-3138|h[Erupção]|h|r: rochas sobem ao redor dela, o tanque a move e ninguém fica nelas.",
"* Jogadores levitados (dos ciclones) devem tocar em um |cff71d5ff|Hspell:-3136|h[Poço de Gravidade]|h|r para pousar antes do |cff71d5ff|Hspell:-3139|h[Terremoto]|h|r: aqueles no ar sofrem o maior dano.",
"* |cff71d5ff|Hspell:-3137|h[Fortificar Pele]|h|r a fortale e absorve dano: os DPS dissipam o dano."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["43735"] = { "Monstrosidade de Elementium",
"FASE 3",
"* Hero, lust, etc... devem ser salvos para esta fase, que é uma corrida de DPS.",
"* |cff71d5ff|Hspell:-3146|h[Instabilidade Elétrica]|h|r: dano de natureza crescente a cada 1s, espalhe a raid um pouco e os membros da melee não devem se agrupar no tanque.",
"* |cff71d5ff|Hspell:-3147|h[Ataque Gravitacional]|h|r prende um jogador em uma bolha que o levanta: os outros quebram a bolha.",
"* |cff71d5ff|Hspell:-3148|h[Semente de Lava]|h|r: planta o chão com sementes que explodem: evite-as, não pise nelas.",
"* |cff71d5ff|Hspell:-3149|h[Aura de Congelamento]|h|r congela o chão (difícil de se mover) e reduz o dano que ela recebe em 25%."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44600"] = { "Halfus Quebra-serpe",
"* Prioridades: Time Warden, Storm Rider, Abyssal Successor, Orphaned Emerald Whelp, Slate Dragon.",
"* Idealmente, o MT tanke Halfus e um dos dragões, enquanto o OT tanke outro.",
"* Mate os dragões no topo do chefe para aproveitar todo o dano.",
"* Se tivermos o Slate Dragon, devemos alternar o chefe a cada 4 ticks de |cff71d5ff|Hspell:39171|h[Malevolent Strikes]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["45213"] = { "Sinestra",
"* 25 apenas para héroes. FASE 1 (até 30%): ela voa e deve ser queimada de baixo; as esferas |cff71d5ff|Hspell:-3229|h[Corteiras Crepusculares]|h|r perseguem um jogador do ar: a marcada corre longe e, quando uma esfera morre,",
"* ninguém fica na frente dela (|cff71d5ff|Hspell:-3230|h[Explosão Crepuscular]|h|r).",
"* The |cff71d5ff|Hspell:-3227|h[Wrack]|h|r lands on a player with growing damage and will JUMP to another nearby player when its time runs out: the marked one separates from the raid and the healers carry it to the limit.",
"* O |cff71d5ff|Hspell:-3231|h[Twilight Whelps]|h|r cai sobre um jogador com seus |cff71d5ff|Hspell:-3232|h[Twilight Spit]|h|r: um grupo os atrai para trás e os mata rapidamente, sem pisar nas |cff71d5ff|Hspell:-3233|h[Twilight Essence]|h|r.",
"* FASE 2 (a 30%): Cal inicia seu duelo e os |cff71d5ff|Hspell:-3238|h[Ovos de Crepúsculo Pulsantes]|h|r são expostos após cada |cff71d5ff|Hspell:-3308|h[Carapaça de Crepúsculo]|h|r dano completo nos ovos em cada janela;",
"* os |cff71d5ff|Hspell:-3239|h[Chamadores de Crepúsculo]|h|r chegam e seu |cff71d5ff|Hspell:-3240|h[Liberação de Essência]|h|r é interrompido (o |cff71d5ff|Hspell:-3241|h[Indomável]|h|r pune CCs longos), e os |cff71d5ff|Hspell:-3242|h[Dracos de Crepúsculo]|h|r avançam com seu |cff71d5ff|Hspell:-3243|h[Respiração de Crepúsculo]|h|r.",
"* FASE 3 (ovos mortos): os buffs |cff71d5ff|Hspell:-3246|h[Essência Vermelha]|h|r para a raid e DPS máximo para finalizar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45992"] = { "Valiona e Theralion",
"* Theralion lançará |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r, então mantenham-se espalhados até o primeiro ataque de Valiona.",
"* Quando um jogador recebe |cff71d5ff|Hspell:92878|h[Blackout]|h|r, ele e toda a parte (exceto o tanque) ficam na cauda do chefe; uma vez que todos estejam lá, é dissipado para espalhar os danos.",
"* Quando ela lança |cff71d5ff|Hspell:92873|h[Devouring Flames]|h|r, todos ficam atrás do chefe para evitar os danos.",
"* Quando ele lança |cff71d5ff|Hspell:93063|h[Dazzling Destruction]|h|r, círculos aparecerão sob 3 jogadores que devem deixar;",
"5 segundos depois, um míssil puxará aqueles no Reino das Sombras, que você deixará indo para o portal rosa sem tocar nas bolas rosas no chão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["45993"] = { "Theralion",
"* Valiona usará |cff71d5ff|Hspell:92861|h[Twilight Meteorite]|h|r enquanto voa, o que funciona como Blackout.",
"Ela marcará o jogador afetado e, após 3 segundos, causará 150K de dano espalhado entre os jogadores próximos. 5 é suficiente.",
"* |cff71d5ff|Hspell:92909|h[Fabulous Flames]|h|r colocará uma área roxa sob um jogador que devemos evitar.",
"* O jogador que receber o |cff71d5ff|Hspell:95641|h[Engulfing Magic]|h|r buff se separa dos outros jogadores para que não os danem.",
"* |cff71d5ff|Hspell:86059|h[Deep Breath]|h|r cobrirá um terço da sala com fogo; quem pisar nela entrará no Twilight Realm.",
"Você sairá do Twilight Realm pelo portal rosa sem pisar nas bolas rosas no chão."
};

-- Ciudad perdida de los Tol'vir : Zona 5396 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43612"] = { "Sumo Profeta Barim",
"* Na primeira fase, o Fênix é kited.",
"* Na segunda fase (Sombra), DPS total no Fênix."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43614"] = { "Trancabucho",
"* O jogador marcado traz os mobs para perto do tanque, para que ele possa pegá-los facilmente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44577"] = { "General Husam",
"* Mova o chefe para evitar pisar nas minas no chão.",
"* Evite as áreas do chão; ele avisa com um sinal de poeira."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["44819"] = { "Siamat",
"* Concentre-se nos buffs"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["49045"] = { "Augh",
"* Evite o |cff71d5ff|Hspell:91408|h[Whirlwind]|h|r."
};

-- Minas de la muerte : Zona 1581 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43778"] = { "Ceifador de Inimigos 5000",
"* 1 DPS pega um colheitador e eles matam os 4 colheitadores.",
"* Quando o último colheitador morre, o chefe ativa; todos vão para cima, exceto aquele com o colheitador, que irá matar todos os adicionais que spawnem.",
"* Quando o chefe marca um jogador com |cff71d5ff|Hspell:88501|h[Harvest]|h|r, todos se afastam do ponto marcado.",
"* Quando ele obtém |cff71d5ff|Hspell:88481|h[Blazing Speed]|h|r, nos afastamos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47162"] = { "Glubtok <O Supervisor>",
"* Na primeira fase, ele perde o foco após cada teletransporte, o tanque deve prestar atenção.",
"* Aos 40%, a segunda fase começa, onde devemos evitar a parede de lava giratória.",
"* Os elementais na segunda fase devem ser mortos gradualmente, pois eles spawnam cada vez mais; um bom momento para usar Heroísmo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47296"] = { "Helix Quebracâmbio",
"* Evite as bombas que ele lança.",
"* O jogador atingido por |cff71d5ff|Hspell:88352|h[Explosão de Peito]|h|r move-se para longe do grupo até explodir."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47626"] = { "Almirante Rosnarrasga",
"* O curandeiro deve racionar mana.",
"* Os adds devem ser mortos o mais rápido possível, caso contrário, eles crescerão e matarão o grupo.",
"* O chefe deve ser morto o mais rápido possível para evitar que o |cff71d5ff|Hspell:88736|h[Thirst for Blood]|h|r fique muito alto."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47739"] = { "\"Capitão\" Biscoito",
"* O chefe concede comida boa (branca) e má (verde) que se anulam;",
"escolha 1 má por 1 boa durante toda a luta para evitar que a área de dano da comida má preencha o chão.",
"O tanque, se o controle da ímplora não for um problema, pode escolher 2 mós por 1 boa."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["49429"] = { "Vanessa VanCleef",
"* Fase de Pesadilla:",
"Aparecemos em uma panela onde devemos ativar 4 torneiras para escapar.",
"Evite o fogo e as avalanches até que Glubtok seja derrotado e morto.",
"Na fase de Helix, não se mova, para atrair o menor número possível de aranhas.",
"O Foe Reaper faz barreiras de raios rotativas ao longo do túnel, devemos avançar por elas; evite pisar ou pular.",
"Na próxima fase, mate todos os worgen que atacam os NPCs amigáveis o mais rápido possível.",
"* Fase de Vanessa:",
"Prioridade em qualquer criatura que apareça.",
"Quando ela aplicar as cargas explosivas, pegue as cordas da seta verde."
};

-- La Cumbre del Vórtice : Zona 5035

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43873"] = { "Altairus",
"* Sempre que possível, mantenha o vento a seu favor para aproveitar o bónus."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43875"] = { "Asaad <Caliph of Zephyrs>",
"* Quando o lançamento de |cff71d5ff|Hspell:87618|h[Static Cling]|h|r estiver prestes a terminar, pule para evitar colar no chão.",
"* Remova o colar de todos que não conseguiram pular a tempo.",
"* Quando ele lança |cff71d5ff|Hspell:86911|h[Unstable Grounding Field]|h|r, todos devem entrar no triângulo para evitar morrer."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["43878"] = { "Grã-vizir Ertan",
"* Você precisa evitar os |cff71d5ff|Hspell:86292|h[Escudos de Ciclone]|h|r."
};

-- Trono de los Cuatro Vientos : Zona 5638 -- Canario

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45870"] = { "Anshal",
"ANOTAÇÕES GERAIS",
"* Este encontro consiste em 3 senhores elementais, Anshal, Nezir e Rohash, com um enrage de 8 minutos",
"Os três devem ser mortos com uma diferença máxima de um minuto ou eles ressuscitarão.",
"* Os chefes têm uma barra de energia que, quando estiver cheia (em 90), faz com que usem suas habilidades especiais; os movimentos na plataforma devem ser feitos quando a barra atingir 80 no máximo",
"Estratégia:",
"* 4 grupos: 1º: 1 tanque, 1 curandeiro e 1 DPS [Anshal]; 2º: 1 tanque e 1 curandeiro (idealmente um paladino sagrado, porque eles podem remover seus próprios debuffs); 3º: 1 DPS e 1 curandeiro [Rohash]; 4º: grupo móvel com 3 DPS",
"* Otimize o DPS em todos os três para que eles caiam de forma semelhante",
"* Plataforma de Anshal: lança periodicamente |cff71d5ff|Hspell:86205|h[Brisa Calmante]|h|r, curando Anshal e seus aliados (criaturas) enquanto silencia a raid.",
"* Ele lança |cff71d5ff|Hspell:85422|h[Nutrição]|h|r que invoca criaturas que por sua vez usam |cff71d5ff|Hspell:93121|h[Esporas Tóxicas]|h|r",
"* Especial: |cff71d5ff|Hspell:84638|h[Zéfiro]|h|r - certifique-se de que não haja criaturas antes da habilidade especial"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45871"] = { "Nezir",
"Habilidades:",
"* |cff71d5ff|Hspell:86082|h[Permafrost]|h|r, que força você a ficar espalhado.",
"* |cff71d5ff|Hspell:93130|h[Ice Patch]|h|r, saia imediatamente da área de efeito.",
"* |cff71d5ff|Hspell:84645|h[Chilling Winds]|h|r, a habilidade mais perigosa; força tanques/curandeiros a trocar de posição quando não conseguem curar os danos (acumula) (Anshal-Nezir).",
"* Especial: |cff71d5ff|Hspell:84644|h[Hailstorm]|h|r"
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["45872"] = { "Rohash",
"Habilidades:",
"* |cff71d5ff|Hspell:86193|h[Wind Blast]|h|r, sua habilidade mais perigosa; quem estiver na frente dele quando a usar será empurrado 200 metros.",
"* |cff71d5ff|Hspell:86182|h[Slicing Gale]|h|r, ataque à distância.",
"* Especial: |cff71d5ff|Hspell:86481|h[Hurricane]|h|r - o maior dano vem da queda (cerca de 70k), então todos que puderem devem usar a forma de gato, queda lenta, etc."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46753"] = { "Al'Akir",
"* FASE 1 (até 80%): o |cff71d5ff|Hspell:-3022|h[Wind Burst]|h|r e a |cff71d5ff|Hspell:-3023|h[Squall Line]|h|r atingem com efeito de área (separadamente), as |cff71d5ff|Hspell:-3024|h[Ice Storms]|h|r se movem pelo chão (evitar) e a |cff71d5ff|Hspell:-3025|h[Lightning Strike]|h|r pune o alvo marcado.",
"* FASE 2: a |cff71d5ff|Hspell:-3032|h[Acid Rain]|h|r continua a crescer ao longo do tempo (DPS máximo para não prolongar) e as |cff71d5ff|Hspell:-3033|h[Stormlings]|h|r permanecem vivas: se alguém matar uma, o |cff71d5ff|Hspell:-3034|h[Feedback]|h|r buffa Al'Akir.",
"* FASE 3 (em 25%): a plataforma se estilhaça e todos voam com o |cff71d5ff|Hspell:-3037|h[Eye of the Storm]|h|r: DPS máximo; o |cff71d5ff|Hspell:-3039|h[Lightning Rod]|h|r alvo marcado se afasta e as |cff71d5ff|Hspell:-3040|h[Lightning Clouds]|h|r são evitadas."
};

-- Bastión de Baradin : Zona 5600 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["47120"] = { "Argaloth",
"* Nas 10, você forma 2 grupos, cada um com 1 tanque, 1 curandeiro e 3 DPS.",
"* Cada grupo fica de um lado de Argaloth e permanece em pilha no tanque para distribuir o dano.",
"* Após cada |cff71d5ff|Hspell:88942|h[Meteor Slash]|h|r, os tanques trocam o boss.",
"* Durante a fase |cff71d5ff|Hspell:88972|h[Fel Firestorm]|h|r, todos se movem para evitar o dano sem pisar no fogo.",
"* Ao final da tempestade, cada grupo retorna à sua posição e o processo se repete."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["47901"] = { "Unidade de Contenção Demoníaca",
"* Essas criaturas devem ser mortas pelo grupo inteiro, concentrando o dano no tanque para distribuir o dano do |cff71d5ff|Hspell:89348|h[Feixe de Repulsão de Demônios]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52363"] = { "Occu'thar",
"* Ninguém deve atravessar sua frente: o |cff71d5ff|Hspell:-2606|h[Searing Shadows]|h|r é um cone na frente dele (jogadores de combate devem ficar atrás).",
"* Os |cff71d5ff|Hspell:-2607|h[Olhos de Occu'thar]|h|r afetam todos os jogadores: após 10 segundos, cada olho passa pelo seu hospedeiro (|cff71d5ff|Hspell:-2609|h[Destruição de Occu'thar]|h|r) e o elimina, de modo que os olhos são destruídos rapidamente e o |cff71d5ff|Hspell:-2608|h[Olho de Occu'thar]|h|r é desviado.",
"* O |cff71d5ff|Hspell:-2605|h[Foco]|h|r é um poço de fogo no chão sob um jogador: esse jogador se move."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55869"] = { "Alizabal",
"* A |cff71d5ff|Hspell:-4120|h[Skewer]|h|r atinge o tanque por 8 segundos: o OT pega instantaneamente.",
"* O |cff71d5ff|Hspell:-4121|h[Seething Hate]|h|r prende um jogador: o marcado se afasta do resto.",
"* O |cff71d5ff|Hspell:-4122|h[Blade Dance]|h|r está aumentando o dano físico a cada segundo: DPS total com os curandeiros sempre alertas, finalize rapidamente."
};

-- Zul'Gurub : Zona 1977 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52053"] = { "Zanzil",
"* Interromper o Voodoo Bolt.",
"* Manter distância do Fogo de Zanzil.",
"* Elixir azul: Beber do Caldeirão de Gelo e finalizar o Berserker o mais rápido possível (ele não causa aggro).",
"* Elixir verde: Beber do Caldeirão de Veneno o mais rápido possível.",
"* Elixir vermelho: Beber do Caldeirão de Fogo para causar dano em área aos zumbis."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52059"] = { "Alta-sacerdotisa Kilnara",
"* Evite as paredes roxas (como as ondas de Sartharion).",
"* Interrompa os \"Tears of Blood\".",
"* Antes de reduzir o boss a 50%, mate os panthers um a um ou dois a dois."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52148"] = { "Jin'do, o Doma-deus",
"* Coloque o chefe na Zona Morta; os jogadores também entram quando ele invoca as Sombras de Hakkar.",
"* Enquanto o tanque lida com os trolls gigantes, o resto do grupo deve finalizar os espíritos invocados, além das correntes.",
"* Evite os Espigões das Sombras."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52151"] = { "Sangrelorde Mandokir",
"* Os espíritos são a chave. Quando o raptor estiver solto, deve ser morto o mais rápido possível para que não mate os espíritos.",
"Cada espírito pode reviver um jogador morto, e o jogador revivido causa mais dano e sofre menos dano.",
"* Evite as fendas no chão quando o chefe as lançar.",
"* Não dê ao chefe saúde ao curar excessivamente quem recebe o Bloodletting; manter alguém em torno de 7500 é suficiente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52155"] = { "Sumo Sacerdote Venoxis",
"* Quando ele desenha o labirinto, não toque ou pule pelas linhas verdes.",
"* Quando 2 jogadores são ligados pelo link tóxico, espalhem-se o máximo possível para quebrá-lo.",
"Ninguém deve ficar perto quando ele quebra, pois causa dano em área.",
"* Evite as piscinas no chão, movendo o chefe para que possa atacá-lo sem pisar nelas. As piscinas crescem.",
"* Evite a respiração verde ficando atrás dele.",
"* Quando ele lança o feixe, corra para evitar.",
"* Quando o chefe está atordoado, você deve dar o máximo de DPS, pois existe um modificador de +100%."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52258"] = { "Gri'lek",
"* O jogador marcado com |cff71d5ff|Hspell:68987|h[Pursue]|h|r atrai o chefe.",
"* Saia da área marcada com |cff71d5ff|Hspell:89932|h[Fault Line]|h|r quando estiver marcada."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52269"] = { "Renataki",
"* Cure o jogador que está sendo atacado pelo Vanish.",
"* Evite o dano da área do |cff71d5ff|Hspell:96645|h[Thousand Blades]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52271"] = { "Hazza'rah",
"* Interrompa o Fúria.",
"* Mate os pesadelos antes que eles ataquem o jogador ou eles o atacarão."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["52286"] = { "Vuxulai",
"* Tank com as costas voltadas para o grupo.",
"* Deixe o |cff71d5ff|Hspell:96710|h[Lightning Cloud]|h|r.",
"* Espalhem-se uns dos outros."
};

-- Tierras de Fuego : Zona 5043 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52409"] = { "Ragnaros",
"* FASE 1: as |cff71d5ff|Hspell:-2631|h[Ondas de Lava]|h|r nascidas de cada |cff71d5ff|Hspell:-2630|h[Ataque de Sulfuras]|h|r são desviadas para o lado, e as |cff71d5ff|Hspell:-2634|h[Armadilhas de Magma]|h|r são detonadas UMA DE VEZ, com todos com HP total (a |cff71d5ff|Hspell:-2635|h[Erupção de Armadilha de Magma]|h|r atinge a todos).",
"* NO INTERMEIO, os |cff71d5ff|Hspell:-2637|h[Filhos das Chamas]|h|r perseguem o marcado, que corre longe da raid enquanto eles causam dano total; ninguém o cruza devido à final |cff71d5ff|Hspell:-2639|h[Supernova]|h|r.",
"* FASE 2: a |cff71d5ff|Hspell:-2643|h[Chama Envolvente]|h|r é o cone frontal (para fora), a |cff71d5ff|Hspell:-2644|h[Mundo em Chamas]|h|r queima setores inteiros (ninguém dentro) e as |cff71d5ff|Hspell:-2645|h[Sementes Molten]|h|r explodem sob o marcado (corra longe; os restantes |cff71d5ff|Hspell:-2647|h[Elementos Molten]|h|r são atingidos por AoE).",
"* FASE 3 (em 40%): a |cff71d5ff|Hspell:-2661|h[Meteor Vivo]|h|r persegue um jogador (corra longe da raid; quem o atravessa dá |cff71d5ff|Hspell:-2663|h[Combustível]|h|r) e a |cff71d5ff|Hspell:-2658|h[Chama Envolvente]|h|r e a |cff71d5ff|Hspell:-2659|h[Mundo em Chamas]|h|r continuam.",
"* Heroico (FASE 4): com os aliados (Cenarius, Hamuul e Malfurion) apoiando-os, dano total; sua |cff71d5ff|Hspell:-2680|h[Superaquecido]|h|r, a |cff71d5ff|Hspell:-2681|h[Empoderamento de Sulfuras]|h|r (|cff71d5ff|Hspell:-2682|h[Chamas de Sulfuras]|h|r) e a |cff71d5ff|Hspell:-2683|h[Dreadflame]|h|r punem a área."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52498"] = { "Beth'tilac",
"* FASE 1: ela está em cima de sua teia, a raid luta abaixo, e os |cff71d5ff|Hspell:-2773|h[Drones de Cinderweb]|h|r são mortos antes de serem preenchidos com fogo (eles comem os |cff71d5ff|Hspell:-2778|h[Filhotes de Cinderweb]|h|r para se curar: mate os filhotes primeiro).",
"* O tanque ataca |cff71d5ff|Hspell:-2770|h[Cinderweb Spinner]|h|r para atrai-lo, com o grupo em formação (seu |cff71d5ff|Hspell:-2772|h[Igneous Web Spin]|h|r paralisa o alvo marcado por 25 segundos): DPS máximo.",
"* A equipe no topo a observa |cff71d5ff|Hspell:-2765|h[Energia de Fogo]|h|r: quando se esgota, ela lança |cff71d5ff|Hspell:-2769|h[Devastação Fumegante]|h|r, que reduz seu nível, então a equipe superior deve atacar antes (isso acontece 3 vezes e depois ela entra no |cff71d5ff|Hspell:-2782|h[FRENESÍ]|h|r).",
"* FASE 2: ela desce e ataca até o fim; o tanque absorve o |cff71d5ff|Hspell:-2783|h[Beijo da Viúva]|h|r (drena a cura: cura ao máximo) e o |cff71d5ff|Hspell:-2784|h[Faíscas de Brasa]|h|r pune os mais próximos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52530"] = { "Alysrazor",
"* FASE 1: ela voa, a raid luta abaixo: dois jogadores coletam |cff71d5ff|Hspell:-2828|h[Penas Moltenas]|h|r (três dão |cff71d5ff|Hspell:-2829|h[Asas de Fogo]|h|r para voar e ajudar acima),",
"* os |cff71d5ff|Hspell:-2836|h[Filhotes Vorazes]|h|r são controlados separadamente (alimentados com |cff71d5ff|Hspell:-2843|h[Vermes de Lava Gordos]|h|r) e os dois |cff71d5ff|Hspell:-2834|h[Iniciados de Garra Ardente]|h|r morrem rapidamente (com |cff71d5ff|Hspell:-3335|h[Escudo Ardente]|h|r: DPS total).",
"* O |cff71d5ff|Hspell:-2845|h[Herald of the Burning End]|h|r aparece no final da fase: seu |cff71d5ff|Hspell:-2846|h[Cataclysm]|h|r invoca o |cff71d5ff|Hspell:-2847|h[Meteor Molteno]|h|r (DPS total antes de cair).",
"* FASE 2: ela entra no |cff71d5ff|Hspell:-2849|h[Vórtice Ardente]|h|r (imobilizada): DPS total com lust/heroísmo; os voadores evitam os |cff71d5ff|Hspell:-2850|h[Tornados Ardentes]|h|r e aqueles abaixo os |cff71d5ff|Hspell:-3332|h[Ventos Severos]|h|r.",
"* FASE 3 (quando seu poder acaba): |cff71d5ff|Hspell:-2852|h[Burnout]|h|r com o |cff71d5ff|Hspell:-2853|h[Essência do Verde]|h|r (voo para todos) e DPS total antes de ela se recuperar;",
"* se a luta chegar à FASE 4, ela renasce com poder total (|cff71d5ff|Hspell:-2858|h[Blazing Buffet]|h|r) e o ciclo se repete: quanto menos ciclos, melhor."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52558"] = { "Lorde Rhyolith",
"* FASE 1 (até 25%): ele não é alvo, ele é direcionado: o grupo ataca seus pés esquerdo ou direito para virá-lo, e ele deve ser afastado do |cff71d5ff|Hspell:-2530|h[magma]|h|r e do grande |cff71d5ff|Hspell:-2534|h[volcanoes]|h|r (as pequenas |cff71d5ff|Hspell:-2535|h[craters]|h|r são extintas pelos DPS).",
"* Sua |cff71d5ff|Hspell:-2527|h[Obsidian Armor]|h|r cria camadas que reduzem os danos que ele recebe: ataque-o com dano; com cada |cff71d5ff|Hspell:-2531|h[fragments]|h|r e |cff71d5ff|Hspell:-2532|h[sparks]|h|r de Rhyolith que spawn e ganham |cff71d5ff|Hspell:-2533|h[Infernal Rage]|h|r, eles devem ser mortos rapidamente.",
"* Seu |cff71d5ff|Hspell:-2528|h[Concussive Stomp]|h|r atinge todos periodicamente: curas periódicas.",
"* FASE 2 (em 25%): a direção termina e o |cff71d5ff|Hspell:-2538|h[Immolation]|h|r danifica a todos de forma crescente: DPS total com lust/heroísmo, evitando o |cff71d5ff|Hspell:-2539|h[Unleashed Flame]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["52571"] = { "Senescal Guenelmo",
"* Todas as mecânicas de |cff71d5ff|Hspell:-2912|h[Transformação]|h|r são: em |cff71d5ff|Hspell:-2913|h[forma de gato]|h|r ele salta |cff71d5ff|Hspell:-2914|h[Chamas Saltadoras]|h|r em direção ao alvo (deixando rastros de fogo no chão) e em",
"* |cff71d5ff|Hspell:-2918|h[forma de escorpião]|h|r a |cff71d5ff|Hspell:-2919|h[Foice de Fogo]|h|r pune quem o está atacando (os ataques corpo a corpo a consomem com cura).",
"* As builds |cff71d5ff|Hspell:-2916|h[Adrenaline]|h|r com cada lançamento repetido: quanto mais longa a luta, mais doloroso, então DPS total.",
"* Em |cff71d5ff|Hspell:-2922|h[forma élfica noturna]|h|r (no combate), ele agarra os mais próximos com |cff71d5ff|Hspell:-2923|h[Ciclone Ardente]|h|r (dispersão),",
"* joga |cff71d5ff|Hspell:-2924|h[Sementes Incandescentes]|h|r sob a alvo marcada (movendo-se para longe antes de explodirem) e lança as |cff71d5ff|Hspell:-2925|h[Esferas Ardentes]|h|r (evitando-as para afastá-las do grupo)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["53494"] = { "Balroc",
"* O |cff71d5ff|Hspell:-2592|h[Fragmento da Tormenta]|h|r canaliza o |cff71d5ff|Hspell:-2593|h[Tormento]|h|r num jogador, que sofre dano crescente: afaste-se do fragmento quando o dano atacar; se não for interrompido a tempo, o |cff71d5ff|Hspell:-2595|h[Onda da Tormenta]|h|r surge.",
"* Os curandeiros se dividem: dois ou três ficam perto do fragmento recolhendo |cff71d5ff|Hspell:-2596|h[Faíscas de Vitalidade]|h|r (cada um fortalece os seus curas com a |cff71d5ff|Hspell:-2597|h[Chama de Vitalidade]|h|r) e os restantes curam o alvo do Tormento.",
"* Com a |cff71d5ff|Hspell:-2599|h[Lâmina de Decimação]|h|r, os seus golpes atingem com sombra e com a |cff71d5ff|Hspell:-2600|h[Lâmina do Inferno]|h|r com fogo: os tanks trocam de lugar enquanto a |cff71d5ff|Hspell:-2590|h[Brilho da Glória]|h|r (o seu buff) se acumula.",
"* Heroico: o |cff71d5ff|Hspell:-2601|h[Contagem Regressiva]|h|r emparelha jogadores: os pares ficam perto um do outro e longe do resto quando explode."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["53691"] = { "Shannox",
"* Trabalho de dois tanques: um mantém |cff71d5ff|Hspell:-2581|h[Riplimb]|h|r e o outro |cff71d5ff|Hspell:-2583|h[Rageface]|h|r, longe de Shannox, porque matar o primeiro cão lhe concede |cff71d5ff|Hspell:-2580|h[Frenzy]|h|r.",
"* Face Rage morre primeiro: seu |cff71d5ff|Hspell:-2584|h[Face Rage]|h|r devora o alvo marcado (dano total para terminá-lo antes); depois Riplimb, e Shannox por último.",
"* Shannox's |cff71d5ff|Hspell:-2577|h[Arcing Slash]|h|r leaves the |cff71d5ff|Hspell:-2578|h[Jagged Tear]|h|r (heavy bleed on the tank): the healer covers it; with the |cff71d5ff|Hspell:-2579|h[Hurl Spear]|h|r Riplimb runs to fetch it (the tanks use it to reposition).",
"* Su |cff71d5ff|Hspell:-2575|h[Armadilhas de Imolação]|h|r e |cff71d5ff|Hspell:-2576|h[Armadilhas de Prisão de Cristal]|h|r atingem perto dos cães: quem estiver próximo se afasta (ser pego é fatal, especialmente no modo heróico), e as |cff71d5ff|Hspell:-2928|h[Rupturas de Magma]|h|r no chão são desviadas."
};

-- El Fin de los Tiempos : Zona 938 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54123"] = { "Eco de Sylvana",
"* O |cff71d5ff|Hspell:-3951|h[Grito dos Highborne]|h|r: dano pesado, cura pronta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54431"] = { "Eco de Baine",
"* |cff71d5ff|Hspell:-4140|h[Pulverize]|h|r slams: tanks e healers, fiquem atentos.",
"* Os totems de |cff71d5ff|Hspell:-4141|h[Throw Totem]|h|r são prioridade."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54432"] = { "Murozond",
"* Evite o |cff71d5ff|Hspell:-3676|h[Distortion Bomb]|h|r.",
"* Chefe final da masmorra: mantenha suas defesas para o final."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54445"] = { "Eco de Jaina",
"* |cff71d5ff|Hspell:-3641|h[Blink]|h|r: ela teletransporta, preste atenção à sua nova posição."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54544"] = { "Eco de Tyrande",
"* Preste atenção a |cff71d5ff|Hspell:-4207|h[Dark Moonlight]|h|r."
};

-- La Hora del Crepúsculo : Zona 940 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54590"] = { "Arcurion",
"* |cff71d5ff|Hspell:102582|h[Correntes de Gelo]|h|r prendem você; se livre.",
"* Libere o jogador preso no |cff71d5ff|Hspell:103252|h[Túmulo Congelado]|h|r destruindo-o.",
"* |cff71d5ff|Hspell:104050|h[Torrente de Gelo]|h|r: dano da raid, cura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54938"] = { "Arcebispo Benedictus",
"* Duas fases: a Luz e a Sombra.",
"* O jogador marcado com |cff71d5ff|Hspell:103151|h[Righteous Shear]|h|r ou |cff71d5ff|Hspell:103363|h[Twilight Shear]|h|r deve anunciar (SAY) e se afastar.",
"* |cff71d5ff|Hspell:103565|h[Purifying Light]|h|r e |cff71d5ff|Hspell:103767|h[Corrupting Twilight]|h|r: fora das áreas."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54968"] = { "Asira Raiamorte",
"* O jogador marcado por |cff71d5ff|Hspell:102726|h[Mark of Silence]|h|r perde cura: dispare-o.",
"* |cff71d5ff|Hspell:103558|h[Choking Smoke Bomb]|h|r: fumaça que atordoa, saia dela.",
"* Não atravesse o |cff71d5ff|Hspell:103419|h[Blade Barrier]|h|r."
};

-- El Pozo de la Eternidad : Zona 939 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54853"] = { "Rainha Azshara",
"* Os Encantados Mágicos são a prioridade antes dela.",
"* |cff71d5ff|Hspell:-3969|h[Obediência Total]|h|r: longo, interrompa."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54882"] = { "Rainha Azshara",
"* Os Encantados Mágicos são a prioridade antes dela.",
"* |cff71d5ff|Hspell:-3969|h[Obediência Total]|h|r: longo, interrompa."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54883"] = { "Rainha Azshara",
"* Os Encantados Mágicos são a prioridade antes dela.",
"* |cff71d5ff|Hspell:-3969|h[Obediência Total]|h|r: longo, interrompa."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54884"] = { "Rainha Azshara",
"* Os Encantados Mágicos são a prioridade antes dela.",
"* |cff71d5ff|Hspell:-3969|h[Obediência Total]|h|r: longo, interrompa."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["54969"] = { "Mannoroth",
"* Preste atenção no que sai do |cff71d5ff|Hspell:-4287|h[Portal do Nether]|h|r.",
"* O tanque deve segurar o Mannoroth; o Varo'then morre rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55085"] = { "Peroth'arn",
"* |cff71d5ff|Hspell:105544|h[Fel Decay]|h|r: debuff importante, cure-o.",
"* Na fase de invisibilidade, NÃO se mova quando ele envia os olhos.",
"* O jogador marcado por |cff71d5ff|Hspell:105493|h[Easy Prey]|h|r está vulnerável: DPS total."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["55419"] = { "Mannoroth",
"* Preste atenção no que sai do |cff71d5ff|Hspell:-4287|h[Portal do Nether]|h|r.",
"* O tanque deve segurar o Mannoroth; o Varo'then morre rapidamente."
};
P.pt = pt;
