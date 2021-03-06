-- **************************
-- Coded By ReCover
-- ***
-- Useable color codes:
-- |cff00ff00 = gr?n/green
-- |cffff0000 = rot/red
-- |cff00ffff = hellblau/light blue
-- |cff0055FF = blau/blue
-- ***
-- Changelog:
-- 0.33 by Jim-Bim
-- - TOC Updates
-- 0.32 by Jim-Bim
-- - Added Russian localization (thanks to Hubbotu!)
-- 0.31 by Jim-Bim
-- - Fixed issues with Classic
-- 0.30 by Jim-Bim
-- - TOC Update for 8.2
-- 0.29 by Jim-Bim
-- - TOC Update for 8.1
-- 0.28 by Jim-Bim
-- - Fixed issue with invalid mapID
-- - Fixed issue with invalid mapPos
-- 0.27 by Jim-Bim
-- - TOC Update for 8.0
-- - Adjusted API calls for BfA
-- 0.26 by Jim-Bim
-- - TOC Update for 7.3
-- 0.25 by Jim-Bim
-- - TOC Update for 7.2
-- - Added offset for WorldQuestTracker
-- 0.24 by Jim-Bim
-- - TOC Update for 7.1
-- - Fixed lua errors in dungeon locations
-- - Fixed coord display strata for large map
-- 0.23 by Jim-Bim
-- - Updated text strata to be below world quest tooltips
-- 0.22 by Jim-Bim
-- - TOC Update for 7.0
-- - Fixed coord display for fullscreen map
-- 0.21 by Jim-Bim
-- - TOC Update for 6.2
-- 0.20 by Jim-Bim
-- - TOC Update for 6.1
-- 0.19 by Jim-Bim
-- - Optimized coords for world map zoom (scroll wheel)
-- 0.18 by Jim-Bim
-- - TOC Update for 6.0
-- - Fixed coord display for minimized map (WOD)
-- 0.17 by Jim-Bim
-- - TOC Update for 5.4
-- - Added default settings to options
-- 0.16 by Jim-Bim
-- - TOC Update for 5.3
-- - Added minimap coords option
-- 0.15 by Jim-Bim
-- - TOC Update for 5.2
-- - Hide party member coords if frames are hidden
-- 0.14 by Jim-Bim
-- - TOC Update for 5.1
-- 0.13 by Jim-Bim
-- - TOC Update for 5.0
-- - Fixed group number
-- 0.12 by Jim-Bim
-- - Fixed API call error (MoP)
-- 0.11 by Jim-Bim
-- - TOC Update for 4.3
-- 0.10 by Jim-Bim
-- - TOC Update for 4.2
-- 0.9a by Jim-Bim
-- - Added new coords position for small map modes
-- - (Blizzard uses all available space on the footer)
-- 0.9 by Jim-Bim
-- - TOC Update for 4.1
-- - Corrected text placement for moveable map
-- 0.8 by Jim-Bim
-- - TOC Update for 4.0
-- - Corrected text placement in minimized map
-- 0.7 by Jim-Bim
-- - TOC Update for 3.3
-- - Fixed cursor coords for new map modes
-- 0.6 by Jim-Bim
-- - TOC Update for 3.2
-- 0.5 by Jim-Bim
-- - Added french localization (thanks to Mordroba!)
-- 0.4 by Jim-Bim
-- - TOC Update for 3.1
-- - Localization added (english/german for now)
-- - >>Feel free to contribute additional languages<<
-- - New GUI - Now easier to configure settings
-- - Option to toggle decimals added
-- - Some simple internal code optimations
-- 0.33
-- - Update to show decimals by Svarv, TOC Update for 3.0
-- 0.32
-- - TOC Update (by Urmelus) for 1.12, 2.0, 2.1, 2.2, 2.3, 2.4
-- - Added German tootip in Addon overview
-- 0.31:
-- - TOC Update (by Urmelus) for 1.11
-- 0.3:
-- - Slash commands (/mapcoords or /mc)
-- - Saving settings variable (MapCoords)
-- - Coords below your portraite and your party members portraite (Not able to get it if member is in another zone, workaround anyone?)
-- - Able to toggle all labels (using slash commands)
-- - Added function round to round the numbers instead of stripping them from their decimals
-- - Updated toc to patch 1.3.1
-- 0.2:
-- - Kickass fix made by Astus so cursor coords is accurate out-of-the-box =)
-- 0.1:
-- - Made the AddOn
-- **************************

