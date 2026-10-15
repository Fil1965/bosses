--[[
	Bosses_TBC_pt.lua
		Datos en PT del pack TBC.
		Fichero creado por el editor web (2026-10-14); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local pt = {};
local pack = pt;


-- Karazhan : Zona 532 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15687"] = { "Tristão",
"* |cff71d5ff|Hspell:29448|h[Vanish]|h|r: ele desaparece e cura: ataque em área para trazê-lo de volta.",
"* |cff71d5ff|Hspell:29425|h[Gouge]|h|r: o \"Gouge\" derruba o tanque: o segundo tanque o pega imediatamente.",
"* |cff71d5ff|Hspell:29562|h[Blind]|h|r: o \"Blind\" atinge o alvo marcado: remova-o.",
"* |cff71d5ff|Hspell:29405|h[Garrote]|h|r: o \"Garrote\" causa sangramento durante toda a luta: cure o alvo até o máximo.",
"* Ele entra com quatro convidados aleatórios: os possíveis curandeiros são interrompidos PRIMEIRO e morrem primeiro; o guerreiro usa o \"Whirlwind\" no inimigo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15688"] = { "Terestian Cascopodre",
"* |cff71d5ff|Hspell:30066|h[Summon Kil'rek]|h|r: o imp retorna quando morre: mate-o primeiro e mantenha o efeito de área nele.",
"* |cff71d5ff|Hspell:30065|h[Sacrifice]|h|r: o sacrifício marca um jogador e protege o Illhoof: mate Kil'rek para quebrar a proteção.",
"* Os imps se acumulam ao redor do grupo: um efeito de área dedicado os impede de atacar os curandeiros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15689"] = { "Eteródio",
"* |cff71d5ff|Hspell:30400|h[Perseverance]|h|r: o feixe vermelho endurece o tanque e mata os curandeiros: APENAS o tanque fica dentro dele.",
"* |cff71d5ff|Hspell:30401|h[Serenity]|h|r: o feixe verde cura tudo nele: gire o grupo através dele em turnos.",
"* |cff71d5ff|Hspell:30402|h[Dominance]|h|r: o feixe azul empodera os conjuradores: espalhe-o — ficar juntos compartilha o efeito negativo.",
"* |cff71d5ff|Hspell:38523|h[Nether Breath]|h|r: o sopro infernal é frontal: tanque-o apontando para longe do grupo.",
"* Na fase de banimento ele se torna indetectável: salve os cooldowns, pare os dots."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15690"] = { "Príncipe Malquezaar",
"* |cff71d5ff|Hspell:30843|h[Enfraquecer]|h|r: o enfraquecer reduz você a 1 hp sem cura por 8 s: sobreviva, ninguém lança cura em você.",
"* |cff71d5ff|Hspell:30852|h[Nova Sombria]|h|r: a nova sombria atinge IMEDIATAMENTE após o enfraquecer: corra FORA do príncipe imediatamente.",
"* |cff71d5ff|Hspell:30859|h[Invocar Infernol]|h|r: os infernais caem do céu durante toda a luta: observe o chão e mova-se nos impactos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15691"] = { "O Curador",
"* |cff71d5ff|Hspell:30235|h[Hateful Bolt]|h|r: o projétil envenenado atira no segundo alvo com mais vida: mantenha essa vida alta o tempo todo.",
"* |cff71d5ff|Hspell:30403|h[Summon Astral Flare]|h|r: os flares astrals spawn em pares: elimine-os com AoE antes que o ataque se acumule.",
"* |cff71d5ff|Hspell:30254|h[Evocation]|h|r: durante a evocação ele recebe DOBRO de dano: cause-lhe muito dano, reserve o burst para ele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16151"] = { "Attumen, o Caçador",
"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: o ataque voa para o mais distante: ninguém se afasta do cavalo.",
"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: o knockdown ataca os melee: os melee saem da frente.",
"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: a presença intangível é uma maldição de debuff de dano: remova-a do alvo marcado.",
"* Queime Midnight: o caçador monta e desmonta em seus níveis de saúde — todo o dano vai para a mesma fonte."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16152"] = { "Attumen, o Caçador",
"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: o ataque voa para o mais distante: ninguém se afasta do cavalo.",
"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: o knockdown ataca os melee: os melee saem da frente.",
"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: a presença intangível é uma maldição de debuff de dano: remova-a do alvo marcado.",
"* Queime Midnight: o caçador monta e desmonta em seus níveis de saúde — todo o dano vai para a mesma fonte."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16179"] = { "Hyakiss o Predador",
"* O predador emerge de seu buraco com um ataque de veneno: proteja o tanque e cure o veneno nele.",
"* Criatura opcional no caminho para os Servants Quarters: pule-a ou mate-a para obter o baú extra."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16180"] = { "Shadikith o Glider",
"* O glider explode em um círculo sonoro ao redor de si: os personagens de combate devem sair do raio entre as explosões.",
"* Criatura opcional do Servants Quarters: luta simples, baixo risco se o tanque mantiver a calma."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16181"] = { "Rokad o Destruidor",
"* O Ravager corta forte na frente: os jogadores de melee ficam atrás dele e o tanque o afasta.",
"* Opção adicional: os Servants Quarters: luta simples; ninguém fica na frente dos dentes."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16457"] = { "Donzela da Virtude",
"* |cff71d5ff|Hspell:29511|h[Repentance]|h|r: a repenção causa um stun em TODA a raid: entre e quebre-a intencionalmente, ou você receberá a próxima.",
"* |cff71d5ff|Hspell:29522|h[Holy Wrath]|h|r: a ira sagrada causa uma ligação entre os jogadores: espalhem-se.",
"* |cff71d5ff|Hspell:29512|h[Consecration]|h|r: a consagração queima o chão sob ela: os jogadores de combate devem sair disso.",
"* Sua aura de fogo sagrado causa dano aos jogadores de combate em curta distância: a resistência ao fogo ajuda — os curandeiros devem manter distância."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16524"] = { "Vulto de Aran",
"* |cff71d5ff|Hspell:29973|h[Flame Wreath]|h|r: NÃO se mova nem um passo, pois o anel explode e elimina o grupo — espere que desapareça.",
"* |cff71d5ff|Hspell:29991|h[Counterspell]|h|r: o counterspell silencia uma escola por 10 s: pare de lançar, apenas os curandeiros devem agir com cautela.",
"* |cff71d5ff|Hspell:30004|h[Pyroblast]|h|r: os pyroblasts chegam em pares: interrompa AMBOS ou alguém morre.",
"* |cff71d5ff|Hspell:29951|h[Blizzard]|h|r: a tempestade de neve varre a sala: SAIA dela — correr te atinge novamente.",
"* A fase da bebida é uma armadilha: não o ataque enquanto ele bebe, ou o raid receberá uma parede de pyroblasts."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17225"] = { "Nightbane",
"* |cff71d5ff|Hspell:30129|h[Terra Carregada de Chamas]|h|r: a terra carregada de chamas deixa zonas de fogo sob as pessoas: movam-se delas.",
"* |cff71d5ff|Hspell:36922|h[Rugido Aterrorizante]|h|r: o rugido assusta TODO o grupo no chão: use um escudo de medo ou um tremor no tanque.",
"* |cff71d5ff|Hspell:37098|h[Chuva de Ossos]|h|r: a chuva de ossos cai durante o voo: espalhem-se para comer o mínimo possível.",
"* O ciclo de voo é estrito: todos correm para o centro no chão nas fases, o tanque enfrenta o ataque com as escovas da cauda."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17521"] = { "O Lobo Mau",
"* |cff71d5ff|Hspell:30752|h[Little Red Riding Hood]|h|r: a marcada se transforma na capa: atira no lobo ao redor das colunas.",
"* O lobo quebra a linha de visão para perseguir a capa: use o palco para mantê-lo girando, enquanto o resto o queima."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17533"] = { "Rômulo e Julieta",
"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: SEMPRE interrompa — seus curas mantêm o desempenho vivo.",
"* Um cai, o outro entra em fúria: derrube ambos de forma equilibrada e finalize-os juntos.",
"* Os golpes de veneno deixam um DoT no alvo marcado: os curandeiros devem observar o braço de espada de Romulo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17534"] = { "Rômulo e Julieta",
"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: SEMPRE interrompa — seus curas mantêm o desempenho vivo.",
"* Um cai, o outro entra em fúria: derrube ambos de forma equilibrada e finalize-os juntos.",
"* Os golpes de veneno deixam um DoT no alvo marcado: os curandeiros devem observar o braço de espada de Romulo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18168"] = { "Mago de Oz",
"* Os quatro jogadores spawn juntos: Tito morre primeiro, depois Dorothee, depois Strawman morre RÁPIDO.",
"* Tinhead se move: um jogador o kida para trás enquanto os outros mantêm os outros jogadores no chão.",
"* Quando Roar morre, a Crone aparece: os tornados giram no palco — evite-os ao passar e mate-a."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21684"] = { "Eco de Medivh",
"* As peças ficam paradas: mova-as ou o fogo sob seus pés as consumirá — uma casa por turno.",
"* Mantenha os recursos ativados: os peões absorvem, o rei tankeia, os curandeiros curam SEU lado apenas.",
"* Quando sua peça morre, você recebe um aumento de poder: use-o, então pegue uma nova peça do banco."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21752"] = { "Eco de Medivh",
"* As peças ficam paradas: mova-as ou o fogo sob seus pés as consumirá — uma casa por turno.",
"* Mantenha os recursos ativados: os peões absorvem, o rei tankeia, os curandeiros curam SEU lado apenas.",
"* Quando sua peça morre, você recebe um aumento de poder: use-o, então pegue uma nova peça do banco."
};

-- The Shattered Halls : Zona 540 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16807"] = { "Grão-bruxo Maléter",
"* |cff71d5ff|Hspell:30496|h[Death Coil]|h|r: o coil de morte ricocheteia no tanque: cure-o, não pode ser interrompido.",
"* Abaixo de 20%, ele começa a girar com lâminas: os jogadores de melee devem se afastar e deixar os jogadores de distância terminar.",
"* Os inimigos que o cercam alimentam os grupos: atraia-o para um corredor limpo ou os cães fel se juntarão à luta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16808"] = { "Chefe Guerreiro Karrath Carpunhal",
"* |cff71d5ff|Hspell:5927|h[Sweep]|h|r: o golpe corta forte na frente: mantenha os melee atrás das lâminas.",
"* |cff71d5ff|Hspell:30739|h[Blade Dance]|h|r: a dança de lâminas ricocheteia em pessoas aleatórias: mantenha a dispersão para que ninguém seja atingido duas vezes.",
"* Os dois adjuntos ao seu lado devem ser controlados ou eliminados rapidamente: libere o tanque do segundo par de lâminas."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16809"] = { "Armipotente O'mrogg",
"* Suas duas cabeças trocam o alvo de ameaça por conta própria: os tanques o atiram imediatamente quando o ataque atinge.",
"* O ataque derruba os personagens de melee: saia do raio ou perca o tempo de ataque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20923"] = { "Guarda-de-sangue Porung",
"* Guard exclusivo de nível heróico no início da sala: ele corta com o grupo, mate-o no meio do pull antes que as hordas se acumulem.",
"* Combate normal: nada especial além do corte e dos adds que o seguem."
};

