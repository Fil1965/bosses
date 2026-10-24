--[[
	Bosses_WotLK_pt.lua
		Datos en PT del pack WotLK.
		Fichero creado por el editor web (2026-10-14); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local pt = {};
local pack = pt;


-- Onyxia's Lair : Zona 249 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10184"] = { "Onyxia",
"* |cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r: Grande golpe na frente dela - mantenha o grupo atrás do tanque.",
"* |cff71d5ff|Hspell:18392|h[Fireball]|h|r: Bola de fogo repetida em um jogador aleatório - os curandeiros devem estar prontos para agir.",
"* |cff71d5ff|Hspell:18584|h[Respira fundo]|h|r: Quando a vida estiver em 66%, ela se eleva e lança uma linha de fogo pela área - abandone a linha marcada imediatamente.",
"* |cff71d5ff|Hspell:18431|h[Grito ensurdecedor]|h|r: Quando a vida estiver em 40%, ela lança um ataque em área que causa medo, então, ative os totens de tremor e os escudos de medo o mais rápido possível.",
"* |cff71d5ff|Hspell:68959|h[Whelps]|h|r: Quando a vida estiver em 40%, os whelps eclodem dos ovos ao redor da área de combate - Use ataques em área para eliminá-los longe do tanque."
};

-- Naxxramas : Zona 533 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15928"] = { "Thaddius",
"* |cff71d5ff|Hspell:28089|h[Polaridad cambiante]|h|r: Metade do grupo ganha carga positiva e a outra negativa - separe os lados da polaridade para que os jogadores com carga não entrem em contacto, qualquer carga cruzada detonará.",
"* |cff71d5ff|Hspell:28338|h[Raio em cadeia]|h|r: O raio em cadeia atinge o jogador mais distante dele - um ataque à distância longe do resto do grupo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15931"] = { "Grobbulus",
"* |cff71d5ff|Hspell:28169|h[Inyección Mutante]|h|r: O jogador injetado deixa uma nuvem de baba nociva onde está - direcione-a para a parede.",
"* |cff71d5ff|Hspell:28240|h[Nuvem de Veneno]|h|r: As nuvens de veneno crescem com cada injeção - mantenha-as longe do grupo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15932"] = { "Gluth",
"* |cff71d5ff|Hspell:28374|h[Decimate]|h|r: Reduzir todos os inimigos para 5% de vida - os zumbis adicionais se aproximam para se alimentar, mantenha-os mortos ou afastados.",
"* |cff71d5ff|Hspell:19451|h[Frenzy]|h|r: Usar Frenzy periodicamente - aumenta as defesas do tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15936"] = { "Heigan, o Sujo",
"* |cff71d5ff|Hspell:29350|h[Erupção]|h|r: Recua para fora da sala e o chão entra em erupção em rotação - monte nos cantos seguros ao redor da plataforma."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15952"] = { "Maexxna",
"* |cff71d5ff|Hspell:28622|h[Web Wrap]|h|r: Um jogador aleatório é envolvido contra a parede - libere-o rapidamente.",
"* |cff71d5ff|Hspell:29484|h[Web Spray]|h|r: O ataque em área que atordoa os inimigos em um raio amplo - atorde os inimigos que atacam em corpo a corpo logo em seguida.",
"* |cff71d5ff|Hspell:17332|h[Aranha Jovem]|h|r: As aranhas jovens aparecem em ondas – Elimine-as rapidamente antes que se agrupem."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15953"] = { "Grã-viúva Faerlina",
"* |cff71d5ff|Hspell:28732|h[Abraço da Viúva]|h|r: Matar um adorador perto dela lança o abraço - silencia Faerlina, ela e a raid, e atrasa o frenesi.",
"* |cff71d5ff|Hspell:28798|h[Frenesi]|h|r: Se o abraço expirar, entre em frenesi - defesas e cura intensiva para o tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15954"] = { "Noth, o Pestífero",
"* |cff71d5ff|Hspell:29213|h[Maldição do Portador de Pragas]|h|r: As maldições se espalham pela raid – elimine-as rapidamente, pois as maldições em cadeia causam grande dano.",
"* |cff71d5ff|Hspell:29208|h[Blink]|h|r: Use Blink para se teletransportar para um jogador aleatório – traga-o de volta para o tanque.",
"* |cff71d5ff|Hspell:29212|h[Esqueletos]|h|r: Se teletransporta para cima com uma onda de esqueletos – elimine os inimigos da sala antes que ele retorne."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15956"] = { "Anub'Rekhan",
"* |cff71d5ff|Hspell:28785|h[Enjambre de Locustos]|h|r: Faça um movimento rápido e envie um enxame de locustos que silenciam e drenam a vida - mantenha-se à frente de seu círculo em expansão.",
"* |cff71d5ff|Hspell:28783|h[Ponta]|h|r: As linhas de espinhos atravessam o grupo - dispersar-se de todos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15989"] = { "Sapphiron",
"* |cff71d5ff|Hspell:28522|h[Bloco de Gelo]|h|r: Um jogador aleatório fica congelado em um bloco de gelo, tornando-se cobertura. Planeje a posição.",
"* |cff71d5ff|Hspell:28524|h[Respiração profunda]|h|r: A respiração profunda cobre a sala: aproxime-se do escudo congelado.",
"* |cff71d5ff|Hspell:28542|h[Vida Siphon]|h|r: Life drain siphons a random player - keep heals up.",
"* |cff71d5ff|Hspell:28547|h[Tempestade]|h|r: Tempestade arrasta pelo chão - saia dela."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15990"] = { "Kel'Thuzad",
"* |cff71d5ff|Hspell:27808|h[Explosão de Gelo]|h|r: A explosão de gelo congela e causa dano em cadeia através do grupo - espalhe-se até atingir um alvo, então, destrua a pilha congelada.",
"* |cff71d5ff|Hspell:27819|h[Detonação de Mana]|h|r: Quando a mana de um jogador acaba, mantenha-se separado para que a explosão não se espalhe.",
"* |cff71d5ff|Hspell:27810|h[Fissura da Sombra]|h|r: Quando a vida chegar a 25%, uma área de vazio é criada abaixo de um jogador - saia rapidamente.",
"* |cff71d5ff|Hspell:28410|h[Controle Mental]|h|r: As correntes escravizam jogadores aleatórios - mantenha-os sob controle até que as correntes sejam quebradas."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16011"] = { "Repugnaz",
"* |cff71d5ff|Hspell:29234|h[Espumas]|h|r: As espumas aparecem na sala - remova uma cerca do grupo, sua nuvem fornece um grande buff de crítico.",
"* |cff71d5ff|Hspell:29204|h[Doom]|h|r: Doom atinge um jogador aleatório e explode - evite antes que exploda!",
"* |cff71d5ff|Hspell:55593|h[Aura Necrotica]|h|r: A cura é bloqueada por 10 segundos em cada pulso - utilize curas e feitiços de utilidade para preencher as lacunas."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16028"] = { "Retalhoso",
"* |cff71d5ff|Hspell:28131|h[Frenesi]|h|r: Quando atinge 10%, entra em frenesi - defesas e curas de emergência.",
"* |cff71d5ff|Hspell:28311|h[Projétil de Slime]|h|r: Os projéteis de Slime viajam aleatoriamente para atingir os lançadores, enquanto as ameaças seguintes usam seus Ataques Furiosos - mantenha uma rotação de lançadores."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16060"] = { "Gothik, o Ceifador",
"* |cff71d5ff|Hspell:28025|h[Teleporte: Lado Vivo]|h|r: A raid se divide: o lado vivo luta contra seus escudos enquanto o lado morto controla os espectros - manter as ondas finas.",
"* |cff71d5ff|Hspell:28026|h[Teleporte: Lado Morto]|h|r: Salte entre as salas enquanto os espectros se acumulam - a porta se abre aos 4 minutos, reúnelos e depois elimine-o."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16061"] = { "Instrutor Razúvio",
"* |cff71d5ff|Hspell:29107|h[Desequilibrar Golpe]|h|r: Golpe massivo no tanque atual - controle os aprendizes com as esferas de osso e interrompa seus ataques."
};

-- [editor web 2026-10-15] Nomes oficiais da API de Blizzard (criaturas do encontro); táticas por cavaleiro --
pack["16063"] = { "Sir Zeliek",
"* Sua Marca de Zeliek (|cff71d5ff|Hspell:28835|h[Marca de Zeliek]|h|r) cai a cada ~15 s a 45 m da esquina dele e bate mais forte a cada recarga: 650, 1950, 4550, 9750, 16250 - quem a aguenta rota de turno antes de empilhar muito.",
"* Sua Ira Sagrada (|cff71d5ff|Hspell:28883|h[Ira Sagrada]|h|r) rebota entre jogadores agrupados e cresce a cada salto: o corpo a corpo entra logo depois de um cast, a distância fica no ALCANCE MÁXIMO e ninguém faz a ponte entre corpo a corpo e distantes,",
"* senão a cadeia varre o grupo.",
"* Ele fica na esquina de trás à direita e não se move: sem ninguém no alcance dele chove Condenação em todo o grupo, então um curador e um distante o aguentam desde o arranque,",
"* bem separados para cada um levar só a marca do SEU cavaleiro.",
"* Ele é o último cavaleiro a cair, logo depois de Lady Blaumeux."
};

