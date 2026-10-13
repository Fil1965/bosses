--[[
	Bosses_Cata_zonas.lua
		Índice de zonas del pack Cata (opcional): instanceID → zona con
		nombre y ids de los jefes del pack, en orden de progresión de la
		banda. Alimenta el radar de instancia y el desplegable del
		minimapa; el core solo lista los jefes con entrada. Las claves son
		los instanceID (map id) que devuelve GetInstanceInfo; los "Zona
		NNNN" de las cabeceras de los ficheros de datos son ids de ÁREA y
		no sirven de clave (por eso Castillo de Colmillo Oscuro va por 33
		y las Minas de la muerte por 36).

		In memory of Romy 1996 - 25th May 2011
--]]

local _, P = ...;
local zonas = {};

-- Mazmorras de Cataclysm

zonas["33"] = { nombre = "Castillo de Colmillo Oscuro", jefes = { "3887", "4278", "46962", "46963", "46964" } };
zonas["36"] = { nombre = "Minas de la muerte", jefes = { "47162", "47296", "47626", "43778", "47739", "49429" } };
zonas["645"] = { nombre = "Cavernas Roca Negra", jefes = { "39665", "39698", "39679", "39700", "39705" } };
zonas["644"] = { nombre = "Cámaras de los Orígenes", jefes = { "39425", "39428", "39731", "39732", "39587", "39788", "39378" } };
zonas["643"] = { nombre = "Trono de las Mareas", jefes = { "40586", "40765", "40825", "40788", "40792", "44566", "213770" } };
zonas["657"] = { nombre = "La Cumbre del Vórtice", jefes = { "43878", "43873", "43875" } };
zonas["670"] = { nombre = "Grim Batol", jefes = { "39625", "40177", "40319", "40484" } };
zonas["725"] = { nombre = "El Núcleo Pétreo", jefes = { "43438", "43214", "42188", "42333" } };
zonas["755"] = { nombre = "Ciudad perdida de los Tol'vir", jefes = { "44577", "43612", "43614", "44819" } };
zonas["568"] = { nombre = "Zul'Aman", jefes = { "23574", "23576", "23578", "23577", "24239", "23863" } };
zonas["859"] = { nombre = "Zul'Gurub", jefes = { "52155", "52151", "52059", "52053", "52148" } };

-- Bandas

zonas["757"] = { nombre = "Bastión de Baradin", jefes = { "47120", "47901", "52363", "55869" } };
zonas["669"] = { nombre = "Descenso de Alanegra", jefes = { "41570", "42166", "42178", "42179", "42180", "41442", "43296", "41378", "41376" } };
zonas["671"] = { nombre = "El Bastión del Crepúsculo", jefes = { "44600", "45992", "45993", "43686", "43687", "43688", "43689", "43735", "43324", "45213" } };
zonas["754"] = { nombre = "Trono de los Cuatro Vientos", jefes = { "45870", "45871", "45872", "46753" } };
zonas["720"] = { nombre = "Tierras de Fuego", jefes = { "52498", "52558", "52530", "53691", "53494", "52571", "52409" } };

-- Añadidos 4.3 (la Throne remasterizada comparte el instanceID 643 de Trono de las Mareas)

zonas["938"] = { nombre = "El Fin de los Tiempos", jefes = { "54431", "54445", "54123", "54544", "54432" } };
zonas["940"] = { nombre = "La Hora del Crepúsculo", jefes = { "54590", "54968", "54938" } };
zonas["939"] = { nombre = "El Pozo de la Eternidad", jefes = { "55085", "54853", "54969" } };

P.zonas = zonas;