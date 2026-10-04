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

local settingsCategory = nil;
local canalChecks = nil;
local firmaCheck = nil;
local langChecks = nil;
local autoEncCheck = nil;
local debugCheck = nil;
local encuentroActivo = nil;   -- nombre del encuentro en curso (ENCOUNTER_START)
local encuentroActivoID = nil; -- id del encuentro en curso (arg1 de ENCOUNTER_START)
local contadorEncuentros = 0;  -- ENCOUNTER_START recibidos desde la carga (diagnóstico)
local explicadosRecientes = {}; -- claves ya explicadas en el encuentro en curso (anti-duplicado multi-vía)
local hablantesAnotados = {};   -- anti-spam del registro de depuración de hablantes (clave → GetTime())
local MAX_DEBUG = 1000;         -- tope de líneas del registro de depuración
local finCombate = 0;          -- GetTime() del último fin de combate (para ignorar los gritos de muerte)

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
local function aTexto(v)
	if v == nil then
		return "";
	end

	if issecretvalue ~= nil and issecretvalue(v) then
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
	if issecretvalue ~= nil and issecretvalue(guid) then
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

-- Traduce al vuelo el texto visible de los enlaces de spell al idioma
-- del cliente: el id del enlace ya resolvía el tooltip en el idioma de
-- quien mira; ahora el nombre entre corchetes acompaña. Los packs NO
-- necesitan guardarse traducidos — el texto del pack queda como
-- respaldo si el cliente no trae el spell.
local function localizarEnlaces(txt)
	if txt == nil then
		return txt;
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

local function salida(txt, esFirma)
	txt = localizarEnlaces(txt); -- nombres de spells en el idioma del cliente
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
		SendChatMessage(sanearSalida(txt), autoChannel());
	elseif canal == "GUILD" then
		if IsInGuild() then
			SendChatMessage(sanearSalida(txt), "GUILD");
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
-- del combate y se puede arrastrar.
local alertaFrame = nil;   -- creado perezoso
local alertaOcultar = nil; -- el C_Timer que lo esconde tras el combate
local frameNpcId = nil;   -- jefe mostrado en el frame (botón "al chat")
local function ocultarAlerta()
	if alertaOcultar ~= nil then
		alertaOcultar:Cancel();
		alertaOcultar = nil;
	end
	if alertaFrame == nil or alertaFrame:IsShown() == false then
		return;
	end
	alertaOcultar = C_Timer.After(15, function()
		alertaOcultar = nil;
		if alertaFrame ~= nil then
			alertaFrame.nombre:SetText("");
			alertaFrame.cuerpo:SetText("");
			alertaFrame:Hide();
		end
	end);
