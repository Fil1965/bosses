--[[
	Bosses_BfA_fr.lua
 Datos en FR del pack BfA. Tacticas reescritas a mano.
 Espejo completo del _en: mismos banners de zona, mismas entradas
 en el mismo orden, mismo numero de bullets por bloque y los
 enlaces de hechizo copiados a la letra (el cliente relocaliza el
 nombre del hechizo por el id). Solo cambia la prosa tras cada
 enlace y el nombre element-1 (fr del corpus journal + mandatos
 del dueño, con apóstrofes rectos).
 In memory of Romy 1996 - 25th May 2011
--]]
local _, P = ...;
local fr = {};
local pack = fr;
local bos; -- reutilizada para las entradas compartidas (varios NPC ID, misma tabla)

-- --------------------------------- --
-- Battle of Dazar'alor : Zona 2070 --
-- --------------------------------- --

bos = { "Ra'wani Kanae et Frida Souffrefer",
	"* |cff71d5ff|Hspell:283573|h[Sacred Blade]|h|r: frappe sacrée brutale sur le tank — alternez et utilisez vos défensifs.",
	"* |cff71d5ff|Hspell:283662|h[Call to Arms]|h|r: des renforts arrivent : le tank les écarte du raid et il faut les tuer en priorité.",
	"* |cff71d5ff|Hspell:283598|h[Wave of Light]|h|r: des vagues de lumière traversent la salle : esquivez-les au passage.",
	"* |cff71d5ff|Hspell:283933|h[Judgment: Righteousness]|h|r: jugement sacré sur un marquage au sol : sortez du cercle.",
};
pack["144683"] = bos; pack["144680"] = bos;

bos = { "Conseil des Élus",
	"* |cff71d5ff|Hspell:282444|h[Lacerating Claws]|h|r: griffes lacérantes sur le tank : alternez et utilisez vos défensifs.",
	"* |cff71d5ff|Hspell:285945|h[Hastening Winds]|h|r: les vents hâtifs renforcent les incantateurs ennemis : purgez-les.",
	"* |cff71d5ff|Hspell:282098|h[Gift of Wind]|h|r: TOUJOURS à interrompre — il soigne les quatre membres du conseil.",
	"* |cff71d5ff|Hspell:118212|h[Activated]|h|r: sous forme spirituelle ils sont intouchables : amenez les quatre à un niveau presque égal et terminez-les ensemble.",
};
pack["144747"] = bos; pack["144767"] = bos; pack["144963"] = bos; pack["144941"] = bos;

bos = { "Grong",
	"* |cff71d5ff|Hspell:285671|h[Crushed]|h|r: il saisit le tank et l'écrase avec des dégâts croissants : soignez le saisi au maximum.",
	"* |cff71d5ff|Hspell:285875|h[Rending Bite]|h|r: morsure déchirante sur le tank : alternez après chaque morsure.",
	"* |cff71d5ff|Hspell:289292|h[Throw]|h|r: la cible du jet se détache immédiatement du raid.",
	"* |cff71d5ff|Hspell:289307|h[Throw Target]|h|r: le marqué court loin du raid ; les sbires que Grong canalise augmentent ses dégâts — priorité d'interruption.",
};
pack["144638"] = bos; pack["144637"] = bos;

bos = { "Ma'ra Balafre-d'effroi et Anathos Invocateur de feu",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: flammes montantes sur le marqué : éloignez-vous du raid jusqu'à expiration.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: trappes de magma au sol : ne marchez jamais dessus.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: les esprits de Xuen attaquent par vagues : tuez-les en priorité ou ils s'accumulent.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: quand le bouclier se dresse, cassez-le ou le duel s'éternise.",
	"* Le duo combat ensemble : alternez soigneusement les cibles et nettoyez la gelée de feu entre les vagues.",
};
pack["144691"] = bos; pack["144692"] = bos;

pack["145261"] = { "Opulence",
	"* |cff71d5ff|Hspell:287037|h[Coin Sweep]|h|r: balayage de pièces sur le tank : alternez à chaque balayage.",
	"* |cff71d5ff|Hspell:284798|h[Grossly Incandescent]|h|r: rayon incandescent sur le marqué : dispersez-vous et traversez la ligne juste quand elle arrive.",
	"* |cff71d5ff|Hspell:283507|h[Volatile Charge]|h|r: la charge volatile marque deux joueurs : dispersez-vous pour que l'éclatement ne touche personne.",
	"* |cff71d5ff|Hspell:289383|h[Chaotic Displacement]|h|r: les déplacements chaotiques échangent les positions en plein vol : gardez vos distances.",
	"* Phase 1 dans la chambre du trésor : tuez la Main d'In'Zashi et ses trésors animés ; la malédiction d'or du joueur marqué se transmet à proximité — éloignez-vous ou vous la récupérez.",
};

pack["145616"] = { "Roi Rastakhan",
	"* |cff71d5ff|Hspell:284831|h[Scorching Detonation]|h|r: détonation brûlante sur le marqué : dispersez-vous pour que l'explosion reste seule.",
	"* |cff71d5ff|Hspell:288415|h[Caress of Death]|h|r: la caresse de la mort empile des dégâts sur le raid : tenez bon avec les soins — la phase 3 est une course.",
	"* |cff71d5ff|Hspell:286742|h[Necrotic Smash]|h|r: gros écrasement nécrotique sur le tank : alternez avec vos défensifs.",
	"* Phases de Loa : un loa rejoint son côté en phase 2 (chaque loa apporte un kit différent) — tuez le loa en priorité avant de revenir sur le roi.",
};

pack["144796"] = { "Grand Bricoleur Mekkanivelle",
	"* |cff71d5ff|Hspell:286646|h[Giga-Volt Charge]|h|r: charge giga-volt sur le tank : alternez et ne la portez JAMAIS au raid à son expiration.",
	"* |cff71d5ff|Hspell:284168|h[Shrunk]|h|r: le rayon de rétrécissement marque le sol : ne le croisez jamais ou vous serez rétréci.",
	"* |cff71d5ff|Hspell:289699|h[Electroshock Amp]|h|r: des électrochocs éclatent dans la salle : gardez vos distances en esquivant.",
	"* |cff71d5ff|Hspell:287114|h[Mis Tele]|h|r: les téléportations changent sa position à la volée : repositionnez-vous vite.",
	"* Phases : d'abord le robot avec les moutons explosifs qu'il faut faire courir (ils chargent pour éclater) ; quand le robot tombe, il combat à pied ; à la fin il s'envole en jetpack/planeur — restez en mouvement.",
};

bos = { "Rempart tempétueux",
	"* |cff71d5ff|Hspell:285000|h[Kelp Wrapped]|h|r: le varech enveloppe le marqué : libérez-le immédiatement — l'enveloppement noie.",
	"* |cff71d5ff|Hspell:284393|h[Translocate]|h|r: les sbires se translatent loin : le tank les reprend tout de suite.",
	"* |cff71d5ff|Hspell:288205|h[Crackling Lightning]|h|r: la foudre balaie la salle en zones : esquivez chaque balayage.",
	"* |cff71d5ff|Hspell:287995|h[Elec Shroud]|h|r: l'auréole électrique du navire : ne croisez jamais sa zone pendant qu'elle se déplace.",
	"* Duel de navires : en phase 1 tuez l'équipage qui vous aborde ; en phase 2 les canons et les méduses marines décident du combat — priorité aux sbires.",
};
pack["146251"] = bos; pack["146253"] = bos; pack["146256"] = bos;

pack["146409"] = { "Dame Jaina Portvaillant",
	"* |cff71d5ff|Hspell:287993|h[Chilling Stack]|h|r: son aura glaciale empile des dégâts sur TOUT LE MONDE : la règle des DPS de la phase — ne la laissez jamais grandir.",
	"* |cff71d5ff|Hspell:287565|h[Avalanche]|h|r: avalanche massive sur le tank : alternez au bord et soignez l'écrasement.",
	"* |cff71d5ff|Hspell:285177|h[Freezing Blast]|h|r: la rafale glaciale marque une zone : sortez pendant son incantation.",
	"* |cff71d5ff|Hspell:285253|h[Ice Shard]|h|r: des éclats de glace pleuvent sur la barge : esquivez les impacts.",
	"* Phases : d'abord la barge sous les bombardements ; puis l'île de glace avec l'aura glaciale, les avalanches et les murs de glace à traverser ; le combat est une course contre l'empilement du froid.",
};

bos = { "Manceroy Poing-de-flammes et Mestrah",
	"* |cff71d5ff|Hspell:282037|h[Rising Flames]|h|r: flammes montantes sur le marqué : éloignez-vous du raid jusqu'à expiration.",
	"* |cff71d5ff|Hspell:284374|h[Magma Trap]|h|r: trappes de magma au sol : ne marchez jamais dessus.",
	"* |cff71d5ff|Hspell:285647|h[Spirits of Xuen]|h|r: les esprits de Xuen attaquent par vagues : tuez-les en priorité ou ils s'accumulent.",
	"* |cff71d5ff|Hspell:286425|h[Shield]|h|r: quand le bouclier se dresse, cassez-le ou le duel s'éternise.",
	"* Le duo combat ensemble : alternez soigneusement les cibles et nettoyez la gelée de feu entre les vagues.",
};
pack["144693"] = bos; pack["144690"] = bos;