-- Master echo colors
local R_ON = 0
local G_ON = 1
local B_ON = 0
local R_OFF = 1
local G_OFF = 0
local B_OFF = 0
local R_ABOUT = 1
local G_ABOUT = 1
local B_ABOUT = 0

function round(float)
	return floor(float+0.5)
end

function shwcrd(num)
    if num == nil then
        return 0
	elseif (MapCoords2["show decimals"] == true) then
		return format("%1.1f", round(num * 1000) / 10)
	else
		return round(num * 100)
	end
end

local function MapPositionToXY(arg)
	local mapID = C_Map.GetBestMapForUnit(arg)
	
	if mapID and arg then
		local mapPos = C_Map.GetPlayerMapPosition(mapID, arg)
		if mapPos then
			return mapPos:GetXY()
		end
	end
	
	return 0, 0
end

function MapCoords_OnLoad()
	SlashCmdList["MAPCOORDS"] = MapCoords_SlashCommand
	SLASH_MAPCOORDS1 = "/mapcoords"
	SLASH_MAPCOORDS2 = "/mc"

	if (not MapCoords2) then
		MapCoords2 = {}
		MapCoords2["worldmap cursor"]=true
		MapCoords2["worldmap player"]=true
		MapCoords2["minimap"]=true
		MapCoords2["portrait player"]=true
		MapCoords2["portrait party1"]=true
		MapCoords2["portrait party2"]=true
		MapCoords2["portrait party3"]=true
		MapCoords2["portrait party4"]=true
		MapCoords2["show decimals"]=false
	end
	
	MapCoordsBlizzardOptions()
end

function MapCoords_Echo(msg,r,g,b)
	if (not r) then r = 1 end
	if (not g) then g = 1 end
	if (not b) then b = 1 end
	
	DEFAULT_CHAT_FRAME:AddMessage(msg, r, g, b)
end