-- [editor web 2026-10-15] Nomes oficiais da API de Blizzard (criaturas do encontro); táticas por cavaleiro --
pack["16064"] = { "Thane Korth'azz",
"* Sua Marca de Korth'azz (|cff71d5ff|Hspell:28832|h[Marca de Korth'azz]|h|r) cai a cada ~15 s a 45 m da esquina dele e bate mais forte a cada recarga: 650, 1950, 4550, 9750, 16250 - o frontal come ela inteira: abate-o rápido.",
"* O Meteoro dele (|cff71d5ff|Hspell:57467|h[Meteoro]|h|r) reparte o golpe brutal entre todos os grudados no marcado: todo o CORPO A CORPO empilhado sobre ele e o golpe quase não se sente, em vez de liquidar um jogador sozinho.",
"* Ele corre para a esquina frontal esquerda, ignora a ameaça até chegar e luta como qualquer boss corpo a corpo - PRIMEIRO cavaleiro a cair, cooldowns de rajada enquanto os quatro vivem."
};

-- [editor web 2026-10-15] Nomes oficiais da API de Blizzard (criaturas do encontro); táticas por cavaleiro --
pack["16065"] = { "Lady Blaumeux",
"* Sua Marca de Blaumeux (|cff71d5ff|Hspell:28833|h[Marca de Blaumeux]|h|r) cai a cada ~15 s a 45 m da esquina dela e bate mais forte a cada recarga: 650, 1950, 4550, 9750, 16250 - quem a aguenta ao fundo rota assim que a pilha cresce.",
"* As Zonas do Vazio (|cff71d5ff|Hspell:28863|h[Zona do Vazio]|h|r) abrem sob os pés ao redor dela: saia do círculo AGORA, e quem a aguenta cuida do chão durante toda a luta.",
"* Ela fica na esquina de trás à esquerda e não se move: um curador e um distante a aguentam à distância, bem separados para não pescar a marca do cavaleiro vizinho, ou ela esvazia o grupo com Condenação.",
"* A terceira a cair, depois dos dois frontais."
};

-- [editor web 2026-10-15] Nomes oficiais da API de Blizzard (criaturas do encontro); táticas por cavaleiro --
pack["30549"] = { "Barão Rivendare",
"* Sua Marca de Rivendare (|cff71d5ff|Hspell:28834|h[Marca de Rivendare]|h|r) cai a cada ~15 s a 45 m da esquina dele e bate mais forte a cada recarga: 650, 1950, 4550, 9750, 16250 - o frontal come ela inteira: siga a ordem de queda.",
"* A Sombra Ímpia dele (|cff71d5ff|Hspell:57369|h[Sombra Ímpia]|h|r) sangra o SEU tanque a cada ~15 s: cura extra nesse tanque durante toda a luta.",
"* Ele corre para a esquina frontal direita do mesmo jeito que Thane - SEGUNDO cavaleiro a cair, logo depois de Thane."
};

-- Utgarde Keep : Zona 574 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23953"] = { "Príncipe Keleseth",
"* |cff71d5ff|Hspell:48400|h[Tumba de Gelo]|h|r: Congela um jogador em uma tumba de gelo; libera rapidamente o jogador e usa um ataque em área para eliminar os guardas esqueléticos que aparecem em ondas."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["23954"] = { "Ingvar, o Ladravaz",
"* |cff71d5ff|Hspell:42730|h[Golpe de Desgaste]|h|r: O Desgaste drena o tanque - troque-o e mantenha os limpezes prontos.",
"* |cff71d5ff|Hspell:42729|h[Grito de Desestabilização]|h|r: O grito desestabiliza a sala - prepare-se e interrompa-o.",
"* |cff71d5ff|Hspell:42723|h[Ataque]|h|r: Na sua forma não-morta, o Smash sacode toda a sala: os personagens de combate devem manter-se à distância."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24200"] = { "Skarvald e Dalronn",
"* |cff71d5ff|Hspell:43650|h[Debilitar]|h|r: O efeito de debuff drena quem o possui - mantenha o feitiço de cura pronto.",
"* |cff71d5ff|Hspell:52611|h[Sombras]|h|r: Quando caem, suas sombras se levantam - jogue as sombras antes que se reagrupem."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["24201"] = { "Skarvald e Dalronn",
"* |cff71d5ff|Hspell:43650|h[Debilitar]|h|r: O efeito de debuff drena quem o possui - mantenha o feitiço de cura pronto.",
"* |cff71d5ff|Hspell:52611|h[Sombras]|h|r: Quando caem, suas sombras se levantam - jogue as sombras antes que se reagrupem."
};

-- The Culling of Stratholme : Zona 595 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26529"] = { "Magareph",
"* |cff71d5ff|Hspell:52696|h[Correntes Asfixiantes]|h|r: Asfixia um jogador - mantenha a cura preparada."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26530"] = { "Salramm, o Esculpecarne",
"* |cff71d5ff|Hspell:58845|h[Maldición de Carne Distorsionada]|h|r: La maldición distorsiona a quien la posee - elimínala.",
"* |cff71d5ff|Hspell:52451|h[Ghules]|h|r: Haz que reaparezcan - Elimínalos rápidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26532"] = { "Crono-lorde Éon",
"* |cff71d5ff|Hspell:52772|h[Maldición de Exigencia]|h|r: A maldição enfraquece quem a possui – elimine-a.",
"* |cff71d5ff|Hspell:58848|h[Time Warp]|h|r: O Time Warp altera o ritmo da sala, mantenha os curas constantes durante este efeito."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26533"] = { "Mal'Ganis",
"* |cff71d5ff|Hspell:52721|h[Dormir]|h|r: Hace que los jugadores se duerman - despierte rápido y mantenga el grupo disperso.",
"* |cff71d5ff|Hspell:52723|h[Toque Vampírico]|h|r: El toque drena el objetivo - purifica."
};

-- Drak'Tharon Keep : Zona 600 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26630"] = { "Trollogro",
"* |cff71d5ff|Hspell:49637|h[Ferida Infectada]|h|r: Feridas infectadas sangram a o tanque - mantenha os curas prontos.",
"* |cff71d5ff|Hspell:49639|h[Aperto]|h|r: Aperto ataca o tanque - defensas preparadas.",
"* |cff71d5ff|Hspell:49380|h[Consumir]|h|r: Canaliza nos cadáveres ao seu redor – mova os combates enquanto ele se move."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26631"] = { "Novos, o Evocador",
"* |cff71d5ff|Hspell:50089|h[Ira de Miseria]|h|r: A Ira enfraquece o grupo, limpe-a.",
"* |cff71d5ff|Hspell:47346|h[Heridas Sombrias]|h|r: As feridas sombrias se espalham pelo chão – evite pisá-las.",
"* |cff71d5ff|Hspell:59910|h[Minions]|h|r: Os minions chegam em ondas durante a fase dele – elimine-os antes de que cheguem a ele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26632"] = { "Profeta Tharon'ja",
"* |cff71d5ff|Hspell:49356|h[Decay Flesh]|h|r: Transforma-se em um esqueleto - tenha cuidado com o ataque de fogo que lança enquanto esqueleto.",
"* |cff71d5ff|Hspell:49518|h[Chuva de Fogo]|h|r: A chuva de fogo queima a sala, mova-se para evitar o dano.",
"* |cff71d5ff|Hspell:49527|h[Maldição de Vida]|h|r: A maldição afeta quem a usa – elimine-a."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27483"] = { "Rei Moso",
"* |cff71d5ff|Hspell:48878|h[Corte Perforante]|h|r: O corte sangra quem o usa - curandeiros, preparem-se.",
"* |cff71d5ff|Hspell:59416|h[Chamado ao Rapto]|h|r: Invoca os raptores na sala - Ataque ao grupo rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28684"] = { "Krik'thir",
"* |cff71d5ff|Hspell:52592|h[Maldição de Fadiga]|h|r: A maldição de fadiga drena o portador; remova-a; seu guardião lança projéteis através da porta; use habilidades de área e controle as teias."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28921"] = { "Hadronox",
"* |cff71d5ff|Hspell:53400|h[Nuvem de Ácido]|h|r: As nuvens de ácido encharcam o chão - evite-as.",
"* |cff71d5ff|Hspell:53030|h[Veneno de Leech]|h|r: O Leech Poison cura enquanto causa dano ao portador - elimine-o rapidamente; ataque uma porta, mantenha a distância enquanto mantém a habilidade."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["29120"] = { "Anub'arak",
"* |cff71d5ff|Hspell:53472|h[Pound]|h|r: O golpe amplo atinge os alvos - afaste-se dos alvos; enjambes de besouros fluem pelos túneis na primeira fase - use ataques de área para eliminá-los."
};

-- Utgarde Pinnacle : Zona 575 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26668"] = { "Svala Morbecripta",
"* |cff71d5ff|Hspell:48267|h[Sacrifício]|h|r: O alvo se aproxima do altar: interrompa o ritual antes que o sacrifício cause dano."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26687"] = { "Gortok Cascoclaro",
"* |cff71d5ff|Hspell:48261|h[Golpe]|h|r: O rinoceronte ataca o tanque - os curandeiros devem estar preparados.",
"* |cff71d5ff|Hspell:48256|h[Withering Roar]|h|r: O rugido enfraquece o grupo - mantenham os curas ativos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26693"] = { "Skadi, o Impiedoso",
"* |cff71d5ff|Hspell:59322|h[Whirlwind]|h|r: Seu whirlwind gira amplamente – os personagens que atacarem corpo a corpo devem recuar.",
"* |cff71d5ff|Hspell:59331|h[Veneno]|h|r: O veneno segue o caminho da armadilha – corra entre as nuvens."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26861"] = { "Rei Ymiron",
"* |cff71d5ff|Hspell:48294|h[Bane]|h|r: O canal de Bane pune os conjuradores - pare de lançar enquanto estiver ativo.",
"* |cff71d5ff|Hspell:48291|h[Rot Fétida]|h|r: A Rot Fétida causa dano ao portador - purifique-a."
};