-- --------------------------------- --
-- Crucible of Storms : Zona 2096 --
-- --------------------------------- --

bos = { "La cabale insatiable",
	"* |cff71d5ff|Hspell:282384|h[Shear Mind]|h|r: entaille d'esprit brutale sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:282566|h[Power Stack]|h|r: chaque sbire vivant canalise le pouvoir du rituel et EMPILE la calamité : priorité de mise à mort absolue.",
	"* |cff71d5ff|Hspell:282741|h[Umbral Shell]|h|r: la carapace umbrale les rend intouchables pendant que le rituel avance : tuez ce qui est umbral pour la briser.",
	"* |cff71d5ff|Hspell:284772|h[Custody of the Deep]|h|r: la garde des profondeurs marque le tank : le marqué s'éloigne du raid jusqu'à expiration.",
	"* Deux prêtres à la fois : alternez les cibles, interrompez TOUJOURS ce qui peut l'être et ne laissez jamais le pouvoir du rituel grandir.",
};
pack["144755"] = bos; pack["144754"] = bos;

pack["145371"] = { "Uu'nat, héraut du Vide",
	"* |cff71d5ff|Hspell:284851|h[Touch of the End]|h|r: toucher de la fin sur le tank, une hémorragie brutale : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:286310|h[Void Shield]|h|r: pendant le bouclier des reliques sortent — le boss ne prend aucun dégât : tuez les reliques vite.",
	"* |cff71d5ff|Hspell:284684|h[Void Relic]|h|r: la relique du Vide canalise et doit TOUJOURS mourir MAINTENANT.",
	"* |cff71d5ff|Hspell:284768|h[Ocean Relic]|h|r: la relique de l'océan nourrit le boss si elle survit : priorité aussi.",
};


-- --------------------------------- --
-- The Eternal Palace : Zona 2164 --
-- --------------------------------- --

pack["150653"] = { "Béhémoth des flots noirs",
	"* |cff71d5ff|Hspell:298424|h[Feeding Frenzy]|h|r: la frénésie empile sur le tank : alternez et soignez le marqué au maximum.",
	"* |cff71d5ff|Hspell:292205|h[Bioluminescent Cloud]|h|r: le nuage bioluminescent marque le sol : sortez-en quand il tombe.",
	"* |cff71d5ff|Hspell:292167|h[Toxic Spine]|h|r: épines toxiques sur le marqué : éloignez-vous du raid jusqu'à expiration.",
	"* |cff71d5ff|Hspell:301494|h[Piercing Barb]|h|r: la pointe transperce durement le marqué : soins immédiats au coup.",
	"* Le combat se déroule dans le noir : restez près des zones éclairées et loin des mâchoires ; la frénésie alimentaire arrive avec des sbires de la faune du fond.",
};

pack["150859"] = { "Za'qul, héraut de Ny'alotha",
	"* |cff71d5ff|Hspell:292971|h[Hysteria]|h|r: l'hystérie empile la panique sur le raid : tenez bon avec les soins — ne la laissez jamais grandir.",
	"* |cff71d5ff|Hspell:300133|h[Snapped]|h|r: le marqué craque : quand ça casse il se retourne CONTRE le raid — contrôlez-le et ne le tuez pas dans la mêlée.",
	"* |cff71d5ff|Hspell:292996|h[Maddening Eruption]|h|r: l'éruption enragée marque des zones : dispersez-vous quand elles tombent.",
	"* |cff71d5ff|Hspell:292981|h[Disciple of N'Zoth]|h|r: les disciples de N'Zoth canalisent la folie : tuez-les MAINTENANT.",
	"* Phases : le cauchemar avale la salle ; dans la phase sombre, tuez les esprits du cauchemar avant qu'ils ne nourrissent Za'qul.",
};

pack["151881"] = { "Commandant abyssal Sivara",
	"* |cff71d5ff|Hspell:300701|h[Rimefrost]|h|r: le givre sur le marqué : TRAVERSEZ de l'autre côté du boss pour le purger — la danse de Sivara fait loi.",
	"* |cff71d5ff|Hspell:300705|h[Septic Taint]|h|r: la souillure septique sur le marqué : retraversez de l'autre côté pour la purger.",
	"* |cff71d5ff|Hspell:294726|h[Chimeric Marks]|h|r: les marques chimériques tombent par paires : chaque touché traverse quand vient son tour, jamais l'un vers l'autre.",
	"* |cff71d5ff|Hspell:295348|h[Overflowing Chill]|h|r: le froid débordant frappe une zone : dispersez-vous autour du boss.",
	"* Dans la dernière phase, les flaques de givre et de souillure inondent le sol : la danse des traversées décide du combat.",
};

pack["152910"] = { "Reine Azshara",
	"* |cff71d5ff|Hspell:298569|h[Drained Soul]|h|r: âme drainée sur le marqué : soignez-la prudemment jusqu'à ce qu'elle passe.",
	"* |cff71d5ff|Hspell:297937|h[Painful Memories]|h|r: les souvenirs douloureux marquent des zones : dispersez-vous et ne partagez jamais les dégâts.",
	"* |cff71d5ff|Hspell:298014|h[Cold Blast]|h|r: la bouffée de froid balaie un cône : ne restez jamais devant.",
	"* |cff71d5ff|Hspell:302999|h[Arcane Vulnerability]|h|r: la vulnérabilité des arcanes marque le tank : alternez après chacune.",
	"* Phases : surveillez les sbires de la cour pendant que la reine punit, et priorité aux vagues qui arrivent par l'eau.",
};

pack["152128"] = { "Orgozoa",
	"* |cff71d5ff|Hspell:298156|h[Desensitizing Sting]|h|r: le dard anesthésiant sur le tank, dégâts croissants : alternez.",
	"* |cff71d5ff|Hspell:298306|h[Incubation Fluid]|h|r: le fluide d'incubation éclot dans le marqué : les nouveau-nés sortent — tuez-les loin du boss.",
	"* |cff71d5ff|Hspell:305057|h[Call of the Tender]|h|r: l'appel amène des sbires : priorité sur le boss.",
	"* |cff71d5ff|Hspell:295825|h[Arcing Current]|h|r: le courant en arc saute entre les joueurs : dispersez-vous.",
};

pack["152236"] = { "Dame Corsandre",
	"* |cff71d5ff|Hspell:296725|h[Barnacle Bash]|h|r: le coup de bernique sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:297324|h[Bubble]|h|r: les bulles piègent : brisez immédiatement celles des alliés.",
	"* |cff71d5ff|Hspell:296650|h[Shield]|h|r: le bouclier la protège : cassez-le ou le combat stagne.",
	"* |cff71d5ff|Hspell:298055|h[Upsurge]|h|r: l'écume montante balaie le sol : esquivez le balayage quand elle monte.",
};

pack["152364"] = { "Radiance d'Azshara",
	"* |cff71d5ff|Hspell:296566|h[Tide Fist]|h|r: le poing des marées sur le tank : alternez.",
	"* |cff71d5ff|Hspell:296430|h[Arcanado Burst]|h|r: les éclats d'arcanado marquent le sol : dispersez-vous et ne les partagez jamais.",
	"* |cff71d5ff|Hspell:296459|h[Squall Trap]|h|r: les trappes de bourrasque attrapent celui qui marche dessus : ne les croisez jamais.",
	"* |cff71d5ff|Hspell:296737|h[Arcane Bomb]|h|r: la bombe des arcanes éclate sur le marqué : dispersez-vous pour qu'elle tombe seule.",
	"* Les sbires des marées arrivent par vagues : priorité sur eux entre les trappes et les bombes.",
};

bos = { "Cour de la reine",
	"* |cff71d5ff|Hspell:301244|h[Repeat Performance]|h|r: la performance se rejoue : les duels du marqué frappent deux fois — dispersez-vous.",
	"* |cff71d5ff|Hspell:297585|h[Obey or Suffer]|h|r: obéir ou souffrir sur le marqué : faites ce que le duel demande ou le châtiment éclate sur le raid.",
	"* |cff71d5ff|Hspell:244899|h[Silivaz Touch]|h|r: le toucher de Silivaz empile sur le tank : alternez sur les deux duellistes.",
	"* |cff71d5ff|Hspell:301828|h[Silivaz Touch]|h|r: le second empilement continue : surveillez le compteur et alternez sans retard.",
	"* Deux duellistes à la fois : tuez-les presque ensemble et contrôlez les dégâts empilés du toucher sur les tanks.",
};
pack["152852"] = bos; pack["152853"] = bos;


-- --------------------------------- --
-- Ny'alotha : Zona 2217 --
-- --------------------------------- --

pack["156523"] = { "Maut",
	"* |cff71d5ff|Hspell:307399|h[Shadow Wounds]|h|r: blessures d'ombre sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:307805|h[Devour Magic]|h|r: il dévore la magie du joueur marqué : les incantateurs surveillent le rythme de ses incantations.",
	"* |cff71d5ff|Hspell:315025|h[Ancient Curse]|h|r: la malédiction ancienne éclate à l'expiration : le marqué se détache du raid.",
	"* |cff71d5ff|Hspell:308044|h[Stygian Annihilation]|h|r: l'annihilation stygienne est un GROS bombardement en zone : dispersez-vous pendant sa canalisation.",
	"* Les acolytes des ténèbres qu'il invoque nourrissent son rituel : tuez-les en priorité avant que les dégâts au sol ne grandissent.",
};