function MapCoords_SlashCommand(msg)
	msg = string.lower(msg)
	-- WorldMap
	if (msg == "worldmap" or msg =="w") then
		if (MapCoords2["worldmap cursor"] == true and MapCoords2["worldmap player"] == true) then
			MapCoords2["worldmap cursor"]=false
			MapCoords2["worldmap player"]=false
			MapCoords_Echo(MAPCOORDS_HWorld)
		else
			MapCoords2["worldmap cursor"]=true
			MapCoords2["worldmap player"]=true
			MapCoords_Echo(MAPCOORDS_SWorld)
		end
	elseif (msg == "worldmap cursor" or msg == "w c" or msg == "wc") then
		if (MapCoords2["worldmap cursor"] == true) then
			MapCoords2["worldmap cursor"]=false
			MapCoords_Echo(MAPCOORDS_HCursor)
		else
			MapCoords2["worldmap cursor"]=true
			MapCoords_Echo(MAPCOORDS_SCursor)
		end
	elseif (msg == "worldmap player" or msg == "w p" or msg == "wp") then
		if (MapCoords2["worldmap player"] == true) then
			MapCoords2["worldmap player"]=false
			MapCoords_Echo(MAPCOORDS_HWPlayer)
		else
			MapCoords2["worldmap player"]=true
			MapCoords_Echo(MAPCOORDS_SWPlayer)
		end
	-- Portrait
	elseif (msg == "portrait" or msg == "p") then
		if (MapCoords2["portrait player"] == true and
		MapCoords2["portrait party1"] == true and
		MapCoords2["portrait party2"] == true and
		MapCoords2["portrait party3"] == true and
		MapCoords2["portrait party4"] == true) then
			MapCoords2["portrait player"]=false
			MapCoords2["portrait party1"]=false
			MapCoords2["portrait party2"]=false
			MapCoords2["portrait party3"]=false
			MapCoords2["portrait party4"]=false
			MapCoords_Echo(MAPCOORDS_HPortrait)
		else
			MapCoords2["portrait player"]=true
			MapCoords2["portrait party1"]=true
			MapCoords2["portrait party2"]=true
			MapCoords2["portrait party3"]=true
			MapCoords2["portrait party4"]=true
			MapCoords_Echo(MAPCOORDS_SPortrait)
		end
	elseif (msg == "player") then
		if (MapCoords2["portrait player"] == true) then
			MapCoords2["portrait player"]=false
			MapCoords_Echo(MAPCOORDS_HPlayer)
		else
			MapCoords2["portrait player"]=true
			MapCoords_Echo(MAPCOORDS_SPlayer)
		end
	elseif (msg == "party") then
		if (MapCoords2["portrait party1"] == true and 
		MapCoords2["portrait party2"] == true and 
		MapCoords2["portrait party3"] == true and 
		MapCoords2["portrait party4"] == true) then
			MapCoords2["portrait party1"]=false
			MapCoords2["portrait party2"]=false
			MapCoords2["portrait party3"]=false
			MapCoords2["portrait party4"]=false
			MapCoords_Echo(MAPCOORDS_HAParty)
		else
			MapCoords2["portrait party1"]=true
			MapCoords2["portrait party2"]=true
			MapCoords2["portrait party3"]=true
			MapCoords2["portrait party4"]=true
			MapCoords_Echo(MAPCOORDS_SAParty)
		end
	elseif (msg == "party 1" or msg == "party1" or msg == "p 1" or msg == "p1") then
		if (MapCoords2["portrait party1"] == true) then
			MapCoords2["portrait party1"]=false
			MapCoords_Echo(MAPCOORDS_HParty1)
		else
			MapCoords2["portrait party1"]=true
			MapCoords_Echo(MAPCOORDS_SParty1)
		end
	elseif (msg == "party 2" or msg == "party2" or msg == "p 2" or msg == "p2") then
		if (MapCoords2["portrait party2"] == true) then
			MapCoords2["portrait party2"]=false
			MapCoords_Echo(MAPCOORDS_HParty2)
		else
			MapCoords2["portrait party2"]=true
			MapCoords_Echo(MAPCOORDS_SParty2)
		end
	elseif (msg == "party 3" or msg == "party3" or msg == "p 3" or msg == "p3") then
		if (MapCoords2["portrait party3"] == true) then
			MapCoords2["portrait party3"]=false
			MapCoords_Echo(MAPCOORDS_HParty3)
		else
			MapCoords2["portrait party3"]=true
			MapCoords_Echo(MAPCOORDS_SParty3)
		end
	elseif (msg == "party 4" or msg == "party4" or msg == "p 4" or msg == "p4") then
		if (MapCoords2["portrait party4"] == true) then
			MapCoords2["portrait party4"]=false
			MapCoords_Echo(MAPCOORDS_HParty4)
		else
			MapCoords2["portrait party4"]=true
			MapCoords_Echo(MAPCOORDS_SParty4)
		end
    elseif (msg == "minimap" or msg == "m") then
        if (MapCoords2["minimap"] == true) then
            MapCoords2["minimap"]=false
            MapCoords_Echo(MAPCOORDS_HMinimap)
        else
            MapCoords2["minimap"]=true
            MapCoords_Echo(MAPCOORDS_SMinimap)
        end
	elseif (msg == "about" or msg == "a") then
		MapCoords_Echo("Version: "..MAPCOORDS_VERSION,R_ABOUT,G_ABOUT,B_ABOUT)
		MapCoords_Echo("Coded by ReCover, Jim-Bim, Urmelus (TOC Update)",R_ABOUT,G_ABOUT,B_ABOUT)
		--MapCoords_Echo("recover89@gmail.com",R_ABOUT,G_ABOUT,B_ABOUT)
	else
		MapCoords_Echo(MAPCOORDS_VERSION)
		MapCoords_Echo(MAPCOORDS_SLASH1)
		MapCoords_Echo("/mapcoords or /mc")
		MapCoords_Echo(MAPCOORDS_SLASH2)
		if (MapCoords2["worldmap cursor"] == true and MapCoords2["worldmap player"] == true) then 
            MapCoords_Echo(MAPCOORDS_WMON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_WMOFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["worldmap cursor"] == true) then 
            MapCoords_Echo(MAPCOORDS_WMCON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_WMCOFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["worldmap player"] == true) then 
            MapCoords_Echo(MAPCOORDS_WMPON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_WMPOFF,R_OFF,G_OFF,B_OFF) end
		MapCoords_Echo(MAPCOORDS_SLASH3)
		if (MapCoords2["portrait player"] == true and MapCoords2["portrait party1"] == true and MapCoords2["portrait party2"] == true and MapCoords2["portrait party3"] == true and MapCoords2["portrait party4"] == true) then 
            MapCoords_Echo(MAPCOORDS_APON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_APOFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["portrait player"] == true) then 
            MapCoords_Echo(MAPCOORDS_YPON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_YPOFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["portrait party1"] == true and MapCoords2["portrait party2"] == true and MapCoords2["portrait party3"] == true and MapCoords2["portrait party4"] == true) then 
            MapCoords_Echo(MAPCOORDS_APMON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_APMOFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["portrait party1"] == true) then 
            MapCoords_Echo(MAPCOORDS_P1ON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_P1OFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["portrait party2"] == true) then 
            MapCoords_Echo(MAPCOORDS_P2ON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_P2OFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["portrait party3"] == true) then 
            MapCoords_Echo(MAPCOORDS_P3ON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_P3OFF,R_OFF,G_OFF,B_OFF) end
		if (MapCoords2["portrait party4"] == true) then 
            MapCoords_Echo(MAPCOORDS_P4ON,R_ON,G_ON,B_ON)
		else MapCoords_Echo(MAPCOORDS_P4OFF,R_OFF,G_OFF,B_OFF) end
        if (MapCoords2["minimap"] == true) then 
            MapCoords_Echo(MAPCOORDS_MMON,R_ON,G_ON,B_ON)
        else MapCoords_Echo(MAPCOORDS_MMOFF,R_OFF,G_OFF,B_OFF) end
        MapCoords_Echo(MAPCOORDS_ABOUT,R_ABOUT,G_ABOUT,B_ABOUT)
    end
	if MapCoordsOptions:IsVisible() then
		MapCoordsSetCheckButtonState()
	end
