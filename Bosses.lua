--[[
	Bosses.lua
		Fights explanations
		
		In memory of Romy 1996 - 25th May 2011
--]]

--[[
	Copyright (c) 2010-2026 Philippe Mingo
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
local _, Bosses = ...;

local ADDON_NAME = "Bosses";

-- Compatibilidad entre flavors: en Lua 5.1 (Era/TBC/MoP clásicos) el global
-- es unpack(); en 5.4 (Midnight) vive en table.unpack. Alias único para no
-- depender de cuál exista (ver comentario en registro de packs).
local unpackArgs = table.unpack or unpack;

local settingsCategory = nil;
local canalChecks = nil;
local firmaCheck = nil;
local langChecks = nil;
local autoEncCheck = nil;
local debugCheck = nil;
local encuentroActivo = nil;   -- nombre del encuentro en curso (ENCOUNTER_START)
local encuentroActivoID = nil; -- id del encuentro en curso (arg1 de ENCOUNTER_START)
local contadorEncuentros = 0;  -- ENCOUNTER_START recibidos desde la carga (diagnóstico)
-- esSecreto: true si v es un valor secreto de Midnight (o el cliente no
-- tiene issecretvalue → nunca es secreto). Declaración adelantada: se usa en
-- aTexto/npcIdFromGUIDChecked, definidos ANTES que el cuerpo de más abajo.
local esSecreto;

local explicadosRecientes = {}; -- claves ya explicadas en el encuentro en curso (anti-duplicado multi-vía)
local hablantesAnotados = {};   -- anti-spam del registro de depuración de hablantes (clave → GetTime())
local MAX_HABLANTES = 500;      -- tope de claves en hablantesAnotados (fuga lenta si no)
local MAX_DEBUG = 1000;         -- tope de líneas del registro de depuración
local finCombate = 0;          -- GetTime() del último fin de combate (para ignorar los gritos de muerte)
local timersCable = {};        -- handles de C_Timer.After del goteo de enviarAlCable (cancelables)

-- Salida a la ventana de chat con fallbacks: Midnight puede deshabilitar
-- print en ejecución contaminada por valores secretos. Se define antes de
-- dsp, que la usa.
local function escribir(text)
	if print ~= nil then
		print(text);
	elseif DEFAULT_CHAT_FRAME ~= nil and DEFAULT_CHAT_FRAME.AddMessage ~= nil then
		DEFAULT_CHAT_FRAME:AddMessage(text);
	end
end

local function dsp(...)
	local text = "|cff33ff99Bosses|r:";
	local i;

	for i = 1, select("#", ...) do
		text = text .. " " .. tostring(select(i, ...))
	end
	escribir(text)
end

-- Modo depuración (BossesConfig.DEBUG): deja huella en la SavedVariable
-- global BossesDebug.log, que el cliente escribe en
-- WTF\Account\<cuenta>\SavedVariables\Bosses.lua al salir o recargar
-- (limitación del cliente: las SavedVariables no se pueden escribir bajo
-- demanda). Inspección inmediata en sesión: /bosses log
-- OJO: esSecreto se declara MÁS ABAJO (adelante), pero Lua lo resuelve en
-- tiempo de ejecución (upvalue), así que aquí ya vale.
local function aTexto(v)
	if v == nil then
		return "";
	end

	if esSecreto(v) then
		return "<secreto>";
	end

	local ok, txt = pcall(tostring, v);
	if ok then
		return txt;
	end

	return "<secreto>";
end

local function debugLog(tag, ...)
	if BossesConfig == nil or not BossesConfig.DEBUG then
		return;
	end

	if BossesDebug == nil then
		BossesDebug = {};
	end
	if BossesDebug.log == nil then
		BossesDebug.log = {};
	end

	local lineas = { date("%H:%M:%S"), aTexto(tag) };
	for i = 1, select("#", ...) do
		lineas[#lineas + 1] = aTexto(select(i, ...));
	end
	table.insert(BossesDebug.log, table.concat(lineas, " | "));
	while #BossesDebug.log > MAX_DEBUG do
		table.remove(BossesDebug.log, 1);
	end
end

-- Vacía el registro de depuración (botón del panel y /bosses DEBUG vaciar)
local function vaciarLog()
	if BossesDebug == nil then
		BossesDebug = {};
	end

	BossesDebug.log = {};
end

-- C_AddOns.* no existe en todos los flavors classic: fallback al global
-- vía rawget (patrón Nas)
local function getAddOnMetadata(name, field)
	if C_AddOns ~= nil and C_AddOns.GetAddOnMetadata ~= nil then
		return C_AddOns.GetAddOnMetadata(name, field);
	end

	local globalMeta = rawget(_G, "GetAddOnMetadata");
	if globalMeta ~= nil then
		return globalMeta(name, field);
	end

	return nil;
end

local function getVersion()
	return getAddOnMetadata(ADDON_NAME, "Version") or "?";
end

-- Extrae el id del NPC de un GUID moderno:
-- Creature-0-XXXXX-YYYYY-ZZZZ-NPCID-SERIAL
--
-- Midnight: UnitGUID puede devolver "secret strings" (privacidad del
-- desarme de addons, p. ej. jugadores); convertir esas cadenas lanza
-- error y contamina la ejecución. Todo el parseo va en pcall para
-- degradar a nil sin romper nada.
local function npcIdFromGUID(guid)
	if guid == nil then
		return nil;
	end

	local ok, id = pcall(function()
		local id = select(6, strsplit("-", guid));
		id = tonumber(id);
		if id ~= nil and id > 0 then
			return tostring(id);
		end
		return nil;
	end);

	if not ok then
		return nil;
	end

	return id;
end

local function npcIdFromGUIDChecked(guid)
	if guid == nil then
		return nil;
	end

	-- Midnight: el cliente trae el global issecretvalue() para detectar
	-- valores secretos sin lanzar error (los GUIDs de las unidades pueden
	-- serlo, p. ej. en combate). Ver también npcIdFromGUID.
	if esSecreto(guid) then
		return nil;
	end

	return npcIdFromGUID(guid);
end

-- Id del NPC de una unidad, con guardas de tipo: jugadores y unidades
-- controladas por jugadores no tienen NPC id y sus GUIDs pueden ser
-- secretos, así que ni se tocan.
local function npcIdFromUnit(unit)
	if unit == nil or not UnitExists(unit) then
		return nil;
	end

	if UnitIsPlayer(unit) or UnitPlayerControlled(unit) or UnitIsBattlePet(unit) or UnitIsWildBattlePet(unit) then
		return nil;
	end

	return npcIdFromGUIDChecked(UnitGUID(unit));
end

local function initBossesConfig()
	if BossesConfig == nil then
		-- Cargamos los valores por omisión
		BossesConfig = {
			version = getVersion(),
			CANAL = "AUTO",
			MinimapPos = 45
		};
	end

	if BossesConfig.CANAL == nil then
		BossesConfig.CANAL = "AUTO";
	end

	-- Tamaño/posición del frame de alerta (redimensionable desde 1.0.18):
	-- framePos guarda { point, rel, x, y, w, h }. Sin w/h (config antigua) se
	-- usa el ancho por omisión 360.
	if type(BossesConfig.framePos) == "table" then
		if type(BossesConfig.framePos.w) ~= "number" or BossesConfig.framePos.w < 260 then
			BossesConfig.framePos.w = 360;
		end
		if type(BossesConfig.framePos.h) ~= "number" or BossesConfig.framePos.h < 100 then
			BossesConfig.framePos.h = nil; -- alto libre (auto) por omisión
		end
	end
	-- Aspectos del frame de alerta
	if BossesConfig.alertaMaxAlto == nil then
		BossesConfig.alertaMaxAlto = 0.6; -- fracción de la altura de pantalla para el tope del scroll (0 = sin tope)
	end
	if BossesConfig.alertaOpacidad == nil then
		BossesConfig.alertaOpacidad = 0.85;
	end
	if BossesConfig.alertaOculta == nil then
		BossesConfig.alertaOculta = false; -- frame siempre visible aunque no haya nada que mostrar
	end
	if BossesConfig.alertaFuente == nil then
		BossesConfig.alertaFuente = 1.0; -- escala de la fuente del cuerpo (0.8–1.3)
	end
	if BossesConfig.alertaBloqueado == nil then
		BossesConfig.alertaBloqueado = false; -- candado de posición (no se mueve con clic izdo)
	end
	if BossesConfig.alertaColapsado == nil then
		BossesConfig.alertaColapsado = false; -- empieza colapsado (solo cabecera)
	end
	if BossesConfig.alertaAltoAuto == nil then
		BossesConfig.alertaAltoAuto = true; -- el alto sigue al texto; al arrastrar el grip pasa a manual
	end

	if BossesConfig.IDIOMA == nil then
		BossesConfig.IDIOMA = "AUTO"; -- AUTO = sigue el idioma del juego
	end

	-- Posición del botón del minimapa (la librería LibDBIcon escribe aquí)
	if BossesConfig.minimapPos == nil then
		if BossesConfig.MinimapPos ~= nil then
			BossesConfig.minimapPos = BossesConfig.MinimapPos; -- compat con configuraciones antiguas
		else
			BossesConfig.minimapPos = 45;
		end
	end

	if BossesConfig.AUTO_ENC == nil then
		BossesConfig.AUTO_ENC = true; -- Modo Automático: explica al empezar el encuentro
	end

	if BossesConfig.FIRMA == nil then
		BossesConfig.FIRMA = true; -- firma de cortesía en los canales compartidos
	end

	if BossesConfig.DEBUG == nil then
		BossesConfig.DEBUG = false; -- modo depuración (desactivado por omisión)
	end

	if BossesConfig.MinimapPos == nil then
		BossesConfig.MinimapPos = 45; -- posición por omisión en grados
	end
end

local function autoChannel()
	-- El chat de grupo de mazmorras aleatorias es INSTANCE_CHAT
	local icc = IsInGroup(LE_PARTY_CATEGORY_INSTANCE);

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
local pendientes = {};     -- clave → timer del anti-spam de grupo
local reclamados = {};     -- clave → GetTime() de la última reclamación de otros jugadores

-- SendChatMessage sanea el marcado saliente: los hipervínculos de addon
-- se destrozan (quedan residuos tipo "*r" a medias) y los colores se
-- esfuman. Al canal compartido sale texto plano (el nombre entre
-- corchetes se conserva); en local (escribir) el marcado se imprime
-- completo y con links clicables.
local function sanearSalida(txt)
	txt = txt:gsub("|H[^|]*|h", "");     -- apertura de hipervínculo
	txt = txt:gsub("|h", "");            -- cierre de hipervínculo
	txt = txt:gsub("|cff%x%x%x%x%x%x", ""); -- apertura de color
	txt = txt:gsub("|r", "");            -- cierre de color
	return txt;
end

-- Límite del chat del cliente: con más de 255 caracteres POR MENSAJE el
-- cliente moderno ya no trunca — RECHAZA el envío con el error «Chat message
-- limits exceeded» (2026-10: la viñeta de las estatuas de mimbre del Jinete
-- decapitado murió entera en INSTANCE_CHAT con 392 bytes). Lo que manda es
-- el peso AL CABLE — el texto ya saneado, en bytes: # en Lua cuenta bytes
-- UTF-8, y el cirílico pesa ×2 y el CJK ×3 (las traducciones ru/zh se
-- pasaban con aparente normalidad). presupuesto de la casa: 240 bytes, con
-- margen para los nombres que el cliente sustituye al vuelo (localizarEnlaces).
local LIMITE_CABLE = 240;

-- Parte un texto YA SANEADO en trozos ≤ limite bytes: el corte más tardío
-- que quepa, preferente tras frase (.!?; y CJK 。！？；), después sobre la
-- raya " — " (la parte 2 abre con la raya y se lee como continuación), luego
-- en espacio, y solo sin frontera alguna un corte duro sin romper un
-- carácter UTF-8. El mismo algoritmo del editor web (partirPorLimiteChat en
-- web-editor/_packs.mjs) y del lote de datos (scripts/limite-chat.mjs).
local function partirAlCable(s, limite)
	local trozos = {};
	local minimo = math.floor(limite * 0.4);
	while #s > limite do
		local corte = nil;
		-- 1) fin de frase: el corte más tardío dentro del presupuesto
		for i = limite, minimo, -1 do
			local p = i > 1 and s:byte(i - 1) or nil;
			if p ~= nil and (p == 46 or p == 33 or p == 63 or p == 59) and s:sub(i, i) == " " then
				corte = i + 1; -- tras el espacio: el trozo 2 arranca limpio
				break;
			end
			local cjk = s:sub(i - 3, i - 1);
			if cjk == "。" or cjk == "！" or cjk == "？" or cjk == "；" then
				corte = i; -- los 3 bytes del signo quedan en el trozo 1
				break;
			end
		end
		-- 2) raya " — " (espacio + 3 bytes de raya + espacio)
		if corte == nil then
			for i = limite, minimo, -1 do
				if s:sub(i, i) == " " and s:sub(i + 1, i + 3) == "—" and s:sub(i + 4, i + 4) == " " then
					corte = i;
					break;
				end
			end
		end
		-- 3) espacio cualquiera (la raya y la coma ya cayeron en 1 y 2; el
		-- corte cae SOBRE el espacio: el trozo 1 lo recibe y lo recorta)
		if corte == nil then
			for i = limite, minimo, -1 do
				if s:sub(i, i) == " " then
					corte = i;
					break;
				end
			end
		end
		-- 4) sin frontera ninguna: corte duro que no rompa un carácter UTF-8
		if corte == nil then
			corte = limite;
			while corte > 2 and s:byte(corte) >= 128 and s:byte(corte) < 192 do
				corte = corte - 1; -- byte de continuación: recula al inicio del carácter
			end
		end
		local trozo = (s:sub(1, corte):gsub("%s+$", ""));
		if #trozo > 0 then
			trozos[#trozos + 1] = trozo;
		end
		s = (s:sub(corte + 1):gsub("^%s*", ""));
	end
	s = (s:gsub("%s+$", ""));
	if #s > 0 then
		trozos[#trozos + 1] = s;
	end
	return trozos;
end

-- Envío al canal respetando el límite: tal cual si cabe (la práctica
-- totalité de las líneas); si no, trocea y gotea a 0.25 s — la cadencia del
-- reparto frío, para no chocar encima con el throttle silencioso del chat.
-- Una línea larga SIN esto se pierde ENTERA (el cliente la rechaza).
local function enviarAlCable(texto, canal, sinCancelar)
	-- Cancela el goteo anterior: una nueva línea reemplaza a la que estaba
	-- goteando (no tiene sentido enviar trozos viejos intercalados).
	-- Con sinCancelar (el envío manual al grupo del modo "solo frame") NO se
	-- cancela: ahí van varias líneas seguidas y una línea larga troceada
	-- perdería sus trozos al llegar la siguiente.
	if not sinCancelar then
		for _, t in ipairs(timersCable) do
			t:Cancel();
		end
		timersCable = {};
	end

	if #texto <= LIMITE_CABLE then
		pcall(SendChatMessage, texto, canal); -- pcall: en la microcarrera del pull puede ir bloqueado
		return;
	end
	local trozos = partirAlCable(texto, LIMITE_CABLE);
	debugLog("chat", "línea de " .. tostring(#texto) .. " bytes → " .. tostring(#trozos) .. " trozos");
	for k, t in ipairs(trozos) do
		if k == 1 then
			pcall(SendChatMessage, t, canal);
		else
			local trozo = t;
			local timer = C_Timer.After((k - 1) * 0.25, function()
				-- Guarda de zona caliente: si el combate empezó en mitad del
				-- goteo, no seguimos enviando (el cliente los bloquearía).
				if enZonaCaliente() then return; end
				pcall(SendChatMessage, trozo, canal);
			end);
			table.insert(timersCable, timer);
		end
	end
end

-- Nombre de un spell en el idioma del CLIENTE (el id es el mismo en
-- todos; el nombre lo resuelve el juego): cubre el C_Spell moderno y
-- el GetSpellInfo clásico de los flavors antiguos.
local function nombreSpell(id)
	id = tonumber(id);
	if id == nil then
		return nil;
	end
	if C_Spell ~= nil and C_Spell.GetSpellInfo ~= nil then
		local info = C_Spell.GetSpellInfo(id);
		if info ~= nil then
			return info.name;
		end
		return nil;
	end
	if GetSpellInfo ~= nil then
		return GetSpellInfo(id);
	end
	return nil;
end

-- Mapa de locales del cliente a la clave de idioma de la casa (lo usan
-- los packs y la detección): AUTO = sigue el idioma del juego.
local MAPA_LOCALES = {
	esES = "ES", esMX = "ES", frFR = "FR", deDE = "DE",
	ruRU = "RU", ptBR = "PT", zhCN = "ZH", zhTW = "ZH", koKR = "KO",
};

-- Traduce al vuelo el texto visible de los enlaces de spell al idioma
-- del cliente, SOLO cuando la explicación va en el idioma del cliente
-- (BossesConfig.IDIOMA AUTO): con un idioma de explicación elegido a mano
-- (/bosses IDIOMA en en un cliente esES) el nombre entre corchetes del
-- pack ya va en el idioma de la explicación y se conserva tal cual — el
-- cliente solo puede traer el nombre en SU idioma. El tooltip del enlace
-- sigue resolviendo en el idioma de quien mira (eso no depende del addon).
-- Los packs NO necesitan guardarse traducidos — el texto del pack queda
-- como respaldo si el cliente no trae el spell.
local function localizarEnlaces(txt)
	if txt == nil then
		return txt;
	end
	local elegido = (BossesConfig ~= nil and BossesConfig.IDIOMA) or "AUTO";
	if elegido ~= "AUTO" then
		local loc = GetLocale();
		local delCliente = (loc ~= nil and MAPA_LOCALES[loc]) or "EN";
		if elegido ~= delCliente then
			return txt; -- la explicación va en otro idioma: los nombres del pack quedan
		end
	end
	local resultado = string.gsub(txt, "|Hspell:(%d+)|h%[(.-)%]|h", function(id)
		local n = nombreSpell(id);
		if n ~= nil and n ~= "" then
			return "|Hspell:" .. id .. "|h[" .. n .. "]|h";
		end
		return nil; -- sin nombre en el cliente: se conserva el del pack
	end);
	return resultado;
end

-- Línea del último envío en vuelo por el canal: el cliente anuncia los
-- bloqueos (ADDON_ACTION_BLOCKED) DESPUÉS de la llamada; con la marca, el
-- listener puede reencolar lo que el bloqueo se comió.
local enVueloCanal = nil;

-- Declaradas por adelantado: salida() necesita enrutar al frame de
-- alerta con el canal "solo frame" (y el botón "al chat" del frame,
-- reenviar al chat el jefe en pantalla); sus definiciones viven más abajo.
local salidaEnPantalla;
local ajustarAlturaAlerta;
local enviarJefeDelFrame;
local abrirEditor; -- (editor in-game de explicaciones, sección «EDITOR IN-GAME»)

local function salida(txt, esFirma)
	txt = localizarEnlaces(txt); -- nombres de spells según el idioma de la explicación
	if forzarLocal then
		escribir(txt);
		return;
	end

	local canal = BossesConfig.CANAL;
	-- Marca la línea en vuelo: si el cliente la rechaza (la microcarrera
	-- del pull), el listener de ADDON_ACTION_BLOCKED lo anota en el
	-- registro — el frame ya lleva la explicación COMPLETA desde el
	-- lanzamiento, no hay nada que recuperar. La firma de cortesía NO
	-- se marca: es solo para el grupo y, si el pull caza su envío, se
	-- pierde. Caduca sola: sin bloqueo nadie la recoge.
	enVueloCanal = esFirma == true and nil or txt;

	if canal == "AUTO" then
		enviarAlCable(sanearSalida(txt), autoChannel());
	elseif canal == "GUILD" then
		if IsInGuild() then
			enviarAlCable(sanearSalida(txt), "GUILD");
		else
			escribir(txt);
		end
	elseif canal == "FRAME" then
		salidaEnPantalla(txt); -- canal "solo frame": nada de chat, todo a la ventana
	else
		escribir(txt);
	end

	C_Timer.After(0.3, function()
		if enVueloCanal == txt then
			enVueloCanal = nil;
		end
	end);
end

-- La salida va por un canal que ven los demás (grupo/banda/hermandad)?
local function salidaCompartida()
	if forzarLocal then
		return false;
	end

	local canal = BossesConfig.CANAL;

	if canal == "GUILD" then
		return IsInGuild();
	end

	return canal == "AUTO" and true or false;
end

-- El idioma de la firma sigue el de la EXPLICACIÓN (BossesConfig.IDIOMA),
-- no el del cliente: la salida al grupo debe ser consistente.
local function textoCortesia()
	local idioma = (BossesConfig ~= nil and BossesConfig.IDIOMA) or "AUTO";
	if idioma == "ES" then
		return L["CortesiaES"];
	elseif idioma == "EN" then
		return L["CortesiaEN"];
	elseif idioma == "FR" then
		return L["CortesiaFR"];
	elseif idioma == "DE" then
		return L["CortesiaDE"];
	elseif idioma == "RU" then
		return L["CortesiaRU"];
	elseif idioma == "PT" then
		return L["CortesiaPT"];
	elseif idioma == "ZH" then
		return L["CortesiaZH"];
	elseif idioma == "KO" then
		return L["CortesiaKO"];
	end
	return L["Cortesia"]; -- AUTO: idioma del cliente
end

-- Detección honesta de zona de combate. InCombatLockdown() PALPITA:
-- devolvió false a mitad de un encuentro real (2026-09-30, Kystia: el
-- lanzamiento se creyó fuera y el cliente bloqueó igualmente el envío),
-- así que no sirve como discriminante del envío. La huella: el último
-- instante con señal real de combate + una gracia corta.
local ultimoCombate = 0;
local GRACE_COMBATE = 5;
local function enZonaCaliente()
	return InCombatLockdown() or (GetTime() - ultimoCombate) < GRACE_COMBATE;
end

-- DECISIÓN del propietario (2026-10-01, tras probar con Coren): NADA de
-- entregar explicaciones al fin del combate — llega tarde y no sirve ni
-- al que tiene el addon ni al resto. Verificado 09-30/10-01: en combate
-- el cliente bloquea SendChatMessage de forma fiable (manejador, C_Timer
-- e InCombatLockdown() en falso). MODELO vigente: en zona de combate la
-- explicación vive SOLO en el frame de alerta del dueño (+ su chat local
-- si la salida es solo para él); al grupo va únicamente la parte que
-- cupo en la ventana pre-pull (gritos de entrada), fuera de zona
-- caliente. La cola de chat se retira.

-- Frame de alerta del propietario: las FRAMES propias no se bloquean
-- nunca — es la vía que DBM usa precisamente por esto. Durante la pelea
-- el dueño ve aquí TODA la explicación (los envíos de chat a grupo se
-- bloquean y tras morir el jefe ya no se retiene nada para después),
-- con el marcado completo y links activos. Se oculta 15s tras el fin
-- del combate, se puede arrastrar (clic izdo) y REDIMENSIONAR (clic dcho
-- en la esquina inferior derecha), con historial ◀ ▶, colapso, candado
-- y click en el nombre = target (mejoras 1.0.18). El alto del cuerpo tiene
-- tope configurable y scroll con la rueda del ratón.
local alertaFrame = nil;   -- creado perezoso
local alertaOcultar = nil; -- el C_Timer que lo esconde tras el combate
local alertaOcultarTimer = nil; -- handle del C_Timer.NewTicker de la barra de cuenta atrás
local alertaBarraCuenta = nil;  -- textura de la barra de cuenta atrás (auto-ocultado)
local frameNpcId = nil;   -- jefe MOSTRADO con entrada (botón "al chat")
local frameIdEditor = nil; -- último npc id visto en el frame, DESCrito o no (botón "editar")
local frameGuid = nil;    -- GUID del jefe mostrado (click en el nombre = target)
local historialAlerta = {};  -- { { titulo, lineas = {…}, npcId, guid } } explicaciones de la sesión
local historialIdx = 0;       -- índice dentro de historialAlerta (0 = la última)
local alertaColapsado = false; -- estado de colapso (persistido en BossesConfig)
local redimensionando = false; -- true mientras se arrastra el grip de tamaño
local actualizarBotonChat; -- declaración adelantada: navegarHistorial la usa y se define después
local ajustarScrollAlerta; -- declaración adelantada: ajustarAlturaAlerta la llama y se define después

-- Cliente actual (interfaz): 12xxxx = retail (Midnight), 50504 = MoP,
-- 20506 = TBC, 11509 = Era Classic, 16001 = WoW Forever. Los atlases
-- vectoriales del juego (common-icon-backarrow, communities-icon-lock,
-- RedButton-Exit…) solo existen en retail; en los clásicos caemos a las
-- texturas clásicas o a texto ASCII.
local interfazCliente = select(4, GetBuildInfo());
local clienteModerno = type(interfazCliente) == "number" and interfazCliente >= 90000;

-- Botón con icono: en retail, atlas del juego; en clásicos, textura
-- clásica; si no hay ninguna, texto ASCII (siempre en la fuente).
local function botonIcono(parent, tam, atlas, textura, texto, tooltip, onClick)
	local btn = CreateFrame("Button", nil, parent);
	btn:SetSize(tam, tam);
	local tex = btn:CreateTexture(nil, "OVERLAY");
	tex:SetSize(tam - 2, tam - 2);
	tex:SetPoint("CENTER");
	if clienteModerno and atlas ~= nil then
		tex:SetAtlas(atlas);
	elseif textura ~= nil then
		tex:SetTexture(textura);
		tex:SetTexCoord(0, 1, 0, 1);
	end
	btn:SetNormalTexture(tex);
	local hi = btn:CreateTexture(nil, "HIGHLIGHT");
	hi:SetAllPoints();
	hi:SetColorTexture(1, 1, 1, 0.12);
	btn:SetHighlightTexture(hi);
	if texto ~= nil and not (clienteModerno and atlas ~= nil) then
		btn:SetNormalFontObject("GameFontHighlight");
		btn:SetText(texto);
	end
	if tooltip ~= nil then
		btn:SetScript("OnEnter", function(self)
			if GameTooltip ~= nil then
				GameTooltip:SetOwner(self, "ANCHOR_BOTTOM");
				GameTooltip:SetText(tooltip, 1, 1, 1);
				GameTooltip:Show();
			end
		end);
		btn:SetScript("OnLeave", function()
			if GameTooltip ~= nil then GameTooltip:Hide(); end
		end);
	end
	if onClick ~= nil then
		btn:SetScript("OnClick", function(self, boton) onClick(self, boton); end);
	end
	return btn;
end

-- Ancho útil del texto dentro del frame (margen izdo+dcho = 16+16)
local function anchoTextoAlerta()
	if alertaFrame == nil then return 328; end
	return math.max(120, alertaFrame:GetWidth() - 32);
end

-- Recoloca el texto para el ancho actual del frame (tras redimensionar)
local function rewrapAlerta()
	if alertaFrame == nil then return; end
	local w = anchoTextoAlerta();
	alertaFrame.nombre:SetWidth(w);
	alertaFrame.cuerpo:SetWidth(w);
	if alertaFrame.divisor ~= nil then
		alertaFrame.divisor:SetPoint("RIGHT", -16, 0);
	end
	if alertaFrame.scroll ~= nil and alertaFrame.scrollChild ~= nil then
		alertaFrame.cuerpo:SetWidth(w - 4);
	end
	ajustarAlturaAlerta();
end

-- Aplica el estado de colapso: solo cabecera (marca + nombre + botones
-- de la fila superior) o frame completo.
local function aplicarColapso()
	if alertaFrame == nil then return; end
	local colapsado = alertaColapsado;
	if alertaFrame.divisor ~= nil then alertaFrame.divisor:SetShown(not colapsado); end
	if alertaFrame.scroll ~= nil then alertaFrame.scroll:SetShown(not colapsado); end
	if alertaFrame.botonChat ~= nil then alertaFrame.botonChat:SetShown(not colapsado and alertaFrame.botonChat.__visible); end
	if alertaFrame.botonEditar ~= nil then alertaFrame.botonEditar:SetShown(not colapsado and alertaFrame.botonEditar.__visible); end
	if alertaFrame.colapsarBtn ~= nil then
		-- Icono: flecha hacia arriba = plegar (está desplegado), hacia abajo =
		-- desplegar (está plegado). En retail es el atlas del juego; en los
		-- clásicos, "^"/"v" en ASCII (la fuente no tiene ▴/▾: salían como "[]").
		if clienteModerno then
			local tex = alertaFrame.colapsarBtn:GetNormalTexture();
			if tex ~= nil then
				tex:SetAtlas(colapsado and "auctionhouse-ui-dropdown-arrow-down" or "auctionhouse-ui-dropdown-arrow-up");
			end
		else
			alertaFrame.colapsarBtn:SetText(colapsado and "v" or "^");
		end
	end
	ajustarAlturaAlerta();
end

local function alternarColapso()
	alertaColapsado = not alertaColapsado;
	BossesConfig.alertaColapsado = alertaColapsado and true or false;
	aplicarColapso();
end

-- Candado de posición: con él puesto, el drag izquierdo no mueve el frame
local function aplicarCandado()
	if alertaFrame == nil then return; end
	local bloqueado = BossesConfig.alertaBloqueado and true or false;
	alertaFrame:SetMovable(not bloqueado);
	-- Icono del candado: en retail, el atlas "communities-icon-lock" (se
	-- tiñe de rojo cuando está bloqueado); en los clásicos, la textura
	-- clásica del candado del juego (roja = bloqueada, amarilla = libre).
	local texCandado = nil;
	if alertaFrame.candadoBtn ~= nil then
		texCandado = alertaFrame.candadoBtn:GetNormalTexture();
	end
	if texCandado ~= nil then
		if clienteModerno then
			texCandado:SetAtlas("communities-icon-lock");
			if bloqueado then
				texCandado:SetVertexColor(1, 0.45, 0.45);
			else
				texCandado:SetVertexColor(1, 0.95, 0.7);
			end
		else
			if bloqueado then
				texCandado:SetTexture("Interface\\Buttons\\LockButton-Locked-Up");
			else
				texCandado:SetTexture("Interface\\Buttons\\LockButton-Unlocked-Up");
			end
		end
	end
end

local function alternarCandado()
	BossesConfig.alertaBloqueado = not (BossesConfig.alertaBloqueado and true or false);
	aplicarCandado();
end
local function ocultarAlerta()
	if alertaOcultar ~= nil then
		alertaOcultar:Cancel();
		alertaOcultar = nil;
	end
	if alertaOcultarTimer ~= nil then
		alertaOcultarTimer:Cancel();
		alertaOcultarTimer = nil;
	end
	if alertaBarraCuenta ~= nil then
		alertaBarraCuenta:Hide();
	end
	if alertaFrame == nil or alertaFrame:IsShown() == false then
		return;
	end
	if BossesConfig.alertaOculta then
		-- Con "siempre visible" no hay auto-ocultado ni barra de cuenta atrás
		return;
	end
	-- Barra de cuenta atrás: textura fina en el borde inferior que se vacía
	-- en 15 s para avisar de que el frame se cerrará solo.
	if alertaBarraCuenta ~= nil then
		local t0 = GetTime();
		local anchoMax = alertaFrame:GetWidth() - 12;
		alertaBarraCuenta:Show();
		alertaBarraCuenta:SetWidth(anchoMax);
		alertaOcultarTimer = C_Timer.NewTicker(0.1, function()
			if alertaFrame == nil or alertaFrame:IsShown() == false or alertaBarraCuenta == nil then return; end
			local queda = 15 - (GetTime() - t0);
			if queda <= 0 then return; end
			alertaBarraCuenta:SetWidth(math.max(0, anchoMax * (queda / 15)));
		end);
	end
	alertaOcultar = C_Timer.After(15, function()
		alertaOcultar = nil;
		if alertaOcultarTimer ~= nil then
			alertaOcultarTimer:Cancel();
			alertaOcultarTimer = nil;
		end
		if alertaFrame ~= nil and alertaFrame.nombre ~= nil and alertaFrame.cuerpo ~= nil then
			alertaFrame.nombre:SetText("");
			alertaFrame.cuerpo:SetText("");
			alertaFrame:Hide();
		end
	end);
end
-- Sin "local": asigna la variable declarada por adelantado (salida() la usa).
function salidaEnPantalla(linea, nueva)
	linea = localizarEnlaces(linea); -- nombres de spells según el idioma de la explicación
	if alertaOcultar ~= nil then
		alertaOcultar:Cancel();
		alertaOcultar = nil;
	end
	-- Blindaje: si un intento de creación quedó a medias (un método
	-- decorativo que falte en algún cliente no debe dejar el frame
	-- cojo para siempre), se descarta y se rehace completo.
	if alertaFrame ~= nil and (alertaFrame.marca == nil or alertaFrame.nombre == nil or alertaFrame.cuerpo == nil) then
		alertaFrame:Hide();
		alertaFrame = nil;
	end
	if alertaFrame == nil then
		-- Con nombre para que la tecla ESC lo cierre (UISpecialFrames
		-- solo admite nombres de globales) y con botón X arriba a la
		-- derecha: el frame siempre tiene salida manual.
		alertaFrame = CreateFrame("Frame", "BossesAlertaFrame", UIParent, "BackdropTemplate");
		if type(UISpecialFrames) == "table" then
			tinsert(UISpecialFrames, "BossesAlertaFrame");
		end
		alertaFrame:SetFrameStrata("TOOLTIP"); -- encima de cualquier UI del jugador
		alertaFrame:SetClampedToScreen(true);
		alertaFrame:SetWidth(360);
		alertaFrame:EnableMouse(true);
		alertaFrame:SetMovable(true);
		alertaFrame:RegisterForDrag("LeftButton");
		alertaFrame:SetScript("OnDragStart", function(self)
			-- Si estamos redimensionando, el arrastre NO mueve el frame
			-- (el grip y el drag comparten el botón izquierdo, patrón DBM).
			-- OJO: este cliente NO tiene Frame:IsSizing() (no existe en
			-- Midnight 12.1.5: "attempt to call a nil value"), así que el
			-- estado lo lleva nuestra propia bandera.
			if redimensionando then
				return;
			end
			self:StartMoving();
		end);
		alertaFrame:SetScript("OnDragStop", function(self)
			self:StopMovingOrSizing();
			-- Guardar dónde quedó el frame: por personaje, igual que la
			-- posición del botón de minimapa.
			local punto, _, relativo, x, y = self:GetPoint(1);
			if punto ~= nil then
				local fp = BossesConfig.framePos;
				if type(fp) ~= "table" then fp = {}; BossesConfig.framePos = fp; end
				fp.point = punto; fp.rel = relativo or punto; fp.x = x or 0; fp.y = y or 0;
			end
		end);
		-- 1.0.18: REDIMENSIONABLE. Patrón copiado del de DBM (el frame de
		-- jefes más usado): un botón de 16x16 en la esquina inferior derecha
		-- que con el BOTÓN IZQUIERDO llama a StartSizing("BOTTOMRIGHT").
		-- OJO: la textura correcta es "UI-ChatIM-SizeGrabber-Up" (con guion
		-- entre IM y Size); con la ruta sin guion la textura no existía y el
		-- grip salía invisible → "no se puede redimensionar" (fallo del
		-- 2026-10-31, reportado por el dueño).
		alertaFrame:SetResizable(true);
		if alertaFrame.SetMinResize ~= nil then
			alertaFrame:SetMinResize(260, 100);
		end
		if alertaFrame.SetMaxResize ~= nil then
			alertaFrame:SetMaxResize(900, 1000);
		end
		local grip = CreateFrame("Button", nil, alertaFrame);
		grip:SetSize(16, 16);
		grip:EnableMouse(true);
		grip:SetPoint("BOTTOMRIGHT", alertaFrame, "BOTTOMRIGHT", 1, 1);
		local gripTex = grip:CreateTexture(nil, "OVERLAY");
		gripTex:SetTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up");
		gripTex:SetTexCoord(0, 1, 0, 1);
		gripTex:SetPoint("BOTTOMLEFT", grip, 0, 1);
		gripTex:SetPoint("TOPRIGHT", grip, -1, 0);
		grip:SetNormalTexture(gripTex);
		local gripHi = grip:CreateTexture(nil, "OVERLAY");
		gripHi:SetTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight");
		gripHi:SetTexCoord(0, 1, 0, 1);
		gripHi:SetPoint("BOTTOMLEFT", grip, 0, 1);
		gripHi:SetPoint("TOPRIGHT", grip, -1, 0);
		grip:SetHighlightTexture(gripHi);
		grip:SetScript("OnMouseDown", function(self, boton)
			-- Botón izquierdo (como DBM): con el derecho no es fiable en
			-- todos los clientes.
			if boton == "LeftButton" then
				redimensionando = true;
				-- El alto pasa a manual YA (no al soltar): si el ratón se
				-- suelta fuera del grip, el OnMouseUp no llega y el alto
				-- elegido debe respetarse igualmente.
				BossesConfig.alertaAltoAuto = false;
				alertaFrame:StartSizing("BOTTOMRIGHT");
			end
		end);
		grip:SetScript("OnMouseUp", function(self, boton)
			if boton == "LeftButton" then
				redimensionando = false;
				alertaFrame:StopMovingOrSizing();
				-- Guardar el tamaño elegido: el alto deja de ser automático
				-- (si no, ajustarAlturaAlerta lo reventaba).
				local fp = BossesConfig.framePos;
				if type(fp) ~= "table" then fp = {}; BossesConfig.framePos = fp; end
				fp.w = alertaFrame:GetWidth();
				fp.h = alertaFrame:GetHeight();
				BossesConfig.alertaAltoAuto = false;
				rewragAlertaResize();
			end
		end);
		grip:SetScript("OnEnter", function(self)
			if GameTooltip ~= nil then
				GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT");
				GameTooltip:SetText("|cffffd100Bosses|r: arrastra para redimensionar", 1, 1, 1);
				GameTooltip:Show();
			end
		end);
		grip:SetScript("OnLeave", function()
			if GameTooltip ~= nil then GameTooltip:Hide(); end
		end);
		alertaFrame.grip = grip;
		-- Reajuste del texto al cambiar el tamaño (OnSizeChanged cubre tanto
		-- el drag de resize como cualquier SetWidth externo).
		-- OJO: durante el drag de resize NO se guarda el tamaño ni se recalcula
		-- el alto (el frame manda: si no, ajustarAlturaAlerta le pelea el
		-- alto al ratón). El tamaño se guarda al soltar (OnMouseUp del grip).
		alertaFrame:SetScript("OnSizeChanged", function(self, w, h)
			if self.nombre == nil then
				-- El frame se está montando todavía (este handler se
				-- instala antes que los textos): no se guarda ni se
				-- reenvuelve nada, o el alto manual se pisaría al montar.
				return;
			end
			-- Guardar el tamaño elegido (también durante el arrastre: el
			-- último valor es el final).
			local fp = BossesConfig.framePos;
			if type(fp) == "table" then
				fp.w = w; fp.h = h;
			end
			if redimensionando then
				-- Solo el texto se reenvuelve mientras se arrastra
				local ww = anchoTextoAlerta();
				self.nombre:SetWidth(ww);
				if self.cuerpo ~= nil then
					self.cuerpo:SetWidth(math.max(80, ww - 4));
				end
				if self.scrollChild ~= nil then
					self.scrollChild:SetWidth(math.max(80, ww - 4));
				end
				return;
			end
			rewragAlertaResize();
		end);
		-- Botón X de cierre (además de la tecla ESC). En retail usamos el
		-- atlas "RedButton-Exit" del juego (la X roja oficial, la misma que
		-- usan las ventanas nativas); en los clientes clásicos, la textura
		-- clásica "UI-PanelCloseButton-Up".
		local cerrar = botonIcono(alertaFrame, 18, "RedButton-Exit", "Interface\\Buttons\\UI-PanelCloseButton-Up", nil, nil, function()
			if alertaOcultar ~= nil then
				alertaOcultar:Cancel();
				alertaOcultar = nil;
			end
			alertaFrame:Hide();
		end);
		cerrar:SetPoint("TOPRIGHT", -6, -6);
		-- Fila de botones de la cabecera (1.0.18): historial, colapsar y
		-- candado. Iconos del juego: en retail, atlases vectoriales
		-- (common-icon-backarrow / forwardarrow, communities-icon-lock,
		-- auctionhouse-ui-dropdown-arrow-up); en los clásicos, texturas
		-- clásicas o ASCII (la fuente del juego no tiene ◀ ▶ ▴ 🔒 y salían
		-- como cajitas "[]" — fallo del 2026-10-31).
		local histPrev = botonIcono(alertaFrame, 18, "common-icon-backarrow", nil, "<", L["Previous"], function()
			navegarHistorial(-1);
		end);
		histPrev:SetPoint("TOPRIGHT", cerrar, "TOPLEFT", -4, 0);
		alertaFrame.histPrev = histPrev;
		local histNext = botonIcono(alertaFrame, 18, "common-icon-forwardarrow", nil, ">", L["Next"], function()
			navegarHistorial(1);
		end);
		histNext:SetPoint("RIGHT", histPrev, "LEFT", -2, 0);
		alertaFrame.histNext = histNext;
		local colapsarBtn = botonIcono(alertaFrame, 18, "auctionhouse-ui-dropdown-arrow-up", nil, "^", L["Collapse"], function()
			alternarColapso();
		end);
		colapsarBtn:SetPoint("RIGHT", histNext, "LEFT", -2, 0);
		alertaFrame.colapsarBtn = colapsarBtn;
		local candadoBtn = botonIcono(alertaFrame, 18, "communities-icon-lock", "Interface\\Buttons\\LockButton-Unlocked-Up", nil, L["Lock"], function()
			alternarCandado();
		end);
		candadoBtn:SetPoint("RIGHT", colapsarBtn, "LEFT", -2, 0);
		alertaFrame.candadoBtn = candadoBtn;
		-- La primera vez se abre centrado arriba; después, donde lo
		-- dejaste la última vez (guardado por personaje). La validación
		-- estricta evita anclas corruptas que cascarían la creación.
		-- Con el tamaño: el ancho siempre es el del dueño; el alto solo si
		-- se redimensionó a mano (alto automático off).
		local fp = BossesConfig.framePos;
		if type(fp) == "table" and type(fp.point) == "string" and type(fp.rel) == "string" and type(fp.x) == "number" and type(fp.y) == "number" then
			alertaFrame:SetPoint(fp.point, UIParent, fp.rel, fp.x, fp.y);
			-- Los valores se copian ANTES de aplicarlos: el SetWidth dispara
			-- OnSizeChanged, que vuelve a guardar el tamaño y pisaría el
			-- alto manual que vamos a poner justo después.
			local anchoGuardado = nil;
			local altoGuardado = nil;
			if type(fp.w) == "number" and fp.w >= 260 then
				anchoGuardado = fp.w;
			end
			if BossesConfig.alertaAltoAuto == false and type(fp.h) == "number" and fp.h >= 100 then
				altoGuardado = fp.h;
			end
			if anchoGuardado ~= nil then
				alertaFrame:SetWidth(anchoGuardado);
			end
			if altoGuardado ~= nil then
				alertaFrame:SetHeight(altoGuardado);
			end
		else
			alertaFrame:SetPoint("TOP", 0, -170);
		end
		-- Aspecto de tooltip nativo del juego (fondo + borde), mucho más
		-- cuidado que el rectángulo negro plano de la primera versión
		alertaFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 16, edgeSize = 16,
			insets = { left = 3, right = 3, top = 3, bottom = 3 },
		});
		local opacidad = tonumber(BossesConfig.alertaOpacidad) or 0.85;
		alertaFrame:SetBackdropColor(0.06, 0.06, 0.08, opacidad);
		-- Etiqueta pequeña dorada con la marca del addon
		local marca = alertaFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
		marca:SetPoint("TOPLEFT", 16, -10);
		marca:SetText("BOSSES");
		marca:SetTextColor(1, 0.85, 0.4);
		alertaFrame.marca = marca;
		-- Nombre del jefe como cabecera grande de la explicación
		local nombre = alertaFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
		nombre:SetPoint("TOPLEFT", marca, "BOTTOMLEFT", 0, -4);
		nombre:SetWidth(anchoTextoAlerta());
		nombre:SetJustifyH("LEFT");
		if nombre.SetHyperlinksEnabled ~= nil then
			nombre:SetHyperlinksEnabled(true); -- links clicables; sin el método el texto sale igual, solo sin link
		end
		-- 1.0.18: click en la CABECERA = target al jefe (si tenemos su GUID);
		-- doble click en la cabecera = colapsar/expandir. Se hace a mano con
		-- OnMouseDown/OnMouseUp porque un Frame plano no admite OnDoubleClick
		-- en todos los clientes ("script type not supported" rompía la
		-- creación a mitad). Solo cuenta si el ratón NO se movió (así un drag
		-- desde la cabecera mueve el frame sin hacer target) y dentro del
		-- rectángulo del nombre, para no interferir con los links del cuerpo.
		local clickCabeza = nil; -- { t, x, y } del último clic dentro de la cabecera
		local ultimoDobleClick = 0;
		local function dentroDeLaCabecera(self)
			if self.nombre == nil then return false; end
			local _, _, x, y = self.nombre:GetRect();
			if x == nil or y == nil then return false; end
			local cx, cy = GetCursorPosition();
			local escala = UIParent:GetEffectiveScale();
			cx, cy = cx / escala, cy / escala;
			local fx, fy = self:GetLeft(), self:GetBottom();
			if fx == nil or fy == nil then return false; end
			local dentroX = cx >= fx + x and cx <= fx + x + self.nombre:GetWidth();
			local dentroY = cy >= fy + y and cy <= fy + y + self.nombre:GetHeight();
			return dentroX and dentroY;
		end
		alertaFrame:SetScript("OnMouseDown", function(self, boton)
			if boton ~= "LeftButton" then return; end
			if dentroDeLaCabecera(self) then
				local cx, cy = GetCursorPosition();
				local escala = UIParent:GetEffectiveScale();
				clickCabeza = { t = GetTime(), x = cx / escala, y = cy / escala };
			else
				clickCabeza = nil;
			end
		end);
		alertaFrame:SetScript("OnMouseUp", function(self, boton)
			if boton ~= "LeftButton" or clickCabeza == nil then return; end
			local c = clickCabeza;
			clickCabeza = nil;
			if not dentroDeLaCabecera(self) then return; end
			local cx, cy = GetCursorPosition();
			local escala = UIParent:GetEffectiveScale();
			cx, cy = cx / escala, cy / escala;
			if math.abs(cx - c.x) > 5 or math.abs(cy - c.y) > 5 then return; end -- era un drag
			local ahora = GetTime();
			if ahora - ultimoDobleClick < 0.5 then
				ultimoDobleClick = 0;
				alternarColapso();
			elseif frameGuid ~= nil then
				ultimoDobleClick = ahora;
				pcall(TargetUnit, frameGuid);
			end
		end);
		alertaFrame.nombre = nombre;
		-- Divisoria dorada fina bajo el nombre
		local divisor = alertaFrame:CreateTexture(nil, "OVERLAY");
		divisor:SetColorTexture(1, 0.85, 0.4, 0.55);
		divisor:SetHeight(1);
		divisor:SetPoint("TOPLEFT", nombre, "BOTTOMLEFT", 0, -6);
		divisor:SetPoint("RIGHT", -16, 0);
		alertaFrame.divisor = divisor;
		-- Cuerpo dentro de un ScrollFrame (1.0.18): alto con tope y rueda de
		-- ratón; el texto conserva el marcado del pack y los links.
		-- OJO: el alto del scrollChild lo fija ajustarScrollAlerta() con la
		-- altura real del texto; si se deja a 1 px el ScrollFrame recorta el
		-- texto y el cuerpo sale VACÍO (fallo del 2026-10-31).
		local scroll = CreateFrame("ScrollFrame", nil, alertaFrame, "UIPanelScrollFrameTemplate");
		scroll:SetPoint("TOPLEFT", divisor, "BOTTOMLEFT", 0, -8);
		scroll:SetPoint("BOTTOMRIGHT", -30, 24); -- deja sitio al pie con botones
		scroll:EnableMouseWheel(true);
		scroll:SetScript("OnMouseWheel", function(self, delta)
			local barra = self.ScrollBar;
			if barra ~= nil then
				local paso = barra:GetHeight() > 0 and (barra:GetHeight() * 0.2) or 20;
				barra:SetValue(barra:GetValue() - delta * paso);
			end
		end);
		local scrollChild = CreateFrame("Frame", nil, scroll);
		scrollChild:SetSize(anchoTextoAlerta() - 4, 1);
		scroll:SetScrollChild(scrollChild);
		local cuerpo = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
		cuerpo:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, 0);
		cuerpo:SetWidth(anchoTextoAlerta() - 4);
		cuerpo:SetJustifyH("LEFT");
		if cuerpo.SetHyperlinksEnabled ~= nil then
			cuerpo:SetHyperlinksEnabled(true);
		end
		-- Escala de fuente configurable (1.0.18): guardamos la ruta de la
		-- fuente base para recalcular el tamaño al mover el slider.
		alertaFrame.cuerpoFuente = select(1, cuerpo:GetFont());
		local escala = tonumber(BossesConfig.alertaFuente) or 1.0;
		if cuerpo.SetFont ~= nil and alertaFrame.cuerpoFuente ~= nil then
			local _, alto, flags = cuerpo:GetFont();
			cuerpo:SetFont(alertaFrame.cuerpoFuente, (alto or 12) * escala, flags or "");
		end
		alertaFrame.scroll = scroll;
		alertaFrame.scrollChild = scrollChild;
		alertaFrame.cuerpo = cuerpo;
		-- Barra de cuenta atrás del auto-ocultado (1.0.18): línea fina en el
		-- borde inferior que se vacía en los 15 s previos al cierre.
		local barraCuenta = alertaFrame:CreateTexture(nil, "ARTWORK");
		barraCuenta:SetColorTexture(1, 0.85, 0.4, 0.8);
		barraCuenta:SetHeight(2);
		barraCuenta:SetPoint("BOTTOMLEFT", 6, 3);
		barraCuenta:Hide();
		alertaBarraCuenta = barraCuenta;
		-- El dueño arrastra el frame; los links del texto se tratan como en el chat
		alertaFrame:SetScript("OnHyperlinkClick", function(_, link, textoLiga, boton, chatFrame)
			pcall(ChatFrame_OnHyperlinkShow, DEFAULT_CHAT_FRAME, link, textoLiga, boton, chatFrame);
		end);
		-- Tooltip del enlace al PASAR el ratón (como en las barras de
		-- acción): el juego lo resuelve en el idioma de quien mira.
		-- 1.0.18 blindado: SetHyperlinksEnabled tras cada SetText (algunos
		-- clientes lo resetean) y fallback al nombre del pack si el tooltip
		-- del cliente no resuelve el spell.
		alertaFrame:SetScript("OnHyperlinkEnter", function(_, link)
			if GameTooltip ~= nil then
				pcall(function()
					GameTooltip:SetOwner(alertaFrame, "ANCHOR_CURSOR", 24, 0);
					GameTooltip:SetHyperlink(link);
					GameTooltip:Show();
				end);
				-- Fallback: si el tooltip quedó vacío (spell sin datos en este
				-- cliente), mostramos el nombre tal como lo trae el pack.
				local nombrePack = nil;
				local idSpell = string.match(link, "^spell:(%d+)");
				if idSpell ~= nil then
					nombrePack = nombreSpellPack(idSpell) or nombreSpellPack("-" .. idSpell);
				end
				if nombrePack ~= nil and nombrePack ~= "" then
					pcall(function()
						local txt = GameTooltip:GetName() ~= nil and GameTooltipTextLeft1 ~= nil and GameTooltipTextLeft1:GetText() or nil;
						if txt == nil or txt == "" then
							GameTooltip:SetText(nombrePack, 0.55, 0.8, 1);
							GameTooltip:Show();
						end
					end);
				end
			end
		end);
		alertaFrame:SetScript("OnHyperlinkLeave", function()
			if GameTooltip ~= nil then
				GameTooltip:Hide();
			end
		end);
		-- Botón "al chat": reenvía la entrada del jefe en pantalla por la
		-- ruta fría normal (reparto espaciado + firma — la vía del grito
		-- de Coren). Se muestra fuera de combate (en combate el cliente
		-- bloquea esos envíos) siempre que el frame lleve una entrada de
		-- jefe: la fije el desplegable del minimapa o cualquier
		-- explicación, la automática incluida (v1 solo lo armaba el
		-- desplegable y tras un pull de mazmorra el dueño nunca veía el
		-- botón).
		local boton = CreateFrame("Button", nil, alertaFrame, "UIPanelButtonTemplate");
		boton:SetSize(96, 22);
		boton:SetPoint("BOTTOMRIGHT", -14, 12);
		boton:SetText(L["BotonAlChat"]);
		boton:SetScript("OnClick", function()
			-- Modo "solo frame": la explicación es privada y no sale sola a
			-- ningún canal, así que el botón la manda a mano al chat del
			-- grupo (raid / grupo de instancia / grupo / say según dónde
			-- esté el dueño). En los demás canales, la ruta normal de
			-- siempre (reclamación + firma).
			if BossesConfig.CANAL == "FRAME" then
				enviarJefeAlGrupo();
			else
				enviarJefeDelFrame();
			end
		end);
		boton:Hide();
		alertaFrame.botonChat = boton;
		-- Botón "editar": abre el editor in-game de explicaciones con el
		-- id del jefe en pantalla (las notas del usuario del dueño, meta
		-- 2026). A diferencia del "al chat" basta con que haya jefe: la
		-- UI del editor no toca APIs bloqueadas en combate (puro
		-- CreateFrame/EditBox) — editar en pelea está permitido y el
		-- botón "probar" del editor respeta las reglas del canal.
		local botonEditar = CreateFrame("Button", nil, alertaFrame, "UIPanelButtonTemplate");
		botonEditar:SetSize(78, 22);
		botonEditar:SetPoint("RIGHT", boton, "LEFT", -8, 0);
		botonEditar:SetText(L["BotonEditar"]);
		botonEditar:SetScript("OnClick", function()
			-- el id en pantalla AUNQUE no esté descrito (el dueño marca un
			-- npc que pasa por allí: la nota se puede crear desde cero)
			local idFrame = frameNpcId or frameIdEditor;
			if idFrame ~= nil then
				abrirEditor(idFrame);
			end
		end);
		botonEditar:Hide();
		alertaFrame.botonEditar = botonEditar;
	end
	if nueva then
		-- Nueva explicación: la primera línea es el nombre del jefe, va a
		-- la cabecera; reinicia el cuerpo para que no se mezclen jefes.
		-- Se registra en el historial (1.0.18) para poder releer con ◀ ▶.
		alertaFrame.nombre:SetText(linea);
		if alertaFrame.nombre.SetHyperlinksEnabled ~= nil then alertaFrame.nombre:SetHyperlinksEnabled(true); end
		alertaFrame.cuerpo:SetText("");
		if alertaFrame.cuerpo.SetHyperlinksEnabled ~= nil then alertaFrame.cuerpo:SetHyperlinksEnabled(true); end
		-- Explicación nueva: el scroll vuelve arriba (el texto se lee desde
		-- el principio, no desde donde quedó la anterior).
		if alertaFrame.scroll ~= nil and alertaFrame.scroll.ScrollBar ~= nil then
			alertaFrame.scroll.ScrollBar:SetValue(0);
		end
		tinsert(historialAlerta, { titulo = linea, lineas = {}, npcId = frameNpcId, guid = frameGuid });
		if #historialAlerta > 20 then tremove(historialAlerta, 1); end
		historialIdx = 0;
		actualizarHistorialBtns();
		-- Captura el GUID del target si es el jefe (para click=target en la cabecera)
		local guidTarget = npcIdFromUnit("target");
		if guidTarget ~= nil and frameNpcId ~= nil and tostring(guidTarget) == tostring(frameNpcId) then
			frameGuid = UnitGUID("target");
		else
			frameGuid = nil;
		end
		-- Estado de colapso inicial (guardado en config)
		alertaColapsado = BossesConfig.alertaColapsado and true or false;
	else
		local cuerpo = alertaFrame.cuerpo;
		local actuales = cuerpo:GetText();
		local fila = linea;
		if string.sub(fila, 1, 2) == "* " then -- viñeta dorada, solo en el frame
			fila = "|cffffd100*|r " .. string.sub(fila, 3);
		end
		cuerpo:SetText(actuales ~= nil and actuales ~= "" and actuales .. "\n" .. fila or fila);
		if cuerpo.SetHyperlinksEnabled ~= nil then cuerpo:SetHyperlinksEnabled(true); end
		-- Acumula la línea en la entrada actual del historial
		local actual = historialAlerta[#historialAlerta];
		if actual ~= nil and historialIdx == 0 then
			tinsert(actual.lineas, fila);
		end
	end
	aplicarColapso();
	aplicarCandado();
	ajustarAlturaAlerta();
	alertaFrame:Show();
	-- Fuera de zona de combate el frame se apaga solo a los 15s: las
	-- vistas frías (menú del minimapa, avisos, explicaciones con el pull
	-- aún lejos) también necesitan salida — antes solo lo apagaba el fin
	-- del combate y una vista fría se quedaba abierta para siempre
	-- (visto al salir de la mazmorra, 2026-10-01). En zona caliente no se
	-- arma: lo hará el PLAYER_REGEN_ENABLED al acabar la pelea.
	--
	-- CON UN ENCOUNTER ACTIVO NO SE ARMA (Nymrissa 2026-10-15): en jefe de
	-- mundo compartido otro jugador tira el pull — explicado a las 19:17:58
	-- con combate=false, el regen del dueño llegó a las 19:18:21, 23 s
	-- después: el auto-apagado disparó ANTES del combate y el frame
	-- desapareció en plena pelea sin que el anti-spam ("ya explicado")
	-- permitiera repintarlo — sin frame y sin botón "al chat". El apagado
	-- post-pelea lo hacen PLAYER_REGEN_ENABLED (pelea propia) y
	-- ENCOUNTER_END (pelea ajena).
	if not enZonaCaliente() and encuentroActivo == nil then
		ocultarAlerta();
	end
end

-- Alto del frame de alerta: marca + cabecera + divisoria + cuerpo + pie.
-- El pie crece cuando el botón "al chat" está visible. El cuerpo vive en un
-- ScrollFrame con tope (alertaMaxAlto, fracción de pantalla; 0 = sin tope).
-- Declarada por adelantado (salidaEnPantalla la llama) y definida aquí, tras
-- el frame.
function ajustarAlturaAlerta()
	if alertaFrame == nil then
		return;
	end
	-- Mientras se arrastra el grip manda el ratón: no se toca el alto.
	if redimensionando then
		-- Si el botón izquierdo ya no está pulsado, el arrastre terminó (el
		-- ratón se soltó fuera del grip y el OnMouseUp no llegó): se limpia
		-- la bandera para no dejar el alto congelado para siempre.
		-- OJO: este cliente NO tiene Frame:IsSizing(), así que el estado se
		-- deduce del botón pulsado.
		if type(IsMouseButtonDown) == "function" and not IsMouseButtonDown("LeftButton") then
			redimensionando = false;
		else
			return;
		end
	end
	local pie = 26; -- el scroll deja 24 px abajo (pie + botones): el pie debe
	-- cubrir ese margen o el texto queda cortado y sale barra sin necesidad
	local conBotones = false;
	if alertaFrame.botonChat ~= nil and alertaFrame.botonChat:IsShown() then
		conBotones = true;
	end
	if alertaFrame.botonEditar ~= nil and alertaFrame.botonEditar:IsShown() then
		conBotones = true;
	end
	if conBotones then
		pie = 44;
	end
	-- Colapsado: solo cabecera (marca + nombre + fila de botones superiores)
	if alertaColapsado then
		alertaFrame:SetHeight(10 + alertaFrame.marca:GetHeight() + 4 + alertaFrame.nombre:GetHeight() + 10);
		return;
	end
	-- Alto del cuerpo con tope del scroll
	local altoCuerpo = alertaFrame.cuerpo:GetHeight();
	local tope = tonumber(BossesConfig.alertaMaxAlto) or 0;
	if tope > 0 then
		local altoPantalla = UIParent:GetHeight() or 1080;
		local maxCuerpo = altoPantalla * tope - (10 + alertaFrame.marca:GetHeight() + 4 + alertaFrame.nombre:GetHeight() + 6 + 1 + 8 + pie);
		if maxCuerpo > 40 and altoCuerpo > maxCuerpo then
			altoCuerpo = maxCuerpo;
		end
	end
	-- Cabecera (marca + nombre + divisoria) + hueco del cuerpo
	local cabecera = 10 + alertaFrame.marca:GetHeight() + 4 + alertaFrame.nombre:GetHeight() + 6 + 1 + 8;
	local altoAuto = cabecera + altoCuerpo + pie;
	-- ALTO MANUAL: si el dueño redimensionó el frame con el grip, su alto se
	-- respeta (si no, el alto se recalculaba con el texto y el resize se
	-- deshacía solo). Con "alto automático" activado vuelve a crecer con el
	-- texto (opción del panel de ajustes).
	local fp = BossesConfig.framePos;
	local altoManual = nil;
	if BossesConfig.alertaAltoAuto == false and type(fp) == "table" and type(fp.h) == "number" then
		altoManual = fp.h;
	end
	if altoManual ~= nil then
		-- Mínimo: cabecera + 40 px de cuerpo + el pie del scroll
		altoManual = math.max(altoManual, cabecera + 40 + pie + 24);
		alertaFrame:SetHeight(altoManual);
	else
		alertaFrame:SetHeight(altoAuto);
	end
	-- El alto del scroll lo fijan sus anclas (arriba la divisoria, abajo el
	-- pie): no se puede SetHeight sobre un frame con dos anclas. Lo que sí
	-- hay que ajustar es el ALTO DEL CONTENIDO (scrollChild) y el rango de
	-- la barra: si el scrollChild mide 1 px, el ScrollFrame recorta el texto
	-- y el cuerpo sale vacío (fallo del 2026-10-31).
	ajustarScrollAlerta();
end

-- Ajusta el scrollChild al alto real del texto y el rango de la barra de
-- scroll. Se llama desde ajustarAlturaAlerta (tras fijar el alto del frame).
function ajustarScrollAlerta()
	if alertaFrame == nil or alertaFrame.scroll == nil or alertaFrame.scrollChild == nil then
		return;
	end
	local scroll = alertaFrame.scroll;
	local child = alertaFrame.scrollChild;
	local cuerpo = alertaFrame.cuerpo;
	if cuerpo == nil then return; end
	local w = math.max(80, anchoTextoAlerta() - 4);
	child:SetWidth(w);
	cuerpo:SetWidth(w);
	local alto = cuerpo:GetHeight() or 0;
	if alto < 1 then alto = 1; end
	child:SetHeight(alto);
	local barra = scroll.ScrollBar;
	if barra ~= nil then
		local visible = scroll:GetHeight() or 1;
		local maxScroll = math.max(0, alto - visible);
		barra:SetMinMaxValues(0, maxScroll);
		barra:SetValueStep(math.max(1, math.floor(visible / 8)));
		local v = barra:GetValue();
		if v > maxScroll then v = maxScroll; end
		if v < 0 then v = 0; end
		barra:SetValue(v);
	end
end

-- Reajuste del texto al redimensionar el frame (llamado por OnSizeChanged y
-- por el grip de resize). Reenvuelve nombre y cuerpo al ancho actual.
function rewragAlertaResize()
	if alertaFrame == nil or alertaFrame.nombre == nil then return; end
	local w = anchoTextoAlerta();
	alertaFrame.nombre:SetWidth(w);
	if alertaFrame.cuerpo ~= nil then
		alertaFrame.cuerpo:SetWidth(math.max(80, w - 4));
	end
	if alertaFrame.scrollChild ~= nil then
		alertaFrame.scrollChild:SetWidth(math.max(80, w - 4));
	end
	-- La barra de cuenta atrás sigue el ancho
	if alertaBarraCuenta ~= nil and alertaBarraCuenta:IsShown() then
		alertaBarraCuenta:SetWidth(alertaFrame:GetWidth() - 12);
	end
	ajustarAlturaAlerta();
end

-- Historial de explicaciones (1.0.18): ◀ ▶ releen las últimas 20 de la
-- sesión. delta = -1 anterior, +1 siguiente (0 = volver a la última).
function navegarHistorial(delta)
	if #historialAlerta == 0 then return; end
	historialIdx = historialIdx + delta;
	if historialIdx < 0 then historialIdx = 0; end
	if historialIdx > #historialAlerta - 1 then historialIdx = #historialAlerta - 1; end
	local h = historialAlerta[#historialAlerta - historialIdx];
	if h == nil or alertaFrame == nil then return; end
	alertaFrame.nombre:SetText(h.titulo);
	local texto = table.concat(h.lineas, "\n");
	alertaFrame.cuerpo:SetText(texto);
	if alertaFrame.nombre.SetHyperlinksEnabled ~= nil then alertaFrame.nombre:SetHyperlinksEnabled(true); end
	if alertaFrame.cuerpo.SetHyperlinksEnabled ~= nil then alertaFrame.cuerpo:SetHyperlinksEnabled(true); end
	frameNpcId = h.npcId;
	frameGuid = h.guid;
	frameIdEditor = h.npcId;
	actualizarBotonChat();
	ajustarAlturaAlerta();
	alertaFrame:Show();
	actualizarHistorialBtns();
end

function actualizarHistorialBtns()
	if alertaFrame == nil then return; end
	if alertaFrame.histPrev ~= nil then
		local ok = historialIdx < #historialAlerta - 1;
		alertaFrame.histPrev:Enable(ok);
		alertaFrame.histPrev:SetAlpha(ok and 1 or 0.3); -- iconos apagados sin historial
	end
	if alertaFrame.histNext ~= nil then
		local ok = historialIdx > 0;
		alertaFrame.histNext:Enable(ok);
		alertaFrame.histNext:SetAlpha(ok and 1 or 0.3);
	end
end

-- Busca el nombre del spell en los packs (para el fallback del tooltip cuando
-- el cliente no resuelve el link). Recorre los textos ya cargados del frame y
-- los packs; devuelve nil si no está. O(n) sobre entradas del pack, solo se
-- llama al pasar el ratón por un link, así que no importa en caliente.
function nombreSpellPack(idSpell)
	if idSpell == nil then return nil; end
	for _, src in ipairs(packSources) do
		for _, tabla in pairs({ src.ES, src.EN, src.data, src.plain }) do
			if type(tabla) == "table" then
				for _, entrada in pairs(tabla) do
					if type(entrada) == "table" then
						for _, linea in ipairs(entrada) do
							local nombre = string.match(tostring(linea), "|Hspell:" .. tostring(idSpell) .. "|h%[([^%]]+)%]|h");
							if nombre ~= nil then return nombre; end
						end
					end
				end
			end
		end
	end
	return nil;
end

-- Visibilidad del botón "al chat": con un jefe en pantalla, fuera de la
-- zona de combate y con un canal que de verdad escriba chat (con "solo
-- frame" no hay adónde enviar — el botón no se muestra). Se reevalúa al
-- fijar el jefe del frame (desplegable o explicación) y al entrar o
-- salir de combate.
-- Sin "local": asigna la declaración adelantada de arriba (navegarHistorial).
function actualizarBotonChat()
	if alertaFrame == nil or alertaFrame.botonChat == nil then
		return;
	end	-- __visible guarda la lógica propia del botón; aplicarColapso decide si se
	-- muestra de verdad según el estado de colapso.
	-- OJO: en el modo "solo frame" el botón SÍ aparece (a petición del
	-- dueño, 2026-10-31): allí la explicación es privada, pero el botón la
	-- manda a mano al chat del grupo. Sin jefe en pantalla no hay nada que
	-- mandar, y en zona caliente el cliente bloquea el envío.
	local visible = frameNpcId ~= nil and not enZonaCaliente();
	alertaFrame.botonChat.__visible = visible;
	if visible and not alertaColapsado then
		alertaFrame.botonChat:Show();
	else
		alertaFrame.botonChat:Hide();
	end
	-- El botón del modo "solo frame" anuncia a dónde va. El destino se
	-- calcula al pasar el ratón (el dueño puede cambiar de grupo o de
	-- instancia con el frame abierto).
	if BossesConfig.CANAL == "FRAME" then
		alertaFrame.botonChat:SetText(L["BotonAlGrupo"]);
		alertaFrame.botonChat:SetScript("OnEnter", function(self)
			if GameTooltip ~= nil then
				GameTooltip:SetOwner(self, "ANCHOR_BOTTOM");
				GameTooltip:SetText(string.format(L["EnviaAlCanal"] or "To the %s chat", "|cff44ff44" .. autoChannel() .. "|r"), 1, 1, 1);
				GameTooltip:Show();
			end
		end);
		alertaFrame.botonChat:SetScript("OnLeave", function()
			if GameTooltip ~= nil then GameTooltip:Hide(); end
		end);
	else
		alertaFrame.botonChat:SetText(L["BotonAlChat"]);
		alertaFrame.botonChat:SetScript("OnEnter", nil);
		alertaFrame.botonChat:SetScript("OnLeave", nil);
	end
	-- "editar": basta con un id en pantalla, descrito o no (el aviso de
	-- "no descrito" conoce su npc id y debe permitir crear la nota);
	-- incluso en pelea: el editor no toca APIs bloqueadas en combate
	if alertaFrame.botonEditar ~= nil then
		alertaFrame.botonEditar.__visible = (frameNpcId ~= nil or frameIdEditor ~= nil);
		if alertaFrame.botonEditar.__visible and not alertaColapsado then
			alertaFrame.botonEditar:Show();
		else
			alertaFrame.botonEditar:Hide();
		end
	end
	ajustarAlturaAlerta();
end

-- Vista de aviso al frame ("no descrito"): lo que queda en pantalla ya
-- no es una entrada de jefe — soltar el jefe activo para que el botón
-- "al chat" no reenvíe al jefe anterior con otra cosa delante.
local function limpiarJefeFrame()
	frameNpcId = nil;
	frameGuid = nil;
	actualizarBotonChat();
end

-- Envía la entrada completa y, si la emisión es compartida, añade la
-- firma de cortesía al final.
--
-- EL FRAME DEL DUEÑO, SIEMPRE COMPLETO (decisión del propietario,
-- 2026-10-01, tras Coren): la microcarrera del pull partía la
-- explicación — mitad al chat, mitad al frame. Ahora la copia del dueño
-- se llena ENTERA aquí, salga o no algo al chat; el chat reparte solo
-- lo que la zona permita (nada en caliente, espaciado en frío) y las
-- líneas que el pull caza se pierden para el grupo: el frame ya las
-- llevaba. La antigua lineaEnCombate quedó RETIRADA con este modelo.
local function enviarEntrada(entrada, npcId)
	for i, c in ipairs(entrada) do
		salidaEnPantalla(c, i == 1); -- la primera línea es el nombre: cabecera
	end

	-- El frame acaba de recibir la entrada completa: recordar de qué
	-- jefe es, para el botón "al chat" y el botón "editar" — también en
	-- las explicaciones automáticas (v1 solo lo armaba el desplegable y
	-- tras un pull de mazmorra el dueño nunca veía el botón). En zona
	-- caliente el botón sigue oculto; al salir del combate lo evalúa el
	-- PLAYER_REGEN_ENABLED (que ya puso ultimoCombate a 0) y la ventana
	-- de 15s del frame da margen para reenviar a mano. La decisión
	-- "nada automático tras morir el jefe" queda intacta: esto es bajo
	-- demanda del dueño.
	frameNpcId = npcId;
	frameIdEditor = npcId; -- el editor también sabe de qué jefe se trata
	-- 1.0.18: si el target actual es ese jefe, guardamos su GUID para que el
	-- click en la cabecera del frame haga target (pcall TargetUnit).
	local guidTarget = nil;
	if npcIdFromUnit("target") ~= nil and tostring(npcIdFromUnit("target")) == tostring(npcId) then
		guidTarget = UnitGUID("target");
		if guidTarget ~= nil and not esSecreto(guidTarget) then
			frameGuid = guidTarget;
		else
			frameGuid = nil;
		end
	else
		frameGuid = nil;
	end
	actualizarBotonChat();

	if enZonaCaliente() or BossesConfig.CANAL == "FRAME" then
		-- En combate (o en los pocos segundos que lo rodean) el cliente
		-- bloquea SendChatMessage a grupo de forma fiable (4/4 jefes
		-- perdidos el 2026-09-30, en todos los contextos) y soltar el
		-- paquete tras la muerte tampoco sirve (decisión del
		-- propietario, 2026-10-01): nada intenta el canal a mitad de
		-- pelea. Con el canal "solo frame" lo mismo SIEMPRE: ni chat ni
		-- retardos. La firma es solo para el grupo: en caliente no se
		-- emite (y al frame no va).
		-- Salida solo-local: la copia inmediata por chat del dueño (su
		-- lectura nunca se bloquea); el frame ya la lleva completa.
		if not salidaCompartida() and BossesConfig.CANAL ~= "FRAME" then
			for _, c in ipairs(entrada) do
				escribir(localizarEnlaces(c));
			end
		end
		return;
	end

	-- Fuera de la zona de combate la distribución es espaciada por
	-- C_Timer (primera inmediata, resto cada 0.25s): la ráfaga síncrona
	-- chocaba con el throttle silencioso del chat. Si el combate muerde
	-- mientras tanto, las líneas restantes no salen: el grupo no las
	-- habría recibido de todos modos (bloqueo) y el frame ya lleva la
	-- explicación COMPLETA desde el lanzamiento.
	for i, c in ipairs(entrada) do
		if i == 1 then
			salida(c);
		else
			local linea = c;
			C_Timer.After((i - 1) * 0.25, function()
				if not enZonaCaliente() then
					salida(linea);
				end
			end);
		end
	end

	-- La firma cierra el reparto frío con el mismo espaciado. Es solo
	-- para el grupo: si para entonces la zona ya está caliente, se
	-- pierde (al frame del dueño no va nunca).
	if BossesConfig.FIRMA and salidaCompartida() then
		C_Timer.After(#entrada * 0.25 + 0.25, function()
			if not enZonaCaliente() then
				salida(textoCortesia(), true);
			end
		end);
	end
end

-- Anti-spam de grupo: si hay varios jugadores con el addon, el primero
-- que llega explica y emite una reclamación por el canal de addons;
-- los demás la oyen y cancelan la suya. El retardo aleatorio (0-2s)
-- reparte quién gana. Solo aplica a los lanzamientos automáticos; los
-- clicks manuales son decisión del jugador y van sin retardo.
local function canalDeGrupo()
	if IsInRaid() then
		return IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT" or "RAID";
	elseif IsInGroup() then
		return IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT" or "PARTY";
	end
	return nil;
end

local function programarEnvio(clave, explicar)
	-- Canal "solo frame": la explicación es privada del dueño. No se
	-- reclama al grupo ni se atienden reclamaciones ajenas — nuestro
	-- frame no compite con lo que otro jugador saque al chat del grupo.
	if BossesConfig.CANAL == "FRAME" then
		debugLog("envío", "solo frame", clave);
		explicar();
		return;
	end

	local grupo = canalDeGrupo();
	if grupo == nil then
		debugLog("envío", "sin grupo", clave);
		explicar();
		return;
	end

	if reclamados[clave] ~= nil and (GetTime() - reclamados[clave]) < 5 then
		debugLog("envío cancelado", "reclamación ajena", clave);
		return; -- otro jugador lo acaba de explicar
	end

	local timer = pendientes[clave];
	if timer ~= nil then
		timer:Cancel();
	end

	if InCombatLockdown() then
		-- Chat lockdown de Midnight: SendChatMessage desde C_Timer durante
		-- el combate se bloquea (ADDON_ACTION_BLOCKED). Explicar YA, en el
		-- contexto del manejador del evento, que sí puede enviar. Coste:
		-- sin retardo aleatorio no hay reparto anti-spam entre jugadores.
		pendientes[clave] = nil;
		debugLog("envío inmediato", "en combate", clave);
		pcall(SendAddonMessage, "Bosses", "enc|" .. tostring(clave), grupo);
		explicar();
		return;
	end

	pendientes[clave] = C_Timer.After(math.random() * 2, function()
		pendientes[clave] = nil;
		-- La reclamación es para los DEMÁS (el emisor no se oye su propio
		-- CHAT_MSG_ADDON). NO la anotamos en reclamados: si este envío se
		-- aborta (grito de derrota) bloquearía nuestra propia reprogramación.
		pcall(SendAddonMessage, "Bosses", "enc|" .. tostring(clave), grupo);
		debugLog("envío diferido", clave, "combate=" .. tostring(InCombatLockdown()));
		-- Si el combate muerde mientras tanto, enZonaCaliente() lo detecta
		-- (la huella cubre la gracia de los últimos 5s con señal real,
		-- aunque el lockdown palpite a mitad de pelea) y la línea va a la
		-- cola + al frame de alerta en vez de perderse.
		explicar();
	end);
end

-- Packs de datos --------------------------------------------------------
-- Un pack es un addon con datos (carpeta Bosses_<Zona>/ con .toc propio
-- dentro del mismo zip, o addon externo de la comunidad). Los packs NO
-- comparten el namespace del core: registran sus entradas con
-- BossesAPI.register( nombre, tabla ). Formato de datos idéntico al de
-- localization.*.lua:  Bosses["<NPC_ID>"] = { "Nombre", "* línea", ... }.
--
-- Formato multilenguaje (recomendado):  { ES = {...}, EN = {...} }  más las
-- subtablas opcionales FR/DE/RU/PT/ZH/KO (ficheros _fr/_de/... de los packs;
-- FR/DE los crea el editor web y RU/PT/ZH/KO el botón «➕ añadir idioma»);
-- el core elige la activa según BossesConfig.IDIOMA (AUTO/ES/EN/FR/DE/RU/
-- PT/ZH/KO) con cascada idioma → EN → ES. Formato plano (legacy): una única
-- tabla, tal cual, sin cambiar de idioma.

BossesAPI = BossesAPI or {};

local packSources = {};

-- Índice global de zonas (instanceID → { nombre, jefes }): se reconstruye
-- en activarPacks con los índices de todos los packs; lo usa el radar de
-- instancia (desplegable del minimapa).
local zonasActuales = {};

-- Idiomas válidos de las tablas multilenguaje de un pack (ES/EN obligatorios
-- de facto; FR/DE clásicos; RU/PT/ZH/KO los añade el editor web — el pack
-- solo lista en el .toc los COMPLETOS, regla de la casa).
local CLAVES_IDIOMA = { ES = true, EN = true, FR = true, DE = true, RU = true, PT = true, ZH = true, KO = true };
local ORDEN_IDIOMA = { "ES", "EN", "FR", "DE", "RU", "PT", "ZH", "KO" }; -- depuración legible

-- Cuenta las entradas (subtablas) de un pack, para el registro de depuración
local function contarEntradas(t)
	if type(t) ~= "table" then
		return 0;
	end

	local n = 0;
	for _, v in pairs(t) do
		if type(v) == "table" then
			n = n + 1;
		end
	end

	return n;
end

-- Cuenta las claves (los ENC valen cadenas, no subtablas)
local function contarClaves(t)
	if type(t) ~= "table" then
		return 0;
	end

	local n = 0;
	for _ in pairs(t) do
		n = n + 1;
	end

	return n;
end

-- Índice nombre-normalizado → entrada, para el fallback cuando el GUID
-- de la unidad es un valor secreto de Midnight. Se construye perezosamente
-- y se invalida al reactivar los packs.
local indiceNombres = nil;

-- Nombres (normalizados) de los NPC que alguna tabla ENC de los packs
-- cubre: su explicación la entregará el ENCOUNTER_START del pull real.
-- Perezooso (se construye al primer grito consultado y se invalida al
-- reactivar los packs).
local nombresEnc = nil;

-- (Re)activa los packs: elige la tabla activa de cada pack multilenguaje
-- según BossesConfig.IDIOMA. Requiere BossesConfig cargado; con nil usa AUTO.

-- Tabla de idioma de un pack con cascada: la pedida si existe y, si no,
-- EN → ES (el fallback inglés lo cubre todo; ES queda de respaldo histórico).
-- AUTO sigue el idioma del cliente con MAPA_LOCALES (arriba).
local function tablaIdiomaDePack(src, idioma)
	if idioma == "AUTO" then
		local loc = GetLocale();
		-- MAPA_LOCALES[nil] es nil → "EN"; cubre también GetLocale secreto.
		idioma = MAPA_LOCALES[loc] or "EN";
	end
	if type(src[idioma]) == "table" then return src[idioma]; end
	if type(src.EN) == "table" then return src.EN; end
	if type(src.ES) == "table" then return src.ES; end
	return nil;
end

local function activarPacks()
	local idioma = (BossesConfig ~= nil and BossesConfig.IDIOMA) or "AUTO";

	for _, src in ipairs(packSources) do
		-- Multilenguaje: ES/EN siempre; FR/DE/RU/PT/ZH/KO opcionales (editor
		-- web, ficheros _fr/_de/_ru/...) y los salta el core si el pack no
		-- los trae.
		local multilenguaje = false;
		for clave in pairs(CLAVES_IDIOMA) do
			if src[clave] ~= nil then multilenguaje = true; break end
		end
		if multilenguaje then
			src.data = tablaIdiomaDePack(src, idioma);
		else
			-- Formato plano (legacy)
			src.data = src.plain;
		end
	end

	-- Índice global de zonas (instanceID → jefes del pack): lo usa el
	-- radar de instancia (desplegable del minimapa)
	zonasActuales = {};
	for _, src in ipairs(packSources) do
		if src.zonas ~= nil then
			for idZona, z in pairs(src.zonas) do
				zonasActuales[idZona] = z;
			end
		end
	end

	indiceNombres = nil;
	nombresEnc = nil;
end

function BossesAPI.register(name, data)
	if type(name) ~= "string" or type(data) ~= "table" then
		return false;
	end

	-- Detecta el formato: multilenguaje si trae subtablas de idioma (ES/EN
	-- siempre; FR/DE/RU/PT/ZH/KO opcionales, del editor web)
	local src = { name = name };

	local multilenguaje = false;
	for clave in pairs(CLAVES_IDIOMA) do
		if type(data[clave]) == "table" then multilenguaje = true; break end
	end

	if multilenguaje then
		for clave in pairs(CLAVES_IDIOMA) do
			src[clave] = (type(data[clave]) == "table") and data[clave] or nil;
		end
	else
		src.plain = data;
	end

	-- Índice opcional de encuentros (encounterID → lista de NPC ids;
	-- generado con npm run comparar-dbm, estilo DBM)
	src.enc = (type(data.ENC) == "table") and data.ENC or nil;

	-- Índice opcional de zonas (instanceID → jefes del pack): alimenta el
	-- radar de instancia y el desplegable del minimapa
	src.zonas = (type(data.ZON) == "table") and data.ZON or nil;

	-- Si un pack con el mismo nombre ya estaba registrado se reemplaza
	local replaced = false;
	for i, old in ipairs(packSources) do
		if old.name == name then
			packSources[i] = src;
			replaced = true;
			break;
		end
	end
	if not replaced then
		table.insert(packSources, src);
	end

	-- Depuración: recuento por idioma en orden fijo (los nil se omiten; una
	-- sola cadena, sin depender de unpack/table.unpack entre flavors)
	local resumen = {};
	for _, clave in ipairs(ORDEN_IDIOMA) do
		if src[clave] ~= nil then
			table.insert(resumen, clave .. "=" .. contarEntradas(src[clave]));
		end
	end
	debugLog("pack", name, table.concat(resumen, " "), "ENC=" .. contarClaves(src.enc), "ZON=" .. contarClaves(src.zonas), "reemplazo=" .. tostring(replaced));
	activarPacks();
	return true;
end

function BossesAPI.list()
	local names = {};
	for _, src in ipairs(packSources) do
		if src.data ~= nil then
			table.insert(names, src.name);
		end
	end
	return names;
end

-- Prioridad de fuentes: notas del usuario > packs (el último registrado
-- gana, el orden de carga es alfabético por carpeta) > base del addon
local function buscarEntrada(nbos)
	local entrada = BossesConfig[nbos];
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

	entrada = Bosses[nbos];
	if entrada ~= nil and entrada ~= nbos then
		return entrada;
	end

	return nil;
end

-- Función principal para la explicación de un bos
local function explica(nbos)
	if nbos == nil or nbos == "" then
		return;
	end

	local entrada = buscarEntrada(nbos);

	if entrada ~= nil then
		enviarEntrada(entrada, nbos);
	else
		debugLog("sin entrada (id)", tostring(nbos));
		-- El frame del dueño lleva SIEMPRE la copia (casa: "el frame del
		-- dueño, siempre completo") y en este caso además EDITABLE: el
		-- aviso conoce su id, así que el botón "editar" aparece y se puede
		-- crear la nota desde cero (petición del dueño, 2026-10-31).
		-- Antes esto solo pasaba en combate o en el modo "solo frame": en
		-- los demás canales salía solo por el chat local y el frame ni se
		-- enteraba.
		limpiarJefeFrame();
		frameIdEditor = nbos; -- el aviso conoce su id: el botón "editar" debe poder crear la nota
		salidaEnPantalla(tostring(nbos), true); -- cabecera del frame con la id del NPC
		salidaEnPantalla(L[": This NPC is not described."]);
		actualizarBotonChat(); -- con la id ya puesta: el botón "editar" aparece
		if BossesConfig.CANAL ~= "FRAME" then
			dsp(nbos .. L[": This NPC is not described."]);
		end
	end
end

-- Normaliza un nombre de jefe para el índice por nombre: quita los
-- apellidos entre <...> y el sufijo HERO de la base histórica, colapsa
-- espacios y pasa a minúsculas. La comparación es mejor esfuerzo: si el
-- cliente nombra la criatura distinto a como está en la base, no matchea.
local function normalizarNombre(nombre)
	if type(nombre) ~= "string" then
		return nil;
	end

	local s = nombre:gsub("<[^>]*>", ""); -- quita los apellidos <...>
	s = s:gsub("%b()", " ");           -- quita los paréntesis aclaratorios: (End Time), (Lair), (10)...
	s = s:gsub("%s+HERO%s*$", "");     -- quita el sufijo HERO del histórico
	s = s:gsub("%s+", " ");            -- colapsa espacios
	s = s:match("^%s*(.-)%s*$");       -- trim

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

	local function add(tabla)
		for id, entrada in pairs(tabla) do
			if type(entrada) == "table" and type(entrada[1]) == "string" then
				local clave = normalizarNombre(entrada[1]);
				if clave ~= nil and clave ~= "" and indiceNombres[clave] == nil then
					indiceNombres[clave] = { entrada = entrada, id = tostring(id) };
				end
			end
		end
	end

	add(Bosses);

	local localeEs = (GetLocale() == "esES" or GetLocale() == "esMX");

	for _, src in ipairs(packSources) do
		if src.data ~= nil then
			add(src.data);
		end
		if src.ES ~= nil and src.EN ~= nil then
			if localeEs then
				add(src.EN); -- el otro idioma primero
				add(src.ES); -- el del cliente gana en colisiones
			else
				add(src.ES);
				add(src.EN);
			end
		end
	end
end

-- Asegura los índices de nombres a la primera consulta (y los precalienta en
-- ADDON_LOADED para que el coste no caiga en mitad del primer combate).
-- construirCoberturaEnc va con declaración adelantada (línea siguiente) porque
-- se referencia aquí y se asigna después en el fuente.
local construirCoberturaEnc;
local function asegurarIndice()
	if indiceNombres == nil then
		construirIndice();
	end
	if nombresEnc == nil then
		construirCoberturaEnc();
	end
end

-- Cobertura ENC por nombre (filtro de gritos de escena: si el hablante está
-- cubierto por una tabla ENC, su explicación llega con el ENCOUNTER_START del
-- pull real). Se asigna sobre la declaración adelantada de arriba.
construirCoberturaEnc = function()
	nombresEnc = {};

	local function add(tabla, id)
		if tabla == nil then
			return;
		end
		local entrada = tabla[id];
		if type(entrada) == "table" and type(entrada[1]) == "string" then
			local clave = normalizarNombre(entrada[1]);
			if clave ~= nil and clave ~= "" then
				nombresEnc[clave] = id;
			end
		end
	end

	for _, src in ipairs(packSources) do
		if src.enc ~= nil then
			for _, idsCsv in pairs(src.enc) do
				for npcId in string.gmatch(tostring(idsCsv), "(%d+)") do
					add(src.ES, npcId);
					add(src.EN, npcId);
					add(src.data, npcId);
					add(src.plain, npcId);
				end
			end
		end
	end
end

-- Helper único para el chequeo de secretos de Midnight: true si el valor ES
-- secreto (o el cliente no tiene issecretvalue → false).
esSecreto = function(v)
	return issecretvalue ~= nil and issecretvalue(v);
end

-- Anti-duplicado multi-vía: el mismo jefe puede llegar por el grito de
-- entrada, ENCOUNTER_START, IEEU... Cada vía marca las claves que conoce
-- (nombre del encuentro, nombre de la entrada, npc id); si cualquier
-- clave ya está marcada, la explicación no se repite. Se limpia al
-- terminar el encuentro (ENCOUNTER_END / PLAYER_REGEN_ENABLED).
local function yaExplicadoAlguno(claves)
	for _, c in ipairs(claves) do
		if explicadosRecientes[c] then
			return true;
		end
	end

	return false;
end

local function marcarExplicados(claves)
	for _, c in ipairs(claves) do
		if c ~= nil then
			explicadosRecientes[c] = true;
		end
	end
end

-- Claves de un lanzamiento automático a partir de lo que se conoce en el
-- punto de disparo: nombre del encuentro, entrada resuelta y npc id
local function clavesDeExplicacion(nombreEncuentro, entrada, id)
	local claves = {};

	if nombreEncuentro ~= nil and not esSecreto(nombreEncuentro) then
		local nEnc = normalizarNombre(nombreEncuentro);
		if nEnc ~= nil and nEnc ~= "" then
			table.insert(claves, "n:" .. nEnc);
		end
	end

	if entrada ~= nil and type(entrada[1]) == "string" then
		local nEnt = normalizarNombre(entrada[1]);
		if nEnt ~= nil and nEnt ~= "" then
			table.insert(claves, "n:" .. nEnt);
		end
	end

	if id ~= nil then
		table.insert(claves, "id:" .. tostring(id));
	end

	return claves;
end

-- NPC ids de las unidades boss1..bossN (GUID vivo, sin depender del
-- diario). Midnight puede entregar GUIDs/nombres secretos: npcIdFromUnit
-- los filtra sin contaminar la ejecución.
local function idsDeUnidadesJefe()
	local unidades = {};
	local vistos = {};

	for i = 1, 10 do
		local unidad = "boss" .. i;
		if UnitExists(unidad) then
			local id = npcIdFromUnit(unidad);
			if id ~= nil and vistos[id] == nil then
				vistos[id] = true;
				local nombre = GetUnitName(unidad);
				if nombre ~= nil and esSecreto(nombre) then
					nombre = nil;
				end
				table.insert(unidades, { id = id, nombre = nombre });
			end
		end
	end

	return unidades;
end

-- Candidatos NPC id de un encuentro, por orden de confianza:
--   1) Tabla ENC del pack (curada, generada con npm run comparar-dbm)
--   2) Unidades boss1..bossN (GUID vivo)
--   3) Criaturas del diario (EJ_GetCreatureInfo, nombres del cliente)
--   4) Índice de nombres por el nombre del encuentro
-- Es la generalización del sistema de DBM: encounterID → datos estáticos,
-- con los GUIDs de las unidades y el diario como respaldo.
local function candidatosDeEncuentro(encounterID, nombreEncuentro)
	local lista = {};
	local vistos = {};

	local function add(id, fuente)
		if id ~= nil and id ~= "" and vistos[id] == nil then
			vistos[id] = true;
			table.insert(lista, { id = id, fuente = fuente });
		end
	end

	-- 1) Tablas ENC de los packs (el último registrado gana)
	for i = #packSources, 1, -1 do
		local enc = packSources[i].enc;
		local ids = (enc ~= nil) and enc[tostring(encounterID)] or nil;
		if ids ~= nil then
			for id in string.gmatch(ids, "[^,%s]+") do
				add(id, "ENC:" .. tostring(packSources[i].name));
			end
		end
	end

	-- 2) Unidades boss1..bossN
	for _, u in ipairs(idsDeUnidadesJefe()) do
		add(u.id, "boss:" .. tostring(u.nombre or "?"));
	end

	-- 3) Criaturas del diario del encuentro
	if EJ_GetCreatureInfo ~= nil then
		local j = 1;
		while true do
			local nombreCriatura, _, idCriatura = EJ_GetCreatureInfo(j, encounterID);
			if nombreCriatura == nil then
				break;
			end
			add(tostring(idCriatura), "EJ:" .. tostring(nombreCriatura));
			j = j + 1;
		end
	end

	-- 4) Índice de nombres por el nombre del encuentro
	if nombreEncuentro ~= nil and not esSecreto(nombreEncuentro) then
		asegurarIndice();
		local registro = indiceNombres[normalizarNombre(nombreEncuentro)];
		if registro ~= nil then
			add(registro.id, "nombre:" .. normalizarNombre(nombreEncuentro));
		end
	end

	return lista;
