local _G = _G
local select = _G.select
local pairs = _G.pairs
local ipairs = _G.ipairs
local string = _G.string
local type = _G.type
local error = _G.error
local table = _G.table
local C_MountJournal = _G.C_MountJournal

local loc_id = ArkInventory.Const.Location.Mount
local PLAYER_MOUNT_LEVEL = 20

ArkInventory.Tradeskill = { }

local collection = {
	
	cache = { }, -- [skillID] = { [recipeID] = ? }
	skills = { }, -- [index] = skillID
	isInit = false,
	isClosed = true,
	isScanning = false,
	
	lookup = {
		r = { }, -- [recipeID] = itemID.skillID
		i = { }, -- [itemID] = recipeID.skillID
	},
	hasSound = true,
	isMuted = false,
}


function ArkInventory.Tradeskill.OnHide( )
	ArkInventory:SendMessage( "EVENT_ARKINV_TRADESKILL_UPDATE_BUCKET", "FRAME_HIDE" )
end

local ImportCrossRefTable = false
function ArkInventory.Tradeskill.ImportCrossRefTable( )
	
	if true then return end
	
	if not ImportCrossRefTable then return end
	
	local rid, item, key1, key2
	local c = 0
	local c2 = 0
	
	local skills = {
		[794] = "ArkInventory.System.XREF.Tradeskill.Archaeology",
		[171] = "ArkInventory.System.XREF.Tradeskill.Alchemy",
		[164] = "ArkInventory.System.XREF.Tradeskill.Blacksmithing",
		[184] = "ArkInventory.System.XREF.Tradeskill.Cooking",
		[333] = "ArkInventory.System.XREF.Tradeskill.Enchanting",
		[202] = "ArkInventory.System.XREF.Tradeskill.Engineering",
		[129] = "ArkInventory.System.XREF.Tradeskill.First Aid",
		[356] = "ArkInventory.System.XREF.Tradeskill.Fishing",
		[182] = "ArkInventory.System.XREF.Tradeskill.Herbalism",
		[773] = "ArkInventory.System.XREF.Tradeskill.Inscription",
		[755] = "ArkInventory.System.XREF.Tradeskill.Jewelcrafting",
		[165] = "ArkInventory.System.XREF.Tradeskill.Leatherworking",
		[186] = "ArkInventory.System.XREF.Tradeskill.Mining",
		[393] = "ArkInventory.System.XREF.Tradeskill.Skinning",
		[197] = "ArkInventory.System.XREF.Tradeskill.Tailoring",
	}
	
	for skillID, setName in pairs( skills ) do
		
		ArkInventory.Output2( skillID, " = ", setName )
		
		c2 = 0
		
		for k, v in ArkInventory.Lib.PeriodicTable:IterateSet( setName ) do
			
			-- recipeID = itemID
			-- recipeID is always negative
			-- if its not learnt from an item then the itemID will be the same as the recipeID
			
			rid = math.abs( tonumber( k ) ) or 0
			item = tonumber( v ) or 0
			
			if rid > 0 and item > 0 then
				
				c = c + 1
				c2 = c2 + 1
				
				key1 = ArkInventory.ObjectIDCount( string.format( "item:%s", item ) )
				key2 = ArkInventory.ObjectIDCount( string.format( "recipe:%s", rid ) )
				
				ArkInventory.Output2( key1, " / ", key2 )
				
				collection.lookup.r[rid] = item + ( skillID / 1000 )
				if not ArkInventory.Global.ItemCrossReference[key1] then
					ArkInventory.Global.ItemCrossReference[key1] = { }
				end
				
				ArkInventory.Global.ItemCrossReference[key1][key2] = true
				
				collection.lookup.i[item] = rid + ( skillID / 1000 )
				if not ArkInventory.Global.ItemCrossReference[key2] then
					ArkInventory.Global.ItemCrossReference[key2] = { }
				end
				
				ArkInventory.Global.ItemCrossReference[key2][key1] = true
				
			end
			
		end
		
		ArkInventory.Output2( c2, " recipe XREF entries added for ", setName )
		
	end
	
	ArkInventory.Output2( c, " recipe XREF entries added in total" )
	
	ImportCrossRefTable = nil
	
end

function ArkInventory.Tradeskill.GetRecipeIDForItemID( itemID )
end

function ArkInventory.Tradeskill.GetItemIDForRecipeID( recipeID )
end

function ArkInventory.Tradeskill.Iterate( id )
	if type( id ) ~= "number" then return end
	local t = collection.cache[skillID]
	if t then
		t = t.list
		return ArkInventory.spairs( t, function( a, b ) return ( a or 0 ) < ( b or 0 ) end )
	end
end