end
-- Sin "local": asigna la variable declarada por adelantado (salida() la usa).
function salidaEnPantalla(linea, nueva)
	linea = localizarEnlaces(linea); -- nombres de spells en el idioma del cliente
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
		alertaFrame:SetScript("OnDragStart", alertaFrame.StartMoving);
		alertaFrame:SetScript("OnDragStop", function(self)
			self:StopMovingOrSizing();
			-- Guardar dónde quedó el frame: por personaje, igual que la
			-- posición del botón de minimapa.
			local punto, _, relativo, x, y = self:GetPoint(1);
			if punto ~= nil then
				BossesConfig.framePos = { point = punto, rel = relativo or punto, x = x or 0, y = y or 0 };
			end
		end);
		-- Botón X de cierre (además de la tecla ESC)
		local cerrar = CreateFrame("Button", nil, alertaFrame, "UIPanelCloseButtonTemplate");
		cerrar:SetSize(20, 20);
		cerrar:SetPoint("TOPRIGHT", -6, -6);
		cerrar:SetScript("OnClick", function()
			if alertaOcultar ~= nil then
				alertaOcultar:Cancel();
				alertaOcultar = nil;
			end
			alertaFrame:Hide();
		end);
		-- La primera vez se abre centrado arriba; después, donde lo
		-- dejaste la última vez (guardado por personaje). La validación
		-- estricta evita anclas corruptas que cascarían la creación.
		local fp = BossesConfig.framePos;
		if type(fp) == "table" and type(fp.point) == "string" and type(fp.rel) == "string" and type(fp.x) == "number" and type(fp.y) == "number" then
			alertaFrame:SetPoint(fp.point, UIParent, fp.rel, fp.x, fp.y);
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
		alertaFrame:SetBackdropColor(0.06, 0.06, 0.08, 0.85);
		-- Etiqueta pequeña dorada con la marca del addon
		local marca = alertaFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
		marca:SetPoint("TOPLEFT", 16, -10);
		marca:SetText("BOSSES");
		marca:SetTextColor(1, 0.85, 0.4);
		alertaFrame.marca = marca;
		-- Nombre del jefe como cabecera grande de la explicación
		local nombre = alertaFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
		nombre:SetPoint("TOPLEFT", marca, "BOTTOMLEFT", 0, -4);
		nombre:SetWidth(328);
		nombre:SetJustifyH("LEFT");
		if nombre.SetHyperlinksEnabled ~= nil then
			nombre:SetHyperlinksEnabled(true); -- links clicables; sin el método el texto sale igual, solo sin link
		end
		alertaFrame.nombre = nombre;
		-- Divisoria dorada fina bajo el nombre
		local divisor = alertaFrame:CreateTexture(nil, "OVERLAY");
		divisor:SetColorTexture(1, 0.85, 0.4, 0.55);
		divisor:SetHeight(1);
		divisor:SetPoint("TOPLEFT", nombre, "BOTTOMLEFT", 0, -6);
		divisor:SetPoint("RIGHT", -16, 0);
		-- Cuerpo: cada consejo en su párrafo, con viñeta dorada, el
		-- marcado del pack intacto y links clicables
		local cuerpo = alertaFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
		cuerpo:SetPoint("TOPLEFT", divisor, "BOTTOMLEFT", 0, -8);
		cuerpo:SetWidth(328);
		cuerpo:SetJustifyH("LEFT");
		if cuerpo.SetHyperlinksEnabled ~= nil then
			cuerpo:SetHyperlinksEnabled(true);
		end
		alertaFrame.cuerpo = cuerpo;
		-- El dueño arrastra el frame; los links del texto se tratan como en el chat
		alertaFrame:SetScript("OnHyperlinkClick", function(_, link, textoLiga, boton, chatFrame)
			pcall(ChatFrame_OnHyperlinkShow, DEFAULT_CHAT_FRAME, link, textoLiga, boton, chatFrame);
		end);
		-- Tooltip del enlace al PASAR el ratón (como en las barras de
		-- acción): el juego lo resuelve en el idioma de quien mira.
		alertaFrame:SetScript("OnHyperlinkEnter", function(_, link)
			if GameTooltip ~= nil then
				pcall(function()
					GameTooltip:SetOwner(alertaFrame, "ANCHOR_CURSOR");
					GameTooltip:SetHyperlink(link);
					GameTooltip:Show();
				end);
			end
		end);
		alertaFrame:SetScript("OnHyperlinkLeave", function()
			if GameTooltip ~= nil then
				GameTooltip:Hide();
			end
		end);
		-- Botón "al chat": reenvía la entrada del jefe en pantalla por la
		-- ruta fría normal (reparto espaciado + firma — la vía del grito
		-- de Coren). Solo se muestra fuera de combate y con un jefe
		-- elegido desde el desplegable del minimapa: en combate el
		-- cliente bloquea esos envíos y el botón se esconde.
		local boton = CreateFrame("Button", nil, alertaFrame, "UIPanelButtonTemplate");
		boton:SetSize(96, 22);
		boton:SetPoint("BOTTOMRIGHT", -14, 12);
		boton:SetText(L["BotonAlChat"]);
		boton:SetScript("OnClick", function()
			enviarJefeDelFrame();
		end);
		boton:Hide();
		alertaFrame.botonChat = boton;
	end
	if nueva then
		-- Nueva explicación: la primera línea es el nombre del jefe, va a
		-- la cabecera; reinicia el cuerpo para que no se mezclen jefes
		alertaFrame.nombre:SetText(linea);
		alertaFrame.cuerpo:SetText("");
	else
		local cuerpo = alertaFrame.cuerpo;
		local actuales = cuerpo:GetText();
		local fila = linea;
		if string.sub(fila, 1, 2) == "* " then -- viñeta dorada, solo en el frame
			fila = "|cffffd100*|r " .. string.sub(fila, 3);
		end
		cuerpo:SetText(actuales ~= nil and actuales ~= "" and actuales .. "\n" .. fila or fila);
	end
	ajustarAlturaAlerta();
	alertaFrame:Show();
	-- Fuera de zona de combate el frame se apaga solo a los 15s: las
	-- vistas frías (menú del minimapa, avisos, explicaciones con el pull
	-- aún lejos) también necesitan salida — antes solo lo apagaba el fin
	-- del combate y una vista fría se quedaba abierta para siempre
	-- (visto al salir de la mazmorra, 2026-10-01). En zona caliente no se
	-- arma: lo hará el PLAYER_REGEN_ENABLED al acabar la pelea.
	if not enZonaCaliente() then
		ocultarAlerta();
	end
