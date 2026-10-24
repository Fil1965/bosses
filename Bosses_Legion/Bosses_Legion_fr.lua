--[[
	Bosses_Legion_fr.lua
		Données du pack Legion, GÉNÉRÉES avec scripts/generar-pack-legion.mjs depuis les modules DBM de Legion dans _doc (DBM-Party-Legion, DBM-Raids-Legion, DBM-BrokenIsles). Tactiques télégraphiques honnêtes (type d'alerte DBM); la prose fine est soignée à la main ensuite. Noms: corpus du journal (nombres-jefe) + carte des bosses de monde.
		Orden del propietario 2026-10-15: los cuatro locales del tirón.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Antorus, the Burning Throne : Zona 1712 --
-- --------------------------------- --

pack["121975"] = { "Aggramar",
"* |cff71d5ff|Hspell:245990|h[Taeshalach Reach]|h|r: Empilement des debuffs du tank - les tanks l'attaquent avant le 8ème stack et le tank qui a été remplacé sort du prochain coup.",
"* |cff71d5ff|Hspell:245458|h[Foe Breaker]|h|r: pendant son attaque, il effectue une attaque percutante - les tanks alternent les coups et le tank principal se protège avec une posture défensive.",
"* |cff71d5ff|Hspell:245463|h[Flame Rend]|h|r: les attaques de Flame Rend projettent une flamme sur une zone - dirigez-la loin de la guilde, les personnages de mêlée restent derrière, et les tanks utilisent également Flame Rend.",
"* |cff71d5ff|Hspell:245994|h[Scorching Blaze]|h|r: les flammes s'attachent aux joueurs marqués - les joueurs marqués se dispersent les uns des autres jusqu'à ce que les flammes s'éteignent.",
};

pack["122104"] = { "Hasabel la Garde-portail",
"* |cff71d5ff|Hspell:244016|h[Reality Tear]|h|r: Stack debuff sur le tank - les tanks doivent se relayer pour éviter que les effets s'accumulent.",
"* |cff71d5ff|Hspell:244677|h[Transport Portal]|h|r: elle ouvre des portails de transport vers ses plateformes - divisez la guilde à travers les portails et affaiblissez rapidement les gardiens.",
"* |cff71d5ff|Hspell:243983|h[Le Monde s'effondre]|h|r : elle provoque l'effondrement du monde autour d'elle - anticipez chaque effondrement et comptez les coups lorsqu'ils atterrissent.",
"* |cff71d5ff|Hspell:244000|h[Felstorm Barrage]|h|r: les faisceaux de Fel frappent la salle en longues lignes - éloignez-vous des lignes avant qu'ils ne soient tirés.",
};

pack["122366"] = { "Varimathras",
"* |cff71d5ff|Hspell:243960|h[Shadow Strike]|h|r: un coup de ombre puissant frappe le tank toutes les quelques secondes - le tank échange avec lui.",
"* |cff71d5ff|Hspell:243961|h[Misery]|h|r: Misery utilise le tank qui a encaissé le coup - le nouveau tank doit harceler quand l'élément de tourment se déplace.",
"* |cff71d5ff|Hspell:243967|h[Torment of Flames]|h|r: pendant que les règles de Torment of Flames sont en vigueur, le raid subit des dégâts constants — utilisez des compétences de défense pour réduire les dégâts.",
"* |cff71d5ff|Hspell:243976|h[Torment of Frost]|h|r : ensuite, la tempête de glace prend le contrôle et gèle toute la guilde - soyez prêt et maintenez la souffrance sur un seul tank.",
};

bos = { "Haut-commandement antoréen",
"* |cff71d5ff|Hspell:244892|h[Exploit Weakness]|h|r: stacking tank debuff - the tanks trade before the exploit stacks up.",
"* |cff71d5ff|Hspell:244172|h[Psychic Assault]|h|r: l'attaque psychique réduit les stacks sur tous - surveillez vos propres stacks et sortez lorsque vous en avez plus de dix.",
"* |cff71d5ff|Hspell:253040|h[Assume Command]|h|r: the next commander assumes command of the platform - switch onto the fresh commander and handle their kit.",
"* |cff71d5ff|Hspell:244141|h[Hors du Pod]|h|r : le pod s'ouvre et son cavalier en sort - infligez des dégâts au cavalier pendant qu'il se tient à l'extérieur de son armure.",
};
pack["122369"] = bos; pack["122333"] = bos; pack["122367"] = bos;

bos = { "Sabbat des shivarra",
"* |cff71d5ff|Hspell:118212|h[Activé]|h|r: l'un des trois active - le tank se concentre sur elle et le raid maintient les interruptions sur son chant.",
"* |cff71d5ff|Hspell:244899|h[Fiery Strike]|h|r: le mage inflige des coups de feu au tank avec des poings enflammés - le tank échange avec elle avant que les stacks ne s'accumulent.",
"* |cff71d5ff|Hspell:245518|h[Flash Freeze]|h|r: le mage gèle la armure du tank - échangez les positions avec le tank et le mage, puis éloignez-vous jusqu'à ce que le gel se brise.",
"* |cff71d5ff|Hspell:245634|h[Dangers au sol]|h|r: les sorcières infligent des brûlures et refroidissent le sol - sortez de tout ce qui brille sous vos pieds.",
};
pack["122468"] = bos; pack["122467"] = bos; pack["122469"] = bos;

bos = { "Molosses de Sargeras",
"* |cff71d5ff|Hspell:251356|h[Focusing Power]|h|r : les chiens concentrent leur pouvoir ensemble pendant 15 secondes - soyez prêts pendant le canal, cela déclenche leurs grands sorts.",
"* |cff71d5ff|Hspell:251448|h[Burning Maw]|h|r: un chien mord le tank avec sa gueule enflammée - les tanks échangent les mors avant que la brûlure augmente.",
"* |cff71d5ff|Hspell:244768|h[Desolate Gaze]|h|r: la mirada desolada se fixe sur un joueur - le joueur marqué sort du raid et maintient la fixation jusqu'à ce qu'elle prenne fin.",
"* |cff71d5ff|Hspell:244057|h[Enflamed Corruption]|h|r: enflamed corruption erupts from the blazing hound - a wave of fel corruption washes over the platform, brace it with cooldowns.",
};
pack["122477"] = bos; pack["122135"] = bos;

pack["124445"] = { "Eonar la Lieuse-de-Vie",
"* |cff71d5ff|Hspell:250140|h[Foul Steps]|h|r: la corruption du Fel s'infiltre à travers le pont et applique des Foul Steps sur tous ceux qui y passent - déplacez-vous sur le pont propre et maintenez le nombre de Foul Steps de chaque joueur bas.",
"* |cff71d5ff|Hspell:248332|h[Pluie de Fel]|h|r: la pluie de fel marque les joueurs depuis le haut - le joueur marqué se retire de tous et laisse tomber la pluie là où il se tient.",
"* |cff71d5ff|Hspell:246888|h[Warp In]|h|r: les renforts arrivent autour du pont - déclenchez chaque arrivée rapidement pour éviter que les ponts ne soient envahis.",
"* |cff71d5ff|Hspell:250048|h[Force de vie]|h|r: elle canalise son énergie vitale à travers la coque - soyez prêts à chaque vague et maintenez le combat.",
};

pack["122450"] = { "Brise-monde garothi",
"* |cff71d5ff|Hspell:246220|h[Fel Bombardment]|h|r: le canon cible le tank avec le bombardement - le tank principal remplace le tank précédent et éloigne la zone de brûlure de la raid.",
"* |cff71d5ff|Hspell:244410|h[Decimation]|h|r: le canon de Décimation charge une salve pour toute la guilde - préparez-vous ensemble et maintenez la distance avant qu'il ne tire.",
"* |cff71d5ff|Hspell:244152|h[Apoc Drive]|h|r: le Apoc Drive se active sur un canon - changez et détruisez ce canon pendant sa phase de lancement (environ 30 secondes).",
"* |cff71d5ff|Hspell:244969|h[Eradication]|h|r: si le rayon atteint sa fin, le sabre d'éradication frappe toute la plateforme - éloignez-vous de la ligne du rayon et préparez-vous avec toutes vos ressources.",
};

pack["124158"] = { "Imonar le Chasseur d’âmes",
"* |cff71d5ff|Hspell:247367|h[Shocklance]|h|r: son arc lance attaque constamment le tank - échangez les arcs avant que les stacks ne le frappent.",
"* |cff71d5ff|Hspell:247687|h[Sever]|h|r: the sever shears plate open with each hit - the tanks trade and the healers mind the severed.",
"* |cff71d5ff|Hspell:247552|h[Conteneur de sommeil]|h|r : Un conteneur de sommeil s'attache à un joueur - le joueur ciblé s'éloigne du raid et les soigneurs dissipent le sommeil avant qu'il ne le fasse tomber.",
"* |cff71d5ff|Hspell:247565|h[Gaz de sommeil]|h|r : le gaz de sommeil se forme autour des dormeurs - restez à l'écart du gaz lui-même et de tout joueur qui s'enroule dedans.",
};

pack["122578"] = { "Kin’garoth",
"* |cff71d5ff|Hspell:244312|h[Forging Strike]|h|r: son coup de marteau frappent le tank - se préparer avec une posture défensive et laisser le nouveau tank encaisser le prochain coup.",
"* |cff71d5ff|Hspell:248375|h[Shattering Strike]|h|r: quand ses bras de forge se lèvent, le Shattering Strike divise le sol - surveillez les plateformes de forge et sautez sur chaque fissure.",
"* |cff71d5ff|Hspell:246779|h[Diabolic Bomb]|h|r: lancer des bombes diabólicas dans le champ et les faire exploser pour un dégât important - se tenir ensemble pour absorber l'explosion plutôt que d'encaisser le coup.",
"* |cff71d5ff|Hspell:254926|h[Reverberating Strike]|h|r: l'attaque résonnante frappe un joueur et se propage - le coup déplace le joueur et tous ceux qui se trouvent à proximité reculent.",
};

pack["124828"] = { "Argus l’Annihilateur",
"* |cff71d5ff|Hspell:248499|h[Sweeping Scythe]|h|r: Stack debuff sur le tank - les tanks doivent l'attaquer avant le troisième stack.",
"* |cff71d5ff|Hspell:258838|h[Soul Rending Scythe]|h|r: à la fin du combat, ses scythes transpercent les âmes dans toute la guilde - les soigneurs augmentent leur efficacité grâce aux transpercent et personne ne laisse ses stacks s'accumuler.",
"* |cff71d5ff|Hspell:258039|h[Deadly Scythe]|h|r: dans la dernière phase, chaque scythe devient mortel - les tanks se préparent avec des défenses et effectuent une rotation constante, cela tue instantanément.",
"* |cff71d5ff|Hspell:248167|h[Dangers au sol]|h|r : les tempêtes d'âmes brûlent la plateforme - évitez de vous tenir sur ce qui brille sous vos pieds.",
};


-- --------------------------------- --
-- The Emerald Nightmare : Zona 1520 --
-- --------------------------------- --

pack["100497"] = { "Ursoc",
"* |cff71d5ff|Hspell:197943|h[Overwhelm]|h|r: deux tanks échangent le boss toutes les deux secondes - chaque stack d'Overwhelm augmente le prochain Rend Flesh, et le tank qui vient de l'avoir s'éloigne pour enlever le stack pendant que le nouveau prend le relais.",
"* |cff71d5ff|Hspell:197942|h[Rend Flesh]|h|r: se positionne à droite après le deuxième stack d'Overwhelm; avec un tank frais sur le boss, ce n'est pas un problème, mais cela peut tuer si le tank porte des stacks - tautez à temps, à chaque fois.",
"* |cff71d5ff|Hspell:198006|h[Focused Gaze]|h|r: Ursoc cible un joueur pour une charge; le joueur ciblé court vers Ursoc tout en restant sur le côté, tandis que le reste du raid reste à distance.",
"* |cff71d5ff|Hspell:198388|h[Blood Frenzy]|h|r: Il frappe de plus en plus fort au fur et à mesure que le combat se prolonge (la frénésie s'accumule),",
"* alors utilisez tous vos sorts de soins et vos capacités de soutien au début et ne laissez pas le combat se prolonger.",
};

pack["102672"] = { "Nythendra",
"* |cff71d5ff|Hspell:204463|h[Volatile Rot]|h|r: celui qui le reçoit se dirige vers le bord de la pièce et laisse la spore éclater loin du groupe ; se tenir à l'intérieur de sa propre explosion élimine la pourriture au lieu de la propager.",
"* |cff71d5ff|Hspell:204504|h[Infested]|h|r: le rot s'étend aux personnes se tenant à proximité, et il se propage lorsqu'il s'écoule - le raid se disperse, et personne ne se tient près des tanks, qui en portent toujours le plus.",
"* |cff71d5ff|Hspell:203096|h[Rot]|h|r: un rayon qui laisse plus de stacks de pourriture derrière - combats au corps à corps derrière elle et tout le monde sort de la zone de spores chaque fois qu'elle tourne.",
"* |cff71d5ff|Hspell:203552|h[Heart of Swarm]|h|r: lorsque le Grove commence à vibrer, des anneaux de pourriture éclatent de son corps encore et encore - sortez avec chaque anneau et revenez entre les pulsations.",
};

pack["102679"] = { "Dragons du Cauchemar",
"* |cff71d5ff|Hspell:204720|h[Nightmare Dragon]|h|r: the four corrupted dragons (Ysondre, Emeriss, Lethon, Taerar) trade places - only two are on the ground at any time, focus the active pair and the pair switches out when one of them falls.",
"* |cff71d5ff|Hspell:204100|h[Shades of Taerar]|h|r: pendant que Taerar est présent, il se divise en trois ombres - assignez-en une à chaque groupe de mêlée et brûlez-les toutes simultanément, ou il se reforme rapidement et se divise à nouveau.",
"* |cff71d5ff|Hspell:203110|h[Slumbering Nightmare]|h|r: les nuages de sommeil plongent les joueurs dans le royaume de cauchemar ; le soigne désigné y entre avec eux et réveille chaque endormi avec un sort de suppression avant que le sommeil ne se termine.",
"* |cff71d5ff|Hspell:203028|h[Corrupted Breath]|h|r: un souffle long de l'avant du dragon - restez derrière le dragon qui souffle et répartissez-vous pour que les marques de cauchemar n'atterrissent jamais deux fois sur la même cible.",
};

pack["103769"] = { "Xavius",
"* |cff71d5ff|Hspell:224649|h[Tormenting Swipe]|h|r: un coup puissant devant lui - le tank le fait pivoter pour éloigner le raid et se positionne à l'extérieur de chaque coup, en adoptant une position défensive,",
"* car les coups sont beaucoup plus puissants à la phase 2.",
"* |cff71d5ff|Hspell:206651|h[Darkening Soul]|h|r: piles de corruption de cauchemar qui tirent le joueur sous quand elles se déclenchent - le soigne assigné qui supprime les debuffs maintient tout le monde en dessous du seuil de submersion.",
"* |cff71d5ff|Hspell:209158|h[Blackening Soul]|h|r: la version de la phase 2 explose également en tourment de cauchemar autour de son porteur - les joueurs se dispersent, celui qui prend le prochain doit être déterminé,",
"* et il faut s'éloigner du groupe avant qu'il n'explose.",
"* |cff71d5ff|Hspell:209443|h[Nightmare Infusion]|h|r: Xavius continue de s'auto-renforcer pendant que le combat se prolonge dans la phase deux ; terminez le combat rapidement avant que les infusions ne rendent ses dégâts incontrôlables.",
};

pack["105393"] = { "Il’gynoth, le Cœur de la Corruption",
"* |cff71d5ff|Hspell:210984|h[Œil du Destin]|h|r: l'œil géant au cœur de la clairière tire au hasard sur les attaquants - pendant la phase extérieure, les soigneurs doivent rester vigilants et le raid doit se disperser entre les yeux.",
"* |cff71d5ff|Hspell:215234|h[Nightmarish Fury]|h|r: lorsque les tentacules extérieurs sont partis, le cœur s'ouvre : seuls les joueurs purifiés de la corruption peuvent y entrer - purifiez-vous, plongez à travers le fleur de rêve,",
"* tuez l'œil intérieur et sortez avant que le cœur n'explose.",
"* |cff71d5ff|Hspell:210931|h[Nightmare Gaze]|h|r: les yeux sombres projettent des faisceaux sur toute la plateforme - restez hors des faisceaux et détruisez rapidement les yeux sombres, car leurs dégâts s'accumulent pendant qu'ils sont en vie.",
"* |cff71d5ff|Hspell:210099|h[Fixate]|h|r: les horreurs cauchemardes fixent un joueur ; le joueur hanté les fait esquiver en larges cercles tandis que le raid brûle la horreur à distance.",
};

pack["106087"] = { "Elerethe Ranfarouche",
"* |cff71d5ff|Hspell:212512|h[Web Wrap]|h|r: En sa forme de araignée, elle enrobe un joueur de toiles ; les attaques au corps à corps brisent rapidement la carapace, et le raid se disperse pour que le prochain coup cible une nouvelle victime.",
"* |cff71d5ff|Hspell:215582|h[Raking Talons]|h|r : les coups de griffes s'accumulent sur le tank principal - les deux tanks échangent après chaque paire de coups et le tank qui vient de les avoir s'éloigne.",
"* |cff71d5ff|Hspell:210326|h[Forme de araignée]|h|r : elle alterne entre la forme d'araignée (toiles et coups) et la forme de corbeau (vents qui poussent les joueurs vers les bords) - anticipez la transition et repositionnez-vous tôt.",
"* |cff71d5ff|Hspell:212364|h[Time to Eat]|h|r: des vagues de petits monstres apparaissent pour attaquer le joueur ciblé ; le joueur ciblé doit les éloigner du groupe pendant que le reste utilise ses sorts pour les attaquer en sécurité.",
};

pack["104636"] = { "Cénarius",
"* |cff71d5ff|Hspell:210279|h[Creeping Nightmares]|h|r: toute personne à proximité du boss pendant qu'il canalise subit des coups de cauchemar cumulatifs - les personnages en mêlée sortent de la portée pendant le canal et reviennent une fois qu'il se termine.",
"* |cff71d5ff|Hspell:213162|h[Nightmare Blast]|h|r: pendant la phase corrompue de Malfurion, les attaques atterrissent sur les joueurs marqués - celui qui est marqué quitte immédiatement le groupe, car l'attaque laisse un cratère infesté derrière.",
"* |cff71d5ff|Hspell:214529|h[Spear of Nightmares]|h|r: dans la phase finale, Cenarius lance des épées de cauchemar que le groupe doit attraper ensemble - le groupe doit courir vers chaque épée pendant que le reste du raid reste à distance.",
"* |cff71d5ff|Hspell:210290|h[Nightmare Brambles]|h|r: rangées de épines qui poussent dans la zone et attaquent quiconque se trouve devant elles - arrêtez de bouger pendant que les épines se dressent et passez-y par-dessus une fois qu'elles sont stables.",
};


-- --------------------------------- --
-- The Nighthold : Zona 1530 --
-- --------------------------------- --

pack["101002"] = { "Krosus",
"* |cff71d5ff|Hspell:206677|h[Searing Brand]|h|r: Empilement de debuff sur le tank - les deux tanks s'attaquent à lui avant le quatrième stack et le tank qui vient de le tenir se retire de l'attaque suivante.",
"* |cff71d5ff|Hspell:205344|h[Expel: Orb of Destruction]|h|r: il lance un orbe de feu qui poursuit un joueur à travers le pont - le joueur ciblé le fait glisser jusqu'au bout du pont et le laisse exploser là.",
"* |cff71d5ff|Hspell:205862|h[Slam]|h|r: chaque coup brise une autre partie du pont - le raid se déplace vers la section qu'il ne frappe pas, reste bien éloigné du bord effondrant et utilise une compétence de récupération pour contrer la vague.",
"* |cff71d5ff|Hspell:205368|h[Ray de Fel]|h|r: un faisceau d'énergie de Fel qu'il lance vers un côté du pont - esquivez le faisceau et atterrissez sur le sol intact pendant qu'il brûle.",
};

pack["102263"] = { "Skorpyron",
"* |cff71d5ff|Hspell:204275|h[Arcanoslash]|h|r: Attaque puissant qui recharge le tank lorsqu'il touche - le tank absorbe l'attaque avec une posture défensive et le raid le fait bouger entre les sorts.",
"* |cff71d5ff|Hspell:204372|h[Appel de Scorpid]|h|r: les adds de Scorpid sort des fissures - éliminez-les rapidement avec des attaques à zone, avant que leurs stacks de venin ne rendent la salle impraticable.",
"* |cff71d5ff|Hspell:204292|h[Broken Shard]|h|r: cristaux sortant du sol - donnez-leur de l'espace pour que les éclats se dispersent; ces mêmes cristaux sont la couverture derrière laquelle vous vous cachez lorsqu'il lance l'onde de choc.",
"* |cff71d5ff|Hspell:204459|h[Vulnérable]|h|r : toute personne touchée par un \"Shatter\" subit un debuff \"Fragile\" pendant 15 secondes qui amplifie le prochain coup d'arcane - se disperser et laisser tomber le debuff avant son prochain coup.",
};

pack["103685"] = { "Tichondrius",
"* |cff71d5ff|Hspell:216024|h[Volatile Wound]|h|r: Débuff de contrôle du tank - Les tanks doivent l'attaquer avant que les stacks ne s'accumulent et que le nouveau tank intervienne à temps.",
"* |cff71d5ff|Hspell:208230|h[Feast of Blood]|h|r: il commence à drainer le sang du raid - tout le monde à moins de 30 mètres doit reculer pour éviter de se faire attaquer, ou il se soigne lui-même.",
"* |cff71d5ff|Hspell:206480|h[Carrion Plague]|h|r: un debuff de peste qui se propage à tous ceux qui se tiennent à proximité - les porteurs de la peste restent à l'écart du reste du raid jusqu'à ce qu'elle disparaisse.",
"* |cff71d5ff|Hspell:212794|h[Brand of Argus]|h|r: Applique la marque sur quatre joueurs, en les marquant. Les joueurs marqués doivent se disperser et maintenir une distance entre eux tant que la marque est active.",
};

pack["103758"] = { "Etraeus, l’augure stellaire",
"* |cff71d5ff|Hspell:205984|h[Gravitational Pull]|h|r: le tank qui porte la phase active (gel, fel ou vide) est attiré vers lui - le second tank harcèle et porte le boss pour que les stacks ne se posent jamais deux fois sur le même tank.",
"* |cff71d5ff|Hspell:205429|h[Star Sign: Crab]|h|r: un signe jaune - les joueurs qui le partagent se regroupent, tandis que tous ceux qui ont un signe différent s'éloignent, et les deux groupes restent séparés.",
"* |cff71d5ff|Hspell:216344|h[Star Sign: Dragon]|h|r: un signe bleu - même règle : correspondre aux joueurs du même signe, se disperser loin de tous ceux avec un signe différent.",
"* |cff71d5ff|Hspell:216345|h[Star Sign: Hunter]|h|r: un signe vert - même règle : ne vous associez qu'avec le même signe et laissez les autres signes à distance.",
};

pack["104415"] = { "Anomalie chronomatique",
"* |cff71d5ff|Hspell:206607|h[Chronometric Particles]|h|r: Stack debuff sur le tank - les tanks alternent l'utilisation de l'anomalie pour éviter que le debuff ne devienne trop important.",
"* |cff71d5ff|Hspell:219823|h[Power Overwhelming]|h|r: l'anomalie conserve les stacks qu'elle acquiert à chaque changement de phase - plus la bataille est longue, plus tout devient plus puissant,",
"* donc concentrez les dégâts et terminez avant que les stacks ne prennent le dessus.",
"* |cff71d5ff|Hspell:207012|h[Normal Time]|h|r: la salle revient à la vitesse normale - l'occasion de le brûler à pleine vitesse.",
"* |cff71d5ff|Hspell:207013|h[Fast Time]|h|r: courses de temps - chaque sort, bombe et faisceau arrive plus tôt que naturellement, donc esquivez un battement tôt.",
};

pack["104154"] = { "Gul’dan",
"* |cff71d5ff|Hspell:206222|h[Liens de la Malédiction]|h|r: il lie les joueurs (et le tank) ensemble - la paire liée se sépare, reste à l'écart du reste de la guilde pendant que le lien brûle, et le nouveau tank harcèle le boss.",
"* |cff71d5ff|Hspell:208802|h[Soul Corrosion]|h|r: le fel provenant des liens brûle plus profondément à chaque fois qu'il est appliqué - les porteurs doivent se retirer tôt pour éviter que la corrosion ne s'accumule excessivement.",
"* |cff71d5ff|Hspell:221606|h[Flames of Sargeras]|h|r: il lance des flammes de feu sur les joueurs - les marqués doivent sortir du raid et laisser les flammes s'éteindre là où elles atterrissent.",
"* |cff71d5ff|Hspell:206219|h[Liquid Hellfire]|h|r: amas de feu en fusion qu'il projette - gardez les flaques loin du centre de la pièce, car elles grossissent et deviennent plus chaudes au fur et à mesure que le combat s'éternise.",
};

pack["104288"] = { "Trilliax",
"* |cff71d5ff|Hspell:206641|h[Arcane Slash]|h|r: Stack tank hit - Les tanks se relaient après le premier coup de chaque cycle.",
"* |cff71d5ff|Hspell:206488|h[Arcane Seepage]|h|r: la boue arcana s'écoule sur le sol - sortez-en, car rester dans la marée vous brûlera.",
"* |cff71d5ff|Hspell:206560|h[Cleaner Mode]|h|r: his cleaner side takes over for 45 seconds - the room fills with his sowing trails, so stand on clean ground and stay out of his path.",
"* |cff71d5ff|Hspell:206788|h[Toxic Slice]|h|r: utilisez les jets de Toxic Shards (pendant le nettoyage) - les jets laissent des flaques derrière, donc esquivez le jet et regardez le sol qu'il a peint.",
};

pack["104881"] = { "Sorcelame Aluriel",
"* |cff71d5ff|Hspell:212492|h[Annihilate]|h|r: elle frappe le tank avec l'épée pour deux coups puissants - le tank absorbe les coups avec un sort et les deux se battent pendant la durée du sort.",
"* |cff71d5ff|Hspell:212647|h[Frostbitten]|h|r: les porteurs de gel marqués laissent des marques de gel sur quiconque reste trop près d'eux - laissez les porteurs à distance et les stacks disparaîtront.",
"* |cff71d5ff|Hspell:213864|h[Phase de Glace]|h|r: elle enchant le couteau avec de la glace - des zones glacées et des orbes gelés apparaissent dans la pièce; répartissez-vous et soyez attentifs aux zones où la glace se forme.",
"* |cff71d5ff|Hspell:213867|h[Phase de feu]|h|r: l'épée prend feu à la place - des zones brûlantes la suivent, ainsi que ses attaques, alors restez en mouvement et éloignez-vous des flammes.",
};

pack["106643"] = { "Grande magistrice Élisande",
"* |cff71d5ff|Hspell:209615|h[Ablation]|h|r: Stack debuff sur le tank - les tanks doivent l'attaquer avant que les stacks ne se accumulent.",
"* |cff71d5ff|Hspell:209973|h[Ablating Explosion]|h|r: le tank porte l'explosif - le tank la conduit jusqu'au bord de la salle et se tient à distance pour que l'explosion se déclenche sans toucher le raid.",
"* |cff71d5ff|Hspell:209598|h[Conflexive Burst]|h|r: Les joueurs marqués déclenchent une explosion qui frappe fort à l'expiration - ils se dispersent et restent à distance de tout le monde jusqu'à ce que l'explosion soit terminée.",
"* |cff71d5ff|Hspell:209971|h[Ablative Pulse]|h|r: un sortilégio qu'elle lance - interrompez-le dès qu'il est disponible, sinon l'onde frappe toute la guilde.",
};

pack["104528"] = { "Grand botaniste Tel’arn",
"* |cff71d5ff|Hspell:218503|h[Recursive Strikes]|h|r: Stack debuff sur le tank - les tanks doivent l'attaquer avant le troisième coup.",
"* |cff71d5ff|Hspell:218806|h[Flare]|h|r: Un coup de feu direct sur le tank - le DPS et ceux qui le protègent doivent se dégager, car les flares se répètent rapidement.",
"* |cff71d5ff|Hspell:218927|h[Grace of Nature]|h|r: il crée une clairière qui le soigne et le renforce pendant qu'il y est, le tank le sort de la clairière et le raid la détruit.",
"* |cff71d5ff|Hspell:218438|h[Controlled Chaos]|h|r: Il canalise et crée des zones de chaos en mouvement - surveillez le sol pendant que les zones se propagent et déplacez-vous pour nettoyer les zones.",
};


-- --------------------------------- --
-- Tomb of Sargeras : Zona 1676 --
-- --------------------------------- --

pack["115844"] = { "Goroth",
"* |cff71d5ff|Hspell:231363|h[Burning Armor]|h|r: son armure devient plus chaude à chaque coup qu'il porte - les tanks l'attaquent avant que la brûlure ne monte, puis le tank brûlé recule pour éviter les coups suivants.",
"* |cff71d5ff|Hspell:233055|h[Infernal Spike]|h|r: les pics de roche infernal éclosent sous les joueurs - sortez de la plateforme en mouvement et faites attention à l'endroit où les pics se posent, ils ne fondent jamais.",
"* |cff71d5ff|Hspell:233272|h[Shattering Star]|h|r: Un faisceau colossal qu'il tire à travers un joueur - la cible se retire du raid, et personne ne se tient sur la trajectoire du faisceau ou derrière un pic, ce qui le brise.",
"* |cff71d5ff|Hspell:232249|h[Crashing Comet]|h|r: les comètes s'écrasent derrière les joueurs marqués - les joueurs marqués font que chaque comète se déplace sur le côté et atterrit dans son cratère enflammé, loin de tous.",
};

pack["116407"] = { "Harjatan",
"* |cff71d5ff|Hspell:231998|h[Jagged Abrasion]|h|r: son bouclier inflige des dégâts au tank à chaque coup - le tank échange avec lui avant le quatrième stack.",
"* |cff71d5ff|Hspell:233429|h[Frigid Blows]|h|r: ses coups appliquent la glace tandis que le buff s'accumule sur lui - poussez-le vers le bas pendant que le buff est encore en train de s'appliquer et anticipez les coups les plus puissants.",
"* |cff71d5ff|Hspell:231729|h[Aqueous Burst]|h|r: le Wavemender inflige des ondes d'eau autour de ses cibles et les soigne - le joueur touché par l'onde se retire pour éviter l'impact et le raid attaque d'abord les Wavemendres.",
"* |cff71d5ff|Hspell:234016|h[Driven Assault]|h|r: les adds du gladiateur se fixent sur un joueur et le chargent - le joueur fixé évite le charge et le raid élimine rapidement l'add.",
};

pack["115767"] = { "Maîtresse Sassz’ine",
"* |cff71d5ff|Hspell:230201|h[Burden of Pain]|h|r: elle attache un tank sous le fardeau de douleur - les tanks se relaient pendant que le fardeau attaque et les soigneurs restent collés au tank.",
"* |cff71d5ff|Hspell:230139|h[Hydra Shot]|h|r: elle tire une salve depuis les quatre têtes, ciblant les joueurs marqués - les joueurs marqués se dispersent et sortent du raid pendant que les tirs atteignent.",
"* |cff71d5ff|Hspell:230273|h[Dark Depths]|h|r: elle inonde des zones du sol de Dark Depths - les flaques noires corrodent et étouffent quiconque se tient à l'intérieur, alors marchez et ne restez jamais.",
"* |cff71d5ff|Hspell:230214|h[Burden Pulse]|h|r: l'onde de douleur de la malédiction se propage dans la pièce - utilisez un sort à recharge pour contrer chaque onde pendant que le tank principal maintient la malédiction à l'écart du groupe.",
};

pack["116939"] = { "Avatar déchu",
"* |cff71d5ff|Hspell:236494|h[Desolate]|h|r : son toucher désolé applique des stacks sur le tank - les tanks doivent l'attaquer avant que les stacks ne deviennent dangereuses.",
"* |cff71d5ff|Hspell:233556|h[Corrupted Matrix]|h|r: il se téléporte vers la matrice corrompue - le tank se déplace avec lui et ré-ancrage le combat avant que le faisceau ne se déclenche à nouveau.",
"* |cff71d5ff|Hspell:240728|h[Essence corrompue]|h|r: ses attaques spectrales corrompent l'essence de quiconque les touche - l'essence corrompue sort jusqu'à ce que la corruption disparaisse et ne permet jamais d'accumuler des stacks.",
"* |cff71d5ff|Hspell:234059|h[Chaos incontrôlé]|h|r : son chaos incontrôlé se déplace sur la plateforme, laissant derrière lui des traînées de brûlure - soyez attentif au sol et esquivez les jets.",
};

bos = { "Inquisition démoniaque",
"* |cff71d5ff|Hspell:233426|h[Scythe Sweep]|h|r: le démon balaye avec sa faux sur un arc large devant lui - le tank le fait viser loin de la raid et sort de chaque balayage.",
"* |cff71d5ff|Hspell:248713|h[Corruption]|h|r: la corruption s'enfonce davantage à chaque stack - maintenez le nombre de stacks de chaque joueur en dessous de dix en alternant les porteurs.",
"* |cff71d5ff|Hspell:233104|h[Torment]|h|r: La build Torment se base sur les joueurs captifs pendant qu'ils attendent - libérez les captifs avant que Torment n'atteigne sa limite.",
"* |cff71d5ff|Hspell:233431|h[Quills]|h|r: les plumes calcifiées explosent autour d'un joueur - le joueur ciblé se retire du groupe et laisse les plumes se disperser.",
};
pack["116691"] = bos; pack["116689"] = bos;

bos = { "Sœurs de la Lune",
"* |cff71d5ff|Hspell:239264|h[Lunar Fire]|h|r: applique les stacks de feu luna sur le tank - le tank échange avec elle avant que les stacks ne doublent.",
"* |cff71d5ff|Hspell:236357|h[Font of Elune]|h|r: la fontaine d'Elune s'accumule et inverse la couleur lunaire d'un joueur - anticipez le changement et soignez pendant la transition.",
"* |cff71d5ff|Hspell:236550|h[Discorporate]|h|r: lorsque la couleur de la phase de la cible n'est plus la même que celle du tank, le tank se discorpore - le nouveau tank harcèle et le couple échange à chaque lancer.",
"* |cff71d5ff|Hspell:236596|h[Rapid Shot]|h|r: elle tire une salve rapide sur un joueur - le joueur ciblé s'éloigne du raid pendant que les flèches tombent.",
};
pack["118523"] = bos; pack["118374"] = bos; pack["118518"] = bos;

pack["117269"] = { "Kil’jaeden",
"* |cff71d5ff|Hspell:239932|h[Fel Claw]|h|r: le coup de griffes du Fel frappe le tank vers l'extérieur de la plateforme - dirigez-le loin du raid, stabilisez le coup avec une posture défensive, et le nouveau tank peut ensuite l'interpeller.",
"* |cff71d5ff|Hspell:236710|h[Erupting Reflections]|h|r: cible les joueurs et leurs reflets ombres éclatent sous leurs pieds - effectuez rapidement le mouvement marqué pour vous éloigner et assurez-vous que tout le monde reste à distance des éruptions.",
"* |cff71d5ff|Hspell:235059|h[Rupturing Singularity]|h|r: une singularité s'ouvre et déchire la plateforme vers elle - faites attention, l'explosion tire et projette tout le monde, donc fixez-vous sur le côté opposé et soyez prêt à voler.",
"* |cff71d5ff|Hspell:238430|h[Bursting Dreadflame]|h|r: il lance des flammes de terreur sur toute la plateforme - restez en mouvement pour éviter les fleurs récemment enflammées et maintenez une distance, chaque flamme se propage.",
};

pack["118289"] = { "Damoiselle de vigilance",
"* |cff71d5ff|Hspell:235117|h[Âme instable]|h|r : votre âme devient instable (vers la lumière ou le Fel) - pas vers l'infuseur correspondant et maintenez votre couleur jusqu'à ce que l'âme se stabilise.",
"* |cff71d5ff|Hspell:235267|h[Instabilité Massive]|h|r : l'instabilité massive détonne sur toute la plateforme - anticipez-la avec un sort de récupération et maintenez une certaine distance entre les joueurs.",
"* |cff71d5ff|Hspell:235271|h[Infusion]|h|r : elle canalise une infusion de lumière ou de feu - tenez la couleur correspondante et absorbez l'onde ensemble sur le côté droit.",
"* |cff71d5ff|Hspell:236061|h[Fragments d'essence]|h|r: les fragments d'essence se dispersent après chaque coup puissant - ramassez-les pour stabiliser l'âme instable.",
};

bos = { "L’Hôte désolé",
"* |cff71d5ff|Hspell:236548|h[Torment]|h|r: les Torments se construisent rapidement sur les joueurs dans le royaume spirituel - faites pivoter la tâche du royaume spirituel pour que personne n'accumule trop de stacks.",
"* |cff71d5ff|Hspell:236542|h[Sundering Doom]|h|r: canalise la malédiction et déclenche ensuite une explosion massive - le raid se disperse pour la contrer, puis s'éloigne de la onde de choc, tandis que le nouveau tank prend le relais.",
"* |cff71d5ff|Hspell:236544|h[Doomed Sundering]|h|r: son équivalent de l'autre côté du voile - l'autre tank porte cette bombe, et aucun des deux ne la lance jamais deux fois sur le même tank.",
"* |cff71d5ff|Hspell:235924|h[Spear of Anguish]|h|r: Les Spears of Anguish immobilisent les joueurs avec un fort saignement - le joueur marqué sort de la raid et le saignement s'épuise.",
};
pack["118460"] = bos; pack["118462"] = bos; pack["119072"] = bos;


-- --------------------------------- --
-- Trial of Valor : Zona 1648 --
-- --------------------------------- --

bos = { "Odyn",
"* |cff71d5ff|Hspell:227626|h[Odyn's Test]|h|r: son test se accumulent sur le tank qui le tient - les deux tanks s'alternent pour le gérer pendant que le test se construit et ne laissent jamais un seul tank porter tout le défi.",
"* |cff71d5ff|Hspell:228918|h[Lance de forge tempête]|h|r: il lance une lance de forge tempête vers le tank ou le soigneur - éloignez-vous de la lance et le tank se fait taunter.",
"* |cff71d5ff|Hspell:228171|h[Revivify]|h|r: les Valkyries envoient un soin de réanimation pour soigner leurs blessures - interrompez le sort à chaque fois et maintenez le sort actif.",
"* |cff71d5ff|Hspell:227503|h[Branded]|h|r: les joueurs sont marqués pour utiliser sa force de tirage - la ligne marquée apparaît sur leurs marques et canalise la force de tirage ensemble.",
};
pack["114263"] = bos; pack["114361"] = bos; pack["114360"] = bos;

pack["114323"] = { "Guarm",
"* |cff71d5ff|Hspell:228201|h[Off the Leash]|h|r: il rompt la laisse et se lance à courir sauvagement pendant 30 secondes - maintenez la ligne pendant la phase de rage et assurez-vous que les tanks sont bien positionnés.",
"* |cff71d5ff|Hspell:227514|h[Fangs]|h|r: ses crocs mordent le tank de manière agressive - le tank échange avec lui avant le deuxième mord.",
"* |cff71d5ff|Hspell:228253|h[Shadow Lick]|h|r: une tête léche les joueurs avec son ombre de ténèbres - les joueurs léchés se mettent en ligne contre la tête dont la salive correspond à leur léchage, et les ombres ne doivent jamais se mélanger.",
"* |cff71d5ff|Hspell:228248|h[Frost Lick]|h|r: le Frost Lick gèle la cible qu'il touche et la congèle - les soigneurs doivent purger le joueur gelé dès que le coup touche.",
};

pack["114537"] = { "Helya",
"* |cff71d5ff|Hspell:227982|h[Bilewater Redox]|h|r: la boue de bilewater recouvre son armure - le tank principal la harcèle pour la sortir et tout le monde reste à distance de la boue qu'elle traîne.",
"* |cff71d5ff|Hspell:228519|h[Anchor Slam]|h|r: elle frappe le sol devant elle - orientez-la loin de la guilde et laissez le tank principal prendre le relais après chaque coup.",
"* |cff71d5ff|Hspell:229119|h[Orb de Corruption]|h|r : un orb de corruption s'attache à un joueur - le porteur éloigne l'orb des autres joueurs et le fait exploser à la périphérie.",
"* |cff71d5ff|Hspell:228054|h[Taint of the Sea]|h|r: sa contamination s'infiltre dans l'eau autour du combat - restez hors de l'eau contaminée, la pourriture fétide se propage à quiconque la touche.",
};


-- --------------------------------- --
-- Black Rook Hold : Zona 1501 --
-- --------------------------------- --

pack["98542"] = { "L’amalgame d’âmes",
"* |cff71d5ff|Hspell:196930|h[Soulgorge]|h|r: il absorbe les âmes et devient plus fort à chaque fois qu'il en consomme - empêchez les créatures de type \"Wisp\" de l'atteindre et détruisez celles qu'il absorbe.",
"* |cff71d5ff|Hspell:194956|h[Reap Soul]|h|r: il effectue des attaques tranchantes sur toute la largeur de son champ de vision - le tank esquive chaque attaque.",
"* |cff71d5ff|Hspell:195254|h[Swirling Scythe]|h|r: Il lance une faux tourbillonnante sur un joueur - l'attaque se déplace pendant qu'elle tourne.",
"* |cff71d5ff|Hspell:194966|h[Âmes Échos]|h|r: les âmes échos fixent un joueur - le joueur ciblé s'éloigne du groupe tandis que les échos le poursuivent.",
};

pack["98696"] = { "Illysanna Corvaltus",
"* |cff71d5ff|Hspell:197974|h[Bonebreaking Strike]|h|r: un coup de Bonebreaking Strike sur le tank - le tank se protège avec une posture défensive et les deux se relaient.",
"* |cff71d5ff|Hspell:197546|h[Brutal Glaive]|h|r: elle lance une glaive brutale qui poursuit un joueur - le joueur ciblé doit l'intercepter et la détruire.",
"* |cff71d5ff|Hspell:197478|h[Dark Rush]|h|r: elle effectue une attaque rapide ciblant les joueurs marqués - les joueurs marqués esquivent l'attaque.",
"* |cff71d5ff|Hspell:197418|h[Vengeful Shear]|h|r: son coup vengeur coupe le tank - mécanique du tank principal : échangez et absorbez avec un soin.",
};

pack["98949"] = { "Vexécrase le Haineux",
"* |cff71d5ff|Hspell:198245|h[Brutal Haymaker]|h|r: on prépare un coup de poing puissant sur le tank - bloquez-le fermement avec une posture défensive avant qu'il n'atteigne.",
"* |cff71d5ff|Hspell:198079|h[Hateful Gaze]|h|r: his hateful gaze targets a player - the marked run avoids the gaze and outlasts it.",
"* |cff71d5ff|Hspell:198073|h[Stomp]|h|r: son stomp repousse tout le monde de la plateforme - éloignez-vous des bords pour éviter d'être repoussé.",
"* |cff71d5ff|Hspell:198446|h[Fel Vomit]|h|r: il vomit de fel sur le sol - étalez la saleté et laissez chaque patch agir.",
};

bos = { "Seigneur Kur’talos Corvaltus",
"* |cff71d5ff|Hspell:198641|h[Whirling Blade]|h|r: il lance son épée dans toute la pièce - restez hors de la portée de son attaque.",
"* |cff71d5ff|Hspell:198820|h[Darkblast]|h|r: les attaques de [Darkblast] explosent aux positions des joueurs - éloignez-vous des zones d'explosion.",
"* |cff71d5ff|Hspell:199143|h[Cloud]|h|r: il invoque des nuages de cauchemar dans la zone - restez en mouvement et évitez-les.",
"* |cff71d5ff|Hspell:201733|h[Swarm]|h|r: les chauves-souris envahissent un joueur - le joueur ciblé chasse les chauves-souris et le raid les élimine avec des attaques de zone.",
};
pack["98965"] = bos; pack["98970"] = bos;


-- --------------------------------- --
-- Cathedral of Eternal Night : Zona 1677 --
-- --------------------------------- --

pack["120793"] = { "Méphistroth",
"* |cff71d5ff|Hspell:233155|h[Carrion Swarm]|h|r: son swarms de carcasse attaquent en avant - les personnages au corps à corps restent derrière et la première ligne doit rester dégagée.",
"* |cff71d5ff|Hspell:234817|h[Dark Solitude]|h|r: la marque Dark Solitude marque un joueur - lorsqu'elle expire, elle punit quiconque était seul, alors, formez un couple jusqu'à ce qu'elle disparaisse.",
"* |cff71d5ff|Hspell:233206|h[Shadow Fade]|h|r: il se fond avec les ombres et ses démons en sortent - restez vigilant pendant la phase et utilisez des sorts d'area d'effet pour éliminer les spawns.",
"* |cff71d5ff|Hspell:233963|h[Déchaussement démoniaque]|h|r : Un déchaussement démoniaque traverse la salle - anticipez le coup majeur avec un sort en cooldown.",
};

pack["119542"] = { "Domatrax",
"* |cff71d5ff|Hspell:236543|h[Felsoul Cleave]|h|r: son coup de felsoul rase le tank - le tank échange les coups.",
"* |cff71d5ff|Hspell:241622|h[Approaching Doom]|h|r: le debuff \"Approaching Doom\" inflige des dégâts à la raid progressivement - soignez pour contrer l'effet et frappez-le à son maximum.",
"* |cff71d5ff|Hspell:234107|h[Chaotic Energy]|h|r: il lance des projectiles d'énergie chaotique à travers la salle - positionnez-vous derrière les piliers et bloquez sa ligne de vue.",
"* |cff71d5ff|Hspell:200597|h[Adds]|h|r: les démons se rassemblent autour de lui - éliminez-les rapidement avec des attaques à zone, tandis que le tank les contrôle.",
};

pack["117193"] = { "Agronox",
"* |cff71d5ff|Hspell:236524|h[Spores]|h|r: les spores éclosent autour de lui - esquivez les éclosions lorsqu'elles se répandent.",
"* |cff71d5ff|Hspell:235751|h[Timber Smash]|h|r: son attaque de Timber le fait reculer les joueurs - restez au centre et préparez-vous à l'impact.",
"* |cff71d5ff|Hspell:238598|h[Choking Vine]|h|r: la liane empoisonne un joueur - retirez celui qui est empoisonné avant que les effets ne s'accumulent.",
"* |cff71d5ff|Hspell:240065|h[Succulent Secretion]|h|r: les flaques de sécrétion succulente recouvrent le sol - faites attention au sève et ne vous tenez jamais à l'intérieur.",
};

pack["117194"] = { "Hersétrave le Teigneux",
"* |cff71d5ff|Hspell:237726|h[Regard méprisant]|h|r: son regard méprisant cible un joueur - il s'éloigne de la vue pendant qu'elle est active.",
"* |cff71d5ff|Hspell:243124|h[Heave Crud]|h|r: il lance des amas de crasse sur les joueurs - esquivez les amas volants et soyez attentif à leur impact.",
"* |cff71d5ff|Hspell:237276|h[Pulverizing Crudgel]|h|r: Il se jette avec le \"Pulverizing Crudgel\" - évitez ses attaques, ne le tankez pas.",
"* |cff71d5ff|Hspell:238484|h[Contrôle Mental]|h|r: il prend le contrôle mental d'un joueur - le groupe contrôle rapidement le joueur contrôlé mentalement jusqu'à ce qu'il se défie.",
};


-- --------------------------------- --
-- Court of Stars : Zona 1571 --
-- --------------------------------- --

pack["104215"] = { "Capitaine de patrouille Gerdo",
"* |cff71d5ff|Hspell:219488|h[Streetsweeper]|h|r: he scatters trip mines across the ground – weave around them and never stand on one.",
"* |cff71d5ff|Hspell:207815|h[Flask]|h|r: lance une bouteille enflammée - sortez de l'incendie qu'elle laisse derrière elle.",
"* |cff71d5ff|Hspell:207261|h[Resonant Slash]|h|r: les attaques résonnantes creent des ondes qui traversent le sol - déplacez-vous hors de chaque cercle avant qu'il n'explose.",
"* |cff71d5ff|Hspell:207278|h[Arcane Lockdown]|h|r: son pièges de confinement arcano qui affectent ceux qui restent immobiles - bougez constamment et évitez les runes.",
};

pack["104217"] = { "Talixae Voluteflamme",
"* |cff71d5ff|Hspell:208165|h[Withering Soul]|h|r: his withering soul leeches the tank - the fresh tank taunts and the leeched tanks step apart.",
"* |cff71d5ff|Hspell:207906|h[Burning Intensity]|h|r: son intensité augmente avec le temps, il faut donc le brûler avant que les stacks ne soient maximales.",
"* |cff71d5ff|Hspell:207881|h[Infernal Eruption]|h|r: les éruptions infernales montent depuis le sol - esquivez chaque anneau que les éruptions laissent.",
};

pack["104218"] = { "Conseiller Melandrus",
"* |cff71d5ff|Hspell:209602|h[Surge]|h|r : son raid doit rester derrière et la première ligne doit rester dégagée.",
"* |cff71d5ff|Hspell:209676|h[Slicing Maelstrom]|h|r: son tranchant dévastateur traverse la salle – étalez-vous et absorbez les dégâts avec les soins.",
"* |cff71d5ff|Hspell:209628|h[Gale]|h|r: les vents déchirants frappent la plateforme - esquivez les murs de vent lorsqu'ils traversent.",
};


-- --------------------------------- --
-- Darkheart Thicket : Zona 1466 --
-- --------------------------------- --

pack["96512"] = { "Archidruide Glaidalis",
"* |cff71d5ff|Hspell:196354|h[Saut]|h|r : il saute sur la position d'un joueur - le joueur ciblé se déplace hors de l'endroit d'atterrissage.",
"* |cff71d5ff|Hspell:212464|h[Night Fall]|h|r: la nuit tombe sur des cercles sombres dans la clairière - esquivez chaque zone touchée.",
"* |cff71d5ff|Hspell:198379|h[Rampage]|h|r: son pile sur le tank - mécanique du tank : échange et absorption avec les soins.",
"* |cff71d5ff|Hspell:198477|h[Fixate]|h|r: Fixate un joueur - le marqueur se déplace constamment et lance le fixate.",
};

pack["103344"] = { "Chênecœur",
"* |cff71d5ff|Hspell:204666|h[Shattered Earth]|h|r: il détruit le sol devant lui - combats au corps à corps depuis l'arrière et tout le monde reste à l'écart de la fissure.",
"* |cff71d5ff|Hspell:204658|h[Lancer la cible]|h|r : il attrape un joueur et le jette contre le mur - le côté du mur reste dégagé et les soigneurs récupèrent l'impact.",
"* |cff71d5ff|Hspell:212786|h[Uproot]|h|r: Uproote et change de position - préparez-vous au changement de phase.",
"* |cff71d5ff|Hspell:204574|h[Racines]|h|r: racines empoisonnantes qui se répandent sur le sol - faites attention à vos pieds et sortez de la zone de croissance.",
};

pack["99200"] = { "Dresaron",
"* |cff71d5ff|Hspell:191325|h[Respiration]|h|r: la respiration se déplace devant de lui - rester à l'arrière.",
"* |cff71d5ff|Hspell:199389|h[Roar]|h|r: son rugido provoque la panique chez tous ceux qui se trouvent à proximité - contrer le rugissement avec un effet de réduction de la peur.",
"* |cff71d5ff|Hspell:199345|h[Down Draft]|h|r: son down draft tire tout le monde sur le sol - continuez à bouger contre la force.",
"* |cff71d5ff|Hspell:199460|h[Falling Rocks]|h|r: des rochers tombent dans toute la zone - soyez attentif aux chutes et esquivez les impacts.",
};

pack["99192"] = { "Ombre de Xavius",
"* |cff71d5ff|Hspell:200243|h[Waking Nightmare]|h|r: the waking nightmare afflige un joueur - la créature se retire jusqu'à ce que les visions disparaissent.",
"* |cff71d5ff|Hspell:200289|h[Paranoia]|h|r: Paranoia affects players and makes them nervous - those affected keep their distance from each other.",
"* |cff71d5ff|Hspell:200050|h[Apocalyptic Nightmare]|h|r: son explosion de Apocalipsis se déclenche dans la clairière - utilisez un cooldown de raid pour la contrer.",
"* |cff71d5ff|Hspell:200238|h[Feed on the Weak]|h|r: he feeds on the wounded - keep everyone above the bottom third so the feed never lands.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91784"] = { "Seigneur de guerre Parjesh",
"* |cff71d5ff|Hspell:192072|h[Renforts]|h|r : Il appelle des renforts - Attaquez-les rapidement avec des dégâts AoE avant qu'ils ne se regroupent.",
"* |cff71d5ff|Hspell:192094|h[Impaling Spear]|h|r: il lance une lance qui perfore le sol - esquivez les lances lorsqu'elles tombent.",
"* |cff71d5ff|Hspell:191900|h[Crashing Wave]|h|r: son attaque de vague destructrice traverse la plateforme - éloignez-vous du chemin de la vague.",
"* |cff71d5ff|Hspell:197502|h[Restoration]|h|r: il se soigne - interrompre la restauration à chaque fois.",
};

pack["91789"] = { "Dame Glissefiel",
"* |cff71d5ff|Hspell:193682|h[Adds]|h|r: elle invoque les seacrawlers - le tank les garde et le raid les cible avec des AoE.",
"* |cff71d5ff|Hspell:193698|h[Curse of the Witch]|h|r: son malediction marque les joueurs - la malédiction se propage à partir de la guilde jusqu'à ce que la marque disparaisse.",
};

pack["91797"] = { "Roi Barbe-Fond",
"* |cff71d5ff|Hspell:193093|h[Ground Slam]|h|r: son attaque de plateforme qui fait trembler la plateforme - soyez prêt et restez hors des fissures.",
"* |cff71d5ff|Hspell:193152|h[Quake]|h|r: son tremblement provoque des fissures dans le sol - restez en mouvement pour éviter les dégâts.",
"* |cff71d5ff|Hspell:193051|h[Appel des Mers]|h|r : il invoque des vagues qui se déploient dans la pièce - esquivez chaque vague lorsqu'elle traverse la salle.",
"* |cff71d5ff|Hspell:193018|h[Bubbles]|h|r: ses bulles engloutissent un joueur - le raid fait éclater la bulle et le libère.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["91808"] = { "Serpentrix",
"* |cff71d5ff|Hspell:191855|h[Toxic Wound]|h|r: sa blessure toxique s'accumule sur le tank - le tank échange avec lui avant qu'elle ne s'aggrave.",
"* |cff71d5ff|Hspell:191798|h[Winds]|h|r : Les vents traversent la plateforme - continuez à bouger contre les rafales.",
"* |cff71d5ff|Hspell:191873|h[Submerge]|h|r: Submergez et remontez ailleurs - restez vigilant pendant la plongée et engagez-vous proprement.",
"* |cff71d5ff|Hspell:191858|h[Piscine toxique]|h|r: les piscines toxiques se forment là où il plonge - ne jamais se tenir dans les piscines.",
};


-- --------------------------------- --
-- Eye of Azshara : Zona 1456 --
-- --------------------------------- --

pack["96028"] = { "Courroux d’Azshara",
"* |cff71d5ff|Hspell:192617|h[Massive Deluge]|h|r: son attaque massive inondante qui couvre toute la plateforme - utilisez un sort de raid pour la contrer.",
"* |cff71d5ff|Hspell:192680|h[Tornado]|h|r: Le tornado poursuit un joueur sur la plateforme - le kite le déplace tandis qu'il tourne.",
"* |cff71d5ff|Hspell:192706|h[Arcane Bomb]|h|r: son arcane bomb explose où elle est marquée - éloignez-vous de la zone avant qu'elle n'explose.",
};


-- --------------------------------- --
-- Halls of Valor : Zona 1477 --
-- --------------------------------- --

pack["94960"] = { "Hymdall",
"* |cff71d5ff|Hspell:193092|h[Sweeping Cleave]|h|r: son sweep attaque le sol - esquivez l'attaque et combattez de côté.",
"* |cff71d5ff|Hspell:188404|h[Souffle]|h|r: l'attaque du monstre qu'il lance souffle sur le sol - sortez de la portée du souffle.",
"* |cff71d5ff|Hspell:193235|h[Danse de lames]|h|r: les lames tournent autour de lui - restez à l'écart des lames tournantes.",
"* |cff71d5ff|Hspell:191284|h[Horn of Valor]|h|r: son cor de guerre appelle la bête de son côté - détruisez la bête dès qu'elle atterrit.",
};

pack["95833"] = { "Hyrja",
"* |cff71d5ff|Hspell:192048|h[Expel Light]|h|r : elle projette des éclats de lumière dans la pièce - esquivez les éclats de lumière.",
"* |cff71d5ff|Hspell:192018|h[Shield of Light]|h|r: son bouclier de lumière immobilise le tank à l'intérieur de son rayon - le tank se libère et le nouveau tank lance un appel.",
"* |cff71d5ff|Hspell:192307|h[Sanctify]|h|r: son sanctify inonde la plateforme de feu sacré - éloignez-vous de l'anneau brillant.",
"* |cff71d5ff|Hspell:200901|h[Eye of the Storm]|h|r: le centre de la tempête tire les joueurs vers l'intérieur - restez à l'écart de l'effet de traction et des bords.",
};

bos = { "Fenryr",
"* |cff71d5ff|Hspell:197556|h[Saut]|h|r : il saute sur la position d'un joueur - le joueur ciblé libère l'espace d'atterrissage.",
"* |cff71d5ff|Hspell:196838|h[Fixate]|h|r: Fixate sur un joueur et le chasse - le marque pour qu'il vole autour de la salle.",
"* |cff71d5ff|Hspell:196512|h[Claw Frenzy]|h|r: son attaque de claw frenzy frappe tout le monde à portée - se disperser et se préparer pendant la attaque.",
"* |cff71d5ff|Hspell:196543|h[Howl]|h|r: son cri son fait peur à la salle - interrompre le cri ou se préparer à la panique.",
};
pack["95674"] = bos; pack["99868"] = bos;

pack["95675"] = { "Skovald le Dieu-Roi",
"* |cff71d5ff|Hspell:193783|h[Aegis of Avaloren]|h|r: pendant qu'il tient l'aegis, il absorbe presque tout - appuyez sur {Burn} jusqu'à ce que le bouclier se brise.",
"* |cff71d5ff|Hspell:193659|h[Felblaze Rush]|h|r: Utilisez Felblaze Rush pour attaquer rapidement, mais esquivez la ligne d'attaque.",
"* |cff71d5ff|Hspell:194112|h[Claim the Aegis]|h|r: he tries to claim the aegis for himself - interrupt the claim or the fight gets harder.",
"* |cff71d5ff|Hspell:193668|h[Savage Blade]|h|r: son épée sauvage ouvre le tank - mécanique du tank : échangez et absorbez avec un sort défensif.",
};

pack["95676"] = { "Odyn",
"* |cff71d5ff|Hspell:198072|h[Spear of Light]|h|r: il lance des épées sur le sol - esquivez les épées qui tombent.",
"* |cff71d5ff|Hspell:198263|h[Tempest]|h|r: son scythes de tempestad autour de lui - éloignez-vous de la tempête plutôt que de rester dans son champ.",
"* |cff71d5ff|Hspell:198077|h[Shatter Spears]|h|r: ses épées se brisent et projettent des éclats - se disperser après chaque bris.",
"* |cff71d5ff|Hspell:197961|h[Runic Brand]|h|r: la marque runique marque les joueurs - le joueur marqué prend sa marque et se tient sur les runes.",
};

-- --------------------------------- --
-- Maw of Souls : Zona 1492 --
-- --------------------------------- --

pack["96756"] = { "Ymiron, le roi déchu",
"* |cff71d5ff|Hspell:193460|h[Bane]|h|r: his bane bolts streak at players - dodge the bolts as they fly.",
"* |cff71d5ff|Hspell:193211|h[Dark Slash]|h|r: son tranch tranch ouvre le tank - mécanique du tank : échange et absorption avec une compétence défensive.",
"* |cff71d5ff|Hspell:193364|h[Les cris des morts]|h|r: les morts hurlent à travers le navire - anticipez les cris plutôt que de vous y exposer.",
"* |cff71d5ff|Hspell:193977|h[Winds]|h|r: les vents soufflent violemment sur le pont - restez au centre pour éviter les dégâts.",
};

pack["96754"] = { "Harbaron",
"* |cff71d5ff|Hspell:194327|h[Summon the Fragment]|h|r: he summons the fragment to his side - burst the fragment down before it lands.",
"* |cff71d5ff|Hspell:194231|h[Servitor of the Tide]|h|r: ses serviteurs se multiplient avec la marée - éliminez-les rapidement.",
"* |cff71d5ff|Hspell:194266|h[Void Snap]|h|r: son coup de vide déstabilisent le groupe -> interrompre le coup de vide dès qu'il est disponible.",
"* |cff71d5ff|Hspell:194216|h[Scythe]|h|r: son attaque de vague avec sa faux - sautez par-dessus la vague ou restez à distance.",
};

pack["96759"] = { "Helya",
"* |cff71d5ff|Hspell:197262|h[Taint of the Sea]|h|r: sa contamination s'infiltre dans l'eau - restez hors de l'eau contaminée lorsqu'elle se déverse.",
"* |cff71d5ff|Hspell:196947|h[Submerged]|h|r: elle plonge et change de phase - réorganisez-vous proprement et restez vigilant pendant la plongée.",
"* |cff71d5ff|Hspell:202088|h[Brackwater Barrage]|h|r : son attaque de Brackwater Barrage se déclenche devant - les personnages de mêlée restent derrière.",
"* |cff71d5ff|Hspell:227233|h[Souffle]|h|r : son souffle brûle devant elle - rester à l'arrière.",
};


-- --------------------------------- --
-- Neltharion's Lair : Zona 1458 --
-- --------------------------------- --

pack["91003"] = { "Rokmora",
"* |cff71d5ff|Hspell:188169|h[Tranchures]|h|r: les tranchures volent de son cristal - esquivez les tranchures lorsqu'elles se dispersent.",
"* |cff71d5ff|Hspell:188114|h[Shatter]|h|r: il brise la roche en morceaux - créez de l'espace pour l'attaque et évitez les débris.",
"* |cff71d5ff|Hspell:192800|h[Gaz toxique]|h|r : le gaz toxique s'échappe dans le couloir - restez hors des nuages en mouvement.",
};

pack["91004"] = { "Ularogg Sculpte-Roche",
"* |cff71d5ff|Hspell:216290|h[Strike of the Mountain]|h|r: ses attaques s'abattent depuis la montagne - esquivez l'attaque.",
"* |cff71d5ff|Hspell:193375|h[Bellow of the Deeps]|h|r: son cri son appelent les troggs - Éclatez les add avant qu'ils ne submergent.",
"* |cff71d5ff|Hspell:216249|h[Posture de la Montagne]|h|r : il adopte une posture et change la dynamique du combat - préparez-vous au changement de phase.",
"* |cff71d5ff|Hspell:198496|h[Sunder]|h|r: son attaque de {Sunder} ouvre l'armure du tank - mécanique du tank : échange et absorption avec une compétence défensive.",
};

pack["91005"] = { "Naraxas",
"* |cff71d5ff|Hspell:209906|h[Fixate]|h|r: son fixate attrape un joueur - le joueur attrapé est libéré et la créature attaque.",
"* |cff71d5ff|Hspell:199176|h[Spiked Tongue]|h|r: sa langue acérée frappe en avant - la zone devant reste dégagée de l'attaque.",
"* |cff71d5ff|Hspell:199817|h[Adds]|h|r: les rituels se concentrent pour l'alimenter - brisez le rituel et ciblez-les rapidement.",
"* |cff71d5ff|Hspell:188494|h[Rancid Maw]|h|r: Attaquez les flaques de bile de [Rancid Maw] sur le sol - ne vous tenez jamais à l'intérieur de la gueule.",
};

pack["91007"] = { "Dargrul le roi d’en bas",
"* |cff71d5ff|Hspell:200700|h[Molten Landslide]|h|r: son attaque de glissée de lave qui traverse la grotte - esquivez la glissée pendant qu'elle avance.",
"* |cff71d5ff|Hspell:200551|h[Écailles de cristal]|h|r: les éclats de cristal apparaissent sous les joueurs - éloignez-vous des éclats lorsqu'ils montent.",
"* |cff71d5ff|Hspell:200154|h[Burning Hatred]|h|r: son stacks de \"Burning Hatred\" s'accumulent lorsqu'il est en colère - appliquez le debuff avant que les stacks atteignent leur maximum.",
"* |cff71d5ff|Hspell:200732|h[Molten Overload]|h|r: son coups de marteau de [Molten Overload] qui visent le tank - mécanique du tank : échangez et absorbez les dégâts avec une compétence défensive.",
};


-- --------------------------------- --
-- Return to Karazhan : Zona 1651 --
-- --------------------------------- --

pack["113971"] = { "Damoiselle de vertu",
"* |cff71d5ff|Hspell:227789|h[Sacred Ground]|h|r: son sol sacré brûle tous ceux qui se tiennent sur le cercle sacré - restez à l'extérieur du cercle.",
"* |cff71d5ff|Hspell:227823|h[Holy Wrath]|h|r: son sortilège provoque une explosion - se disperser de chacun et du tank pour éviter les dégâts.",
"* |cff71d5ff|Hspell:227800|h[Holy Shock]|h|r : elle se soigne en lançant une Holy Shock - interrompre la Holy Shock à chaque fois.",
"* |cff71d5ff|Hspell:227508|h[Repentance]|h|r: Repentance ensorcelle les joueurs - purgez rapidement ceux qui sont contrôlés et préparez-vous à lancer.",
};

bos = { "Opéra : La belle bête",
"* |cff71d5ff|Hspell:228221|h[Severe Dusting]|h|r: les balais balayent en effectuant une sévère poussière - ciblez les balais et laissez la poussière mourir avec eux.",
"* |cff71d5ff|Hspell:232153|h[Kara Kazham]|h|r: les hexes de Kara Kazham - brisez ceux qui sont hexés avant que l'hex ne se propage.",
"* |cff71d5ff|Hspell:228193|h[Burning Blaze]|h|r : Les flammes se dispersent sur la scène - esquivez les flammes et les projections.",
"* |cff71d5ff|Hspell:228025|h[Heat Wave]|h|r: le bâton canalise sa vague de chaleur - interrompez le sort à chaque fois.",
};
pack["114329"] = bos; pack["114522"] = bos; pack["114330"] = bos; pack["114328"] = bos;

bos = { "Marche de l’Ouest : de la mer à l’amour – opéra",
"* |cff71d5ff|Hspell:227568|h[Leg Sweep]|h|r: son coup de jambe avec une faux, touche tout le monde à proximité - évitez de la toucher plutôt que de s'enfuir.",
"* |cff71d5ff|Hspell:227777|h[Rituel du tonnerre]|h|r: le rituel du tonnerre marque les joueurs - se disperser des endroits marqués.",
"* |cff71d5ff|Hspell:227420|h[Bubble Blast]|h|r: le perro utilise son attaque de bulles - interrompre le sort.",
"* |cff71d5ff|Hspell:227783|h[Wash Away]|h|r: son attaque de Wash Away qui traverse le pont - sautez la vague ou restez à distance.",
};
pack["114261"] = bos; pack["114260"] = bos;

bos = { "Opéra : Lokdu",
"* |cff71d5ff|Hspell:227477|h[Invoquez des monstres]|h|r : les créatures arrivent en masse autour d'eux - cible rapidement les monstres avec des attaques à zone.",
"* |cff71d5ff|Hspell:227776|h[Magnifique magie]|h|r : ses attaques magiques dévastatrices traversent la zone - se cacher derrière un obstacle et bloquer sa ligne de vue.",
"* |cff71d5ff|Hspell:227416|h[Wondrous Radiance]|h|r : son rayons éblouissants inondent la salle - éloignez-vous des rayons et préparez-vous à l'aveuglement.",
};
pack["114284"] = bos; pack["114251"] = bos;

pack["114252"] = { "Dévoreur de mana",
"* |cff71d5ff|Hspell:227523|h[Energy Void]|h|r: son drain les lanceurs de sorts - les soigneurs doivent gérer leur mana et laisser les vides s'activer là où ils sont apparus.",
"* |cff71d5ff|Hspell:227618|h[Arcane Bomb]|h|r: son arcane bomb explose à un endroit marqué - éloignez-vous avant qu'elle n'explose.",
"* |cff71d5ff|Hspell:227507|h[Essence dévastatrice]|h|r : l'essence dévastatrice traverse la salle - étalez-vous et soignez grâce à l'effet.",
"* |cff71d5ff|Hspell:227297|h[Coalesce Power]|h|r : ses orbes fusionnés se transforment en une seule boule massive - partagez l'explosion de la boule ensemble plutôt que de l'engloutir entièrement.",
};

bos = { "Attumen le Veneur",
"* |cff71d5ff|Hspell:227363|h[Mighty Stomp]|h|r: son puissant coup de pied détruit le sol - interrompre le coup de pied dès qu'il est disponible.",
"* |cff71d5ff|Hspell:227365|h[Spectral Charge]|h|r: son charge spectrale traverse la pièce - évitez le trajet de charge.",
"* |cff71d5ff|Hspell:227339|h[Mezair]|h|r: son mezair balaient la pièce à cheval - nettoyez le chemin de la charge montée.",
"* |cff71d5ff|Hspell:227493|h[Mortal Strike]|h|r: son coup mort déstabilise le tank - mécanique du tank : échange et absorption avec une compétence défensive.",
};
pack["114262"] = bos; pack["114264"] = bos;

pack["114312"] = { "Moroes",
"* |cff71d5ff|Hspell:227672|h[Will Breaker]|h|r: his will breaker hammers the tank's guard down - the tanks trade the hammer.",
"* |cff71d5ff|Hspell:227737|h[Vanish]|h|r: il se dissimule dans l'ombre et attaque depuis là - restez dispersés lorsqu'il disparaît.",
"* |cff71d5ff|Hspell:227872|h[Ghastly Purge]|h|r: son invocation des invités - AoE les invités pour les réduire avant qu'ils ne se regroupent.",
"* |cff71d5ff|Hspell:227545|h[Mana Drain]|h|r: son drain siphonne les lanceurs - bloquez ou résistez au drain.",
};

pack["114462"] = { "Le Conservateur",
"* |cff71d5ff|Hspell:227267|h[Adds]|h|r: les explosions se dirigent vers lui - les éliminez, mais ne les faites jamais sortir de leur position.",
"* |cff71d5ff|Hspell:227254|h[Invocation]|h|r: invoquez des sorts pour se soigner - le brûlez fortement à travers la fenêtre.",
"* |cff71d5ff|Hspell:227465|h[Power Discharge]|h|r : son attaque à distance, éloignez-vous des explosions.",
};

pack["114350"] = { "Ombre de Medivh",
"* |cff71d5ff|Hspell:227615|h[Inferno Bolt]|h|r: ses projectiles d'infierno traversent la salle - esquivez les projectiles.",
"* |cff71d5ff|Hspell:228269|h[Flamme Wreath]|h|r: son anneau de flamme détruit le sol - ne jamais traverser l'anneau, il explose au contact.",
"* |cff71d5ff|Hspell:227628|h[Arcane Missiles]|h|r: ses missiles arcaniens frappent le tank - le tank échange des coups avec les missiles.",
"* |cff71d5ff|Hspell:227592|h[Frostbite]|h|r: son coup de givre gèle la armure du tank - interrompre le coup de givre.",
};

pack["114790"] = { "Viz’aduum l’Observateur",
"* |cff71d5ff|Hspell:229159|h[Chaotic Shadows]|h|r: les ombres chaotiques se rapprochent des joueurs - ciblez les ombres pour les éloigner du combat.",
"* |cff71d5ff|Hspell:229242|h[Ray de feu]|h|r: son rayon de feu scie à travers les remparts - évitez la trajectoire du rayon.",
"* |cff71d5ff|Hspell:229151|h[Disintegrate]|h|r: son attaque de disintegration détruit toute la plateforme - regardez la ligne et sortez-en.",
"* |cff71d5ff|Hspell:229083|h[Explosion de feu]|h|r : son explosion de feu brûle la zone devant lui - les personnages au corps à corps restent derrière.",
};

pack["114895"] = { "Nightbane",
"* |cff71d5ff|Hspell:228796|h[Ignite Soul]|h|r: son sort sur les joueurs les plus proches - éloignez-vous des dégâts et de la tourelle.",
"* |cff71d5ff|Hspell:228785|h[Respiration]|h|r: son souffle brûle devant lui - rester à l'arrière.",
"* |cff71d5ff|Hspell:229307|h[Reverb Shadows]|h|r: les ombres de Reverb résonnent dans la colonie - ciblez les ombres.",
"* |cff71d5ff|Hspell:228808|h[Charred Earth]|h|r: son sol de la tierra carbonizada brûle le sol - ne jamais vous tenir sur les zones carbonisées.",
};


-- --------------------------------- --
-- Seat of the Triumvirate : Zona 1753 --
-- --------------------------------- --

pack["124871"] = { "Zuraal le Zélateur",
"* |cff71d5ff|Hspell:1263282|h[Decimate]|h|r: son attaque de Decimate détruit la salle - anticipez le coup principal avec un sort de récupération.",
"* |cff71d5ff|Hspell:1268916|h[Null Palm]|h|r: son coup de main nul frappent devant - les personnages au corps à corps restent derrière lui.",
"* |cff71d5ff|Hspell:1263399|h[Oozing Slam]|h|r: son attaque laisse des oozelings derrière - cible les adds lorsqu'ils se régénèrent.",
"* |cff71d5ff|Hspell:1263440|h[Void Slash]|h|r: son tranchée vide ouvre le tank - mécanique du tank : échange et absorption avec une compétence défensive.",
};

pack["124872"] = { "Saprish",
"* |cff71d5ff|Hspell:1280064|h[Phase Dash]|h|r: il utilise un \"Phase Dash\" entre ses plateformes - réengagez-vous là où il réapparaît.",
"* |cff71d5ff|Hspell:245738|h[Shadow Pounce]|h|r: son pet pounce sur un joueur - le joueur ciblé annule le pounce.",
"* |cff71d5ff|Hspell:247175|h[Void Bomb]|h|r: son projectile marque un endroit - éloignez-vous de la marque avant l'explosion.",
"* |cff71d5ff|Hspell:1263523|h[Overload]|h|r : son overloads traversent la salle - soignez à travers l'explosion et étalez un peu.",
};

pack["124874"] = { "Vice-roi Nezhar",
"* |cff71d5ff|Hspell:244750|h[Mind Blast]|h|r: ses attaques de Mind Blast traversent le tank - les tanks échangent les attaques.",
"* |cff71d5ff|Hspell:1263542|h[Mass Void Infusion]|h|r: son burst de Mass Void Infusion envole la pièce - utilisez un sort à recharge pour le contrer.",
"* |cff71d5ff|Hspell:1263538|h[Tentacules du seuil]|h|r: les tentacules du seuil se dressent autour de lui - détruisez rapidement les tentacules.",
"* |cff71d5ff|Hspell:1263528|h[Repulse]|h|r: son attaque repousse tous les joueurs vers l'arrière - restez au centre pour éviter d'être poussé.",
};

pack["124870"] = { "L’ura",
"* |cff71d5ff|Hspell:1265426|h[Discordant Beam]|h|r: son rayon discordantes balaie le bastion - restez hors de la trajectoire du rayon.",
"* |cff71d5ff|Hspell:1265421|h[Dirge]|h|r: Le son de [Dirge] résonne dans la pièce - étalez-vous et soignez à travers le son.",
"* |cff71d5ff|Hspell:1264151|h[Disintegrate]|h|r: son attaque de disintegration traverse sa ligne - éloignez-vous de la ligne.",
"* |cff71d5ff|Hspell:1265689|h[Chœur des morts]|h|r: le chœur des morts se forme autour d'elle - brisez le chœur et infligez des dégâts à AOE aux spawns.",
};


-- --------------------------------- --
-- The Arcway : Zona 1516 --
-- --------------------------------- --

pack["98205"] = { "Corstilax",
"* |cff71d5ff|Hspell:196070|h[Suppression]|h|r: son champ de suppression immobilise les joueurs - sortez du champ et repositionnez-vous.",
"* |cff71d5ff|Hspell:195804|h[Quarantine]|h|r: il enferme le joueur dans une cage - brisez la cage pour le libérer.",
"* |cff71d5ff|Hspell:196115|h[Nettoyer]|h|r : son pulso de nettoyage ravage la pièce - se disperser et soigner grâce au pulse.",
};

pack["98207"] = { "Nal’tira",
"* |cff71d5ff|Hspell:199811|h[Blink]|h|r: elle se téléporte sur la position d'un joueur - le joueur ciblé élimine le point d'atterrissage.",
"* |cff71d5ff|Hspell:200284|h[Web]|h|r: Attaquez avec votre toile pour immobiliser un joueur, le raid doit ensuite le libérer rapidement.",
"* |cff71d5ff|Hspell:200040|h[Venom]|h|r: utilise tes réserves de venin pour endommager le sol - ne te tiens jamais à l'intérieur de la zone de venin.",
};

pack["98203"] = { "Ivanyr",
"* |cff71d5ff|Hspell:196562|h[Volatile Magic]|h|r: ses orbes de magie instables se déplacent parmi les joueurs - étalez-vous pour qu'aucun ne puisse en prendre deux.",
"* |cff71d5ff|Hspell:196805|h[Nether Link]|h|r: son lienes de Nether qui relient deux joueurs – les joueurs liés se tirent jusqu'à ce que le lien se casse.",
"* |cff71d5ff|Hspell:196392|h[Overcharge Mana]|h|r: il se recharge sa mana et utilise l'effet d'empowerment - interrompez le recharge de mana à chaque fois.",
};

pack["98206"] = { "Général Xakal",
"* |cff71d5ff|Hspell:197776|h[Fissure]|h|r: son fissure crée une fissure dans le sol - évitez les fissures lorsqu'elles se séparent.",
"* |cff71d5ff|Hspell:212030|h[Darkfall]|h|r: son onde de Darkfall se déploie - sautez la vague ou restez à distance.",
"* |cff71d5ff|Hspell:197810|h[Slam]|h|r : son coup le fait reculer tout le monde - restez au centre pour éviter d'être repoussé.",
};

pack["98208"] = { "Conseiller Vandros",
"* |cff71d5ff|Hspell:203957|h[Time Lock]|h|r: son time lock immobilise les joueurs sur place - sécurisez le mécanisme et réengagez-vous lorsque celui-ci se relève.",
"* |cff71d5ff|Hspell:203176|h[Mana instable]|h|r : ses orbes de mana instables explosent – esquivez les orbes lorsqu'ils volent.",
"* |cff71d5ff|Hspell:203833|h[Time Split]|h|r: Il se divise en deux et se déplace dans la salle - brûlez la copie comme l'original.",
"* |cff71d5ff|Hspell:202974|h[Force Bomb]|h|r: son force bomb fait tomber tout le monde, restez au centre pour éviter d'être projeté.",
};


-- --------------------------------- --
-- Vault of the Wardens : Zona 1493 --
-- --------------------------------- --

pack["95885"] = { "Tirathon Saltheril",
"* |cff71d5ff|Hspell:204151|h[Dark Strikes]|h|r: ses attaques sombres se cumulent sur le tank - mécanique du tank : échangez et absorbez avec une compétence défensive.",
"* |cff71d5ff|Hspell:191823|h[Furious Blast]|h|r: son explosion furieuse détonne dans la pièce - interrompez l'explosion à chaque fois.",
"* |cff71d5ff|Hspell:202913|h[Fel Mortar]|h|r: son fel motars se lancent sur le champ de bataille - esquivez les projectiles et leurs éclaboussures.",
"* |cff71d5ff|Hspell:202919|h[Fel Mortar Burn]|h|r: les particules enflammées continuent de brûler - ne vous tenez jamais sur les zones enflammées.",
};

pack["95886"] = { "Scor’roc",
"* |cff71d5ff|Hspell:192522|h[Fissure]|h|r: son fissure crée une fissure dans le sol - évitez les fissures lorsqu'elles se séparent.",
"* |cff71d5ff|Hspell:192621|h[Volcan]|h|r: son volán érupt à travers le sol - éloignez-vous de l'éruption avant qu'elle ne décolle.",
"* |cff71d5ff|Hspell:192631|h[Couronne de lave]|h|r: sa couronne de lave tourne dans la salle - restez hors de la lave tournante.",
};

pack["95887"] = { "Vitrœil",
"* |cff71d5ff|Hspell:194942|h[Gaze]|h|r: son regard balaie la arène - restez à l'extérieur de la ligne de balayage lumineuse.",
"* |cff71d5ff|Hspell:194289|h[Concentré]|h|r : son regard concentré se fixe sur un joueur - tout le monde reste à distance du faisceau.",
"* |cff71d5ff|Hspell:194945|h[Gaze Burn]|h|r: le regard concentré brûle le sol - ne jamais vous tenir sur le sol brûlé.",
};

pack["95888"] = { "Cordana Gangrechant",
"* |cff71d5ff|Hspell:197251|h[Kick]|h|r: le coup du tank brise les armures du tank - les tanks se relaient sur les coups.",
"* |cff71d5ff|Hspell:213583|h[Deepening Shadows]|h|r: sa profondeur des ombres engloutit la cellule - restez sur le sol éclairé et détruisez les ombres.",
"* |cff71d5ff|Hspell:205004|h[Vengeance]|h|r: Elle accumule des stacks de Vengeance pendant qu'elle est en furie - brûlez-la avant que les stacks atteignent leur maximum.",
"* |cff71d5ff|Hspell:192750|h[Hidden]|h|r: elle se réfugie dans l'ombre pour sa phase finale - se regrouper et la attaquer à chaque apparition.",
};

pack["96015"] = { "Inquisiteur Tourmentorum",
"* |cff71d5ff|Hspell:200898|h[Teleport]|h|r: il téléporte dans l'étude - réengagez-le là où il réapparaît et maintenez les monstres sous contrôle.",
"* |cff71d5ff|Hspell:200905|h[Sap Soul]|h|r: son attaque de siphon de vie sur un joueur - interrompre l'attaque à chaque fois.",
"* |cff71d5ff|Hspell:201488|h[Fear]|h|r: son raid aura provoque la peur dans la salle - neutralisez la peur avec un effet de réduction de peur.",
"* |cff71d5ff|Hspell:212564|h[Regard]|h|r: son regard immobilise un joueur - le marqueur se déplace et utilise le regard pour le maintenir à distance.",
};


-- --------------------------------- --
-- The Violet Hold : Zona 1544 --
-- --------------------------------- --

pack["101951"] = { "Froidegueule",
"* |cff71d5ff|Hspell:201379|h[Souffle]|h|r : son souffle gèle dans toute la salle - rester à l'arrière.",
"* |cff71d5ff|Hspell:201672|h[Relentless Storm]|h|r: son attaque dévastatrice, elle inflige des dégâts aux anneaux dans la cellule - esquivez chaque attaque.",
"* |cff71d5ff|Hspell:201960|h[Ice Bomb]|h|r: ses bombes de glace explosent autour des joueurs – se cacher derrière un obstacle dès que les bombes explosent.",
};

pack["101950"] = { "Ecorcheur d’esprit Kaahrj",
"* |cff71d5ff|Hspell:201920|h[Shadow Crash]|h|r: son attaque éclabousse le sol - évitez les éclaboussures et étalez-vous.",
"* |cff71d5ff|Hspell:201148|h[Doom]|h|r : son coup inflige des dégâts au tank - mécanique du tank : échange et absorption avec un sort défensif.",
"* |cff71d5ff|Hspell:201153|h[Eternal Darkness]|h|r: son ténèbres éternelles inondent la forteresse – préparez-vous à l'onde entière avec des soins.",
};

pack["101976"] = { "Millificent Tempête-de-Mana",
"* Scie circulaire : inflige des dégâts massifs au tank avec un saignement cumulatif — soyez prêt à le contrer rapidement ou à le maintenir à distance lorsque les dégâts augmentent.",
"* |cff71d5ff|Hspell:201159|h[Rayon de Delta]|h|r: Marquer un joueur avec feu — dégâts initiaux + brûlure au fil du temps ; que le joueur marqué soit exposé.",
"* |cff71d5ff|Hspell:201240|h[Bomba de écureuil expérimentale]|h|r : remplissez le sol de bombes qui canalisent une explosion ÉNORME sur toute la zone — cliquez droit sur chaque bombe (désactiver) AVANT qu'elle n'explose.",
"* |cff71d5ff|Hspell:201392|h[Poulet à torpilles]|h|r: Un poulet mécanique apparaît et tire des roquettes — le détruire rapidement ou esquiver ses tirs.",
"* |cff71d5ff|Hspell:201572|h[Fureur de Malifica]|h|r : elle se met à la colère et ses sorts sortent plus vite et plus fort — bombes surchargées et poulet renforcé ; maximiser le DPS.",
"* Feu de la mort (plateforme supérieure) : un allié de Malifica se positionne sur la plateforme haute — interrompt les sorts dangereux (comme Diabolical Doom) avec le laser ou les sorts de contrôle.",
};

pack["101995"] = { "Gueule-Purulente",
"* |cff71d5ff|Hspell:202266|h[Ooze]|h|r: his ooze puddles the ground - never stand inside the ooze.",
};


pack["102246"] = { "Anub’esset",
"* |cff71d5ff|Hspell:202341|h[Impale]|h|r: il lance ses épées pour attaquer les joueurs - éloignez-vous des épées lorsqu'elles montent.",
"* |cff71d5ff|Hspell:201863|h[Nidaule]|h|r: Nidaule se disperse autour de lui - Concentrez vos dégâts sur les insectes rapidement.",
"* |cff71d5ff|Hspell:202480|h[Fixate]|h|r: Une araignée se fixe sur un joueur - elle le guide jusqu'à ce que l'araignée soit vaincue.",
"* |cff71d5ff|Hspell:202217|h[Mandible Strike]|h|r: son attaque avec les mâchoires brise le tank - mécanique du tank : échangez et absorbez avec une compétence défensive.",
};

pack["102431"] = { "Princesse de sang Thal’ena",
"* |cff71d5ff|Hspell:202779|h[Essence of the Blood Queen]|h|r: l'essence de la Reine du Sang est attachée à un joueur - le porteur de l'essence doit rester à distance de tous jusqu'à ce qu'elle se vide.",
"* |cff71d5ff|Hspell:202792|h[Bloodthirst]|h|r: son build de Bloodthirst, elle gagne rapidement de la puissance - les soigneurs doivent attaquer le raid et la déstabiliser avant que sa puissance n'atteigne son pic.",
"* |cff71d5ff|Hspell:202804|h[Contrôle Mental]|h|r: son contrôle mental cible un joueur - purgez le joueur contrôlé et préparez le sort.",
"* |cff71d5ff|Hspell:203381|h[Call Blood]|h|r: elle invoque ses chauves-souris sanguinolentes en une zone -> éliminez les chauves-souris avant qu'elles ne submergent.",
};

pack["102446"] = { "Gangreseigneur Betrug",
"* |cff71d5ff|Hspell:203641|h[Fel Slash]|h|r: son coup de fel cible le tank directement - mécanique du tank : échangez et absorbez les dégâts avec une compétence défensive.",
"* |cff71d5ff|Hspell:210879|h[Seed of Destruction]|h|r : ses graines germent et explosent - esquivez chaque graine qui germent.",
"* |cff71d5ff|Hspell:205233|h[Execute]|h|r : Execute anyone standing low - Keep healers above the threshold.",
"* |cff71d5ff|Hspell:202328|h[Mighty Smash]|h|r: son puissant coup repousse tout le monde -> rester au centre pour éviter d'être repoussé.",
};


-- --------------------------------- --
-- Bosses de monde --
-- --------------------------------- --

bos = { "Soultakers",
"* |cff71d5ff|Hspell:213420|h[Tentacle Bash]|h|r: leurs tentacules frappent sur les débris - les personnages de mêlée restent à l'écart de chaque coup.",
"* |cff71d5ff|Hspell:213532|h[Shatter Crew]|h|r: la Shatter Crew effectue une attaque sur le pont - ciblez et affaiblissez la Shatter Crew pendant qu'elle tente de monter à bord.",
"* |cff71d5ff|Hspell:213665|h[Marauding Mists]|h|r: les brumes maraudeuses se déplacent sur les joueurs - restez en mouvement pour éviter les brumes.",
"* |cff71d5ff|Hspell:213522|h[Cursed Crew]|h|r: la cursed crew se hisse sur le bateau - éliminez rapidement les cursed avant qu'ils ne se multiplient.",
};
pack["106981"] = bos; pack["106982"] = bos; pack["106984"] = bos;

pack["109943"] = { "Ana-Mouz",
"* |cff71d5ff|Hspell:218888|h[Impish Flames]|h|r: ses flammes impies brûlent - le tank se protège contre les flammes avec une posture défensive.",
"* |cff71d5ff|Hspell:219045|h[Mère's Embrace]|h|r: l'étreinte de sa mère immobilise un joueur - les soigneurs doivent la rompre rapidement.",
"* |cff71d5ff|Hspell:219068|h[Mother's Embrace Fail]|h|r: l'échec de l'étreinte provoque une explosion puissante sur la cible touchée - dispellez avant qu'elle n'atteigne l'échec.",
"* |cff71d5ff|Hspell:219254|h[Gaseux]|h|r: son souffle gazeux inonde l'île - restez hors de la fumée.",
};

pack["121124"] = { "Apocron",
"* |cff71d5ff|Hspell:241518|h[Sear]|h|r: son coup de feu brûle partout où il passe - l'étape marquée est protégée contre la brûlure.",
"* |cff71d5ff|Hspell:241498|h[Felfire Missiles]|h|r: ses missiles de felfire s'abattent sur les joueurs - esquivez les missiles lorsqu'ils touchent.",
"* |cff71d5ff|Hspell:241458|h[Quake]|h|r: son tremblement le fait reculer tout le monde - restez au centre pour éviter d'être repoussé.",
};

pack["117239"] = { "Brutallus",
"* |cff71d5ff|Hspell:233484|h[Meteor Slash]|h|r: son coup de météor qui détruit tout ce qui se trouve à proximité - se rapprocher et diviser l'attaque.",
"* |cff71d5ff|Hspell:233515|h[Crashing Embers]|h|r: les braises s'éparpillent sur la plage - esquivez les braises lorsqu'elles tombent.",
"* |cff71d5ff|Hspell:233566|h[Rupture]|h|r: le sol se fissure là où il atterrit - restez à l'écart de la zone fissurée.",
};

pack["117303"] = { "Malificus",
"* |cff71d5ff|Hspell:233568|h[Incite Panic]|h|r: son panique affecte le groupe - neutralisez la panique avec un effet de réduction de la peur.",
"* |cff71d5ff|Hspell:234452|h[Shadow Barrage]|h|r: son attaque de barrage d'ombre qui frappe les joueurs - se disperser et soigner pendant le barrage.",
"* |cff71d5ff|Hspell:233850|h[Virulent Infection]|h|r: son infection virulente affecte les joueurs - les infectés restent séparés jusqu'à ce que la maladie disparaisse.",
};

pack["107023"] = { "Nithogg",
"* |cff71d5ff|Hspell:212852|h[Souffle]|h|r: son souffle balaie la colline - esquivez le souffle pendant qu'il balaie.",
"* |cff71d5ff|Hspell:212887|h[Charge statique]|h|r: la charge statique s'attache aux joueurs - la charge se déplace et s'éloigne jusqu'à ce qu'elle se décharge.",
"* |cff71d5ff|Hspell:212943|h[Lightning Rod]|h|r: le Lightning Rod ancre un joueur - le porteur du Lightning Rod se tient à distance de tous pendant que le rod fournit la terre.",
"* |cff71d5ff|Hspell:212841|h[Crackling Jolt]|h|r: ses attaques de décharge électrique crépitent sur le sol - esquivez chaque impact.",
};

pack["117470"] = { "Sivash",
"* |cff71d5ff|Hspell:241433|h[Submerge]|h|r : elle plonge et remonte sous les joueurs - esquivez chaque remontée.",
"* |cff71d5ff|Hspell:233968|h[Summon Honor Guard]|h|r: son garde d'honneur arrive - Attaquez-les rapidement pour les éliminer avant qu'ils ne submergent.",
"* |cff71d5ff|Hspell:233996|h[Tidal Wave]|h|r: Utilisez Tidal Wave pour frapper le rivage - esquivez l'onde.",
};

pack["102075"] = { "Withered J'im",
"* Présence pourrie : lorsqu'elle entre dans votre zone, elle vous inflige un mal qui réduit vos dégâts de 10 % et vous ralentit — c'est pourquoi elle a peu de vie.",
"* Décharges Nocturnes : Lance de l'énergie arcane qui frappe dans un rayon de 4 m de l'impact — Éviter les impacts.",
"* Énergie instable : invoquez des sphères d'énergie arcane qui frappent en zone de manière périodique — gardez vos distances et détruisez-les si nécessaire pour gagner de l'espace.",
"* Résonance : se enroule dans un rempart de 15 secondes qui réduit les dégâts subis de 30 % et génère des Résonances instables qui explosent à 20 secondes dans un rayon de 5 mètres.",
"* PLUS, PLUS, PLUS : tant que le bouclier de Résonance est ACTIF, ne frappez pas le boss — les dégâts qu'il reçoit invoquent un clone qui répète ses compétences.",
"* Résonances instables : les détruire avec des dégâts AoE RAPIDES avant qu'elles n'explosent.",
};

pack["108678"] = { "Shar'thos",
"* |cff71d5ff|Hspell:215821|h[Respiration]|h|r: sa respiration brûle le devant de lui - restez à l'arrière pendant qu'il brûle.",
"* |cff71d5ff|Hspell:215876|h[Burning Earth]|h|r: la terre brûle là où il passe - restez hors de la zone brûlée.",
"* |cff71d5ff|Hspell:216044|h[Fear]|h|r: son raid son raid - utilisez un effet de réduction de peur pour contrer son effet.",
};

pack["108879"] = { "Humongris",
"* |cff71d5ff|Hspell:216817|h[Bang]|h|r: son coup de poing le fait que le tank se déplace - les tanks échangent des coups de poing.",
"* |cff71d5ff|Hspell:216432|h[Ice Fist]|h|r: son coup de glace le suivent un joueur - il la lance et elle le frappe, surpassant le froid.",
"* |cff71d5ff|Hspell:216467|h[Neige]|h|r: les amas de neige se déposent dans la zone - esquivez la neige qui monte.",
"* |cff71d5ff|Hspell:216428|h[Explosion de feu]|h|r: son explosion de feu frappe un joueur - le marqueur disparaît et les joueurs voisins reculent.",
};

pack["110378"] = { "Drugon",
"* |cff71d5ff|Hspell:219542|h[Avalanche]|h|r: son avalanche frappe le joueur - les voies marquées sont sûres.",
"* |cff71d5ff|Hspell:219602|h[Snow Plow]|h|r: son arado déplace rapidement sur la pente - éloignez-vous de l'arado et réengagez-vous après qu'il ait passé.",
"* |cff71d5ff|Hspell:219493|h[Snow Crash]|h|r: son attaque de givre repousse les ennemis au corps à corps - les ennemis au corps à corps se préparent et restent à l'intérieur.",
};

pack["110321"] = { "Nazak",
"* |cff71d5ff|Hspell:219349|h[Corroding Spray]|h|r: mon brouillard corrosif attaque les joueurs - restez à l'écart du brouillard.",
"* |cff71d5ff|Hspell:219865|h[Web Wrap]|h|r: utilisez votre sort \"Web Wrap\" pour attacher un joueur -> libérez rapidement le joueur attrapé.",
"* |cff71d5ff|Hspell:219591|h[Foundation]|h|r: son fondation tremble le sol - soyez prêt au tremblement et continuez à bouger.",
};

pack["99929"] = { "Flotsam",
"* |cff71d5ff|Hspell:220340|h[Getsam]|h|r: Getsam frappe avec des ondes de choc - le tank esquive chaque coup.",
"* |cff71d5ff|Hspell:223373|h[Yaksam]|h|r: Yaksam attaque les joueurs - laissez-lui de la place et esquivez son attaque.",
"* |cff71d5ff|Hspell:220295|h[Jetsam]|h|r: Jetsam cible un joueur sur la rive - le joueur ciblé esquive son impact.",
"* |cff71d5ff|Hspell:223317|h[Break Sam]|h|r: breaksam lance le melee vers le rivage - le melee reste hors de sa portée.",
};

pack["109331"] = { "Calamir",
"* |cff71d5ff|Hspell:217563|h[Ancient Rage: Fire]|h|r: son fureur ancestrale enflamme le sol - esquivez le feu lorsqu'il se propage.",
"* |cff71d5ff|Hspell:217877|h[Burning Bomb]|h|r: son projectile incendiaire qui se déplace vers un point - éloignez-vous du projectile avant qu'il n'explose.",
"* |cff71d5ff|Hspell:217831|h[Ancient Rage: Frost]|h|r: sa colère ancestrale se transforme en glace et gèle le sol - évitez la glace.",
"* |cff71d5ff|Hspell:217966|h[Howling Gale]|h|r: son souffle emporte les joueurs vers l'avant - résistez au vent et déplacez-vous dans la direction opposée.",
};

pack["124592"] = { "Inquisiteur Meto",
"* |cff71d5ff|Hspell:247495|h[Sow]|h|r: she sows dread across the battlefield - dodge the growth of the sowed seeds.",
"* |cff71d5ff|Hspell:247492|h[Récolte]|h|r : elle récolte depuis l'avant - éviter de se trouver dans le rayon de récolte.",
"* |cff71d5ff|Hspell:247632|h[Death Field]|h|r: son champ de mort inonde la zone d'atterrissage - sortez de la zone avant qu'elle ne prenne quelqu'un.",
"* |cff71d5ff|Hspell:247585|h[Seedsof Chaos]|h|r: ses graines de chaos éclosent sur le sol - détruisez les graines avant qu'elles ne germent.",
};

pack["124492"] = { "Occularus",
"* |cff71d5ff|Hspell:247318|h[Gushing Wound]|h|r: son stacks de [Gushing Wound] sur le tank - le tank échange avec lui pour les stacks.",
"* |cff71d5ff|Hspell:247325|h[Lash]|h|r: ses fouets traversent le groupe - esquivez le fouet et étalez-vous.",
"* |cff71d5ff|Hspell:247320|h[Searing Gaze]|h|r: son attaque de Searing Gaze le rend vulnérable - interrompre l'attaque à chaque fois.",
"* |cff71d5ff|Hspell:247393|h[Phantasm]|h|r: ses phantasmes se séparent de lui - détruisez la forme principale et infligez des dégâts à AOE aux copies.",
};

pack["124555"] = { "Sotanathor",
"* |cff71d5ff|Hspell:247410|h[Soul Cleave]|h|r: son raid cleave frappe tout ce qui se trouve devant - la zone devant reste dégagée du cleave.",
"* |cff71d5ff|Hspell:247444|h[Cloven Soul]|h|r: son âme divisée brise l'esprit d'un joueur - l'âme divisée se protège et la traverse.",
"* |cff71d5ff|Hspell:247437|h[Seed of Destruction]|h|r: ses graines de destruction germent et explosent – évitez les graines qui germent.",
"* |cff71d5ff|Hspell:247698|h[Silence]|h|r: son silence étouffe le sol dans un silence mortel - ne vous tenez jamais à l'intérieur du silence.",
};

pack["124719"] = { "Seigneur Pit Vilemus",
"* |cff71d5ff|Hspell:247742|h[Drain]|h|r: son drain cible les joueurs les plus proches - maintenez une certaine distance pour éviter que le drain ne se double.",
"* |cff71d5ff|Hspell:247731|h[Fel Breath]|h|r: his fel breath scorches in front - keep out of the front.",
"* |cff71d5ff|Hspell:247733|h[Stomp]|h|r : son stomp repousse tout le monde - restez au centre pour éviter d'être repoussé.",
};

pack["108829"] = { "Levantus",
"* |cff71d5ff|Hspell:217235|h[Rending Whirl]|h|r: son coup de vortex détachent l'eau - les personnages de mêlée restent à distance du vortex.",
"* |cff71d5ff|Hspell:217344|h[Electrifier]|h|r: son attaques d'électrification qui affectent les joueurs -> les joueurs électrisés restent séparés du groupe.",
"* |cff71d5ff|Hspell:217249|h[Massive Spout]|h|r: son éruption massive se déploie en une vague - esquivez la vague au fur et à mesure qu'elle se propage.",
"* |cff71d5ff|Hspell:217352|h[Electrifier]|h|r: l'accumulation d'Electrifier permet de retirer l'effet de surcharge - les soigneurs le retirent dès qu'il apparaît.",
};

pack["124514"] = { "Matron Folnuna",
"* |cff71d5ff|Hspell:247361|h[Griffes infectées]|h|r : ses griffes infectées provoquent des gangrenes sur le tank - le tank échange avec elle pour soigner les gangrenes.",
"* |cff71d5ff|Hspell:247389|h[Slumbering Gasp]|h|r: son souffle endort met les joueurs au sommeil - secouez les endormis pour les réveiller et préparez-vous au souffle.",
"* |cff71d5ff|Hspell:247443|h[Grotesque Spawn]|h|r: utilisez son spawn grotesque pour la contrôler - éliminez le spawn rapidement avant qu'il ne se regroupe.",
"* |cff71d5ff|Hspell:247379|h[Slumbering Gasp Cone]|h|r: son cri son dévers un cône devant - les personnages de mêlée restent derrière elle.",
};

pack["124625"] = { "Maîtresse Alluradel",
"* |cff71d5ff|Hspell:247544|h[Sadist Other]|h|r: son comportement sadique s'intensifie contre celui qui tanke - les tanks échangent les sorts.",
"* |cff71d5ff|Hspell:247549|h[Charme séduisant]|h|r: son charme séduisant immobilise les joueurs - libérez rapidement ceux qui sont charmés.",
"* |cff71d5ff|Hspell:247604|h[Fel Lash]|h|r : Fel Lash frappe sur le groupe - éviter le coup.",
"* |cff71d5ff|Hspell:247517|h[Heart Breaker]|h|r: son attaque de cœur brisé la écrase - préparez-vous à l'effet de la pression avec une compétence défensive.",
};

P.fr = fr;