end

function MapCoordsSetCheckButtonState()
	MapCoordsCheckButton1:SetChecked(MapCoords2["worldmap player"])
	MapCoordsCheckButton2:SetChecked(MapCoords2["worldmap cursor"])
	MapCoordsCheckButton3:SetChecked(MapCoords2["minimap"])
	MapCoordsCheckButton4:SetChecked(MapCoords2["portrait player"])
	MapCoordsCheckButton5:SetChecked(MapCoords2["portrait party1"])
	MapCoordsCheckButton6:SetChecked(MapCoords2["portrait party2"])
	MapCoordsCheckButton7:SetChecked(MapCoords2["portrait party3"])
	MapCoordsCheckButton8:SetChecked(MapCoords2["portrait party4"])
	MapCoordsCheckButton9:SetChecked(MapCoords2["show decimals"])
end

function MapCoordsPlayer_OnUpdate()
	if (MapCoords2["portrait player"] == true) then
		local posX, posY = MapPositionToXY("player")
		if ( posX == 0 and posY == 0 ) then
			MapCoordsPlayerPortraitCoords:SetText("n/a")
		else
			MapCoordsPlayerPortraitCoords:SetText(shwcrd(posX).." / "..shwcrd(posY))
		end
	else
		MapCoordsPlayerPortraitCoords:SetText("")
	end
	
	local currentPlayers = GetNumSubgroupMembers();
	
	if (MapCoords2["portrait party1"] == true and currentPlayers >= 1 and PartyMemberFrame1:IsVisible()) then
		local posX, posY = MapPositionToXY("party1")
		if ( posX == 0 and posY == 0 ) then
			MapCoordsParty1PortraitCoords:SetText("n/a")
		else
			MapCoordsParty1PortraitCoords:SetText(shwcrd(posX).." / "..shwcrd(posY))
		end
	else
		MapCoordsParty1PortraitCoords:SetText("")
	end
	if (MapCoords2["portrait party2"] == true and currentPlayers >= 2 and PartyMemberFrame2:IsVisible()) then
		local posX, posY = MapPositionToXY("party2")
		if ( posX == 0 and posY == 0 ) then
			MapCoordsParty2PortraitCoords:SetText("n/a")
		else
			MapCoordsParty2PortraitCoords:SetText(shwcrd(posX).." / "..shwcrd(posY))
		end
	else
		MapCoordsParty2PortraitCoords:SetText("")
	end
	if (MapCoords2["portrait party3"] == true and currentPlayers >= 3 and PartyMemberFrame3:IsVisible()) then
		local posX, posY = MapPositionToXY("party3")
		if ( posX == 0 and posY == 0 ) then
			MapCoordsParty3PortraitCoords:SetText("n/a")
		else
			MapCoordsParty3PortraitCoords:SetText(shwcrd(posX).." / "..shwcrd(posY))
		end
	else
		MapCoordsParty3PortraitCoords:SetText("")
	end
	if (MapCoords2["portrait party4"] == true and currentPlayers >= 4 and PartyMemberFrame4:IsVisible()) then
		local posX, posY = MapPositionToXY("party4")
		if ( posX == 0 and posY == 0 ) then
			MapCoordsParty4PortraitCoords:SetText("n/a")
		else
			MapCoordsParty4PortraitCoords:SetText(shwcrd(posX).." / "..shwcrd(posY))
		end
	else
		MapCoordsParty4PortraitCoords:SetText("")
	end