-- Magtheridon's Lair : Zona 544 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17257"] = { "Magtheridon",
"* Os cinco canalizadores abrem a sala: mate-os primeiro, um grupo de cada vez, ou o banimento nunca funcionará.",
"* |cff71d5ff|Hspell:30616|h[Explosão Nova]|h|r: a explosão nova limpa a sala: todos os cinco jogadores clicam nos seus cubos durante o banimento para interrompê-lo.",
"* |cff71d5ff|Hspell:30511|h[Terremoto]|h|r: o terremoto atira os jogadores de melee nas paredes: os curandeiros lideram o grupo após cada um.",
"* As chamas no chão queimam em áreas: mova-se instantaneamente, o DoT não é leve."
};

-- Hellfire Ramparts : Zona 543 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17306"] = { "Guarda Gargulmar",
"* As feridas em seus braços o curam a cada golpe: interrompa a ferida ou a luta se prolongará.",
"* A onda atinge o tanque com os mobs: mantenha sua parte traseira limpa e limpe o corredor primeiro."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17307"] = { "Vazruden, o Arauto",
"* O cavaleiro monta no wyvern: queime os dois juntos, o cavaleiro não desce até que a vida diminua.",
"* Quando Vazruden atinge, o tanque o pega imediatamente: ninguém mais fica na frente da respiração de fogo.",
"* Nazan continua a se deslocar pelo grupo: interrompa os projéteis de fogo entre os passes."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17308"] = { "Omor, o Intocado",
"* |cff71d5ff|Hspell:37566|h[Whip of Despair]|h|r: a chicote é uma maldição de sombra no tanque: cure-o ou os médicos se afogam nele.",
"* Os cães se juntam a ele no ataque: CC um grupo, mate o outro antes que eles se agrupem nos curandeiros.",
"* Ele paira fora do alcance de combate em rajadas: pegue-o à distância, os melee re-engajam após cada salto."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17537"] = { "Vazruden, o Arauto",
"* O cavaleiro monta no wyvern: queime os dois juntos, o cavaleiro não desce até que a vida diminua.",
"* Quando Vazruden atinge, o tanque o pega imediatamente: ninguém mais fica na frente da respiração de fogo.",
"* Nazan continua a se deslocar pelo grupo: interrompa os projéteis de fogo entre os passes."
};

-- The Blood Furnace : Zona 542 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17377"] = { "Keli'dan, o Quebrador",
"* A onda de choque atinge imediatamente após seu teletransporte: corra para fora no momento em que ele se teletransporta para o centro da sala.",
"* Ele repete o ciclo de teletransporte: os curandeiros mantêm o grupo com a vida máxima, a onda de choque pune baixas quantidades de vida."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17380"] = { "Broggok",
"* Os prisioneiros são liberados em ondas: elimine-os rapidamente ou o tanque receberá dois pacotes de dano ao mesmo tempo.",
"* O gás venenoso preenche as células nas zonas: mova-se para a área limpa — o efeito de dano se acumula rapidamente no local errado."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17381"] = { "O Criador",
"* |cff71d5ff|Hspell:30923|h[Dominate Mind]|h|r: o Dominate Mind rouba um jogador: stun-o, não o mate e espere.",
"* As poças de ácido se espalham pelo grupo: ninguém deve ficar em verde."
};

