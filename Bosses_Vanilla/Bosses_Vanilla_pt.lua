--[[
	Bosses_Vanilla_pt.lua
		Datos en PT del pack Vanilla.
		Fichero creado por el editor web (2026-10-14); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local pt = {};
local pack = pt;
local bos; -- reutilizada para as entradas compartidas (vários NPC ID, mesma tabela)


-- The Stockade : Zona 34 (classic) --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1663"] = { "Professor Dextren",
"* Habilidade de Medo: O Dextren pode causar medo ao grupo, por isso é recomendado limpar a área e os inimigos próximos antes de iniciar o combate.",
"* Fugir: Quando sua vida diminui, ele tentará fugir, por isso é aconselhável controlá-lo para evitar que atraia mais inimigos."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1666"] = { "Kam Deepfury",
"* Combate cuerpo a cuerpo sencillo: nada para interrumpir o desmantelar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1696"] = { "Targorr o Temido",
"* Combate cuerpo a cuerpo simple: nada para interrumpir o desmantelar, tanque preso y quemar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1716"] = { "Bazil Thredd",
"* A luta final ocorre no pátio e seus prisioneiros se juntam assim que começa: mate os mobs primeiro, depois o chefe."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1717"] = { "Pernil",
"* Combate cuerpo a cuerpo básico que causa mucho daño: nada para interrumpir o desmantelar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1720"] = { "Bruegal Ironknuckle",
"* Combate cuerpo a cuerpo sencillo: nada para interrumpir o desmantelar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46254"] = { "Hogger",
"* O lendário vilão de Elwynn, agora chefe da revolta: interrompa o |cff71d5ff|Hspell:86620|h[Maddening Call]|h|r.",
"* O resto é corpo a corpo: DBM não tem outros mecanismos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46264"] = { "Lorde Superakess",
"* Uma Fireball direta no tanque (dano de fogo): ritmo normal de cura e dano.",
"* Sua Rain of Fire deixa um ponto fervente por 9 segundos: todos dentro de 5 metros são afetados - deixe o ponto no momento em que ele cair.",
"* Seu Overheat queima um jogador aleatório: dano de fogo instantâneo mais um efeito de queimadura que causa dano a cada 3 segundos por 9 segundos (mais forte quanto mais poder mágico ele tiver): é magia, limpe-o a tempo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["46383"] = { "Rodolfo Moloque",
"* O chefe final do remaster, na frente dos prisioneiros rebeldes no final do túnel principal.",
"* Ataques Frenéticos: uma frenesi de ataques rápidos (um ataque a cada 0,3 segundos) enquanto sua chance de acerto diminui em 35% durante todo o tempo: o tanque resiste à tempestade.",
"* Seu Sweep é um ataque frontal que atinge o tanque e o aliado mais próximo: ninguém fica na frente dele ou grudado no tanque.",
"* Desaparecer: quando ele atinge 70-60% e 40-30% de vida, ele desaparece e reaparece logo atrás de um jogador aleatório: o tanque recupera a ameaça rapidamente."
};

-- Gnomeregan : Zona 90 (classic and modern journal) --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["1853"] = { "Umbromestre Gandling",
"* Seu Portal Sombrio (|cff71d5ff|Hspell:17950|h[Shadow Portal]|h|r) lança um jogador para uma das salas trancadas cheias de estudantes (o lançamento anuncia o alvo, não o alvo).",
"* O único isolado luta com os estudantes da sala APENAS até a porta abrir; os outros continuam a lançar seus projéteis sombrios e a atacar sem parar.",
"* Ele repete até que ele caia: um ciclo de DPS enquanto as salas continuam a lançar pessoas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["2748"] = { "Archaedas",
"* O gigante adormecido do cofre: uma longa luta de limpar os summons enquanto o enfraquece.",
"* Despertar os Guardiões da Terra (|cff71d5ff|Hspell:10252|h[Despertar os Guardiões da Terra]|h|r) e Despertar o Guarda do Cofre (|cff71d5ff|Hspell:10258|h[Despertar o Guarda do Cofre]|h|r): os summons chegam em ondas — ataque-os, o chefe permanece no tanque.",
"* Tremer no chão (|cff71d5ff|Hspell:6524|h[Tremer no chão]|h|r) atinge a área ao redor dele: os jogadores de combate permanecem com cura, nada para desviar.",
"* Regra clássica: o tanque o mantém no pedestal, os danos atingem os guardiões e Archaedas cai por último."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3974"] = { "Mestre dos Cães Loksey",
"* Ele ataca pelas laterais com seus cães e lança Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r) no grupo: eles atacam mais rápido, então elimine os cães o mais rápido possível enquanto o tanque o mantém sob controle.",
"* Não há muito mais: se os cães se aglomerarem, mate-os primeiro e ele cairá logo em seguida."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3975"] = { "Herod",
"* Seu Whirlwind (|cff71d5ff|Hspell:8989|h[Whirlwind]|h|r) gira a cada ~18 s: os jogadores devem se mover para fora do raio e retornar quando a rotação terminar.",
"* Quando estiver com pouca vida, ele usa Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): causa mais dano, ataca o tanque e cura.",
"* Quando Herod cair, uma horda de aprendizes vermelhos invade pela porta: não se desmerecer até serem varridos."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3976"] = { "Comandante Vermelho Mograine",
"* Uma luta simples, começando com ele: Whitemane só sai do seu balcão depois que ele cai.",
"* Após sua primeira morte, o Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) de Whitemane nele é interrompido: sem o corte, ele retorna com a saúde total.",
"* Com o heal controlado e a ressurreição superada, a luta está derrubando ambos, sem pressa."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3977"] = { "Alta-inquisidora Cristalba",
"* Ela desce quando Mograine cai e lança Deep Sleep (|cff71d5ff|Hspell:9256|h[Deep Sleep]|h|r) em um jogador por 10 s: o véu que cobre o retorno de Mograine.",
"* Em seguida, lança Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) para restaurar o revivido: interrompa-a sempre que possível.",
"* Depois de revivê-lo, ela cai primeiro; o Mograine revivido é o último troféu."
};


bos = {
	"O Cavaleiro Sem Cabeça",
	"* Chefe festivo do Hallow's End clássico: invocam-no no Cemitério do mosteiro conversando com o santuário de abóboras que espera na entrada.",
	"* |cff71d5ff|Hspell:42380|h[Conflagração]|h|r incendeia um jogador ao acaso por 4 s e o faz fugir apavorado: afastem-se dele enquanto arde; o curandeiro o tira do sufoco.",
	"* |cff71d5ff|Hspell:42514|h[Esmagar Almas]|h|r castiga outro jogador por 15 s: curas no marcado.",
	"* O vaivém da luta: corpo a 1% -> fica imune e a CABEÇA voa enquanto o corpo se recupera -> todo o foco na Cabeça antes de ela voltar; ela sai três vezes, e na terceira não regressa: derrube-a para encerrar.",
	"* Na última volta do corpo chegam as Abóboras Pulsantes (lacaios sem id): o tanque as segura e o grupo as limpa com AoE."
};
pack["23682"] = bos;
pack["23775"] = bos;
-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3983"] = { "Interrogador Vishas",
"* Uma luta curta e simples: sua única habilidade marcada é Immolate (|cff71d5ff|Hspell:9034|h[Immolate]|h|r) em um jogador, causando dano mágico persistente; desfaça-a ou cure essa marca cuidadosamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4542"] = { "Inquisidor Supremo Fairbanks",
"* Um inquisidor escondido entre os túmulos do cemitério: a maioria dos grupos o deixa para mais tarde; se você o puxar, será uma luta simples.",
"* Sua Maldição de Sangue (|cff71d5ff|Hspell:8282|h[Curse of Blood]|h|r) é uma maldição: remova-a com remoção de maldições."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4543"] = { "Mago de Sangue Thalnos",
"* Flame Spike (|cff71d5ff|Hspell:8814|h[Flame Spike]|h|r) a distância e Fire Nova (|cff71d5ff|Hspell:12470|h[Fire Nova]|h|r) ao seu redor: o ataque melee interrompe o contato quando ele dispara a nova.",
"* Nenhum outro mecanismo: coloque-o em pé, derrube-o e o cemitério estará pronto."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4854"] = { "Grimlok",
"* Shaman trogg chefe das cavernas inferiores: Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) interrompe sempre e Lightning Bolt (|cff71d5ff|Hspell:12167|h[Lightning Bolt]|h|r) como um corte extra.",
"* Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r): quem o carrega, ele ou um add, cai primeiro.",
"* Crystalline Slumber (|cff71d5ff|Hspell:3636|h[Crystalline Slumber]|h|r) adormece um jogador (magia): dispelar ou dano o desperta.",
"* Reflection (|cff71d5ff|Hspell:9906|h[Reflection]|h|r): não lança enquanto dura, mesma regra de retorno de spell."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5709"] = { "Sombra de Eranikus",
"* A sombra do dragão verde que o ritual do altar desperta no abismo: o ritual final do templo clássico.",
"* Seu Sono Profundo (|cff71d5ff|Hspell:12890|h[Deep Slumber]|h|r) adormece quem ele atinge, a Respiração Ácida (|cff71d5ff|Hspell:12533|h[Acid Breath]|h|r) pune o tanque e o Passo de Guerra (|cff71d5ff|Hspell:24375|h[War Stomp]|h|r) atinge em combate corpo a corpo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5710"] = { "Jammal'an o Profeta",
"* O profeta do salão, com seu guarda-costas Ogom (sem entrada própria) ao seu lado: luta em grupo no campo aberto.",
"* Jammal'an planta seu Totem de Earthgrab (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) — que enraíza o grupo — e marca um jogador com Hex of Jammal'an (|cff71d5ff|Hspell:12479|h[Hex of Jammal'an]|h|r), que espera coberto; ele também lança Healing Wave (12492) e Flamestrike (12468).",
"* Ogom pune com Shadow Bolts (|cff71d5ff|Hspell:12471|h[Shadow Bolt]|h|r) SEMPRE interrompido e aplica Shadow Word: Pain (|cff71d5ff|Hspell:11639|h[Shadow Word: Pain]|h|r) (magia) e Curse of Weakness (|cff71d5ff|Hspell:12493|h[Curse of Weakness]|h|r) (maldição)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5712"] = { "Zolo",
"* Mini-chefe troll de Atal'ai, poderoso, do guardião: seu Chain Lightning salta entre jogadores agrupados — espalhem-se após cada lançamento.",
"* Ele planta um totem ao lado dele que continua a lançar esqueletos: destrua-o assim que aparecer.",
"* Seu debuff de área remove 10 de cada atributo e se acumula se a luta se prolongar — mate-o rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5719"] = { "Morphaz",
"* Dragão verde da fossa inundada: o kit é parente do quarteto de guardiões do templo.",
"* Combate direto: seu Respiração Ácida (|cff71d5ff|Hspell:12884|h[Respiração Ácida]|h|r) pune o alvo frontal e o Bater de Asa (|cff71d5ff|Hspell:12882|h[Bater de Asa]|h|r) o empurra — o tanque fica posicionado e o grupo atrás dele."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5720"] = { "Tecel",
"* Dragão verde do andar superior, ao lado de Dreamscythe: kit de guardião duplo.",
"* Combate simples: Respiração ácida (|cff71d5ff|Hspell:12884|h[Respiração ácida]|h|r) pune na frente e Asa batente (|cff71d5ff|Hspell:12882|h[Asa batente]|h|r) empurra — o tanque fica de guarda, o grupo atrás dele."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5721"] = { "A Garra dos Sonhos",
"* Dragão verde do andar superior, ao lado de Weaver: kit de guarda dupla.",
"* Combate simples: seu Respiração Ácida (|cff71d5ff|Hspell:12884|h[Respiração Ácida]|h|r) pune o cone frontal e deixa uma ferida de natureza, e o Bater de Asas (|cff71d5ff|Hspell:12882|h[Bater de Asas]|h|r) empurra para trás — o tanque mantém a posição, o grupo atrás dele."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5722"] = { "Hazzas",
"* Dragão verde do poço inundado, junto com Morphaz: kit de guarda-costas gêmeo.",
"* Combate direto: Respiração ácida (|cff71d5ff|Hspell:12884|h[Respiração ácida]|h|r) pune a frente e Asa Batente (|cff71d5ff|Hspell:12882|h[Asa Batente]|h|r) empurra — o tanque fica de guarda, o grupo atrás dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6229"] = { "Espanca-gente 9-60",
"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): um golpe que lança os combatentes para o ar: apenas o tanque permanece dentro, todos os outros estão fora do alcance.",
"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) no tanque: ritmo normal de tanque e cura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6235"] = { "Eletrocutor 6000",
"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) e Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r) são interrompíveis: corte-os na raiz.",
"* O Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r) ataca o tanque: use cura em watch."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6487"] = { "Arcanista Doan",
"* Ele lança Polymorph (|cff71d5ff|Hspell:13323|h[Polymorph]|h|r) em um jogador e repete Arcane Explosion (|cff71d5ff|Hspell:9433|h[Arcane Explosion]|h|r) ao seu redor: ninguém lança nele.",
"* Seu efeito de área Silence (|cff71d5ff|Hspell:8988|h[Silence]|h|r) interrompe os lançamentos próximos: mantenha distância do mago para continuar lançando.",
"* Detonate (|cff71d5ff|Hspell:9435|h[Detonate]|h|r) é o ataque principal: quando ele carrega, saia do raio ou interrompa a linha de visão atrás das estantes da sala antes que exploda."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6906"] = { "Os Anões Perdidos",
"* Trio de anões (Baelog, Eric «o Rápido» e Olaf) no salão dos artesãos: os três de uma vez, luta simples.",
"* Três ao mesmo tempo, sem mecânicas marcadas com DBM: o tanque os reúne e o AoE + cleave os derruba."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6907"] = { "Os Anões Perdidos",
"* Trio de anões (Baelog, Eric «o Rápido» e Olaf) no salão dos artesãos: os três de uma vez, luta simples.",
"* Três ao mesmo tempo, sem mecânicas marcadas com DBM: o tanque os reúne e o AoE + cleave os derruba."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6908"] = { "Os Anões Perdidos",
"* Trio de anões (Baelog, Eric «o Rápido» e Olaf) no salão dos artesãos: os três de uma vez, luta simples.",
"* Três ao mesmo tempo, sem mecânicas marcadas com DBM: o tanque os reúne e o AoE + cleave os derruba."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6910"] = { "Revelosh",
"* Shaman do Trogg no salão: seu Chain Lightning (|cff71d5ff|Hspell:16006|h[Chain Lightning]|h|r) é interrompido sempre.",
"* Se um Lightning Bolt (|cff71d5ff|Hspell:15801|h[Lightning Bolt]|h|r) passar, interrompa-o também se o grupo puder."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7023"] = { "Guardião de Obsidiana",
"* Golem de sentinela de obsidiana: seu Reflexo (|cff71d5ff|Hspell:9941|h[Reflection]|h|r) lança feitiços de volta para o conjurador — os conjuradores mantêm os feitiços enquanto ele corre.",
"* Obsidiana fragmentada (|cff71d5ff|Hspell:10072|h[Splintered Obsidian]|h|r): explodiu assim que spawn."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7079"] = { "Precipitação Radioativa Viscosa",
"* Disparo de Veneno (|cff71d5ff|Hspell:21687|h[Disparo de Veneno]|h|r): envenenamento periódico em qualquer um próximo; o efeito de cura remove e continua."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7206"] = { "Guardião de Pedra Ancestral",
"* Guardião de pedra das salas centrais: luta estática com dano físico pesado.",
"* Tempestades de areia (|cff71d5ff|Hspell:10132|h[Tempestades de areia]|h|r) nunca param: dano em área, projéteis nunca se agrupam e os curandeiros devem dividi-lo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7228"] = { "Ironaya",
"* Guardião desperto da sala de mapas: luta estática, tanke em posição fixa.",
"* Seu Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) é frontal: os jogadores de melee nunca devem ficar diretamente à frente dela.",
"* War Stomp (|cff71d5ff|Hspell:11876|h[War Stomp]|h|r) ao redor dela: stun de área, os jogadores de melee devem aproveitá-la e a cura deve continuar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7267"] = { "Chefe Ukorz Sandscalp",
"* O guerreiro no topo da pirâmide, com a mão direita Ruuzlu (sem entrada própria): combate frontal, absorvendo dano físico intenso.",
"* Ruuzlu cai PRIMEIRO: quando o chefe morre, ele entra em fúria (+30% de dano e +40% de velocidade de ataque) e pune o que restou na sala.",
"* Quando sua vida diminui, ele usa sua Habilidade de Fúria (|cff71d5ff|Hspell:8269|h[Enrage]|h|r): o tanque se concentra e a cura completa a etapa final."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7271"] = { "Médico Bruxo Zum'rah",
"* Curandeiro do pátio com seus seguidores: cada cura é interrompida — a Onda de Cura (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) e, acima de tudo, a Tempestade de Dardo Sombrio (|cff71d5ff|Hspell:15245|h[Shadow Bolt Volley]|h|r), que pune o grupo inteiro a 30 jardas.",
"* Sua Barreira de Zum'rah (|cff71d5ff|Hspell:11086|h[Ward of Zum'rah]|h|r) planta um totem aos seus pés que levanta um esqueleto a cada 5 segundos: destrua-o assim que aparecer.",
"* Despertar Zumbi: ele levanta Zumbis de Zul'Farrak das tumbas próximas da sala — esqueletos e zumbis caem assim que surgem."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7272"] = { "Theka o Martir",
"* Combate contra un objetivo: sua Praga Febre (|cff71d5ff|Hspell:8600|h[Praga Febre]|h|r) é uma doença curável — desfaça assim que atingir.",
"* No meio do combate, ele se transforma (|cff71d5ff|Hspell:11089|h[Transformação]|h|r): o tanque o segura e ele continua caindo da mesma forma."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7273"] = { "Gahz'rilla",
"* A besta gigante da praça: o tanque a mantém presa e os dano à distância não se agrupam atrás dela.",
"* Seu Slam (|cff71d5ff|Hspell:11902|h[Slam]|h|r) atinge o chão: dano em área que os dano corpo a corpo aproveitam com cura.",
"* Congelar (|cff71d5ff|Hspell:11836|h[Freeze Solid]|h|r) congela quem tocar: a cura cobre enquanto dura."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7275"] = { "Nekrum & Sezz'ziz",
"* Evento do par da pirâmide (os prisioneiros libertados se voltam contra você): envie-os quando aparecerem, após a onda de minões.",
"* Cura de Sezz'ziz — Renovar (|cff71d5ff|Hspell:8362|h[Renovar]|h|r) e Cura (|cff71d5ff|Hspell:12039|h[Cura]|h|r) — interrompida sempre ou o par prolonga a luta.",
"* Escudo Divino (|cff71d5ff|Hspell:13704|h[Escudo Divino]|h|r) bloqueia o dano diretamente: enquanto dura, o dano não desperdiça o esforço.",
"* Febre (|cff71d5ff|Hspell:8600|h[Febre]|h|r) também aparece aqui: doença curável, dispel disponível."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7291"] = { "Galgann Firehammer",
"* Shamã de fogo dos salões dos artesãos: Espiral de Fogo (|cff71d5ff|Hspell:6725|h[Flame Spike]|h|r) e Golpe de Fogo (|cff71d5ff|Hspell:3356|h[Flame Lash]|h|r), ambos interrompem a cada vez.",
"* Explosão de Fogo (|cff71d5ff|Hspell:11969|h[Fire Nova]|h|r) explode ao redor: os jogadores de combate saem do raio e retornam."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7361"] = { "Grúdio",
"* Combate plano marcado por DBM: tanque, dano y curas, prestando atención al segundo que aparece a su lado (su Chomper)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7795"] = { "Mago Hidromante Velratha",
"* Mago de nível superior: luta simples com um único detalhe — cada Onda de Cura (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) é interrompida."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7796"] = { "Nekrum & Sezz'ziz",
"* Evento do par da pirâmide (os prisioneiros libertados se voltam contra você): envie-os quando aparecerem, após a onda de minões.",
"* Cura de Sezz'ziz — Renovar (|cff71d5ff|Hspell:8362|h[Renovar]|h|r) e Cura (|cff71d5ff|Hspell:12039|h[Cura]|h|r) — interrompida sempre ou o par prolonga a luta.",
"* Escudo Divino (|cff71d5ff|Hspell:13704|h[Escudo Divino]|h|r) bloqueia o dano diretamente: enquanto dura, o dano não desperdiça o esforço.",
"* Febre (|cff71d5ff|Hspell:8600|h[Febre]|h|r) também aparece aqui: doença curável, dispel disponível."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7800"] = { "Mecangenheiro Termaplugue",
"* Ele lança uma bomba viva em um jogador aleatório (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): o marcado corre para longe do grupo até explodir.",
"* O Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) envia o tanque para o alto: preste atenção onde ele cai.",
"* A partir de Cata, ele lança um Steam Blast interrompível e ataca o tanque: corte o ataque no tempo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8127"] = { "Antu'sul",
"* Primeiro chefe, no poço de entrada: curandeiro troll que se apoia em totems e servos.",
"* Seus Pulso de Cura são interrompidos: o auto-lançado (|cff71d5ff|Hspell:11895|h[Pulso de Cura]|h|r) e o enviado aos servos (|cff71d5ff|Hspell:15982|h[Pulso de Cura]|h|r).",
"* Seus totems aparecem assim que brotam: o totem de Earthgrab (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) enraíza o grupo e o Healing Ward (|cff71d5ff|Hspell:4971|h[Healing Ward]|h|r) alimenta o chefe e sua equipe.",
"* Os servos que ele levanta (|cff71d5ff|Hspell:11894|h[Servos]|h|r) caem primeiro: causem dano neles enquanto o tanque mantém o chefe."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8443"] = { "Avatar de Hakkar",
"* A sombra do deus serpente, o ritual do templo desperta: luta curta e venenosa.",
"* Sua Maldição de Línguas (|cff71d5ff|Hspell:12889|h[Maldição de Línguas]|h|r) (maldição) prolonga os lançamentos do grupo e sua Causa de Loucura (|cff71d5ff|Hspell:12888|h[Causa de Loucura]|h|r) atinge um jogador — o DBM mais alto, lide com ele rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10432"] = { "Vectus",
"* O outro do salão de necromancia: conjurador principal — seus servos e fragmentos de alma são eliminados instantaneamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10433"] = { "Marduk Blackpool",
"* Na sala de necromancia, ao lado de Vectus: ataque lentamente para não o atingir e seu esqueleto chama rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10435"] = { "Magistrado Barthilas",
"* Seu Crowd Pummel (|cff71d5ff|Hspell:10887|h[Crowd Pummel]|h|r) ataca os inimigos próximos: o grupo se espalha.",
"* Sua Furious Anger (|cff71d5ff|Hspell:16791|h[Furious Anger]|h|r) se acumula MUITO RÁPIDO no clássico: DPS não devem hesitar.",
"* Seu Mighty Blow (|cff71d5ff|Hspell:14099|h[Mighty Blow]|h|r) pune o tanque com cura aplicada.",
"* Ele corre para o fundo do salão assim que é engajado: os inimigos circundantes são eliminados ANTES."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10436"] = { "Baronesa Anastari",
"* POSSESSES um jogador (|cff71d5ff|Hspell:17244|h[Possess]|h|r): o jogador possuído luta contra o grupo — traga-os para que tenham a vida REDUZIDA à METADE para libertá-los, sem matá-los.",
"* Seu Silêncio (|cff71d5ff|Hspell:18327|h[Silence]|h|r) é de área: espalhe-o para que não afete a todos.",
"* Sua Maldição de Banshee (|cff71d5ff|Hspell:16867|h[Banshee Curse]|h|r) é uma maldição que REDUZ o poder de cura no alvo marcado: remova-a AGORA."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10437"] = { "Nerub'enkan",
"* A aranha gigante invoca escarabós mortos-vivos (|cff71d5ff|Hspell:17235|h[Raise Undead Scarab]|h|r) continuamente: os ataques de área os eliminam.",
"* Seu Pierce Armor (|cff71d5ff|Hspell:6016|h[Pierce Armor]|h|r) deixa o tanque SEM armadura: defensivas ou um segundo tanque.",
"* Suas teias de Envolvimento (|cff71d5ff|Hspell:4962|h[Encasing Webs]|h|r) prendem um jogador por um tempo: cure e continue lutando."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10438"] = { "Maleki o Palido",
"* Sua Tumba de Gelo (|cff71d5ff|Hspell:16869|h[Tumba de Gelo]|h|r) congela um jogador por segundos: cure-o e a luta nunca termina.",
"* Sua Drenagem de Vida (|cff71d5ff|Hspell:17620|h[Drenagem de Vida]|h|r) drena um jogador — cura atenta.",
"* Seus projéteis de gelo desaceleram o lançador e drenam sua mana."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10439"] = { "Ramstein o Gorger",
"* Aquele antes da sala do Barão: ATAQUES brutais no tanque com cura contínua; seu Knockout (|cff71d5ff|Hspell:17307|h[Knockout]|h|r) IMPEDE o grupo e seu Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) pune os jogadores de melee.",
"* Quando ele cai, a onda de guardas não-mortos inunda a praça: reúna-se e elimine-os antes do Barão."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10440"] = { "Barão Rivendare",
"* O último barão: sua habilidade Raise Dead (|cff71d5ff|Hspell:17473|h[Raise Dead]|h|r) invoca esqueletos que MARCHAM em direção a ele e o curam ao contato, e ~12 segundos depois, ele termina com Death Pact (|cff71d5ff|Hspell:17471|h[Death Pact]|h|r) — Elimine-os de longo alcance ANTES.",
"* Sua Shadow Bomb (|cff71d5ff|Hspell:17434|h[Shadow Bomb]|h|r) atinge um jogador: o grupo se espalha.",
"* Sua aura unholy ataca qualquer um próximo e causa Mortal Wounds no tanque: cura constante para o grupo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10502"] = { "Lady Illucia Barov",
"* Controla um jogador: atordoamento, medo ou polimorfismo SEM matar o controlado.",
"* Se projéteis de sombra dela SEMPRE são interrompidos; seu silêncio de área empurra os conjuradores e curandeiros atrás do tanque."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10503"] = { "Janice Barov",
"* Ela se duplica em ilusões idênticas: o grupo caça o corpo REAL (ou esmaga as cópias com AoE) antes que o dano combinado derrote ao curador."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10504"] = { "Senhor Alexei Barov",
"* Ele chega com dois guardas: elimine-os primeiro ou o alvo se divide em dois.",
"* Sua Véu da Sombra (|cff71d5ff|Hspell:17820|h[Veil of shadow]|h|r) é uma MALDIÇÃO que reduz a cura recebida em 75%: purgue-a assim que vir (o DBM anuncia o alvo)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10505"] = { "Instrutora Calafrio",
"* Ela dá aulas cercada por alunos mortos-vivos: AoE (e Shackle Undead) limpa as ondas assim que elas chegam.",
"* Seus curas, SEMPRE interrompidas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10506"] = { "Kirtonos o Herald",
"* Ele é invocado no terraço, colocando o Sangue dos Inocentes (dos mobs da entrada) em seu pedestal.",
"* Na forma de gargoyle, ele lança uma maldição que neutraliza o dano causado: maldição, removida ao contato.",
"* Seu arremesso o joga para fora do terraço: o tanque o posiciona de VOLTA para o grupo e longe da borda."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10507"] = { "Corvo",
"* O gigante ghoul do cemitério: ATAQUES BRUTALES no tanque — a cura fica grudada nele durante toda a luta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10508"] = { "Ras Frostwhisper",
"* Frost lich: sua Nova congela os personagens de combate corpo a corpo — absorva o golpe, recue e ataque entre os lançamentos.",
"* Sua Armadura de Gelo diminui a velocidade dos atacantes, e seu lançamento de gelo arremessa o tanque para longe e elimina a ameaça: o tanque recua, ninguém o alcança."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10516"] = { "O Imperdoável",
"^ O fantasma da porteira: combate em área; sua Nova de Gelo (|cff71d5ff|Hspell:14907|h[Frost Nova]|h|r) congela os combatentes em melee — saia e volte para ele."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10558"] = { "Cantalar Forresten",
"* Sua Canção de Encantamento (|cff71d5ff|Hspell:16798|h[Canção de Encantamento]|h|r) causa sono em todo o grupo: SEMPRE é interrompido.",
"* Seu Grito Desmoralizante (|cff71d5ff|Hspell:16244|h[Grito Desmoralizante]|h|r) enfraquece os membros do grupo; os outros, dano direto."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10808"] = { "Tico, o Cruel",
"* A abominação gigante: seu Garra Voraz (|cff71d5ff|Hspell:17470|h[Ravenous Claw]|h|r) ataca à frente e o CURA — apenas o tanque avança; em 50% ele IRRITA (|cff71d5ff|Hspell:8599|h[Enrage]|h|r) — supere o furor."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10811"] = { "Arqueólogo Galford",
"* O instrutor de fogo: sua Nova de Fogo (|cff71d5ff|Hspell:17366|h[Fire Nova]|h|r) ataca TUDO ao seu redor — os jogadores de combate saem para atacar.",
"* Se Ventos Ardentes (|cff71d5ff|Hspell:17293|h[Burning Winds]|h|r) atingem um jogador: o grupo se espalha.",
"* Seu Pyroblast (|cff71d5ff|Hspell:17274|h[Pyroblast]|h|r) SEMPRE é interrompido."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10812"] = { "Balnazzar",
"* A luta começa com o Grande Cavaleiro Dathrohan com seu Martelo do Cavaleiro (|cff71d5ff|Hspell:17286|h[Martelo do Cavaleiro]|h|r); no meio da luta, ele se TRANSFORMA no demônio Balnazzar.",
"* Balnazzar: seu Sono (|cff71d5ff|Hspell:12098|h[Sono]|h|r) é uma magia — neutralize-o; seu Explosão Mental (|cff71d5ff|Hspell:17287|h[Explosão Mental]|h|r) atinge um conjurador e seu Grito Psíquico (|cff71d5ff|Hspell:13704|h[Grito Psíquico]|h|r) aterroriza o grupo — espalhe-se para que o pânico não se espalhe."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10813"] = { "Balnazzar",
"* A luta começa com o Grande Cavaleiro Dathrohan com seu Martelo do Cavaleiro (|cff71d5ff|Hspell:17286|h[Martelo do Cavaleiro]|h|r); no meio da luta, ele se TRANSFORMA no demônio Balnazzar.",
"* Balnazzar: seu Sono (|cff71d5ff|Hspell:12098|h[Sono]|h|r) é uma magia — neutralize-o; seu Explosão Mental (|cff71d5ff|Hspell:17287|h[Explosão Mental]|h|r) atinge um conjurador e seu Grito Psíquico (|cff71d5ff|Hspell:13704|h[Grito Psíquico]|h|r) aterroriza o grupo — espalhe-se para que o pânico não se espalhe."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10901"] = { "Guarda-lore Polkelt",
"* Ele começa com os minions ao seu lado: elimine-os primeiro, depois ele.",
"* Ele planta poças de ácido/veneno no chão: não se coloque nelas, e desfaça rapidamente seus venenos."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10997"] = { "Mestre de Canhões Willey",
"* Do do parapeto: artilharia em áreas e Riflemen Ressuscitados (|cff71d5ff|Hspell:17279|h[Summon Risen Rifleman]|h|r) em ondas: eliminados à vista.",
"* Seu Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) joga o tanque para longe: ele retorna e ninguém o alcança."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11032"] = { "Malor o Zelo",
"* Seu Ground Smash (|cff71d5ff|Hspell:12734|h[Ground Smash]|h|r) atinge uma área e IMPEDE por 2 s — os conjuradores mantêm distância e cura focada no tanque; seu Head Crack (|cff71d5ff|Hspell:16172|h[Head Crack]|h|r) pune o tanque.",
"* Sua Holy Light (|cff71d5ff|Hspell:15493|h[Holy Light]|h|r) SEMPRE é interrompido: ele cura a si mesmo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11143"] = { "Chefe do Correio Malown",
"* Opcional na praça do mercado (observa a correspondência): seu Golpe de Costas (|cff71d5ff|Hspell:6253|h[Backhand]|h|r) causa atordoamento e sua Maldição de Fraqueza (|cff71d5ff|Hspell:12741|h[Curse of Weakness]|h|r) é uma maldição para remover."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11261"] = { "Doutor Theolen Krastinov",
"* O Açoubeiro: combate contínuo; enfurecido, entra em FRENESIA com dano e velocidade de ataque altíssimos — tanque em defesas, priorizar a cura enquanto durar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11380"] = { "Jin'do o Hexxer",
"* Sua Ilusão (|cff71d5ff|Hspell:24306|h[Delusion of Jin'do]|h|r) mente para o marcado — ele vê fantasmas que não estão: purgar (dissipar maldição).",
"* Seu Lavagem Cerebral (|cff71d5ff|Hspell:24261|h[Brain Wash]|h|r) escraviza um jogador: maldição, remover AGORA.",
"* Sua Maldição (|cff71d5ff|Hspell:17172|h[Hex]|h|r) prende um jogador 5 s: magia, dissipar.",
"* Seus TOTEMS são destruídos imediatamente: o Santuário de Cura (|cff71d5ff|Hspell:24309|h[Healing Ward]|h|r) o mantém e o Totem de Lavagem Cerebral (|cff71d5ff|Hspell:24262|h[Brain Wash Totem]|h|r) lava cérebros ao seu redor.",
"* Sua Banimento (|cff71d5ff|Hspell:24466|h[Banish]|h|r) puxa um jogador da luta por alguns segundos — mantenha-o."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11382"] = { "Sangrelorde Mandokir",
"* O lord das sanguessugas da plataforma: luta de duas unidades, e o raptor Ohgan (14988) carrega seu próprio ataque.",
"* Seus Charged (ID não verificado) prendem os jogadores mais distantes (8-30 jardas): um caçador à distância pode consumi-los com Feign Death ou um atirador designado pode causar o dano.",
"* Seu Whirlwind pune os jogadores de combate: saia do raio no momento em que ele começa.",
"* Sua Visão Ameaçadora (|cff71d5ff|Hspell:24314|h[Threatening Gaze]|h|r) marca um jogador por 6 segundos: PARE TUDO (casts, dano e movimento) ou será um ataque único!",
"* Cada morte de 3 jogadores (Chained Spirits) aumenta seu tamanho e dano: não morrer faz parte da tática.",
"* Quando Ohgan cai, seu Frenzy de 1 minuto (|cff71d5ff|Hspell:24318|h[Frenzy]|h|r) começa — decida ANTES: ou deixe o raptor primeiro e use a cura para sobreviver ao enraio, ou posicione-o separadamente com seu tanque e mate-o por último."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11622"] = { "Ossorrange",
"* O gigante do ossário chega cercado por esqueletos: o protetor o ataca antes.",
"* Ele ataca com um CLEAVE — NINGUÉM na frente, mas o tanque.",
"* Ele continua a diminuir a ameaça do tanque: DPS deve atacar em vez de roubar a aggro."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12201"] = { "Princesa Theradras",
"* Boss final, colossal: luta estática em sua sala.",
"* Repulsive Gaze (|cff71d5ff|Hspell:21869|h[Repulsive Gaze]|h|r) causa pânico ao redor (medo): espalhem-se um pouco; um totem de tremor do xamã o remove instantaneamente.",
"* Boulder (|cff71d5ff|Hspell:21832|h[Boulder]|h|r) voa para os mais distantes: posições de ataque à distância e nunca se agrupem.",
"* Dust Field (|cff71d5ff|Hspell:21909|h[Dust Field]|h|r) chicoteia a área ao redor dela: os jogadores de combate fogem do raio (os gritos de DBM) e retornam quando termina."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12203"] = { "Desmoronamento",
"* Primeiro golem de pedra grande da caverna: luta simples com dano físico pesado no tanque.",
"* Knock Away (|cff71d5ff|Hspell:11130|h[Knock Away]|h|r) arremessa o tanque para trás e remove a ameaça: o tanque pega-o imediatamente enquanto todos mantêm a posição.",
"* Landslide (|cff71d5ff|Hspell:21808|h[Landslide]|h|r) ataca área, derrubando todos ao redor: os jogadores de melee levantam-se e continuam, correr é inútil.",
"* Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) chuta o chão ao lado dele: mantê-lo preso torna-o inofensivo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12225"] = { "Celebra, a Amaldiçoada",
"* Guardião que protege o portal para a princesa: seu Raiva (|cff71d5ff|Hspell:21807|h[Wrath]|h|r) é interrompida sempre que atinge, causando dano significativo.",
"* Raízes Enredadoras (|cff71d5ff|Hspell:12747|h[Entangling Roots]|h|r): enreda um jogador: é um efeito mágico, desfaça-o ou quebre-o com dano.",
"* DBM marca Forças Corrompidas (|cff71d5ff|Hspell:21968|h[Corrupt Forces]|h|r): empurra o dano e ele cai no chão; nada para desviar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12236"] = { "Senhor Vyletongue",
"* Satir fantasma: combatente de mago que causa dano de sombra e sua (|cff71d5ff|Hspell:7964|h[Smoke Bomb]|h|r) que o envolve, tornando-o invisível.",
"* Através da névoa, o tanque o prende com ameaça enquanto os dano aguardam a fumaça desaparecer."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["12258"] = { "Láser de Razor",
"* Planta espinosa gigante de los caminos verdes: combate sencillo, ataca principalmente al tanque y poco más.",
"* Ningún mecanismo marcado por DBM: tanque, cura, elimínelo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13282"] = { "Noxxion",
"* Elemental de cristal do salão: luta estática em seu ninho.",
"* Uppercut (|cff71d5ff|Hspell:10966|h[Uppercut]|h|r) lança o tanque para cima: cure a seus pés e volte para a posição.",
"* Summons de minion periódicos (|cff71d5ff|Hspell:21707|h[Noxxion's Minions]|h|r): AoE-os assim que se amontoarem, antes que causem pressão."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13596"] = { "Garra de Rota",
"* Crocolisk na piscina antes do salão da princesa: luta simples na água.",
"* Fatal Bite (|cff71d5ff|Hspell:16495|h[Fatal Bite]|h|r) ataca o tanque: cure em turnos com o cura de emergência em reserva."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13601"] = { "Tinkerer Gizlock",
"* Engenheiro goblin da caverna profunda: sua arma Goblin Dragon Gun (|cff71d5ff|Hspell:21833|h[Goblin Dragon Gun]|h|r) dispara fogo em um cone frontal.",
"* O tanque o mantém de frente para o grupo: ninguém fica na frente da arma e ele cai facilmente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14507"] = { "Sumo Sacerdote Venoxis",
"* Começa como um sacerdote da sombra: seu Renew (|cff71d5ff|Hspell:23895|h[Renew]|h|r) vai PARA ELE e é PURGADO (cura contínua caso contrário); seu Holy Fire (|cff71d5ff|Hspell:23860|h[Holy Fire]|h|r) atinge os jogadores — magia, dispelar ou ele queima.",
"* Por volta de 55%, ele se transforma em serpente (|cff71d5ff|Hspell:23849|h[Form of the Serpent]|h|r) e inicia sua fase final.",
"* Então, ele lança sua Nuvem Tóxica (|cff71d5ff|Hspell:23861|h[Toxic Cloud]|h|r), 10 segundos no chão: saia do spray.",
"* Seu veneno de cobra (|cff71d5ff|Hspell:23865|h[Snake Venom]|h|r) marca um jogador: purgue ou mantenha com cura."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14509"] = { "Sumo Sacerdote Venoxis",
"* A luta se concentra em três: seus dois fanáticos, Lor'Khan (11348, curandeiro) e Zath (11347, ladrão).",
"* Derrube-os todos de uma vez: quando os três caem em um ataque, eles fingem estar mortos e Thekal acorda ~15 segundos depois na forma de tigre com novos inimigos — o ataque começa com pressão uniforme em todos os três.",
"* Seu Grande Cura (|cff71d5ff|Hspell:24208|h[Grande Cura]|h|r) SEMPRE é interrompido (ele e Lor'Khan).",
"* Zath causa cegueira (|cff71d5ff|Hspell:21060|h[Cegueira]|h|r) e perfurações (|cff71d5ff|Hspell:12540|h[Perfuração]|h|r) em inimigos próximos — mantenha o controle sobre ele."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14510"] = { "Alta-sacerdotisa Kilnara",
"* Sua Enlarge (|cff71d5ff|Hspell:24109|h[Enlarge]|h|r) torna-se maior e mais agressiva: magia que é removida (alerta especial).",
"* Seu Drain Life (|cff71d5ff|Hspell:24300|h[Drain Life]|h|r) atinge um jogador: magia, e ela se alimenta dela — purgue rapidamente.",
"* Sua Corrosive Poison (|cff71d5ff|Hspell:24111|h[Corrosive Poison]|h|r) fica 30 segundos no jogador: purgue.",
"* Seu Poison Volley (|cff71d5ff|Hspell:24099|h[Poison Volley]|h|r) atinge a todos: antidotes e cura prontos.",
"* Ela invoca aranhas (|cff71d5ff|Hspell:24083|h[Summon Spiders]|h|r): elimine-as com AoE enquanto o DPS permanece nela."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14515"] = { "Alta-sacerdotisa Kilnara",
"* Sua Marca (|cff71d5ff|Hspell:24210|h[Marca de Arlokk]|h|r) prende um jogador (alerta especial se for você).",
"* Ela Desaparece (|cff71d5ff|Hspell:24223|h[Desaparecer]|h|r) logo após o pull — ela retorna para um jogador; os jogadores de melee a prendem novamente por ataque.",
"* Sua Palavra Sombria: Dor (|cff71d5ff|Hspell:24212|h[Palavra Sombria: Dor]|h|r) é mágica: desfaça-a."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14517"] = { "Alta-sacerdotisa Kilnara",
"* Seu Grande Cura (|cff71d5ff|Hspell:23954|h[Greater Heal]|h|r) SEMPRE é interrompido (~20 s de tempo de recarga).",
"* Seu Estouro Sônico (|cff71d5ff|Hspell:23918|h[Sonic Burst]|h|r) atinge os membros de combate próximos: magia, dispelar ou afaste-se.",
"* Seu Pânico (|cff71d5ff|Hspell:22884|h[Panic]|h|r) espalha as fileiras próximas em 4 s: os membros de combate recuam quando ela o executa.",
"* Sua Palavra Sombria: Dor (|cff71d5ff|Hspell:23952|h[Shadow Word: Pain]|h|r) causa dano mágico sustentado: dispela-a.",
"* Na metade da vida, ela atinge com uma enxurrada de morcegos: cause dano em área e o DPS continua."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14834"] = { "Hakkar, o Destruidor de Almas",
"* Sua Sanguinação (|cff71d5ff|Hspell:24324|h[Blood Siphon]|h|r) a cada 90 s, esgota TODA a raid e o cura — este é o cronograma de DPS: vença antes que os drenos esgotem a raid.",
"* Sua Loucura (|cff71d5ff|Hspell:24327|h[Insanity]|h|r) ocorre a cada ~21 s e desorienta um jogador por 10 s: desaparece sozinho após um certo tempo.",
"* Seu Sangue Corrompido (|cff71d5ff|Hspell:24328|h[Corrupted Blood]|h|r) pula entre os jogadores: purgue no momento em que atingir alguém.",
"* Modo Difícil (os sacerdotes da banda vivos): o loop dos Aspectos — o Aspecto de Jeklik (|cff71d5ff|Hspell:24687|h[Aspect of Jeklik]|h|r) silencia os conjuradores, o Aspecto de Venoxis (24688) espalha o veneno, o Aspecto de Mar'li (24686) drena, o Aspecto de Arlokk (24690) marca e o Aspecto de Thekal (|cff71d5ff|Hspell:24689|h[Aspect of Thekal]|h|r) o envia em FÚRIA — este último deve ser DESFEITO (desfeita da fúria, aviso especial). Matar os sacerdotes antes desativa TODOS os Aspectos.",
"* No remake de SoD, os Aspectos SEMPRE aparecem (a cada 20 s, ordem aleatória).",
"* Por volta de 9:45, ele libera a fúria final: a luta não pode durar mais de 10 minutos."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14988"] = { "Ohgan",
"* Mandokir's raptor: no início do combate, seu cavaleiro desmounta e eles se separam — seu tanque o mantém longe do grupo.",
"* Sua Mortal Wound (|cff71d5ff|Hspell:16856|h[Mortal Wound]|h|r) acumula no tanque: rotação de dois tanques.",
"* Sua morte IRRITA Mandokir por um minuto — planeje a estratégia antes de iniciar (veja a entrada de Bloodlord Mandokir)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15082"] = { "Gri'lek",
"* Ele é invocado no brasero do Corner com a poção Gurubashi Mojo Madness no seu corpo; ao morrer, ele deixa cair o Sangue de Gri'lek para itens de trinket da classe ZG.",
"* Seu Avatar (|cff71d5ff|Hspell:24646|h[Avatar]|h|r) AUMENTA-O, elimina a ameaça do tanque e detona o dano físico — e ele se MOVE MAIS LENTO: o preso fica fora do seu raio até que ele volte a diminuir."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15083"] = { "Hazza'rah",
"* A brasqueira do canto chama o troll ATIVO da rotação de duas semanas com a poção Gurubashi Mojo Madness (alquimia: 1 Sangue de Heróis, 1 Mojo Massivo, 6 Mojo Poderoso, 1 Flor Negra); ao morrer, ele deixa seu reagente para os itens de armadura da classe ZG (neste caso, o Sonho de Hazza'rah).",
"* Suas Ilusões do Pesadelo (|cff71d5ff|Hspell:24728|h[Ilusão do Pesadelo]|h|r) são cópias lentas com pequenos poços de vida, mas ataques com mais de 5.000 de dano: mate-os IMEDIATAMENTE (um feitiço instantâneo é suficiente) — prioridade máxima do encontro.",
"* Seu Mana Burn (|cff71d5ff|Hspell:24684|h[Mana Burn]|h|r) esgota a raid em uma cadeia — ele carrega apenas cerca de 5.000 de mana, então caçadores com Viper Sting e feiticeiros com Mana Drain o mantêm SECO e a habilidade se esgota.",
"* Seu Sono (|cff71d5ff|Hspell:24664|h[Sono]|h|r) é de área, 6 segundos: espalhe o grupo e ninguém dorme no meio da raid.",
"* Seus companheiros de rotação, Gri'lek, Renataki e Wushoolay, têm suas próprias entradas: a brasqueira chama apenas o troll ATIVO da fortnight."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15084"] = { "Renataki",
"* Ele é invocado no brasero do Corner com o elixir Gurubashi Mojo Madness no seu segundo turno; ao morrer, ele deixa a Dentadura de Renataki para itens de enfeite da classe ZG.",
"* Ele desaparece (|cff71d5ff|Hspell:24699|h[Vanish]|h|r) e reaparece em um alvo com um ataque LETAL: o ataque em área o revela e os PETs o rastreiam mesmo em furtividade."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15085"] = { "Wushoolay",
"* Ele é invocado no brasero do Corner com a poção Gurubashi Mojo Madness no seu segundo turno; ao morrer, ele derruba sua Mane of Wushoolay para itens de trinket da classe ZG.",
"* Seu Chain Lightning atinge um cone FRONTAL (não verificado): os personagens de melee ficam atrás dele o tempo todo.",
"* Ele planta nuvens de relâmpago (|cff71d5ff|Hspell:24683|h[Lightning Cloud]|h|r) no chão por 15 s: saia delas IMEDIATAMENTE ou elas atingirão a raid."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15114"] = { "Gahz'ranka",
"* Opcional: emerge da poça de pesca no pântano com o isco correto.",
"* Sua Respiração Congelante (|cff71d5ff|Hspell:16099|h[Frost Breath]|h|r) varre um cone na frente dele: ninguém atravessa a névoa.",
"* Seu Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) lança aqueles que estão na água: lute na borda."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["215728"] = { "Espanca-gente 9-60",
"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): um golpe que lança os combatentes para o ar: apenas o tanque permanece dentro, todos os outros estão fora do alcance.",
"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) no tanque: ritmo normal de tanque e cura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["217280"] = { "Grúdio",
"* Combate plano marcado por DBM: tanque, dano y curas, prestando atención al segundo que aparece a su lado (su Chomper)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218242"] = { "A Armadilha Mecânica",
"* Quatro peças mecânicas juntas: o dragão negro (STX-04/BD), o cordeiro (STX-13/LL), a esquilo (STX-25/NB) e o galo (STX-37/CN).",
"* Todas compartilham Auto-Reparo e Fios Desgastados: queime cada peça rapidamente para que não possa se recuperar, e preste atenção ao dano passivo dos fios.",
"* O cordeiro emite sons binários, a esquilo dispara widgets, superaquece e cria uma barreira atrás de seu escudo de nozes, e o galo cospe entre grasnidos: dano constante, então o próximo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218243"] = { "A Armadilha Mecânica",
"* Quatro peças mecânicas juntas: o dragão negro (STX-04/BD), o cordeiro (STX-13/LL), a esquilo (STX-25/NB) e o galo (STX-37/CN).",
"* Todas compartilham Auto-Reparo e Fios Desgastados: queime cada peça rapidamente para que não possa se recuperar, e preste atenção ao dano passivo dos fios.",
"* O cordeiro emite sons binários, a esquilo dispara widgets, superaquece e cria uma barreira atrás de seu escudo de nozes, e o galo cospe entre grasnidos: dano constante, então o próximo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218244"] = { "A Armadilha Mecânica",
"* Quatro peças mecânicas juntas: o dragão negro (STX-04/BD), o cordeiro (STX-13/LL), a esquilo (STX-25/NB) e o galo (STX-37/CN).",
"* Todas compartilham Auto-Reparo e Fios Desgastados: queime cada peça rapidamente para que não possa se recuperar, e preste atenção ao dano passivo dos fios.",
"* O cordeiro emite sons binários, a esquilo dispara widgets, superaquece e cria uma barreira atrás de seu escudo de nozes, e o galo cospe entre grasnidos: dano constante, então o próximo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218245"] = { "A Armadilha Mecânica",
"* Quatro peças mecânicas juntas: o dragão negro (STX-04/BD), o cordeiro (STX-13/LL), a esquilo (STX-25/NB) e o galo (STX-37/CN).",
"* Todas compartilham Auto-Reparo e Fios Desgastados: queime cada peça rapidamente para que não possa se recuperar, e preste atenção ao dano passivo dos fios.",
"* O cordeiro emite sons binários, a esquilo dispara widgets, superaquece e cria uma barreira atrás de seu escudo de nozes, e o galo cospe entre grasnidos: dano constante, então o próximo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218537"] = { "Mecangenheiro Termaplugue",
"* Ele lança uma bomba viva em um jogador aleatório (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): o marcado corre para longe do grupo até explodir.",
"* O Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) envia o tanque para o alto: preste atenção onde ele cai.",
"* A partir de Cata, ele lança um Steam Blast interrompível e ataca o tanque: corte o ataque no tempo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218538"] = { "Mecangenheiro Termaplugue",
"* Ele lança uma bomba viva em um jogador aleatório (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): o marcado corre para longe do grupo até explodir.",
"* O Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) envia o tanque para o alto: preste atenção onde ele cai.",
"* A partir de Cata, ele lança um Steam Blast interrompível e ataca o tanque: corte o ataque no tempo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218571"] = { "Sombra de Eranikus",
"* O chefe final da reestruturação: o dragão verde do Sonho Esmeralda no poço.",
"* O ataque Corrosive Breath (|cff71d5ff|Hspell:437353|h[Corrosive Breath]|h|r) pune o tanque — troque com a habilidade de atordoar após o lançamento — e Deep Slumber (|cff71d5ff|Hspell:437301|h[Deep Slumber]|h|r) varre a sala em um ritmo.",
"* Seu Waking Nightmare (|cff71d5ff|Hspell:437398|h[Waking Nightmare]|h|r) a cada ~66 s é letal: corra em direção ao local do Deep Slumber e saia do terreno atingido.",
"* Seu Lethargic Poison (|cff71d5ff|Hspell:437390|h[Lethargic Poison]|h|r) é veneno (remova-o); em 70% e 40% seus Dream adicionais spawn (são marcados) e seu Lethargic Poison canalizado (|cff71d5ff|Hspell:437425|h[Lethargic Poison]|h|r) é SEMPRE interrompido, assim como o Bellowing Roar (|cff71d5ff|Hspell:445498|h[Bellowing Roar]|h|r)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218624"] = { "Atal'alarion",
"* O guardião da primeira ponte do remake: gigante plano e resistente.",
"* Seus Pilares de Força (|cff71d5ff|Hspell:437503|h[Pilares de Força]|h|r) punem em um ritmo fixo (~12 s) e o Golpe Destrutivo (|cff71d5ff|Hspell:437597|h[Golpe Destrutivo]|h|r) a cada ~27 s atinge metade do grupo: corra ATRAZ de um pilar."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218718"] = { "Jammal'an e Ogom",
"* O hall do remake: os dois trolls se devoram um ao outro e o sobrevivente fica fortalecido.",
"* Fase 1: Smite (437805) SEMPRE interrompido; Holy Nova (437817) é desviado em área e seu Holy Fire (437809) (mágico) atinge em um ritmo; Mortal Lash (437847) no tanque e Agonizing Weakness (437868) no grupo.",
"* Fase 2 (o devorado cai): Jammal'an com Psychic Screams (437928) (medo), seu Shadow Sermon: Pain (437927) (mágico), Power Word: Shield (437930) (é desfeito) e Mass Penance (437921); Ogom com Hammers of Justice (437915) (paralisia), Consecration (437884) — permaneça no chão — e Divine Storm (437920) (1,5 s de tempo de lançamento)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218721"] = { "Jammal'an e Ogom",
"* O hall do remake: os dois trolls se devoram um ao outro e o sobrevivente fica fortalecido.",
"* Fase 1: Smite (437805) SEMPRE interrompido; Holy Nova (437817) é desviado em área e seu Holy Fire (437809) (mágico) atinge em um ritmo; Mortal Lash (437847) no tanque e Agonizing Weakness (437868) no grupo.",
"* Fase 2 (o devorado cai): Jammal'an com Psychic Screams (437928) (medo), seu Shadow Sermon: Pain (437927) (mágico), Power Word: Shield (437930) (é desfeito) e Mass Penance (437921); Ogom com Hammers of Justice (437915) (paralisia), Consecration (437884) — permaneça no chão — e Divine Storm (437920) (1,5 s de tempo de lançamento)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218819"] = { "Lodo de podridão",
"* A gosma do canal: sua Devour (|cff71d5ff|Hspell:448824|h[Devour]|h|r) engole um jogador OU os objetos da sala (o tambor, bloco, máscara e vela) — a cura mantém o engolido.",
"* Seu Slime Time (|cff71d5ff|Hspell:446311|h[Slime Time]|h|r) se acumula nele: uma vez REMOVIDO, ele fica lento — é quando o DPS ataca forte.",
"* Gunk (|cff71d5ff|Hspell:438142|h[Gunk]|h|r) e Nauseous Gas (|cff71d5ff|Hspell:438130|h[Nauseous Gas]|h|r) em um ritmo; evite o chão punido."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["218868"] = { "Defensores de Atal'ai",
"* O troll de jardim da versão remestada: seis chefes EM LINHA, lutados um por um, e cada MORTE faz spawn seu equivalente não-morto com o mesmo kit (sem links) — as portas de rune nas laterais são para ignorar.",
"* Zul'Lor 221640: seu Charge (446369) precede o Corrupted Slam (446372) — desvie-o após o charge — e ele aplica Frailty (446364).",
"* Mijan 218868: suas Thorns (438294) (mágica) refletem dano para os melee — dispela-os e o melee PARA — além de seu Healing Ward (438335) que cai; use o Atal'ai Serpent Totem (445912).",
"* Zolo 221639: todo seu ciclo de habilidades é INTERROMPIDO — Chain Lightning (446338), Renew (438341) e Healing Wave (438339) — e seu Atal'ai Skeleton Totem (446339) é usado; o Unstable Cask (445940) pode stun o tank.",
"* Gasher 221637: Spinning Axes (445289) pune os melee e seu Fervor (445284) se acumula se a luta se prolongar — mate-o rapidamente.",
"* Loro 221638: Demoralizing Shout (23511) em um ritmo e Shield Slam (446354) no tank.",
"* Hukku 223586: Shadow Bolts (446361) SEMPRE interrompidos e seus Guardians (446360) entram na luta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218970"] = { "Mecangenheiro Termaplugue",
"* Ele lança uma bomba viva em um jogador aleatório (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): o marcado corre para longe do grupo até explodir.",
"* O Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) envia o tanque para o alto: preste atenção onde ele cai.",
"* A partir de Cata, ele lança um Steam Blast interrompível e ataca o tanque: corte o ataque no tempo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218972"] = { "Mecangenheiro Termaplugue",
"* Ele lança uma bomba viva em um jogador aleatório (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): o marcado corre para longe do grupo até explodir.",
"* O Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) envia o tanque para o alto: preste atenção onde ele cai.",
"* A partir de Cata, ele lança um Steam Blast interrompível e ataca o tanque: corte o ataque no tempo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["218974"] = { "Mecangenheiro Termaplugue",
"* Ele lança uma bomba viva em um jogador aleatório (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): o marcado corre para longe do grupo até explodir.",
"* O Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) envia o tanque para o alto: preste atenção onde ele cai.",
"* A partir de Cata, ele lança um Steam Blast interrompível e ataca o tanque: corte o ataque no tempo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["220007"] = { "Precipitação Radioativa Viscosa",
"* Disparo de Veneno (|cff71d5ff|Hspell:21687|h[Disparo de Veneno]|h|r): envenenamento periódico em qualquer um próximo; o efeito de cura remove e continua."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["220072"] = { "Eletrocutor 6000",
"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) e Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r) são interrompíveis: corte-os na raiz.",
"* O Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r) ataca o tanque: use cura em watch."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["220833"] = { "Sonho e Tecelã",
"* A dupla de dragões verdes da versão remestada: ambos compartilham a mesma sala.",
"* Respiração Ácida (|cff71d5ff|Hspell:442622|h[Respiração Ácida]|h|r) se acumula no tanque — troque com a taça após cada lançamento — e o Asa Batendo (|cff71d5ff|Hspell:442620|h[Asa Batendo]|h|r) segue.",
"* Asa Buffet (|cff71d5ff|Hspell:443766|h[Asa Buffet]|h|r) lança pessoas para o ar: segure firme e fique longe da borda.",
"* Fase 2: Dreamscythe se protege com seu Escudo Esmeralda (|cff71d5ff|Hspell:443302|h[Escudo Esmeralda]|h|r) — ataque-o e a fase 3 chega com os Buffets mais apertados."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["220864"] = { "Sonho e Tecelã",
"* A dupla de dragões verdes da versão remestada: ambos compartilham a mesma sala.",
"* Respiração Ácida (|cff71d5ff|Hspell:442622|h[Respiração Ácida]|h|r) se acumula no tanque — troque com a taça após cada lançamento — e o Asa Batendo (|cff71d5ff|Hspell:442620|h[Asa Batendo]|h|r) segue.",
"* Asa Buffet (|cff71d5ff|Hspell:443766|h[Asa Buffet]|h|r) lança pessoas para o ar: segure firme e fique longe da borda.",
"* Fase 2: Dreamscythe se protege com seu Escudo Esmeralda (|cff71d5ff|Hspell:443302|h[Escudo Esmeralda]|h|r) — ataque-o e a fase 3 chega com os Buffets mais apertados."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221394"] = { "Avatar de Hakkar",
"* A versão remade do deus serpente, em duas fases: o ritual primeiro, depois a besta.",
"* Fase Espírito: As Correntes do Espírito (|cff71d5ff|Hspell:443975|h[Spirit Chains]|h|r) marcam um jogador com um puxão — o preso QUEBRA — e o Uivo Terrível (|cff71d5ff|Hspell:443990|h[Frightsome Howl]|h|r) é SEMPRE interrompido, enquanto os Hakkari blood keepers caem com o ritual.",
"* Fase Besta: Nova de Sangue (|cff71d5ff|Hspell:444050|h[Blood Nova]|h|r) a cada ~8 s, o Sangue Corrompido (|cff71d5ff|Hspell:444253|h[Corrupted Blood]|h|r) pula de jogador para jogador — o marcado QUEBRA —, Insanidade (|cff71d5ff|Hspell:444039|h[Insanity]|h|r) em um jogador marcado, Maldição da Língua (|cff71d5ff|Hspell:444046|h[Curse of Tongues]|h|r) (maldição) e o Drenar Sangue (|cff71d5ff|Hspell:444132|h[Drain Blood]|h|r): quem carrega Sangue Corrompido entra na frente do tanque."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221637"] = { "Defensores de Atal'ai",
"* O troll de jardim da versão remestada: seis chefes EM LINHA, lutados um por um, e cada MORTE faz spawn seu equivalente não-morto com o mesmo kit (sem links) — as portas de rune nas laterais são para ignorar.",
"* Zul'Lor 221640: seu Charge (446369) precede o Corrupted Slam (446372) — desvie-o após o charge — e ele aplica Frailty (446364).",
"* Mijan 218868: suas Thorns (438294) (mágica) refletem dano para os melee — dispela-os e o melee PARA — além de seu Healing Ward (438335) que cai; use o Atal'ai Serpent Totem (445912).",
"* Zolo 221639: todo seu ciclo de habilidades é INTERROMPIDO — Chain Lightning (446338), Renew (438341) e Healing Wave (438339) — e seu Atal'ai Skeleton Totem (446339) é usado; o Unstable Cask (445940) pode stun o tank.",
"* Gasher 221637: Spinning Axes (445289) pune os melee e seu Fervor (445284) se acumula se a luta se prolongar — mate-o rapidamente.",
"* Loro 221638: Demoralizing Shout (23511) em um ritmo e Shield Slam (446354) no tank.",
"* Hukku 223586: Shadow Bolts (446361) SEMPRE interrompidos e seus Guardians (446360) entram na luta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221638"] = { "Defensores de Atal'ai",
"* O troll de jardim da versão remestada: seis chefes EM LINHA, lutados um por um, e cada MORTE faz spawn seu equivalente não-morto com o mesmo kit (sem links) — as portas de rune nas laterais são para ignorar.",
"* Zul'Lor 221640: seu Charge (446369) precede o Corrupted Slam (446372) — desvie-o após o charge — e ele aplica Frailty (446364).",
"* Mijan 218868: suas Thorns (438294) (mágica) refletem dano para os melee — dispela-os e o melee PARA — além de seu Healing Ward (438335) que cai; use o Atal'ai Serpent Totem (445912).",
"* Zolo 221639: todo seu ciclo de habilidades é INTERROMPIDO — Chain Lightning (446338), Renew (438341) e Healing Wave (438339) — e seu Atal'ai Skeleton Totem (446339) é usado; o Unstable Cask (445940) pode stun o tank.",
"* Gasher 221637: Spinning Axes (445289) pune os melee e seu Fervor (445284) se acumula se a luta se prolongar — mate-o rapidamente.",
"* Loro 221638: Demoralizing Shout (23511) em um ritmo e Shield Slam (446354) no tank.",
"* Hukku 223586: Shadow Bolts (446361) SEMPRE interrompidos e seus Guardians (446360) entram na luta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221639"] = { "Defensores de Atal'ai",
"* O troll de jardim da versão remestada: seis chefes EM LINHA, lutados um por um, e cada MORTE faz spawn seu equivalente não-morto com o mesmo kit (sem links) — as portas de rune nas laterais são para ignorar.",
"* Zul'Lor 221640: seu Charge (446369) precede o Corrupted Slam (446372) — desvie-o após o charge — e ele aplica Frailty (446364).",
"* Mijan 218868: suas Thorns (438294) (mágica) refletem dano para os melee — dispela-os e o melee PARA — além de seu Healing Ward (438335) que cai; use o Atal'ai Serpent Totem (445912).",
"* Zolo 221639: todo seu ciclo de habilidades é INTERROMPIDO — Chain Lightning (446338), Renew (438341) e Healing Wave (438339) — e seu Atal'ai Skeleton Totem (446339) é usado; o Unstable Cask (445940) pode stun o tank.",
"* Gasher 221637: Spinning Axes (445289) pune os melee e seu Fervor (445284) se acumula se a luta se prolongar — mate-o rapidamente.",
"* Loro 221638: Demoralizing Shout (23511) em um ritmo e Shield Slam (446354) no tank.",
"* Hukku 223586: Shadow Bolts (446361) SEMPRE interrompidos e seus Guardians (446360) entram na luta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221640"] = { "Defensores de Atal'ai",
"* O troll de jardim da versão remestada: seis chefes EM LINHA, lutados um por um, e cada MORTE faz spawn seu equivalente não-morto com o mesmo kit (sem links) — as portas de rune nas laterais são para ignorar.",
"* Zul'Lor 221640: seu Charge (446369) precede o Corrupted Slam (446372) — desvie-o após o charge — e ele aplica Frailty (446364).",
"* Mijan 218868: suas Thorns (438294) (mágica) refletem dano para os melee — dispela-os e o melee PARA — além de seu Healing Ward (438335) que cai; use o Atal'ai Serpent Totem (445912).",
"* Zolo 221639: todo seu ciclo de habilidades é INTERROMPIDO — Chain Lightning (446338), Renew (438341) e Healing Wave (438339) — e seu Atal'ai Skeleton Totem (446339) é usado; o Unstable Cask (445940) pode stun o tank.",
"* Gasher 221637: Spinning Axes (445289) pune os melee e seu Fervor (445284) se acumula se a luta se prolongar — mate-o rapidamente.",
"* Loro 221638: Demoralizing Shout (23511) em um ritmo e Shield Slam (446354) no tank.",
"* Hukku 223586: Shadow Bolts (446361) SEMPRE interrompidos e seus Guardians (446360) entram na luta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221942"] = { "Morphaz e Hazzas",
"* O par de dragões da toca da versão remestada: o combate mais longo do templo de SoD.",
"* Respiração Corrompida (|cff71d5ff|Hspell:446487|h[Respiração Corrompida]|h|r) se acumula no tanque e Chamas Animadas (|cff71d5ff|Hspell:446661|h[Chama Animada]|h|r) surgem do chão.",
"* A fase se baseia em Sonho Lúcido: o primeiro canal de ~20 s (|cff71d5ff|Hspell:445235|h[Sonho Lúcido]|h|r) envia o grupo para o Sonho Esmeralda — as chamas morrem durante o lançamento; o segundo canal (4 s) chega já em chamas, e após ele, seu Sono Eterno (|cff71d5ff|Hspell:446144|h[Sono Eterno]|h|r) de 30 s mata todos, a menos que escapem pelo portal a tempo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["221943"] = { "Morphaz e Hazzas",
"* O par de dragões da toca da versão remestada: o combate mais longo do templo de SoD.",
"* Respiração Corrompida (|cff71d5ff|Hspell:446487|h[Respiração Corrompida]|h|r) se acumula no tanque e Chamas Animadas (|cff71d5ff|Hspell:446661|h[Chama Animada]|h|r) surgem do chão.",
"* A fase se baseia em Sonho Lúcido: o primeiro canal de ~20 s (|cff71d5ff|Hspell:445235|h[Sonho Lúcido]|h|r) envia o grupo para o Sonho Esmeralda — as chamas morrem durante o lançamento; o segundo canal (4 s) chega já em chamas, e após ele, seu Sono Eterno (|cff71d5ff|Hspell:446144|h[Sono Eterno]|h|r) de 30 s mata todos, a menos que escapem pelo portal a tempo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["223586"] = { "Defensores de Atal'ai",
"* O troll de jardim da versão remestada: seis chefes EM LINHA, lutados um por um, e cada MORTE faz spawn seu equivalente não-morto com o mesmo kit (sem links) — as portas de rune nas laterais são para ignorar.",
"* Zul'Lor 221640: seu Charge (446369) precede o Corrupted Slam (446372) — desvie-o após o charge — e ele aplica Frailty (446364).",
"* Mijan 218868: suas Thorns (438294) (mágica) refletem dano para os melee — dispela-os e o melee PARA — além de seu Healing Ward (438335) que cai; use o Atal'ai Serpent Totem (445912).",
"* Zolo 221639: todo seu ciclo de habilidades é INTERROMPIDO — Chain Lightning (446338), Renew (438341) e Healing Wave (438339) — e seu Atal'ai Skeleton Totem (446339) é usado; o Unstable Cask (445940) pode stun o tank.",
"* Gasher 221637: Spinning Axes (445289) pune os melee e seu Fervor (445284) se acumula se a luta se prolongar — mate-o rapidamente.",
"* Loro 221638: Demoralizing Shout (23511) em um ritmo e Shield Slam (446354) no tank.",
"* Hukku 223586: Shadow Bolts (446361) SEMPRE interrompidos e seus Guardians (446360) entram na luta."
};

-- Wailing Caverns : Zona 43 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3653"] = { "Cresh",
"* Uma luta física simples: sem interrupções ou dispels, bom controle do tanque e dano contínuo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3654"] = { "Mutanus, o Devorador",
"* |cff71d5ff|Hspell:7967|h[Pesadelo de Naralex]|h|r é o foco do combate: interrompa o encantamento sempre que começar.",
"* Seu |cff71d5ff|Hspell:7399|h[Terrificar]|h|r (pânico) é Magia: os curandeiros dissipam os atingidos, e seu |cff71d5ff|Hspell:8150|h[Trovão]|h|r atinge a área — os curandeiros devem estar preparados."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3669"] = { "Lorde Cobrahn",
"* Igual que Anacondra: usa |cff71d5ff|Hspell:8040|h[Sonambulismo do Druida]|h|r e o |cff71d5ff|Hspell:23381|h[Toque de Cura]|h|r.",
"* Seu |cff71d5ff|Hspell:17330|h[Veneno]|h|r é lançado instantaneamente com a remoção de veneno."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3670"] = { "Lorde Pítias",
"* Igual que Anacondra: use |cff71d5ff|Hspell:8040|h[Sonambulismo do Druida]|h|r e |cff71d5ff|Hspell:23381|h[Toque de Cura]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3671"] = { "Lady Sucurina",
"* Ela se transforma na forma de druida: interrompa-a com |cff71d5ff|Hspell:8040|h[Sonho do Druida]|h|r (dorme um jogador) e sua |cff71d5ff|Hspell:23381|h[Toque Curativo]|h|r, ou a luta se prolonga."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3673"] = { "Lorde Serpentis",
"* Igual que Anacondra: use |cff71d5ff|Hspell:8040|h[Sonambulismo do Druida]|h|r e |cff71d5ff|Hspell:23381|h[Toque de Cura]|h|r."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3674"] = { "Skória",
"* Alterno entre |cff71d5ff|Hspell:6254|h[Chained Bolt]|h|r que salta entre alvos: não agrupe o grupo e elimine-o rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["5775"] = { "Verdan, o Sempre-vivo",
"* Interrompa seu |cff71d5ff|Hspell:8142|h[Vines]|h|r: é o único detalhe da luta, o resto é combate corpo a corpo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["5912"] = { "Dragão Faísca Desviante",
"* Opcional, chefe parcialmente escondido: você não precisa matá-lo para completar a masmorra.",
"* Seu |cff71d5ff|Hspell:8040|h[Sonho do Druida]|h|r adormece um jogador (desfazível com Magia): se ninguém cancelar o efeito, um curandeiro o desfaz."
};

-- Razorfen Kraul : Zona 47 (classic) --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4420"] = { "Overlord Ramtusk",
"* Eu canalizo uma saraivada giratória (|cff71d5ff|Hspell:8259|h[Whirling Barrage]|h|r): interrompa-a ou, se ela for lançada, dê um passo para fora do redemoinho enquanto ela cai.",
"* Uma luta difícil: ele ataca forte e chega com dois guardiões ao seu lado; o tanque os afasta e o healer se concentra."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4421"] = { "Charlga Talhaflanco",
"* O Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) pode ser interrompido: o kick salva o grupo inteiro.",
"* Os hexes são limpos assim que atingem (|cff71d5ff|Hspell:8361|h[Purity]|h|r): dano físico é a melhor opção."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4422"] = { "Agathelos o Furioso",
"* Faça-o entrar em fúria (|cff71d5ff|Hspell:8269|h[Enrage]|h|r) e use seu ataque de fúria: o tanque deve aproveitar a subida com cura focada."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4424"] = { "Aggem Thorncurse",
"* Ele invoca porcos (|cff71d5ff|Hspell:8286|h[Summon Boar]|h|r) em momentos aleatórios: mate-os assim que aparecerem.",
"* Sua Onda de Cura (|cff71d5ff|Hspell:14900|h[Healing Wave]|h|r) é interrompível: corte-a sem piedade ou o tanque ficará exausto."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4425"] = { "Caçador Tuscosso",
"* Lutador simples marcado pelo DBM: ataca em curta distância e nada mais: tanque, dano e cura."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4428"] = { "Jargba, o Orador da Morte",
"* Domina a mente de um jogador (|cff71d5ff|Hspell:14515|h[Dominate]|h|r): interrupções normais não funcionam; um stun a impede, embora o recast ocorra no momento em que quebra: derrube o jogador dominado até que ele caia."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4842"] = { "Earthcaller Halmgar",
"* Chama os \"Terremoto da Terra\" (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): Separe-os e finalize-os rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["6168"] = { "Rugug",
"* Ele chama os \"Earth Rumblers\" (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): o tanque os pega e eles morrem instantaneamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74462"] = { "Senhor da Guerra Presatak",
"* A moderna versão do supremo Ramtusk: um lutador simples sem nenhum flag DBM: tanque, dano e cura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74948"] = { "Rugug",
"* Ele chama os \"Earth Rumblers\" (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): o tanque os pega e eles morrem instantaneamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75001"] = { "Caçador Tuscosso",
"* Mais um brawler simples do Kraul moderno: tanque, causa dano e cura em sequência."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75247"] = { "Caçador Cego",
"* A versão moderna do caçador cego: outro lutador simples, o DBM não marca nada nele."
};

-- Blackfathom Deeps : Zona 48 --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4829"] = { "Aku'mai",
"* Combate com envenenamento puro: sua |cff71d5ff|Hspell:3815|h[Nuvem de Veneno]|h|r permanece onde ele está; o tanque o mantém longe do grupo e ninguém entra nele.",
"* Quando ele morre, entra em |cff71d5ff|Hspell:3490|h[Fúria Enlouquecedora]|h|r e ataca mais rápido: os curandeiros aceleram."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4830"] = { "Old Serra'kis",
"* Combate cuerpo a cuerpo básico na área de água rasa: o tanque o mantém sob controle, os jogadores de melee observam seus venenos e o grupo aplica dano."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4831"] = { "Lady Sarevess",
"* Ela é protegida por guardas de elite: controle a multidão (polimorfia, armadilhas) e concentre o dano nela.",
"* Sua |cff71d5ff|Hspell:407546|h[Flecha Congelante]|h|r congela quem atingir (o curandeiro os libera com um dispel) e, quando ela aponta sua |cff71d5ff|Hspell:407653|h[Raio Bifurcado]|h|r para alguém, o jogador marcado sai do grupo.",
"* Se ela coloca |cff71d5ff|Hspell:407791|h[Fúria de Aku'mai]|h|r em um jogador, dispela assim que o curandeiro a vir; seus poços no chão são evitados."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4832"] = { "Senhor do Crepúsculo Bathiel",
"* No cliente Era, esta é uma luta simples: dispelar a |cff71d5ff|Hspell:8399|h[Sleep]|h|r que ele lança em um jogador aleatório e continuar a dar dano e a absorver."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4887"] = { "Ghamoo-ra",
"* Combate simples de tanque e dano: sua |cff71d5ff|Hspell:5568|h[Trample]|h|r sacode a todos ao seu redor; os jogadores de combate ficam próximos e os demais se espalham."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["6243"] = { "Gelihast",
"* Combate direto: sua principal fonte de irritação é o |cff71d5ff|Hspell:6533|h[Net]|h|r que tira alguém do combate por alguns segundos (quebre ou desfaça-o); caso contrário, proteja e cause dano."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74446"] = { "Ghamoo-ra",
"* Ele começa atrás de uma concha que reduz fortemente todo o dano que recebe: cada golpe e feitiço a diminuem, então mantenha um dano constante até que ela quebre.",
"* Quando a concha se quebra, ele explode, causando dano ao grupo inteiro (os curandeiros o mitigam) e fica exposto: o momento ideal para usar todos os cooldowns de dano.",
"* Seu |cff71d5ff|Hspell:407077|h[Triple Chomp]|h|r atinge o tanque: os curandeiros devem monitorar sua saúde."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74476"] = { "Domina",
"* Sua Tempestá Negra causa dano de Sombras a jogadores aleatórios a cada segundo: dano contínuo; os curandeiros definem o ritmo.",
"* Sua Boca da Morte raspa o cone frontal com ondas de dano de Sombras por 2 segundos: o tanque a direciona para longe do grupo e ninguém se aproxima."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74505"] = { "Thruk",
"* Sua Peça do Dia prende um jogador aleatório até 45 jardas de distância e o arrasta para seus pés: o preso se espalha no momento em que solta e ninguém atravessa a puxada.",
"* Sua Filé de Carne atinge o chão com o machado: 500% de dano de arma para todos os inimigos dentro de 10 jardas; espalhe-se com curandeiros prontos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74565"] = { "Subjugador Kor'ul",
"* A Mordida de Leviatã causa dano físico ao alvo a cada segundo por 8 segundos: o curandeiro deve se manter no alvo.",
"* Sua Chamada das Trevas invoca Aku'mai para atacar: o Aku'mai também afeta o minion."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74728"] = { "Senhor do Crepúsculo Bathiel",
"* Ele se espalha por a sala, deixando círculos de Água Restauradora: se atingir um, bebe (Absorção de Cura), recuperando 5% da sua vida, e um círculo explosivo (Explosão de Água) lança dano de Frio em 5 yardas; preste atenção nos círculos e nunca lhe dê água.",
"* Seu Chuvo Piercing causa dano de Frio em jogadores aleatórios a cada segundo: dano constante, os curandeiros devem manter a contagem."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74988"] = { "Carrasco Mutila",
"* Sua Devouring Blackness (interrompível) imobiliza um alvo e drena sua vida a cada 0,8s por 6 segundos, alimentando-o: interrompa sempre que estiver ativo; se atingir, o curandeiro supera o dano.",
"* Seu Executioner's Strike golpeia com o machado: Dano de sombra para todos com extra no cone frontal, e deixa um vórtice persistente que esmaga quem permanece dentro; mantenha o cone longe e saia do vórtice."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75408"] = { "Aku'mai",
"* Fase 1 (forma de hidra): o tanque principal aplica o debuff de veneno; o tanque secundário ataca no terceiro ou quarto stack para que o primeiro tanque se cure tocando nas fontes elementais da sala (elas summon um add que morre instantaneamente).",
"* Ela é evitada quando lança |cff71d5ff|Hspell:429168|h[Explosão Corrosiva]|h|r: o jogador marcado sai do cone.",
"* Fase 2 (forma de vazio, abaixo de 50%): dano físico aumenta e ela lança explosões escuras (a |cff71d5ff|Hspell:429359|h[Explosão de Vazio]|h|r é evitada da mesma forma); os tanques mantêm a rotação com mais cuidado e o grupo usa cada cooldown para terminá-la."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["75410"] = { "Guardião das Profundezas",
"* Su ovoide de Spore Cloud poussa em locais aleatórios (dano físico) e eclode em Guardian Hatchlings: mantenha-se longe das manchas e elimine os filhotes rapidamente.",
"* Ele devora um Blue Shale Crawler próximo, recuperando 25% de sua vida: nenhum Crawler deve permanecer em seu alcance.",
"* Sua Canção de Fragmentação pune toda a área: dano constante em área; os curandeiros devem permanecer nele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["201722"] = { "Ghamoo-ra",
"* Ele começa atrás de uma concha que reduz fortemente todo o dano que recebe: cada golpe e feitiço a diminuem, então mantenha um dano constante até que ela quebre.",
"* Quando a concha se quebra, ele explode, causando dano ao grupo inteiro (os curandeiros o mitigam) e fica exposto: o momento ideal para usar todos os cooldowns de dano.",
"* Seu |cff71d5ff|Hspell:407077|h[Triple Chomp]|h|r atinge o tanque: os curandeiros devem monitorar sua saúde."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["202699"] = { "Barão Aquanis",
"* Espalhe-se pela plataforma para que suas tempestades de raio não causem dano em cadeia para a raid; os jogadores de melee e tank devem permanecer grudados nele.",
"* Sua habilidade |cff71d5ff|Hspell:404806|h[Depth Charge]|h|r planta uma carga mortal em um jogador: quem estiver marcado deve pular imediatamente para a água para que a explosão não cause dano ou empurre o grupo.",
"* Tenha cuidado ao cair na água: os redemoinhos o empurram para baixo; os jogadores de melee devem escalar com orbes de velocidade ou pulando, enquanto os jogadores de dano à distância podem continuar atacando de baixo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["204068"] = { "Lady Sarevess",
"* Ela é protegida por guardas de elite: controle a multidão (polimorfia, armadilhas) e concentre o dano nela.",
"* Sua |cff71d5ff|Hspell:407546|h[Flecha Congelante]|h|r congela quem atingir (o curandeiro os libera com um dispel) e, quando ela aponta sua |cff71d5ff|Hspell:407653|h[Raio Bifurcado]|h|r para alguém, o jogador marcado sai do grupo.",
"* Se ela coloca |cff71d5ff|Hspell:407791|h[Fúria de Aku'mai]|h|r em um jogador, dispela assim que o curandeiro a vir; seus poços no chão são evitados."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["204921"] = { "Gelihast",
"* A luta alterna fases de dano e transição: sempre que ele perde cerca de 30% de sua vida, ele se torna imune no centro da sala.",
"* Durante a transição, surgem tentáculos e projéteis: desvie-os ou destrua os tentáculos até que ele fique novamente vulnerável.",
"* Seu |cff71d5ff|Hspell:411956|h[Maldição do Mar]|h|r é removido com dispels de maldição, e seu |cff71d5ff|Hspell:412456|h[Marcha dos Murlocs]|h|r traz ondas das laterais: elimine-as rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["207356"] = { "Lorgus Jett",
"* Seus totems são a prioridade máxima: baixo nível de vida e efeitos brutais; mate-os instantaneamente (o |cff71d5ff|Hspell:419636|h[Molten Fury Totem]|h|r causa dano em área e o |cff71d5ff|Hspell:414691|h[Windfury Totem]|h|r aumenta o poder de seu lado).",
"* Se ele começar a curar, o tanque ou o dano devem interrompê-lo assim que estiver disponível.",
"* Ele aplica um debuff no tanque que aumenta o dano recebido: isso exige uma troca de tanque durante a luta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["209678"] = { "Senhor do Crepúsculo Bathiel",
"* Fase 1 (100% a 35%): ele envia dois jogadores aleatórios para o Mundo Sombrio; lá eles matam os padres fantasmas rapidamente para ativar os portais e retornam; na superfície, suas correntes de raio estão SEMPRE interrompidas.",
"* Fase 2 (abaixo de 35%): ele fica furioso e para de enviar pessoas para baixo; torna-se uma corrida de dano com uma Poção de Proteção Sombria tomada antes ou durante a fase: os danos sombrios constantes irão esmagar o grupo, caso contrário.",
"* Sua |cff71d5ff|Hspell:423135|h[Sono]|h|r ainda derruba um jogador aleatório: dispela-o."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["213334"] = { "Aku'mai",
"* Fase 1 (forma de hidra): o tanque principal aplica o debuff de veneno; o tanque secundário ataca no terceiro ou quarto stack para que o primeiro tanque se cure tocando nas fontes elementais da sala (elas summon um add que morre instantaneamente).",
"* Ela é evitada quando lança |cff71d5ff|Hspell:429168|h[Explosão Corrosiva]|h|r: o jogador marcado sai do cone.",
"* Fase 2 (forma de vazio, abaixo de 50%): dano físico aumenta e ela lança explosões escuras (a |cff71d5ff|Hspell:429359|h[Explosão de Vazio]|h|r é evitada da mesma forma); os tanques mantêm a rotação com mais cuidado e o grupo usa cada cooldown para terminá-la."
};

-- Razorfen Downs : Zona 129 --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7354"] = { "Ragglesnout",
"* Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) transforma um jogador CONTRA o grupo: stun-e-o ou remova a magia dele."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7355"] = { "Tuten'kash",
"* A araña do cemitério: sua Maldição de Tut (|cff71d5ff|Hspell:12255|h[Curse of Tut]|h|r) marca um jogador (maldição, remova-a) e seu Spray de Teia (|cff71d5ff|Hspell:12252|h[Web Spray]|h|r) pune os jogadores de combate em área.",
"* Seu veneno aracnídeo ataca o tanque: cura sustentada."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["7356"] = { "Plaguemaw a Podre",
"* Seu Toque Putrefato (|cff71d5ff|Hspell:11442|h[Toque Putrefato]|h|r) é uma Doença em um jogador: o druida a remove."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7357"] = { "Mordresh Olho-de-Fogo",
"* Ele luta em um monte de ossos em meio a uma horda de esqueletos não-elite: o tanque começa com um ataque em área para pegá-los todos, mantendo-os agrupados e o grupo limpa a horda primeiro; não há pressa em atingir o chefe.",
"* Sempre que ele lança sua bola de fogo, o tanque ou os membros do grupo interrompem: cada lançamento interrompido é menos dano recebido.",
"* O curandeiro espera alguns segundos até que o tanque garanta o controle da horda antes de curar fortemente: curas precoces podem remover os esqueletos e acabar com o encontro.",
"* Sua Onda de Fogo (|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r) varre os membros do grupo em seus pés: retire-se."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["7358"] = { "Amnennar, o Frigífero",
"* O frio do cemitério: seu Fúria de Amnennar (|cff71d5ff|Hspell:13009|h[Amnennar's Wrath]|h|r) explode em área — espalhe-se e mantenha a cura forte."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["8567"] = { "Glutton",
"* O Devorador de Carne: entra em Fúria (|cff71d5ff|Hspell:12795|h[Frenzy]|h|r) quando estiver com pouca vida — alto DPS no final."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74347"] = { "Mordresh Olho-de-Fogo",
"* Ele luta em um monte de ossos em meio a uma horda de esqueletos não-elite: o tanque começa com um ataque em área para pegá-los todos, mantendo-os agrupados e o grupo limpa a horda primeiro; não há pressa em atingir o chefe.",
"* Sempre que ele lança sua bola de fogo, o tanque ou os membros do grupo interrompem: cada lançamento interrompido é menos dano recebido.",
"* O curandeiro espera alguns segundos até que o tanque garanta o controle da horda antes de curar fortemente: curas precoces podem remover os esqueletos e acabar com o encontro.",
"* Sua Onda de Fogo (|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r) varre os membros do grupo em seus pés: retire-se."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74412"] = { "Aarux",
"* Sua Teia Enredadora prende um jogador à distância, o puxa para o combate corpo a corpo e planta Plagued Bite ao mesmo tempo (dano de Natureza por 10 segundos e -50% de velocidade de movimento): o curandeiro a elimina ou cura fortemente o preso.",
"* Sua Pústula Explosiva causa dano de Natureza nos próximos: distância e alcance."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["74434"] = { "Amnennar, o Frigífero",
"* Koristrasza alíada abre pozos de Solo Reclamado: mantenha-o à distância, o chão Sobrecarrega e o atordoa por 6 segundos.",
"* Seu Leite da Alma esvazia o jogador marcado (75% do esvaziamento recai sobre ele) e atinge jogadores próximos com Sombra: o jogador marcado ao pisar no Solo Reclamado remove o debuff instantaneamente, e também o atordoa.",
"* Sua Bomba Congelante explode em uma piscina de Frio: afaste-se do gelado no momento em que atingir."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["74435"] = { "Bolônio",
"* Um confronto físico direto: seu Stomp barulhento atinge todo o grupo e pode interromper os conjuradores no meio da magia; os curandeiros devem permanecer alertas e os conjuradores devem controlar o tempo.",
"* Ele dribla e cria bolhas e zumbis aleatoriamente: o tanque os reúne imediatamente e os DPS os destroem (DoTs ou AoE) antes que ataquem o curandeiro."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["74875"] = { "Morta-voz Abrunhal",
"* Seis descargas (sombra e raio) se encadenam entre os jogadores: interrompa os lançamentos sempre que possível.",
"* Ele abre manchas escuras no chão: saia imediatamente, eles desgastam quem permanece.",
"* De vez em quando, ele se protege com um escudo de alma e canaliza atrás dele: quebre a barreira com dano direto para interromper o canal."
};

-- Blackrock Depths : Zona 230 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["8983"] = { "Lorde Golem Argelmach",
"* Um Chain Lightning que salta entre os próximos: espalhem-se enquanto dura.",
"* Ele luta com dois de seus construtos ativos: o tanque os separa e divide o ataque.",
"* Não apressem: os golems caídos não encerram a luta — varram todo o salão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9016"] = { "Bael'gar",
"* Sua explosão de Magma pode ter até 3 camadas em 24 segundos no tanque: rotação do tanque ou um efeito de purificação se disponível.",
"* O summon de Brood lança Fogo aleatoriamente com um minion de lama como presente: o tanque pega-o e ele morre rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9017"] = { "Lorde Incendius",
"* A maldição do Lorde Elemental: remove 100-132 Resistência a Fogo, 30 s e até três vezes: faz com que o alvo se afaste das chamas.",
"* Forte impacto: lança o tanque para trás (lava por toda parte): de volta para uma parede.",
"* A tempestade de fogo pune a área próxima ~30 s e seu ataque flamejante tem alcance de 20 m: os jogadores de combate saem e o curandeiro cobre o ataque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9018"] = { "Suprema Interrogadora Gerstahn",
"* O chefe das salas de interrogatório: seus projéteis sombrios punem os conjuradores — cura atenta e a dispersão da sala."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9019"] = { "Imperador Dagran Thaurissan",
"* Avatar of Flame: 10 s totalmente inmune a la magia con fuego añadido a sus golpes: los lanzadores deben mantenerlos mientras duren.",
"* Mão de Thaurissan: um golpe de fogo que causa atordoamento por 5 s — melhor sem uma pilha para que vários não percam o controle ao mesmo tempo.",
"* Fúria de Ferro: seu machado lança até 3 golpes extras e aumenta seu crítico em 10% por 5 s: o tanque deve manter o ataque com curas.",
"* Princesa Moira Bronzebeard luta ao seu lado: ele a cura repetidamente e pune com magia sagrada e sombra: controle-a ou, se o grupo estiver consumindo rapidamente, finalize-a antes dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9024"] = { "Piromante Sábia Semente",
"* O mago do recinto: fogo em área no grupo — espalhem-se e curem através dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9025"] = { "Lorde Pétror",
"* Seu War Stomp (2 s) pune tudo nas proximidades e interrompe os lançamentos de Earth Shock: espalhem-se e não lancem nela.",
"* A Flame Wave ocorre a cada ~12 s: os jogadores de melee devem sair do raio e retornar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9027"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9028"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9029"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9030"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9031"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9032"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9033"] = { "General Forjaversa",
"* Seu Sunder continua a remover a armadura do tanque, pois se acumula: rotação se acumular.",
"* Crits aceleram sua mão e o Enrage aumenta o dano físico: os curandeiros mantêm a sequência com ele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9034"] = { "Ruine'rel",
"* Ondas de siete enanos espectrales na forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, com Battle Shout e Shockwave nos seus momentos.",
"* O feiticeiro Doom'rel: Shadow Bolt e Maldição de Agonia, invoca um Succubus ou Voidwalker e lança Fear: dispela o Fear e termina a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada vindo de trás e Vanish: ninguém fica com as costas soltas.",
"* O xamã Gloom'rel: totems, Earth Shock e purga de buffs: os totems morrem quando surgem.",
"* O mago Hate'rel: Frost Bolt, Blizzard e Polymorph: interrompe o Polymorph e sai do Blizzard.",
"* O caçador Seeth'rel: atira de longe, coloca armadilhas e solta um pet selvagem: mantenha a distância com cuidado.",
"* O sacerdote Vile'rel: cura a si mesmo com Flash Heal e lança Power Word: Shield e Mind Blast: interrompe nos seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9035"] = { "Ruine'rel",
"* Ondas de siete enanos espectrales na forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, com Battle Shout e Shockwave nos seus momentos.",
"* O feiticeiro Doom'rel: Shadow Bolt e Maldição de Agonia, invoca um Succubus ou Voidwalker e lança Fear: dispela o Fear e termina a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada vindo de trás e Vanish: ninguém fica com as costas soltas.",
"* O xamã Gloom'rel: totems, Earth Shock e purga de buffs: os totems morrem quando surgem.",
"* O mago Hate'rel: Frost Bolt, Blizzard e Polymorph: interrompe o Polymorph e sai do Blizzard.",
"* O caçador Seeth'rel: atira de longe, coloca armadilhas e solta um pet selvagem: mantenha a distância com cuidado.",
"* O sacerdote Vile'rel: cura a si mesmo com Flash Heal e lança Power Word: Shield e Mind Blast: interrompe nos seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9036"] = { "Ruine'rel",
"* Ondas de siete enanos espectrales na forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, com Battle Shout e Shockwave nos seus momentos.",
"* O feiticeiro Doom'rel: Shadow Bolt e Maldição de Agonia, invoca um Succubus ou Voidwalker e lança Fear: dispela o Fear e termina a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada vindo de trás e Vanish: ninguém fica com as costas soltas.",
"* O xamã Gloom'rel: totems, Earth Shock e purga de buffs: os totems morrem quando surgem.",
"* O mago Hate'rel: Frost Bolt, Blizzard e Polymorph: interrompe o Polymorph e sai do Blizzard.",
"* O caçador Seeth'rel: atira de longe, coloca armadilhas e solta um pet selvagem: mantenha a distância com cuidado.",
"* O sacerdote Vile'rel: cura a si mesmo com Flash Heal e lança Power Word: Shield e Mind Blast: interrompe nos seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9037"] = { "Ruine'rel",
"* Ondas de siete enanos espectrales na forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, com Battle Shout e Shockwave nos seus momentos.",
"* O feiticeiro Doom'rel: Shadow Bolt e Maldição de Agonia, invoca um Succubus ou Voidwalker e lança Fear: dispela o Fear e termina a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada vindo de trás e Vanish: ninguém fica com as costas soltas.",
"* O xamã Gloom'rel: totems, Earth Shock e purga de buffs: os totems morrem quando surgem.",
"* O mago Hate'rel: Frost Bolt, Blizzard e Polymorph: interrompe o Polymorph e sai do Blizzard.",
"* O caçador Seeth'rel: atira de longe, coloca armadilhas e solta um pet selvagem: mantenha a distância com cuidado.",
"* O sacerdote Vile'rel: cura a si mesmo com Flash Heal e lança Power Word: Shield e Mind Blast: interrompe nos seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9038"] = { "Ruine'rel",
"* Ondas de siete enanos espectrales na forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, com Battle Shout e Shockwave nos seus momentos.",
"* O feiticeiro Doom'rel: Shadow Bolt e Maldição de Agonia, invoca um Succubus ou Voidwalker e lança Fear: dispela o Fear e termina a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada vindo de trás e Vanish: ninguém fica com as costas soltas.",
"* O xamã Gloom'rel: totems, Earth Shock e purga de buffs: os totems morrem quando surgem.",
"* O mago Hate'rel: Frost Bolt, Blizzard e Polymorph: interrompe o Polymorph e sai do Blizzard.",
"* O caçador Seeth'rel: atira de longe, coloca armadilhas e solta um pet selvagem: mantenha a distância com cuidado.",
"* O sacerdote Vile'rel: cura a si mesmo com Flash Heal e lança Power Word: Shield e Mind Blast: interrompe nos seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9039"] = { "Ruine'rel",
"* Ondas de siete enanos espectrales na forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, com Battle Shout e Shockwave nos seus momentos.",
"* O feiticeiro Doom'rel: Shadow Bolt e Maldição de Agonia, invoca um Succubus ou Voidwalker e lança Fear: dispela o Fear e termina a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada vindo de trás e Vanish: ninguém fica com as costas soltas.",
"* O xamã Gloom'rel: totems, Earth Shock e purga de buffs: os totems morrem quando surgem.",
"* O mago Hate'rel: Frost Bolt, Blizzard e Polymorph: interrompe o Polymorph e sai do Blizzard.",
"* O caçador Seeth'rel: atira de longe, coloca armadilhas e solta um pet selvagem: mantenha a distância com cuidado.",
"* O sacerdote Vile'rel: cura a si mesmo com Flash Heal e lança Power Word: Shield e Mind Blast: interrompe nos seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9040"] = { "Ruine'rel",
"* Ondas de siete enanos espectrales na forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, com Battle Shout e Shockwave nos seus momentos.",
"* O feiticeiro Doom'rel: Shadow Bolt e Maldição de Agonia, invoca um Succubus ou Voidwalker e lança Fear: dispela o Fear e termina a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada vindo de trás e Vanish: ninguém fica com as costas soltas.",
"* O xamã Gloom'rel: totems, Earth Shock e purga de buffs: os totems morrem quando surgem.",
"* O mago Hate'rel: Frost Bolt, Blizzard e Polymorph: interrompe o Polymorph e sai do Blizzard.",
"* O caçador Seeth'rel: atira de longe, coloca armadilhas e solta um pet selvagem: mantenha a distância com cuidado.",
"* O sacerdote Vile'rel: cura a si mesmo com Flash Heal e lança Power Word: Shield e Mind Blast: interrompe nos seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9041"] = { "Carcereiro Stilgiss",
"* O guardião do cofre: seu ogre Verek luta ao seu lado — o tanque separa ou os mantém separados; cura constante."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9056"] = { "Fineous Forçanegra",
"* O gnomo da fundição: um combate em área atrás de um bom tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9156"] = { "Embaixador Fogaçoite",
"* Constant Fire Blast em melee: rotação ou cura no ritmo.",
"* Espíritos Ardentes: elementais pelos runas do salão; aquele que o atinge dá +5% de dano e aumenta o tamanho em até 50 stacks: bloqueie o caminho e elimine-os no caminho."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9319"] = { "Mestre de Matilha Grebmar",
"* O grupo amarrado vem primeiro: AoE e controle nos cães; o mestre no tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9499"] = { "Birra Guardachave",
"* O barman do Guzzler: quando ele ataca, toda a taverna se junta — os clientes chegam em ondas: o tanque deve usar ataques em área e evitar erros."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9502"] = { "Falange",
"* O guarda mecânico do salão da forja: ataque corpo a corpo pesado no tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9537"] = { "Hurley Bafonegro",
"* O bêbado da taverna: um ataque direto atrás de um bom tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9938"] = { "Magmus",
"* O gigante da cidadela: ataques corpo a corpo pesados no tanque e cura constante."
};

-- Lower/Upper Blackrock Spire : Zona 229 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9196"] = { "Grão-lorde Omokk",
"* O lord ogro do degrau: ataque corpo a corpo violento no tanque, cura constante."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9236"] = { "Caçador Sombrio Vosh'gajin",
"* A sacerdotina das sombras: seus projéteis de sombra punem os conjuradores — cura atenta neles."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9237"] = { "Senhor da Guerra Voone",
"* O Mestre da Guerra: um combate direto com um tanque firme."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9568"] = { "Lorde Supremo Wyrmthalak",
"* O senhor da toca: ataques corpo a corpo sustentados e cura constante."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["9736"] = { "Intendente Zigris",
"* O armeiro-chefe: uma luta direta atrás de um bom tanque."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["9816"] = { "Sentinela de Fogo Embervisor",
"* O guardião da forja: uma vez que seu ritual se ativa, ele cai como os outros — um combate direto."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10220"] = { "Halycon",
"* A filha da teia: ataque corpo a corpo no tanque, sem habilidades especiais ativadas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10264"] = { "Solakar Coroa de Chamas",
"* O senhor da incubadora: abrir os ovos gera enxames de Drakonid — ataque em área ao enxame e ataque corpo a corpo sustentado no chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10268"] = { "Gizrul, o Subjugador",
"* O escravista: ataque cuerpo a cuerpo no o tanque, sem armas especiais."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10339"] = { "Warchief Rend Blackhand",
"* O Warchief cai com seu drake Gyth na luta: cura forte no tanque e fique atento ao fogo do drake."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10363"] = { "General Drakkisath",
"* O general do ala superior: seu Conflagration (|cff71d5ff|Hspell:16805|h[Conflagration]|h|r) inflama um jogador — o alvo sai do grupo AGORA enquanto está em chamas."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10429"] = { "Warchief Rend Blackhand",
"* O Warchief cai com seu drake Gyth na luta: cura forte no tanque e fique atento ao fogo do drake."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10430"] = { "A Besta",
"* A Besta: seu rugido aterroriza o grupo e ele ataca o tanque — cura constante."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10509"] = { "Jed Runewatcher",
"* O Runewatcher: ataque cuerpo a cuerpo directo contra o tanque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10584"] = { "Urok Uivo-da-ruína",
"* Nascido do ritual do altar da caverna: o ritual chama hordas — AoE e limpa o combate corpo a corpo antes de atacar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10596"] = { "Mãe Queimateia",
"* A mãe aranha: sua pet de cristalização petrifica um dos membros do grupo e sua mordida venenosa ataca os membros de combate corpo a corpo — atenção à cura."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["10899"] = { "Goraluk Anvilcrack",
"* O ferreiro Drakonid: um combate frontal atrás de um bom tanque."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["16042"] = { "Senhor Valthalak",
"* O Senhor Sagrado: seus summons (|cff71d5ff|Hspell:27249|h[Summon Assassin]|h|r) trazem assassinos — o tanque os pega e o dano corpo a corpo continua atacando."
};

-- Onyxia's Lair : Zona 249 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["10184"] = { "Onyxia",
"* Fase 1 no chão: seu Respiração Flamejante (|cff71d5ff|Hspell:18435|h[Flame Breath]|h|r) pune o tanque, seu Buffet de Asas (|cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r) envia os membros do grupo para trás e seu Knock Away (|cff71d5ff|Hspell:19633|h[Knock Away]|h|r) quebra a aderência do tanque.",
"* Fase 2 no ar: Fireballs (|cff71d5ff|Hspell:18392|h[Fireball]|h|r) nos alvos e sua Respiração Profunda (|cff71d5ff|Hspell:17086|h[Deep Breath]|h|r) varre metade do local — o chat avisando: corra para o lado oposto.",
"* Fase 3 ao pousar: tudo retorna e, em cima disso, seu Rugido Aterrador (|cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r) causa o medo em metade do grupo; as criaturas da caverna se levantam — ataque em área a horda sem perder o ritmo do chefe."
};

-- Dire Maul : Zona 429 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11486"] = { "Príncipe Tortheldrin",
"* O príncipe que guarda os pylons: seus guardas caem primeiro, depois ele.",
"* Su Summons (|cff71d5ff|Hspell:22995|h[Summon]|h|r) preenchem a sala e o Whirling Strike (|cff71d5ff|Hspell:67037|h[Whirling Strike]|h|r) ataca em área — saia."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11487"] = { "Magíster Kalendris",
"* O mago: aos 50% ele usa a forma sombria (|cff71d5ff|Hspell:22917|h[Shadowform]|h|r) e ataca com mais força.",
"* Seu Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) rouba um jogador: remova a magia dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11488"] = { "Illyanna Corvalho",
"* O arqueiro: seu Charge (|cff71d5ff|Hspell:22911|h[Charge]|h|r) atira no alvo mais distante e ninguém fica no Immolation Trap (|cff71d5ff|Hspell:22910|h[Immolation Trap]|h|r).",
"* Concussive Shot (|cff71d5ff|Hspell:22914|h[Concussive Shot]|h|r) desacelera e seu Volley (|cff71d5ff|Hspell:30933|h[Volley]|h|r) atinge em área: o grupo se espalha."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11489"] = { "Gavíneo Lenhatorta",
"* A árvore ancestral: suas {Grasping Vines} (|cff71d5ff|Hspell:22924|h[Grasping Vines]|h|r) se entrelaçam e suas raízes (|cff71d5ff|Hspell:22994|h[Entangle]|h|r) GRAB os ataques corpo a corpo — purgue-os (magia e movimento).",
"* Seu {Trample} (|cff71d5ff|Hspell:5568|h[Trample]|h|r) pune os ataques corpo a corpo."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11490"] = { "Zevrim Thornhoof",
"* Seu Sacrifício (|cff71d5ff|Hspell:22651|h[Sacrifice]|h|r) prende o jogador e envia um demônio: mate o demônio AGORA enquanto o marcado recebe cura.",
"* Dor Intensa (|cff71d5ff|Hspell:22478|h[Intense Pain]|h|r) ataca o marcado: cura.",
"* Seu Raio de Sombra (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) pune na área: o melee se espalha para trás."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11492"] = { "Alzzin o Moldador Selvagem",
"* O metamorfo: ele assume a forma de Árvore (|cff71d5ff|Hspell:22688|h[Tree Form]|h|r) depois a forma de Lobo Dire (|cff71d5ff|Hspell:22660|h[Dire Wolf Form]|h|r) — o combate muda de rosto com cada mudança.",
"* Sua Regeneração Selvagem (|cff71d5ff|Hspell:7948|h[Wild Regeneration]|h|r) SEMPRE interrompível: se atingir, ele fica cheio de vida.",
"* Enervar (|cff71d5ff|Hspell:22661|h[Enervate]|h|r) e Putrefação (|cff71d5ff|Hspell:22662|h[Wither]|h|r) são Doenças: o druida as remove.",
"* Mangle (|cff71d5ff|Hspell:22689|h[Mangle]|h|r) sangra o tanque, suas raízes (|cff71d5ff|Hspell:22415|h[Entangling Roots]|h|r) prendem os conjuradores e Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) os lança."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11496"] = { "Immol'thar",
"* O demônio aprisionado pelos cinco pilares: ele fica LIVRE quando os pilares explodem — toda a sala é o campo de batalha.",
"* Seus Olhos (|cff71d5ff|Hspell:22899|h[Olhos de Immol'thar]|h|r) queimam um jogador e o Passo (|cff71d5ff|Hspell:5568|h[Passo]|h|r) varre os jogadores de combate.",
"* Ele abre Portais (|cff71d5ff|Hspell:22950|h[Portal de Immol'thar]|h|r) que lançam criaturas: ataque em área o anel enquanto o tanque mantém a posição."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11501"] = { "Rei Gordok",
"* O ataque do Berserker do Rei (|cff71d5ff|Hspell:22886|h[Berserker Charge]|h|r) arremessa o alvo, seu Mortal Strike (|cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r) ATINGE o tanque (rotate dois) e War Stomp (|cff71d5ff|Hspell:16727|h[War Stomp]|h|r) causa stun na área.",
"* Seu Sunder Armor (|cff71d5ff|Hspell:15572|h[Sunder Armor]|h|r) se acumula no tanque: fortes curas atentas.",
"* Para a corrida de tributo: cada guarda VIVO quando ele cai enche o peito de Mizzle."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["13280"] = { "Espawn de Água",
"* A bomba de água do santuário: seu Riptide (|cff71d5ff|Hspell:22419|h[Riptide]|h|r) atinge em área — os personagens de combate se espalham.",
"* Seu Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) explode sob seus pés: evite a piscina.",
"* A 66% e 33% ele SUMMONA hydrolings (|cff71d5ff|Hspell:22714|h[Summon Hydroling]|h|r): ataque em área os minions e volte para o tanque."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14321"] = { "Guarda Fengus",
"* Um guarda de palácio sem habilidades registradas — um confronto direto atrás de um tanque estável em puxões limpos."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14322"] = { "Stomper Kreeg",
"* O bêbado do tribunal: seu Booze Spit (|cff71d5ff|Hspell:22833|h[Booze Spit]|h|r) atinge em um cone e seu War Stomp (|cff71d5ff|Hspell:16740|h[War Stomp]|h|r) treme na área.",
"* Whirlwind (|cff71d5ff|Hspell:15578|h[Whirlwind]|h|r) ataca os jogadores de melee e, em 50%, o Drunken Rage (|cff71d5ff|Hspell:22835|h[Drunken Rage]|h|r) o ilumina: cura pronta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14323"] = { "Guarda Slip'kik",
"* Outro guarda de palácio sem habilidades registradas — ataque ao tanque e sem erros."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14324"] = { "Cho'Rush o Observador",
"* O curandeiro do tribunal: seus curas não alertam — interrompa todos os lançamentos verdes à vista.",
"* Para a corrida de tributo, paga-se a deixá-lo vivo: os guardas de pé quando o rei cai enchem o peito de Mizzle."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14325"] = { "Capitão Kromcrush",
"* Gordok, o capitão da guarda, sem habilidades especiais registradas — posicione o tanque na frente e o grupo alerta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14326"] = { "Guarda Mol'dar",
"* Shield Bash (|cff71d5ff|Hspell:11972|h[Shield Bash]|h|r) interrompe e Shield Charge (|cff71d5ff|Hspell:15749|h[Shield Charge]|h|r) aplica o STAMPE no alvo: mantenha distância e uma posição traseira clara.",
"* Seu Golpe (|cff71d5ff|Hspell:14516|h[Strike]|h|r) ataca o tanque e em 50% entra em Frenesi (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): alto DPS no final."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["14327"] = { "Lethtendris",
"* Seus projéteis de Shadow Bolt (|cff71d5ff|Hspell:17228|h[Shadow Bolt]|h|r) caem em área: os personagens de melee se espalham.",
"* Seus malefícios (|cff71d5ff|Hspell:13338|h[Curse of Thorns]|h|r e |cff71d5ff|Hspell:16247|h[Curse of Tongues]|h|r) são removidos e o Immolate (|cff71d5ff|Hspell:11962|h[Immolate]|h|r) queima os marcados.",
"* Sua criatura Pimgib ENFORÇA (|cff71d5ff|Hspell:22710|h[Enlarge]|h|r, purga-a), lança o Flame Buffet (|cff71d5ff|Hspell:22713|h[Flame Buffet]|h|r) que se EMPILHA e sua Blast Wave (|cff71d5ff|Hspell:15744|h[Blast Wave]|h|r) atinge em área."
};

-- Molten Core : Zona 409 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11502"] = { "Ragnaros",
"* Sua Fúria de Ragnaros (|cff71d5ff|Hspell:20566|h[Wrath of Ragnaros]|h|r) pune as fileiras da frente: o tanque mantém a posição com cura e os jogadores de melee permanecem dispersos.",
"* Ele SUBMERGE a cada ~3 minutos: seus Filhos da Chama emergem das profundezas — o tanque os afasta e eles morrem antes que ele retorne (~90 s)."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11663"] = { "Senescal Executus",
"* O Teleporte (|cff71d5ff|Hspell:20534|h[Teleport]|h|r) reorganiza a TODO o grupo: reforme sem perder DPS e os membros da melee retornam à posição.",
"* A Escudo de Dano (|cff71d5ff|Hspell:21075|h[Damage Shield]|h|r) ataca os membros da melee enquanto corre: os membros da melee PARAM no momento em que dura.",
"* Seus flamewakers curam e protegem a si mesmos: interrompa primeiro nos curas, o resto vai para o majordomo no final."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11664"] = { "Senescal Executus",
"* O Teleporte (|cff71d5ff|Hspell:20534|h[Teleport]|h|r) reorganiza a TODO o grupo: reforme sem perder DPS e os membros da melee retornam à posição.",
"* A Escudo de Dano (|cff71d5ff|Hspell:21075|h[Damage Shield]|h|r) ataca os membros da melee enquanto corre: os membros da melee PARAM no momento em que dura.",
"* Seus flamewakers curam e protegem a si mesmos: interrompa primeiro nos curas, o resto vai para o majordomo no final."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11982"] = { "Magmadar",
"* Sua Lava Breath causa Pânico (|cff71d5ff|Hspell:19408|h[Panic]|h|r): o tanque o afasta do grupo; os runners com medo vão para o fogo — cura atenta.",
"* Seu Frenzy (|cff71d5ff|Hspell:19451|h[Frenzy]|h|r) em baixa saúde aumenta seu dano: o caçador Tranquilizing Shots o derruba ou o tanque mantém com curas."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11988"] = { "Golemagg, o Incinerador",
"* Seu Terremoto (|cff71d5ff|Hspell:19798|h[Earthquake]|h|r) atinge os jogadores de perto: os jogadores de melee mantêm a distância com um ataque de cabeça.",
"* Os dois lava ragers vêm com ele: o tanque os separa, eles não recebem ataques de Reckless, e o DPS permanece no chefe."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12018"] = { "Senescal Executus",
"* O Teleporte (|cff71d5ff|Hspell:20534|h[Teleport]|h|r) reorganiza a TODO o grupo: reforme sem perder DPS e os membros da melee retornam à posição.",
"* A Escudo de Dano (|cff71d5ff|Hspell:21075|h[Damage Shield]|h|r) ataca os membros da melee enquanto corre: os membros da melee PARAM no momento em que dura.",
"* Seus flamewakers curam e protegem a si mesmos: interrompa primeiro nos curas, o resto vai para o majordomo no final."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12056"] = { "Barão Geddon",
"* Seu Ignite Mana (|cff71d5ff|Hspell:19659|h[Ignite Mana]|h|r) ataca conjuradores e, se o mana acabar, explode sobre eles: os conjuradores gerenciam sua reserva de mana.",
"* A BOMB (|cff71d5ff|Hspell:20475|h[Inferno]|h|r) prepara um jogador para explodir: o marcado corre FORA do grupo antes da detonação."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12057"] = { "Garr",
"* Su Shackles de Magma (|cff71d5ff|Hspell:19496|h[Magma Shackles]|h|r) ROOT a área: o atacante interrompe o ritmo e retorna; seu Immolate (|cff71d5ff|Hspell:15732|h[Immolate]|h|r) ataca um jogador com fogo sustentado.",
"* O Pulso Anti-Magia (|cff71d5ff|Hspell:19492|h[Anti-Magic Pulse]|h|r) LIMPA os buffs mágicos do grupo: as escudos voltam a subir após cada pulso.",
"* Seus Firesworn explodem na morte (|cff71d5ff|Hspell:20506|h[Firesworn]|h|r): o atacante se afasta dos cadáveres — AoE estável até que todos sejam varridos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12098"] = { "Emissário de Sulfuron",
"* Seus 4 curandeiros de chamas vão PRIMEIRO: interrompa seus curas sempre que ele as projete e elimine-os antes dele.",
"* Seu Inspire (|cff71d5ff|Hspell:19779|h[Inspire]|h|r) ocorre no momento em que atinge: o caçador o derruba ou ele é purificado.",
"* A Mão de Ragnaros (|cff71d5ff|Hspell:19780|h[Hand of Ragnaros]|h|r) atordoa e espalha na área — espalhem-se; sua Shadow Word: Pain (|cff71d5ff|Hspell:19776|h[Shadow Word: Pain]|h|r) e Immolate (|cff71d5ff|Hspell:20294|h[Immolate]|h|r) atingem os marcados que curam."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12099"] = { "Garr",
"* Su Shackles de Magma (|cff71d5ff|Hspell:19496|h[Magma Shackles]|h|r) ROOT a área: o atacante interrompe o ritmo e retorna; seu Immolate (|cff71d5ff|Hspell:15732|h[Immolate]|h|r) ataca um jogador com fogo sustentado.",
"* O Pulso Anti-Magia (|cff71d5ff|Hspell:19492|h[Anti-Magic Pulse]|h|r) LIMPA os buffs mágicos do grupo: as escudos voltam a subir após cada pulso.",
"* Seus Firesworn explodem na morte (|cff71d5ff|Hspell:20506|h[Firesworn]|h|r): o atacante se afasta dos cadáveres — AoE estável até que todos sejam varridos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12118"] = { "Lúcifron",
"* Sua Impending Doom (|cff71d5ff|Hspell:19702|h[Impending Doom]|h|r) explode sobre todo o grupo segundos após acertar: a cura mantém a linha.",
"* Sua maldição (|cff71d5ff|Hspell:19703|h[Lucifron's Curse]|h|r) faz com que os feitiços custem mais — desfaça-a rapidamente; os conjuradores mantêm a margem de mana.",
"* Seu Mind Control (|cff71d5ff|Hspell:20604|h[Mind Control]|h|r) afeta um jogador: os interrupções do grupo a quebram e o jogador marcado sobrevive com a cura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12259"] = { "Geena",
"* Sua maldição (|cff71d5ff|Hspell:19716|h[Maldição de Gehennas]|h|r) Cura de GUTS — desfaça-a AGORA; os conjuradores sofrem o alcance da sua chuva.",
"* A Chuva de Fogo (|cff71d5ff|Hspell:19717|h[Rain of Fire]|h|r) cai em áreas: espalhem-se; seu Punho (|cff71d5ff|Hspell:20277|h[Fist of Gehennas]|h|r) ataca os alvos marcados.",
"* Seus dois guardas sombrios o acompanham: um para o tanque, um com ataque em área, ninguém se desvia do controle."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12264"] = { "Shazzrah",
"* Sua maldição (|cff71d5ff|Hspell:19713|h[Shazzrah's Curse]|h|r) deixa o grupo vulnerável a magia: desfaça-a.",
"* Sua habilidade Deaden Magic (|cff71d5ff|Hspell:19714|h[Deaden Magic]|h|r) pune os conjuradores marcados: cura atenta; e sua Counterspell (|cff71d5ff|Hspell:19715|h[Counterspell]|h|r) silencia os conjuradores.",
"* Ele avança pelo grupo (|cff71d5ff|Hspell:23138|h[Gate of Shazzrah]|h|r): o tanque o re-gronda sem perder o controle."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228432"] = { "Garr",
"* As mesmas Correntes de Magma (19496), marcadas com Immolate (15732) e Anti-Magic Pulse (19492), como na versão clássica: o remake é mais forte — cura e área mantêm a linha.",
"* Firesworn ainda explodem ao morrer: os personagens de combate se afastam dos cadáveres."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228437"] = { "Senescal Executus",
"* O Teleporte (20534) reorganiza o grupo como no clássico e o seu Escudo de Dano (21075) interrompe ataques corpo a corpo: mesmos reflexos, golpes mais pesados.",
"* Os seus curandeiros curam: interrompa os seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228834"] = { "Garr",
"* As mesmas Correntes de Magma (19496), marcadas com Immolate (15732) e Anti-Magic Pulse (19492), como na versão clássica: o remake é mais forte — cura e área mantêm a linha.",
"* Firesworn ainda explodem ao morrer: os personagens de combate se afastam dos cadáveres."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228836"] = { "Senescal Executus",
"* O Teleporte (20534) reorganiza o grupo como no clássico e o seu Escudo de Dano (21075) interrompe ataques corpo a corpo: mesmos reflexos, golpes mais pesados.",
"* Os seus curandeiros curam: interrompa os seus curas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["228837"] = { "Senescal Executus",
"* O Teleporte (20534) reorganiza o grupo como no clássico e o seu Escudo de Dano (21075) interrompe ataques corpo a corpo: mesmos reflexos, golpes mais pesados.",
"* Os seus curandeiros curam: interrompa os seus curas primeiro."
};

-- Ragefire Chasm : Zona 389 (classic) --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11517"] = { "Oggleflint",
"* Ataque de área frontal (cleave/gore): o tanque o enfrenta para que o dano frontal nunca atinja aos membros do grupo ou ao curandeiro.",
"* Mate os seus súditos primeiro."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11518"] = { "Jergosh o Convocador",
"* Ele vem com duas miniaturas: uma para controle de multidão, outra para focar dano, e quando ambas estiverem mortas, o resto é apenas um combate de tanque e dano.",
"* Sua |cff71d5ff|Hspell:20800|h[Immolate]|h|r causa dano intenso (remova-o rapidamente) e sua |cff71d5ff|Hspell:18267|h[Curse of Weakness]|h|r reduz o dano e a força: remova-o com um dispelar mágico."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11519"] = { "Bazzalan",
"* Ele está no topo da rampa final, com dois fanáticos ao seu lado: você pode puxar um minion individualmente antes de atacar o chefe.",
"* Controle os minions restantes e cause dano ao chefe; preste atenção ao |cff71d5ff|Hspell:744|h[Veneno Mortal]|h|r dele no tanque: ele nunca desaparece, deve ser limpo (cura do druida ou antídoto)."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["11520"] = { "Taragaman o Faminto",
"* Seus |cff71d5ff|Hspell:11970|h[Fire Nova]|h|r atingem tudo ao seu redor: jogadores de combate, afaste-se antes de atingir; jogadores de distância e curandeiros, mantenham-se na distância máxima.",
"* Seu |cff71d5ff|Hspell:18072|h[Uppercut]|h|r envia o tanque para o alto: posicione-o longe das bordas de lava para que o efeito de arremesso não envie ninguém para a rocha derretida."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61408"] = { "Adarogg",
"* Ele fixa o olhar em um jogador e corre para aquele ponto (Inferno Charge): atinge todos na sua trajetória ou perto do impacto; o marcado corre para fora da faixa e o grupo não a atravessa.",
"* Sua Respiração de Fogo inflama um alvo aleatório: os curandeiros permanecem ativos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61412"] = { "Xamã Sombrio Koranthal",
"* Seu raio de Elementos Distorcidos (dano de sombra) é interrompível: cada lançamento interrompido é dano que nunca atinge.",
"* Sua Tempestade de Sombra lança magia distorcida sobre a área: espalhem-se com curandeiros prontos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61463"] = { "Goela de Fogo",
"* Uma luta de introdução suave: ele cospe lava em um local aleatório de um jogador e atinge dentro de 3 jardas; saia do projétil.",
"* Depois de exatamente cinco cospejos, ele mergulha e reaparece em outro lado da plataforma: reorganize as posições quando ele reaparecer.",
"* Seu hitbox é enorme: os ataques corpo a corpo o derrotam confortavelmente da plataforma sem se inclinar sobre a fenda de lava."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["61528"] = { "Guarda Magmático Gordoth",
"* Seu Seismic Slam e Ground Rupture punem a área circundante com dano físico e arremessos: tanque e jogadores de melee devem prestar atenção ao seu pé e não se agrupar.",
"* Quando estiver com 30% de vida, ele entra em fúria (+30% de velocidade de ataque e +10% de dano): uma corrida final para causar dano com a ajuda dos curandeiros."
};

-- Blackwing Lair : Zona 469 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11583"] = { "Nefarian",
"* Fase 1: ondas de minions caem das paredes laterais da sala — o tanque as mantém e elas são eliminadas sem perder o fio.",
"* Os Chamados da Classe chegam a cada ~30 s: cada um espreme uma classe diferente — leia o aviso no chat e mantenha a calma.",
"* Seu Fogo Sombrio (|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r) pune a frente e seu Rugido (|cff71d5ff|Hspell:22686|h[Roar]|h|r) TEM a facção: espalhe, cura constante e um tanque firme.",
"* Fase 3 ao pousar: as pilhas de ossos liberam esqueletos — AoE com a cabeça."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11981"] = { "Flamagor",
"* Sua Chama das Sombras (22539) e o Wing Buffet (23339): o mesmo jogo de coluna.",
"* Sua Frenzy (|cff71d5ff|Hspell:23342|h[Frenzy]|h|r) é calmada sob um Tranquilizing Shot: o caçador a silencia no momento em que ela aparece."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["11983"] = { "Fogorja",
"* Sua Chama Sombria (|cff71d5ff|Hspell:22539|h[Shadow Flame]|h|r) varre à frente: os conjuradores atrás das colunas cortam a linha de visão.",
"* O Banquete de Chamas (|cff71d5ff|Hspell:23341|h[Flame Buffet]|h|r) aplica dano mágico a todos que permaneçam visíveis: mantenha-se atrás da coluna e o Banquete de Asas (|cff71d5ff|Hspell:23339|h[Wing Buffet]|h|r) envia o tanque para o ar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12017"] = { "Prolemestre Flagelador",
"* Sua Onda de Explosão (|cff71d5ff|Hspell:23331|h[Onda de Explosão]|h|r) atira em qualquer um perto dele pela sala: espalhe-se e ataque em grupo com vantagem.",
"* Knock Away (|cff71d5ff|Hspell:18670|h[Knock Away]|h|r) atira nos próximos e sua Ferida Mortal (|cff71d5ff|Hspell:24573|h[Ferida Mortal]|h|r) se acumula no tanque: dois tanques trocando por vez."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["12435"] = { "Violâminus, o Indomado",
"* Fase 1: o grupo quebra os OVOS do corral um a um; ondas de minions e dragões chegam — AoE com um golpe e cura no tanque.",
"* Fase 2, ovos esgotados, o chefe cai sozinho: o seu Fireball Volley (|cff71d5ff|Hspell:22425|h[Fireball Volley]|h|r) pune em área e a sua Conflagration (|cff71d5ff|Hspell:23023|h[Conflagration]|h|r) inflama os marcados — espalhe e cure."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["13020"] = { "Vaelastrasz, o Corrupto",
"* Sua Respiração Flamejante (|cff71d5ff|Hspell:23461|h[Respiração Flamejante]|h|r) ataca o tanque: cura forte e rotação se ele atacar.",
"* A Essência Vermelha (|cff71d5ff|Hspell:18173|h[Essência Vermelha]|h|r) banha TODO o grupo em mana e velocidade: a luta continua em ritmo acelerado, o DPS nunca diminui."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["14020"] = { "Cromaggus",
"* Seus dois ataques giram aleatoriamente pelo salão: cada um pinta sua própria área — os jogadores de combate se reposicionam para o que atingir.",
"* As quatro Afflições: Vermelha (|cff71d5ff|Hspell:23155|h[Brood Affliction: Red]|h|r) é a Doença e Cura, se ninguém a remover; Verde (|cff71d5ff|Hspell:23169|h[Brood Affliction: Green]|h|r) é veneno; Azul (|cff71d5ff|Hspell:23153|h[Brood Affliction: Blue]|h|r) é magia; Preta (|cff71d5ff|Hspell:23154|h[Brood Affliction: Black]|h|r) é uma maldição — remove todas as formas da tripulação.",
"* Seu Frenzy (|cff71d5ff|Hspell:23128|h[Frenzy]|h|r) é acalmado por um Tranquilizing Shot e o Enrage (|cff71d5ff|Hspell:23537|h[Enrage]|h|r) chega no final: os DPS correm contra o tempo."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["14601"] = { "Petrébano",
"* Sua Chama das Sombras (22539) e o Wing Buffet (23339) espelham Firemaw: atrás das colunas.",
"* Sua Chama das Sombras (|cff71d5ff|Hspell:23340|h[Shadow of Ebonroc]|h|r) marca o tanque: com a marca, CADA golpe contra ele cura o dragão — dois tanques e uma troca no momento em que ele corre."
};

-- Temple of Ahn'Qiraj : Zona 531 (classic) --

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15263"] = { "Profeta Skeram",
"* Ele teletransporta pela sala (|cff71d5ff|Hspell:20449|h[Teleport]|h|r) e cria um bando de DUPLICATAS (|cff71d5ff|Hspell:747|h[Summon Duplicate]|h|r) à sua imagem: o tanque mantém o original e os clones caem no final.",
"* Seu Controle Mental (|cff71d5ff|Hspell:785|h[Mind Control]|h|r) pega um jogador: o marcado o usa para escapar enquanto o grupo o liberta."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15275"] = { "Os Imperadores Gemelos",
"* Os gêmeos trocam de lugar constantemente (|cff71d5ff|Hspell:800|h[Teleporte]|h|r): o tanque se reconecta e os DPS se espalham.",
"* O gêmeo de combate desequilibra o tanque (|cff71d5ff|Hspell:26613|h[Golpe de Desequilíbrio]|h|r) e o outro ataca os conjuradores — dois tanques, um por gêmeo.",
"* Os insetos mutados (|cff71d5ff|Hspell:802|h[Inseto Mutado]|h|r) saem do chão — AoE com a cabeça, sem esquecer dos gêmeos."
};

-- [editor web 2026-10-14] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["15276"] = { "Os Imperadores Gemelos",
"* Os gêmeos trocam de lugar constantemente (|cff71d5ff|Hspell:800|h[Teleporte]|h|r): o tanque se reconecta e os DPS se espalham.",
"* O gêmeo de combate desequilibra o tanque (|cff71d5ff|Hspell:26613|h[Golpe de Desequilíbrio]|h|r) e o outro ataca os conjuradores — dois tanques, um por gêmeo.",
"* Os insetos mutados (|cff71d5ff|Hspell:802|h[Inseto Mutado]|h|r) saem do chão — AoE com a cabeça, sem esquecer dos gêmeos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15299"] = { "Viscidus",
"* O ataque de veneno (|cff71d5ff|Hspell:25991|h[Poison Bolt Volley]|h|r) pune em ondas: os curandeiros mantêm o ritmo.",
"* O FROST o congela: a escola de FROST o ataca até que ele congele; o físico o quebra — os membros de combate entram para quebrar quando o gelo acabar.",
"* Ele se reforma e o ciclo se repete: paciência com a sala e cura de mana."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15509"] = { "Princesa Huhuran",
"* Seu ataque (|cff71d5ff|Hspell:26180|h[Wyvern Sting]|h|r) marca um jogador e seu veneno (|cff71d5ff|Hspell:26053|h[Noxious Poison]|h|r) cobre o grupo: cure através e saia da piscina.",
"* O ácido atinge o tanque (|cff71d5ff|Hspell:26050|h[Acid Spit]|h|r) e sua Frenesi (|cff71d5ff|Hspell:26051|h[Frenzy]|h|r) silencia sob um Tiro Tranquilizante — o caçador de guarda.",
"* A 30% ela entra em FÚRIA (|cff71d5ff|Hspell:26068|h[Berserk]|h|r): total velocidade até cair — DPS e cura na beira."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15510"] = { "Fankriss, o Obstinado",
"* Seu Entangle (|cff71d5ff|Hspell:720|h[Entangle]|h|r) deixa vários amarrados: corte as teias sem deixar a linha.",
"* A Ferida Mortal (|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r) empilha o tanque: dois tanques; seus vermes invocados (|cff71d5ff|Hspell:25831|h[Worm Call]|h|r|cff71d5ff|Hspell:26631|h[Worm Spawn]|h|r) chegam em rodada após rodada — AoE com a cabeça."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15511"] = { "Realeza Silithid",
"* Três reis ao mesmo tempo: o tanque abre em ordem e o dano elimina um por um.",
"* Seus curas (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r) são interrompidos SEMPRE; o Medo (|cff71d5ff|Hspell:26580|h[Fear]|h|r) espalha o grupo — espalhe e mantenha.",
"* O Salto Tóxico (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r) ataca os dano: veneno para curar através."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15516"] = { "Guarda de Batalha Sartura",
"* Sua Whirlwind (|cff71d5ff|Hspell:26083|h[Whirlwind]|h|r) gira pela sala e muda seu alvo no momento: os personagens de combate se afastam quando começa e o tanque a re-granda quando ela muda.",
"* Em baixa saúde, ela entra em fúria (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): os DPS atacam e o curandeiro mantém o ataque.",
"* Seus guardas reais vêm com ela: um tanque separado."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15517"] = { "Ouroboros",
"* Seu Sweep (|cff71d5ff|Hspell:26103|h[Sweep]|h|r) arremessa o tanque pela sala: para a parede, para que a pegada nunca caia.",
"* Ele SUBMERGE a cada ~3 minutos e deixa o chão cheio de scarabs: AoE sem esforço enquanto ele estiver fora.",
"* Sua Fúria (|cff71d5ff|Hspell:26615|h[Berserk]|h|r) está à frente: o DPS corre para chegar antes."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15543"] = { "Realeza Silithid",
"* Três reis ao mesmo tempo: o tanque abre em ordem e o dano elimina um por um.",
"* Seus curas (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r) são interrompidos SEMPRE; o Medo (|cff71d5ff|Hspell:26580|h[Fear]|h|r) espalha o grupo — espalhe e mantenha.",
"* O Salto Tóxico (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r) ataca os dano: veneno para curar através."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15544"] = { "Realeza Silithid",
"* Três reis ao mesmo tempo: o tanque abre em ordem e o dano elimina um por um.",
"* Seus curas (|cff71d5ff|Hspell:25807|h[Greater Heal]|h|r) são interrompidos SEMPRE; o Medo (|cff71d5ff|Hspell:26580|h[Fear]|h|r) espalha o grupo — espalhe e mantenha.",
"* O Salto Tóxico (|cff71d5ff|Hspell:25812|h[Toxic Volley]|h|r) ataca os dano: veneno para curar através."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15589"] = { "C'Thun",
"* O olho se abre com seu feixe rotativo: o grupo se espalha e ninguém fica na linha de fogo.",
"* Garras e tentáculos do olho brotam a cada poucos segundos: as garras atacam em melee e os olhos em range — elimine-os sem demora e os gigantes no tanque.",
"* Cada janela de enfraquecimento (~45 s) é a hora do DPS para máxima potência: elimine tudo o que restar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15727"] = { "C'Thun",
"* O olho se abre com seu feixe rotativo: o grupo se espalha e ninguém fica na linha de fogo.",
"* Garras e tentáculos do olho brotam a cada poucos segundos: as garras atacam em melee e os olhos em range — elimine-os sem demora e os gigantes no tanque.",
"* Cada janela de enfraquecimento (~45 s) é a hora do DPS para máxima potência: elimine tudo o que restar."
};

-- Ruins of Ahn'Qiraj : Zona 509 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15339"] = { "Ossirian, o Intocado",
"* Seu Modo Supremo (|cff71d5ff|Hspell:25176|h[Supreme Mode]|h|r) é imune até o próximo cristal: a sala corre para iluminá-los.",
"* Cada cristal causa uma fraqueza (Fogo 25177, Gelo 25178, Natureza 25180, Arcana 25181, Sombra 25183): o DPS ataca com a escola de dano correspondente no momento em que ela atingir.",
"* O Ciclone (|cff71d5ff|Hspell:25189|h[Cyclone]|h|r) gira os alvos marcados e sua Maldição das Línguas (|cff71d5ff|Hspell:25195|h[Curse of Tongues]|h|r) desacelera os conjuradores — maldição para remover."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15340"] = { "Moam",
"* Sua aura de drenagem de mana espreme os conjuradores: drenagem de mana e DPS vigilantes.",
"* Sua forma de Pedra (|cff71d5ff|Hspell:25685|h[Stone Form]|h|r) congela seu combate quando está com pouca vida e desperta seus minions: PUSH o DPS antes que ele petrifeie."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15341"] = { "General Rajaxx",
"* A onda de ataque do banner: os primeiros com seus capitães, os últimos com o próprio general — o tanque abre cada onda e ela é eliminada em ordem.",
"* Seu \"Thunder Crash\" (|cff71d5ff|Hspell:25599|h[Thunder Crash]|h|r) pune em área: espalhar; a névoa da peste atinge o chão — fora da área."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15348"] = { "Korinnaxx",
"* Su Armadilha de Areia (|cff71d5ff|Hspell:25656|h[Sand Trap]|h|r) engole os marcados: o tanque se move quando ela atinge nele e cura os caídos.",
"* Sua Ferida Mortal (|cff71d5ff|Hspell:25646|h[Mortal Wound]|h|r) se acumula no tanque: dois tanques trocando turnos; e sua Frenesi (|cff71d5ff|Hspell:26527|h[Frenzy]|h|r) no final da linha — DPS faz sua parte."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15369"] = { "Ayamiss, o Caçador",
"* Seu Paralisia (|cff71d5ff|Hspell:25725|h[Paralyze]|h|r) marca o sacrifício no ALTAR: cura imediata no paralisado enquanto durar.",
"* Quando está com pouca vida, fica no ar: só ataques à distância o atingem — os ataques corpo a corpo ficam no chão."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15370"] = { "Buru, o Banqueteador",
"* Ele escolhe um jogador e persegue: o jogador perseguido o afasta do grupo.",
"* Seus ovos explodem em seu caminho e o ferem: o jogador perseguido o leva sobre eles para o finalizar.",
"* Seu Dismember (|cff71d5ff|Hspell:96|h[Dismember]|h|r) se acumula no tanque que ele atinge: forte posição quando morde."
};

-- Naxxramas : Zona 533 (classic) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15928"] = { "Thaddius",
"* Os constructos abrem com explosões no tanque: espalhando e até mesmo curando.",
"* A Polarity Shift (|cff71d5ff|Hspell:28089|h[Polarity Shift]|h|r) afeta TODO o grupo: bônus em um lado, menos no outro — NINGUÉM muda de lado."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15931"] = { "Grobbulus",
"* A Injeção Mutante (|cff71d5ff|Hspell:28169|h[Mutating Injection]|h|r) marca um jogador e a Nuvem Tóxica (|cff71d5ff|Hspell:28240|h[Poison Cloud]|h|r) fica tóxica quando explode: o jogador marcado se afasta do grupo antes que ela exploda."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15932"] = { "Gluth",
"* O Decimate (|cff71d5ff|Hspell:28374|h[Decimate]|h|r) reduz o grupo inteiro para 5% de vida: cura forte quando chamado.",
"* Os zumbis da sala MARCHAM em direção a ele e o curam ao toque: corte o caminho e deixe o AoE terminá-los.",
"* Seu Frenzy (|cff71d5ff|Hspell:28371|h[Frenzy]|h|r) é silenciado por um Tranquilizing Shot e seu Enrage (|cff71d5ff|Hspell:26662|h[Enrage]|h|r) aparece no final: DPS para finalizar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15936"] = { "Heigan, o Sujo",
"* O chão EXPLODE em rodadas: sua dança impura (|cff71d5ff|Hspell:29350|h[Unclean Dance]|h|r) guia o grupo através do padrão de quatro arcos — aprenda os passos e mantenha os olhos no chão.",
"* De vez em quando, ele salta ao lado de um jogador (|cff71d5ff|Hspell:30211|h[Teleport]|h|r): corridas marcadas e cura no local.",
"* Sua aflição impura (|cff71d5ff|Hspell:29998|h[Unclean Affliction]|h|r) se constrói sobre o tocado: doença removida precocemente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15952"] = { "Maexxna",
"* Sua teia envolve (|cff71d5ff|Hspell:28622|h[Web Wrap]|h|r): corte a teia imediatamente.",
"* Se filhotes de aranha (|cff71d5ff|Hspell:29434|h[Summon Spiderlings]|h|r) atacam com cada lançamento de teia: ataque em área no seu caminho.",
"* O spray (|cff71d5ff|Hspell:29484|h[Web Spray]|h|r) ataca o GRUPO INTEIRO a cada turno e o Frenzy (|cff71d5ff|Hspell:28747|h[Frenzy]|h|r) morde no final: o DPS fica em 30%."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15953"] = { "Grã-viúva Faerlina",
"* The Widow's Embrace ( |cff71d5ff|Hspell:28732|h[Widow's Embrace]|h|r) a SILENCIA enquanto dura: derrubar seus seguidores a fortalece.",
"* Quando o abraço termina, seu Frenzy ( |cff71d5ff|Hspell:28131|h[Frenzy]|h|r) toma efeito: cura forte e DPS para fechar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15954"] = { "Noth, o Pestífero",
"* Ele TELEPORTS para as varandas (|cff71d5ff|Hspell:29208|h[Blink]|h|r) a cada turno: os minions esqueléticos ficam abaixo — o AoE os elimina enquanto isso.",
"* A maldição de praga (|cff71d5ff|Hspell:29213|h[Curse of the Plaguebringer]|h|r) ataca os marcados: remova-a AGORA ou ela detonará quando ele retornar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15956"] = { "Anub'Rekhan",
"* Sua Tempestade de Locustos (|cff71d5ff|Hspell:28785|h[Locust Swarm]|h|r) varre a sala: entre no o centro em CIRCULO quando ele chamar e retorne ao ponto de apoio quando passar.",
"* Seu Império (|cff71d5ff|Hspell:28783|h[Impale]|h|r) atinge os próximos: ataque com margem e um tanque firme."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15989"] = { "Sapphiron",
"* Sua habilidade de drenar a vida (|cff71d5ff|Hspell:28542|h[Life Drain]|h|r) ataca os marcados: remova a maldição AGORA.",
"* Seus bloqueios de gelo (|cff71d5ff|Hspell:28522|h[Icebolt]|h|r) permanecem em pé: abrace um quando o dragão levanta, pois sua respiração profunda varre a sala ao retornar."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["15990"] = { "Kel'Thuzad",
"* Seus Mind Control (correntes) (|cff71d5ff|Hspell:28410|h[Chains of Kel'Thuzad]|h|r) demoram bastante: os alvos presos sofrem CC sem piedade até que ele caia.",
"* A Shadow Fissure ({|cff71d5ff|Hspell:27810|h[Shadow Fissure]|h|r) atinge quem estiver no alcance: saiam da piscina AGORA.",
"* O Frost Blast (|cff71d5ff|Hspell:27808|h[Frost Blast]|h|r) congela o alvo com a área em linha: até a cura.",
"* No final, os guardiões do cemitério entram: o tanque os elimina e a luta continua."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16011"] = { "Repugnaz",
"* Os esporos de cura (|cff71d5ff|Hspell:29234|h[Fungal Creep]|h|r) explodem em ritmo: os inimigos ficam expostos, esse é o principal foco de dano.",
"* A Morte Inevitável (|cff71d5ff|Hspell:29204|h[Inevitable Doom]|h|r) ataca os alvos marcados de acordo com o cronômetro da aura necromântica: cura interrompida e o dano aumenta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16028"] = { "Retalhoso",
"* Seu Golpe Amaldiçoado atinge o alvo com maior vida em alcance: todos no mesmo nível de vida e até mesmo curandeiros.",
"* Quando está com metade da vida, seu Frenzy (|cff71d5ff|Hspell:28131|h[Frenzy]|h|r) entra em ação: o tanque permanece forte e a cura dobra."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16060"] = { "Gothik, o Ceifador",
"* A sala está DIVIDIDA entre os vivos e os mortos: cada lado mantém a sua metade até à fusão.",
"* Os seus saltos atravessam a sala (|cff71d5ff|Hspell:28025|h[Teleport]|h|r para |cff71d5ff|Hspell:28026|h[Teleport Morto]|h|r): uma vez unidos, o tanque prende-o e os DPS atacam."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16061"] = { "Instrutor Razúvio",
"* Os UNDERSTUDIES o levam com taunt: dois em rotação, o verdadeiro tanque nunca o alcança.",
"* Seu grito de interrupção (|cff71d5ff|Hspell:29107|h[Disrupting Shout]|h|r) varre os inimigos de combate: saia do alcance no chamado."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16062"] = { "Os Quatro Cavaleiros",
"* Quatro em um quarteto, cada um com um canto: os tanques os agrupam em pares e os DPS se espalham em círculo.",
"* O Meteor (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) ataca: o mais próximo de cada cavaleiro — os tanques em alerta.",
"* As Zonas do Vazio (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) se abrem sob os pés: fora do círculo de uma vez."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16063"] = { "Os Quatro Cavaleiros",
"* Quatro em um quarteto, cada um com um canto: os tanques os agrupam em pares e os DPS se espalham em círculo.",
"* O Meteor (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) ataca: o mais próximo de cada cavaleiro — os tanques em alerta.",
"* As Zonas do Vazio (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) se abrem sob os pés: fora do círculo de uma vez."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16064"] = { "Os Quatro Cavaleiros",
"* Quatro em um quarteto, cada um com um canto: os tanques os agrupam em pares e os DPS se espalham em círculo.",
"* O Meteor (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) ataca: o mais próximo de cada cavaleiro — os tanques em alerta.",
"* As Zonas do Vazio (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) se abrem sob os pés: fora do círculo de uma vez."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["16065"] = { "Os Quatro Cavaleiros",
"* Quatro em um quarteto, cada um com um canto: os tanques os agrupam em pares e os DPS se espalham em círculo.",
"* O Meteor (|cff71d5ff|Hspell:28884|h[Meteor]|h|r) ataca: o mais próximo de cada cavaleiro — os tanques em alerta.",
"* As Zonas do Vazio (|cff71d5ff|Hspell:28863|h[Void Zone]|h|r) se abrem sob os pés: fora do círculo de uma vez."
};

-- Blackrock Depths : Zona 2792 (10-15 band remaster) --

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226302"] = { "Embaixador Fogaçoite",
"* Constant Fire Blast en melee: rotação ou cura rítmica.",
"* Burning Spirits: ele invoca elementais dos runas da sala; quem chegar a ele sacrifica-se por um bônus de +5% de dano e tamanho, até 50 stacks: bloqueie o caminho e elimine-os no caminho."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226303"] = { "Bael'Gar",
"* Magma Splash: causa dano de queimadura a cada 3 segundos por 24, empilhando até 3 vezes no tanque: rotação do tanque ou dispels se disponíveis.",
"* Summon Spawn: causa uma explosão de fogo aleatória com um add de lama lançado: o tanque a pega e morre rapidamente."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226304"] = { "Lorde Incendius",
"* Maldição do Senhor Elemental: reduz 100-132 Resistência ao Fogo, por 30 segundos e até três vezes: o marcado fica longe do fogo.",
"* Golpe Poderoso: um golpe que envia o tanque para trás (lava por toda parte): contra a parede.",
"* Tempestade de Fogo pune a área próxima por 30 segundos e sua Onda de Explosão atinge 20 metros: os jogadores de combate saem e os curandeiros cobrem o ataque."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226305"] = { "Imperador Dagran Thaurissan",
"* Avatar of Flame: 10 segundos totalmente imune a magia e seus golpes adicionam Fogo: os conjuradores recuam enquanto dura.",
"* Mão de Thaurissan: uma explosão de Fogo que atordoa por 5 segundos: melhor sem aglomerar, para que ninguém perca vários de uma vez.",
"* Ironfoe: um efeito passivo de seu mace lendário, que lança até 3 golpes extras com sua crítica aumentada em 10% por 5 segundos: o tanque aproveita a sequência com cura.",
"* Princesa Moira Bronzebeard luta ao seu lado: ele a cura ocasionalmente e pune com magia Sagrada e Sombra: controle-a ou, se o grupo estiver em pressa, mate-a antes dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226306"] = { "Lorde Golem Argelmach",
"* Chain Lightning salta entre jogadores próximos: espalhem-se enquanto dura.",
"* Ele luta ao lado de dois de seus constructos: o tanque os divide e compartilha a ameaça.",
"* Atenção à versão da banda: sua alma pode possuir golems caídos, um corpo abatido nem sempre termina a luta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226307"] = { "Os Sete",
"* Ondas de siete enanos espectrales pelo ao longo da forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, Grito de Batalha e Onda de Choque em suas rodadas.",
"* O feiticeiro Doom'rel: Raio Sombrio e Maldição de Agonia, invoca um Incubus ou Voidwalker e lança Medo: dispela o Medo e mata a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada de trás e Vanish: ninguém fica com a parte de trás solta.",
"* O xamã Gloom'rel: Totens, Choque de Terra e buffs de cura: os totens morrem assim que aparecem.",
"* O mago Hate'rel: Choque de Gelo, Tempestade de Gelo e Polymorph: corta o Polymorph e sai da Tempestade de Gelo.",
"* O caçador Seeth'rel: Atira de longo alcance, coloca armadilhas e libera uma criatura selvagem: feche a distância com cuidado.",
"* O sacerdote Vile'rel: Cura seus companheiros com Flash Heal, protege com Power Word: Shield e lança Controle Mental: seus curas são interrompidas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226308"] = { "Os Sete",
"* Ondas de siete enanos espectrales pelo ao longo da forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, Grito de Batalha e Onda de Choque em suas rodadas.",
"* O feiticeiro Doom'rel: Raio Sombrio e Maldição de Agonia, invoca um Incubus ou Voidwalker e lança Medo: dispela o Medo e mata a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada de trás e Vanish: ninguém fica com a parte de trás solta.",
"* O xamã Gloom'rel: Totens, Choque de Terra e buffs de cura: os totens morrem assim que aparecem.",
"* O mago Hate'rel: Choque de Gelo, Tempestade de Gelo e Polymorph: corta o Polymorph e sai da Tempestade de Gelo.",
"* O caçador Seeth'rel: Atira de longo alcance, coloca armadilhas e libera uma criatura selvagem: feche a distância com cuidado.",
"* O sacerdote Vile'rel: Cura seus companheiros com Flash Heal, protege com Power Word: Shield e lança Controle Mental: seus curas são interrompidas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226309"] = { "Os Sete",
"* Ondas de siete enanos espectrales pelo ao longo da forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, Grito de Batalha e Onda de Choque em suas rodadas.",
"* O feiticeiro Doom'rel: Raio Sombrio e Maldição de Agonia, invoca um Incubus ou Voidwalker e lança Medo: dispela o Medo e mata a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada de trás e Vanish: ninguém fica com a parte de trás solta.",
"* O xamã Gloom'rel: Totens, Choque de Terra e buffs de cura: os totens morrem assim que aparecem.",
"* O mago Hate'rel: Choque de Gelo, Tempestade de Gelo e Polymorph: corta o Polymorph e sai da Tempestade de Gelo.",
"* O caçador Seeth'rel: Atira de longo alcance, coloca armadilhas e libera uma criatura selvagem: feche a distância com cuidado.",
"* O sacerdote Vile'rel: Cura seus companheiros com Flash Heal, protege com Power Word: Shield e lança Controle Mental: seus curas são interrompidas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226310"] = { "Os Sete",
"* Ondas de siete enanos espectrales pelo ao longo da forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, Grito de Batalha e Onda de Choque em suas rodadas.",
"* O feiticeiro Doom'rel: Raio Sombrio e Maldição de Agonia, invoca um Incubus ou Voidwalker e lança Medo: dispela o Medo e mata a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada de trás e Vanish: ninguém fica com a parte de trás solta.",
"* O xamã Gloom'rel: Totens, Choque de Terra e buffs de cura: os totens morrem assim que aparecem.",
"* O mago Hate'rel: Choque de Gelo, Tempestade de Gelo e Polymorph: corta o Polymorph e sai da Tempestade de Gelo.",
"* O caçador Seeth'rel: Atira de longo alcance, coloca armadilhas e libera uma criatura selvagem: feche a distância com cuidado.",
"* O sacerdote Vile'rel: Cura seus companheiros com Flash Heal, protege com Power Word: Shield e lança Controle Mental: seus curas são interrompidas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226311"] = { "Os Sete",
"* Ondas de siete enanos espectrales pelo ao longo da forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, Grito de Batalha e Onda de Choque em suas rodadas.",
"* O feiticeiro Doom'rel: Raio Sombrio e Maldição de Agonia, invoca um Incubus ou Voidwalker e lança Medo: dispela o Medo e mata a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada de trás e Vanish: ninguém fica com a parte de trás solta.",
"* O xamã Gloom'rel: Totens, Choque de Terra e buffs de cura: os totens morrem assim que aparecem.",
"* O mago Hate'rel: Choque de Gelo, Tempestade de Gelo e Polymorph: corta o Polymorph e sai da Tempestade de Gelo.",
"* O caçador Seeth'rel: Atira de longo alcance, coloca armadilhas e libera uma criatura selvagem: feche a distância com cuidado.",
"* O sacerdote Vile'rel: Cura seus companheiros com Flash Heal, protege com Power Word: Shield e lança Controle Mental: seus curas são interrompidas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226312"] = { "Os Sete",
"* Ondas de siete enanos espectrales pelo ao longo da forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, Grito de Batalha e Onda de Choque em suas rodadas.",
"* O feiticeiro Doom'rel: Raio Sombrio e Maldição de Agonia, invoca um Incubus ou Voidwalker e lança Medo: dispela o Medo e mata a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada de trás e Vanish: ninguém fica com a parte de trás solta.",
"* O xamã Gloom'rel: Totens, Choque de Terra e buffs de cura: os totens morrem assim que aparecem.",
"* O mago Hate'rel: Choque de Gelo, Tempestade de Gelo e Polymorph: corta o Polymorph e sai da Tempestade de Gelo.",
"* O caçador Seeth'rel: Atira de longo alcance, coloca armadilhas e libera uma criatura selvagem: feche a distância com cuidado.",
"* O sacerdote Vile'rel: Cura seus companheiros com Flash Heal, protege com Power Word: Shield e lança Controle Mental: seus curas são interrompidas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226313"] = { "Os Sete",
"* Ondas de siete enanos espectrales pelo ao longo da forja, um após o outro, cada um com seu kit de classe clássico.",
"* O guerreiro Anger'rel: Golpe de Herói e Sunder Armor no tanque, Grito de Batalha e Onda de Choque em suas rodadas.",
"* O feiticeiro Doom'rel: Raio Sombrio e Maldição de Agonia, invoca um Incubus ou Voidwalker e lança Medo: dispela o Medo e mata a invocação.",
"* O ladrão Dope'rel: Mordida de Gouge envenenada de trás e Vanish: ninguém fica com a parte de trás solta.",
"* O xamã Gloom'rel: Totens, Choque de Terra e buffs de cura: os totens morrem assim que aparecem.",
"* O mago Hate'rel: Choque de Gelo, Tempestade de Gelo e Polymorph: corta o Polymorph e sai da Tempestade de Gelo.",
"* O caçador Seeth'rel: Atira de longo alcance, coloca armadilhas e libera uma criatura selvagem: feche a distância com cuidado.",
"* O sacerdote Vile'rel: Cura seus companheiros com Flash Heal, protege com Power Word: Shield e lança Controle Mental: seus curas são interrompidas primeiro."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226314"] = { "Imperador Dagran Thaurissan",
"* Avatar of Flame: 10 segundos totalmente imune a magia e seus golpes adicionam Fogo: os conjuradores recuam enquanto dura.",
"* Mão de Thaurissan: uma explosão de Fogo que atordoa por 5 segundos: melhor sem aglomerar, para que ninguém perca vários de uma vez.",
"* Ironfoe: um efeito passivo de seu mace lendário, que lança até 3 golpes extras com sua crítica aumentada em 10% por 5 segundos: o tanque aproveita a sequência com cura.",
"* Princesa Moira Bronzebeard luta ao seu lado: ele a cura ocasionalmente e pune com magia Sagrada e Sombra: controle-a ou, se o grupo estiver em pressa, mate-a antes dele."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226315"] = { "Lorde Pétror",
"* Ground Tremor atinge todo o grupo por 2 segundos dentro de 20 metros: sem \"blobbear\" na câmara.",
"* Earth Shock atinge quem estiver em meio de um cast: os conjuradores devem avançar seus casts com margem.",
"* Flame Shock: impacto de fogo instantâneo mais um efeito de queimadura a cada 3 segundos por 12 segundos: os curandeiros devem estar atentos à queimadura."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["226316"] = { "General Forjaversa",
"* Sunder Armor gradualmente remove a armadura do tanque: gire os tanques quando ele se acumula.",
"* Flurry: seus críticos aceleram seus golpes, e sua Fúria aumenta a dor física: os curandeiros devem acompanhar o ritmo com ele.",
"* Alerta de Intrusão! em 40%: ele chama reforços para a fortaleza (Anvilrage Reservists e Médicos) e os médicos o curam: mate-os primeiro, médicos antes de todos."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230216"] = { "Lorde Golem Argelmach",
"* Chain Lightning salta entre jogadores próximos: espalhem-se enquanto dura.",
"* Ele luta ao lado de dois de seus constructos: o tanque os divide e compartilha a ameaça.",
"* Atenção à versão da banda: sua alma pode possuir golems caídos, um corpo abatido nem sempre termina a luta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230217"] = { "Lorde Golem Argelmach",
"* Chain Lightning salta entre jogadores próximos: espalhem-se enquanto dura.",
"* Ele luta ao lado de dois de seus constructos: o tanque os divide e compartilha a ameaça.",
"* Atenção à versão da banda: sua alma pode possuir golems caídos, um corpo abatido nem sempre termina a luta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230218"] = { "Lorde Golem Argelmach",
"* Chain Lightning salta entre jogadores próximos: espalhem-se enquanto dura.",
"* Ele luta ao lado de dois de seus constructos: o tanque os divide e compartilha a ameaça.",
"* Atenção à versão da banda: sua alma pode possuir golems caídos, um corpo abatido nem sempre termina a luta."
};

-- [editor web 2026-10-14] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["230219"] = { "Lorde Golem Argelmach",
"* Chain Lightning salta entre jogadores próximos: espalhem-se enquanto dura.",
"* Ele luta ao lado de dois de seus constructos: o tanque os divide e compartilha a ameaça.",
"* Atenção à versão da banda: sua alma pode possuir golems caídos, um corpo abatido nem sempre termina a luta."
};
P.pt = pt;