local function Scan_Immediate( )
	
	local update = false
	
	local codex = ArkInventory.GetPlayerCodex( )
	local link, linkedPlayerName = C_TradeSkillUI.GetTradeSkillListLink( )
	
	if C_TradeSkillUI.IsTradeSkillGuild( ) then
		ArkInventory.Output2( "SCAN ABORTED> guild linked" )
		return
	end
	
	if C_TradeSkillUI.IsTradeSkillLinked( ) then
		local osd = ArkInventory.ObjectStringDecode( link )
		if osd.id ~= codex.player.data.info.guid then
			ArkInventory.Output2( "SCAN ABORTED> linked from another player: ", osd.id, " (", linkedPlatyerName, ")" )
			return
		else
			ArkInventory.Output2( "LINKED> but its mine: ", osd.id )
			-- although the number of recipies dont seem to line up???
			-- posibly due the higher ranked recipes not being included in a linked list
			-- or it could be something else, when i figure it out i'll do something with it
			ArkInventory.Output2( "SCAN ABORTED> linked has issues i need to sort out first" )
			return
		end
		
	end
	
	if not C_TradeSkillUI.IsTradeSkillReady( ) then
		ArkInventory.Output2( "SCAN ABORTED> not ready" )
		return
	end
	
	
	local tradeSkillID, skillLineName, skillLineRank, skillLineMaxRank, skillLineModifier, parentSkillLineID, parentSkillLineName =  C_TradeSkillUI.GetTradeSkillLine( )
	
	local id = parentSkillLineID or tradeSkillID
	local name = parentSkillLineName or skillLineName
	ArkInventory.Output2( "SCANNING [", id, "]=[", name, "]" )
	
	local cache = collection.cache
	if not cache[id] then
		cache[id] = { }
		update = true
	else
		cache[id] = cache[id]
	end
	
	local tradeskill = cache[id]
	tradeskill.id = id
	tradeskill.link = link
	tradeskill.name = name
	tradeskill.icon = C_TradeSkillUI.GetTradeSkillTexture( id )
	tradeskill.list = tradeskill.list or { }
	
	local list = C_TradeSkillUI.GetAllRecipeIDs( )
	tradeskill.numTotal = #list
	
	local known = 0
	local info, item, key1, key2
	for _, rid in pairs( list ) do
		
		info = C_TradeSkillUI.GetRecipeInfo( rid )
		if info.type == "recipe" then
			
			info.itemResultLink = C_TradeSkillUI.GetRecipeItemLink( rid )
			
			if info.learned then
				known = known + 1
			end
			
			if not tradeskill.list[rid] then
				tradeskill.list[rid] = info
				update = true
			else
				if tradeskill.list[rid].learned ~= info.learned then
					tradeskill.list[rid].learned = info.learned
					update = true
				end
			end
			
		else
			
			ArkInventory.OutputWarning( "not a recipe: ", rid, " = ", info )
			
		end
		
	end
	tradeskill.numKnown = known
	
	ArkInventory.Output2( "SCAN COMPLETE> ", tradeskill.numTotal, " exist, ", tradeskill.numKnown, " known" )
	
	if update then
		ArkInventory.Output2( "UPDATING" )
		ArkInventory.ScanLocation( loc_id )
		--ArkInventory.Frame_Status_Update_Tracking( loc_id )
	else
		ArkInventory.Output2( "IGNORED (NO UPDATES FOUND)" )
	end
	
end

local function LoadScan_Threaded( thread_id )
	
	local codex = ArkInventory.GetPlayerCodex( )
	
	collection.hasSound = ArkInventory.CrossClient.GetCVarBool( "Sound_EnableSFX" )
	ArkInventory.Output2( "SOUND> STATE=", collection.hasSound )
	
	if codex.player.data.tradeskill.quiet and collection.hasSound then
		ArkInventory.Output2( "SOUND> MUTE" )
		ArkInventory.CrossClient.SetCVar( "Sound_EnableSFX", "0" )
		ArkInventory.ThreadYield( thread_id )
	end
	
	
	ArkInventory.Output2( "WAIT FOR CLOSE" )
	while not collection.isClosed do
		-- wait here until the tradeskill window is closed, in case the user has it open, theyd have to be damned quick though
		ArkInventory.ThreadYield( thread_id )
	end
	ArkInventory.Output2( "IS CLOSED" )
	
	for index, id in pairs( codex.player.data.info.tradeskill ) do
		
		ArkInventory.Output2( " " )
		ArkInventory.Output2( "LOADSCAN> index=[", index, "], id=[", id, "]" )
		
		if id then
			
			-- open the tradeskill window and wait for the event to trigger a scan
			ArkInventory.Output2( "WAIT FOR LOADSCAN> id=[", id, "]" )
			collection.isScanDone = false
			C_TradeSkillUI.OpenTradeSkill( id )
			while not collection.isScanDone do
				ArkInventory.ThreadYield( thread_id )
			end
			ArkInventory.Output2( "LOADSCAN COMPLETE> id=[", id, "]" )
			-- have to close it or archaeology causes issues
			C_TradeSkillUI.CloseTradeSkill( )
		end
		
	end
	
	
	C_TradeSkillUI.CloseTradeSkill( )
	
	if codex.player.data.tradeskill.quiet and collection.hasSound then
		ArkInventory.Output2( "SOUND> UNMUTE" )
		ArkInventory.CrossClient.SetCVar( "Sound_EnableSFX", "1" )
	end
	
	ArkInventory.Output2( "LOADSCAN> END" )
	