-- Zul'Aman : Zona 568 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["17711"] = { "Doomwalker",
"* |cff71d5ff|Hspell:32686|h[Earthquake]|h|r: o tremor sacode a área: os curandeiros mantêm o grupo com os níveis de vida elevados durante o tremor.",
"* O ataque lança o tanque para longe: mantenha o tanque longe das paredes e das fossas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18728"] = { "Senhor da Destruição Kazzak",
"* |cff71d5ff|Hspell:21063|h[Twisted Reflection]|h|r: a twisted reflection é uma maldição: CURE-a ou ele cura a cada golpe.",
"* |cff71d5ff|Hspell:32964|h[Frenzy]|h|r: o frenzy aumenta a sua velocidade: mantenha-o à distância até que desapareça.",
"* A marca do Senhor da Morte drena a mana dos conjuradores próximos: os conjuradores mantenham a distância."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23574"] = { "Akil'zon",
"* |cff71d5ff|Hspell:43648|h[Tempest Elétrica]|h|r: a tempest remove one player: TODOS correm debaixo da tempestade ou o exterior ataca o grupo.",
"* A águia adiciona tempestade na plataforma: ataque-os antes que escolham os médicos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23576"] = { "Nalorakk",
"* O golpe brutal atinge dois alvos: dois tanques compartilham os golpes, nunca um.",
"* A onda atinge o alvo MAIS DISTANTE: ninguém se afasta do urso.",
"* O rugido ensurdecedor silencia a raid: os curandeiros preparam a proteção antes do rugido."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23577"] = { "Halazzi",
"* O espírito se separa do lince duas vezes: o tanque deve atacar ambos através do raio, a fase termina com o lince.",
"* O totem pulsa do canto: mate-o assim que aparecer ou os projéteis nunca param.",
"* O choque de fogo atinge o tanque: limpe-o rapidamente ou os curandeiros se afogam."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23578"] = { "Jan'alai",
"* |cff71d5ff|Hspell:43962|h[Ovos de Galinhas]|h|r: os ovos eclodem quando ele causa dano: ou todos eclodem ou nenhum — Use o AoE para atingir as hordas diretamente.",
"* As bombas de fogo caem ao redor do grupo: espalhe-se ANTES que a sara veja.",
"* A respiração de fogo varre a frente: o tanque deve estar de costas para o grupo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23863"] = { "Zul'jin",
"* As quatro formas alternam: o urso ataca, o águia lança ciclones, o lince corta o tanque, o dragão-águia respira colunas de fogo.",
"* As pequenas criaturas perseguem na tempestade: KITE-as para longe, elas queimam quem pegarem.",
"* O fogo no chão segue a respiração do dragão-águia: mova-se para fora de cada coluna que marca."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24239"] = { "Grão-bagateiro Malacrass",
"* Os projéteis espirituais drenam toda a raid a cada poucos segundos: os curandeiros devem alternar entre eles.",
"* O espírito de um jogador flutua no meio da luta: mate-o ou o dreno alimenta-o.",
"* O siphon rouba o kit de um jogador no momento: adapte a rotação no momento em que atinge."
};

-- The Battle for Mount Hyjal : Zona 534 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17767"] = { "Cólerus Hibernálgida",
"* |cff71d5ff|Hspell:31249|h[Death and Decay]|h|r: a decadência espalha zonas de fogo no chão: todos devem continuar se movendo.",
"* |cff71d5ff|Hspell:31258|h[Frost Nova]|h|r: a frost nova congela o grupo no lugar: itens ou os curandeiros devem consumir D&D congelados."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17808"] = { "Anetheron",
"* |cff71d5ff|Hspell:31298|h[Nuvem de Carcaça]|h|r: a nuvem de carcaça é um cone frontal que silencia: ataque-o de frente, virado para o grupo.",
"* |cff71d5ff|Hspell:31299|h[Sono]|h|r: o sono derruba um jogador: acorde o jogador imediatamente ou o grupo será derrotado.",
"* |cff71d5ff|Hspell:31306|h[Inferno]|h|r: o inferno invoca infernais ardentes: ataque-os em área antes que alcancem os médicos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17842"] = { "Azgalor",
"* |cff71d5ff|Hspell:31340|h[Howl of Azgalor]|h|r: o grito intimida a TODA a raid: tremor ou ward de medo no tanque para manter a posição.",
"* |cff71d5ff|Hspell:31344|h[Unending Pain]|h|r: a dor interminável é um DoT amplo: cure-a, não a remove.",
"* Quando morre, lança uma maldição em um jogador: o jogador marcado corre MUITO para longe para que o Lorde do Poço não coma ninguém."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17888"] = { "Kaz'rogal",
"* |cff71d5ff|Hspell:31447|h[Marca de Kaz'rogal]|h|r: a marca es fraca de mana: quando chega a zero, a marcada EXPLODE — os conjuradores param de conjurar quando sua mana acaba.",
"* O ataque frontal é brutal: os membros do grupo ficam atrás e o tanque o enfrenta para longe da parede de corpos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17968"] = { "Arquimonde",
"* |cff71d5ff|Hspell:32014|h[Doomfire]|h|r: os rastros de fogo perseguem os jogadores pelo chão: mantenha-o LONGE da raid.",
"* |cff71d5ff|Hspell:31970|h[Air Burst]|h|r: o arburst lança metade da raid para o céu: mantenha o buff de penas antes de cada lançamento.",
"* |cff71d5ff|Hspell:31972|h[Fear]|h|r: o medo atinge pessoas aleatórias: defensivos no tanque para que ele mantenha enquanto estiver com medo."
};

-- The Underbog : Zona 546 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17770"] = { "Voracharco",
"* |cff71d5ff|Hspell:31673|h[Foul Spores]|h|r: as nuvens de esporas cressem nele abaixo de 50% de vida: arraste-o para fora da nuvem ou cause uma explosão através da janela.",
"* As esporas menores circundam a área: ataque-as com AoE antes que invadam os curandeiros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17826"] = { "Senhor do Pântano Musel'ek",
"* |cff71d5ff|Hspell:31429|h[Congelar]|h|r: o efeito de congelamento prende um único combatente no lugar: quebre o efeito ou cure através da explosão que se segue.",
"* Um jogador mantém o corvo preso: o ataque do corvo atira os combatentes ao redor.",
"* Seu tiro preciso pune o alvo marcado à distância: ninguém se afasta do grupo sem proteção."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17882"] = { "A Espreitadora Negra",
"* |cff71d5ff|Hspell:31704|h[Carga Estática]|h|r: a esfera segue um jogador: MANTENHA-A longe do grupo até que desapareça.",
"* |cff71d5ff|Hspell:31715|h[Raio em Cadeia]|h|r: o raio salta entre pessoas empilhadas: mantenha a dispersão e os curandeiros prontos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18105"] = { "Ghaz'an",
"* |cff71d5ff|Hspell:15716|h[Terrifying Roar]|h|r: o rugido faz os combatentes recuarem: defesas contra o medo ativas, ou aceite o ataque e recupere a posição.",
"* O sopro ácido é frontal: o tanque o enfrenta e os combatentes ficam atrás das pernas."
};