end

-- Alto del frame de alerta: marca + cabecera + divisoria + cuerpo + pie.
-- El pie crece cuando el botón "al chat" está visible. Declarada por
-- adelantado (salidaEnPantalla la llama) y definida aquí, tras el frame.
function ajustarAlturaAlerta()
	if alertaFrame == nil then
		return;
	end
	local pie = 14;
	if alertaFrame.botonChat ~= nil and alertaFrame.botonChat:IsShown() then
		pie = 40;
	end
	alertaFrame:SetHeight(10 + alertaFrame.marca:GetHeight() + 4 + alertaFrame.nombre:GetHeight() + 6 + 1 + 8 + alertaFrame.cuerpo:GetHeight() + pie);
end

-- Visibilidad del botón "al chat": con un jefe en pantalla y fuera de la
-- zona de combate. Se reevalúa al elegir jefe en el desplegable y al
-- entrar o salir de combate.
local function actualizarBotonChat()
	if alertaFrame == nil or alertaFrame.botonChat == nil then
		return;
	end
	if frameNpcId ~= nil and not enZonaCaliente() then
		alertaFrame.botonChat:Show();
	else
		alertaFrame.botonChat:Hide();
	end
	ajustarAlturaAlerta();
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
local function enviarEntrada(entrada)
	for i, c in ipairs(entrada) do
		salidaEnPantalla(c, i == 1); -- la primera línea es el nombre: cabecera
	end

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
-- Formato multilenguaje (recomendado):  { ES = {...}, EN = {...} }  con
-- ambas subtablas completas; el core elige la activa según
-- BossesConfig.IDIOMA (AUTO/ES/EN) en el ADDON_LOADED y en cada cambio
-- de idioma desde la configuración. Formato plano (legacy): una única
-- tabla, tal cual, sin cambiar de idioma.

BossesAPI = BossesAPI or {};

local packSources = {};

-- Índice global de zonas (instanceID → { nombre, jefes }): se reconstruye
-- en activarPacks con los índices de todos los packs; lo usa el radar de
-- instancia (desplegable del minimapa).
local zonasActuales = {};

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
local function activarPacks()
	local idioma = (BossesConfig ~= nil and BossesConfig.IDIOMA) or "AUTO";

	for _, src in ipairs(packSources) do
		if src.ES ~= nil or src.EN ~= nil then
			-- Multilenguaje
			if idioma == "ES" then
				src.data = src.ES;
			elseif idioma == "EN" then
				src.data = src.EN;
			else
				local es = (GetLocale() == "esES" or GetLocale() == "esMX");
				src.data = (es and src.ES) or src.EN;
			end
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

	-- Detecta el formato: multilenguaje si trae subtablas ES/EN
	local src = { name = name };

	if type(data.ES) == "table" or type(data.EN) == "table" then
		src.ES = (type(data.ES) == "table") and data.ES or nil;
		src.EN = (type(data.EN) == "table") and data.EN or nil;
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

	debugLog("pack", name, "ES=" .. contarEntradas(src.ES), "EN=" .. contarEntradas(src.EN), "ENC=" .. contarClaves(src.enc), "ZON=" .. contarClaves(src.zonas), "reemplazo=" .. tostring(replaced));
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
		enviarEntrada(entrada);
	else
		debugLog("sin entrada (id)", tostring(nbos));
		if enZonaCaliente() or BossesConfig.CANAL == "FRAME" then
			salidaEnPantalla(tostring(nbos), true); -- cabecera del frame con la id del NPC
			salidaEnPantalla(L[": This NPC is not described."]);
		end
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