end

local function LoadScan( )
	
	ArkInventory.Output2( "LOADSCAN> START" )
	local thread_id = ArkInventory.Global.Thread.Format.Tradeskill
	
	if not ArkInventory.Global.Thread.Use then
		local tz = debugprofilestop( )
		ArkInventory.OutputThread( thread_id, " start" )
		LoadScan_Threaded( )
		tz = debugprofilestop( ) - tz
		ArkInventory.OutputThread( string.format( "%s took %0.0fms", thread_id, tz ) )
		return
	end
	
	local tf = function ( )
		LoadScan_Threaded( thread_id )
	end
	
	ArkInventory.ThreadStart( thread_id, tf )
	
end

function ArkInventory.Tradeskill.ScanHeaders( )
	
	--ArkInventory.Output( "Tradeskill.ScanHeaders" )
	
	local codex = ArkInventory.GetPlayerCodex( )
	
	local p = { ArkInventory.CrossClient.GetProfessions( ) }
	--ArkInventory.Output( "skills active = [", p, "]" )
	
	local info = codex.player.data.info
	info.tradeskill = info.tradeskill or { }
	--ArkInventory.Output( "skills saved = [", info.tradeskill, "]" )
	
	local changed = false
	for index = 1, ArkInventory.Const.Skills.maxLearn do
		
		if p[index] then
			
			local name, texture, rank, maxRank, numSpells, spelloffset, skillLine, rankModifier = ArkInventory.CrossClient.GetProfessionInfo( p[index] )
			
			collection.skills[index] = skillLine
			
			if info.tradeskill[index] ~= skillLine then
				
				-- tradeskill swapped
				
				if not info.tradeskill[index] then
					
					ArkInventory.Output2( " tradeskill [", index, "] changed from ", codex.player.data.tradeskill.data[info.tradeskill[index]].name, " to ", name )
					
					-- need to clean codex.player.data.tradeskill.data[info.tradeskill[index]]
					
				end
				
				
				
				
				changed = true
				info.tradeskill[index] = skillLine
				ArkInventory.Output2( "learned [", index, "] = [", skillLine, "] [", name, "]" )
			end
			
		else
			
			collection.skills[index] = nil
			
			if info.tradeskill[index] ~= nil then
				changed = true
				ArkInventory.Output2( "tradeskill lost [", index, "]" )
				info.tradeskill[index] = nil
			end
			
		end
		
	end
	
	ArkInventory.Output2( "skills = ", info.tradeskill )
	
	if codex.player.data.tradeskill.enable and not collection.isInit then
		if codex.player.data.tradeskill.loadscan then
			ArkInventory.Output2( "LOADSCAN>" )
			LoadScan( )
		end
		collection.isInit = true
	end
	
	if changed then
		
		-- itemcacheclear?
		ArkInventory.Table.Clean( ArkInventory.db.cache.default )
		
		--ArkInventory.Frame_Main_DrawStatus( nil, ArkInventory.Const.Window.Draw.Resort )
		
	end
	
end


function ArkInventory:EVENT_ARKINV_TRADESKILL_UPDATE_BUCKET( events )
	
	ArkInventory.Output( "TRADESKILL BUCKET [", events, "]" )
	
end

function ArkInventory:EVENT_ARKINV_TRADESKILL_UPDATE( event, ... )
	
	if not ArkInventory:IsEnabled( ) then return end
	
	local codex = ArkInventory.GetPlayerCodex( )
	
	if not codex.player.data.tradeskill.enable then
		--ArkInventory.Output( "IGNORED (TRADESKILL NOT MONITORED)" )
		return
	end
	
	ArkInventory.Output2( "EVENT [", event, "]" )
	
	if event == "NEW_RECIPE_LEARNED" then
		local spellID, recipeLevel = ...
		-- do something with this?
		return
	end
	
	if event == "TRADE_SKILL_CLOSE" then
		collection.isClosed = true
		return
	end
	
	if event == "TRADE_SKILL_DATA_SOURCE_CHANGED" then
		if not collection.isScanning then
			collection.isClosed = false
			collection.isScanning = true
			Scan_Immediate( )
			collection.isScanDone = true
			collection.isScanning = false
			return
		else
			--ArkInventory.Output( "IGNORED (TRADESKILL BEING SCANNED???)" )
			return
		end
	end
	
	--ArkInventory:SendMessage( "EVENT_ARKINV_TRADESKILL_UPDATE_BUCKET", event )
	
end