end

-- Primera entrada existente entre los candidatos
local function entradaDeCandidatos(candidatos)
	for _, c in ipairs(candidatos) do
		local entrada = buscarEntrada(c.id);
		if entrada ~= nil then
			return entrada, c;
		end
	end

	return nil;
end

-- Fallback cuando el GUID es un secreto de Midnight: busca la entrada
-- por el nombre del NPC. Si no está en la base, avisa igual que por id.
local explicarPorEJ;              -- declaración adelantada (se define más abajo)
local explicarPorEncuentroActivo; -- declaración adelantada (se define más abajo)

local function explicaPorNombre(nombre)
	-- Defensa: un nombre secreto de Midnight no se puede convertir ni
	-- comparar; la ruta por click lo maneja aparte.
	if nombre == nil or esSecreto(nombre) then
		return;
	end

	asegurarIndice();

	local registro = indiceNombres[normalizarNombre(nombre)];

	if registro ~= nil then
		-- Re-resuelve por el npc id del registro: así el texto sale en el
		-- idioma configurado (IDIOMA) aunque el match del nombre venga de
		-- otra subtabla de idioma.
		local entrada = buscarEntrada(registro.id);
		if entrada == nil then
			entrada = registro.entrada;
		end
		debugLog("explicado (nombre)", aTexto(nombre), registro.id);
		enviarEntrada(entrada, registro.id);
		return;
	end

	-- Última vía: el diario de la instancia actual mapea el nombre
	-- localizado de cada criatura a su NPC id. Así identificamos jefes
	-- cuyos nombres esES no coinciden con los de nuestros datos
	-- (p. ej. "Comandante Kroluk" ↔ "Commander Kroluk").
	if explicarPorEJ(nombre) then
		return;
	end

	-- Y con el id del encuentro activo (ENCOUNTER_START), si lo hay
	if explicarPorEncuentroActivo(nombre) then
		return;
	end

	debugLog("sin entrada (nombre)", aTexto(nombre));
	-- Sin id no hay botón "editar" (el editor abre por id de NPC), pero el
	-- aviso sale igualmente en el frame del dueño (casa: el frame del
	-- dueño, siempre completo).
	limpiarJefeFrame();
	frameIdEditor = nil; -- este aviso no tiene id: el editor no puede abrirlo
	salidaEnPantalla(nombre, true); -- cabecera del frame con el nombre del NPC
	salidaEnPantalla(L[": This NPC is not described."]);
	actualizarBotonChat();
	if BossesConfig.CANAL ~= "FRAME" then
		dsp(nombre .. L[": This NPC is not described."]);
	end