-- The Steamvault : Zona 545 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17796"] = { "Mecangenheiro Badulak",
"* |cff71d5ff|Hspell:35107|h[Summon Mechanics]|h|r: três mecânicas spawn ao redor dele: ataque-as rapidamente ou elas irão prejudicar os curandeiros.",
"* O fluido da máquina jorra no local marcado: mova-se para o jato e mantenha o chão livre de poças."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17797"] = { "Hidromante Thespia",
"* |cff71d5ff|Hspell:31481|h[Nuvem de Relâmpago]|h|r: a nuvem se espalha por pessoas aleatórias: saia dela antes que os ticks se acumulem.",
"* |cff71d5ff|Hspell:25033|h[Ventos Envolventes]|h|r: os ventos envolvem um conjurador em silêncio: desfaça a magia ou mantenha o segundo curandeiro pronto.",
"* Suas balas atingem forte no tanque: os curandeiros pre-protegem o pull, os primeiros segundos são os mais difíceis."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17798"] = { "Senhor da Guerra Kalithresh",
"* |cff71d5ff|Hspell:6001|h[Desarmar]|h|r: o desarmar elimina a o tank do seu equipamento: carregue uma arma de reserva ou o off-tank entra.",
"* O Water Spout orb aparece e ele canaliza nele: o tank o puxa PARA FORA — dentro do orb, o seu dano aumenta.",
"* Reflexos de fe devolvem os lançamentos aos jogadores: os conjuradores mantêm as maiores magias enquanto o brilho estiver ativo."
};

-- Old Hillsbrad Foothills : Zona 560 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17848"] = { "Tenente Drake",
"* |cff71d5ff|Hspell:33792|h[Fireball Volley]|h|r: o volley causa fogo em três alvos: cure a burst entre os tiros.",
"* As ondas de suporte se juntam no meio da luta: o tanque mantém os adds longe dos healers, e os elimina rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17862"] = { "Capitão Skarloc",
"* |cff71d5ff|Hspell:29427|h[Holy Light]|h|r: SEMPRE interrompa — sua holy light o cura completamente.",
"* A consecração queima o chão sob ele: os jogadores devem evitar o contato.",
"* As ondas de escorte invadem quando ele recua: mantenha os mobs longe dos médicos até que ele caia."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18096"] = { "Caçador das Eras",
"* |cff71d5ff|Hspell:33834|h[Whirlwind]|h|r: o ataque em espiral passa pelo dano corpo a corpo: afaste o dano corpo a corpo do raio durante o lançamento.",
"* O ataque de asa joga o tanque para longe: posicione-o contra a parede do castelo.",
"* Ele pousa com dois guardas: controle a multidão, ataque o outro antes que o tanque perca a posição."
};

-- The Black Morass : Zona 269 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17879"] = { "Crono-lorde Deja",
"* |cff71d5ff|Hspell:38539|h[Explosão Arcana]|h|r: SEMPRE interrompa — causa muito dano e afeta o tanque.",
"* |cff71d5ff|Hspell:31467|h[Time Lapse]|h|r: o efeito de paralisia no tempo afeta uma área: afaste-se da área afetada.",
"* |cff71d5ff|Hspell:31472|h[Descarga Arcana]|h|r: a descarga atira em várias direções: cure o grupo após cada uma."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17880"] = { "Temporus",
"* |cff71d5ff|Hspell:31458|h[Hasten]|h|r: aumentar la velocidad de ataque em si mesmo: DESFAÇA ou ele começará a se mover muito rapidamente.",
"* |cff71d5ff|Hspell:38592|h[Wing Buffet]|h|r: o Wing Buffet empurra o tanque para trás: mantenha-o com as costas na parede.",
"* Os portais do abismo estão gerando inimigos atrás de você: o tanque o direciona para longe deles e ninguém os chama."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17881"] = { "Aeonus",
"* |cff71d5ff|Hspell:31422|h[Time Stop]|h|r: o Time Stop atordoa o GRUPO INTEIRO: use trinkets e defensas para sobreviver.",
"* |cff71d5ff|Hspell:37605|h[Sand Breath]|h|r: o Sand Breath é frontal: tanke-o de costas para o grupo.",
"* Nunca fique perto de portais abertos: o timer é implacável e os mobs atacam os healers."
};

