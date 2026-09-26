--[[
	Boses.lua
		Fights explanations
		
		In memory of Romy 1996 - 25th May 2011
--]]

--[[
	Copyright (c) 2010-2011 Philippe Mingo
	All rights reserved.

	Redistribution and use in source and binary forms, with or without 
	modification, are permitted provided that the following conditions are met:

		* Redistributions of source code must retain the above copyright notice, 
		  this list of conditions and the following disclaimer.
		* Redistributions in binary form must reproduce the above copyright
		  notice, this list of conditions and/or the following disclaimer in the
		  documentation and/or other materials provided with the distribution.
		* Neither the name of the author nor the names of its contributors may 
		  be used to endorse or promote products derived from this software 
		  without specific prior written permission.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
	AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
	IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
	ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
	LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
	CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
	SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
	INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
	CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
	ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
	POSSIBILITY OF SUCH DAMAGE.

	Modernizado para Midnight (12.1.5):
		- Settings API en lugar de InterfaceOptions (eliminada en 11.0)
		- GetNumGroupMembers / IsInGroup en lugar de GetNumRaidMembers /
		  GetNumPartyMembers (eliminadas)
		- GUID moderno: Creature-0-XXXX-YYYY-ZZZZ-NPCID-... via strsplit
		- math.atan en lugar de math.atan2 (Lua 5.4)
		- C_AddOns.GetAddOnMetadata
		- Todo el interfaz construido en Lua (fuera el XML)
--]]

local _, L = ...;
local _, Boses = ...;

local ADDON_NAME = "Boses";

local settingsCategory = nil;
local canalChecks = nil;
local firmaCheck = nil;
local langChecks = nil;
local autoEncCheck = nil;
local encuentroActivo = nil; -- nombre del encuentro en curso (ENCOUNTER_START)
local encuentroActivoID = nil; -- id del encuentro en curso (arg1 de ENCOUNTER_START)
local contadorEncuentros = 0; -- ENCOUNTER_START recibidos desde la carga (diagnóstico)
local ultimoExplicado = nil; -- clave normalizada del último encuentro explicado (anti-duplicado)
local finCombate = 0; -- GetTime() del último fin de combate (para ignorar los gritos de muerte)

-- Salida a la ventana de chat con fallbacks: Midnight puede deshabilitar
-- print en ejecución contaminada por valores secretos. Se define antes de
-- dsp, que la usa.
local function escribir( text )

	if print ~= nil then
		print( text );
	elseif DEFAULT_CHAT_FRAME ~= nil and DEFAULT_CHAT_FRAME.AddMessage ~= nil then
		DEFAULT_CHAT_FRAME:AddMessage( text );
	end

end

local function dsp(...)

	local text = "|cff33ff99Boses|r:";
	local i;
	
	for i = 1, select("#", ...) do
		text = text .. " " .. tostring( select( i, ... ) )
	end
	escribir( text )
	
end

-- C_AddOns.* no existe en todos los flavors classic: fallback al global
-- vía rawget (patrón Nas)
local function getAddOnMetadata( name, field )

	if C_AddOns ~= nil and C_AddOns.GetAddOnMetadata ~= nil then
		return C_AddOns.GetAddOnMetadata( name, field );
	end

	local globalMeta = rawget( _G, "GetAddOnMetadata" );
	if globalMeta ~= nil then
		return globalMeta( name, field );
	end

	return nil;

end

local function getVersion()

	return getAddOnMetadata( ADDON_NAME, "Version" ) or "?";

end

-- Extrae el id del NPC de un GUID moderno:
-- Creature-0-XXXXX-YYYYY-ZZZZ-NPCID-SERIAL
--
-- Midnight: UnitGUID puede devolver "secret strings" (privacidad del
-- desarme de addons, p. ej. jugadores); convertir esas cadenas lanza
-- error y contamina la ejecución. Todo el parseo va en pcall para
-- degradar a nil sin romper nada.
local function npcIdFromGUID( guid )

	if guid == nil then
		return nil;
	end

	local ok, id = pcall( function()
		local id = select( 6, strsplit( "-", guid ) );
		id = tonumber( id );
		if id ~= nil and id > 0 then
			return tostring( id );
		end
		return nil;
	end );

	if not ok then
		return nil;
	end

	return id;

end

local function npcIdFromGUIDChecked( guid )

	if guid == nil then
		return nil;
	end

	-- Midnight: el cliente trae el global issecretvalue() para detectar
	-- valores secretos sin lanzar error (los GUIDs de las unidades pueden
	-- serlo, p. ej. en combate). Ver también npcIdFromGUID.
	if issecretvalue ~= nil and issecretvalue( guid ) then
		return nil;
	end

	return npcIdFromGUID( guid );

end

-- Id del NPC de una unidad, con guardas de tipo: jugadores y unidades
-- controladas por jugadores no tienen NPC id y sus GUIDs pueden ser
-- secretos, así que ni se tocan.
local function npcIdFromUnit( unit )

	if unit == nil or not UnitExists( unit ) then
		return nil;
	end

	if UnitIsPlayer( unit ) or UnitPlayerControlled( unit ) or UnitIsBattlePet( unit ) or UnitIsWildBattlePet( unit ) then
		return nil;
	end

	return npcIdFromGUIDChecked( UnitGUID( unit ) );