pack["156575"] = { "Sombre inquisitrice Xanesh",
	"* |cff71d5ff|Hspell:311551|h[Abyssal Strike]|h|r: la frappe abyssale tombe en zone : dispersez-vous loin de l'impact.",
	"* |cff71d5ff|Hspell:314179|h[Fanaticism]|h|r: les sbires fanatisés augmentent leurs dégâts : tuez-les MAINTENANT.",
	"* |cff71d5ff|Hspell:312336|h[Void Ritual]|h|r: le rituel du Vide avance tant que ses obélisques vivent : tuez-les vite.",
	"* |cff71d5ff|Hspell:306495|h[Summon Ritual Obelisk]|h|r: les obélisques de rituel tombent dans la salle : priorité ABSOLUE dessus.",
};

pack["156818"] = { "Irion, l'empereur noir",
	"* |cff71d5ff|Hspell:306015|h[Searing Armor]|h|r: l'armure roussissante sur le tank : alternez après chaque empilement.",
	"* |cff71d5ff|Hspell:306111|h[Incineration]|h|r: l'incinération marque des zones de feu : sortez du cercle.",
	"* |cff71d5ff|Hspell:306289|h[Gale Blast]|h|r: la bourrasque projette loin : ne restez jamais au bord de la salle.",
	"* |cff71d5ff|Hspell:306735|h[Burning Cataclysm]|h|r: le cataclysme brûlant déverse de gros dégâts en zones : esquivez le cercle quand il tombe.",
};

pack["156866"] = { "Ra Den le Spolié",
	"* |cff71d5ff|Hspell:306819|h[Nullifying Strike]|h|r: la frappe annihilante vide le tank : alternez et soignez fort.",
	"* |cff71d5ff|Hspell:306634|h[Unstable Void]|h|r: le Vide instable saute au marqué : éloignez-vous du raid tant que vous le portez.",
	"* |cff71d5ff|Hspell:313227|h[Decaying Wound]|h|r: la blessure de putréfaction empile sur le touché : soignez-la avant qu'elle n'éclate.",
	"* |cff71d5ff|Hspell:306091|h[Call Essence]|h|r: l'appel amène des essences de sbires : tuez-les avant qu'elles n'atteignent le raid.",
};

bos = { "Conscience collective",
	"* |cff71d5ff|Hspell:307569|h[Dark Recon]|h|r: la reconnaissance des ténèbres tombe en zones : esquivez chaque balayage.",
	"* |cff71d5ff|Hspell:307213|h[Tek'riss Hive Control]|h|r: le contrôle de la ruche coupe le marqué du monde : les alliés le sortent de la transe.",
	"* |cff71d5ff|Hspell:307201|h[Kaz'riss Hive Control]|h|r: le second contrôle brise les volontés : surveillez les deux et libérez vite.",
	"* |cff71d5ff|Hspell:313672|h[GTFO]|h|r: flaques au sol : sortez-en immédiatement.",
	"* Deux esprits à l'unisson : alternez les cibles et tuez les drones de la ruche s'ils s'entassent.",
};
pack["157253"] = bos; pack["157254"] = bos;

pack["157620"] = { "Le prophète Skitra",
	"* |cff71d5ff|Hspell:308059|h[Shadow Shock]|h|r: choc d'ombre sur le tank : alternez.",
	"* |cff71d5ff|Hspell:307937|h[Shred Psyche]|h|r: le mental du tank marqué est tailladé : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:309687|h[Psychic Outburst]|h|r: la déferlante psychique marque des zones : dispersez-vous.",
	"* |cff71d5ff|Hspell:313239|h[Images of Absolution]|h|r: les doubles du prophète apparaissent : tuez-les vite — ils brouillent le focus des DPS.",
};

pack["157231"] = { "Shad'har l'Insatiable",
	"* |cff71d5ff|Hspell:312328|h[Hunger]|h|r: sa faim croît avec le temps : règle des DPS — tuez-le vite.",
	"* |cff71d5ff|Hspell:307471|h[Crush]|h|r: l'écrasement sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:307472|h[Dissolve]|h|r: la dissolution marque le sol d'acide : ne croisez jamais la flaque.",
	"* |cff71d5ff|Hspell:306930|h[Entropic Breath]|h|r: le souffle entropique balaie un cône : sortez du devant.",
};

pack["157354"] = { "Vexiona",
	"* |cff71d5ff|Hspell:306981|h[Gift of the Void]|h|r: le don du Vide marque au hasard : éloignez-vous du raid jusqu'à ce qu'il passe.",
	"* |cff71d5ff|Hspell:307729|h[Fanatical Ascension]|h|r: l'ascension fanatique des sbires : TOUJOURS à interrompre.",
	"* |cff71d5ff|Hspell:307075|h[Power of the Chosen]|h|r: le pouvoir des élus renforce les dégâts des sbires : tuez-les avant qu'ils ne l'aient mérité.",
	"* |cff71d5ff|Hspell:307396|h[Spiteful Assault]|h|r: l'assaut rageur sur le tank : alternez.",
	"* La dragonne et son culte : les sbires du Vide mènent la danse — priorité sur leurs incantations entre les phases.",
};

pack["157439"] = { "Carapace de N'Zoth",
	"* |cff71d5ff|Hspell:315954|h[Black Scar]|h|r: les balafres noires marquent des zones : ne les croisez jamais.",
	"* |cff71d5ff|Hspell:313334|h[Gift of N'Zoth]|h|r: le don de N'Zoth tombe sur le côté : dispersez-vous.",
	"* |cff71d5ff|Hspell:307831|h[Will Broken]|h|r: la volonté du marqué se brise : faites-le courir loin ou il se retourne contre vous.",
	"* |cff71d5ff|Hspell:307832|h[Servant of N'Zoth]|h|r: les serviteurs de N'Zoth frappent les alliés : contrôlez-les jusqu'à ce que l'effet passe.",
};

pack["157602"] = { "Drest'agath",
	"* |cff71d5ff|Hspell:310246|h[Void Grip]|h|r: l'étreinte du Vide attire le raid vers le centre : éloignez-vous pendant la canalisation.",
	"* |cff71d5ff|Hspell:310563|h[Mutterings of Betrayal]|h|r: les murmures de trahison marquent des zones : dispersez-vous.",
	"* |cff71d5ff|Hspell:310277|h[Volatile Seed]|h|r: la graine volatile éclate sur le marqué : laissez-la tomber seule, loin du raid.",
	"* |cff71d5ff|Hspell:310361|h[Unleashed Insanity]|h|r: les sbires de la folie déchaînée arrivent : tuez-les MAINTENANT.",
	"* Les morceaux du corps continuent d'incanter : alternez les cibles selon ce qui canalise et nettoyez la vase.",
};

pack["158041"] = { "N'Zoth le Corrupteur",
	"* |cff71d5ff|Hspell:313184|h[Synaptic Shock]|h|r: le choc synaptique empile sur tout le monde : ne le laissez jamais grandir.",
	"* |cff71d5ff|Hspell:316711|h[Mindwrack]|h|r: la tourmente mentale sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:310184|h[Creeping Anguish]|h|r: l'angoisse rampante marque le sol : sortez des zones.",
	"* |cff71d5ff|Hspell:310042|h[Tumultuous Burst]|h|r: l'éclat tumultueux marque au hasard : dispersez-vous.",
	"* Les phases psychiques : tuez les sbires mentaux avant qu'ils ne nourrissent le Corrupteur et nettoyez le sol entre les vagues.",
};

pack["158328"] = { "Il'gynoth, la corruption ressuscitée",
	"* |cff71d5ff|Hspell:309961|h[Eye of N'Zoth]|h|r: l'oeil de N'Zoth : tuez-le en priorité à chaque fois qu'il tombe.",
	"* |cff71d5ff|Hspell:311367|h[Touch of the Corruptor]|h|r: le toucher du Corrupteur sur le tank : alternez.",
	"* |cff71d5ff|Hspell:315094|h[Fixate]|h|r: la fixation marque : le marqué s'éloigne du raid.",
	"* |cff71d5ff|Hspell:310319|h[Corruptor's Gaze]|h|r: le regard du Corrupteur balaie le sol : sortez de ses zones.",
	"* Les sbires de la corruption nourrissent l'oeil : alternez entre les tuer et frapper l'oeil dans ses fenêtres.",
};


-- --------------------------------- --
-- Uldir : Zona 1861 --
-- --------------------------------- --

pack["132998"] = { "G'huun",
	"* |cff71d5ff|Hspell:267412|h[Massive Smash]|h|r: écrasement brutal sur le tank avec des dégâts sur tout le raid — alternance de tanks et soins du raid.",
	"* |cff71d5ff|Hspell:270447|h[Growing Corruption]|h|r: les orbes de la Vague de corruption laissent des taches qui POUSSENT — gardez le raid à l'écart.",
	"* |cff71d5ff|Hspell:272506|h[Explosive Corruption]|h|r: ces taches finissent par détoner : courez au bord quand l'orbe s'approche.",
	"* |cff71d5ff|Hspell:267409|h[Dark Bargain]|h|r: tuez les sbires du pacte dès leur apparition.",
	"* La mécanique clé : utilisez les pylônes d'Uldir pour renvoyer les orbes ; quand la plateforme tombe, tuez la Corruption rampante et esquivez les rayons de réorigination de la dernière phase.",
};

