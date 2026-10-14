--[[
	Bosses_Vanilla_fr.lua
		Données en français du pack Vanilla (Classic) (données
		seulement ; l'enregistrement est fait par Bosses_Vanilla.lua,
		chargé après ce fichier dans le .toc).
		Sources : DBM-Party-Vanilla et LittleWigs_Classic de _doc + les
		noms du journal (_nombres/jefes-Bosses_Vanilla.json).
		Rempli par lots (2026) : commence par la Gouffre de Ragefeu classique.
		Attention : ce fichier n'est pas encore listé dans le .toc ; le core
		le charge quand le pack FR du Vanilla est complet.
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- réutilisée pour les entrées partagées (plusieurs NPC ID, même table)

-- Format d'entrée (une par boss, NPC ID décimal du champ 6 du GUID) :
-- pack["NPC_ID"] = { "Nom du boss", "* conseil 1", "* conseil 2" };

-- ============================= --
-- Ragefire Chasm : Zone 389 (classique) --
-- ============================= --

pack["11520"] = { "Taragaman l'Affameur",
	"* Sa |cff71d5ff|Hspell:11970|h[Nova de feu]|h|r frappe tout ce qui l'entoure : les mêlées s'écartent avant qu'elle parte ; à distance et soigneurs restent au maximum de portée.",
	"* Son |cff71d5ff|Hspell:18072|h[Crochet]|h|r projette le tank en l'air : on le place loin des bords de lave pour qu'aucun propulseur ne finisse dans la pierre fondue."
};
pack["11518"] = { "Jergosh l'Invocateur",
	"* Il vient accompagné de deux sbires : contrôle de foule sur l'un, dégâts concentrés sur l'autre et, une fois les deux au sol, tank et dégâts directement sur le boss (tank and spank).",
	"* Son |cff71d5ff|Hspell:20800|h[Immolation]|h|r brûle fort (elle se purge en priorité) et son |cff71d5ff|Hspell:18267|h[Maléfice de faiblesse]|h|r baisse dégâts et force : il se dissipe avec la magie."
};
pack["11519"] = { "Bazzalan",
	"* Il est en haut de la rampe finale flanqué de deux adeptes : on peut tirer un seul sbire avec un pull individuel avant d'ouvrir sur le boss.",
	"* Contrôle de foule sur le sbire restant et les dégâts vont droit sur le boss ; surveillez son |cff71d5ff|Hspell:744|h[Poison mortel]|h|r sur le tank : il ne cède pas seul, il faut le dissiper (druide) ou l'antidoter."
};
pack["11517"] = { "Lorgnesilex",
	"* Attaque de zone frontale (charge/enfourchement) : le tank lui tourne le dos au groupe pour que ce dégât frontal n'atteigne ni mêlées ni soigneur.",
	"* Éliminez d'abord les sbires qui l'accompagnent."
};

-- ============================================================= --
-- Ragefire Chasm : Zone 389 (refait par le retail depuis Mists; les quatre classiques sont les CID 11517-11520) --
-- ============================================================= --
-- Tactiques fournies par le propriétaire (recherche Wowhead relayée par chat) --
pack["61408"] = { "Adarogg",
	"* Il fixe un joueur et charge sa position (Charge infernale) : tout ce qui traverse son sillage ou se tient près de l'impact prend des dégâts ; la cible court hors de l'axe et le groupe ne le traverse pas.",
	"* Son Souffle de flammes embrase une cible au hasard : les soigneurs veillent."
};
pack["61412"] = { "Sombre chaman Koranthal",
	"* Ses Traits d'Éléments tordus (dégâts d'ombre) sont interrompus à mesure : chaque incantation coupée est autant de dégâts évités.",
	"* Sa Tempête d'ombre fait pleuvoir de la magie tordue sur la zone : répartis et soigneurs prêts."
};
pack["61463"] = { "Crassegueule",
	"* Combat d'introduction tranquille : il crache de la lave sur l'emplacement d'un joueur au hasard et frappe dedans (3 m) ; on s'écarte du crachat.",
	"* Après exactement cinq crachats il s'ensevelit et réapparaît sur un autre bout de la plateforme : on réajuste quand il ressort.",
	"* Sa hitbox est énorme : le corps à corps le tape à l'aise depuis la plateforme sans se pencher sur le précipice de lave."
};
pack["61528"] = { "Garde de lave Gordoth",
	"* Son Coup sismique et sa Fracture au sol tabassent la zone proche (dégâts physiques et repousses) : tank et corps à corps veillent à ne pas être projetés au bord et ne s'entassent pas.",
	"* À 30% de vie il passe en rage (+30% de vitesse d'attaque et +10% de dégâts) : course finale aux dégâts, soigneurs prêts."
};

-- ============================================================= --
-- Wailing Caverns : Zone 43 (classique) --
-- ============================================================= --
-- Les quatre druides de la zone (les Seigneurs des Crocs) partagent le
-- même schéma : un sommeil et un soin interrompables ; seul Cobrahn
-- ajoute un poison dissipable. Mutanus et son chant sont le vrai combat.

pack["3671"] = { "Dame Anacondra",
	"* Elle se transforme en druide : interrompez son |cff71d5ff|Hspell:8040|h[Sommeil de druide]|h|r (endort un joueur) et son |cff71d5ff|Hspell:23381|h[Toucher de guérison]|h|r, sinon le combat s'éternise."
};
pack["3669"] = { "Seigneur Cobrahn",
	"* Comme Anacondra : coupez le |cff71d5ff|Hspell:8040|h[Sommeil de druide]|h|r et le |cff71d5ff|Hspell:23381|h[Toucher de guérison]|h|r.",
	"* Son |cff71d5ff|Hspell:17330|h[Poison]|h|r part aussitôt avec les anti-poisons."
};
pack["3670"] = { "Seigneur Pythas",
	"* Comme Anacondra : coupez le |cff71d5ff|Hspell:8040|h[Sommeil de druide]|h|r et le |cff71d5ff|Hspell:23381|h[Toucher de guérison]|h|r."
};
pack["3673"] = { "Seigneur Serpentis",
	"* Comme Anacondra : coupez le |cff71d5ff|Hspell:8040|h[Sommeil de druide]|h|r et le |cff71d5ff|Hspell:23381|h[Toucher de guérison]|h|r."
};
pack["3653"] = { "Kresh",
	"* Combat physique simple : rien à interrompre ni à dissiper, tank solide et burst."
};
pack["3674"] = { "Skum",
	"* Il alterne un |cff71d5ff|Hspell:6254|h[Trait enchaîné]|h|r qui saute de cible en cible : ne groupez pas le raid et le tuez vite."
};
pack["5775"] = { "Verdan l’Immortel",
	"* Interrompez ses |cff71d5ff|Hspell:8142|h[Lianes]|h|r : c'est le seul détail du combat, le reste est du corps à corps."
};
pack["3654"] = { "Mutanus le Dévoreur",
	"* Le |cff71d5ff|Hspell:7967|h[Cauchemar de Naralex]|h|r est le coeur du combat : interrompez le chant à chaque départ.",
	"* Son |cff71d5ff|Hspell:7399|h[Épouvante]|h|r (panique) est de type Magie : les soigneurs dissipent les touchés, et son |cff71d5ff|Hspell:8150|h[Craquement du tonnerre]|h|r tape de zone — soigneurs prêts."
};
pack["5912"] = { "Dragon féérique déviant",
	"* Boss optionnel et semi-caché : nul besoin de le tuer pour finir le donjon.",
	"* Son |cff71d5ff|Hspell:8040|h[Sommeil de druide]|h|r endort un joueur (dissipable en Magie) : si personne ne coupe le cast, un soigneur le dissipe."
};

-- ============================================================= --
-- The Stockade : Zone 34 (classique) --
-- ============================================================= --
-- Les six classiques sont des combats de corps à corps sans capacités
-- signalées par DBM ; seul Bazil Thredd ajoute des prisonniers.

pack["1696"] = { "Targorr le Terrifiant",
	"* Combat de corps à corps simple : rien à interrompre ni à dissiper, tank collé et burst."
};
pack["1663"] = { "Dextren Tutor",
	"* Compétence de Peur (Fear): Dextren peut lancer de la peur sur le groupe, il est donc recommandé de bien nettoyer la salle et les ennemis proches avant de commencer le combat.",
	"* Fuite: Quand on lui baisse la vie, il tentera de fuir, donc il vaut mieux le contrôler pour qu'il n'attire pas plus d'ennemis."
};
pack["1666"] = { "Kam Deepfury",
	"* Combat de corps à corps simple : rien à interrompre ni à dissiper."
};
pack["1717"] = { "Hamhock",
	"* Combat de corps à corps simple qui tape fort : rien à interrompre ni à dissiper."
};
pack["1720"] = { "Bruegal Ironknuckle",
	"* Combat de corps à corps simple : rien à interrompre ni à dissiper."
};
pack["1716"] = { "Bazil Thredd",
	"* Le combat final va dans la cour et ses prisonniers se joignent à la bagarre dès le départ : tuez les adds d'abord, le boss ensuite."
};

-- The Stockade : Zone 34 (refait par le retail moderne; les classiques gardent leurs CID 1663-1720 d'habitude) --
pack["46254"] = { "Lardeur",
	"* Le vilain légendaire de la Forêt d'Elwynn, à la tête de la mutinerie : interrompez son |cff71d5ff|Hspell:86620|h[Appel de folie]|h|r.",
	"* Le reste est du corps à corps : DBM ne signale aucune autre mécanique."
};
pack["46264"] = { "Seigneur Surchauffe",
	"* Une Boule de feu directe sur le tank (dégâts de Feu) : rythme normal de tank et soigneurs.",
	"* Sa Pluie de feu laisse un point à bouillir pendant 9 secondes : quiconque reste à 5 mètres ou moins cuit - sortez de la mare dès qu'elle tombe.",
	"* Sa Surchauffe brûle un joueur au hasard : coup de Feu immédiat puis une brûlure qui tape toutes les 3 secondes pendant 9 (d'autant plus forte qu'il a de puissance) : c'est de la Magie, dissipez-le à temps."
};
pack["46383"] = { "Randolph Moloch",
	"* Le boss final du remake, à la tête des forçats révoltés au bout du tunnel principal.",
	"* Poignardages effrénés : une frénésie de coups à vitesse extrême (un coup toutes les 0,3 seconde) alors que sa précision baisse de 35% pendant toute la durée : le tank encaisse l'avalanche.",
	"* Son Balayage est un cleave frontal qui touche le tank et l'allié le plus proche : personne ne se plante devant lui et personne ne se colle au tank.",
	"* Disparition : en franchissant 70-60% puis 40-30% de vie il s'évapore et réapparaît juste derrière un joueur au hasard : le tank reprend l'aggro au plus vite."
};

-- ============================================================= --
-- Blackfathom Deeps : Zone 48 --
-- ============================================================= --
-- Le combat change selon l'ère : les CIDs classiques (4829-4887, 6243) sont
-- du client Era ; les 20xxxx la refonte SoD (tactiques du propriétaire) et
-- les 74xxx/75xxx celle du journal actuel, qui a en plus remanié le passage
-- des boss (Bathiel, Bourreau Gore, Thruk... tactiques en attente).

-- (Refonte SoD : la version du client Era est plus simple)
pack["202699"] = { "Baron Aquanis",
	"* La bande se répartit sur la plateforme pour que ses tempêtes électriques n'enchaînent pas les dégâts ; les mêlées et le tank restent collés à lui.",
	"* Avec sa |cff71d5ff|Hspell:404806|h[Charge des profondeurs]|h|r il plante une charge mortelle sur un joueur : le désigné se jette à l'eau aussitôt pour que l'explosion ne blesse ni ne pousse la bande.",
	"* Attention à la chute dans l'eau : des tornades poussent vers le bas ; les mêlées remontent avec les orbes de vitesse ou à sauts, et les casters peuvent rester en bas attaquer sans souci."
};
-- (Refonte SoD / journal actuel ; le classique est la CID 4887)
bos = { "Ghamoo-Ra",
	"* Il démarre derrière une carapace qui réduit drastiquement tous les dégâts subis : chaque coup et sort l'ébrèche, il faut donc matraquer en dégâts constants jusqu'à l'exploser.",
	"* À la rupture de la carapace il explose avec des dégâts sur toute la bande (les soigneurs l'atténuent) et finit exposé : c'est le moment de claquer tous les cooldowns de dégâts.",
	"* Ses |cff71d5ff|Hspell:407077|h[Triple mâchonnement]|h|r s'abattent sur le tank : soigneurs attentifs à sa vie."
};
pack["201722"] = bos;
pack["74446"] = bos;
-- (Version du client Era ; la refonte SoD, CIDs 201722/74446, ajoute la carapace)
pack["4887"] = { "Ghamoo-Ra",
	"* Combat direct de tank et dégâts : son |cff71d5ff|Hspell:5568|h[Piétinement]|h|r secoue tout ce qui est proche ; les mêlées restent collées et les autres se répartissent."
};
bos = { "Dame Sarevess",
	"* Elle est escortée de gardes d'élite : contrôle de foule sur les sbires (métamorphose, pièges) et les dégâts se concentrent sur elle.",
	"* Sa |cff71d5ff|Hspell:407546|h[Flèche de gel]|h|r engourdit celui qui la prend (le soigneur le libère en dissipant) et, quand elle pointe son |cff71d5ff|Hspell:407653|h[Éclair fourchu]|h|r sur quelqu'un, le désigné s'écarte du groupe.",
	"* Si elle pose la |cff71d5ff|Hspell:407791|h[Rage d'Aku'mai]|h|r sur un joueur, on la dissipe dès que le soigneur la voit ; ses zones de dégâts au sol s'esquivent."
};
pack["4831"] = bos;
pack["204068"] = bos;
-- (Version du client Era ; la refonte SoD, CID 204921, ajoute des phases)
pack["6243"] = { "Gelihast",
	"* Combat direct : sa principale nuisance est son |cff71d5ff|Hspell:6533|h[Filet]|h|r qui retire quelqu'un du combat quelques secondes (on le casse ou le dissipe) ; sinon tank et dégâts."
};
-- (Refonte SoD ; la version du client Era, CID 6243, n'a pas de phases)
bos = { "Gelihast",
	"* Le combat alterne dégâts et transitions : chaque fois qu'il perd près de 30% de sa vie il devient immunisé au centre de la salle.",
	"* Pendant la transition apparaissent des tentacules d'ombre et des projections qui traversent la salle : on les esquive ou on détruit les tentacules jusqu'à ce qu'il redevienne vulnérable.",
	"* Son |cff71d5ff|Hspell:411956|h[Malédiction des profondeurs]|h|r se dissipe en malédictions et sa |cff71d5ff|Hspell:412456|h[Marche des murlocs]|h|r fait arriver des vagues sur les côtés : on les nettoie vite."
};
pack["204921"] = bos;
-- (Refonte SoD ; le classique n'apparaît pas dans le journal)
pack["207356"] = { "Lorgus Jett",
	"* La priorité absolue sont ses totems : peu de vie et des effets brutaux ; on les détruit à l'instant (le |cff71d5ff|Hspell:419636|h[Totem de fureur du magma]|h|r tape en zone et le |cff71d5ff|Hspell:414691|h[Totem Furie-des-vents]|h|r accélère les siens).",
	"* S'il lance un soin, tank ou mêlée l'interrompt dès que possible.",
	"* Il applique au tank un affaiblissement qui augmente les dégâts subis : cela exige une rotation de tanks pendant le combat."
};
-- (Version du client Era ; la refonte SoD, CID 209678, a le Monde des ombres)
pack["4832"] = { "Seigneur du crépuscule Kelris",
	"* Sur le client Era c'est un combat simple : on dissipe le |cff71d5ff|Hspell:8399|h[Sommeil]|h|r qu'il pose sur un joueur au hasard et on continue tank et dégâts."
};
-- (Refonte SoD ; la version du client Era, CID 4832, est plus simple)
bos = { "Seigneur du crépuscule Kelris",
	"* Phase 1 (de 100% à 35%) : il envoie deux joueurs au Monde des ombres ; là-bas ils purgent vite les prêtres fantômes pour ouvrir les portails et remonter ; en surface on interrompt TOUJOURS sa chaîne d'éclairs.",
	"* Phase 2 (au-dessous de 35%) : il entre en rage et n'envoie plus personne en bas ; course aux dégâts avec une Potion de protection contre l'Ombre bue avant ou pendant la phase : les dégâts d'ombre continus pulvérisent la bande.",
	"* Son |cff71d5ff|Hspell:423135|h[Sommeil]|h|r continue d'engourdir quelqu'un au hasard : on le dissipe."
};
pack["209678"] = bos;
-- (Version du client Era ; la refonte, CIDs 213334/75408, passe à deux phases)
pack["4829"] = { "Aku'mai",
	"* Combat direct avec poison : son |cff71d5ff|Hspell:3815|h[Nuage de poison]|h|r reste là où elle se tient ; le tank l'éloigne du groupe et personne ne marche dedans.",
	"* En mourant elle entre en |cff71d5ff|Hspell:3490|h[Rage frénétique]|h|r et frappe plus vite : les soigneurs montent en rythme."
};
-- (Refonte SoD / journal actuel ; le classique est la CID 4829)
bos = { "Aku'mai",
	"* Phase 1 (forme hydre) : le tank principal cumule son affaiblissement de poison ; le second tank la provoque au troisième ou quatrième cumul pour que le premier se purge en touchant les sources élémentaires de la salle (elles font sortir un sbire qu'on élimine aussitôt).",
	"* On esquive quand elle lance son |cff71d5ff|Hspell:429168|h[Explosion corrosive]|h|r : le désigné s'écarte du cône.",
	"* Phase 2 (forme du Vide, au-dessous de 50%) : les dégâts physiques montent et elle envoie des éclats sombres (le |cff71d5ff|Hspell:429359|h[Explosion du Vide]|h|r s'esquive de même) ; les tanks continuent de tourner avec plus de marge et la bande brûle tous ses cooldowns pour finir."
};
pack["213334"] = bos;
pack["75408"] = bos;
pack["4830"] = { "Vieux Serra'kis",
	"* Combat en mêlée simple dans l'eau basse du puits de la salle : le tank le retient, les mêlées surveillent ses poisons et le groupe répartit les dégâts normalement."
};

-- ============================================================= --
-- Razorfen Downs : Zone 129 --
-- ============================================================= --
-- Mordresh garde le cimetière : son combat (info du propriétaire) vaut
-- pareil pour le client Era (7357) et le remaster SoD (74347).
bos = { "Mordresh Oeil-de-Feu",
	"* Il se bat sur un monticule d'os au milieu d'un essaim de squelettes non élites : le tank ouvre en cible de masse pour tous les prendre, les regroupe et on purge l'essaim d'abord ; pas de précipitation pour taper le boss.",
	"* Quand il lance sa boule de feu, tank ou mêlée l'interrompt : chaque incantation évitée, c'est moins de dégâts reçus.",
	"* Le soigneur attend quelques secondes que le tank assure l'aggro de l'essaim avant de soigner à fond : un soin trop tôt peut attirer les squelettes et faire wipe le pull.",
	"* Sa Vague de flammes (|cff71d5ff|Hspell:12470|h[Vague de flammes]|h|r) balaie la mêlée à ses pieds : sortir du rayon."
};
pack["7357"] = bos;
pack["74347"] = bos;

-- Razorfen Downs : Zona 129 (ère classique) --
-- Les cinq CIDs classiques restantes ; kits du DBM Classic\RazorfenDowns et
-- noms du corpus (source dbm de l'ère). Mordresh 7357 est en haut, partagé.
pack["7355"] = { "Tuten'kash", -- (era clásica)
	"* L'araignée de la crypte : sa Malédiction de Tut (|cff71d5ff|Hspell:12255|h[Malédiction de Tut]|h|r) marque un joueur (maléfice, à retirer) et son Jet de toiles (|cff71d5ff|Hspell:12252|h[Jet de toiles]|h|r) châtie le contact en zone.",
	"* Son venin d'arachnide mord le tank : soins soutenus."
};
pack["7356"] = { "Pestegueule le Pourrissant", -- (era clásica)
	"* Son Toucher flétri (|cff71d5ff|Hspell:11442|h[Toucher flétri]|h|r) est une MALADIE sur un joueur : le druide la purge."
};
pack["7354"] = { "Groinfendu", -- (era clásica)
	"* L'Esprit dominateur (|cff71d5ff|Hspell:7645|h[Esprit dominateur]|h|r) retourne un joueur CONTRE le groupe : étourdir ou purger la magie sur lui."
};
pack["8567"] = { "Glouton", -- (era clásica)
	"* Le dévoreur de chair : en santé basse il rentre en Frénésie (|cff71d5ff|Hspell:12795|h[Frénésie]|h|r) — DPS costaud à la fin."
};
pack["7358"] = { "Amnennar le Porte-Froid", -- (era clásica)
	"* Le froid du cimetière : sa Colère d'Amnennar (|cff71d5ff|Hspell:13009|h[Colère d'Amnennar]|h|r) claque en zone — étalés et les soins tiennent."
};

-- ============================================================= --
-- Blackfathom Deeps : Zone 48 (remake retail) --
-- ============================================================= --
-- (CIDs du remake du journal actuel ; la refonte SoD et celles du client
-- Era sont plus haut)
bos = { "Seigneur du Crépuscule Bathiel",
	"* Il se disperse dans la salle en laissant des cercles d'eau restauratrice : s'il en boit un (Absorption soignante) il récupère 5% de sa vie et si l'un crève (Déferlante aqueuse) il frappe de givre dans 5 m ; surveiller les cercles et lui refuser l'eau.",
	"* Sa Pluie perçante pique du givre chaque seconde sur des cibles aléatoires : dégâts récurrents dont s'occupent les soigneurs."
};
pack["74728"] = bos;
bos = { "Domina",
	"* Sa Tempête fétide frappe chaque seconde des cibles aléatoires d'ombre : flux constant ; les soigneurs suivent.",
	"* Sa Gueule de mort ratisse le cône frontal de vagues d'ombre pendant 2 s : le tank la dirige à l'opposé du groupe et personne ne traîne devant."
};
pack["74476"] = bos;
bos = { "Subjugateur Kor’ul",
	"* Son Poing du léviathan écrase sa victime (dégâts physiques chaque seconde, 8 s) : les soigneurs la montent.",
	"* Son Appel aux ténèbres invoque Aku'mai pour se nourrir : l'entrée d'Aku'mai vaut aussi pour l'add."
};
pack["74565"] = bos;
bos = { "Exécuteur Carnage",
	"* Sa Noirceur dévoratrice (interromptible) immobilise une cible et lui soutire sa vie toutes les 0,8 s pendant 6 s : l'interrompre dès que possible ; sinon les soigneurs compensent le drain.",
	"* Son Coup de bourreau plante sa hache : dégâts d'ombre pour tous, bonus dans le cône frontal, et un tourbillon persistant qui ronge qui reste dedans ; le cône loin du groupe et hors du tourbillon."
};
pack["74988"] = bos;
bos = { "Thruk",
	"* Sa Pêche du jour jette sa ligne sur un joueur au hasard jusqu'à 45 m et le tire à ses pieds : le tiré s'écarte vite une fois relâché et personne ne coupe l'attraction.",
	"* Son Filet de chair frappe le sol de son arme : 500% de dégâts d'arme à tous les ennemis dans 10 m ; répartis autour et soigneurs prêts."
};
pack["74505"] = bos;
bos = { "Gardien des profondeurs",
	"* Ses sacs de Nuage de spores retombent au hasard (dégâts physiques) et laissent éclore une couvée de larves : hors des taches et la couvée se nettoie vite.",
	"* Il dévore un rampant d'ardoise bleu à proximité et récupère 25% de sa vie : les rampants de la salle ne restent pas à portée.",
	"* Son Chant brisant tabasse toute la salle : dégâts de zone en continu ; les soigneurs veillent."
};
pack["75410"] = bos;

-- ============================================================= --
-- Razorfen Downs : Zone 129 (refait par le retail moderne) --
-- ============================================================= --
-- (Remplacements du retail moderne ; les classiques de la zone gardent leurs CID)
bos = { "Aarux",
	"* Son Fil de toile hameçonne un joueur à distance, le ramène au corps à corps et y pose aussitôt la Morsure infestée (Naturel 10 s et -50% de vitesse) : le soigneur la dissipe ou soigne durement le tiré.",
	"* Ses Pustules éclatantes tabassent de Naturel les voisins : distance et répartis."
};
pack["74412"] = bos;
bos = { "Bouillegrume",
	"* Combat physique direct : son Piétinement tonitruant frappe tout le groupe et peut couper les incantations ; soigneurs attentifs et lanceurs dosés.",
	"* Il lâche des sbires de bave et de zombies à l'improviste : le tank les agrippe aussitôt et les DPS les nettoient (DoT ou AoE) avant qu'ils croquent le soigneur."
};
pack["74435"] = bos;
bos = { "Nécrorateur Noirépine",
	"* Ses décharges (ombre et éclair) sautent de joueur en joueur : interrompre les incantations dès que possible.",
	"* Il ouvre des plaques sombres au sol : en sortir aussitôt, elles rongent celui qui s'y attarde.",
	"* De temps en temps il se couvre d'un bouclier d'âme et canalise derrière : fendre l'écran en dégâts directs pour couper la canalisation."
};
pack["74875"] = bos;
-- (Amnennar refait lors de la restructuration du retail; son classique 7358
-- ne lançait que Frappe de givre, Nova de givre et appelait des adds)
bos = { "Amnennar le Porte-Froid",
	"* La Koristrasza alliée ouvre des mares de Terre rachetée : kitez-le dessus pour que le terrain le Submerge et l'étourdisse 6 secondes.",
	"* Son Siphon d'âme draine le joueur marqué (75% du drain lui tombent dessus) et happe les voisins en Ombres : le marqué qui marche sur la Terre rachetée perd le debuff d'un coup, et cela l'étourdit aussi.",
	"* Sa Bombe gelée éclate en une mare de Givre à éclaboussures : hors du froid dès qu'elle tombe."
};
pack["74434"] = bos;

-- ============================================================= --
-- Blackrock Depths : Zone 2792 (bande 10-15 du remake) --
-- ============================================================= --
-- (Blackrock Depths en bande du remake anniversaire, 10-15 joueurs ;
-- la version classique viendra avec ses CIDs de toujours)
pack["226315"] = { "Seigneur Roccor",
	"* Son Tremblement de sol assourdit tout le monde dans un rayon de 20 mètres pendant 2 secondes : pas de tas dans la salle.",
	"* Son Choc de terre frappe qui lève un sort : les casteurs lancent avec de la marge.",
	"* Horion de flammes : coup de Feu immédiat puis brûlure toutes les 3 secondes pendant 12 : les soigneurs veillent sur la brûlure."
};
pack["226303"] = { "Bael'Gar",
	"* Éclaboussure de magma : brûlure toutes les 3 secondes pendant 24, cumulée jusqu'à 3 fois sur le tank : rotation de tanks ou dissipation si à portée.",
	"* Sa progéniture : explosion de Feu au hasard avec un sbire de boue en cadeau : le tank le prend et il meurt vite."
};
pack["226304"] = { "Seigneur Incendius",
	"* Malédiction du seigneur élémentaire : ampute 100-132 de résistance au Feu, 30 secondes et jusqu'à trois fois : le marqué reste loin des flammes.",
	"* Coup puissant : une frappe qui éjecte le tank durement vers l'arrière (la lave est partout) : dos au mur.",
	"* Tempête de Feu châtie la zone proche pendant 30 secondes et sa Vague explosive roule sur 20 mètres : le mêlé sort et les soigneurs encaissent."
};
-- (le corpus appareille cette entrée via les trons 230219/230217/230218 ; le
-- commentaire du DBM ajoute Seigneur golem 226306 et Magmatron 230216)
bos = { "Seigneur golem Argelmach",
	"* Chaîne d'éclairs saute d'un joueur proche à l'autre : éparpillés tant que ça dure.",
	"* Il se bat aux côtés de deux de ses constructions : le tank les sépare et partage la menace.",
	"* Attention à cette bande : son âme peut posséder les golems tombés, un corps abattu ne clôt pas toujours le combat."
};
pack["226306"] = bos;
pack["230219"] = bos;
pack["230216"] = bos;
pack["230217"] = bos;
pack["230218"] = bos;
bos = { "Les Sept",
	"* Des vagues de sept nains fantômes dans la salle de la forge, l'un à la suite de l'autre, chacun avec le kit de sa classe classique.",
	"* Le guerrier Anger'rel : Frappe héroïque et Sunder l'armure sur le tank, Cri de guerre et Vague de choc à ses tours.",
	"* Le démoniste Doom'rel : Trait de l'Ombre et Malédiction d'agonie, il invoque une Succube ou un Marcheur du Vide et lance Peur : dissipez la Peur et tuez l'invocation.",
	"* Le voleur Dope'rel : Gouge empoisonnée mordant dans le dos et Disparition : personne ne se retrouve le dos libre.",
	"* Le chaman Gloom'rel : totems, Choc de terre et purge des bénéfices : les totems meurent à peine sortis.",
	"* Le mage Hate'rel : Horion de givre, Blizzard et Métamorphose : coupez la Métamorphose et sortez du Blizzard.",
	"* Le chasseur Seeth'rel : tire de loin, sème des pièges et lâche un familier sauvage : rapprochez-vous avec prudence.",
	"* Le prêtre Vile'rel : soigne les siens avec ses soins rapides, se protège d'un Mot de pouvoir : Bouclier et lance Contrôle mental : ses soins passent en premier sous interruptions."
};
pack["226307"] = bos;
pack["226310"] = bos;
pack["226309"] = bos;
pack["226313"] = bos;
pack["226311"] = bos;
pack["226312"] = bos;
pack["226308"] = bos;
pack["226316"] = { "Général Forgehargne",
	"* Sunder l'armure déshabille le tank couche par couche : rotation de tanks si ça s'accumule.",
	"* Raffale : ses coups critiques précipitent sa main, et son Enrager monte la douleur physique : les soigneurs encaissent la série avec lui.",
	"* Alerte aux intrus ! à 40% : il appelle les renforts de la forteresse, Réservistes et Médecins qui le soignent : tuez-les d'abord, les Médecins avant tout."
};
pack["226302"] = { "Ambassadeur Cinglefouet",
	"* Explosion de Feu constante sur le mêlé : rotation ou soins cadencés.",
	"* Esprits ardents : il appelle des élémentaires par les runes de la salle ; celui qui l'atteint se sacrifie en lui donnant +5% de dégâts et de taille, jusqu'à 50 charges : barrez-leur le chemin et achevez-les en route."
};
-- (226314 est la princesse Moira Bronzebeard ; le journal pareille le nom de
-- l'empereur aux deux ids)
bos = { "Empereur Dagran Thaurissan",
	"* Avatar de la Flamme : 10 secondes totalement immunisé à la magie et ses coups ajoutent du Feu : les casteurs se retiennent pendant que ça dure.",
	"* Main de Thaurissan : un coup de Feu qui étourdit 5 secondes : mieux vaut l'éparpillement pour ne pas en perdre plusieurs à la fois.",
	"* Poing de fer : passif de sa masse légendaire, il enchaîne jusqu'à 3 coups de plus avec +10% de critique pendant 5 secondes : le tank encaisse la série avec soins.",
	"* La princesse Moira Bronzebeard se bat à ses côtés : elle le soigne à chaque instant et frappe en magie Sacrée et d'Ombre : contrôlez-la ou, si le groupe fonce, tuez-la avant lui."
};
pack["226305"] = bos;
pack["226314"] = bos;

-- Blackrock Depths : Zona 230 (ère classique) --
-- 18 entrées classiques (29 CIDs du donjon) ; noms du corpus du journal ;
-- tactiques adaptées du lot du remaster (mêmes combats). Moira 8929 reste EN
-- PROSE dans l'entrée de l'empereur, comme chez la maison.
pack["9018"] = { "Grande Interrogatrice Gerstahn", -- (era clásica)
	"* La patronne des cachots : ses décharges d'ombre châtient les distants — soins attentifs et la salle étalée."
};
pack["9025"] = { "Seigneur Roccor", -- (era clásica)
	"* Son Piétinement (2 s) châtie tout ce qui est proche et son Choix de terre coupe les sorts : étalés et on ne caste pas dedans.",
	"* La Vague de flammes revient toutes les ~12 s : la mêlée sort du rayon et revient."
};
pack["9319"] = { "Maître-chien Grebmar", -- (era clásica)
	"* La meute enchaînée arrive d'abord : AoE et contrôle sur les chiens ; le maître au tank."
};
bos = { "Cercle de la loi", -- (era clásica)
	"* L'événement de l'arène : le ring fait sortir UN des six champions (Anub'shiah, Hedrum, Eviscerator, Grizzle, Ok'Thor ou Leftok) — le tank l'agrippe et le combat se joue à la force."
};
pack["9028"] = bos;
pack["9031"] = bos;
pack["9029"] = bos;
pack["9030"] = bos;
pack["9032"] = bos;
pack["9027"] = bos;
pack["9024"] = { "Pyromancien Blé-du-savoir", -- (era clásica)
	"* Le pyromancien de l'enceinte : pyro en zone sur le groupe — étalés et soins tenus."
};
pack["9017"] = { "Seigneur Incendius", -- (era clásica)
	"* Malédiction du seigneur élémentaire : vole 100-132 de résistance au Feu, 30 s et jusqu'à trois fois : le marqué s'écarte des flammes.",
	"* Enfoncement puissant : il balance le tank en arrière (lave partout) : dos au mur.",
	"* La Tempête de feu châtie la zone proche ~30 s et sa Rafale incandescente roule sur 20 m : la mêlée sort et le soigneur couvre le coup."
};
pack["9041"] = { "Gardien Stilgiss", -- (era clásica)
	"* Le gardien de la cave : son ogre Verek se bat à ses côtés — le tank les sépare ou les tient à l'écart ; soins constants."
};
pack["9056"] = { "Fineous Sombrevire", -- (era clásica)
	"* Le gnome de la fonderie : combat plat derrière un bon tank."
};
pack["9016"] = { "Bael'Gar", -- (era clásica)
	"* Son Éclaboussement de magma s'accumule jusqu'à 3 fois en 24 s sur le tank : rotation ou purge sous la main.",
	"* L'invocation de descendance jette du Feu au hasard avec un sbire de boue en cadeau : le tank le ramasse et on le clou vite."
};
pack["9033"] = { "Général Forgehargne", -- (era clásica)
	"* Sa Fente d'armure dépouille le tank en s'accumulant : rotation si ça empile.",
	"* Les critiques accélèrent sa main et le Rage monte la punition physique : les soigneurs tiennent la série avec lui."
};
pack["8983"] = { "Seigneur golem Argelmach", -- (era clásica)
	"* Une Chaîne d'éclairs qui saute entre les proches : étalés tant que ça dure.",
	"* Il se bat avec deux de ses constructions actives : le tank les sépare et répartit la pression.",
	"* Sans hâte : les golems tombés ne closent pas le combat — on ratisse la salle entière."
};
pack["9537"] = { "Hurley Soufflenoir", -- (era clásica)
	"* L'ivrogne de la caverne du bar : bagarre franche derrière un bon tank."
};
pack["9502"] = { "Phalange", -- (era clásica)
	"* Le garde mécanique du hall de la forge : mêlée dure au tank."
};
pack["9499"] = { "Lanfiche Brouillecircuit", -- (era clásica)
	"* Le barman du Soufflenoir : quand il tombe, TOUTE la taverne s'en mêle — les clients arrivent par vagues : AoE du tank et zéro inattention."
};
pack["9156"] = { "Ambassadeur Cinglefouet", -- (era clásica)
	"* Explosion de Feu constante sur la mêlée : rotation ou soins au rythme.",
	"* Esprits ardents : des élémentaires par les runes de la salle ; celui qui l'atteint lui donne +5% de dégâts et de taille jusqu'à 50 charges : on leur bloque le passage et on les achève en chemin."
};
bos = { "Les Sept", -- (era clásica)
	"* Vagues de sept nains fantômes dans le hall de la forge, l'un après l'autre, chacun avec son kit de classe classique.",
	"* Le guerrier Anger'rel : Frappe héroïque et Fente d'armure au tank, avec Cri de guerre et Onde de choc à ses temps.",
	"* Le démoniste Doom'rel : Trait d'ombre et Maléfaction d'agonie, invoque une Succube ou un Clamavelo et lance Peur : on dissipe la Peur et on achève l'invoc.",
	"* Le voleur Dope'rel : Gouge empoisonnée qui mord de dos et Disparition : personne ne laisse le dos nu.",
	"* Le chaman Gloom'rel : totems, Choix de terre et purge de buffs : les totems tombent dès qu'ils poussent.",
	"* Le mage Hate'rel : Éclair de givre, Blizzard et Métamorphose : on coupe la Métamorphose et on sort du Blizzard.",
	"* Le chasseur Seeth'rel : tire de loin, sème des pièges et lâche un familier sauvage : on raccourcit la distance avec prudence.",
	"* Le prêtre Vile'rel : soigne les siens avec Soins rapides et lance Mot de pouvoir : bouclier et Rupture mentale : couper ses soins en premier."
};
pack["9035"] = bos;
pack["9039"] = bos;
pack["9040"] = bos;
pack["9037"] = bos;
pack["9034"] = bos;
pack["9038"] = bos;
pack["9036"] = bos;
pack["9938"] = { "Magmus", -- (era clásica)
	"* Le géant de la citadelle : mêlée lourde au tank et soins constants."
};
bos = { "Empereur Dagran Thaurissan", -- (era clásica)
	"* Avatar de flamme : 10 s totalement immunisé à la magie et ses coups ajoutent du Feu : les lanceurs retiennent tant que ça dure.",
	"* Main de Thaurissan : coup de Feu qui étourdit 5 s — mieux sans tas pour ne pas perdre plusieurs joueurs à la fois.",
	"* Rage du fer : son marteau enchaîne jusqu'à 3 coups de plus et monte son critique de 10% pendant 5 s : le tank tient la série avec des soins.",
	"* La princesse Moira Bronzebeard se bat à ses côtés : elle le soigne sans arrêt et châtie en magie Sacrée et d'Ombre : on la contrôle ou, si le groupe brûle vite, on l'achève avant lui."
};
pack["9019"] = bos;

-- ============================================================= --
-- Razorfen Kraul : Zone 47 (classique) --
-- ============================================================= --
-- (Les CIDs 44xx et 4842 sont les classiques de toujours ; les 75xxx et la 74462
-- sont des variantes du journal moderne avec leurs noms element-1)
pack["4424"] = { "Aggem Malépine",
	"* Il invoque des sangliers (|cff71d5ff|Hspell:8286|h[Invocation de sanglier]|h|r) à des heures étranges : achevez-les dès qu'ils sortent.",
	"* Sa Vague de soins (|cff71d5ff|Hspell:14900|h[Vague de soins]|h|r) est interruptible : coupez-la sans pitié ou le tank s'épuise."
};
pack["4422"] = { "Agathelos le Déchaîné",
	"* Il s'enrage (|cff71d5ff|Hspell:8269|h[Enrager]|h|r) et sa punition grimpe : le tank encaisse la montée avec des soins attentifs."
};
pack["4425"] = { "Chasseur aveugle",
	"* Bagarreur plat signalé par DBM : frappe au contact et rien de plus : tank, burst et soins."
};
pack["75247"] = { "Groyat, le chasseur aveugle",
	"* La version moderne du chasseur aveugle : bagarreur plat, DBM ne lui signale rien."
};
bos = { "Roogug",
	"* Il appelle des retentisseurs de terre (|cff71d5ff|Hspell:8270|h[Retentisseur de terre]|h|r) : le tank les prend et ils meurent aussitôt."
};
pack["6168"] = bos;
pack["74948"] = bos;
pack["4420"] = { "Seigneur Brusquebroche",
	"* Il canalise un bombarde tournoyant (|cff71d5ff|Hspell:8259|h[Bombarde tournoyant]|h|r) : interrompez-le ou, s'il passe, éloignez-vous du tourbillon pendant sa chute.",
	"* Combat corsé : il frappe fort et arrive flanqué de deux gardes ; le tank les écarte et les soigneurs serrent."
};
pack["74462"] = { "Seigneur de guerre Brusquebroche",
	"* La version moderne du Brusquebroche suprême : bagarreur plat, rien de signalé par DBM : tank, burst et soins."
};
pack["4421"] = { "Charlga Trancheflanc",
	"* La Chaîne d'éclairs (|cff71d5ff|Hspell:8292|h[Chaîne d'éclairs]|h|r) est interruptible : le kick sauve tout le groupe.",
	"* Charlga purifie ses malédictions dès qu'elles tombent (|cff71d5ff|Hspell:8361|h[Pureté]|h|r) : les dégâts physiques restent le chemin."
};
pack["4428"] = { "Nécrorateur Jargba",
	"* Il Domine l'esprit d'un joueur (|cff71d5ff|Hspell:14515|h[Domination]|h|r) : les interruptions normales ne la coupent pas ; l'étourdissement l'empêche, mais il relance dès qu'il se brise : descendez le possédé à coups jusqu'à ce qu'il lâche."
};
pack["4842"] = { "Implorateur de la terre Halmgar",
	"* Il appelle des retentisseurs de terre (|cff71d5ff|Hspell:8270|h[Retentisseur de terre]|h|r) : répartissez-les et achevez-les vite."
};
pack["75001"] = { "Chasseur Ossathure",
	"* Encore un bagarreur plat du Kraul moderne : tank, burst et soins à la file."
};

-- ============================================================= --
-- Gnomeregan : Zone 90 (classique et journal moderne) --
-- ============================================================= --
-- (Les CIDs 7xx et 6xxx sont les classiques de toujours ; les 21xxxx sont des
-- variantes SoD/journal au même nom : entrées partagées)
bos = { "Grubbis",
	"* Bagarre plate signalée par DBM : tank, burst et soins, avec l'oeil sur le sbire qui surgit à ses côtés (son Chomper)."
};
pack["7361"] = bos;
pack["217280"] = bos;
bos = { "Retombée visqueuse",
	"* Salve toxique (|cff71d5ff|Hspell:21687|h[Salve toxique]|h|r) : poison périodique sur les voisins ; le dispelleur de poison le dissipe et continue."
};
pack["7079"] = bos;
pack["220007"] = bos;
bos = { "Electrocuteur 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) et Chaîne d'éclairs (|cff71d5ff|Hspell:11085|h[Chaîne d'éclairs]|h|r) sont interruptibles : coupez-les à la racine.",
	"* Son Choc (|cff71d5ff|Hspell:11084|h[Choc]|h|r) martèle le tank : soins en éveil."
};
pack["6235"] = bos;
pack["220072"] = bos;
bos = { "Disperseur de foule 9-60",
	"* Piétinement (|cff71d5ff|Hspell:10887|h[Piétinement]|h|r) : un coup qui jette le mêlé dans les airs : seul le tank reste dedans, les autres hors de portée.",
	"* Frappe en arche (|cff71d5ff|Hspell:8374|h[Frappe en arche]|h|r) sur le tank : rythme normal de tank et soigneurs."
};
pack["6229"] = bos;
pack["215728"] = bos;
bos = { "Mekgénieur Thermojoncteur",
	"* Il colle une bombe vivante à un joueur au hasard (|cff71d5ff|Hspell:11518|h[Bombe vivante]|h|r) : le marqué s'éloigne du groupe jusqu'à l'explosion.",
	"* Son Rejet (|cff71d5ff|Hspell:10101|h[Rejet]|h|r) éjecte le tank : attention à où il retombe.",
	"* Depuis Cata s'ajoutent un Souffle de vapeur interruptible et des coups sur le tank : coupez le souffle à temps."
};
pack["7800"] = bos;
pack["218538"] = bos;
pack["218970"] = bos;
pack["218972"] = bos;
pack["218974"] = bos;
pack["218537"] = bos;
bos = { "Ménagerie mécanique",
	"* Quatre pièces mécaniques ensemble : le dragon noir (STX-04/BD), l'agneau (STX-13/LL), l'écureuil (STX-25/NB) et la poule (STX-37/CN).",
	"* Tous partagent l'auto-réparation et le câblage effiloché : chaque pièce tombe vite pour qu'elle ne se répare pas, et les dégâts passifs du câblage ne se négligent pas.",
	"* L'agneau bêle en binaire, l'écureuil décharge des gadgets, surchauffe et se couvre de son bouclier de noisettes, et la poule picore entre ses caquètements : dégâts constants, puis la suivante."
};
pack["218242"] = bos;
pack["218243"] = bos;
pack["218244"] = bos;
pack["218245"] = bos;
-- (Ménagerie mécanique : le journal porte le nom de l'encounter sur les 4 pièces,
-- comme Les Sept ; compétences apportées par le propriétaire, sans ids ni liens)

-- ============================================================= --
-- Monastère écarlate : Zone 189 (classique) --
-- ============================================================= --
-- Ailes : Cimetière (Vishas, Thalnos et le Fairbanks caché), Bibliothèque
-- (Loksey, Doan), Armurerie (Herod) et Cathédrale (Mograine et Whitemane).
-- Le journal ne porte pas l'instance : les noms element-1 viennent de la
-- localization classique du DBM ; confirmés par le propriétaire
-- via Wowhead (2026-10, client classique ; le FR du DBM portait
-- « Melenablanca » par erreur : le client garde Whitemane).
pack["3983"] = { "Interrogateur Vishas",
	"* Combat court et simple : son seul signalement est l'Immolation (|cff71d5ff|Hspell:9034|h[Immolation]|h|r) sur un joueur, dégâts magiques qui persistent ; dispel magique ou soignez cette marque avec attention."
};
pack["4543"] = { "Mage de sang Thalnos",
	"* Pointe de flammes (|cff71d5ff|Hspell:8814|h[Pointe de flammes]|h|r) à distance et Nova de feu (|cff71d5ff|Hspell:12470|h[Nova de feu]|h|r) autour de lui : le corps-à-corps lâche quand il lance la nova.",
	"* Pas d'autre mécanique : le tank le fixe, il meurt et le cimetière est terminé."
};
pack["4542"] = { "Grand Inquisiteur Fairbanks",
	"* Un inquisiteur caché parmi les tombes du cimetière : beaucoup de groupes le gardent pour la fin ; si on le pull, combat simple.",
	"* Sa Malédiction de sang (|cff71d5ff|Hspell:8282|h[Malédiction de sang]|h|r) est une malédiction : dispel-la avec la suppression des malédictions."
};
pack["3974"] = { "Maître-chien Loksey",
	"* Il combat flanqué de ses chiens et lance Furie de sang (|cff71d5ff|Hspell:6742|h[Furie de sang]|h|r) sur la meute : elle cogne plus vite, alors débarrassez-vous des chiens au plus vite pendant que le tank le retient.",
	"* Rien de plus : si les chiens s'entassent, tombez-les d'abord et il suit de près."
};
pack["6487"] = { "Arcaniste Doan",
	"* Il lance Métamorphose (|cff71d5ff|Hspell:13323|h[Métamorphose]|h|r) sur un joueur et répète Explosion arcanique (|cff71d5ff|Hspell:9433|h[Explosion arcanique]|h|r) autour de lui : on ne cast pas collé à lui.",
	"* Son Silence (|cff71d5ff|Hspell:8988|h[Silence]|h|r) de zone coupe les sorts proches : restez loin de l'arcaniste pour continuer à caster.",
	"* Détonation (|cff71d5ff|Hspell:9435|h[Détonation]|h|r) est le vrai coup : quand il la charge, courez hors du rayon ou brisez la vue derrière les étagères de la salle avant qu'elle explose."
};
pack["3975"] = { "Herod",
	"* Son Tourbillon (|cff71d5ff|Hspell:8989|h[Tourbillon]|h|r) tourne toutes les ~18 s : le corps-à-corps sort du rayon et revient quand la rotation finit.",
	"* À basse vie il prend Frénésie (|cff71d5ff|Hspell:8269|h[Frénésie]|h|r) : plus de dégâts, le tank encaisse et les soins s'activent.",
	"* À sa mort, une nuée de recrues écarlates déferle par la porte : pas de relâche tant qu'elles ne sont pas balayées."
};
pack["3976"] = { "Commandant écarlate Mograine",
	"* Combat simple en cleave, en commençant par lui : Whitemane ne descend de son balcon qu'une fois qu'il tombe.",
	"* Après sa première mort, on coupe les Soins (|cff71d5ff|Hspell:12039|h[Soins]|h|r) de Whitemane sur lui : sans la coupure, il revient vie pleine.",
	"* Soins gérés et résurrection passée, le combat se termine en tombant les deux sans se presser."
};
pack["3977"] = { "Grande Inquisitrice Whitemane",
	"* Elle descend quand Mograine tombe et lance Sommeil profond (|cff71d5ff|Hspell:9256|h[Sommeil profond]|h|r) sur un joueur pendant 10 s : le rideau qui couvre le retour de Mograine.",
	"* Elle caste ensuite Soins (|cff71d5ff|Hspell:12039|h[Soins]|h|r) pour remplir le ressuscité : coupez-la à chaque fois.",
	"* Après la résurrection, elle tombe en premier ; le Mograine ressuscité est le dernier trophée."
};
-- Zona 349 : Maraudon (deux branches d'entrée qui convergent devant la salle
-- de la Princesse). Kit et CIDs du DBM Shared\Maraudon du _doc ;
-- noms element-1 du corpus 4 langues (journal).
pack["12203"] = { "Glissement de terrain",
	"* Premier gros golem de roche de la grotte : combat simple avec du gros dégât physique sur le tank.",
	"* Recul (|cff71d5ff|Hspell:11130|h[Recul]|h|r) projette le tank en arrière et lui fait lâcher la menace : il la reprend immédiatement, le reste reste en place jusqu'au rattrapage.",
	"* Le Glissement de terrain (|cff71d5ff|Hspell:21808|h[Glissement de terrain]|h|r) jette au sol en zone autour de lui : le corps à corps se relève et continue, fuir est inutile.",
	"* Piétinement (|cff71d5ff|Hspell:5568|h[Piétinement]|h|r) frappe la zone collée à lui : le garder planté le rend inoffensif."
};
pack["13282"] = { "Noxcion",
	"* Élémental d'émeraude du salon de cristaux : combat statique à son nid.",
	"* Crochet (|cff71d5ff|Hspell:10966|h[Crochet]|h|r) envoie le tank en l'air : soin debout et retour à sa place.",
	"* Invocation de laquais (|cff71d5ff|Hspell:21707|h[Laquais de Noxcion]|h|r) périodique : zone dès qu'ils s'entassent, avant qu'ils ne rajoutent de la pression."
};
pack["12258"] = { "Tranchefouet",
	"* Plante géante épineuse des sentiers verts : combat simple, elle plâtre le tank et pas grand-chose de plus.",
	"* Aucune mécanique signalée par le DBM : tank, soigne et abats-la."
};
pack["12236"] = { "Seigneur Vylelangue",
	"* Satyre fantôme : combat de caster d'ombre avec sa Bombe fumigène (|cff71d5ff|Hspell:7964|h[Bombe fumigène]|h|r) qui l'enveloppe et le fait disparaître de vue.",
	"* Dans la brume, le tank le maintient par la menace et le corps à corps attend que la fumée se dissipe."
};
pack["12225"] = { "Celebras le Maudit",
	"* Gardien du portail vers la princesse : sa Colère (|cff71d5ff|Hspell:21807|h[Colère]|h|r) s'interrompt à chaque fois, gros dégât de nature si elle part entière.",
	"* Racines de l'empêtrement (|cff71d5ff|Hspell:12747|h[Racines de l'empêtrement]|h|r) enracine un joueur : c'est de la magie, à dissiper ou à casser avec des dégâts.",
	"* Le DBM signale Corruption des forces (|cff71d5ff|Hspell:21968|h[Corruption des forces]|h|r) : presse le DPS et il tombe plat ; rien à esquiver."
};
pack["13601"] = { "Bricoleur Kadenaz",
	"* Ingénieur gobelin de la grotte profonde : son Canon-dragon gobelin (|cff71d5ff|Hspell:21833|h[Canon-dragon gobelin]|h|r) crache du feu en cône frontal.",
	"* Le tank le fixe dos au groupe : personne devant le canon et il tombe plat."
};
pack["13596"] = { "Grippe-charogne",
	"* Crocolisque du bassin devant la salle de la princesse : combat simple dans l'eau du bassin.",
	"* Morsure fatale (|cff71d5ff|Hspell:16495|h[Morsure fatale]|h|r) écrase le tank : soin à tour de rôle et l'urgence en réserve."
};
pack["12201"] = { "Princesse Theradras",
	"* Boss finale, colossale : combat statique dans sa salle.",
	"* Regard répulsif (|cff71d5ff|Hspell:21869|h[Regard répulsif]|h|r) sème la panique autour (peur) : s'espacer un peu ; un totem de chaman contre la peur la dissipe sur le champ.",
	"* Rocher (|cff71d5ff|Hspell:21832|h[Rocher]|h|r) s'abat sur les éloignés : les distants se répartissent la position sans s'entasser.",
	"* Champ de poussière (|cff71d5ff|Hspell:21909|h[Champ de poussière]|h|r) fouette la zone autour d'elle : le corps à corps court hors du rayon (le DBM hurle de courir) et revient une fois fini."
};

-- Zona 70 : Uldaman (la voûte titanique sous les Terres dévastées). Kit et
-- CIDs du DBM Shared\Uldaman du _doc ; noms element-1 du corpus (journal ;
-- le trio de nains porte le nom de l'ENCOUNTER, pas de noms par pièce,
-- comme la Ménagerie).
pack["6910"] = { "Revelosh",
	"* Chamane trogg des salles d'entrée : sa Chaîne d'éclairs (|cff71d5ff|Hspell:16006|h[Chaîne d'éclairs]|h|r) s'interrompt à chaque fois.",
	"* Si un Éclair (|cff71d5ff|Hspell:15801|h[Éclair]|h|r) passe, coupez-le aussi si le groupe le peut."
};
bos = { "Les nains perdus",
	"* Trio de nains (Baelog, Eric « le Rapide » et Olaf) dans la salle des artisans : les trois en un seul pull, combat simple.",
	"* Trois à la fois sans mécanique signalée par le DBM : le tank les réunit, zone + cleave les abattent."
};
pack["6906"] = bos;
pack["6907"] = bos;
pack["6908"] = bos;
pack["7206"] = { "Ancien gardien en pierre",
	"* Gardien de pierre des salles centrales : combat statique avec du gros physique.",
	"* Les Tempêtes de sable (|cff71d5ff|Hspell:10132|h[Tempêtes de sable]|h|r) ne cessent pas : dégât en zone, les distants ne s'entassent pas et le soin se répartit."
};
pack["7023"] = { "Sentinelle d'obsidienne",
	"* Golem sentinelle d'obsidienne : sa Réflexion (|cff71d5ff|Hspell:9941|h[Réflexion]|h|r) renvoie les sorts au lanceur — les casters cessent de caster tant que ça tourne.",
	"* Éclat d'obsidienne (|cff71d5ff|Hspell:10072|h[Éclat d'obsidienne]|h|r) : éclats à dégager dès qu'ils apparaissent."
};
pack["7291"] = { "Galgann Martel-de-Feu",
	"* Chamane du feu des salles des artisans : Pointe de feu (|cff71d5ff|Hspell:6725|h[Pointe de feu]|h|r) et Fouet de flammes (|cff71d5ff|Hspell:3356|h[Fouet de flammes]|h|r), les deux coupures à chaque fois.",
	"* La Nova de feu (|cff71d5ff|Hspell:11969|h[Nova de feu]|h|r) explose autour : le corps à corps sort du rayon et revient."
};
pack["4854"] = { "Grimelok",
	"* Chamane trogg des cavernes basses : Chaîne de foudre (|cff71d5ff|Hspell:8292|h[Chaîne de foudre]|h|r) s'interrompt toujours et Éclair (|cff71d5ff|Hspell:12167|h[Éclair]|h|r) en coupure de plus.",
	"* Furie de sang (|cff71d5ff|Hspell:6742|h[Furie de sang]|h|r) : celui qui la porte, lui ou un laquais, tombe en premier.",
	"* Le Sommeil cristallin (|cff71d5ff|Hspell:3636|h[Sommeil cristallin]|h|r) endort un joueur (magie) : dispel ou dégâts le réveillent.",
	"* Réflexion (|cff71d5ff|Hspell:9906|h[Réflexion]|h|r) : plus de casts tant que ça dure, même règle de renvoi."
};
pack["7228"] = { "Ironaya",
	"* Gardienne réveillée de la salle de la carte : combat statique, tankée sur place.",
	"* Sa Frappe en arc (|cff71d5ff|Hspell:8374|h[Frappe en arc]|h|r) est frontale : le corps à corps ne se plante jamais droit devant elle.",
	"* Piétinement de guerre (|cff71d5ff|Hspell:11876|h[Piétinement de guerre]|h|r) autour d'elle : étourdissement en zone, le corps à corps l'encaisse et les soins continuent."
};
pack["2748"] = { "Archaedas",
	"* Le titan endormi de la voûte : long combat à nettoyer les invocations pendant qu'on l'use.",
	"* Réveil des gardiens de terre (|cff71d5ff|Hspell:10252|h[Réveil des gardiens de terre]|h|r) et Réveil du gardien de la voûte (|cff71d5ff|Hspell:10258|h[Réveil du gardien de la voûte]|h|r) : les adds arrivent en vagues — cleave, le boss reste au tank.",
	"* Le Tremblement du sol (|cff71d5ff|Hspell:6524|h[Tremblement du sol]|h|r) frappe la zone autour de lui : le corps à corps tient avec les soins, rien à esquiver.",
	"* Règle classique : le tank l'épingle sur son socle, le DPS balaie les gardiens et Archaedas tombe en dernier."
};

-- Zona 209 : Zul'Farrak (la ville des sables des trolls Scalpessable, à
-- Tanaris). Kit et CIDs du DBM Shared\ZulFarrak du _doc ; noms element-1 du
-- corpus (journal ; le couple Nekrum+Sezz'ziz porte le nom de l'ENCOUNTER
-- partagé, comme la Ménagerie) ; Gardien de Zum'rah 11086 et la rage de sa
-- main droite Ruuzlu 7797 (sans entrée propre) vérifiés par le propriétaire
-- via Wowhead 2026-10.
pack["8127"] = { "Antu’sul",
	"* Premier boss, dans la fosse d'entrée : soigneur troll qui tient debout grâce à ses totems et ses laquais.",
	"* Ses Vagues de soins se coupent : celle qu'il se lance (|cff71d5ff|Hspell:11895|h[Vague de soins]|h|r) et celle envoyée aux laquais (|cff71d5ff|Hspell:15982|h[Vague de soins]|h|r).",
	"* Ses totems éclatent dès qu'ils pointent : celui d'immobilisation (|cff71d5ff|Hspell:8376|h[Totem d'immobilisation]|h|r) enracine le groupe et le Totem de soin (|cff71d5ff|Hspell:4971|h[Totem de soin]|h|r) refile de la vie au boss et à sa bande.",
	"* Les laquais qu'il lève (|cff71d5ff|Hspell:11894|h[Laquais]|h|r) tombent en premier : le DPS les balaie pendant que le tank tient le boss."
};
pack["7272"] = { "Theka le Martyr",
	"* Combat à un seul objectif : sa Peste fébrile (|cff71d5ff|Hspell:8600|h[Peste fébrile]|h|r) est une maladie soignable — dispel dès qu'elle tombe.",
	"* À mi-combat il se transforme (|cff71d5ff|Hspell:11089|h[Transformation]|h|r) : le tank le retient et il tombe quand même."
};
pack["7271"] = { "Féticheur Zum’rah",
	"* Soigneur de la cour avec ses acolytes : chaque incantation s'interrompt — la Vague de soins (|cff71d5ff|Hspell:12491|h[Vague de soins]|h|r) et surtout la Décharge d'éclairs d'ombre (|cff71d5ff|Hspell:15245|h[Décharge d'éclairs d'ombre]|h|r), qui punit tout le groupe à 30 m.",
	"* Son Gardien de Zum'rah (|cff71d5ff|Hspell:11086|h[Gardien de Zum'rah]|h|r) plante un totem à ses pieds qui sort un squelette toutes les 5 s : on l'éclate dès qu'il pointe.",
	"* Réveil zombi : il ressuscite des Zombies de Zul'Farrak dans les tombes proches de la salle — squelettes et zombies tombent dès qu'ils émergent."
};
pack["7273"] = { "Gahz’rilla",
	"* La bête géante de la place : le tank l'épingle sur place et les distants ne s'entassent pas derrière elle.",
	"* Son Écrasement (|cff71d5ff|Hspell:11902|h[Écrasement]|h|r) s'abat au sol : dégât en zone que le corps à corps encaisse avec les soins.",
	"* Gel solide (|cff71d5ff|Hspell:11836|h[Gel solide]|h|r) gèle complètement celui qu'il attrape : les soins couvrent tant que ça dure."
};
pack["7795"] = { "Hydromancienne Velratha",
	"* Magicienne de l'étage supérieur : combat simple avec un seul détail — chaque Vague de soins (|cff71d5ff|Hspell:12491|h[Vague de soins]|h|r) s'interrompt."
};
bos = { "Nekrum et Sezz'ziz",
	"* Couple de l'événement de la pyramide (les prisonniers libérés vous retournent) : on les dégage quand ils montent, après la vague de laquais.",
	"* Les soins de Sezz'ziz — Rénovation (|cff71d5ff|Hspell:8362|h[Rénovation]|h|r) et Soins (|cff71d5ff|Hspell:12039|h[Soins]|h|r) — s'interrompent à chaque fois, sinon le couple traîne le combat.",
	"* Le bouclier divin (|cff71d5ff|Hspell:13704|h[Bouclier divin]|h|r) bloque tout dégât net : tant que ça dure, le DPS ne dépense pas son effort.",
	"* La Peste fébrile (|cff71d5ff|Hspell:8600|h[Peste fébrile]|h|r) sort aussi ici : maladie soignable, dispel disponible."
};
pack["7796"] = bos;
pack["7275"] = bos;
pack["7267"] = { "Chef Ukorz Scalpessable",
	"* Le chef de guerre au sommet de la pyramide, sa main droite Ruuzlu avec lui (sans entrée propre) : combat frontal, tanké sur place avec du physique dur.",
	"* Ruuzlu tombe en PREMIER : quand le chef meurt, il entre en rage (+30% dégâts, +40% vitesse d'attaque) et punit ce qui reste de la salle.",
	"* Quand sa vie baisse il lance sa Rage (|cff71d5ff|Hspell:8269|h[Rage]|h|r) : le tank se resserre et les soins portent la fin du combat."
};

-- Zone 109 : le Temple englouti (le Temple d'Atal'Hakkar, dans les Marécage
-- d'Aprefange), avec les DEUX ères : la classique (kit du DBM
-- Shared\SunkenTemple) et la bande SoD à 10 du remake (DBM-Raids-Vanilla
-- \VanillaSoD_SunkenTemple). Le classique Zolo 5712 (mini-chef troll
-- optionnel de la garde atal'ai, kit confirmé par le propriétaire via
-- Wowhead 2026-10) entre SANS liens (pas d'ids vérifiés) ; Mandokir et son
-- sbire Ohgan n'ont pas d'id dans le corpus : pas d'entrée (trou à demander
-- au propriétaire) ; Ogom (5711), garde du corps de Jammal'an dans la
-- classique, vit en prose (comme Ruuzlu).

pack["5710"] = { "Jammal’an le Prophète", -- (ère classique)
	"* Le prophète du hall, avec son garde du corps Ogom (sans entrée propre) à côté : combat en duo au milieu du salon.",
	"* Jammal’an plante son Totem de terre saisissante (|cff71d5ff|Hspell:8376|h[Totem de terre saisissante]|h|r) — il enracine le groupe — et marque un joueur avec son Maléfice de Jammal’an (|cff71d5ff|Hspell:12479|h[Maléfice de Jammal’an]|h|r), qui attend à couvert ; il lâche aussi Vague de soins (12492) et Choc de flammes (12468).",
	"* Ogom punit avec ses Décharges de la nuit (|cff71d5ff|Hspell:12471|h[Décharge de la nuit]|h|r) TOUJOURS interrompues et pose Fléau des ombres (|cff71d5ff|Hspell:11639|h[Fléau des ombres]|h|r) (magie) et Malédiction de faiblesse (|cff71d5ff|Hspell:12493|h[Malédiction de faiblesse]|h|r) (maléfice)."
};

pack["5719"] = { "Morphaz", -- (ère classique)
	"* Drakonid vert de la fosse inondée : le kit est le jumeau des quatre gardiens du temple.",
	"* Combat simple : son Souffle acide (|cff71d5ff|Hspell:12884|h[Souffle acide]|h|r) punit le devant et le Battement d'ailes (|cff71d5ff|Hspell:12882|h[Battement d'ailes]|h|r) repousse — tank sur place et groupe derrière lui."
};

pack["5720"] = { "Tisserand", -- (ère classique)
	"* Drakonid vert de l'étage du haut, à côté de Fauche-rêve : kit jumeau des gardiens.",
	"* Combat simple : Souffle acide (|cff71d5ff|Hspell:12884|h[Souffle acide]|h|r) punit le devant et Battement d'ailes (|cff71d5ff|Hspell:12882|h[Battement d'ailes]|h|r) repousse — le tank tient, le groupe serré derrière lui."
};

pack["5721"] = { "Fauche-rêve", -- (ère classique)
	"* Drakonid vert de l'étage du haut, à côté de Tisserand : kit jumeau des gardiens.",
	"* Combat simple : son Souffle acide (|cff71d5ff|Hspell:12884|h[Souffle acide]|h|r) punit en cône frontal avec une blessure de nature, et le Battement d'ailes (|cff71d5ff|Hspell:12882|h[Battement d'ailes]|h|r) pousse vers l'arrière — le tank tient, le groupe serré derrière lui."
};

pack["5722"] = { "Hazzas", -- (ère classique)
	"* Drakonid vert de la fosse inondée, en paire avec Morphaz : kit jumeau des gardiens.",
	"* Combat simple : Souffle acide (|cff71d5ff|Hspell:12884|h[Souffle acide]|h|r) punit le devant et Battement d'ailes (|cff71d5ff|Hspell:12882|h[Battement d'ailes]|h|r) repousse — le tank tient, le groupe serré derrière lui."
};

pack["5712"] = { "Zolo", -- (ère classique, mini-chef troll optionnel de la garde atal'ai ; kit du propriétaire via Wowhead 2026-10)
	"* Mini-chef troll optionnel et coriace de la garde atal'ai : sa Chaîne d'éclairs saute entre les joueurs groupés — on se défait après chaque cast.",
	"* Il plante un totem à ses côtés qui sort des squelettes sans arrêt : on l'éclate dès qu'il pointe.",
	"* Son sort de zone réduit de 10 toutes les caractéristiques et S'EMPILE si le combat traîne — on le tue vite."
};

pack["5709"] = { "Ombre d’Eranikus", -- (ère classique)
	"* L'ombre du dragon vert que le rituel de l'autel réveille dans la fosse : l'invocation finale du temple classique.",
	"* Son Sommeil profond (|cff71d5ff|Hspell:12890|h[Sommeil profond]|h|r) endort quiconque le gobe, le Souffle acide (|cff71d5ff|Hspell:12533|h[Souffle acide]|h|r) punit le tank et le Piétinement de guerre (|cff71d5ff|Hspell:24375|h[Piétinement de guerre]|h|r) tombe au contact."
};

pack["8443"] = { "Avatar d’Hakkar", -- (ère classique)
	"* L'ombre du dieu serpent que le rituel du temple réveille : combat court et venimeux.",
	"* Sa Malédiction des langues (|cff71d5ff|Hspell:12889|h[Malédiction des langues]|h|r) (maléfice) allonge les incantations du groupe et sa Provoquer la folie (|cff71d5ff|Hspell:12888|h[Provoquer la folie]|h|r) tombe sur un joueur — l'avis le plus critique du DBM, on s'en occupe vite."
};

pack["218624"] = { "Atal'alarion", -- (ère SoD, bande à 10)
	"* Le gardien du premier pont du remake : géant plat et coriace.",
	"* Ses Piliers de puissance (|cff71d5ff|Hspell:437503|h[Piliers de puissance]|h|r) punissent à cadence fixe (~12 s) et le Choc démolisseur (|cff71d5ff|Hspell:437597|h[Choc démolisseur]|h|r) toutes les ~27 s attrape la moitié du groupe : on court DERRIÈRE un pilier."
};

pack["218819"] = { "Pourriture gélatineuse purulente", -- (ère SoD, bande à 10)
	"* La gelée du canal : son Dévorer (|cff71d5ff|Hspell:448824|h[Dévorer]|h|r) avale un joueur OU les objets de la salle (le tambour, la dalle, le masque et la cire) — les soins le maintiennent debout.",
	"* Son Heure visqueuse (|cff71d5ff|Hspell:446311|h[Heure visqueuse]|h|r) s'empilent sur lui : une fois RETIRÉE il devient lent — là, le DPS appuie dur.",
	"* Limon (|cff71d5ff|Hspell:438142|h[Limon]|h|r) et Gaz nauséeux (|cff71d5ff|Hspell:438130|h[Gaz nauséeux]|h|r) à cadence ; le sol punitif s'esquive."
};

-- Défenseurs atal'ai (ère SoD) : les six trolls de la cour, un id chacun ; la
-- même table pour les six.
bos = { "Défenseurs atal’ai",
	"* La garde troll de la cour du remake : six chefs DE SUITE, on les tape un par un et chaque CHUTE fait sortir sa contrepartie morte avec le même kit (sans liens) — les portes de rune des côtés s'ignorent.",
	"* Zul'Lor 221640 : sa Charge (446369) précède le Choc corrompu (446372) — on l'esquive après la charge — et il pose Fragilité (446364).",
	"* Mijan 218868 : ses Épines (438294) (magie) renvoient du dégât au contact — on les purge et la mêlée S'ARRÊTE — et son Gardien de soins (438335) tombe ; le Totem de serpent atal’ai (445912) éclate.",
	"* Zolo 221639 : toute sa magie se COUPE — Chaîne d'éclairs (446338), Rénovation (438341) et Vague de soins (438339) — et son Totem de squelettes atal’ai (446339) éclate ; le Tonneau instable (445940) peut étourdir le tank.",
	"* Gasher 221637 : Haches tournoyantes (445289) punit le contact et sa Ferveur (445284) s'empile si le combat traîne — on le tue vite.",
	"* Loro 221638 : Cri désobligeant (23511) à cadence et Frappe de bouclier (446354) sur le tank.",
	"* Hukku 223586 : Décharge de la nuit (446361) TOUJOURS interrompue et ses Gardiens (446360) tombent dans le combat."
};
pack["221640"] = bos; -- Zul'Lor
pack["218868"] = bos; -- Mijan
pack["221639"] = bos; -- Zolo
pack["221637"] = bos; -- Gasher
pack["221638"] = bos; -- Loro
pack["223586"] = bos; -- Hukku

-- Fauche-rêve et tisserand (ère SoD) : paire de drakonid verts.
bos = { "Fauche-rêve et tisserand",
	"* La paire de drakonid verts du remake : les deux partagent la même salle.",
	"* Le Souffle acide (|cff71d5ff|Hspell:442622|h[Souffle acide]|h|r) S'EMPILE sur le tank — on change par provocation après chaque cast — et le Battement d'ailes (|cff71d5ff|Hspell:442620|h[Battement d'ailes]|h|r) le suit.",
	"* La Frappe d'ailes (|cff71d5ff|Hspell:443766|h[Frappe d'ailes]|h|r) propulse aux airs : on tient serré et loin du bord.",
	"* Étape 2 : Fauche-rêve se blinde avec sa Garde d'émeraude (|cff71d5ff|Hspell:443302|h[Garde d'émeraude]|h|r) — on la défonce à coups et l'étape 3 arrive avec les Frappes plus rapprochés."
};
pack["220833"] = bos; -- Fauche-rêve
pack["220864"] = bos; -- Tisserand

pack["221394"] = { "Avatar d’Hakkar", -- (ère SoD, bande à 10)
	"* Le dieu serpent du remake, en deux étapes : d'abord le rituel, puis la bête.",
	"* Étape de l'esprit : les Chaînes d'esprit (|cff71d5ff|Hspell:443975|h[Chaînes d'esprit]|h|r) marquent un joueur avec un tirage — l'entravé SE DÉGAGE — et le Hurlement effrayant (|cff71d5ff|Hspell:443990|h[Hurlement effrayant]|h|r) est TOUJOURS interrompu, pendant que les gardes de sang Hakkari tombent avec le rite.",
	"* Étape de la bête : Nova de sang (|cff71d5ff|Hspell:444050|h[Nova de sang]|h|r) toutes les ~8 s, le Sang corrompu (|cff71d5ff|Hspell:444253|h[Sang corrompu]|h|r) saute de joueur en joueur — le marqué SE DÉGAGE —, Folie (|cff71d5ff|Hspell:444039|h[Folie]|h|r) sur un marqué, Malédiction des langues (|cff71d5ff|Hspell:444046|h[Malédiction des langues]|h|r) (maléfice) et le Puiser le sang (|cff71d5ff|Hspell:444132|h[Puiser le sang]|h|r) : celui qui porte le Sang corrompu se place devant le tank."
};

-- Jammal'an et Ogom (ère SoD) : paire du hall, deux étapes.
bos = { "Jammal’an et Ogom",
	"* La paire du hall du remake : les deux trolls se dévorent entre eux et le survivant s'empare du pouvoir.",
	"* Étape 1 : Châtiment (437805) TOUJOURS interrompu ; Nova sacrée (437817) s'esquive en rayon et son Feu sacré (437809) (magie) tombe à cadence ; Fouet mortel (437847) sur le tank et Faiblesse atroce (437868) sur le groupe.",
	"* Étape 2 (le dévoré tombe) : Jammal’an avec Cris psychiques (437928) (peur), son Sermon d'ombre : Douleur (437927) (magie), Mot de pouvoir : Bouclier (437930) (se dissipe) et Pénitence de masse (437921) ; Ogom avec Marteaux de la Justice (437915) (étourdissement), Consécration (437884) — on sort du sol — et Tempête divine (437920) (cast de 1,5 s)."
};
pack["218721"] = bos; -- Jammal'an
pack["218718"] = bos; -- Ogom

-- Morphaz et Hazzas (ère SoD) : paire de drakonid de la fosse.
bos = { "Morphaz et Hazzas",
	"* La paire de drakonid de la fosse du remake : le plus long combat du temple SoD.",
	"* Le Souffle corrompu (|cff71d5ff|Hspell:446487|h[Souffle corrompu]|h|r) S'EMPILE sur le tank et les Flammes animées (|cff71d5ff|Hspell:446661|h[Flammes animées]|h|r) surgissent du sol.",
	"* L'étape passe par le Rêve lucide : le premier canal de ~20 s (|cff71d5ff|Hspell:445235|h[Rêve lucide]|h|r) emmène le groupe dans le Rêve d'émeraude — les flammes tombent à mi-canal ; le second canal (4 s) arrive déjà relancé et après lui son Sommeil éternel (|cff71d5ff|Hspell:446144|h[Sommeil éternel]|h|r) de 30 s tue tout le monde si le groupe ne fuit pas par le portail à temps."
};
pack["221942"] = bos; -- Morphaz
pack["221943"] = bos; -- Hazzas

pack["218571"] = { "Ombre d’Eranikus", -- (ère SoD, bande à 10)
	"* Le chef final du remake : le drakonid vert du Rêve d'émeraude dans la fosse.",
	"* Le Souffle corrosif (|cff71d5ff|Hspell:437353|h[Souffle corrosif]|h|r) punit le tank — on change par provocation après le cast — et le Sommeil profond (|cff71d5ff|Hspell:437301|h[Sommeil profond]|h|r) balaie la salle à cadence.",
	"* Son Cauchemar éveillé (|cff71d5ff|Hspell:437398|h[Cauchemar éveillé]|h|r) toutes les ~66 s est létal : on court VERS l'endroit du Sommeil profond et hors du sol punitif.",
	"* Son Poison léthargique (|cff71d5ff|Hspell:437390|h[Poison léthargique]|h|r) est du poison (on le purge) ; à 70% et 40% ses sbires du Rêve sortent (ils se marquent) et leur Poison léthargique canalisé (|cff71d5ff|Hspell:437425|h[Poison léthargique]|h|r) est TOUJOURS interrompu, comme le Hurlement (|cff71d5ff|Hspell:445498|h[Hurlement]|h|r)."
};

-- ======================== --
-- Zul'Gurub : Zone 309 (bande classique) --
-- ======================== --
-- Pas d'instance dans le journal (comme le Monastère) : pas de corpus, et
-- les noms élément-1 restent PROVISOIRES tant que le client ne confirme pas ;
-- les CIDs sortent des modules VanillaZG du DBM-Raids-Vanilla. La bande se
-- ferme avec la fiche Wowhead classique du propriétaire (Mandokir et Ohgan
-- 2026-10) et le reste au kit du DBM ; L'AUTEL DE LA FOLIE (15083) reste
-- DEHORS : un seul id DBM pour quatre trolls variables sans nom sûr — à
-- demander au propriétaire. Nota : zonas[309] est commentée dans _zonas —
-- à curer à la main à la fermeture de la bande.

pack["11382"] = { "Seigneur de sang Mandokir", -- (ère classique, optionnel ; kit du propriétaire)
	"* Le seigneur de sang de la plateforme : combat à deux unités, et le raptor Ohgan (14988) porte sa propre entrée.",
	"* Ses Charges (pas d'id vérifié) accrochent les joueurs lointains (8-30 m) : un chasseur placé loin les encaisse avec Faire le mort, ou un distance désigné prend le coup.",
	"* Son Tourbillon punit le contact : on sort du rayon dès qu'il démarre.",
	"* Son Regard menaçant (|cff71d5ff|Hspell:24314|h[Regard menaçant]|h|r) marque un joueur 6 s : STOP total (sorts, dégâts et déplacements) sinon c'est un coup mortel !",
	"* Toutes les 3 MORTS de joueurs (esprits enchaînés), taille et dégâts montent : ne pas mourir fait partie de la tactique.",
	"* À la chute d'Ohgan, sa Frénésie (|cff71d5ff|Hspell:24318|h[Frénésie]|h|r) d'une minute retombe dessus — on décide AVANT : abattre le raptor d'abord et encaisser la frénésie avec des soins lourds, ou le garer à part avec son tank et le tuer à la fin."
};

pack["14988"] = { "Ohgan", -- (ère classique, raptor-monture de Mandokir ; kit du propriétaire)
	"* Le raptor de Mandokir : au démarrage du combat son cavalier descend et ils se séparent — son tank l'écarte du groupe.",
	"* Sa Blessure mortelle (|cff71d5ff|Hspell:16856|h[Blessure mortelle]|h|r) s'empile au tank : rotation de deux tanks.",
	"* Sa mort ENRAGE Mandokir une minute — la stratégie se décide avant l'ouverture (voir l'entrée du Seigneur de sang Mandokir)."
};

pack["14507"] = { "Grand prêtre Venoxis", -- (bande classique)
	"* Il commence en prêtre des Ombres : son Renouveler (|cff71d5ff|Hspell:23895|h[Renouveler]|h|r) va SUR LUI et SE PURGE (sinon il se soigne sans relâche) ; son Feu sacré (|cff71d5ff|Hspell:23860|h[Feu sacré]|h|r) part sur les joueurs — magie, on purge ou on coupe.",
	"* À ~55% il se mue en serpent (|cff71d5ff|Hspell:23849|h[Forme de serpent]|h|r) et ouvre sa phase finale.",
	"* Ensuite il sème sa Nuage toxique (|cff71d5ff|Hspell:23861|h[Nuage toxique]|h|r), 10 s au sol : on sort du jet.",
	"* Son venin de serpent (|cff71d5ff|Hspell:23865|h[Venin de serpent]|h|r) marque un joueur : on purge ou on encaisse soigneusement."
};

pack["14517"] = { "Grande prêtresse Jeklik", -- (bande classique)
	"* Le Soins supérieurs (|cff71d5ff|Hspell:23954|h[Soins supérieurs]|h|r) se COUPE toujours (~20 s de recharge).",
	"* Son Explosion sonore (|cff71d5ff|Hspell:23918|h[Explosion sonore]|h|r) frappe le contact proche : magie, on purge ou on garde la distance.",
	"* Sa Panique (|cff71d5ff|Hspell:22884|h[Panique]|h|r) disperse le voisinage 4 s : le contact s'écarte en la voyant venir.",
	"* Le Mot de douleur (|cff71d5ff|Hspell:23952|h[Mot de douleur]|h|r) est une magie de dégâts continus : à purger.",
	"* À mi-vie elle atterrit avec une nuée de chauves-souris : on nettoie à l'AoE et le DPS continue."
};

pack["14510"] = { "Grande prêtresse Mar'li", -- (bande classique)
	"* Son Agrandir (|cff71d5ff|Hspell:24109|h[Agrandir]|h|r) la grossit et la durcit : magie qu'on lui ENLÈVE par dispel (avertissement critique).",
	"* Son Drain de vie (|cff71d5ff|Hspell:24300|h[Drain de vie]|h|r) tape un joueur : magie, et elle se soigne à même le drain — purger vite.",
	"* Sa Corrosion (|cff71d5ff|Hspell:24111|h[Corrosion]|h|r) colle 30 s au joueur : poison, à purger.",
	"* Sa Salve de poison (|cff71d5ff|Hspell:24099|h[Salve de poison]|h|r) castigue tout le monde : antidotes et soins prêts.",
	"* Elle convoque des araignées (|cff71d5ff|Hspell:24083|h[Invoquer des araignées]|h|r) : on balaie à l'AoE sans abandonner le boss."
};

pack["14515"] = { "Grande prêtresse Arlokk", -- (bande classique)
	"* Sa Marque (|cff71d5ff|Hspell:24210|h[Marque d'Arlokk]|h|r) pointe un joueur (avertissement critique si c'est toi).",
	"* Elle se Évapore (|cff71d5ff|Hspell:24223|h[Évaporation]|h|r) peu après le pull — elle revient sur un joueur ; le contact la refixes en frappant.",
	"* Le Mot de douleur (|cff71d5ff|Hspell:24212|h[Mot de douleur]|h|r) est magique : à purger."
};

pack["14509"] = { "Grand prêtre Thekal", -- (bande classique, trio avec ses zélotes)
	"* Le combat se joue à trois : ses deux zélotes, Lor'Khan (11348, soigneur) et Zath (11347, voleur).",
	"* On descend TOUT le monde à presque mort en même temps : quand les trois tombent en rafale ils font les morts, et Thekal se réveille ~15 s plus tard en tigre avec des sbires — la tache s'ouvre en martelant les trois ensemble.",
	"* Les soins (|cff71d5ff|Hspell:24208|h[Soins supérieurs]|h|r) se COUPENT toujours (lui et Lor'Khan).",
	"* Zath laisse le contact aveuglé (|cff71d5ff|Hspell:21060|h[Aveugler]|h|r) et étourdi (|cff71d5ff|Hspell:12540|h[Étourdir]|h|r) — maîtrise sur lui."
};

pack["15114"] = { "Gahz'ranka", -- (bande classique, boss optionnel de pêche)
	"* Optionnel : il jaillit du trou de pêche du marais avec le bon appât.",
	"* Son Souffle de givre (|cff71d5ff|Hspell:16099|h[Souffle de givre]|h|r) sort en cône vers l'avant : personne ne croise le jet.",
	"* Son Geyser (|cff71d5ff|Hspell:22421|h[Geyser]|h|r) envoie en l'air ceux qui piétinent l'eau : on se bat au bord."
};

pack["11380"] = { "Jin'do le Sorcier", -- (bande classique)
	"* Son Illusion (|cff71d5ff|Hspell:24306|h[Illusion de Jin'do]|h|r) ment au marqué — il voit des fantômes qui n'existent pas : on purge (dispel de malédiction).",
	"* Son Lavage de cerveau (|cff71d5ff|Hspell:24261|h[Lavage de cerveau]|h|r) asservit un joueur : malédiction, à retirer TOUT DE SUITE.",
	"* Son Maléfice (|cff71d5ff|Hspell:17172|h[Maléfice]|h|r) fige un joueur 5 s : magie, on dispele.",
	"* Ses TOTEMS à briser TOUT DE SUITE : le Totem de guérison (|cff71d5ff|Hspell:24309|h[Totem de guérison]|h|r) le ressoigne sans arrêt et le Totem de lavage (|cff71d5ff|Hspell:24262|h[Totem de lavage de cerveau]|h|r) lave les cerveaux alentour.",
	"* Sa Bannissement (|cff71d5ff|Hspell:24466|h[Bannissement]|h|r) sort un joueur du combat quelques secondes — on tient."
};

pack["14834"] = { "Hakkar le Fléau des âmes", -- (bande classique, boss final)
	"* Son Siphon de sang (|cff71d5ff|Hspell:24324|h[Siphon de sang]|h|r) toutes les 90 s draine TOUTE la bande et le soigne — c'est la course du DPS : vaincre avant que les drains ne taillent la bande en pièces.",
	"* Son Insanité (|cff71d5ff|Hspell:24327|h[Insanité]|h|r) arrive toutes les ~21 s et rend fou un joueur 10 s : tenu à l'écart des rangs, ça retombe seul.",
	"* Son Sang corrompu (|cff71d5ff|Hspell:24328|h[Sang corrompu]|h|r) saute entre joueurs : purger dès qu'il marque.",
	"* Mode dur (les prêtres de la bande vivants) : les Aspects tournent en boucle — Celui de Jeklik (|cff71d5ff|Hspell:24687|h[Aspect de Jeklik]|h|r) fait taire les casters, celui de Venoxis (24688) sème du poison, celui de Mar'li (24686) draine, celui d'Arlokk (24690) marque, et celui de Thekal (|cff71d5ff|Hspell:24689|h[Aspect de Thekal]|h|r) le fait RUGIR — celui-là on le PURGE de lui (dispel de frénésie, avertissement critique). Tuer les prêtres avant désactive TOUS les Aspects.",
	"* Dans le remake SoD les Aspects arrivent TOUJOURS (toutes les 20 s, ordre aléatoire).",
	"* À ~9:45 il lâche la frénésie finale sans frein : le combat ne peut pas dépasser 10 minutes."
};

pack["15082"] = { "Gri'lek", -- (ère classique, Coin de la Folie ; fiches du propriétaire 2026-10)
	"* Il s'invoque sur le brasier du Coin avec la potion Folie de mojo gurubashi à sa quinzaine ; à sa chute il lâche son Sang de Gri'lek pour les bijoux de classe de ZG.",
	"* Son Avatar (|cff71d5ff|Hspell:24646|h[Avatar]|h|r) l'ENGRAISSE, efface la menace du tank et fait décoller ses dégâts physiques — et il marche PLUS LENTEMENT : celui qui est épinglé court hors de son rayon jusqu'à ce qu'il rétrécisse à nouveau."
};
pack["15083"] = { "Hazza'rah", -- (ère classique, Coin de la Folie ; fiches du propriétaire 2026-10)
	"* Le brasier du Coin invoque le troll ACTIF de la rotation de deux semaines avec la potion Folie de mojo gurubashi (alchimie : 1 Sang de héros, 1 Mojo massif, 6 Mojo puissant, 1 Lotus noir) ; à sa chute il lâche son réactif pour les bijoux de classe de ZG (ici, le Fil des rêves de Hazza'rah).",
	"* Ses Illusions de cauchemar (|cff71d5ff|Hspell:24728|h[Illusion de cauchemar]|h|r) sont des copies lentes avec peu de vie mais des coups à plus de 5 000 : on les tue SUR LE CHAMP (un instantané suffit) — priorité maximale du combat.",
	"* Son Brûlure de mana en chaîne (|cff71d5ff|Hspell:24684|h[Brûlure de mana]|h|r) draine la bande en chaîne — il ne porte presque pas de mana (environ 5 000), donc les chasseurs avec Piqûre de vipère et les démonistes avec Drain de mana le laissent SEC et la technique s'annule d'elle-même.",
	"* Son Sommeil (|cff71d5ff|Hspell:24664|h[Sommeil]|h|r) est de zone, 6 s : la bande s'étale et personne ne ronfle en plein raid.",
	"* Ses compagnons de rotation Gri'lek, Renataki et Wushoolay ont leur propre entrée : le brasier n'appelle que le troll actif de la quinzaine."
};
pack["15084"] = { "Renataki", -- (ère classique, Coin de la Folie ; fiches du propriétaire 2026-10)
	"* Il s'invoque sur le brasier du Coin avec la potion Folie de mojo gurubashi à sa quinzaine ; à sa chute il lâche sa Dent de Renataki pour les bijoux de classe de ZG.",
	"* Il s'Évapore (|cff71d5ff|Hspell:24699|h[Évaporation]|h|r) et réapparaît sur une cible avec un coup MORTEL : l'AoE le démasque et les FAMILIERS le suivent même camouflé."
};
pack["15085"] = { "Wushoolay", -- (ère classique, Coin de la Folie ; fiches du propriétaire 2026-10)
	"* Il s'invoque sur le brasier du Coin avec la potion Folie de mojo gurubashi à sa quinzaine ; à sa chute il lâche sa Crinière de Wushoolay pour les bijoux de classe de ZG.",
	"* Sa Chaîne d'éclairs frappe en cône FRONTAL (pas d'id vérifié) : le contact reste DERRIÈRE lui en permanence.",
	"* Il sème des Nuages d'éclairs (|cff71d5ff|Hspell:24683|h[Nuage d'éclairs]|h|r) de 15 s au sol : en sortir AUSSITÔT ou la bande se fait croquer."
};

-- Scholomance classique : Zone 289 --
-- Pas d'instance dans le journal (corpus absent, comme le Monastère) : noms
-- element-1 vérifiés par le propriétaire via Wowhead 2026-10 (13/13). Kit du DBM
-- Shared\Scholomance_Old (13 CID ; seuls Gandling 17950 et Alexei 17820
-- portent des alertes) + la fiche du propriétaire par clavardage 2026-10 ;
-- le reste, des combats plats.
-- Attention : le message du propriétaire portait des paires nom-id croisées
-- (Krastinov/10507, Polkelt/10503, Vectus/Marduk échangés) et le tableau des
-- noms répétait le croisement (10507/11261 et 10432/10433) ; les CID du DBM
-- font foi.

pack["10506"] = { "Kirtonos le Héraut", -- (ère classique)
	"* On l'obtient au balcon en posant le Sang des innocents (des créatures de l'entrée) sur son piédestal.",
	"* En forme de gargouille il lâche une malédiction qui assèche les dégâts infligés : malédiction à purger aussitôt.",
	"* Son renversement jette du monde dans le vide du balcon : le tank le place DOS au groupe et loin du rebord."
};
pack["10505"] = { "Instructrice Malicia", -- (ère classique)
	"* Elle fait cours entourée d'élèves morts-vivants : l'AoE (et l'Enchaînement des morts-vivants) nettoie les vagues dès qu'elles sortent.",
	"* Ses soins, TOUJOURS coupés."
};
pack["11622"] = { "Cliqueteur", -- (ère classique)
	"* Le géant de l'ossuaire arrive entouré de squelettes : la garde se nettoie avant lui.",
	"* Il frappe en balayage — PERSONNE devant lui à part le tank.",
	"* Il laisse tomber la menace du tank en boucle : les DPS ralentissent au lieu de lui voler l'aggro."
};
pack["10503"] = { "Jandice Barov", -- (ère classique)
	"* Elle se duplique en illusions identiques : le groupe chasse le corps RÉEL (ou écrase les copies à l'AoE) avant que les dégâts cumulés ne fondent le soigneur."
};
pack["10504"] = { "Seigneur Alexei Barov", -- (ère classique)
	"* Il arrive avec deux gardes : les tuer d'abord, sinon l'aggro se scinde en deux.",
	"* Son Voile d'ombre (|cff71d5ff|Hspell:17820|h[Voile d'ombre]|h|r) est une MALÉDICTION qui coupe les soins reçus de 75% : à purger aussitôt (le DBM annonce la cible)."
};
pack["10507"] = { "Le Ravanien", -- (ère classique)
	"* Le géant goule de la crypte : des coups BRUTAUX sur le tank — les soins restent collés à lui pendant tout le combat."
};
pack["11261"] = { "Docteur Theolen Krastinov", -- (ère classique)
	"* Le Boucher : mélée sans pause ; furieux, il passe en FRÉNÉSIE, dégâts et vitesse en fusée — tank en défensives, soins prioritaires pendant la durée."
};
pack["10502"] = { "Lady Illucia Barov", -- (ère classique)
	"* Contrôle l'ESPRIT d'un joueur : étourdir, effrayer ou métamorphoser SANS tuer le contrôlé.",
	"* Son Trait de l'ombre est TOUJOURS interrompu ; son silence de zone pousse lanceurs et soigneurs derrière le tank."
};
pack["10901"] = { "Conservateur Polkelt", -- (ère classique)
	"* Il s'ouvre avec des sbires de part et d'autre : on les nettoie d'abord, puis lui.",
	"* Il sème des flaques d'acide et de venin au sol : on n'y marche pas, et ses toxines se dissipent vite."
};
pack["10433"] = { "Marduk Noir-étang", -- (ère classique)
	"* Dans la classe de nécromancie, à côté de Vectus : engager doucement pour ne pas attraper les deux à la fois ; ses invocations squelettiques se nettoient vite."
};
pack["10432"] = { "Vectus", -- (ère classique)
	"* L'autre de la classe de nécromancie : lanceur plat — ses sbires et fragments d'âme se nettoient à la vue."
};
pack["10508"] = { "Ras Murmure-de-givre", -- (ère classique)
	"* Liche du givre : sa Nova gèle le contact — on prend le coup, on recule, on frappe entre rafales.",
	"* Son Armure du givre ralentit ses attaquants, et sa Poussée du givre envoie le tank au loin et efface la menace : le tank revient tranquillement, personne ne le dépasse."
};
pack["1853"] = { "Sombre maître Gandling", -- (ère classique)
	"* Son Portail des ombres (|cff71d5ff|Hspell:17950|h[Portail des ombres]|h|r) ENFERME un joueur dans l'une des salles verrouillées, pleines d'élèves (l'alerte signale l'incantation, pas la cible).",
	"* L'isolé se bat SEUL contre les élèves de sa salle jusqu'à ouvrir la porte ; le reste encaisse ses Trait de l'ombre et continue sans arrêter le DPS.",
	"* Ça se répète jusqu'à sa chute : horloge DPS pendant que les salles recrachent du monde."
};

-- Stratholme classique : Zone 329 --
-- Pas d'instance au journal (corpus absent) : noms element-1 vérifiés via
-- DBM-Party-Vanilla\Classic + BigWigs Encounters_Classic + Wowhead du patron ;
-- provisoires seulement ceux flagged. Kits du DBM Shared\Stratholme et de
-- LittleWigs_Classic\Stratholme (15 CIDs) : aile Écarlate et aile mort-vivante.

pack["10516"] = { "L'Impardonnable", -- (ère classique)
	"* Le fantôme du portail : combat plat ; sa Nova de givre (|cff71d5ff|Hspell:14907|h[Nova de givre]|h|r) gèle le contact — on s'écarte et on revient frapper."
};
pack["11032"] = { "Malor le Zélé", -- (ère classique)
	"* Son Choc terrestre (|cff71d5ff|Hspell:12734|h[Choc terrestre]|h|r) cogne en zone et ÉTOURDIT 2 s — les distants prennent de la distance et soins collés au tank ; son Coup au crâne (|cff71d5ff|Hspell:16172|h[Coup au crâne]|h|r) châtie le tank.",
	"* Sa Lumière sacrée (|cff71d5ff|Hspell:15493|h[Lumière sacrée]|h|r) TOUJOURS interrompue : il se soigne lui-même."
};
pack["10808"] = { "Timmy le Cruel", -- (ère classique)
	"* L'abomination géante : sa Griffe vorace (|cff71d5ff|Hspell:17470|h[Griffe vorace]|h|r) frappe en frontal et il SE SOIGNE — seul le tank devant ; à 50% il SE MET EN RAGE (|cff71d5ff|Hspell:8599|h[Enrager]|h|r) — DPS plus rapides que la furie."
};
pack["10997"] = { "Maître des canons Willey", -- (ère classique)
	"* Depuis le créneau : son artillerie tombe en zones et il convoque des fusiliers réanimés (|cff71d5ff|Hspell:17279|h[Fusilier réanimé convoqué]|h|r) en vagues : à nettoyer dès l'arrivée.",
	"* Son Renversement (|cff71d5ff|Hspell:10101|h[Renversement]|h|r) catapulte le tank au loin : il revient tranquillement, personne ne le dépasse."
};
pack["10558"] = { "Oiseleur Forresten", -- (ère classique)
	"* Sa Berceuse enchanteuse (|cff71d5ff|Hspell:16798|h[Berceuse enchanteuse]|h|r) endort la bande DE ZONE : TOUJOURS interrompue.",
	"* Son Cri démoralisant (|cff71d5ff|Hspell:16244|h[Cri démoralisant]|h|r) affaiblit le contact ; le reste, plat."
};
pack["10811"] = { "Archiviste Galford", -- (ère classique)
	"* L'instructeur du feu : sa Nova de feu (|cff71d5ff|Hspell:17366|h[Nova de feu]|h|r) cogne TOUT autour de lui — le contact se glisse dehors pour frapper.",
	"* Ses Vents ardents (|cff71d5ff|Hspell:17293|h[Vents ardents]|h|r) tombent sur un joueur : la bande s'étale.",
	"* Son Explosion pyro (|cff71d5ff|Hspell:17274|h[Explosion pyro]|h|r) TOUJOURS interrompue."
};
bos = { "Balnazzar", -- (ère classique ; le combat ouvre comme Grand Croisé Dathrohan)
	"* Le combat ouvre comme Grand Croisé Dathrohan avec son Marteau du croisé (|cff71d5ff|Hspell:17286|h[Marteau du croisé]|h|r) ; à mi-chemin il SE MUE en démon Balnazzar.",
	"* Balnazzar : son Sommeil (|cff71d5ff|Hspell:12098|h[Sommeil]|h|r) est MAGIE — à dissiper ; son Fracasse-cervelle (|cff71d5ff|Hspell:17287|h[Fracasse-cervelle]|h|r) cogne un lanceur et son Cri psychique (|cff71d5ff|Hspell:13704|h[Cri psychique]|h|r) panique la bande — étalée pour que la panique ne se chaîne pas."
};
pack["10812"] = bos;
pack["10813"] = bos;
pack["11143"] = { "Postier Malown", -- (ère classique)
	"* Optionnel de la place du marché (il garde le courrier) : sa Gifle (|cff71d5ff|Hspell:6253|h[Gifle]|h|r) étourdit et sa Malédiction de faiblesse (|cff71d5ff|Hspell:12741|h[Malédiction de faiblesse]|h|r) est une malédiction à dissiper."
};
pack["10435"] = { "Magistrat Barthilas", -- (ère classique)
	"* Son Piétinement de foule (|cff71d5ff|Hspell:10887|h[Piétinement de foule]|h|r) cogne le contact : la bande s'étale.",
	"* Sa Fureur (|cff71d5ff|Hspell:16791|h[Fureur]|h|r) s'accumule TRÈS VITE en classique : les DPS ne traînent pas.",
	"* Son Coup puissant (|cff71d5ff|Hspell:14099|h[Coup puissant]|h|r) châtie le tank avec les soins collés.",
	"* Il COURT au fond de la salle dès qu'on l'engage : les packs alentour, nettoyés AVANT."
};
pack["10437"] = { "Nerub'enkan", -- (ère classique)
	"* L'araignée géante convoque des scarabées mort-vivants (|cff71d5ff|Hspell:17235|h[Réveil d'un scarabée mort-vivant]|h|r) sans relâche : l'AoE les balaie.",
	"* Son Perce-armure (|cff71d5ff|Hspell:6016|h[Perce-armure]|h|r) laisse le tank SANS blindage : défensives ou second tank.",
	"* Ses Toiles enveloppantes (|cff71d5ff|Hspell:4962|h[Toiles enveloppantes]|h|r) nouent un joueur un moment : les soins couvrent et le combat suit."
};
pack["10436"] = { "Baronne Anastari", -- (ère classique)
	"* POSSÈDE un joueur (|cff71d5ff|Hspell:17244|h[Possession]|h|r) : le possédé frappe la bande — on le descend À LA MOITIÉ DE VIE pour le libérer, sans le tuer.",
	"* Son Silence (|cff71d5ff|Hspell:18327|h[Silence]|h|r) est de zone : étalés pour qu'il ne mange pas tout le monde.",
	"* Sa Malédiction de banshee (|cff71d5ff|Hspell:16867|h[Malédiction de banshee]|h|r) est une malédiction qui COUPE LES SOINS du marqué : à dissiper VITE."
};
pack["10438"] = { "Maleki le Blafard", -- (ère classique)
	"* Son Tombeau de glace (|cff71d5ff|Hspell:16869|h[Tombeau de glace]|h|r) gèle un joueur quelques secondes : les soins couvrent et le combat ne s'arrête pas.",
	"* Son Drain de vie (|cff71d5ff|Hspell:17620|h[Drain de vie]|h|r) aspire un joueur — soins attentifs.",
	"* Ses volées de givre ralentissent le distant et lui volent son mana."
};
pack["10439"] = { "Ramstein Grandgosier", -- (ère classique)
	"* Celui qui précède la salle du Baron : coups BRUTAUX au tank avec soins soutenus ; son K.-o. (|cff71d5ff|Hspell:17307|h[K.-o.]|h|r) ÉTOURDIT toute la bande et son Piétiner (|cff71d5ff|Hspell:5568|h[Piétiner]|h|r) châtie le contact.",
	"* À sa chute, la marée de gardes mort-vivants de la place se déchaîne : on se groupe et on les balaie avant le Baron."
};
pack["10440"] = { "Baron Vaillefendre", -- (ère classique)
	"* Le baron final : son Réveil des morts (|cff71d5ff|Hspell:17473|h[Réveil des morts]|h|r) appelle des squelettes qui MARCHENT vers lui et le soignent au contact, et ~12 s après il finit avec Pacte de la mort (|cff71d5ff|Hspell:17471|h[Pacte de la mort]|h|r) — l'AoE les écrase de loin AVANT.",
	"* Sa Bombe d'ombre (|cff71d5ff|Hspell:17434|h[Bombe d'ombre]|h|r) tombe sur un joueur : la bande s'étale.",
	"* Son aura impie mord quiconque approche et applique Blessures mortelles au tank : soins constants sur la bande."
};

-- Dire Maul : Zona 429 (ère classique) --
-- Noms element-1 du corpus journal 4 langues, ordre du journal ; kits du
-- DBM Shared\DireMaul et du LittleWigs_Classic\DireMaul.
pack["11489"] = { "Tendris Crochebois", -- (era clásica)
	"* L'arbre ancien : ses Lianes (|cff71d5ff|Hspell:22924|h[Lianes]|h|r) tissent et ses racines (|cff71d5ff|Hspell:22994|h[Enchevêtrer]|h|r) ATTRAPENT la mêlée — on les purge (magie et mouvement).",
	"* Son Piétiner (|cff71d5ff|Hspell:5568|h[Piétiner]|h|r) châtie le contact."
};
pack["11488"] = { "Illyanna Corvichêne", -- (era clásica)
	"* L'archère : sa Charge (|cff71d5ff|Hspell:22911|h[Charge]|h|r) vole au plus lointain et personne ne se pose sur le Piège d'immolation (|cff71d5ff|Hspell:22910|h[Piège d'immolation]|h|r).",
	"* Le Tir de concussion (|cff71d5ff|Hspell:22914|h[Tir de concussion]|h|r) ralentit et sa Volée (|cff71d5ff|Hspell:30933|h[Volée]|h|r) frappe en zone : la bande s'étale."
};
pack["11487"] = { "Magistère Kalendris", -- (era clásica)
	"* Le magistère : à 50% il prend la Forme d'ombre (|cff71d5ff|Hspell:22917|h[Forme d'ombre]|h|r) et frappe plus fort.",
	"* Son Esprit dominateur (|cff71d5ff|Hspell:7645|h[Esprit dominateur]|h|r) VOLE un joueur : on purge la magie sur lui."
};
pack["11496"] = { "Immol'thar", -- (era clásica)
	"* Le démon prisonnier des cinq pylônes : il se LIBÈRE quand les pylônes explosent — la salle entière est l'arène.",
	"* Ses Yeux (|cff71d5ff|Hspell:22899|h[Yeux d'Immol'thar]|h|r) brûlent un joueur et le Piétiner (|cff71d5ff|Hspell:5568|h[Piétiner]|h|r) balaie la mêlée.",
	"* Il ouvre des Portails (|cff71d5ff|Hspell:22950|h[Portail d'Immol'thar]|h|r) qui crachent des sbires : AoE sur le cercle pendant que le tank tient."
};
pack["11486"] = { "Prince Tortheldrin", -- (era clásica)
	"* Le prince qui garde les pylônes : son escorte tombe d'abord, lui ensuite.",
	"* Ses Invocations (|cff71d5ff|Hspell:22995|h[Invocation]|h|r) peuplent la salle et le Coup tournoyant (|cff71d5ff|Hspell:67037|h[Coup tournoyant]|h|r) frappe en zone — sortir."
};
pack["11492"] = { "Alzzin le Modeleur", -- (era clásica)
	"* Le métamorphe : il prend la Forme d'arbre (|cff71d5ff|Hspell:22688|h[Forme d'arbre]|h|r) puis la Forme de loup (|cff71d5ff|Hspell:22660|h[Forme de loup]|h|r) — le combat change de face à chaque mue.",
	"* Sa Régénération sauvage (|cff71d5ff|Hspell:7948|h[Régénération sauvage]|h|r) TOUJOURS coupable : si elle passe, il se gorge de vie.",
	"* Énerver (|cff71d5ff|Hspell:22661|h[Énerver]|h|r) et Mal (|cff71d5ff|Hspell:22662|h[Mal]|h|r) sont des MALADIES : le druide les purge.",
	"* L'Atroce déchiqueter (|cff71d5ff|Hspell:22689|h[Atroce déchiqueter]|h|r) saigne le tank, ses racines (|cff71d5ff|Hspell:22415|h[Racines emmêlantes]|h|r) clouent les distants et l'Expulser (|cff71d5ff|Hspell:10101|h[Expulser]|h|r) les soulève."
};
pack["14325"] = { "Capitaine Kromcrabouille", -- (era clásica)
	"* Capitaine de la garde de Gordok sans rappel journalisé — tank devant et bande aux aguets."
};
pack["14324"] = { "Cho'Rush l'Observateur", -- (era clásica)
	"* Le soigneur de la cour : ses soins ne portent pas d'alerte — COUPER à vue chaque incant verte.",
	"* Pour la course au tribut il vaut le LAISSER VIVANT : les gardes debout à la chute du roi enfle le coffre de Mizzle."
};
pack["14321"] = { "Garde Fengus", -- (era clásica)
	"* Garde de la cour sans rappel journalisé — bagarre franche derrière un tank solide sur des pulls propres."
};
pack["14326"] = { "Garde Mol'dar", -- (era clásica)
	"* Le Coup de bouclier (|cff71d5ff|Hspell:11972|h[Coup de bouclier]|h|r) coupe et la Charge de bouclier (|cff71d5ff|Hspell:15749|h[Charge de bouclier]|h|r) ÉCRASE le garde sur sa cible : distance et dos dégagé.",
	"* Ses Frappes (|cff71d5ff|Hspell:14516|h[Frappe]|h|r) marteautent le tank et à 50% il entre en Frénésie (|cff71d5ff|Hspell:8269|h[Frénésie]|h|r) : DPS costaud en fin."
};
pack["14323"] = { "Garde Slip'kik", -- (era clásica)
	"* Encore une garde de la cour sans rappel journalisé — mêlée au tank et zéro inattention."
};
pack["13280"] = { "Hydrogénos", -- (era clásica)
	"* La bombe d'eau du sanctuaire : sa Marée (|cff71d5ff|Hspell:22419|h[Marée]|h|r) cogne en zone — la mêlée s'étale.",
	"* Son Géyser (|cff71d5ff|Hspell:22421|h[Géyser]|h|r) éclate sous les pieds : on quitte la flaque.",
	"* A 66% et 33% il INVOQUE des hydrolings (|cff71d5ff|Hspell:22714|h[Invoquer un hydroling]|h|r) : AoE sur les sbires et retour au tank."
};
pack["11501"] = { "Roi Gordok", -- (era clásica)
	"* La Charge de berserker (|cff71d5ff|Hspell:22886|h[Charge de berserker]|h|r) expédie le repéré, sa Frappe mortelle (|cff71d5ff|Hspell:16856|h[Frappe mortelle]|h|r) ÉCRASE le tank (rotation à deux) et le Piétinement (|cff71d5ff|Hspell:16727|h[Piétinement]|h|r) étourdit en zone.",
	"* Son Exposer l'armure (|cff71d5ff|Hspell:15572|h[Exposer l'armure]|h|r) s'accumule sur le tank : soins costauds et attentifs.",
	"* Course au tribut : chaque garde VIVANT à sa chute enfle le coffre de Mizzle."
};
pack["14327"] = { "Lethtendris", -- (era clásica)
	"* Ses Rafales de démons (|cff71d5ff|Hspell:17228|h[Rafales de démons]|h|r) pleuvent en zone : la mêlée s'étale.",
	"* Ses malédictions (|cff71d5ff|Hspell:13338|h[Maléfaction d'épines]|h|r et |cff71d5ff|Hspell:16247|h[Maléfaction des langues]|h|r) à retirer et l'Immoler (|cff71d5ff|Hspell:11962|h[Immoler]|h|r) brûle le repéré.",
	"* Son diablotin Pimgib GROSSIT (|cff71d5ff|Hspell:22710|h[Grossir]|h|r, à purger), crache la Salve de flammes (|cff71d5ff|Hspell:22713|h[Salve de flammes]|h|r) qui S'ACCUMULE et son Onde de choc (|cff71d5ff|Hspell:15744|h[Onde de choc]|h|r) étend en zone."
};
pack["14322"] = { "Kreeg le Marteleur", -- (era clásica)
	"* L'ivrogne de la cour : son Crache-bibine (|cff71d5ff|Hspell:22833|h[Crache-bibine]|h|r) part en cône et son Piétinement (|cff71d5ff|Hspell:16740|h[Piétinement]|h|r) fait trembler en zone.",
	"* Le Tourbillon (|cff71d5ff|Hspell:15578|h[Tourbillon]|h|r) marteauta la mêlée et à 50% la Rage d'ivresse (|cff71d5ff|Hspell:22835|h[Rage d'ivresse]|h|r) l'ALLUME : soins prêts."
};
pack["11490"] = { "Zevrim Sabot-de-Ronce", -- (era clásica)
	"* Son Sacrifice (|cff71d5ff|Hspell:22651|h[Sacrifice]|h|r) attrape un joueur et ENVOIE un démon : défoncer le démon tout de suite pendant qu'on soigne le repéré.",
	"* La Douleur intense (|cff71d5ff|Hspell:22478|h[Douleur intense]|h|r) tabasse le repéré : soins.",
	"* Ses Rafales de démons (|cff71d5ff|Hspell:17228|h[Rafales de démons]|h|r) châtient en zone : la mêlée éparpille son dos."
};

-- Lower/Upper Blackrock Spire : Zona 229 (ère classique) --
-- 9 CIDs de LBRS + 9 d'UBRS (Rend partage son entrée avec Gyth 10339) ; kits du
-- DBM Shared\LowerBlackrockSpire et Classic\UpperBlackrockSpire ; noms du
-- corpus (journal pour LBRS ; dbm de l'ère pour UBRS).
pack["9196"] = { "Généralissime Omokk", -- (era clásica)
	"* L'ogre majeur de l'escalier : mêlée rude au tank, soins constants."
};
pack["9236"] = { "Chasseresse des ombres Vosh'gajin", -- (era clásica)
	"* La prêtresse des Ombres : ses décharges d'ombre châtient les distants — soins attentifs aux casters."
};
pack["9237"] = { "Maître de guerre Voone", -- (era clásica)
	"* Le maître de guerre : bagarre franche, tank ferme."
};
pack["10596"] = { "Matriarche Couveuse", -- (era clásica)
	"* La mère de la toile : sa cristallisation pétrifie quelqu'un de la bande et son venin mord la mêlée — soins attentifs."
};
pack["10584"] = { "Urok Hurleruine", -- (era clásica)
	"* Né du rite de l'autel de la caverne : l'invocation amène des essaims — AoE et mêlée nette avant de l'agripper."
};
pack["9736"] = { "Intendant Zigris", -- (era clásica)
	"* L'intendant : bagarre franche derrière un bon tank."
};
pack["10220"] = { "Halycon", -- (era clásica)
	"* La fille de la toile : mêlée au tank, sans rappel journalisé."
};
pack["10268"] = { "Gizrul l'esclavagiste", -- (era clásica)
	"* L'esclavagiste : mêlée au tank, sans rappel journalisé."
};
pack["9568"] = { "Seigneur Wyrmthalak", -- (era clásica)
	"* Le seigneur de l'antre : mêlée soutenue, soins constants."
};
pack["10363"] = { "General Drakkisath", -- (era clásica)
	"* Le général de l'aile Haute : sa Conflagration (|cff71d5ff|Hspell:16805|h[Conflagration]|h|r) embrase un joueur — le marqué quitte la bande TOUT DE SUITE tant que ça brûle."
};
pack["10899"] = { "Goraluk Anvilcrack", -- (era clásica)
	"* Le forgeron dragonien : combat plat avec bon tank."
};
pack["10509"] = { "Jed Runewatcher", -- (era clásica)
	"* L'observateur de runes : mêlée plate au tank."
};
pack["16042"] = { "Seigneur Valthalak", -- (era clásica)
	"* Le seigneur du rite : ses invocations (|cff71d5ff|Hspell:27249|h[Invocation d'assassin]|h|r) amènent des assassins — le tank les ramasse et la mêlée continue."
};
pack["9816"] = { "Pyrogarde Prophète ardent", -- (era clásica)
	"* Le gardien de la forge : une fois son rite ouvert il tombe comme les autres — bagarre franche."
};
pack["10264"] = { "Solakar Voluteflamme", -- (era clásica)
	"* Le seigneur de la couveuse : ouvrir les œufs fait sortir les essaims de dragonnets — AoE sur l'essaim et mêlée soutenue sur le boss."
};
pack["10430"] = { "La Bête", -- (era clásica)
	"* La Bête : son rugissement terrifie la bande et il frappe très dur au tank — soins constants."
};
bos = { "Chef de guerre Rend Main-noire", -- (era clásica; nom des modules — le client peut porter une autre graphie, à confirmer in-game)
	"* Le chef de guerre tombe avec son drake Gyth au combat : soins forts au tank et gare au feu du drake."
};
pack["10339"] = bos;
pack["10429"] = bos;

-- Onyxia's Lair : Zona 249 (ère classique) --
-- Kit du DBM-Raids-Vanilla\VanillaOnyxia (ids classiques) ; nom du corpus (journal).
pack["10184"] = { "Onyxia", -- (era clásica)
	"* Phase 1 au sol : son Souffle de flammes (|cff71d5ff|Hspell:18435|h[Souffle de flammes]|h|r) châtie le tank, son Coup d'aile (|cff71d5ff|Hspell:18500|h[Coup d'aile]|h|r) envoie la mêlée derrière et son Repousser (|cff71d5ff|Hspell:19633|h[Repousser]|h|r) casse la prise du tank.",
	"* Phase 2 en l'air : Boules de feu (|cff71d5ff|Hspell:18392|h[Boule de feu]|h|r) sur le marqué et ses Souffles profonds (|cff71d5ff|Hspell:17086|h[Souffle profond]|h|r) balaient la moitié de l'antre — l'avertissement du chat commande : on court au côté opposé.",
	"* Phase 3 à l'atterrissage : tout revient et, par-dessus, son Rugissement tonitruant (|cff71d5ff|Hspell:18431|h[Rugissement]|h|r) TERRIFIE la moitié de la bande ; les couvées des grottes montent — AoE sur l'essaim sans lâcher le fil du boss."
};

-- Molten Core : Zona 409 (ère classique) --
-- Kits du DBM-Raids-Vanilla\MC avec les ids classiques du module ; les Garr/Domo
-- SoD partagent le kit du remake. Le 227939 (« Le Cœur du Magma ») est l'événement
-- de bande du remake, PAS un boss : hors du pack (curation de _zonas à la main).
-- Les textes entre crochets sont de notre plume : en direct, la tooltip de l'id décide.
bos = { "Garr", -- (era clásica)
	"* Ses Entraves de magma (|cff71d5ff|Hspell:19496|h[Entraves de magma]|h|r) ENCHAÎNENT la zone : la mêlée relâche le rythme et revient ; son Immolation (|cff71d5ff|Hspell:15732|h[Immolation]|h|r) mord un joueur au feu soutenu.",
	"* L'Impulsion anti-magie (|cff71d5ff|Hspell:19492|h[Impulsion anti-magie]|h|r) EFFACE les bénéfices magiques de la bande : les boucliers se remettent après chaque impulsion.",
	"* Ses Esclaves du feu explosent en mourant (|cff71d5ff|Hspell:20506|h[Esclave du feu]|h|r) : la mêlée s'écarte des cadavres — AoE tenue jusqu'à les balayer tous."
};
pack["12057"] = bos;
pack["12099"] = bos;
pack["12118"] = { "Lucifron", -- (era clásica)
	"* Sa Condamnation imminente (|cff71d5ff|Hspell:19702|h[Condamnation imminente]|h|r) éclate sur toute la bande quelques secondes après sa chute : soins au maintien.",
	"* Sa malédiction (|cff71d5ff|Hspell:19703|h[Malédiction de Lucifron]|h|r) renchérit les sorts — maléfice à retirer vite ; les casters gardent une marge de mana.",
	"* Son Contrôle mental (|cff71d5ff|Hspell:20604|h[Contrôle mental]|h|r) prend un joueur : les entraves de la bande le coupent et le marqué tient sous soins."
};
pack["11982"] = { "Magmadar", -- (era clásica)
	"* Son souffle de lava sème la Panique (|cff71d5ff|Hspell:19408|h[Panique]|h|r) : le tank le décale de la bande ; les terrifiés courent vers le feu — soins attentifs.",
	"* Sa Frénésie (|cff71d5ff|Hspell:19451|h[Frénésie]|h|r) à santé basse fait grimper ses dégâts : le chasseur la calme au Tir tranquillisant ou le tank tient sous soins."
};
pack["12259"] = { "Gehennas", -- (era clásica)
	"* Sa malédiction (|cff71d5ff|Hspell:19716|h[Malédiction de Gehennas]|h|r) TRANCHE les soins — maléfice à retirer TOUT DE SUITE ; les casters pâtissent de la portée de ses pluies.",
	"* La Pluie de feu (|cff71d5ff|Hspell:19717|h[Pluie de feu]|h|r) tombe par zones : étalés ; son Poing (|cff71d5ff|Hspell:20277|h[Poing de Gehennas]|h|r) matraque le marqué.",
	"* Ses deux gardes d'ombre viennent avec lui : tank à part, AoE avec tête et personne ne déborde hors de la prise."
};
pack["12056"] = { "Baron Geddon", -- (era clásica)
	"* Son Enflammer le mana (|cff71d5ff|Hspell:19659|h[Enflammer le mana]|h|r) mord les casters et, si le mana se tarit, leur éclate dessus : les casters gèrent leur baril.",
	"* La BOMBE (|cff71d5ff|Hspell:20475|h[Enfer]|h|r) amorce un joueur pour l'exploser : le marqué file HORS de la bande avant le saut."
};
pack["12264"] = { "Shazzrah", -- (era clásica)
	"* Sa malédiction (|cff71d5ff|Hspell:19713|h[Malédiction de Shazzrah]|h|r) rend la bande fragile à la magie : maléfice à retirer.",
	"* Sa Magie éteinte (|cff71d5ff|Hspell:19714|h[Magie éteinte]|h|r) châtie les casters marqués : soins attentifs ; et son Contresort (|cff71d5ff|Hspell:19715|h[Contresort]|h|r) met au silence les lanceurs.",
	"* Il bondit à travers la bande (|cff71d5ff|Hspell:23138|h[Pas de Shazzrah]|h|r) : le tank le recouche sans perdre la prise."
};
pack["12098"] = { "Sulfuron", -- (era clásica)
	"* Ses 4 soigneurs de flammes passent AVANT : couper leurs soins à chaque poussée et ils tombent avant lui.",
	"* Son Inspirer (|cff71d5ff|Hspell:19779|h[Inspirer]|h|r) se retire sitôt qu'il court : le chasseur le tire ou on le purge.",
	"* La Main de Ragnaros (|cff71d5ff|Hspell:19780|h[Main de Ragnaros]|h|r) étourdit et éparpille en zone — étalés ; son Mot de douleur (|cff71d5ff|Hspell:19776|h[Mot de douleur]|h|r) et l'Immolation (|cff71d5ff|Hspell:20294|h[Immolation]|h|r) mordent le marqué sous soins."
};
pack["11988"] = { "Golemagg", -- (era clásica)
	"* Son Tremblement de terre (|cff71d5ff|Hspell:19798|h[Tremblement de terre]|h|r) ébranle la mêlée : la mêlée suit avec tête.",
	"* Les deux colères de lave viennent avec lui : le tank les tient à l'écart, on ne les chatouille pas et le DPS reste sur le boss."
};
pack["11502"] = { "Ragnaros", -- (era clásica)
	"* Sa Colère de Ragnaros (|cff71d5ff|Hspell:20566|h[Colère de Ragnaros]|h|r) châtie les premiers rangs : le tank tient sous soins et la mêlée ne se tasse pas.",
	"* Il COULE toutes les ~3 minutes : ses Fils de flamme sortent des profondeurs — le tank les décale et on les achève avant son retour (~90 s)."
};
bos = { "Chambellan Executus", -- (era clásica)
	"* Le Téléport (|cff71d5ff|Hspell:20534|h[Téléportation]|h|r) mélange TOUTE la bande de place : on se regroupe sans arrêter le DPS et la mêlée reprend sa place.",
	"* Le Bouclier de dégâts (|cff71d5ff|Hspell:21075|h[Bouclier de dégâts]|h|r) mord la mêlée qui court : la mêlée S'ARRÊTE tant que ça dure.",
	"* Ses flamewakers soignent et se protègent : couper leurs soins d'abord et l'achèvement tombe sur le chambellan à la fin."
};
pack["12018"] = bos;
pack["11663"] = bos;
pack["11664"] = bos;
bos = { "Garr", -- (remake SoD)
	"* Les mêmes Entraves de magma (19496), Immolation marquée (15732) et Impulsion anti-magie (19492) qu'à la classique : le remake frappe plus fort — soins et étalage au maintien.",
	"* Les Esclaves du feu explosent toujours en mourant : la mêlée s'écarte des cadavres."
};
pack["228432"] = bos;
pack["228834"] = bos;
bos = { "Chambellan Executus", -- (remake SoD)
	"* Le Téléport (20534) mélange la bande comme à la classique et son Bouclier de dégâts (21075) arrête la mêlée : mêmes réflexes, coups plus lourds.",
	"* Ses flamewakers soignent : couper leurs soins d'abord."
};
pack["228437"] = bos;
pack["228836"] = bos;
pack["228837"] = bos;

-- Blackwing Lair : Zona 469 (ère classique) --
-- Kits du DBM-Raids-Vanilla\BWL (ids classiques) ; noms du corpus (journal/dbm).
pack["12435"] = { "Tranchetripe l'Indompté", -- (era clásica)
	"* Phase 1 : la bande fait sauter les ŒUFS du corral un à un ; des vagues de sbires et de drakes entrent pendant ce temps — AoE avec tête et soins au tank.",
	"* Phase 2, les œufs finis, le boss tombe à l'ordinaire : sa Volée de boules de feu (|cff71d5ff|Hspell:22425|h[Volée de boules de feu]|h|r) châtie en zone et sa Conflagration (|cff71d5ff|Hspell:23023|h[Conflagration]|h|r) embrase le marqué — étalage et soins."
};
pack["13020"] = { "Vaelastrasz le Corrompu", -- (era clásica)
	"* Son Souffle de flammes (|cff71d5ff|Hspell:23461|h[Souffle de flammes]|h|r) martèle le tank : soins forts et rotation si ça mord.",
	"* L'Essence du Rouge (|cff71d5ff|Hspell:18173|h[Essence du Rouge]|h|r) baigne TOUTE la bande de mana et de célérité : le combat tourne à plein régime, le DPS ne perd pas une mesure."
};
pack["12017"] = { "Seigneur des couvées Lanistaire", -- (era clásica)
	"* Sa Onde dévastatrice (|cff71d5ff|Hspell:23331|h[Onde dévastatrice]|h|r) chasse à coups de pied quiconque le frôle : salle étalée et mêlée avec de la marge.",
	"* Le Repousser (|cff71d5ff|Hspell:18670|h[Repousser]|h|r) catapulte les proches et sa Blessure mortelle (|cff71d5ff|Hspell:24573|h[Blessure mortelle]|h|r) s'accumule au tank : deux tanks qui se passent le relais."
};
pack["11983"] = { "Gueule-de-feu", -- (era clásica)
	"* Sa Flamme d'ombre (|cff71d5ff|Hspell:22539|h[Flamme d'ombre]|h|r) balaie le front : les distants derrière les piliers coupent la ligne de vue.",
	"* La Volée de flammes (|cff71d5ff|Hspell:23341|h[Volée de flammes]|h|r) empile les dégâts magiques sur tout ce qui reste visible : on tient derrière le pilier, et le Coup d'aile (|cff71d5ff|Hspell:23339|h[Coup d'aile]|h|r) envoie le tank voler."
};
pack["14601"] = { "Rochébène", -- (era clásica)
	"* Sa Flamme d'ombre (22539) et le Coup d'aile (23339) copient Gueule-de-feu : derrière les piliers.",
	"* Son Ombre (|cff71d5ff|Hspell:23340|h[Ombre de Rochébène]|h|r) marque le tank : la marque posée, TOUT coup reçu SOIGNE le dragon — deux tanks et le relais dès que ça tourne."
};
pack["11981"] = { "Flamegor", -- (era clásica)
	"* Sa Flamme d'ombre (22539) et le Coup d'aile (23339) : le même jeu de piliers.",
	"* Sa Frénésie (|cff71d5ff|Hspell:23342|h[Frénésie]|h|r) se calme au Tir tranquillisant : le chasseur l'éteint dès qu'elle pointe."
};
pack["14020"] = { "Chromaggus", -- (era clásica)
	"* Ses deux souffles tournent au hasard dans la salle : chacun peint sa rue — la mêlée se replace selon celui qui tombe.",
	"* Les quatre Afflictions de couvée : la Rouge (|cff71d5ff|Hspell:23155|h[Mal de couvée : rouge]|h|r) est une MALADIE qui le SOIGNE si personne ne la purge ; la Verte (|cff71d5ff|Hspell:23169|h[Mal de couvée : vert]|h|r) est poison ; la Bleue (|cff71d5ff|Hspell:23153|h[Mal de couvée : bleu]|h|r) magie ; la Noire (|cff71d5ff|Hspell:23154|h[Mal de couvée : noir]|h|r) maléfice — purges de toutes les familles en salle.",
	"* Sa Frénésie (|cff71d5ff|Hspell:23128|h[Frénésie]|h|r) se calme au Tir tranquillisant et sa Rage (|cff71d5ff|Hspell:23537|h[Rage]|h|r) arrive à la fin : le DPS court contre la montre."
};
pack["11583"] = { "Nefarian", -- (era clásica)
	"* Phase 1 : des vagues de sbires tombent des parois latérales de la salle — le tank les tient et on les purge sans lâcher le fil.",
	"* Les Appels de classe arrivent toutes les ~30 s : chacun chahute une classe différente : lire l'annonce du chat et garder la tête froide.",
	"* Sa Flamme d'ombre (|cff71d5ff|Hspell:22539|h[Flamme d'ombre]|h|r) châtie le front et son Rugissement (|cff71d5ff|Hspell:22686|h[Rugissement]|h|r) TERRIFIE la bande : étalés, soins constants et tank ferme.",
	"* Phase 3 à l'atterrissage : les tas d'os lâchent des squelettes — AoE avec tête."
};

-- Ruines d'Ahn'Qiraj : Zona 509 (ère classique) --
-- Kits du DBM-Raids-Vanilla\AQ20 (ids classiques) ; noms du corpus (journal).
pack["15348"] = { "Kurinnaxx", -- (era clásica)
	"* Ses Pièges de sable (|cff71d5ff|Hspell:25656|h[Piège de sable]|h|r) avalent le marqué : le tank bouge quand la sienne tombe et soins au tombé.",
	"* Sa Blessure mortelle (|cff71d5ff|Hspell:25646|h[Blessure mortelle]|h|r) s'accumule au tank : deux tanks qui se passent le relais ; et sa Frénésie (|cff71d5ff|Hspell:26527|h[Frénésie]|h|r) au bout du fil : le DPS fait son affaire."
};
pack["15341"] = { "Général Rajaxx", -- (era clásica)
	"* Le défilé par VAGUES de la bannière : les premières avec leurs capitaines, la dernière avec le général lui-même — le tank ouvre chaque vague et on la purge en ordre.",
	"* Sa Collision de tonnerre (|cff71d5ff|Hspell:25599|h[Collision de tonnerre]|h|r) châtie en zone : étalés ; les nuées de peste souillent le sol — hors de la flaque."
};
pack["15340"] = { "Moam", -- (era clásica)
	"* Le siphon de mana de son aura serre les casters : siphons de mana et DPS attentif.",
	"* Sa Forme de pierre (|cff71d5ff|Hspell:25685|h[Forme de pierre]|h|r) fige son combat santé basse et réveille ses sbires : le DPS ACCÉLÈRE avant qu'il ne se pétrifie."
};
pack["15370"] = { "Buru Grandgosier", -- (era clásica)
	"* Il CHOISIT un joueur et le poursuit : le chassé l'amène loin de la bande.",
	"* Ses œufs éclatent sur son passage et le blessent : le chassé le mène dessus jusqu'à l'achèvement.",
	"* Son Démembrement (|cff71d5ff|Hspell:96|h[Démembrement]|h|r) empile au tank qu'il rattrape : tenue ferme quand ça mord."
};
pack["15369"] = { "Ayamiss le Chasseur", -- (era clásica)
	"* Son Paralyser (|cff71d5ff|Hspell:25725|h[Paralyser]|h|r) marque pour le SACRIFICE de l'autel : soins immédiats au paralysé tant qu'il tient.",
	"* À santé basse il prend l'air : là-haut, seuls les distants le touchent — la mêlée reste au sol."
};
pack["15339"] = { "Ossirian l'Intouché", -- (era clásica)
	"* Son Mode suprême (|cff71d5ff|Hspell:25176|h[Mode suprême]|h|r) l'intouble jusqu'au prochain cristal : la salle sprinte pour les allumer.",
	"* Chaque cristal baisse une faiblesse (Feu 25177, Givre 25178, Nature 25180, Arcanes 25181, Ombres 25183) : le DPS tape avec l'école à la mode dès qu'elle court.",
	"* La Trombe (|cff71d5ff|Hspell:25189|h[Trombe]|h|r) étourdit le marqué et sa Malédiction des langues (|cff71d5ff|Hspell:25195|h[Malédiction des langues]|h|r) ralentit les casters — maléfice à retirer."
};

-- Temple d'Ahn'Qiraj : Zona 531 (ère classique) --
-- Kits du DBM-Raids-Vanilla\AQ40 (ids classiques) ; noms du corpus (journal/dbm).
pack["15263"] = { "Prophète Skeram", -- (era clásica; el módulo lo trae pese a no emparejar en _zonas)
	"* Il se téléporte de salle (|cff71d5ff|Hspell:20449|h[Téléportation]|h|r) et crée une bande de DOUBLONS (|cff71d5ff|Hspell:747|h[Créer un double]|h|r) à son image : le tank tient l'original et les clones tombent à l'achèvement.",
	"* Son Contrôle mental (|cff71d5ff|Hspell:785|h[Contrôle mental]|h|r) prend un joueur : le marqué tient sous soins pendant que le groupe le libère."
};
bos = { "Famille royale silithide", -- (era clásica)
	"* Trois de la famille à la fois : le tank ouvre dans l'ordre et la mêlée purge un à un.",
	"* Leurs soins (|cff71d5ff|Hspell:25807|h[Soins supérieurs]|h|r) se coupent CHAQUE FOIS ; la Peur (|cff71d5ff|Hspell:26580|h[Peur]|h|r) disperse la bande — déploiement et tenue.",
	"* La Volée toxique (|cff71d5ff|Hspell:25812|h[Volée toxique]|h|r) mord la mêlée : poison à guérir."
};
pack["15544"] = bos;
pack["15511"] = bos;
pack["15543"] = bos;
pack["15516"] = { "Garde de guerre Sartura", -- (era clásica)
	"* Son Tourbillon (|cff71d5ff|Hspell:26083|h[Tourbillon]|h|r) tourne la salle et change sa cible à la volée : la mêlée s'écarte quand il démarre et le tank la recouche quand elle change.",
	"* À santé basse elle entre en rage (|cff71d5ff|Hspell:8269|h[Frénésie]|h|r) : le DPS presse et le soigneur tient la série.",
	"* Ses gardes royaux viennent avec elle : tank à part."
};
pack["15510"] = { "Fankriss l'Inflexible", -- (era clásica)
	"* Son Enlacement (|cff71d5ff|Hspell:720|h[Enlacement]|h|r) laisse plusieurs pris dans la toile : on coupe la soie sans lâcher le fil.",
	"* La Blessure mortelle (|cff71d5ff|Hspell:25646|h[Blessure mortelle]|h|r) empile le tank : deux tanks ; ses vers invoqués (|cff71d5ff|Hspell:25831|h[Appel de ver]|h|r|cff71d5ff|Hspell:26631|h[Invocateur de vers]|h|r) arrivent par série — AoE avec tête."
};
pack["15509"] = { "Princesse Huhuran", -- (era clásica)
	"* Sa piqûre (|cff71d5ff|Hspell:26180|h[Piqûre de wyverne]|h|r) marque un joueur et son poison (|cff71d5ff|Hspell:26053|h[Venin malsain]|h|r) couvre la bande : soigner et sortir de la flaque.",
	"* L'acide empile le tank (|cff71d5ff|Hspell:26050|h[Crachat d'acide]|h|r) et sa Frénésie (|cff71d5ff|Hspell:26051|h[Frénésie]|h|r) se tait au Tir tranquillisant — le chasseur attentif.",
	"* À 30% elle entre en COLÈRE (|cff71d5ff|Hspell:26068|h[Berserker]|h|r) : plein régime jusqu'à sa chute — DPS et soins à la limite."
};
pack["15299"] = { "Viscidus", -- (era clásica)
	"* La volée de poison (|cff71d5ff|Hspell:25991|h[Volée de projectiles de poison]|h|r) châtie par vagues : les soigneurs gardent le tempo.",
	"* Le FROID le fige : l'école de Givre le frappe dur jusqu'à le geler ; le physique le BRISE : la mêlée entre le marteler quand le gel court.",
	"* Il se reconstitue et le cycle recommence : patience en salle et soins du mana."
};
bos = { "Empereurs jumeaux", -- (era clásica)
	"* Les jumeaux ECHANGENT de place sans arrêt (|cff71d5ff|Hspell:800|h[Téléportation]|h|r) : le tank recouche et le DPS s'étale.",
	"* Celui du corps à corps déséquilibre le tank (|cff71d5ff|Hspell:26613|h[Coup déséquilibrant]|h|r) et l'autre matraque les casters — deux tanks, un par jumeau.",
	"* Les insectes mutés (|cff71d5ff|Hspell:802|h[Mutation d'insecte]|h|r) sortent au sol — AoE avec tête sans oublier les jumeaux."
};
pack["15276"] = bos;
pack["15275"] = bos;
pack["15517"] = { "Ouro", -- (era clásica)
	"* Son Balayage (|cff71d5ff|Hspell:26103|h[Balayage]|h|r) chasse le tank par les airs : dos au mur pour ne pas perdre la prise.",
	"* Il s'ENFONCE toutes les ~3 minutes et laisse le sol grouillant de scarabées : AoE à loisir pendant son absence.",
	"* Sa Furie (|cff71d5ff|Hspell:26615|h[Berserker]|h|r) pointe à la fin : le DPS sprinte pour boucler avant."
};
bos = { "C'Thun", -- (era clásica)
	"* L'œil ouvre avec son rayon tournant : la bande s'étale autour et personne ne se met dans la ligne de feu.",
	"* Tentacules de griffes et d'yeux poussent toutes les quelques secondes : les griffes vont à la mêlée et les yeux aux distants — on purifie sans retard et les géants au tank.",
	"* Chaque fenêtre d'affaiblissement (~45 s) est le tour du DPS à plein régime : on évide le reste."
};
pack["15589"] = bos;
pack["15727"] = bos;

-- Naxxramas : Zona 533 (ère classique) --
-- Kits du DBM-Raids-Vanilla\VanillaNaxx par quartier (ids classiques) ; noms du corpus.
pack["15956"] = { "Anub'Rekhan", -- (era clásica)
	"* Sa Nuée de sauterelles (|cff71d5ff|Hspell:28785|h[Nuée de sauterelles]|h|r) balaie la salle : entrer au CERCLE central à l'appel et revenir à la prise quand elle passe.",
	"* Son Empaler (|cff71d5ff|Hspell:28783|h[Empaler]|h|r) catapulte les proches : mêlée avec marge et tank ferme."
};
pack["15953"] = { "Grande veuve Faerlina", -- (era clásica)
	"* L'Étreinte de la veuve (|cff71d5ff|Hspell:28732|h[Étreinte de la veuve]|h|r) la SILENCE tant qu'elle dure : abattre ses suivantes la renforce.",
	"* Une fois l'étreinte expirée, sa Frénésie (|cff71d5ff|Hspell:28131|h[Frénésie]|h|r) s'installe : soins forts et le DPS à la clôture."
};
pack["15952"] = { "Maexxna", -- (era clásica)
	"* Sa Toile enveloppante (|cff71d5ff|Hspell:28622|h[Toile enveloppante]|h|r) pend un joueur : couper la toile aussitôt.",
	"* Ses bébés (|cff71d5ff|Hspell:29434|h[Invocation d'araignée]|h|r) arrivent à chaque tour de toile : AoE sur leur passage.",
	"* La brume (|cff71d5ff|Hspell:29484|h[Vaporisation d'araignée]|h|r) sonne TOUTE la bande à chaque tour et sa Frénésie (|cff71d5ff|Hspell:28747|h[Frénésie]|h|r) mord à la fin : le DPS court à 30%."
};
pack["15954"] = { "Noth le Porte-Peste", -- (era clásica)
	"* Il SE TÉLÉPORTE aux balcons (|cff71d5ff|Hspell:29208|h[Pas de mage]|h|r) à chaque tour : ses squelettes restent en bas — l'AoE les purge entre temps.",
	"* Sa Malédiction de peste (|cff71d5ff|Hspell:29213|h[Malédiction du Porte-Peste]|h|r) mord les marqués : maléfice MAINTENANT, sinon elle détonne à son retour."
};
pack["15936"] = { "Heigan l'Impur", -- (era clásica)
	"* Le sol éruptionne par vagues : la danse impure (|cff71d5ff|Hspell:29350|h[Éruption impure]|h|r) guide la bande par le moule des quatre arcades — apprendre les pas et garder l'œil au sol.",
	"* De temps en temps il saute près d'un joueur (|cff71d5ff|Hspell:30211|h[Téléportation]|h|r) : le marqué court et soins à la volée.",
	"* Son Mal impur (|cff71d5ff|Hspell:29998|h[Mal impur]|h|r) grossit sur les touchés : maladie à purger vite."
};
pack["16011"] = { "Horreb", -- (era clásica)
	"* Les spores curatives (|cff71d5ff|Hspell:29234|h[Spores curatives]|h|r) poussent au tempo : la mêlée les mange sitôt tombées — c'est le soin du combat.",
	"* Le Destin inévitable (|cff71d5ff|Hspell:29204|h[Destin inévitable]|h|r) ronge les marqués selon l'horloge de l'aura nécrotique : soins muselés et le DPS court."
};
pack["16061"] = { "Instructeur Razuvious", -- (era clásica)
	"* Les ÉLÈVES le prennent au Provoc : deux en rotation, le vrai tank ne l'atteint jamais.",
	"* Son Cri désorganisateur (|cff71d5ff|Hspell:29107|h[Cri désorganisateur]|h|r) balaie la mêlée : sortir du rayon à l'appel."
};
pack["16060"] = { "Gothik le Moissonneur", -- (era clásica)
	"* La salle est PARTAGÉE entre vivants et morts : chaque côté tient sa moitié jusqu'à la fusion.",
	"* Ses sauts traversent la salle (|cff71d5ff|Hspell:28025|h[Téléportation]|h|r et |cff71d5ff|Hspell:28026|h[Téléport mortel]|h|r) : à la fusion, le tank le couche et le DPS tombe."
};
bos = { "Les quatre cavaliers", -- (era clásica)
	"* Quatre au quatuor, chacun son coin : les tanks les prennent par paires et le DPS s'étale par roue.",
	"* Le Météore (|cff71d5ff|Hspell:28884|h[Météore]|h|r) frappe le plus proche de chaque cavalier : tanks aux aguets.",
	"* Les Zones du Vide (|cff71d5ff|Hspell:28863|h[Zone du Vide]|h|r) s'ouvrent aux pieds : sortir du cercle aussitôt."
};
pack["16062"] = bos;
pack["16063"] = bos;
pack["16064"] = bos;
pack["16065"] = bos;
pack["16028"] = { "Le Recousu", -- (era clásica)
	"* Sa Frappe de haine chasse le plus SAIN de la mêlée à la ronde : tous au même niveau de vie et soins paritaires.",
	"* À mi-vie sa Frénésie (|cff71d5ff|Hspell:28131|h[Frénésie]|h|r) s'installe : le tank tient dur et les soins doublent."
};
pack["15931"] = { "Grobbulus", -- (era clásica)
	"* L'Injection mutante (|cff71d5ff|Hspell:28169|h[Injection mutante]|h|r) marque un joueur et son Nuage (|cff71d5ff|Hspell:28240|h[Nuage toxique]|h|r) reste toxique à l'éclatement : le marqué s'ÉCARTE de la bande avant que ça saute."
};
pack["15932"] = { "Gluth", -- (era clásica)
	"* La Décimation (|cff71d5ff|Hspell:28374|h[Décimation]|h|r) jette TOUTE la bande à 5% de vie : soins forts à l'appel.",
	"* Les morts de la salle MARCHENT vers lui et le soignent au toucher : couper le passage et l'AoE les achève.",
	"* Sa Frénésie (|cff71d5ff|Hspell:28371|h[Frénésie]|h|r) se tait au Tir tranquillisant et son Enrager (|cff71d5ff|Hspell:26662|h[Enrager]|h|r) pointe à la fin : le DPS à la clôture."
};
pack["15928"] = { "Thaddius", -- (era clásica)
	"* Les deux abominations ouvrent avec des décharges au tank : déploiement et soins paritaires.",
	"* Le Changement de polarité (|cff71d5ff|Hspell:28089|h[Changement de polarité]|h|r) distribue la charge à TOUTE la bande : plus d'un côté, moins de l'autre — PERSONNE ne traverse."
};
pack["15989"] = { "Saphiron", -- (era clásica)
	"* Son Drain de vie (|cff71d5ff|Hspell:28542|h[Drain de vie]|h|r) mord les marqués : maléfice à retirer MAINTENANT.",
	"* Ses blocs de glace (|cff71d5ff|Hspell:28522|h[Bloc de glace]|h|r) restent plantés : on s'accroche à l'un quand le dragon s'élève, car son souffle profond balaie la salle au retour."
};
pack["15990"] = { "Kel'Thuzad", -- (era clásica)
	"* Ses Chaînes de contrôle (|cff71d5ff|Hspell:28410|h[Chaînes de Kel'Thuzad]|h|r) emportent plusieurs joueurs : les enchaînés sont tenus sans pitié jusqu'à la libération.",
	"* La Fissure d'ombre (|cff71d5ff|Hspell:27810|h[Fissure d'ombre]|h|r) étourdit la cible : sortir de la flaque vite.",
	"* L'Explosion de givre (|cff71d5ff|Hspell:27808|h[Explosion de givre]|h|r) fige la cible, la salle alignée : soins paritaires.",
	"* À la fin les gardiens de la crypte entrent : le tank les écarte et le fil ne s'arrête pas."
};

P.fr = fr;