end

-- Modo Automático con anti-duplicado multi-vía: el mismo jefe puede llegar
-- por varias vías (gritos del boss + ENCOUNTER_START + IEEU) y solo la
-- primera explicación se lanza.
local function autoExplicar(nombreEncuentro)
	if nombreEncuentro == nil then
		return;
	end

	-- Resuelve por el índice de nombres para marcar también las claves
	-- canónicas de la entrada (así deduplica contra ENCOUNTER_START/IEEU)
	asegurarIndice();
	local registro = indiceNombres[normalizarNombre(nombreEncuentro)];
	local entrada = nil;
	if registro ~= nil then
		entrada = buscarEntrada(registro.id);
		if entrada == nil then
			entrada = registro.entrada;
		end
	end

	local claves = clavesDeExplicacion(nombreEncuentro, entrada, registro ~= nil and registro.id or nil);
	if yaExplicadoAlguno(claves) then
		debugLog("ya explicado", aTexto(nombreEncuentro));
		return;
	end

	marcarExplicados(claves);
	explicaPorNombre(nombreEncuentro);
end

-- Resuelve nombre (del cliente) → NPC id → entrada usando el diario de
-- la instancia en la que estemos. Solo funciona dentro de instancias con
-- datos de diario; devuelve true si escribió la explicación.
explicarPorEJ = function(nombreCliente)
	local instanceID = (EJ_GetCurrentInstance ~= nil) and EJ_GetCurrentInstance() or nil;
	if instanceID == nil then
		return false;
	end

	local i = 1;
	while i <= 40 do
		local nombreEncuentro, _, idEncuentro = EJ_GetEncounterInfoByIndex(i, instanceID);
		if nombreEncuentro == nil then
			break;
		end
		local j = 1;
		while true do
			local nombreCriatura, _, idCriatura = EJ_GetCreatureInfo(j, idEncuentro);
			if nombreCriatura == nil then
				break;
			end
			if nombreCriatura == nombreCliente then
				local id = idCriatura and tostring(idCriatura);
				if id ~= nil and id ~= "" then
					local entrada = buscarEntrada(id);
					if entrada ~= nil then
						debugLog("explicado (EJ)", id, tostring(nombreCliente));
						enviarEntrada(entrada, id);
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
explicarPorEncuentroActivo = function(nombreUtilizable)
	if encuentroActivoID == nil then
		return false;
	end

	-- Match por nombre entre las criaturas del diario: tiene prioridad
	-- porque desempata los encuentros de varias criaturas
	if nombreUtilizable ~= nil and EJ_GetCreatureInfo ~= nil then
		local j = 1;
		while true do
			local nombreCriatura, _, idCriatura = EJ_GetCreatureInfo(j, encuentroActivoID);
			if nombreCriatura == nil then
				break;
			end
			if nombreCriatura == nombreUtilizable then
				local id = idCriatura and tostring(idCriatura);
				if id ~= nil and id ~= "" then
					local entrada = buscarEntrada(id);
					if entrada ~= nil then
						enviarEntrada(entrada, id);
						return true;
					end
				end
			end
			j = j + 1;
		end
	end

	-- El resto de fuentes (ENC del pack, unidades boss, diario completo):
	-- la primera entrada existente gana
	local entrada, elegido = entradaDeCandidatos(candidatosDeEncuentro(encuentroActivoID, nil));
	if entrada ~= nil then
		enviarEntrada(entrada, elegido.id);
		return true;
	end

	return false;