pack["133298"] = { "Dévoreur fétide",
	"* |cff71d5ff|Hspell:262313|h[Malodorous Miasma]|h|r: souffle frontal qui laisse des flaques de miasme : le tank les tire LOIN du raid et n'y marche jamais.",
	"* |cff71d5ff|Hspell:262314|h[Putrid Paroxysm]|h|r: les flaques de miasme éclatent quand on les piétine : gardez le sol propre.",
	"* |cff71d5ff|Hspell:262277|h[Thrash]|h|r: il frappe les joueurs les plus proches qui ne tankent PAS : dispersez-vous autour de lui.",
	"* |cff71d5ff|Hspell:262378|h[Frenzy]|h|r: ses dégâts grimpent — le tank garde ses défensifs et les soins se concentrent sur lui.",
};

pack["134442"] = { "Vectis",
	"* |cff71d5ff|Hspell:265127|h[Lingering Infection]|h|r: infection qui empile des dégâts sur la cible : les soigneurs la surveillent et déposent la larve au bon moment.",
	"* |cff71d5ff|Hspell:265178|h[Evolving Affliction]|h|r: l'affliction évolutive marque les joueurs par paires : les marqués s'éloignent du raid.",
	"* |cff71d5ff|Hspell:265212|h[Gestate]|h|r: il plante une larve dans la cible : à l'éclosion, tuez-la loin du raid avant qu'elle n'atteigne le boss.",
	"* |cff71d5ff|Hspell:266926|h[Plague Bomb]|h|r: les bombes de peste tombent en zones : sortez des taches vertes.",
};

pack["134546"] = { "Mythrax le Disloqueur",
	"* |cff71d5ff|Hspell:274693|h[Essence Shear]|h|r: hémorragie brutale sur le tank pendant 20 s : l'autre tank prend le relais avec ses défensifs.",
	"* |cff71d5ff|Hspell:272407|h[Oblivion Sphere]|h|r: il ouvre le seuil de l'oubli et rend la zone invulnérable : dispersez-vous dans les coins entre les vagues.",
	"* |cff71d5ff|Hspell:279157|h[Void Echoes]|h|r: les échos du Vide avancent depuis les murs : tuez-les AVANT qu'ils n'atteignent le seuil.",
	"* |cff71d5ff|Hspell:273538|h[Obliteration Blast]|h|r: le rayon géant tourne en cercles autour de sa sphère : courez autour.",
};

pack["134445"] = { "Zek'voz, héraut de N'Zoth",
	"* |cff71d5ff|Hspell:265264|h[Void Lash]|h|r: flagellation du Vide enchaînée sur le tank (deux coups) : l'autre tank prend le relais avec ses défensifs.",
	"* |cff71d5ff|Hspell:264382|h[Eye Beam]|h|r: le rayon tourne en cercles autour de lui : suivez la rotation, ne restez jamais devant.",
	"* |cff71d5ff|Hspell:265360|h[Roiling Deceit]|h|r: la duperie bouillonnante sur le marqué : laissez la matière du Vide loin du raid.",
	"* Les Sphères d'annihilation canalisent un rayon létal sur le raid : tuez-les dès qu'elles tombent et ne croisez jamais leur ligne.",
};

pack["135452"] = { "D.A.M.E.",
	"* |cff71d5ff|Hspell:267787|h[Sanitizing Strike]|h|r: frappe chirurgicale sur le tank et le Vide lui vole ses soins : le tank alterne avec ses défensifs.",
	"* |cff71d5ff|Hspell:267945|h[Wind Tunnel]|h|r: tunnel de vent frontal qui projette loin : ne restez jamais devant.",
	"* |cff71d5ff|Hspell:274205|h[Depleted Energy]|h|r: après la purge D.A.M.E. est vidée : le moment de pousser les dégâts.",
	"* |cff71d5ff|Hspell:268095|h[Cleansing Purge]|h|r: la purge balaie la salle en vagues de rayons purifiants depuis la porte : esquivez les lignes — elles font mal et retirent les effets bénéfiques.",
};

pack["137119"] = { "Taloc",
	"* |cff71d5ff|Hspell:275205|h[Enlarged Heart]|h|r: le coeur enflé frappe le tank avec des dégâts croissants toutes les 10 s : soins constants sur la cible et l'autre tank prend le relais.",
	"* |cff71d5ff|Hspell:271225|h[Plasma Discharge]|h|r: le plasma explose en zones au sol : sortez des taches quand elles tombent.",
	"* |cff71d5ff|Hspell:271965|h[Powering Down]|h|r: quand il se met en veille, tuez le robot de défense et la gousse volatile pendant qu'il ne peut pas vous nuire.",
	"* |cff71d5ff|Hspell:275270|h[Fixate]|h|r: la gousse volatile se fixe sur un joueur et éclate à l'arrivée : tirez-la loin du raid et tuez-la.",
};

pack["138967"] = { "Zul, ressuscité",
	"* |cff71d5ff|Hspell:274358|h[Rupturing Blood]|h|r: le sang du tank éclate à la fin et laisse une flaque : alternez de tank et placez la flaque loin du raid.",
	"* |cff71d5ff|Hspell:273361|h[Poolof Darkness]|h|r: flaques d'obscurité sur le sol : ne marchez jamais dessus.",
	"* |cff71d5ff|Hspell:273365|h[Dark Rev]|h|r: la révélation des ténèbres frappe si une orbe arrive : tuez les orbes du Vide qui marchent vers Zul avant qu'elles ne le touchent.",
	"* Phase 1 sans orbes : soignez, dispersez et nettoyez les flaques ; en phase 2 les orbes avancent depuis les murs par vagues et nourrissent la révélation si elles arrivent.",
};


-- --------------------------------- --
-- Atal'Dazar : Zona 1763 --
-- --------------------------------- --

pack["122967"] = { "Prêtresse Alun'za",
	"* |cff71d5ff|Hspell:255579|h[Claws]|h|r: griffes sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:255577|h[Transfusion]|h|r: TOUJOURS interrompue — elle se soigne avec le sang du joueur marqué.",
	"* |cff71d5ff|Hspell:255582|h[Molten Gold]|h|r: l'or fondu marque le sol : ne le croisez jamais.",
	"* |cff71d5ff|Hspell:259205|h[Spirits of Gold]|h|r: les esprits d'or arrivent d'abord : tuez-les avant le boss.",
};

pack["122965"] = { "Vol'kaal",
	"* |cff71d5ff|Hspell:250190|h[Totems Left]|h|r: les totems canalisent tant qu'ils vivent : écrasez chacun dès qu'il tombe.",
	"* |cff71d5ff|Hspell:250258|h[Leap]|h|r: il bondit et écrase une zone : éloignez-vous de l'impact.",
	"* |cff71d5ff|Hspell:259572|h[Noxious Stench]|h|r: TOUJOURS interrompue.",
	"* |cff71d5ff|Hspell:250585|h[GTFO]|h|r: flaques au sol : sortez-en immédiatement.",
};

pack["122963"] = { "Rezan",
	"* |cff71d5ff|Hspell:257407|h[Pursuit]|h|r: il poursuit un joueur : le poursuivi court à l'écart du groupe ; ne croisez jamais sa trajectoire et ne l'étourdissez pas.",
	"* |cff71d5ff|Hspell:255434|h[Teeth]|h|r: les crocs mordent fort le tank : alternez et utilisez vos défensifs.",
	"* |cff71d5ff|Hspell:255371|h[Fear]|h|r: la peur éclate en zone : le marqué s'éloigne du groupe.",
	"* |cff71d5ff|Hspell:260683|h[Bone Quake]|h|r: le séisme d'os amène des sbires : tuez-les.",
};

pack["122968"] = { "Yazma",
	"* |cff71d5ff|Hspell:259187|h[Soul Rend]|h|r: le déchirement d'âme marque au hasard : dispersez-vous.",
	"* |cff71d5ff|Hspell:250096|h[Wracking Pain]|h|r: la douleur empile sur le marqué : soignez-le pendant qu'elle croît.",
	"* |cff71d5ff|Hspell:249919|h[Skewer]|h|r: l'empalement sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:250050|h[Echoes]|h|r: les échos laissent des flaques au sol : sortez-en.",
};


-- --------------------------------- --
-- Freehold : Zona 1754 --
-- --------------------------------- --

pack["126832"] = { "Cap'taine céleste Kragg",
	"* |cff71d5ff|Hspell:256005|h[Vile Bombardment]|h|r: le bombardement tombe en zones : esquivez chaque impact.",
	"* |cff71d5ff|Hspell:256106|h[Powder Shot]|h|r: le tir de poudre frappe en cône : ne restez jamais devant.",
	"* |cff71d5ff|Hspell:255952|h[Charge]|h|r: il charge en ligne : la cible s'écarte du passage.",
	"* |cff71d5ff|Hspell:272046|h[Dive Bomb]|h|r: il pique sur sa zone marquée : hors du cercle.",
};