end

local function initBosesConfig()

	if BosesConfig == nil then
		-- Cargamos los valores por omisión
		BosesConfig = {
			version = getVersion(),
			CANAL = "AUTO",
			MinimapPos = 45
		};
	end

	if BosesConfig.CANAL == nil then
		BosesConfig.CANAL = "AUTO";
	end

	if BosesConfig.IDIOMA == nil then
		BosesConfig.IDIOMA = "AUTO"; -- AUTO = sigue el idioma del juego
	end

	-- Posición del botón del minimapa (la librería LibDBIcon escribe aquí)
	if BosesConfig.minimapPos == nil then
		if BosesConfig.MinimapPos ~= nil then
			BosesConfig.minimapPos = BosesConfig.MinimapPos; -- compat con configuraciones antiguas
		else
			BosesConfig.minimapPos = 45;
		end
	end

	if BosesConfig.AUTO_ENC == nil then
		BosesConfig.AUTO_ENC = true; -- Modo Automático: explica al empezar el encuentro
	end

	if BosesConfig.FIRMA == nil then
		BosesConfig.FIRMA = true; -- firma de cortesía en los canales compartidos
	end

	if BosesConfig.MinimapPos == nil then
		BosesConfig.MinimapPos = 45; -- posición por omisión en grados
	end

end

local function autoChannel()

	-- El chat de grupo de mazmorras aleatorias es INSTANCE_CHAT
	local icc = IsInGroup( LE_PARTY_CATEGORY_INSTANCE );

	if IsInRaid() then
		if icc then
			return "INSTANCE_CHAT";
		end
		return "RAID";
	elseif IsInGroup() then
		if icc then
			return "INSTANCE_CHAT";
		end
		return "PARTY";
	end
	
	return "SAY";
	
end

local forzarLocal = false; -- las rutas por click en combate no pueden enviar (ADDON_ACTION_BLOCKED)
local pendientes = {}; -- clave → timer del anti-spam de grupo
local reclamados = {}; -- clave → GetTime() de la última reclamación de otros jugadores

-- SendChatMessage sanea el marcado saliente: los hipervínculos de addon
-- se destrozan (quedan residuos tipo "*r" a medias) y los colores se
-- esfuman. Al canal compartido sale texto plano (el nombre entre
-- corchetes se conserva); en local (escribir) el marcado se imprime
-- completo y con links clicables.
local function sanearSalida( txt )
	txt = txt:gsub( "|H[^|]*|h", "" ); -- apertura de hipervínculo
	txt = txt:gsub( "|h", "" );        -- cierre de hipervínculo
	txt = txt:gsub( "|cff%x%x%x%x%x%x", "" ); -- apertura de color
	txt = txt:gsub( "|r", "" );        -- cierre de color
	return txt;
end

local function salida( txt )

	if forzarLocal then
		escribir( txt );
		return;
	end

	local canal = BosesConfig.CANAL;

	if canal == "AUTO" then
		SendChatMessage( sanearSalida( txt ), autoChannel() );
	elseif canal == "GUILD" then
		if IsInGuild() then
			SendChatMessage( sanearSalida( txt ), "GUILD" );
		else
			escribir( txt );
		end
	else
		escribir( txt );
	end

end

-- La salida va por un canal que ven los demás (grupo/banda/hermandad)?
local function salidaCompartida()

	if forzarLocal then
		return false;
	end

	local canal = BosesConfig.CANAL;

	if canal == "GUILD" then
		return IsInGuild();
	end

	return canal == "AUTO" and true or false;

end

-- El idioma de la firma sigue el de la EXPLICACIÓN (BosesConfig.IDIOMA),
-- no el del cliente: la salida al grupo debe ser consistente.
local function textoCortesia()

	local idioma = ( BosesConfig ~= nil and BosesConfig.IDIOMA ) or "AUTO";
	if idioma == "ES" then
		return L["CortesiaES"];
	elseif idioma == "EN" then
		return L["CortesiaEN"];
	end
	return L["Cortesia"]; -- AUTO: idioma del cliente

end

-- Envía la entrada completa al canal y, si la emisión es compartida,
-- añade la firma de cortesía al final.
local function enviarEntrada( entrada )

	-- Fuera de combate: líneas repartidas con retardos (una ráfaga en el
	-- mismo frame choca con el throttle silencioso de SendChatMessage y
	-- las líneas que sobran — la firma, la víctima clásica — se esfuman).
	-- En combate el chat lockdown de Midnight prohíbe los envíos desde
	-- C_Timer: ráfaga síncrona en el contexto del evento que sí puede.
	local enCombate = InCombatLockdown();
	local delay = 0;
	for _, c in ipairs( entrada ) do
		if enCombate or delay == 0 then
			salida( c ); -- la primera va siempre inmediata
		else
			local linea = c;
			C_Timer.After( delay, function()
				-- Si se entró en combate mientras el reparto corría, la
				-- línea ya no puede salir desde el timer: queda en local.
				if InCombatLockdown() then
					escribir( linea );
				else
					salida( linea );
				end
			end );
		end
		delay = delay + 0.25;
	end

	if BosesConfig.FIRMA and salidaCompartida() then
		if enCombate then
			salida( textoCortesia() );
		else
			C_Timer.After( delay + 0.25, function()
				if InCombatLockdown() then
					escribir( textoCortesia() );
				else
					salida( textoCortesia() );
				end
			end );
		end
	end