-- The Slave Pens : Zona 547 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17941"] = { "Mennu, o Traidor",
"* |cff71d5ff|Hspell:31985|h[Totem de Cura Corrompido]|h|r: o totem de cura cura-o a cada segundo: destrua-o PRIMEIRO.",
"* |cff71d5ff|Hspell:34980|h[Totem de Nova Corrompido]|h|r: o totem de nova detona perto: mate-o à vista ou mantenha a distância.",
"* O totem de armadura endurece o grupo: ataque os totems no início, depois ataque o chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17942"] = { "Atolaço",
"* |cff71d5ff|Hspell:39340|h[Acid Geyser]|h|r: o geyser de ácido explode na frente: NINGUÉM fica na frente das mandíbulas.",
"* A podridão fúngica causa um veneno em camadas: limpe-o antes da segunda camada ou o curandeiro afoga."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17991"] = { "Rokmar, o Talhador",
"* |cff71d5ff|Hspell:31956|h[Grievous Wound]|h|r: a ferida grave corta METADE da cura do tanque: cure para restaurar a saúde ou troque de tanques.",
"* |cff71d5ff|Hspell:34970|h[Water Spit]|h|r: o jato de água é frontal: o tanque deve estar voltado para longe do grupo.",
"* |cff71d5ff|Hspell:38801|h[Ensnaring Moss]|h|r: a trepadeira prende as pessoas no chão: espalhe-se para que ela nunca prenda duas pessoas ao mesmo tempo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25697"] = { "Ahune",
"* |cff71d5ff|Hspell:45954|h[Escudo de Ahune]|h|r: o escudo o torna-o invulnerável no início — a cada ciclo, o grupo queima o Núcleo Congelado para removê-lo.",
"* O invocador começa na pedra de gelo: limpe o anel da caverna primeiro e acione o ritual, a luta começa no momento em que a pedra derrete.",
"* Elementos de água saem da lagoa enquanto o escudo mantém: ataque-os em área entre os ciclos e ninguém fica parado no chão gelado."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25740"] = { "Ahune",
"* |cff71d5ff|Hspell:45954|h[Escudo de Ahune]|h|r: o escudo o torna-o invulnerável no início — a cada ciclo, o grupo queima o Núcleo Congelado para removê-lo.",
"* O invocador começa na pedra de gelo: limpe o anel da caverna primeiro e acione o ritual, a luta começa no momento em que a pedra derrete.",
"* Elementos de água saem da lagoa enquanto o escudo mantém: ataque-os em área entre os ciclos e ninguém fica parado no chão gelado."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25865"] = { "Ahune",
"* |cff71d5ff|Hspell:45954|h[Escudo de Ahune]|h|r: o escudo o torna-o invulnerável no início — a cada ciclo, o grupo queima o Núcleo Congelado para removê-lo.",
"* O invocador começa na pedra de gelo: limpe o anel da caverna primeiro e acione o ritual, a luta começa no momento em que a pedra derrete.",
"* Elementos de água saem da lagoa enquanto o escudo mantém: ataque-os em área entre os ciclos e ninguém fica parado no chão gelado."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["40446"] = { "Ahune",
"* |cff71d5ff|Hspell:45954|h[Escudo de Ahune]|h|r: o escudo o torna-o invulnerável no início — a cada ciclo, o grupo queima o Núcleo Congelado para removê-lo.",
"* O invocador começa na pedra de gelo: limpe o anel da caverna primeiro e acione o ritual, a luta começa no momento em que a pedra derrete.",
"* Elementos de água saem da lagoa enquanto o escudo mantém: ataque-os em área entre os ciclos e ninguém fica parado no chão gelado."
};

-- The Botanica : Zona 553 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17975"] = { "Alto-botânico Freywinn",
"* |cff71d5ff|Hspell:34557|h[Tranquilidade]|h|r: INTERRUPTA SEMPRE — a tranquilidade o cura de nada para totalmente.",
"* As mudas invadem o grupo em ondas: Elimine-as, elas se acumulam rapidamente de outra forma."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17976"] = { "Comandante Sarannis",
"* |cff71d5ff|Hspell:34803|h[Arcane Resonance]|h|r: em baixo nível, ela detona em uma área: ESPALHE o momento em que a luta muda.",
"* Os guardiões de sangue a protegem: ataque-os em área no início ou eles vão matar os curandeiros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17977"] = { "Estilhaço Dimensional",
"* |cff71d5ff|Hspell:34716|h[Grow]|h|r: quando ele cresce, fica enorme e ataca forte: mantenha-o à distância até que volte a diminuir.",
"* Os treants atacam nas suas sombras: ataque-os com AoE antes que envolvam o grupo.",
"* Ninguém o abraça durante o drain: o drain ataca o mais próximo — mantenha os melee a um passo de distância."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17978"] = { "Cardônico, o Mantenedor",
"* |cff71d5ff|Hspell:34660|h[Hellfire]|h|r: o fogo infernal queima tudo ao seu redor: os jogadores de combate devem se afastar durante todo o canal.",
"* A maldição de sacrifício afeta um jogador: cure o marcado e mantenha a distância do seu ataque frontal.",
"* A maldição de sofrimento interrompe a cura: remova-a do tanque o mais rápido possível."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["17980"] = { "Laj",
"* As espinhos punem os personagens de combate em rajadas: os personagens de combate DEVEM manter seus golpes durante a rajada ou perderão a barra de vida.",
"* Os mutantes spawn ao redor dele: elimine-os rapidamente e mantenha o chão limpo."
};

-- Sethekk Halls : Zona 556 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18341"] = { "Pandemonius",
"* |cff71d5ff|Hspell:32358|h[Explosão do Vazio]|h|r: a explosão do vazio o envia para as sombras: ataque corpo a corpo, mantenha os golpes enquanto ele estiver sob efeito.",
"* O Dark Cleave ataca em área: ninguém fica na frente do ataque."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18343"] = { "Tavarok",
"* |cff71d5ff|Hspell:2021|h[Desarmar]|h|r: o desarmar pega na arma do tanque: o backup ou o off-tank pega.",
"* O Earthshock silencia os conjuradores numa área: os curandeiros espalham os seus curas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["18344"] = { "Príncipe Shaffar do Nexus",
"* Os feixes etéreos spawn ao seu redor: mate-os PRIMEIRO ou eles se transformam em mais inimigos para lutar.",
"* Seu \"blink\" o move pela sala: os jogadores de combate seguem instantaneamente, os lançamentos não esperam.",
"* O \"frost nova\" prende os jogadores de combate no lugar: continue curando-os através dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18472"] = { "Tecetrevas Syth",
"* As imagens elementais aparecem com metade da vida: ataque-as em área ou elas afogará os curandeiros.",
"* Os raios de sombra atingem pessoas aleatórias: mantenha a dispersão sob controle.",
"* O medo faz o grupo fugir: mantenha as defesas contra o medo no tanque para manter a posição."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18473"] = { "Ikiss, o Rei-gadanho",
"* |cff71d5ff|Hspell:38197|h[Polimorfia]|h|r: o polymorfia do rebanho de um jogador: dispare a magia ou espere o rebanho.",
"* |cff71d5ff|Hspell:40425|h[Explosão Arcana]|h|r: a explosão atinge logo após o seu Blink: ataque de perto INSTANTaneamente.",
"* |cff71d5ff|Hspell:38245|h[Tempestade de Frio]|h|r: a tempestade de frio varre a sua zona: todos devem se manter fora dela."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22930"] = { "Yor",
"* O golpe derruba os combatentes: saia do raio no lançamento ou perca uma janela de ataque completa.",
"* Ele se levanta do corpo de Tavarok: o grupo recupera a vida antes da invocação ou a luta começa desorganizada."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23035"] = { "Anzu",
"* As corvos aterrorizantes eclodem ao seu redor: ataque-os em área no momento em que pousarem.",
"* Os círculos rituais o invocam: o grupo entra ou o primeiro minuto se torna desfavorável.",
"* Seu banimento protege os conjuradores por um tempo: os jogadores de melee devem causar o dano através da abertura."
};

-- Auchenai Crypts : Zona 558 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18371"] = { "Shirrak, o Vigia dos Mortos",
"* |cff71d5ff|Hspell:32300|h[O Olho do Inquisidor]|h|r: o olho segue um jogador e causa dano: Mantenha-o longe do grupo.",
"* Os observadores mortos invadem o chão: Elimine-os antes que os curandeiros se agrupem."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18373"] = { "Exarca Maladaar",
"* A cópia escura de um jogador aparece no meio da luta: mate a cópia PRIMEIRO, ela ataca mais forte do que seu dono.",
"* O grito da alma silencia em uma área: os conjuradores se afastem da linha do grito.",
"* Os raios de sombra atingem o tanque: os curandeiros preveem a proteção entre eles."
};

-- Shadow Labyrinth : Zona 555 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18667"] = { "Nerocordius, o Incitador",
"* |cff71d5ff|Hspell:33676|h[Charge]|h|r: o ataque avança para a pessoa MAIS distante: ninguém deve ficar longe do grupo.",
"* O golpe derruba os combatentes: recupere rapidamente, a janela é curta.",
"* A espiral gira sob ele: os combatentes devem retornar para fora do alcance do ataque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18708"] = { "Murmúrio",
"* |cff71d5ff|Hspell:33711|h[Toque de Murmur]|h|r: o toque conta e explode no alvo marcado: o alvo marcado sai sozinho.",
"* |cff71d5ff|Hspell:33923|h[Onda de Choque Sônico]|h|r: a onda de choque é um cone frontal: os personagens de combate ficam atrás do corpo dele.",
"* |cff71d5ff|Hspell:38796|h[Explosão Sônica]|h|r: a explosão atinge TODA a sala: todos saem do raio no momento do lançamento."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18731"] = { "Embaixador Gorjavernus",
"* |cff71d5ff|Hspell:33547|h[Fear]|h|r: o medo faz com que o tanque saia da posição: tremor ou escudo de medo no tanque.",
"* A emboscada joga o tanque para trás: mantenha a parede traseira limpa ou o patrulheiro se junta à luta.",
"* Ele patrulha uma faixa larga na entrada: atraia-o para o bolso vazio entre os grupos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18732"] = { "Grão-mestre Vorpil",
"* |cff71d5ff|Hspell:33563|h[Rain of Fire]|h|r: a chuva de fogo queima zonas inteiras: mova-se fora do terreno marcado.",
"* Ele corre para o portal do vazio e retorna com os adicionais: o grupo salva o AoE para o retorno e nunca o persegue.",
"* Os viajantes do vazio perseguem um jogador por vez: ninguém fica parado enquanto caçam."
};

