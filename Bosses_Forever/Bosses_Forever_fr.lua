--[[
	Bosses_Forever_fr.lua
		Datos en francés del pack WoW Forever (datos; el registro lo hace
		Bosses_Forever.lua, que se carga después en el .toc).

		Catálogo clásico portado desde Bosses_Vanilla (ids NPC del cliente
		Classic; contenido que Forever también juega). Los jefes nuevos de
		Forever (los 24 de DBM-Party-Forever) se añaden con el editor: la
		base se escribe en EN y se traduce a los demás idiomas.
		Idioma INCOMPLETO: hasta que esté entero no se lista en el .toc.

		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- Formato de entrada (una por jefe, NPC ID decimal del campo 6 del GUID):
-- pack["NPC_ID"] = { "Nombre del jefe", "* consejo 1", "* consejo 2" };

-- ----------------------------------- --
-- Gouffre de Ragefeu : Zona 389 (ère classique) --
-- ----------------------------------- --

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

-- ----------------------------------- --
-- Cavernes des Lamentations : Zona 43 (ère classique) --
-- ----------------------------------- --

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

pack["5775"] = { "Verdan l'Immortel",
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

-- ------------------------------------- --
-- Profondeurs de Brassenoire : Zona 48 (ère classique) --
-- ------------------------------------- --

pack["4887"] = { "Ghamoo-Ra",
	"* Combat direct de tank et dégâts : son |cff71d5ff|Hspell:5568|h[Piétinement]|h|r secoue tout ce qui est proche ; les mêlées restent collées et les autres se répartissent."
};

bos = { "Dame Sarevess",
	"* Elle est escortée de gardes d'élite : contrôle de foule sur les sbires (métamorphose, pièges) et les dégâts se concentrent sur elle.",
	"* Sa |cff71d5ff|Hspell:407546|h[Flèche de gel]|h|r engourdit celui qui la prend (le soigneur le libère en dissipant) et, quand elle pointe son |cff71d5ff|Hspell:407653|h[Éclair fourchu]|h|r sur quelqu'un, le désigné s'écarte du groupe.",
	"* Si elle pose la |cff71d5ff|Hspell:407791|h[Rage d'Aku'mai]|h|r sur un joueur, on la dissipe dès que le soigneur la voit ; ses zones de dégâts au sol s'esquivent."
};

pack["4831"] = bos;

pack["6243"] = { "Gelihast",
	"* Combat direct : sa principale nuisance est son |cff71d5ff|Hspell:6533|h[Filet]|h|r qui retire quelqu'un du combat quelques secondes (on le casse ou le dissipe) ; sinon tank et dégâts."
};

pack["4832"] = { "Seigneur du crépuscule Kelris",
	"* Sur le client Era c'est un combat simple : on dissipe le |cff71d5ff|Hspell:8399|h[Sommeil]|h|r qu'il pose sur un joueur au hasard et on continue tank et dégâts."
};

pack["4829"] = { "Aku'mai",
	"* Combat direct avec poison : son |cff71d5ff|Hspell:3815|h[Nuage de poison]|h|r reste là où elle se tient ; le tank l'éloigne du groupe et personne ne marche dedans.",
	"* En mourant elle entre en |cff71d5ff|Hspell:3490|h[Rage frénétique]|h|r et frappe plus vite : les soigneurs montent en rythme."
};

pack["4830"] = { "Vieux Serra'kis",
	"* Combat en mêlée simple dans l'eau basse du puits de la salle : le tank le retient, les mêlées surveillent ses poisons et le groupe répartit les dégâts normalement."
};

-- -------------------------------- --
-- La Prison : Zona 34 (ère classique) --
-- -------------------------------- --

pack["1696"] = { "Targorr le Terrifiant",
	"* Combat de corps à corps simple : rien à interrompre ni à dissiper, tank collé et burst."
};

pack["1663"] = { "Dextren Tutor",
	"* Compétence de Peur (Fear): Dextren peut lancer de la peur sur le groupe, il est donc recommandé de bien nettoyer la salle et les ennemis proches avant de commencer le combat.",
	"* Fuite: Quand on lui baisse la vie, il tentera de fuir, donc il vaut mieux le contrôler pour qu'il n'attire pas plus d'ennemis."
};

pack["1666"] = { "Kam Furieprofonde",
	"* Combat de corps à corps simple : rien à interrompre ni à dissiper."
};

pack["1717"] = { "Hamhock",
	"* Combat de corps à corps simple qui tape fort : rien à interrompre ni à dissiper."
};

pack["1720"] = { "Bruegal Poing-de-Fer",
	"* Combat de corps à corps simple : rien à interrompre ni à dissiper."
};

pack["1716"] = { "Bazil Thredd",
	"* Le combat final va dans la cour et ses prisonniers se joignent à la bagarre dès le départ : tuez les adds d'abord, le boss ensuite."
};

-- ------------------------------ --
-- Gnomeregan : Zona 90 (ère classique) --
-- ------------------------------ --

bos = { "Grubbis",
	"* Bagarre plate signalée par DBM : tank, burst et soins, avec l'oeil sur le sbire qui surgit à ses côtés (son Chomper)."
};

pack["7361"] = bos;

bos = { "Retombée visqueuse",
	"* Salve toxique (|cff71d5ff|Hspell:21687|h[Salve toxique]|h|r) : poison périodique sur les voisins ; le dispelleur de poison le dissipe et continue."
};

pack["7079"] = bos;

bos = { "Electrocuteur 6000",
	"* Megavolt (|cff71d5ff|Hspell:11082|h[Megavolt]|h|r) et Chaîne d'éclairs (|cff71d5ff|Hspell:11085|h[Chaîne d'éclairs]|h|r) sont interruptibles : coupez-les à la racine.",
	"* Son Choc (|cff71d5ff|Hspell:11084|h[Choc]|h|r) martèle le tank : soins en éveil."
};

pack["6235"] = bos;

bos = { "Disperseur de foule 9-60",
	"* Piétinement (|cff71d5ff|Hspell:10887|h[Piétinement]|h|r) : un coup qui jette le mêlé dans les airs : seul le tank reste dedans, les autres hors de portée.",
	"* Frappe en arche (|cff71d5ff|Hspell:8374|h[Frappe en arche]|h|r) sur le tank : rythme normal de tank et soigneurs."
};

pack["6229"] = bos;

bos = { "Mekgénieur Thermojoncteur",
	"* Il colle une bombe vivante à un joueur au hasard (|cff71d5ff|Hspell:11518|h[Bombe vivante]|h|r) : le marqué s'éloigne du groupe jusqu'à l'explosion.",
	"* Son Rejet (|cff71d5ff|Hspell:10101|h[Rejet]|h|r) éjecte le tank : attention à où il retombe.",
	"* Depuis Cata s'ajoutent un Souffle de vapeur interruptible et des coups sur le tank : coupez le souffle à temps."
};

pack["7800"] = bos;

-- ---------------------------------- --
-- Kraal de Tranchebauge : Zona 47 (ère classique) --
-- ---------------------------------- --

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

bos = { "Roogug",
	"* Il appelle des retentisseurs de terre (|cff71d5ff|Hspell:8270|h[Retentisseur de terre]|h|r) : le tank les prend et ils meurent aussitôt."
};

pack["6168"] = bos;

pack["4420"] = { "Seigneur Brusquebroche",
	"* Il canalise un bombarde tournoyant (|cff71d5ff|Hspell:8259|h[Bombarde tournoyant]|h|r) : interrompez-le ou, s'il passe, éloignez-vous du tourbillon pendant sa chute.",
	"* Combat corsé : il frappe fort et arrive flanqué de deux gardes ; le tank les écarte et les soigneurs serrent."
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

-- -------------------------------------- --
-- Monastère écarlate : Zona 189 (ère classique) --
-- -------------------------------------- --

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

bos = {
	"Le Cavalier sans tête",
	"* Boss festif de Hallow's End classique : il s'invoque au Cimetière du monastère en parlant au sanctuaire de citrouilles qui attend à l'entrée.",
	"* |cff71d5ff|Hspell:42380|h[Conflagration]|h|r met le feu à un joueur au hasard 4 s et le fait fuir affolé : écartez-vous de lui tant que ça brûle ; le soigneur le sort d'affaire.",
	"* |cff71d5ff|Hspell:42514|h[Écraser l'âme]|h|r frappe un autre joueur pendant 15 s : des soins sur le marqué.",
	"* Le tour de la bataille : corps à 1 % -> insensible et la TÊTE s'envole pendant que le corps se régénère -> tout le focus sur la Tête avant qu'elle ne revienne ;",
	"* elle sort trois fois, et la troisième ne revient plus : abattez-la pour finir.",
	"* À la dernière tournée du corps viennent les Citrouilles palpitantes (sbires sans id) : le tank les retient et le groupe les coupe en AoE."
};

pack["23682"] = bos;

pack["23775"] = bos;

-- ----------------------------------- --
-- Souilles de Tranchebauge : Zona 129 (ère classique) --
-- ----------------------------------- --

bos = { "Mordresh Oeil-de-Feu",
	"* Il se bat sur un monticule d'os au milieu d'un essaim de squelettes non élites : le tank ouvre en cible de masse pour tous les prendre, les regroupe et on purge l'essaim d'abord ; pas de précipitation pour taper le boss.",
	"* Quand il lance sa boule de feu, tank ou mêlée l'interrompt : chaque incantation évitée, c'est moins de dégâts reçus.",
	"* Le soigneur attend quelques secondes que le tank assure l'aggro de l'essaim avant de soigner à fond : un soin trop tôt peut attirer les squelettes et faire wipe le pull.",
	"* Sa Vague de flammes (|cff71d5ff|Hspell:12470|h[Vague de flammes]|h|r) balaie la mêlée à ses pieds : sortir du rayon."
};

pack["7357"] = bos;

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

-- --------------------------- --
-- Uldaman : Zona 70 (ère classique) --
-- --------------------------- --

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

-- ------------------------------- --
-- Zul'Farrak : Zona 209 (ère classique) --
-- ------------------------------- --

pack["8127"] = { "Antu'sul",
	"* Premier boss, dans la fosse d'entrée : soigneur troll qui tient debout grâce à ses totems et ses laquais.",
	"* Ses Vagues de soins se coupent : celle qu'il se lance (|cff71d5ff|Hspell:11895|h[Vague de soins]|h|r) et celle envoyée aux laquais (|cff71d5ff|Hspell:15982|h[Vague de soins]|h|r).",
	"* Ses totems éclatent dès qu'ils pointent : celui d'immobilisation (|cff71d5ff|Hspell:8376|h[Totem d'immobilisation]|h|r) enracine le groupe et le Totem de soin (|cff71d5ff|Hspell:4971|h[Totem de soin]|h|r) refile de la vie au boss et à sa bande.",
	"* Les laquais qu'il lève (|cff71d5ff|Hspell:11894|h[Laquais]|h|r) tombent en premier : le DPS les balaie pendant que le tank tient le boss."
};

pack["7272"] = { "Theka le Martyr",
	"* Combat à un seul objectif : sa Peste fébrile (|cff71d5ff|Hspell:8600|h[Peste fébrile]|h|r) est une maladie soignable — dispel dès qu'elle tombe.",
	"* À mi-combat il se transforme (|cff71d5ff|Hspell:11089|h[Transformation]|h|r) : le tank le retient et il tombe quand même."
};

pack["7271"] = { "Féticheur Zum'rah",
	"* Soigneur de la cour avec ses acolytes : chaque incantation s'interrompt — la Vague de soins (|cff71d5ff|Hspell:12491|h[Vague de soins]|h|r) et surtout la Décharge d'éclairs d'ombre (|cff71d5ff|Hspell:15245|h[Décharge d'éclairs d'ombre]|h|r), qui punit tout le groupe à 30 m.",
	"* Son Gardien de Zum'rah (|cff71d5ff|Hspell:11086|h[Gardien de Zum'rah]|h|r) plante un totem à ses pieds qui sort un squelette toutes les 5 s : on l'éclate dès qu'il pointe.",
	"* Réveil zombi : il ressuscite des Zombies de Zul'Farrak dans les tombes proches de la salle — squelettes et zombies tombent dès qu'ils émergent."
};

pack["7273"] = { "Gahz'rilla",
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

-- ----------------------------- --
-- Maraudon : Zona 349 (ère classique) --
-- ----------------------------- --

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

-- ---------------------------------- --
-- Temple englouti : Zona 109 (ère classique) --
-- ---------------------------------- --

pack["5710"] = { "Jammal'an le Prophète", -- (ère classique)
	"* Le prophète du hall, avec son garde du corps Ogom (sans entrée propre) à côté : combat en duo au milieu du salon.",
	"* Jammal'an plante son Totem de terre saisissante (|cff71d5ff|Hspell:8376|h[Totem de terre saisissante]|h|r) — il enracine le groupe — et marque un joueur avec son Maléfice de Jammal'an (|cff71d5ff|Hspell:12479|h[Maléfice de Jammal'an]|h|r), qui attend à couvert ;",
	"* il lâche aussi Vague de soins (12492) et Choc de flammes (12468).",
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

pack["5709"] = { "Ombre d'Eranikus", -- (ère classique)
	"* L'ombre du dragon vert que le rituel de l'autel réveille dans la fosse : l'invocation finale du temple classique.",
	"* Son Sommeil profond (|cff71d5ff|Hspell:12890|h[Sommeil profond]|h|r) endort quiconque le gobe, le Souffle acide (|cff71d5ff|Hspell:12533|h[Souffle acide]|h|r) punit le tank et le Piétinement de guerre (|cff71d5ff|Hspell:24375|h[Piétinement de guerre]|h|r) tombe au contact."
};

pack["8443"] = { "Avatar d'Hakkar", -- (ère classique)
	"* L'ombre du dieu serpent que le rituel du temple réveille : combat court et venimeux.",
	"* Sa Malédiction des langues (|cff71d5ff|Hspell:12889|h[Malédiction des langues]|h|r) (maléfice) allonge les incantations du groupe et sa Provoquer la folie (|cff71d5ff|Hspell:12888|h[Provoquer la folie]|h|r) tombe sur un joueur — l'avis le plus critique du DBM, on s'en occupe vite."
};

-- -------------------------------- --
-- Scholomance : Zona 289 (ère classique) --
-- -------------------------------- --

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

-- ------------------------------------- --
-- Profondeurs de Rochenoire : Zona 230 (ère classique) --
-- ------------------------------------- --

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

-- ------------------------------ --
-- Hache-Tripes : Zona 429 (ère classique) --
-- ------------------------------ --

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

-- ------------------------------------------------ --
-- Pic Rochenoire inférieur/supérieur : Zona 229 (ère classique) --
-- ------------------------------------------------ --

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

pack["10363"] = { "Général Drakkisath", -- (era clásica)
	"* Le général de l'aile Haute : sa Conflagration (|cff71d5ff|Hspell:16805|h[Conflagration]|h|r) embrase un joueur — le marqué quitte la bande TOUT DE SUITE tant que ça brûle."
};

pack["10899"] = { "Goraluk Brise-enclume", -- (era clásica)
	"* Le forgeron dragonien : combat plat avec bon tank."
};

pack["10509"] = { "Jed le Gardien des Runes", -- (era clásica)
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

-- ------------------------------- --
-- Stratholme : Zona 329 (ère classique) --
-- ------------------------------- --

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

-- ---------------------------------- --
-- Repaire d'Onyxia : Zona 249 (ère classique) --
-- ---------------------------------- --

pack["10184"] = { "Onyxia", -- (era clásica)
	"* Phase 1 au sol : son Souffle de flammes (|cff71d5ff|Hspell:18435|h[Souffle de flammes]|h|r) châtie le tank, son Coup d'aile (|cff71d5ff|Hspell:18500|h[Coup d'aile]|h|r) envoie la mêlée derrière et son Repousser (|cff71d5ff|Hspell:19633|h[Repousser]|h|r) casse la prise du tank.",
	"* Phase 2 en l'air : Boules de feu (|cff71d5ff|Hspell:18392|h[Boule de feu]|h|r) sur le marqué et ses Souffles profonds (|cff71d5ff|Hspell:17086|h[Souffle profond]|h|r) balaient la moitié de l'antre — l'avertissement du chat commande : on court au côté opposé.",
	"* Phase 3 à l'atterrissage : tout revient et, par-dessus, son Rugissement tonitruant (|cff71d5ff|Hspell:18431|h[Rugissement]|h|r) TERRIFIE la moitié de la bande ; les couvées des grottes montent — AoE sur l'essaim sans lâcher le fil du boss."
};


-- Mortemines : Zona 36 (ère classique) --

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["639"] = { "Edwin VanCleef",
"* Ses alliés (|cff71d5ff|Hspell:5200|h[Alliés]|h|r) appellent leurs sbires : éliminez-les avant qu'ils ne se regroupent sur le tank.",
"* Son Thrash (|cff71d5ff|Hspell:3391|h[Griffes]|h|r) tombe sur ses propres sbires : les sbires se renforcent, donc éliminez-les d'abord."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["642"] = { "Le Culteur et La Culteuse",
"* Son Terrifier (|cff71d5ff|Hspell:7399|h[Terrifier]|h|r) inflige de la peur sur un joueur : il interrompt le combat tant que la peur dure.",
"* Son Disarm (|cff71d5ff|Hspell:6713|h[Disarm]|h|r) prive d'arme la cible : ce n'est pas un changement de tank, c'est un coup au DPS du tank.",
"* Son Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) retire Sneed de la machine : Sneed séparé, le tuer et revenir au Segador."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["643"] = { "Le Culteur et La Culteuse",
"* Son Terrifier (|cff71d5ff|Hspell:7399|h[Terrifier]|h|r) inflige de la peur sur un joueur : il interrompt le combat tant que la peur dure.",
"* Son Disarm (|cff71d5ff|Hspell:6713|h[Disarm]|h|r) prive d'arme la cible : ce n'est pas un changement de tank, c'est un coup au DPS du tank.",
"* Son Eject Sneed (|cff71d5ff|Hspell:5141|h[Eject Sneed]|h|r) retire Sneed de la machine : Sneed séparé, le tuer et revenir au Segador."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["644"] = { "Rhahk'Zor",
"* Son coup (|cff71d5ff|Hspell:6304|h[Coup]|h|r) touche un joueur au hasard : le tank se déplace pour éviter les dégâts."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["645"] = { "Macaron",
"* Sa guérison (|cff71d5ff|Hspell:5174|h[Guérison]|h|r) est sa seule source de soins : ciblez-la toujours."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["646"] = { "M. Châtiment",
"* Son attaque Smite Stomp (|cff71d5ff|Hspell:6432|h[Smite Stomp]|h|r) qui compte à rebours pendant 10 secondes : lorsqu'elle est déclenchée, le coup de pied propulse la zone — évaluez juste avant la fin.",
"* Leur attaque Smite Slam (|cff71d5ff|Hspell:6435|h[Smite Slam]|h|r) cible le marqueur : le tank doit changer.",
"* Leur Nimble Reflexes (|cff71d5ff|Hspell:6264|h[Nimble Reflexes]|h|r) est un effet sur un joueur : neutralisez-la."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["647"] = { "Capitaine Vertepeau",
"* Son harpon venenoso (|cff71d5ff|Hspell:5208|h[Poisoned Harpoon]|h|r) : un coup à distance qui empoisonne. Lancez le poison et gardez le tank en vie."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["1763"] = { "Gilnid",
"* Son métal en fusion (|cff71d5ff|Hspell:5213|h[Molten Metal]|h|r) projette du métal brûlant sur un joueur : sortez du feu et laissez le tank le récupérer."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3586"] = { "Mineur Johnson",
"* Su Pierce Armor (|cff71d5ff|Hspell:12097|h[Perforar armadura]|h|r) es un disparo que destroza la armadura del tanque: tenlo pegado y mantén los beneficios de armadura."
};

-- Donjon d'Ombrecroc : Zona 33 (ère classique) --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3872"] = { "Capitaine des Morts",
"* Invoqué par le Commandant Springvale : combat au sol, éliminez-le avant le boss.",
"* Ses attaques envers le tank sont puissantes : maintenez la guérison pendant que le groupe est avec le Capitaine."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3886"] = { "Razorgue le Boucher",
"* Combat en ligne : le module DBM n'a pas d'alerte pour lui — tank, soigneur et à le dézinguer.",
"* Gardez-le face au mur : tout ce qui se trouve devant reçoit le coup."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["3887"] = { "Baron d'Argelaine",
"* Son voile d'ombre (|cff71d5ff|Hspell:7068|h[Veil of Shadow]|h|r) est une malédiction sur un joueur : utilisez-la pour empêcher la guérison.",
"* Appelle ses sbires : faire attaquer tous les dégâts aux sbires avant qu'ils n'atteignent le tank."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3914"] = { "Rethilgore",
"* Combat statique : le module DBM n'a pas de déclencheurs pour cela — tank, soigneur et attaquer sans arrêt."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["3927"] = { "Maître Loup Nandos",
"* Invoquez les Bleak Worg (|cff71d5ff|Hspell:7487|h[Bleak Worg]|h|r) : éliminez-les avant qu'ils n'atteignent le tank.",
"* Son Lupine Horror (|cff71d5ff|Hspell:7489|h[Lupine Horror]|h|r) et son Slavering Worg (|cff71d5ff|Hspell:7488|h[Slavering Worg]|h|r) attaquent le groupe : surveillez les effets négatifs et maintenez la guérison."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4274"] = { "Fenrus le Dévorant",
"* Sa Saliva Tóxica (|cff71d5ff|Hspell:7125|h[Toxic Saliva]|h|r) empoisonne un joueur : elle disperse le poison.",
"* Combat rapproché rapide : place-le devant le tank et ne le laisse pas attaquer le groupe par derrière."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4275"] = { "Archimago Arugal",
"* Sa malé d'Arugal (|cff71d5ff|Hspell:7621|h[Arugal's Curse]|h|r) maléfique un joueur : détruis-le.",
"* Son Portail d'ombre (|cff71d5ff|Hspell:7587|h[Shadow Port]|h|r) s'ouvre et invoque ses créatures d'ombre : élimine-les dès qu'elles apparaissent."
};

-- [editor web 2026-10-22] Importada de EN (nombre del diario de Blizzard); tácticas pendientes --
pack["4278"] = { "Commandant Printeval",
"* Combat rapproché : invoquez le Capitaine Maudit (3872) et ses morts — attaquez d'abord le Capitaine.",
"* Gardez-le face au mur : les sbires viennent par derrière."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["4279"] = { "Odo le Aveugle",
"* Combat statique : le module DBM n'a pas de déclencheurs pour cela — tank, soigneur et attaquer sans arrêt."
};

-- City of Dalaran : Zona 2959 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900001"] = { "Anomalie arcanique",
"* Focal Blast est un rayon arcano canalisé qui couvre une zone : suivez sa trajectoire et sortez de la ligne plutôt que de rester immobile.",
"* Son Arcane Bolt va directement au tank : contrôlez-le et évitez que le groupe se regroupe autour du rayon.",
"* Éliminez les ennemis mineurs autour de la plateforme avant son arrivée : combattre contre eux transforme le combat en un combat contre plusieurs ennemis."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900002"] = { "Ancien gangrené",
"* Entrelacer les racines sur un joueur et inflige des dégâts sur lui : brisez rapidement les racines, les dégâts continuent tant que le joueur est piégé.",
"* Fel Timbers laisse des zones de vapeur empoisonnée : sortez immédiatement des zones vertes, ne tardez pas à en sortir.",
"* Gardez-le à l'écart des zones de vapeur : les racines plus le poison sont la vraie menace ici."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900003"] = { "Dévoreur de mana",
"* Debilitate draine la mana des joueurs proches de lui : répartissez-vous et surveillez sa mana, le combat peut l'épuiser.",
"* Drain Vitality frappe le tank et inflige des dégâts arcanes au fil du temps : le tank a besoin d'une attention constante.",
"* Le guide beta indique qu'il est immunisé contre les dégâts arcanes : utilisez un autre type de dégâts.",
"* Nettoyez l'environnement avant l'extraction et terminez le combat rapidement."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900004"] = { "Élémentaire de mana",
"* Manamorph transforme un de vos joueurs en autre chose : annulez-le le plus rapidement possible.",
"* Silencer empêche les lanceurs : le soigneur maintient la distance pour ne pas être silencé tout en soignant.",
"* Tuez les deux Fantas de Mana en premier, puis les petits élémentaires de Mana, et seulement ensuite le boss.",
"* Interrompez le Mana Burn des subordonnés dès que possible.",
"* Regroupez le boss et les deux Fantas ensemble, en les affrontant loin du groupe."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900005"] = { "Sentinelle instable",
"* Les attaques de charge se déclenchent et infligent ensuite des dégâts magiques à tous les proches : les personnages de mêlée doivent sortir pendant la préparation et revenir à la fin.",
"* Les joueurs à distance peuvent maintenir leur distance, mais veillez à ce qu'ils ne se regroupent pas trop près du boss.",
"* Éliminez d'abord les \"Angry Tomes\" autour : ils augmentent les dégâts pendant la charge."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900006"] = { "Ombre de l'archimage",
"* Gardez-le dans sa pièce : s'il sort, le combat se relancera.",
"* Arcane Explosion touche tout ce qui est proche de lui : le soigneur reste à distance et le tank surveille sa santé.",
"* Déplacez-vous hors du chemin de l'Arcane Orb.",
"* Quand il sera à court de mana, préparez-vous à Mass Polymorph : les joueurs à distance peuvent utiliser un mur pour le bloquer si la position le permet.",
"* Evocation est l'attaque du mouton : interrompez si possible."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900007"] = { "Lyn l'Ignoré",
"* Je invoque des squelettes : contrôlez-les et éliminez-les rapidement avant qu'ils ne s'accumulent.",
"* Volley de Rayon d'Ombre : c'est un dégât en groupe : gardez le groupe dispersé et surveillez les barres de vie.",
"* La Malédiction de Épines affecte le tank : éliminez la malédiction si votre classe le permet.",
"* Gardez Lyn à l'écart des patrouilles pendant que vous gérez les squelettes."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900008"] = { "Atrexis le Chevalier de la tombe",
"* Ramasser chaque squelette dès qu'il apparaît : les squelettes dispersés rendent le combat chaotique.",
"* Prendre les armes au tank : surveillez sa santé juste après, le tank est vulnérable.",
"* Unholy Frenzy augmente sa vitesse d'attaque : utilisez une défense personnelle pendant cet effet et maintenez le tank en vie.",
"* Attendre que le tank ait la menace avant d'utiliser des dégâts de zone sur les squelettes."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900009"] = { "Âme en peine de mana",
"* Les sessions de bêta n'ont jamais testé ce combat : il n'y a pas de compétences documentées, alors observez ce qu'il fait en jeu."
};

-- Excavation Site : Zona 2998 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900010"] = { "Seléchine",
"* Tendon ralentit l'objectif jusqu'à ce qu'il stagne : surveillez la vitesse de déplacement du tank et des joueurs à distance.",
"* Dust Storm affecte tous les proches et réduit leur précision : le soigneur doit rester à plus de 10 mètres.",
"* Tuer d'abord les crocodiles, surtout ceux qui sortent de l'eau : ils sont plus dangereux que les mécaniques du boss.",
"* Combattre dans un terrain dégagé et ne pas le forcer inutilement."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900011"] = { "Dent-Sombre",
"* Inflige des dégâts continus à la cible : le tank a besoin d'une guérison constante.",
"* Le rugissement terrifiant cause de la peur : l'interrompre ou utiliser l'immunité à la peur, et ne jamais se battre près de l'herbe haute, car fuir attire plus de rapteurs.",
"* La colère apparaît autour de 30% de vie et augmente sa vitesse et ses dégâts d'attaque : maintenir une guérison prête pour cela.",
"* Contrôle les deux chasseurs de bois qui viennent avec lui, ou tuer l'un d'eux rapidement."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900012"] = { "Gardien des reliques",
"* Quelqu'un doit activer le panneau \"Archived\" pour lancer le combat : récupérer de la santé et de la mana avant de le faire.",
"* Thunderclap frappe tous les proches et ralentit leur attaque et leur vitesse de déplacement : les joueurs à portée doivent rester à 10 mètres.",
"* Il le déstabilise et le stunte pendant cinq secondes : utilisez les structures environnantes pour limiter la distance à laquelle il peut lancer et récupérez la menace dès qu'il est libre.",
"* Préparer les soins pour le tank avant le coup : il subit beaucoup de dégâts pendant qu'il est stoncé."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900013"] = { "Horreur des hautes-terres",
"* Un élément pantan, qui apparaît près du campement de Faucedraco, sur le site d'excavation.",
"* Il n'y a aucun mécanisme documenté : il n'y a rien sur quoi se préparer, alors nettoyez la zone autour et observez ce qu'il fait dans le jeu."
};

-- Ruins of Lordaeron : Zona 2999 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900014"] = { "Croc-Flétri",
"* Leech Poison draine la santé de la cible et la transfère à celui-ci : le tank perd de la vie pendant toute la bataille.",
"* Éliminez le poison si votre classe le permet ; sinon, maintenez des soins constants sur le tank.",
"* Deux petites araignées viennent avec lui : accordez-vous avant l'extraction pour savoir si vous allez d'abord tuer les araignées ou vous concentrer sur le boss.",
"* Ramassez également les araignées et éliminez les patrouilles d'araignées sur le chemin."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900015"] = { "Rath'mael",
"* Flamestrike marque une zone : lorsqu'il commence, sortez de celle-ci et repositionnez-vous dans un terrain dégagé.",
"* Interrompez ou étourdissez Flamestrike si possible ; sinon, sortez de la zone marquée.",
"* Fire Shield brûle tout autour : le tank et les personnages de combat subissent le plus de dégâts.",
"* Se trouve dans le cimetière de Lordaeron : éliminez les ennemis proches avant l'invocation."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900016"] = { "Le Boucher",
"* Les coups critiques frappent le tank avec force, le faisant tomber et le stun : maintenez la vie du tank complète avant lui et récupérez la menace au moment où le stun se termine.",
"* Combattre en arrière du tank contre un mur, pour empêcher qu'il ne se déplace vers le groupe.",
"* Le coup de pied frappe tous ceux qui sont à proximité : ne le laissez pas marcher vers d'autres membres.",
"* Avec un deuxième tank, utilisez-le pour maintenir le boss pendant que le principal est stunné."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900017"] = { "L'Abandonné",
"* Éliminez les trois premières vagues : l'événement ne laisse pas le temps de boire entre elles, et un ennemi capturé empêche l'événement de se poursuivre.",
"* Frost Nova inflige des dégâts et gèle tous les proches : le soigneur reste à distance et les personnages au corps à corps se retirent.",
"* Life Drain vole de la vie : interrompez ou étourdissez le boss dès qu'il apparaît.",
"* Ses attaques au corps à corps appliquent Chilled : le tank se déplace plus lentement, donc maintenez les dégâts sur lui élevés."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900018"] = { "Capitaine de Lordaeron",
"* Un ennemi rare qui apparaît dans le côté ouest des ruines : avec un groupe d'Alliance, il est amical et ne peut pas être attaqué.",
"* Emmenez-le dans une zone dégagée et élimine les autres créatures avant de l'attaquer."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900019"] = { "Viktor le Vil",
"* Leech Poison draine la santé de la cible au fil du temps et la retourne à elle : le tank a besoin de soins constants.",
"* Éliminez les patrouilles près de la maison en flammes et récupérez votre mana avant d'allumer le feu.",
"* L'événement déclenche plusieurs vagues sans relâche : attaquez et maintenez-le à distance des autres ennemis.",
"* Certaines sessions bêta ont terminé l'événement sans que Viktor n'apparaisse : si cela se produit, il n'y a tout simplement pas de combat à faire."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900020"] = { "Bjork",
"* Le bouclier anti-magie le rend le rend immunité contre la magie pendant un certain temps : les lanceurs arrêtent d'attaquer, les personnages au corps à corps continuent d'attaquer.",
"* Mighty Blow inflige des dégâts et pousse la cible : placez le tank contre le mur et surveillez sa santé après chaque poussée.",
"* Nettoyez la zone avant le combat pour empêcher l'apparition de la patrouille de Necrofilo."
};

-- Hall of Thanes : Zona 3065 --

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900021"] = { "Faldrim Courbenclume",
"* Déchire quand sa patrouille est séparée des groupes environnants : avec la patrouille debout, le combat devient une extermination de sbires.",
"* La malédiction d'Anvilmar ralentit l'attaque et le lancement du joueur ciblé : jetez-la si quelqu'un peut retirer des malédictions.",
"* Frappez fort le tank : surveillez la vie du tank, pas celle du groupe."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900022"] = { "Pillage",
"* Amenez le golem vers un endroit dégagé avec un mur derrière le groupe : il frappe le mur et les coins.",
"* Le coup de pied éloigne le tank : se battre près d'une patrouille lie le coup de pied contre les autres mobs.",
"* Éliminer les sbires avant : les sbires doivent tomber avant le pull ou le coup de pied les atteindra également."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900023"] = { "Infurnus",
"* Gardez l'élémentaire loin de l'appellant : tant qu'ils sont ensemble, les sbires ne cessent de venir.",
"* Tuez d'abord l'Invocateur d'Ombre Noire et concentrez-vous ensuite sur l'élémentaire.",
"* La Nova de feu touche tout autour : les personnages à distance et le soigneur doivent rester à la plus grande distance, les personnages au corps à corps doivent sortir avant qu'elle ne tombe.",
"* La Combustion brûle avec le temps : si possible, la disperse."
};

-- [editor web 2026-10-22] Importada de EN (SIN nombre oficial: EN provisional); tácticas pendientes --
pack["900024"] = { "Durgen Mornemartel",
"* Apporte deux petits golems de pierre : contrôle la salle ou elle se remplit d'esbirres.",
"* Élimine les mobs de la salle avant le pull : il est inutile de se battre contre les esbirres autour."
};
P.fr = fr;