end

-- Anti-spam de grupo: si hay varios jugadores con el addon, el primero
-- que llega explica y emite una reclamación por el canal de addons;
-- los demás la oyen y cancelan la suya. El retardo aleatorio (0-2s)
-- reparte quién gana. Solo aplica a los lanzamientos automáticos; los
-- clicks manuales son decisión del jugador y van sin retardo.
local function canalDeGrupo()
	if IsInRaid() then
		return IsInGroup( LE_PARTY_CATEGORY_INSTANCE ) and "INSTANCE_CHAT" or "RAID";
	elseif IsInGroup() then
		return IsInGroup( LE_PARTY_CATEGORY_INSTANCE ) and "INSTANCE_CHAT" or "PARTY";
	end
	return nil;
end

local function programarEnvio( clave, explicar )

	local grupo = canalDeGrupo();
	if grupo == nil then
		explicar();
		return;
	end

	if reclamados[ clave ] ~= nil and ( GetTime() - reclamados[ clave ] ) < 5 then
		return; -- otro jugador lo acaba de explicar
	end

	local timer = pendientes[ clave ];
	if timer ~= nil then
		timer:Cancel();
	end

	if InCombatLockdown() then
		-- Chat lockdown de Midnight: SendChatMessage desde C_Timer durante
		-- el combate se bloquea (ADDON_ACTION_BLOCKED). Explicar YA, en el
		-- contexto del manejador del evento, que sí puede enviar. Coste:
		-- sin retardo aleatorio no hay reparto anti-spam entre jugadores.
		pendientes[ clave ] = nil;
		pcall( SendAddonMessage, "BOSES", "enc|" .. tostring( clave ), grupo );
		explicar();
		return;
	end

	pendientes[ clave ] = C_Timer.After( math.random() * 2, function()
		pendientes[ clave ] = nil;
		-- La reclamación es para los DEMÁS (el emisor no se oye su propio
		-- CHAT_MSG_ADDON). NO la anotamos en reclamados: si este envío se
		-- aborta (grito de derrota) bloquearía nuestra propia reprogramación.
		pcall( SendAddonMessage, "BOSES", "enc|" .. tostring( clave ), grupo );
		explicar();
	end );

end

-- Packs de datos --------------------------------------------------------
-- Un pack es un addon con datos (carpeta Boses_<Zona>/ con .toc propio
-- dentro del mismo zip, o addon externo de la comunidad). Los packs NO
-- comparten el namespace del core: registran sus entradas con
-- BosesAPI.register( nombre, tabla ). Formato de datos idéntico al de
-- localization.*.lua:  Boses["<NPC_ID>"] = { "Nombre", "* línea", ... }.
--
-- Formato multilenguaje (recomendado):  { ES = {...}, EN = {...} }  con
-- ambas subtablas completas; el core elige la activa según
-- BosesConfig.IDIOMA (AUTO/ES/EN) en el ADDON_LOADED y en cada cambio
-- de idioma desde la configuración. Formato plano (legacy): una única
-- tabla, tal cual, sin cambiar de idioma.

BosesAPI = BosesAPI or {};

local packSources = {};

-- Índice nombre-normalizado → entrada, para el fallback cuando el GUID
-- de la unidad es un valor secreto de Midnight. Se construye perezosamente
-- y se invalida al reactivar los packs.
local indiceNombres = nil;

-- (Re)activa los packs: elige la tabla activa de cada pack multilenguaje
-- según BosesConfig.IDIOMA. Requiere BosesConfig cargado; con nil usa AUTO.
local function activarPacks()

	local idioma = ( BosesConfig ~= nil and BosesConfig.IDIOMA ) or "AUTO";

	for _, src in ipairs( packSources ) do
		if src.ES ~= nil or src.EN ~= nil then
			-- Multilenguaje
			if idioma == "ES" then
				src.data = src.ES;
			elseif idioma == "EN" then
				src.data = src.EN;
			else
				local es = ( GetLocale() == "esES" or GetLocale() == "esMX" );
				src.data = ( es and src.ES ) or src.EN;
			end
		else
			-- Formato plano (legacy)
			src.data = src.plain;
		end
	end

	indiceNombres = nil;

end

function BosesAPI.register( name, data )

	if type( name ) ~= "string" or type( data ) ~= "table" then
		return false;
	end

	-- Detecta el formato: multilenguaje si trae subtablas ES/EN
	local src = { name = name };

	if type( data.ES ) == "table" or type( data.EN ) == "table" then
		src.ES = ( type( data.ES ) == "table" ) and data.ES or nil;
		src.EN = ( type( data.EN ) == "table" ) and data.EN or nil;
	else
		src.plain = data;
	end

	-- Si un pack con el mismo nombre ya estaba registrado se reemplaza
	local replaced = false;
	for i, old in ipairs( packSources ) do
		if old.name == name then
			packSources[i] = src;
			replaced = true;
			break;
		end
	end
	if not replaced then
		table.insert( packSources, src );
	end

	activarPacks();
	return true;

