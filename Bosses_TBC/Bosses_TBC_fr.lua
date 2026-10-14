--[[
	Bosses_TBC_fr.lua
		Datos en francés del pack The Burning Crusade (solo datos; el
		registro lo hace Bosses_TBC.lua, que se carga después en el .toc).
		Fuentes: DBM-Party-BC, DBM-Raids-BC, DBM-Outlands y
		LittleWigs_BurningCrusade (_doc).
		In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)


local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- The Black Morass : Zona 269 --
-- --------------------------------- --

pack["17879"] = { "Chronoseigneur Déjà",
	"* |cff71d5ff|Hspell:38539|h[Arcane Blast]|h|r: TOUJOURS à interrompre — coup arcanique puissant qui s'accumule sur le tank.",
	"* |cff71d5ff|Hspell:31467|h[Time Lapse]|h|r: le laps du temps étourdit en zone : tenez-vous à l'écart.",
	"* |cff71d5ff|Hspell:31472|h[Arcane Discharge]|h|r: la décharge rebondit dans la salle : soignez le groupe après chaque rebond.",
};

pack["17880"] = { "Temporus",
	"* |cff71d5ff|Hspell:31458|h[Hasten]|h|r: il s'exalte lui-même : à purger au plus vite, sinon le combat tourne à toute vitesse.",
	"* |cff71d5ff|Hspell:38592|h[Wing Buffet]|h|r: l'aletazo propulse le tank loin : collez-lui le dos au mur.",
	"* les portails de la Faille continuent de cracher du trash par derrière : le tank les oriente et personne ne les pull.",
};

pack["17881"] = { "Aeonus",
	"* |cff71d5ff|Hspell:31422|h[Time Stop]|h|r: l'arrêt du temps gèle TOUT le groupe : défensifs pour en sortir vivant.",
	"* |cff71d5ff|Hspell:37605|h[Sand Breath]|h|r: le souffle de sable est frontal : le tank le tient loin du groupe.",
	"* jamais à côté des portails ouverts : la horde accumulée mange les soigneurs.",
};

-- --------------------------------- --
-- Karazhan : Zona 532 --
-- --------------------------------- --

bos = { "Attumen le Veneur",
	"* |cff71d5ff|Hspell:29714|h[Charge]|h|r: la charge vole sur le plus éloigné : personne ne quitte la monture.",
	"* |cff71d5ff|Hspell:29711|h[Knockdown]|h|r: le renversement clive la mêlée : la mêlée sort du devant.",
	"* |cff71d5ff|Hspell:29833|h[Intangible Presence]|h|r: la présence intangible est une malédiction de précision : à purger du marqué.",
	"* abattez Minuit : le veneur monte et démonte aux paliers de vie — un seul pool de vie partagé.",
};
pack["16151"] = bos; pack["16152"] = bos;

pack["15687"] = { "Moroes",
	"* |cff71d5ff|Hspell:29448|h[Vanish]|h|r: il s'évapore et se ressource : l'AoE sur son point de chute le fait sortir.",
	"* |cff71d5ff|Hspell:29425|h[Gouge]|h|r: le coup met le tank hors de combat : l'off-tank reprend tout de suite.",
	"* |cff71d5ff|Hspell:29562|h[Blind]|h|r: l'aveuglement tombe sur le marqué : à purger.",
	"* |cff71d5ff|Hspell:29405|h[Garrote]|h|r: le garrot saigne jusqu'à la fin du combat : soignez le marqué au maximum.",
	"* il arrive avec quatre invités au hasard : les soigneurs possibles se coupent en premier et tombent en premier — le guerrier oriente les clives en AoE.",
};

pack["16457"] = { "Damoiselle de vertu",
	"* |cff71d5ff|Hspell:29511|h[Repentance]|h|r: la pénitence étourdit TOUT le raid : entrez dedans et brisez-la avec du dégât, sinon tout repart.",
	"* |cff71d5ff|Hspell:29522|h[Holy Wrath]|h|r: l'ire sacrée s'enchaîne entre cibles proches : dispersez-vous.",
	"* |cff71d5ff|Hspell:29512|h[Consecration]|h|r: la consécration brûle le sol sous elle : la mêlée sort du cercle.",
	"* son aura de feu punit la mêlée collée : la résistance au feu aide — les soigneurs bien loin.",
};

pack["15691"] = { "Le Conservateur",
	"* |cff71d5ff|Hspell:30235|h[Hateful Bolt]|h|r: le trait odieux vole sur la DEUXIÈME vie la plus haute : gardez-la toujours en état.",
	"* |cff71d5ff|Hspell:30403|h[Summon Astral Flare]|h|r: les éclats astraux naissent par paires : en AoE et à la charge avant leur rafale.",
	"* |cff71d5ff|Hspell:30254|h[Evocation]|h|r: pendant l'évocation il encaisse le DOUBLE de dégâts — gardez les grosses fenêtres pour lui et serrez-lui la vis.",
};

pack["16524"] = { "Ombre d'Aran",
	"* |cff71d5ff|Hspell:29973|h[Flame Wreath]|h|r: pas une seule marche ou l'anneau de flammes explose sur tout le monde — attendez qu'il meure.",
	"* |cff71d5ff|Hspell:29991|h[Counterspell]|h|r: le contre-silence coupe une école d'incantation 10 s : les casters se calment ; les soigneurs patientent.",
	"* |cff71d5ff|Hspell:30004|h[Pyroblast]|h|r: les pyroblasties arrivent par paires : coupez les DEUX ou quelqu'un meurt.",
	"* |cff71d5ff|Hspell:29951|h[Blizzard]|h|r: le blizzard balaie la salle : SORTIE en marchant — en courant, on retombe dedans.",
	"* la phase du breuvage est un piège : ne le frappez pas pendant son buff, sinon tout le raid encaisse une volée de pyroblasties.",
};

pack["15688"] = { "Terestian Malsabot",
	"* |cff71d5ff|Hspell:30066|h[Summon Kil'rek]|h|r: l'imp renaît à sa mort : tuez-le en premier et gardez l'AoE prête à son retour.",
	"* |cff71d5ff|Hspell:30065|h[Sacrifice]|h|r: le sacrifice marque un joueur et le protège : tuez Kil'rek pour casser le bouclier.",
	"* les imps se posent sur le groupe : une AoE dédiée évite qu'ils ne dévorent les soigneurs.",
};

pack["15689"] = { "Dédain-du-Néant",
	"* |cff71d5ff|Hspell:30400|h[Perseverance]|h|r: le rayon rouge durcit le tank et tue les soigneurs : SEUL le tank se place dedans.",
	"* |cff71d5ff|Hspell:30401|h[Serenity]|h|r: le rayon vert soigne ce qu'il touche : le groupe tourne par alternance.",
	"* |cff71d5ff|Hspell:30402|h[Dominance]|h|r: le rayon bleu booste les casters : répartissez-le — se serrer se partage la gifle.",
	"* |cff71d5ff|Hspell:38523|h[Nether Breath]|h|r: le souffle du Néant est frontal : le tank le tient loin du groupe.",
	"* en phase de bannissement il devient intouchable : gardez les défensifs et coupez les dots.",
};

pack["15690"] = { "Prince Malchezaar",
	"* |cff71d5ff|Hspell:30843|h[Enfeeble]|h|r: l'affaiblissement laisse à 1 PV SANS soin pendant 8 s : survivez-le, personne ne sauve pendant ses 8 secondes.",
	"* |cff71d5ff|Hspell:30852|h[Shadow Nova]|h|r: la nova d'ombre tombe JUSTE après l'affaiblissement : courez LOIN du prince au signal.",
	"* |cff71d5ff|Hspell:30859|h[Summon Infernal]|h|r: les infernaux pleuvent du ciel toute la logne : regardez le sol et bougez à chaque impact.",
};

pack["17521"] = { "Le Grand Méchant Loup",
	"* |cff71d5ff|Hspell:30752|h[Little Red Riding Hood]|h|r: le marqué devient la capuche rouge : kite en tournant autour des piliers.",
	"* le loup perd la ligne de vue pour chasser la capuche : jouez le décor et gardez-le en rond pendant que le reste descend.",
};

bos = { "Romulo et Julianne",
	"* |cff71d5ff|Hspell:30878|h[Eternal Affection]|h|r: TOUJOURS à interrompre — leur soin maintient toute la scène en vie.",
	"* l'un tombe, l'autre se met en rage : descendez-les en équilibre et finissez-les ensemble.",
	"* les estocades empoisonnées tombent sur leur cible : les soigneurs surveillent l'épée de Romulo.",
};
pack["17534"] = bos; pack["17533"] = bos;

pack["18168"] = { "La Vieille Sorcière",
	"* les quatre héros naissent ensemble : d'abord Tito, puis Dorothee, puis Strawman en priorité.",
	"* Tinhead traîne : un joueur le promène en marche arrière pendant que le reste descend le reste.",
	"* à la chute de Roar arrive la Sorcière : les tornades traversent la scène — évitez-les au passage et tuez-la.",
};

bos = { "L'événement des échecs",
	"* les pièces restent immobiles : déplacez-vous ou le feu sous vos pieds vous mange — un carré par tour.",
	"* maintenez les cooldowns en marche : les pions absorbent, le roi tank, les soigneurs soignent leur camp.",
	"* à la chute de votre pièce arrive une bouffée de puissance : utilisez-la et prenez une nouvelle pièce au banc.",
};
pack["21752"] = bos; pack["21684"] = bos;

pack["17225"] = { "Plaie-de-nuit",
	"* |cff71d5ff|Hspell:30129|h[Charred Earth]|h|r: la terre calcinée laisse des flaques de feu sous les joueurs : sortez-en.",
	"* |cff71d5ff|Hspell:36922|h[Bellowing Roar]|h|r: le rugissement terrifie TOUT le groupe au sol : défensifs de peur ou tremblement au tank.",
	"* |cff71d5ff|Hspell:37098|h[Rain of Bones]|h|r: la pluie d'os tombe pendant le vol : dispersez-vous pour limiter la facture.",
	"* le cycle de vol est strict : tout le monde au centre au sol et le tank oriente les coups de queue loin de la bande.",
};

pack["16179"] = { "Hyakiss le Rôdeur",
	"* le rôdeur sort de son trou avec une morsure venimeuse : rencontre plate, soignez la morsure du tank.",
	"* bête optionnelle à mi-montée vers les Quartiers des Serviteurs : laissez-la ou tuez-la pour le coffre en plus.",
};

pack["16180"] = { "Shadikith le Planeur",
	"* le planeur explose un cercle sonique autour de lui : la mêlée sort du rayon entre les rafales.",
	"* bête optionnelle des Quartiers des Serviteurs : rencontre plate, peu de risque tant que le tank le garde posé.",
};

pack["16181"] = { "Rokad le Ravageur",
	"* le ravageur clive fort de face : la mêlée derrière et le tank le tient loin.",
	"* bête optionnelle des Quartiers des Serviteurs : rencontre plate ; personne devant la gueule.",
};

-- --------------------------------- --
-- The Battle for Mount Hyjal : Zona 534 --
-- --------------------------------- --

pack["17767"] = { "Rage Froidhiver",
	"* |cff71d5ff|Hspell:31249|h[Death and Decay]|h|r: l'agonie étend des flaques de feu au sol : hors des zones.",
	"* |cff71d5ff|Hspell:31258|h[Frost Nova]|h|r: la nova gèle le groupe sur place : défensifs ou les soigneurs encaissent le désastre debout.",
};

pack["17808"] = { "Anetheron",
	"* |cff71d5ff|Hspell:31298|h[Carrion Swarm]|h|r: l'essaim de charognes est un cône frontal qui silence : le tank le tient loin du groupe.",
	"* |cff71d5ff|Hspell:31299|h[Sleep]|h|r: le sommeil envoie un joueur au tapis : réveillez-le VITE ou l'agonie le dévore.",
	"* |cff71d5ff|Hspell:31306|h[Inferno]|h|r: l'infernal enflamme la zone et appelle des infernaux : en AoE avant qu'ils n'atteignent les soigneurs.",
};

pack["17888"] = { "Kaz'rogal",
	"* |cff71d5ff|Hspell:31447|h[Mark of Kaz'rogal]|h|r: la marque aspire le mana : à zéro elle EXPLOSE — les casters cessent de lancer avant la famine.",
	"* le clive frontal est brutal : la mêlée reste derrière et le tank le tient loin des rangs.",
};

pack["17842"] = { "Azgalor",
	"* |cff71d5ff|Hspell:31340|h[Howl of Azgalor]|h|r: le hurlement terrifie TOUT le raid : tremblement ou défensive de peur au tank, sinon il abandonne son poste.",
	"* |cff71d5ff|Hspell:31344|h[Unending Pain]|h|r: la douleur sans fin est un dégât de zone : la soignez, rien ne la dissipe.",
	"* en mourant il pose une malédiction sur un joueur : le marqué court TRÈS loin pour que le seigneur abyssal qui naît ne mange personne.",
};

pack["17968"] = { "Archimonde",
	"* |cff71d5ff|Hspell:32014|h[Doomfire]|h|r: le feu de la ruine chasse les joueurs au sol : kite-lez LOIN de la bande.",
	"* |cff71d5ff|Hspell:31970|h[Air Burst]|h|r: la bouffée d'air envoie la moitié du raid au ciel : gardez la plume avant chaque déclenchement.",
	"* |cff71d5ff|Hspell:31972|h[Fear]|h|r: la peur tombe au hasard : défensifs au tank pour qu'il tienne pendant qu'il est affolé.",
};

-- --------------------------------- --
-- The Shattered Halls : Zona 540 --
-- --------------------------------- --

pack["16807"] = { "Grand démoniste Néanathème",
	"* |cff71d5ff|Hspell:30496|h[Death Coil]|h|r: la spirale de mort rebondit sur le tank : la soignez, rien ne la coupe.",
	"* sous 20 % il enclenche une danse de lames : la mêlée SORT et laisse la distance achever le travail.",
	"* le trash du couloir nourrit la salle : pull-lez dans un couloir propre ou les limiers s'ajoutent à la fête.",
};

pack["16809"] = { "Porteguerre O'mrogg",
	"* ses deux têtes échangent l'aggro d'elles-mêmes : les tanks le tauntent au signal de l'ourdon.",
	"* le piétinement enterre la mêlée : sortez du rayon ou vous perdez la fenêtre entière.",
};

pack["20923"] = { "Garde de sang Porung",
	"* garde en héroïque au début de la salle : il clive dans le pack, tuez-le au milieu du pull avant qu'il ne s'empile.",
	"* rencontre plate : rien de spécial en dehors du clive et du trash qui le suit.",
};

pack["16808"] = { "Chef de guerre Kargath Lamepoing",
	"* |cff71d5ff|Hspell:5927|h[Sweep]|h|r: le balayage frappe fort de face : la mêlée reste derrière les lames.",
	"* |cff71d5ff|Hspell:30739|h[Blade Dance]|h|r: la danse de lames bondit entre cibles au hasard : dispersez-vous pour qu'il ne répète pas la victime.",
	"* les deux acolytes gardent la porte : un contrôle ou une mort rapide libère le tank des seconds couteaux.",
};

-- --------------------------------- --
-- The Blood Furnace : Zona 542 --
-- --------------------------------- --

pack["17381"] = { "Le Faiseur",
	"* |cff71d5ff|Hspell:30923|h[Dominate Mind]|h|r: l'emprise mentale vole un joueur : étourdissez le dominé, ne tuez PAS le vôtre, et attendez.",
	"* les flaques d'acide s'ouvrent sous le groupe : personne ne reste dans le vert.",
};

pack["17380"] = { "Broggok",
	"* les prisonniers arrivent par vagues : nettoyez vite ou le tank encaisse deux packs d'un coup.",
	"* le gaz empoisonne les cellules par zones : déplacez-vous vers la case propre — le poison empile vite dans la mauvaise flaque.",
};

pack["17377"] = { "Keli'dan le Briseur",
	"* l'onde de choc tombe juste après son clignotement : courrez SORTIE au moment où il se téléporte au centre de la salle.",
	"* il répète le cycle du clignotement : les soigneurs gardent le groupe plein entre les deux, l'onde punit les vies basses.",
};

-- --------------------------------- --
-- Hellfire Ramparts : Zona 543 --
-- --------------------------------- --

pack["17306"] = { "Gardien des guetteurs Gargolmar",
	"* ses plaies le soignent à chaque coup : coupez la plaie sinon le combat s'étire.",
	"* l'avalanche lance le tank vers le trash : laissez-lui le dos propre et le couloir nettoyé avant.",
};

pack["17308"] = { "Omor l'Intouché",
	"* |cff71d5ff|Hspell:37566|h[Whip of Despair]|h|r: le fouet du désespoir est une affliction d'ombre sur le tank : soignez-la ou les soigneurs s'épuisent.",
	"* les meutes de chiens arrivent avec lui : contrôlez-les, tuez-en une avant qu'elle ne s'empile sur les soigneurs.",
	"* il s'élève hors de portée de la mêlée par rafales : la distance l'abat ; la mêlée revient après chaque saut.",
};

bos = { "Vazruden le Héraut",
	"* le héraut monte la wyverne : serrez le couple entier, le cavalier ne descend pas avant que sa vie ne plie.",
	"* à l'atterrissage du héraut, le tank l'attrape tout de suite : personne d'autre devant le souffle de feu.",
	"* Nazan ensemence le groupe : la distance coupe la pluie de boules de feu entre les passages.",
};
pack["17537"] = bos; pack["17307"] = bos;

-- --------------------------------- --
-- Magtheridon's Lair : Zona 544 --
-- --------------------------------- --

pack["17257"] = { "Magtheridon",
	"* les cinq canaliseurs ouvrent la salle : tuez-les en PREMIER, un pack à la fois, sinon le bannissement n'arrivera jamais.",
	"* |cff71d5ff|Hspell:30616|h[Blast Nova]|h|r: la nova de déflagration rase la salle : les cinq joueurs enfoncent leur cube dans le bannissement pour la couper.",
	"* |cff71d5ff|Hspell:30511|h[Quake]|h|r: le séisme lance la mêlée contre les murs : soignez le groupe à chaque coup.",
	"* les flammes du sol brûlent en taches : bougez VITE, le dégât ne pardonne pas.",
};

-- --------------------------------- --
-- The Steamvault : Zona 545 --
-- --------------------------------- --

pack["17797"] = { "Hydromancienne Thespia",
	"* |cff71d5ff|Hspell:31481|h[Lightning Cloud]|h|r: le nuage d'éclairs s'ouvre sous les joueurs : sortez avant que les coups ne s'empilent.",
	"* |cff71d5ff|Hspell:25033|h[Enveloping Winds]|h|r: les vents enveloppent un caster en silence : purgez la magie ou maintenez le second soigneur prêt.",
	"* ses éclairs frappent le tank fort : boucliers avant le pull, les premières secondes sont les pires.",
};

pack["17796"] = { "Mekgénieur Montevapeur",
	"* |cff71d5ff|Hspell:35107|h[Summon Mechanics]|h|r: trois mécaniciens naissent autour : en AoE et vite, sinon ils hachent les soigneurs.",
	"* le fluide de machine jaillit sur le marqué : bougez avec le jet et laissez le sol net.",
};

pack["17798"] = { "Seigneur de guerre Kalithresh",
	"* |cff71d5ff|Hspell:6001|h[Disarm]|h|r: le désarm retire l'arme du tank : arme de secours ou l'off-tank prend le relais.",
	"* l'orbe d'eau torrentielle naît et il canalise dessus : le tank le traîne LOIN — dans l'orbe son dégât explose.",
	"* les reflets renvoient les sorts : les casters suspendent les gros tant que brille la lueur.",
};

-- --------------------------------- --
-- The Underbog : Zona 546 --
-- --------------------------------- --

pack["17770"] = { "Hungarfen",
	"* |cff71d5ff|Hspell:31673|h[Foul Spores]|h|r: les spores le REPOUSSENT sous la moitié de vie : entraînez-le hors du nuage ou serrez-le pendant la fenêtre.",
	"* les petites spores encerclent la zone : en AoE avant qu'elles n'entourent les soigneurs.",
};

pack["18105"] = { "Ghaz'an",
	"* |cff71d5ff|Hspell:15716|h[Terrifying Roar]|h|r: le rugissement terrifiant fait fuir la mêlée : défensifs de peur, ou reprise après la fuite.",
	"* le souffle acide est frontal : le tank le tient loin et la mêlée derrière les pattes.",
};

pack["17826"] = { "Seigneur des marais Musel'ek",
	"* |cff71d5ff|Hspell:31429|h[Freeze]|h|r: la gelée fige un joueur de la mêlée sur place : cassez-la ou soignez la rafale qui suit.",
	"* un joueur tient le hibou retenu : sinon le coup d'aile de l'oiseau envoie la mêlée au ciel.",
	"* son tir précis punit le marqué éloigné : personne ne s'écarte du groupe sans couverture.",
};

pack["17882"] = { "La Traqueuse noire",
	"* |cff71d5ff|Hspell:31704|h[Static Charge]|h|r: la charge suit un joueur dans la salle : KITE-la loin du groupe jusqu'à sa mort.",
	"* |cff71d5ff|Hspell:31715|h[Chain Lightning]|h|r: l'éclair chaîné rebondit entre les cibles groupées : dispersion et soigneurs attentifs.",
};

-- --------------------------------- --
-- The Slave Pens : Zona 547 --
-- --------------------------------- --

pack["17941"] = { "Mennu le Traître",
	"* |cff71d5ff|Hspell:31985|h[Corrupted Healing Totem]|h|r: le totem de soin le rattrape à toute seconde : PREMIER à briser.",
	"* |cff71d5ff|Hspell:34980|h[Corrupted Nova Totem]|h|r: le totem nova explose à proximité : tuez-le à la vue ou gardez le rayon.",
	"* le totem de peau durcit le pack : AoE sur les totems d'entrée, puis à brûler le chef.",
};

pack["17942"] = { "Bourbierreux",
	"* |cff71d5ff|Hspell:39340|h[Acid Geyser]|h|r: le geyser d'acide explose de face : PERSONNE devant la gueule.",
	"* la pourriture fongique tombe comme un poison qui s'accumule : dispellez avant la deuxième couche ou le soigneur se noie.",
};

pack["17991"] = { "Rokmar le Crépitant",
	"* |cff71d5ff|Hspell:31956|h[Grievous Wound]|h|r: la blessure grave coupe à MOITIÉ le soin du tank : soignez-le à fond ou tournez les tanks.",
	"* |cff71d5ff|Hspell:34970|h[Water Spit]|h|r: le crachat d'eau est frontal : le tank le tient loin du groupe.",
	"* |cff71d5ff|Hspell:38801|h[Ensnaring Moss]|h|r: la mousse laisse les joueurs plantés : dispersez-vous pour ne jamais enchaîner deux personnes.",
};

-- Ahune: evento estacional del Festival del Fuego de Medio Verano (LittleWigs TheSlavePens)
bos = { "Ahune",
	"* |cff71d5ff|Hspell:45954|h[Ahune's Shield]|h|r: le bouclier le rend intouchable dès l'engagement — à chaque cycle où il tient, le groupe démole le Cœur gelé pour le décrocher.",
	"* L'invocation démarre sur la pierre de glace : nettoyez l'anneau de la grotte d'abord et lancez le rituel, le combat s'ouvre dès que la pierre fond.",
	"* Des élémentaires d'eau jaillissent de l'étang tant que le bouclier tient : AoE entre les cycles et personne ne reste planté sur le sol verglacé.",
};
pack["40446"] = bos;
pack["25740"] = bos;
pack["25865"] = bos;
pack["25697"] = bos;

-- --------------------------------- --
-- Serpentshrine Cavern : Zona 548 --
-- --------------------------------- --

pack["21216"] = { "Hydross l'Instable",
	"* |cff71d5ff|Hspell:38219|h[Frost Tomb]|h|r: le tombeau de givre gèle un joueur : soignez le reste à travers, le gelé est à l'abri.",
	"* le tank franchit le seuil pour changer d'élément : franchissez-le SUR SIGNAL seulement, sinon le mauvais élément empile les dégâts.",
	"* côté poison, la corruption empile vite : hors des flaques et comptez les couches.",
};

pack["21217"] = { "Le Rôdeur d'En bas",
	"* |cff71d5ff|Hspell:37660|h[Spout]|h|r: le jet tourne autour de la salle comme une aiguille de cadran : courrez AVEC le jet, jamais à travers.",
	"* |cff71d5ff|Hspell:21873|h[Whirl]|h|r: le tourbillon propulse la mêlée dans la flaque : sortez du rayon au déclenchement.",
	"* des naga naissent de la flaque à mi-combat : en AoE et à la charge ; la distance chasse les tireurs embusqués.",
};

pack["21215"] = { "Leotheras l'Aveugle",
	"* |cff71d5ff|Hspell:37749|h[Whirlwind]|h|r: le tourbillon saigne toute la mêlée : arrêtez de frapper et attendez-le.",
	"* |cff71d5ff|Hspell:37640|h[Chaos Blast]|h|r: la déflagration du chaos rebondit entre les casters : dispersés et cassez la chaîne.",
	"* en phase démoniaque naissent des copies du groupe : chacun tue SA copie en premier, le raid finit le reste.",
	"* la fenêtre de bannissement s'ouvre sur sa forme humaine : le démoniste garde le bannissement pour le partage de phase.",
};

pack["21213"] = { "Morogrim Marcheur-des-flots",
	"* |cff71d5ff|Hspell:37730|h[Tidal Wave]|h|r: la vague déferlante est un coup frontal bestial : le tank le tient loin du groupe.",
	"* |cff71d5ff|Hspell:37850|h[Watery Graves]|h|r: les tombes aqueuses sortent des murlocs de la flaque : en AoE entre les vagues.",
	"* le globule aquatique poursuit un joueur et grossit : kite-lez loin — il empile les dégâts sur sa proie.",
};

pack["21214"] = { "Seigneur des fonds Karathress",
	"* |cff71d5ff|Hspell:38236|h[Cataclysmic Bolt]|h|r: l'éclair vole sur la DEUXIÈME vie la plus haute : maintenez-la toujours en état.",
	"* |cff71d5ff|Hspell:38330|h[Tidal Surge]|h|r: la vague massive décolle tout le groupe de la plateforme : plantez-vous ou soignez la poussée.",
	"* les trois hérauts tombent en premier : Sharkkis, puis Tideress, puis Caribdis — le seigneur seul, après eux, fond.",
};

pack["21212"] = { "Dame Vashj",
	"* |cff71d5ff|Hspell:38575|h[Entangle]|h|r: les liens enchevêtrent plusieurs joueurs : soignez à travers, personne ne brise seul les racines.",
	"* |cff71d5ff|Hspell:38511|h[Shock Blast]|h|r: le choc étourdit en zone : dispersés hors de la ligne de contact.",
	"* la phase deux tourne sur les noyaux corrompus : attrapez-en un, donnez-le au générateur, cassez les quatre boucliers dans l'ordre.",
	"* les striders se kite hors plateforme et les naga meurent posés : personne ne meurt du trash pendant la course des noyaux.",
};

-- --------------------------------- --
-- The Eye : Zona 550 --
-- --------------------------------- --

pack["19514"] = { "Al'ar",
	"* |cff71d5ff|Hspell:35410|h[Melt Armor]|h|r: la fonte d'armure laisse le tank sans plaque : tournez les tanks juste après chaque fonte.",
	"* |cff71d5ff|Hspell:35383|h[Flame Quills]|h|r: les plumes de flamme arrosent la plateforme : mettez-vous à l'abri SOUS la plateforme au déclenchement.",
	"* les rejetons naissent sur les plateformes abandonnées : en AoE avant qu'ils n'empilent sur les soigneurs.",
	"* elle saute de rampe en rampe : le tank la suit vite et la bande ne reste jamais sur la mauvaise rampe.",
};

pack["19516"] = { "Saccageur du Vide",
	"* |cff71d5ff|Hspell:34162|h[Pounding Slam]|h|r: le martèlement silence et propulse la mêlée : la mêlée SORT à l'impact.",
	"* |cff71d5ff|Hspell:34172|h[Arcane Orb]|h|r: les orbes arcaniques tombent sur des lointains au hasard : ne vous plantez pas où l'impact s'annonce.",
	"* les taunts glissent sur lui : le tank pull propre et tout le monde surveille l'aggro avant la poussée.",
};

pack["18805"] = { "Grande astromancienne Solarian",
	"* |cff71d5ff|Hspell:33045|h[Wrath of the Astromancer]|h|r: l'ire de l'astromancienne charge un joueur comme une bombe : éloignez-vous des autres avant l'explosion.",
	"* les agents naissent dans la salle à mi-combat : en AoE et vite, ils partent sur les soigneurs.",
	"* à vie basse elle se divise en copies : tuez la VRAIE — les prêtresses la ressuscitent si on les laisse.",
};

pack["19622"] = { "Kael'thas Haut-Soleil",
	"* les quatre conseillers tombent un à un : contrôle sur la prêtresse et burst sur le reste selon l'appel du raid.",
	"* la phase d'armes déroule l'arsenal : prenez les épiques, ils portent tout le combat ensuite.",
	"* |cff71d5ff|Hspell:36819|h[Pyroblast]|h|r: TOUJOURS à interrompre — la pyroblastie de la phase cinq efface quiconque la laisse passer.",
	"* |cff71d5ff|Hspell:36735|h[Flame Strike]|h|r: la frappe de flammes brûle des zones du sol : bougez vers le point marqué.",
	"* |cff71d5ff|Hspell:34341|h[Gravity Lapse]|h|r: le ralentissement de gravité soulève la bande : tournez autour de lui et prenez les orbes de puissance.",
};

-- --------------------------------- --
-- The Arcatraz : Zona 552 --
-- --------------------------------- --

pack["20870"] = { "Zereketh le Délié",
	"* |cff71d5ff|Hspell:30533|h[Void Zone]|h|r: les zones du néant brûlent le sol sous les joueurs : hors dès leur ouverture.",
	"* |cff71d5ff|Hspell:32863|h[Seed of Corruption]|h|r: la graine de corruption détonne sur le marqué : soignez l'explosion ou le boum s'enchaîne sur le groupe.",
	"* les démons du néant naissent à son côté : en AoE avant qu'ils n'atteignent les soigneurs.",
};

pack["20885"] = { "Dalliah l'Auspice-Funeste",
	"* |cff71d5ff|Hspell:36142|h[Gift of the Naaru]|h|r: TOUJOURS à interrompre — son don la renouvelle presque entièrement.",
	"* |cff71d5ff|Hspell:36173|h[Whirlwind]|h|r: le tourbillon coupe la mêlée en cercle : la mêlée sort du rayon.",
	"* elles se relèvent avec sa garde : le focus sur celle qui est debout et le contrôle prépare le relais.",
};

pack["20886"] = { "Scrute-courroux Soccothrates",
	"* |cff71d5ff|Hspell:36512|h[Felfire Ground]|h|r: le feu du Mal ouvre des fissures au sol : personne ne reste sur le sol allumé.",
	"* |cff71d5ff|Hspell:35759|h[Knock Away]|h|r: le coup de hanche propulse le tank loin : plantez-le ou l'off-tank le reprend.",
	"* elle se relève avec Dalliah : le focus sur celui qui est debout et le contrôle attend le relais.",
};

pack["20912"] = { "Messager Cieuriss",
	"* |cff71d5ff|Hspell:36924|h[Mind Rend]|h|r: le déchirement mental tape FORT sur le marqué : soignez les marques entre les déchirures.",
	"* les illusions de l'esprit naissent du groupe : chacun tue SA illusion en premier.",
	"* le dominé garde un joueur un moment : retenez le dégât sur lui, ça se coupe tout seul.",
};

-- --------------------------------- --
-- The Botanica : Zona 553 --
-- --------------------------------- --

pack["17976"] = { "Commandant Sarannis",
	"* |cff71d5ff|Hspell:34803|h[Arcane Resonance]|h|r: à vie basse la résonance détone en zone : dispersez-vous dès que le combat tourne.",
	"* les conservateurs de sang la gardent : AoE au pull ou ils dévorent les soigneurs vivants.",
};

pack["17975"] = { "Grand botaniste Freywinn",
	"* |cff71d5ff|Hspell:34557|h[Tranquility]|h|r: TOUJOURS à interrompre — la quiétude le referme de rien à plein.",
	"* les rejetons s'amoncellent par vagues : en AoE et vite, sinon ils empilent seuls.",
};

pack["17980"] = { "Laj",
	"* les épines punissent la mêlée par rafales : la mêlée LÂCHE le coup pendant la rafale ou perd une barre de vie.",
	"* les mutants naissent autour de lui : AoE rapide et sol net.",
};

pack["17978"] = { "Rirépine le Tendre",
	"* |cff71d5ff|Hspell:34660|h[Hellfire]|h|r: le feu infernal brûle tout autour : la mêlée sort du cercle pendant TOUT le canal.",
	"* le sacrifice lie un joueur : soignez le marqué et gardez la distance avec son frontal.",
	"* la malédiction de tristesse coupe les soins : à purger du tank tout de suite.",
};

pack["17977"] = { "Brise-Dimension",
	"* |cff71d5ff|Hspell:34716|h[Grow]|h|r: en poussant il devient énorme et frappe énorme : kite-lez jusqu'à ce qu'il retrouve sa taille.",
	"* les arbres s'amoncellent à son ombre : en AoE avant qu'ils ne cernent la bande.",
	"* personne ne se colle à lui pendant le drain : il boit au plus proche — la mêlée à un pas de recul.",
};

-- --------------------------------- --
-- The Mechanar : Zona 554 --
-- --------------------------------- --

pack["19710"] = { "Main-en-fer",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: le coup de marteau étourdit la mêlée : hors de l'arc du marteau.",
	"* |cff71d5ff|Hspell:35327|h[Static Disruption]|h|r: la perturbation électrostatique éparpille les groupés : aucun monton dans le rayon.",
	"* personne ne le combat face à face : les coups s'enchaînent sur la mêlée plantée.",
};

pack["19218"] = { "Gyromis",
	"* |cff71d5ff|Hspell:35322|h[Hammer Punch]|h|r: le coup de marteau étourdit la mêlée : hors de l'arc entre les frappes.",
	"* la grêle d'ombre tombe sur le groupe : dispersion et soigneurs attentifs.",
};

pack["19219"] = { "Mécanoseigneur Capacitus",
	"* |cff71d5ff|Hspell:35158|h[Reflective Damage Shield]|h|r: le bouclier de dégâts renvoie les coups : la mêlée S'ARRÊTE au scintillement.",
	"* |cff71d5ff|Hspell:35159|h[Reflective Magic Shield]|h|r: le bouclier de magie renvoie les sorts : les casters SUSPENDENT au scintillement.",
	"* les charges d'éther roulent au sol : écartez-vous, elles détonnent au contact.",
};

pack["19221"] = { "Néantomancienne Sepethrea",
	"* la traînée de feu poursuit un joueur dans la salle : KITE-lez la traînée bien ouverte, jamais près du groupe.",
	"* les infernaux naissent et chassent : la distance les abat un à un.",
	"* le souffle du dragon est frontal : le tank le tient loin du groupe à chaque passage.",
};

pack["19220"] = { "Pathaleon le Calculateur",
	"* |cff71d5ff|Hspell:35280|h[Dominate Mind]|h|r: le dominé garde un joueur : retenez le dégât sur le dominé, ça se coupe tout seul.",
	"* les éthers se démultiplient à vie basse : AoE dès leur éclosion.",
};

-- --------------------------------- --
-- Shadow Labyrinth : Zona 555 --
-- --------------------------------- --

pack["18731"] = { "Ambassadeur Gueule-d'Enfer",
	"* |cff71d5ff|Hspell:33547|h[Fear]|h|r: la peur sort le tank de position : tremblement ou défensive de peur sur le porteur.",
	"* l'embuscade projette le tank en arrière : laissez-lui le mur propre ou la patrouille rejoint la fête.",
	"* il patrouille un couloir large à l'entrée : pull-lez dans le creux net entre les packs.",
};

pack["18732"] = { "Grand Maître Vorpil",
	"* |cff71d5ff|Hspell:33563|h[Rain of Fire]|h|r: la pluie de feu brûle des zones entières : hors du sol marqué.",
	"* il court au portail du vide et revient avec des renforts : le groupe garde l'AoE pour son retour et ne le poursuit JAMAIS.",
	"* les voyageurs du vide chassent un joueur : personne ne reste immobile tant qu'ils circulent.",
};

pack["18667"] = { "Cœur-Noir le Séditieux",
	"* |cff71d5ff|Hspell:33676|h[Charge]|h|r: la charge vole sur le PLUS ÉLOIGNÉ : personne ne quitte le groupe.",
	"* le piétinement de guerre enterre la mêlée : reprenez vos marques vite, la fenêtre est courte.",
	"* le tourbillon tourne sous lui : la mêlée se replie hors de la fenêtre de spin.",
};

pack["18708"] = { "Marmon",
	"* |cff71d5ff|Hspell:33711|h[Murmur's Touch]|h|r: le décompte détonne sur la cible marquée : la cible court SORT seule.",
	"* |cff71d5ff|Hspell:33923|h[Sonic Shockwave]|h|r: l'onde de choc est un cône frontal : la mêlée derrière le corps.",
	"* |cff71d5ff|Hspell:38796|h[Sonic Boom]|h|r: le boum frappe TOUTE la salle : tout le monde sort du rayon au déclenchement.",
};

-- --------------------------------- --
-- Sethekk Halls : Zona 556 --
-- --------------------------------- --

pack["18472"] = { "Sombre tisseur Syth",
	"* les quatre images élémentaires naissent à mi-vie : en AoE ou elles noient les soigneurs.",
	"* les traits d'ombre tombent sur des cibles au hasard : dispersion douce.",
	"* la peur fait courir le groupe : défensifs de peur au tank pour maintenir le poste.",
};

pack["23035"] = { "Anzu",
	"* les corneilles funestes explosent autour : AoE dès leur atterrissage.",
	"* les cercles du rite l'invoquent : entrez plein ou la première minute se tord.",
	"* le bannissement couvre les casters par tranches : la mêlée soutient le dégât pendant la fenêtre.",
};

pack["18473"] = { "Roi-serre Ikiss",
	"* |cff71d5ff|Hspell:38197|h[Polymorph]|h|r: le polymorphie attrape un joueur en mouton : purgez la magie ou attendez le mouton.",
	"* |cff71d5ff|Hspell:40425|h[Arcane Explosion]|h|r: l'explosion arcanique tombe juste après son clignotement : la mêlée court SORT au signal.",
	"* |cff71d5ff|Hspell:38245|h[Blizzard]|h|r: le blizzard balaie sa zone : tout le monde continue de filer hors d'elle.",
};

-- --------------------------------- --
-- Mana-Tombs : Zona 557 --
-- --------------------------------- --

pack["18341"] = { "Pandemonius",
	"* |cff71d5ff|Hspell:32358|h[Void Blast]|h|r: le coup du néant le phase en ombre : la mêlée LÂCHE les coups tant qu'il est déphasé.",
	"* l'entaille sombre écrase la mêlée : personne devant le bras.",
};

pack["18343"] = { "Tavarok",
	"* |cff71d5ff|Hspell:2021|h[Disarm]|h|r: le désarm retire l'arme du tank : arme de secours ou l'off-tank reprend.",
	"* le tremblement silencie les casters en zone : les soigneurs espacent leurs soins.",
};

pack["22930"] = { "Yor",
	"* le piétinement enterre la mêlée : hors du rayon au déclenchement ou vous perdez une fenêtre entière d'un coup.",
	"* il naît du cadavre de Tavarok : le groupe se remplit avant l'invocation ou le combat démarre amputé.",
};

pack["18344"] = { "Prince-nexus Shaffar",
	"* les balises éthériennes naissent autour : tuez-les en PREMIER, sinon la bagarre grossit.",
	"* son clignotement le déplace dans la salle : la mêlée le suit au point, les sorts n'attendent pas.",
	"* la nova de givre laisse la mêlée plantée sur place : soignez à travers.",
};

-- --------------------------------- --
-- Auchenai Crypts : Zona 558 --
-- --------------------------------- --

pack["18371"] = { "Shirrak le Veillemort",
	"* |cff71d5ff|Hspell:32300|h[Inquisitor's Watching Eye]|h|r: l'œil suit un joueur et brûle : KITE-le loin du groupe.",
	"* les sentinelles mortes s'amoncellent au sol : en AoE avant qu'elles n'empilent sur les soigneurs.",
};

pack["18373"] = { "Exarque Maladaar",
	"* la copie sombre d'un joueur naît à mi-combat : PREMIER la copie, elle frappe mieux que son propriétaire.",
	"* le hurlement d'âme silence en zone : les casters s'écartent de la ligne.",
	"* les traits d'ombre s'accumulent sur le tank : boucliers d'avance entre les deux.",
};

-- --------------------------------- --
-- Old Hillsbrad Foothills : Zona 560 --
-- --------------------------------- --

pack["17848"] = { "Lieutenant Drake",
	"* |cff71d5ff|Hspell:33792|h[Fireball Volley]|h|r: la volée de boules de feu trempe trois cibles : soignez la rafale entre les coups.",
	"* les vagues d'escorte arrivent à mi-combat : le tank déporte le trash des soigneurs, AoE et vite.",
};

pack["17862"] = { "Capitaine Skarloc",
	"* |cff71d5ff|Hspell:29427|h[Holy Light]|h|r: TOUJOURS à interrompre — sa Lumière sacrée lui rapporte une barre entière.",
	"* la consécration brûle le sol sous lui : la mêlée sort du cercle.",
	"* les vagues d'escorte entrent pendant sa retraite : retenez le trash loin des soigneurs jusqu'à sa chute.",
};

pack["18096"] = { "Chasseur d'époques",
	"* |cff71d5ff|Hspell:33834|h[Whirlwind]|h|r: le tourbillon passe sur la mêlée : la mêlée se replie du rayon au déclenchement.",
	"* le coup d'aile propulse le tank loin : plantez-le contre le mur du fort.",
	"* il atterrit avec deux escortes montées : un contrôle, puis finissez la seconde avant que le tank ne perde le poste.",
};

-- --------------------------------- --
-- Black Temple : Zona 564 --
-- --------------------------------- --

pack["22887"] = { "Grand seigneur de guerre Naj'entus",
	"* |cff71d5ff|Hspell:39837|h[Needle Spine]|h|r: l'envoi d'aiguillons frappe en zone : dispersez-vous et soignez l'explosion.",
	"* |cff71d5ff|Hspell:39872|h[Tidal Shield]|h|r: le bouclier de marée le bulle : personne à la mêlée pendant lui, la bande fait un pas en arrière.",
	"* l'aiguillon cloué reste dans les dos : brûlez l'objet pour l'arracher du marqué VITE.",
};

pack["22898"] = { "Supremus",
	"* |cff71d5ff|Hspell:41951|h[Molten Blaze]|h|r: la flamme fondue poursuit un joueur : kite-lez-la loin de la bande pour que les flaques ne s'approchent de personne.",
	"* le piétinement enterre la mêlée : plantez-vous ou reprenez après la poussée.",
	"* deux tanks se relaient : la fenêtre de kite s'ouvre pour celui qui N'A PAS le boss.",
};

pack["22841"] = { "Ombre d'Akama",
	"* Akama canalise pour briser les chaînes : défendez-le à travers les vagues, sinon le canal ne finit jamais.",
	"* les renforts entrent en deux couloirs : nettoyez le canalisateur vite, sinon ils mangent les soigneurs d'abord.",
	"* à sa libération l'ombre brûle tout le monde : les défensifs tombent à ce moment, pas avant.",
};

pack["22871"] = { "Teron Fielsang",
	"* l'ombre de mort choisit un joueur : elle tombe et continue comme une construction d'ombre — le raid remporte sa malédiction en premier.",
	"* les esprits des morts chassent l'arrière-garde : la mêlée tourne et AoE avant qu'ils ne s'empilent.",
	"* la malédiction de tristesse coupe les soins de la marque : à purger vite.",
};

pack["22948"] = { "Gurtogg Fièvresang",
	"* |cff71d5ff|Hspell:40481|h[Acidic Wound]|h|r: la plaie acide s'accumule sur le tank : tournez en comptant les couches ou les soigneurs se noient.",
	"* la rage féline attrape un joueur : bombez de soin sur cette personne, elle encaisse un fardeau énorme.",
	"* la plaie tombe sur des groupes de cinq : les soigneurs répartissent le triage et la bande se disperse par équipes.",
};

pack["23420"] = { "Reliquaire des Âmes",
	"* les trois essences tournent : Colère, Désir et Souffrance — brûlez chacune à fond avant qu'elle ne reparte.",
	"* l'aura de désir punit les soins aux autres : triage des blessés, personne à plein.",
	"* l'aura de colère veut AUCUN soin sur lui : le dégât pur gagne la fenêtre.",
	"* le drain d'âmes tombe comme une grande magie sur une marque : purgez-la au signal.",
};

pack["22947"] = { "Mère Shahraz",
	"* |cff71d5ff|Hspell:40891|h[Fatal Attraction]|h|r: la chaîne lie trois joueurs ensemble : loin de la bande, près entre eux.",
	"* le bouclier prismatique tourne les écoles : changez la magie lancée.",
	"* les rayons rampent par son frontal : personne ne reste dans la rue du balayage.",
};

bos = { "Le Conseil Illidari",
	"* les quatre tombent presque à équilibre : UN seul vivant enrage tout le conseil.",
	"* la prêtresse soigne les autres : son gros soin est TOUJOURS à couper.",
	"* le bouclier réflexif scintille sur l'un d'eux : les casters SUSPENDENT au scintillement.",
	"* les flaques de poison se rejoignent sous la mêlée : purgez vite et sortez du vert.",
};
pack["22949"] = bos; pack["22950"] = bos; pack["22951"] = bos; pack["22952"] = bos;

pack["22917"] = { "Illidan Hurlorage",
	"* la clameur coupe le tank en deux : tournez les tanks à chaque clameur ou les soigneurs perdent la barre.",
	"* le rayon oculaire balaie la ligne qu'il encadre : la bande dégage la rue dès qu'il tourne.",
	"* les démons d'ombre chassent deux joueurs : attrapez le fétiche et contrôlez-les, sinon ils font le banquet.",
	"* sous forme démoniaque la bande se serre et tient : les ailes ouvrent la fenêtre de burst.",
	"* la déflagration de flammes brûle sous les joueurs : hors des zones, le feu suit là où il tombe.",
};

-- --------------------------------- --
-- Gruul's Lair : Zona 565 --
-- --------------------------------- --

bos = { "Haut Roi Maulgar",
	"* |cff71d5ff|Hspell:33238|h[Whirlwind]|h|r: le tourbillon coupe la mêlée en cercle : la mêlée sort du rayon à chaque spin.",
	"* les deux soigneurs de son conseil tombent en PREMIER : chaque soin avec son interruption, non négociable.",
	"* Kiggel le dément joue de l'éclair en zone : un dévoué l'absorbe loin du groupe.",
	"* Krosh le mage joue avec les casters : un leurre à distance loin de tout le monde.",
};
pack["18831"] = bos; pack["18832"] = bos; pack["18834"] = bos; pack["18835"] = bos; pack["18836"] = bos;

pack["19044"] = { "Gruul le Tue-Dragon",
	"* |cff71d5ff|Hspell:36240|h[Ground Slam]|h|r: le coup de sol éparpille tout le monde contre les murs : dispersez APRÈS, sinon l'éclat mange les voisins.",
	"* |cff71d5ff|Hspell:36300|h[Shatter]|h|r: l'éclat rompt les figés : personne près de personne quand il passe.",
	"* |cff71d5ff|Hspell:33525|h[Growth]|h|r: la croissance empile à l'horloge : le combat finit avant que les couches ne gagnent.",
};

-- --------------------------------- --
-- Sunwell Plateau : Zona 580 --
-- --------------------------------- --

pack["24850"] = { "Kalecgos",
	"* le coup spectral ouvre le portail sur le marqué : le marqué tranche avec le royaume démoniaque et les deux chefs tombent ensemble.",
	"* |cff71d5ff|Hspell:45010|h[Arcane Breath]|h|r: le souffle arcanique est frontal : le tank le tient loin du groupe.",
	"* la magie sauvage vole au hasard : les soins restent souples, rien n'est garanti.",
};

pack["24882"] = { "Brutallus",
	"* |cff71d5ff|Hspell:45141|h[Burn]|h|r: la brûlure s'accumule fort sur le tank : tournez en comptant les couches.",
	"* le piétinement jette la mêlée : plantez le groupe ou soignez la poussée.",
	"* le blocage métabolique gèle les casters : les soigneurs répartissent le triage pendant le blocage.",
};

pack["25038"] = { "Gangrebrume",
	"* |cff71d5ff|Hspell:45717|h[Demonic Vapor]|h|r: la brume suit un joueur : KITE-lez-la bien ouverte, jamais près de la bande.",
	"* |cff71d5ff|Hspell:45661|h[Encapsulate]|h|r: l'encapsule soulève un joueur : soignez à travers l'élévation, il pend dans l'air.",
	"* en vol le souffle balaie comme une aiguille d'horloge : tout le monde suit le balayage en bougeant.",
};

bos = { "Les jumelles érédars",
	"* les jumelles tombent presque à niveau : une seule debout élève l'autre.",
	"* la grande déflagration enchaîne le plus proche : dispersion entre les marques.",
	"* la nova d'ombre tape brutal côté sombre : les soigneurs avec boucliers d'avance sur le tank d'ombre.",
};
pack["25165"] = bos; pack["25166"] = bos;

pack["25741"] = { "M'uru",
	"* les sentinelles du vide naissent par vagues : AoE et changement de cible dès l'atterrissage.",
	"* l'énergie négative pulse dans toute la salle : les soigneurs donnent le tempo entre les pulsations.",
	"* à son écroulement Entropius s'élève à sa place : esquivez les trous noirs et brûlez de nouveau.",
};

pack["25315"] = { "Kil'jaeden",
	"* |cff71d5ff|Hspell:45848|h[Darkness of a Thousand Souls]|h|r: l'obscurité de mille âmes noie TOUTE la bande : défensifs et soins au maximum au lancement.",
	"* les orbes de bouclier naissent aux piliers : la distance les brûle, sinon les poutres mangent le camp.",
	"* les piques d'ombre explosent par vagues : dispersés hors des ruelles d'explosion.",
	"* les orbes de puissance s'élèvent à la fin : attrapez-les pour chevaucher les poutres.",
};

-- --------------------------------- --
-- Magisters' Terrace : Zona 585 --
-- --------------------------------- --

pack["24723"] = { "Selin Cœur-de-Feu",
	"* le canal du Mal draine le groupe : TOUTE interruption le casse, même une pluie de coups.",
	"* les ajouts drainés meurent vite : leurs tiges montent son dégât au drain.",
};

pack["24744"] = { "Vexallus",
	"* les orbes d'énergie pure naissent autour : tuez CHACUN avant qu'il ne l'atteigne, sinon il enfle.",
	"* la décharge s'accumule vers la fin : les soigneurs donnent le tempo de la bande pendant la tempête.",
};

pack["24560"] = { "Prêtresse Delrissa",
	"* |cff71d5ff|Hspell:44141|h[Flash Heal]|h|r: TOUJOURS à interrompre — le flash maintient son équipe d'arène en vie.",
	"* les cinq combattants jouent en équipe : contrôle sur les soigneurs, burst sur une cible, ne dispersez JAMAIS le dégât.",
	"* le guerrier tourne sur la mêlée : la mêlée sort de la fenêtre de spin.",
};

pack["24664"] = { "Kael'thas Haut-Soleil",
	"* |cff71d5ff|Hspell:44194|h[Fireball]|h|r: la boule de feu efface le marqué : boucliers d'avance à chaque lancement.",
	"* le ralentissement de gravité traîne et soulève les gens : personne près des bords de la salle.",
	"* les phénix naissent et renaissent de leurs cendres : AoE les oiseaux, puis l'œuf.",
	"* la rafale de flammes brûle des zones du sol : bougez vers le point marqué.",
};

-- --------------------------------- --
-- Zul'Aman : Zona 568 --
-- --------------------------------- --

pack["23574"] = { "Akil'zon",
	"* |cff71d5ff|Hspell:43648|h[Electrical Storm]|h|r: TOUT LE MONDE court sous l'orage, sinon la bande se fait bouffer dehors.",
	"* les aigles s'amoncellent sur la plateforme : AoE avant qu'ils ne chassent les soigneurs.",
};

pack["23576"] = { "Nalorakk",
	"* l'entaille brutale clive deux cibles : deux tanks répartissent les coups, jamais un seul.",
	"* l'avalanche vole sur le PLUS ÉLOIGNÉ : personne ne quitte l'ours.",
	"* le rugissement assourdissant silence la bande : boucliers d'avance avant sa chute.",
};

pack["23578"] = { "Jan'alai",
	"* |cff71d5ff|Hspell:43962|h[Hatch Eggs]|h|r: les œufs cassent quand il flambe : soit TOUT casse, soit RIEN — l'AoE se joue au couteau.",
	"* les bombes de feu tombent autour du groupe : dispersez-vous AVANT la rafale.",
	"* le souffle de flammes balaie le front : le tank le tient loin du groupe.",
};

pack["23577"] = { "Halazzi",
	"* l'esprit se sépare du lynx deux fois : tankez les deux entre les traits, la phase se ferme avec le lynx.",
	"* le totem pulse depuis l'angle : coupez-le à la vue, sinon les traits ne s'arrêtent pas.",
	"* le coup de flammes tombe sur le tank : purgez vite ou les soigneurs s'enlisent.",
};

pack["24239"] = { "Seigneur des maléfices Malacrass",
	"* les orbes d'esprit drainent TOUTE la bande toutes les quelques secondes : les soigneurs donnent le tempo entre elles.",
	"* l'esprit d'un joueur flotte hors du combat à mi-course : tuez-le, sinon le drain l'abreuve.",
	"* le siphon pique le kit d'un joueur sur place : adaptez la rotation dès qu'il tombe.",
};

pack["23863"] = { "Zul'jin",
	"* les quatre formes tournent : l'ours tabasse, l'aigle lance des cyclones, le lynx casse le tank et la dernière forme respire des colonnes de feu.",
	"* les esprits chassent sous la tempête : kite-lez-les bien ouverts, ils brûlent leur proie.",
	"* le feu du sol suit le souffle de la dernière forme : hors de chaque colonne marquée.",
};

-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["17711"] = { "Marche-destin",
	"* |cff71d5ff|Hspell:32686|h[Earthquake]|h|r: le séisme secoue la zone : les soigneurs gardent la bande pleine pendant le tremblement.",
	"* la charge propulse le tank loin : loin des murs et des fosses.",
};

pack["18728"] = { "Seigneur funeste Kazzak",
	"* |cff71d5ff|Hspell:21063|h[Twisted Reflection]|h|r: le reflet tordu est une malédiction : à purger ou chaque coup le soigne.",
	"* |cff71d5ff|Hspell:32964|h[Frenzy]|h|r: la furie monte sa vitesse : kite-lez jusqu'à ce qu'elle s'épuise.",
	"* la marque du seigneur de fatalité draine le mana des casters proches : les casters gardent la distance.",
};

P.fr = fr;