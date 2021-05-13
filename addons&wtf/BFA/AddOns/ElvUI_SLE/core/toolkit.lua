local SLE, T, E, L, V, P, G = unpack(select(2, ...))

--GLOBALS: unpack, NUM_BAG_SLOTS, IsAddOnLoaded, DEFAULT_CHAT_FRAME
local _G = _G
local select, format, tonumber, match, ipairs, pairs, gsub = select, format, tonumber, match, ipairs, pairs, gsub
local getmetatable, error, type, assert, random = getmetatable, error, type, assert, random
local tremove, tinsert, tconcat, date = tremove, tinsert, tconcat, date
local strjoin, strmatch, strsplit, strfind = strjoin, strmatch, strsplit, strfind
local EnumerateFrames = EnumerateFrames
local GetItemInfo = GetItemInfo

T.StringToUpper = function(str)
	return (gsub(str, "^%l", strupper))
end

T.GetSpell = function(id)
	local name = GetSpellInfo(id)
	return name
end

--Some of Simpy's herecy bullshit
T.rgsub = function(pattern, ...)
	local z = select("#", ...)
	local x = floor(z / 2)
	local s
	for i = 1, x do
		z = select(i, ...)
		if strmatch(pattern, z) then
			s = select(i + x, ...)
			pattern = gsub(pattern, z, s)
		end
	end
	return pattern
end

T.SafeHookScript = function(frame, handlername, newscript)
	local oldValue = frame:GetScript(handlername)
	frame:SetScript(handlername, newscript)
	return oldValue
end

--Search in a table like {"arg1", "arg2", "arg3"}
function SLE:SimpleTable(table, item)
	for i = 1, #table do
		if table[i] == item then
			return true
		end
	end

	return false
end
--Search in a table like {["stuff"] = {}, ["stuff2"] = {} }
function SLE:ValueTable(table, item)
	for i, _ in pairs(table) do
		if i == item then
			return true
		end
	end

	return false
end

function SLE:GetIconFromID(type, id)
	local path
	if type == "item" then
		path = select(10, GetItemInfo(id))
	elseif type == "spell" then
		path = select(3, GetSpellInfo(id))
	elseif type == "achiev" then
		path = select(10, GetAchievementInfo(id))
	end
	return path or nil
end

--For searching stuff in bags
function SLE:BagSearch(itemId)
	for container = 0, NUM_BAG_SLOTS do
		for slot = 1, GetContainerNumSlots(container) do
			if itemId == GetContainerItemID(container, slot) then
				return container, slot
			end
		end
	end
end

--Additional tutorials if any
function SLE:AddTutorials()
end