bos = { "Conseil des capitaines",
	"* |cff71d5ff|Hspell:265088|h[Good Brew]|h|r: la bonne bière laisse une flaque sûre : tenez-vous dedans et gardez les ennemis à l'extérieur.",
	"* |cff71d5ff|Hspell:265168|h[Caustic Brew]|h|r: la bière caustique brûle : ne la croisez jamais.",
	"* |cff71d5ff|Hspell:278467|h[Caustic Brew On Boss]|h|r: la bière atterrit sur le boss lui-même : éloignez-vous de ses éclaboussures.",
	"* |cff71d5ff|Hspell:257117|h[Lucky Sevens]|h|r: les lancers de dés frappent le marqué en zone : dispersez-vous.",
};
pack["126845"] = bos; pack["126847"] = bos; pack["126848"] = bos;

pack["126969"] = { "Arène du Butin",
	"* |cff71d5ff|Hspell:256358|h[Shark Toss]|h|r: le requin balaie en zone : esquivez son coup.",
	"* |cff71d5ff|Hspell:257829|h[Greasy]|h|r: le sol devient gras et glissant : prudence quand on fait courir le requin.",
	"* |cff71d5ff|Hspell:256489|h[Rearm]|h|r: le canon se réarme : éloignez-vous de son balayage quand il tire.",
	"* |cff71d5ff|Hspell:256405|h[Sharknado]|h|r: la tornade de requins balaie l'arène : FUYEZ.",
};

pack["126983"] = { "Harlan Sweete",
	"* |cff71d5ff|Hspell:257314|h[Black Powder]|h|r: les charges de poudre noire éclatent en zones : éloignez-vous de chaque explosion.",
	"* |cff71d5ff|Hspell:257305|h[Cannon Barrage]|h|r: le tir de barrage balaie le sol en lignes : esquivez-les.",
	"* |cff71d5ff|Hspell:413131|h[Whirling Dagger]|h|r: la dague tournoie autour de lui : ne la croisez jamais.",
	"* |cff71d5ff|Hspell:257278|h[Swiftwind Saber]|h|r: le sabre au vent frappe le tank : alternez avec vos défensifs.",
};


-- --------------------------------- --
-- Kings' Rest : Zona 1762 --
-- --------------------------------- --

pack["135322"] = { "Le serpent doré",
	"* |cff71d5ff|Hspell:265773|h[Spit Gold]|h|r: le crachat d'or tombe en zones : sortez des éclaboussures.",
	"* |cff71d5ff|Hspell:265910|h[Tail Thrash]|h|r: le coup de queue frappe le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:265923|h[Lucre Call]|h|r: l'appel amène des sbires dorés : tuez-les en priorité.",
	"* |cff71d5ff|Hspell:1311987|h[Serpentine]|h|r: la serpentine bondit à travers le sol : surveillez sa trajectoire.",
};

bos = { "Le conseil des tribus",
	"* |cff71d5ff|Hspell:266206|h[Whirling Axes]|h|r: les haches tournoyantes balaient le sol : esquivez-les.",
	"* |cff71d5ff|Hspell:267494|h[Barrel Through]|h|r: le tonneau inflige des dégâts PARTAGÉS : au moins deux les encaissent ensemble.",
	"* |cff71d5ff|Hspell:266237|h[Debilitating Backhand]|h|r: la gifle s'abat sur sa cible marquée : courez loin.",
	"* |cff71d5ff|Hspell:267273|h[Poison Nova]|h|r: la nova de poison : TOUJOURS interrompue.",
};
pack["135475"] = bos; pack["135470"] = bos; pack["135472"] = bos;

pack["134993"] = { "Mchimba l'Embaumeur",
	"* |cff71d5ff|Hspell:267618|h[Drain Fluids]|h|r: le drainage marque des zones et draine la vie : soignez le marqué immédiatement.",
	"* |cff71d5ff|Hspell:267639|h[Burn Corruption]|h|r: la corruption brûle dans sa zone : éloignez-vous des flammes.",
	"* |cff71d5ff|Hspell:267702|h[Entomb]|h|r: L'EMMUREMENT - il scelle un joueur dans une momie : le groupe casse le tombeau immédiatement.",
	"* |cff71d5ff|Hspell:1312146|h[Awakening Slam]|h|r: le coup d'éveil : AoE lourd - soignez le groupe après le coup.",
};

pack["136160"] = { "Dazar, le premier roi",
	"* |cff71d5ff|Hspell:1303115|h[Aerial Smash]|h|r: l'écrasement aérien marque des zones : esquivez le cercle quand il tombe.",
	"* |cff71d5ff|Hspell:269230|h[Hunting Leap]|h|r: il bondit sur le marqué : la cible s'écarte du groupe.",
	"* |cff71d5ff|Hspell:1303488|h[Savage Maul]|h|r: l'écrasement sauvage frappe en zone : soignez le groupe.",
	"* |cff71d5ff|Hspell:268586|h[Blade Combo]|h|r: la combo de lames enchaîne vite sur le tank : alternez SANS tarder.",
};


-- --------------------------------- --
-- Operation: Mechagon : Zona 2097 --
-- --------------------------------- --

bos = { "Cogne-Chariottes",
	"* |cff71d5ff|Hspell:1216443|h[Electrical Storm]|h|r: la tempête électrique marque des zones : sortez-en.",
	"* |cff71d5ff|Hspell:282801|h[Plating Cast]|h|r: le blindage du chariot se dresse : déchirez-le avec des dégâts réguliers.",
	"* |cff71d5ff|Hspell:1215065|h[Platinum Pummel]|h|r: les coups de platine sur le tank : alternez.",
	"* |cff71d5ff|Hspell:1215102|h[Ground Pound]|h|r: le coup de sol : AoE lourd - soignez le groupe.",
};
pack["144244"] = bos; pack["145185"] = bos;

pack["144246"] = { "K.U.-J.0.",
	"* |cff71d5ff|Hspell:294929|h[Blazing Chomp]|h|r: attention.",
	"* |cff71d5ff|Hspell:291930|h[Air Drop]|h|r: attention.",
	"* |cff71d5ff|Hspell:291972|h[Explosive Leap]|h|r: attention.",
	"* |cff71d5ff|Hspell:291946|h[Venting Flames]|h|r: attention.",
};

pack["144248"] = { "Jardin du Machiniste",
	"* |cff71d5ff|Hspell:285454|h[Discom Bomb]|h|r: la bombe éclate dans son rayon : hors du cercle.",
	"* |cff71d5ff|Hspell:294954|h[Self Trimming Hedge]|h|r: la haie se taille elle-même et roule : ne la croisez jamais.",
	"* |cff71d5ff|Hspell:294853|h[Plant]|h|r: les plantes poussent dans le jardin : tuez-les avant qu'elles ne fleurissent.",
	"* |cff71d5ff|Hspell:285440|h[Flame Cannon]|h|r: le canon à flammes : AoE - soignez le groupe.",
};

bos = { "Roi Mécagone",
	"* |cff71d5ff|Hspell:291928|h[Mega Zap]|h|r: attention.",
	"* |cff71d5ff|Hspell:291865|h[Recalibrate]|h|r: attention.",
	"* |cff71d5ff|Hspell:291626|h[Cutting Beam]|h|r: attention.",
	"* |cff71d5ff|Hspell:283143|h[Magneto Arm Soon]|h|r: attention.",
};
pack["150396"] = bos; pack["144249"] = bos; pack["150397"] = bos;

pack["150159"] = { "Roi Gobbamak",
	"* |cff71d5ff|Hspell:297257|h[Electrical Charge]|h|r: la charge électrique marque : dispersez-vous.",
	"* |cff71d5ff|Hspell:297254|h[Charged Smash]|h|r: l'écrasement chargé est PARTAGÉ : au moins deux l'absorbent.",
	"* |cff71d5ff|Hspell:297261|h[Rumble]|h|r: le fracas frappe en zone : soignez le groupe.",
};

pack["150190"] = { "Unité d'oppression aérienne CT-8",
	"* |cff71d5ff|Hspell:301351|h[Reinforcement Relay]|h|r: le relais amène des renforts : tuez-les MAINTENANT.",
	"* |cff71d5ff|Hspell:302274|h[Fulminating Zap]|h|r: l'étincelle fulgurante frappe les proches : dispersez-vous.",
	"* |cff71d5ff|Hspell:295536|h[Cannon Blast]|h|r: l'éclat du canon marque une zone : hors du cercle.",
	"* |cff71d5ff|Hspell:302279|h[Wreck]|h|r: les coups destructeurs sur le tank : alternez avec vos défensifs.",
};

pack["150222"] = { "Salcrass",
	"* |cff71d5ff|Hspell:298259|h[Gooped]|h|r: la gadoue marque la cible : écartez-vous du groupe.",
	"* |cff71d5ff|Hspell:297985|h[Splatter]|h|r: l'éclaboussure marque le sol : ne la croisez jamais.",
	"* |cff71d5ff|Hspell:297834|h[Toxic Wave]|h|r: la vague toxique balaie : esquivez-la.",
	"* |cff71d5ff|Hspell:297913|h[Toxic Goop Dispel]|h|r: la gadoue est emportée AVANT la purification - la purger tous ensemble laisse une flaque.",
};