-- Cobertura ENC por nombre: para cada npcId citado en los valores de las
-- tablas ENC de los packs, anota el nombre de su entrada (en CUALQUIER
-- idioma). Es el filtro de los gritos de escena: si el hablante está
-- cubierto por ENC, su explicación ya llegará con el ENCOUNTER_START del
-- pull real (visto 2026: Lothraxion narraba de lejos tras morir el jefe
-- anterior y el grito adelantó la explicación de todo el grupo).
local function construirCoberturaEnc()
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

	if nombreEncuentro ~= nil and (issecretvalue == nil or not issecretvalue(nombreEncuentro)) then
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
				if nombre ~= nil and issecretvalue ~= nil and issecretvalue(nombre) then
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
	if nombreEncuentro ~= nil and (issecretvalue == nil or not issecretvalue(nombreEncuentro)) then
		if indiceNombres == nil then
			construirIndice();
		end
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
	if nombre == nil or (issecretvalue ~= nil and issecretvalue(nombre)) then
		return;
	end

	if indiceNombres == nil then
		construirIndice();
	end

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
		enviarEntrada(entrada);
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
	if enZonaCaliente() or BossesConfig.CANAL == "FRAME" then
		salidaEnPantalla(nombre, true); -- cabecera del frame con el nombre del NPC
		salidaEnPantalla(L[": This NPC is not described."]);
	end
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
	if indiceNombres == nil then
		construirIndice();
	end
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
						enviarEntrada(entrada);
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
						enviarEntrada(entrada);
						return true;
					end
				end
			end
			j = j + 1;
		end
	end

	-- El resto de fuentes (ENC del pack, unidades boss, diario completo):
	-- la primera entrada existente gana
	local entrada = entradaDeCandidatos(candidatosDeEncuentro(encuentroActivoID, nil));
	if entrada ~= nil then
		enviarEntrada(entrada);
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
						enviarEntrada(entrada);
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
					if enZonaCaliente() or BossesConfig.CANAL == "FRAME" then
						salidaEnPantalla(rotulo, true);
						salidaEnPantalla(L[": This NPC is not described."]);
					else
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
			enviarEntrada(entrada);
		end
	end);
end