-- The Eye : Zona 550 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18805"] = { "Alta-astromante Solarian",
"* |cff71d5ff|Hspell:33045|h[Wrath of the Astromancer]|h|r: a bomba de fúria marca um jogador: FUJA das pessoas até que detonar.",
"* Os agentes spawn ao redor da sala durante a luta: ataque-os rapidamente, eles vão primeiro para os curandeiros.",
"* Quando estiver com pouca vida, ela se divide em cópias: mate a VERDADEIRA — as sacerdotisas a revivam se permanecerem vivas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19514"] = { "Al'ar",
"* |cff71d5ff|Hspell:35410|h[Desgastar Armadura]|h|r: o desgastar armadura deixa o tanque sem defesa: troquem de tanque logo após cada desgastar.",
"* |cff71d5ff|Hspell:35383|h[Penas de Fogo]|h|r: as penas caem fogo sobre a plataforma: escondam-se sob ela ao lançar.",
"* Os filhotes eclodem nas plataformas que ela abandona: ataque-os em área antes que se amontoem nos curandeiros.",
"* Ela salta de plataforma em plataforma: o tanque segue rapidamente e a raid nunca acampa na plataforma errada."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19516"] = { "Aniquilador do Caos",
"* |cff71d5ff|Hspell:34162|h[Pounding Slam]|h|r: o golpe silencia e atira os inimigos de combate: os inimigos de combate saem do golpe.",
"* |cff71d5ff|Hspell:34172|h[Arcane Orb]|h|r: as esferas arcanas caem aleatoriamente nos inimigos à distância: ninguém fica onde uma bomba cai.",
"* Ignora provocações: o tanque atrai e todos observam a ameaça contra o efeito de arremesso."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19622"] = { "Kael'thas Andassol",
"* Os quatro conselheiros caem um de cada vez: controle de multidão o clérigo e cause dano explosivo no restante pela chamada da raid.",
"* A fase das armas gera o arsenal: pegue os itens épicos, eles carregam a luta inteira depois.",
"* |cff71d5ff|Hspell:36819|h[Pyroblast]|h|r: SEMPRE interrompa — o Pyroblast da fase cinco elimina quem for atingido.",
"* |cff71d5ff|Hspell:36735|h[Flame Strike]|h|r: o Flame Strike queima áreas no chão: mova-se no momento em que marcar.",
"* |cff71d5ff|Hspell:34341|h[Gravity Lapse]|h|r: o Gravity Lapse levanta a raid: gire ao redor dele e pegue as esferas de poder."
};

-- Gruul's Lair : Zona 565 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18831"] = { "Alto-rei Maulgar",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: o ataque em círculo corta os combatentes em um raio: os combatentes saem do raio a cada ataque.",
"* Os dois curandeiros do seu conselho morrem PRIMEIRO: cada cura recebe o interrupt, sempre.",
"* Kiggler o louco joga em área: um jogador dedicado o mantém longe da raid.",
"* Krosh o mago puxa os conjuradores: um jogador à distância atrai o alvo longe de todos os outros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18832"] = { "Alto-rei Maulgar",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: o ataque em círculo corta os combatentes em um raio: os combatentes saem do raio a cada ataque.",
"* Os dois curandeiros do seu conselho morrem PRIMEIRO: cada cura recebe o interrupt, sempre.",
"* Kiggler o louco joga em área: um jogador dedicado o mantém longe da raid.",
"* Krosh o mago puxa os conjuradores: um jogador à distância atrai o alvo longe de todos os outros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18834"] = { "Alto-rei Maulgar",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: o ataque em círculo corta os combatentes em um raio: os combatentes saem do raio a cada ataque.",
"* Os dois curandeiros do seu conselho morrem PRIMEIRO: cada cura recebe o interrupt, sempre.",
"* Kiggler o louco joga em área: um jogador dedicado o mantém longe da raid.",
"* Krosh o mago puxa os conjuradores: um jogador à distância atrai o alvo longe de todos os outros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18835"] = { "Alto-rei Maulgar",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: o ataque em círculo corta os combatentes em um raio: os combatentes saem do raio a cada ataque.",
"* Os dois curandeiros do seu conselho morrem PRIMEIRO: cada cura recebe o interrupt, sempre.",
"* Kiggler o louco joga em área: um jogador dedicado o mantém longe da raid.",
"* Krosh o mago puxa os conjuradores: um jogador à distância atrai o alvo longe de todos os outros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["18836"] = { "Alto-rei Maulgar",
"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: o ataque em círculo corta os combatentes em um raio: os combatentes saem do raio a cada ataque.",
"* Os dois curandeiros do seu conselho morrem PRIMEIRO: cada cura recebe o interrupt, sempre.",
"* Kiggler o louco joga em área: um jogador dedicado o mantém longe da raid.",
"* Krosh o mago puxa os conjuradores: um jogador à distância atrai o alvo longe de todos os outros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19044"] = { "Gruul, o Matador de Dragões",
"* |cff71d5ff|Hspell:36240|h[Ground Slam]|h|r: o golpe lança todos para as paredes: ESPALHE-SE após ele ou o choque comerá os vizinhos.",
"* |cff71d5ff|Hspell:36300|h[Shatter]|h|r: o choque explode o congelado: ninguém fica perto de ninguém quando ele atinge.",
"* |cff71d5ff|Hspell:33525|h[Growth]|h|r: o crescimento se acumula com o tempo: a luta termina antes que as pilhas ganhem."
};