end

function BosesAPI.list()

	local names = {};
	for _, src in ipairs( packSources ) do
		if src.data ~= nil then
			table.insert( names, src.name );
		end
	end
	return names;

end

-- Prioridad de fuentes: notas del usuario > packs (el último registrado
-- gana, el orden de carga es alfabético por carpeta) > base del addon
local function buscarEntrada( nbos )

	local entrada = BosesConfig[nbos];
	if entrada ~= nil then
		return entrada;
	end

	for i = #packSources, 1, -1 do
		local data = packSources[i].data;
		if data ~= nil then
			entrada = data[nbos];
			if entrada ~= nil then
				return entrada;
			end
		end
	end

	entrada = Boses[nbos];
	if entrada ~= nil and entrada ~= nbos then
		return entrada;
	end

	return nil;

end

-- Función principal para la explicación de un bos
local function explica( nbos )

	if nbos == nil or nbos == "" then
		return;
	end

	local entrada = buscarEntrada( nbos );

	if entrada ~= nil then
		enviarEntrada( entrada );
	else
		dsp( nbos .. L[": This NPC is not described."] );
	end

end

-- Normaliza un nombre de jefe para el índice por nombre: quita los
-- apellidos entre <...> y el sufijo HERO de la base histórica, colapsa
-- espacios y pasa a minúsculas. La comparación es mejor esfuerzo: si el
-- cliente nombra la criatura distinto a como está en la base, no matchea.
local function normalizarNombre( nombre )

	if type( nombre ) ~= "string" then
		return nil;
	end

	local s = nombre:gsub( "<[^>]*>", "" );  -- quita los apellidos <...>
	s = s:gsub( "%b()", " " );               -- quita los paréntesis aclaratorios: (End Time), (Lair), (10)...
	s = s:gsub( "%s+HERO%s*$", "" );         -- quita el sufijo HERO del histórico
	s = s:gsub( "%s+", " " );                -- colapsa espacios
	s = s:match( "^%s*(.-)%s*$" );           -- trim

	return s:lower();

end

-- Construye (una vez) el índice nombre → entrada con el contenido activo:
-- primero el core, luego los packs en orden de registro (así el último
-- pack gana, igual que la cadena de búsqueda por id).
--
-- Importante: el índice cubre TODAS las subtablas de idioma de cada pack,
-- no solo la activa — el combustible del fallback es el nombre que da el
-- CLIENTE (p. ej. "Karsh Doblacero" en esES aunque el IDIOMA sea EN), así
-- que en cada pack la subtabla del idioma del cliente se añade al final
-- para ganar las colisiones.
local function construirIndice()

	indiceNombres = {};

	local function add( tabla )
		for id, entrada in pairs( tabla ) do
			if type( entrada ) == "table" and type( entrada[ 1 ] ) == "string" then
				local clave = normalizarNombre( entrada[ 1 ] );
				if clave ~= nil and clave ~= "" and indiceNombres[ clave ] == nil then
					indiceNombres[ clave ] = { entrada = entrada, id = tostring( id ) };
				end
			end
		end
	end

	add( Boses );

	local localeEs = ( GetLocale() == "esES" or GetLocale() == "esMX" );

	for _, src in ipairs( packSources ) do
		if src.data ~= nil then
			add( src.data );
		end
		if src.ES ~= nil and src.EN ~= nil then
			if localeEs then
				add( src.EN );  -- el otro idioma primero
				add( src.ES );  -- el del cliente gana en colisiones
			else
				add( src.ES );
				add( src.EN );
			end
		end
	end

end

-- Fallback cuando el GUID es un secreto de Midnight: busca la entrada
-- por el nombre del NPC. Si no está en la base, avisa igual que por id.
local explicarPorEJ; -- declaración adelantada (se define más abajo)
local explicarPorEncuentroActivo; -- declaración adelantada (se define más abajo)

local function explicaPorNombre( nombre )

	if indiceNombres == nil then
		construirIndice();
	end

	local registro = indiceNombres[ normalizarNombre( nombre ) ];

	if registro ~= nil then
		-- Re-resuelve por el npc id del registro: así el texto sale en el
		-- idioma configurado (IDIOMA) aunque el match del nombre venga de
		-- otra subtabla de idioma.
		local entrada = buscarEntrada( registro.id );
		if entrada == nil then
			entrada = registro.entrada;
		end
		enviarEntrada( entrada );
		return;
	end

	-- Última vía: el diario de la instancia actual mapea el nombre
	-- localizado de cada criatura a su NPC id. Así identificamos jefes
	-- cuyos nombres esES no coinciden con los de nuestros datos
	-- (p. ej. "Comandante Kroluk" ↔ "Commander Kroluk").
	if explicarPorEJ( nombre ) then
		return;
	end

	-- Y con el id del encuentro activo (ENCOUNTER_START), si lo hay
	if explicarPorEncuentroActivo( nombre ) then
		return;
	end

	dsp( nombre .. L[": This NPC is not described."] );

end

