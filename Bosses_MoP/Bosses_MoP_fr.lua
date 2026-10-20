--[[
	Bosses_MoP_fr.lua
		Datos en FR del pack MoP.
		Fichero creado por el editor web (2026-10-12); las entradas se
		añaden desde la UI con el modo de traducción.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos;

-- --------------------------------- --
-- Heart of Fear : Zona 1009 --
-- --------------------------------- --

pack["63191"] = { "Garalon",
	"* Pas de tank conventionnel : il fixe un joueur avec |cff71d5ff|Hspell:123081|h[Phéromones]|h|r.",
	"* Le désigné KITE en longeant la salle ; quand les dégâts deviennent insupportables, UN AUTRE joueur s'approche pour LUI PASSER le debuff.",
	"* Les DPS brisent les 4 pattes |cff71d5ff|Hspell:122786|h[Patte cassée]|h|r pour le ralentir et faire plus de dégâts au corps.",
	"* N'entre JAMAIS sous son corps (cercle violet) : il déclenche |cff71d5ff|Hspell:122754|h[Rage aveugle]|h|r qui élimine le raid !",
};

pack["62397"] = { "Seigneur du Vent Mel’jarak",
	"* Trois groupes de sbires : utilisez l'objet de la salle pour EN GELER plusieurs au début.",
	"* Tuez un groupe entier d'un coup : le boss s'enrage mais les sbires perdent leurs protections.",
	"* Le |cff71d5ff|Hspell:122193|h[Pansement]|h|r des Soigneurs s'INTERROMPT.",
	"* Un partenaire LIBRE clique sur les |cff71d5ff|Hspell:121881|h[Prisons d'ambre]|h|r pour libérer.",
};

pack["62511"] = { "Sculpte-ambre Un’sok",
	"* |cff71d5ff|Hspell:122784|h[Transformation de vie]|h|r transforme un joueur en abomination d'ambre — un VÉHICULE.",
	"* Le mutant interrompt les incantations du boss ; martèle ton attaque de base pour consommer l'ambre et empêcher ta jauge d'atteindre 100%.",
	"* Quand le boss devient vulnérable, les DPS t'amènent à 20% pour te libérer.",
	"* Phase finale (Monstruosité) : Héroïsme directement sur le boss, en évitant les flaques d'ambre.",
};

pack["62837"] = { "Grande impératrice Shek’zeer",
	"* Phase 1 : divisez-vous en deux groupes ; ceux marqués par |cff71d5ff|Hspell:123735|h[Strident]|h|r s'éloignent.",
	"* Phase 2 (Garde royale) : elle s'enferme dans une carapace et génère des sbires ; les tanks séparent les Démantèleurs d'ambre.",
	"* Phase 3 (Sha, 30%-0%) : dissipez les peurs et concentrez TOUT le dégât direct avant qu'elle ne manque de mana.",
	"* |cff71d5ff|Hspell:123788|h[Cri terrifiant]|h|r : dégâts de zone en phase finale, soignez.",
};

pack["62543"] = { "Seigneur des lames Ta’yak",
	"* |cff71d5ff|Hspell:123474|h[Assaut invisible]|h|r marque un joueur et disparaît — TOUT le raid se REGROUPE sur lui pour partager l'impact.",
	"* Éloigne-toi des tornades qu'il génère dans la salle.",
	"* Phase 2 (20%-0%) : course dans le couloir en évitant les tornades avec les courants latéraux ; au bout, brûlez-le.",
};

pack["62980"] = { "Vizir impérial Zor’lok",
	"* Trois plates-formes, chacune avec une capacité ; au bout, une phase centrale qui les combine.",
	"* Anneaux de son : évitez-les latéralement ou abritez-vous dans les bulles de la salle.",
	"* |cff71d5ff|Hspell:122761|h[Exhaler]|h|r fixe avec un rayon : les autres s'INTERPOSENT pour partager les dégâts.",
	"* |cff71d5ff|Hspell:122740|h[Convertir]|h|r prend le contrôle : changez de cible pour le libérer avec un dégât modéré ou des étourdissements.",
};

-- --------------------------------- --
-- Mogushan Vaults : Zona 1008 --
-- --------------------------------- --

pack["60009"] = { "Feng le Maudit",
	"* Change de phase tous les 25% : bâton, lance, bouclier, poings.",
	"* Les tanks interagissent avec les STATUES AVANT le pull : ils obtiennent un bouclier qui copie les sorts et une bulle qui atténue.",
	"* Phase des poings : regroupez-vous derrière le boss pour que les soins atteignent l'|cff71d5ff|Hspell:116784|h[Épicentre]|h|r.",
	"* Phase du bouclier : |cff71d5ff|Hspell:116157|h[Tempête]|h|r vous attire — courez dans la direction OPPOSÉE.",
};

bos = { "La garde de pierre",
	"* 3-4 lions qui partagent leur vie ; un boss aléatoire remplit la jauge de |cff71d5ff|Hspell:116529|h[Pétrification]|h|r.",
	"* Le tank de celui qui s'est déclenché le JOINT à un autre lion : ils consomment leur énergie entre eux. L'autre tank garde le reste séparé.",
	"* Tout le raid évite les flaques d'améthyste, |cff71d5ff|Hspell:129424|h[pièges de cobalt]|h|r et les zones de feu.",
};
pack["60051"] = bos; pack["60043"] = bos; pack["59915"] = bos; pack["60047"] = bos;

bos = { "Volonté de l’empereur",
	"* Chaîne d'assemblage de guerriers de terre cuite ; les boss sont deux armures géantes à la fin.",
	"* Le raid se divise : les Gis (petits, les fixent), les Janissaires (moyens) et les Titans (grands, ralentissent).",
	"* Le COMBO Coup dévastateur + Piétinement : les tanks esquivent latéralement au moment exact.",
	"* Si le tank esquive les 5 coups parfaits, il gagne un bouton qui inflige des MILLIONS de dégâts.",
};
pack["60399"] = bos; pack["60400"] = bos;

pack["60143"] = { "Gara’jal le Lieur d’esprit",
	"* Les |cff71d5ff|Hspell:116161|h[Poupées vaudou]|h|r lient le tank à des joueurs : TOUS ses dégâts se répercutent sur eux.",
	"* Ceux bannis dans le monde spirituel tuent vite les sbires sombres.",
	"* Pour SORTIR : piétinez les totems ou les portails avant l'expiration du temps.",
};

bos = { "Les esprits-rois",
	"* Quatre rois mogu à tour de rôle, chacun AJOUTE une mécanique qui s'ACCUMULE.",
	"* Qiang : |cff71d5ff|Hspell:118212|h[Annihilation]|h|r frontale massive — courez DERRIÈRE lui.",
	"* Subetaï : des flèches qui immobilisent — les DPS changent de cible IMMÉDIATEMENT.",
	"* Zian : des orbes qui poursuivent — le fixé KITE l'orbe en l'éloignant du groupe.",
	"* Meng : quand il active son bouclier réfléchissant, les DPS ARRÊTENT l'attaque.",
};
pack["60701"] = bos; pack["60708"] = bos; pack["60709"] = bos; pack["60710"] = bos;

pack["60410"] = { "Elegon",
	"* Moteur d'énergie céleste au-dessus d'une plate-forme transparente suspendue sur le VIDE.",
	"* À l'intérieur du circuit blanc vous infligez plus de dégâts mais vous accumulez un debuff — sortez un MOMENT dehors pour vous purger.",
	"* Transition : les DPS détruisent TOUTES les charges des piliers SIMULTANÉMENT.",
	"* Le SOL DISPARAÎT au changement de phase ! Si vous êtes au centre, vous tombez dans le vide.",
};

-- --------------------------------- --
-- Siege of Orgrimmar : Zona 1136 --
-- --------------------------------- --

bos = { "Parangons des Klaxxi",
	"* 9 champions mantides, en sauts de 3 en 3 — chacun avec une capacité dévastatrice.",
	"* ORDRE STRICT de cible (d'ordinaire Rik'kal ou Hisek d'abord) pour éviter des combinaisons létales.",
	"* Quand un champion meurt, un joueur clique sur son cadavre pour VOLER sa capacité.",
};
pack["71152"] = bos; pack["71153"] = bos; pack["71154"] = bos; pack["71155"] = bos; pack["71156"] = bos; pack["71157"] = bos; pack["71158"] = bos; pack["71160"] = bos; pack["71161"] = bos;

bos = { "Butin de Pandarie",
	"* Contre-la-montre : divisez le raid en DEUX groupes égaux, un par salle.",
	"* Coordonnez les petites et les moyennes caisses pour contrôler le flux de sbires.",
	"* N'ouvrez PAS trop de grandes caisses à la fois — vous serez débordés avant les 5 minutes.",
};
pack["73720"] = bos; pack["71512"] = bos;

pack["71454"] = { "Malkorok",
	"* Les soins NE RENDENT PAS de vie : ils génèrent un bouclier d'absorption (vert -> jaune -> rouge).",
	"* Quand il frappe le sol, courez vers les zones d'énergie sombre pour les ABSORBER — une zone vide explose.",
	"* Phase de rage : TOUS ENSEMBLE pour partager les dégâts des piétinements.",
};

bos = { "Les protecteurs déchus",
	"* Trois gardiens qui partagent leur POURCENTAGE — ils doivent mourir presque simultanément.",
	"* À 66% et 33%, chacun active des Mesures désespérées avec des copies spirituelles.",
	"* Équilibrez les dégâts entre les trois ; dissipez les ombres, évitez le poison, sortez des tempêtes de Rook.",
};
pack["71479"] = bos; pack["71475"] = bos; pack["71480"] = bos;

pack["71529"] = { "Thok le Sanguinaire",
	"* Phase 1 : il rugit et interrompt les incantations ; le raid se REGROUPE pour les soins.",
	"* Phase 2 : si plusieurs descendent sous 50%, il SENTA le sang et POURSUIT l'un pour le dévorer — le fixé KITE.",
	"* Les DPS tuent le geôlier pour voler la clé, ouvrir une cellule et recommencer.",
};

pack["71466"] = { "Mastodonte de fer",
	"* Il alterne Mode assaut (mobile) et Mode siège (arrimé).",
	"* Assaut : évitez les flaques de goudron et les scies rotatives.",
	"* Siège : les joueurs PIÉTINENT les mines traqueuses (avec des immunités) avant qu'elles n'explosent.",
};

pack["71504"] = { "Ingé-siège Boîte-Noire",
	"* Une équipe de DPS SAUTE sur le tapis roulant par les tuyaux et détruit les armes (lasers, aimants, missiles).",
	"* Dans la salle : le tank déplace le boss en évitant les scies qui rebondissent contre les murs.",
};

pack["71543"] = { "Immerseus",
	"* Élémentaire d'eau corrompu : il faut alterner dégâts sur le boss et purification de ses larmes.",
	"* Séparation : les slimes NOIRS se détruisent, les BLEUS se soignent à fond pour les purifier.",
	"* Chaque slime sauvé réduit sa vie maximale à sa réapparition.",
};

pack["71515"] = { "Général Nazgrim",
	"* |cff71d5ff|Hspell:143589|h[Bataille]|h|r : normal, priorité au nettoyage des sbires.",
	"* |cff71d5ff|Hspell:143593|h[Défensive]|h|r : NE LE FRAPPEZ PAS ! Chaque coup lui donne de la rage pour sa mortelle Exécution.",
	"* Enragé : il subit plus de dégâts — moment idéal pour les fortes capacités offensives.",
	"* Tuez immédiatement les chamanes et les chasseurs.",
};

pack["71734"] = { "Sha de l’orgueil",
	"* Jauge d'Orgueil individuelle : à 100% vous subissez un contrôle mental ou vous blessez vos alliés.",
	"* Les marqués par Projection courent vers les runes de lumière pour se purifier.",
	"* |cff71d5ff|Hspell:144574|h[Prison d'orgueil]|h|r : DEUX joueurs libres piétinent les boutons pour libérer.",
	"* Le joueur avec le buff de Titan s'approche des autres pour atténuer l'orgueil.",
};

bos = { "Sombres chamans kor’krons",
	"* Les tanks SÉPARENT les deux boss sur toute l'esplanade.",
	"* Le sol est létal : évitez les pluies de cendres, les totems corrompus et les slimes de glaire.",
};
pack["71859"] = bos; pack["71858"] = bos;

bos = { "Galakras",
	"* Au sol : détruisez les vagues ; les tanks priorisent les chamanes et les démolisseurs.",
	"* Une équipe monte dans les TOURS, les nettoie et tire avec les canons pour la faire atterrir.",
	"* Au sol : le raid s'aligne derrière le tank pour partager le debuff de feu.",
};
pack["72311"] = bos; pack["72560"] = bos; pack["72249"] = bos; pack["73910"] = bos; pack["72302"] = bos; pack["72561"] = bos; pack["73909"] = bos;

pack["71865"] = { "Garrosh Hurlenfer",
	"* Phase 1 : les roues d'ingénierie tuent les sbires toutes seules ; priorité aux chamanes.",
	"* Phase 2 : armes profanées + Toucher de Y'Shaarj — les DPS changent IMMÉDIATEMENT pour libérer les dominés.",
	"* Voyages dans le royaume du Sha : déplacez-vous ENSEMBLE et nettoyez vite les sbires.",
	"* Phase 3 : Héroïsme et brûler TOUT avant que les explosions ne balaient le raid.",
};

pack["72276"] = { "Norushen",
	"* Tout le monde commence avec 50% de dégâts EN MOINS à cause de la Corruption.",
	"* Interagissez avec les orbes de lumière pour entrer dans une épreuve individuelle ; une fois réussie, vous récupérez vos dégâts au complet.",
	"* Envoyez d'abord les DPS les plus forts.",
	"* Dans la salle principale : esquivez le laser rotatif et tuez les manifestations.",
};

-- --------------------------------- --
-- Terrace of Endless Spring : Zona 996 --
-- --------------------------------- --

bos = { "Protecteurs de l’Éternel",
	"* Trois gardiens : Kaolan -> Regail -> Asani (ordre de mise à mort recommandé).",
	"* Quand l'un meurt, les deux autres se soignent à 100% et gagnent +25% de dégâts et une capacité nouvelle.",
	"* Éloignez Kaolan du groupe (flaques) ; dissipez les prisons d'eau et purgez les buffs de célérité d'Asani.",
};
pack["60585"] = bos; pack["60586"] = bos; pack["60583"] = bos;

pack["62442"] = { "Tsulong",
	"* Nuit (faire des dégâts) : piétinez brièvement les zones de lumière solaire pour purger les charges d'ombre.",
	"* Jour (soigner le boss) : Tsulong devient amical — les soigneurs le soignent à fond.",
	"* En phase jour, placez-vous devant son souffle de lumière : +500% de régénération de mana et de soins.",
	"* Les DPS défendent le dragon en tuant les incarnations de terreur.",
};

pack["62983"] = { "Lei Shi",
	"* Phase 'Fuyez !' : elle pousse le raid vers les bords — courez vers elle ou avec des buffs de vitesse.",
	"* Phase 'Cache-cache !' : invisible et immunisée — AoE dans toute la salle jusqu'à la toucher et la faire réapparaître.",
	"* À 80/60/40/20% : bulle + Protecteurs — concentrez UN SEUL pour briser le bouclier ; inutile de tous les tuer.",
};

pack["60999"] = { "Sha de la peur",
	"* Tout le raid (sauf le tank) regroupé à l'intérieur du MUR DE LUMIÈRE : il vous immunise contre le mortel Souffle de la peur.",
	"* Périodiquement, il exile un groupe vers les plates-formes extérieures.",
	"* À l'extérieur : évitez les flèches au sol, tuez l'archer corrompu et touchez l'orbe central pour revenir.",
};

-- --------------------------------- --
-- Throne of Thunder : Zona 1098 --
-- --------------------------------- --

pack["69465"] = { "Jin’rokh le Briseur",
	"* Il lance des flaques d'eau fluide : à l'intérieur vous infligez +80% de dégâts et +100% de soins.",
	"* Profitez des flaques pour maximiser les dégâts.",
	"* Quand il canalise une Tempête d'éclairs, SORTEZ de l'eau immédiatement ou vous mourrez électrocutés.",
};

bos = { "Conseil des anciens",
	"* Quatre boss trolls ; Gara'jal possède l'un d'eux en séquence.",
	"* Concentrez les dégâts sur le POSSÉDÉ : infligez-lui 25% de sa vie pour expulser l'esprit avant que sa jauge n'atteigne 100%.",
	"* Évitez les tornades de sable et les totems au sol.",
};
pack["69078"] = bos; pack["69132"] = bos; pack["69134"] = bos; pack["69131"] = bos;

pack["68476"] = { "Horridon",
	"* Quatre portes à thème (Farraki, Gurubashi, Drakkari, Amani) ; le tank le garde de côté.",
	"* Les DPS priorisent les Dinomanciens de chaque porte pour qu'ils lâchent un orbe.",
	"* Un joueur clique sur l'orbe pour guider Horridon contre la porte active.",
	"* Fermez les 4 portes, puis brûlez le boss et le dieu de la guerre Jalak.",
};

pack["67977"] = { "Tortos",
	"* Les DPS à distance tuent les petites tortues qui tombent du plafond.",
	"* Une fois sans vie, un joueur donne un coup de pied dans leur |cff71d5ff|Hspell:134031|h[carapace]|h|r comme un BALLON vers Tortos.",
	"* Ça interrompt son mortel Souffle de pierre furieux.",
	"* Les soigneurs utilisent des boucliers quand Tortos fait son Piétinement assourdissant.",
};

bos = { "Megaera",
	"* Hydre à 3 têtes : Feu (rouge), Givre (bleu), Poison (vert).",
	"* Quand une tête meurt, deux de l'élément opposé réapparaissent.",
	"* Alternez en tuant la Rouge et la Verte pour éviter d'accablantes accumulations de Givre.",
	"* Les marqués par les Cendres courent aux bords ; celui du Torrent de givre kite l'éclair sans posé le pied du feu." ,
};
pack["68065"] = bos; pack["70235"] = bos; pack["70247"] = bos;

pack["69712"] = { "Ji Kun",
	"* Nids sur plusieurs plates-formes : une équipe de DPS et un soigneur sautent avec les courants d'air.",
	"* Tuez les oisillons avant que Ji-Kun ne les nourrisse — sinon ils deviennent des oiseaux géants.",
	"* En tuant les oisillons vous obtenez des plumes qui permettent de voler.",
	"* Sur la plate-forme principale : évitez le mucus vert et courez à contre-vent dans le Courant descendant.",
};

pack["68036"] = { "Durumu l’Oublié",
	"* Le Labyrinthe de rayons : le raid se déplace UNI en suivant le seul chemin blanc sûr entre les rayons désintégrateurs.",
	"* Rester en arrière ou devancer = mort instantanée.",
	"* Phase des Apparitions : trois rayons colorés se fixent sur des joueurs — déplacez-les pour révéler les sbires invisibles.",
};

pack["69017"] = { "Primordius",
	"* Immunisé aux dégâts normaux tant que vous ne subissez pas la MUTATION.",
	"* Tuez les slimes de fluide : elles laissent des flaques violettes (bonnes) ou rouges (mauvaises).",
	"* Piétinez les flaques violettes pour muter et pouvoir infliger des dégâts massifs au boss.",
	"* Empêchez Primordius d'absorber les fluides, sinon il gagne des buffs permanents.",
};

pack["69427"] = { "Sombre animus",
	"* Casse-tête d'énergie (Anima) parmi des dizaines de golems.",
	"* Quand des golems meurent, l'Anima afflue vers les plus grands — si l'un se remplit à 100%, il déchaîne des capacités létales.",
	"* Coordonnez l'ordre de mise à mort pour transférer l'Anima vers des récepteurs contrôlables.",
	"* Ne laissez pas les petits golems se regrouper, sinon ils se buffent entre eux.",
};

bos = { "Qwon de fer",
	"* Trois quilen élémentaires à tour de rôle avant de l'affronter à pied.",
	"* Phase de lance : évitez les lignes élémentaires qui divisent la salle selon le quilen actif.",
	"* Phase de feu : regroupez-vous en sous-groupes pour partager les explosions.",
	"* Phase de tempête : gardez vos distances pour ne pas propager les chocs électriques.",
};
pack["68078"] = bos; pack["68079"] = bos; pack["68080"] = bos; pack["68081"] = bos;

bos = { "Les jumelles empyréennes",
	"* Lu'lin (Lune) et Suen (Soleil) alternent le rôle principal.",
	"* Nuit : Suen disparaît ; détruisez les images stellaires et dissipez le sommeil profond.",
	"* Jour : Suen attaque avec un feu cumulable — le tank la kite près des comètes de glace pour la refroidir.",
};
pack["68905"] = bos; pack["68904"] = bos;

pack["68397"] = { "Lei Shen",
	"* Quatre conduits électriques dans les coins qui renforcent le boss.",
	"* Les tanks le déplacent entre les coins pour monter les conduits de façon ÉQUILIBRÉE.",
	"* À 65% et 30% : invulnérable au centre — divisez le raid en 4 groupes (un par coin).",
	"* Le conduit au plus haut niveau est DÉTRUIT à la fin de la transition, désactivant cette zone.",
};

pack["69473"] = { "Ra Den",
	"* Boss secret : il alterne énergie de Vita (éclair) ou d'Anima (sang).",
	"* Alternez quel orbe vous détruisez à chaque phase.",
	"* S'il absorbe Vita : alignez-vous pour FAIRE REBONDIR l'éclair entre vous, de façon ordonnée.",
	"* À 40% : il déchaîne les deux énergies — pure course de dégâts avant que le dégât d'ambiance ne dépasse les soigneurs.",
};

-- --------------------------------- --
-- Gate of the Setting Sun : Zona 962 --
-- --------------------------------- --

pack["56906"] = { "Saboteur Kip’tilak",
	"* |cff71d5ff|Hspell:107268|h[Sabotage]|h|r pose des bombes sur des joueurs — courez aux BORDS pour les laisser retomber au loin.",
	"* En explosant, elles lancent 4 lignes de feu en CROIX (+) : ne restez pas dans les trajectoires de vos alliés.",
};

pack["56589"] = { "Frappeur Ga’dok",
	"* En décollant il laisse une ligne de |cff71d5ff|Hspell:106933|h[Feu de grappe]|h|r : écartez-vous du centre.",
	"* Pendant qu'il vole apparaissent des Dards rôdeurs : le tank les regroupe et les DPS les éliminent en zone.",
};

pack["56636"] = { "Commandant Ri’mok",
	"* Il génère un |cff71d5ff|Hspell:107122|h[Fluide visqueux]|h|r qui s'étend : si le boss reste dessus, il gagne ÉNORMÉMENT de dégâts.",
	"* Le tank le KITE en permanence le long du bord, en le sortant immédiatement de chaque flaque.",
};

pack["56877"] = { "Raigonn",
	"* Phase 1 : immunisé aux dégâts sur le corps — montez sur sa tête (canons/saut) et détruisez son Point faible.",
	"* Le tank regroupe les sbires protecteurs pendant que les DPS brisent la carapace.",
	"* Phase 2 : il s'enrage, augmente sa vitesse et fixe des joueurs — course aux dégâts avant qu'il ne les atteigne.",
};

-- --------------------------------- --
-- Temple of the Jade Serpent : Zona 960 --
-- --------------------------------- --

pack["56448"] = { "Sage Mari",
	"* Phase 1 (bulle invulnérable) : tuez les vagues d'élémentaires d'eau.",
	"* Chaque élémentaire tué laisse une flaque corruptrice permanente : ne les piétinez JAMAIS.",
	"* Phase 2 : elle canalise un |cff71d5ff|Hspell:106612|h[Hydrolaser]|h|r rotatif — courez dans la MÊME direction que la rotation pour rester derrière.",
};

bos = { "Chroniqueur Pas de Pierre",
	"* Variation 1 (Les Cinq Soleils) : détruisez les soleils de feu ; en mourant ils se transforment en sbires.",
	"* Variation 2 (Querelle et Péril) : deux créatures avec bouclier — arrêtez les attaques vers celle qui a PLUS de charges et changez de cible.",
	"* Si vous frappez celle qui est au maximum de charges, elle déclenchera une explosion létale.",
};
pack["59051"] = bos; pack["59726"] = bos; pack["58826"] = bos;

pack["56732"] = { "Liu Cœur de Flamme",
	"* Phase 1 (Dragon) : évitez les lignes de feu en croix depuis sa position.",
	"* Phase 2 (Serpent) : elle laisse un debuff de soin sur le tank — soigneurs vigilants.",
	"* Phase 3 : elle invoque l'essence de Yu'lon — IGNOREZ Liu (immunisée) et vainquez le dragon céleste en évitant les boules de feu du plafond.",
};

pack["56439"] = { "Sha du doute",
	"* Il applique un |cff71d5ff|Hspell:106113|h[Apparition de doute]|h|r à deux joueurs : le soigneur la DISSIPE rapidement.",
	"* Phase des Répliques : il devient invulnérable et invoque un clone sombre de CHAQUE joueur.",
	"* Regroupez-vous et détruisez tous les clones en AoE avant que le Sha ne se soigne.",
};

-- --------------------------------- --
-- Mogu'shan Palace : Zona 994 --
-- --------------------------------- --

bos = { "L’épreuve du roi",
	"* Trois champions mogu en combat séquentiel.",
	"* Kuai : le quilen Mu'Shiba mord et immobilise — tuez-le EN PREMIER.",
	"* Ming : des tornades qui aspirent — courez dans la direction OPPOSÉE ; interrompez ses incantations d'éclairs.",
	"* Haiyan : |cff71d5ff|Hspell:123655|h[Météore assommant]|h|r — le raid se REGROUPE sur le marqué pour partager l'impact.",
};
pack["61442"] = bos; pack["61444"] = bos; pack["61445"] = bos;

bos = { "Gekkan",
	"* Cinq boss : Gekkan + 4 suivants, chacun lui accorde un passif tant qu'il vit.",
	"* Ordre de mise à mort : Hexer (soigneur) -> Ironhide (protecteur) -> les autres suivants -> Gekkan.",
	"* Chaque fois qu'un suivant meurt, Gekkan s'enrage de +25% — le tank utilise de fortes défensives.",
};
pack["61243"] = bos; pack["61337"] = bos; pack["61338"] = bos; pack["61339"] = bos; pack["61340"] = bos;

pack["61398"] = { "Xin le Maître d’armes",
	"* Il active des pièges mécaniques dans toute la salle à mesure qu'il perd de la vie.",
	"* Arbalètes : des rangées d'épées traversent la salle — restez dans les espaces vides.",
	"* Flammes : cercles concentriques de feu — éloignez-vous des zones rouges avant qu'elles n'explosent.",
	"* À la fin : le Rugissement incitateur active TOUTES les trappes — utilisez de la vitesse et brûlez-le en ignorant le reste.",
};

-- --------------------------------- --
-- Siege of Niuzao Temple : Zona 1011 --
-- --------------------------------- --

pack["61567"] = { "Vizir Jin’bak",
	"* La flaque centrale de sève grossit constamment.",
	"* Piétinez brièvement la flaque pour en réduire la taille — sans accumuler plus de 3-4 charges du debuff.",
	"* Éliminez vite les slimes qui tentent d'atteindre la flaque pour l'agrandir.",
};

pack["61634"] = { "Commandant Vo’jak",
	"* Un joueur lance des barils de goudron sur les vagues de mantides pour les ralentir.",
	"* Quand Vo'jak monte sur le pont, purgez ses charges d'armure accumulées.",
};

pack["61485"] = { "Général Pa’valak",
	"* À 65% et 35%, il s'enferme dans un bouclier invulnérable et appelle des sbires.",
	"* Ramassez les bombes à mèche qui tombent et renvoyez-les sur le bouclier pour le briser vite.",
};

pack["62205"] = { "Chef d’escadre Ner’onok",
	"* Il vole entre les extrémités du rempart et canalise |cff71d5ff|Hspell:121443|h[Vents de bourrasque]|h|r qui repousse vers l'arrière.",
	"* Avancez en VOUS ABRITANT derrière les parapets et les murs pour ne pas tomber dans le vide.",
	"* Évitez les bombes de mucus vert.",
	"* Une fois arrivés : interrompez son incantation et brûlez-le.",
};

-- --------------------------------- --
-- Scarlet Monastery (MoP) : Zona 1004 --
-- --------------------------------- --

pack["59789"] = { "Thalnos le Déchiqueteur d’âmes",
	"* |cff71d5ff|Hspell:115297|h[Expulser l'âme]|h|r invoque les esprits des Déchus écarlates : interrompez-le ou tuez-les vite.",
	"* Évitez les zones d'ombre au sol.",
};

pack["59223"] = { "Frère Korloff",
	"* Évitez son |cff71d5ff|Hspell:113764|h[Coup de pied de la grue]|h|r en vous déplaçant vers l'arrière.",
	"* Sa |cff71d5ff|Hspell:114460|h[Tempête de feu]|h|r génère des lignes de feu : éloignez-vous de son frontal.",
};

pack["60040"] = { "Grande inquisitrice Blanchetête et Commandant Durand",
	"* Vous affrontez d'abord Durand ; une fois vaincu, Whitemane apparaît.",
	"* Quand elle aura peu de vie, elle RESSUSCITERA Durand à 100% avec sa |cff71d5ff|Hspell:113134|h[Résurrection massive]|h|r.",
	"* Priorité : interrompez les soins et le contrôle mental de Whitemane.",
	"* Le tank garde Durand à l'écart pendant que le raid élimine d'abord Whitemane.",
};

-- Hallow's End : boss festif du rework 10.1.7 (ENC 2725, par file d'attente vers le cimetière écarlate). CID 207438 avec le kit LittleWigs ; phases de tête et malédictions d'après la fiche du propriétaire.
pack["207438"] = { "Le Cavalier sans tête",
	"* Avant de l'appeler : à gauche de la salle attendent cinq statues de bonhommes d'osier (quatre petites et la grande). Parler à la GRANDE accepte les quatre malédictions d'un coup et ouvre le Mode Difficile, avec son succès exclusif et un butin rare amélioré (les Rênes du Cavalier sans tête tombent surtout à la première bourse du jour). Chaque malédiction ne mord que celui qui l'a acceptée.",
	"* Les quatre : |cff71d5ff|Hspell:415629|h[Malédiction des braises]|h|r ouvre des cercles de feu sous vos pieds — bougez sans arrêt. |cff71d5ff|Hspell:415575|h[Tête brûlante maudite]|h|r assombrit l'écran d'hallucinations — restez calme et continuez de frapper. |cff71d5ff|Hspell:415536|h[Malédiction des ombres]|h|r lâche des âmes enchaînées qui vous traquent et vous terrifient — abattez-les avant qu'elles vous rejoignent. |cff71d5ff|Hspell:415611|h[Surprise épineuse]|h|r fait jaillir des épines du sol — esquivez à vue.",
	"* Échouer sur ces mécaniques empile |cff71d5ff|Hspell:415864|h[Ombre de l'homme d'osier]|h|r : -10 % de santé max par marque ; à la 10e vous perdez les malédictions via |cff71d5ff|Hspell:418228|h[Protection de l'homme d'osier]|h|r — et avec elles le bonus de butin de la tentative.",
	"* Le combat respire en trois tours identiques : corps à 1 % → insensible, et la TÊTE s'envole (le corps se regonffe tranquillement) → focus maximal sur la Tête avant qu'elle ne regagne le corps. Au troisième tour la tête ne revient plus : abattez-la et c'est fini.",
	"* La Tête dehors, des Têtes flamboyantes explosent près d'elle : ne vous empilez pas dessous.",
	"* Au dernier tour du corps arrivent des Citrouilles palpitantes : le tank les agrippe aussitôt et le groupe les nettoie en AoE pendant qu'il continue sur le boss.",
	"* |cff71d5ff|Hspell:42380|h[Conflagration]|h|r met le feu à un joueur au hasard 4 s et le fait courir affolé : les alliés s'écartent de lui tant que ça brûle.",
	"* Le tank le garde dos au groupe : son cône frontal de feu punit tout ce qui traîne devant — sous son museau, personne sauf le tank.",
	"* |cff71d5ff|Hspell:414844|h[Souffle de citrouille]|h|r sort de son frontal : hors du cône, sauf le tank.",
	"* |cff71d5ff|Hspell:415047|h[Marche des lianes]|h|r avance sur le sol de la salle : écartez-vous des lignes.",
	"* |cff71d5ff|Hspell:415262|h[Ricanement insidieux]|h|r pousse en zone : dispersez-vous de l'impact.",
	"* |cff71d5ff|Hspell:423626|h[Tête brûlante]|h|r marque un joueur avec l'aura de brûlure : cette personne continue de bouger et emporte le feu loin du groupe."
};

-- --------------------------------- --
-- Scarlet Halls : Zona 1001 --
-- --------------------------------- --

pack["59303"] = { "Maître-chien Braun",
	"* Au début de la zone, ramassez un seau de viande et lancez-le aux chiens pour qu'ils s'attaquent entre eux.",
	"* Pendant le boss : des vagues de chiens — les DPS les éliminent en zone.",
	"* Le tank le tourne pour éviter son attaque frontale en arc.",
};

pack["58632"] = { "Maître d’armes Harlan",
	"* Quand il active |cff71d5ff|Hspell:111216|h[Tempête de lames]|h|r, il parcourt la salle en poursuivant des joueurs.",
	"* Courez aux BORDS et placez-vous derrière les colonnes de pierre pour bloquer la ligne de vue.",
};

pack["59150"] = { "Tisseur de flammes Koegler",
	"* Piétinez les flaques de feu des livres en flammes pour les éteindre avant qu'elles ne brûlent toute la bibliothèque.",
	"* Interrompez IMPÉRATIVEMENT son |cff71d5ff|Hspell:113690|h[Souffle de dragon]|h|r : il désoriente et inflige des dégâts immenses.",
};

-- --------------------------------- --
-- Scholomance : Zona 1007 --
-- --------------------------------- --

bos = { "Instructrice Froidecœur",
	"* Phase 1 : évitez le livre de glace qui tourne dans la salle et le mur de givre.",
	"* Phase 2 : son âme entre dans son phylactère — brûlez-le en évitant les âmes maudites qui explosent.",
};
pack["58633"] = bos; pack["58664"] = bos;

pack["59184"] = { "Jandice Barov",
	"* Elle disparaît et crée des dizaines de clones identiques dans toute la salle.",
	"* Cherchez et n'interagissez qu'avec le clone qui a le VRAI visage de Jandice (les faux ont des visages fantomatiques).",
};

pack["59153"] = { "Cliquettripes",
	"* Il gagne des charges de dégâts chaque fois qu'il frappe le tank.",
	"* Interagissez avec les piles d'os bleus de la salle pour obtenir un bouclier osseux qui le contrarie.",
};

pack["58722"] = { "Lilian Voss",
	"* Elle alterne entre son corps physique et son âme brûlante d'ombres.",
	"* Le fixé par son âme KITE loin du groupe pour ne pas propager le feu violet.",
};

pack["59080"] = { "Sombre Maître Gandling",
	"* Il téléporte des joueurs vers des salles de test individuelles remplies de zombies.",
	"* Le téléporté tue vite les sbires de sa salle (ou les dissipe si vous êtes soigneur) pour ouvrir la porte.",
};

-- --------------------------------- --
-- Shado-Pan Monastery : Zona 959 --
-- --------------------------------- --

pack["56747"] = { "Gu Foudre des Nuages",
	"* Quand le dragon charge son énergie (Phase de tempête) : CESSEZ d'attaquer Gu et ciblez le DRAGON.",
	"* Si vous frappez Gu avec le bouclier électrique actif, vous déclencherez des explosions qui tuent vos alliés.",
};

pack["56541"] = { "Maître Banc de Neige",
	"* S'il active sa posture défensive, NE FRAPPEZ PAS de face.",
	"* Évitez ses coups de pied tournants en sortant de son cercle.",
	"* Détruisez vite les copies de fumée qu'il invoque dans les coins du dojo.",
};

pack["56719"] = { "Sha de la violence",
	"* Interrompez son incantation de |cff71d5ff|Hspell:106872|h[Pointes de haine]|h|r.",
	"* Quand il lance Frappe de fumée, il devient immunisé aux coups critiques : sortez des nuages gris pour retrouver vos dégâts.",
};

pack["56884"] = { "Taran Zhu",
	"* Recevoir des dégâts remplit votre jauge de HAINE, qui réduit votre précision et vos dégâts.",
	"* Utilisez le bouton spécial MÉDITER pour vider la jauge — il vous rend immobile quelques secondes, choisissez un moment sûr.",
	"* Interrompez |cff71d5ff|Hspell:107356|h[Haine croissante]|h|r sinon il inflige beaucoup de dégâts.",
};

-- --------------------------------- --
-- Stormstout Brewery : Zona 961 --
-- --------------------------------- --

pack["56637"] = { "Ouk-Ouk",
	"* Il lance des barils roulants qui traversent la salle — évitez-les.",
	"* MIEUX : cliquez sur un baril pour MONTER dessus et le guider contre le boss.",
	"* Écraser un baril contre Ouk-Ouk lui inflige de gros dégâts et augmente ceux qu'il reçoit.",
};

pack["56717"] = { "Sautallus",
	"* Il canalise une |cff71d5ff|Hspell:112992|h[Fureur tournoyante]|h|r qui déchiquète les mélés — éloignez-vous.",
	"* Pendant les vagues de lapins : ramassez les marteaux dorés au sol pour activer un bouton spécial qui nettoie les nuisibles en zone.",
};

pack["59479"] = { "Yan Zhu le Déballonné",
	"* S'il vous marque avec le rayon de |cff71d5ff|Hspell:106546|h[Bulles]|h|r : SAUTEZ sans arrêt pour les éclater avant qu'elles ne vous asphyxient.",
	"* Évitez les murs de levure et les élémentaires pétillants qui tentent de soigner le boss.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["62346"] = { "Galion",
	"* Mushan gigantesque avec canon : il tire des salves d'artillerie sur des zones aléatoires.",
	"* Le raid très DISPERSÉ et en mouvement rapide pour sortir des cercles de feu avant l'impact.",
	"* Des hogunins armés sautent de son dos : le tank secondaire les regroupe immédiatement et les DPS les éliminent en zone.",
	"* Il lâche la monture Mushan de guerre de Salyis.",
};

pack["60491"] = { "Sha de la Colère",
	"* Kun-Lai : |cff71d5ff|Hspell:119622|h[Cri de fureur]|h|r infecte plusieurs joueurs avec un contrôle mental.",
	"* Les DPS utilisent le contrôle de masse (étourdissements, racines) sur les alliés dominés pour qu'ils ne tuent pas le raid.",
	"* Nuages de Colère au sol : ne les piétinez PAS — il réduit au silence quiconque s'y trouve.",
	"* Il lâche la monture Dragon nimbe de cobalt céleste.",
};

pack["69099"] = { "Nalak",
	"* Île du Tonnerre : |cff71d5ff|Hspell:136339|h[Chaîne d'éclairs]|h|r relie des joueurs par un rayon.",
	"* Les liés courent dans la direction OPPOSÉE au boss pour rompre le lien — près de Nalak, l'éclair est létal.",
	"* Quand il augmente ses dégâts d'ambiance sous les orages : les soigneurs sortent leurs plus forts CDs de soin de zone.",
	"* Il lâche le Dragon nimbe de cobalt tonnant.",
};

pack["69161"] = { "Oondasta",
	"* Île des Géants : le 'faucheur de raid' à cause de ses dégâts absurdes.",
	"* |cff71d5ff|Hspell:137504|h[Écraser]|h|r réduit l'armure du tank de 99% : OBLIGATOIRE deux tanks qui se relaient.",
	"* Faisceau Alfa : un rayon qui saute vers l'allié le plus proche en DOUBLANT les dégâts à chaque rebond — dispersez-vous complètement, minimum 10 mètres entre joueurs.",
	"* |cff71d5ff|Hspell:137457|h[Rugissement perforant]|h|r réduit le raid au silence.",
	"* Il lâche le Cobalt primordial.",
};

pack["71952"] = { "Chi Ji",
	"* Céleste (île du Temps, la Grue) : rafales de feu et grues de lumière qui traversent l'arène.",
	"* Évitez la trajectoire des oiseaux.",
	"* Éloignez-vous du boss quand il utilise son chant de zone.",
};

pack["71954"] = { "Niuzao",
	"* Céleste (île du Temps, le Bœuf) : une épreuve d'endurance.",
	"* Il charge des joueurs en infligeant des dégâts MASSIFS qui diminuent d'autant plus que le total de vie de la cible est élevé.",
	"* Le tank l'oriente loin du raid et utilise de fortes mitigations pendant ses piétinements telluriques.",
};

pack["72057"] = { "Ordos",
	"* Dieu du feu yaungol (île du Temps, sanctuaire de la partie haute).",
	"* |cff71d5ff|Hspell:144688|h[Magma ancien]|h|r : des météorites de millions de dégâts — le raid au COMPLET se regroupe en un point pour partager l'impact.",
	"* |cff71d5ff|Hspell:144695|h[Âme de feu]|h|r : le marqué court IMMÉDIATEMENT loin du raid pour exploser seul.",
};

pack["71953"] = { "Xuen",
	"* Céleste (île du Temps, le Tigre) : extrêmement agile.",
	"* Il saute sans cesse sur les joueurs à distance en laissant des lignes d'énergie.",
	"* Le raid se disperse ; les tanks le déplacent quand l'arène se remplit de fissures électriques.",
};

pack["71955"] = { "Yu’lon",
	"* Céleste (île du Temps, le Serpent) : positionnement classique de dragon.",
	"* Ne vous placez JAMAIS devant sa tête (souffle de feu) ni derrière (coups de queue).",
	"* Les DPS bougent en permanence pour ne pas se brûler sur les flaques de lave.",
};

bos = { "Éclaireurs et porte-guerres zandalar",
	"* Boss du monde (plusieurs zones) : |cff71d5ff|Hspell:138042|h[Averse de météores]|h|r — des rochers tombent du ciel, déplacez-vous.",
	"* |cff71d5ff|Hspell:138040|h[Visage horrifique]|h|r : peur de zone.",
};
pack["69768"] = bos; pack["69769"] = bos; pack["69841"] = bos; pack["69842"] = bos;

P.fr = fr;