end

function MapCoordsMiniMap_OnUpdate()
    if (MapCoords2["minimap"] == true) then
        local posX, posY = MapPositionToXY("player")
        if ( posX == 0 and posY == 0 ) then
            MapCoordsMiniMap:SetText("n/a")
        else
            MapCoordsMiniMap:SetText(shwcrd(posX).." / "..shwcrd(posY))
        end
    else
        MapCoordsMiniMap:SetText("")
    end
end

function MapCoordsWorldMap_OnUpdate()
	local output = ""
	if (MapCoords2["worldmap cursor"] == true) then
		local adjustedX, adjustedY = WorldMapFrame:GetNormalizedCursorPosition()	
	
		-- Write output
		if (adjustedX > 0  and adjustedY > 0 and adjustedX <1 and adjustedY <1) then
            output = MAPCOORDS_SLASH4..shwcrd(adjustedX).." / "..shwcrd(adjustedY)
        end
	end
	if (MapCoords2["worldmap cursor"] == true and MapCoords2["worldmap player"]) then
        if (output ~= "") then
            output = output.." - "
        end
    end
	if (MapCoords2["worldmap player"] == true) then
		local posX, posY = MapPositionToXY("player")
		if ( posX == 0 and posY == 0 ) then
            output = output..MAPCOORDS_SLASH5.."n/a"
		else
            output = output..MAPCOORDS_SLASH5..shwcrd(posX).." / "..shwcrd(posY)
        end
	end

	if (WorldMapMixin.isMaximized) then
		MapCoordsWorldMap:SetPoint("CENTER", WorldMapFrame.BorderFrame, "BOTTOM", 0, 10)
		MapCoordsWorldMap:SetTextColor(GameFontNormal:GetTextColor())
	elseif (_G.WOW_PROJECT_ID == _G.WOW_PROJECT_CLASSIC) then
		MapCoordsWorldMap:SetPoint("CENTER", WorldMapFrame.BorderFrame, "BOTTOM", 0, 15)
		MapCoordsWorldMap:SetTextColor(GameFontNormal:GetTextColor())
	else
        local offset = 0
        if (IsAddOnLoaded("WorldQuestTracker") ~= nil) then
            if (WorldQuestTrackerDoubleTapFrame ~= nil and WorldQuestTrackerDoubleTapFrame:IsVisible()) then
                offset = 12
            end
        end
		if(QuestMapFrame:IsVisible()) then
			MapCoordsWorldMap:SetPoint("CENTER", WorldMapFrame.BorderFrame, "BOTTOM", -145, 10 + offset)
		else
			MapCoordsWorldMap:SetPoint("CENTER", WorldMapFrame.BorderFrame, "BOTTOM", 0, 10 + offset)
		end
		MapCoordsWorldMap:SetTextColor(1, 1, 1, 1)
	end
	MapCoordsWorldMapFrame:SetFrameStrata("FULLSCREEN_DIALOG")
	MapCoordsWorldMap:SetText(output)