-- Resumen de los jefes de la instancia actual vía diario (EJ): para el
-- pre-pull dentro de instancia, cuando ni el GUID ni el nombre del
-- objetivo son utilizables. Sale siempre por local (es una referencia,
-- no un anuncio al grupo).
local function explicarInstancia()
	if indiceNombres == nil then
		construirIndice();
	end

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
	if nombre ~= nil and (issecretvalue == nil or not issecretvalue(nombre)) and nombre ~= UNKNOWNOBJECT and nombre ~= "" then
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

	langChecks.AUTO:SetChecked(idioma == "AUTO");
	langChecks.ES:SetChecked(idioma == "ES");
	langChecks.EN:SetChecked(idioma == "EN");
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
	frame:SetSize(380, 470);

	local titulo = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge");
	titulo:SetPoint("TOPLEFT", 10, -12);
	titulo:SetText("Bosses");

	local subtitulo = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo:SetPoint("TOPLEFT", titulo, "BOTTOMLEFT", 0, -4);
	subtitulo:SetText(L["Select output channel"]);

	canalChecks = {};

	local defs = { { "AUTO", "CanalGrupo" }, { "GUILD", "Guild" }, { "LOCAL", "OutputNormal" }, { "FRAME", "CanalFrame" } };
	local y = -46;

	for _, d in ipairs(defs) do
		local key, label = d[1], d[2];
		local cb = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate");
		cb:SetPoint("TOPLEFT", 0, y);
		cb.Text:SetText(L[label]);
		cb.Text:SetTextColor(1, 1, 1, 1);
		cb:SetScript("OnClick", function() setCanal(key); end);
		canalChecks[key] = cb;
		y = y - 30;
	end

	-- Firma de cortesía en los canales compartidos (independiente del canal)
	firmaCheck = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate");
	firmaCheck:SetPoint("TOPLEFT", 0, y);
	firmaCheck.Text:SetText(L["FirmaCortesia"]);
	firmaCheck.Text:SetTextColor(1, 1, 1, 1);
	firmaCheck:SetScript("OnClick", function(self) BossesConfig.FIRMA = self:GetChecked() and true or false; end);
	y = y - 30;

	-- Idioma de las explicaciones
	local subtitulo2 = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo2:SetPoint("TOPLEFT", 10, y - 4);
	subtitulo2:SetText(L["Language"]);

	langChecks = {};

	local idiomas = { { "AUTO", "Auto" }, { "ES", "Spanish" }, { "EN", "English" } };
	y = y - 28;

	for _, d in ipairs(idiomas) do
		local key, label = d[1], d[2];
		local cb = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate");
		cb:SetPoint("TOPLEFT", 0, y);
		cb.Text:SetText(L[label]);
		cb.Text:SetTextColor(1, 1, 1, 1);
		cb:SetScript("OnClick", function() setLanguage(key); end);
		langChecks[key] = cb;
		y = y - 30;
	end

	-- Explicación automática de encuentros
	local subtitulo3 = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo3:SetPoint("TOPLEFT", 10, y - 4);
	subtitulo3:SetText(L["Encuentros"]);

	autoEncCheck = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate");
	autoEncCheck:SetPoint("TOPLEFT", 0, y - 28);
	autoEncCheck.Text:SetText(L["AutoEnc"]);
	autoEncCheck.Text:SetTextColor(1, 1, 1, 1);
	autoEncCheck:SetScript("OnClick", function(self) setAutoEnc(self:GetChecked() and true or false); end);
	y = y - 58;

	-- Depuración ------------------------------------------------------------
	local subtitulo4 = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	subtitulo4:SetPoint("TOPLEFT", 10, y - 4);
	subtitulo4:SetText(L["Depuracion"]);

	debugCheck = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate");
	debugCheck:SetPoint("TOPLEFT", 0, y - 28);
	debugCheck.Text:SetText(L["Debug"]);
	debugCheck.Text:SetTextColor(1, 1, 1, 1);
	debugCheck:SetScript("OnClick", function(self) setDebug(self:GetChecked() and true or false); end);
	y = y - 58;

	local vaciarBtn = CreateFrame("Button", nil, frame, "UIButtonTemplate");
	vaciarBtn:SetPoint("TOPLEFT", 0, y - 2);
	vaciarBtn:SetSize(220, 24);
	vaciarBtn:SetText(L["VaciarLog"]);
	vaciarBtn:SetScript("OnClick", function()
		vaciarLog();
		escribir("|cff33ff99Bosses|r: registro de depuración vaciado (se graba al salir o con /reload)");
	end);
	y = y - 30;

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
		enviarEntrada(entrada);
	end
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
		-- Idioma de las explicaciones: AUTO, ES, EN
		txt = string.upper(txt);
		if txt == "AUTO" or txt == "ES" or txt == "EN" then
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
		elseif txt == "vaciar" or txt == "clear" then
			vaciarLog();
			dsp("registro de depuración vaciado");
		else
			dsp("/bosses DEBUG on|off|vaciar");
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
		ultimoCombate = GetTime(); -- ENCOUNTER_START = pulleo seguro: la huella queda caliente
		-- aunque el jugador no haya entrado en combate personal todavía
		-- (healer a distancia) y aunque el lockdown palpite en falso.
		debugLog("ENCOUNTER_START", "enc=" .. aTexto(arg1), "nombre=" .. aTexto(arg2), "dificultad=" .. aTexto(arg3), "grupo=" .. aTexto(arg4));
		if BossesConfig.AUTO_ENC then
			-- Modo Automático con anti-spam entre jugadores: resuelve el
			-- npc id del jefe entre ENC/boss units/diario y explica.
			local clave = nil;
			if arg2 ~= nil and (issecretvalue == nil or not issecretvalue(arg2)) then
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
							enviarEntrada(actual);
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
		if sender ~= nil and (issecretvalue == nil or not issecretvalue(sender)) and encuentroActivoID == nil and (GetTime() - finCombate) > 3 then
			forzarLocal = false;
			-- GUID del hablante: en los CHAT_MSG_MONSTER_* el GUID es un
			-- de los args profundos (posición según flavor/cliente); lo
			-- buscamos escaneando el resto (Creature-0-...-NPCID-...) para
			-- anotar el NPC id de los hablantes sin entrada — así caen
			-- solos los ids de escena de los festivos (Ilsa/Ursula de
			-- Coren, etc.) sin adivinarlos.
			local guidHablante = nil;
			for i = 1, select("#", ...) do
				local v = select(i, ...);
				if type(v) == "string" and string.find(v, "^Creature%-", 1, false) ~= nil then
					guidHablante = v;
					break;
				end
			end
			local npcIdHablante = guidHablante ~= nil and select(6, strsplit("-", guidHablante)) or nil;
			if indiceNombres == nil then
				construirIndice();
			end
			local clave = normalizarNombre(sender);
			local registro = indiceNombres[clave];
			if registro ~= nil then
				if nombresEnc == nil then
					construirCoberturaEnc();
				end
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
					hablantesAnotados[clave] = GetTime();
					debugLog("hablante sin entrada", string.lower(event), tostring(sender));
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
