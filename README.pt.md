[English](README.md) · [Español](README.es.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · **Português** · [中文](README.zh.md)

**Conheça a luta antes do pull. Sobreviva a ela durante o combate.**

O Bosses explica como funciona um combate de chefe — em poucas linhas afiadas, no momento certo, no canal certo. Marque o chefe (ou deixe o addon detectar o início do encontro) e receba o resumo tático: o que o tanque deve vigiar, quem precisa desviar de quê, o que interromper, o que nunca pisar. É conhecimento escrito à mão e testado em combate, não um despejo de wiki: cada raid, masmorra e chefe de mundo traz táticas curadas à mão.

## Cobertura — todas as expansões de World of Warcraft

**12 pacotes de dados · ~1.590 entradas de chefe · Espanhol / Inglês / Francês / Alemão / Português (Brasil) / Chinês (simplificado).** Do Molten Core a Midnight e tudo o que há no meio:

| Expansão | Packs | Chefes | Idiomas |
|---|---|---|---|
| Vanilla | Molten Core, BWL, AQ20/40, Naxxramas, Onyxia + as masmorras clássicas (Gnomeregan, Scarlet Monastery, Maraudon, Uldaman, Zul'Farrak, Sunken Temple SoD, Stratholme, Dire Maul, Scholomance, Zul'Gurub…) | 334 | EN · ES · FR · DE · PT · ZH |
| The Burning Crusade | De Karazhan a Sunwell, masmorras heroicas, Zul'Aman | 130 | EN · ES · FR · DE · PT · ZH |
| Wrath of the Lich King | Naxxramas, Ulduar, ICC + 11 masmorras, Onyxia, Trial of the Champion | 173 | EN · ES · FR · DE · PT · ZH |
| Cataclysm | Firelands, Dragon Soul, BWD + masmorras, remakes de ZA/ZG | 113 | EN · ES · FR · DE · PT · ZH |
| Mists of Pandaria | As 5 raids, 9 masmorras, chefes de mundo | 134 | EN · ES · FR · DE · PT · ZH |
| Warlords of Draenor | Highmaul, Blackrock Foundry, Hellfire Citadel + 8 masmorras, elites de Tanaan | 91 | EN · ES · FR · DE · PT · ZH |
| Legion | As 5 raids, 12 masmorras, 20 chefes de mundo | 147 | EN · ES · FR · DE · PT · ZH |
| Battle for Azeroth | Uldir → Ny'alotha, 12 masmorras, chefes de frentes de guerra | 133 | EN · ES · FR · DE · PT · ZH |
| Shadowlands | Castle Nathria, Sanctum, Sepulcher + 9 masmorras + Tazavesh + chefes de mundo | 90 | EN · ES · FR · DE · PT · ZH |
| Dragonflight | Aberrus, Amirdrassil, Vault of the Incarnates + 9 masmorras + chefes de mundo | 92 | EN · ES · FR · DE · PT · ZH |
| The War Within | As raids e masmorras de Khaz Algar | 80 | EN · ES · FR · DE · PT · ZH |
| Midnight | Raids, masmorras, lairs e chefes de mundo da expansão atual | 71 | EN · ES · FR · DE · PT · ZH |

Cada um dos doze packs acima embarca com **os seis idiomas completos**; um locale só é listado no jogo quando todas as entradas daquele pack estão prontas, então o que você vê é o que funciona.

## Destaques

- **Explica o NPC marcado** em poucas linhas telegráficas — um comando, ou totalmente automático ao começar cada encontro (sem timers, sem automação de combate; o modo automático pode ser desativado)
- **Táticas escritas à mão** com links de feitiço verificados: cada tópico nomeia a habilidade real, com o link direto no seu chat
- **Seu próprio frame de alerta**: durante o combate o jogo bloqueia o chat de addons, então a explicação completa vive na sua tela — arrastável, fechável (X / ESC), se esconde 15 s depois da luta e fora de combate um botão **"Para o chat"** a compartilha com o grupo
- **Nomes de feitiços no idioma do leitor**, resolvidos em tempo real na base de dados do jogo (o tooltip mostra a habilidade ao passar o mouse)
- **Escolha inteligente de canal**: raid / grupo / chat de masmorra LFG automaticamente — ou force guilda / local / apenas frame
- **Botão de minimapa**: dentro de uma instância abre um menu suspenso com cada chefe daquela zona; fora, explica o seu alvo
- **Suas notas sobrepõem a base de dados**: `/bosses + texto` adiciona sua própria linha a qualquer NPC, em qualquer idioma, por personagem
- **Edite qualquer explicação no jogo**: o botão **editar** do frame de alerta (ou `/bosses EDITAR [id]`) abre o editor de notas — adicione links e linhas, reordene ou remova, e teste o resultado no frame
- Painel de ajustes em **Definições → AddOns → Bosses** — as mudanças aplicam na hora, sem bibliotecas externas
- **Modo de depuração** opcional que escreve um registro de detecção na sua pasta `WTF`, para que um chefe mudo seja fácil de relatar

## Comandos

```text
/bosses               explica o NPC marcado
/bosses <id>          explica o NPC com esse id
/bosses + texto       adiciona sua própria linha ao NPC marcado
/bosses !             remove a explicação do NPC marcado
/bosses CANAL auto    saída raid / grupo / LFG (padrão)
/bosses CANAL guild   saída para a guilda
/bosses CANAL local   apenas o seu chat
/bosses CANAL frame   apenas o seu frame de alerta (avisos privados)
/bosses IDIOMA auto|es|en|fr|de|ru|pt|zh|ko   idioma das explicações (auto = segue o seu jogo)
/bosses DEBUG on|off|limpar   registro de detecção em WTF; /bosses LOG [n] exibe as últimas linhas
/bosses ?             ajuda completa
```

**Experimente já:** `/bosses 23576` — Nalorakk, Zul'Aman.

## Mais recursos

O **projeto do GitHub** acompanhante traz o changelog completo, listas de cobertura e documentação extra: [github.com/Fil1965/bosses](https://github.com/Fil1965/bosses). Faltou um chefe que você quer ver explicado? Tudo é guardado por personagem — me envie o seu `Bosses.lua` salvo e o seu conhecimento entra na próxima versão.

## Bom saber

- Nasceu como *Boses* em 2011; o veterano da família: experimente também **Nas** (saudações automáticas) e **MarcoPolo** (automação de mercador)
- Funciona no **retail (Midnight 12.1)** e no **Classic**: MoP Classic, TBC Classic e Classic Era
- Em plena linha com a política de addons do Modern: informação sob o seu controle, nunca automação de combate
- O repositório também traz um **editor web** local para retocar os pacotes de dados (ferramenta de desenvolvimento; roda em local com `npm start`)
- **Atualizando do addon antigo Boses?** Copie `WTF\Account\<conta>\SavedVariables\Boses.lua` → `Bosses.lua` (mais a cópia por personagem), recarregue, e suas notas, ajustes e registro de depuração viajam sozinhos