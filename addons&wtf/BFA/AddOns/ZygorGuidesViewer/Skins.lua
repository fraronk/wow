local ZGV = ZygorGuidesViewer
if not ZGV then return end

ZGV.Skins = {}

-- Skeleton class for the skins to use
-- TODO this metatable magic is probably undeeded, we can add methods directly
local Skin={}
local Style={}

ZGV.SkinProto = Skin
ZGV.SkinProto_mt = { __index=Skin }

ZGV.StyleProto = Style
ZGV.StyleProto_mt = { __index=Style }


function Skin:New(data)
	setmetatable(data,ZGV.SkinProto_mt)
	return data
end

function Style:New(data)
	setmetatable(data,ZGV.StyleProto_mt)
	return data
end

local function Skin_AddStyle(skin,id,name)
	if not id then id="style" end
	local style={id=id or "style",name=name or "default",skin=skin}
	Style:New(style)
	skin.styles[id]=style
	return style
end

-- Why do we have it so complex? TODO merge into AddSkin if nobody objects
local function _new_skin(id,name)
	local skin = {id=id or "skin", name=name or "unnamed skin",styles={}, AddStyle=Skin_AddStyle, defaultstyle={} }
	Skin:New(skin)
	return skin
end

function ZGV:AddSkin(id,name)
	local skin = _new_skin(id,name)
	self.Skins[id] = skin
	return skin
end

function ZGV:GetSkinPath(skin,style)
	if not skin then skin=self.db.options.skin end
	if not style then style=self.db.options.skinstyle end
	return ZGV.DIR .. "\\Skins\\" .. skin .. "\\" .. style .. "\\"
end

function ZGV:SetSkin(skin,style)
	-- With removal of midnight/stealth we have no need for skin selection. Enforcing default skin in case someone was using other ones

	skin = skin or "default"
	local skindata = self.Skins[skin]

	style = (style and skindata.styles[style] and style) or skindata.preferredstyle.id or "stealth"
	local styledata = skindata.styles[style]
		
	self.db.profile.skin = skin
	self.db.profile.skinstyle = style

	self.CurrentSkin = skindata
	self.CurrentSkinStyle = styledata
	self.SkinDir = self:GetSkinPath(skin,style)

	skindata:CreateFrame()
	--[[
	if ZGV.CV then
		ZGV.CV:UpdateSkin()
	end
	--]]
	if ZGV.Loot.GrayFrame then
		ZGV.Loot:UpdateSkin()
	end

	self:SetIconSets()
end

local setmetatable,unpack,CHAIN=setmetatable,unpack,ZGV.ChainCall

-- Simple shortcut function, tries to find a getter func for the given property and return the default value if it's not found
-- see below for usage
function Style:SkinData(propertyname)
	--[[ unused
	local function GetProperty(self,propertyname)
		local prop = self[propertyname]
		if type(prop)=="function" then -- if it's a function, call it.
			return prop(self)
		else -- a property then
			return prop
		end
	end
	--]]
	
	-- First trying the style itself, then skin's defaultstyle object
	local r=self[propertyname] or self.skin.defaultstyle[propertyname]
	if r then
		if type(r)=="function" then -- if it's a function, call it.
			return r(self)
		else -- a property then
			return r
		end
	else
		--error("Unknown property requested: "..propertyname)
	end
end

-- taken ENTIRELY from -shadowlands. In case of conflict: accept that.
function ZGV:SetIconSets()
	self.IconSets = {}
	
	self.IconSets.TabsIcons = {
		-- name = {row,column,"display name"}
		LEVELING =		{1,1,label="Leveling"},
		EVENTS =		{2,1,label="Events"},
		DAILIES =		{3,1,label="Dailies"},
		LOREMASTER =	{4,1,label="Loremaster"},
		GOLD =			{1,2,label="Gold"},
		PROFESSIONS =	{2,2,label="Professions"},
		PETSMOUNTS =	{3,2,label="Pets & Mounts"},
		ACHIEVEMENTS =	{4,2,label="Achievements"},
		TITLES =		{1,3,label="Titles"},
		REPUTATIONS =	{2,3,label="Reputations"},
		MACROS =		{3,3,label="Macros"},
		DUNGEONS =		{4,3,label="Dungeons"},
		GEAR =			{1,4,label="Gear"},
		SHARED =		{2,4,label="Shared"},
		QUESTS =		{3,4,label="Quests"},
		FAVOURITES =	{4,4,label="Favorites"},
		TEST =		{0,0,label="Test"},

		file = self.CurrentSkinStyle:SkinData("TabsIcons"),
		cols = 4,
		rows = 4,
		width = 256,
		height = 256,
		default = "LEVELING"
	}

	self.IconSets.GuideIconsSmall = {
		-- name = {row,column,"display name"}
		FOLDER =		{1,1},
		GUIDE =			{2,1},
		EXCLAMATION =	{3,1},
		STAR =			{1,2},
		QUEST =			{2,2},

		file = self.CurrentSkinStyle:SkinData("GuideMenuSmallIcons"),
		cols = 4,
		rows = 2,
		width = 128,
		height = 64,
		default = "GUIDE"
	}

	local getTexCoord = function(set,name)  local c,r=unpack(set[name])  return (c-1)/set.cols,c/set.cols,(r-1)/set.rows,r/set.rows  end
	for _,set in pairs(self.IconSets) do
		for k,icon in pairs(set) do if type(icon)=="table" then icon.texcoord={getTexCoord(set,k)}  end  end
		setmetatable(set,{__index=function(self,name) local def=self[self.default]  return {def[1],def[2],label=def.label,texcoord=def.texcoord} end})
	end

end