-- The Nexus : Zona 576 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26723"] = { "Keristrasza",
"* |cff71d5ff|Hspell:50997|h[Ensnarement]|h|r: As correntes impedem o movimento - disperse o grupo e mantenha os curandeiros ativos.",
"* |cff71d5ff|Hspell:48179|h[Frost Nova]|h|r: Explosões de Frost Nova ao redor dela - os membros do combate devem sair.",
"* |cff71d5ff|Hspell:8599|h[Frenesí]|h|r: No final entra em frenesí - use ao máximo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26731"] = { "Grã-feiticeira Telestra",
"* |cff71d5ff|Hspell:47731|h[Congelar]|h|r: Congela um jogador completamente - interrompe o feitiço e tenha cuidado com seus clones: três clones se dispersam, o de gelo cobre a sala com gelo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26763"] = { "Anômalus",
"* |cff71d5ff|Hspell:47743|h[Fenda do Caos]|h|r: A fenda canaliza energia nele - destrua a fenda rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["26794"] = { "Ormorok, o Molda-árvores",
"* |cff71d5ff|Hspell:47981|h[Reflejo de hechizos]|h|r: Reflejo de feitiços: os conjuradores devem parar de lançar feitiços enquanto o efeito estiver ativo.",
"* |cff71d5ff|Hspell:47958|h[Espinhos]|h|r: As linhas de espinhos varrerão a sala - evite as marcações.",
"* |cff71d5ff|Hspell:48017|h[Frenesi]|h|r: Quando estiver com pouca vida, entre em frenesi; ataque rapidamente.",
"* |cff71d5ff|Hspell:61564|h[Árvores]|h|r: As árvores se levantam ao seu redor – Elimine-as com ataques de área."
};

-- The Oculus : Zona 578 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27447"] = { "Varos Galganuvens",
"* |cff71d5ff|Hspell:51002|h[Capitán do Anel Azul]|h|r: Os capitães do anel convocam o grupo, mate os capitães primeiro.",
"* |cff71d5ff|Hspell:51021|h[Feixe Arcana]|h|r: O feixe queima ao longo da linha - mova-se para fora dela.",
"* |cff71d5ff|Hspell:51054|h[Amplificar Magia]|h|r: Amplificar Magia marca um jogador – remova o efeito."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27654"] = { "Drakos, o Interrogador",
"* |cff71d5ff|Hspell:50774|h[Pé Trovão]|h|r: O golpe derruba o ambiente — prepare-se."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27655"] = { "Lorde-mago Urom",
"* |cff71d5ff|Hspell:51121|h[Bomba de Tiempo]|h|r: A bomba explode quando mantida - corre para longe antes de que entre em contato.",
"* |cff71d5ff|Hspell:51110|h[Explosão Arcana Potenciada]|h|r: O grande ataque arcano - interrompa o lançamento ou esteja preparado.",
"* |cff71d5ff|Hspell:51103|h[Frostbomb]|h|r: Frostbombs congelam o chão - evite-as."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27656"] = { "Guardião de Meridianos Éregos",
"* |cff71d5ff|Hspell:51162|h[Planar Shift]|h|r: Mudança de planos e os dragões devem permanecer próximos - mantenha o grupo unido durante a mudança.",
"* |cff71d5ff|Hspell:51170|h[Asalto Furioso]|h|r: Posiciono-o para causar muito dano antes de que a fase recomece."
};

-- Halls of Stone : Zona 599 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27975"] = { "Donzela da Mágoa",
"* |cff71d5ff|Hspell:50761|h[Golpe de Desgraça]|h|r: Desgraça atinge o tanque – troquem.",
"* |cff71d5ff|Hspell:50752|h[Tempestade de Desgraça]|h|r: A tempestade varre a sala – mantenham-se longe dos alvos.",
"* |cff71d5ff|Hspell:50760|h[Choque de Desgraça]|h|r: O ataque atordoa o grupo – espalhem-se antes de que atinja."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27977"] = { "Cristallos",
"* |cff71d5ff|Hspell:50833|h[Golpe al suelo]|h|r: O golpe no chão dispersa os inimigos - se afastem.",
"* |cff71d5ff|Hspell:50810|h[Shatter]|h|r: Após o golpe, ele se quebra - mantenham-se separados ou o fragmento dano o grupo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["27978"] = { "Sionnir, o Molda-ferro",
"* |cff71d5ff|Hspell:50840|h[Anillo de Rayo]|h|r: O anel de raio o circunda - saia antes de atingir.",
"* |cff71d5ff|Hspell:50834|h[Descarga Estática]|h|r: A descarga se acumula em quem toca, mantenha o grupo longe do seu anel."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["28070"] = { "Brann Barbabronze",
"* |cff71d5ff|Hspell:51012|h[Dark Matter]|h|r: A matéria escura arde sob a pressão do grupo - afaste-se dos alvos.",
"* |cff71d5ff|Hspell:51125|h[Olho Ardente]|h|r: O olhar ardente atinge dos guardiões - enfrente-os."
};

-- Halls of Lightning : Zona 602 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28546"] = { "Ionar",
"* |cff71d5ff|Hspell:52770|h[Dispersión]|h|r: Use Dispersión para criar faíscas. Agrupe as faíscas rapidamente e ataque-as com ataques de área antes de que explodam.",
"* |cff71d5ff|Hspell:52658|h[Sobrecarga Estática]|h|r: A sobrecarga queima quem que a segura - os movimentos marcados a atingem."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28586"] = { "General Bjarngrim",
"* |cff71d5ff|Hspell:52027|h[Whirlwind]|h|r: Seu Whirlwind cobre a área - os personagens de combate devem recuar; alterna entre as posturas Storm, Battle e Berserker entre fases.",
"* |cff71d5ff|Hspell:16856|h[Golpe Mortal]|h|r: O Golpe Mortal inflige dano ao tanque - troque e cure."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28587"] = { "Volkhan",
"* |cff71d5ff|Hspell:52237|h[Romper o golpe]|h|r: O golpe sacode o chão da forja: os personagens de combate corpo a corpo devem sair; ele forja gólems de lava, deixe-os esfriar e depois destrua-os."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28923"] = { "Loken",
"* |cff71d5ff|Hspell:52960|h[Nova de Relâmpago]|h|r: A nova pulsa mais amplamente a cada batida - saia antes de atingir o ápice."
};

-- The Eye of Eternity : Zona 616 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28859"] = { "Malygos",
"* |cff71d5ff|Hspell:56105|h[Vortex]|h|r: A cada 60 segundos, gire a raid e cause dano por pulsos - cure através dele.",
"* |cff71d5ff|Hspell:56505|h[Respira hondo]|h|r: Na fase 2, seu sopro queima uma seção da plataforma - abandone essa área.",
"* |cff71d5ff|Hspell:60936|h[Ola de Poder]|h|r: Onda inevitável que atravessa a plataforma - usar defesas de cooldown.",
"* |cff71d5ff|Hspell:57430|h[Static Field]|h|r: Campos estáticos flutuam ao redor da plataforma - mova-se para longe deles."
};

-- The Obsidian Sanctum : Zona 615 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["28860"] = { "Sartharion",
"* |cff71d5ff|Hspell:59127|h[Fissura da Escuridão]|h|r: As áreas vazias se abrem sob os jogadores - saia rapidamente; seu sopro também envia ondas de fogo através da plataforma atrás do próximo sopro."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30449"] = { "Vesperon",
"* |cff71d5ff|Hspell:59127|h[Fissura da Escuridão]|h|r: As áreas de vazio explodem sob os jogadores – sal; seu discípulo emerge – explore-o antes que ele acumule bônus de dano no dragão."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30451"] = { "Shadron",
"* |cff71d5ff|Hspell:59127|h[Fissura da Escuridão]|h|r: As áreas de vazio explodem sob os jogadores – sal; seu discípulo e os demônios atravessam o portal – elimine o discípulo antes que o efeito atinja-o."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["30452"] = { "Tenebron",
"* |cff71d5ff|Hspell:59127|h[Fissura da Escuridão]|h|r: As áreas de vazio explodem quando os jogadores estão próximos – sal; os ovos da Escuridão ao longo das paredes se quebram – destrua os filhotes."
};

-- The Violet Hold : Zona 608 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29266"] = { "Xevozz",
"* |cff71d5ff|Hspell:54102|h[Esfera Éterea]|h|r: As esferas orbitam e atiram – elimine-as e mantenha-as longe do grupo.",
"* |cff71d5ff|Hspell:54160|h[Arcane Power]|h|r: Arcane power o fortale – mantenha o tanque defensivo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29312"] = { "Lavanthor",
"* |cff71d5ff|Hspell:54282|h[Aliento de Fuego]|h|r: Conejo de fuego - faça ele atacar de frente.",
"* |cff71d5ff|Hspell:54249|h[Lava Burn]|h|r: Lava Burn faz o grupo explodir - disperse."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29313"] = { "Icoron",
"* |cff71d5ff|Hspell:54306|h[Burbuja Protectora]|h|r: A bolha o torna imune; destrua-a.",
"* |cff71d5ff|Hspell:54241|h[Ráfaga de projéteis aquáticos]|h|r: A rajada bombardea a sala: interrompa ou procure refúgio."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29314"] = { "Zuramat, o Obliterador",
"* |cff71d5ff|Hspell:59743|h[Desplazamiento del Vacío]|h|r: O deslocamento causa dano ao portador - os curandeiros devem estar preparados.",
"* |cff71d5ff|Hspell:59745|h[Manto de Oscuridad]|h|r: O manto oculta sua atração — tenha-os prontos para limpar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29315"] = { "Erekem",
"* |cff71d5ff|Hspell:54481|h[Cura em cadeia]|h|r: Seus guardiões curam em cadeia - interrompa-os.",
"* |cff71d5ff|Hspell:54479|h[Escudo da Terra]|h|r: Escudos da Terra protegem o grupo - dispelsse-os.",
"* |cff71d5ff|Hspell:54516|h[Fúria Sanguínea]|h|r: A habilidade de Fúria Sanguínea o fortalece - elimine-a."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29316"] = { "Moragg",
"* |cff71d5ff|Hspell:54396|h[Optic Link]|h|r: O link do olho amarra e persegue os jogadores; mantenha-o no lado externo do grupo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31134"] = { "Cyanigosa",
"* |cff71d5ff|Hspell:58693|h[Blizzard]|h|r: O ataque de Blizzard cobre toda a área - mova-se fora da neve.",
"* |cff71d5ff|Hspell:58694|h[Suck Up]|h|r: O ataque atrai todo o grupo para perto dela; preparem-se e se dispersem, pois ela será a última a receber dano após as ondas através do portal desaparecerem.",
"* |cff71d5ff|Hspell:59374|h[Queima de Mana]|h|r: A Queima de Mana drena quem que a possui; desfaça-a."
};