end

function MapCoordsBlizzardOptions()

-- Create main frame for information text
local MapCoordsOptions = CreateFrame("FRAME", "MapCoordsOptions")
MapCoordsOptions.name = GetAddOnMetadata("MapCoords", "Title")
MapCoordsOptions.default = function (self) MapCoords_ResetConfig() end
MapCoordsOptions.refresh = function (self) MapCoordsSetCheckButtonState() end
InterfaceOptions_AddCategory(MapCoordsOptions)

local MapCoordsOptionsHeader = MapCoordsOptions:CreateFontString(nil, "ARTWORK")
MapCoordsOptionsHeader:SetFontObject(GameFontNormalLarge)
MapCoordsOptionsHeader:SetJustifyH("LEFT") 
MapCoordsOptionsHeader:SetJustifyV("TOP")
MapCoordsOptionsHeader:ClearAllPoints()
MapCoordsOptionsHeader:SetPoint("TOPLEFT", 16, -16)
MapCoordsOptionsHeader:SetText("MapCoords "..MAPCOORDS_VERSION)

local MapCoordsOptionsWM = MapCoordsOptions:CreateFontString(nil, "ARTWORK")
MapCoordsOptionsWM:SetFontObject(GameFontWhite)
MapCoordsOptionsWM:SetJustifyH("LEFT") 
MapCoordsOptionsWM:SetJustifyV("TOP")
MapCoordsOptionsWM:ClearAllPoints()
MapCoordsOptionsWM:SetPoint("TOPLEFT", MapCoordsOptionsHeader, "BOTTOMLEFT", 0, -6)
MapCoordsOptionsWM:SetText(MAPCOORDS_WMOP)