-- The Mechanar : Zona 554 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19218"] = { "Guardião da Porta Gyro-Kill",
"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: o golpe paralisa os combatentes: saiam do arco entre os golpes.",
"* A saraivada das sombras atinge o grupo: mantenham a dispersão e os curandeiros prontos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19219"] = { "Mecanolorde Capácitus",
"* |cff71d5ff|Hspell:35158|h[Escudo de dano refletido]|h|r: o escudo de dano reflete os ataques: os ataques corpo a corpo PAREM quando a luz brilhar.",
"* |cff71d5ff|Hspell:35159|h[Escudo mágico refletido]|h|r: o escudo mágico reflete os lançamentos: os conjuradores MANTENHAM-SE quando a luz brilhar.",
"* As cargas infernais rolam pelo chão: movam-se, explodem ao toque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19220"] = { "Pathaleon, o Calculista",
"* |cff71d5ff|Hspell:35280|h[Dominate Mind]|h|r: o controle dura em um jogador: mantenha o dano no Mindless, ele termina sozinho.",
"* Os espectros do Nether invadem em baixa saúde: ataque-os em área assim que chegarem."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["19221"] = { "Etermante Sepethrea",
"* O rastro de fogo persegue um jogador ao redor da sala: direcione o rastro para longe do grupo, nunca perto.",
"* Os infernos spawn e caçam: os jogadores de longo alcance devem abatê-los um por um.",
"* A respiração do dragão é frontal: o tanque deve se virar para longe do grupo em cada ataque."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["19710"] = { "Guardião da Porta Mão de Ferro",
"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: o golpe paralisa os combatentes: espalhem-se do arco do golpe.",
"* |cff71d5ff|Hspell:35327|h[Static Disruption]|h|r: a interrupção empurra os agrupados: nunca agrupe-se na área.",
"* Ninguém o enfrenta de frente: os golpes prendem os combatentes no lugar."
};

-- The Arcatraz : Zona 552 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20870"] = { "Zereketh, o Desatado",
"* |cff71d5ff|Hspell:30533|h[Zona del Vacío]|h|r: as zonas do vazio queimam o chão sob as pessoas: saia no momento em que se abrem.",
"* |cff71d5ff|Hspell:32863|h[Semente de Corrupção]|h|r: a semente explode nos marcados: cure a explosão ou a explosão encadeia o grupo.",
"* Os demônios do vazio spawnam ao seu lado: ataque-os em área antes que cheguem aos médicos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20885"] = { "Dalliah, a Agoureira",
"* |cff71d5ff|Hspell:36142|h[Gift of the Naaru]|h|r: SEMPRE interrompa — seu presente a cura-a quase totalmente.",
"* |cff71d5ff|Hspell:36173|h[Whirlwind]|h|r: o whirlwind corta os melee em um círculo: os melee saem do raio.",
"* Ela troca contra sua warden: concentre-se na ativa e nunca divida o dano entre elas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["20886"] = { "Iráugure Socótrates",
"* |cff71d5ff|Hspell:36512|h[Felfire Ground]|h|r: o felfire abre rachas no chão: ninguém permanece no chão em chamas.",
"* |cff71d5ff|Hspell:35759|h[Knock Away]|h|r: o charge empurra o tanque: coloque o tanque ou o segundo tanque o pega.",
"* Ele alterna com Dalliah: o foco permanece com quem está por sua vez, o controle de multidão espera a troca."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["20912"] = { "Precursor Skiriss",
"* |cff71d5ff|Hspell:36924|h[Mind Rend]|h|r: o mind rend atinge os alvos marcados: cure os alvos entre os rends.",
"* As ilusões da mente spawn do grupo: todos devem matar AS SUAS ilusões primeiro.",
"* O mind control prende um jogador por um tempo: mantenha o dano neles, termina sozinho."
};

-- Serpentshrine Cavern : Zona 548 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21212"] = { "Lady Vashj",
"* |cff71d5ff|Hspell:38575|h[Entangle]|h|r: as raízes do entangle afetam várias pessoas: cure através delas, ninguém luta sozinho contra as raízes.",
"* |cff71d5ff|Hspell:38511|h[Shock Blast]|h|r: o shock blast causa paralisia em uma área: espalhe-se para fora da linha de ataque.",
"* A segunda fase ocorre nos núcleos contaminados: pegue um, passe para o gerador, quebre todos os quatro escudos na ordem.",
"* Os striders perseguem os jogadores na plataforma e os nagas morrem no lugar: ninguém morre com os inimigos enquanto os núcleos estão ativos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21213"] = { "Morogrim Andamaré",
"* |cff71d5ff|Hspell:37730|h[Tidal Wave]|h|r: a onda tidal é um golpe frontal: o tanque o enfrenta para longe do grupo.",
"* |cff71d5ff|Hspell:37850|h[Watery Graves]|h|r: as sepulturas summon murlocs da piscina: ataque em área os spawns entre as ondas.",
"* A bolha de água persegue um jogador e cresce: afaste-o — causa dano em qualquer um que toque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21214"] = { "Senhor do Abismo Karathress",
"* |cff71d5ff|Hspell:38236|h[Cataclysmic Bolt]|h|r: o raio atira no segundo alvo com mais vida: mantenha essa vida sempre no máximo.",
"* |cff71d5ff|Hspell:38330|h[Tidal Surge]|h|r: a onda empurra todo o grupo de volta para a plataforma: posicione-se ou curem.",
"* Os três portadores caem primeiro: Sharkkis, depois Tideress, depois Caribdis — o senhor sozinho derrete depois."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21215"] = { "Leóteras, o Cego",
"* |cff71d5ff|Hspell:37749|h[Whirlwind]|h|r: o whirlwind sangra a qualquer um em combate: PARE de atacar e espere.",
"* |cff71d5ff|Hspell:37640|h[Chaos Blast]|h|r: o chaos blast cria uma corrente em conjuradores: espalhe e quebre a corrente.",
"* Na fase demoníaca, cópias do grupo spawn: todos matam SUA própria cópia primeiro, o raid faz o resto.",
"* A janela de banimento abre na forma humana: o warlock salva o banimento para a divisão das fases."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21216"] = { "Hidross, o Instável",
"* |cff71d5ff|Hspell:38219|h[Tumba de Gelo]|h|r: a tumba de gelo congela um jogador completamente: cure os restantes através dela, o congelado está seguro.",
"* O tanque atravessa o limiar para mudar o elemento: atravese-o APENAS no momento certo ou o elemento incorreto acumula os debuffs.",
"* Do lado do veneno, a corrupção se acumula rapidamente: mova-se das poças e mantenha as contagens."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["21217"] = { "O Tocaieiro Subterrâneo",
"* |cff71d5ff|Hspell:37660|h[Spout]|h|r: o bico gira ao seu redor como um ponteiro de relógio: corri COM o feixe, nunca através dele.",
"* |cff71d5ff|Hspell:21873|h[Whirl]|h|r: o giro atinge os personagens de combate na piscina: saia do raio no lançamento.",
"* As nagas spawn da piscina no meio da luta: atire neles em área e os personagens de longo alcance eliminem os atacantes."
};

-- Black Temple : Zona 564 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22841"] = { "Vulto de Akama",
"* Akama canaliza para romper as correntes: defenda-o através das ondas ou o canal nunca termina.",
"* Os adicionais chegam em duas fileiras: elimine-os rapidamente do canalizador, os curandeiros morrem primeiro caso contrário.",
"* Quando a sombra se liberta todos a queimam: os tempos de recarga então, não antes."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22871"] = { "Teron Sanguinávido",
"* A sombra da morte escolhe um jogador: ele cai e continua jogando como a construção sombria — a raid termina o seu mal antes.",
"* Os espíritos dos mortos perseguem o grupo atrás dele: vire e ataque-os com AoE antes que se acumulem.",
"* O mal da tristeza corta a cura nos marcados: remova-o rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22887"] = { "Sumo Senhor da Guerra Naj'entus",
"* |cff71d5ff|Hspell:39837|h[Needle Spine]|h|r: o disparo da espinha causa dano em área: espalhem-se e curem o pico.",
"* |cff71d5ff|Hspell:39872|h[Tidal Shield]|h|r: o escudo de mar o protege: ninguém melee durante, a raid recua um passo.",
"* A espinha perfurada fica nas costas: usem o item de remoção no alvo marcado rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22898"] = { "Supremus",
"* |cff71d5ff|Hspell:41951|h[Molten Blaze]|h|r: a chama persegue um jogador: KITE-O para longe do grupo para que as poças de fogo não atinjam as pessoas.",
"* O golpe derruba os jogadores de melee: prepare-se ou aceite o golpe e recupere.",
"* Dois tanques revezam segurando-o: a janela de kite abre para quem NÃO está a ser tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22917"] = { "Illidan Tempesfúria",
"* Os cortes cortam o tanque ao meio: troquem de tanque a cada corte ou os curandeiros perdem a barra.",
"* O feixe ocular varre a linha que ele enfrenta: a raid limpa a área no momento em que ele se vira.",
"* Os demônios sombrios caem em dois jogadores: pegue o amuleto do demônio e controle-os, ou eles se banquetarão.",
"* Na forma demoníaca, a raid se empilha e cura: as asas abrem a janela de explosão.",
"* A queda de fogo queima as áreas sob as pessoas: movam-se, o fogo se espalha onde cai."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22947"] = { "Mãe Shahraz",
"* |cff71d5ff|Hspell:40891|h[Fatal Attraction]|h|r: a cadeia prende três jogadores juntos: eles ficam longe da raid e próximos uns dos outros.",
"* O escudo prismático gira as escolas: troque a magia que lança contra ele.",
"* Os feixes varrem pela frente dela: ninguém fica na linha de varredura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["22948"] = { "Gurtogg Fervessangue",
"* |cff71d5ff|Hspell:40481|h[Ferida Ácida]|h|r: o efeito de sangramento ácido se acumula no tanque: troquem de tanque para acumular ou os curandeiros se afogam.",
"* A fúria felina afeta um jogador: direcionem os curas para eles, eles carregam um fardo enorme.",
"* A fervura atinge grupos de cinco: os curandeiros priorizam as fervuras, a horda se espalha em equipes."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22949"] = { "Conselho Illidari",
"* Os quatro membros caem de forma relativamente uniforme: um, sozinho, enfurece todo o conselho.",
"* A sacerdotisa cura os outros: INTERROMPA SEMPRE a sua grande cura.",
"* O escudo refletor cintila sobre um deles: os conjuradores MANTENHAM os feitiços no flash.",
"* As poças de veneno se acumulam sob os membros: limpe rapidamente e saia do verde."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22950"] = { "Conselho Illidari",
"* Os quatro membros caem de forma relativamente uniforme: um, sozinho, enfurece todo o conselho.",
"* A sacerdotisa cura os outros: INTERROMPA SEMPRE a sua grande cura.",
"* O escudo refletor cintila sobre um deles: os conjuradores MANTENHAM os feitiços no flash.",
"* As poças de veneno se acumulam sob os membros: limpe rapidamente e saia do verde."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22951"] = { "Conselho Illidari",
"* Os quatro membros caem de forma relativamente uniforme: um, sozinho, enfurece todo o conselho.",
"* A sacerdotisa cura os outros: INTERROMPA SEMPRE a sua grande cura.",
"* O escudo refletor cintila sobre um deles: os conjuradores MANTENHAM os feitiços no flash.",
"* As poças de veneno se acumulam sob os membros: limpe rapidamente e saia do verde."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["22952"] = { "Conselho Illidari",
"* Os quatro membros caem de forma relativamente uniforme: um, sozinho, enfurece todo o conselho.",
"* A sacerdotisa cura os outros: INTERROMPA SEMPRE a sua grande cura.",
"* O escudo refletor cintila sobre um deles: os conjuradores MANTENHAM os feitiços no flash.",
"* As poças de veneno se acumulam sob os membros: limpe rapidamente e saia do verde."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["23420"] = { "Essência das Almas",
"* As três essências giram: Raiva, Desejo e Sofrimento — use cada uma completamente antes de desaparecer.",
"* O aura de desejo pune os curas em outros: priorize os ferimentos, nunca recupere ninguém.",
"* A aura de raiva significa NENHUM curar nele: dano puro vence a janela.",
"* O roubo de alma causa um grande debuff mágico: desfaça-o no momento em que marcar."
};

-- Magisters' Terrace : Zona 585 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24560"] = { "Sacerdotisa Delrissa",
"* |cff71d5ff|Hspell:44141|h[Flash Heal]|h|r: SEMPRE interromper — o flash mantém sua equipe na arena viva.",
"* Os cinco lutadores jogam como uma equipe: controle de grupo dos curandeiros, causar dano em um alvo, nunca espalhar o dano.",
"* O guerreiro gira o ataque: os lutadores saem da janela de rotação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24664"] = { "Kael'thas Andassol",
"* |cff71d5ff|Hspell:44194|h[Fireball]|h|r: a fireball elimina o alvo marcado: antes de usar o escudo.",
"* A queda gravitacional puxa e levanta as pessoas: ninguém deve ficar perto da borda da sala.",
"* As fênix ressuscitam das cinzas: ataque em área os pássaros, destrua o ovo em segundo.",
"* O golpe de fogo queima áreas: mova-se assim que marcar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24723"] = { "Serin Flamicórdio",
"* O canal do fel esgota o grupo: Qualquer interrupção o quebra, até um bash.",
"* Os feixes do fel aumentam seu dano enquanto esgota: mate os adjacentes drenados rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24744"] = { "Vexallus",
"* As esferas de energia pura spawn ao seu redor: mate CADA uma antes que ela o alcance ou ele se infla.",
"* A descarga se acumula no final: os curandeiros coordenam a raid através da tempestade."
};

-- Sunwell Plateau : Zona 580 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24850"] = { "Kalecgos",
"* A explosão espectral abre o portal na área marcada: a área marcada troca com o reino demoníaco e ambos chefes caem juntos.",
"* |cff71d5ff|Hspell:45010|h[Respiração Arcana]|h|r: a respiração arcana é frontal: o tanque deve estar de costas para o grupo.",
"* A magia selvagem lança efeitos aleatórios: a cura permanece flexível, nada é garantido."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["24882"] = { "Brutallus",
"* |cff71d5ff|Hspell:45141|h[Queima]|h|r: a queima acumula dano no no alvo do tanque: troque os tanques durante a acumulação.",
"* O golpe atinge os combatentes corpo a corpo: posicione o grupo ou cure através do dano.",
"* O bloqueio metabólico impede que os conjuradores ataquem: os curandeiros devem priorizar enquanto os feitiços estão em curso."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25038"] = { "Vilnévoa",
"* |cff71d5ff|Hspell:45717|h[Demonic Vapor]|h|r: a névoa atinge um jogador: KITE para longe, nunca perto do grupo.",
"* |cff71d5ff|Hspell:45661|h[Encapsulate]|h|r: a cápsula levanta um jogador: cure através do levante, eles ficam suspensos no ar.",
"* Em voo, a respiração varre como um ponteiro de relógio: todos se movem com o movimento."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25165"] = { "Gêmeos Eredar",
"* Os gêmeos caem de forma quase uniforme: um fica em pé e concede poder ao sobrevivente.",
"* A grande conflagração atinge o mais próximo: mantenha a distância entre os alvos.",
"* A nova sombria atinge brutalmente no lado escuro: os curandeiros pre-protegem o tanque sombrio."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["25166"] = { "Gêmeos Eredar",
"* Os gêmeos caem de forma quase uniforme: um fica em pé e concede poder ao sobrevivente.",
"* A grande conflagração atinge o mais próximo: mantenha a distância entre os alvos.",
"* A nova sombria atinge brutalmente no lado escuro: os curandeiros pre-protegem o tanque sombrio."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25315"] = { "Kil'jaeden",
"* |cff71d5ff|Hspell:45848|h[Darkness of a Thousand Souls]|h|r: a escuridão afeta toda a raid: use cooldowns defensivos e cura máxima no lançamento.",
"* As esferas de escudo spawn nas colunas: atire nas esferas à distância ou os feixes atingirão o grupo.",
"* As espadas de sombra explodem em ondas: espalhe-se das linhas de explosão.",
"* As esferas de poder levantam no final: pegue-as para resistir aos feixes."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["25741"] = { "M'uru",
"* Os sentinelas do vazio spawn em ondas: ataque-os com AoE e mude o alvo no momento em que eles pousarem.",
"* A energia negativa pulsa por toda a sala: os curandeiros devem coordenar os curas entre os pulsos.",
"* Quando ele desmorona, Entropius surge no seu lugar: evite os buracos negros e reinicie o ataque."
};
P.pt = pt;