-- Gundrak : Zona 604 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29304"] = { "Slad'ran",
"* |cff71d5ff|Hspell:55081|h[Poison Nova]|h|r: A nova de veneno cobre o chão em área - saia e espalhe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29305"] = { "Murabi",
"* |cff71d5ff|Hspell:55098|h[Transformação]|h|r: Transforma-se em um mamute - interrompe o lançamento ou a luta se torna dupla."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29306"] = { "Gal'darah",
"* |cff71d5ff|Hspell:54956|h[Golpe de carga]|h|r: O golpe de carga atira em um jogador - as barras marcadas.",
"* |cff71d5ff|Hspell:55249|h[Whirling Slash]|h|r: O whirling slash aplica em seu alvo - troque-o."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29307"] = { "Colosso Drakkari",
"* |cff71d5ff|Hspell:54850|h[Aparecer]|h|r: Ataque ao elemental antes que ele se fusione novamente.",
"* |cff71d5ff|Hspell:54878|h[Fusão]|h|r: A fusão reconstrui o colosso, o elemental morre primeiro.",
"* |cff71d5ff|Hspell:59451|h[Poço de Mana]|h|r: Os poços de mana queimam o chão – evite pisar neles."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29932"] = { "Eck, o Feroz",
"* |cff71d5ff|Hspell:55817|h[Eck's Residue]|h|r: O resíduo causa dano em área - mantenham-se longe de seus poços."
};

