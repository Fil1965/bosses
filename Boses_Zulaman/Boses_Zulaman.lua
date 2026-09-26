--[[
	Boses_Zulaman.lua
		Pack de datos de demostración: Zul'Aman (TBC).
		Formato multilenguaje: { ES = {...}, EN = {...} }; el core elige
		la tabla activa según BosesConfig.IDIOMA.

		In memory of Romy 1996 - 25th May 2011
--]]

-- El core debe estar cargado (## Dependencies: Boses en el .toc)
if BosesAPI == nil or BosesAPI.register == nil then
	print( "|cff33ff99Boses|r: core de Boses demasiado antiguo para el pack ZulAman." );
	return;
end

local es = {
	["23574"] = { "Akil'zon <Avatar de águila> HERO",
		"* Todos separados a + de 6 yardas. La |cff71d5ff|Hspell:61911|h[Perturbación estática]|h|r aumenta el daño si hay jugadores cerca.",
		"* Full DPS al aguila blanca que levanta a un jugador.",
		"* Cuando se eleve un pj para hacer una |cff71d5ff|Hspell:45336|h[Sobrecarga eléctrica]|h|r todos debajo para evitar el daño."
	};
};

local en = {
	["23574"] = { "Akil'zon <Eagle Avatar> HERO",
		"* All apart from +6 yards. |cff71d5ff|Hspell:61911|h[Static Disruption]|h|r increases the damage if there are players around.",
		"* Full DPS to the white eagle that lifts a player.",
		"* When |cff71d5ff|Hspell:45336|h[Electrical Overload]|h|r lifts a player all under to avoid damage."
	};
};

-- Nota: las versiones FR/DE de la demo histórica se retiraron con la
-- migración al formato multilenguaje (ES/EN).
BosesAPI.register( "ZulAman", { ES = es, EN = en } );