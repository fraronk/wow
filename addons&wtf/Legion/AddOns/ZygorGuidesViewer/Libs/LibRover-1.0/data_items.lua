local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

local hearthcost = 25 --TODO this could be a 15m cooldown instead of 30. So that changes it

-- "HEARTH" or "G_HEARTH" destinations are not parsed immediately; they get assigned at calculation time.

data.portkeys = { -- smile if you're a muggle
	{item=6948, destination="_HEARTH", use_hearth_cd=1, cost=hearthcost, mode="hearth"}, -- Hearthstone!!!

	-- 'cooldown' is used as rarity indicator. Set it higher to artificially increase the time-cost of the item. It's a bit silly...

	--Cooldown on these is low because the cost is added to hearthstone cost.
	{item=64488, destination="_HEARTH", use_hearth_cd=1, cooldown=10, cost=hearthcost, toy=true}, -- The Innkeeper's Daughter
	{item=142542, destination="_HEARTH", use_hearth_cd=1, cooldown=10, cost=hearthcost, toy=true}, -- Tome of Town Portal
	{item=28585, destination="_HEARTH", use_hearth_cd=1, cooldown=15, cost=hearthcost}, -- Ruby Slippers
	{item=37118, destination="_HEARTH",		    cooldown=25, cost=hearthcost, maxlevel=40}, -- Scroll of Recall 1 DIFFERENT HEARTHSTONE CD level <= 40	--Cost a little different so that lower level ones get priority if usable.
	{item=44314, destination="_HEARTH",		    cooldown=35, cost=hearthcost, maxlevel=70}, -- Scroll of Recall 2 DIFFERENT HEARTHSTONE CD level >=35 <= 70
	{item=44315, destination="_HEARTH",		    cooldown=45, cost=hearthcost, maxlevel=90}, -- Scroll of Recall 3 DIFFERENT HEARTHSTONE CD level >=65 <= 90

	{spell=556, destination="_HEARTH", destA="@!sw_tp_dst", destH="@!org_tp_dst", is_astral=1, cost=30}, -- Astral Recall. Usually is hearthlocation, but a glyph can change that.

	{item=110560, destination="_G_HEARTH", cost=hearthcost, mode="ghearth", type="garrison_inn"}, -- Garri Hstone

	{item=63352, destination="@!sw_tp_dst", cooldown=28800}, -- Shroud of Cooperation
	{item=63206, destination="@!sw_tp_dst", cooldown=14400}, -- Wrap of Unity
	{item=65360, destination="@!sw_tp_dst", cooldown=7200}, -- Cloak of Cooperation

	{item=63353, destination="@!org_tp_dst", cooldown=28800}, -- Shroud of Cooperation
	{item=63207, destination="@!org_tp_dst", cooldown=14400}, -- Wrap of Unity
	{item=65274, destination="@!org_tp_dst", cooldown=7200}, -- Cloak of Cooperation

	{item=40585, destination="@!dala_tp_dst", cooldown=1800}, -- Signet of the Kirin Tor
	{item=40586, destination="@!dala_tp_dst", cooldown=1800}, -- Band of the Kirin Tor
	{item=44934, destination="@!dala_tp_dst", cooldown=1800}, -- Loop of the Kirin Tor
	{item=44935, destination="@!dala_tp_dst", cooldown=1800}, -- Ring of the Kirin Tor
	{item=45688, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Band of the Kirin Tor
	{item=45689, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Loop of the Kirin Tor
	{item=45690, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Ring of the Kirin Tor
	{item=45691, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Signet of the Kirin Tor
	{item=48954, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Band of the Kirin Tor
	{item=48955, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Loop of the Kirin Tor
	{item=48956, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Ring of the Kirin Tor
	{item=48957, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Signet of the Kirin Tor
	{item=51557, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Signet of the Kirin Tor
	{item=51558, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Loop of the Kirin Tor
	{item=51559, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Ring of the Kirin Tor
	{item=51560, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Band of the Kirin Tor
	{item=52251, destination="@!dala_tp_dst", cooldown=3600}, -- Jaina's Locket

	{item=32757, destination="Shadowmoon Valley 63,44", cooldown=900}, -- APPROXIMATE. Blessed Medallion of Karabor
	{item=37863, destination="Blackrock Depths/2 46,54", cooldown=3600}, -- APPROX. Direbrew's Remote
	{item=46874, destination="Icecrown 69.38,22.64", cooldown=1800}, -- Argent Crusader's Tabard
	{item=50287, destination="The Cape of Stranglethorn 40.8,73.8", cooldown=86400}, -- Boots of the Bay 24h
	{item=58587, destination="Deepholm,48.7,53.6", cooldown=1800}, -- Potion of Deepholm --CD is modified because it is a consumable potion. Don't use it like candy
	{item=22631, destination="Deadwind Pass 55,78", cooldown=60}, -- Atiesh, Greatstaff of the Guardian


	{item=95567, destination="Isle of Thunder 64.6,73.5", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and IsQuestFlaggedCompleted(32644) end}, -- Kirin Tor Beacon --only usable on Thunder Isle
	{item=95567, destination="Isle of Thunder 34.8,89.3", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and not IsQuestFlaggedCompleted(32644) end}, -- Kirin Tor Beacon --only usable on Thunder Isle

	{item=95568, destination="Isle of Thunder 33.3,32.6", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and IsQuestFlaggedCompleted(32212) end}, -- Sunreaver Beacon --only usable on Thunder Isle
	{item=95568, destination="Isle of Thunder 28.5,51.7", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and not IsQuestFlaggedCompleted(32212) end}, -- Sunreaver Beacon --only usable on Thunder Isle

	{item=104113, destination="Timeless Isle/0 23.28,70.83", cooldown=0 }, -- Ally. Curious Bronze Timepeice, 1 time use only.
	{item=104110, destination="Timeless Isle/0 21.32,39.52", cooldown=0 }, -- Horde. Curious Bronze Timepeice, 1 time use only.

	{item=30542, destination="Netherstorm 32,63", cooldown=14400}, -- Dimensional Ripper - Area 52 Engineering >=350 Goblin -- TODO only approx coords
	{item=18984, destination="Winterspring 59,50", cooldown=14400}, -- Dimensional Ripper - Everlook Engineering >=260 Goblin -- TODO only approx coords
	{item=30544, destination="Blade's Edge Mountains 60.4,65.1", cooldown=14400}, -- Ultrasafe Transporter: Toshley's Station Engineering >=350 Gnomish
	{item=18986, destination="Tanaris 51.6,28.0", cooldown=14400}, -- APPROX. Ultrasafe Transporter: Gadgetzan Engineering >=260 Gnomish

	{item=63378, destination="Tol Barad Peninsula 73.7,60.9", cooldown=14400}, -- Baradin's Wardens Tabard  Alliance -- TODO only approx coords
	{item=63379, destination="Tol Barad Peninsula 55.8,80.1", cooldown=14400}, -- Hellscream's Reach Tabard  Horde

	--------------
	--- LEGION ---
	--------------
	{item=140192, destination="Dalaran L/10 60.92,44.72", cooldown=1200, cost=20, mode="dhearth", cond=function() local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor return m~=1014 and m~=1035 and m~=1101 and m~=1050 and m~=1051 and m~=1048 and m~=1068 and m~=1028 and m~=1052 and m~=1040 and m~=1077 and m~=1072 and m~=1056 and m~=1057 and m~=1044 and not (m==23 and f==20) end}, -- Dalaran Hearthstone
	
	{item=141605, destination="_TAXIWHISTLE", cooldown=60, cost=12, mode="whistle", cond=function() local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor return m==1015 or m==1053 or m==1024 or m==1017 or m==1037 or m==1033 or m==1055 or m==1080 or m==1072 or m==1018 or (m==1021 and f~=2) or (IsQuestFlaggedCompleted(38995) and ((m==1135 and f~=2) or (m==1170 and f~=4) or (m==1171 and f~=6))) end }, -- Flight Master's Whistle
}