-- Ahn'kahet: The Old Kingdom : Zona 619 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29308"] = { "Príncipe Taldaram",
"* |cff71d5ff|Hspell:55959|h[Abrazo del Vampiro]|h|r: O abraço canaliza seu efeito no portador - curas explosivas para romper o controle.",
"* |cff71d5ff|Hspell:55931|h[Flame Sphere]|h|r: A esfera de fogo percorre a sala - mantenha-se longe do seu caminho."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29309"] = { "Ancião Nadox",
"* |cff71d5ff|Hspell:56130|h[Plaga de la Cría]|h|r: A plaga enfraquece quem a possui; limpe a plaga. Sua cria ataca em grupo; use ataques de área."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29310"] = { "Jedoga Buscassombra",
"* |cff71d5ff|Hspell:56926|h[Thunderclap]|h|r: Thunderclap tem um alcance amplo, mantenha-o à distância.",
"* |cff71d5ff|Hspell:56855|h[Twister]|h|r: O Twister corta pela horda - mova-se para fora da parede."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["29311"] = { "Arauto Volazj",
"* |cff71d5ff|Hspell:57496|h[Insania]|h|r: A insania cria cópias do grupo inteiro - queime as cópias rapidamente.",
"* |cff71d5ff|Hspell:62660|h[Crash de Sombra]|h|r: Os ataques de [Crash de Sombra] atingem os jogadores - afastem-se.",
"* |cff71d5ff|Hspell:57949|h[Tremor]|h|r: O tremor afeta quem o segura - limpe-o."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["30258"] = { "Amanitar",
"* |cff71d5ff|Hspell:57055|h[Mini]|h|r: Reduzir o portador, torná-lo menor e vulnerável, e os cogumelos o curam: elimine-os assim que aparecerem."
};

-- Vault of Archavon : Zona 624 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["31125"] = { "Arcavon, o Vigia de Pedra",
"* |cff71d5ff|Hspell:58678|h[Fragmentos de rocha]|h|r: Lança fragmentos de rocha para os dois jogadores marcados - os curandeiros, preparem-se.",
"* |cff71d5ff|Hspell:53041|h[Agarramento sufocante]|h|r: Realiza um agarramento sufocante para atrair um jogador para o seu lado; a multidão mantém-se afastada do alvo marcado.",
"* |cff71d5ff|Hspell:60894|h[Salto]|h|r: Salta para um jogador aleatório - dispersar-se e reposicionar-se rapidamente.",
"* |cff71d5ff|Hspell:60880|h[Stomp]|h|r: Ataca amplamente o grupo - dispersar-se."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33993"] = { "Emalon, o Vigia da Tempestade",
"* |cff71d5ff|Hspell:64218|h[Overcharge]|h|r: A constructo da tempestade está carregando - mate-o antes que o ataque atinja.",
"* |cff71d5ff|Hspell:65279|h[Lightning Nova]|h|r: Circule ao redor dele - os membros de combate saem."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35013"] = { "Koralon, o Vigia de Fogo",
"* |cff71d5ff|Hspell:66665|h[Fogo Sibilante]|h|r: Cone de fogo - faça-o enfrentar a parte do grupo.",
"* |cff71d5ff|Hspell:66725|h[Punhos de Meteorito]|h|r: Atacar o tanque com os punhos - trocar de tanque.",
"* |cff71d5ff|Hspell:66721|h[Raiva Ardente]|h|r: Sua fúria concede bônus de tempo.",
"* |cff71d5ff|Hspell:66684|h[Cinza]|h|r: Os fragmentos de fogo seguem um jogador – mova-os para a parede."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38433"] = { "Toravon, o Vigia de Gelo",
"* |cff71d5ff|Hspell:72090|h[Freezing Ground]|h|r: O gelo se espalha pelo chão - retirem-se.",
"* |cff71d5ff|Hspell:72034|h[Whiteout]|h|r: Ataque de Whiteout amplo - elimine os inimigos próximos.",
"* |cff71d5ff|Hspell:72091|h[Esfera de Hielo]|h|r: As esferas de gelo orbitam ao seu redor; destrua-as antes que explodam.",
"* |cff71d5ff|Hspell:72004|h[Frostbite]|h|r: Frostbite se acumula com cada esfera atingida - mantenha as esferas no chão."
};

-- Ulduar : Zona 603 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32845"] = { "Hodir",
"* |cff71d5ff|Hspell:65123|h[Nube Tormenta]|h|r: A habilidade Nube Tormenta concede um buff a quem a utiliza e a qualquer um próximo - distribuam-na entre os lançadores de feitiços.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: O congelamento enche o chão - peguem numa placa de gelo para se mover.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: O frio intenso ataca quem permanece parado - nunca parem de se mover."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32857"] = { "A Assembleia de Ferro",
"* |cff71d5ff|Hspell:61920|h[Supercarga]|h|r: Quando um dos guardas cai, os outros se fortalecem – aproveite o combo mais forte ou coordene os assassinatos.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: A descarga em cadeia ataca o grupo – espalhe e interrompa.",
"* |cff71d5ff|Hspell:63483|h[Tempestade de Raios]|h|r: Brundir lança uma tempestade de raios – interrompa o ataque.",
"* |cff71d5ff|Hspell:63481|h[Sobrecarga]|h|r: Brundir causa uma sobrecarga massiva – fuja.",
"* |cff71d5ff|Hspell:61888|h[Poder abrumador]|h|r: O \"Poder abrumador\" se acumula no tanque – troque de tanque.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Runas da Morte queimam o chão – afaste-se delas.",
"* |cff71d5ff|Hspell:63489|h[Escudo de Runas]|h|r: Um escudo de runas protege sua saúde; desmantele-o ou retire-o."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32865"] = { "Thorim",
"* |cff71d5ff|Hspell:62470|h[Stormhammer]|h|r: O martelo atordoa qualquer um no seu cone frontal - mantenha-se atrás de uma coluna.",
"* |cff71d5ff|Hspell:62466|h[Lightning Charge]|h|r: Use Lightning Charge para atacar rapidamente quando os inimigos aparecerem - elimine rapidamente a área e, em seguida, ataque o chefe no corredor.",
"* |cff71d5ff|Hspell:62130|h[Unbalancing Strike]|h|r: Ataque brutal no seu tanque - trocas e defesas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32867"] = { "A Assembleia de Ferro",
"* |cff71d5ff|Hspell:61920|h[Supercarga]|h|r: Quando um dos guardas cai, os outros se fortalecem – aproveite o combo mais forte ou coordene os assassinatos.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: A descarga em cadeia ataca o grupo – espalhe e interrompa.",
"* |cff71d5ff|Hspell:63483|h[Tempestade de Raios]|h|r: Brundir lança uma tempestade de raios – interrompa o ataque.",
"* |cff71d5ff|Hspell:63481|h[Sobrecarga]|h|r: Brundir causa uma sobrecarga massiva – fuja.",
"* |cff71d5ff|Hspell:61888|h[Poder abrumador]|h|r: O \"Poder abrumador\" se acumula no tanque – troque de tanque.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Runas da Morte queimam o chão – afaste-se delas.",
"* |cff71d5ff|Hspell:63489|h[Escudo de Runas]|h|r: Um escudo de runas protege sua saúde; desmantele-o ou retire-o."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32871"] = { "Algalon, o Observador",
"* |cff71d5ff|Hspell:64584|h[Big Bang]|h|r: O Big Bang cobre toda a sala: mergulhe em um buraco negro e observe-o passar.",
"* |cff71d5ff|Hspell:65108|h[Buraco Negro]|h|r: As estrelas que colapsam deixam para trás buracos negros: entrei neles, saí depois da explosão.",
"* |cff71d5ff|Hspell:64412|h[Golpe de Fase]|h|r: O golpe de fase se acumula no tanque - trocar de tanque.",
"* |cff71d5ff|Hspell:64596|h[Cosmic Smash]|h|r: Cosmic Smash marca o chão - mova-se para evitar o dano."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32906"] = { "Freya",
"* |cff71d5ff|Hspell:62438|h[Nature Bindings]|h|r: Las raíces mantienen a los jugadores en su lugar - rompa-las.",
"* |cff71d5ff|Hspell:63571|h[Sunbeam]|h|r: Los Sunbeams explotan amplamente - corra para fora do alvo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32926"] = { "Hodir",
"* |cff71d5ff|Hspell:65123|h[Nube Tormenta]|h|r: A habilidade Nube Tormenta concede um buff a quem a utiliza e a qualquer um próximo - distribuam-na entre os lançadores de feitiços.",
"* |cff71d5ff|Hspell:61968|h[Flash Freeze]|h|r: O congelamento enche o chão - peguem numa placa de gelo para se mover.",
"* |cff71d5ff|Hspell:62188|h[Biting Cold]|h|r: O frio intenso ataca quem permanece parado - nunca parem de se mover."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["32927"] = { "A Assembleia de Ferro",
"* |cff71d5ff|Hspell:61920|h[Supercarga]|h|r: Quando um dos guardas cai, os outros se fortalecem – aproveite o combo mais forte ou coordene os assassinatos.",
"* |cff71d5ff|Hspell:64215|h[Chain Lightning]|h|r: A descarga em cadeia ataca o grupo – espalhe e interrompa.",
"* |cff71d5ff|Hspell:63483|h[Tempestade de Raios]|h|r: Brundir lança uma tempestade de raios – interrompa o ataque.",
"* |cff71d5ff|Hspell:63481|h[Sobrecarga]|h|r: Brundir causa uma sobrecarga massiva – fuja.",
"* |cff71d5ff|Hspell:61888|h[Poder abrumador]|h|r: O \"Poder abrumador\" se acumula no tanque – troque de tanque.",
"* |cff71d5ff|Hspell:63490|h[Rune of Death]|h|r: Runas da Morte queimam o chão – afaste-se delas.",
"* |cff71d5ff|Hspell:63489|h[Escudo de Runas]|h|r: Um escudo de runas protege sua saúde; desmantele-o ou retire-o."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["32930"] = { "Kologarn",
"* |cff71d5ff|Hspell:63346|h[Focused Eyebeam]|h|r: Os feixes rastreiam um jogador – mantenha-o em movimento pela plataforma até desaparecerem.",
"* |cff71d5ff|Hspell:64292|h[Agarre]|h|r: Os braços de pedra agarram os jogadores – mova-os rapidamente.",
"* |cff71d5ff|Hspell:64002|h[Armadura de mordisco]|h|r: Aplica stacks de armadura de mordisco ao tanque – troque de tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33113"] = { "Leviatã Flamejante",
"* |cff71d5ff|Hspell:62374|h[Persegue]|h|r: Persegue um veículo específico - este veículo gira enquanto os outros se aproximam por flanqueio.",
"* |cff71d5ff|Hspell:62475|h[Desligamento]|h|r: O desligamento o congela - então, queima tudo.",
"* |cff71d5ff|Hspell:62297|h[Raiva de Hodir]|h|r: Os buffs das torres potencializam o combate – destrua as torres antes do início para enfraquecê-lo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33118"] = { "Ignis, o Mestre de Caldeira",
"* |cff71d5ff|Hspell:63477|h[Slag Pot]|h|r: Ataque a um jogador para que entre no charco de lava - cura intensamente até que caia.",
"* |cff71d5ff|Hspell:62488|h[Construções de Ferro]|h|r: As construções aparecem pelas fendas - mergulhe-as na água e deixe que a \"Queima\" as destrua.",
"* |cff71d5ff|Hspell:63472|h[Rajadas de fogo]|h|r: As rajadas interrompem os feitiços lançados. Os lançadores devem permanecer em movimento."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33186"] = { "Navalhada",
"* |cff71d5ff|Hspell:48642|h[Torretas de arpón]|h|r: Construa as torres de arpão ao redor da arena - atraia-a entre os voos.",
"* |cff71d5ff|Hspell:64733|h[Devouring Flame]|h|r: As poças de fogo se espalham pelo chão - saia delas.",
"* |cff71d5ff|Hspell:64771|h[Fused Armor]|h|r: A armadura fundida se acumula nela - troque de tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33271"] = { "General Vezax",
"* |cff71d5ff|Hspell:62660|h[Crash de Sombra]|h|r: Crash de Sombra persegue um jogador - corra-o em direção à parede.",
"* |cff71d5ff|Hspell:63276|h[Absorção de Vida]|h|r: O siphon drena seu alvo marcado - o alvo permanece à distância.",
"* |cff71d5ff|Hspell:62662|h[Onda de Escuridão]|h|r: A onda aumenta seu dano - os tanques devem usar defesas.",
"* |cff71d5ff|Hspell:62661|h[Chamas Ardentes]|h|r: Chamas ardentes o buffa - interrompa cada lançamento."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33288"] = { "Yogg-Saron",
"* |cff71d5ff|Hspell:63050|h[Sanidade]|h|r: A sanidade diminui perto de cada sombra – observe o medidor, saia da sala abaixo de 30.",
"* |cff71d5ff|Hspell:63802|h[Conexão Cerebral]|h|r: Os jogadores conectados se movem em direção ao outro – mantenha as conexões separadas.",
"* |cff71d5ff|Hspell:57687|h[Portal Cerebral]|h|r: Os portais se abrem para a perseguição da mente – envie o grupo marcado através dele e termine a ilusão.",
"* |cff71d5ff|Hspell:62979|h[Guardião de Yogg]|h|r: Os Guardiões emergem das sombras: Ataque vários rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33293"] = { "Desconstrutor XT-002",
"* |cff71d5ff|Hspell:65121|h[Explosão de Luz]|h|r: As explosões de luz explodem perto dos pés do jogador - afaste-se do ponto de impacto.",
"* |cff71d5ff|Hspell:64234|h[Bomba de Gravidade]|h|r: As bombas de gravidade colapsam ao redor do alvo - mantenha-se afastado.",
"* |cff71d5ff|Hspell:64206|h[Consumo]|h|r: A fase com o coração exposto cria zonas de consumo: evite entrar nelas e destrua o coração."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33432"] = { "Mimiron",
"* |cff71d5ff|Hspell:63631|h[Shock Blast]|h|r: Grande explosão de sua lateral, um ataque de tanque - os jogadores de melee devem recuar.",
"* |cff71d5ff|Hspell:64402|h[Ataque com foguetes]|h|r: Os foguetes atravessam a linha marcada - recue imediatamente.",
"* |cff71d5ff|Hspell:63274|h[Torrente de Laser]|h|r: Gira e dispara os lasers - corra ao redor dele.",
"* |cff71d5ff|Hspell:64529|h[Plasma Blast]|h|r: Plasma ataca o tanque - cura defensiva.",
"* |cff71d5ff|Hspell:64623|h[Frost Bomb]|h|r: Uma bomba de gelo cai - quebre-a antes que ela atinja o solo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["33515"] = { "Auriaya",
"* |cff71d5ff|Hspell:64386|h[Som]|h|r: Seu grito causa medo na sala: mantenha uma interrupção em cada lançamento.",
"* |cff71d5ff|Hspell:64396|h[Nuvem de Guardiões]|h|r: O ferário ressuscita repetidamente: Aplica dano em área à nuvem, elimina os orbes dos Guardiões.",
"* |cff71d5ff|Hspell:64675|h[Zona do Vazio]|h|r: As Zonas do Vazio atacam um jogador - mover-se para evitar o contato."
};

-- Trial of the Crusader : Zona 649 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34441"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34444"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34445"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34447"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34448"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34449"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34450"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34451"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34453"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34454"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34455"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34456"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34458"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34459"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34460"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34461"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34463"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34465"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34466"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34467"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34468"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34469"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34470"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34471"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34472"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34473"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34474"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34475"] = { "Campeões de facção",
"* |cff71d5ff|Hspell:65947|h[Tempestade de Espadas]|h|r: O guerreiro lança a tempestade — os guerreiros devem sair.",
"* |cff71d5ff|Hspell:65983|h[Heroísmo]|h|r: Seu buff de heroísmo beneficia o grupo, então elimine-o rapidamente.",
"* |cff71d5ff|Hspell:65816|h[Inferno]|h|r: O Inferno queima o chão — mantenha-se fora das áreas marcadas.",
"* |cff71d5ff|Hspell:65801|h[Ovelha]|h|r: Suas habilidades de controle de massa — mantenha os dispels prontos.",
"* |cff71d5ff|Hspell:66017|h[Grip da Morte]|h|r: O grip da morte captura um jogador; o grupo deve manter a formação."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34496"] = { "Val'kyr geminadas",
"* |cff71d5ff|Hspell:65950|h[Essência de Luz]|h|r: Metade do grupo carrega a essência de luz - toque apenas as esferas da cor oposta, a cor oposta causa dano.",
"* |cff71d5ff|Hspell:66001|h[Essência de Treva]|h|r: O outro grupo carrega a essência de treva - toque apenas as esferas da cor oposta.",
"* |cff71d5ff|Hspell:39089|h[Especial]|h|r: Durante a invocação especial, os núcleos mudam de posição - atravesse as esferas opostas simultaneamente.",
"* |cff71d5ff|Hspell:65875|h[Pacto dos Gêmeos]|h|r: Um gêmeo cura o outro - interrompa o pacto.",
"* |cff71d5ff|Hspell:65916|h[Força dos Gêmeos]|h|r: O gêmeo fortalecido recebe dano reduzido - altere seu dano para o outro."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34497"] = { "Val'kyr geminadas",
"* |cff71d5ff|Hspell:65950|h[Essência de Luz]|h|r: Metade do grupo carrega a essência de luz - toque apenas as esferas da cor oposta, a cor oposta causa dano.",
"* |cff71d5ff|Hspell:66001|h[Essência de Treva]|h|r: O outro grupo carrega a essência de treva - toque apenas as esferas da cor oposta.",
"* |cff71d5ff|Hspell:39089|h[Especial]|h|r: Durante a invocação especial, os núcleos mudam de posição - atravesse as esferas opostas simultaneamente.",
"* |cff71d5ff|Hspell:65875|h[Pacto dos Gêmeos]|h|r: Um gêmeo cura o outro - interrompa o pacto.",
"* |cff71d5ff|Hspell:65916|h[Força dos Gêmeos]|h|r: O gêmeo fortalecido recebe dano reduzido - altere seu dano para o outro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34564"] = { "Anub'arak",
"* |cff71d5ff|Hspell:45419|h[Nerubian Burrowers]|h|r: Os Nerubian Burrowers emergem do chão - elimine-os rapidamente e interrompa os seus ataques.",
"* |cff71d5ff|Hspell:67574|h[Perseguição]|h|r: As hordas perseguem o jogador marcado - corra para os lados e use ataques em área para danificá-las enquanto se movem.",
"* |cff71d5ff|Hspell:66013|h[Penetração de Frio]|h|r: Na fase final, o dano de frio é aplicado a todos - cure para contrariar os efeitos.",
"* |cff71d5ff|Hspell:66012|h[Golpe Congelante]|h|r: Golpe Congelante marca um jogador - curandeiros, preparem-se.",
"* |cff71d5ff|Hspell:65919|h[Burrow]|h|r: Use a habilidade Burrow com as ondas de súditos - elimine o grupo, ele emerge ao lado da posição marcada."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34780"] = { "Lorde Jaraxxus",
"* |cff71d5ff|Hspell:66197|h[Fogo da Legião]|h|r: As chamas seguem o caminho percorrido - corra pelo caminho até a parede.",
"* |cff71d5ff|Hspell:66237|h[Incinerar Carne]|h|r: O alvo entra em uma fase de cura - curas em massa até que o selo seja quebrado.",
"* |cff71d5ff|Hspell:66269|h[Portal Nether]|h|r: Um portal se abre - elimine a mestra e os subordinados rapidamente.",
"* |cff71d5ff|Hspell:66258|h[Volcão Infernal]|h|r: Um vulcão entra em erupção - destrua o vulcão antes que as bolas de fogo inundem a sala.",
"* |cff71d5ff|Hspell:67009|h[Poder Infernal]|h|r: Ele concede a si mesmo - anule a habilidade do chefe.",
"* |cff71d5ff|Hspell:66532|h[Fel Fireball]|h|r: A Fel Fireball atinge o tanque - interrompa cada lançamento."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34796"] = { "As Bestas de Rasganorte",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus se acumula no tanque - queime primeiro os snobolds que estejam na parte de costas do tanque.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Fire bombs se espalham pelo grupo - saia dos alvos.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: A besta lança-se para frente na área de combate - evite o ataque e ataque enquanto estiver atordoada.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: O sopro de gelo varre a sala - mantenha-se fora do cone.",
"* |cff71d5ff|Hspell:66883|h[Poço de baba]|h|r: As piscinas de baba se estendem sob os vermes - evite que o toquem.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: O veneno paralisa os marcados - mantenha os curas prontas.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: A bile ardente se espalha ao contato - mantenha distância dos marcados."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34797"] = { "As Bestas de Rasganorte",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus se acumula no tanque - queime primeiro os snobolds que estejam na parte de costas do tanque.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Fire bombs se espalham pelo grupo - saia dos alvos.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: A besta lança-se para frente na área de combate - evite o ataque e ataque enquanto estiver atordoada.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: O sopro de gelo varre a sala - mantenha-se fora do cone.",
"* |cff71d5ff|Hspell:66883|h[Poço de baba]|h|r: As piscinas de baba se estendem sob os vermes - evite que o toquem.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: O veneno paralisa os marcados - mantenha os curas prontas.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: A bile ardente se espalha ao contato - mantenha distância dos marcados."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["34799"] = { "As Bestas de Rasganorte",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus se acumula no tanque - queime primeiro os snobolds que estejam na parte de costas do tanque.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Fire bombs se espalham pelo grupo - saia dos alvos.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: A besta lança-se para frente na área de combate - evite o ataque e ataque enquanto estiver atordoada.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: O sopro de gelo varre a sala - mantenha-se fora do cone.",
"* |cff71d5ff|Hspell:66883|h[Poço de baba]|h|r: As piscinas de baba se estendem sob os vermes - evite que o toquem.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: O veneno paralisa os marcados - mantenha os curas prontas.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: A bile ardente se espalha ao contato - mantenha distância dos marcados."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["35144"] = { "As Bestas de Rasganorte",
"* |cff71d5ff|Hspell:66331|h[Impetus]|h|r: Impetus se acumula no tanque - queime primeiro os snobolds que estejam na parte de costas do tanque.",
"* |cff71d5ff|Hspell:66317|h[Fire Bomb]|h|r: Fire bombs se espalham pelo grupo - saia dos alvos.",
"* |cff71d5ff|Hspell:52311|h[Charge]|h|r: A besta lança-se para frente na área de combate - evite o ataque e ataque enquanto estiver atordoada.",
"* |cff71d5ff|Hspell:66689|h[Arctic Breath]|h|r: O sopro de gelo varre a sala - mantenha-se fora do cone.",
"* |cff71d5ff|Hspell:66883|h[Poço de baba]|h|r: As piscinas de baba se estendem sob os vermes - evite que o toquem.",
"* |cff71d5ff|Hspell:66823|h[Paralytic Toxin]|h|r: O veneno paralisa os marcados - mantenha os curas prontas.",
"* |cff71d5ff|Hspell:66869|h[Burning Bile]|h|r: A bile ardente se espalha ao contato - mantenha distância dos marcados."
};

-- Trial of the Champion : Zona 650 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34657"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34701"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34702"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34703"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34705"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["34928"] = { "Confessora Argêntea Albamecha",
"* |cff71d5ff|Hspell:66620|h[Memória]|h|r: A memória se manifesta e ataca – destrua-a, evite os danos que causa.",
"* |cff71d5ff|Hspell:66515|h[Escudo Refletor]|h|r: O escudo reflete os feitiços – os conjuradores devem evitar o contato.",
"* |cff71d5ff|Hspell:66538|h[Fogo Sagrado]|h|r: O fogo sagrado queima os marcados; dispare o efeito.",
"* |cff71d5ff|Hspell:66537|h[Renovar]|h|r: Ela se renova – dispare o renovar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35119"] = { "Eadric, o Puro",
"* |cff71d5ff|Hspell:66935|h[Radiância]|h|r: A radiância deslumbra qualquer um que o enfrente - nunca olhe para o brilho.",
"* |cff71d5ff|Hspell:66905|h[Martelo]|h|r: Lança seu martelo - o captura e o retorna.",
"* |cff71d5ff|Hspell:66889|h[Vingança]|h|r: Sua vingança aumenta seu poder; queimá-lo entre os golpes."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35451"] = { "O Cavaleiro Negro",
"* |cff71d5ff|Hspell:67781|h[Desecração]|h|r: A Desecração se espalha pelo chão - saia dela.",
"* |cff71d5ff|Hspell:67751|h[Explosão]|h|r: O ghoul explode perto do grupo - fuja.",
"* |cff71d5ff|Hspell:67823|h[Marcado]|h|r: Marca um jogador para a peste - os curandeiros devem permanecer perto do marcado."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35569"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35570"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35571"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35572"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["35617"] = { "Grandes Campeones",
"* |cff71d5ff|Hspell:67528|h[Onda de cura]|h|r: O curandeiro lança ondas - mantenham as interrupções ativas.",
"* |cff71d5ff|Hspell:66043|h[Polimorfia]|h|r: O mago usa polimorfia - desative rapidamente.",
"* |cff71d5ff|Hspell:67534|h[Hex]|h|r: O xamã lança hexes - desfaça o hex.",
"* |cff71d5ff|Hspell:66045|h[Velocidade]|h|r: O buff de velocidade lhes concede poder - elimine o chefe.",
"* |cff71d5ff|Hspell:67594|h[Veneno]|h|r: Os poços de veneno se espalham - evite os pontos de ativação."
};

-- Pit of Saron : Zona 658 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36476"] = { "Ick",
"* |cff71d5ff|Hspell:69263|h[Pursuit]|h|r: O inimigo persegue e ataca com rajadas - corra para o lado.",
"* |cff71d5ff|Hspell:69024|h[Toxic Waste]|h|r: As poças de lixo tóxico estão no chão - evite-as.",
"* |cff71d5ff|Hspell:68989|h[Poison Nova]|h|r: A nova de veneno está espalhada - saia dela."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36494"] = { "Mestre Forjador Criomal",
"* |cff71d5ff|Hspell:70381|h[Congelamento Profundo]|h|r: O congelamento profundo prende quem o segura – mantenha os buffs prontos; as pedras de saronita que ele lança servem como cobertura contra o frio."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36658"] = { "Senhor do Flagelo Tyrannus",
"* |cff71d5ff|Hspell:69172|h[Marca del Señor]|h|r: A marca reflete cada golpe que recebe sobre o grupo, devolvendo-o ao grupo - a marca mantém os ataques.",
"* |cff71d5ff|Hspell:69275|h[Gripo de Gelo]|h|r: O agarre de Rimefang persegue um jogador - escape antes que a explosão atinja."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36661"] = { "Senhor do Flagelo Tyrannus",
"* |cff71d5ff|Hspell:69172|h[Marca del Señor]|h|r: A marca reflete cada golpe que recebe sobre o grupo, devolvendo-o ao grupo - a marca mantém os ataques.",
"* |cff71d5ff|Hspell:69275|h[Gripo de Gelo]|h|r: O agarre de Rimefang persegue um jogador - escape antes que a explosão atinja."
};

-- The Forge of Souls : Zona 632 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36497"] = { "King Maia",
"* |cff71d5ff|Hspell:68839|h[Alma Corrupta]|h|r: A alma corrompida retorna a ele - mate o orbe da alma antes que ele se alimente.",
"* |cff71d5ff|Hspell:68872|h[Tormenta dos Elementos]|h|r: Quando estiver à beira da morte, a tempestade destrói a sala: aproxime-se das bordas enquanto gira."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36502"] = { "Devoradora de Almas",
"* |cff71d5ff|Hspell:68820|h[Poço das Almas]|h|r: O poço enche o chão - evite pisar nele.",
"* |cff71d5ff|Hspell:69051|h[Espelho Refletor]|h|r: O reflexo prende o jogador nele; pare de atacar enquanto durar o efeito.",
"* |cff71d5ff|Hspell:68982|h[Explosão Fantasma]|h|r: A explosão fantasma destrói a sala - interrompa.",
"* |cff71d5ff|Hspell:68899|h[Almas Choronas]|h|r: As Almas Choronas preenchem a sala - corra pelo corredor mais seguro."
};

-- Icecrown Citadel : Zona 631 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36597"] = { "O Lich Rei",
"* |cff71d5ff|Hspell:72762|h[Defile]|h|r: O defile se espalha onde quer que alguém se coloque nele: nunca se coloque dentro e espalhe-se, pois pode destruir a plataforma.",
"* |cff71d5ff|Hspell:70337|h[Praga Necrótica]|h|r: A praga salta entre os alvos – aplique nos mobs e nunca a disperse.",
"* |cff71d5ff|Hspell:70372|h[Horror que se arrastra]|h|r: Os Horrores que se arrastram aparecem entre fases – elimine-os e mantenha a praga neles.",
"* |cff71d5ff|Hspell:69200|h[Espírito Furioso]|h|r: Os espíritos furiosos aparecem no inverno – elimine-os antes de que cheguem ao grupo.",
"* |cff71d5ff|Hspell:68981|h[Tempestade Invernal]|h|r: A tempestade invernal arrasta os jogadores para dentro – mantenha-se fora do círculo.",
"* |cff71d5ff|Hspell:71844|h[Valquíria]|h|r: As valquírias agarram os jogadores; destrua-as antes que possam levar os marcados.",
"* |cff71d5ff|Hspell:72262|h[Terremoto]|h|r: O terremoto destrói a plataforma; mova-se ao longo da zona segura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36612"] = { "Lorde Medulante",
"* |cff71d5ff|Hspell:69076|h[Tempestade de ossos]|h|r: Ataca rapidamente, dispersando fragmentos de osso - mantenha a distância e evite que o ataque pelas costas.",
"* |cff71d5ff|Hspell:69057|h[Espigão de osso]|h|r: Três jogadores são espetados por espinhos - quebre-os rapidamente.",
"* |cff71d5ff|Hspell:69146|h[Fogo gelado]|h|r: Linhas de fogo gelado percorrem o chão – evite tocá-las."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36626"] = { "Tripapútrida",
"* |cff71d5ff|Hspell:69279|h[Esponja de gás]|h|r: As esponjas de gás marcam os jogadores - toque no pulso uma vez para obter sua imunização.",
"* |cff71d5ff|Hspell:69166|h[Inalação da Praga]|h|r: Cada inalação aumenta seu dano - ao acumular três stacks, toda a raid recebe dano.",
"* |cff71d5ff|Hspell:69240|h[Gás venenoso]|h|r: O gás venenoso se espalha, afetando os personagens à distância. Mantenha os personagens à distância o máximo possível.",
"* |cff71d5ff|Hspell:69195|h[Praga pungente]|h|r: O ataque de praga ocorre com a terceira inalação - cooldowns defensivos ativados.",
"* |cff71d5ff|Hspell:72219|h[Inchaço gástrico]|h|r: O inchaço gástrico se acumula no seu tanque - troque de tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36627"] = { "Rostorroto",
"* |cff71d5ff|Hspell:69508|h[Pulverização de Slime]|h|r: Cone de slime - fique atrás dele.",
"* |cff71d5ff|Hspell:69674|h[Infecção Mutante]|h|r: O infectado o elimina correndo para a grande poça - a explosão cria uma nova poça, queime a poça longe do grupo.",
"* |cff71d5ff|Hspell:69774|h[Muco Pegajoso]|h|r: As poças de muco perseguem os jogadores - saia delas.",
"* |cff71d5ff|Hspell:69558|h[Muco Instável]|h|r: Os mucos fundidos criam uma grande poça - mantenha os pequenos separados dela."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36678"] = { "Professor Putricida",
"* |cff71d5ff|Hspell:70341|h[Poços de baba]|h|r: Os poços de baba crescem onde quer que caiam – pule e nunca lute sobre eles.",
"* |cff71d5ff|Hspell:70447|h[Oozes Voláteis]|h|r: O limo gruda em um jogador – exploda o limo para libertá-lo.",
"* |cff71d5ff|Hspell:70672|h[Inflamação Gaseosa]|h|r: O gás incha o jogador; exploda o gás.",
"* |cff71d5ff|Hspell:71255|h[Bomba de Gás Asfixiante]|h|r: São lançadas bombas de gás asfixiante – saiam imediatamente.",
"* |cff71d5ff|Hspell:70911|h[Praga Desatada]|h|r: A praga desatada salta entre jogadores – passe-a antes de que mate o portador.",
"* |cff71d5ff|Hspell:72840|h[Experimento Volátil]|h|r: Na fase 3, ambos os experimentos voam ao mesmo tempo – planeie o limo e as estações de gás."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36789"] = { "Valithria Andassonho",
"* |cff71d5ff|Hspell:72483|h[Portal para o Inferno]|h|r: Os portais abrem para o sonho - os curandeiros atravessam, obtêm o buff e regressam para curar intensamente Valithria.",
"* |cff71d5ff|Hspell:70588|h[Supressão]|h|r: As nuvens de supressão impedem a cura - destrua-as.",
"* |cff71d5ff|Hspell:69325|h[Lay Waste]|h|r: Lay Waste ativa a sala - corra para fora dos alvos.",
"* |cff71d5ff|Hspell:71179|h[Mana Vazio]|h|r: O Mana Vazio drena os conjuradores - mantenha-se afastado dos focos.",
"* |cff71d5ff|Hspell:70751|h[Corrosão]|h|r: Os zumbis com corrosão surgem em ondas - ataque-os com AoE."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36853"] = { "Sindragosa",
"* |cff71d5ff|Hspell:70126|h[Farol de Gelo]|h|r: Jogadores afetados levitam como túmulos de gelo - os túmulos se tornam cobertura, planeie seus pontos.",
"* |cff71d5ff|Hspell:69766|h[Instabilidade]|h|r: A instabilidade se acumula com os feitiços. Pare de lançar quando tiver cinco stacks e deixe que se dissipe.",
"* |cff71d5ff|Hspell:70128|h[Buffe Místico]|h|r: Buffes se acumulam através de sua respiração - troque os tanques antes de cinco stacks.",
"* |cff71d5ff|Hspell:69762|h[Magia Desatada]|h|r: O efeito de \"Magia Desatada\" impede que os conjuradores lancem feitiços - parem até que desapareça.",
"* |cff71d5ff|Hspell:43810|h[Fase de Ar]|h|r: Levita para uma fase de ar - disperse e cure o ataque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["36855"] = { "Lady Sibilamorte",
"* |cff71d5ff|Hspell:71289|h[Dominar a Mente]|h|r: Controle os jogadores - use controle de massa sobre os marcados até que desapareçam.",
"* |cff71d5ff|Hspell:61131|h[Inimigos]|h|r: Ondas de cultistas os acompanham - Aplique dano em área ao grupo e detém os reanimados.",
"* |cff71d5ff|Hspell:70674|h[Força Vampírica]|h|r: O buff do cultista os fortalece - dispela rapidamente.",
"* |cff71d5ff|Hspell:71001|h[Morte e Decaimento]|h|r: O decaimento queima o chão - saia de lá.",
"* |cff71d5ff|Hspell:71204|h[Toque de Insignificância]|h|r: O Toque reduz a armadura do tanque - mude de tanque.",
"* |cff71d5ff|Hspell:71236|h[Martírio Escuro]|h|r: Um cultista detona - afaste-se da área marcada.",
"* |cff71d5ff|Hspell:34018|h[Reanimação]|h|r: Cultistas caídos reanimam - queime-os novamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37215"] = { "Lorde Supremo Saurfang",
"* |cff71d5ff|Hspell:69638|h[Fúria de Batalha]|h|r: O grupo inimigo é buffado durante a luta: elimine rapidamente os inimigos que estiverem nas bordas.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: Um ataque de gelo atordoa o grupo - disperse.",
"* |cff71d5ff|Hspell:69652|h[Tempestade de Espadas]|h|r: A tempestade de espadas atinge a plataforma - afaste-se.",
"* |cff71d5ff|Hspell:23334|h[Guerreiros]|h|r: Os guerreiros avançam - elimine-os antes que cheguem aos canhões."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["37540"] = { "Lorde Supremo Saurfang",
"* |cff71d5ff|Hspell:69638|h[Fúria de Batalha]|h|r: O grupo inimigo é buffado durante a luta: elimine rapidamente os inimigos que estiverem nas bordas.",
"* |cff71d5ff|Hspell:69705|h[Below Zero]|h|r: Um ataque de gelo atordoa o grupo - disperse.",
"* |cff71d5ff|Hspell:69652|h[Tempestade de Espadas]|h|r: A tempestade de espadas atinge a plataforma - afaste-se.",
"* |cff71d5ff|Hspell:23334|h[Guerreiros]|h|r: Os guerreiros avançam - elimine-os antes que cheguem aos canhões."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37813"] = { "Carrasco Saurfang",
"* |cff71d5ff|Hspell:72293|h[Marca do Campeão Caído]|h|r: O jogador marcado inflige dano a toda a raid - a cura da raid cobre a cadeia.",
"* |cff71d5ff|Hspell:72378|h[Nova de Sangue]|h|r: A Nova de Sangue é disparada amplamente - dispersar.",
"* |cff71d5ff|Hspell:72385|h[Sangue fervente]|h|r: O sangue fervente causa dano ao grupo. Distribuam-se para evitar o dano.",
"* |cff71d5ff|Hspell:72410|h[Rune of Blood]|h|r: A runa drena o tanque - troquem de tanque.",
"* |cff71d5ff|Hspell:72737|h[Frenesí]|h|r: Quando atinge 30%, entra em frenesí - elimine-o rapidamente.",
"* |cff71d5ff|Hspell:72173|h[Bestas de Sangue]|h|r: As bestas de sangue surgem - ataque-as antes que atinjam o grupo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37955"] = { "Rainha de Sangue Lana'thel",
"* |cff71d5ff|Hspell:71340|h[Pacto de los Oscuros Caídos]|h|r: Os três malditos compartilham o dano - agrupar-se perto e destruir o pacto.",
"* |cff71d5ff|Hspell:70946|h[Mordida Vampírica]|h|r: O jogador mordido ganha essência; manter um curandeiro não mordido e ter um plano de troca.",
"* |cff71d5ff|Hspell:70877|h[Sangre Sagrada]|h|r: A essência gera um desejo - a vítima ataca outro jogador antes de explodir.",
"* |cff71d5ff|Hspell:71266|h[Sombras que acecham]|h|r: As sombras seguem o jogador marcado - correr na direção oposta às sombras.",
"* |cff71d5ff|Hspell:71772|h[Golpe de Sangue]|h|r: Os golpes de sangue explodem amplamente - dispersar-se.",
"* |cff71d5ff|Hspell:71510|h[Blood Mirror]|h|r: O espelho liga o dano - manter o par espelhado separado."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37970"] = { "Conselho dos Príncipes de Sangue",
"* |cff71d5ff|Hspell:70952|h[Mudar alvo]|h|r: O alvo muda para o príncipe protegido - nunca atacar o protegido.",
"* |cff71d5ff|Hspell:72040|h[Chamas Imbuídas]|h|r: As chamas imbuidas rastreiam um jogador - seguir o rastro.",
"* |cff71d5ff|Hspell:72037|h[Vortex de Choque]|h|r: O Vortex de Choque rebota através do grupo - estender ao máximo.",
"* |cff71d5ff|Hspell:72053|h[Bomba Cinética]|h|r: As bombas cinéticas flutuam e rebatem; explodir antes de tocar o chão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37972"] = { "Conselho dos Príncipes de Sangue",
"* |cff71d5ff|Hspell:70952|h[Mudar alvo]|h|r: O alvo muda para o príncipe protegido - nunca atacar o protegido.",
"* |cff71d5ff|Hspell:72040|h[Chamas Imbuídas]|h|r: As chamas imbuidas rastreiam um jogador - seguir o rastro.",
"* |cff71d5ff|Hspell:72037|h[Vortex de Choque]|h|r: O Vortex de Choque rebota através do grupo - estender ao máximo.",
"* |cff71d5ff|Hspell:72053|h[Bomba Cinética]|h|r: As bombas cinéticas flutuam e rebatem; explodir antes de tocar o chão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["37973"] = { "Conselho dos Príncipes de Sangue",
"* |cff71d5ff|Hspell:70952|h[Mudar alvo]|h|r: O alvo muda para o príncipe protegido - nunca atacar o protegido.",
"* |cff71d5ff|Hspell:72040|h[Chamas Imbuídas]|h|r: As chamas imbuidas rastreiam um jogador - seguir o rastro.",
"* |cff71d5ff|Hspell:72037|h[Vortex de Choque]|h|r: O Vortex de Choque rebota através do grupo - estender ao máximo.",
"* |cff71d5ff|Hspell:72053|h[Bomba Cinética]|h|r: As bombas cinéticas flutuam e rebatem; explodir antes de tocar o chão."
};

-- Halls of Reflection : Zona 668 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38112"] = { "Falric",
"* |cff71d5ff|Hspell:72422|h[Golpe Trepidante]|h|r: O golpe esguia o alvo - mantenha a cura pronta.",
"* |cff71d5ff|Hspell:72426|h[Desespero Imminente]|h|r: O desespero causa dano ao portador - elimine rapidamente; ondas de espíritos atormentados atacam entre os dois."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["38113"] = { "Marwyn",
"* |cff71d5ff|Hspell:72363|h[Flesh Corrupta]|h|r: A carne corrompida queima quem a usa - mantenha a cura pronta.",
"* |cff71d5ff|Hspell:72368|h[Sofrimento Compartido]|h|r: O Sofrimento Compartido une o grupo - mantenha os membros vinculados separados.",
"* |cff71d5ff|Hspell:72383|h[Toque Corrompido]|h|r: O toque drena quem o usa - limpe.",
"* |cff71d5ff|Hspell:72362|h[Poço da Corrupção]|h|r: A corrupção enche o chão - evite."
};

-- The Ruby Sanctum : Zona 724 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39746"] = { "General Zarithrian",
"* |cff71d5ff|Hspell:74367|h[Armadura de Ataque]|h|r: Aplica stacks de armadura de ataque no alvo — troca de alvo.",
"* |cff71d5ff|Hspell:74398|h[Dragões de obsidiana]|h|r: Os dragões de obsidiana entram na sala — elimine-os, mantenha os interruptores prontos.",
"* |cff71d5ff|Hspell:74384|h[Rugido aterrorizante]|h|r: Interrompa o Rugido Aterrorizante ou sofrerá seus efeitos."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39747"] = { "Saviana, Fúria Incandescente",
"* |cff71d5ff|Hspell:74453|h[Faro de Fuego]|h|r: Marque um jogador para o próximo ataque - aplique a marca longe do grupo.",
"* |cff71d5ff|Hspell:74403|h[Aliento de Fuego]|h|r: Respiração de fogo ampla - faça atacar vindo da frente.",
"* |cff71d5ff|Hspell:78722|h[Enrage]|h|r: Enrage-a, acalme-a."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["39751"] = { "Baltharus o Lutador",
"* |cff71d5ff|Hspell:75125|h[Tempestade de Lâminas]|h|r: Whirlwind corta os inimigos em combate - saia do alcance.",
"* |cff71d5ff|Hspell:74509|h[Onda Repulsiva]|h|r: Uma onda empurra todos para trás - mantenham-se longe das paredes.",
"* |cff71d5ff|Hspell:74505|h[Dividir a Marca]|h|r: A marca marca um jogador; o clone obtém uma cópia. Observe a divisão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["39863"] = { "Halion",
"* |cff71d5ff|Hspell:74562|h[Combustión Ardiente]|h|r: A Combustão se baseia em dano de fogo e deixa um rastro de fogo que deve ser levado à borda do reino.",
"* |cff71d5ff|Hspell:74792|h[Consumir Sombra]|h|r: Os mesmos rastros no lado da sombra - mantenha-os na borda do reino.",
"* |cff71d5ff|Hspell:74648|h[Golpe de Rayo]|h|r: Um raio cai no reino de fogo – afaste-se do alvo.",
"* |cff71d5ff|Hspell:74769|h[Twilight Cutter]|h|r: A lâmina giratória corta o reino crepuscular - mantenha o feixe longe de você.",
"* |cff71d5ff|Hspell:74525|h[Flame Breath]|h|r: Respiração de fogo no tanque do lado do fogo – faça-o enfrentar.",
"* |cff71d5ff|Hspell:74806|h[Dark Breath]|h|r: Use Dark Breath no tanque no lado da sombra – faça-o enfrentar o chefe."
};
P.pt = pt;