bos = { "Trixie et Naeno",
	"* |cff71d5ff|Hspell:298940|h[Bolt Buster]|h|r: le coupe-boulons bondit sur le groupe : prudence avec la décharge.",
	"* |cff71d5ff|Hspell:302682|h[Mega Taze]|h|r: le méga taser sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:298897|h[Jump Start]|h|r: le démarrage de secours recharge sa puissance : TOUJOURS à interrompre.",
	"* |cff71d5ff|Hspell:298669|h[Taze]|h|r: le taser : TOUJOURS interrompable.",
};
pack["153755"] = bos; pack["150712"] = bos;


-- --------------------------------- --
-- Shrine of the Storm : Zona 1864 --
-- --------------------------------- --

pack["134056"] = { "Aqu'sire",
	"* |cff71d5ff|Hspell:264144|h[Undertow]|h|r: le ressac attire le raid vers le centre : éloignez-vous pendant l'incantation.",
	"* |cff71d5ff|Hspell:264560|h[Choking Brine]|h|r: la saumure étouffe dans sa zone : ne la croisez jamais.",
	"* |cff71d5ff|Hspell:264903|h[Erupting Waters]|h|r: les eaux éruptives : hors de chaque bulle.",
	"* |cff71d5ff|Hspell:264101|h[Surging Rush]|h|r: la ruée balaie en ligne : ne la croisez jamais.",
};

bos = { "Conseil des eaugures",
	"* |cff71d5ff|Hspell:267901|h[Blessing of Ironsides]|h|r: la bénédiction blinde le sage de plaques de fer : déchirez-la avec des dégâts réguliers.",
	"* |cff71d5ff|Hspell:267830|h[Blessing of Tempest]|h|r: la bénédiction de tempête augmente ses dégâts : purgez-la.",
	"* |cff71d5ff|Hspell:267891|h[Swiftness Ward]|h|r: le talisman de célérité accélère son incantation : tuez-le MAINTENANT.",
	"* |cff71d5ff|Hspell:267818|h[Slicing Blast]|h|r: la rafale tranchante : TOUJOURS interrompable.",
};
pack["134063"] = bos; pack["134058"] = bos;

pack["134060"] = { "Seigneur Chantorage",
	"* |cff71d5ff|Hspell:268347|h[Void Bolt]|h|r: l'éclair du Vide : TOUJOURS interrompable.",
	"* |cff71d5ff|Hspell:268896|h[Mind Rend]|h|r: la déchirure mentale marque : dispersez-vous loin du marqué.",
	"* |cff71d5ff|Hspell:269097|h[Wake the Void]|h|r: le Vide éveillé marque des zones : ne les croisez jamais.",
	"* |cff71d5ff|Hspell:269131|h[Ancient Mindbender]|h|r: le manipulateur d'esprit CONTRÔLE le marqué : les alliés le sortent de son emprise.",
};

pack["134069"] = { "Vol'zith l'Insidieuse",
	"* |cff71d5ff|Hspell:267299|h[Call the Abyss]|h|r: l'appel de l'abîme amène des tentacules : tuez-les en priorité.",
	"* |cff71d5ff|Hspell:267385|h[Tentacle Slam]|h|r: le coup de tentacule marque des zones : esquivez.",
	"* |cff71d5ff|Hspell:269399|h[Yawning Gate]|h|r: la porte béante aspire puis fracasse : FUYEZ son rayon.",
	"* |cff71d5ff|Hspell:267360|h[Grasp]|h|r: la poigne saisit le marqué : soignez-le immédiatement.",
};


-- --------------------------------- --
-- Siege of Boralus : Zona 1822 --
-- --------------------------------- --

pack["130834"] = { "Sergent Bainbridge",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: le crochet ramène son marqué au boss : soignez-le immédiatement.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: l'hameçon à viande empile sur le marqué : soins continus.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: le crochet de fer sur le tank : alternez.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: le regard de fer marque une zone : dispersez-vous.",
};

pack["128650"] = { "Hachoir Rougecrochet",
	"* |cff71d5ff|Hspell:257459|h[On the Hook]|h|r: le crochet ramène son marqué au boss : soignez-le immédiatement.",
	"* |cff71d5ff|Hspell:275107|h[Meat Hook]|h|r: l'hameçon à viande empile sur le marqué : soins continus.",
	"* |cff71d5ff|Hspell:272662|h[Iron Hook]|h|r: le crochet de fer sur le tank : alternez.",
	"* |cff71d5ff|Hspell:260954|h[Iron Gaze]|h|r: le regard de fer marque une zone : dispersez-vous.",
};

pack["128651"] = { "Hadal Sombrabysse",
	"* |cff71d5ff|Hspell:261563|h[Crashing Tide]|h|r: la marée écrasante balaie en zones : esquivez chaque vague.",
	"* |cff71d5ff|Hspell:257882|h[Break Water]|h|r: la digue marque le sol : sortez de son rayon.",
	"* |cff71d5ff|Hspell:276068|h[Tidal Surge]|h|r: la houle grandit à travers la salle : gardez une longueur d'avance sur l'arête qui monte.",
};

pack["120553"] = { "Viq'Goth",
	"* |cff71d5ff|Hspell:275014|h[Putrid Waters]|h|r: les eaux putrides inondent le sol : ne les croisez jamais.",
	"* |cff71d5ff|Hspell:269366|h[Repair]|h|r: la réparation du canonnier : TOUJOURS interrompable.",
	"* |cff71d5ff|Hspell:269456|h[Eradication]|h|r: l'éradication balaie le groupe : dispersez-vous.",
	"* |cff71d5ff|Hspell:270185|h[Call of the Deep]|h|r: l'appel des profondeurs amène des sbires : tuez-les.",
};

pack["129208"] = { "Capitaine de l'effroi Boisclos",
	"* |cff71d5ff|Hspell:269029|h[Clear the Deck]|h|r: elle rase le pont au canon dans des zones : esquivez-les.",
	"* |cff71d5ff|Hspell:268260|h[Broadside]|h|r: la bordée balaie un côté : changez de côté à temps.",
	"* |cff71d5ff|Hspell:268752|h[Withdraw]|h|r: elle se replie le temps de son incantation : priorité aux gardes qu'elle laisse derrière.",
	"* |cff71d5ff|Hspell:268230|h[Crimson Swipe]|h|r: la taillade cramoisie sur le tank : alternez.",
};


-- --------------------------------- --
-- Temple of Sethraliss : Zona 1877 --
-- --------------------------------- --

bos = { "Viperis et Aspix",
	"* |cff71d5ff|Hspell:1288049|h[Thunder and Lightning]|h|r: tonnerre et éclair sont PARTAGÉS : au moins deux les encaissent.",
	"* |cff71d5ff|Hspell:1311804|h[Overload]|h|r: la surcharge sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:1311805|h[Tempest Winds]|h|r: les vents poussent à travers la salle : prudence au bord du vide.",
	"* |cff71d5ff|Hspell:1289059|h[Gale Force]|h|r: la bourrasque balaie des zones : esquivez-la.",
};
pack["133379"] = bos; pack["133944"] = bos;

pack["133384"] = { "Merekpha",
	"* |cff71d5ff|Hspell:264172|h[Burrow]|h|r: elle s'enterre et refait surface en surcharge : prudence à sa remontée.",
	"* |cff71d5ff|Hspell:1290029|h[Knot of Snakes]|h|r: le noeud de serpents attaque en grappe : tuez-le avant qu'il n'entrave.",
	"* |cff71d5ff|Hspell:1289109|h[Thunderspit]|h|r: le crachin de foudre atteint le marqué : éloignez-vous du groupe tout de suite.",
	"* |cff71d5ff|Hspell:1289205|h[Hatch]|h|r: les oeufs éclosent : tuez la couvée dès l'apparition.",
};

pack["133389"] = { "Galvazzt",
	"* |cff71d5ff|Hspell:266923|h[Galvanize]|h|r: la galvanisation augmente ses dégâts : gardez les charges sous contrôle jusqu'à sa mort.",
	"* |cff71d5ff|Hspell:1309525|h[Induction]|h|r: l'induction frappe en zone : soignez le groupe.",
	"* |cff71d5ff|Hspell:1291618|h[Lightning Spire]|h|r: prise de la flèche d'éclair : au moins deux l'absorbent.",
	"* |cff71d5ff|Hspell:266511|h[Capacitance]|h|r: la capacitance marque le sol : ne le croisez jamais.",
};

pack["133392"] = { "Avatar de Sephraliss",
	"* |cff71d5ff|Hspell:1301963|h[Cleansed]|h|r: les purifiés restent marqués : prudence avec leurs déplacements.",
	"* |cff71d5ff|Hspell:1301202|h[Defiling Taint]|h|r: la souillure profanatrice marque le sol : hors des taches.",
	"* |cff71d5ff|Hspell:273677|h[Taint]|h|r: la souillure sur le marqué : éloignez-vous du groupe jusqu'à expiration.",
	"* |cff71d5ff|Hspell:268024|h[Pulse]|h|r: la pulsation frappe en zone : soignez le groupe.",
};


-- --------------------------------- --
-- The MOTHERLODE!! : Zona 1594 --
-- --------------------------------- --