end

-- Lanzamiento automático de un encuentro (ENCOUNTER_START / IEEU):
-- resuelve el npc id del jefe entre las fuentes de candidatosDeEncuentro
-- y explica la primera entrada que exista. Sin entrada, reintenta tarde
-- (las unidades boss pueden poblarse después) y deja huella en el
-- registro de depuración: ahí quedan los jefes sin explicación del pack.
-- claveGrupo es la clave del anti-spam entre jugadores (se mantiene por
-- nombre para ser compatible con clientes anteriores).
local function explicarEncuentroAutomatico(encounterID, nombreEncuentro, claveGrupo)
	local function intento()
		local candidatos = candidatosDeEncuentro(encounterID, nombreEncuentro);
		local entrada, elegido = entradaDeCandidatos(candidatos);
		if entrada == nil then
			local detalle = {};
			for _, c in ipairs(candidatos) do
				table.insert(detalle, c.id .. "(" .. c.fuente .. ")");
			end
			debugLog("sin entrada", "enc=" .. tostring(encounterID), #detalle > 0 and table.concat(detalle, " ") or "sin candidatos");
			return nil;
		end

		local claves = clavesDeExplicacion(nombreEncuentro, entrada, elegido.id);
		if yaExplicadoAlguno(claves) then
			debugLog("ya explicado", "enc=" .. tostring(encounterID), elegido.id);
			return nil; -- sin reenvío
		end

		marcarExplicados(claves);
		debugLog("explicando", "enc=" .. tostring(encounterID), elegido.id, "(" .. elegido.fuente .. ")");
		return elegido.id;
	end

	local id = intento();
	if id == nil then
		-- Reintento tardío: las unidades boss1..N a veces aparecen después
		C_Timer.After(2, function()
			if tostring(encuentroActivoID) ~= tostring(encounterID) then
				return; -- el encuentro cambió mientras tanto
			end
			local id2 = intento();
			if id2 ~= nil then
				-- Este reintento corre DENTRO de un timer: si hay zona de
				-- combate al explicar, la entrada entera cae al frame del
				-- dueño (al grupo no va nada en plena pelea).
				programarEnvio(claveGrupo, function()
					local entrada = buscarEntrada(id2);
					if entrada ~= nil then
						enviarEntrada(entrada, id2);
					end
				end);
			else
				-- Sin entrada confirmada tras el reintento: el dueño se
				-- entera UNA vez por pull (antes quedaba mudo y solo
				-- quedaba la huella del registro — visto con el primer
				-- jefe del Valle Cegador, 2026-10-01). Al grupo no va
				-- nada: esto es diagnóstico nuestro. La clave propia
				-- vive en explicadosRecientes y se limpia al fin del
				-- encuentro igual que las demás (la redundancia IEEU
				-- puede llegar aquí dos veces por el mismo pull).
				local claveAviso = "e:" .. tostring(encounterID);
				if not explicadosRecientes[claveAviso] then
					explicadosRecientes[claveAviso] = true;
					local rotulo = aTexto(nombreEncuentro);
					if rotulo == "" or rotulo == "<secreto>" then
						rotulo = "enc=" .. tostring(encounterID);
					end
					debugLog("aviso sin entrada", "enc=" .. tostring(encounterID), "avisado al dueño");
					-- Igual que en el resto de avisos: el frame del dueño
					-- lleva siempre la copia y, en los demás canales,
					-- además, la línea del chat local.
					limpiarJefeFrame();
					frameIdEditor = nil; -- sin id: el editor no puede abrirlo
					salidaEnPantalla(rotulo, true);
					salidaEnPantalla(L[": This NPC is not described."]);
					actualizarBotonChat();
					if BossesConfig.CANAL ~= "FRAME" then
						dsp(rotulo .. L[": This NPC is not described."]);
					end
				end
			end
		end);
		return;
	end

	programarEnvio(claveGrupo, function()
		local entrada = buscarEntrada(id);
		if entrada ~= nil then
			enviarEntrada(entrada, id);
		end
	end);
end

-- Resumen de los jefes de la instancia actual vía diario (EJ): para el
-- pre-pull dentro de instancia, cuando ni el GUID ni el nombre del
-- objetivo son utilizables. Sale siempre por local (es una referencia,
-- no un anuncio al grupo).
local function explicarInstancia()
	asegurarIndice();

	local instanceID = (EJ_GetCurrentInstance ~= nil) and EJ_GetCurrentInstance() or nil;
	if instanceID == nil then
		dsp("Diario: sin instancia EJ dentro de la instancia actual");
		return false;
	end

	local explicados = 0;
	local nombresDiario = {};
	local i = 1;
	while i <= 40 do
		local nombre = EJ_GetEncounterInfoByIndex(i, instanceID);
		if nombre == nil then
			break;
		end
		table.insert(nombresDiario, nombre);
		local registro = indiceNombres[normalizarNombre(nombre)];
		if registro ~= nil then
			local entrada = buscarEntrada(registro.id);
			if entrada == nil then
				entrada = registro.entrada;
			end
			for _, c in pairs(entrada) do
				escribir(c);
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
		debugLog("diario sin entradas", tostring(instanceID), table.concat(nombresDiario, ", "));
		dsp("Diario (EJ " .. instanceID .. "): " .. table.concat(nombresDiario, ", ") .. " — ninguno en la base");
	else
		dsp("Diario (EJ " .. instanceID .. "): sin encuentros listados");
	end

	return false;
end

-- Explica la unidad marcada: primero por NPC id (GUID); si el GUID es un
-- valor secreto de Midnight, fallback por el nombre del NPC. La ruta por
-- click en combate no puede enviar al grupo (ADDON_ACTION_BLOCKED) y sale
-- por local.
local function explicaTarget(unit)
	forzarLocal = InCombatLockdown();

	if unit == nil or not UnitExists(unit) then
		debugLog("target", "sin unidad marcada"); -- la petición sin objetivo quedaba muda (dificultaba el diagnóstico)
		return;
	end

	if UnitIsPlayer(unit) or UnitPlayerControlled(unit) or UnitIsBattlePet(unit) or UnitIsWildBattlePet(unit) then
		return;
	end

	local tar = npcIdFromGUIDChecked(UnitGUID(unit));
	if tar ~= nil then
		debugLog("target", "id=" .. tostring(tar));
		explica(tar);
		return;
	end

	local nombre = GetUnitName(unit);
	debugLog("target sin guid", "nombre=" .. aTexto(nombre));

	-- Nombre utilizable: no secreto, conocido y no vacío
	if nombre ~= nil and not esSecreto(nombre) and nombre ~= UNKNOWNOBJECT and nombre ~= "" then
		explicaPorNombre(nombre);
		return;
	end

	-- Sin nombre utilizable (secreto de Midnight, p. ej. "Entidad
	-- desconocida" en combate): primero el nombre del encuentro activo
	-- (ENCOUNTER_START); luego sus criaturas vía diario; y por último el
	-- resumen de jefes de la mazmorra actual vía diario (EJ).
	if encuentroActivo ~= nil then
		explicaPorNombre(encuentroActivo);
		return;
	end

	if explicarPorEncuentroActivo(nil) then
		return;
	end

	if IsInInstance() and explicarInstancia() then
		return;
	end

	local extra = "";
	if IsInInstance() then
		extra = " (dentro de instancia, sin datos de encuentro activo)";
	end
	dsp("El objetivo está oculto por Midnight (GUID y nombre secretos)" ..
		extra ..
		". Encuentros detectados desde la carga: " ..
		contadorEncuentros .. "; prueba al empezar la pelea o fuera de combate");
end

-- Panel de configuración (Settings API, sustituye a InterfaceOptions) --

local function syncCanalChecks()
	if canalChecks == nil then
		return;
	end

	local canal = BossesConfig.CANAL or "AUTO";

	canalChecks.AUTO:SetChecked(canal == "AUTO");
	canalChecks.GUILD:SetChecked(canal == "GUILD");
	canalChecks.LOCAL:SetChecked(canal == "LOCAL");
	canalChecks.FRAME:SetChecked(canal == "FRAME");
end

local function setCanal(value)
	BossesConfig.CANAL = value;
	syncCanalChecks();
end

local function syncLanguageChecks()
	if langChecks == nil then
		return;
	end

	local idioma = BossesConfig.IDIOMA or "AUTO";

	for key, cb in pairs(langChecks) do
		cb:SetChecked(idioma == key);
	end
end

local function setLanguage(value)
	BossesConfig.IDIOMA = value;
	syncLanguageChecks();
	activarPacks();
end

local function syncAutoEncCheck()
	if autoEncCheck == nil then
		return;
	end

	autoEncCheck:SetChecked(BossesConfig.AUTO_ENC and true or false);
end

local function syncFirmaCheck()
	if firmaCheck == nil then
		return;
	end

	firmaCheck:SetChecked(BossesConfig.FIRMA and true or false);
end

local function setAutoEnc(value)
	BossesConfig.AUTO_ENC = value;
	syncAutoEncCheck();
end

local function syncDebugCheck()
	if debugCheck == nil then
		return;
	end

	debugCheck:SetChecked(BossesConfig.DEBUG and true or false);
end

local function setDebug(value)
	BossesConfig.DEBUG = value;
	syncDebugCheck();
	debugLog("debug", value and "on" or "off");
	if value then
		escribir("|cff33ff99Bosses|r: modo depuración activado. El registro se escribe al salir o con /reload en WTF\\Account\\<cuenta>\\SavedVariables\\Bosses.lua (tabla BossesDebug); en sesión: /bosses log");
	end
end

local function createSettingsPanel()
	local frame = CreateFrame("Frame", "BossesSettingsPanel");
	frame:SetSize(420, 620); -- alto fijo del canvas; el contenido scrollea dentro (1.0.18: la sección del frame de alerta desbordaba el alto)
	local scroll = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate");
	scroll:SetPoint("TOPLEFT", 4, -4);
	scroll:SetPoint("BOTTOMRIGHT", -24, 4);
	scroll:EnableMouseWheel(true);
	scroll:SetScript("OnMouseWheel", function(self, delta)
		local barra = self.ScrollBar;
		if barra ~= nil then
			local paso = barra:GetHeight() > 0 and (barra:GetHeight() * 0.2) or 20;
			barra:SetValue(barra:GetValue() - delta * paso);
		end
	end);
	local cont = CreateFrame("Frame", nil, scroll);
	cont:SetSize(390, 1); -- el alto se fija al final con el último y usado
	scroll:SetScrollChild(cont);

	local titulo = cont:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge");
	titulo:SetPoint("TOPLEFT", 10, -12);
	titulo:SetText("Bosses");

	local subtitulo = cont:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo:SetPoint("TOPLEFT", titulo, "BOTTOMLEFT", 0, -4);
	subtitulo:SetText(L["Select output channel"]);

	canalChecks = {};

	local defs = { { "AUTO", "CanalGrupo" }, { "GUILD", "Guild" }, { "LOCAL", "OutputNormal" }, { "FRAME", "CanalFrame" } };
	local y = -46;

	-- Canal de salida en 2 columnas (petición del dueño): AUTO|GUILD arriba,
	-- LOCAL|FRAME debajo — una casilla por línea desperdiciaba la mitad del
	-- panel. Columna 1 en x=190: "Frame de alerta (solo tú)" es el rótulo más
	-- largo y cabe con margen en el ancho 420.
	for i, d in ipairs(defs) do
		local key, label = d[1], d[2];
		local col = (i - 1) % 2;
		local fila = math.floor((i - 1) / 2);
		local cb = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
		cb:SetPoint("TOPLEFT", col * 190, y - fila * 30);
		cb.Text:SetText(L[label]);
		cb.Text:SetTextColor(1, 1, 1, 1);
		cb:SetScript("OnClick", function() setCanal(key); end);
		canalChecks[key] = cb;
	end
	y = y - 60; -- dos filas de 30

	-- Firma de cortesía en los canales compartidos (independiente del canal)
	firmaCheck = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
	firmaCheck:SetPoint("TOPLEFT", 0, y);
	firmaCheck.Text:SetText(L["FirmaCortesia"]);
	firmaCheck.Text:SetTextColor(1, 1, 1, 1);
	firmaCheck:SetScript("OnClick", function(self) BossesConfig.FIRMA = self:GetChecked() and true or false; end);
	y = y - 30;

	-- Idioma de las explicaciones
	local subtitulo2 = cont:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo2:SetPoint("TOPLEFT", 10, y - 4);
	subtitulo2:SetText(L["Language"]);

	langChecks = {};

	local idiomas = {
		-- KO y ZH cruzados: "Chino (simplificado)" es el rótulo más largo y en
		-- la fila con dos idiomas más al lado pisa la tercera columna; desde
		-- la última casilla lo absorbe el resto de la fila.
		{ "AUTO", "Auto" }, { "ES", "Spanish" }, { "EN", "English" },
		{ "FR", "French" }, { "DE", "German" },
		{ "RU", "Russian" }, { "PT", "Portuguese" }, { "KO", "Korean" }, { "ZH", "ChineseSimple" },
	};
	y = y - 28;

	-- Idiomas en 3 columnas (petición del dueño): 9 casillas en 3 filas —
	-- columnas en x=0/124/248, todos los rótulos caben con el ancho 420.
	for i, d in ipairs(idiomas) do
		local key, label = d[1], d[2];
		local col = (i - 1) % 3;
		local fila = math.floor((i - 1) / 3);
		local cb = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
		cb:SetPoint("TOPLEFT", col * 124, y - fila * 30);
		cb.Text:SetText(L[label]);
		cb.Text:SetTextColor(1, 1, 1, 1);
		cb:SetScript("OnClick", function() setLanguage(key); end);
		langChecks[key] = cb;
	end
	y = y - 90; -- tres filas de 30

	-- Explicación automática de encuentros
	local subtitulo3 = cont:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo3:SetPoint("TOPLEFT", 10, y - 4);
	subtitulo3:SetText(L["Encuentros"]);

	autoEncCheck = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
	autoEncCheck:SetPoint("TOPLEFT", 0, y - 28);
	autoEncCheck.Text:SetText(L["AutoEnc"]);
	autoEncCheck.Text:SetTextColor(1, 1, 1, 1);
	autoEncCheck:SetScript("OnClick", function(self) setAutoEnc(self:GetChecked() and true or false); end);
	y = y - 58;

	-- Depuración ------------------------------------------------------------
	local subtitulo4 = cont:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo4:SetPoint("TOPLEFT", 10, y - 4);
	subtitulo4:SetText(L["Depuracion"]);

	debugCheck = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
	debugCheck:SetPoint("TOPLEFT", 0, y - 28);
	debugCheck.Text:SetText(L["Debug"]);
	debugCheck.Text:SetTextColor(1, 1, 1, 1);
	debugCheck:SetScript("OnClick", function(self) setDebug(self:GetChecked() and true or false); end);
	y = y - 58;

	local vaciarBtn = CreateFrame("Button", nil, cont, "UIButtonTemplate");
	vaciarBtn:SetPoint("TOPLEFT", 0, y - 2);
	vaciarBtn:SetSize(220, 24);
	vaciarBtn:SetText(L["VaciarLog"]);
	vaciarBtn:SetScript("OnClick", function()
		vaciarLog();
		escribir("|cff33ff99Bosses|r: registro de depuración vaciado (se graba al salir o con /reload)");
	end);
	y = y - 30;

	-- Editor de explicaciones in-game (las notas del usuario)
	local editarBtn = CreateFrame("Button", nil, cont, "UIButtonTemplate");
	editarBtn:SetPoint("TOPLEFT", 0, y - 2);
	editarBtn:SetSize(220, 24);
	editarBtn:SetText(L["MenuEditor"]);
	editarBtn:SetScript("OnClick", function()
		local idEditor = npcIdFromUnit("target");
		if idEditor ~= nil then
			abrirEditor(idEditor);
		else
			escribir("|cff33ff99Bosses|r: " .. L["EditorSinTarget"]);
		end
	end);
	y = y - 30;

	-- Frame de alerta (1.0.18) ----------------------------------------------
	local subtitulo5 = cont:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo5:SetPoint("TOPLEFT", 10, y - 4);
	subtitulo5:SetText(L["Alert frame"]);
	y = y - 28;

	local alertaSiempreCheck = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
	alertaSiempreCheck:SetPoint("TOPLEFT", 0, y);
	alertaSiempreCheck.Text:SetText(L["Always visible"]);
	alertaSiempreCheck.Text:SetTextColor(1, 1, 1, 1);
	alertaSiempreCheck:SetScript("OnClick", function(self) BossesConfig.alertaOculta = self:GetChecked() and true or false; end);
	alertaSiempreCheck:SetChecked(BossesConfig.alertaOculta and true or false);
	y = y - 30;

	local alertaBloqueoCheck = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
	alertaBloqueoCheck:SetPoint("TOPLEFT", 0, y);
	alertaBloqueoCheck.Text:SetText(L["Lock position"]);
	alertaBloqueoCheck.Text:SetTextColor(1, 1, 1, 1);
	alertaBloqueoCheck:SetScript("OnClick", function(self)
		BossesConfig.alertaBloqueado = self:GetChecked() and true or false;
		aplicarCandado();
	end);
	alertaBloqueoCheck:SetChecked(BossesConfig.alertaBloqueado and true or false);
	y = y - 30;

	local alertaColapsadoCheck = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
	alertaColapsadoCheck:SetPoint("TOPLEFT", 0, y);
	alertaColapsadoCheck.Text:SetText(L["Start collapsed"]);
	alertaColapsadoCheck.Text:SetTextColor(1, 1, 1, 1);
	alertaColapsadoCheck:SetScript("OnClick", function(self) BossesConfig.alertaColapsado = self:GetChecked() and true or false; end);
	alertaColapsadoCheck:SetChecked(BossesConfig.alertaColapsado and true or false);
	y = y - 30;

	-- Alto automático: con él, el frame crece con el texto; al arrastrar el
	-- grip de tamaño se desactiva solo y el alto elegido se respeta.
	local alertaAltoAutoCheck = CreateFrame("CheckButton", nil, cont, "UICheckButtonTemplate");
	alertaAltoAutoCheck:SetPoint("TOPLEFT", 0, y);
	alertaAltoAutoCheck.Text:SetText(L["Auto height"]);
	alertaAltoAutoCheck.Text:SetTextColor(1, 1, 1, 1);
	alertaAltoAutoCheck:SetScript("OnClick", function(self)
		BossesConfig.alertaAltoAuto = self:GetChecked() and true or false;
		ajustarAlturaAlerta();
	end);
	alertaAltoAutoCheck:SetChecked(BossesConfig.alertaAltoAuto ~= false);
	y = y - 30;

	-- Opacidad del fondo (0.5–1.0) como slider simple de texto numérico
	local opacidadLabel = cont:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
	opacidadLabel:SetPoint("TOPLEFT", 0, y - 4);
	opacidadLabel:SetText((L["Frame opacity"] or "") .. ": " .. string.format("%.2f", tonumber(BossesConfig.alertaOpacidad) or 0.85));
	y = y - 18;
	local opacidadSlider = CreateFrame("Slider", nil, cont, "OptionsSliderTemplate");
	opacidadSlider:SetPoint("TOPLEFT", 0, y);
	opacidadSlider:SetWidth(200);
	opacidadSlider:SetMinMaxValues(0.4, 1.0);
	opacidadSlider:SetValueStep(0.05);
	opacidadSlider:SetValue(tonumber(BossesConfig.alertaOpacidad) or 0.85);
	opacidadSlider:SetScript("OnValueChanged", function(self, v)
		BossesConfig.alertaOpacidad = v;
		opacidadLabel:SetText((L["Frame opacity"] or "") .. ": " .. string.format("%.2f", v));
		if alertaFrame ~= nil then alertaFrame:SetBackdropColor(0.06, 0.06, 0.08, v); end
	end);
	y = y - 34;

	-- Alto máximo del cuerpo (fracción de pantalla, 0 = sin tope)
	local altoMaxLabel = cont:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
	altoMaxLabel:SetPoint("TOPLEFT", 0, y - 4);
	altoMaxLabel:SetText((L["Frame max height"] or "") .. ": " .. string.format("%.2f", tonumber(BossesConfig.alertaMaxAlto) or 0.6));
	y = y - 18;
	local altoMaxSlider = CreateFrame("Slider", nil, cont, "OptionsSliderTemplate");
	altoMaxSlider:SetPoint("TOPLEFT", 0, y);
	altoMaxSlider:SetWidth(200);
	altoMaxSlider:SetMinMaxValues(0, 0.9);
	altoMaxSlider:SetValueStep(0.05);
	altoMaxSlider:SetValue(tonumber(BossesConfig.alertaMaxAlto) or 0.6);
	altoMaxSlider:SetScript("OnValueChanged", function(self, v)
		BossesConfig.alertaMaxAlto = v;
		altoMaxLabel:SetText((L["Frame max height"] or "") .. ": " .. string.format("%.2f", v));
		ajustarAlturaAlerta();
	end);
	y = y - 34;

	-- Escala de la fuente del cuerpo (0.8–1.3)
	local fuenteLabel = cont:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
	fuenteLabel:SetPoint("TOPLEFT", 0, y - 4);
	fuenteLabel:SetText((L["Font scale"] or "") .. ": " .. string.format("%.2f", tonumber(BossesConfig.alertaFuente) or 1.0));
	y = y - 18;
	local fuenteSlider = CreateFrame("Slider", nil, cont, "OptionsSliderTemplate");
	fuenteSlider:SetPoint("TOPLEFT", 0, y);
	fuenteSlider:SetWidth(200);
	fuenteSlider:SetMinMaxValues(0.8, 1.3);
	fuenteSlider:SetValueStep(0.05);
	fuenteSlider:SetValue(tonumber(BossesConfig.alertaFuente) or 1.0);
	fuenteSlider:SetScript("OnValueChanged", function(self, v)
		BossesConfig.alertaFuente = v;
		fuenteLabel:SetText((L["Font scale"] or "") .. ": " .. string.format("%.2f", v));
		if alertaFrame ~= nil and alertaFrame.cuerpo ~= nil and alertaFrame.cuerpoFuente ~= nil then
			local _, alto, flags = alertaFrame.cuerpo:GetFont();
			alertaFrame.cuerpo:SetFont(alertaFrame.cuerpoFuente, (alto or 12) * v / (tonumber(BossesConfig.alertaFuente) or 1), flags or "");
			-- Guardar la fuente base para el próximo cambio (una sola vez)
			if alertaFrame.cuerpoFuente == nil then alertaFrame.cuerpoFuente = select(1, alertaFrame.cuerpo:GetFont()); end
			ajustarAlturaAlerta();
		end
	end);
	y = y - 34;

	cont:SetHeight(math.max(300, -y + 24)); -- alto real del contenido para el scroll

	local category = Settings.RegisterCanvasLayoutCategory(frame, "Bosses");
	Settings.RegisterAddOnCategory(category);
	settingsCategory = category;

	syncCanalChecks();
	syncFirmaCheck();
	syncLanguageChecks();
	syncAutoEncCheck();
	syncDebugCheck();
end

local function openSettings()
	-- OpenToCategory está protegida en combate (ADDON_ACTION_BLOCKED)
	if InCombatLockdown() then
		escribir("|cff33ff99Bosses|r: el panel de configuración no puede abrirse en combate; inténtalo al terminar");
		return;
	end

	if settingsCategory == nil then
		createSettingsPanel();
	end

	Settings.OpenToCategory(settingsCategory:GetID());
end

-- Botón de minimapa ------------------------------------------------------
-- Reenvía la entrada del jefe mostrado en el frame por la ruta fría normal
-- (reparto espaciado + firma: la vía del grito de Coren). Lo llama el botón
-- "al chat" del frame; solo tiene efecto fuera de zona caliente, donde el
-- envío por addon es legal.
function enviarJefeDelFrame()
	if frameNpcId == nil or enZonaCaliente() then
		return;
	end
	local entrada = buscarEntrada(frameNpcId);
	if entrada ~= nil then
		enviarEntrada(entrada, frameNpcId);
	end
end

-- Botón del modo "solo frame": manda la entrada del jefe en pantalla al
-- chat del grupo en el que esté el dueño — raid → RAID, grupo de instancia
-- → INSTANCE_CHAT, grupo normal → PARTY, solo → SAY. Es la MISMA decisión
-- que el canal AUTO (autoChannel), pero a mano: en "solo frame" nada sale
-- solo a ningún canal, esto es la salida que el dueño pide.
function enviarJefeAlGrupo()
	if frameNpcId == nil or enZonaCaliente() then
		return;
	end
	local entrada = buscarEntrada(frameNpcId);
	if entrada == nil then
		return;
	end
	local canal = autoChannel();
	for i, c in ipairs(entrada) do
		local linea = c;
		if i == 1 then
			enviarAlCable(sanearSalida(localizarEnlaces(linea)), canal, true);
		else
			-- Reparto espaciado: la ráfaga síncrona chocaba con el throttle
			-- silencioso del chat (y con el límite de bytes del cliente).
			C_Timer.After((i - 1) * 0.25, function()
				if not enZonaCaliente() then
					enviarAlCable(sanearSalida(localizarEnlaces(linea)), canal, true);
				end
			end);
		end
	end
	-- Firma de cortesía, como en el resto de salidas al grupo.
	if BossesConfig.FIRMA then
		C_Timer.After(#entrada * 0.25 + 0.25, function()
			if not enZonaCaliente() then
				enviarAlCable(sanearSalida(textoCortesia()), canal, true);
			end
		end);
	end
	debugLog("chat", "manual al grupo (" .. canal .. ")", tostring(frameNpcId));
end

-- Muestra la entrada de un jefe SOLO en el frame del dueño: la usa el
-- desplegable del minimapa. Guarda el jefe activo para el botón "al chat"
-- y no escribe chat.
local function mostrarJefeEnFrame(id)
	local entrada = buscarEntrada(id);
	if entrada == nil then
		return;
	end
	frameNpcId = id;
	for i, c in ipairs(entrada) do
		salidaEnPantalla(c, i == 1);
	end
	actualizarBotonChat();
	debugLog("desplegable", "jefe al frame", tostring(id));
end

-- Radar de instancia: qué zona es la actual (mazmorra, banda o lair)
-- según el instanceID de GetInstanceInfo y el índice de zonas de los
-- packs. Alimenta el desplegable del minimapa. v1: solo por id (el
-- diario está muerto dentro de instancias en Midnight; los nombres
-- localizados quedan como fallback futuro).
local instanciaActual = nil;
local function detectarInstancia()
	instanciaActual = nil;
	local nombre, tipo, _, dif = GetInstanceInfo();
	local idZona = tostring(select(8, GetInstanceInfo()) or "");
	local zona = zonasActuales[idZona];
	if zona ~= nil then
		instanciaActual = { id = idZona, nombre = tostring(nombre or zona.nombre or ""), zona = zona };
	end
	debugLog("zona", tostring(nombre), tostring(tipo), tostring(dif), "id=" .. idZona, instanciaActual ~= nil and ("jefes=" .. tostring(#instanciaActual.zona.jefes)) or "sin índice de zona");
end

-- Desplegable artesanal del minimapa: en instancia, la lista de jefes de
-- la zona (solo los que tienen entrada en el pack) + "explicar objetivo"
-- y la configuración. Fuera de instancia, el click izquierdo sigue
-- explicando el objetivo directamente (comportamiento previo).
-- NOTA (2026-10-01): EasyMenu YA NO existe en Midnight 12.1 (crash
-- probado in-game) y el nuevo sistema Menu no existe en los flavors
-- clásicos — menú propio, sin dependencias del UI del cliente.
local menuFrame = nil;
local menuCatcher = nil;

local function cerrarMenu()
	if menuCatcher ~= nil then
		menuCatcher:Hide();
	end
end

local function menuMinimapa()
	cerrarMenu();
	if menuFrame == nil then
		-- Fondo invisible a pantalla entera: cualquier click fuera del
		-- menú cierra el desplegable (el menú cuelga de él y se esconden
		-- juntos).
		menuCatcher = CreateFrame("Button", nil, UIParent);
		menuCatcher:SetAllPoints(UIParent);
		menuCatcher:SetFrameStrata("TOOLTIP");
		menuCatcher:SetFrameLevel(100);
		menuCatcher:EnableMouse(true);
		menuCatcher:RegisterForClicks("AnyDown");
		menuCatcher:SetScript("OnClick", cerrarMenu);

		menuFrame = CreateFrame("Frame", nil, menuCatcher, "BackdropTemplate");
		menuFrame:SetFrameStrata("TOOLTIP");
		menuFrame:SetFrameLevel(101);
		menuFrame:EnableMouse(true);
		menuFrame:SetClampedToScreen(true);
		menuFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 16, edgeSize = 16,
			insets = { left = 3, right = 3, top = 3, bottom = 3 },
		});
		menuFrame:SetBackdropColor(0.06, 0.06, 0.08, 0.95);
	end

	-- Entradas: el nombre de la zona como título, los jefes con entrada
	-- y los dos atajos fijos.
	local entradas = {};
	if instanciaActual ~= nil and instanciaActual.zona ~= nil then
		table.insert(entradas, { texto = instanciaActual.nombre, titulo = true });
		for _, idJefe in ipairs(instanciaActual.zona.jefes) do
			local entrada = buscarEntrada(idJefe);
			if entrada ~= nil and type(entrada[1]) == "string" then
				local id = idJefe;
				table.insert(entradas, { texto = entrada[1], alPulsar = function() mostrarJefeEnFrame(id); end });
			end
		end
		table.insert(entradas, { texto = " ", separador = true });
	end
	table.insert(entradas, { texto = L["MenuObjetivo"], alPulsar = function() explicaTarget("target"); end });
	table.insert(entradas, { texto = L["MenuEditor"], alPulsar = function()
		local idEditor = npcIdFromUnit("target");
		if idEditor == nil then
			escribir("|cff33ff99Bosses|r: " .. L["EditorSinTarget"]);
		else
			abrirEditor(idEditor);
		end
	end });
	table.insert(entradas, { texto = L["MenuConfig"], alPulsar = function() openSettings(); end });

	-- Botones (se reutilizan entre aperturas; anclados a ambos lados para
	-- que todos midan lo mismo que el menú).
	local maxAncho = 0;
	local alto = 6;
	local n = 0;
	for _, e in ipairs(entradas) do
		n = n + 1;
		local btn = menuFrame["item" .. n];
		if btn == nil then
			btn = CreateFrame("Button", nil, menuFrame);
			btn:SetHeight(18);
			btn:SetNormalFontObject("GameFontHighlight");
			local resalte = btn:CreateTexture(nil, "HIGHLIGHT");
			resalte:SetAllPoints(btn);
			resalte:SetColorTexture(1, 0.85, 0.4, 0.25);
			btn:SetHighlightTexture(resalte);
			btn:SetScript("OnClick", function(self)
				cerrarMenu();
				local alPulsar = self.__alPulsar;
				if alPulsar ~= nil then
					alPulsar();
				end
			end);
			menuFrame["item" .. n] = btn;
		end
		btn:Show();
		btn:SetText(e.texto);
		btn.__alPulsar = e.alPulsar;
		btn:SetPoint("TOPLEFT", menuFrame, "TOPLEFT", 8, -alto);
		btn:SetPoint("TOPRIGHT", menuFrame, "TOPRIGHT", -8, -alto);
		local fs = btn:GetFontString();
		if fs ~= nil then
			fs:SetJustifyH("LEFT");
			if e.titulo then
				btn:Disable();
				fs:SetTextColor(1, 0.85, 0.4);
			else
				btn:Enable();
				fs:SetTextColor(1, 1, 1);
			end
			if not e.separador then
				maxAncho = math.max(maxAncho, fs:GetStringWidth() + 4);
			end
		else
			btn:Enable();
		end
		-- La línea de separación pinta una raya blanca horizontal (la
		-- fila es un botón desactivado en blanco).
		local raya = btn.__raya;
		if raya == nil then
			raya = btn:CreateTexture(nil, "ARTWORK");
			raya:SetColorTexture(1, 1, 1, 0.55);
			btn.__raya = raya;
		end
		if e.separador then
			btn:Disable();
			btn.__alPulsar = nil;
			raya:Show();
			raya:ClearAllPoints();
			raya:SetHeight(1);
			raya:SetPoint("TOP", btn, "TOP", 0, -9);
			raya:SetPoint("LEFT", btn, "LEFT", 6, 0);
			raya:SetPoint("RIGHT", btn, "RIGHT", -6, 0);
		else
			raya:Hide();
		end
		alto = alto + 20;
	end
	-- esconder los botones sobrantes de aperturas anteriores
	for j = n + 1, menuFrame.__n or 0 do
		menuFrame["item" .. j]:Hide();
	end
	menuFrame.__n = n;

	menuFrame:SetSize(math.min(340, math.max(170, maxAncho + 16)), alto + 8);

	-- anclado al cursor
	local cx, cy = GetCursorPosition();
	local escala = UIParent:GetEffectiveScale();
	menuFrame:ClearAllPoints();
	menuFrame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", (cx / escala) + 6, (cy / escala) - 6);
	menuCatcher:Show();
end

-- Vía LibDBIcon-1.0 (la misma librería que usa RareScanner, embebida en
-- libs/). Todo el arrastre, posicionamiento y formas del minimapa los
-- gestiona la librería; aquí solo definimos el objeto LDB con el click
-- y el tooltip. La posición se guarda en BossesConfig.minimapPos.
local ldbObject = {
	type = "data source",
	text = "Bosses",
	icon = "Interface\\Icons\\INV_Misc_OgrePinata",
	OnClick = function(self, button)
		if button == "LeftButton" then
			if instanciaActual ~= nil then
				menuMinimapa();
			else
				explicaTarget("target");
			end
		else
			openSettings();
		end
	end,
	OnTooltipShow = function(tooltip)
		tooltip:SetText("Bosses " .. getVersion() .. "|n" .. L["|cff33ff99Left click|r - Explains target NPC"]);
	end,
};

local function createMinimapIcon()
	LibStub("LibDBIcon-1.0"):Register("Bosses", ldbObject, BossesConfig);
end

-- ========================================================================
-- EDITOR IN-GAME DE EXPLICACIONES (2026): UI profesional para las notas
-- del usuario, que son la primera prioridad de buscarEntrada (BossesConfig
-- [npc id], por personaje) y ANULAN la del pack. Complemento visual de
-- /bosses + (añade línea) y /bosses ! (borra todo):
--
--   /bosses EDITAR            abre el editor con el NPC marcado
--   /bosses EDITAR <id>       lo abre directamenete con ese NPC id
--
-- Formato de nota = el del pack: { "Nombre", "* línea", ... } — el frame de
-- alerta y los envíos las procesan sin cambios (la viñeta sale del prefijo
-- "* "). Piezas artesanales de la casa: BackdropTemplate (aspecto tooltip),
-- X propia (UIPanelCloseButtonTemplate no existe en Midnight 12.1),
-- hipervínculos de spells clicables con tooltip (los mismos scripts del
-- frame de alerta) y guardado inmediato en la SavedVariable del personaje
-- (el cliente las escribe al salir o /reload, como siempre).
-- ========================================================================
local editorFrame = nil;    -- creado perezoso
local editorId = nil;       -- npc id en edición (string)
local editorNota = nil;     -- la tabla en edición (write-through a BossesConfig)
local editorLinea = nil;    -- índice de la línea enfocada (para insertar spells)

-- Entrada DIRECTA de los packs (sin pasar por las notas del usuario): la
-- "base" que la nota anula y la fuente del botón «copiar del pack».
local function entradaDePacks(nbos)
	for i = #packSources, 1, -1 do
		local data = packSources[i].data;
		if data ~= nil and data[nbos] ~= nil then
			return data[nbos], packSources[i].name;
		end
	end
	return nil, nil;
end

-- Recupera el NOMBRE de un npc por id (el dueño: «cuando no lo conozca
-- debería de recuperar su nombre») para la cabecera provisional del editor.
-- En orden: 1) el target marcado (la vía normal para llegar a un npc sin
-- descripción) con su UnitName fiable; 2) un tooltip de escaneo oculto con
-- el enlace de unidad unit:Creature-... (el truco clásico de resolución de
-- nombre por CID; va en pcall porque el enlace no es API pública y todo lo
-- que falle degrada a nil, y el editor sigue con su placeholder numérico).
local function nombreNpcDe(id)
	local idS = tostring(id);
	local nombreT = UnitName("target");
	if nombreT ~= nil and nombreT ~= "" then
		local idTar = npcIdFromUnit("target");
		if idTar ~= nil and idTar == idS then
			return nombreT;
		end
	end
	local tt = _G["BossesScanTT"];
	if tt == nil then
		tt = CreateFrame("GameTooltip", "BossesScanTT", nil, "GameTooltipTemplate");
		tt:SetOwner(UIParent, "ANCHOR_NONE");
	end
	local ok, res = pcall(function()
		tt:ClearLines();
		tt:SetHyperlink("unit:Creature-0-0-0-0-" .. idS .. "-0000000000-0000000000");
		local fs = _G["BossesScanTTTextLeft1"];
		local t = fs ~= nil and fs:GetText() or nil;
		if t == nil then
			return nil;
		end
		return (t:gsub("%s*%b<>%s*$", "")); -- sin apellidos <...>
	end);
	if ok and res ~= nil and res ~= "" then
		return res;
	end
	return nil;
end

-- Guarda la nota en vuelo o la RETIRA si ha quedado vacía (equivale a
-- /bosses !: una nota vacía no debe tapar la del pack).
local function editorGuardar()
	if editorId == nil then
		return;
	end
	local vacia = true;
	for _, v in ipairs(editorNota) do
		if type(v) == "string" and v ~= "" then vacia = false; break; end
	end
	if vacia then
		BossesConfig[editorId] = nil;
	else
		BossesConfig[editorId] = editorNota;
	end
end

local editorRefrescar = function() end; -- (re)asignada justo tras el cuerpo

local function cerrarEditor()
	if editorFrame ~= nil then
		editorFrame:Hide();
	end
end

-- Inserta el enlace de un spell (con el nombre en el idioma del cliente,
-- nombreSpell) al FINAL de la línea enfocada (o de la última si ninguna
-- está enfocada). Devuelve el mensaje para el jugador.
local function editorInsertarSpell(idSpell)
	if editorId == nil then
		return "abre el editor primero (marca el jefe o /bosses EDITAR <id>)";
	end
	if editorNota == nil then
		-- sin nota todavía: la cabecera provisional nace aquí (igual que abrir)
		local base = entradaDePacks(editorId);
		editorNota = { (type(base) == "table" and type(base[1]) == "string") and base[1]
			or (nombreNpcDe(editorId) or ("NPC " .. editorId)) };
	end
	local nombre = nombreSpell(idSpell);
	if nombre == nil or nombre == "" then
		return "el cliente no conoce ese spell id (" .. tostring(idSpell) .. ")";
	end
	local i = editorLinea ~= nil and editorLinea or #editorNota;
	if i < 2 then i = #editorNota; end
	if i < 2 then
		-- sin líneas de táctica: se crea la primera
		i = 2;
		table.insert(editorNota, "");
	end
	editorNota[i] = tostring(editorNota[i] or "") .. "|cff71d5ff|Hspell:" .. idSpell .. "|h[" .. nombre .. "]|h|r";
	local pesa = #(sanearSalida(tostring(editorNota[i]))) > LIMITE_CABLE;
	editorGuardar();
	editorRefrescar();
	return "spell " .. idSpell .. " (" .. nombre .. ") añadido a la línea " .. tostring(i)
		.. (pesa and " — ojo: la línea supera el límite del chat (240 al cable); al enviar se trocea" or "");
end

local function editorCambiarLinea(i, delta)
	if editorId == nil then
		return;
	end
	local j = i + delta;
	if j < 2 or j > #editorNota then
		return; -- el nombre (1) no se mueve de su sitio
	end
	editorNota[i], editorNota[j] = editorNota[j], editorNota[i];
	editorGuardar();
	editorRefrescar();
end

local function editorQuitarLinea(i)
	if editorId == nil or i < 2 or i > #editorNota then
		return;
	end
	table.remove(editorNota, i);
	editorGuardar();
	editorRefrescar();
end

-- (Re)construye las filas del cuerpo: un EditBox por línea con subir/
-- bajar/quitar (texturas de flecha + tooltip), reutilizando las de
-- aperturas anteriores (patrón del menú del minimapa).
editorRefrescar = function()
	if editorFrame == nil or editorId == nil or editorNota == nil then
		return;
	end
	editorFrame.titulo:SetText(tostring(editorNota[1] or ("NPC " .. editorId)));
	local cuerpo = editorFrame.cuerpo;
	local n = #editorNota;
	local y = -6;
	local altoFila = 26;
	local anchoFila = 502; -- el scroll mide 530 en la ventana de 580
	local anchoBoton = 20;
	local anchoEd = anchoFila - 3 * (anchoBoton + 4);

	for k = 2, n do
		local i = k; -- captura del índice real de la tabla
		local ed = editorFrame["ed" .. k];
		if ed == nil then
			ed = CreateFrame("EditBox", nil, cuerpo, "InputBoxTemplate");
			ed:SetSize(anchoEd, 20);
			ed:SetAutoFocus(false);
			ed:SetScript("OnEnterPressed", function(self) self:ClearFocus(); end);
			ed:SetScript("OnEscapePressed", function(self) self:ClearFocus(); end);
			ed:SetScript("OnEditFocusGained", function(self) editorLinea = tonumber(self.__i); end); -- OJO: OnFocusGained NO existe en EditBox (SetScript rechaza el nombre de script)
			ed:SetScript("OnTextChanged", function(self, userInput)
				local txt = tostring(self:GetText());
				-- semáforo del límite: mientras la línea pese más de lo que el
				-- chat del cliente acepta, el texto va en rojo — al ENVIAR el
				-- core la trocea sola (enviarAlCable), esto es aviso para
				-- dejarla en una viñeta limpia
				local pesa = #(sanearSalida(txt)) > LIMITE_CABLE;
				self:SetTextColor(1, pesa and 0.35 or 1, pesa and 0.3 or 1, 1);
				if not userInput then
					return; -- solo los cambios de verdad (SetProgrammatic no)
				end
				editorNota[tonumber(self.__i)] = txt;
				editorGuardar();
			end);
			editorFrame["ed" .. k] = ed;
		end
		ed.__i = tostring(i);
		ed:SetText(tostring(editorNota[i] or ""));
		ed:SetCursorPosition(0); -- ver el PRINCIPIO del texto: el EditBox deja
		-- la vista donde estuviera el caret y un texto que no cabe se ve por
		-- el FINAL (el principio queda fuera de la vista, petición del dueño)
		ed:Show();
		ed:ClearAllPoints();
		ed:SetPoint("TOPLEFT", cuerpo, "TOPLEFT", 4, y - 3);

		-- tres botoncitos de estructura: SUBIR/BAJAR con flecha TEXTURA de la
		-- casa (las de los desplegables nativos: garantizadas en todos los
		-- flavors; los glifos ▲▼ no lo están y salían como cuadros) y QUITAR
		-- con aspa textual «x» (glifo garantizado); TODOS con tooltip — el
		-- dueño pidió saber para qué sirven
		local defs = {
			{ "up", 0, "Interface\\Buttons\\ArrowUp-ToggleUp", "EditorFilaSubir", function() editorCambiarLinea(i, -1); end },
			{ "dn", 1, "Interface\\Buttons\\ArrowUp-ToggleDown", "EditorFilaBajar", function() editorCambiarLinea(i, 1); end },
			{ "del", 2, nil, "EditorFilaQuitar", function() editorQuitarLinea(i); end },
		};
		for _, d in ipairs(defs) do
			local key = d[1];
			local col = d[2];
			local b = editorFrame[key .. k];
			if b == nil then
				b = CreateFrame("Button", nil, cuerpo);
				b:SetSize(anchoBoton, anchoEd);
				if d[3] ~= nil then
					b:SetNormalTexture(d[3]);
				else
					b:SetNormalFontObject("GameFontNormalSmall");
					b:SetText("x");
				end
				local hl = b:CreateTexture(nil, "HIGHLIGHT");
				hl:SetAllPoints(b);
				hl:SetColorTexture(1, 0.85, 0.4, 0.25);
				b:SetHighlightTexture(hl);
				b:SetScript("OnClick", function(self)
					local al = self.__al;
					if al ~= nil then al(); end
				end);
				b:SetScript("OnEnter", function(self)
					if GameTooltip ~= nil then
						GameTooltip:SetOwner(self, "ANCHOR_TOP");
						GameTooltip:SetText(L[self.__tip] or self.__tip, 0.85, 0.85, 0.85);
						GameTooltip:Show();
					end
				end);
				b:SetScript("OnLeave", function()
					if GameTooltip ~= nil then
						GameTooltip:Hide();
					end
				end);
				editorFrame[key .. k] = b;
			end
			b.__al = d[5];
			b.__tip = d[4];
			b:Show();
			b:ClearAllPoints();
			b:SetPoint("TOPLEFT", ed, "TOPRIGHT", 4 + col * (anchoBoton + 4), 0);
			b:SetPoint("BOTTOMLEFT", ed, "BOTTOMRIGHT", 4 + col * (anchoBoton + 4), 0);
		end
		y = y - altoFila;
	end
	-- esconder sobrantes de notas anteriores más largas
	for k = n + 1, editorFrame.__max or 0 do
		if editorFrame["ed" .. k] ~= nil then
			editorFrame["ed" .. k]:Hide();
			editorFrame["up" .. k]:Hide();
			editorFrame["dn" .. k]:Hide();
			editorFrame["del" .. k]:Hide();
		end
	end
	editorFrame.__max = math.max(editorFrame.__max or 0, n + 1);

	-- la altura del scrollchild decide el recorrido de la rueda
	cuerpo:SetHeight(math.max(1, 2 + (math.max(n, 2) - 1) * altoFila + 30));

	-- fuente de la nota (para el rótulo): la base del pack si no era nota
	local _, packDe = entradaDePacks(editorId);
	local esNota = BossesConfig[editorId] ~= nil;
	editorFrame.fuente:SetText(
		(esNota and L["EditorDeNota"] or (packDe ~= nil and L["EditorDePack"] or L["EditorSinBase"]))
		.. " · " .. (packDe ~= nil and packDe or "Bosses") .. " · id " .. tostring(editorId));
end

-- Copia las líneas de la ENTRADA BASE del pack dentro de la nota (punto de
-- partida cómodo para el pulido personal: ya se puede editar y guardar).
local function editorCopiarDelPack()
	if editorId == nil then
		return;
	end
	local base, packDe = entradaDePacks(editorId);
	if base == nil then
		return;
	end
	if editorNota == nil then
		editorNota = {};
	end
	-- reemplaza TODO el contenido con la copia del pack (strings solas,
	-- cabecera incluida: "Nombre", "* líneas"...); la sobreescripción es
	-- intencionada: copiar del pack vuelve a la copy del pack entera
	local nueva = {};
	for _, v in ipairs(base) do
		if type(v) == "string" then
			table.insert(nueva, v);
		end
	end
	for i = 1, math.max(#editorNota, #nueva) do
		editorNota[i] = nueva[i] or nil;
	end
	editorGuardar();
	editorFrame.edNombre:SetText(tostring(editorNota[1] or ""));
	editorRefrescar();
	debugLog("editor", "copiadas las líneas del pack", tostring(packDe), "a la nota de " .. tostring(editorId));
end

local function editorProbar()
	if editorId == nil then
		return;
	end
	local fuente = (BossesConfig[editorId] ~= nil) and BossesConfig[editorId] or editorNota;
	if fuente == nil or #fuente == 0 then
		return;
	end
	enviarEntrada(fuente, editorId);
end

local function editorQuitarNota()
	if editorId == nil then
		return;
	end
	-- fuera la nota (la del pack vuelve a mandar); en pantalla queda la
	-- copia del pack como contexto editable pero SIN escribirse hasta que
	-- el dueño toque algo (sin guardar call: una nota no debe renacer sola)
	BossesConfig[editorId] = nil;
	editorNota = {};
	local base = entradaDePacks(editorId);
	if base ~= nil then
		for _, v in ipairs(base) do
			if type(v) == "string" then
				table.insert(editorNota, v);
			end
		end
	end
	editorFrame.edNombre:SetText(tostring(editorNota[1] or ""));
	editorRefrescar();
	debugLog("editor", "nota quitada", tostring(editorId));
end

-- Abre (o refresca) el editor sobre un npc id concreto.
function abrirEditor(id)
	if id == nil or id == "" then
		return;
	end
	editorId = tostring(id);
	editorLinea = nil;

	-- la nota en edición: la del disco si existe; si no, temporal (solo se
	-- crea en disco al escribir el nombre o tocar una línea)
	local base, _ = entradaDePacks(editorId);
	local notaDisc = BossesConfig[editorId];
	editorNota = {};
	for _, v in ipairs(notaDisc ~= nil and notaDisc or {}) do
		table.insert(editorNota, v);
	end
	if notaDisc == nil and base ~= nil and type(base[1]) == "string" then
		-- cabecera provisional con el nombre del pack
		table.insert(editorNota, 1, base[1]);
	end
	if notaDisc == nil and not (base ~= nil and type(base[1]) == "string") then
		-- el dueño: «cuando no lo conozca debería de recuperar su nombre» —
		-- target marcado o tooltip de escaneo; si nada lo sabe, sigue el
		-- placeholder numérico (guardar solo crea la nota al tocar algo)
		local nombreRec = nombreNpcDe(editorId);
		if nombreRec ~= nil then
			table.insert(editorNota, 1, nombreRec);
			debugLog("editor", "nombre recuperado del cliente", tostring(editorId), nombreRec);
		end
	end

	if editorFrame == nil then
		editorFrame = CreateFrame("Frame", "BossesEditorFrame", UIParent, "BackdropTemplate");
		tinsert(UISpecialFrames, "BossesEditorFrame"); -- ESC cierra (con X)
		editorFrame:SetFrameStrata("HIGH");
		editorFrame:SetClampedToScreen(true);
		editorFrame:SetSize(580, 580); -- el dueño: la ventana era estrecha
		editorFrame:EnableMouse(true);
		editorFrame:SetMovable(true);
		editorFrame:RegisterForDrag("LeftButton");
		editorFrame:SetScript("OnDragStart", editorFrame.StartMoving);
		editorFrame:SetScript("OnDragStop", function(self)
			self:StopMovingOrSizing();
			local punto, _, relativo, x, y = self:GetPoint(1);
			if punto ~= nil then
				BossesConfig.editorPos = { point = punto, rel = relativo or punto, x = x or 0, y = y or 0 };
			end
		end);
		editorFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 16, edgeSize = 16,
			insets = { left = 3, right = 3, top = 3, bottom = 3 },
		});
		editorFrame:SetBackdropColor(0.06, 0.06, 0.08, 0.95);

		-- pie de ventana: marca dorada + X (patrón del frame de alerta)
		local marca = editorFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
		marca:SetPoint("TOPLEFT", 16, -10);
		marca:SetText("BOSSES · " .. L["Editor"]);
		marca:SetTextColor(1, 0.85, 0.4);
		local cerrar = CreateFrame("Button", nil, editorFrame);
		cerrar:SetSize(18, 18);
		cerrar:SetPoint("TOPRIGHT", -6, -6);
		cerrar:SetNormalFontObject("GameFontHighlightLarge");
		cerrar:SetText("×");
		local resalteCerrar = cerrar:CreateTexture(nil, "HIGHLIGHT");
		resalteCerrar:SetAllPoints(cerrar);
		resalteCerrar:SetColorTexture(1, 0.4, 0.4, 0.3);
		cerrar:SetHighlightTexture(resalteCerrar);
		cerrar:SetScript("OnClick", cerrarEditor);

		-- cabecera: título (nombre del jefe, con links) + fuente/id
		local titulo = editorFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
		titulo:SetPoint("TOPLEFT", marca, "BOTTOMLEFT", 0, -4);
		titulo:SetWidth(548);
		titulo:SetJustifyH("LEFT");
		if titulo.SetHyperlinksEnabled ~= nil then
			titulo:SetHyperlinksEnabled(true);
		end
		editorFrame.titulo = titulo;

		local fuente = editorFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
		fuente:SetPoint("TOPLEFT", titulo, "BOTTOMLEFT", 0, -3);
		fuente:SetPoint("RIGHT", editorFrame, "RIGHT", -16, 0);
		fuente:SetJustifyH("LEFT");
		fuente:SetTextColor(0.7, 0.7, 0.75);
		if fuente.SetHyperlinksEnabled ~= nil then
			fuente:SetHyperlinksEnabled(true);
		end
		editorFrame.fuente = fuente;

		editorFrame:SetScript("OnHyperlinkClick", function(_, link, textoLiga, botonLink, chatFrame)
			pcall(ChatFrame_OnHyperlinkShow, DEFAULT_CHAT_FRAME, link, textoLiga, botonLink, chatFrame);
		end);
		editorFrame:SetScript("OnHyperlinkEnter", function(_, link)
			if GameTooltip ~= nil then
				pcall(function()
					GameTooltip:SetOwner(editorFrame, "ANCHOR_CURSOR");
					GameTooltip:SetHyperlink(link);
					GameTooltip:Show();
				end);
			end
		end);
		editorFrame:SetScript("OnHyperlinkLeave", function()
			if GameTooltip ~= nil then
				GameTooltip:Hide();
			end
		end);

		-- nombre editable (elemento 1 de la nota)
		local rotuloNombre = editorFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
		rotuloNombre:SetPoint("TOPLEFT", fuente, "BOTTOMLEFT", 0, -8);
		rotuloNombre:SetText(L["EditorNombre"]);
		local edNombre = CreateFrame("EditBox", nil, editorFrame, "InputBoxTemplate");
		edNombre:SetSize(300, 20);
		edNombre:SetAutoFocus(false);
		edNombre:SetPoint("TOPLEFT", rotuloNombre, "TOPRIGHT", 12, -2);
		edNombre:SetScript("OnEnterPressed", function(self) self:ClearFocus(); end);
		edNombre:SetScript("OnEscapePressed", function(self) self:ClearFocus(); end);
		edNombre:SetScript("OnTextChanged", function(self, userInput)
			if userInput and editorId ~= nil then
				local nuevo = tostring(self:GetText() or "");
				if editorNota == nil then
					editorNota = { nuevo };
				end
				editorNota[1] = nuevo;
				editorGuardar();
				editorFrame.titulo:SetText(nuevo ~= "" and nuevo or ("NPC " .. editorId));
			end
		end);
		editorFrame.edNombre = edNombre;

		-- cuerpo: filas de líneas de táctica dentro de un scroll nativo
		local scroll = CreateFrame("ScrollFrame", nil, editorFrame, "UIPanelScrollFrameTemplate");
		scroll:SetPoint("TOPLEFT", 14, -140);
		scroll:SetPoint("BOTTOMRIGHT", -36, 78); -- 530 de ancho: las filas (502) respiran
		local cuerpo = CreateFrame("Frame", nil, scroll);
		cuerpo:SetWidth(506);
		scroll:SetScrollChild(cuerpo);
		editorFrame.cuerpo = cuerpo;

		-- herramientas del pie: + línea y + spell (inserta en la línea
		-- enfocada o al final), con el id del spell en un cuadrito
		local rotuloSpell = editorFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
		rotuloSpell:SetPoint("BOTTOMLEFT", 14, 50);
		rotuloSpell:SetText(L["EditorSpell"]);
		local edSpell = CreateFrame("EditBox", nil, editorFrame, "InputBoxTemplate");
		edSpell:SetSize(80, 20);
		edSpell:SetAutoFocus(false);
		edSpell:SetNumeric();
		edSpell:SetPoint("LEFT", rotuloSpell, "RIGHT", 10, 0);
		edSpell:SetScript("OnEnterPressed", function(self)
			local id = self:GetText();
			self:SetText("");
			self:ClearFocus();
			if id ~= "" then
				escribir("|cff33ff99Bosses|r: " .. editorInsertarSpell(id));
			end
		end);
		edSpell:SetScript("OnEscapePressed", function(self) self:ClearFocus(); end);
		local btnSpell = CreateFrame("Button", nil, editorFrame, "UIPanelButtonTemplate");
		btnSpell:SetSize(76, 22);
		btnSpell:SetPoint("LEFT", edSpell, "RIGHT", 8, 0);
		btnSpell:SetText(L["EditorAnadir"]);
		btnSpell:SetScript("OnClick", function()
			local id = edSpell:GetText();
			edSpell:SetText("");
			edSpell:ClearFocus();
			if id ~= "" then
				escribir("|cff33ff99Bosses|r: " .. editorInsertarSpell(id));
			end
		end);
		local btnLinea = CreateFrame("Button", nil, editorFrame, "UIPanelButtonTemplate");
		btnLinea:SetSize(96, 22);
		btnLinea:SetPoint("LEFT", btnSpell, "RIGHT", 10, 0);
		btnLinea:SetText(L["EditorLinea"]);
		btnLinea:SetScript("OnClick", function()
			if editorId == nil then return; end
			table.insert(editorNota, editorLinea ~= nil and math.max(editorLinea + 1, 3) or #editorNota + 1, "* ");
			editorGuardar();
			editorRefrescar();
		end);

		-- fila de acciones
		local btnCopiar = CreateFrame("Button", nil, editorFrame, "UIPanelButtonTemplate");
		btnCopiar:SetSize(150, 24);
		btnCopiar:SetPoint("BOTTOMLEFT", 14, 12);
		btnCopiar:SetText(L["EditorCopiar"]);
		btnCopiar:SetScript("OnClick", editorCopiarDelPack);
		local btnProbar = CreateFrame("Button", nil, editorFrame, "UIPanelButtonTemplate");
		btnProbar:SetSize(150, 24);
		btnProbar:SetPoint("LEFT", btnCopiar, "RIGHT", 10, 0);
		btnProbar:SetText(L["EditorProbar"]);
		btnProbar:SetScript("OnClick", editorProbar);
		local btnQuitar = CreateFrame("Button", nil, editorFrame, "UIPanelButtonTemplate");
		btnQuitar:SetSize(150, 24);
		btnQuitar:SetPoint("LEFT", btnProbar, "RIGHT", 10, 0);
		btnQuitar:SetText(L["EditorQuitar"]);
		btnQuitar:SetScript("OnClick", editorQuitarNota);
	end

	-- posición recordada (como el frame de alerta)
	local ep = BossesConfig.editorPos;
	if type(ep) == "table" and type(ep.point) == "string" and type(ep.rel) == "string" and type(ep.x) == "number" and type(ep.y) == "number" then
		editorFrame:SetPoint(ep.point, UIParent, ep.rel, ep.x, ep.y);
	else
		editorFrame:SetPoint("CENTER", 0, 40);
	end
	editorFrame.edNombre:SetText(tostring(editorNota[1] or ""));
	editorFrame.edNombre:SetCursorPosition(0); -- principio del nombre a la vista
	editorRefrescar();
	editorFrame:Show();
	debugLog("editor", "abrir", tostring(editorId), "#lineas=" .. tostring(#editorNota));
end

-- Comandos --------------------------------------------------------------

local function bossesGestor(msg, editbox)
	forzarLocal = InCombatLockdown();

	local cmd, txt = msg:match("^(%S*)%s*(.-)$");
	cmd = string.upper(cmd);
	txt = txt or "";

	local tar = npcIdFromUnit("target") or "";

	if cmd == "" then
		-- Si no pone nada intentamos explicar el bos marcado
		explicaTarget("target");
	elseif cmd == "CANAL" then
		-- Queremos establecer el canal AUTO, GUILD, LOCAL, FRAME
		txt = string.upper(txt);
		if txt == "AUTO" or txt == "GUILD" or txt == "LOCAL" or txt == "FRAME" then
			setCanal(txt);
		end
	elseif cmd == "IDIOMA" then
		-- Idioma de las explicaciones: AUTO, ES, EN, FR, DE y los idiomas del
		-- editor web (RU, PT, ZH, KO — validado contra lo que acepte el core)
		txt = string.upper(txt);
		local valido = txt == "AUTO" or txt == "ES" or txt == "EN" or txt == "FR" or txt == "DE"
			or txt == "RU" or txt == "PT" or txt == "ZH" or txt == "KO";
		if valido then
			setLanguage(txt);
			dsp(L["Language"], txt);
		end
	elseif cmd == "DEBUG" then
		-- Modo depuración: on/off y vaciado del registro
		txt = string.lower(txt);
		if txt == "on" or txt == "si" or txt == "sí" then
			setDebug(true);
			dsp(L["Depuracion"], "on");
		elseif txt == "off" then
			setDebug(false);
			dsp(L["Depuracion"], "off");
		elseif txt == "vaciar" or txt == "clear" or txt == "limpar" or txt == "清空" or txt == "очистить" or txt == "비우기" then
			vaciarLog();
			dsp("registro de depuración vaciado");
		else
			dsp("/bosses DEBUG on|off|vaciar|clear|limpar|清空|очистить|비우기");
		end
	elseif cmd == "LOG" then
		-- Muestra las últimas líneas del registro en el chat (sin esperar
		-- al logout que es cuando el cliente escribe el fichero de WTF)
		local n = tonumber(txt) or 20;
		local log = (BossesDebug ~= nil and BossesDebug.log) or {};
		if #log == 0 then
			escribir("|cff33ff99Bosses|r: registro de depuración vacío");
		else
			local desde = math.max(1, #log - n + 1);
			for i = desde, #log do
				escribir(log[i]);
			end
		end
	elseif cmd == "EDITAR" or cmd == "EDIT" then
		-- Editor de explicaciones in-game (2026): UI profesional de las notas
		-- del usuario. Con id directo si trae; si no, el NPC marcado. En
		-- combate el GUID secreto devuelve el aviso común de +/!.
		local idArg = txt:match("^(%d+)%s*$");
		if idArg ~= nil then
			abrirEditor(idArg);
		elseif tar ~= "" then
			abrirEditor(tar);
		else
			dsp(L["EditorSinTarget"]);
		end
	elseif cmd == "!" then
		-- Queremos borrar una explicacion local
		if tar == "" then
			dsp("El id del NPC marcado no está disponible ahora (GUID secreto en combate); reinténtalo fuera de combate");
		else
			BossesConfig[tar] = nil;
		end
	elseif cmd == "+" and txt ~= "" then
		-- Queremos meter un bos nuevo en la base de datos
		if tar == "" then
			dsp("El id del NPC marcado no está disponible ahora (GUID secreto en combate); reinténtalo fuera de combate");
		else
			if BossesConfig[tar] == nil then
				BossesConfig[tar] = { GetUnitName("target") };
			end
			local i = #BossesConfig[tar] + 1;
			dsp(tar, i);
			BossesConfig[tar][i] = txt;
		end
	elseif cmd == "?" or cmd == "HELP" then
		dsp(L["Version"] .. " " .. getVersion());
		dsp(L["HELP1"]);
		dsp(L["HELP2"]);
		dsp(L["HELP3"]);
		dsp(L["HELP4"]);
		dsp(L["HELP5"]);
		dsp(L["HELP6"]);
		dsp(L["HELP7"]);
		dsp(L["HELP8"]);
		dsp(L["HELP9"]);
		dsp(L["HELP10"]);
		dsp(L["HELP11"]);
		local packs = BossesAPI.list();
		if #packs > 0 then
			dsp(L["Data packs"] .. ": " .. table.concat(packs, ", "));
		end
	elseif txt == "" then
		-- Explicamos el bos del parametro
		explica(cmd);
	end
end

SLASH_Bosses1 = '/bosses';
SlashCmdList["Bosses"] = bossesGestor;

-- Carga ------------------------------------------------------------------

local eventFrame = CreateFrame("Frame");
eventFrame:RegisterEvent("ADDON_LOADED");
eventFrame:RegisterEvent("ENCOUNTER_START");
eventFrame:RegisterEvent("ENCOUNTER_END");
eventFrame:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT");
eventFrame:RegisterEvent("BOSS_KILL");
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
eventFrame:RegisterEvent("CHAT_MSG_MONSTER_SAY");
eventFrame:RegisterEvent("CHAT_MSG_MONSTER_YELL");
eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED");
eventFrame:RegisterEvent("PLAYER_REGEN_DISABLED"); -- Arranque del combate real: ancla la huella de zona de combate
eventFrame:RegisterEvent("UNIT_AURA"); -- Huella de combate vivo: InCombatLockdown() palpita (false a mitad de encuentro, 2026-09-30); cada remesa de auras con lockdown re-ancla la huella
eventFrame:RegisterEvent("ADDON_ACTION_BLOCKED"); -- Respuesta del cliente a un envío bloqueado: recuperamos la línea en vuelo para la cola
eventFrame:RegisterEvent("CHAT_MSG_ADDON"); -- Reclamación anti-spam de otro jugador con el addon (SendAddonMessage "Bosses")
-- NOTA Midnight (12.1): intentar registrar el evento del registro de
-- combate es SIEMPRE vetado, incluso fuera de combate (BugGrabber
-- 2026-09-29: ADDON_ACTION_FORBIDDEN, Frame:RegisterEvent en el main
-- chunk; ni el pcall lo silencia — la prohibición se anuncia por evento,
-- no con un error). Y el envío de chat a grupo durante un encuentro está
-- bloqueado de forma fiable en TODOS los contextos (2026-09-30: 0/4
-- explicados, incluso con InCombatLockdown() en falso): el grupo recibe
-- la explicación al fin del combate y el dueño, en el frame de alerta.
eventFrame:SetScript("OnEvent", function(self, event, arg1, arg2, arg3, arg4, arg5, ...)
	if event == "UNIT_AURA" then
		-- Las auras cambian sin parar durante una pelea: re-ancla la
		-- huella de combate vivo (barato, sin envíos aquí).
		if InCombatLockdown() then
			ultimoCombate = GetTime();
		end
		return;
	elseif event == "PLAYER_REGEN_DISABLED" then
		-- La pelea empieza de verdad: re-ancla la huella y cancela el
		-- apagado pendiente del frame de alerta.
		ultimoCombate = GetTime();
		if alertaOcultar ~= nil then
			alertaOcultar:Cancel();
			alertaOcultar = nil;
		end
		actualizarBotonChat(); -- el botón "al chat" se esconde en combate
	elseif event == "ADDON_ACTION_BLOCKED" then
		-- El cliente devolvió un envío bloqueado NUESTRO (solo cabe en la
		-- microcarrera del pull al chat de grupo). El frame ya lleva la
		-- explicación COMPLETA desde el lanzamiento (2026-10-01), así que
		-- la línea bloqueada no se recupera: queda la huella para el
		-- diagnóstico.
		if arg1 == "Bosses" and arg2 == "SendChatMessage()" then
			if enVueloCanal ~= nil then
				enVueloCanal = nil;
				debugLog("bloqueo", "línea bloqueada (el frame ya la lleva)");
			else
				-- Diagnóstico: el bloqueo llegó sin línea en vuelo.
				-- Ha pasado a los 0.25s entre envíos (la marca la pisa el
				-- siguiente envío antes de llegar el bloqueo), el evento
				-- no llegó a tiempo o era la firma de cortesía (que no
				-- se marca en vuelo: es solo para el grupo).
				debugLog("bloqueo", "bloqueo sin linea en vuelo");
			end
		end
	elseif event == "ADDON_LOADED" and arg1 == ADDON_NAME then
		-- Migración del proyecto legado "Boses" (renombrado a Bosses): si
		-- el usuario copió los ficheros de SavedVariables del addon antiguo
		-- (Boses.lua -> Bosses.lua, en la cuenta y en el personaje), el
		-- cliente carga las tablas antiguas (siguen declaradas en el .toc
		-- durante la etapa de transición) y aquí se adoptan por referencia,
		-- conservando configuración, notas y registro. Si las tablas nuevas
		-- ya existen (arranques posteriores), no se toca nada.
		if BossesConfig == nil and BosesConfig ~= nil then
			BossesConfig = BosesConfig;
			debugLog("migración", "BossesConfig legado importado");
		end
		if BossesDebug == nil and BosesDebug ~= nil then
			BossesDebug = BosesDebug;
			debugLog("migración", "BossesDebug legado importado");
		end

		-- Aqui realizamos la carga inicial
		-- Registro de depuración (SavedVariable global): recorta restos de
		-- sesiones anteriores por encima del tope
		if BossesDebug == nil then
			BossesDebug = {};
		end
		if BossesDebug.log == nil then
			BossesDebug.log = {};
		end
		while #BossesDebug.log > MAX_DEBUG do
			table.remove(BossesDebug.log, 1);
		end

		initBossesConfig();
		activarPacks();
		-- Precalienta los índices de nombres y cobertura ENC: así el coste de
		-- construirlos NO cae en mitad del primer grito de combate o del
		-- ENCOUNTER_START del primer pull (pico de CPU en un evento caliente).
		asegurarIndice();
		forzarLocal = false;
		if C_ChatInfo ~= nil and C_ChatInfo.RegisterAddonMessagePrefix ~= nil then
			C_ChatInfo.RegisterAddonMessagePrefix("Bosses");
		end

		dsp(BossesConfig.CANAL);
		dsp(BossesConfig.IDIOMA);
		dsp(L["Version"] .. " " .. getVersion() .. L["loaded"]);

		debugLog("init", getVersion(), "locale=" .. tostring(GetLocale()), "canal=" .. tostring(BossesConfig.CANAL), "idioma=" .. tostring(BossesConfig.IDIOMA), "auto=" .. tostring(BossesConfig.AUTO_ENC), "debug=" .. tostring(BossesConfig.DEBUG));

		createMinimapIcon();
	elseif event == "ENCOUNTER_START" then
		encuentroActivo = arg2; -- nombre localizado del encuentro (fallback de los GUIDs secretos)
		encuentroActivoID = arg1; -- id del encuentro (para las criaturas vía diario)
		contadorEncuentros = contadorEncuentros + 1;
		forzarLocal = false;
		if IsInInstance() then
			-- ENCOUNTER_START de la propia instancia = pulleo seguro: la
			-- huella queda caliente aunque el jugador no haya entrado en
			-- combate personal todavía (healer a distancia) y aunque el
			-- lockdown palpite en falso.
			ultimoCombate = GetTime();
		end
		-- Fuera de instancia (jefes de mundo compartidos: Nymrissa,
		-- Doomwalker…) el ENCOUNTER_START llega TAMBIÉN cuando otros
		-- jugadores del reino empiezan la pelea: la huella no se ancla —
		-- el dueño parado ahí, fuera de SU combate, conserva el botón
		-- "al chat"; su huella solo se anclan PLAYER_REGEN/lockdown reales.
		debugLog("ENCOUNTER_START", "enc=" .. aTexto(arg1), "nombre=" .. aTexto(arg2), "dificultad=" .. aTexto(arg3), "grupo=" .. aTexto(arg4));
		if BossesConfig.AUTO_ENC then
			-- Modo Automático con anti-spam entre jugadores: resuelve el
			-- npc id del jefe entre ENC/boss units/diario y explica.
			local clave = nil;
			if arg2 ~= nil and not esSecreto(arg2) then
				clave = normalizarNombre(arg2);
			end
			explicarEncuentroAutomatico(arg1, arg2, clave or "enc" .. tostring(arg1));
		else
			-- Sin AUTO: solo diagnóstico en el registro de depuración
			-- ("+" = candidato con entrada en el pack, "-" = sin entrada)
			local candidatos = candidatosDeEncuentro(arg1, arg2);
			local detalle = {};
			for _, c in ipairs(candidatos) do
				table.insert(detalle, c.id .. "(" .. c.fuente .. (buscarEntrada(c.id) ~= nil and "+)" or "-)"));
			end
			debugLog("detección", "enc=" .. tostring(arg1), #detalle > 0 and table.concat(detalle, " ") or "sin candidatos");
		end
	elseif event == "ENCOUNTER_END" then
		debugLog("ENCOUNTER_END", "enc=" .. aTexto(arg1), "nombre=" .. aTexto(arg2), "exito=" .. aTexto(arg5));
		encuentroActivo = nil;
		encuentroActivoID = nil;
		explicadosRecientes = {};
		finCombate = GetTime();
		-- Pelea de jefe de mundo vista SIN entrar en combate (la tira otro):
		-- el PLAYER_REGEN_ENABLED del dueño no llega nunca y el frame colgaba
		-- abierto tras la muerte. Mismo reparto de gracia: 15 s y se apaga.
		-- Si el dueño sigue en su propio combate (zona caliente) no se arma:
		-- el regen lo hará al soltar.
		if not enZonaCaliente() then
			ocultarAlerta();
		end
	elseif event == "INSTANCE_ENCOUNTER_ENGAGE_UNIT" then
		-- Redundancia para encuentros sin ENCOUNTER_START (o con unidades
		-- que aparecen tarde): con IEEU las unidades boss1..N están
		-- pobladas. Solo actúa si no hay encuentro activo ya.
		local unidades = idsDeUnidadesJefe();
		local detalle = {};
		for _, u in ipairs(unidades) do
			table.insert(detalle, u.id);
		end
		debugLog("IEEU", #detalle > 0 and table.concat(detalle, ",") or "sin unidades", "encActivo=" .. tostring(encuentroActivoID));
		if BossesConfig.AUTO_ENC and encuentroActivoID == nil then
			for _, u in ipairs(unidades) do
				local entrada = buscarEntrada(u.id);
				if entrada ~= nil then
					local claves = clavesDeExplicacion(u.nombre, entrada, u.id);
					if yaExplicadoAlguno(claves) then
						break;
					end
					marcarExplicados(claves);
					debugLog("explicando", "IEEU", u.id);
					programarEnvio("id:" .. u.id, function()
						local actual = buscarEntrada(u.id);
						if actual ~= nil then
							enviarEntrada(actual, u.id);
						end
					end);
					break; -- una sola explicación por IEEU
				end
			end
		end
	elseif event == "BOSS_KILL" then
		debugLog("BOSS_KILL", "enc=" .. aTexto(arg1), "nombre=" .. aTexto(arg2));
	elseif event == "PLAYER_ENTERING_WORLD" then
		-- Radar de instancia: identifica la zona para el desplegable
		detectarInstancia();
	elseif event == "CHAT_MSG_MONSTER_SAY" or event == "CHAT_MSG_MONSTER_YELL" then
		-- Festivos y jefes que no disparan ENCOUNTER_START: el que habla
		-- es la criatura; si la tenemos en la base, la usamos como
		-- encuentro (técnica clásica de los addons de jefes).
		-- Tras un fin de combate se ignoran los gritos (p. ej. la frase
		-- de derrota del jefe: explicar a un jefe muerto es ruido).
		local sender = arg2;
		if sender ~= nil and not esSecreto(sender) and encuentroActivoID == nil and (GetTime() - finCombate) > 3 then
			forzarLocal = false;
			-- GUID del hablante: en los CHAT_MSG_MONSTER_* el GUID es un
			-- de los args profundos (posición según flavor/cliente); lo
			-- buscamos escaneando el resto (Creature-0-...-NPCID-...) para
			-- anotar el NPC id de los hablantes sin entrada — así caen
			-- solos los ids de escena de los festivos (Ilsa/Ursula de
			-- Coren, etc.) sin adivinarlos.
			local guidHablante = nil;
			-- pcall: un arg profundo puede ser valor secreto de Midnight;
			-- type() y string.find() sobre él lanzarían y contaminarían el
			-- handler. Degradamos a nil como en el resto del archivo.
			local okArgs, args = pcall(function(...) return {...} end, ...);
			if okArgs then
				for i = 1, select("#", unpackArgs(args)) do
					local v = select(i, unpackArgs(args));
					if type(v) == "string" and not esSecreto(v)
						and string.find(v, "^Creature%-", 1, false) ~= nil then
						guidHablante = v;
						break;
					end
				end
			end
			-- npcIdFromGUID ya lleva pcall + tonumber + id>0 + check de secreto:
			-- no tocamos strsplit a pelo sobre un GUID que puede ser secreto.
			local npcIdHablante = npcIdFromGUIDChecked(guidHablante);
			asegurarIndice();
			local clave = normalizarNombre(sender);
			local registro = indiceNombres[clave];
			if registro ~= nil then
				local npcIdEnc = nombresEnc[clave];
				if npcIdEnc ~= nil then
					-- El hablante está cubierto por una tabla ENC del pack:
					-- el grito de la escena (a menudo lejos del jefe, como
					-- Lothraxion narrando tras morir el jefe anterior) NO
					-- adelanta la explicación; el ENCOUNTER_START del pull
					-- real la entregará. Huella de depuración (1/min y
					-- hablante).
					local marca = "enc:" .. tostring(clave);
					local t = hablantesAnotados[marca];
					if t == nil or (GetTime() - t) > 60 then
						-- Tope de claves: si se llena, limpiamos las viejas (>10 min)
						-- para no crecer sin límite en sesiones largas.
						local n = 0;
						for _ in pairs(hablantesAnotados) do n = n + 1; end
						if n >= MAX_HABLANTES then
							local ahora = GetTime();
							for k, v in pairs(hablantesAnotados) do
								if (ahora - v) > 600 then hablantesAnotados[k] = nil; end
							end
						end
						hablantesAnotados[marca] = GetTime();
						debugLog("grito suprimido", "cobertura ENC (espera al pull)", clave, "id=" .. tostring(npcIdEnc));
					end
				else
					encuentroActivo = sender;
					local enCombateAlProgramar = UnitAffectingCombat("player");
					if BossesConfig.AUTO_ENC then
						programarEnvio(clave, function()
							-- Grito de derrota = estábamos en combate al programar
							-- (carrera con el fin de combate) y ya no al disparar.
							-- El habla de ENTRADA llega antes de que empiece el
							-- combate: el jugador aún no está en combate y se
							-- explica igual (comportamiento previo al refactor).
							if (not enCombateAlProgramar) or UnitAffectingCombat("player") then
								autoExplicar(sender);
							end
						end);
					end
				end
			else
				-- No está en la base: huella de depuración (posible jefe sin
				-- explicación); como mucho una vez por minuto y hablante.
				local t = hablantesAnotados[clave];
				if t == nil or (GetTime() - t) > 60 then
					local n = 0;
					for _ in pairs(hablantesAnotados) do n = n + 1; end
					if n >= MAX_HABLANTES then
						local ahora = GetTime();
						for k, v in pairs(hablantesAnotados) do
							if (ahora - v) > 600 then hablantesAnotados[k] = nil; end
						end
					end
					hablantesAnotados[clave] = GetTime();
					debugLog("hablante sin entrada", string.lower(event), tostring(sender), "id=" .. tostring(npcIdHablante));
				end
			end
		end
	elseif event == "CHAT_MSG_ADDON" then
		if arg1 == "Bosses" then
			-- Reclamación de otro jugador: cancelamos nuestro envío pendiente
			local accion, clave = strsplit("|", arg2 or "");
			if accion == "enc" and clave ~= nil then
				reclamados[clave] = GetTime();
				debugLog("reclamación", "otro jugador", clave);
				local t = pendientes[clave];
				if t ~= nil then
					pendientes[clave] = nil;
					t:Cancel();
				end
			end
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		-- Limpia los encuentros de festivos (no reciben ENCOUNTER_END)
		if encuentroActivoID == nil then
			encuentroActivo = nil;
		end
		explicadosRecientes = {};
		finCombate = GetTime();
		-- Combate acabado: zona fría otra vez (los envíos de chat ya son
		-- legales). SIN COLA (decisión 2026-10-01): nada se guarda para
		-- entregarlo tras la muerte del jefe; aquí solo se apaga el frame
		-- de alerta (la explicación entera ya vivió en él durante la
		-- pelea).
		ultimoCombate = 0;
		ocultarAlerta();
		actualizarBotonChat(); -- fuera de combate: el botón "al chat" vuelve
	end
end);
