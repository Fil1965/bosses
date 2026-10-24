--[[
	Bosses_Cata_fr.lua
		Datos en FR del pack Cata (traducción fiel del ES; los nombres de
		jefes son los frFR del cliente/API Blizzard y los enlaces usan los
		mismos ids de sección del diario que ES/EN, con el título frFR
		entre corchetes como respaldo).
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- entradas compartidas (varios NPC ID, misma tabla)

-- =========================================================== --
-- Base historique 2011-2013 (traduite depuis le ES) --
-- =========================================================== --
-- ------------------- --
-- Instances heroiques --
-- ------------------- --

-- -------------------------------------- --
-- Castillo de Colmillo Oscuro : Zona 209 --

pack["46962"] = { "Baron Ashbury",
    "* On interrompt ou on dissipe |cff71d5ff|Hspell:93712|h[Douleur et souffrance]|h|r",
    "* L'|cff71d5ff|Hspell:93710|h[Asphyxie]|h|r laissera la vie de tout le monde à 1%, puis il lancera l'|cff71d5ff|Hspell:93705|h[Exécution ajournée]|h|r qu'on interrompt dès que le groupe récupère un peu de vie, car ça le soigne aussi."
};

pack["3887"] = { "Baron d'Argelaine HERO",
    "* Il faut dissiper l'|cff71d5ff|Hspell:93956|h[Aura impie]|h|r pour que les soins ne soient pas réduits.",
    "* Quand les adds sortent, full DPS sur les adds."
};

pack["4278"] = { "Commandant Printeval",
    "* Les adds se contrôlent et doivent se tuer au plus vite. Il faut interrompre la Potentiation profane qu'ils lancent.",
    "* Le tank le garde dos au groupe et évite les profanations au sol."
};

pack["46963"] = { "Seigneur Walden",
    "* Quand il lance la potion verte, TOUT le monde doit bouger.",
    "* Quand il lance la potion rouge, TOUT le monde doit rester immobile."
};

pack["46964"] = { "Seigneur Godfrey",
    "* Il faut dissiper la malédiction |cff71d5ff|Hspell:93761|h[Balles maudites]|h|r autant que possible",
    "* Il faut s'écarter du |cff71d5ff|Hspell:93520|h[Barrage de pistolets]|h|r."
};

-- ------------------------------ --
-- Minas de la muerte : Zona 1581 --

pack["47162"] = { "Glubtok <Le Superviseur>",
    "* En première phase il perd l'aggro après chaque téléportation, le tank reste attentif.",
    "* À 40% commence la seconde phase: on évite le mur de lave qui tourne.",
    "* Les élémentaux de la seconde phase se tuent peu à peu, car ils sortent de plus en plus: c'est le bon moment pour lancer l'héroïsme."
};

pack["47296"] = { "Hélix Engrecasse",
    "* Éviter les bombes qu'il lance.",
    "* Celui qui reçoit la |cff71d5ff|Hspell:88352|h[Bombe de poitrine]|h|r s'écarte du groupe jusqu'à l'explosion."
};

pack["43778"] = { "Faucheur 5000",
    "* Un DPS monte sur la faucheuse et on tue les 4 moissonneurs.",
    "* À la mort du dernier moissonneur le boss s'active: tout le monde monte, sauf celui de la faucheuse qui va tuant les adds qui sortent.",
    "* Quand le boss marque un joueur avec la |cff71d5ff|Hspell:88501|h[Moisson]|h|r, tout le monde s'écarte de la zone marquée.",
    "* Avec l'|cff71d5ff|Hspell:88481|h[Ultravelocité]|h|r on se sépare."
};

pack["47626"] = { "Amiral Grondéventre",
    "* Le soigneur doit rationner son mana.",
    "* Les adds doivent se tuer au plus vite, sinon ils grossissent et tuent le groupe.",
    "* Le boss doit se tuer au plus vite pour empêcher la |cff71d5ff|Hspell:88736|h[Soif de sang]|h|r de trop monter."
};

pack["47739"] = { "« Capitaine » Macaron",
    "* Le boss lâche des plats bons (blancs) et mauvais (verts) qui se compensent:",
    "  il faut prendre 1 mauvais pour 1 bon tout au long du combat pour éviter que le sol ne se remplisse de la zone nocive du plat mauvais.",
    "  Le tank, s'il n'a pas de souci d'aggro, peut prendre 2 mauvais pour 1 bon."
};

pack["49429"] = { "Vanessa VanCleef",
    "* Phase de Cauchemar: ",
    "  - On apparaît dans un chaudron où il faut activer 4 robinets pour s'échapper.",
    "  - On évite le feu et les avalanches jusqu'à Glubtok, et on le tue.",
    "  - Pendant la phase d'Hélix on ne bouge pas pour attirer le moins d'araignées possible.",
    "  - Le Faucheur fera des barrières d'éclairs tournant dans le tunnel: on évite de marcher dessus ou on saute par-dessus.",
    "  - Dans la phase suivante on tue au plus vite les grognards qui attaquent les pnj amicaux.",
    "* Phase Vanessa: ",
    "  - Priorité aux adds qui sortent.",
    "  - Quand elle pose les charges explosives, prenez les cordes de la flèche verte."
};

-- ----------------------------------- --
-- Cámaras de los Orígenes : Zona 4945 --

pack["39425"] = { "Gardien du temple Anhuur",
    "* Celui qui reçoit l'|cff71d5ff|Hspell:75592|h[Expiation]|h|r devrait s'écarter du groupe jusqu'à sa dissipation en 8 secondes pour éviter de trop soigner le boss.",
    "* Il se met à lancer l'|cff71d5ff|Hspell:75322|h[Hymne résonnant]|h|r: tout le groupe descend pour tirer les deux manettes. Au retour on interrompt l'hymne et on continue.",
    "Note : En normal, un seul DPS descend de chaque côté pour tirer chacun sa manette."
};

pack["39428"] = { "Enrageterre Ptah",
    "* C'est un boss optionnel de course au DPS."
};

pack["39788"] = { "Anraphet",
    "* Déplacer le boss pour éviter les zones que créent les |cff71d5ff|Hspell:76184|h[Rayons alpha]|h|r.",
    "* Mitigations pendant l'|cff71d5ff|Hspell:75622|h[Attitude oméga]|h|r."
};

pack["39587"] = { "Isiset",
    "* Quand il lance la |cff71d5ff|Hspell:74137|h[Supernova]|h|r on se retourne avant la fin de l'incantation pour ne pas rester étourdi.",
    "* À la division, l'ordre des copies devrait être: ",
    "   1º Appel du ciel",
    "   2º Pluie astrale",
    "   3º Voile du ciel"
};

pack["39731"] = { "Ammunae",
    "* Priorité de DPS aux Gousses du bourgeon pour qu'elles ne soignent pas le boss, et aux Fleurs pétalessang pour éviter les dégâts.",
    "* Si possible, dissiper le |cff71d5ff|Hspell:76043|h[Withering]|h|r quand il le pose sur des joueurs.",
    "Note : En héroïque le tank peut poser le boss sur une spore morte pour accélérer sa mort."
};

pack["39732"] = { "Setesh",
    "* Le boss ne se tank pas: se sont les adds qu'on tank au fil des sorties.",
    "* Si le DPS est bon, on peut ignorer les portails et pousser le boss au plus vite.",
    "* Sinon, détruire les portails dès leur sortie et le tank récupère les adds sans les tuer."
};

pack["39378"] = { "Rajh",
    "* Éviter les cyclones de feu.",
    "* Il faut interrompre l'|cff71d5ff|Hspell:80352|h[Invocation d'orbe]|h|r pour éviter les dégâts.",
    "* La |cff71d5ff|Hspell:76355|h[Bénédiction du soleil]|h|r fait des dégâts ET augmente les nôtres: tout le DPS à ce moment-là."
};

-- ------------------------------- --
-- Cavernas Roca Negra : Zona 4926 --

pack["39665"] = { "Rom'ogg Broie-les-Os",
    "* Éviter le nuage de poussière du |cff71d5ff|Hspell:75272|h[Tremblement]|h|r. En héroïque sortiront des élémentaux: si le tank et le soigneur sont à l'aise, on peut les ignorer; sinon il faut les tuer.",
    "* Quand il lance les |cff71d5ff|Hspell:75539|h[Chaînes de malheur]|h|r, il faut diriger TOUT le DPS sur les chaînes pour les briser, et une fois rompues fuir au plus vite pour ne pas mourir sous le |cff71d5ff|Hspell:75543|h[Le Frappe-crâne]|h|r."
};

pack["39679"] = { "Corla",
    "* Le but de ce boss est d'empêcher joueurs comme adds d'atteindre les 100 tics d'|cff71d5ff|Hspell:75610|h[Évolution]|h|r: si cela arrive, l'impliqué devient dragonkin et en HERO c'est un wipe.",
    "  Pour l'éviter on intercepte le rayon de l'add avant qu'il n'atteigne 80, et on s'échange quand on soi-même arrive à 80.",
    "  Le mieux est d'assigner un joueur à chaque add.",
    "Astuce : Si on se laisse distraire et qu'on ne voit pas le debuff, quand un personnage se met à clignoter il est sur le point de se transformer: à ce moment-là on change le joueur qui reçoit le rayon."
};

pack["39698"] = { "Karsh Plielacier",
    "* Le tank mettra le boss dans le jet de lave jusqu'à 5 ou 6 marques, pour l'en retirer aussitôt.",
    "* Quand la fonte du bouclier est sur le point de se dissiper il le remet dedans. Si elle venait à se dissiper, des élémentaux sortent et le combat se complique.",
    "Note : Le mieux est de l'y mettre par à-coups pour contrôler au maximum le temps qu'il y passe. Plus il y reste, plus la partie prend de dégâts."
};

pack["39700"] = { "La Belle",
    "* Idéalement on gardera les petits en CC pendant qu'on tue le boss. Si ce n'est pas possible, il faut tuer les petits avant le boss.",
};

pack["39705"] = { "Seigneur ascendant Obsidius",
    "* Idéalement un DPS kite les ombres (avec des ralentissements), celles-ci n'ont pas d'aggro et frapperont la dernière cible touchée.",
    "* Pendant ce temps le tank et le reste du groupe se concentrent sur le boss.",
    "* De temps en temps le boss s'échangera contre une ombre, moment où le DPS qui kitait et le tank intervertiront leurs mobs."
};

-- ----------------------------------------- --
-- Ciudad perdida de los Tol'vir : Zona 5396 --

pack["43612"] = { "Grand prophète Barim",
    "* En première phase on kite le phénix.",
    "* En seconde phase (l'ombre), full DPS au phénix."
};

pack["43614"] = { "Claque-Mâchoire",
    "* Celui qui porte la marque rapproche les adds du tank pour qu'il s'en débarrasse facilement.",
};

pack["49045"] = { "Augh",
    "* Éviter le |cff71d5ff|Hspell:91408|h[Tourbillon]|h|r.",
};

pack["44577"] = { "Général Husam",
    "* Déplacer le boss pour ne pas piétiner les mines du sol.",
    "* Éviter les zones du sol, signalées par un jet de poussière."
};

pack["44819"] = { "Siamat",
    "* Focus sur les adds",
};

-- ---------------------------- --
-- El Núcleo Pétreo : Zona 5088 --

pack["43438"] = { "Corborus",
    "* S'écarter immédiatement de la |cff71d5ff|Hspell:92648|h[Trombe de cristal]|h|r et en HERO tuer en même temps les araignées qui sortent des cristaux.",
    "* Dissiper le debuff |cff71d5ff|Hspell:82415|h[Vague d'atténuation]|h|r dès qu'il sort.",
    "* En HERO, quand Corborus passe sous terre, éviter à tout prix les nuages de poussière mortels."
};

pack["42810"] = { "Géant Sculpteur de cristal",
    "* Il faut sauter juste avant la fin de l'incantation du |cff71d5ff|Hspell:92631|h[Tremblement]|h|r.",
};

pack["43214"] = { "Peau-de-Pierre",
    "* Éviter les flaques de |cff71d5ff|Hspell:80800|h[Éruption]|h|r.",
    "* Éviter les pierres qui tombent, signalées par une ombre du plafond.",
    "* En HERO, quand il lance la |cff71d5ff|Hspell:92265|h[Tempête de cristal]|h|r, se placer derrière une pierre tombée pour éviter le dégât.",
};

pack["42188"] = { "Ozruk",
    "* Le tank dos au mur pour ne pas décoller quand il lance le |cff71d5ff|Hspell:78807|h[Briser]|h|r",
    "* Quand il lance |cff71d5ff|Hspell:92410|h[Fissuer]|h|r tout le monde, tank inclus, se retire pour éviter le dégât du |cff71d5ff|Hspell:92662|h[Éclat]|h|r; la zone se voit très bien au sol.",
    "* En HERO, avec le |cff71d5ff|Hspell:78939|h[Bastion d'élémentium]|h|r les DPS à distance posent un DoT pour qu'il se réfléchisse et les libère de la |cff71d5ff|Hspell:92426|h[Apathie]|h|r suivante.",
};

pack["42333"] = { "Grande prêtresse Azil",
    "* S'écarter des |cff71d5ff|Hspell:79340|h[Invocation d'un puits de gravité]|h|r mais en même temps les utiliser pour attirer les adeptes dedans.",
    "* Dissiper au tank le |cff71d5ff|Hspell:79351|h[Emprise de force]|h|r chaque fois qu'il le pose.",
    "* Si quelqu'un peut enlever les malédictions, sortir la |cff71d5ff|Hspell:79345|h[Malédiction de sang]|h|r tant que possible."
};

-- --------------------------------- --
-- Enrage Abisal: Trone de los Mareas --

pack["40586"] = { "Dame Naz'jar",
    "* Interrompre l'|cff71d5ff|Hspell:91477|h[Explosion de choque]|h|r",
    "* Éviter le geyser de l'|cff71d5ff|Hspell:75722|h[Invocation de geyser]|h|r.",
    "* Éviter les |cff71d5ff|Hspell:76001|h[Spores de champignons]|h|r.",
    "* À 66% et à 33% elle fera l'|cff71d5ff|Hspell:75683|h[Arroseur]|h|r et apparaîtront 3 adds qu'il est commode de garder sous CC pour faciliter le combat.",
};

pack["40765"] = { "Commandant Ulthok",
    "* TOUT LE MONDE évite toujours la |cff71d5ff|Hspell:76047|h[Fissure obscure]|h|r.",
    "* Le tank déplacera continuellement le boss dans la salle, répartissant les zones au sol."
};

pack["40825"] = { "Erunak Parlepierre",
    "* Le tank le garde dos au groupe pour éviter le dégât de la |cff71d5ff|Hspell:76170|h[Éclaboussure de magma]|h|r.",
    "* Dissipera tant que possible le |cff71d5ff|Hspell:76165|h[Coup de braises]|h|r quand le tank le reçoit.",
    "* On sortira le boss de la |cff71d5ff|Hspell:76234|h[Brume mentale]|h|r chaque fois qu'il la lance",
    "* S'il se met le |cff71d5ff|Hspell:76307|h[Absorber la magie]|h|r, il faut le dissiper sinon tout le dégât magique le soigne."
};

pack["40792"] = { "Neptulon",
    "* PHASE 1, le tank prend les Behemoth implacables; les petits adds peuvent se tuer directement par les DPS. Les Behemoths vont se balader par la salle jusqu'à leur mort.",
    "* PHASE 2, sortent des bestes et 3 fouetteurs qui canalisent sur Neptulon.",
    "    Il faut tuer les fouetteurs aussi vite que possible, bien que le tank des bestes reçoive du soutient pour ne pas mourir.",
    "    Le tank garde le dernier Behemoth hors de la salle avec les bestes.",
    "    Éviter les flaques d'encre du sol.",
    "* PHASE 3, Neptulon donne la |cff71d5ff|Hspell:76133|h[Puissance du flot]|h|r, à ce moment-là FULL DPS jusqu'à la mort du boss."
};

-- ---------------------- --
-- Grim Batol : Zona 4950 --
-- ---------------------- --

pack["39625"] = { "Général Umbriss",
    "* Quand il lance le |cff71d5ff|Hspell:74670|h[Coup-éclair]|h|r le joueur visé se déplace pour esquiver le dégât.",
    "* Le soigneur surveillera quand le tank reçoit la |cff71d5ff|Hspell:74846|h[Blessure ouverte]|h|r; la remonter au moins à 90% pour retirer le debuff.",
    "* Les DPS s'occupent des adds (Troggs), le tank ne les attire pas.",
    "  En HERO sort un trogg violet, un DPS sera assigné avant le début du combat.",
    "  Il devra être gardé sous CC; sinon le tuer loin du groupe et des autres adds, SEUL le DPS assigné le tape.",
};

pack["40177"] = { "Maître-forge Throngus",
    "* Éviter la zone du |cff71d5ff|Hspell:74984|h[Piétinement puissant]|h|r.",
    "* Avec la masse le tank le déplace dans la salle pour éviter le dégât.",
    "* Avec l'épée le soigneur se centre sur le tank, il encaisse fort.",
    "* Avec le bouclier il se tanke dans la coin de l'entrée et tout le monde, sauf le tank, se met à son dos."
};

pack["40319"] = { "Drahga Brûle-Ombre",
    "* Dès la sortie de l'|cff71d5ff|Hspell:75218|h[Invocation de flammes]|h|r le joueur suivi court dans la direction contraire pour ne pas se retrouver face à lui, tandis que les autres le tuent immédiatement.",
    "* Quand il monte sur le dragon il se tanke au centre de la salle pour faciliter l'évitement de la |cff71d5ff|Hspell:75321|h[Flamme de Valiona]|h|r en se plaçant derrière le dragon.",
    "* Quand il lance le |cff71d5ff|Hspell:90966|h[Flagellant dévastateur]|h|r, esquiver les fissures qui blessent et enlentissent.",
};

pack["40484"] = { "Erudax",
    "* Les DPS à distance restent séparés pour éviter que les |cff71d5ff|Hspell:79466|h[Ombres excavatrices]|h|r n'affectent qu'un seul.",
    "* Quand il lance la |cff71d5ff|Hspell:75664|h[Rafale d'ombres]|h|r tout le monde se place dans l'oeil de la bourrasque ou il meurt.",
    "* Après la Bourrasque sortira un Corrupteur Ignoré, ou 2 en HERO.",
    "  Les DPS doivent se répartir pour qu'il meure au plus vite car s'il atteint les œufs le boss se soignera et sortira des dragons qui blessent toute la party jusqu'à la fin."
};

-- ----------------------------------- --
-- La Cumbre du Vortex : Zona 5035
-- ----------------------------------- --

pack["43878"] = { "Grand vizir Ertan",
    "* Il faut éviter les |cff71d5ff|Hspell:86292|h[Bouclier de cyclone]|h|r."
};

pack["43873"] = { "Altairus",
    "* Chaque fois que possible, garder le vent dans le dos pour le buff.",
};

pack["43875"] = { "Asaad, calife des zéphyrs",
    "* Quand l'incantation de l'|cff71d5ff|Hspell:87618|h[Adhésion statique]|h|r va bientôt finir, sauter pour ne pas rester collé au sol.",
    "* Dissiper les adhésions de ceux qui n'ont pas eu le temps de sauter.",
    "* Il lance l'|cff71d5ff|Hspell:86911|h[Champ de mise à la terre instable]|h|r, tout le monde rentre dans le triangle pour ne pas mourir.",
};

-- ----------------------- --
-- Instances de ZENDALARI --
-- ----------------------- --

-- -------------------- --
-- Zul'Aman : Zona 3805 --
-- -------------------- --

pack["23574"] = { "Akil'zon",
    "* Tout le monde séparé à + de 6 yards. La |cff71d5ff|Hspell:61911|h[Perturbation statique]|h|r augmente le dégât s'il y a des joueurs proches.",
    "* Full DPS sur le aigle blanc qui soulève un joueur.",
    "* Quand un pj s'élève pour faire une |cff71d5ff|Hspell:45336|h[Surcharge électrique]|h|r, tout le monde en dessous pour esquiver le dégât."
};

pack["23576"] = { "Nalorakk",
    "* Le |cff71d5ff|Hspell:42402|h[Charge]|h|r touche le joueur le plus éloigné, on s'alterne après chaque charge, sinon = mort.",
    "* En forme d'ours il lance des interruptions, œil, soigneur: si ça coïncide avec la |cff71d5ff|Hspell:42395|h[Entaille lacérante]|h|r qui fait 180k.",
    "* Full DPS au boss."
};

pack["23578"] = { "Jan'alai",
    "* Il sort 2 adds, on n'en tue qu'UN seul.",
    "* Le tank le boss à côté de l'autre add, devant la passerelle pour agréger les petits et les tuer de zone.",
    "* Le boss va au centre et pose des bombes au sol qu'on évite car elles explosent.",
    "* Ces opérations se répètent pendant tout le combat.",
    "* Parfois le boss lâche une gerbe frontale qui laisse un sillon au sol à esquiver.",
    "|cFFFF0000Astuce :|r Avec un mage dans le groupe, il est intéressant de lui voler son tremblement de terre du pull précédent pour le lancer au boss."
};

pack["23577"] = { "Halazzi",
    "* Éloigner le boss de la zone des totems d'eau.",
    "* Les casters peuvent se servir de la zone des totems d'eau pour remonter vie et mana.",
    "* Rompre immédiatement les totems de foudre."
};

pack["24239"] = { "Seigneur des maléfices Malacrass",
    "* D'abord on neutralise les deux adds.",
    "  Idéalement on CC l'add de gauche pendant qu'on fait full dps au celui de droite",
    "  et si on peut le garder CC jusqu'à la fin on continue avec le boss,",
    "  sinon on tue le second add avant de reprendre le boss.",
    "* Il utilisera les compétences des joueurs. Il faut rester attentif à interrompre et dissiper le plus possible."
};

pack["23863"] = { "Daakara",
    "* Il se transforme aléatoirement en 2 des 4 formes:",
    "  - Aigle. Rompre le totem de foudre et esquiver les cyclones.",
    "  - Ours. Le soigneur doit dissiper la paralysie et ne pas oublier les charges.",
    "  - Lynx. Difficile pour le soigneur, il faut tuer 2 félins au plus vite. Le boss pose des saignements aléatoires.",
    "  - Dracofaucon. Esquiver les dégâts des sillons et colonnes de feu."
};

-- --------------------- --
-- Zul'Gurub : Zona 1977 --
-- --------------------- --

pack["52155"] = { "Grand prêtre Venoxis",
    "* Quand il peint le labyrinthe, on ne touche ni on ne saute les lignes vertes.",
    "* Quand 2 pjs sont reliés par le lien toxique ils s'éloignent le plus possible pour le rompre.",
    "  Personne ne doit rester à proximité à sa rupture: il frappe en zone.",
    "* Éviter les flaques au sol, en déplaçant le boss pour taper sans les piétiner. Les flaques grossissent.",
    "* Éviter le souffle vert en se plaçant derrière.",
    "* Quand il lance le rayon, courez pour l'éviter.",
    "* Quand le boss est étourdi il faut faire DPS à fond car il y a un modificateur de +100% de dégât."
};

pack["52151"] = { "Seigneur sanglant Mandokir",
    "* Les esprits sont la clé. Quand le raptor est libre, le tuer au plus vite pour qu'il ne tue pas d'esprit.",
    "  Chaque esprit peut ressusciter un pj mort et, à sa renaissance, le pj fait plus de dégât et subit moins de dégât.",
    "* Éviter les sillons au sol quand le boss les lance.",
    "* On évitera d'offrir de la vie au boss en sur-soignant celui qui reçoit la saignée; le garder un brin au-dessus de 7500 suffit.",
};

pack["52059"] = { "Grande prêtresse Kilnara",
    "* Éviter les murs violets (genre vagues de Sartharion).",
    "* Interrompre les larmes de sang.",
    "* Avant que le boss passe à 50%, tuer les panthères de 1 à 1 ou de 2 à 2."
};

pack["52053"] = { "Zanzil",
    "* Interrompre la Décharge vaudou.",
    "* S'éloigner du Feu Zanzil.",
    "* Élixir bleu : boire du Chaudron de givre et finir le Rancunier au plus vite (il n'a pas d'aggro).",
    "* Élixir vert : boire du Chaudron de poison au plus vite.",
    "* Élixir rouge : boire du Chaudron de feu pour tuer les zombies de zone."
};

pack["52148"] = { "Jin'do le Briseur de dieux",
    "* Mettre le boss dans la Zone morte; les pjs entrent aussi quand il invoque les Ombres de Hakkar.",
    "* Pendant que le tank amène les trolls géants, le reste du groupe doit finir les esprits invoqués, ainsi que les chaînes.",
    "* Éviter les Pointes des Ombres."
};

pack["52258"] = { "Gri'lek",
    "* Le joueur marqué par la |cff71d5ff|Hspell:68987|h[Poursuite]|h|r kite le boss.",
    "* Sortir de la zone |cff71d5ff|Hspell:89932|h[Ligne de faille]|h|r quand il se marque.",
};

pack["52286"] = { "Wushoolay",
    "* Le tank le garde dos au groupe.",
    "* Sortir de la |cff71d5ff|Hspell:96710|h[Nuage de foudre]|h|r.",
    "* Se tenir séparés les uns des autres."
};

pack["52269"] = { "Renataki",
    "* Soigner l'embusqué du Disparaître.",
    "* Éviter le dégât de zone des |cff71d5ff|Hspell:96645|h[Mille lames]|h|r."
};

pack["52271"] = { "Hazza'rah",
    "* Interrompre la Colère.",
    "* Tuer les cauchemars avant qu'ils n'atteignent leur joueur, sinon il meurt."
};

-- ----- --
-- RAIDS --
-- ----- --

-- ------------------------------ --
-- Bastión de Baradin : Zona 5600 --

pack["47901"] = { "Unité de confinement démoniaque",
    "* Ces monstres doivent se tuer avec tout le groupe collé sur le tank pour répartir les dégâts du |cff71d5ff|Hspell:89348|h[Rayon repoussant les démons]|h|r."
};

pack["47120"] = { "Argaloth",
    "* En 10 se forment 2 groupes, chacun avec 1 tank, 1 soigneur et 3 DPS.",
    "* Chaque groupe se placera d'un côté d'Argaloth. Et restera en boule sur le tank pour répartir les dégâts.",
    "* Après chaque |cff71d5ff|Hspell:88942|h[Coupe météorique]|h|r les tanks s'échangent le boss.",
    "* Pendant la phase de |cff71d5ff|Hspell:88972|h[Tempête de Feu abject]|h|r tout le monde bouge pour éviter les dégâts sans piétiner le feu.",
    "* À la fin de la tempête chaque groupe reprend sa position et l'on répète ce qui a été expliqué."
};

pack["52363"] = { "Occu'thar",
    "* Personne ne traverse son frontal: les |cff71d5ff|Hspell:-2606|h[Ombres incendiaires]|h|r font un cône devant lui (les corps à corps vont derrière).",
    "* Les |cff71d5ff|Hspell:-2607|h[Yeux d'Occu'thar]|h|r marquent chaque joueur: à 10s chaque œil traverse son hôte (|cff71d5ff|Hspell:-2609|h[Destruction d'Occu'thar]|h|r) et tue, alors les yeux meurent vite et le |cff71d5ff|Hspell:-2608|h[Regard d'Occu'thar]|h|r s'esquive.",
    "* Le |cff71d5ff|Hspell:-2605|h[Feu focalisé]|h|r est une flaque de feu au sol sous un joueur: ce joueur bouge."
};

pack["55869"] = { "Alizabal, maîtresse de la haine",
    "* Son |cff71d5ff|Hspell:-4120|h[Embrochement]|h|r étourdit le tank 8s: l'OT le récupère aussitôt.",
    "* La |cff71d5ff|Hspell:-4121|h[Haine vengeresse]|h|r cloue un joueur: le marqué s'écarte du reste.",
    "* La |cff71d5ff|Hspell:-4122|h[Danse des lames]|h|r est un dégât physique croissant chaque seconde: full DPS et soigneurs attentifs au tank — il faut finir vite."
};

-- -------------------------------- --
-- Descenso de Alanegra : Zona 5094 --

pack["41570"] = { "Magmagueule",
    "* Il mord le tank avec la |cff71d5ff|Hspell:-3314|h[Mutilation]|h|r (leur |cff71d5ff|Hspell:-3315|h[Armure étouffante]|h|r fond l'armure) et à cet instant deux joueurs enchaînés montent sur les pinces: ils accrochent le pic avec le",
    "* |cff71d5ff|Hspell:-3320|h[Lancer le crochet]|h|r et l'empalent, ouvrant le |cff71d5ff|Hspell:-3321|h[Point vulnérable]|h|r qui prend des dégâts croissants.",
    "* Le tank ne peut pas le laisser sans corps à corps: s'il n'atteint personne il entre en |cff71d5ff|Hspell:-3317|h[Colère de la fournaise]|h|r.",
    "* Les |cff71d5ff|Hspell:-3312|h[Parasites de lave]|h|r sautent sur des joueurs et les drainent (|cff71d5ff|Hspell:-3313|h[Infection parasitique]|h|r): le raid les tue à l'aoe en s'écartant.",
    "* Le |cff71d5ff|Hspell:-3310|h[Crachat de magma]|h|r crache sur 3 joueurs et le |cff71d5ff|Hspell:-3311|h[Pilier de flammes]|h|r tombe aux pieds de la cible, qui s'écarte.",
    "* Héroïque: le seigneur Néfarius ajoute l'|cff71d5ff|Hspell:-3323|h[Inferno flamboyant]|h|r (sol en flammes), des |cff71d5ff|Hspell:-3325|h[assemblages d'os flamboyants]|h|r de |cff71d5ff|Hspell:-3327|h[Armageddon]|h|r (dégât total avant d'exploser) et son |cff71d5ff|Hspell:-3328|h[Souffle d'ombre]|h|r à 30%."
};

bos = { "Système de défense Omnitron",
    "* Les quatre golems alternent deux par deux: seul l'ACTIF se tape pendant que l'autre se recharge.",
    "* Magmatron: son |cff71d5ff|Hspell:-3264|h[Mesure de sécurité pour l'incinération]|h|r frappe toute la salle (soins continus);",
    "* le marqué du |cff71d5ff|Hspell:-3265|h[Acquisition d'une cible]|h|r court hors du cône du |cff71d5ff|Hspell:-3266|h[Lance-flammes]|h|r et en héroïque encaisse avec soins les |cff71d5ff|Hspell:-3267|h[Ténèbres enveloppantes]|h|r; sa |cff71d5ff|Hspell:-3268|h[Barrière]|h|r se casse à coups.",
    "* Arcanotron: le |cff71d5ff|Hspell:-3195|h[Générateur de puissance]|h|r buffe celui qui le piétine et les golems, donc on le laisse sans piétiner;",
    "* l'|cff71d5ff|Hspell:-3196|h[Annihilateur arcanique]|h|r s'interrompt au possible et avec la |cff71d5ff|Hspell:-3197|h[Conversion de puissance]|h|r PERSONNE n'attaque le bouclier.",
    "* Électron: le marqué du |cff71d5ff|Hspell:-3202|h[Conducteur de foudre]|h|r s'écarte (il blesse les proches); on s'éparpille pour la |cff71d5ff|Hspell:-3203|h[Décharge d'électricité]|h|r et son |cff71d5ff|Hspell:-3204|h[Bouclier instable]|h|r ne se touche pas (héroïque: il déclenche l'|cff71d5ff|Hspell:-3205|h[Infusion d'ombre]|h|r).",
    "* Toxitron: les |cff71d5ff|Hspell:-3269|h[Bombes chimiques]|h|r et leurs |cff71d5ff|Hspell:-3270|h[Nuages chimiques]|h|r (personne dedans: +50% de dégâts subis) et son |cff71d5ff|Hspell:-3271|h[Protocole de poison]|h|r lâchent des bombes poursuivantes qui forment des",
    "* |cff71d5ff|Hspell:-3273|h[Flaques de poison]|h|r; sa |cff71d5ff|Hspell:-3274|h[Carapace trempée de poison]|h|r ne s'attaque pas non plus (elle trempe de poison l'attaquant)."
};
pack["42179"] = bos; pack["42178"] = bos; pack["42166"] = bos; pack["42180"] = bos;

pack["41442"] = { "Atramédès",
    "* Tout le combat tourne autour du |cff71d5ff|Hspell:-3072|h[Son]|h|r: le raid part à 0 de points et tout effet sonore monte la barre; à 100 il canalise la |cff71d5ff|Hspell:-3455|h[Dévastation]|h|r qui tue le raid, donc éviter les sources de son est la clé.",
    "* Les |cff71d5ff|Hspell:-3073|h[anciens boucliers nains]|h|r (10 épars) s'utilisent aux moments clés: le |cff71d5ff|Hspell:-3074|h[Fracas résonnant]|h|r l'interrompt et applique |cff71d5ff|Hspell:-3075|h[Vertige]|h|r avec +50% de dégâts subis.",
    "* Au sol: la |cff71d5ff|Hspell:-3076|h[Pulsation de sonar]|h|r laisse des disques qui poursuivent la cible, la |cff71d5ff|Hspell:-3077|h[Modulation]|h|r frappe tout le monde (soins en réserve) et le |cff71d5ff|Hspell:-3078|h[Souffle sonique]|h|r poursuit un joueur tandis que les |cff71d5ff|Hspell:-3079|h[Flammes incendiaires]|h|r brûlent le sol.",
    "* En vol: son |cff71d5ff|Hspell:-3086|h[Souffle de flamme rugissante]|h|r et les |cff71d5ff|Hspell:-3087|h[Flammes rugissantes]|h|r rôtissent le sol, la |cff71d5ff|Hspell:-3085|h[Bombe sonar]|h|r tombe près d'un joueur et la |cff71d5ff|Hspell:-3088|h[Boule de feu sonique]|h|r poursuit ses marques (personne d'autre dans la ligne).",
    "* Héroïque: le démon |cff71d5ff|Hspell:-3082|h[odieux]|h|r agace le groupe en buffant Atramédès (il meurt vite quand le groupe le peut)."
};

pack["43296"] = { "Chimaeron",
    "* Le |cff71d5ff|Hspell:-3009|h[Bile-O-Tron]|h|r (le robot de Pip) garde le groupe au-dessus de 10 000 PV: en dessous, la |cff71d5ff|Hspell:-3012|h[Gelée caustique]|h|r tue carrément, donc le soigneur se concentre sur la valeur maximale de la vie de chacun.",
    "* Le |cff71d5ff|Hspell:-3013|h[Massacre]|h|r laisse tout le monde à 1% de vie (la |cff71d5ff|Hspell:-3010|h[Mixture de Pépin]|h|r les sauve) et il faut soigner juste après.",
    "* Sa |cff71d5ff|Hspell:-3015|h[Brèche]|h|r empile +25% de dégâts physiques sur le tank et l'|cff71d5ff|Hspell:-3016|h[Attaque double]|h|r frappe deux fois: les tanks s'alternent toutes les 2 marques.",
    "* À 20% il canalise |cff71d5ff|Hspell:-3018|h[Mortalité]|h|r (invulnérable aux provocations et à peine soignable): full DPS final avec la Mixture de Pépin couvrant les 1%.",
    "* Héroïque: Néfarius déclenche des |cff71d5ff|Hspell:-3020|h[Ombres moqueuses]|h|r périodiques qui blessent tout le monde (soins de zone prêts)."
};

pack["41378"] = { "Maloriak",
    "* Il verse des fioles dans le chaudron et la couleur commande: avec la |cff71d5ff|Hspell:-2935|h[fiole rouge]|h|r il lance les |cff71d5ff|Hspell:-2936|h[flammes consumantes]|h|r sur une cible et la |cff71d5ff|Hspell:-2937|h[Déflagration brûlante]|h|r se partage entre",
    "* ceux qui sont proches (groupe collé); avec la |cff71d5ff|Hspell:-2938|h[fiole bleue]|h|r le |cff71d5ff|Hspell:-2939|h[Frisson mordant]|h|r touche qui est proche (groupe collé) et le |cff71d5ff|Hspell:-2940|h[Gel instantané]|h|r piège des joueurs;",
    "* avec la |cff71d5ff|Hspell:-2941|h[fiole verte]|h|r la |cff71d5ff|Hspell:-2942|h[Gelée débilitante]|h|r fait subir plus de dégâts (en profiter: full DPS).",
    "* À chaque fiole il déclenche la |cff71d5ff|Hspell:-2931|h[Libération des aberrations]|h|r: elles se tuent séparées, car elles se buffent entre elles avec le |cff71d5ff|Hspell:-2933|h[Catalyseur de croissance]|h|r.",
    "* Avec le |cff71d5ff|Hspell:-2943|h[flacon de Magie noire]|h|r (héroïque) sortent les |cff71d5ff|Hspell:-2946|h[Vil rata]|h|r qui marquent le sol avec leur |cff71d5ff|Hspell:-2947|h[Vase des ténèbres]|h|r et canalisent le |cff71d5ff|Hspell:-2945|h[Linceul de ténèbres]|h|r: les interrompre.",
    "* PHASE 2 (25%): |cff71d5ff|Hspell:-2949|h[Libération de tous les serviteurs]|h|r (aberrations + les 2 |cff71d5ff|Hspell:-2953|h[Sujets primordiaux]|h|r, priorité de mort) en esquivant les |cff71d5ff|Hspell:-2950|h[Jets de magma]|h|r,",
    "* le |cff71d5ff|Hspell:-2951|h[Zéro absolu]|h|r explose au loin et la |cff71d5ff|Hspell:-2952|h[Nova d'acide]|h|r est un dot croissant: soins et dégât final."
};

bos = { "Nefarian",
    "* Nefarian ressuscite Onyxia (|cff71d5ff|Hspell:-3277|h[Phase 1 : Relève-toi, ma sœur !]|h|r): s'ils restent à moins de 50 m, les |cff71d5ff|Hspell:-3278|h[Enfants d'Aile de mort]|h|r doublent leur vitesse d'attaque, donc les deux dragons se tank à des extrémités séparées.",
    "* PHASE 1: on tue Onyxia d'abord; son |cff71d5ff|Hspell:-3284|h[Énergie électrique]|h|r monte avec le temps et à chaque |cff71d5ff|Hspell:-3276|h[Électrocuter]|h|r de Nefarian, et une |cff71d5ff|Hspell:-3288|h[Surcharge électrique]|h|r complète rase la salle;",
    "* Nefarian invoque des |cff71d5ff|Hspell:-3280|h[Grêle d'os]|h|r à l'atterrissage et applique l'|cff71d5ff|Hspell:-3295|h[Assujettissement]|h|r sur un joueur (sa |cff71d5ff|Hspell:-3297|h[Puissance dérobée]|h|r se soigne, le joueur ne doit pas être touché).",
    "* PHASE 2 (Onyxia morte): le sol se remplit de lave et reste 3 plateformes, un |cff71d5ff|Hspell:-3299|h[Prototype chromatique]|h|r chacune: on tue les 3 vite, car leur |cff71d5ff|Hspell:-3300|h[Nova explosive]|h|r frappe tout le monde,",
    "* en esquivant le |cff71d5ff|Hspell:-3301|h[Barrage d'Ombreflamme]|h|r et les |cff71d5ff|Hspell:-3302|h[Braises explosives]|h|r du vol.",
    "* PHASE 3: Nefarian atterrit et full DPS avec l'héroïsme, ne pas s'éterniser (sa |cff71d5ff|Hspell:-3305|h[Étincelle d'Ombrase]|h|r croît et ses |cff71d5ff|Hspell:-3306|h[Guerriers des ossements animés]|h|r reviennent avec des |cff71d5ff|Hspell:-3307|h[Coups surpuissants]|h|r)."
};
pack["41376"] = bos; pack["41270"] = bos;

pack["43324"] = { "Cho'gall",
    "* Le |cff71d5ff|Hspell:-3165|h[Sang vicié]|h|r remplit la barre de Corruption à chaque capacité: à 25% accéléré, à 50% nausée continue,",
    "* à 75% une malformation tentaculaire sort et à 100% le contrôle se perd — la garder basse à tour de rôle est la clé du combat.",
    "* Les |cff71d5ff|Hspell:-3161|h[Corrupteurs adhérents]|h|r sortent par les portails latéraux: DPS/CC et les tuer vite, leur |cff71d5ff|Hspell:-3162|h[Dépravation]|h|r est dégât de zone.",
    "* Le marteau alterne |cff71d5ff|Hspell:-3156|h[Ordres de la flamme]|h|r et |cff71d5ff|Hspell:-3158|h[Ordres de l'ombre]|h|r: avec la flamme, le tank écarte le boss du groupe par la |cff71d5ff|Hspell:-3211|h[Brasier]|h|r; avec l'ombre, s'éparpiller un peu.",
    "* La |cff71d5ff|Hspell:-3155|h[Conversion]|h|r esclavise des joueurs: en sortir avec étourdissements/disruption (chaque applaudissement la buffe avec la |cff71d5ff|Hspell:-3209|h[Dévotion tordue]|h|r).",
    "* Les |cff71d5ff|Hspell:-3160|h[Invocation d'un corrupteur adhérent]|h|r de Cho'gall laissent des cadavres d'où naît le |cff71d5ff|Hspell:-3216|h[Sang du Dieu très ancien]|h|r, il convient donc de les tuer loin du tracé du groupe.",
    "* PHASE 2 à 25%: la |cff71d5ff|Hspell:-3218|h[Corruption du Dieu très ancien]|h|r remplit la salle de tentacules — full DPS avec l'héroïsme, œil aux |cff71d5ff|Hspell:-3219|h[Créations assombries]|h|r: leur |cff71d5ff|Hspell:-3221|h[Rayon débilitant]|h|r réduit les soins de 75% et le marqué s'écarte.",
};

pack["44600"] = { "Halfus Brise-Wyrm",
    "* Priorités: Time Warden, Storm Rider, Successeur abyssal, Orphelin d'algue émeraude, Dragon d'ardoise.",
    "* Idéalement le MT tank Halfus et l'un des dragons, le second tank en prend un autre.",
    "* Les dragons se tuent dans le boss pour lui retirer leur dégât.",
    "* Avec le dragon d'ardoise on échange le boss toutes les 4 tics du |cff71d5ff|Hspell:39171|h[Coups malveillants]|h|r.",
};

pack["45992"] = { "Valiona",
    "FASE 1",
    "* On reste séparés jusqu'à la première |cff71d5ff|Hspell:92909|h[Brûlures de présage]|h|r de Theralion.",
    "* Quand un joueur reçoit |cff71d5ff|Hspell:92878|h[Évanouissement]|h|r, lui plus tout le groupe (hors le tank) se regroupent au fond du boss; une fois tous ensemble on dissipe pour répartir les dégâts.",
    "* Quand il lance les |cff71d5ff|Hspell:92873|h[Flammes dévorantes]|h|r tout le monde se place derrière le boss pour esquiver les dégâts.",
    "* Quand il lance la |cff71d5ff|Hspell:93063|h[Destruction éblouissante]|h|r, trois cercles apparaissent sous des joueurs d'où il faut sortir",
    "  et cinq secondes après, un missile met dans le Royaume crépusculaire ceux qui piétiné les zones de crépuscule; on en sort par le portail rose sans toucher les orbes roses du sol.",
};

pack["45993"] = { "Theralion",
    "FASE 2",
    "* Valiona utilisera le |cff71d5ff|Hspell:92861|h[Météore crépusculaire]|h|r pendant le vol, qui fonctionne comme l'Évanouissement.",
    "  Il pose une marque sur le joueur touché et à trois secondes il déclenche 150k de dégâts répartis entre les pjs autour. Avec 5, c'est suffisant.",
    "* La |cff71d5ff|Hspell:92909|h[Brûlures de présage]|h|r pose une zone violette sous un joueur qu'on évite.",
    "* Le joueur qui reçoit le buff |cff71d5ff|Hspell:95641|h[Gorgée de magie étrange]|h|r s'écarte des autres pour ne pas leur faire de dégât.",
    "* Le |cff71d5ff|Hspell:86059|h[Souffle profond]|h|r couvre un tiers de la salle de feu: qui le piétine entre dans le Royaume crépusculaire.",
    "  On sort du Royaume crépusculaire par le portail rose sans piétiner les orbes roses du sol.",
};

pack["43686"] = { "Ignacious",
    "FASE 1",
    "* Il se tank à une extrémité de la salle avec 1 tank et les DPS corps à corps derrière le boss.",
    "* Les joueurs qui reçoivent |cff71d5ff|Hspell:82660|h[Sang ardent]|h|r se placeront près des DPS à distance de Feludius pour augmenter les dégâts qu'ils font tant que dure le buff.",
    "* Quand il fait un |cff71d5ff|Hspell:92521|h[saut d'enfer]|h|r sur un joueur, au retour il laissera un sillon au sol qui se piétine quand nous avons l'effet de |cff71d5ff|Hspell:82762|h[Enracinement]|h|r posé par la |cff71d5ff|Hspell:82700|h[Bombe de l'eau]|h|r.",
};

pack["43687"] = { "Feludius",
    "FASE 1",
    "* Il se tank à l'extrémité opposée d'Ignacious, avec 1 tank. Les DPS à distance se placent loin du boss et séparés entre eux.",
    "* Les joueurs qui reçoivent |cff71d5ff|Hspell:82667|h[Coer de glace]|h|r se placeront près des DPS corps à corps d'Ignacious pour augmenter les dégâts qu'ils font tant que dure le buff.",
    "* Il faut interrompre le lancement du |cff71d5ff|Hspell:92509|h[Lance hydro]|h|r ou il tuerait un des joueurs.",
};

pack["43688"] = { "Arion",
    "FASE 2",
    "* L'|cff71d5ff|Hspell:-3131|h[Bâtonnet d'éclair]|h|r marque plusieurs joueurs: s'écartement pour que la |cff71d5ff|Hspell:-3132|h[Chaîne d'éclairs]|h|r ne rebondisse pas dans le raid.",
    "* La |cff71d5ff|Hspell:-3133|h[Dispersion]|h|r le téléporte: la |cff71d5ff|Hspell:-3134|h[Foudroyance dévastatrice]|h|r tombe sur sa cible au retour et tue autour (seul le marqué, tout le reste dehors).",
    "* Avant son |cff71d5ff|Hspell:-3130|h[Choque de tonnerre]|h|r, toucher un des cyclones de |cff71d5ff|Hspell:-3129|h[Accélération des vents]|h|r: la |cff71d5ff|Hspell:-3152|h[Rugissement des vents]|h|r (levitation) évite le dégât électrique.",
    "* À 25% il fusionne avec Terrastra en la Monstruosité en élémentium: la finir vite (voir son entrée).",
};

pack["43689"] = { "Terrastra",
    "FASE 2",
    "* L'|cff71d5ff|Hspell:-3138|h[Éruption]|h|r: rochers du sol autour d'elle, le tank la déplace et personne ne se plante dessus.",
    "* Les levités (par les cyclones) doivent toucher un |cff71d5ff|Hspell:-3136|h[Puits de gravité]|h|r pour atterrir avant le |cff71d5ff|Hspell:-3139|h[Tremblement]|h|r: en l'air on prend le pire coup.",
    "* L'|cff71d5ff|Hspell:-3137|h[Durcissement de peau]|h|r la bufe et absorbe du dégât: les DPS la descendent pour la rompre.",
};

pack["43735"] = { "Monstruosité en élémentium",
    "FASE 3",
    "* L'héroïsme, la Furie sanguinaire, etc... doivent se garder pour cette phase qui est une course au DPS.",
    "* L'|cff71d5ff|Hspell:-3146|h[Installité électrique]|h|r: dégât de nature croissant chaque 1s, groupe assez séparé et les mêlées sans s'empiler sur le tank.",
    "* Le |cff71d5ff|Hspell:-3147|h[Broyage gravitationnel]|h|r enferme un joueur dans une bulle qui l'élève: les autres la rompent à coups.",
    "* La |cff71d5ff|Hspell:-3148|h[Graine de lave]|h|r sème les sols de graines qui explosent: les esquiver et ne pas les piétiner.",
    "* L'|cff71d5ff|Hspell:-3149|h[Aura cryogénique]|h|r gèle le sol (difficile de se déplacer) et réduit de 25% les dégâts qu'elle subit.",
};

pack["45213"] = { "Sinestra",
    "* Seulement en 25. PHASE 1 (jusqu'à 30%): elle vole et il faut la brûler depuis les airs; les |cff71d5ff|Hspell:-3229|h[Tranchoirs du Crépuscule]|h|r poursuivent un joueur depuis le ciel: le marqué court loin (quand l'orbe meurt,",
    "* personne devant pour la |cff71d5ff|Hspell:-3230|h[Déflagration du Crépuscule]|h|r).",
    "* Le |cff71d5ff|Hspell:-3227|h[Calvaire]|h|r tombe sur un joueur avec dégâts croissants et SAUTERA à un joueur proche passé son temps: le marqué s'écarte du groupe et le soigneur la pousse au bord.",
    "* Les |cff71d5ff|Hspell:-3231|h[Dragonnets du Crépuscule]|h|r arrivent avec leur |cff71d5ff|Hspell:-3232|h[Crachat du Crépuscule]|h|r sur un joueur: un kitteur les emmène au fond et ils meurent vite, sans piétiner les flaques de |cff71d5ff|Hspell:-3233|h[Essence du Crépuscule]|h|r.",
    "* PHASE 2 (à 30%): Calen commence son duel et les |cff71d5ff|Hspell:-3238|h[Œufs du crépuscule vibrant]|h|r se débarrassent de leur |cff71d5ff|Hspell:-3308|h[Carapace du Crépuscule]|h|r par vagues: full DPS sur les œufs à chaque fenêtre;",
    "* les |cff71d5ff|Hspell:-3239|h[Mande-hargnes du Crépuscule]|h|r arrivent et leur |cff71d5ff|Hspell:-3240|h[Déchaînement de l'essence]|h|r s'interrompt (la |cff71d5ff|Hspell:-3241|h[Indomptable]|h|r punit le CC long), et les |cff71d5ff|Hspell:-3242|h[Drakes du Crépuscule]|h|r passent avec leur |cff71d5ff|Hspell:-3243|h[Souffle du Crépuscule]|h|r.",
    "* PHASE 3 (œufs morts): la |cff71d5ff|Hspell:-3246|h[Essence des Rouges]|h|r buffe le raid et full DPS final."
};

-- -- Trône des Quatre Vents --

pack["45870"] = { "Anshal",
    "NOTES GÉNÉRALES",
    "* Ce combat compte 3 Seigneurs-du-vent Anshal, Nezir et Rohash avec un enrage de 8 minutes",
    "Il faut tuer les trois avec une différence maximum d'une minute; sinon, ils reviennent à la vie",
    "* Chaque boss a une barre d'énergie qui, une fois remplie (à 90), les fait utiliser leur capacité spéciale: les déplacements entre plateformes se font quand leur barre arrive à 80 au plus tard",
    "Stratégie:",
    "* 4 groupes: 1º: 1 tank, 1 soigneur et 1 dps [Anshal]; 2º: 1 tank et 1 soigneur (idéalement un paladin sacré, car il se débarrasse de ses debuffs); 3º: 1 dps et 1 soigneur [Rohash]; 4º: un groupe mobile de 3 dps",
    "* Optimiser le dps des trois pour qu'ils descendent de manière similaire",

    "* Plateforme Anshal: périodiquement il caste la |cff71d5ff|Hspell:86205|h[Brise apaisante]|h|r qui le soigne, lui et ses alliés, tout en silenciant le groupe",
    "* Il caste |cff71d5ff|Hspell:85422|h[Nourrir]|h|r qui invoque des trepadores qui utilisent à leur tour les |cff71d5ff|Hspell:93121|h[Spores toxiques]|h|r",
    "* Spécial: |cff71d5ff|Hspell:84638|h[Zéphyr]|h|r: ne pas laisser de trepadores avant la capacité spéciale",
};

pack["45872"] = { "Rohash",
    "Attaques:",
    "* |cff71d5ff|Hspell:86193|h[Explosion de vent]|h|r, la plus dangereuse: celui qui est face à lui quand il la lance est poussé à 200 mètres",
    "* |cff71d5ff|Hspell:86182|h[Vendaval déchiquetant]|h|r, une attaque à distance",
    "* Spécial: |cff71d5ff|Hspell:86481|h[Ouragan]|h|r: le plus grand dégât est celui de la chute (environ 70k), tous ceux qui peuvent devront donc utiliser Forme de félin, le frein de chute, etc"
};

pack["45871"] = { "Nezir",
    "Attaques:",
    "* |cff71d5ff|Hspell:86082|h[Givre permanent]|h|r, il oblige à rester séparés",
    "* |cff71d5ff|Hspell:93130|h[Zone de givre]|h|r, sortir IMMÉDIATEMENT de sa zone d'effet",
    "* |cff71d5ff|Hspell:84645|h[Vent glacial]|h|r, la plus dangereuse: elle force les tanks/soigneurs à se renverser entre plateformes quand ils ne peuvent pas rester à soigner les dégâts (empilements) (Anshal-Nezir)",
    "* Spécial: |cff71d5ff|Hspell:84644|h[Tempête de grêle]|h|r",
};

pack["46753"] = { "Al'Akir",
    "* PHASE 1 (jusqu'à 80%): la |cff71d5ff|Hspell:-3022|h[Jaillissement de vent]|h|r et les |cff71d5ff|Hspell:-3023|h[Lignes de grains]|h|r frappent de loin (on s'écarte), les |cff71d5ff|Hspell:-3024|h[Tempêtes de glace]|h|r avancent au sol (on les esquive) et le |cff71d5ff|Hspell:-3025|h[Foudre]|h|r punit le marqué.",
    "* PHASE 2: la |cff71d5ff|Hspell:-3032|h[Pluie acide]|h|r grossit dans le temps (full DPS pour finir) et les |cff71d5ff|Hspell:-3033|h[Tourmentins]|h|r se laissent vivants: si quelqu'un les tue, sa |cff71d5ff|Hspell:-3034|h[Réaction]|h|r buffe Al'Akir.",
    "* PHASE 3 (à 25%): la plateforme se brise et tous volent avec l'|cff71d5ff|Hspell:-3037|h[Œil du cyclone]|h|r: full DPS final; le marqué du |cff71d5ff|Hspell:-3039|h[Bâtonnet d'éclair]|h|r s'écartera et les |cff71d5ff|Hspell:-3040|h[Nuages d'éclairs]|h|r s'esquivent."
};

-- -------------- --
-- Terres de Feu --
-- -------------- --

pack["52498"] = { "Beth'tilac",
    "* PHASE 1: elle vole dans la toile en haut; le groupe se bat en dessous; les |cff71d5ff|Hspell:-2773|h[Ouvrières braisetoile]|h|r meurent vite avant de se remplir de feu (elles mangent les |cff71d5ff|Hspell:-2778|h[Jeunes araignées braisetoile]|h|r pour se soigner: tuer les jeunes d'abord).",
    "* Le tank provoque une |cff71d5ff|Hspell:-2770|h[Tisseuse braisetoile]|h|r pour la faire descendre, le groupe collé (son |cff71d5ff|Hspell:-2772|h[Tissage de toile ardente]|h|r étourdit ses marques 25s): full DPS.",
    "* L'équipe qui monte surveille son |cff71d5ff|Hspell:-2765|h[Énergie de Feu]|h|r: quand elle s'éteint il lance la |cff71d5ff|Hspell:-2769|h[Dévastation ardente]|h|r qui rase son niveau, et il faut redescendre AVANT (ça se répète 3 fois, après quoi il lance sa |cff71d5ff|Hspell:-2782|h[Phase 2 : La frénésie !]|h|r).",
    "* PHASE 2: il descend et il faut le tuer entièrement; le tank subit le |cff71d5ff|Hspell:-2783|h[Baiser de la veuve]|h|r (qui draine ses soins: soigneurs au maximum) et les |cff71d5ff|Hspell:-2784|h[Braises incandescentes]|h|r punit les proches."
};

pack["52558"] = { "Seigneur Rhyolith",
    "* PHASE 1 (jusqu'à 25%): il ne se tank PAS, il se DIRIGE: le groupe tape son pied gauche ou droit pour tourner sa marche et le diriger loin du |cff71d5ff|Hspell:-2530|h[Boire du magma]|h|r et des gros |cff71d5ff|Hspell:-2534|h[Volcans]|h|r (les petits |cff71d5ff|Hspell:-2535|h[Cratères]|h|r se cassent en les frappant).",
    "* Son |cff71d5ff|Hspell:-2527|h[Armure en obsidienne]|h|r empile des couches qui réduisent les dégâts: les peler à coups;",
    "* des |cff71d5ff|Hspell:-2531|h[Fragments de Rhyolith]|h|r naissent des volcans et les |cff71d5ff|Hspell:-2532|h[Étincelles de Rhyolith]|h|r grossissent avec leur |cff71d5ff|Hspell:-2533|h[Rage infernale]|h|r, il faut donc les tuer vite.",
    "* Son |cff71d5ff|Hspell:-2528|h[Piétinement commotionnant]|h|r frappe tout le monde de temps en temps: soins à la périodicité.",
    "* PHASE 2 (à 25%): la direction s'arrête et la |cff71d5ff|Hspell:-2538|h[Immolation]|h|r blesse tout le monde de façon croissante: full DPS avec l'héroïsme, en esquivant la |cff71d5ff|Hspell:-2539|h[Flamme déchaînée]|h|r."
};

pack["52530"] = { "Alysrazor",
    "* PHASE 1: elle vole, le groupe se bat en dessous: deux joueurs ramassent des |cff71d5ff|Hspell:-2828|h[Plumes de feu]|h|r (à trois ils ont les |cff71d5ff|Hspell:-2829|h[Ailes de flamme]|h|r pour voler et aider en haut),",
    "* les |cff71d5ff|Hspell:-2836|h[jeunes voraces]|h|r se tank à part (ils se nourrissent des |cff71d5ff|Hspell:-2843|h[vers de lave dodus]|h|r) et les deux |cff71d5ff|Hspell:-2834|h[Initié de la Serre flamboyante]|h|r meurent vite (avec leur |cff71d5ff|Hspell:-3335|h[Bouclier flamboyant]|h|r).",
    "* Les |cff71d5ff|Hspell:-2845|h[Héraut de la Fin ardente]|h|r sortent à la fin de la phase: leur |cff71d5ff|Hspell:-2846|h[Cataclysme]|h|r invoque le |cff71d5ff|Hspell:-2847|h[Météore en fusion]|h|r (full DPS avant qu'il ne tombe).",
    "* PHASE 2: il entre dans le |cff71d5ff|Hspell:-2849|h[Vortex embrasé]|h|r (immobilisé): full DPS avec l'héroïsme; les volants esquivent la |cff71d5ff|Hspell:-2850|h[Tornade embrasée]|h|r et ceux du bas les |cff71d5ff|Hspell:-3332|h[Vents cinglants]|h|r.",
    "* PHASE 3 (quand sa puissance se vide): |cff71d5ff|Hspell:-2852|h[Ardeur épuisante]|h|r avec l'|cff71d5ff|Hspell:-2853|h[Essence des Verts]|h|r (vol pour tous) et full DPS sans la laisser remonter;",
    "* si on atteint la PHASE 4 il renaît pleine puissance (|cff71d5ff|Hspell:-2858|h[Rafale flamboyante]|h|r) et ça recommence: peu de cycles."
};

pack["53691"] = { "Shannox",
    "* Travail à deux tanks: l'un tient le |cff71d5ff|Hspell:-2581|h[Croquepatte]|h|r, l'autre le |cff71d5ff|Hspell:-2583|h[Ragegueule]|h|r, loin de Shannox, car à la mort du premier il gagne la |cff71d5ff|Hspell:-2580|h[Frénésie]|h|r.",
    "* Ragegueule meurt en premier: sa |cff71d5ff|Hspell:-2584|h[Rage faciale]|h|r dévore ses marques (full DPS pour finir avant); ensuite Croquepatte, et enfin Shannox.",
    "* Son |cff71d5ff|Hspell:-2577|h[Entaille tranchante]|h|r laisse les |cff71d5ff|Hspell:-2578|h[Déchiquetures]|h|r (saignement dur sur le tank): le soigneur les couvre; avec le |cff71d5ff|Hspell:-2579|h[Jeter la lance]|h|r le chien court la ramasser (les tanks en profitent pour se replacer).",
    "* Ses |cff71d5ff|Hspell:-2575|h[Pièges d'immolation]|h|r et |cff71d5ff|Hspell:-2576|h[Pièges prison de cristal]|h|r tombent près des chiens: celui qui est proche s'écarte (l'attrape est fatale) et les |cff71d5ff|Hspell:-2928|h[Ruptures de magma]|h|r du sol s'esquivent."
};

pack["53494"] = { "Baleroc, le Gardien de la porte",
    "* Les |cff71d5ff|Hspell:-2592|h[Éclats de tourment]|h|r canalisent le |cff71d5ff|Hspell:-2593|h[Tourment]|h|r sur un joueur, qui subit des dégâts croissants: il s'écarte du cristal quand les dégâts mordent; si ça n'est pas interrompu à temps, il envoie la |cff71d5ff|Hspell:-2595|h[Vague de tourment]|h|r.",
    "* Les soigneurs se répartissent: deux ou trois se placent près du cristal pour ramasser les |cff71d5ff|Hspell:-2596|h[Étincelles vitales]|h|r (chacune renforce leurs soins avec la |cff71d5ff|Hspell:-2597|h[Flamme vitale]|h|r) et le reste soigne le marqué du Tourment.",
    "* Avec la |cff71d5ff|Hspell:-2599|h[Lame de décimation]|h|r ses coups tombent d'ombre et avec la |cff71d5ff|Hspell:-2600|h[Lame infernale]|h|r de feu: les tanks s'alternent pendant que son |cff71d5ff|Hspell:-2590|h[Brasier de gloire]|h|r s'empile.",
    "* Héroïque: le |cff71d5ff|Hspell:-2601|h[Compte à rebours]|h|r appaire les joueurs: les appariés restent proches entre eux et loin du reste quand tout explose."
};

pack["52571"] = { "Chambellan Forteramure",
    "* Chaque |cff71d5ff|Hspell:-2912|h[Changeforme]|h|r commande: en |cff71d5ff|Hspell:-2913|h[Forme de félin]|h|r il bondit avec les |cff71d5ff|Hspell:-2914|h[Flammes bondissantes]|h|r (il laisse des trains de feu au sol) et en |cff71d5ff|Hspell:-2918|h[Forme de scorpion]|h|r la",
    "* |cff71d5ff|Hspell:-2919|h[Faux de flammes]|h|r punit ceux qui le tapent (les mêlées l'assument avec soins).",
    "* L'|cff71d5ff|Hspell:-2916|h[Adrénaline]|h|r monte à chaque sort répété: plus long le combat, plus ça fait mal, donc full DPS.",
    "* En |cff71d5ff|Hspell:-2922|h[Forme d'Elfe de la nuit]|h|r (au milieu du combat) il agrippe les proches avec le |cff71d5ff|Hspell:-2923|h[Cyclone ardent]|h|r (séparer),",
    "* pose des |cff71d5ff|Hspell:-2924|h[Graines incendiaires]|h|r sous le marqué (bouger loin avant l'explosion) et lâche les |cff71d5ff|Hspell:-2925|h[Orbes ardents]|h|r poursuiveurs (les esquiver loin du groupe)."
};

pack["52409"] = { "Ragnaros",
    "* PHASE 1: le |cff71d5ff|Hspell:-2631|h[Vague de lave]|h|r né à chaque |cff71d5ff|Hspell:-2630|h[Frappe de Sulfuras]|h|r s'esquive d'un côté, et s'écartent les |cff71d5ff|Hspell:-2634|h[Pièges de magma]|h|r: UN PAR UN avec le groupe pleine vie.",
    "* Dans l'INTERVALLE les |cff71d5ff|Hspell:-2637|h[Fils des flammes]|h|r poursuivent le marqué, ce joueur court loin du groupe pendant qu'on les descend à fond; personne ne croise leur chemin pour leur |cff71d5ff|Hspell:-2639|h[Supernova]|h|r finale.",
    "* PHASE 2: le |cff71d5ff|Hspell:-2643|h[Linceul de flamme]|h|r est le cône frontal (dehors), le |cff71d5ff|Hspell:-2644|h[Monde en flammes]|h|r brûle des secteurs entiers (personne dedans) et les |cff71d5ff|Hspell:-2645|h[Graines en fusion]|h|r explosent sous le",
    "* marqué (bouger loin; les |cff71d5ff|Hspell:-2647|h[Élémentaires de magma]|h|r restants se descendent en AoE).",
    "* PHASE 3 (à 40%): le |cff71d5ff|Hspell:-2661|h[Météore vivant]|h|r poursuit un joueur (courir loin du groupe; qui se croise près lui donne du |cff71d5ff|Hspell:-2663|h[Combustible]|h|r) et le |cff71d5ff|Hspell:-2658|h[Linceul de flamme]|h|r et le |cff71d5ff|Hspell:-2659|h[Monde en flammes]|h|r continuent.",
    "* Héroïque (PHASE 4): avec les alliés (Cénarius, Hamuul et Malfurion) en soutien, full DPS final; son |cff71d5ff|Hspell:-2680|h[Chaleur extrême]|h|r, le |cff71d5ff|Hspell:-2681|h[Renforcer Sulfuras]|h|r (|cff71d5ff|Hspell:-2682|h[Flammes de Sulfuras]|h|r) et la |cff71d5ff|Hspell:-2683|h[Flammeffroi]|h|r punissent la salle."
};

-- ------------------------------------ --
-- El Fin de los Tiempos : Zona 938 --
-- ------------------------------------ --

pack["54431"] = { "Écho de Baine",
    "* Son aplastamiento (Pulverize) frappe en zone: tank et soigneurs aux aguets.",
    "* Les totems qu'il lance sont prioritaires (Throw Totem).",
};

pack["54445"] = { "Écho de Jaina",
    "* Elle se téléporte (Blink): attention à la nouvelle position.",
};

pack["54432"] = { "Murozond",
    "* Esquivar les bombes de distorsion.",
    "* Dernier boss du donjon: gardez les défensives pour la fin.",
};

pack["54123"] = { "Écho de Sylvanas",
    "* Le cri des bien-nés: dégâts massifs, soigneurs prêts.",
};

pack["54544"] = { "Écho de Tyrande",
    "* La lune sombre (Dark Moonlight): prudence.",
};

-- ---------------------------------- --
-- La Hora del Crepúsculo : Zona 940 --
-- ---------------------------------- --

pack["54590"] = { "Arcurion",
    "* Les |cff71d5ff|Hspell:102582|h[Chaînes de givre]|h|r enchaînent: gare au givre.",
    "* On délivre le joueur piégé dans le |cff71d5ff|Hspell:103252|h[Tombeau de givre]|h|r en le brisant.",
    "* Le |cff71d5ff|Hspell:104050|h[Torrent de givre]|h|r: dégâts de raid, soins.",
};

pack["54968"] = { "Asira Fauchelaube",
    "* Le marqué par la |cff71d5ff|Hspell:102726|h[Marque du silence]|h|r perd les soins: dissipez.",
    "* |cff71d5ff|Hspell:103558|h[Bombe de fumée étouffante]|h|r: une fumée qui étourdit, sort de là.",
    "* |cff71d5ff|Hspell:103419|h[Barrière de lames]|h|r: ne la traverse pas.",
};

pack["54938"] = { "Archevêque Benedictus",
    "* Deux phases: la Lumière et l'Ombre.",
    "* Le marqué par la |cff71d5ff|Hspell:103151|h[Fente juste]|h|r ou la |cff71d5ff|Hspell:103363|h[Fente crépusculaire]|h|r doit le crier (SAY) et s'écarter.",
    "* |cff71d5ff|Hspell:103565|h[Lumière purifiante]|h|r et |cff71d5ff|Hspell:103767|h[Crépusculaire corruptrice]|h|r: hors des zones.",
};

-- --------------------------------- --
-- Le Puits de l'Éternité : Zona 939 --
-- --------------------------------- --

bos = {
    "Reine Azshara",
    "* Les mages enchantés sont la priorité avant elle.",
    "* L'|cff71d5ff|Hspell:-3969|h[Obéissance totale]|h|r: longue incantation, interrompez-la.",
};
pack["54853"] = bos; pack["54884"] = bos; pack["54882"] = bos; pack["54883"] = bos;

bos = {
    "Mannoroth et Varo'then",
    "* Le |cff71d5ff|Hspell:-4287|h[Portail du Néant]|h|r: attention à ce qui en sort.",
    "* Le tank tient Mannoroth; Varo'then meurt vite.",
};
pack["54969"] = bos; pack["55419"] = bos;

pack["55085"] = { "Peroth'arn",
    "* |cff71d5ff|Hspell:105544|h[Décomposition démoniaque]|h|r: debuff important, soignez-le.",
    "* En phase d'infiltration NE BOUGE PAS quand il envoie les yeux.",
    "* Le marqué par la |cff71d5ff|Hspell:105493|h[Proie facile]|h|r est vulnérable: full DPS.",
};

-- --------------------------------------------- --
-- Throne of the Tides (remasterizada) : Zona 643 --
-- --------------------------------------------- --

pack["40788"] = { "Torve-esprit Ghur'sha",
    "* Phase d'Erunak: |cff71d5ff|Hspell:429051|h[Fureur terrestre]|h|r et les totems de |cff71d5ff|Hspell:429037|h[Totem de tourmentes]|h|r, un par un.",
    "* |cff71d5ff|Hspell:429172|h[Vision terrifiante]|h|r a une longue incantation: interrompez-la.",
    "* Le |cff71d5ff|Hspell:429048|h[Maléf de flamme]|h|r se dissipe.",
};

bos = {
    "Ozumat",
    "* Le marqué par la |cff71d5ff|Hspell:428407|h[Salve de salissures]|h|r doit s'écarter (SAY).",
    "* |cff71d5ff|Hspell:428594|h[Déluge d'ordures]|h|r: attention au déluge de crasse.",
    "* Le |cff71d5ff|Hspell:428889|h[Éclair impur]|h|r est pour le tank; Neptulon vous aide avec son flux.",
};
pack["44566"] = bos; pack["213770"] = bos;

-- --------------------------------------------- --
-- Eventos y festividades --
-- --------------------------------------------- --

pack["23870"] = { "Coren Navrebière",
    "* Tank: contrôle rapidement Coren et ses sbires pour qu'ils ne tapent pas les tissus ni les DPS léger.",
    "* Adds: tue d'abord les sbires qu'il invoque pour réduire les dégâts du groupe.",
    "* Les chopes de bière des tables: jette-les ou utilise-les pour des améliorations temporaires ou pour atténuer les débuffs du boss.",
    "* Soins: les tanks avec bonne autorégénération (chevaliers de la mort, guerriers) tiennent seuls, mais un soigneur standard sécurise le combat sans risque."
};

P.fr = fr;