-- Modo Automático con anti-duplicado: el mismo encuentro puede llegar
-- por varias vías (gritos del boss + ENCOUNTER_START) y solo la primera
-- explicación se lanza.
local function autoExplicar( nombreEncuentro )

	if nombreEncuentro == nil then
		return;
	end

	local clave = normalizarNombre( nombreEncuentro );
	if clave == nil or clave == ultimoExplicado then
		return;
	end

	ultimoExplicado = clave;
	explicaPorNombre( nombreEncuentro );

end

-- Resuelve nombre (del cliente) → NPC id → entrada usando el diario de
-- la instancia en la que estemos. Solo funciona dentro de instancias con
-- datos de diario; devuelve true si escribió la explicación.
explicarPorEJ = function( nombreCliente )

	local instanceID = ( EJ_GetCurrentInstance ~= nil ) and EJ_GetCurrentInstance() or nil;
	if instanceID == nil then
		return false;
	end

	local i = 1;
	while i <= 40 do
		local nombreEncuentro, _, idEncuentro = EJ_GetEncounterInfoByIndex( i, instanceID );
		if nombreEncuentro == nil then
			break;
		end
		local j = 1;
		while true do
			local nombreCriatura, _, idCriatura = EJ_GetCreatureInfo( j, idEncuentro );
			if nombreCriatura == nil then
				break;
			end
			if nombreCriatura == nombreCliente then
				local id = idCriatura and tostring( idCriatura );
				if id ~= nil and id ~= "" then
					local entrada = buscarEntrada( id );
					if entrada ~= nil then
						enviarEntrada( entrada );
						return true;
					end
				end
			end
			j = j + 1;
		end
		i = i + 1;
	end

	return false;

end

-- Vía mid-fight: las criaturas del encuentro ACTIVO (el id llega en
-- ENCOUNTER_START y el diario las da localizadas). Con el nombre del
-- objetivo matchea por nombre; con encuentros de una sola criatura la
-- asume directamente.
explicarPorEncuentroActivo = function( nombreUtilizable )

	if encuentroActivoID == nil then
		return false;
	end

	local j = 1;
	local criaturas = {};
	while true do
		local nombreCriatura, _, idCriatura = EJ_GetCreatureInfo( j, encuentroActivoID );
		if nombreCriatura == nil then
			break;
		end
		table.insert( criaturas, { nombre = nombreCriatura, id = tostring( idCriatura ) } );
		j = j + 1;
	end

	if nombreUtilizable ~= nil then
		for _, criatura in ipairs( criaturas ) do
			if criatura.nombre == nombreUtilizable then
				local entrada = buscarEntrada( criatura.id );
				if entrada ~= nil then
					enviarEntrada( entrada );
					return true;
				end
			end
		end
	end

	if #criaturas == 1 then
		local entrada = buscarEntrada( criaturas[1].id );
		if entrada ~= nil then
			enviarEntrada( entrada );
			return true;
		end
	end

	return false;

end

-- Resumen de los jefes de la instancia actual vía diario (EJ): para el
-- pre-pull dentro de instancia, cuando ni el GUID ni el nombre del
-- objetivo son utilizables. Sale siempre por local (es una referencia,
-- no un anuncio al grupo).
local function explicarInstancia()

	if indiceNombres == nil then
		construirIndice();
	end

	local instanceID = ( EJ_GetCurrentInstance ~= nil ) and EJ_GetCurrentInstance() or nil;
	if instanceID == nil then
		dsp( "Diario: sin instancia EJ dentro de la instancia actual" );
		return false;
	end

	local explicados = 0;
	local nombresDiario = {};
	local i = 1;
	while i <= 40 do
		local nombre = EJ_GetEncounterInfoByIndex( i, instanceID );
		if nombre == nil then
			break;
		end
		table.insert( nombresDiario, nombre );
		local registro = indiceNombres[ normalizarNombre( nombre ) ];
		if registro ~= nil then
			local entrada = buscarEntrada( registro.id );
			if entrada == nil then
				entrada = registro.entrada;
			end
			for _, c in pairs( entrada ) do
				escribir( c );
			end
			explicados = explicados + 1;
		end
		i = i + 1;
	end

	if explicados > 0 then
		return true;
	end

	-- Diagnóstico: los nombres que da el diario de esta instancia —
	-- así vemos qué nombres esES hay y por qué no matchean la base.
	if #nombresDiario > 0 then
		dsp( "Diario (EJ " .. instanceID .. "): " .. table.concat( nombresDiario, ", " ) .. " — ninguno en la base" );
	else
		dsp( "Diario (EJ " .. instanceID .. "): sin encuentros listados" );
	end

	return false;

end