local MapCoordsCheckButton1 = CreateFrame("CheckButton", "MapCoordsCheckButton1", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton1:SetPoint("TOPLEFT", MapCoordsOptionsWM, "BOTTOMLEFT", 2, -4)
MapCoordsCheckButton1:SetScript("OnClick", function(self) MapCoords_SlashCommand("wp") end)
MapCoordsCheckButton1Text:SetText(MAPCOORDS_WMOP1)

local MapCoordsCheckButton2 = CreateFrame("CheckButton", "MapCoordsCheckButton2", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton2:SetPoint("TOPLEFT", MapCoordsCheckButton1, "BOTTOMLEFT", 0, -4)
MapCoordsCheckButton2:SetScript("OnClick", function(self) MapCoords_SlashCommand("wc") end)
MapCoordsCheckButton2Text:SetText(MAPCOORDS_WMOP2)

local MapCoordsOptionsPortrait = MapCoordsOptions:CreateFontString(nil, "ARTWORK")
MapCoordsOptionsPortrait:SetFontObject(GameFontWhite)
MapCoordsOptionsPortrait:SetJustifyH("LEFT") 
MapCoordsOptionsPortrait:SetJustifyV("TOP")
MapCoordsOptionsPortrait:ClearAllPoints()
MapCoordsOptionsPortrait:SetPoint("TOPLEFT", MapCoordsCheckButton2, "BOTTOMLEFT", -2, -4)
MapCoordsOptionsPortrait:SetText(MAPCOORDS_PTOP)

local MapCoordsCheckButton3 = CreateFrame("CheckButton", "MapCoordsCheckButton3", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton3:SetPoint("TOPLEFT", MapCoordsOptionsPortrait, "BOTTOMLEFT", 2, -4)
MapCoordsCheckButton3:SetScript("OnClick", function(self) MapCoords_SlashCommand("m") end)
MapCoordsCheckButton3Text:SetText(MAPCOORDS_MM)

local MapCoordsCheckButton4 = CreateFrame("CheckButton", "MapCoordsCheckButton4", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton4:SetPoint("TOPLEFT", MapCoordsCheckButton3, "BOTTOMLEFT", 0, -4)
MapCoordsCheckButton4:SetScript("OnClick", function(self) MapCoords_SlashCommand("player") end)
MapCoordsCheckButton4Text:SetText(MAPCOORDS_PTP)

local MapCoordsCheckButton5 = CreateFrame("CheckButton", "MapCoordsCheckButton5", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton5:SetPoint("TOPLEFT", MapCoordsCheckButton4, "BOTTOMLEFT", 0, -4)
MapCoordsCheckButton5:SetScript("OnClick", function(self) MapCoords_SlashCommand("p1") end)
MapCoordsCheckButton5Text:SetText(MAPCOORDS_PTG1)

local MapCoordsCheckButton6= CreateFrame("CheckButton", "MapCoordsCheckButton6", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton6:SetPoint("TOPLEFT", MapCoordsCheckButton5, "BOTTOMLEFT", 0, -4)
MapCoordsCheckButton6:SetScript("OnClick", function(self) MapCoords_SlashCommand("p2") end)
MapCoordsCheckButton6Text:SetText(MAPCOORDS_PTG2)

local MapCoordsCheckButton7 = CreateFrame("CheckButton", "MapCoordsCheckButton7", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton7:SetPoint("TOPLEFT", MapCoordsCheckButton6, "BOTTOMLEFT", 0, -4)
MapCoordsCheckButton7:SetScript("OnClick", function(self) MapCoords_SlashCommand("p3") end)
MapCoordsCheckButton7Text:SetText(MAPCOORDS_PTG3)

local MapCoordsCheckButton8 = CreateFrame("CheckButton", "MapCoordsCheckButton8", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton8:SetPoint("TOPLEFT", MapCoordsCheckButton7, "BOTTOMLEFT", 0, -4)
MapCoordsCheckButton8:SetScript("OnClick", function(self) MapCoords_SlashCommand("p4") end)
MapCoordsCheckButton8Text:SetText(MAPCOORDS_PTG4)

local MapCoordsOptionsMisc = MapCoordsOptions:CreateFontString(nil, "ARTWORK")
MapCoordsOptionsMisc:SetFontObject(GameFontWhite)
MapCoordsOptionsMisc:SetJustifyH("LEFT") 
MapCoordsOptionsMisc:SetJustifyV("TOP")
MapCoordsOptionsMisc:ClearAllPoints()
MapCoordsOptionsMisc:SetPoint("TOPLEFT", MapCoordsCheckButton8, "BOTTOMLEFT", -2, -4)
MapCoordsOptionsMisc:SetText(MAPCOORDS_MOP)

local MapCoordsCheckButton9 = CreateFrame("CheckButton", "MapCoordsCheckButton9", MapCoordsOptions, "OptionsCheckButtonTemplate")
MapCoordsCheckButton9:SetPoint("TOPLEFT", MapCoordsOptionsMisc, "BOTTOMLEFT", 2, -4)
MapCoordsCheckButton9:SetScript("OnClick", function(self) if MapCoords2["show decimals"] == true then MapCoords2["show decimals"] = false else MapCoords2["show decimals"] = true end end)
MapCoordsCheckButton9Text:SetText(MAPCOORDS_SDCD)

end

function MapCoords_ResetConfig()

MapCoords2 = {}
MapCoords2["worldmap cursor"]=true
MapCoords2["worldmap player"]=true
MapCoords2["minimap"]=true
MapCoords2["portrait player"]=true
MapCoords2["portrait party1"]=true
MapCoords2["portrait party2"]=true
MapCoords2["portrait party3"]=true
MapCoords2["portrait party4"]=true
MapCoords2["show decimals"]=false

end