pack["129214"] = { "Disperseur de foule automatique",
	"* |cff71d5ff|Hspell:271784|h[Throw Coins]|h|r: les gifles de pièces tombent en zones : esquivez.",
	"* |cff71d5ff|Hspell:269493|h[Footbomb Launcher]|h|r: le lance-bombes marque le sol : hors du rayon.",
	"* |cff71d5ff|Hspell:271903|h[Coin Magnet]|h|r: l'aimant attire des pièces qui éclatent : ne croisez jamais sa ligne de tir.",
	"* |cff71d5ff|Hspell:262347|h[Static Pulse]|h|r: la pulsation statique marque en zone : dispersez-vous.",
};

pack["129227"] = { "Azerokk",
	"* |cff71d5ff|Hspell:257582|h[Raging Gaze]|h|r: le regard enragé marque au hasard : le marqué s'écarte.",
	"* |cff71d5ff|Hspell:258622|h[Pulse]|h|r: la pulsation frappe le groupe en zone : soignez.",
	"* |cff71d5ff|Hspell:257593|h[Call Earth Rager]|h|r: les rageurs de terre entrent : tuez-les MAINTENANT (ils empilent des dégâts sur le boss tant qu'ils vivent).",
	"* |cff71d5ff|Hspell:271698|h[Infusion]|h|r: l'infusion nourrit les rageurs : interrompez TOUJOURS l'incantation.",
};

pack["129231"] = { "Rixxa Fluxifuge",
	"* |cff71d5ff|Hspell:259022|h[Azerite Catalyst]|h|r: le catalyseur d'azérite la renforce : tuez-le avant qu'il ne grandisse.",
	"* |cff71d5ff|Hspell:259940|h[Propellant Blast]|h|r: l'explosion propulsée marque la cible : courez loin dès l'incantation.",
	"* |cff71d5ff|Hspell:259853|h[Chem Burn]|h|r: la brûlure chimique empile sur le marqué : soins continus.",
};

bos = { "Nabab Razzbam",
	"* |cff71d5ff|Hspell:260189|h[Drill]|h|r: la foreuse tourne en manège : courez avec la rotation, ne la croisez jamais.",
	"* |cff71d5ff|Hspell:262515|h[Heartseeker]|h|r: le cherche-coeur marque sa cible : courez loin du groupe dès l'incantation.",
	"* |cff71d5ff|Hspell:260811|h[Homing Missile]|h|r: les missiles à tête chercheuse suivent le marqué : éloignez-vous du groupe et absorbez les coups.",
	"* |cff71d5ff|Hspell:271456|h[Drill Smash]|h|r: le coup de foreuse : AoE - soignez le groupe.",
};
pack["129232"] = bos; pack["132713"] = bos;


-- --------------------------------- --
-- The Underrot : Zona 1841 --
-- --------------------------------- --

pack["131318"] = { "Leaxa l'Aînée",
	"* |cff71d5ff|Hspell:260879|h[Blood Bolt]|h|r: l'éclair de sang : TOUJOURS interrompable.",
	"* |cff71d5ff|Hspell:260894|h[Creeping Rot]|h|r: la pourriture rampante se traîne sur le sol : hors des taches.",
	"* |cff71d5ff|Hspell:264757|h[Sanguine Feast]|h|r: le festin sanguin marque le sol : hors de son rayon quand il tombe.",
};

pack["131383"] = { "Zancha le Mande-spores",
	"* |cff71d5ff|Hspell:272457|h[Shockwave]|h|r: l'onde de choc frappe devant : tournez le boss loin du groupe.",
	"* |cff71d5ff|Hspell:259718|h[Upheaval]|h|r: le soulèvement marque des zones au sol : hors d'elles.",
	"* |cff71d5ff|Hspell:273271|h[Volatile Pods]|h|r: les gousses volatiles éclatent : tuez-les IMMÉDIATEMENT.",
	"* |cff71d5ff|Hspell:259732|h[Festering Harvest]|h|r: la récolte fétide amène des spores : prudence avec celles qui tombent près du groupe.",
};

pack["131817"] = { "Gueule-de-pierre l'Infesté",
	"* |cff71d5ff|Hspell:260793|h[Indigestion]|h|r: l'indigestion éclate dans son rayon : la mêlée sort du cercle dès l'incantation.",
	"* |cff71d5ff|Hspell:260292|h[Charge]|h|r: il charge en ligne vers le marqué : ne croisez jamais sa trajectoire.",
	"* |cff71d5ff|Hspell:260333|h[Tantrum]|h|r: la crise de nerfs frappe en zone : soignez le groupe.",
};

pack["133007"] = { "Monstruosité déchaînée",
	"* |cff71d5ff|Hspell:269692|h[Visage]|h|r: le visage marque la cible : courez loin du groupe dès l'incantation.",
	"* |cff71d5ff|Hspell:269843|h[Vile Expulsion]|h|r: l'expulsion ignoble laisse des zones : esquivez-les quand elles tombent.",
	"* |cff71d5ff|Hspell:269310|h[Cleansing Light]|h|r: la lumière purifie le corridor par étapes : avancez d'étape en étape à temps.",
	"* |cff71d5ff|Hspell:269838|h[GTFO]|h|r: flaques au sol : sortez-en immédiatement.",
};


-- --------------------------------- --
-- Tol Dagor : Zona 1771 --
-- --------------------------------- --

pack["127479"] = { "La Reine des sables",
	"* |cff71d5ff|Hspell:257617|h[Upheaval]|h|r: le soulèvement marque des zones au sol : hors d'elles.",
	"* |cff71d5ff|Hspell:257092|h[Sand Trap]|h|r: les trappes de sable avalent : ne restez jamais dans le cercle qui se forme.",
	"* |cff71d5ff|Hspell:257495|h[Sandstorm]|h|r: la tempête de sable frappe en zone : soignez le groupe.",
};

pack["127484"] = { "Jes Hurley",
	"* |cff71d5ff|Hspell:257793|h[Smoke Powder]|h|r: la poudre enfumée assombrit : prudence avec ses coups à travers la brume.",
	"* |cff71d5ff|Hspell:257827|h[Motivating Cry]|h|r: le cri enhardit les prisonniers : tuez-les MAINTENANT.",
	"* |cff71d5ff|Hspell:260067|h[Vicious Mauling]|h|r: les coups vicieux sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:257777|h[Crip Shiv]|h|r: la lame estropie le marqué : soignez-le immédiatement.",
};

pack["127490"] = { "Chevalier-capitaine Valyri",
	"* |cff71d5ff|Hspell:256955|h[Cinderflame]|h|r: la braise laisse des flaques au sol : ne les croisez jamais.",
	"* |cff71d5ff|Hspell:257028|h[Fuselighter]|h|r: l'amorce de fusée marque la cible : courez loin du groupe dès l'incantation.",
	"* |cff71d5ff|Hspell:256970|h[Ignition]|h|r: l'allumage éclate à la fin de l'incantation : esquivez le rayon marqué.",
};

pack["127503"] = { "Surveillant Korgus",
	"* |cff71d5ff|Hspell:256199|h[AZBlast]|h|r: l'explosion d'azérite marque une zone : hors du rayon.",
	"* |cff71d5ff|Hspell:256198|h[AZIncendiary]|h|r: les balles incendiaires suivent le marqué : courez hors du groupe quand le DoT est sur vous.",
	"* |cff71d5ff|Hspell:256038|h[Deadeye]|h|r: le tir de précision vise et fait feu : le marqué s'écarte du tir.",
	"* |cff71d5ff|Hspell:256105|h[Explosive Burst]|h|r: l'éclat explosif détone à l'expiration : soignez le marqué avant qu'il n'éclate.",
};


-- --------------------------------- --
-- Waycrest Manor : Zona 1862 --
-- --------------------------------- --

bos = { "Triade malecarde",
	"* |cff71d5ff|Hspell:260741|h[Jagged Nettles]|h|r: les orties empilent sur le marqué : ne partagez pas l'affaiblissement.",
	"* |cff71d5ff|Hspell:260703|h[Unstable Mark]|h|r: la marque instable éclate sur le marqué : éloignez-vous du groupe dès l'incantation.",
	"* |cff71d5ff|Hspell:268086|h[Aura of Dread]|h|r: l'aura d'effroi pèse sur le groupe : soignez en continu.",
	"* |cff71d5ff|Hspell:260907|h[Soul Manipulation]|h|r: la manipulation d'âme CONTRÔLE le marqué : les alliés le sortent de son emprise.",
};
pack["135358"] = bos; pack["135359"] = bos; pack["135360"] = bos; pack["131823"] = bos; pack["131824"] = bos; pack["131825"] = bos;

pack["260551"] = { "Goliath des âmes",
	"* |cff71d5ff|Hspell:260512|h[Soul Harvest]|h|r: la moisson d'âmes draine le groupe : soignez fort pendant l'incantation.",
	"* |cff71d5ff|Hspell:260541|h[Burning Bush]|h|r: les buissons ardens marquent le sol : ne les croisez jamais.",
	"* |cff71d5ff|Hspell:260508|h[Crush]|h|r: l'écrasement sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:267907|h[Thorns]|h|r: les épines punissent la mêlée : la mêlée reste à l'écart tant qu'elles empilent.",
};