-- Explica la unidad marcada: primero por NPC id (GUID); si el GUID es un
-- valor secreto de Midnight, fallback por el nombre del NPC. La ruta por
-- click en combate no puede enviar al grupo (ADDON_ACTION_BLOCKED) y sale
-- por local.
local function explicaTarget( unit )

	forzarLocal = InCombatLockdown();

	if unit == nil or not UnitExists( unit ) then
		return;
	end

	if UnitIsPlayer( unit ) or UnitPlayerControlled( unit ) or UnitIsBattlePet( unit ) or UnitIsWildBattlePet( unit ) then
		return;
	end

	local tar = npcIdFromGUIDChecked( UnitGUID( unit ) );
	if tar ~= nil then
		explica( tar );
		return;
	end

	local nombre = GetUnitName( unit );

	-- Nombre utilizable: no secreto, conocido y no vacío
	if nombre ~= nil and ( issecretvalue == nil or not issecretvalue( nombre ) ) and nombre ~= UNKNOWNOBJECT and nombre ~= "" then
		explicaPorNombre( nombre );
		return;
	end

	-- Sin nombre utilizable (secreto de Midnight, p. ej. "Entidad
	-- desconocida" en combate): primero el nombre del encuentro activo
	-- (ENCOUNTER_START); luego sus criaturas vía diario; y por último el
	-- resumen de jefes de la mazmorra actual vía diario (EJ).
	if encuentroActivo ~= nil then
		explicaPorNombre( encuentroActivo );
		return;
	end

	if explicarPorEncuentroActivo( nil ) then
		return;
	end

	if IsInInstance() and explicarInstancia() then
		return;
	end

	local extra = "";
	if IsInInstance() then
		extra = " (dentro de instancia, sin datos de encuentro activo)";
	end
	dsp( "El objetivo está oculto por Midnight (GUID y nombre secretos)" .. extra .. ". Encuentros detectados desde la carga: " .. contadorEncuentros .. "; prueba al empezar la pelea o fuera de combate" );

end

-- Panel de configuración (Settings API, sustituye a InterfaceOptions) --

local function syncCanalChecks()

	if canalChecks == nil then
		return;
	end

	local canal = BosesConfig.CANAL or "AUTO";

	canalChecks.AUTO:SetChecked( canal == "AUTO" );
	canalChecks.GUILD:SetChecked( canal == "GUILD" );
	canalChecks.LOCAL:SetChecked( canal == "LOCAL" );

end

local function setCanal( value )

	BosesConfig.CANAL = value;
	syncCanalChecks();

end

local function syncLanguageChecks()

	if langChecks == nil then
		return;
	end

	local idioma = BosesConfig.IDIOMA or "AUTO";

	langChecks.AUTO:SetChecked( idioma == "AUTO" );
	langChecks.ES:SetChecked( idioma == "ES" );
	langChecks.EN:SetChecked( idioma == "EN" );

end

local function setLanguage( value )

	BosesConfig.IDIOMA = value;
	syncLanguageChecks();
	activarPacks();

end

local function syncAutoEncCheck()

	if autoEncCheck == nil then
		return;
	end

	autoEncCheck:SetChecked( BosesConfig.AUTO_ENC and true or false );

end

local function syncFirmaCheck()

	if firmaCheck == nil then
		return;
	end

	firmaCheck:SetChecked( BosesConfig.FIRMA and true or false );

end

local function setAutoEnc( value )

	BosesConfig.AUTO_ENC = value;
	syncAutoEncCheck();

end

local function createSettingsPanel()

	local frame = CreateFrame( "Frame", "BosesSettingsPanel" );
	frame:SetSize( 380, 360 );

	local titulo = frame:CreateFontString( nil, "OVERLAY", "GameFontHighlightLarge" );
	titulo:SetPoint( "TOPLEFT", 10, -12 );
	titulo:SetText( "Boses" );

	local subtitulo = frame:CreateFontString( nil, "OVERLAY", "GameFontHighlight" );
	subtitulo:SetPoint( "TOPLEFT", titulo, "BOTTOMLEFT", 0, -4 );
	subtitulo:SetText( L["Select output channel"] );

	canalChecks = {};

	local defs = { { "AUTO", "CanalGrupo" }, { "GUILD", "Guild" }, { "LOCAL", "OutputNormal" } };
	local y = -46;

	for _, d in ipairs( defs ) do
		local key, label = d[1], d[2];
		local cb = CreateFrame( "CheckButton", nil, frame, "UICheckButtonTemplate" );
		cb:SetPoint( "TOPLEFT", 0, y );
		cb.Text:SetText( L[label] );
		cb.Text:SetTextColor( 1, 1, 1, 1 );
		cb:SetScript( "OnClick", function() setCanal( key ); end );
		canalChecks[key] = cb;
		y = y - 30;
	end

	-- Firma de cortesía en los canales compartidos (independiente del canal)
	firmaCheck = CreateFrame( "CheckButton", nil, frame, "UICheckButtonTemplate" );
	firmaCheck:SetPoint( "TOPLEFT", 0, y );
	firmaCheck.Text:SetText( L["FirmaCortesia"] );
	firmaCheck.Text:SetTextColor( 1, 1, 1, 1 );
	firmaCheck:SetScript( "OnClick", function( self ) BosesConfig.FIRMA = self:GetChecked() and true or false; end );
	y = y - 30;

	-- Idioma de las explicaciones
	local subtitulo2 = frame:CreateFontString( nil, "OVERLAY", "GameFontHighlight" );
	subtitulo2:SetPoint( "TOPLEFT", 10, y - 4 );
	subtitulo2:SetText( L["Language"] );

	langChecks = {};

	local idiomas = { { "AUTO", "Auto" }, { "ES", "Spanish" }, { "EN", "English" } };
	y = y - 28;

	for _, d in ipairs( idiomas ) do
		local key, label = d[1], d[2];
		local cb = CreateFrame( "CheckButton", nil, frame, "UICheckButtonTemplate" );
		cb:SetPoint( "TOPLEFT", 0, y );
		cb.Text:SetText( L[label] );
		cb.Text:SetTextColor( 1, 1, 1, 1 );
		cb:SetScript( "OnClick", function() setLanguage( key ); end );
		langChecks[key] = cb;
		y = y - 30;
	end

	-- Explicación automática de encuentros
	local subtitulo3 = frame:CreateFontString( nil, "OVERLAY", "GameFontHighlight" );
	subtitulo3:SetPoint( "TOPLEFT", 10, y - 4 );
	subtitulo3:SetText( L["Encuentros"] );

	autoEncCheck = CreateFrame( "CheckButton", nil, frame, "UICheckButtonTemplate" );
	autoEncCheck:SetPoint( "TOPLEFT", 0, y - 28 );
	autoEncCheck.Text:SetText( L["AutoEnc"] );
	autoEncCheck.Text:SetTextColor( 1, 1, 1, 1 );
	autoEncCheck:SetScript( "OnClick", function( self ) setAutoEnc( self:GetChecked() and true or false ); end );
	y = y - 58;

	local category = Settings.RegisterCanvasLayoutCategory( frame, "Boses" );
	Settings.RegisterAddOnCategory( category );
	settingsCategory = category;

	syncCanalChecks();
	syncFirmaCheck();
	syncLanguageChecks();
	syncAutoEncCheck();

end

local function openSettings()

	-- OpenToCategory está protegida en combate (ADDON_ACTION_BLOCKED)
	if InCombatLockdown() then
		escribir( "|cff33ff99Boses|r: el panel de configuración no puede abrirse en combate; inténtalo al terminar" );
		return;
	end

	if settingsCategory == nil then
		createSettingsPanel();
	end

	Settings.OpenToCategory( settingsCategory:GetID() );

end

-- Botón de minimapa ------------------------------------------------------
-- Vía LibDBIcon-1.0 (la misma librería que usa RareScanner, embebida en
-- libs/). Todo el arrastre, posicionamiento y formas del minimapa los
-- gestiona la librería; aquí solo definimos el objeto LDB con el click
-- y el tooltip. La posición se guarda en BosesConfig.minimapPos.
local ldbObject = {
	type = "data source",
	text = "Boses",
	icon = "Interface\\Icons\\INV_Misc_OgrePinata",
	OnClick = function( self, button )
		if button == "LeftButton" then
			explicaTarget( "target" );
		else
			openSettings();
		end
	end,
	OnTooltipShow = function( tooltip )
		tooltip:SetText( "Boses " .. getVersion() .. "|n" .. L["|cff33ff99Left click|r - Explains target NPC"] );
	end,
};

local function createMinimapIcon()

	LibStub( "LibDBIcon-1.0" ):Register( "Boses", ldbObject, BosesConfig );

end

-- Comandos --------------------------------------------------------------

local function bosesGestor( msg, editbox )

	forzarLocal = InCombatLockdown();

	local cmd, txt = msg:match( "^(%S*)%s*(.-)$" );
	cmd = string.upper( cmd );
	txt = txt or "";

	local tar = npcIdFromUnit( "target" ) or "";
	
	if cmd == "" then
		-- Si no pone nada intentamos explicar el bos marcado
		explicaTarget( "target" );

	elseif cmd == "CANAL" then
		-- Queremos establecer el canal AUTO, GUILD, LOCAL
		txt = string.upper( txt );
		if txt == "AUTO" or txt == "GUILD" or txt == "LOCAL" then
			setCanal( txt );
		end 
		
	elseif cmd == "IDIOMA" then
		-- Idioma de las explicaciones: AUTO, ES, EN
		txt = string.upper( txt );
		if txt == "AUTO" or txt == "ES" or txt == "EN" then
			setLanguage( txt );
			dsp( L["Language"], txt );
		end
		
	elseif cmd == "!" then
		-- Queremos borrar una explicacion local
		if tar == "" then
			dsp( "El id del NPC marcado no está disponible ahora (GUID secreto en combate); reinténtalo fuera de combate" );
		else
			BosesConfig[tar] = nil;
		end

	elseif cmd == "+" and txt ~= "" then
		-- Queremos meter un bos nuevo en la base de datos
		if tar == "" then
			dsp( "El id del NPC marcado no está disponible ahora (GUID secreto en combate); reinténtalo fuera de combate" );
		else
			if BosesConfig[tar] == nil then
				BosesConfig[tar] = {GetUnitName("target")};
			end
			local i = #BosesConfig[tar]+1;
			dsp( tar, i );
			BosesConfig[tar][i] = txt;
		end
                
	elseif cmd == "?" or cmd == "HELP" then
		dsp( L["Version"] .. getVersion() );
		dsp( L["HELP1"] );
		dsp( L["HELP2"] );
		dsp( L["HELP3"] );
		dsp( L["HELP4"] );
		dsp( L["HELP5"] );
		dsp( L["HELP6"] );
		dsp( L["HELP7"] );
		dsp( L["HELP8"] );
		local packs = BosesAPI.list();
		if #packs > 0 then
			dsp( L["Data packs"] .. ": " .. table.concat( packs, ", " ) );
		end        
        
	elseif txt == "" then 
		-- Explicamos el bos del parametro
		explica( cmd );
		
	end
	
end

SLASH_BOSES1 = '/boses';
SlashCmdList["BOSES"] = bosesGestor; 

-- Carga ------------------------------------------------------------------

local eventFrame = CreateFrame( "Frame" );
eventFrame:RegisterEvent( "ADDON_LOADED" );
eventFrame:RegisterEvent( "ENCOUNTER_START" );
eventFrame:RegisterEvent( "ENCOUNTER_END" );
eventFrame:RegisterEvent( "CHAT_MSG_MONSTER_SAY" );
eventFrame:RegisterEvent( "CHAT_MSG_MONSTER_YELL" );
eventFrame:RegisterEvent( "PLAYER_REGEN_ENABLED" );
eventFrame:SetScript( "OnEvent", function( self, event, arg1, arg2 )

	if event == "ADDON_LOADED" and arg1 == ADDON_NAME then
	
		-- Aqui realizamos la carga inicial 
		initBosesConfig();
		activarPacks();
		forzarLocal = false;
		if C_ChatInfo ~= nil and C_ChatInfo.RegisterAddonMessagePrefix ~= nil then
			C_ChatInfo.RegisterAddonMessagePrefix( "BOSES" );
		end
		
		dsp( BosesConfig.CANAL );
		dsp( BosesConfig.IDIOMA );
		dsp( L["Version"] .. getVersion() .. L["loaded"] );
		
		createMinimapIcon();
	
	elseif event == "ENCOUNTER_START" then
		encuentroActivo = arg2; -- nombre localizado del encuentro (fallback de los GUIDs secretos)
		encuentroActivoID = arg1; -- id del encuentro (para las criaturas vía diario)
		contadorEncuentros = contadorEncuentros + 1;
		forzarLocal = false;
		if BosesConfig.AUTO_ENC then
			-- Modo Automático con anti-spam entre jugadores
			local clave = nil;
			if arg2 ~= nil and ( issecretvalue == nil or not issecretvalue( arg2 ) ) then
				clave = normalizarNombre( arg2 );
			end
			if clave == nil or clave == "" then
				clave = "enc" .. tostring( arg1 );
			end
			programarEnvio( clave, function()
				if arg2 ~= nil and ( issecretvalue == nil or not issecretvalue( arg2 ) ) then
					autoExplicar( arg2 );
				else
					explicarPorEncuentroActivo( nil );
				end
			end );
		end
	elseif event == "ENCOUNTER_END" then
		encuentroActivo = nil;
		encuentroActivoID = nil;
		ultimoExplicado = nil;
		finCombate = GetTime();
	elseif event == "CHAT_MSG_MONSTER_SAY" or event == "CHAT_MSG_MONSTER_YELL" then
		-- Festivos y jefes que no disparan ENCOUNTER_START: el que habla
		-- es la criatura; si la tenemos en la base, la usamos como
		-- encuentro (técnica clásica de los addons de jefes).
		-- Tras un fin de combate se ignoran los gritos (p. ej. la frase
		-- de derrota del jefe: explicar a un jefe muerto es ruido).
		local sender = arg2;
		if sender ~= nil and ( issecretvalue == nil or not issecretvalue( sender ) ) and encuentroActivoID == nil and ( GetTime() - finCombate ) > 3 then
			forzarLocal = false;
			if indiceNombres == nil then
				construirIndice();
			end
			local clave = normalizarNombre( sender );
			local registro = indiceNombres[ clave ];
			if registro ~= nil then
				encuentroActivo = sender;
				local enCombateAlProgramar = UnitAffectingCombat( "player" );
				if BosesConfig.AUTO_ENC then
					programarEnvio( clave, function()
						-- Grito de derrota = estábamos en combate al programar
						-- (carrera con el fin de combate) y ya no al disparar.
						-- El habla de ENTRADA llega antes de que empiece el
						-- combate: el jugador aún no está en combate y se
						-- explica igual (comportamiento previo al refactor).
						if ( not enCombateAlProgramar ) or UnitAffectingCombat( "player" ) then
							autoExplicar( sender );
						end
					end );
				end
			end
		end
	elseif event == "CHAT_MSG_ADDON" then
		if arg1 == "BOSES" then
			-- Reclamación de otro jugador: cancelamos nuestro envío pendiente
			local accion, clave = strsplit( "|", arg2 or "" );
			if accion == "enc" and clave ~= nil then
				reclamados[ clave ] = GetTime();
				local t = pendientes[ clave ];
				if t ~= nil then
					pendientes[ clave ] = nil;
					t:Cancel();
				end
			end
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		-- Limpia los encuentros de festivos (no reciben ENCOUNTER_END)
		if encuentroActivoID == nil then
			encuentroActivo = nil;
		end
		ultimoExplicado = nil;
		finCombate = GetTime();
	
	end
	
end );