--S&L print
function SLE:Print(msg, type)
	if type == "error" then
		(_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(strjoin("", "|cffff0000S&L Error:|r ", msg))
	elseif type == "warning" then
		(_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(strjoin("", "|cffd3cf00S&L Warning:|r ", msg))
	elseif type == "info" then
		(_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(strjoin("", "|cff14adcdS&L Info:|r ", msg))
	else
		(_G[E.db.general.messageRedirect] or DEFAULT_CHAT_FRAME):AddMessage(
			strjoin("", E["media"].hexvaluecolor, "S&L Message:|r ", msg)
		)
	end
end

--A function to ensure any files which set movers will be recognised as text by git.
function SLE:SetMoverPosition(mover, anchor, parent, point, x, y)
	if not _G[mover] then
		return
	end
	local frame = _G[mover]

	frame:ClearAllPoints()
	frame:SetPoint(anchor, parent, point, x, y)
	E:SaveMoverPosition(mover)
end

--To get stuff from item link. Got this from suspctz
function SLE:GetItemSplit(itemLink)
	local itemString = strmatch(itemLink, "item:([%-?%d:]+)")
	local itemSplit = {}

	-- Split data into a table
	for _, v in ipairs({strsplit(":", itemString)}) do
		if v == "" then
			itemSplit[#itemSplit + 1] = 0
		else
			itemSplit[#itemSplit + 1] = tonumber(v)
		end
	end

	return itemSplit
end

--Reseting shit
function SLE:Reset(group)
	if not group then
		print("U wot m8?")
	end
	if group == "unitframes" or group == "all" then
		E.db.sle.roleicons = "ElvUI"
		E.db.sle.powtext = false
	end
	if group == "backgrounds" or group == "all" then
		E:CopyTable(E.db.sle.backgrounds, P.sle.backgrounds)
		E:ResetMovers(L["SLE_BG_1_Mover"])
		E:ResetMovers(L["SLE_BG_2_Mover"])
		E:ResetMovers(L["SLE_BG_3_Mover"])
		E:ResetMovers(L["SLE_BG_4_Mover"])
	end
	if group == "datatexts" or group == "all" then
		E:CopyTable(E.db.sle.datatexts, P.sle.datatexts)
		E:CopyTable(E.db.sle.dt, P.sle.dt)
		E:ResetMovers(L["SLE_DataPanel_1"])
		E:ResetMovers(L["SLE_DataPanel_2"])
		E:ResetMovers(L["SLE_DataPanel_3"])
		E:ResetMovers(L["SLE_DataPanel_4"])
		E:ResetMovers(L["SLE_DataPanel_5"])
		E:ResetMovers(L["SLE_DataPanel_6"])
		E:ResetMovers(L["SLE_DataPanel_7"])
		E:ResetMovers(L["SLE_DataPanel_8"])
	end
	if group == "marks" or group == "all" then
		E:CopyTable(E.db.sle.raidmarkers, P.sle.raidmarkers)
		E:ResetMovers(L["Raid Marker Bar"])
	end
	if group == "all" then
		E:CopyTable(E.db.sle, P.sle)
		E:ResetMovers("PvP")
		E:ResetMovers(L["S&L UI Buttons"])
		E:ResetMovers(L["Error Frame"])
		E:ResetMovers(L["Pet Battle Status"])
		E:ResetMovers(L["Pet Battle AB"])
		E:ResetMovers(L["Farm Seed Bars"])
		E:ResetMovers(L["Farm Tool Bar"])
		E:ResetMovers(L["Farm Portal Bar"])
		E:ResetMovers(L["Garrison Tools Bar"])
		E:ResetMovers(L["Ghost Frame"])
		E:ResetMovers(L["Raid Utility"])
	end
	E:UpdateAll()
end

function SLE:GetMapInfo(id, arg)
	if not arg then
		return
	end
	local MapInfo
	if T.MapInfoTable[id] then
		MapInfo = T.MapInfoTable[id]
	else
		MapInfo = C_Map.GetMapInfo(id)
		T.MapInfoTable[id] = MapInfo
	end
	if not MapInfo then
		return UNKNOWN
	end
	if arg == "all" then
		return MapInfo["name"], MapInfo["mapID"], MapInfo["parentMapID"], MapInfo["mapType"]
	end
	return MapInfo[arg]
end

--Some texture magic. Thanks Semlar for this
SLE.TestTextureFrame = CreateFrame("Frame")
SLE.TestTextureFrame.texture = SLE.TestTextureFrame:CreateTexture()

function SLE:TextureExists(path, realTerxture, fallbackPath, holderFrame, modTestFrame, modTestTexture)
	if not path or path == "" then
		return
	end
	if not realTerxture or realTerxture == "" then
		return
	end
	local f = holderFrame or modTestFrame or SLE.TestTextureFrame
	local tx = modTestTexture or SLE.TestTextureFrame.texture
	tx.realTexture = realTerxture
	tx:SetPoint("BOTTOMRIGHT", E.UIParent, "TOPRIGHT") -- The texture has to be "visible", but not necessarily on-screen (you can also set its alpha to 0)
	f:SetAllPoints(tx)

	f:SetScript(
		"OnSizeChanged",
		function(self, width, height)
			local size = format("%.0f%.0f", width, height) -- The floating point numbers need to be rounded or checked like "width < 8.1 and width > 7.9"
			if size == "11" then
				-- print(tx:GetTexture(), "doesn't exist or can't be determined")
				tx.realTexture:SetTexture(fallbackPath or "")
			-- print(tx.realTexture:GetTexture())
			-- else
			-- print(tx:GetTexture(), "exists")
			end
		end
	)
	tx:SetTexture(path)
	tx:SetSize(0, 0) -- Size must be set after every SetTexture
end

--When we need to get mutiple modules in a file
function SLE:GetElvModules(...)
	local returns = {}
	local num = select("#", ...) --Getting the number of modules passed
	for i = 1, num do
		local name = select(i, ...)
		if type(name) == "string" then --Checking if *cough* someone send not string as a module name
			local mod = E:GetModule(name)
			tinsert(returns, #(returns) + 1, mod)
		else
			error([[Usage: SLE:GetElvModules(): expected a string as a module name got a ]] .. type(name), 2)
		end
	end
	return unpack(returns) --Returning modules back
end

function SLE:GetModules(...)
	local returns = {}
	local num = select("#", ...)
	for i = 1, num do
		local name = select(i, ...)
		if type(name) == "string" then
			local mod = SLE:GetModule(name)
			tinsert(returns, #(returns) + 1, mod)
		else
			error([[Usage: SLE:GetModules(): expected a string as a module name got a ]] .. type(name), 2)
		end
	end
	return unpack(returns)
end

--Trying to determine the region player is in, not entirely reliable cause based on atypet not an actual region id
function SLE:GetRegion()
	local lib = LibStub("LibRealmInfo")
	if not GetPlayerInfoByGUID(E.myguid) then
		return
	end
	local rid, _, _, _, _, _, region = lib:GetRealmInfoByGUID(E.myguid)
	SLE.region = region
	if not SLE.region then
		if not IsTestBuild() then
			SLE.region =
				format(
				"An error happened. Your region is unknown. Realm: %s. RID: %s. Please report your realm name and the region you are playing in to |cff1784d1Shadow & Light|r authors.",
				E.myrealm,
				rid or "nil"
			)
			SLE:Print(SLE.region, 'error')
		end
		SLE.region = "PTR"
	end
end

--Registering and loading modules
SLE["RegisteredModules"] = {}
function SLE:RegisterModule(name)
	if self.initialized then
		self:GetModule(name):Initialize()
	else
		self["RegisteredModules"][#self["RegisteredModules"] + 1] = name
	end
end

local GetCVarBool = GetCVarBool
local pcall = pcall
local ScriptErrorsFrame_OnError = ScriptErrorsFrame_OnError
function SLE:InitializeModules()
	for _, module in pairs(SLE["RegisteredModules"]) do
		module = self:GetModule(module)
		if module.Initialize then
			local _, catch = pcall(module.Initialize, module)

			if catch and GetCVarBool("scriptErrors") == true then
				if E.wowbuild < 24330 then --7.2
					ScriptErrorsFrame_OnError(catch, false)
				end
			end
		end
	end
end

--[[
Updating alongside with ElvUI. SLE:UpdateAll() is hooked to E:UpdateAll()
Modules are supposed to provide a function(s) to call when profile change happens (or global update is called).
Provided functions should be named Module:ForUpdateAll() or otherwise stored in SLE.UpdateFunctions table (when there is no need of reassigning settings table.
Each modules insert their functions in respective files.
]]
local collectgarbage = collectgarbage
SLE.UpdateFunctions = {}
function SLE:UpdateAll()
	if not SLE.initialized then
		return
	end

	for _, name in pairs(SLE["RegisteredModules"]) do
		local module = SLE:GetModule(name)
		if module.ForUpdateAll then
			module:ForUpdateAll()
		else
			if SLE.UpdateFunctions[name] then
				SLE.UpdateFunctions[name]()
			end
		end
	end

	if not SLE._Compatibility["oRA3"] then
		SLE:GetModule("BlizzRaid"):CreateAndUpdateIcons()
	end

	SLE:SetCompareItems()

	collectgarbage("collect")
end

--Movable buttons in config stuff. Some Simpy's billshit applied
local function MovableButton_Match(s, v)
	local m1, m2, m3, m4 = "^" .. v .. "$", "^" .. v .. ",", "," .. v .. "$", "," .. v .. ","
	return (match(s, m1) and m1) or (match(s, m2) and m2) or (match(s, m3) and m3) or (match(s, m4) and v .. ",")
end
function SLE:MovableButtonSettings(db, key, value, remove, movehere)
	local str = db[key]
	if not db or not str or not value then
		return
	end
	local found = MovableButton_Match(str, E:EscapeString(value))
	if found and movehere then
		local tbl, sv, sm = {strsplit(",", str)}
		for i in ipairs(tbl) do
			if tbl[i] == value then
				sv = i
			elseif tbl[i] == movehere then
				sm = i
			end
			if sv and sm then
				break
			end
		end
		tremove(tbl, sm)
		tinsert(tbl, sv, movehere)

		db[key] = tconcat(tbl, ",")
	elseif found and remove then
		db[key] = gsub(str, found, "")
	elseif not found and not remove then
		db[key] = (str == "" and value) or (str .. "," .. value)
	end
end

function SLE:CreateMovableButtons(Order, Name, CanRemove, db, key)
	local moveItemFrom, moveItemTo
	local config = {
		order = Order,
		dragdrop = true,
		type = "multiselect",
		name = Name,
		dragOnLeave = function()
		end, --keep this here
		dragOnEnter = function(info)
			moveItemTo = info.obj.value
		end,
		dragOnMouseDown = function(info)
			moveItemFrom, moveItemTo = info.obj.value, nil
		end,
		dragOnMouseUp = function(info)
			SLE:MovableButtonSettings(db, key, moveItemTo, nil, moveItemFrom) --add it in the new spot
			moveItemFrom, moveItemTo = nil, nil
		end,
		stateSwitchGetText = function(info, TEXT)
			local text = GetItemInfo(tonumber(TEXT))
			info.userdata.text = text
			return text
		end,
		stateSwitchOnClick = function(info)
			SLE:MovableButtonSettings(db, key, moveItemFrom)
		end,
		values = function()
			local str = db[key]
			if str == "" then
				return nil
			end
			return {strsplit(",", str)}
		end,
		get = function(info, value)
			local str = db[key]
			if str == "" then
				return nil
			end
			local tbl = {strsplit(",", str)}
			return tbl[value]
		end,
		set = function(info, value)
		end
	}
	if CanRemove then --This allows to remove shit
		config.dragOnClick = function(info)
			SLE:MovableButtonSettings(db, key, moveItemFrom, true)
		end
	end
	return config
end

--New API
local function LevelUpBG(frame, topcolor, bottomcolor)
	if not frame then
		return
	end
	frame.bg = frame:CreateTexture(nil, "BACKGROUND")
	frame.bg:SetTexture([[Interface\LevelUp\LevelUpTex]])
	frame.bg:SetPoint("CENTER")
	frame.bg:Point("TOPLEFT", frame, 0, 8)
	frame.bg:Point("BOTTOMRIGHT", frame, 0, -2)
	frame.bg:SetTexCoord(0.00195313, 0.63867188, 0.03710938, 0.23828125)
	frame.bg:SetVertexColor(1, 1, 1, 0.7)

	frame.lineTop = frame:CreateTexture(nil, "BACKGROUND")
	frame.lineTop:SetDrawLayer("BACKGROUND", 2)
	frame.lineTop:SetTexture([[Interface\LevelUp\LevelUpTex]])
	frame.lineTop:SetPoint("TOP", frame.bg)
	frame.lineTop:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)
	frame.lineTop:Size(frame:GetWidth(), 7)

	frame.lineBottom = frame:CreateTexture(nil, "BACKGROUND")
	frame.lineBottom:SetDrawLayer("BACKGROUND", 2)
	frame.lineBottom:SetTexture([[Interface\LevelUp\LevelUpTex]])
	frame.lineBottom:SetPoint("BOTTOM", frame.bg)
	frame.lineBottom:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)
	frame.lineBottom:Size(frame:GetWidth(), 7)

	local ColorCode = {
		["red"] = {1, 0, 0},
		["green"] = {0, 1, 0},
		["blue"] = {0.15, 0.3, 1}
	}
	if topcolor then
		if type(topcolor) == "table" then
			frame.lineTop:SetVertexColor(unpack(topcolor), 1)
		elseif type(topcolor) == "string" then
			if ColorCode[topcolor] then
				local r, g, b = unpack(ColorCode[topcolor])
				frame.lineTop:SetVertexColor(r, g, b, 1)
			else
				error(format("Invalid color setting in |cff00FFFFLevelUpBG|r(frame, |cffFF0000topcolor|r, bottomcolor). |cffFFFF00\"%s\"|r is not a supported color.", topcolor))
				return
			end

		else
			error("Invalid color setting in |cff00FFFFLevelUpBG|r(frame, |cffFF0000topcolor|r, bottomcolor).")
			return
		end
	end
	if bottomcolor then
		if type(bottomcolor) == "table" then
			frame.lineBottom:SetVertexColor(unpack(bottomcolor), 1)
		elseif type(bottomcolor) == "string" then
			if ColorCode[bottomcolor] then
				local r, g, b = unpack(ColorCode[bottomcolor])
				frame.lineBottom:SetVertexColor(r, g, b, 1)
			else
				error(format("Invalid color setting in |cff00FFFFLevelUpBG|r(frame, [topcolor, |cffFF0000bottomcolor|r). |cffFFFF00\"%s\"|r is not a supported color.", topcolor))
				return
			end
		else
			error("Invalid color setting in |cff00FFFFLevelUpBG|r(frame, [topcolor, |cffFF0000bottomcolor|r).")
			return
		end
	end
end

--Add API
local function addapi(object)
	local mt = getmetatable(object).__index
	if not object.LevelUpBG then
		mt.LevelUpBG = LevelUpBG
	end
end

local handled = {["Frame"] = true}
local object = CreateFrame("Frame")
addapi(object)
addapi(object:CreateTexture())
addapi(object:CreateFontString())

object = EnumerateFrames()
while object do
	if not object:IsForbidden() and not handled[object:GetObjectType()] then
		addapi(object)
		handled[object:GetObjectType()] = true
	end

	object = EnumerateFrames(object)
end

--AF stuff
function SLE:IsFoolsDay()
	if strfind(date(), "04/01/") and not E.global.aprilFoolsSLE and not IsAddOnLoaded("ElvUI_SLE_Dev") then
		return true
	else
		return false
	end
end

function SLE:CreateSplashScreen()
	local f = CreateFrame("Frame", "SLE_SplashScreen", E.UIParent)
	f:Size(400, 200)
	f:SetPoint("CENTER")
	f:SetFrameStrata("TOOLTIP")
	f:LevelUpBG()
	f:SetAlpha(0)

	f.logo = f:CreateTexture(nil, "OVERLAY")
	f.logo:Size(240, 60)
	f.logo:SetTexture([[Interface\AddOns\ElvUI_SLE\media\textures\SLE_Banner]])
	f.logo:Point("TOP", f, "TOP", 0. - 80)

	f.version = f:CreateFontString(nil, "OVERLAY")
	f.version:FontTemplate(nil, 14, nil)
	f.version:Point("TOP", f.logo, "BOTTOM", 0, -20)
	f.version:SetText(L["SLE_BENIK_AF"])
end

local function HideSplashScreen()
	SLE_SplashScreen:Hide()
	E:Delay(0.5, function() assert(false, L["SLE_ERRORS_AF"][random(#L["SLE_ERRORS_AF"])]) end)
	E.global.aprilFoolsSLE = true
end

local function FadeSplashScreen()
	E:Delay(10, function()
		E:UIFrameFadeOut(SLE_SplashScreen, 1, 1, 0)
		SLE_SplashScreen.fadeInfo.finishedFunc = HideSplashScreen
	end)
end

function SLE:ShowSplashScreen()
	E:UIFrameFadeIn(SLE_SplashScreen, 2, 0, 1)
	SLE_SplashScreen.fadeInfo.finishedFunc = FadeSplashScreen
end