pack["131863"] = { "Raal le Bâfreur",
	"* |cff71d5ff|Hspell:264923|h[Tenderize]|h|r: l'attendrissement enchaîne sur le tank : alternez vite.",
	"* |cff71d5ff|Hspell:264734|h[Consume All]|h|r: l'engloutissement avale le marqué : fuyez le rayon de la bouche.",
	"* |cff71d5ff|Hspell:264931|h[Servant]|h|r: les serviteurs entrent : tuez-les MAINTENANT.",
	"* |cff71d5ff|Hspell:264694|h[Rotten Expulsion]|h|r: l'expulsion putride marque des zones : esquivez-les.",
};

bos = { "Seigneur et Dame Malvoie",
	"* |cff71d5ff|Hspell:261440|h[Virulent Pathogen]|h|r: le pathogène virulent saute de proche en proche : gardez le marqué à l'écart.",
	"* |cff71d5ff|Hspell:261446|h[Vitality Transfer]|h|r: le transfert de vitalité entre les deux : TOUJOURS interrompable.",
	"* |cff71d5ff|Hspell:268306|h[Discordant Cadenza]|h|r: la cadence discordante balaie depuis le piano : éloignez-vous de son rayon sonore.",
};
pack["131527"] = bos; pack["131545"] = bos;

pack["131864"] = { "Gorak Tul",
	"* |cff71d5ff|Hspell:268202|h[Deathlens]|h|r: l'oeil de mort marque la cible : courez loin du groupe dès l'incantation.",
	"* |cff71d5ff|Hspell:266198|h[Rising Flames]|h|r: les flammes montantes brûlent le sol : hors des zones.",
	"* |cff71d5ff|Hspell:266266|h[Summon Slaver]|h|r: les esclavagistes entrent : tuez-les en priorité.",
	"* |cff71d5ff|Hspell:266181|h[Dread Essence]|h|r: l'essence d'effroi frappe en zone : soignez le groupe.",
};


-- --------------------------------- --
-- Jefes de mundo --
-- --------------------------------- --

pack["136385"] = { "Azurethos",
	"* |cff71d5ff|Hspell:274829|h[Gale Force]|h|r: la bourrasque pousse vers le bord : prudence avec le haut de la falaise.",
	"* |cff71d5ff|Hspell:274839|h[Azurethos Fury]|h|r: la fureur laisse des zones au sol : hors d'elles.",
	"* |cff71d5ff|Hspell:274832|h[Wing Buffet]|h|r: le battement d'ailes pousse loin : serrez le centre à l'incantation.",
};

pack["140252"] = { "Assemblage de grêlons",
	"* |cff71d5ff|Hspell:274896|h[Permafrost Spike]|h|r: les pointes de pergélisol jaillissent en zones : ne les croisez jamais.",
	"* |cff71d5ff|Hspell:274891|h[Glacial Breath]|h|r: le souffle glaciaire balaie en cône : restez derrière lui.",
	"* |cff71d5ff|Hspell:274895|h[Freezing Tempest]|h|r: la tempête gelée tourne autour du groupe : gardez le rayon sûr.",
};

pack["132253"] = { "Ji'arak",
	"* |cff71d5ff|Hspell:260908|h[Storm Wing]|h|r: l'aile de tempête frappe en zone : soignez le groupe.",
	"* |cff71d5ff|Hspell:261088|h[Hurricane Crash]|h|r: il pique sur un point : FUYEZ le cercle marqué.",
	"* |cff71d5ff|Hspell:261467|h[Matriarchs Call]|h|r: l'appel de la matriarche amène la couvée : tuez-les en priorité.",
};

pack["138794"] = { "Kraulok Mange-dunes",
	"* |cff71d5ff|Hspell:275200|h[Primal Rage]|h|r: la rage primitive augmente ses dégâts avec le temps : tuez-le avant qu'elle n'empile.",
	"* |cff71d5ff|Hspell:276046|h[Shake Loose]|h|r: il se secoue et projette les proches : prudence avec l'envoi au sol.",
	"* |cff71d5ff|Hspell:275175|h[Sonic Bellow]|h|r: le mugissement sonique frappe en zone : soignez le groupe.",
	"* |cff71d5ff|Hspell:275194|h[Earth Spike]|h|r: les pointes de terre jaillissent du sol : hors des cercles.",
};

pack["132701"] = { "T'zane",
	"* |cff71d5ff|Hspell:262004|h[Crushing Slam]|h|r: la gifle écrasante sur le tank : alternez.",
	"* |cff71d5ff|Hspell:261605|h[Consuming Spirits]|h|r: les esprits dévorants engloutissent : tuez-les MAINTENANT.",
	"* |cff71d5ff|Hspell:261600|h[Coalesced Essence]|h|r: l'essence coalescente marque des zones : hors d'elles.",
	"* |cff71d5ff|Hspell:261552|h[Terror Wall]|h|r: le mur de terreur avance : traversez-le avec vos défensifs ou fuyez.",
};

pack["140163"] = { "Tresse-guerre Yenajz",
	"* |cff71d5ff|Hspell:274842|h[Void Nova]|h|r: la nova du Vide marque au hasard : dispersez-vous.",
	"* |cff71d5ff|Hspell:274932|h[Endless Abyss]|h|r: l'abîme sans fin avance en dévorant : FUYEZ son rayon.",
};

pack["148295"] = { "Ivus le Purulent",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: la pétrification marque le groupe : dispersez-vous loin du marqué.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: l'onde de choc frappe en ligne : esquivez-la.",
	"* Boss de front de guerre de Bois de la Pénombre : prudence avec les renforts de la faction adverse pendant le combat.",
};

pack["144946"] = { "Ivus le Seigneur de la forêt",
	"* |cff71d5ff|Hspell:282615|h[Petrify]|h|r: la pétrification marque le groupe : dispersez-vous loin du marqué.",
	"* |cff71d5ff|Hspell:282463|h[Shockwave]|h|r: l'onde de choc frappe en ligne : esquivez-la.",
	"* Boss de front de guerre de Bois de la Pénombre : prudence avec les renforts de la faction adverse pendant le combat.",
};

pack["152697"] = { "Ulmath",
	"* |cff71d5ff|Hspell:301748|h[Endless Doom]|h|r: le malheur sans fin empile des dégâts continus : soignez fort.",
	"* |cff71d5ff|Hspell:301773|h[Mental Collapse]|h|r: l'effondrement mental marque la cible : FUYEZ le rayon avant l'éclatement.",
	"* |cff71d5ff|Hspell:301840|h[Void Dance]|h|r: la danse du Vide marque le sol : hors des zones.",
};

pack["152671"] = { "Wekemara",
	"* |cff71d5ff|Hspell:303451|h[Electric Discharge]|h|r: la décharge saute entre les proches : dispersez-vous.",
	"* |cff71d5ff|Hspell:303319|h[Bioelectric Blast]|h|r: l'explosion bioélectrique marque le sol : hors du cercle.",
	"* |cff71d5ff|Hspell:303488|h[Shock Burst]|h|r: l'éclat de choc sur le marqué : éloignez-vous du groupe à l'incantation.",
};

pack["154638"] = { "Grande impératrice Shek'zara",
	"* |cff71d5ff|Hspell:314304|h[Song of the Empress]|h|r: le chant de l'impératrice marque en zone : dispersez-vous.",
	"* |cff71d5ff|Hspell:314333|h[Force and Verve]|h|r: la force et l'entrain marquent des zones : esquivez-les.",
	"* |cff71d5ff|Hspell:314307|h[Summon Swarmguard]|h|r: le garde-essaim arrive : tuez-le en priorité.",
};

pack["160970"] = { "Vuk'laz le Brise-Terre",
	"* |cff71d5ff|Hspell:314618|h[Crushing Claws]|h|r: les griffes écrasantes sur le tank : alternez avec vos défensifs.",
	"* |cff71d5ff|Hspell:314698|h[Razor Spines]|h|r: les épines tranchantes jaillissent tout autour : attention au rayon pour la mêlée.",
	"* |cff71d5ff|Hspell:314527|h[Tremor Wave]|h|r: l'onde de séisme avance : sautez-la à son arrivée.",
	"* |cff71d5ff|Hspell:314659|h[Writhing Sands]|h|r: les sables agités amènent des bêtes : tuez-les MAINTENANT.",
};

pack["138122"] = { "Hurlesang",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: les pulsations fracassantes marquent en zones : dispersez-vous.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: le mode siège change son kit : prudence avec les zones qu'il ouvre.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: le mortier tombe sur le point marqué : hors du cercle.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: les échappements de flammes balaient par étapes : déplacez-vous d'étape en étape à temps.",
};

pack["137374"] = { "Rugissement du lion",
	"* |cff71d5ff|Hspell:271163|h[Shattering Pulse]|h|r: les pulsations fracassantes marquent en zones : dispersez-vous.",
	"* |cff71d5ff|Hspell:271223|h[Siege Mode]|h|r: le mode siège change son kit : prudence avec les zones qu'il ouvre.",
	"* |cff71d5ff|Hspell:271164|h[Mortar Shot]|h|r: le mortier tombe sur le point marqué : hors du cercle.",
	"* |cff71d5ff|Hspell:277598|h[Flame Exhausts]|h|r: les échappements de flammes balaient par étapes : déplacez-vous d'étape en étape à temps.",
};

P.fr = fr;
