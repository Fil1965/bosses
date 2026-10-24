--[[
	Bosses_Forever_pt.lua
		Datos en portugués del pack WoW Forever (datos; el registro lo hace
		Bosses_Forever.lua, que se carga después en el .toc).

		Catálogo clásico portado desde Bosses_Vanilla (ids NPC del cliente
		Classic; contenido que Forever también juega). Los jefes nuevos de
		Forever (los 24 de DBM-Party-Forever) se añaden con el editor: la
		base se escribe en EN y se traduce a los demás idiomas.
		Idioma INCOMPLETO: hasta que esté entero no se lista en el .toc.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local pt = {};
local pack = pt;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- Formato de entrada (una por jefe, NPC ID decimal del campo 6 del GUID):
-- pack["NPC_ID"] = { "Nombre del jefe", "* consejo 1", "* consejo 2" };

-- ----------------------------------- --
-- Cavernas Ígneas : Zona 389 (classic) --
-- ----------------------------------- --

pack["11517"] = { "Pederneiro",
"* Ataque de área frontal (cleave/gore): o tanque o enfrenta para que o dano frontal nunca atinja aos membros do grupo ou ao curandeiro.",
"* Mate os seus súditos primeiro."
};

pack["11518"] = { "Jergosh o Convocador",
"* Ele vem com duas miniaturas: uma para controle de multidão, outra para focar dano, e quando ambas estiverem mortas, o resto é apenas um combate de tanque e dano.",
"* Sua |cff71d5ff|Hspell:20800|h[Immolate]|h|r causa dano intenso (remova-o rapidamente) e sua |cff71d5ff|Hspell:18267|h[Curse of Weakness]|h|r reduz o dano e a força: remova-o com um dispelar mágico."
};

pack["11519"] = { "Bazzalan",
"* Ele está no topo da rampa final, com dois fanáticos ao seu lado: você pode puxar um minion individualmente antes de atacar o chefe.",
"* Controle os minions restantes e cause dano ao chefe; preste atenção ao |cff71d5ff|Hspell:744|h[Veneno Mortal]|h|r dele no tanque: ele nunca desaparece, deve ser limpo (cura do druida ou antídoto)."
};

pack["11520"] = { "Taragaman o Faminto",
"* Seus |cff71d5ff|Hspell:11970|h[Fire Nova]|h|r atingem tudo ao seu redor: jogadores de combate, afaste-se antes de atingir; jogadores de distância e curandeiros, mantenham-se na distância máxima.",
"* Seu |cff71d5ff|Hspell:18072|h[Uppercut]|h|r envia o tanque para o alto: posicione-o longe das bordas de lava para que o efeito de arremesso não envie ninguém para a rocha derretida."
};

-- ----------------------------------- --
-- Cavernas Ululantes : Zona 43 (classic) --
-- ----------------------------------- --

pack["3653"] = { "Cresh",
"* Uma luta física simples: sem interrupções ou dispels, bom controle do tanque e dano contínuo."
};

pack["3654"] = { "Mutanus, o Devorador",
"* |cff71d5ff|Hspell:7967|h[Pesadelo de Naralex]|h|r é o foco do combate: interrompa o encantamento sempre que começar.",
"* Seu |cff71d5ff|Hspell:7399|h[Terrificar]|h|r (pânico) é Magia: os curandeiros dissipam os atingidos, e seu |cff71d5ff|Hspell:8150|h[Trovão]|h|r atinge a área — os curandeiros devem estar preparados."
};

pack["3669"] = { "Lorde Cobrahn",
"* Igual que Anacondra: usa |cff71d5ff|Hspell:8040|h[Sonambulismo do Druida]|h|r e o |cff71d5ff|Hspell:23381|h[Toque de Cura]|h|r.",
"* Seu |cff71d5ff|Hspell:17330|h[Veneno]|h|r é lançado instantaneamente com a remoção de veneno."
};

pack["3670"] = { "Lorde Pítias",
"* Igual que Anacondra: use |cff71d5ff|Hspell:8040|h[Sonambulismo do Druida]|h|r e |cff71d5ff|Hspell:23381|h[Toque de Cura]|h|r."
};

pack["3671"] = { "Lady Sucurina",
"* Ela se transforma na forma de druida: interrompa-a com |cff71d5ff|Hspell:8040|h[Sonho do Druida]|h|r (dorme um jogador) e sua |cff71d5ff|Hspell:23381|h[Toque Curativo]|h|r, ou a luta se prolonga."
};

pack["3673"] = { "Lorde Serpentis",
"* Igual que Anacondra: use |cff71d5ff|Hspell:8040|h[Sonambulismo do Druida]|h|r e |cff71d5ff|Hspell:23381|h[Toque de Cura]|h|r."
};

pack["3674"] = { "Skória",
"* Alterno entre |cff71d5ff|Hspell:6254|h[Chained Bolt]|h|r que salta entre alvos: não agrupe o grupo e elimine-o rapidamente."
};

pack["5775"] = { "Verdan, o Sempre-vivo",
"* Interrompa seu |cff71d5ff|Hspell:8142|h[Vines]|h|r: é o único detalhe da luta, o resto é combate corpo a corpo."
};

pack["5912"] = { "Dragão Faísca Desviante",
"* Opcional, chefe parcialmente escondido: você não precisa matá-lo para completar a masmorra.",
"* Seu |cff71d5ff|Hspell:8040|h[Sonho do Druida]|h|r adormece um jogador (desfazível com Magia): se ninguém cancelar o efeito, um curandeiro o desfaz."
};

-- ------------------------------------- --
-- Cavernas de Brazanegra : Zona 48 (classic) --
-- ------------------------------------- --

pack["4829"] = { "Aku'mai",
"* Combate com envenenamento puro: sua |cff71d5ff|Hspell:3815|h[Nuvem de Veneno]|h|r permanece onde ele está; o tanque o mantém longe do grupo e ninguém entra nele.",
"* Quando ele morre, entra em |cff71d5ff|Hspell:3490|h[Fúria Enlouquecedora]|h|r e ataca mais rápido: os curandeiros aceleram."
};

pack["4830"] = { "Velho Serra'kis",
"* Combate cuerpo a cuerpo básico na área de água rasa: o tanque o mantém sob controle, os jogadores de melee observam seus venenos e o grupo aplica dano."
};

pack["4831"] = { "Lady Sarevess",
"* Ela é protegida por guardas de elite: controle a multidão (polimorfia, armadilhas) e concentre o dano nela.",
"* Sua |cff71d5ff|Hspell:407546|h[Flecha Congelante]|h|r congela quem atingir (o curandeiro os libera com um dispel) e, quando ela aponta sua |cff71d5ff|Hspell:407653|h[Raio Bifurcado]|h|r para alguém, o jogador marcado sai do grupo.",
"* Se ela coloca |cff71d5ff|Hspell:407791|h[Fúria de Aku'mai]|h|r em um jogador, dispela assim que o curandeiro a vir; seus poços no chão são evitados."
};

pack["4832"] = { "Senhor do Crepúsculo Bathiel",
"* No cliente Era, esta é uma luta simples: dispelar a |cff71d5ff|Hspell:8399|h[Sleep]|h|r que ele lança em um jogador aleatório e continuar a dar dano e a absorver."
};

pack["4887"] = { "Ghamoo-ra",
"* Combate simples de tanque e dano: sua |cff71d5ff|Hspell:5568|h[Trample]|h|r sacode a todos ao seu redor; os jogadores de combate ficam próximos e os demais se espalham."
};

pack["6243"] = { "Gelihast",
"* Combate direto: sua principal fonte de irritação é o |cff71d5ff|Hspell:6533|h[Net]|h|r que tira alguém do combate por alguns segundos (quebre ou desfaça-o); caso contrário, proteja e cause dano."
};

-- -------------------------------- --
-- O Cárcere : Zona 34 (classic) --
-- -------------------------------- --

pack["1663"] = { "Professor Dextren",
"* Habilidade de Medo: O Dextren pode causar medo ao grupo, por isso é recomendado limpar a área e os inimigos próximos antes de iniciar o combate.",
"* Fugir: Quando sua vida diminui, ele tentará fugir, por isso é aconselhável controlá-lo para evitar que atraia mais inimigos."
};

pack["1666"] = { "Kam Fundafúria",
"* Combate cuerpo a cuerpo sencillo: nada para interrumpir o desmantelar."
};

pack["1696"] = { "Targorr o Temido",
"* Combate cuerpo a cuerpo simple: nada para interrumpir o desmantelar, tanque preso y quemar."
};

pack["1716"] = { "Basílio Taborda",
"* A luta final ocorre no pátio e seus prisioneiros se juntam assim que começa: mate os mobs primeiro, depois o chefe."
};

pack["1717"] = { "Pernil",
"* Combate cuerpo a cuerpo básico que causa mucho daño: nada para interrumpir o desmantelar."
};

pack["1720"] = { "Bruegal Ferroque",
"* Combate cuerpo a cuerpo sencillo: nada para interrumpir o desmantelar."
};

-- ------------------------------ --
-- Gnomeregan : Zona 90 (classic) --
-- ------------------------------ --

pack["6229"] = { "Espanca-gente 9-60",
"* Trample (|cff71d5ff|Hspell:10887|h[Trample]|h|r): um golpe que lança os combatentes para o ar: apenas o tanque permanece dentro, todos os outros estão fora do alcance.",
"* Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) no tanque: ritmo normal de tanque e cura."
};

pack["6235"] = { "Eletrocutor 6000",
"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) e Chain Bolt (|cff71d5ff|Hspell:11085|h[Chain Bolt]|h|r) são interrompíveis: corte-os na raiz.",
"* O Shock (|cff71d5ff|Hspell:11084|h[Shock]|h|r) ataca o tanque: use cura em watch."
};

pack["7079"] = { "Precipitação Radioativa Viscosa",
"* Disparo de Veneno (|cff71d5ff|Hspell:21687|h[Disparo de Veneno]|h|r): envenenamento periódico em qualquer um próximo; o efeito de cura remove e continua."
};

pack["7361"] = { "Grúdio",
"* Combate plano marcado por DBM: tanque, dano y curas, prestando atención al segundo que aparece a su lado (su Chomper)."
};

pack["7800"] = { "Mecangenheiro Termaplugue",
"* Ele lança uma bomba viva em um jogador aleatório (|cff71d5ff|Hspell:11518|h[Living Bomb]|h|r): o marcado corre para longe do grupo até explodir.",
"* O Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) envia o tanque para o alto: preste atenção onde ele cai.",
"* A partir de Cata, ele lança um Steam Blast interrompível e ataca o tanque: corte o ataque no tempo."
};

-- ---------------------------------- --
-- Caverna de Razorfen : Zona 47 (classic) --
-- ---------------------------------- --

pack["4420"] = { "Senhor Supremo Presa de Carneiro",
"* Eu canalizo uma saraivada giratória (|cff71d5ff|Hspell:8259|h[Whirling Barrage]|h|r): interrompa-a ou, se ela for lançada, dê um passo para fora do redemoinho enquanto ela cai.",
"* Uma luta difícil: ele ataca forte e chega com dois guardiões ao seu lado; o tanque os afasta e o healer se concentra."
};

pack["4421"] = { "Charlga Talhaflanco",
"* O Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) pode ser interrompido: o kick salva o grupo inteiro.",
"* Os hexes são limpos assim que atingem (|cff71d5ff|Hspell:8361|h[Purity]|h|r): dano físico é a melhor opção."
};

pack["4422"] = { "Agathelos o Furioso",
"* Faça-o entrar em fúria (|cff71d5ff|Hspell:8269|h[Enrage]|h|r) e use seu ataque de fúria: o tanque deve aproveitar a subida com cura focada."
};

pack["4424"] = { "Aggem Pragacardo",
"* Ele invoca porcos (|cff71d5ff|Hspell:8286|h[Summon Boar]|h|r) em momentos aleatórios: mate-os assim que aparecerem.",
"* Sua Onda de Cura (|cff71d5ff|Hspell:14900|h[Healing Wave]|h|r) é interrompível: corte-a sem piedade ou o tanque ficará exausto."
};

pack["4425"] = { "Caçador Tuscosso",
"* Lutador simples marcado pelo DBM: ataca em curta distância e nada mais: tanque, dano e cura."
};

pack["4428"] = { "Jargba, o Orador da Morte",
"* Domina a mente de um jogador (|cff71d5ff|Hspell:14515|h[Dominate]|h|r): interrupções normais não funcionam; um stun a impede, embora o recast ocorra no momento em que quebra: derrube o jogador dominado até que ele caia."
};

pack["4842"] = { "Arauto da Terra Halmgar",
"* Chama os \"Terremoto da Terra\" (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): Separe-os e finalize-os rapidamente."
};

pack["6168"] = { "Rugug",
"* Ele chama os \"Earth Rumblers\" (|cff71d5ff|Hspell:8270|h[Earth Rumbler]|h|r): o tanque os pega e eles morrem instantaneamente."
};

-- -------------------------------------- --
-- Monastério Escarlate : Zona 189 (classic) --
-- -------------------------------------- --

pack["3974"] = { "Mestre dos Cães Loksey",
"* Ele ataca pelas laterais com seus cães e lança Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r) no grupo: eles atacam mais rápido, então elimine os cães o mais rápido possível enquanto o tanque o mantém sob controle.",
"* Não há muito mais: se os cães se aglomerarem, mate-os primeiro e ele cairá logo em seguida."
};

pack["3975"] = { "Herodes",
"* Seu Whirlwind (|cff71d5ff|Hspell:8989|h[Whirlwind]|h|r) gira a cada ~18 s: os jogadores devem se mover para fora do raio e retornar quando a rotação terminar.",
"* Quando estiver com pouca vida, ele usa Frenzy (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): causa mais dano, ataca o tanque e cura.",
"* Quando Herod cair, uma horda de aprendizes vermelhos invade pela porta: não se desmerecer até serem varridos."
};

pack["3976"] = { "Comandante Vermelho Mograine",
"* Uma luta simples, começando com ele: Whitemane só sai do seu balcão depois que ele cai.",
"* Após sua primeira morte, o Heal (|cff71d5ff|Hspell:12039|h[Heal]|h|r) de Whitemane nele é interrompido: sem o corte, ele retorna com a saúde total.",
"* Com o heal controlado e a ressurreição superada, a luta está derrubando ambos, sem pressa."
};

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

pack["3983"] = { "Interrogador Vishas",
"* Uma luta curta e simples: sua única habilidade marcada é Immolate (|cff71d5ff|Hspell:9034|h[Immolate]|h|r) em um jogador, causando dano mágico persistente; desfaça-a ou cure essa marca cuidadosamente."
};

pack["4542"] = { "Inquisidor Supremo Fairbanks",
"* Um inquisidor escondido entre os túmulos do cemitério: a maioria dos grupos o deixa para mais tarde; se você o puxar, será uma luta simples.",
"* Sua Maldição de Sangue (|cff71d5ff|Hspell:8282|h[Curse of Blood]|h|r) é uma maldição: remova-a com remoção de maldições."
};

pack["4543"] = { "Mago de Sangue Thalnos",
"* Flame Spike (|cff71d5ff|Hspell:8814|h[Flame Spike]|h|r) a distância e Fire Nova (|cff71d5ff|Hspell:12470|h[Fire Nova]|h|r) ao seu redor: o ataque melee interrompe o contato quando ele dispara a nova.",
"* Nenhum outro mecanismo: coloque-o em pé, derrube-o e o cemitério estará pronto."
};

pack["6487"] = { "Arcanista Doan",
"* Ele lança Polymorph (|cff71d5ff|Hspell:13323|h[Polymorph]|h|r) em um jogador e repete Arcane Explosion (|cff71d5ff|Hspell:9433|h[Arcane Explosion]|h|r) ao seu redor: ninguém lança nele.",
"* Seu efeito de área Silence (|cff71d5ff|Hspell:8988|h[Silence]|h|r) interrompe os lançamentos próximos: mantenha distância do mago para continuar lançando.",
"* Detonate (|cff71d5ff|Hspell:9435|h[Detonate]|h|r) é o ataque principal: quando ele carrega, saia do raio ou interrompa a linha de visão atrás das estantes da sala antes que exploda."
};

-- ----------------------------------- --
-- Razorfen Downs : Zona 129 (classic) --
-- ----------------------------------- --

pack["7354"] = { "Trombarrão",
"* Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) transforma um jogador CONTRA o grupo: stun-e-o ou remova a magia dele."
};

pack["7355"] = { "Tutan'kash",
"* A araña do cemitério: sua Maldição de Tut (|cff71d5ff|Hspell:12255|h[Curse of Tut]|h|r) marca um jogador (maldição, remova-a) e seu Spray de Teia (|cff71d5ff|Hspell:12252|h[Web Spray]|h|r) pune os jogadores de combate em área.",
"* Seu veneno aracnídeo ataca o tanque: cura sustentada."
};

pack["7356"] = { "Plaguemaw a Podre",
"* Seu Toque Putrefato (|cff71d5ff|Hspell:11442|h[Toque Putrefato]|h|r) é uma Doença em um jogador: o druida a remove."
};

pack["7357"] = { "Mordresh Olho-de-Fogo",
"* Ele luta em um monte de ossos em meio a uma horda de esqueletos não-elite: o tanque começa com um ataque em área para pegá-los todos, mantendo-os agrupados e o grupo limpa a horda primeiro; não há pressa em atingir o chefe.",
"* Sempre que ele lança sua bola de fogo, o tanque ou os membros do grupo interrompem: cada lançamento interrompido é menos dano recebido.",
"* O curandeiro espera alguns segundos até que o tanque garanta o controle da horda antes de curar fortemente: curas precoces podem remover os esqueletos e acabar com o encontro.",
"* Sua Onda de Fogo (|cff71d5ff|Hspell:12470|h[Flame Wave]|h|r) varre os membros do grupo em seus pés: retire-se."
};

pack["7358"] = { "Amnennar, o Frigífero",
"* O frio do cemitério: seu Fúria de Amnennar (|cff71d5ff|Hspell:13009|h[Amnennar's Wrath]|h|r) explode em área — espalhe-se e mantenha a cura forte."
};

pack["8567"] = { "Glutão",
"* O Devorador de Carne: entra em Fúria (|cff71d5ff|Hspell:12795|h[Frenzy]|h|r) quando estiver com pouca vida — alto DPS no final."
};

-- --------------------------- --
-- Uldaman : Zona 70 (classic) --
-- --------------------------- --

pack["2748"] = { "Archaedas",
"* O gigante adormecido do cofre: uma longa luta de limpar os summons enquanto o enfraquece.",
"* Despertar os Guardiões da Terra (|cff71d5ff|Hspell:10252|h[Despertar os Guardiões da Terra]|h|r) e Despertar o Guarda do Cofre (|cff71d5ff|Hspell:10258|h[Despertar o Guarda do Cofre]|h|r): os summons chegam em ondas — ataque-os, o chefe permanece no tanque.",
"* Tremer no chão (|cff71d5ff|Hspell:6524|h[Tremer no chão]|h|r) atinge a área ao redor dele: os jogadores de combate permanecem com cura, nada para desviar.",
"* Regra clássica: o tanque o mantém no pedestal, os danos atingem os guardiões e Archaedas cai por último."
};

pack["4854"] = { "Grimlok",
"* Shaman trogg chefe das cavernas inferiores: Chain Bolt (|cff71d5ff|Hspell:8292|h[Chain Bolt]|h|r) interrompe sempre e Lightning Bolt (|cff71d5ff|Hspell:12167|h[Lightning Bolt]|h|r) como um corte extra.",
"* Bloodlust (|cff71d5ff|Hspell:6742|h[Bloodlust]|h|r): quem o carrega, ele ou um add, cai primeiro.",
"* Crystalline Slumber (|cff71d5ff|Hspell:3636|h[Crystalline Slumber]|h|r) adormece um jogador (magia): dispelar ou dano o desperta.",
"* Reflection (|cff71d5ff|Hspell:9906|h[Reflection]|h|r): não lança enquanto dura, mesma regra de retorno de spell."
};

pack["6906"] = { "Os Anões Perdidos",
"* Trio de anões (Baelog, Eric «o Rápido» e Olaf) no salão dos artesãos: os três de uma vez, luta simples.",
"* Três ao mesmo tempo, sem mecânicas marcadas com DBM: o tanque os reúne e o AoE + cleave os derruba."
};

pack["6907"] = { "Os Anões Perdidos",
"* Trio de anões (Baelog, Eric «o Rápido» e Olaf) no salão dos artesãos: os três de uma vez, luta simples.",
"* Três ao mesmo tempo, sem mecânicas marcadas com DBM: o tanque os reúne e o AoE + cleave os derruba."
};

pack["6908"] = { "Os Anões Perdidos",
"* Trio de anões (Baelog, Eric «o Rápido» e Olaf) no salão dos artesãos: os três de uma vez, luta simples.",
"* Três ao mesmo tempo, sem mecânicas marcadas com DBM: o tanque os reúne e o AoE + cleave os derruba."
};

pack["6910"] = { "Revelosh",
"* Shaman do Trogg no salão: seu Chain Lightning (|cff71d5ff|Hspell:16006|h[Chain Lightning]|h|r) é interrompido sempre.",
"* Se um Lightning Bolt (|cff71d5ff|Hspell:15801|h[Lightning Bolt]|h|r) passar, interrompa-o também se o grupo puder."
};

pack["7023"] = { "Guardião de Obsidiana",
"* Golem de sentinela de obsidiana: seu Reflexo (|cff71d5ff|Hspell:9941|h[Reflection]|h|r) lança feitiços de volta para o conjurador — os conjuradores mantêm os feitiços enquanto ele corre.",
"* Obsidiana fragmentada (|cff71d5ff|Hspell:10072|h[Splintered Obsidian]|h|r): explodiu assim que spawn."
};

pack["7206"] = { "Guardião de Pedra Ancestral",
"* Guardião de pedra das salas centrais: luta estática com dano físico pesado.",
"* Tempestades de areia (|cff71d5ff|Hspell:10132|h[Tempestades de areia]|h|r) nunca param: dano em área, projéteis nunca se agrupam e os curandeiros devem dividi-lo."
};

pack["7228"] = { "Ironaya",
"* Guardião desperto da sala de mapas: luta estática, tanke em posição fixa.",
"* Seu Arcing Smash (|cff71d5ff|Hspell:8374|h[Arcing Smash]|h|r) é frontal: os jogadores de melee nunca devem ficar diretamente à frente dela.",
"* War Stomp (|cff71d5ff|Hspell:11876|h[War Stomp]|h|r) ao redor dela: stun de área, os jogadores de melee devem aproveitá-la e a cura deve continuar."
};

pack["7291"] = { "Galgann Martelo de Fogo",
"* Shamã de fogo dos salões dos artesãos: Espiral de Fogo (|cff71d5ff|Hspell:6725|h[Flame Spike]|h|r) e Golpe de Fogo (|cff71d5ff|Hspell:3356|h[Flame Lash]|h|r), ambos interrompem a cada vez.",
"* Explosão de Fogo (|cff71d5ff|Hspell:11969|h[Fire Nova]|h|r) explode ao redor: os jogadores de combate saem do raio e retornam."
};

-- ------------------------------- --
-- Zul'Farrak : Zona 209 (classic) --
-- ------------------------------- --

pack["7267"] = { "Chefe Ukorz Sandscalp",
"* O guerreiro no topo da pirâmide, com a mão direita Ruuzlu (sem entrada própria): combate frontal, absorvendo dano físico intenso.",
"* Ruuzlu cai PRIMEIRO: quando o chefe morre, ele entra em fúria (+30% de dano e +40% de velocidade de ataque) e pune o que restou na sala.",
"* Quando sua vida diminui, ele usa sua Habilidade de Fúria (|cff71d5ff|Hspell:8269|h[Enrage]|h|r): o tanque se concentra e a cura completa a etapa final."
};

pack["7271"] = { "Médico Bruxo Zum'rah",
"* Curandeiro do pátio com seus seguidores: cada cura é interrompida — a Onda de Cura (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) e, acima de tudo, a Tempestade de Dardo Sombrio (|cff71d5ff|Hspell:15245|h[Shadow Bolt Volley]|h|r), que pune o grupo inteiro a 30 jardas.",
"* Sua Barreira de Zum'rah (|cff71d5ff|Hspell:11086|h[Ward of Zum'rah]|h|r) planta um totem aos seus pés que levanta um esqueleto a cada 5 segundos: destrua-o assim que aparecer.",
"* Despertar Zumbi: ele levanta Zumbis de Zul'Farrak das tumbas próximas da sala — esqueletos e zumbis caem assim que surgem."
};

pack["7272"] = { "Theka o Martir",
"* Combate contra un objetivo: sua Praga Febre (|cff71d5ff|Hspell:8600|h[Praga Febre]|h|r) é uma doença curável — desfaça assim que atingir.",
"* No meio do combate, ele se transforma (|cff71d5ff|Hspell:11089|h[Transformação]|h|r): o tanque o segura e ele continua caindo da mesma forma."
};

pack["7273"] = { "Gahz'rilla",
"* A besta gigante da praça: o tanque a mantém presa e os dano à distância não se agrupam atrás dela.",
"* Seu Slam (|cff71d5ff|Hspell:11902|h[Slam]|h|r) atinge o chão: dano em área que os dano corpo a corpo aproveitam com cura.",
"* Congelar (|cff71d5ff|Hspell:11836|h[Freeze Solid]|h|r) congela quem tocar: a cura cobre enquanto dura."
};

pack["7275"] = { "Nekrum e Sezz'ziz",
"* Evento do par da pirâmide (os prisioneiros libertados se voltam contra você): envie-os quando aparecerem, após a onda de minões.",
"* Cura de Sezz'ziz — Renovar (|cff71d5ff|Hspell:8362|h[Renovar]|h|r) e Cura (|cff71d5ff|Hspell:12039|h[Cura]|h|r) — interrompida sempre ou o par prolonga a luta.",
"* Escudo Divino (|cff71d5ff|Hspell:13704|h[Escudo Divino]|h|r) bloqueia o dano diretamente: enquanto dura, o dano não desperdiça o esforço.",
"* Febre (|cff71d5ff|Hspell:8600|h[Febre]|h|r) também aparece aqui: doença curável, dispel disponível."
};

pack["7795"] = { "Mago Hidromante Velratha",
"* Mago de nível superior: luta simples com um único detalhe — cada Onda de Cura (|cff71d5ff|Hspell:12491|h[Healing Wave]|h|r) é interrompida."
};

pack["7796"] = { "Nekrum e Sezz'ziz",
"* Evento do par da pirâmide (os prisioneiros libertados se voltam contra você): envie-os quando aparecerem, após a onda de minões.",
"* Cura de Sezz'ziz — Renovar (|cff71d5ff|Hspell:8362|h[Renovar]|h|r) e Cura (|cff71d5ff|Hspell:12039|h[Cura]|h|r) — interrompida sempre ou o par prolonga a luta.",
"* Escudo Divino (|cff71d5ff|Hspell:13704|h[Escudo Divino]|h|r) bloqueia o dano diretamente: enquanto dura, o dano não desperdiça o esforço.",
"* Febre (|cff71d5ff|Hspell:8600|h[Febre]|h|r) também aparece aqui: doença curável, dispel disponível."
};

pack["8127"] = { "Antu'sul",
"* Primeiro chefe, no poço de entrada: curandeiro troll que se apoia em totems e servos.",
"* Seus Pulso de Cura são interrompidos: o auto-lançado (|cff71d5ff|Hspell:11895|h[Pulso de Cura]|h|r) e o enviado aos servos (|cff71d5ff|Hspell:15982|h[Pulso de Cura]|h|r).",
"* Seus totems aparecem assim que brotam: o totem de Earthgrab (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) enraíza o grupo e o Healing Ward (|cff71d5ff|Hspell:4971|h[Healing Ward]|h|r) alimenta o chefe e sua equipe.",
"* Os servos que ele levanta (|cff71d5ff|Hspell:11894|h[Servos]|h|r) caem primeiro: causem dano neles enquanto o tanque mantém o chefe."
};

-- ----------------------------- --
-- Maraudon : Zona 349 (classic) --
-- ----------------------------- --

pack["12201"] = { "Princesa Theradras",
"* Boss final, colossal: luta estática em sua sala.",
"* Repulsive Gaze (|cff71d5ff|Hspell:21869|h[Repulsive Gaze]|h|r) causa pânico ao redor (medo): espalhem-se um pouco; um totem de tremor do xamã o remove instantaneamente.",
"* Boulder (|cff71d5ff|Hspell:21832|h[Boulder]|h|r) voa para os mais distantes: posições de ataque à distância e nunca se agrupem.",
"* Dust Field (|cff71d5ff|Hspell:21909|h[Dust Field]|h|r) chicoteia a área ao redor dela: os jogadores de combate fogem do raio (os gritos de DBM) e retornam quando termina."
};

pack["12203"] = { "Desmoronamento",
"* Primeiro golem de pedra grande da caverna: luta simples com dano físico pesado no tanque.",
"* Knock Away (|cff71d5ff|Hspell:11130|h[Knock Away]|h|r) arremessa o tanque para trás e remove a ameaça: o tanque pega-o imediatamente enquanto todos mantêm a posição.",
"* Landslide (|cff71d5ff|Hspell:21808|h[Landslide]|h|r) ataca área, derrubando todos ao redor: os jogadores de melee levantam-se e continuam, correr é inútil.",
"* Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) chuta o chão ao lado dele: mantê-lo preso torna-o inofensivo."
};

pack["12225"] = { "Celebra, a Amaldiçoada",
"* Guardião que protege o portal para a princesa: seu Raiva (|cff71d5ff|Hspell:21807|h[Wrath]|h|r) é interrompida sempre que atinge, causando dano significativo.",
"* Raízes Enredadoras (|cff71d5ff|Hspell:12747|h[Entangling Roots]|h|r): enreda um jogador: é um efeito mágico, desfaça-o ou quebre-o com dano.",
"* DBM marca Forças Corrompidas (|cff71d5ff|Hspell:21968|h[Corrupt Forces]|h|r): empurra o dano e ele cai no chão; nada para desviar."
};

pack["12236"] = { "Senhor Vyletongue",
"* Satir fantasma: combatente de mago que causa dano de sombra e sua (|cff71d5ff|Hspell:7964|h[Smoke Bomb]|h|r) que o envolve, tornando-o invisível.",
"* Através da névoa, o tanque o prende com ameaça enquanto os dano aguardam a fumaça desaparecer."
};

pack["12258"] = { "Lâmina Navalha",
"* Planta espinosa gigante de los caminos verdes: combate sencillo, ataca principalmente al tanque y poco más.",
"* Ningún mecanismo marcado por DBM: tanque, cura, elimínelo."
};

pack["13282"] = { "Noxxion",
"* Elemental de cristal do salão: luta estática em seu ninho.",
"* Uppercut (|cff71d5ff|Hspell:10966|h[Uppercut]|h|r) lança o tanque para cima: cure a seus pés e volte para a posição.",
"* Summons de minion periódicos (|cff71d5ff|Hspell:21707|h[Noxxion's Minions]|h|r): AoE-os assim que se amontoarem, antes que causem pressão."
};

pack["13596"] = { "Garra de Rota",
"* Crocolisk na piscina antes do salão da princesa: luta simples na água.",
"* Fatal Bite (|cff71d5ff|Hspell:16495|h[Fatal Bite]|h|r) ataca o tanque: cure em turnos com o cura de emergência em reserva."
};

pack["13601"] = { "Engenhoqueiro Gizlock",
"* Engenheiro goblin da caverna profunda: sua arma Goblin Dragon Gun (|cff71d5ff|Hspell:21833|h[Goblin Dragon Gun]|h|r) dispara fogo em um cone frontal.",
"* O tanque o mantém de frente para o grupo: ninguém fica na frente da arma e ele cai facilmente."
};

-- ---------------------------------- --
-- Templo Afundado : Zona 109 (classic) --
-- ---------------------------------- --

pack["5709"] = { "Sombra de Eranikus",
"* A sombra do dragão verde que o ritual do altar desperta no abismo: o ritual final do templo clássico.",
"* Seu Sono Profundo (|cff71d5ff|Hspell:12890|h[Deep Slumber]|h|r) adormece quem ele atinge, a Respiração Ácida (|cff71d5ff|Hspell:12533|h[Acid Breath]|h|r) pune o tanque e o Passo de Guerra (|cff71d5ff|Hspell:24375|h[War Stomp]|h|r) atinge em combate corpo a corpo."
};

pack["5710"] = { "Jammal'an o Profeta",
"* O profeta do salão, com seu guarda-costas Ogom (sem entrada própria) ao seu lado: luta em grupo no campo aberto.",
"* Jammal'an planta seu Totem de Earthgrab (|cff71d5ff|Hspell:8376|h[Earthgrab Totem]|h|r) — que enraíza o grupo — e marca um jogador com Hex of Jammal'an (|cff71d5ff|Hspell:12479|h[Hex of Jammal'an]|h|r), que espera coberto; ele também lança Healing Wave (12492) e Flamestrike (12468).",
"* Ogom pune com Shadow Bolts (|cff71d5ff|Hspell:12471|h[Shadow Bolt]|h|r) SEMPRE interrompido e aplica Shadow Word: Pain (|cff71d5ff|Hspell:11639|h[Shadow Word: Pain]|h|r) (magia) e Curse of Weakness (|cff71d5ff|Hspell:12493|h[Curse of Weakness]|h|r) (maldição)."
};

pack["5712"] = { "Zolo",
"* Mini-chefe troll de Atal'ai, poderoso, do guardião: seu Chain Lightning salta entre jogadores agrupados — espalhem-se após cada lançamento.",
"* Ele planta um totem ao lado dele que continua a lançar esqueletos: destrua-o assim que aparecer.",
"* Seu debuff de área remove 10 de cada atributo e se acumula se a luta se prolongar — mate-o rapidamente."
};

pack["5719"] = { "Morphaz",
"* Dragão verde da fossa inundada: o kit é parente do quarteto de guardiões do templo.",
"* Combate direto: seu Respiração Ácida (|cff71d5ff|Hspell:12884|h[Respiração Ácida]|h|r) pune o alvo frontal e o Bater de Asa (|cff71d5ff|Hspell:12882|h[Bater de Asa]|h|r) o empurra — o tanque fica posicionado e o grupo atrás dele."
};

pack["5720"] = { "Tecel",
"* Dragão verde do andar superior, ao lado de Dreamscythe: kit de guardião duplo.",
"* Combate simples: Respiração ácida (|cff71d5ff|Hspell:12884|h[Respiração ácida]|h|r) pune na frente e Asa batente (|cff71d5ff|Hspell:12882|h[Asa batente]|h|r) empurra — o tanque fica de guarda, o grupo atrás dele."
};

pack["5721"] = { "A Garra dos Sonhos",
"* Dragão verde do andar superior, ao lado de Weaver: kit de guarda dupla.",
"* Combate simples: seu Respiração Ácida (|cff71d5ff|Hspell:12884|h[Respiração Ácida]|h|r) pune o cone frontal e deixa uma ferida de natureza, e o Bater de Asas (|cff71d5ff|Hspell:12882|h[Bater de Asas]|h|r) empurra para trás — o tanque mantém a posição, o grupo atrás dele."
};

pack["5722"] = { "Hazzas",
"* Dragão verde do poço inundado, junto com Morphaz: kit de guarda-costas gêmeo.",
"* Combate direto: Respiração ácida (|cff71d5ff|Hspell:12884|h[Respiração ácida]|h|r) pune a frente e Asa Batente (|cff71d5ff|Hspell:12882|h[Asa Batente]|h|r) empurra — o tanque fica de guarda, o grupo atrás dele."
};

pack["8443"] = { "Avatar de Hakkar",
"* A sombra do deus serpente, o ritual do templo desperta: luta curta e venenosa.",
"* Sua Maldição de Línguas (|cff71d5ff|Hspell:12889|h[Maldição de Línguas]|h|r) (maldição) prolonga os lançamentos do grupo e sua Causa de Loucura (|cff71d5ff|Hspell:12888|h[Causa de Loucura]|h|r) atinge um jogador — o DBM mais alto, lide com ele rapidamente."
};

-- -------------------------------- --
-- Scolomântia : Zona 289 (classic) --
-- -------------------------------- --

pack["1853"] = { "Umbromestre Gandling",
"* Seu Portal Sombrio (|cff71d5ff|Hspell:17950|h[Shadow Portal]|h|r) lança um jogador para uma das salas trancadas cheias de estudantes (o lançamento anuncia o alvo, não o alvo).",
"* O único isolado luta com os estudantes da sala APENAS até a porta abrir; os outros continuam a lançar seus projéteis sombrios e a atacar sem parar.",
"* Ele repete até que ele caia: um ciclo de DPS enquanto as salas continuam a lançar pessoas."
};

pack["10432"] = { "Vectus",
"* O outro do salão de necromancia: conjurador principal — seus servos e fragmentos de alma são eliminados instantaneamente."
};

pack["10433"] = { "Marduque Lagonero",
"* Na sala de necromancia, ao lado de Vectus: ataque lentamente para não o atingir e seu esqueleto chama rapidamente."
};

pack["10502"] = { "Lady Ilúcia Barov",
"* Controla um jogador: atordoamento, medo ou polimorfismo SEM matar o controlado.",
"* Se projéteis de sombra dela SEMPRE são interrompidos; seu silêncio de área empurra os conjuradores e curandeiros atrás do tanque."
};

pack["10503"] = { "Janice Barov",
"* Ela se duplica em ilusões idênticas: o grupo caça o corpo REAL (ou esmaga as cópias com AoE) antes que o dano combinado derrote ao curador."
};

pack["10504"] = { "Senhor Alexei Barov",
"* Ele chega com dois guardas: elimine-os primeiro ou o alvo se divide em dois.",
"* Sua Véu da Sombra (|cff71d5ff|Hspell:17820|h[Veil of shadow]|h|r) é uma MALDIÇÃO que reduz a cura recebida em 75%: purgue-a assim que vir (o DBM anuncia o alvo)."
};

pack["10505"] = { "Instrutora Calafrio",
"* Ela dá aulas cercada por alunos mortos-vivos: AoE (e Shackle Undead) limpa as ondas assim que elas chegam.",
"* Seus curas, SEMPRE interrompidas."
};

pack["10506"] = { "Kirtonos o Herald",
"* Ele é invocado no terraço, colocando o Sangue dos Inocentes (dos mobs da entrada) em seu pedestal.",
"* Na forma de gargoyle, ele lança uma maldição que neutraliza o dano causado: maldição, removida ao contato.",
"* Seu arremesso o joga para fora do terraço: o tanque o posiciona de VOLTA para o grupo e longe da borda."
};

pack["10507"] = { "Corvo",
"* O gigante ghoul do cemitério: ATAQUES BRUTALES no tanque — a cura fica grudada nele durante toda a luta."
};

pack["10508"] = { "Ras Friomúrmuro",
"* Frost lich: sua Nova congela os personagens de combate corpo a corpo — absorva o golpe, recue e ataque entre os lançamentos.",
"* Sua Armadura de Gelo diminui a velocidade dos atacantes, e seu lançamento de gelo arremessa o tanque para longe e elimina a ameaça: o tanque recua, ninguém o alcança."
};

pack["10901"] = { "Guarda-lore Polkelt",
"* Ele começa com os minions ao seu lado: elimine-os primeiro, depois ele.",
"* Ele planta poças de ácido/veneno no chão: não se coloque nelas, e desfaça rapidamente seus venenos."
};

pack["11261"] = { "Doutor Theolen Krastinov",
"* O Açoubeiro: combate contínuo; enfurecido, entra em FRENESIA com dano e velocidade de ataque altíssimos — tanque em defesas, priorizar a cura enquanto durar."
};

pack["11622"] = { "Ossorrange",
"* O gigante do ossário chega cercado por esqueletos: o protetor o ataca antes.",
"* Ele ataca com um CLEAVE — NINGUÉM na frente, mas o tanque.",
"* Ele continua a diminuir a ameaça do tanque: DPS deve atacar em vez de roubar a aggro."
};

-- ------------------------------------- --
-- Profundezas Rocha Negra : Zona 230 (classic) --
-- ------------------------------------- --

pack["8983"] = { "Lorde Golem Argelmach",
"* Um Chain Lightning que salta entre os próximos: espalhem-se enquanto dura.",
"* Ele luta com dois de seus construtos ativos: o tanque os separa e divide o ataque.",
"* Não apressem: os golems caídos não encerram a luta — varram todo o salão."
};

pack["9016"] = { "Bael'gar",
"* Sua explosão de Magma pode ter até 3 camadas em 24 segundos no tanque: rotação do tanque ou um efeito de purificação se disponível.",
"* O summon de Brood lança Fogo aleatoriamente com um minion de lama como presente: o tanque pega-o e ele morre rapidamente."
};

pack["9017"] = { "Lorde Incendius",
"* A maldição do Lorde Elemental: remove 100-132 Resistência a Fogo, 30 s e até três vezes: faz com que o alvo se afaste das chamas.",
"* Forte impacto: lança o tanque para trás (lava por toda parte): de volta para uma parede.",
"* A tempestade de fogo pune a área próxima ~30 s e seu ataque flamejante tem alcance de 20 m: os jogadores de combate saem e o curandeiro cobre o ataque."
};

pack["9018"] = { "Suprema Interrogadora Gerstahn",
"* O chefe das salas de interrogatório: seus projéteis sombrios punem os conjuradores — cura atenta e a dispersão da sala."
};

pack["9019"] = { "Imperador Dagran Thaurissan",
"* Avatar of Flame: 10 s totalmente inmune a la magia con fuego añadido a sus golpes: los lanzadores deben mantenerlos mientras duren.",
"* Mão de Thaurissan: um golpe de fogo que causa atordoamento por 5 s — melhor sem uma pilha para que vários não percam o controle ao mesmo tempo.",
"* Fúria de Ferro: seu machado lança até 3 golpes extras e aumenta seu crítico em 10% por 5 s: o tanque deve manter o ataque com curas.",
"* Princesa Moira Bronzebeard luta ao seu lado: ele a cura repetidamente e pune com magia sagrada e sombra: controle-a ou, se o grupo estiver consumindo rapidamente, finalize-a antes dele."
};

pack["9024"] = { "Piromante Sábia Semente",
"* O mago do recinto: fogo em área no grupo — espalhem-se e curem através dele."
};

pack["9025"] = { "Lorde Pétror",
"* Seu War Stomp (2 s) pune tudo nas proximidades e interrompe os lançamentos de Earth Shock: espalhem-se e não lancem nela.",
"* A Flame Wave ocorre a cada ~12 s: os jogadores de melee devem sair do raio e retornar."
};

pack["9027"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

pack["9028"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

pack["9029"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

pack["9030"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

pack["9031"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

pack["9032"] = { "Supremo Juiz Durólito",
"* O evento da arena: o anel gera UM dos seis campeões (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — o tanque pega e a luta é uma disputa direta."
};

pack["9033"] = { "General Forjaversa",
"* Seu Sunder continua a remover a armadura do tanque, pois se acumula: rotação se acumular.",
"* Crits aceleram sua mão e o Enrage aumenta o dano físico: os curandeiros mantêm a sequência com ele."
};

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

pack["9041"] = { "Carcereiro Stilgiss",
"* O guardião do cofre: seu ogre Verek luta ao seu lado — o tanque separa ou os mantém separados; cura constante."
};

pack["9056"] = { "Fineous Forçanegra",
"* O gnomo da fundição: um combate em área atrás de um bom tanque."
};

pack["9156"] = { "Embaixador Fogaçoite",
"* Constant Fire Blast em melee: rotação ou cura no ritmo.",
"* Espíritos Ardentes: elementais pelos runas do salão; aquele que o atinge dá +5% de dano e aumenta o tamanho em até 50 stacks: bloqueie o caminho e elimine-os no caminho."
};

pack["9319"] = { "Mestre de Matilha Grebmar",
"* O grupo amarrado vem primeiro: AoE e controle nos cães; o mestre no tanque."
};

pack["9499"] = { "Birra Guardachave",
"* O barman do Guzzler: quando ele ataca, toda a taverna se junta — os clientes chegam em ondas: o tanque deve usar ataques em área e evitar erros."
};

pack["9502"] = { "Falange",
"* O guarda mecânico do salão da forja: ataque corpo a corpo pesado no tanque."
};

pack["9537"] = { "Hurley Bafonegro",
"* O bêbado da taverna: um ataque direto atrás de um bom tanque."
};

pack["9938"] = { "Magmus",
"* O gigante da cidadela: ataques corpo a corpo pesados no tanque e cura constante."
};

-- ------------------------------ --
-- Dire Maul : Zona 429 (classic) --
-- ------------------------------ --

pack["11486"] = { "Príncipe Tortheldrin",
"* O príncipe que guarda os pylons: seus guardas caem primeiro, depois ele.",
"* Su Summons (|cff71d5ff|Hspell:22995|h[Summon]|h|r) preenchem a sala e o Whirling Strike (|cff71d5ff|Hspell:67037|h[Whirling Strike]|h|r) ataca em área — saia."
};

pack["11487"] = { "Magíster Kalendris",
"* O mago: aos 50% ele usa a forma sombria (|cff71d5ff|Hspell:22917|h[Shadowform]|h|r) e ataca com mais força.",
"* Seu Dominate Mind (|cff71d5ff|Hspell:7645|h[Dominate Mind]|h|r) rouba um jogador: remova a magia dele."
};

pack["11488"] = { "Illyanna Corvalho",
"* O arqueiro: seu Charge (|cff71d5ff|Hspell:22911|h[Charge]|h|r) atira no alvo mais distante e ninguém fica no Immolation Trap (|cff71d5ff|Hspell:22910|h[Immolation Trap]|h|r).",
"* Concussive Shot (|cff71d5ff|Hspell:22914|h[Concussive Shot]|h|r) desacelera e seu Volley (|cff71d5ff|Hspell:30933|h[Volley]|h|r) atinge em área: o grupo se espalha."
};

pack["11489"] = { "Gavíneo Lenhatorta",
"* A árvore ancestral: suas {Grasping Vines} (|cff71d5ff|Hspell:22924|h[Grasping Vines]|h|r) se entrelaçam e suas raízes (|cff71d5ff|Hspell:22994|h[Entangle]|h|r) GRAB os ataques corpo a corpo — purgue-os (magia e movimento).",
"* Seu {Trample} (|cff71d5ff|Hspell:5568|h[Trample]|h|r) pune os ataques corpo a corpo."
};

pack["11490"] = { "Zevrim Thornhoof",
"* Seu Sacrifício (|cff71d5ff|Hspell:22651|h[Sacrifice]|h|r) prende o jogador e envia um demônio: mate o demônio AGORA enquanto o marcado recebe cura.",
"* Dor Intensa (|cff71d5ff|Hspell:22478|h[Intense Pain]|h|r) ataca o marcado: cura.",
"* Seu Raio de Sombra (|cff71d5ff|Hspell:17228|h[Shadow Bolt Volley]|h|r) pune na área: o melee se espalha para trás."
};

pack["11492"] = { "Alzzin o Moldador Selvagem",
"* O metamorfo: ele assume a forma de Árvore (|cff71d5ff|Hspell:22688|h[Tree Form]|h|r) depois a forma de Lobo Dire (|cff71d5ff|Hspell:22660|h[Dire Wolf Form]|h|r) — o combate muda de rosto com cada mudança.",
"* Sua Regeneração Selvagem (|cff71d5ff|Hspell:7948|h[Wild Regeneration]|h|r) SEMPRE interrompível: se atingir, ele fica cheio de vida.",
"* Enervar (|cff71d5ff|Hspell:22661|h[Enervate]|h|r) e Putrefação (|cff71d5ff|Hspell:22662|h[Wither]|h|r) são Doenças: o druida as remove.",
"* Mangle (|cff71d5ff|Hspell:22689|h[Mangle]|h|r) sangra o tanque, suas raízes (|cff71d5ff|Hspell:22415|h[Entangling Roots]|h|r) prendem os conjuradores e Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) os lança."
};

pack["11496"] = { "Immol'thar",
"* O demônio aprisionado pelos cinco pilares: ele fica LIVRE quando os pilares explodem — toda a sala é o campo de batalha.",
"* Seus Olhos (|cff71d5ff|Hspell:22899|h[Olhos de Immol'thar]|h|r) queimam um jogador e o Passo (|cff71d5ff|Hspell:5568|h[Passo]|h|r) varre os jogadores de combate.",
"* Ele abre Portais (|cff71d5ff|Hspell:22950|h[Portal de Immol'thar]|h|r) que lançam criaturas: ataque em área o anel enquanto o tanque mantém a posição."
};

pack["11501"] = { "Rei Gordok",
"* O ataque do Berserker do Rei (|cff71d5ff|Hspell:22886|h[Berserker Charge]|h|r) arremessa o alvo, seu Mortal Strike (|cff71d5ff|Hspell:16856|h[Mortal Strike]|h|r) ATINGE o tanque (rotate dois) e War Stomp (|cff71d5ff|Hspell:16727|h[War Stomp]|h|r) causa stun na área.",
"* Seu Sunder Armor (|cff71d5ff|Hspell:15572|h[Sunder Armor]|h|r) se acumula no tanque: fortes curas atentas.",
"* Para a corrida de tributo: cada guarda VIVO quando ele cai enche o peito de Mizzle."
};

pack["13280"] = { "Espawn de Água",
"* A bomba de água do santuário: seu Riptide (|cff71d5ff|Hspell:22419|h[Riptide]|h|r) atinge em área — os personagens de combate se espalham.",
"* Seu Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) explode sob seus pés: evite a piscina.",
"* A 66% e 33% ele SUMMONA hydrolings (|cff71d5ff|Hspell:22714|h[Summon Hydroling]|h|r): ataque em área os minions e volte para o tanque."
};

pack["14321"] = { "Guarda Fengus",
"* Um guarda de palácio sem habilidades registradas — um confronto direto atrás de um tanque estável em puxões limpos."
};

pack["14322"] = { "Kreeg, o Esmagador",
"* O bêbado do tribunal: seu Booze Spit (|cff71d5ff|Hspell:22833|h[Booze Spit]|h|r) atinge em um cone e seu War Stomp (|cff71d5ff|Hspell:16740|h[War Stomp]|h|r) treme na área.",
"* Whirlwind (|cff71d5ff|Hspell:15578|h[Whirlwind]|h|r) ataca os jogadores de melee e, em 50%, o Drunken Rage (|cff71d5ff|Hspell:22835|h[Drunken Rage]|h|r) o ilumina: cura pronta."
};

pack["14323"] = { "Guarda Slip'kik",
"* Outro guarda de palácio sem habilidades registradas — ataque ao tanque e sem erros."
};

pack["14324"] = { "Cho'Rush o Observador",
"* O curandeiro do tribunal: seus curas não alertam — interrompa todos os lançamentos verdes à vista.",
"* Para a corrida de tributo, paga-se a deixá-lo vivo: os guardas de pé quando o rei cai enchem o peito de Mizzle."
};

pack["14325"] = { "Capitão Kromcrush",
"* Gordok, o capitão da guarda, sem habilidades especiais registradas — posicione o tanque na frente e o grupo alerta."
};

pack["14326"] = { "Guarda Mol'dar",
"* Shield Bash (|cff71d5ff|Hspell:11972|h[Shield Bash]|h|r) interrompe e Shield Charge (|cff71d5ff|Hspell:15749|h[Shield Charge]|h|r) aplica o STAMPE no alvo: mantenha distância e uma posição traseira clara.",
"* Seu Golpe (|cff71d5ff|Hspell:14516|h[Strike]|h|r) ataca o tanque e em 50% entra em Frenesi (|cff71d5ff|Hspell:8269|h[Frenzy]|h|r): alto DPS no final."
};

pack["14327"] = { "Lethtendris",
"* Seus projéteis de Shadow Bolt (|cff71d5ff|Hspell:17228|h[Shadow Bolt]|h|r) caem em área: os personagens de melee se espalham.",
"* Seus malefícios (|cff71d5ff|Hspell:13338|h[Curse of Thorns]|h|r e |cff71d5ff|Hspell:16247|h[Curse of Tongues]|h|r) são removidos e o Immolate (|cff71d5ff|Hspell:11962|h[Immolate]|h|r) queima os marcados.",
"* Sua criatura Pimgib ENFORÇA (|cff71d5ff|Hspell:22710|h[Enlarge]|h|r, purga-a), lança o Flame Buffet (|cff71d5ff|Hspell:22713|h[Flame Buffet]|h|r) que se EMPILHA e sua Blast Wave (|cff71d5ff|Hspell:15744|h[Blast Wave]|h|r) atinge em área."
};

-- ------------------------------------------------ --
-- Pináculo da Rocha Negra Inferior/Superior : Zona 229 (classic) --
-- ------------------------------------------------ --

pack["9196"] = { "Grão-lorde Omokk",
"* O lord ogro do degrau: ataque corpo a corpo violento no tanque, cura constante."
};

pack["9236"] = { "Caçador Sombrio Vosh'gajin",
"* A sacerdotina das sombras: seus projéteis de sombra punem os conjuradores — cura atenta neles."
};

pack["9237"] = { "Senhor da Guerra Voone",
"* O Mestre da Guerra: um combate direto com um tanque firme."
};

pack["9568"] = { "Lorde Supremo Wyrmthalak",
"* O senhor da toca: ataques corpo a corpo sustentados e cura constante."
};

pack["9736"] = { "Intendente Zigris",
"* O armeiro-chefe: uma luta direta atrás de um bom tanque."
};

pack["9816"] = { "Sentinela de Fogo Embervisor",
"* O guardião da forja: uma vez que seu ritual se ativa, ele cai como os outros — um combate direto."
};

pack["10220"] = { "Halycon",
"* A filha da teia: ataque corpo a corpo no tanque, sem habilidades especiais ativadas."
};

pack["10264"] = { "Solakar Coroa de Chamas",
"* O senhor da incubadora: abrir os ovos gera enxames de Drakonid — ataque em área ao enxame e ataque corpo a corpo sustentado no chefe."
};

pack["10268"] = { "Gizrul, o Subjugador",
"* O escravista: ataque cuerpo a cuerpo no o tanque, sem armas especiais."
};

pack["10339"] = { "Chefe Guerreiro Laceral Mão Negra",
"* O Warchief cai com seu drake Gyth na luta: cura forte no tanque e fique atento ao fogo do drake."
};

pack["10363"] = { "General Drakkisath",
"* O general do ala superior: seu Conflagration (|cff71d5ff|Hspell:16805|h[Conflagration]|h|r) inflama um jogador — o alvo sai do grupo AGORA enquanto está em chamas."
};

pack["10429"] = { "Chefe Guerreiro Laceral Mão Negra",
"* O Warchief cai com seu drake Gyth na luta: cura forte no tanque e fique atento ao fogo do drake."
};

pack["10430"] = { "A Besta",
"* A Besta: seu rugido aterroriza o grupo e ele ataca o tanque — cura constante."
};

pack["10509"] = { "Jed Mirarruna",
"* O Runewatcher: ataque cuerpo a cuerpo directo contra o tanque."
};

pack["10584"] = { "Urok Uivo-da-ruína",
"* Nascido do ritual do altar da caverna: o ritual chama hordas — AoE e limpa o combate corpo a corpo antes de atacar."
};

pack["10596"] = { "Mãe Queimateia",
"* A mãe aranha: sua pet de cristalização petrifica um dos membros do grupo e sua mordida venenosa ataca os membros de combate corpo a corpo — atenção à cura."
};

pack["10899"] = { "Goraluk Rachadastra",
"* O ferreiro Drakonid: um combate frontal atrás de um bom tanque."
};

pack["16042"] = { "Senhor Valthalak",
"* O Senhor Sagrado: seus summons (|cff71d5ff|Hspell:27249|h[Summon Assassin]|h|r) trazem assassinos — o tanque os pega e o dano corpo a corpo continua atacando."
};

-- ------------------------------- --
-- Stratholme : Zona 329 (classic) --
-- ------------------------------- --

pack["10435"] = { "Magistrado Barthilas",
"* Seu Crowd Pummel (|cff71d5ff|Hspell:10887|h[Crowd Pummel]|h|r) ataca os inimigos próximos: o grupo se espalha.",
"* Sua Furious Anger (|cff71d5ff|Hspell:16791|h[Furious Anger]|h|r) se acumula MUITO RÁPIDO no clássico: DPS não devem hesitar.",
"* Seu Mighty Blow (|cff71d5ff|Hspell:14099|h[Mighty Blow]|h|r) pune o tanque com cura aplicada.",
"* Ele corre para o fundo do salão assim que é engajado: os inimigos circundantes são eliminados ANTES."
};

pack["10436"] = { "Baronesa Anastari",
"* POSSESSES um jogador (|cff71d5ff|Hspell:17244|h[Possess]|h|r): o jogador possuído luta contra o grupo — traga-os para que tenham a vida REDUZIDA à METADE para libertá-los, sem matá-los.",
"* Seu Silêncio (|cff71d5ff|Hspell:18327|h[Silence]|h|r) é de área: espalhe-o para que não afete a todos.",
"* Sua Maldição de Banshee (|cff71d5ff|Hspell:16867|h[Banshee Curse]|h|r) é uma maldição que REDUZ o poder de cura no alvo marcado: remova-a AGORA."
};

pack["10437"] = { "Nerub'enkan",
"* A aranha gigante invoca escarabós mortos-vivos (|cff71d5ff|Hspell:17235|h[Raise Undead Scarab]|h|r) continuamente: os ataques de área os eliminam.",
"* Seu Pierce Armor (|cff71d5ff|Hspell:6016|h[Pierce Armor]|h|r) deixa o tanque SEM armadura: defensivas ou um segundo tanque.",
"* Suas teias de Envolvimento (|cff71d5ff|Hspell:4962|h[Encasing Webs]|h|r) prendem um jogador por um tempo: cure e continue lutando."
};

pack["10438"] = { "Maleki o Palido",
"* Sua Tumba de Gelo (|cff71d5ff|Hspell:16869|h[Tumba de Gelo]|h|r) congela um jogador por segundos: cure-o e a luta nunca termina.",
"* Sua Drenagem de Vida (|cff71d5ff|Hspell:17620|h[Drenagem de Vida]|h|r) drena um jogador — cura atenta.",
"* Seus projéteis de gelo desaceleram o lançador e drenam sua mana."
};

pack["10439"] = { "Ramstein o Gorger",
"* Aquele antes da sala do Barão: ATAQUES brutais no tanque com cura contínua; seu Knockout (|cff71d5ff|Hspell:17307|h[Knockout]|h|r) IMPEDE o grupo e seu Trample (|cff71d5ff|Hspell:5568|h[Trample]|h|r) pune os jogadores de melee.",
"* Quando ele cai, a onda de guardas não-mortos inunda a praça: reúna-se e elimine-os antes do Barão."
};

pack["10440"] = { "Barão Rivendare",
"* O último barão: sua habilidade Raise Dead (|cff71d5ff|Hspell:17473|h[Raise Dead]|h|r) invoca esqueletos que MARCHAM em direção a ele e o curam ao contato, e ~12 segundos depois, ele termina com Death Pact (|cff71d5ff|Hspell:17471|h[Death Pact]|h|r) — Elimine-os de longo alcance ANTES.",
"* Sua Shadow Bomb (|cff71d5ff|Hspell:17434|h[Shadow Bomb]|h|r) atinge um jogador: o grupo se espalha.",
"* Sua aura unholy ataca qualquer um próximo e causa Mortal Wounds no tanque: cura constante para o grupo."
};

pack["10516"] = { "O Imperdoável",
"^ O fantasma da porteira: combate em área; sua Nova de Gelo (|cff71d5ff|Hspell:14907|h[Frost Nova]|h|r) congela os combatentes em melee — saia e volte para ele."
};

pack["10558"] = { "Cantalar Forresten",
"* Sua Canção de Encantamento (|cff71d5ff|Hspell:16798|h[Canção de Encantamento]|h|r) causa sono em todo o grupo: SEMPRE é interrompido.",
"* Seu Grito Desmoralizante (|cff71d5ff|Hspell:16244|h[Grito Desmoralizante]|h|r) enfraquece os membros do grupo; os outros, dano direto."
};

pack["10808"] = { "Tico, o Cruel",
"* A abominação gigante: seu Garra Voraz (|cff71d5ff|Hspell:17470|h[Ravenous Claw]|h|r) ataca à frente e o CURA — apenas o tanque avança; em 50% ele IRRITA (|cff71d5ff|Hspell:8599|h[Enrage]|h|r) — supere o furor."
};

pack["10811"] = { "Arqueólogo Galford",
"* O instrutor de fogo: sua Nova de Fogo (|cff71d5ff|Hspell:17366|h[Fire Nova]|h|r) ataca TUDO ao seu redor — os jogadores de combate saem para atacar.",
"* Se Ventos Ardentes (|cff71d5ff|Hspell:17293|h[Burning Winds]|h|r) atingem um jogador: o grupo se espalha.",
"* Seu Pyroblast (|cff71d5ff|Hspell:17274|h[Pyroblast]|h|r) SEMPRE é interrompido."
};

pack["10812"] = { "Balnazzar",
"* A luta começa com o Grande Cavaleiro Dathrohan com seu Martelo do Cavaleiro (|cff71d5ff|Hspell:17286|h[Martelo do Cavaleiro]|h|r); no meio da luta, ele se TRANSFORMA no demônio Balnazzar.",
"* Balnazzar: seu Sono (|cff71d5ff|Hspell:12098|h[Sono]|h|r) é uma magia — neutralize-o; seu Explosão Mental (|cff71d5ff|Hspell:17287|h[Explosão Mental]|h|r) atinge um conjurador e seu Grito Psíquico (|cff71d5ff|Hspell:13704|h[Grito Psíquico]|h|r) aterroriza o grupo — espalhe-se para que o pânico não se espalhe."
};

pack["10813"] = { "Balnazzar",
"* A luta começa com o Grande Cavaleiro Dathrohan com seu Martelo do Cavaleiro (|cff71d5ff|Hspell:17286|h[Martelo do Cavaleiro]|h|r); no meio da luta, ele se TRANSFORMA no demônio Balnazzar.",
"* Balnazzar: seu Sono (|cff71d5ff|Hspell:12098|h[Sono]|h|r) é uma magia — neutralize-o; seu Explosão Mental (|cff71d5ff|Hspell:17287|h[Explosão Mental]|h|r) atinge um conjurador e seu Grito Psíquico (|cff71d5ff|Hspell:13704|h[Grito Psíquico]|h|r) aterroriza o grupo — espalhe-se para que o pânico não se espalhe."
};

pack["10997"] = { "Mestre de Canhões Willey",
"* Do do parapeto: artilharia em áreas e Riflemen Ressuscitados (|cff71d5ff|Hspell:17279|h[Summon Risen Rifleman]|h|r) em ondas: eliminados à vista.",
"* Seu Knock Away (|cff71d5ff|Hspell:10101|h[Knock Away]|h|r) joga o tanque para longe: ele retorna e ninguém o alcança."
};

pack["11032"] = { "Malor o Zelo",
"* Seu Ground Smash (|cff71d5ff|Hspell:12734|h[Ground Smash]|h|r) atinge uma área e IMPEDE por 2 s — os conjuradores mantêm distância e cura focada no tanque; seu Head Crack (|cff71d5ff|Hspell:16172|h[Head Crack]|h|r) pune o tanque.",
"* Sua Holy Light (|cff71d5ff|Hspell:15493|h[Holy Light]|h|r) SEMPRE é interrompido: ele cura a si mesmo."
};

pack["11143"] = { "Chefe do Correio Malown",
"* Opcional na praça do mercado (observa a correspondência): seu Golpe de Costas (|cff71d5ff|Hspell:6253|h[Backhand]|h|r) causa atordoamento e sua Maldição de Fraqueza (|cff71d5ff|Hspell:12741|h[Curse of Weakness]|h|r) é uma maldição para remover."
};

-- ---------------------------------- --
-- Covil da Onyxia : Zona 249 (classic) --
-- ---------------------------------- --

pack["10184"] = { "Onyxia",
"* Fase 1 no chão: seu Respiração Flamejante (|cff71d5ff|Hspell:18435|h[Flame Breath]|h|r) pune o tanque, seu Buffet de Asas (|cff71d5ff|Hspell:18500|h[Wing Buffet]|h|r) envia os membros do grupo para trás e seu Knock Away (|cff71d5ff|Hspell:19633|h[Knock Away]|h|r) quebra a aderência do tanque.",
"* Fase 2 no ar: Fireballs (|cff71d5ff|Hspell:18392|h[Fireball]|h|r) nos alvos e sua Respiração Profunda (|cff71d5ff|Hspell:17086|h[Deep Breath]|h|r) varre metade do local — o chat avisando: corra para o lado oposto.",
"* Fase 3 ao pousar: tudo retorna e, em cima disso, seu Rugido Aterrador (|cff71d5ff|Hspell:18431|h[Bellowing Roar]|h|r) causa o medo em metade do grupo; as criaturas da caverna se levantam — ataque em área a horda sem perder o ritmo do chefe."
};


-- Minas Mortas : Zona 36 (classic) --

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["639"] = { "Edwin VanCleef",
"* Se aliados (|cff71d5ff|Hspell:5200|h[Allies]|h|r) pedem que seus guardas: os eliminem antes que se acumulem no tanque.",
"* Seu Thrash (|cff71d5ff|Hspell:3391|h[Thrash]|h|r) atinge seus próprios aliados: os adicionais ficam mais fortes, então elimine-os primeiro."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["642"] = { "Sneed",
"* Seu Terrify (|cff71d5ff|Hspell:7399|h[Terrify]|h|r) tem um jogador: dispelar o medo, a luta para enquanto dura.",
"* Seu Disarm (|cff71d5ff|Hspell:6713|h[Disarm]|h|r) remove a arma do jogador marcado: não é uma troca de tanque, é um ataque no dano do tanque.",
"* Seu Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) joga Sneed da máquina: Sneed corre solto, mate-o e volte para o Shredder."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["643"] = { "Sneed",
"* Seu Terrify (|cff71d5ff|Hspell:7399|h[Terrify]|h|r) tem um jogador: dispelar o medo, a luta para enquanto dura.",
"* Seu Disarm (|cff71d5ff|Hspell:6713|h[Disarm]|h|r) remove a arma do jogador marcado: não é uma troca de tanque, é um ataque no dano do tanque.",
"* Seu Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) joga Sneed da máquina: Sneed corre solto, mate-o e volte para o Shredder."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["644"] = { "Rhahk'Zor",
"* Seu Soco (|cff71d5ff|Hspell:6304|h[Slam]|h|r) atinge um jogador aleatório: o tanque troca de posição para que o dano nunca pare."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["645"] = { "Biscoito",
"* Seu cura (|cff71d5ff|Hspell:5174|h[Heal]|h|r) é o único que ele usa: interrompa-o sempre que possível."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["646"] = { "Sr. Castiga",
"* Seu Smite Stomp (|cff71d5ff|Hspell:6432|h[Smite Stomp]|h|r) tem um tempo de contagem de 10 segundos: quando o buff termina, o impacto no chão atinge — espalhando-se logo antes de acabar.",
"* Seu Smite Slam (|cff71d5ff|Hspell:6435|h[Smite Slam]|h|r) atinge um jogador marcado: o tanque troca de lugar.",
"* Seus Nimble Reflexes (|cff71d5ff|Hspell:6264|h[Nimble Reflexes]|h|r) é um buff em um jogador: desfaça-o."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["647"] = { "Capitão Peleverde",
"* Seu arpão envenenado (|cff71d5ff|Hspell:5208|h[Poisoned Harpoon]|h|r) é um ataque à distância que envenena: dispare o veneno e mantenha o tanque com a cura."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["1763"] = { "Gilnid",
"* Seu Metal Derretido (|cff71d5ff|Hspell:5213|h[Molten Metal]|h|r) causa que um jogador receba metal em chamas: afaste-se do fogo e deixe o tanque pegá-lo novamente."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3586"] = { "Minerador João",
"* Seu Pierce Armor (|cff71d5ff|Hspell:12097|h[Pierce Armor]|h|r) é um ataque que destrói a armadura do tanque: mantenha-o próximo e mantenha os buffs de armadura ativos."
};

-- Bastilha da Presa Negra : Zona 33 (classic) --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3872"] = { "Capitão dos Mortos",
"* Chamado pelo Comandante Springvale: luta em campo aberto, mate-o antes do chefe.",
"* Seus ataques no tanque são fortes: mantenha a cura enquanto o grupo estiver no Capitão."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3886"] = { "Garras de Carne",
"* Combate frontal: o módulo DBM não apresenta avisos para ele — tanque, cure e ataque-o.",
"* Mantenha-o voltado para a parede: tudo na frente dele é atingido."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3887"] = { "Barão Silverlaine",
"* Sua Véu da Sombra (|cff71d5ff|Hspell:7068|h[Veil of Shadow]|h|r) é uma maldição em um jogador: desfaça-a para que a cura continue fluindo.",
"* Ele chama seus guardas: DPS total nos adjuntos antes que eles atinjam o tanque."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3914"] = { "Rethilgore",
"* Combate frontal: o módulo DBM não apresenta avisos para ele — tanque, cure e cause dano."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3927"] = { "Mestre Lobo Nandos",
"* Ele invoca os Worgs de Bleak (|cff71d5ff|Hspell:7487|h[Bleak Worg]|h|r): mate-os antes que cheguem ao tanque.",
"* Seu Lupine Horror (|cff71d5ff|Hspell:7489|h[Lupine Horror]|h|r) e Slavering Worg (|cff71d5ff|Hspell:7488|h[Slavering Worg]|h|r) atacam o grupo: observe os efeitos negativos e mantenha a cura."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4274"] = { "Fenrus o Devorador",
"* Sua saliva tóxica (|cff71d5ff|Hspell:7125|h[Toxic Saliva]|h|r) envenena um jogador: desfaça o veneno.",
"* Ele é um lutador corpo a corpo rápido: mantenha-o na frente do tanque e não deixe o grupo ser pego atrás dele."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4275"] = { "Arquimago Arugal",
"* Sua Maldição de Arugal (|cff71d5ff|Hspell:7621|h[Arugal's Curse]|h|r) amaldiçoa um jogador: desfaça-a.",
"* Sua Porta Sombria (|cff71d5ff|Hspell:7587|h[Shadow Port]|h|r) se abre e ele chama suas criaturas sombrias: mate-as à vista."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4278"] = { "Comandante Floraval",
"* Combate frontal: ele invoca o Capitão Deathsworn (3872) e mais de seus mortos — derrube o Capitão primeiro.",
"* Mantenha-o voltado para a parede: os adicionais vêm de trás."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4279"] = { "Odo o Vigia Cego",
"* Combate frontal: o módulo DBM não apresenta avisos para ele — tanque, cure e cause dano."
};

-- City of Dalaran : Zona 2959 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900001"] = { "Anomalia Arcana",
"* Focal Blast é um feixe arcano canalizado que varre a área: siga seu caminho e posicione-se fora da linha, em vez de ficar parado.",
"* Seu Arcane Bolt vai diretamente para o tanque: mantenha-o sob controle e não deixe o grupo se agrupar ao longo do feixe.",
"* Elimine os inimigos menores ao redor da plataforma antes da chegada: lutar contra eles transforma o encontro em um clear de adicionais."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900002"] = { "Anciente Vil",
"* Entangle roots em um jogador e aplica dano nele: quebre as raízes rapidamente, o dano continua enquanto o jogador estiver preso.",
"* Fel Timbers deixa zonas de névoa de veneno: saia imediatamente da área verde, não espere o efeito terminar.",
"* Mantenha-o longe das zonas de névoa: raízes mais veneno é o perigo real aqui."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900003"] = { "Devorador de Mana",
"* Debilitate esgota a mana dos jogadores próximos a ele: espalhem-se e fiquem de olho no seu mana, a luta pode esgotá-lo rapidamente.",
"* Drain Vitality atinge o tanque e causa dano arcano ao longo do tempo: o tanque precisa de atenção constante.",
"* O guia beta diz que ele é imune a dano arcano: use outro tipo de dano.",
"* Limpe a área antes do pull e termine a luta rapidamente."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900004"] = { "Elemental de Mana",
"* Manamorph transforma um dos seus jogadores em outra coisa: desfaça-o assim que puder.",
"* Silêncio impede os conjuradores: o curandeiro mantém a distância para não ser silenciado durante um cura.",
"* Mate os dois Fantomas de Mana primeiro, depois os pequenos elementais de Mana, e somente então o chefe.",
"* Interrompa o Mana Burn dos adjuntos sempre que puder.",
"* Pegue o chefe e os dois Fantomas juntos, encarando-os para longe do grupo."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900005"] = { "Sentinela Oscilante",
"* Os ataques de carga se ativam e, em seguida, emitem dano arcano para todos os próximos: os jogadores de combate saem durante a preparação e retornam quando termina.",
"* Os jogadores à distância podem permanecer na distância máxima, mas não deixe que todo o grupo fique no chefe.",
"* Elimine primeiro os Angry Tomes: eles se acumulam enquanto ele está carregando."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900006"] = { "Vulto do Arquimago",
"* Mantenha-o dentro do seu quarto: se ele sair, o encontro pode ser reiniciado.",
"* Arcane Explosion atinge tudo o que estiver perto dele: o curandeiro permanece à distância e o tanque observa sua saúde.",
"* Mova-se para fora do caminho do Bounding Mana orb.",
"* Quando ele ficar sem mana, prepare-se para Mass Polymorph: os jogadores à distância podem usar uma parede para bloqueá-lo, se a posição permitir.",
"* Evocation é o carregamento da ovelha: interrompa-a, se puder."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900007"] = { "Lyn, o Ignorado",
"* Ele invoca esqueletos: mantenha-os no lugar e mate-os rapidamente antes que se acumulem.",
"* O ataque de raio é de dano em grupo: mantenha o grupo espalhado e observe as barras de vida.",
"* A maldição de Espinhos atinge o tanque: remova a maldição se sua classe puder.",
"* Mantenha o Lyn longe das patrulhas enquanto você lida com os esqueletos."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900008"] = { "Atrexis, o Cavaleiro da Sepultura",
"* Recolher cada esqueleto assim que ele apareça: esqueletos soltos tornam a luta confusa.",
"* Desarmar remove as armas do tanque: observe sua saúde logo após, o tanque está indefeso.",
"* Unholy Frenzy aumenta sua velocidade de ataque: use uma defesa pessoal durante e mantenha o tanque com vida.",
"* Espere o tanque ter ameaça antes de usar dano em área nos esqueletos."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900009"] = { "Aparição de Mana",
"* As sessões beta nunca testaram este encontro: não existem habilidades documentadas, portanto, observe o que ele faz no jogo."
};

-- Excavation Site : Zona 2998 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900010"] = { "Salespino",
"* Tendon Rip diminui a velocidade do alvo para quase zero: observe a velocidade de movimento do tanque e dos jogadores de longo alcance.",
"* Dust Storm atinge todos os próximos a ele e reduz a sua chance de acerto: o curandeiro deve ficar mais de 10 metros de distância.",
"* Mate os crocodilos ao redor primeiro, especialmente os que vêm da água: eles são mais perigosos do que as mecânicas do chefe.",
"* Lute em terreno aberto e não o mova desnecessariamente."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900011"] = { "Caninumbra",
"* Causa dano por pulso no-alvo: o tank precisa de cura contínua.",
"* O rugido aterrorizante causa medo: interrompa-o ou use um escudo contra o medo, e nunca lute perto da grama alta, pois fugir atrai mais raposas.",
"* A fúria ocorre em torno de 30% de vida e aumenta a sua velocidade e dano de ataque: mantenha uma cura preparada para isso.",
"* Controle os dois caçadores de Thicket que vêm com ele, ou mate um deles rapidamente."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900012"] = { "Guardião da Relíquia",
"* Alguém precisa acender o Painel de Arquivo para iniciar o combate: recuperar vida e mana antes de fazê-lo.",
"* Thunderclap atinge todos os próximos e reduz a sua velocidade de ataque e movimento: os jogadores de longo alcance devem manter-se a 10 metros.",
"* Ele derruba o tanque e o paralisa por cinco segundos: use as estruturas próximas para limitar a distância em que o lança e recolha a ameaça assim que estiver livre.",
"* Prepare os curas para o tanque antes do ataque: ele sofre muito dano enquanto está paralisado."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900013"] = { "Horror do Planalto",
"* Um elemental pantanoso que se gera perto do acampamento de Faucedraco, no local de escavação.",
"* Nenhum de seus mecanismos é documentado: não há nada para o que se preparar, então limpe a área ao redor e observe o que ele faz no jogo."
};

-- Ruins of Lordaeron : Zona 2999 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900014"] = { "Sugapresa",
"* Leech Poison drena a saúde do alvo ao longo do tempo e a concede a ele: o tanque perde saúde durante toda a luta.",
"* Remova o veneno se a sua classe puder; caso contrário, mantenha constantes curas no tanque.",
"* Dois pequenos aranhas vêm com ele: combine antes de puxar se vocês vão matar primeiro ou focar no chefe.",
"* Recolha as aranhas também e elimine os patrulheiros de aranhas no caminho."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900015"] = { "Rath'mael",
"* Flamestrike marca uma área: quando o ataque começar, saia dela e posicione-se em terreno livre.",
"* Interrompa ou stun o Flamestrike, se possível; caso contrário, deixe a área marcada.",
"* Fire Shield queima tudo ao seu redor: o tanque e os membros da equipe recebem a maior parte.",
"* Ele fica no cemitério de Lordaeron: elimine os inimigos próximos antes do pull."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900016"] = { "O Carniceiro",
"* Knockout ataca o tanque com força, derrubando-o e o atordando: mantenha a saúde do tanque completa antes dele e recolha a ameaça no momento em que o atordoamento termina.",
"* Lute com o lado traseiro do tanque contra uma parede, para que o Knock não o envie para o grupo.",
"* Trample ataca a todos perto dele: não deixe que ele caminhe em direção a outros grupos.",
"* Com um segundo tanque, use-o para manter o chefe enquanto o principal está atordoado."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900017"] = { "O Abandonado",
"* Elimine as três ondas iniciais: o evento não dá tempo para beber entre elas, e um inimigo preso impede que o evento continue.",
"* Frost Nova causa dano e enraíza a todos próximos: o curandeiro permanece à distância e os personagens de combate saem.",
"* Life Drain rouba vida: interrompa ou envenene assim que o chefe aparecer.",
"* Seus ataques corpo a corpo aplicam Chilled: o tanque ataca mais lentamente, então mantenha o dano nele alto."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900018"] = { "Capitão de Lordaeron",
"* Um inimigo raro que aparece no lado oeste das ruínas: com um grupo da Aliança, ele é amigável e não pode ser combatido.",
"* Atraia-o para uma área aberta e mate as outras criaturas ao redor antes de atacar."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900019"] = { "Viktor, o Vil",
"* Leech Poison esconde la salud do alvo ao longo do tempo e a transfere para ele: o tanque precisa de cura contínua.",
"* Limpe os patrulheiros próximos à casa em chamas e recupere sua mana antes de acender o fogo.",
"* O evento lança várias ondas seguidas sem descanso: elimine-os e mantenha-o longe de outros inimigos.",
"* Algumas sessões beta terminaram o evento sem Viktor aparecer: se isso acontecer, simplesmente não há luta para fazer."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900020"] = { "Bjork",
"* Escudo Anti-Magia o torna-o imune a magias por um tempo: os conjuradores param de atacar, os combatentes continuam atacando.",
"* Mighty Blow causa dano e arremete no alvo: mantenha o back do tanque contra uma parede e observe sua saúde após cada arremesso.",
"* Limpe a área antes do pull para que o patrulhamento de Necrophile não se junte à luta."
};

-- Hall of Thanes : Zona 3065 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900021"] = { "Faldrim Sidermar",
"* Atraia-o quando seu patrulhamento esteja separado dos grupos ao redor: com o patrulhamento ainda em pé, a luta se transforma em um combate contra vários inimigos.",
"* A Maldição de Anvilmar diminui a velocidade de ataque e lançamento de um jogador: desfaça-a se alguém conseguir remover as maldições.",
"* Ele ataca o tanque com força: observe a saúde do tanque, não a do grupo."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900022"] = { "Butim",
"* Leva o golem para um local aberto com uma parede atrás do grupo: ele atinge a parede e os cantos.",
"* Knock Away joga o tanque para longe: lutar ao lado de um patrulheiro, a habilidade Knock Chains atinge os outros mobs.",
"* Limpe a sala primeiro: os adds devem morrer antes do pull ou a habilidade Knock Chains não atingirá."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900023"] = { "Infurnus",
"* Mantenha o elemental longe do invocador: enquanto estiverem juntos, os adicionais continuam aparecendo.",
"* Elimine o Dark Iron Summoner primeiro, depois concentre-se no elemental.",
"* Fire Nova atinge tudo ao redor dele: os jogadores de longo alcance e o curandeiro devem manter a máxima distância, os jogadores de curto alcance devem sair antes de atingir.",
"* Combust causa dano ao longo do tempo: desfaça-o, se possível."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900024"] = { "Durgen Martelúgubre",
"* Ele vem com dois Golems de Pedra Menores: controle-os ou a sala fica cheia de monstros.",
"* Elimine os monstros da sala antes de puxar: ele não vale a pena lutar com monstros ao redor."
};
P.pt = pt;
