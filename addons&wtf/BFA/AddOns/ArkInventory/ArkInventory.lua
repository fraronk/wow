--[[

License: All Rights Reserved, (c) 2006-2020

$Revision: 2717 $
$Date: 2020-09-24 13:52:12 +1000 (Thu, 24 Sep 2020) $

]]--

local _G = _G
local select = _G.select
local pairs = _G.pairs
local ipairs = _G.ipairs
local string = _G.string
local type = _G.type
local error = _G.error
local table = _G.table


ArkInventory.Localise = LibStub( "AceLocale-3.0" ):GetLocale( "ArkInventory" )

ArkInventory.Const.Bindings = {
	All = { ITEM_BIND_ON_USE, ITEM_BIND_ON_EQUIP, ITEM_BIND_ON_PICKUP, ITEM_SOULBOUND, ITEM_ACCOUNTBOUND, ITEM_BIND_TO_ACCOUNT, ITEM_BIND_TO_BNETACCOUNT, ITEM_BNETACCOUNTBOUND },
	Use = { ArkInventory.Localise["WOW_TOOLTIP_ITEM_BIND_ON_USE"] },
	Equip = { ArkInventory.Localise["WOW_TOOLTIP_ITEM_BIND_ON_EQUIP"] },
	Pickup = { ArkInventory.Localise["WOW_TOOLTIP_ITEM_BIND_ON_PICKUP"], ArkInventory.Localise["WOW_TOOLTIP_ITEM_SOULBOUND"] },
	Account = { ArkInventory.Localise["WOW_TOOLTIP_ITEM_ACCOUNTBOUND"], ArkInventory.Localise["WOW_TOOLTIP_ITEM_BIND_TO_ACCOUNT"], ArkInventory.Localise["WOW_TOOLTIP_ITEM_BIND_TO_BNETACCOUNT"], ArkInventory.Localise["WOW_TOOLTIP_ITEM_BNETACCOUNTBOUND"] },
}

ArkInventory.Const.Category = {
	
	Min = 1000,
	Max = 8999,
	
	Type = {
		System = 1,
		Custom = 2,
		Rule = 3,
	},
	
	Code = {
		System = { -- do NOT change the indicies - if you have to then see the DatabaseUpgradePostLoad( ) function to remap it
			[401] = {
				id = "SYSTEM_DEFAULT",
				text = ArkInventory.Localise["DEFAULT"],
			},
			[402] = {
				id = "SYSTEM_JUNK",
				text = ArkInventory.Localise["JUNK"],
			},
			[403] = {
				id = "SYSTEM_BOUND",
				text = ArkInventory.Localise["BOUND"],
			},
			[405] = {
				id = "SYSTEM_CONTAINER",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER"],
			},
			[406] = {
				id = "SYSTEM_KEY",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_KEY"],
			},
			[407] = {
				id = "SYSTEM_MISC",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_MISC"],
			},
			[408] = {
				id = "SYSTEM_REAGENT",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_REAGENT"],
			},
			[409] = {
				id = "SYSTEM_RECIPE",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_RECIPE"],
			},
			[411] = {
				id = "SYSTEM_QUEST",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_QUEST"],
			},
			[414] = {
				id = "SYSTEM_EQUIPMENT",
				text = ArkInventory.Localise["EQUIPMENT"],
			},
			[416] = {
				id = "SYSTEM_EQUIPMENT_SOULBOUND",
				text = string.format( "%s (%s)", ArkInventory.Localise["EQUIPMENT"], ArkInventory.Localise["ITEM_BIND3"] ),
			},
			[456] = {
				id = "SYSTEM_EQUIPMENT_COSMETIC",
				text = string.format( "%s (%s)", ArkInventory.Localise["EQUIPMENT"], ArkInventory.Localise["COSMETIC"] ),
			},
			[444] = {
				id = "SYSTEM_EQUIPMENT_ACCOUNTBOUND",
				text = string.format( "%s (%s)", ArkInventory.Localise["EQUIPMENT"], ArkInventory.Localise["ITEM_BIND4"] ),
			},
			[415] = {
				id = "SYSTEM_MOUNT_BOUND",
				text = string.format( "%s (%s)", ArkInventory.Localise["MOUNT"], ArkInventory.Localise["BOUND"] ),
			},
			[453] = {
				id = "SYSTEM_MOUNT_TRADE",
				text = ArkInventory.Localise["MOUNT"],
			},
			[421] = {
				proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
				id = "SYSTEM_PROJECTILE",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_PROJECTILE"],
			},
--			[421] = { SYSTEM_PROJECTILE_ARROW }
--			[422] = { SYSTEM_PROJECTILE_BULLET }
			[443] = {
				id = "SYSTEM_PET_COMPANION_TRADE",
				text = ArkInventory.Localise["PET"],
			},
			[423] = {
				id = "SYSTEM_PET_COMPANION_BOUND",
				text = string.format( "%s (%s)", ArkInventory.Localise["PET"], ArkInventory.Localise["BOUND"] ),
			},
			[441] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_PET_BATTLE_TRADE",
				text = ArkInventory.Localise["BATTLEPET"],
			},
			[442] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_PET_BATTLE_BOUND",
				text = string.format( "%s (%s)", ArkInventory.Localise["BATTLEPET"], ArkInventory.Localise["BOUND"] ),
			},
			[429] = {
				id = "SYSTEM_UNKNOWN",
				text = ArkInventory.Localise["UNKNOWN"],
			},
			[438] = {
				id = "SYSTEM_CURRENCY",
				text = ArkInventory.Localise["CURRENCY"],
			},
			[445] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_TOY",
				text = ArkInventory.Localise["TOY"],
			},
			[446] = {
				id = "SYSTEM_NEW",
				text = ArkInventory.Localise["CONFIG_DESIGN_ITEM_NEW"],
			},
			[447] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_HEIRLOOM",
				text = ArkInventory.Localise["HEIRLOOM"],
			},
			[448] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_ARTIFACT_RELIC",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_GEM_ARTIFACTRELIC"],
			},
			[451] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_MYTHIC_KEYSTONE",
				text = ArkInventory.Localise["CATEGORY_SYSTEM_MYTHIC_KEYSTONE"],
			},
			[452] = {
				id = "SYSTEM_CRAFTING_REAGENT",
				text = ArkInventory.Localise["CRAFTING_REAGENT"],
			},
		},
		Consumable = {
			[404] = {
				id = "CONSUMABLE_OTHER",
				text = ArkInventory.Localise["OTHER"],
			},
			[417] = {
				id = "CONSUMABLE_FOOD",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_FOOD"],
			},
			[418] = {
				id = "CONSUMABLE_DRINK",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_DRINK"],
			},
			[419] = {
				id = "CONSUMABLE_POTION_MANA",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_POTION_MANA"],
			},
			[420] = {
				id = "CONSUMABLE_POTION_HEAL",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_POTION_HEAL"],
			},
			[424] = {
				id = "CONSUMABLE_POTION",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return "potion category (to be fixed)"
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_CONSUMABLE_POTION"]
					end
				end,
			},
			[426] = {
				id = "CONSUMABLE_EXPLOSIVES_AND_DEVICES",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return string.format( "%s & %s", ArkInventory.Localise["WOW_ITEM_CLASS_TRADEGOODS_EXPLOSIVES"], ArkInventory.Localise["WOW_ITEM_CLASS_TRADEGOODS_DEVICES"] )
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_CONSUMABLE_EXPLOSIVES_AND_DEVICES"]
					end
				end,
			},
			[430] = {
				proj = 0,
				id = "CONSUMABLE_ELIXIR",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_CONSUMABLE_ELIXIR"],
			},
			[431] = {
				id = "CONSUMABLE_FLASK",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return ArkInventory.Localise["CATEGORY_CONSUMABLE_FLASK"]
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_CONSUMABLE_FLASK"]
					end
				end,
			},
			[432] = {
				id = "CONSUMABLE_BANDAGE",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return ArkInventory.Localise["CATEGORY_CONSUMABLE_BANDAGE"]
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_CONSUMABLE_BANDAGE"]
					end
				end,
			},
			[433] = {
				proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
				id = "CONSUMABLE_SCROLL",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_SCROLL"],
			},
			[435] = {
				id = "CONSUMABLE_ELIXIR_BATTLE",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_ELIXIR_BATTLE"],
			},
			[436] = {
				id = "CONSUMABLE_ELIXIR_GUARDIAN",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_ELIXIR_GUARDIAN"],
			},
			[437] = {
				id = "CONSUMABLE_FOOD_AND_DRINK",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return string.format( "%s & %s", ArkInventory.Localise["CATEGORY_CONSUMABLE_FOOD"], ArkInventory.Localise["CATEGORY_CONSUMABLE_DRINK"] )
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_CONSUMABLE_FOOD_AND_DRINK"]
					end
				end,
			},
			[449] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "CONSUMABLE_VANTUSRUNE",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_CONSUMABLE_VANTUSRUNE"],
			},
			[450] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "CONSUMABLE_ARTIFACT_POWER",
				text = ArkInventory.Localise["ARTIFACT_POWER"],
			},
			[902] = {
				proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
				id = "CONSUMABLE_FOOD_PET",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_FOOD_PET"],
			},
			[428] = {
				id = "SYSTEM_REPUTATION",
				text = ArkInventory.Localise["REPUTATION"],
			},
			[439] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_GLYPH",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_GLYPH"],
			},
			[440] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SYSTEM_ITEM_ENHANCEMENT",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_ITEM_ENHANCEMENT"],
			},
			[454] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "CONSUMABLE_CHAMPION_EQUIPMENT",
				text = ArkInventory.Localise["CATEGORY_CONSUMABLE_CHAMPION_EQUIPMENT"],
			},
			[455] = {
				proj = ( ANIMA or false ) and ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "CONSUMABLE_ANIMA",
				text = ArkInventory.Localise["ANIMA"],
			},
		},
		Trade = {
			[412] = {
				id = "TRADEGOODS_OTHER",
				text = ArkInventory.Localise["OTHER"],
			},
--			[425] = TRADEGOODS_DEVICES
			[427] = {
				id = "TRADEGOODS_PARTS",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_TRADEGOODS_PARTS"],
			},
			[434] = {
				-- cut gems only (which dont exist in classic)
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "TRADEGOODS_GEMS",
				text = ArkInventory.Localise["GEMS"],
			},
			[501] = {
				id = "TRADEGOODS_HERBS",
				text = ArkInventory.Localise["WOW_SKILL_HERBALISM"],
			},
			[502] = {
				id = "TRADEGOODS_CLOTH",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_ARMOR_CLOTH"],
			},
			[503] = {
				id = "TRADEGOODS_ELEMENTAL",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return ArkInventory.Localise["ELEMENTAL"]
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_TRADEGOODS_ELEMENTAL"]
					end
				end,
			},
			[504] = {
				id = "TRADEGOODS_LEATHER",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_ARMOR_LEATHER"],
			},
			[505] = {
				id = "TRADEGOODS_COOKING",
				text = ArkInventory.Localise["WOW_SKILL_COOKING"],
			},
			[506] = {
				id = "TRADEGOODS_METAL_AND_STONE",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return ArkInventory.Localise["CATEGORY_TRADEGOODS_METAL_AND_STONE"]
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_TRADEGOODS_METAL_AND_STONE"]
					end
				end,
			},
--			[507] = TRADEGOODS_MATERIALS
--			[510] = TRADEGOODS_ENCHANTMENT > [440] SYSTEM_ITEM_ENHANCEMENT
			[512] = {
				id = "TRADEGOODS_ENCHANTING",
				text = ArkInventory.Localise["WOW_SKILL_ENCHANTING"],
			},
			[513] = {
				-- uncut gems only
				id = "TRADEGOODS_JEWELCRAFTING",
				text = function( )
					if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
						return ArkInventory.Localise["GEMS"]
					else
						return ArkInventory.Localise["WOW_ITEM_CLASS_TRADEGOODS_JEWELCRAFTING"]
					end
				end,
			},
			[514] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "TRADEGOODS_INSCRIPTION",
				text = ArkInventory.Localise["WOW_SKILL_INSCRIPTION"],
			},
		},
		Skill = { -- do NOT change the indicies
			[101] = {
				id = "SKILL_ALCHEMY",
				text = ArkInventory.Localise["WOW_SKILL_ALCHEMY"],
			},
			[102] = {
				id = "SKILL_BLACKSMITHING",
				text = ArkInventory.Localise["WOW_SKILL_BLACKSMITHING"],
			},
			[103] = {
				id = "SKILL_COOKING",
				text = ArkInventory.Localise["WOW_SKILL_COOKING"],
			},
			[104] = {
				id = "SKILL_ENGINEERING",
				text = ArkInventory.Localise["WOW_SKILL_ENGINEERING"],
			},
			[105] = {
				id = "SKILL_ENCHANTING",
				text = ArkInventory.Localise["WOW_SKILL_ENCHANTING"],
			},
			[106] = {
				id = "SKILL_FIRST_AID",
				text = ArkInventory.Localise["WOW_SKILL_FIRSTAID"],
			},
			[107] = {
				id = "SKILL_FISHING",
				text = ArkInventory.Localise["WOW_SKILL_FISHING"],
			},
			[108] = {
				id = "SKILL_HERBALISM",
				text = ArkInventory.Localise["WOW_SKILL_HERBALISM"],
			},
			[109] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SKILL_JEWELCRAFTING",
				text = ArkInventory.Localise["WOW_SKILL_JEWELCRAFTING"],
			},
			[110] = {
				id = "SKILL_LEATHERWORKING",
				text = ArkInventory.Localise["WOW_SKILL_LEATHERWORKING"],
			},
			[111] = {
				id = "SKILL_MINING",
				text = ArkInventory.Localise["WOW_SKILL_MINING"],
			},
			[112] = {
				id = "SKILL_SKINNING",
				text = ArkInventory.Localise["WOW_SKILL_SKINNING"],
			},
			[113] = {
				id = "SKILL_TAILORING",
				text = ArkInventory.Localise["WOW_SKILL_TAILORING"],
			},
			[115] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SKILL_INSCRIPTION",
				text = ArkInventory.Localise["WOW_SKILL_INSCRIPTION"],
			},
			[116] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "SKILL_ARCHAEOLOGY",
				text = ArkInventory.Localise["WOW_SKILL_ARCHAEOLOGY"],
			},
		},
		Class = {
			[201] = {
				id = "CLASS_DRUID",
				text = ArkInventory.Localise["WOW_CLASS_DRUID"],
			},
			[202] = {
				id = "CLASS_HUNTER",
				text = ArkInventory.Localise["WOW_CLASS_HUNTER"],
			},
			[203] = {
				id = "CLASS_MAGE",
				text = ArkInventory.Localise["WOW_CLASS_MAGE"],
			},
			[204] = {
				id = "CLASS_PALADIN",
				text = ArkInventory.Localise["WOW_CLASS_PALADIN"],
			},
			[205] = {
				id = "CLASS_PRIEST",
				text = ArkInventory.Localise["WOW_CLASS_PRIEST"],
			},
			[206] = {
				id = "CLASS_ROGUE",
				text = ArkInventory.Localise["WOW_CLASS_ROGUE"],
			},
			[207] = {
				id = "CLASS_SHAMAN",
				text = ArkInventory.Localise["WOW_CLASS_SHAMAN"],
			},
			[208] = {
				id = "CLASS_WARLOCK",
				text = ArkInventory.Localise["WOW_CLASS_WARLOCK"],
			},
			[209] = {
				id = "CLASS_WARRIOR",
				text = ArkInventory.Localise["WOW_CLASS_WARRIOR"],
			},
			[210] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "CLASS_DEATHKNIGHT",
				text = ArkInventory.Localise["WOW_CLASS_DEATHKNIGHT"],
			},
			[211] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "CLASS_MONK",
				text = ArkInventory.Localise["WOW_CLASS_MONK"],
			},
			[212] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "CLASS_DEMONHUNTER",
				text = ArkInventory.Localise["WOW_CLASS_DEMONHUNTER"],
			},
		},
		Empty = {
			[300] = {
				id = "EMPTY_UNKNOWN",
				text = ArkInventory.Localise["UNKNOWN"],
			},
			[301] = {
				id = "EMPTY",
				text = ArkInventory.Localise["CATEGORY_EMPTY"],
			},
			[302] = {
				id = "EMPTY_BAG",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER_BAG"],
			},
			[303] = {
				proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
				id = "EMPTY_KEYRING",
				text = ArkInventory.Localise["KEYRING"],
			},
			[304] = {
				proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
				id = "EMPTY_SOULSHARD",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER_SOULSHARD"],
			},
			[305] = {
				id = "EMPTY_HERBALISM",
				text = ArkInventory.Localise["WOW_SKILL_HERBALISM"],
			},
			[306] = {
				id = "EMPTY_ENCHANTING",
				text = ArkInventory.Localise["WOW_SKILL_ENCHANTING"],
			},
			[307] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_ENGINEERING",
				text = ArkInventory.Localise["WOW_SKILL_ENGINEERING"],
			},
			[308] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_JEWELCRAFTING",
				text = ArkInventory.Localise["WOW_SKILL_JEWELCRAFTING"],
			},
			[309] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_MINING",
				text = ArkInventory.Localise["WOW_SKILL_MINING"],
			},
			[310] = {
				proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
				id = "EMPTY_QUIVER",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_QUIVER"],
			},
			[312] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_LEATHERWORKING",
				text = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER_LEATHERWORKING"],
			},
			[313] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_INSCRIPTION",
				text = ArkInventory.Localise["WOW_SKILL_INSCRIPTION"],
			},
			[314] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_FISHING",
				text = ArkInventory.Localise["WOW_SKILL_FISHING"],
			},
			[315] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_VOID",
				text = ArkInventory.Localise["VOIDSTORAGE"],
			},
			[316] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_COOKING",
				text = ArkInventory.Localise["WOW_SKILL_COOKING"],
			},
			[317] = {
				proj = ArkInventory.Const.Blizzard.Client.RETAIL,
				id = "EMPTY_REAGENTBANK",
				text = ArkInventory.Localise["REAGENTBANK"],
			},
		},
		Other = { -- do NOT change the indicies - if you have to then see the DatabaseUpgradePostLoad( ) function to remap it
			[901] = {
				id = "SYSTEM_CORE_MATS",
				text = ArkInventory.Localise["CATEGORY_SYSTEM_CORE_MATS"],
			},
		},
	},

}

ArkInventory.Const.Actions = {
	[ArkInventory.Const.ActionID.MainMenu] = {
		Texture = nil,
		Name = ArkInventory.Localise["MENU"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				ArkInventory.MenuMainOpen( self )
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["MENU"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.Close] = {
		Texture = [[Interface\RAIDFRAME\ReadyCheck-NotReady]],
		Name = ArkInventory.Localise["CLOSE"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				local loc_id = self:GetParent( ):GetParent( ):GetID( )
				ArkInventory.Frame_Main_Hide( loc_id )
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["CLOSE"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.EditMode] = {
		Texture = [[Interface\Icons\Trade_Engineering]],
		Name = ArkInventory.Localise["MENU_ACTION_EDITMODE"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				ArkInventory.Frame_Main_Level( self:GetParent( ):GetParent( ) )
				ArkInventory.ToggleEditMode( )
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["MENU_ACTION_EDITMODE"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.Rules] = {
		--Texture = [[Interface\Icons\INV_Misc_Note_05]],
		--Texture = [[Interface\Icons\Interface\Icons\INV_Gizmo_02]],
		Texture = [[Interface\Icons\INV_Misc_Book_10]],
		Name = ArkInventory.Localise["RULES"],
		LDB = true,
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				ArkInventory.Frame_Main_Level( self:GetParent( ):GetParent( ) )
				ArkInventory.Frame_Rules_Toggle( )
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["RULES"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.Search] = {
		--Texture = [[Interface\Icons\INV_Misc_EngGizmos_20]],
		Texture = [[Interface\Minimap\Tracking\None]],
		Name = ArkInventory.Localise["SEARCH"],
		LDB = true,
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				if button == "RightButton" then
					ArkInventory.Frame_Main_Level( self:GetParent( ):GetParent( ) )
					local loc_id = self:GetParent( ):GetParent( ):GetID( )
					if ArkInventory.Global.Location[loc_id].canSearch then
						ArkInventory.Global.Location[loc_id].filter = ""
						local me = ArkInventory.GetPlayerCodex( loc_id )
						me.style.search.hide = not me.style.search.hide
						ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Refresh )
					end
				else
					ArkInventory.Search.Frame_Toggle( )
				end
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["SEARCH"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.SwitchCharacter] = {
		Texture = [[Interface\Icons\INV_Shirt_Orange_01]],
		Name = ArkInventory.Localise["MENU_CHARACTER_SWITCH"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				ArkInventory.Frame_Main_Level( self:GetParent( ):GetParent( ) )
				ArkInventory.MenuSwitchCharacterOpen( self )
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["MENU_CHARACTER_SWITCH"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.SwitchLocation] = {
		Texture = [[Interface\Icons\INV_Helmet_47]],
		Name = ArkInventory.Localise["MENU_LOCATION_TOGGLE"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				ArkInventory.Frame_Main_Level( self:GetParent( ):GetParent( ) )
				ArkInventory.MenuSwitchLocationOpen( self )
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["MENU_LOCATION_TOGGLE"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.Restack] = {
		Texture = [[Interface\Icons\INV_Misc_Gift_05]],
		Name = ArkInventory.Localise["RESTACK"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				if button == "RightButton" then
					ArkInventory.MenuRestackOpen( self )
				else
					local loc_id = self:GetParent( ):GetParent( ):GetID( )
					ArkInventory.Restack( loc_id )
				end
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["RESTACK"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.Changer] = {
		Texture = [[Interface\Icons\INV_Misc_EngGizmos_17]],
		Name = ArkInventory.Localise["SUBFRAME_NAME_BAGCHANGER"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				ArkInventory.Frame_Main_Level( self:GetParent( ):GetParent( ) )
				ArkInventory.ToggleChanger( self:GetParent( ):GetParent( ):GetID( ) )
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["SUBFRAME_NAME_BAGCHANGER"] )
			end,
		},
	},
	[ArkInventory.Const.ActionID.Refresh] = {
		Texture = [[Interface\Icons\Spell_Frost_Stun]],
		Name = ArkInventory.Localise["REFRESH"],
		Scripts = {
			OnClick = function( self, button )
				if not self then return end
				ArkInventory.Frame_Main_Level( self:GetParent( ):GetParent( ) )
				if button == "RightButton" then
					ArkInventory.MenuRefreshOpen( self )
				else
					local loc_id = self:GetParent( ):GetParent( ):GetID( )
					--ArkInventory.OutputWarning( "refresh action - .Recalculate" )
					ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
				end
			end,
			OnEnter = function( self )
				ArkInventory.GameTooltipSetText( self, ArkInventory.Localise["REFRESH"] )
			end,
		},
	},
}
	
ArkInventory.Const.Skills = {
	numPrimary = 2,
	numSecondary = 3,
	maxLearn = 5,
	Data = {
		-- primary crafting
		[171] = {
			id = "SKILL_ALCHEMY",
			pt = "ArkInventory.Skill.Alchemy",
			text = ArkInventory.Localise["WOW_SKILL_ALCHEMY"],
		},
		[164] = {
			id = "SKILL_BLACKSMITHING",
			pt = "ArkInventory.Skill.Blacksmithing",
			text = ArkInventory.Localise["WOW_SKILL_BLACKSMITHING"],
		},
		[333] = {
			id = "SKILL_ENCHANTING",
			pt = "ArkInventory.Skill.Enchanting",
			text = ArkInventory.Localise["WOW_SKILL_ENCHANTING"],
		},
		[202] = {
			id = "SKILL_ENGINEERING",
			pt = "ArkInventory.Skill.Engineering",
			text = ArkInventory.Localise["WOW_SKILL_ENGINEERING"],
		},
		[773] = {
			id = "SKILL_INSCRIPTION",
			pt = "ArkInventory.Skill.Inscription",
			text = ArkInventory.Localise["WOW_SKILL_INSCRIPTION"],
		},
		[755] = {
			id = "SKILL_JEWELCRAFTING",
			pt = "ArkInventory.Skill.Jewelcrafting",
			text = ArkInventory.Localise["WOW_SKILL_JEWELCRAFTING"],
		},
		[165] = {
			id = "SKILL_LEATHERWORKING",
			pt = "ArkInventory.Skill.Leatherworking",
			text = ArkInventory.Localise["WOW_SKILL_LEATHERWORKING"],
		},
		[197] = {
			id = "SKILL_TAILORING",
			pt = "ArkInventory.Skill.Tailoring",
			text = ArkInventory.Localise["WOW_SKILL_TAILORING"],
		},
		-- primary gather
		[182] = {
			id = "SKILL_HERBALISM",
			pt = "ArkInventory.Skill.Herbalism",
			text = ArkInventory.Localise["WOW_SKILL_HERBALISM"],
		},
		[186] = {
			id = "SKILL_MINING",
			pt = "ArkInventory.Skill.Mining",
			text = ArkInventory.Localise["WOW_SKILL_MINING"],
		},
		[393] = {
			id = "SKILL_SKINNING",
			pt = "ArkInventory.Skill.Skinning",
			text = ArkInventory.Localise["WOW_SKILL_SKINNING"],
		},
		-- secondary
		[794] = {
			id = "SKILL_ARCHAEOLOGY",
			pt = "ArkInventory.Skill.Archaeology",
			text = ArkInventory.Localise["WOW_SKILL_ARCHAEOLOGY"],
		},
		[185] = {
			id = "SKILL_COOKING",
			pt = "ArkInventory.Skill.Cooking",
			text = ArkInventory.Localise["WOW_SKILL_COOKING"],
		},
		[129] = {
			id = "FIRST_AID",
			pt = "ArkInventory.Skill.First Aid",
			text = ArkInventory.Localise["WOW_SKILL_FIRSTAID"],
		},
		[356] = {
			id = "SKILL_FISHING",
			pt = "ArkInventory.Skill.Fishing",
			text = ArkInventory.Localise["WOW_SKILL_FISHING"],
		},
	},
}

ArkInventory.Const.Slot.Data = {
	[ArkInventory.Const.Slot.Type.Unknown] = {
		name = ArkInventory.Localise["UNKNOWN"],
		short = ArkInventory.Localise["UNKNOWN"],
	},
	[ArkInventory.Const.Slot.Type.Bag] = {
		name = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER_BAG"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_BAG"],
	},
	[ArkInventory.Const.Slot.Type.Keyring] = {
		hide = true,
		name = ArkInventory.Localise["KEYRING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_KEY"],
	},
	[ArkInventory.Const.Slot.Type.Wearing] = {
		hide = true,
		name = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER_BAG"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_WEARING"],
	},
	[ArkInventory.Const.Slot.Type.Herbalism] = {
		name = ArkInventory.Localise["WOW_SKILL_HERBALISM"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_HERBALISM"],
	},
	[ArkInventory.Const.Slot.Type.Enchanting] = {
		name = ArkInventory.Localise["WOW_SKILL_ENCHANTING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_ENCHANTING"],
	},
	[ArkInventory.Const.Slot.Type.Engineering] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["WOW_SKILL_ENGINEERING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_ENGINEERING"],
	},
	[ArkInventory.Const.Slot.Type.Inscription] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["WOW_SKILL_INSCRIPTION"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_INSCRIPTION"],
	},
	[ArkInventory.Const.Slot.Type.Jewelcrafting] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["WOW_SKILL_JEWELCRAFTING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_JEWELCRAFTING"],
	},
	[ArkInventory.Const.Slot.Type.Leatherworking] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["WOW_SKILL_LEATHERWORKING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_LEATHERWORKING"],
	},
	[ArkInventory.Const.Slot.Type.Mining] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["WOW_SKILL_MINING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_MINING"],
	},
	[ArkInventory.Const.Slot.Type.Mailbox] = {
		hide = true,
		name = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER_BAG"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_MAILBOX"],
	},
	[ArkInventory.Const.Slot.Type.Fishing] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["WOW_SKILL_FISHING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_FISHING"],
	},
	[ArkInventory.Const.Slot.Type.Critter] = {
		hide = true,
		name = ArkInventory.Localise["PET"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_CRITTER"],
	},
	[ArkInventory.Const.Slot.Type.Mount] = {
		hide = true,
		name = ArkInventory.Localise["WOW_ITEM_CLASS_MISC_MOUNT"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_MOUNT"],
	},
	[ArkInventory.Const.Slot.Type.Toybox] = {
		hide = true,
		name = ArkInventory.Localise["TOY"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_TOY"],
	},
	[ArkInventory.Const.Slot.Type.Heirloom] = {
		hide = true,
		name = ArkInventory.Localise["HEIRLOOM"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_HEIRLOOM"],
	},
	[ArkInventory.Const.Slot.Type.Currency] = {
		hide = true,
		name = ArkInventory.Localise["CURRENCY"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_TOKEN"],
	},
	[ArkInventory.Const.Slot.Type.Auction] = {
		hide = true,
		name = ArkInventory.Localise["AUCTIONS"],
		short = ArkInventory.Localise["AUCTIONS"],
	},
	[ArkInventory.Const.Slot.Type.Void] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["VOIDSTORAGE"],
		short = ArkInventory.Localise["VOIDSTORAGE"],
		texture = [[Interface\AddOns\ArkInventory\Images\VoidStorageSlot.tga]],
	},
	[ArkInventory.Const.Slot.Type.Cooking] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["WOW_SKILL_COOKING"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_COOKING"],
	},
	[ArkInventory.Const.Slot.Type.ReagentBank] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["REAGENTBANK"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_REAGENTBANK"],
		--texture = [[Interface\Paperdoll\UI-PaperDoll-Slot-Relic]],
	},
	[ArkInventory.Const.Slot.Type.Reputation] = {
		proj = ArkInventory.Const.Blizzard.Client.RETAIL,
		name = ArkInventory.Localise["REPUTATION"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_REPUTATION"],
	},
	[ArkInventory.Const.Slot.Type.Projectile] = {
		proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
		name = ArkInventory.Localise["WOW_ITEM_CLASS_PROJECTILE"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_PROJECTILE"],
	},
	[ArkInventory.Const.Slot.Type.Soulshard] = {
		proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
		name = ArkInventory.Localise["WOW_ITEM_CLASS_CONTAINER_SOULSHARD"],
		short = ArkInventory.Localise["STATUS_SHORTNAME_SOULSHARD"],
	},
}

ArkInventory.Const.AnchorText = {
	
}

ArkInventory.Global = { -- globals
	
	Enabled = false,
	Debug = false,
	Debug2 = false,
--	Debug2 = true, -- turn off when done
	
	Version = "", --calculated
	
	Me = {
		-- this will always point to the current characters data
		data = nil,
	},
	
	Mode = {
		Bank = false,
		ReagentBank = false,
		Vault = false,
		Mailbox = false,
		Merchant = false,
		Auction = false,
		Void = false,
		
		Edit = false,
		Combat = false,
		World = false,
		ColourBlind = ArkInventory.CrossClient.GetCVarBool( "colorblindMode" )
	},
	
	LeaveCombatRun = { }, -- [loc_id] = true
	
	Tooltip = {
		Scan = nil,
		WOW = {
			GameTooltip,
			ShoppingTooltip1,
			ShoppingTooltip2,
			ItemRefTooltip,
			ItemRefShoppingTooltip1,
			ItemRefShoppingTooltip2,
		},
	},
	
	Category = { }, -- see CategoryGenerate( ) for how this gets populated
	
	Location = {
		
		[ArkInventory.Const.Location.Bag] = {
			id = ArkInventory.Const.Location.Bag,
			isActive = true,
			Internal = "bag",
			Name = ArkInventory.Localise["BACKPACK"],
			Texture = [[Interface\Icons\INV_Misc_Bag_07_Green]],
			bagCount = 1, -- actual value set in OnLoad
			Bags = { },
			canRestack = true,
			hasChanger = true,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = true,
			
			template = string.format( "ARKINV_TemplateButtonItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Keyring] = {
			proj = ArkInventory.Const.Blizzard.Client.CLASSIC,
			id = ArkInventory.Const.Location.Keyring,
			isActive = true,
			Internal = "key",
			Name = ArkInventory.Localise["KEYRING"],
			Texture = [[Interface\ICONS\INV_Misc_Key_03]],
			bagCount = 1,
			Bags = { },
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = true,
			
			template = string.format( "ARKINV_TemplateButtonViewOnlyItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Bank] = {
			id = ArkInventory.Const.Location.Bank,
			isActive = true,
			Internal = "bank",
			Name = ArkInventory.Localise["BANK"],
			Texture = [[Interface\Icons\INV_Box_02]],
			bagCount = 1, -- set in OnLoad
			Bags = { },
			canRestack = true,
			hasChanger = true,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = true,
			canView = true,
			canOverride = true,
			canPurge = true,
			
			tabReagent = nil, -- set in OnLoad
			
			template = string.format( "ARKINV_TemplateButtonItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Vault] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.Vault,
			isActive = true,
			Internal = "vault",
			Name = ArkInventory.Localise["VAULT"],
			--Texture = [[Interface\Icons\INV_Misc_Coin_02]],
			--Texture = [[Interface\ICONS\INV_Misc_Gem_Topaz_01]],
			Texture = [[Interface\ICONS\INV_Trinket_80_Titan02d]],
			bagCount = 1, -- actual value set in OnLoad
			Bags = { },
			canRestack = true,
			hasChanger = true,
			canSearch = true,
			isVault = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = true,
			canView = true,
			canOverride = true,
			canPurge = true,
			
			template = string.format( "ARKINV_TemplateButtonVaultItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
			
			view_tab = 1,
			view_mode = "bank",
			view_load = true,
			
		},
		
		[ArkInventory.Const.Location.Mailbox] = {
			id = ArkInventory.Const.Location.Mailbox,
			isActive = true,
			Internal = "mailbox",
			Name = ArkInventory.Localise["MAILBOX"],
			--Texture = [[Interface\Icons\INV_Letter_01]]
			Texture = [[Interface\Minimap\Tracking\Mailbox]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = true,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			template = string.format( "ARKINV_TemplateButtonMailboxItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Wearing] = {
			id = ArkInventory.Const.Location.Wearing,
			isActive = true,
			Internal = "wearing",
			Name = ArkInventory.Localise["LOCATION_WEARING"],
			Texture = [[Interface\Icons\INV_Shirt_Yellow_01]],
			--Texture = [[Interface\ICONS\INV_OrderHall_ArmamentupgradeBlue]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = nil,

			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Pet] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.Pet,
			isAccount = true,
			isActive = true,
			Internal = "pet",
			Name = ArkInventory.Localise["PET"],
			--Texture = [[Interface\Icons\PetJournalPortrait]],
			Texture = [[Interface\ICONS\INV_Misc_FireKitty]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			template = string.format( "ARKINV_TemplateButtonBattlepetItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
			
		},
		
		[ArkInventory.Const.Location.Mount] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.Mount,
			isAccount = true,
			isActive = true,
			Internal = "mount",
			Name = ArkInventory.Localise["MOUNT"],
			Texture = [[Interface\Icons\MountJournalPortrait]],
			bagCount = 1, -- actual value set in OnLoad
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			template = string.format( "ARKINV_TemplateButtonMountItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
			
		},
		
		[ArkInventory.Const.Location.MountEquipment] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.MountEquipment,
			isActive = true,
			Internal = "mountequipment",
			Name = ArkInventory.Localise["MOUNT"],
			Texture = [[Interface\Icons\MountJournalPortrait]],
			bagCount = 1, -- actual value set in OnLoad
			Bags = { },
			
			maxBar = 0,
			maxSlot = { },
			
			canPurge = true,
			
			template = string.format( "ARKINV_TemplateButtonMountItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
			
		},
		
		[ArkInventory.Const.Location.Toybox] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.Toybox,
			isAccount = true,
			isActive = true,
			Internal = "toybox",
			Name = ArkInventory.Localise["TOYBOX"],
			--Texture = [[Interface\Icons\Trade_Archaeology_ChestofTinyGlassAnimals]],
			Texture = [[Interface\ICONS\INV_Misc_Toy_02]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			template = string.format( "ARKINV_TemplateButtonToyboxItem%s", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
			
		},
		
		[ArkInventory.Const.Location.Heirloom] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.Heirloom,
			isAccount = true,
			isActive = true,
			Internal = "heirloom",
			Name = ArkInventory.Localise["HEIRLOOM"],
			Texture = [[Interface\Icons\inv_misc_enggizmos_19]],
			--Texture = [[Interface\ICONS\Spell_Shadow_LastingAfflictions]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = nil,
			
			--template = string.format( "ARKINV_TemplateButtonHeirloomItem%d", WOW_PROJECT_ID ),
			
			drawState = ArkInventory.Const.Window.Draw.Init,
			
		},
		
		[ArkInventory.Const.Location.Currency] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.Currency,
			isActive = true,
			Internal = "currency",
			Name = ArkInventory.Localise["CURRENCY"],
			--Texture = [[Interface\ICONS\Spell_Holy_ChampionsBond]],
			--Texture = [[Interface\ICONS\ABILITY_Rogue_RollTheBones05]],
			Texture = [[Interface\ICONS\inv_misc_coinbag_special]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = nil,
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Auction] = {
			id = ArkInventory.Const.Location.Auction,
			isActive = false,
			Internal = "auction",
			Name = ArkInventory.Localise["AUCTIONS"],
			Texture = [[Interface\ICONS\INV_Misc_Coin_04]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = true,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Void] = {
			proj = ArkInventory.Const.Blizzard.Client.RETAIL,
			id = ArkInventory.Const.Location.Void,
			isActive = true,
			Internal = "void",
			Name = ArkInventory.Localise["VOIDSTORAGE"],
			Texture = [[Interface\Icons\Spell_Nature_AstralRecalGroup]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = true,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
		[ArkInventory.Const.Location.Reputation] = {
			id = ArkInventory.Const.Location.Reputation,
			isActive = true,
			Internal = "reputation",
			Name = ArkInventory.Localise["REPUTATION"],
			Texture = [[Interface\ICONS\Inv_Misc_SummerFest_BrazierBlue]],
			--Texture = [[Interface\ICONS\INV_SummerFest_Symbol_High]],
			bagCount = 1,
			Bags = { },
			canRestack = nil,
			hasChanger = nil,
			canSearch = true,
			
			maxBar = 0,
			maxSlot = { },
			
			isOffline = false,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			drawState = ArkInventory.Const.Window.Draw.Init,
		},
		
	},
	
	Cache = {
		
		ItemCountRaw = { }, -- key generated via ObjectIDCount( )
		ItemCountTooltip = { }, -- key generated via ObjectIDCount( )
		ItemSearchData = { }, -- key generated via ObjectIDCount( )
		StackCompress = { }, -- key generated via ObjectIDCount( )
		
		SentMail = { }, -- keeps track of any sent mail to other characters you have
		
		BlizzardBagIdToInternalId = { },
		
	},
	
	Thread = {
--		Use = false, -- !!! comment out when done testing
		Use = true,
		WindowState = { },
		data = { },
		Format = { -- if multiple threads are pending then they will be restarted in token name order
			Force = "*",
			Restack = "p01-restack",
			Transfer = "p02-transfer",
			Collection = "p03-scan-%s",
			Scan = "p04-scan-%s-%s",
			Window = "p05-draw-%s",
			Search = "p06-search",
			LDB = "p07-ldb-%s",
			Tooltip = "p08-tooltip",
			JunkSell = "p09-junksell",
			Tradeskill = "p02-tradeskill",
		},
	},
	
	Options = {
		
		Location = ArkInventory.Const.Location.Bag,
		ShowHiddenItems = false,
		
		
		
		SortKeyBagAssignmentSort = true,
		
		MoveType = nil,
		MoveLocation = nil,
		MoveSourceBar = nil,
		MoveDestination = nil,
		
		OnDragSourceFrame = nil,
		OnDragType = nil,
		OnDragLocation = nil,
		OnDragSourceBar = nil,
		OnDragSourceCategory = nil,
		
	},
	
	Rules = {
		Enabled = false, -- change this to module check
	},
	
	NewItemResetTime = nil,
	
	Junk = {
		addon = nil,
		process = true,
		running = false,
		sold = 0,
		destroyed = 0,
		money = 0,
	},
	
	BagsOpenedBy = nil,
	
	ItemCrossReference = { },
	
}

ArkInventory.Config = {
	Internal = {
		type = "group",
		childGroups = "tree",
		name = ArkInventory.Const.Program.Name,
	},
	Blizzard = {
		type = "group",
		childGroups = "tree",
		name = ArkInventory.Const.Program.Name,
	},
}

ArkInventory.Collection = { }


-- Binding Variables
BINDING_HEADER_ARKINV = ArkInventory.Const.Program.Name
BINDING_NAME_ARKINV_TOGGLE_BAG = ArkInventory.Localise["BACKPACK"]
BINDING_NAME_ARKINV_TOGGLE_KEYRING = ArkInventory.Localise["KEYRING"]
BINDING_NAME_ARKINV_TOGGLE_BANK = ArkInventory.Localise["BANK"]
BINDING_NAME_ARKINV_TOGGLE_VAULT = ArkInventory.Localise["VAULT"]
BINDING_NAME_ARKINV_TOGGLE_MAILBOX = ArkInventory.Localise["MAILBOX"]
BINDING_NAME_ARKINV_TOGGLE_WEARING = ArkInventory.Localise["LOCATION_WEARING"]
BINDING_NAME_ARKINV_TOGGLE_PET = ArkInventory.Localise["PET"]
BINDING_NAME_ARKINV_TOGGLE_MOUNT = ArkInventory.Localise["MOUNT"]
BINDING_NAME_ARKINV_TOGGLE_TOYBOX = ArkInventory.Localise["TOYBOX"]
BINDING_NAME_ARKINV_TOGGLE_HEIRLOOM = ArkInventory.Localise["HEIRLOOM"]
BINDING_NAME_ARKINV_TOGGLE_TOKEN = ArkInventory.Localise["CURRENCY"]
BINDING_NAME_ARKINV_TOGGLE_VOID = ArkInventory.Localise["VOIDSTORAGE"]
BINDING_NAME_ARKINV_TOGGLE_AUCTION = ArkInventory.Localise["AUCTIONS"]
BINDING_NAME_ARKINV_TOGGLE_EDIT = ArkInventory.Localise["MENU_ACTION_EDITMODE"]
BINDING_NAME_ARKINV_TOGGLE_RULES = ArkInventory.Localise["RULES"]
BINDING_NAME_ARKINV_TOGGLE_SEARCH = ArkInventory.Localise["SEARCH"]
BINDING_NAME_ARKINV_REFRESH = ArkInventory.Localise["REFRESH"]
BINDING_NAME_ARKINV_RELOAD = ArkInventory.Localise["RELOAD"]
BINDING_NAME_ARKINV_RESTACK = ArkInventory.Localise["RESTACK"]
BINDING_NAME_ARKINV_MENU = ArkInventory.Localise["MENU"]
BINDING_NAME_ARKINV_CONFIG = ArkInventory.Localise["CONFIG_DESC"]
BINDING_NAME_ARKINV_LDB_PETS_SUMMON = ArkInventory.Localise["LDB_COMPANION_SUMMON"]
_G["BINDING_NAME_CLICK ARKINV_MountToggle:LeftButton"] = ArkInventory.Localise["LDB_MOUNTS_SUMMON"]


ArkInventory.Const.DatabaseDefaults.global = {
	["option"] = {
		["version"] = 0,
		["auto"] = {
			["open"] = {
				["*"] = 1,
				["transmog"] = 0,
			},
			["close"] = {
				["*"] = 1,
			},
			["reposition"] = true,
		},
		["design"] = { -- layout and style data
			["data"] = {
				["**"] = {
					["system"] = false,
					["used"] = "N", -- Y(es) | N(o) | D(eleted)
					["name"] = "",
					
					-- ** style **
					["font"] = {
						["custom"] = false,
						["face"] = ArkInventory.Const.Font.Face,
						["height"] = ArkInventory.Const.Font.Height,
					},
					["window"] = {
						["scale"] = 1,
						["width"] = 16,
						["height"] = 800,
						["border"] = {
							["style"] = ArkInventory.Const.Texture.BorderDefault,
							["size"] = nil,
							["offset"] = nil,
							["scale"] = 1,
							["colour"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["pad"] = 8,
						["background"] = {
							["style"] = ArkInventory.Const.Texture.BackgroundDefault,
							["colour"] = {
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
								["a"] = 0.75,
							},
						},
						["strata"] = "MEDIUM",
						["list"] = false,
					},
					["bar"] = {
						["per"] = 5,
						["pad"] = {
							["internal"] = 8,
							["external"] = 8,
						},
						["border"] = {
							["style"] = ArkInventory.Const.Texture.BorderDefault,
							["size"] = nil,
							["offset"] = nil,
							["scale"] = 1,
							["colour"] = {
								["r"] = 0.3,
								["g"] = 0.3,
								["b"] = 0.3,
							},
						},
						["background"] = {
							["colour"] = {
								["r"] = 0,
								["g"] = 0,
								["b"] = 0.4,
								["a"] = 0.4,
							},
						},
						["showempty"] = false,
						["anchor"] = ArkInventory.Const.Anchor.BottomRight,
						["compact"] = false,
						["hide"] = false,
						["name"] = {
							["show"] = false,
							["editmode"] = true,
							["anchor"] = ArkInventory.Const.Anchor.Default,
							["colour"] = {
								["r"] = 1,
								["b"] = 1,
								["g"] = 1,
							},
							["height"] = ArkInventory.Const.Font.Height,
							["align"] = ArkInventory.Const.Anchor.Default,
							["pad"] = {
								["vertical"] = 5, -- this is a minimum, otherwise it uses the slot padding value
							},
						},
						["data"] = { -- ** layout **
							["*"] = {
								["sort"] = {
									["method"] = nil,
								},
								["border"] = {
									["custom"] = 1, -- 1 = default, 2 = custom
									["colour"] = {
										["r"] = 0.3,
										["g"] = 0.3,
										["b"] = 0.3,
									},
								},
								["background"] = {
									["custom"] = 1, -- 1 = default, 2 = custom, 3 = border
									["colour"] = {
										["r"] = 0,
										["g"] = 0,
										["b"] = 0.4,
										["a"] = 0.4,
									},
								},
								["name"] = {
									["text"] = "",
									["custom"] = 1, -- 1 = default, 2 = custom
									["colour"] = {
										["r"] = 1,
										["g"] = 1,
										["b"] = 1,
									},
								},
								["width"] = {
									["min"] = nil,
									["max"] = nil,
								},
							},
						},
					},
					["slot"] = {
						["scale"] = 1,
						["empty"] = {
							["alpha"] = 1,
							["icon"] = true,
							["border"] = true,
							["first"] = 0,
							["clump"] = false,
							["position"] = true,
						},
						["data"] = { -- slot type data
							["**"] = {
								["colour"] = { r = 0.30, g = 0.30, b = 0.30 },
							},
							[ArkInventory.Const.Slot.Type.Unknown] = {
								["colour"] = { r = 1.00, g = 0.00, b = 0.00 },
							},
							[ArkInventory.Const.Slot.Type.Enchanting] = {
								["colour"] = { r = 0.06, g = 0.88, b = 0.93 },
							},
							[ArkInventory.Const.Slot.Type.Engineering] = {
								["colour"] = { r = 0.61, g = 0.74, b = 0.29 },
							},
							[ArkInventory.Const.Slot.Type.Fishing] = {
								["colour"] = { r = 0.12, g = 0.56, b = 0.42 },
							},
							[ArkInventory.Const.Slot.Type.Herbalism] = {
								["colour"] = { r = 0.00, g = 1.00, b = 0.00 },
							},
							[ArkInventory.Const.Slot.Type.Inscription] = {
								["colour"] = { r = 0.46, g = 0.67, b = 0.63 },
							},
							[ArkInventory.Const.Slot.Type.Jewelcrafting] = {
								["colour"] = { r = 0.63, g = 0.00, b = 0.56 },
							},
							[ArkInventory.Const.Slot.Type.Leatherworking] = {
								["colour"] = { r = 0.63, g = 0.45, b = 0.10 },
							},
							[ArkInventory.Const.Slot.Type.Mining] = {
								["colour"] = { r = 0.79, g = 0.79, b = 0.00 },
							},
							[ArkInventory.Const.Slot.Type.Projectile] = {
								["colour"] = { r = 0.80, g = 0.80, b = 0.00 },
							},
							[ArkInventory.Const.Slot.Type.ReagentBank] = {
								["colour"] = { r = 0.10, g = 0.30, b = 1.00 },
							},
							[ArkInventory.Const.Slot.Type.Soulshard] = {
								["colour"] = { r = 0.90, g = 0.00, b = 0.90 },
							},
						},
						["pad"] = 4,
						["border"] = {
							["style"] = ArkInventory.Const.Texture.BorderDefault,
							["size"] = nil,
							["offset"] = nil,
							["scale"] = 1,
							["rarity"] = true,
							["raritycutoff"] = ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_POOR,
						},
						["anchor"] = ArkInventory.Const.Anchor.BottomRight,
						["age"] = {
							["show"] = false,
							["colour"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
							["cutoff"] = 0,
							["font"] = {
								["height"] = ArkInventory.Const.Font.Height,
							},
							["anchor"] = ArkInventory.Const.Anchor.Default,
						},
						["offline"] = {
							["fade"] = true,
						},
						["unusable"] = {
							["tint"] = false,
--							["junk"] = false,
						},
						["cooldown"] = {
							["show"] = true,
							["global"] = false,
							["combat"] = true,
						},
						["itemlevel"] = {
							["show"] = false,
							["anchor"] = ArkInventory.Const.Anchor.Default,
							["min"] = 1,
							["quality"] = false,
							["colour"] = {
								["r"] = 1,
								["g"] = 0.82,
								["b"] = 0,
							},
							["font"] = {
								["height"] = ArkInventory.Const.Font.Height,
							},
						},
						["itemcount"] = {
							["show"] = true,
							["anchor"] = ArkInventory.Const.Anchor.Default,
							["colour"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
							["font"] = {
								["height"] = ArkInventory.Const.Font.Height,
							},
						},
						["new"] = {
							["enable"] = false,
							["cutoff"] = 2,
						},
						["compress"] = {
							["count"] = 0,
							["identify"] = false,
							["position"] = 1,
						},
--						["upgrade"] = true, -- need to remove from saved data
						["upgradeicon"] = {
							["show"] = true,
							["anchor"] = ArkInventory.Const.Anchor.Default,
						},
						["junkicon"] = {
							["show"] = true,
							["anchor"] = ArkInventory.Const.Anchor.Default,
							["merchant"] = true,
						},
						["transmogicon"] = {
							["show"] = true,
							["anchor"] = ArkInventory.Const.Anchor.Default,
							["alternative"] = true,
						},
						["overlay"] = {
							["azerite"] = {
								["show"] = true,
							},
							["nzoth"] = {
								["show"] = true,
								["anchor"] = ArkInventory.Const.Anchor.Default,
							},
						},
						["size"] = ArkInventory.Const.Blizzard.SLOT_SIZE,
						["quest"] = {
							["bang"] = true,
							["anchor"] = ArkInventory.Const.Anchor.Default,
							["border"] = true,
						},
					},
					["title"] = {
						["hide"] = false,
						["scale"] = 1,
						["size"] = 1,
						["colour"] = {
							["online"] = {
								["r"] = 0,
								["g"] = 1,
								["b"] = 0,
							},
							["offline"] = {
								["r"] = 1,
								["g"] = 0,
								["b"] = 0,
							},
						},
						["font"] = {
							["height"] = 20,
						},
					},
					["search"] = {
						["hide"] = false,
						["scale"] = 1,
						["label"] = {
							["colour"] = {
								["r"] = 0,
								["g"] = 1,
								["b"] = 0,
							},
						},
						["text"] = {
							["colour"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["font"] = {
							["height"] = 12,
						},
					},
					["changer"] = {
						["hide"] = false,
						["scale"] = 1,
						["highlight"] = {
							["show"] = true,
							["colour"] = {
								["r"] = 0,
								["g"] = 1,
								["b"] = 0,
							},
						},
						["freespace"] = {
							["show"] = true,
							["colour"] = {
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						},
						["font"] = {
							["height"] = 20,
						},
					},
					["status"] = {
						["hide"] = false,
						["scale"] = 1,
						["emptytext"] = {   -- slot>empty>display
							["show"] = true,
							["colour"] = false,
							["full"] = true,
							["includetype"] = true,
						},
						["font"] = {
							["height"] = 16,
						},
						["currency"] = {
							["show"] = true,
						},
						["money"] = {
							["show"] = true,
						},
					},
					["sort"] = {
						["when"] = ArkInventory.Const.SortWhen.Open,
						["method"] = 9999,  -- the default sort method for this layout
					},
					
					-- ** layout **
					["bag"] = {
						["*"] = { -- [bag_id]
							["bar"] = nil, -- bar number to put all bag slots on
						},
					},
					["category"] = {
						["*"] = nil, -- [category number] = bar number to put it on
					},
				},
				[9999] = {
					["system"] = true,
					["used"] = "Y",
					["name"] = ArkInventory.Localise["DEFAULT"],
				},
				[9998] = {
					["system"] = true,
					["used"] = "Y",
					["name"] = ArkInventory.Localise["VAULT"],
					["window"] = {
						["width"] = NUM_SLOTS_PER_GUILDBANK_GROUP,
					},
					["sort"] = {
						["method"] = 9995,
					},
				},
				[9997] = {
					["system"] = true,
					["used"] = "Y",
					["name"] = "List",
					["window"] = {
						["list"] = true,
						["width"] = 10,
					},
					["bar"] = {
						["per"] = 1,
						["data"] = {
							[1] = {
								["width"] = {
									["max"] = 1,
								},
							},
						},
					},
					["slot"] = {
						["anchor"] = ArkInventory.Const.Anchor.BottomLeft,
					},
					["changer"] = {
						["hide"] = true,
					},
					["status"] = {
						["hide"] = true,
					},
					["sort"] = {
						["method"] = 9993,
					},
				},
				[1000] = {
					["system"] = false,
					["used"] = "Y",
					["name"] = ArkInventory.Localise["DEFAULT"],
				},
			},
			["min"] = 1000,
			["next"] = 1000,
			["max"] = 8999,
		},
		["category"] = {
			["**"] = {
--[[
				see ArkInventory.Const.Category.Type
				--	System = 1,
				--	Custom = 2,
				--	Rule = 3,
]]--
				["data"] = {
					["**"] = {  -- [number] = { data }
						["system"] = false,
						["used"] = "N", -- Y(es) | N(o) | D(eleted)
						["name"] = "",
						-- rules
						["order"] = 1000,
						["formula"] = "false",
						["damaged"] = false,
					},
				},
				["min"] = 1000,
				["next"] = 1000,
				["max"] = 8999,
			},
		},
		["catset"] = { -- category sets
			["data"] = {
				["**"] = {
					["system"] = false,
					["used"] = "N", -- Y(es) | N(o) | D(eleted)
					["name"] = "",
					["category"] = {
						["assign"] = {
							["*"] = nil, -- item id = category number to assign the item to
						},
						["active"] = {
							["*"] = { -- category type
								["*"] = false, -- category id = enabled
							},
							[ArkInventory.Const.Category.Type.System] = {
								["*"] = true,
							},
						},
						["junk"] = {
							["*"] = { -- category type
								["*"] = false, -- true = autosell
							},
							[ArkInventory.Const.Category.Type.System] = {
								["*"] = false,
								[402] = true,
							},
						},
					},
				},
				[9999] = {
					["system"] = true,
					["used"] = "Y",
					["name"] = ArkInventory.Localise["DEFAULT"],
				},
				[1000] = {
					["system"] = false,
					["used"] = "Y",
					["name"] = ArkInventory.Localise["DEFAULT"],
				},
			},
			["min"] = 1000,
			["next"] = 1000,
			["max"] = 8999,
			
		},
		["profile"] = {
			["data"] = {
				["**"] = { -- id
					["system"] = false,
					["used"] = "N", -- Y(es) | N(o) | D(eleted)
					["name"] = "",
					["location"] = {
						["**"] = { -- loc_id
							["monitor"] = true,
							["save"] = true,
							["override"] = false,
							["special"] = true,
							["notify"] = false,
							["anchor"] = {
								["point"] = ArkInventory.Const.Anchor.TopRight,
								["locked"] = false,
								["t"] = nil,
								["b"] = nil,
								["l"] = nil,
								["r"] = nil,
							},
							["style"] = 1000,
							["layout"] = 1000,
							["catset"] = 1000,
							["container"] = {
								["width"] = 400,
								["height"] = 400,
							},
						},
						[ArkInventory.Const.Location.Bag] = {
							["notify"] = true,
							["override"] = true,
						},
						[ArkInventory.Const.Location.Bank] = {
							["notify"] = true,
							["override"] = true,
						},
						[ArkInventory.Const.Location.Vault] = {
							["notify"] = true,
							["override"] = true,
						},
					},
				},
				[1000] = {
					["system"] = false,
					["used"] = "Y",
					["name"] = ArkInventory.Localise["DEFAULT"],
				},
				[9999] = {
					["system"] = true,
					["used"] = "Y",
					["name"] = ArkInventory.Localise["DEFAULT"],
				},
			},
			["min"] = 1000,
			["next"] = 1000,
			["max"] = 8999,
		},
		["sort"] = {
			["method"] = {
				["data"] = {
					["**"] = {
						["system"] = false,
						["used"] = "N", -- Y(es) | N(o) | D(eleted)
						["name"] = "",
						["order"] = { },
					},
					[9999] = {
						["system"] = true,
						["used"] = "Y",
						["name"] = ArkInventory.Localise["CONFIG_SORTING_METHOD_BAGSLOT"],
						["order"] = {
							[1] = {
								["key"] = "bagid",
								["active"] = true,
							},
							[2] = {
								["key"] = "slotid",
								["active"] = true,
							},
						},
					},
					[9998] = {
						["system"] = true,
						["used"] = "Y",
						["name"] = "Quality > Category > Location > Name",
						["order"] = {
							[1] = {
								["key"] = "quality",
								["active"] = true,
							},
							[2] = {
								["key"] = "category",
								["active"] = true,
							},
							[3] = {
								["key"] = "location",
								["active"] = true,
							},
							[4] = {
								["key"] = "name",
								["active"] = true,
							},
							[5] = {
								["key"] = "count",
								["active"] = true,
							},
							[6] = {
								["key"] = "bagid",
								["active"] = true,
							},
							[7] = {
								["key"] = "slotid",
								["active"] = true,
							},
						},
					},
					[9997] = {
						["system"] = true,
						["used"] = "Y",
						["name"] = "Name (Ascending)",
						["order"] = {
							[1] = {
								["key"] = "name",
								["active"] = true,
							},
							[2] = {
								["key"] = "count",
								["active"] = true,
							},
							[3] = {
								["key"] = "bagid",
								["active"] = true,
							},
							[4] = {
								["key"] = "slotid",
								["active"] = true,
							},

						},
					},
					[9996] = {
						["system"] = true,
						["used"] = "Y",
						["name"] = "Vendor Price",
						["order"] = {
							[1] = {
								["key"] = "vendorprice",
								["active"] = true,
							},
							[2] = {
								["key"] = "count",
								["active"] = true,
							},
							[3] = {
								["key"] = "bagid",
								["active"] = true,
							},
							[4] = {
								["key"] = "slotid",
								["active"] = true,
							},
						},
					},
					[9995] = {
						["system"] = true,
						["used"] = "Y",
						["name"] = string.format( "%s / %s", ArkInventory.Localise["VAULT"], ArkInventory.Localise["VOIDSTORAGE"] ),
						["order"] = {
							[1] = {
								["key"] = "bagid",
								["active"] = true,
							},
							[2] = {
								["key"] = "slotid",
								["active"] = true,
							},
						},
					},
					[9994] = {
						["system"] = true,
						["used"] = "Y",
						["name"] = "Name (Descending)",
						["order"] = {
							[1] = {
								["key"] = "name",
								["active"] = true,
								["descending"] = true,
							},
							[2] = {
								["key"] = "count",
								["active"] = true,
							},
							[3] = {
								["key"] = "bagid",
								["active"] = true,
							},
							[4] = {
								["key"] = "slotid",
								["active"] = true,
							},
						},
					},
					[9993] = {
						["system"] = true,
						["used"] = "Y",
						["name"] = string.format( "%s (%s)", ArkInventory.Localise["CONFIG_SORTING_METHOD_BAGSLOT"], "Descending" ),
						["order"] = {
							[1] = {
								["key"] = "bagid",
								["active"] = true,
								["descending"] = true,
							},
							[2] = {
								["key"] = "slotid",
								["active"] = true,
								["descending"] = true,
							},
						},
					},
				},
				["min"] = 1000,
				["next"] = 1000,
				["max"] = 8999,
			},
		},
		["showdisabled"] = true,
		["restack"] = {
			["blizzard"] = true, -- use blizzard cleanup function
			-- cleanup options
			["reverse"] = false,
			["deposit"] = false, -- blizzard - run deposit all items
			-- restack options
			["refresh"] = false, -- do a refresh when the restack is finished
			["topup"] = true, -- top up stacks in the bank (and reagent bank) with items from bags
			["bank"] = false, -- fill up empty bank slots from bag
			["priority"] = true, -- true = full reagent bank first, false = fill profession bags first
		},
		["bucket"] = {
			["*"] = nil
		},
		["bugfix"] = {
			["framelevel"] = {
				["enable"] = true,
				["alert"] = 0,
			},
			["zerosizebag"] = {
				["enable"] = true,
				["alert"] = true,
			},
		},
		["tooltip"] = {
			["show"] = true, -- show tooltips for items
			["scale"] = {
				["enabled"] = false,
				["amount"] = 1,
			},
			["addempty"] = false, -- add an empty line / seperator
			["highlight"] = "", -- highlight my data
			["battlepet"] = {
				["enable"] = true,
				["source"] = true,
				["description"] = true,
			},
			["reputation"] = { -- need to add this to the config at some point
				["enable"] = true,
				["description"] = true,
				["custom"] = 1, -- 1 = default, 2 = custom
				["style"] = {
					["normal"] = "",
					["count"] = "",
				},
			},
			["itemcount"] = {
				["enable"] = true,
				["justme"] = false, -- only show my data
				["account"] = true, -- only show my account
				["faction"] = true, -- only show my faction
				["realm"] = true, -- only show my realm
				["crossrealm"] = false, -- show connected realms
				["vault"] = true,
				["tabs"] = true,
				["colour"] =  {
					["class"] = false,
					["text"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0.15,
					},
					["count"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["ignore"] = {
					["*"] = false,
				},
			},
			["money"] = {
				["enable"] = true,
				["justme"] = false, -- only show my data
				["account"] = true, -- only show my account
				["faction"] = true, -- only show my faction
				["realm"] = true, -- only show my realm
				["crossrealm"] = false, -- show connected realms
				["vault"] = true,
				["colour"] =  {
					["class"] = false,
					["text"] = {
						["r"] = 1,
						["g"] = 0.5,
						["b"] = 0.15,
					},
					["count"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
			},
			["precalc"] = false,
			["refresh"] = true,
		},
		["tracking"] = {
			["items"] = { },
			["reputation"] = {
				["custom"] = 1, -- 1 = default, 2 = custom
				["style"] = {
					["ldb"] = "",
					["tooltip"] = "",
				},
			},
		},
		["message"] = {
			["translation"] = {
				["interim"] = true,
				["final"] = true,
			},
			["restack"] = {
				["*"] = true,
			},
			["battlepet"] = {
				["opponent"] = true,
			},
			["mount"] = {
				["warnings"] = true,
			},
			["bag"] = {
				["unknown"] = true,
			},
			["rules"] = {
				["state"] = true,
				["hooked"] = true,
				["registration"] = true,
			},
			["realm"] = {
				["loaded"] = true,
			},
		},
		["mount"] = {
			["correction"] = { }, -- [spell] = mountType
		},
		["junk"] = {
			["sell"] = false,
			["limit"] = true,
			["delete"] = false,
			["notify"] = true,
			["raritycutoff"] = ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_POOR, -- max quality to sell/destroy
			["list"] = true,
			["test"] = true,
		},
		["font"] = {
			["face"] = ArkInventory.Const.Font.Face,
			["height"] = ArkInventory.Const.Font.Height,
		},
		["menu"] = {
			["font"] = {
				["face"] = ArkInventory.Const.Font.Face,
				["height"] = ArkInventory.Const.Font.Height,
			},
		},
		["newitemglow"] = {
			["enable"] = true,
			["colour"] = { r = 0.7, g = 0.7, b = 0.7, a = 0.5 },
			["clearonclose"] = false,
		},
		["transmog"] = {
			["enable"] = true,
			["anchor"] = ArkInventory.Const.Anchor.Default,
			["secondary"] = false,
			["icon"] = {
				[ArkInventory.Const.Transmog.State.CanLearnMyself] = {
					["style"] = ArkInventory.Const.Transmog.StyleDefault,
					["colour"] = { r = 0.00, g = 1.00, b = 0.00, a = 1 }, -- green
				},
				[ArkInventory.Const.Transmog.State.CanLearnMyselfSecondary] = {
					["style"] = ArkInventory.Const.Transmog.StyleDefault,
					["colour"] = { r = 0.08, g = 0.76, b = 0.94, a = 1 },
				},
				[ArkInventory.Const.Transmog.State.CanLearnOther] = {
					["style"] = ArkInventory.Const.Transmog.StyleDefault,
					["colour"] = { r = 1.00, g = 1.00, b = 0.00, a = 1 },
				},
				[ArkInventory.Const.Transmog.State.CanLearnOtherSecondary] = {
					["style"] = ArkInventory.Const.Transmog.StyleDefault,
					["colour"] = { r = 1.00, g = 0.78, b = 1.00, a = 1 },
				},
			},
		},
		["conflict"] = {
			["tsm"] = {
				["mailbox"] = false,
				["merchant"] = false,
			},
		},
		["ui"] = {
			["search"] = {
				["scale"] = 1,
				["background"] = {
					["style"] = ArkInventory.Const.Texture.BackgroundDefault,
					["colour"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
						["a"] = 0.75,
					},
				},
				["border"] = {
					["style"] = ArkInventory.Const.Texture.BorderDefault,
					["size"] = nil,
					["offset"] = nil,
					["scale"] = 1,
					["colour"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["font"] = {
					["height"] = ArkInventory.Const.Font.Height,
				},
				["strata"] = "MEDIUM"
			},
			["rules"] = {
				["scale"] = 1,
				["background"] = {
					["style"] = ArkInventory.Const.Texture.BackgroundDefault,
					["colour"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
						["a"] = 0.75,
					},
				},
				["border"] = {
					["style"] = ArkInventory.Const.Texture.BorderDefault,
					["size"] = nil,
					["offset"] = nil,
					["scale"] = 1,
					["colour"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["font"] = {
					["height"] = ArkInventory.Const.Font.Height,
				},
				["strata"] = "MEDIUM",
				["width"] = 600,
				["rows"] = 15,
			},
		},
		["thread"] = {
			["debug"] = false,
			["timeout"] = {
				["normal"] = 25,
				["combat"] = 100, -- 200ms appears to be the actual limit
				["tooltip"] = 25, -- tooltip generation queue
				["junksell"] = 75, -- this is a minimum duration timer, not a timeout, must be above 50 (will occasionally fail when that low)
			},
		},
--		["suffix"] = {
--			["count"] = false,
--			["search"] = false,
--		},
		["bonusid"] = {
			["count"] = {
				["suffix"] = false,
			},
			["search"] = {
				["suffix"] = false,
				["corruption"] = true,
			},
		},
	},
	["player"] = {
		["version"] = 0,
		["data"] = {
			["*"] = { -- player or guild name
				
				["erasesilent"] = false,
				
				["ldb"] = {
					["bags"] = {
						["colour"] = false,
						["full"] = true,
						["includetype"] = true,
					},
					["pets"] = {
						["randomise"] = true,
						["useall"] = true,
						["selected"] = {
							["*"] = nil,
						},
					},
					["mounts"] = {
						["randomise"] = true,
						["type"] = {
							["l"] = { -- land (ground)
								["useflying"] = false,
								["usesurface"] = false,
								["useall"] = true,
								["selected"] = {
									["*"] = nil,
								},
							},
							["a"] = { -- air (flying)
								["dismount"] = false,
								["useall"] = true,
								["selected"] = {
									["*"] = nil,
								},
							},
							["u"] = { -- underwater
								["useall"] = true,
								["selected"] = {
									["*"] = nil,
								},
							},
							["s"] = { -- surface (water)
								["useall"] = true,
								["selected"] = {
									["*"] = nil,
								},
							},
							["x"] = { -- unknown
								["useall"] = true,
								["selected"] = {
									["*"] = nil,
								},
							},
						},
					},
					["tracking"] = {
						["currency"] = {
							["tracked"] = {
								["*"] = false, -- included in object tooltip
							},
							["expand"] = { -- list of header ids to auto expand (so its children are in-lined)
								["*"] = false,
							},
							["watched"] = { -- included in object name
								["*"] = false,
							},
						},
						["item"] = {
							["tracked"] = {
								["*"] = false,
							},
						},
						["reputation"] = {
							["tracked"] = {
								["*"] = false, -- included in object tooltip
							},
							["expand"] = { -- list of header ids to auto expand (so its children are in-lined)
								["*"] = false,
							},
							["watched"] = nil, -- included in object name (only one rep can be watched)
						},
					},
					["travelform"] = false,
				},
				
				["option"] = { -- mostly moved to profile
					["**"] = { -- loc_id
						["bag"] = {
							["*"] = { -- bag_id
								["display"] = true,
								["restack"] = {
									["ignore"] = false,
								},
							},
						},
					},
				},
				
				["info"] = {
					["**"] = nil,
					["account_id"] = 100,
					["money"] = 0,
					["tradeskill"] = {
						["*"] = nil, -- slot = tradeskill id
					},
				},
				
				["location"] = {
					["*"] = {
						["slot_count"] = 0,
						["bag"] = {
							["*"] = {
								["status"] = ArkInventory.Const.Bag.Status.Unknown,
--								["texture"] = nil,
--								["h"] = nil,
--								["q"] = nil,
								["type"] = ArkInventory.Const.Slot.Type.Unknown,
								["count"] = 0,
								["empty"] = 0,
								["slot"] = {
--									stuff
								},
							},
						},
					},
				},
				
				["tradeskill"] = {
					["enable"] = false,
					["loadscan"] = false,
					["quiet"] = true,
					["priority"] = 1, -- profession priority for category assignment
				},
				
				["profile"] = 1000,
				
			},
		},
	},
	["account"] = {
		["version"] = 0,
		["data"] = {
			["**"] = {
				["system"] = false,
				["used"] = "N", -- Y(es) | N(o) | D(eleted)
				["name"] = "",
			},
			[100] = {
				["system"] = true,
				["used"] = "Y",
				["name"] = MANAGE_ACCOUNT,
			},
			[999] = {
				["system"] = true,
				["used"] = "Y",
				["name"] = ArkInventory.Localise["UNASSIGNED"],
			},
		},
		["min"] = 500,
		["next"] = 500,
		["max"] = 900,
	},
	["cache"] = {
		["version"] = 0,
		["default"] = {
			["*"] = nil, -- key generated via ObjectIDCategory( )
		},
		["rule"] = {
			["*"] = nil, -- key generated via ObjectIDRule( )
		},
		["trainerspecies"] = {
			["*"] = false, --speciesID = { table of species + trainer pet data }
		},
	},
}

ArkInventory.Const.DatabaseDefaults.profile = {
	["option"] = {
		["version"] = 0,
	},
}


function ArkInventory.TOCVersionFail( quiet )
	-- not required any more
end

function ArkInventory.OnLoad( )
	
	-- called via hidden frame in xml
	
	ArkInventory.Const.Program.Version = 0 + GetAddOnMetadata( ArkInventory.Const.Program.Name, "Version" )
	
	ArkInventory.Global.Version = string.format( "v%s", string.gsub( ArkInventory.Const.Program.Version, "(%d-)(%d%d)(%d%d)$", "%1.%2.%3" ) )
	
	local releasetype = GetAddOnMetadata( ArkInventory.Const.Program.Name, "X-ReleaseType" )
	if releasetype ~= "" then
		ArkInventory.Global.Version = string.format( "%s %s(%s)%s", ArkInventory.Global.Version, RED_FONT_COLOR_CODE, releasetype, FONT_COLOR_CODE_CLOSE )
	end
	
	ArkInventory.Global.Version = string.format( "%s [%s]", ArkInventory.Global.Version, ArkInventory.Const.Blizzard.Client.name )
	
	
	
	
	local loc_id = 0
	local bags
	
	
	-- bags
	loc_id = ArkInventory.Const.Location.Bag
	bags = ArkInventory.Global.Location[loc_id].Bags
	
	bags[#bags + 1] = BACKPACK_CONTAINER
	for x = 1, NUM_BAG_SLOTS do
		bags[#bags + 1] = x
	end
	ArkInventory.Global.Location[loc_id].bagCount = #bags
	
	
	-- keyring
	loc_id = ArkInventory.Const.Location.Keyring
	bags = ArkInventory.Global.Location[loc_id].Bags
	
	bags[#bags + 1] = KEYRING_CONTAINER
	ArkInventory.Global.Location[loc_id].bagCount = #bags
	
	
	-- bank  ArkInventory.Global.Location[ArkInventory.Const.Location.Bank]
	loc_id = ArkInventory.Const.Location.Bank
	bags = ArkInventory.Global.Location[loc_id].Bags
	
	bags[#bags + 1] = BANK_CONTAINER
	for x = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
		bags[#bags + 1] = x
	end
	
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		bags[#bags + 1] = REAGENTBANK_CONTAINER
		ArkInventory.Global.Location[loc_id].tabReagent = #bags
	end
	
	ArkInventory.Global.Location[loc_id].bagCount = #bags
	
	
	-- vault
	loc_id = ArkInventory.Const.Location.Vault
	bags = ArkInventory.Global.Location[loc_id].Bags
	
	for x = 1, MAX_GUILDBANK_TABS do
		bags[#bags + 1] = ArkInventory.Const.Offset.Vault + x
	end
	ArkInventory.Global.Location[loc_id].bagCount = #bags
	
	
	-- mailbox
	loc_id = ArkInventory.Const.Location.Mailbox
	bags = ArkInventory.Global.Location[loc_id].Bags
	for x = 1, 2 do
		bags[#bags + 1] = ArkInventory.Const.Offset.Mailbox + x
	end
	ArkInventory.Global.Location[loc_id].bagCount = #bags
	
	
	-- wearing
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Wearing].Bags, ArkInventory.Const.Offset.Wearing + 1 )
	
	ArkInventory.Const.InventorySlotName = { "HeadSlot", "NeckSlot", "ShoulderSlot", "BackSlot", "ChestSlot", "ShirtSlot", "TabardSlot", "WristSlot", "HandsSlot", "WaistSlot", "LegsSlot", "FeetSlot", "Finger0Slot", "Finger1Slot", "Trinket0Slot", "Trinket1Slot", "MainHandSlot", "SecondaryHandSlot" }
	
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
		table.insert( ArkInventory.Const.InventorySlotName, "RangedSlot" )
	end
	
	
	-- pet
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Pet].Bags, ArkInventory.Const.Offset.Pet + 1 )
	
	-- mount
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Mount].Bags, ArkInventory.Const.Offset.Mount + 1 )
	
	-- mount equipment
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.MountEquipment].Bags, ArkInventory.Const.Offset.MountEquipment + 1 )
	
	-- toybox
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Toybox].Bags, ArkInventory.Const.Offset.Toybox + 1 )
	
	-- heirloom
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Heirloom].Bags, ArkInventory.Const.Offset.Heirloom + 1 )
	
	-- currency
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Currency].Bags, ArkInventory.Const.Offset.Currency + 1 )
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Currency].Bags, -4 )
	
	-- auctions
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Auction].Bags, ArkInventory.Const.Offset.Auction + 1 )
	
	-- void storage
	for x = 1, ArkInventory.Const.Blizzard.VOID_STORAGE_PAGES do
		table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Void].Bags, ArkInventory.Const.Offset.Void + x )
	end
	
	-- reputation
	table.insert( ArkInventory.Global.Location[ArkInventory.Const.Location.Reputation].Bags, ArkInventory.Const.Offset.Reputation + 1 )
	
	-- setup reverse lookup cache
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		for bag_id, v in pairs( loc_data.Bags ) do
			ArkInventory.Global.Cache.BlizzardBagIdToInternalId[v] = { loc_id=loc_id, bag_id=bag_id }
		end
	end
	
end

function ArkInventory.SetMountMacro( )
	
	if not InCombatLockdown( ) then
		
		local me = ArkInventory.GetPlayerCodex( )
		
		local btn = ARKINV_MountToggle
		if not btn then
			if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
				btn = CreateFrame( "ItemButton", "ARKINV_MountToggle", UIParent, "SecureActionButtonTemplate" )
			else
				btn = CreateFrame( "Button", "ARKINV_MountToggle", UIParent, "SecureActionButtonTemplate" )
			end
			btn:SetAttribute( "type", "macro" )
			btn:SetPoint( "CENTER" )
			btn:Hide( )
		end
		
		local macrotext = "/dismount [combat, mounted, noflying]\n" -- dismount if in combat and mounted and not flying
		macrotext = macrotext .. "/stopmacro [combat]\n" -- abort if in combat
		
		if ( me.player.data.info.class == "DRUID" ) or ( me.player.data.info.class == "WARLOCK" ) or ( me.player.data.info.class == "SHAMAN" ) then
			macrotext = macrotext .. "/cancelform [noform:0]\n" -- cancel any form
		end
		
		-- class shapeshifts
		if me.player.data.ldb.travelform then
			if me.player.data.info.class == "DRUID" then
				local cat_form = GetSpellInfo( 768 )
				local travel_form = GetSpellInfo( 783 )
				macrotext = macrotext .. "/cast [indoors] " .. cat_form .. "; " .. travel_form .. "\n"
			end
			-- shaman ghost wolf?
		else
			macrotext = macrotext .. "/run ArkInventory.LDB.Mounts:OnClick( )\n"
		end
		
		--ArkInventory.Output( macrotext )
		
		btn:SetAttribute( "macrotext", macrotext )
		
	end
	
end

function ArkInventory.OnInitialize( )
	
	-- pre acedb load, the database is just a table
	ArkInventory.DatabaseUpgradePreLoad( )
	
	-- load database, use default profile as we dont need them, metatables now active
	ArkInventory.acedb = LibStub( "AceDB-3.0" ):New( "ARKINVDB", ArkInventory.Const.DatabaseDefaults, true )
	ArkInventory.db = ArkInventory.acedb.global
	
	ArkInventory.StartupChecks( )
	
	-- config menu (internal)
	ArkInventory.Lib.Config:RegisterOptionsTable( ArkInventory.Const.Frame.Config.Internal, ArkInventory.Config.Internal )
	ArkInventory.Lib.Dialog:SetDefaultSize( ArkInventory.Const.Frame.Config.Internal, 1250, 700 )
	
	-- config menu (blizzard)
	ArkInventory.ConfigBlizzard( )
	ArkInventory.Lib.Config:RegisterOptionsTable( ArkInventory.Const.Frame.Config.Blizzard, ArkInventory.Config.Blizzard, { "arkinventory", "arkinv", "ai" } )
	ArkInventory.Lib.Dialog:AddToBlizOptions( ArkInventory.Const.Frame.Config.Blizzard, ArkInventory.Const.Program.Name )
	
	-- tooltip
	ArkInventory.Global.Tooltip.Scan = ArkInventory.TooltipScanInit( "ARKINV_ScanTooltip" )
	
	ArkInventory.LoadConnectedRealmData( )
	
	ArkInventory.PlayerInfoSet( )
	ArkInventory.MediaRegister( )
	
	local me = ArkInventory.GetPlayerCodex( )
	
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView then
			if me.profile.location[loc_id].special then
				local frame = ArkInventory.Frame_Main_Get( loc_id )
				table.insert( UISpecialFrames, frame:GetName( ) )
			end
		end
	end
	
	ArkInventory.SetMountMacro( )
	
	ArkInventory.Const.Blizzard.Events = {
--		{ "blizzard event name", "arkinventory function name", blizzard_project_id, min_toc, max_toc }
		
		{ "ACTIONBAR_UPDATE_USABLE", "EVENT_ARKINV_ACTIONBAR_UPDATE_USABLE" },
		{ "CVAR_UPDATE", "EVENT_ARKINV_CVAR_UPDATE" },
--		{ "PLAYER_CONTROL_GAINED", "EVENT_ARKINV_PLAYER_CONTROL_GAINED" },
--		{ "PLAYER_CONTROL_LOST", "EVENT_ARKINV_PLAYER_CONTROL_LOST" },
		{ "PLAYER_ENTERING_WORLD", "EVENT_ARKINV_PLAYER_ENTER" }, -- not really needed but seems to fix a bug where ace doesnt seem to init again
		{ "PLAYER_LEAVING_WORLD", "EVENT_ARKINV_PLAYER_LEAVE" }, -- when the player logs out or the UI is reloaded.
		{ "PLAYER_REGEN_DISABLED", "EVENT_ARKINV_COMBAT_ENTER" }, -- player entered combat
		{ "PLAYER_REGEN_ENABLED", "EVENT_ARKINV_COMBAT_LEAVE" }, -- player left combat
--		{ "UNIT_POWER", "EVENT_ARKINV_UNIT_POWER" },
		{ "ACTIVE_TALENT_GROUP_CHANGED", "EVENT_ARKINV_TALENT_CHANGED", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "UI_SCALE_CHANGED", "" },
		{ "ADDON_LOADED", "EVENT_ARKINV_ADDON_LOADED" },
		
		{ "AUCTION_HOUSE_SHOW", "EVENT_ARKINV_AUCTION_ENTER" },
		{ "AUCTION_HOUSE_CLOSED", "EVENT_ARKINV_AUCTION_LEAVE" },
		{ "AUCTION_OWNED_LIST_UPDATE", "EVENT_ARKINV_AUCTION_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL, nil, 80205 },
		{ "AUCTION_OWNED_LIST_UPDATE", "EVENT_ARKINV_AUCTION_UPDATE", ArkInventory.Const.Blizzard.Client.CLASSIC },
		{ "OWNED_AUCTIONS_UPDATED", "EVENT_ARKINV_AUCTION_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL, 80300 },
--		{ "OWNED_AUCTION_EXPIRED", "EVENT_ARKINV_AUCTION_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "OWNED_AUCTION_ADDED", "EVENT_ARKINV_AUCTION_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "AUCTION_CANCELED", "EVENT_ARKINV_AUCTION_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL, 80300 },
		
		{ "UNIT_INVENTORY_CHANGED", "EVENT_ARKINV_INVENTORY_CHANGE" },
		
		{ "EQUIPMENT_SETS_CHANGED", "EVENT_ARKINV_EQUIPMENT_SETS_CHANGED", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "BAG_NEW_ITEMS_UPDATED", "" },
--		{ "BAG_SLOT_FLAGS_UPDATED", "EVENT_ARKINV_BAG_UPDATE" },
		{ "BAG_UPDATE", "EVENT_ARKINV_BAG_UPDATE" },
		{ "BAG_UPDATE_COOLDOWN", "EVENT_ARKINV_BAG_UPDATE_COOLDOWN" },
--		{ "BAG_UPDATE_DELAYED", "EVENT_ARKINV_BAG_UPDATE_DELAYED" },
		{ "ITEM_LOCK_CHANGED", "EVENT_ARKINV_BAG_LOCK" },
		{ "PLAYERBANKSLOTS_CHANGED", "EVENT_ARKINV_BANK_UPDATE" }, -- a bag_update event for the bank (-1)
		
		{ "BANKFRAME_CLOSED", "EVENT_ARKINV_BANK_LEAVE" },
		{ "BANKFRAME_OPENED", "EVENT_ARKINV_BANK_ENTER" },
--		{ "BANK_BAG_SLOT_FLAGS_UPDATED", "EVENT_ARKINV_BANK_UPDATE" },
		{ "PLAYERBANKBAGSLOTS_CHANGED", "EVENT_ARKINV_BANK_SLOT" }, -- triggered when you purchase a new bank bag slot
		
		{ "REAGENTBANK_PURCHASED", "EVENT_ARKINV_BANK_TAB", ArkInventory.Const.Blizzard.Client.RETAIL }, -- triggered when you purchase a bank tab (reagent bank)
		{ "REAGENTBANK_UPDATE", "EVENT_ARKINV_REAGENTBANK_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PLAYERREAGENTBANKSLOTS_CHANGED", "EVENT_ARKINV_REAGENTBANK_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL }, -- a bag_update event for the reagent bank (-3)
		
		{ "GUILDBANKBAGSLOTS_CHANGED", "EVENT_ARKINV_VAULT_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "GUILDBANKFRAME_CLOSED", "EVENT_ARKINV_VAULT_LEAVE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "GUILDBANKFRAME_OPENED", "EVENT_ARKINV_VAULT_ENTER", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "GUILDBANKLOG_UPDATE", "EVENT_ARKINV_VAULT_LOG", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "GUILDBANK_ITEM_LOCK_CHANGED", "EVENT_ARKINV_VAULT_LOCK", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "GUILDBANK_UPDATE_MONEY", "EVENT_ARKINV_VAULT_MONEY", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "GUILDBANK_UPDATE_TABS", "EVENT_ARKINV_VAULT_TABS", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "GUILDBANK_UPDATE_TEXT", "EVENT_ARKINV_VAULT_INFO", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "HEIRLOOMS_UPDATED", "EVENT_ARKINV_COLLECTION_HEIRLOOM_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "CURRENCY_DISPLAY_UPDATE", "EVENT_ARKINV_COLLECTION_CURRENCY_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PLAYER_TRADE_CURRENCY", "EVENT_ARKINV_COLLECTION_CURRENCY_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "MAIL_CLOSED", "EVENT_ARKINV_MAIL_LEAVE" },
		{ "MAIL_INBOX_UPDATE", "EVENT_ARKINV_MAIL_UPDATE" },
		{ "MAIL_SEND_SUCCESS", "EVENT_ARKINV_MAIL_SEND_SUCCESS" },
		{ "MAIL_SHOW", "EVENT_ARKINV_MAIL_ENTER" },
		
		{ "MERCHANT_CLOSED", "EVENT_ARKINV_MERCHANT_LEAVE" },
		{ "MERCHANT_SHOW", "EVENT_ARKINV_MERCHANT_ENTER" },
		
		{ "MOUNT_EQUIPMENT_APPLY_RESULT", "EVENT_ARKINV_COLLECTION_MOUNT_EQUIPMENT_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "MOUNT_JOURNAL_SEARCH_UPDATED", "" },
--		{ "MOUNT_JOURNAL_USABILITY_CHANGED", "" },
		{ "NEW_MOUNT_ADDED", "EVENT_ARKINV_COLLECTION_MOUNT_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "BATTLE_PET_CURSOR_CLEAR", "EVENT_ARKINV_COLLECTION_PET_UPDATE" },
--		{ "CHAT_MSG_PET_BATTLE_COMBAT_LOG", "EVENT_ARKINV_COLLECTION_PET_UPDATE" },
--		{ "CHAT_MSG_PET_BATTLE_INFO", "EVENT_ARKINV_COLLECTION_PET_UPDATE" },
--		{ "CHAT_MSG_PET_INFO", "EVENT_ARKINV_COLLECTION_PET_UPDATE" },
		{ "COMPANION_LEARNED", "EVENT_ARKINV_COLLECTION_MOUNT_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "COMPANION_UNLEARNED", "EVENT_ARKINV_COLLECTION_MOUNT_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "COMPANION_UPDATE", "EVENT_ARKINV_COLLECTION_MOUNT_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL }, -- do i really need this? it triggers when other people mount/dismount as well
		{ "NEW_PET_ADDED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_BATTLE_CLOSE", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_BATTLE_LEVEL_CHANGED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_BATTLE_OPENING_DONE", "EVENT_ARKINV_BATTLEPET_OPENING_DONE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "PET_BATTLE_OVER", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "PET_BATTLE_PET_CHANGED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "PET_BATTLE_PET_ROUND_RESULTS", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_BATTLE_QUEUE_STATUS", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "PET_BATTLE_XP_CHANGED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_JOURNAL_LIST_UPDATE", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_JOURNAL_PET_DELETED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_JOURNAL_PET_RESTORED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_JOURNAL_PET_REVOKED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "PET_JOURNAL_PETS_HEALED", "EVENT_ARKINV_COLLECTION_PET_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		
--		{ "OBLITERUM_FORGE_CLOSE", "", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "OBLITERUM_FORGE_SHOW", "", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "PLAYER_MONEY", "EVENT_ARKINV_PLAYER_MONEY" },
		
		{ "SKILL_LINES_CHANGED", "EVENT_ARKINV_PLAYER_SKILLS", ArkInventory.Const.Blizzard.Client.CLASSIC }, -- triggered when you gain or lose a skill, skillup, collapse/expand a skill header
		{ "TRADE_SKILL_DATA_SOURCE_CHANGED", "EVENT_ARKINV_TRADESKILL_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "TRADE_SKILL_CLOSE", "EVENT_ARKINV_TRADESKILL_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "NEW_RECIPE_LEARNED", "EVENT_ARKINV_TRADESKILL_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "LEARNED_SPELL_IN_TAB", "EVENT_ARKINV_TRADESKILL_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "QUEST_ACCEPTED", "EVENT_ARKINV_QUEST_UPDATE" },
		{ "QUEST_AUTOCOMPLETE", "EVENT_ARKINV_QUEST_UPDATE" },
		{ "QUEST_FINISHED", "EVENT_ARKINV_QUEST_UPDATE" },
		{ "QUEST_REMOVED", "EVENT_ARKINV_QUEST_UPDATE" },
		{ "QUEST_TURNED_IN", "EVENT_ARKINV_QUEST_UPDATE" },
--		{ "QUEST_ITEM_UPDATED", "EVENT_ARKINV_QUEST_UPDATE" }, -- no longer valid in BFA
--		{ "QUEST_LOG_UPDATE", "" }, -- triggers too often to be usable
		{ "UNIT_QUEST_LOG_CHANGED", "EVENT_ARKINV_QUEST_UPDATE" },
		{ "WORLD_QUEST_COMPLETED_BY_SPELL", "EVENT_ARKINV_QUEST_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "SCRAPPING_MACHINE_CLOSE", "EVENT_ARKINV_SCRAP_LEAVE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "SCRAPPING_MACHINE_SHOW", "EVENT_ARKINV_SCRAP_ENTER", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "TRADE_CLOSED", "EVENT_ARKINV_TRADE_LEAVE" },
		{ "TRADE_SHOW", "EVENT_ARKINV_TRADE_ENTER" },
		
		{ "TRANSMOGRIFY_CLOSE", "EVENT_ARKINV_TRANSMOG_LEAVE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "TRANSMOGRIFY_OPEN", "EVENT_ARKINV_TRANSMOG_ENTER", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "NEW_TOY_ADDED", "EVENT_ARKINV_COLLECTION_TOYBOX_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "TOYS_UPDATED", "EVENT_ARKINV_COLLECTION_TOYBOX_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		
		{ "UPDATE_FACTION", "EVENT_ARKINV_COLLECTION_REPUTATION_UPDATE" }, -- triggers off gui changes and can cause infinite loops if another mod changes the gui
		{ "CHAT_MSG_COMBAT_FACTION_CHANGE", "EVENT_ARKINV_COLLECTION_REPUTATION_UPDATE" },
--		{ "LFG_BONUS_FACTION_ID_UPDATED", "EVENT_ARKINV_COLLECTION_REPUTATION_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL, nil, 90000 },
		{ "UPDATE_EXPANSION_LEVEL", "EVENT_ARKINV_COLLECTION_REPUTATION_UPDATE" },
		{ "QUEST_LOG_UPDATE", "EVENT_ARKINV_COLLECTION_REPUTATION_UPDATE" },
		
--		{ "VOID_DEPOSIT_WARNING", "EVENT_ARKINV_VOID_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "VOID_STORAGE_CONTENTS_UPDATE", "EVENT_ARKINV_VOID_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "VOID_STORAGE_DEPOSIT_UPDATE", "EVENT_ARKINV_VOID_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "VOID_STORAGE_UPDATE", "EVENT_ARKINV_VOID_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
		{ "VOID_TRANSFER_DONE", "EVENT_ARKINV_VOID_UPDATE", ArkInventory.Const.Blizzard.Client.RETAIL },
--		{ "VOID_STORAGE_OPEN", "", ArkInventory.Const.Blizzard.Client.RETAIL }, -- not used, we dont override the void
--		{ "VOID_STORAGE_CLOSE", "", ArkInventory.Const.Blizzard.Client.RETAIL }, -- not used, we dont override the void
		
--		{ "ZONE_CHANGED", "EVENT_ARKINV_ZONE_CHANGED" },
--		{ "ZONE_CHANGED_INDOORS", "EVENT_ARKINV_ZONE_CHANGED" },
--		{ "ZONE_CHANGED_NEW_AREA", "EVENT_ARKINV_ZONE_CHANGED" },
		
	}
	
end

function ArkInventory.OnEnable( )
	
	-- Called when the addon is enabled
	
	--ArkInventory.Output( "OnEnable" )
	
	ArkInventory.Global.Junk.process, ArkInventory.Global.Junk.addon = ArkInventory.JunkProcessCheck( )
	
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.CLASSIC ) then
		-- global options that need to be disabled in classic (if copied from retail)
		ArkInventory.db.option.restack.blizzard = false
		ArkInventory.db.option.transmog.enable = false
		ArkInventory.db.option.tooltip.battlepet.enable = false
	end
	
--[[
	-- clear locations that shouldnt have data in this client
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if not ArkInventory.ClientCheck( loc_data.proj ) then
			ArkInventory.EraseSavedData( nil, loc_id, true )
		end
	end
]]--
	
	if ArkInventory.TOCVersionFail( ) then return end
	
	ArkInventory.PlayerInfoSet( )
	
	ArkInventory.BlizzardAPIHook( )
	
	ArkInventory.DatabaseUpgradePostLoad( )
	
	ArkInventory.CategoryGenerate( )
	
	-- tag all locations as changed
	ArkInventory.LocationSetValue( nil, "changed", true )
	
	-- tag all locations to be rebuilt from scratch
	--ArkInventory.OutputWarning( "OnEnable - .restart window draw" )
	ArkInventory.Frame_Main_DrawStatus( nil, ArkInventory.Const.Window.Draw.Restart )
	
	-- init location player id
	ArkInventory.LocationSetValue( nil, "player_id", ArkInventory.PlayerIDSelf( ) )
	
	-- register events
	local bucket1 = ArkInventory.db.option.bucket[ArkInventory.Const.Location.Bag] or 0.5
	
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_ACTIONBAR_UPDATE_USABLE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_AUCTION_LEAVE_BUCKET", 0.3 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_AUCTION_UPDATE_MASSIVE_BUCKET", 60 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_AUCTION_UPDATE_BUCKET", 2 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_BAG_RESCAN_BUCKET", 2 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_BAG_UPDATE_BUCKET", bucket1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_BAG_UPDATE_COOLDOWN_BUCKET", bucket1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_BANK_LEAVE_BUCKET", 0.3 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_CHANGER_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_COLLECTION_HEIRLOOM_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_COLLECTION_CURRENCY_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_COLLECTION_MOUNT_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_COLLECTION_PET_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_COLLECTION_REPUTATION_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_COLLECTION_TOYBOX_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_TRADESKILL_UPDATE_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_INVENTORY_CHANGE_BUCKET", bucket1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_LOCATION_SCANNED_BUCKET", bucket1 * 2 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_MAIL_LEAVE_BUCKET", 0.3 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_MAIL_UPDATE_BUCKET", ArkInventory.db.option.bucket[ArkInventory.Const.Location.Mailbox] or 2 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_MERCHANT_LEAVE_BUCKET", 0.3 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_TRANSMOG_LEAVE_BUCKET", 0.3 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_PLAYER_MONEY_BUCKET", 1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_QUEST_UPDATE_BUCKET", 4 ) -- update quest item glows.  not super urgent just get them there eventually
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_TOOLTIP_REBUILD_QUEUE_UPDATE_BUCKET", bucket1 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_VAULT_LEAVE_BUCKET", 0.3 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_VAULT_UPDATE_BUCKET", ArkInventory.db.option.bucket[ArkInventory.Const.Location.Vault] or 1.5 )
	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_VOID_UPDATE_BUCKET", 0.5 )
--	ArkInventory:RegisterBucketMessage( "EVENT_ARKINV_ZONE_CHANGED_BUCKET", 5 )
	
	for k, v in pairs( ArkInventory.Const.Blizzard.Events ) do
		--ArkInventory.Output( v )
		-- 1 = blizzard event name
		if v[1] and v[1] ~= "" then
			-- 2 = arkinventory function name
			if v[2] and v[2] ~= "" and ArkInventory[v[2]] then
				-- 3 = project id
				-- 4 = min toc required
				-- 5 = max toc required
				if ArkInventory.ClientCheck( v[3], v[4], v[5] ) then
--					if ( not v[4] or ArkInventory.Const.Blizzard.TOC >= v[4]) and ( not v[5] or ArkInventory.Const.Blizzard.TOC <= v[5] ) then
						--ArkInventory.Output( "registering event: ", v[1], "=", v[2] )
						ArkInventory:RegisterEvent( v[1], v[2] )
--					end
				else
					--ArkInventory.OutputWarning( "skipped event: ", v[1], ": not meant for this client/toc" )
				end
			else
				ArkInventory.OutputWarning( "skipped event: ", v[1], ": function ", v[2], " does not exist" )
			end
		else
			ArkInventory.OutputWarning( "skipped event: name is nil or empty" )
		end
	end
	
	
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		-- initialise codex for each location
		ArkInventory.GetLocationCodex( loc_id )
	end
	
	ArkInventory.Tradeskill.ScanHeaders( )
	ArkInventory.ScanLocation( )
	
	ArkInventory.LDB.Money:Update( )
	ArkInventory.LDB.Bags:Update( )
	ArkInventory.LDB.Tracking_Currency:Update( )
	ArkInventory.LDB.Tracking_Item:Update( )
	ArkInventory.LDB.Tracking_Reputation:Update( )
	
	ArkInventory.ScanAuctionExpire( )
	
	ArkInventory.Output( ArkInventory.Global.Version, " ", ArkInventory.Localise["ENABLED"] )
	
	ArkInventory.MediaMenuFontSet( ArkInventory.db.option.font.face, ArkInventory.db.option.menu.font.height )
	
	if not ArkInventory.Global.Thread.Use then
		-- should be set to true by default so if its not then i forgot to put it back
		ArkInventory.OutputWarning( "Thread.Use is disabled (this may be deliberate if this is an Alpha/Beta version)" )
	end
	
	ArkInventory.Collection.Reputation.ImportCrossRefTable( )
	ArkInventory.Collection.Currency.ImportCrossRefTable( )
	ArkInventory.Collection.Pet.ImportCrossRefTable( )
	ArkInventory.Collection.Mount.ImportCrossRefTable( )
	ArkInventory.Tradeskill.ImportCrossRefTable( )
	
	ArkInventory.ItemCacheClear( )
	
	ArkInventory.CrossClient.SetSortBagsRightToLeft( ArkInventory.db.option.restack.reverse )
	
	ArkInventory.ExtractData( )
	
end

function ArkInventory.OnDisable( )
	
	--ArkInventory.Frame_Main_Hide( )
	
	if ArkInventory.TOCVersionFail( true ) then return end
	
	ArkInventory.BlizzardAPIHook( true )
	
	ArkInventory.Output( ArkInventory.Global.Version, " ", ArkInventory.Localise["DISABLED"] )
	
end

function ArkInventory.ItemSortKeyClear( loc_id )
	
	-- clear sort keys
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	if not codex.workpad.bar then return end
	
	for _, bar in pairs( codex.workpad.bar ) do
		for _, item in pairs( bar.item ) do
			item.sortkey = nil
		end
	end
	
end

function ArkInventory.ItemSortKeyGenerate( i, bar_id, codex )
	
	-- put each option into a table - numbered indicies so they can be programatically sorted
	
	if not i then return nil end
	
	local codex = codex or ArkInventory.GetLocationCodex( i.loc_id )
	
	local sid = codex.style.sort.method
	
	if bar_id then
		sid = codex.layout.bar.data[bar_id].sort.method or sid
	end
	
	local sorting = ArkInventory.ConfigInternalSortMethodGet( sid )
	
	local s = { }
	
	-- bag id
	s.bagid = i.bag_id or 0
	
	-- slot id
	if sid == 9995 then
		-- vault layout / void storage layout
		s.slotid = i.did or i.slot_id or 0
	else
		-- all other bag/slot
		s.slotid = i.slot_id or 0
	end
	
	if sorting.used then
		
		local info = ArkInventory.ObjectInfoArray( i.h, i )
		
		-- slot type
		s.slottype = info.osd.slottype or 0
		
		-- item count (system)
		s.count = i.count or 1
		
		-- item name
		if i.h then
			
			local p, m, v = ArkInventory.ConfigInternalSortMethodGetPosition( sorting, "name" )
			
			local t = info.name
			if t and type( i.cn ) == "string" and i.cn ~= "" then
				t = string.format( "%s %s", t, i.cn )
			end
			t = t or ""
			
			if v.reversed then
				t = ArkInventory.ReverseName( t )
			end
			
			s.name = t
			
		else
			
			if codex.style.slot.empty.position then
				-- first alphabetically (default)
				s.name = "!"
			else
				-- last alphabetically
				s.name = "_"
			end
			
		end
		
		-- item quality
		s.quality = i.q or 0
		
		-- equip location
		if i.h and info.class == "item" then
			
			if type( info.equiploc ) == "string" and info.equiploc ~= "" and _G[info.equiploc] then
				s.location = ArkInventory.Const.Slot.CharacterPaneOrder[info.equiploc]
				if not s.location then
					ArkInventory.OutputWarning( "EquipLocation [", info.equiploc, "] not coded, please let the author know." )
				end
			end
		end
		s.location = s.location or 0
		
		-- item type / subtype
		s.itemtype = string.format( "%05i:%05i", info.itemtypeid or 0, info.itemsubtypeid or 0 )
		
		-- item (use) level
		s.itemuselevel = info.uselevel or 0
		
		-- item (stat) level
		s.itemstatlevel = info.ilvl or 0
		
		-- item age
		s.itemage = i.age or 0
		
		-- vendor price
		s.vendorprice = ( info.vendorprice or 0 ) * ( i.count or 1 )
		
		-- expansion
		s.expansion = info.expansion or 0

		-- category
		local cat_id = ArkInventory.ItemCategoryGet( i )
		local cat_type, cat_code = ArkInventory.CategoryCodeSplit( cat_id )
		local cat_order = 0
		if cat_type == ArkInventory.Const.Category.Type.Rule then
			cat_order = ArkInventory.db.option.category[cat_type].data[cat_code].order
		end
		s.category = string.format( "%02i:%04i:%04i", cat_type or 0, cat_order or 0, cat_code or 0 )
		
		-- id
		s.id = string.format( "%s:%010i:%02i", info.class or "error", info.id or 0, info.sb or ArkInventory.Const.Bind.Never )
		
	end
	
	s.descending = { }
	
	local p = 0
	for k, v in ipairs( sorting.order ) do
		if v.active then
			p = p + 1
			s[p] = s[v.key]
			s.descending[p] = v.descending
		end
	end
	
	return s
	
end

function ArkInventory.ItemSortKeySort( a, b )
	
	if not a or not a.sortkey or not b or not b.sortkey then
		return false
	end
	
	local v2
	
	for k1, v1 in ipairs( a.sortkey ) do
		
		v2 = b.sortkey[k1]
		
		if not v1 then 
			ArkInventory.Output( "a[", k1, "] is nil - ", a.sortkey )
			ArkInventory.Output( b.sortkey )
			
			--return false
		end
		
		if not v2 then
			ArkInventory.Output( "b[", k1, "] is nil - ", b.sortkey )
			ArkInventory.Output( a.sortkey )
			--return false
		end
		
		if a.sortkey.descending[k1] then
			if v1 > v2 then return false end
			if v1 < v2 then return true end
		else
			if v1 > v2 then return true end
			if v1 < v2 then return false end
		end
		
	end
	
end

function ArkInventory.LocationSetValue( l, k, v )
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if l == nil or l == loc_id then
			loc_data[k] = v
		end
	end
end

function ArkInventory.CategoryLocationSet( loc_id, cat_id, bar_id )
	
	assert( cat_id ~= nil , "category is nil" )
	
	local cat_def = ArkInventory.CategoryGetSystemID( "SYSTEM_DEFAULT" )
	
	if ( cat_id ~= cat_def ) or ( bar_id ~= nil ) then
		local codex = ArkInventory.GetLocationCodex( loc_id )
		codex.layout.category[cat_id] = bar_id
	end
	
end

function ArkInventory.CategoryLocationGet( loc_id, cat_id )
	
	-- return 1: which bar a category is located on
	-- return 2: is it the default bar
	
	local cat_id = cat_id or ArkInventory.CategoryGetSystemID( "SYSTEM_UNKNOWN" )
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local bar_id = codex.layout.category[cat_id]
	--ArkInventory.Output( "loc=[", loc_id, "], cat=[", cat_id, "], bar=[", bar, "]" )
	
	local cat_def = ArkInventory.CategoryGetSystemID( "SYSTEM_DEFAULT" )
	local bar_def = codex.layout.category[cat_def] or 1
	
	if not bar_id then
		-- if this category hasn't been assigned to a bar then return the bar that DEFAULT is using
		return bar_def, true, cat_def, bar_def
	else
		return bar_id, false, cat_def, bar_def
	end
	
end

function ArkInventory.CategoryHiddenCheck( loc_id, cat_id )
	
	-- hidden categories have a negative bar number
	
	local bar_id = ArkInventory.CategoryLocationGet( loc_id, cat_id )
	
	if bar_id < 0 then
		return true
	else
		return false
	end
	
end

function ArkInventory.CategoryHiddenToggle( loc_id, cat_id )
	ArkInventory.CategoryLocationSet( loc_id, cat_id, 0 - ArkInventory.CategoryLocationGet( loc_id, cat_id ) )
end

function ArkInventory.CategoryGenerate( )
	
	local categories = {
		["SYSTEM"] = ArkInventory.Const.Category.Code.System, -- CATEGORY_SYSTEM
		["CONSUMABLE"] = ArkInventory.Const.Category.Code.Consumable, -- CATEGORY_CONSUMABLE
		["TRADEGOODS"] = ArkInventory.Const.Category.Code.Trade,  -- CATEGORY_TRADEGOODS
		["SKILL"] = ArkInventory.Const.Category.Code.Skill, -- CATEGORY_SKILL
		["CLASS"] = ArkInventory.Const.Category.Code.Class, -- CATEGORY_CLASS
		["EMPTY"] = ArkInventory.Const.Category.Code.Empty, -- CATEGORY_EMPTY
		["RULE"] = ArkInventory.db.option.category[ArkInventory.Const.Category.Type.Rule].data, -- CATEGORY_RULE
		["CUSTOM"] = ArkInventory.db.option.category[ArkInventory.Const.Category.Type.Custom].data, -- CATEGORY_CUSTOM
	}
	
	table.wipe( ArkInventory.Global.Category )
	
	for tn, d in pairs( categories ) do
		
		for k, v in pairs( d ) do
			
			if ArkInventory.ClientCheck( v.proj ) then
			
				--ArkInventory.Output( tn, " - ", k, " - ", v )
				
				local system, order, sort_order, name, cat_id, cat_type, cat_code
				
				if tn == "RULE" then
					
					if v.used == "Y" then
						
						cat_type = ArkInventory.Const.Category.Type.Rule
						cat_code = k
						
						system = nil
						name = string.format( "[%04i] %s", k, v.name )
						order = ( v.order or 99999 ) + ( k / 10000 )
						sort_order = string.lower( v.name )
						
					end
					
				elseif tn == "CUSTOM" then
					
					if v.used == "Y" then
						
						cat_type = ArkInventory.Const.Category.Type.Custom
						cat_code = k
						
						system = nil
						name = string.format( "[%04i] %s", k, v.name )
						order = k
						sort_order = string.lower( v.name )
					
					end
					
				else
					
					cat_type = ArkInventory.Const.Category.Type.System
					cat_code = k
					
					system = string.upper( v.id )
					
					name = v.text
					if type( name ) == "function" then
						name = name( )
					end
					sort_order = string.lower( name )
					name = string.format( "[%04i] %s", k, name or system )
					
				end
				
				if name then
					
					cat_id = ArkInventory.CategoryCodeJoin( cat_type, cat_code )
					
					assert( not ArkInventory.Global.Category[cat_id], string.format( "duplicate category: %s [%s] ", tn, cat_id ) )
					
					ArkInventory.Global.Category[cat_id] = {
						["id"] = cat_id,
						["system"] = system,
						["shortname"] = v.text,
						["name"] = name or string.format( "%s %04i %s", tn, k, "<no name>"  ),
						["fullname"] = string.format( "%s > %s", ArkInventory.Localise[string.format( "CATEGORY_%s", tn )], name ),
						["order"] = order or 0,
						["sort_order"] = string.lower( sort_order ) or "!",
						["type_code"] = tn,
						["type"] = ArkInventory.Localise[string.format( "CATEGORY_%s", tn )],
					}
					
				end
				
			end
			
		end
		
	end
	
end

function ArkInventory.CategoryCodeSplit( id )
	local cat_type, cat_code = string.match( id, "(%d+)!(%d+)" )
	return tonumber( cat_type ), tonumber( cat_code )
end

function ArkInventory.CategoryCodeJoin( cat_type, cat_code )
	return string.format( "%i!%i", cat_type, cat_code )
end

function ArkInventory.CategoryGetNext( v )
	
	if not v.next then
		v.next = v.min
	else
		if v.next < v.min then
			v.next = v.min
		end
	end
	
	local c = 0
	
	while true do
		
		v.next = v.next + 1
		
		if v.next > v.max then
			c = c + 1
			v.next = v.min
		end
		
		if c > 1 then
			return -1
		end
		
		if not v.data[v.next] then
			return -2
		end
		
		if v.data[v.next].used == "N" then
			return v.next, v.data[v.next]
		end
		
	end
	
end

function ArkInventory.CategoryBarHasAssigned( loc_id, bar_id, cat_type )
	
	if not loc_id or not_bar_id then return end
	
	for cat_id, cat in pairs( ArkInventory.Global.Category ) do
		
		local cat_bar, def_bar = ArkInventory.CategoryLocationGet( loc_id, cat.id )
		if math.abs( cat_bar ) == bar_id and not def_bar then
			
			if not cat_type or cat_type == cat.type_code then
				return true
			end
			
		end
		
	end
	
end

function ArkInventory.CategoryBarGetAssigned( loc_id, bar_id, cat_type )
	
	if not loc_id or not_bar_id then return end
	
	local c = 0
	local cat_tbl = { }
	
	for cat_id, cat in pairs( ArkInventory.Global.Category ) do
		
		local cat_bar, def_bar = ArkInventory.CategoryLocationGet( loc_id, cat.id )
		if math.abs( cat_bar ) == bar_id and not def_bar then
			
			if not cat_type or cat_type == cat.type_code then
				
				c = c + 1
				cat_tbl[cat_id] = true
				
			end
			
		end
		
	end
	
	if c == 0 then
		return
	else
		return cat_tbl
	end
	
end

function ArkInventory.CategoryGetSystemID( cat_name )
	
	-- internal system category names only, if it doesnt exist you'll get the default instead
	
	--ArkInventory.Output( "search=[", cat_name, "]" )
	
	local cat_name = string.upper( cat_name )
	local cat_def
	
	for _, v in pairs( ArkInventory.Global.Category ) do
		
		--ArkInventory.Output( "checking=[", v.system, "]" )
		
		if cat_name == v.system then
			--ArkInventory.Output( "found=[", cat_name, " = ", v.name, "] = [", v.id, "]" )
			return v.id
			
		elseif v.system == "SYSTEM_DEFAULT" then
			--ArkInventory.Output( "default found=[", v.name, "] = [", v.id, "]" )
			cat_def = v.id
		end
		
	end
	
	--ArkInventory.Output( "not found=[", cat_name, "] = using default[", cat_def, "]" )
	return cat_def
	
end


function ArkInventory.ItemCategoryGetDefaultActual( i )
	
	-- local debuginfo = { ["m"]=gcinfo( ), ["t"]=GetTime( ) }
	
	-- collection - pet
	if i.loc_id == ArkInventory.Const.Location.Pet then
		
		if i.bp then
			if ArkInventory.IsBound( i.sb ) then
				return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_BATTLE_BOUND" )
			else
				return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_BATTLE_TRADE" )
			end
		else
			if ArkInventory.IsBound( i.sb ) then
				return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_COMPANION_BOUND" )
			else
				return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_COMPANION_TRADE" )
			end
		end
		
	end
	
	-- collection - mount
	if i.loc_id == ArkInventory.Const.Location.Mount then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_MOUNT_BOUND" )
	end
	
	-- collection - currency 
	if i.loc_id == ArkInventory.Const.Location.Currency then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_CURRENCY" )
	end
	
	-- collection - toybox
	if i.loc_id == ArkInventory.Const.Location.Toybox then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_TOY" )
	end
	
	-- collection - heirloom
	if i.loc_id == ArkInventory.Const.Location.Heirloom then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_HEIRLOOM" )
	end
	
	-- collection - reputation
	if i.loc_id == ArkInventory.Const.Location.Reputation then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_REPUTATION" )
	end
	
	
	-- everything else needs the info
	local info = ArkInventory.ObjectInfoArray( i.h, i )
	
	
	-- mythic keystone
	if info.class == "keystone" then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_MYTHIC_KEYSTONE" )
	end
	
	-- caged battle pets
	if info.class == "battlepet" then
		if ArkInventory.IsBound( i.sb ) then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_BATTLE_BOUND" )
		else
			return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_BATTLE_TRADE" )
		end
	end
	
	
	--ArkInventory.Output( "bag[", i.bag_id, "], slot[", i.slot_id, "] = ", info.itemtype, " [", info.itemtypeid, "] ", info.itemsubtype, "[", info.itemsubtypeid, "]" )
	-- ArkInventory.Output( i.h, " = ", info.itemtype, " [", info.itemtypeid, "] ", info.itemsubtype, "[", info.itemsubtypeid, "]" )
	
	-- items only from here on
	if info.class ~= "item" then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_UNKNOWN" )
	end
	
	-- no item info
	if info.name == nil then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_UNKNOWN" )
	end
	
	-- heirlooms
	if info.q == ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_HEIRLOOM then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_HEIRLOOM" )
	end
	
	-- definite reputation items that can be other types
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.XREF.Reputation" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_REPUTATION" )
	end
	
	-- definite currency items that can be other types
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.XREF.Currency" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_CURRENCY" )
	end
	
	-- quest items (some are grey)
	if info.itemtypeid == ArkInventory.Const.ItemClass.QUEST or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.Quest" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_QUEST" )
	end
	
	-- cosmetic items
	if ( info.itemtypeid == ArkInventory.Const.ItemClass.ARMOR and info.itemsubtypeid == ArkInventory.Const.ItemClass.ARMOR_COSMETIC ) or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.Equipment.Cosmetic" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_EQUIPMENT_COSMETIC" )
	end
	
	-- junk
	if info.q == ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_POOR then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_JUNK" )
	end
	
	-- projectiles
	if info.itemtypeid == ArkInventory.Const.ItemClass.PROJECTILE then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_PROJECTILE" )
	end
	
	-- bags / containers
	if info.itemtypeid == ArkInventory.Const.ItemClass.CONTAINER then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_CONTAINER" )
	end
	
	-- keys
	if info.itemtypeid == ArkInventory.Const.ItemClass.KEY or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.Key" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_KEY" )
	end
	
	-- glyphs
	if info.itemtypeid == ArkInventory.Const.ItemClass.GLYPH then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_GLYPH" )
	end
	
	-- battle pet as an item
	if info.itemtypeid == ArkInventory.Const.ItemClass.BATTLEPET then
		if ArkInventory.IsBound( i.sb ) then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_BATTLE_BOUND" )
		else
			return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_BATTLE_TRADE" )
		end
	end
	
	-- misc (pets)
	if ( info.itemtypeid == ArkInventory.Const.ItemClass.MISC and info.itemsubtypeid == ArkInventory.Const.ItemClass.MISC_PET ) or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.Pet" ) then
		if ArkInventory.IsBound( i.sb ) then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_COMPANION_BOUND" )
		else
			return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_COMPANION_TRADE" )
		end
	end
	
	-- misc (mount)
	if ( info.itemtypeid == ArkInventory.Const.ItemClass.MISC and info.itemsubtypeid == ArkInventory.Const.ItemClass.MISC_MOUNT ) or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.Mount" ) then
		if ArkInventory.IsBound( i.sb ) then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_MOUNT_BOUND" )
		else
			return ArkInventory.CategoryGetSystemID( "SYSTEM_MOUNT_TRADE" )
		end
	end
	
	-- PT toy
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.Toy" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_TOY" )
	end
	
	
	
	
	-- socketable gems
	if info.itemtypeid == ArkInventory.Const.ItemClass.GEM or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Gems" ) then
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.GEM_ARTIFACTRELIC or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Gems.Artifact Relic" ) then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_ARTIFACT_RELIC" )
		else
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_GEMS" )
		end
	end
	
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		
		-- artifact power.  tooltip check is lower down
		if ArkInventory.CrossClient.IsArtifactPowerItem( info.id ) or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Artifact Power" ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ARTIFACT_POWER" )
		end
		
	end
	
	-- item enhancements
	if info.itemtypeid == ArkInventory.Const.ItemClass.ITEM_ENHANCEMENT or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.System.Item Enhancement" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_ITEM_ENHANCEMENT" )
	end
	
	-- consumables
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Explosives and Devices" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_EXPLOSIVES_AND_DEVICES" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Bandage" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_BANDAGE" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Food" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_FOOD" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Drink" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_DRINK" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Heal" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_POTION_HEAL" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Mana" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_POTION_MANA" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Potion" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_POTION" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Elixir.Battle" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ELIXIR_BATTLE" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Elixir.Guardian" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ELIXIR_GUARDIAN" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Flask" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_FLASK" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Scroll" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_SCROLL" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Champion" ) then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_CHAMPION_EQUIPMENT" )
	end
	
	if info.itemtypeid == ArkInventory.Const.ItemClass.CONSUMABLE and ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		
		-- retail only, classic has no subcategories
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_EXPLOSIVES_AND_DEVICES then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_EXPLOSIVES_AND_DEVICES" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_POTION then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_POTION" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_ELIXIR then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ELIXIR" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_FLASK then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_FLASK" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_FOOD_AND_DRINK then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_FOOD_AND_DRINK" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_BANDAGE then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_BANDAGE" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_VANTUSRUNE then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_VANTUSRUNE" )
		end
		
	end
	
	if info.itemtypeid == ArkInventory.Const.ItemClass.TRADEGOODS and ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
	
		-- old subcategories still exist but are hidden
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_EXPLOSIVES_AND_DEVICES then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_EXPLOSIVES_AND_DEVICES" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_EXPLOSIVES then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_EXPLOSIVES_AND_DEVICES" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_DEVICES then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_EXPLOSIVES_AND_DEVICES" )
		end
		
	end
	
	
	
	
	
	-- setup tooltip for scanning
	ArkInventory.TooltipSetItem( ArkInventory.Global.Tooltip.Scan, i.loc_id, i.bag_id, i.slot_id, i.h, i )
	
	-- tooltip not ready, set to unknown so it will try again next time
	if not ArkInventory.TooltipIsReady( ArkInventory.Global.Tooltip.Scan ) then
		--ArkInventory.Output2( "1 tooltip not ready: ", i.h )
		return ArkInventory.CategoryGetSystemID( "SYSTEM_UNKNOWN" )
	end
	
	local codex = ArkInventory.GetLocationCodex( i.loc_id )
	
	
	-- already known soulbound items are junk
	if i.loc_id == ArkInventory.Const.Location.Bag or i.loc_id == ArkInventory.Const.Location.Bank then
		if ArkInventory.IsBound( i.sb ) then
			if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["ALREADY_KNOWN"], false, true, true, true ) then
				--ArkInventory.Output( i.name, " is junk?" )
				return ArkInventory.CategoryGetSystemID( "SYSTEM_JUNK" )
			end
		end
	end
	
	-- equipable items
	if info.equiploc ~= "" or info.itemtypeid == ArkInventory.Const.ItemClass.WEAPON or info.itemtypeid == ArkInventory.Const.ItemClass.ARMOR or ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Armor Token" ) then
		if i.sb == ArkInventory.Const.Bind.Account then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_EQUIPMENT_ACCOUNTBOUND" )
		elseif i.sb == ArkInventory.Const.Bind.Pickup then
			if ArkInventory.TooltipCanUse( ArkInventory.Global.Tooltip.Scan ) then
				return ArkInventory.CategoryGetSystemID( "SYSTEM_EQUIPMENT_SOULBOUND" )
			else
				return ArkInventory.CategoryGetSystemID( "SYSTEM_JUNK" )
			end
		else
			return ArkInventory.CategoryGetSystemID( "SYSTEM_EQUIPMENT" )
		end
	end
	
	-- toy (tooltip)
	if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["ITEM_TOY_ONUSE"], false, true, true, true ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_TOY" )
	end
	
	
	-- categorise based off characters primary professions
	
	if codex.player.data.tradeskill.priority > 0 then
		
		local _, _, req = ArkInventory.TooltipFind( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_TOOLTIP_REQUIRES_SKILL"], false, true, true, 0, true )
		
		-- priority profession
		for x = 1, ArkInventory.Const.Skills.numPrimary do
			
			if codex.player.data.info.tradeskill[x] then
				
				local skill = ArkInventory.Const.Skills.Data[codex.player.data.info.tradeskill[x]]
				if skill and codex.player.data.tradeskill.priority == x then
					
					if ArkInventory.PT_ItemInSets( i.h, skill.pt ) then
						return ArkInventory.CategoryGetSystemID( skill.id )
					end
					
					if req and string.find( req, tostring( skill.text ) ) then
						return ArkInventory.CategoryGetSystemID( skill.id )
					end
					
				end
				
			end
			
		end
		
		-- other profession
		for x = 1, ArkInventory.Const.Skills.numPrimary do
			
			if codex.player.data.info.tradeskill[x] then
				
				local skill = ArkInventory.Const.Skills.Data[codex.player.data.info.tradeskill[x]]
				if skill and codex.player.data.tradeskill.priority ~= x then
					
					if ArkInventory.PT_ItemInSets( i.h, skill.pt ) then
						return ArkInventory.CategoryGetSystemID( skill.id )
					end
					
					if req and string.find( req, tostring( skill.text ) ) then
						return ArkInventory.CategoryGetSystemID( skill.id )
					end
					
				end
				
			end
			
		end
		
	end
	
	
	
	-- tradegoods
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Cloth" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_CLOTH" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Leather" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_LEATHER" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Metal and Stone" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_METAL_AND_STONE" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Herbalism" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_HERBS" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Enchanting" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_ENCHANTING" )
	end
	
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		
		if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Inscription" ) then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_INSCRIPTION" )
		end
	
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Parts" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_PARTS" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Elemental" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_ELEMENTAL" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Jewelcrafting" ) then
		-- uncut gems (in classic this will display as gems)
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_JEWELCRAFTING" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Tradegoods.Cooking" ) then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_COOKING" )
	end
	
	if info.itemtypeid == ArkInventory.Const.ItemClass.TRADEGOODS and ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		
		-- retail only, classic has no itemsubtypes
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_CLOTH then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_CLOTH" )
		end
	
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_LEATHER then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_LEATHER" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_METAL_AND_STONE then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_METAL_AND_STONE" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_COOKING then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_COOKING" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_HERBS then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_HERBS" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_ENCHANTING then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_ENCHANTING" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_INSCRIPTION then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_INSCRIPTION" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_JEWELCRAFTING then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_JEWELCRAFTING" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_PARTS then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_PARTS" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.TRADEGOODS_ELEMENTAL then
			return ArkInventory.CategoryGetSystemID( "TRADEGOODS_ELEMENTAL" )
		end
		
	end
	
	
	
	-- class reagents - only check these if its the player (not the account)
	if codex.player.data.info.isplayer then
		
		-- class requirement (via PT)
		if ArkInventory.PT_ItemInSets( i.h, string.format( "ArkInventory.Class.%s", codex.player.data.info.class ) ) then
			return ArkInventory.CategoryGetSystemID( string.format( "CLASS_%s", codex.player.data.info.class ) )
		end
		
		-- class requirement (via tooltip)
		local _, _, req = ArkInventory.TooltipFind( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_TOOLTIP_REQUIRES_CLASS"], false, true, true, 0, true )
		if req and string.find( req, codex.player.data.info.class_local ) then
			return ArkInventory.CategoryGetSystemID( string.format( "CLASS_%s", codex.player.data.info.class ) )
		end
		
	end
	
	
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		
		-- artifact power (tooltip)
		if ArkInventory.TooltipFind( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_TOOLTIP_ARTIFACT_POWER"], false, true, false, 0, true ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ARTIFACT_POWER" )
		end
		
		-- ancient mana (tooltip)
		if ArkInventory.TooltipFind( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_TOOLTIP_ANCIENT_MANA"], false, true, false, 0, true ) then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_CURRENCY" )
		end
		
		-- anima (tooltip)
		if ( ANIMA or false ) and ArkInventory.TooltipFind( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_TOOLTIP_ANIMA"], false, true, false, 0, true ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ANIMA" )
		end
		
	end
	
	
	-- consumable (tooltip)
	if info.itemtypeid == ArkInventory.Const.ItemClass.CONSUMABLE then
		
		-- food
		if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_ITEM_TOOLTIP_FOOD"] ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_FOOD" )
		end
		
		-- drink
		if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_ITEM_TOOLTIP_DRINK"] ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_DRINK" )
		end
		
		-- potions
		if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_ITEM_TOOLTIP_POTION_HEAL"] ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_POTION_HEAL" )
		end
		
		if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_ITEM_TOOLTIP_POTION_MANA"] ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_POTION_MANA" )
		end
		
		-- elixir
		if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_ITEM_TOOLTIP_ELIXIR_BATTLE"] ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ELIXIR_BATTLE" )
		end
		
		if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["WOW_ITEM_TOOLTIP_ELIXIR_GUARDIAN"] ) then
			return ArkInventory.CategoryGetSystemID( "CONSUMABLE_ELIXIR_GUARDIAN" )
		end
		
	end
	
	-- recipe (after professions so only the leftovers are categorised)
	if info.itemtypeid == ArkInventory.Const.ItemClass.RECIPE then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_RECIPE" )
	end
	
	-- reagent
	if info.itemtypeid == ArkInventory.Const.ItemClass.REAGENT then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_REAGENT" )
	end
	
	-- all reputations
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Consumable.Reputation" ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_REPUTATION" )
	end
	
	-- secondary professions
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Skill.Fishing" ) then
		return ArkInventory.CategoryGetSystemID( "SKILL_FISHING" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Skill.Cooking" ) then
		return ArkInventory.CategoryGetSystemID( "SKILL_COOKING" )
	end
	
	if ArkInventory.PT_ItemInSets( i.h, "ArkInventory.Skill.Archaeology" ) then
		return ArkInventory.CategoryGetSystemID( "SKILL_ARCHAEOLOGY" )
	end
	
	-- misc
	if info.itemtypeid == ArkInventory.Const.ItemClass.MISC then
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.MISC_REAGENT then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_REAGENT" )
		end
		
		if info.itemsubtypeid == ArkInventory.Const.ItemClass.MISC_OTHER then
			
			if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ArkInventory.Localise["BATTLEPET"] ) then
				if ArkInventory.IsBound( i.sb ) then
					return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_COMPANION_BOUND" )
				else
					return ArkInventory.CategoryGetSystemID( "SYSTEM_PET_COMPANION_TRADE" )
				end
			end
			
		end

	end
	
	-- quest items (via tooltip)
	if ArkInventory.TooltipContains( ArkInventory.Global.Tooltip.Scan, ITEM_BIND_QUEST, false, true, true ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_QUEST" )
	end
	
	
	
	-- left overs
	
	-- crafting reagents (after professions so only the leftovers are categorised)
	if info.craft then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_CRAFTING_REAGENT" )
	end
	
	if ArkInventory.IsBound( i.sb ) then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_BOUND" )
	end
	
	if info.itemtypeid == ArkInventory.Const.ItemClass.TRADEGOODS then
		return ArkInventory.CategoryGetSystemID( "TRADEGOODS_OTHER" )
	end
	
	if info.itemtypeid == ArkInventory.Const.ItemClass.CONSUMABLE then
		return ArkInventory.CategoryGetSystemID( "CONSUMABLE_OTHER" )
	end
	
	if info.itemtypeid == ArkInventory.Const.ItemClass.MISC then
		return ArkInventory.CategoryGetSystemID( "SYSTEM_MISC" )
	end
	
	
	
	return ArkInventory.CategoryGetSystemID( "SYSTEM_DEFAULT" )
	
end

function ArkInventory.ItemCategoryGetDefaultEmpty( loc_id, bag_id )
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local clump = codex.style.slot.empty.clump
	
	local blizzard_id = ArkInventory.InternalIdToBlizzardBagId( loc_id, bag_id )
	local bt = ArkInventory.BagType( blizzard_id )
	
	--ArkInventory.Output( "loc[", loc_id, "] bag[", bag_id, " / ", blizzard_id, "] type[", bt, "]" )
	
	if bt == ArkInventory.Const.Slot.Type.Bag then
		if clump then
			return ArkInventory.CategoryGetSystemID( "EMPTY" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_BAG" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Enchanting then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_ENCHANTING" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_ENCHANTING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Engineering then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_ENGINEERING" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_ENGINEERING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Jewelcrafting then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_JEWELCRAFTING" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_JEWELCRAFTING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Herbalism then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_HERBALISM" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_HERBALISM" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Inscription then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_INSCRIPTION" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_INSCRIPTION" )
		end
	end

	if bt == ArkInventory.Const.Slot.Type.Leatherworking then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_LEATHERWORKING" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_LEATHERWORKING" )
		end
	end

	if bt == ArkInventory.Const.Slot.Type.Mining then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_MINING" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_MINING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Fishing then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_FISHING" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_FISHING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Cooking then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SKILL_COOKING" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_COOKING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.ReagentBank then
		if clump then
			return ArkInventory.CategoryGetSystemID( "EMPTY" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_REAGENTBANK" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Projectile then
		if clump then
			return ArkInventory.CategoryGetSystemID( "SYSTEM_PROJECTILE" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_QUIVER" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Soulshard then
		if clump then
			return ArkInventory.CategoryGetSystemID( "CLASS_WARLOCK" )
		else
			return ArkInventory.CategoryGetSystemID( "EMPTY_SOULSHARD" )
		end
	end
	
	if clump then
		return ArkInventory.CategoryGetSystemID( "EMPTY" )
	else
		return ArkInventory.CategoryGetSystemID( "EMPTY_UNKNOWN" )
	end
	
	ArkInventory.Output( "code failure, should never get here" )
	
end

function ArkInventory.ItemCategoryGetDefault( i )
	
	-- items cache id
	local cid = ArkInventory.ObjectIDCategory( i )
	
	if ArkInventory.TranslationsLoaded then
		
		if ArkInventory.db.cache.default[cid] then
			
			-- if the value has been cached then use it
			return ArkInventory.db.cache.default[cid]
			
		else
			
			local cat
			
			if i.h then
				
				cat = ArkInventory.ItemCategoryGetDefaultActual( i )
				
				if cat ~= ArkInventory.CategoryGetSystemID( "SYSTEM_UNKNOWN" ) then
					ArkInventory.db.cache.default[cid] = cat
				end
				
			else
				
				cat = ArkInventory.ItemCategoryGetDefaultEmpty( i.loc_id, i.bag_id )
				
				if cat ~= ArkInventory.CategoryGetSystemID( "EMPTY_UNKNOWN" ) then
					ArkInventory.db.cache.default[cid] = cat
				end
				
			end
			
			return cat
			
		end
		
	else
		
		return ArkInventory.CategoryGetSystemID( "SYSTEM_UNKNOWN" )
		
	end
	
end


function ArkInventory.ItemCategoryGetRule( i )
	
	-- local debuginfo = { ["m"]=gcinfo( ), ["t"]=GetTime( ) }
	
	if not ArkInventory.Global.Rules.Enabled then
		return false
	end
	
	return ArkInventoryRules.AppliesToItem( i )
	
	-- ArkInventory.Output( "ItemCategoryGetRule( ) end", debuginfo )
	
end

function ArkInventory.ItemCategoryGetPrimary( i )
	
	if i.h then -- only items can have a category, empty slots can only be used by rules
		
		-- items category cache id
		local cid, id, codex = ArkInventory.ObjectIDCategory( i )
		
		local cat_id = codex.catset.category.assign[id]
		if cat_id then
			-- manually assigned item to a category?
			local cat_type, cat_code = ArkInventory.CategoryCodeSplit( cat_id )
			if cat_type == 1 then
				return cat_id
			elseif codex.catset.category.active[cat_type][cat_code] then -- category is active in this categoryset?
				if ArkInventory.db.option.category[cat_type].data[cat_code].used == "Y" then -- category is enabled?
					return cat_id
				end
			end
		end
		
	end
	
	if ArkInventory.Global.Rules.Enabled then
		
		-- items rule cache id
		local cid = ArkInventory.ObjectIDRule( i )
		
		-- if the value has already been cached then use it
		if ArkInventory.db.cache.rule[cid] == nil then
			-- check for any rule that applies to the item, cache the result, use false for no match (default), true for match, nil to try again later
			ArkInventory.db.cache.rule[cid] = ArkInventory.ItemCategoryGetRule( i )
			--ArkInventory.Output( cid, " = ", ArkInventory.db.cache.rule[cid] )
		end
		
		return ArkInventory.db.cache.rule[cid]
		
	end
	
	return false
	
end

function ArkInventory.ItemCategorySet( i, cat_id )
	
	-- set cat_id to nil to reset back to default
	
	local cid, id, codex = ArkInventory.ObjectIDCategory( i )
	--ArkInventory.Output( cid, " / ", id, " / ", cat_id, " / ", codex.player.data.info.name )
	codex.catset.category.assign[id] = cat_id
	
end

function ArkInventory.ItemCategoryGet( i )
	
	local unknown = ArkInventory.CategoryGetSystemID( "SYSTEM_UNKNOWN" )
	
	local default = ArkInventory.CategoryGetSystemID( "SYSTEM_DEFAULT" )
	default = ( i and ArkInventory.ItemCategoryGetDefault( i ) ) or default
	
	local cat = ArkInventory.ItemCategoryGetPrimary( i )
	
	return cat or default or unknown, cat, default or unknown
	
end

function ArkInventory.ReverseName( n )
	
	if n and type( n ) == "string" then
		
		local s = { }
		
		for w in string.gmatch( n, "%S+" ) do
			table.insert( s, 1, w )
		end
		
		return table.concat( s, " " )
		
	end
	
end

function ArkInventory.ItemCacheClear( h )
	
	if not h then
		
		--ArkInventory.Output( "clearing cache - all" )
		
		ArkInventory.Table.Clean( ArkInventory.db.cache.rule )
		ArkInventory.Table.Clean( ArkInventory.db.cache.default )
		
	else
		
		local cid
		local i = { h = h }
		
		--ArkInventory.Output( "clearing cache - ", h )
		
		for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
			i.loc_id = loc_id
			for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
				i.bag_id = bag_id
				for k, v in ipairs( ArkInventory.Const.Bind ) do
					
					i.sb = v
					
					cid = ArkInventory.ObjectIDRule( i )
					ArkInventory.db.cache.rule[cid] = nil
					
					cid = ArkInventory.ObjectIDCategory( i )
					ArkInventory.db.cache.default[cid] = nil
					
				end
			end
		end
		
	end
	
	ArkInventory.CategoryGenerate( )
	--ArkInventory.OutputWarning( "ItemCacheClear - .Recalculate" )
	ArkInventory.Frame_Main_DrawStatus( nil, ArkInventory.Const.Window.Draw.Recalculate )
	
end

function ArkInventory.Frame_Main_DrawStatus( loc_id, level )
	
	local level = level or ArkInventory.Const.Window.Draw.None
	
	if ArkInventory.Global.Location[loc_id] and ArkInventory.Global.Location[loc_id].canView then
		if level < ArkInventory.Global.Location[loc_id].drawState then
			ArkInventory.Global.Location[loc_id].drawState = level
		end
	end
	
end

function ArkInventory.Frame_Main_Generate( location, drawstatus )
	
--	if drawstatus and drawstatus < 4 then
--		ArkInventory.OutputWarning( "Frame_Main_Generate( ", location, ", ", drawstatus, " )" )
--	end
	
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView and ( not location or loc_id == location ) then
			ArkInventory.Frame_Main_DrawStatus( loc_id, drawstatus )
			ArkInventory.Frame_Main_DrawLocation( loc_id )
		end
	end
	
end

function ArkInventory.Frame_Main_DrawLocation( loc_id )
	local frame = ArkInventory.Frame_Main_Get( loc_id )
	ArkInventory.Frame_Main_Draw( frame )
end

function ArkInventory.PutItemInBank( )
	
	-- item dropped on bank "bag"
	
	if CursorHasItem( ) then
		
		for x = 1, GetContainerNumSlots( BANK_CONTAINER ) do
			h = GetContainerItemLink( BANK_CONTAINER, x )
			if not h then
				if not PickupContainerItem( BANK_CONTAINER, x ) then
					ClearCursor( )
				end
				return
			end
		end
		
		UIErrorsFrame:AddMessage( ERR_BAG_FULL, 1.0, 0.1, 0.1, 1.0 )
		ClearCursor( )
		
	end
	
end

function ArkInventory.PutItemInReagentBank( )
	
	-- item dropped on reagentbank "bag"
	
	if CursorHasItem( ) then
		
		for x = 1, GetContainerNumSlots( REAGENTBANK_CONTAINER ) do
			h = GetContainerItemLink( REAGENTBANK_CONTAINER, x )
			if not h then
				if not PickupContainerItem( REAGENTBANK_CONTAINER, x ) then
					ClearCursor( )
				end
				return
			end
		end
		
		UIErrorsFrame:AddMessage( ERR_BAG_FULL, 1.0, 0.1, 0.1, 1.0 )
		ClearCursor( )
		
	end
	
end

function ArkInventory.PutItemInGuildBank( tab_id )
	
	local ctab = GetCurrentGuildBankTab( )
	local tab_id = tab_id or ctab
	
	if CursorHasItem( ) then
		
		local loc_id = ArkInventory.Const.Location.Vault
		local _, _, _, canDeposit = GetGuildBankTabInfo( tab_id )
		
		if canDeposit then
			
			--ArkInventory.Output( "PutItemInGuildBank( ", tab_id, " )" )
			
			if tab_id ~= ctab then
				SetCurrentGuildBankTab( tab_id )
				ArkInventory.QueryVault( tab_id )
			end
			
			for x = 1, MAX_GUILDBANK_SLOTS_PER_TAB do
				h = GetGuildBankItemLink( tab_id, x )
				if not h then
					if not PickupGuildBankItem( tab_id, x ) then --AutoStoreGuildBankItem
						ClearCursor( )
					end
					return
				end
			end
			
			UIErrorsFrame:AddMessage( ERR_BAG_FULL, 1.0, 0.1, 0.1, 1.0 )
			ClearCursor( )
			
		end
		
	end
	
end

function ArkInventory.SetItemButtonStock( frame, count, status )
	
	-- used to show the number of empty slots on bags in the changer window
	
	if not frame then
		return
	end
	
	local obj = _G[string.format( "%s%s", frame:GetName( ), "Stock" )]
	if not obj then
		return
	end
	
	local count = count or 0
	
	local loc_id = frame.ARK_Data.loc_id
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	if codex.style.changer.freespace.show then
		
		if status then
			
			if status == ArkInventory.Const.Bag.Status.Purchase then
				obj:SetText( ArkInventory.Localise["STATUS_PURCHASE"] )
			elseif status == ArkInventory.Const.Bag.Status.Unknown then
				obj:SetText( ArkInventory.Localise["STATUS_NO_DATA"] )
			elseif status == ArkInventory.Const.Bag.Status.NoAccess then
				obj:SetText( ArkInventory.Localise["VAULT_TAB_ACCESS_NONE"] )
			else
				obj:SetText( "" )
			end
			
		else
			
			if count > 0 then
				obj:SetText( count )
				obj.numInStock = count
			else
				obj:SetText( ArkInventory.Localise["FULL"] )
				obj.numInStock = 0
			end
			
		end
		
		local colour = codex.style.changer.freespace.colour
		obj:SetTextColor( colour.r, colour.g, colour.b )
		
		obj:Show( )
		
	else
		
		obj:SetText( "" )
		obj.numInStock = 0
		obj:Hide( )
		
	end
	
end

function ArkInventory.ValidFrame( frame, visible, db )
	
	if frame and frame.ARK_Data and frame.ARK_Data.loc_id then
		return true
	end
	
--[[
	if frame and frame.ARK_Data and frame.ARK_Data.loc_id then
		
		local r1 = true
		if db then
			local i = ArkInventory.Frame_Item_GetDB( frame )
			if i == nil then
				r1 = false
			end
		end
		
		local r2 = true
		if visible and not frame:IsVisible( ) then
			r2 = false
		end

		return r1 and r2
		
	end
	
	return false
]]--
	
end

function ArkInventory.Frame_Main_Get( loc_id )
	
	local framename = string.format( "%s%s", ArkInventory.Const.Frame.Main.Name, loc_id )
	local frame = _G[framename]
	assert( frame, string.format( "xml element '%s' could not be found",  framename ) )
	
	return frame
	
end
	
function ArkInventory.Frame_Main_Scale( loc_id )
	
	local frame = ArkInventory.Frame_Main_Get( loc_id )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	local old_scale = frame:GetScale( )
	local new_scale = codex.style.window.scale or 1
	
	if old_scale ~= new_scale then
		frame:SetScale( new_scale )
	end
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Init then
		
		old_scale = nil
		
		if ArkInventory.db.option.auto.reposition then
			ArkInventory.Frame_Main_Reposition( loc_id )
		end
		
	end
	
	ArkInventory.Frame_Main_Anchor_Set( loc_id, old_scale )
	
end
	
function ArkInventory.Frame_Main_Scale_All( )
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView then
			ArkInventory.Frame_Main_Scale( loc_id )
		end
	end
end

function ArkInventory.Frame_Main_Reposition( loc_id )
	
	local frame = ArkInventory.Frame_Main_Get( loc_id )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	if not frame.ARK_Data.loaded then
		--ArkInventory.Output( "cant reposition ", frame:GetName( ), " until its been built, the frame has no size" )
		--return
	end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local f_scale = frame:GetScale( )
	local a, x
	
	a = codex.profile.location[loc_id].anchor.t
	x = UIParent:GetTop( ) / f_scale
	if not a or a > x then
		--ArkInventory.Output( loc_id, " top = ", a, " / ", x )
		codex.profile.location[loc_id].anchor.t = x
		codex.profile.location[loc_id].anchor.b = x - frame:GetHeight( )
	end
	
	a = codex.profile.location[loc_id].anchor.b
	x = UIParent:GetBottom( ) / f_scale
	if not a or a < x then
		--ArkInventory.Output( loc_id, " bottom = ", a, " / ", x )
		codex.profile.location[loc_id].anchor.b = x
		codex.profile.location[loc_id].anchor.t = x + frame:GetHeight( )
	end
	
	a = codex.profile.location[loc_id].anchor.r
	x = UIParent:GetRight( ) / f_scale
	if not a or a > x then
		--ArkInventory.Output( loc_id, " right = ", a, " / ", x )
		codex.profile.location[loc_id].anchor.r = x
		codex.profile.location[loc_id].anchor.l = x - frame:GetWidth( )
	end
	
	a = codex.profile.location[loc_id].anchor.l
	x = UIParent:GetLeft( ) / f_scale
	if not a or a < x then
		--ArkInventory.Output( loc_id, " left = ", a, " / ", x )
		codex.profile.location[loc_id].anchor.l = x
		codex.profile.location[loc_id].anchor.r = x + frame:GetWidth( )
	end
	
	ArkInventory.Frame_Main_Anchor_Set( loc_id )
	
end

function ArkInventory.Frame_Main_Reposition_All( )
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView then
			ArkInventory.Frame_Main_Reposition( loc_id )
		end
	end
end


function ArkInventory.Frame_Main_Offline( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local me = ArkInventory.GetPlayerCodex( )
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	--ArkInventory.Output( "loc_playerid=[", ArkInventory.Global.Location[loc_id].player_id, "] player_id=[", codex.player.data.info.player_id, "] guild_id=[", codex.player.data.info.guild_id, "]" )
	
	
	if ArkInventory.Global.Location[loc_id].isAccount then
		
		if codex.player.data.info.account_id ~= me.player.data.info.account_id then
			ArkInventory.Global.Location[loc_id].isOffline = true
		else
			ArkInventory.Global.Location[loc_id].isOffline = false
		end
		
	elseif codex.player.current == me.player.data.info.player_id or codex.player.current == me.player.data.info.guild_id then
		
		ArkInventory.Global.Location[loc_id].isOffline = false
		
		if loc_id == ArkInventory.Const.Location.Bank and ArkInventory.Global.Mode.Bank == false then
			ArkInventory.Global.Location[loc_id].isOffline = true
		end
		
		if loc_id == ArkInventory.Const.Location.Vault and ArkInventory.Global.Mode.Vault == false then
			ArkInventory.Global.Location[loc_id].isOffline = true
		end
		
		if loc_id == ArkInventory.Const.Location.Mailbox and ArkInventory.Global.Mode.Mailbox == false then
			ArkInventory.Global.Location[loc_id].isOffline = true
		end
		
		if loc_id == ArkInventory.Const.Location.Void and ArkInventory.Global.Mode.Void == false then
			ArkInventory.Global.Location[loc_id].isOffline = true
		end
		
	else
		
		ArkInventory.Global.Location[loc_id].isOffline = true
		
	end
	
end

function ArkInventory.Frame_Main_Anchor_Save( frame )
	
	if not ArkInventory.ValidFrame( frame, true ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	codex.profile.location[loc_id].anchor.t = frame:GetTop( )
	codex.profile.location[loc_id].anchor.b = frame:GetBottom( )
	codex.profile.location[loc_id].anchor.l = frame:GetLeft( )
	codex.profile.location[loc_id].anchor.r = frame:GetRight( )
	
end

function ArkInventory.Frame_Main_Anchor_Set( loc_id, old_scale )
	
	local frame = ArkInventory.Frame_Main_Get( loc_id )
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local anchor = codex.profile.location[loc_id].anchor.point
	
	local f_scale = frame:GetScale( )
	local p_scale = UIParent:GetScale( )
	
	local t = codex.profile.location[loc_id].anchor.t
	if not t then
		t = UIParent:GetTop( ) / f_scale
	elseif old_scale then
		t = t / f_scale * old_scale
	end
	
	local b = codex.profile.location[loc_id].anchor.b
	if not b then
		b = UIParent:GetBottom( ) / f_scale
	elseif old_scale then
		b = b / f_scale * old_scale
	end
	
	local l = codex.profile.location[loc_id].anchor.l
	if not l then
		l = UIParent:GetLeft( ) / f_scale
	elseif old_scale then
		l = l / f_scale * old_scale
	end
	
	local r = codex.profile.location[loc_id].anchor.r
	if not r then
		r = UIParent:GetRight( ) / f_scale
	elseif old_scale then
		r = r / f_scale * old_scale
	end
	
	local h = l + ( ( r - l ) / 2 )
	local v = b + ( ( t - b ) / 2 )
	
	frame:ClearAllPoints( )
	if anchor == ArkInventory.Const.Anchor.BottomRight then
		frame:SetPoint( "BOTTOMRIGHT", nil, "BOTTOMLEFT", r, b )
	elseif anchor == ArkInventory.Const.Anchor.BottomLeft then
		frame:SetPoint( "BOTTOMLEFT", nil, "BOTTOMLEFT", l, b )
	elseif anchor == ArkInventory.Const.Anchor.TopLeft then
		frame:SetPoint( "TOPLEFT", nil, "BOTTOMLEFT", l, t )
	elseif anchor == ArkInventory.Const.Anchor.Top then
		frame:SetPoint( "TOP", nil, "BOTTOMLEFT", h, t )
	elseif anchor == ArkInventory.Const.Anchor.Bottom then
		frame:SetPoint( "BOTTOM", nil, "BOTTOMLEFT", h, b )
	elseif anchor == ArkInventory.Const.Anchor.Left then
		frame:SetPoint( "LEFT", nil, "BOTTOMLEFT", l, v )
	elseif anchor == ArkInventory.Const.Anchor.Right then
		frame:SetPoint( "RIGHT", nil, "BOTTOMLEFT", r, v )
	else
		frame:SetPoint( "TOPRIGHT", nil, "BOTTOMLEFT", r, t )
	end
	
	if codex.profile.location[loc_id].anchor.locked then
		frame:RegisterForDrag( )
	else
		frame:RegisterForDrag( "LeftButton" )
	end
	
	ArkInventory.Frame_Main_Anchor_Save( frame )
	
end

function ArkInventory.Frame_Main_Paint( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	for _, z in pairs( { frame:GetChildren( ) } ) do
		
		local framename = z:GetName( )
		if framename then -- only process objects with a name (other addons can add frames without names, we don't want to deal with them)
			
			-- background
			local obj = _G[string.format( "%s%s", framename, "Background" )]
			if obj then
				local background = codex.style.window.background.style or ArkInventory.Const.Texture.BackgroundDefault
				if background == ArkInventory.Const.Texture.BackgroundDefault then
					local colour = codex.style.window.background.colour
					ArkInventory.SetTexture( obj, true, colour.r, colour.g, colour.b, colour.a )
				else
					local file = ArkInventory.Lib.SharedMedia:Fetch( ArkInventory.Lib.SharedMedia.MediaType.BACKGROUND, background )
					ArkInventory.SetTexture( obj, file )
				end
			end
			
			-- border
			local obj = z.ArkBorder
			if obj then
				
				if codex.style.window.border.style == ArkInventory.Const.Texture.BorderNone then
					
					obj:Hide( )
					
				else
					
					local border = codex.style.window.border.style or ArkInventory.Const.Texture.BorderDefault
					local file = ArkInventory.Lib.SharedMedia:Fetch( ArkInventory.Lib.SharedMedia.MediaType.BORDER, border )
					local size = codex.style.window.border.size or ArkInventory.Const.Texture.Border[ArkInventory.Const.Texture.BorderDefault].size
					local offset = codex.style.window.border.offset or ArkInventory.Const.Texture.Border[ArkInventory.Const.Texture.BorderDefault].offsetdefault.window
					local scale = codex.style.window.border.scale or 1
					local colour = codex.style.window.border.colour
					ArkInventory.Frame_Border_Paint( obj, file, size, offset, scale, colour.r, colour.g, colour.b, 1 )
					
					obj:Show( )
					
				end
				
			end
			
		end
		
	end
	
end

function ArkInventory.Frame_Main_Paint_All( )
	
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView then
			local frame = ArkInventory.Frame_Main_Get( loc_id )
			ArkInventory.Frame_Main_Paint( frame )
		end
	end
	
end

function ArkInventory.Frame_Border_Paint( obj, file, size, offset, scale, r, g, b, a )
	
	if not obj then return end
	
	local edgeSize = ( size or 1 ) * ( scale or 1 )
	local info = obj:GetBackdrop( )
	if not info or info.edgeFile ~= file or info.edgeSize ~= edgeSize then
		obj:SetBackdrop( { edgeFile = file, edgeSize = edgeSize } )
	end
	obj:SetBackdropBorderColor( r or 0, g or 0, b or 0, a or 1 )
	
	local parent = obj:GetParent( )
	local offset = ( offset or 0 ) * ( scale or 1 )
	
	obj:ClearAllPoints( )
	obj:SetPoint( "TOPLEFT", parent, 0 - offset, offset )
	obj:SetPoint( "BOTTOMRIGHT", parent, offset, 0 - offset )
	
end

function ArkInventory.Frame_Main_Resize( frame )
	
	--ArkInventory.Output( "Frame_Main_Resize" )
	
	if not ArkInventory.ValidFrame( frame, true ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	local width = codex.profile.location[loc_id].container.width
	local height = codex.profile.location[loc_id].container.height
	
	local f1 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Title.Name )]
	if not codex.style.title.hide then
		height = height + f1:GetHeight( ) * ( codex.style.title.scale or 1 )
	end
	
	local f2 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Search.Name )]
	if not codex.style.search.hide then
		height = height + f2:GetHeight( ) * ( codex.style.search.scale or 1 )
	end
	
	local f5 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Status.Name )]
	if not codex.style.status.hide then
		height = height + f5:GetHeight( ) * ( codex.style.status.scale or 1 )
	end
	
	local f4 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Changer.Name )]
	if not codex.style.changer.hide then
		height = height + f4:GetHeight( ) * ( codex.style.changer.scale or 1 )
	end
	
--	local f3 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Scroll.Name )]
	
	
	-- set the size of the window
	frame:SetWidth( width )
	frame:SetHeight( height )
	
	--ArkInventory.Output( string.format( "set window %i size %i x %i", loc_id, width, height ) )
	
	ArkInventory.Frame_Main_Scale( loc_id )
	
end

function ArkInventory.Frame_Main_Draw( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local thread_id = string.format( ArkInventory.Global.Thread.Format.Window, loc_id )
	
	if not frame:IsVisible( ) then
		ArkInventory.OutputThread( thread_id, " aborting, not visible" )
		return
	end
	
	if not ArkInventory.Global.Thread.Use then
		local tz = debugprofilestop( )
		ArkInventory.OutputThread( thread_id, " starting" )
		ArkInventory.Frame_Main_Draw_Threaded( frame )
		tz = debugprofilestop( ) - tz
		ArkInventory.OutputThread( string.format( "%s dead after %0.0fms", thread_id, tz ) )
		return
	end
	
	if ArkInventory.ThreadRunning( thread_id ) then
		
		-- already in progress, find highest drawstate and start again
		
		--ArkInventory.Output( "draw", " [", loc_id, "] existing thread, old=", ArkInventory.Global.Thread.WindowState[loc_id], ", new=", ArkInventory.Global.Location[loc_id].drawState )
		
		if ArkInventory.Global.Thread.WindowState[loc_id] >= ArkInventory.Global.Location[loc_id].drawState then
			ArkInventory.Global.Thread.WindowState[loc_id] = ArkInventory.Global.Location[loc_id].drawState
		end
		
	else
		
		-- nothing in progress so just kick it off
		
		--ArkInventory.Output( "draw [", loc_id, "] new thread, state=", ArkInventory.Global.Location[loc_id].drawState )
		
		ArkInventory.Global.Thread.WindowState[loc_id] = ArkInventory.Global.Location[loc_id].drawState
		
	end
	
	-- load the co-routine, overwite existing, the garbage collector will sort it out
	local tf = function ( )
		ArkInventory.Frame_Main_Draw_Threaded( frame )
	end
	
	ArkInventory.ThreadStart( thread_id, tf )
	
	--ArkInventory.Output( "draw location ", loc_id, " complete" )
	
end

function ArkInventory.Frame_Main_Draw_Threaded( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	--ArkInventory.Output( "Frame_Main_Draw_Threaded( ", frame:GetName( ), " ) drawstate[", ArkInventory.Global.Location[loc_id].drawState, "]" ) --, framelevel[", frame:GetFrameLevel( ), "]" )
	
	if not ArkInventory.Global.Location[loc_id].canView then
		-- not a controllable window (for scanning only)
		-- shouldnt ever get here, but just in case
		frame:Hide( )
		return
	end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	--ArkInventory.Output( "draw = ", loc_id, " / ", codex.player.data.info.player_id )
	
	ArkInventory.ThreadYield_Window( loc_id )
	
	-- is the window online or offline?
	ArkInventory.Frame_Main_Offline( frame )
	
	
	if loc_id == ArkInventory.Const.Location.Vault then
		
		-- force vault back to item display when offline
		if ArkInventory.Global.Location[loc_id].isOffline then
			ArkInventory.Global.Location[loc_id].view_mode = "bank"
		end
		
		obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Container.Name )]
		obj:Hide( )
		
		obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Info.Name )]
		obj:Hide( )
		
		obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Log.Name )]
		obj:Hide( )
		
		if ArkInventory.Global.Location[loc_id].view_mode == "log" or ArkInventory.Global.Location[loc_id].view_mode == "moneylog" then
			obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Log.Name )]
			obj:Show( )
		elseif ArkInventory.Global.Location[loc_id].view_mode == "tabinfo" then
			obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Info.Name )]
			obj:Show( )
		elseif ArkInventory.Global.Location[loc_id].view_mode == "bank" then
			obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Container.Name )]
			obj:Show( )
		end
		
	end
	
	
	-- edit mode
	if ArkInventory.Global.Mode.Edit then
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	end
	
	
	-- do we still need to draw the window?
	if ArkInventory.Global.Location[loc_id].drawState < ArkInventory.Const.Window.Draw.None then
		obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Container.Name )]
		ArkInventory.OutputThread( loc_id, " Frame_Container_Draw" )
		ArkInventory.Frame_Container_Draw( obj )
		ArkInventory.ThreadYield_Window( loc_id )
	end
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Restart then
		
		ArkInventory.OutputThread( loc_id, " MediaFrameDefaultFontSet" )
		ArkInventory.MediaFrameDefaultFontSet( frame )
		ArkInventory.ThreadYield_Window( loc_id )
		
		ArkInventory.OutputThread( loc_id, " Frame_Main_Paint" )
		ArkInventory.Frame_Main_Paint( frame )
		ArkInventory.ThreadYield_Window( loc_id )
		
	end
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Refresh then
		
		-- title frame
		
		-- hide the title window if it's not needed
		local subframe1 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Title.Name )]
		local obj = subframe1
		if codex.style.title.hide then
			
			-- show mini action buttons
			for k, v in pairs( ArkInventory.Const.Actions ) do
				local obj = _G[string.format( "%s%s%s%s", frame:GetName( ), ArkInventory.Const.Frame.Scroll.Name, "ActionButton", k )]
				if obj then
					obj:Show( )
				end
			end
	
			obj:Hide( )
			obj:SetHeight( 1 )
			
		else
			
			-- hide mini action buttons
			for k, v in pairs( ArkInventory.Const.Actions ) do
				local obj = _G[string.format( "%s%s%s%s", frame:GetName( ), ArkInventory.Const.Frame.Scroll.Name, "ActionButton", k )]
				if obj then
					obj:Hide( )
				end
			end
			
			local height = codex.style.title.font.height
			ArkInventory.MediaFrameFontSet( obj, nil, height )
			
			-- window title text
			local who = _G[string.format( "%s%s%s", frame:GetName( ), ArkInventory.Const.Frame.Title.Name, "Who" )]
			local t = ""
	
			if codex.style.title.size == ArkInventory.Const.Window.Title.SizeThin then
				
				-- thin size
				t = ArkInventory.DisplayName5( codex.player.data.info )
				
				-- one line of action buttons
--				z = _G[string.format( "%s%s", obj:GetName( ), "ActionButton21" )]
--				z:ClearAllPoints( )
--				z:SetPoint( "RIGHT", _G[string.format( "%s%s", obj:GetName( ), "ActionButton14" )], "LEFT", -3, 0 )
				
				who:SetMaxLines( 1 )
				
			else
				
				-- normal size
				t = ArkInventory.DisplayName1( codex.player.data.info )
				height = height * 2
				
				-- two lines of action buttons
--				z = _G[string.format( "%s%s", obj:GetName( ), "ActionButton21" )]
--				z:ClearAllPoints( )
--				z:SetPoint( "TOP", _G[string.format( "%s%s", obj:GetName( ), "ActionButton11" )], "BOTTOM", 0, -2 )
				
				who:SetMaxLines( 2 )
				
			end
			
			-- online/offline colouring
			if ArkInventory.Global.Location[loc_id].isOffline then
				local colour = codex.style.title.colour.offline
				who:SetTextColor( colour.r, colour.g, colour.b )
				t = string.format( "%s [%s]", t, PLAYER_OFFLINE )
			else
				local colour = codex.style.title.colour.online
				who:SetTextColor( colour.r, colour.g, colour.b )
			end
			
			if height < ArkInventory.Const.Frame.Title.MinHeight then
				height = ArkInventory.Const.Frame.Title.MinHeight
			end
			
			-- set icon to match height
			local z = _G[string.format( "%s%s", obj:GetName( ), "ActionButton0" )]
			z:SetWidth( height )
			z:SetHeight( height )
			
			who:SetHeight( height )
			who:SetText( t )
			
			height = height + ArkInventory.Const.Frame.Title.Height
			obj:SetHeight( height )
			obj:SetScale( codex.style.title.scale or 1 )
			
			obj:Show( )
			
			ArkInventory.ThreadYield_Window( loc_id )
			
		end
		
		ArkInventory.ThreadYield_Window( loc_id )
		
		-- hide the search window if it's not needed
		local subframe2 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Search.Name )]
		local obj = subframe2
		if codex.style.search.hide then
			
			obj:Hide( )
			obj:SetHeight( 1 )
			
			obj:SetPoint( "TOPLEFT", subframe1, "BOTTOMLEFT", 0, 1 )
			
			obj.filterText:SetText( "" )
			
		else
			
			local height = codex.style.search.font.height
			ArkInventory.MediaFrameFontSet( obj, nil, height )
			
			local obj2 = _G[string.format( "%s%s", obj:GetName( ), "FilterLabel" )]
			local colour = codex.style.search.label.colour
			obj2:SetTextColor( colour.r, colour.g, colour.b )
			local width = obj2:GetStringWidth( )
			
			local colour = codex.style.search.text.colour
			obj.filterText:SetTextColor( colour.r, colour.g, colour.b )
			obj.filterText:SetPoint( "LEFT", obj, "LEFT", width + 20, 0 )
			
			if height < ArkInventory.Const.Frame.Search.MinHeight then
				height = ArkInventory.Const.Frame.Search.MinHeight
			end
			
			obj:SetHeight( height + ArkInventory.Const.Frame.Search.Height )
			obj:SetScale( codex.style.search.scale or 1 )
			obj:Show( )
			
			obj:SetPoint( "TOPLEFT", subframe1, "BOTTOMLEFT" )
			
		end
		
		ArkInventory.ThreadYield_Window( loc_id )
		
		-- hide the changer frame if it can't be used
		local subframe5 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Status.Name )]
		local subframe4 = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Changer.Name )]
		local obj = subframe4
		
		if codex.style.changer.hide or not ArkInventory.Global.Location[loc_id].hasChanger then
			
			obj:SetHeight( 1 )
			obj:Hide( )
			obj:SetPoint( "BOTTOMLEFT", subframe5, "TOPLEFT", 0, -1 )
			
		else
			
			obj:SetHeight( ArkInventory.Const.Frame.Changer.Height )
			obj:SetScale( codex.style.changer.scale or 1 )
			obj:Show( )
			obj:SetPoint( "BOTTOMLEFT", subframe5, "TOPLEFT" )
			
			ArkInventory.Frame_Changer_Update( loc_id )
			
			ArkInventory.ThreadYield_Window( loc_id )
			
		end
		
		ArkInventory.Frame_Status_Update( frame )
		
		ArkInventory.Frame_Main_Resize( frame )
		
		ArkInventory.ThreadYield_Window( loc_id )
		
	end
	
	ArkInventory.Global.Location[loc_id].drawState = ArkInventory.Const.Window.Draw.None
	
--	if ArkInventory.Global.Location[loc_id].show then
--		ArkInventory.Global.Location[loc_id].show = nil
--		frame:Show( )
--	end
	
end

function ArkInventory.FrameLevelReset( frame, level )
	
	if type( frame ) == "string" then
		frame = _G[frame]
	end
	
	if frame == nil then
		return
	end
	
	if frame:GetFrameLevel( ) ~= level then
		frame:SetFrameLevel( level )
	end
	
	for _, z in pairs( { frame:GetChildren( ) } ) do
		ArkInventory.FrameLevelReset( z, level + 1 )
	end

end

local function FrameLevelGetMaxRecurse( frame, level )
	
	if frame:GetFrameLevel( ) > level then
		level = frame:GetFrameLevel( )
	end
	
	for _, z in pairs( { frame:GetChildren( ) } ) do
		level = FrameLevelGetMaxRecurse( z, level )
	end
	
	return level
	
end

function ArkInventory.FrameLevelGetMax( frame )
	
	local level = frame:GetFrameLevel( )
	
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView then
			
			local f2 = ArkInventory.Frame_Main_Get( loc_id )
			
			if f2 and f2:IsVisible( ) and frame ~= f2 then
				level = FrameLevelGetMaxRecurse( f2, level )
			end
			
		end
	end
	
	return level
	
end

function ArkInventory.Frame_Main_Level( frame )
	
	local level = ArkInventory.FrameLevelGetMax( frame )
	--ArkInventory.Output( frame:GetName( ), " before: ", frame:GetFrameLevel( ), ":", level )
	
	if frame:GetFrameLevel( ) < level then
		ArkInventory.FrameLevelReset( frame, level + 10 )
		
		--level = ArkInventory.FrameLevelGetMax( frame )
		--ArkInventory.Output( frame:GetName( ), " after: ", frame:GetFrameLevel( ), ":", level )
	end
	
end

function ArkInventory.Frame_Main_Toggle( loc_id )
	
	assert( loc_id, "invalid location: nil" )
	
	if not ArkInventory.ClientCheck( ArkInventory.Global.Location[loc_id].proj ) then
		ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_LOCATION_NOT_SUPPORTED"], ArkInventory.Global.Location[loc_id].Name ) )
		return
	end
	
	local frame = ArkInventory.Frame_Main_Get( loc_id )
	
	if frame then
		if frame:IsVisible( ) then
			ArkInventory.Frame_Main_Hide( loc_id )
		else
			ArkInventory.Frame_Main_Show( loc_id )
		end
	end
	
end


function ArkInventory.Frame_Main_Show( loc_id, player_id )
	
	assert( loc_id, "invalid location: nil" )
	
	if not ArkInventory.ClientCheck( ArkInventory.Global.Location[loc_id].proj ) then
		ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_LOCATION_NOT_SUPPORTED"], ArkInventory.Global.Location[loc_id].Name ) )
		return
	end
	
	local frame = ArkInventory.Frame_Main_Get( loc_id )
	
	if loc_id == ArkInventory.Const.Location.Bank or loc_id == ArkInventory.Const.Location.Vault then
		if frame:IsVisible( ) then
			-- covers shifting from offline to online
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
		end
	end
	
	--ArkInventory.Output( "show: ", loc_id, ", ", player_id )
	local codex = ArkInventory.SetLocationCodex( loc_id, player_id )
	--ArkInventory.Output( "player=", codex.player.data.info.player_id )
	--ArkInventory.Output( "layout=", codex.layout_id, ", style=", codex.style_id, ", catset=", codex.catset_id )
	
	if codex.style.sort.when == ArkInventory.Const.SortWhen.Open or codex.style.sort.when == ArkInventory.Const.SortWhen.Instant then
		--ArkInventory.OutputWarning( "Frame_Main_Show - .Recalculate" )
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	end
	
	frame:Show( )
	
--	ArkInventory.Global.Location[loc_id].show = true
	
	ArkInventory.Frame_Main_Generate( loc_id )
	
end

function ArkInventory.Frame_Main_OnShow( frame )
	
--	ArkInventory.Output( "Frame_Main_OnShow" )
	
	ArkInventory.Lib.Dewdrop:Close( )
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Init then
		ArkInventory.Frame_Main_Resize( frame )
	end
	
	-- frame strata
	if frame:GetFrameStrata( ) ~= codex.style.window.strata then
		frame:SetFrameStrata( codex.style.window.strata )
	end
	
	ArkInventory.Frame_Main_Level( frame )
	
	if ArkInventory.db.option.auto.reposition then
		ArkInventory.Frame_Main_Reposition( loc_id )
	end

	if loc_id == ArkInventory.Const.Location.Bag then
		PlaySound( SOUNDKIT.IG_BACKPACK_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Keyring then
		PlaySound( SOUNDKIT.KEY_RING_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Bank then
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Vault then
		PlaySound( SOUNDKIT.GUILD_VAULT_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Wearing then
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Auction then
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Void then
		PlaySound( SOUNDKIT.UI_ETHEREAL_WINDOW_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Currency then
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_OPEN )
	elseif loc_id == ArkInventory.Const.Location.Reputation then
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_OPEN )
	else
		PlaySound( SOUNDKIT.IG_SPELLBOOK_OPEN )
	end
	
end

function ArkInventory.Frame_Main_Search( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local filter = _G[string.format( "%s%s", frame:GetName( ), "SearchFilter" )]
	if not filter then
		ArkInventory.OutputError( "code failure: searchfilter object not found" )
		return
	end
	
	filter = filter:GetText( )
	local cf = ArkInventory.Global.Location[loc_id].filter or ""
	
	if cf ~= filter then
		--ArkInventory.Output( "search [", loc_id, "] [", cf, "] [", filter, "]" )
		ArkInventory.Global.Location[loc_id].filter = filter
		ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Refresh )
	end
	
end

function ArkInventory.Frame_Main_Hide( w )
	
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if ArkInventory.ClientCheck( ArkInventory.Global.Location[loc_id].proj ) then
			if loc_data.canView then
				if not w or w == loc_id then
					local frame = ArkInventory.Frame_Main_Get( loc_id )
					frame:Hide( )
				end
			end
		end
	end
	
end

function ArkInventory.Frame_Main_OnHide( frame )
	
	ArkInventory.Lib.Dewdrop:Close( )
	
	local loc_id = frame.ARK_Data.loc_id
	
	if loc_id == ArkInventory.Const.Location.Bag then
		
		PlaySound( SOUNDKIT.IG_BACKPACK_CLOSE )
		ArkInventory.Frame_Main_ClearNewItemGlow( loc_id )
		
	elseif loc_id == ArkInventory.Const.Location.Keyring then
		
		PlaySound( SOUNDKIT.KEY_RING_CLOSE )
		
	elseif loc_id == ArkInventory.Const.Location.Bank then
		
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_CLOSE )
		
		if ArkInventory.Global.Mode.Bank and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bank ) then
			-- close blizzards bank frame if we're hiding blizzard frames, we're at the bank, and the bank window was closed
			CloseBankFrame( )
		end
		
	elseif loc_id == ArkInventory.Const.Location.Vault then
		
		PlaySound( SOUNDKIT.GUILD_VAULT_CLOSE )
		
		if ArkInventory.Global.Mode.Vault and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Vault ) then
			
			-- close blizzards vault frame if we're hiding blizzard frames, we're at the vault, and the vault window was closed
			
			GuildBankPopupFrame:Hide( )
			StaticPopup_Hide( "GUILDBANK_WITHDRAW" )
			StaticPopup_Hide( "GUILDBANK_DEPOSIT" )
			StaticPopup_Hide( "CONFIRM_BUY_GUILDBANK_TAB" )
			
			CloseGuildBankFrame( )
			
		end
		
	elseif loc_id == ArkInventory.Const.Location.Wearing then
		
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_CLOSE )
		
	elseif loc_id == ArkInventory.Const.Location.Auction then
		
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_CLOSE )
		
	elseif loc_id == ArkInventory.Const.Location.Void then
		
		PlaySound( SOUNDKIT.UI_ETHEREAL_WINDOW_CLOSE )
		
	elseif loc_id == ArkInventory.Const.Location.Currency then
		
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_CLOSE )
		
	elseif loc_id == ArkInventory.Const.Location.Reputation then
		
		PlaySound( SOUNDKIT.IG_CHARACTER_INFO_CLOSE )
		
	else
		
		PlaySound( SOUNDKIT.IG_SPELLBOOK_CLOSE )
		
	end
	
	if ArkInventory.Global.Mode.Edit then
		-- if the edit mode is active then disable edit mode and flag for rebuild when next opened
		ArkInventory.Global.Mode.Edit = false
		--ArkInventory.OutputWarning( "Frame_Main_OnHide - .Recalculate" )
		ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
	end
	
	ArkInventory.FrameLevelReset( frame, 1 )
	
end

function ArkInventory.Frame_Main_OnLoad( frame )
	
	assert( frame, "frame is nil" )
	
	ArkInventory.Frame_AddBorder( frame )
	
	local framename = frame:GetName( )
	local loc_id = string.match( framename, "^.-(%d+)" )
	
	assert( loc_id ~= nil, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	loc_id = tonumber( loc_id )
	
	frame.ARK_Data = {
		loc_id = loc_id,
	}
	
	local tex
	
	frame:SetDontSavePosition( true )
	frame:SetUserPlaced( false )
	
	-- setup title frame action buttons
	for k, v in pairs( ArkInventory.Const.Actions ) do
		
		local obj = _G[string.format( "%s%s%s%s", frame:GetName( ), ArkInventory.Const.Frame.Title.Name, "ActionButton", k )]
		
		if obj then
			
			tex = obj:GetNormalTexture( )
			ArkInventory.SetTexture( tex, v.Texture or ArkInventory.Global.Location[loc_id].Texture )
			tex:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
			
			tex = obj:GetPushedTexture( )
			ArkInventory.SetTexture( tex, v.Texture or ArkInventory.Global.Location[loc_id].Texture )
			tex:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
			
			tex = obj:GetHighlightTexture( )
			ArkInventory.SetTexture( tex, v.Texture or ArkInventory.Global.Location[loc_id].Texture )
			tex:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
			
			for s, f in pairs( v.Scripts ) do
				obj:SetScript( s, f )
			end
			
		end
		
	end
	
	-- setup main frame mini action buttons
	for k, v in pairs( ArkInventory.Const.Actions ) do
		
		local obj = _G[string.format( "%s%s%s%s", frame:GetName( ), ArkInventory.Const.Frame.Scroll.Name, "ActionButton", k )]
		
		if obj then
			
			tex = obj:GetNormalTexture( )
			ArkInventory.SetTexture( tex, v.Texture or ArkInventory.Global.Location[loc_id].Texture )
			tex:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
			
			tex = obj:GetPushedTexture( )
			ArkInventory.SetTexture( tex, v.Texture or ArkInventory.Global.Location[loc_id].Texture )
			tex:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
			
			tex = obj:GetHighlightTexture( )
			ArkInventory.SetTexture( tex, v.Texture or ArkInventory.Global.Location[loc_id].Texture )
			tex:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
			
			for s, f in pairs( v.Scripts ) do
				obj:SetScript( s, f )
			end
			
		end
		
	end
	
end

function ArkInventory.Frame_Main_OnMouseUp( frame )
	
	ArkInventory.Frame_Main_Level( frame )
	
	ArkInventory.Lib.Dewdrop:Close( )
	--ArkInventory.Output2( "mouse up" )
	
end

function ArkInventory.Frame_Main_OnDragStart( frame )
	
	--ArkInventory.Output( "START: ", frame:GetName( ), " / level = ", frame:GetFrameLevel( ), " / strata = ", frame:GetFrameStrata( ) )
	
	frame.ARK_Data.Level = frame:GetFrameLevel( )
	
	frame:StartMoving( )
	
end

function ArkInventory.Frame_Main_OnDragStop( frame )
	
	frame:StopMovingOrSizing( )
	
	--ArkInventory.Output( "STOP: ", frame:GetName( ), " / level = ", frame:GetFrameLevel( ), " / strata = ", frame:GetFrameStrata( ) )
	
	ArkInventory.Frame_Main_Anchor_Save( frame )
	
	frame:SetUserPlaced( false )
	
	ArkInventory.Frame_Main_Level( frame )
	
end

function ArkInventory.Frame_Main_OnReceiveDrag( frame )
	
	ArkInventory.EditModeOnDragSet( )
	ArkInventory.SetCursor( )
	
end

function ArkInventory.Frame_Main_ClearNewItemGlow( loc_id )
	
	if ArkInventory.db.option.newitemglow.enable and ArkInventory.db.option.newitemglow.clearonclose and loc_id == ArkInventory.Const.Location.Bag and not ArkInventory.Global.Location[loc_id].isOffline then
		
		--ArkInventory.Output( "Frame_Main_ClearNewItemGlow( ", loc_id, " )" )
		
		for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
			
			local blizzard_id = ArkInventory.InternalIdToBlizzardBagId( loc_id, bag_id )
			
			for slot_id = 1, ArkInventory.Global.Location[loc_id].maxSlot[bag_id] or 0 do
				
				if C_NewItems.IsNewItem( blizzard_id, slot_id ) then
					
					C_NewItems.RemoveNewItem( blizzard_id, slot_id )
					
					local objname, obj = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )	
					ArkInventory.Frame_Item_Update_New( obj, nil, true )
					
				end
				
			end
			
		end
		
	end
	
end


function ArkInventory.Frame_Container_Calculate( frame )
	
	--ArkInventory.Output( "Frame_Container_Calculate( ", frame:GetName( ), " )" )
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	ArkInventory.Table.Clean( codex.workpad, nil, true )
--	table.wipe( codex.workpad )
	
	-- break the inventory up into it's respective bars
	ArkInventory.Frame_Container_CalculateBars( frame )
	
	-- calculate what the container should look like with those bars
	ArkInventory.Frame_Container_CalculateContainer( frame )
	
end

function ArkInventory.Frame_Container_CalculateBars( frame )
	
	-- loads the inventory into their respective bars
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	ArkInventory.ThreadYield_Window( loc_id )
	
	local firstempty = codex.style.slot.empty.first or 0
--	ArkInventory.Output( "show ", firstempty, " empty slots" )
	local firstemptyshown = { }
	
	--ArkInventory.Output( GREEN_FONT_COLOR_CODE, "Frame_Container_CalculateBars( ", frame:GetName( ), " ) for [", codex.player.data.info.name, "] start" )

	codex.workpad.bar = codex.workpad.bar or { }
	table.wipe( codex.workpad.bar )
	codex.workpad.bar_count = 1
	
	local bag
	local cat_id
	local bar_id, bar_def
	local ignore = false
	local hidden = false
	local show_all = false
	local stack_compress = codex.style.slot.compress.count
	
	if ArkInventory.Global.Mode.Edit or ArkInventory.Global.Options.ShowHiddenItems or codex.style.window.list then
		-- show everything if in edit mode or the user wants us to ignore the hidden flag
		show_all = true
	end
	
	local new_shift = codex.style.slot.new.enable
	local new_cutoff = ArkInventory.TimeAsMinutes( ) - codex.style.slot.new.cutoff
	local new_reset = ArkInventory.Global.NewItemResetTime or new_cutoff
	
	if stack_compress > 0 then  -- stack compression
		
		if not ArkInventory.Global.Cache.StackCompress[loc_id] then
			ArkInventory.Global.Cache.StackCompress[loc_id] = { }
		else
			table.wipe( ArkInventory.Global.Cache.StackCompress[loc_id] )
		end
		
	end
	
	
	-- the basics, just stick the items into their appropriate bars (cpu intensive)
	for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
		
		bag = codex.player.data.location[loc_id].bag[bag_id]
		
		for slot_id = 1, bag.count do
			
			local i = bag.slot[slot_id]
			ignore = false
			
			if loc_id == ArkInventory.Const.Location.Vault and not codex.player.data.option[loc_id].bag[bag_id].display then
				ignore = true
			end
			
			if i and not ignore then
				
				if codex.style.window.list then
					
					cat_id = ArkInventory.CategoryGetSystemID( "SYSTEM_DEFAULT" )
					
				else
					
					if i.h and new_shift and i.age and i.age > new_reset and i.age > new_cutoff then
						cat_id = ArkInventory.CategoryGetSystemID( "SYSTEM_NEW" )
					else
						cat_id = ArkInventory.ItemCategoryGet( i )
					end
					
				end
				
				--bar_id = codex.layout.bag[bag_id].bar or ArkInventory.CategoryLocationGet( loc_id, cat_id )
				bar_id, bar_def = ArkInventory.CategoryLocationGet( loc_id, cat_id )
				if bar_def then
					bar_id = codex.layout.bag[bag_id].bar or bar_id
				end
				--ArkInventory.Output( "loc=[", loc_id, "], bag=[", bag_id, "], slot=[", slot_id, "], cat=[", cat_id, "], bar_id=[", bar_id, "]" )
				
				if not show_all then
					
					-- no point doing this if show all is enabled
					
					if firstempty > 0 and not i.h and bar_id > 0 then
						
						if not firstemptyshown[bag.type] then
							firstemptyshown[bag.type] = 0
						end
						
						if firstemptyshown[bag.type] < firstempty then
							firstemptyshown[bag.type] = firstemptyshown[bag.type] + 1
						else
							bar_id = 0 - bar_id
						end
						
					end
					
					if stack_compress > 0 and i.h and bar_id > 0 then
						
						local info = ArkInventory.ObjectInfoArray( i.h, i )
						
						if info.stacksize > 1 then
							
							local key = ArkInventory.ObjectIDCount( i.h, i )
							
							if not ArkInventory.Global.Cache.StackCompress[loc_id][key] then
								ArkInventory.Global.Cache.StackCompress[loc_id][key] = 0
							end
							
							if ArkInventory.Global.Cache.StackCompress[loc_id][key] < stack_compress then
								ArkInventory.Global.Cache.StackCompress[loc_id][key] = ArkInventory.Global.Cache.StackCompress[loc_id][key] + 1
							else
								bar_id = 0 - bar_id
							end
							
						end
					
					end
					
				end
				
				
				hidden = false
				
				if not codex.player.data.option[loc_id].bag[bag_id].display then
					-- isoalted bags do not get shown
					hidden = true
				elseif bar_id < 0 then
					-- hidden categories (reside on negative bar numbers) do not get shown
					hidden = true
				end
				
				if show_all or not hidden then
					
					bar_id = abs( bar_id )
					
					-- create the bar
					if not codex.workpad.bar[bar_id] then
						codex.workpad.bar[bar_id] = { ["id"] = bar_id, ["item"] = { }, ["count"] = 0, ["width"] = 0, ["height"] = 0, ["ghost"] = false, ["frame"] = 0 }
					end
					
					-- add the item to the bar
					codex.workpad.bar[bar_id].item[#codex.workpad.bar[bar_id].item + 1] = { ["bag"] = bag_id, ["slot"] = slot_id }
					
					-- increment the bars item count
					codex.workpad.bar[bar_id].count = codex.workpad.bar[bar_id].count + 1
					
					-- keep track of the last bar used
					if bar_id > codex.workpad.bar_count then
						codex.workpad.bar_count = bar_id
					end
					
					--ArkInventory.Output( "bag[", bag_id, "], slot[", slot_id, "], cat[", cat_id, "], bar[", bar_id, "], id=[", codex.workpad.bar[bar_id].id, "]" )
					
				end
				
			end
			
			ArkInventory.ThreadYield_Window( loc_id )
			
		end
		
		--ArkInventory.Output( "bag = ", bag_id, ", count = ", bag.count, " / ", ArkInventory.Table.Elements( bag.slot ) )
		
	end
	
	
	-- get highest used bar
	local cats = codex.layout.category
	for _, bar_id in pairs( cats ) do
		if bar_id > codex.workpad.bar_count then
			codex.workpad.bar_count = bar_id
		end
	end
	
	-- round up to a full number of bars per row
	local bpr = codex.style.window.list and 1 or codex.style.bar.per or 1
	codex.workpad.bar_count = ceil( codex.workpad.bar_count / bpr ) * bpr
	
	if ArkInventory.Global.Mode.Edit then
		-- and add an entire extra row for easy bar/category movement when in edit mode
		codex.workpad.bar_count = codex.workpad.bar_count + bpr
	end
	
	-- update the maximum number of bar frames used so far
	if codex.workpad.bar_count > ArkInventory.Global.Location[loc_id].maxBar then
		ArkInventory.Global.Location[loc_id].maxBar = codex.workpad.bar_count
	end

	-- if we're in edit mode then create all missing bars and add a ghost item to every bar
	-- ghost items allow for the bar menu icon
	if ArkInventory.Global.Mode.Edit or codex.style.bar.showempty then
		
		--ArkInventory.Output( "edit mode - adding ghost bars" )
		for bar_id = 1, codex.workpad.bar_count do
			
			if not codex.workpad.bar[bar_id] then
				
				-- create a ghost bar
				codex.workpad.bar[bar_id] = { ["id"] = bar_id, ["item"] = { }, ["count"] = 1, ["width"] = 0, ["height"] = 0, ["ghost"] = true, ["frame"] = 0 }
				
			else
				
				-- add a ghost item to the bar by incrementing the bars item count
				codex.workpad.bar[bar_id].count = codex.workpad.bar[bar_id].count + 1
				
			end
			
		end
		
	end
	
	--ArkInventory.Output( GREEN_FONT_COLOR_CODE, "Frame_Container_CalculateBars( ", frame:GetName( ), " ) end" )
	
	ArkInventory.ThreadYield_Window( loc_id )
	
end

function ArkInventory.Frame_Container_CalculateContainer( frame )
	
	-- calculate what the bars look like in the conatiner
	
	--ArkInventory.Output( GREEN_FONT_COLOR_CODE, "Frame_Container_Calculate( ", frame:GetName( ), " ) start" )
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	ArkInventory.ThreadYield_Window( loc_id )
	
	codex.workpad.container = { row = { } }
	
	local bpr = codex.style.window.list and 1 or codex.style.bar.per or 1
	local rownum = 0
	local bf = 1 -- bar frame, allocated to each bar as it's calculated (uses less frames this way)
	
	--ArkInventory.Output( "container ", loc_id, " has ", codex.workpad.bar_count, " bars" )
	--ArkInventory.Output( "container ", loc_id, " set for ", bpr, " bars per row" )
	
	
	if ArkInventory.Global.Mode.Edit == false and codex.style.bar.compact then
		
		--ArkInventory.Output( "compact bars enabled" )
		
		local bc = 0  -- number of bars currently in this row
		local vr = { }  -- virtual row - holds a list of bars for this row
		
		for j = 1, codex.workpad.bar_count do
			
			--ArkInventory.Output( "bar [", j, "]" )
			
			if codex.workpad.bar[j] then
				if codex.workpad.bar[j].count > 0 then
					--ArkInventory.Output( "assignment: bar [", j, "] to frame [", bf, "]" )
					codex.workpad.bar[j].frame = bf
					bf = bf + 1
					bc = bc + 1
					vr[bc] = j
				else
					--ArkInventory.Output( "bar [", j, "] has no items" )
				end
			else
				--ArkInventory.Output( "bar [", j, "] has no items (does not exist)" )
			end
			
			if bc > 0 and ( bc == bpr or j == codex.workpad.bar_count ) then
				
				rownum = rownum + 1
				if not codex.workpad.container.row[rownum] then
					codex.workpad.container.row[rownum] = { }
				end
				
				--ArkInventory.Output( "row [", rownum, "] allocated [", bc, "] bars" )
				
				codex.workpad.container.row[rownum].bar = vr
				
				--ArkInventory.Output( "row [", rownum, "] created" )
				
				bc = 0
				vr = { }
				
			end
			
		end
		
	else
		
		for j = 1, codex.workpad.bar_count, bpr do
			
			local bc = 0  -- number of bars currently in this row
			local vr = { }  -- virtual row - holds a list of bars for this row
			
			for b = 1, bpr do
				if codex.workpad.bar[j + b - 1] then
					if codex.workpad.bar[j + b - 1].count > 0 then
						--ArkInventory.Output( "assignment: bar [", j + b - 1, "] to frame [", bf, "]" )
						codex.workpad.bar[j + b - 1]["frame"] = bf
						bf = bf + 1
						bc = bc + 1
						vr[bc] = j + b -1
					else
						--ArkInventory.Output( "bar [", j+b-1, "] has no items" )
					end
				else
					--ArkInventory.Output( "bar [", j+b-1, "] has no items (does not exist)" )
				end
			end
			
			if bc > 0 then
				
				rownum = rownum + 1
				if not codex.workpad.container.row[rownum] then
					codex.workpad.container.row[rownum] = { }
				end
				
				--ArkInventory.Output( "row [", rownum, "] allocated [", bc, "] bars" )
				
				codex.workpad.container.row[rownum].bar = vr
				
			end
			
		end
		
	end
	
	ArkInventory.ThreadYield_Window( loc_id )
	
	-- fit the bars into the row
	
	local rmw = codex.style.window.width -- row max width
	local rcw = 0 -- row current width
	local rch = 1 -- row current height
	local rmh = 0 -- row max height
	local igb = ArkInventory.Global.Mode.Edit and not codex.style.bar.showempty -- ignore ghost bars for row width purposes (makes the window get wider in edit mode)
	local rmb = 0 -- row max (height) bar - bar id of tallest bar
	local mwb = 0 -- number of minimum width bars in the row
	
	local bar = codex.workpad.bar
	
	--ArkInventory.Output( "bars per row=[", bpr, "], max columns=[", rmw, "], columns per bar=[", floor( rmw / bpr ), "]" )
	
	for rownum, row in ipairs( codex.workpad.container.row ) do
		
		rcw = 0
		mwb = 0
		
		for k, bar_id in ipairs( row.bar ) do
			
			-- initial setup for each bar
			bar[bar_id].minwidth = codex.layout.bar.data[bar_id].width.min
			if bar[bar_id].minwidth == 0 then
				bar[bar_id].minwidth = nil
			end

			if codex.style.window.list then
				bar[bar_id].maxwidth = 1
			else
				bar[bar_id].maxwidth = codex.layout.bar.data[bar_id].width.max
			end
			
			if bar[bar_id].maxwidth == 0 then
				bar[bar_id].maxwidth = nil
			end
			
			bar[bar_id].width = bar[bar_id].minwidth or 1
			bar[bar_id].height = bar[bar_id].count
			
			if bar[bar_id].minwidth then
				bar[bar_id].height = math.ceil( bar[bar_id].count / bar[bar_id].minwidth )
				mwb = mwb + 1
			end
			
			if bar[bar_id].height > rmh then
				rmh = bar[bar_id].height
			end
			
			
			rcw = rcw + ( igb and bar[bar_id].ghost and 0 or bar[bar_id].width )
			
			--ArkInventory.Output( "row=[", rownum, "], index=[", k, "], bar=[", bar_id, "], width=[", bar[bar_id].width, "], height=[", bar[bar_id].height, "], mwb=[", mwb, "]" )
			
		end
		
		if rmh > 1 then
			
			local first = true
			if #row.bar == mwb then
				-- if all the bars in the row have min width then allow them to be adjusted
				if rcw < rmw then
					-- but only if the total width is less than the window width
					first = false
					-- otherwise it will change the width of the tallest bar before passing through which we dont want
				end
			end
			
			
			repeat
				
				rmh = 1
				rmb = 0
				
				-- find the bar with tallest height (ignore bars at max width, and bars at minwidth on the first pass)
				for _, bar_id in ipairs( row.bar ) do
					--if ( bar[bar_id].height > rmh ) and not ( bar[bar_id].maxwidth and bar[bar_id].width >= bar[bar_id].maxwidth ) and not ( first and bar[bar_id].minwidth and bar[bar_id].width >= bar[bar_id].minwidth ) then
					if ( bar[bar_id].height > rmh ) and not ( bar[bar_id].maxwidth and bar[bar_id].width >= bar[bar_id].maxwidth ) and not ( first and bar[bar_id].minwidth and bar[bar_id].width >= bar[bar_id].minwidth ) then
						rmb = bar_id
						rmh = bar[bar_id].height
					end
				end
				
				if rmb > 0 and rmh > 1 then
					
					-- increase the tallest bars width by one
					bar[rmb].width = bar[rmb].width + 1
					
					-- recalcualte it's new height
					bar[rmb].height = math.ceil( bar[rmb].count / bar[rmb].width )
					
				end
				
				-- check if all fits
				rcw = 0
				rmh = 0
				for _, bar_id in ipairs( row.bar ) do
					rcw = rcw + ( igb and bar[bar_id].ghost and 0 or bar[bar_id].width )
					if bar[bar_id].height > rmh then
						rmh = bar[bar_id].height
					end
				end
				
				first = false
				
				-- exit if the width fits (or is over), or the max height is 1, no bar heights were changed on the second or higher pass
			until rcw >= rmw or rmh == 1 or (rmb == 0 and not first)
			
		end
		
		--ArkInventory.Output( "maximum height for row [", rownum, "] was [", rmh, "]" )
		
		for k, bar_id in ipairs( row.bar ) do
			
			--ArkInventory.Output( "setting max height for row [", rownum, "] bar [", bar_id, "] to [", rmh, "]" )
			
			-- set height of all bars in the row to the maximum height used (looks better)
			bar[bar_id].height = rmh
			
			if bar[bar_id].ghost or ArkInventory.Global.Mode.Edit or codex.style.bar.showempty then
				-- remove the ghost item from the count (it was only needed to calculate properly)
				bar[bar_id].count = bar[bar_id].count - 1
			end
			
		end
		
		ArkInventory.ThreadYield_Window( loc_id )
		
	end
	
	--ArkInventory.Output( GREEN_FONT_COLOR_CODE, "Frame_Container_Calculate( ", frame:GetName( ), " ) end" )
	
end

function ArkInventory.Frame_Container_Draw( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	local slotScale = codex.style.slot.scale or 1
	local slotSize = ( codex.style.slot.size or ArkInventory.Const.Blizzard.SLOT_SIZE ) * slotScale
	
	--ArkInventory.Output( "draw frame=", frame:GetName( ), ", loc=", loc_id, ", state=", ArkInventory.Global.Location[loc_id].drawState )
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Recalculate then
		
		-- calculate what the container should look like
		ArkInventory.OutputThread( "Frame_Container_Calculate" )
		ArkInventory.Frame_Container_Calculate( frame )
		ArkInventory.ThreadYield_Window( loc_id )
		
		-- create (if required) the bar frames
		for bar_id = 1, ArkInventory.Global.Location[loc_id].maxBar do
			
			local barframename = string.format( "%sBar%s", frame:GetName( ), bar_id )
			local barframe = _G[barframename]
			if not barframe then
				barframe = CreateFrame( "Frame", barframename, frame, "ARKINV_TemplateFrameBar" )
			end
			
			barframe.ARK_Data.displayed = nil
			
		end
		
		ArkInventory.ThreadYield_Window( loc_id )
		
		-- create (if required) the bags and their item buttons
		for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
			
			local bagframename = string.format( "%sBag%s", frame:GetName( ), bag_id )
			local bagframe = _G[bagframename]
			if not bagframe then
				bagframe = CreateFrame( "Frame", bagframename, frame, "ARKINV_TemplateFrameBag" )
			end
			--bagframe:SetAllPoints( frame )
			
			
			-- remember the maximum number of slots used for each bag
			local c = codex.player.data.location[loc_id].bag[bag_id].count
			
			if not ArkInventory.Global.Location[loc_id].maxSlot[bag_id] then
				ArkInventory.Global.Location[loc_id].maxSlot[bag_id] = 0
			end
			
			if c > ArkInventory.Global.Location[loc_id].maxSlot[bag_id] then
				ArkInventory.Global.Location[loc_id].maxSlot[bag_id] = c
			end
			
			
			-- create the item frames for the bag
			for slot_id = 1, ArkInventory.Global.Location[loc_id].maxSlot[bag_id] do
				
				local itemframename, itemframe = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
				local tainteditemframename = itemframename .. "T"
				local tainteditemframe = _G[tainteditemframename]
				
				if tainteditemframe and not InCombatLockdown( ) then
					
					-- a tainteditemframe exists and youre no longer in combat so "delete" it.  a normal itemframe will get created further down
					
					tainteditemframe:Hide( )
					tainteditemframe:SetParent( nil )
					
					_G[tainteditemframename] = nil
					tainteditemframe = nil
					
					_G[itemframename] = nil
					itemframe = nil
					
				end
				
				if not itemframe then
					
					if InCombatLockdown( ) then
						
						-- in combat, create a tainted frame that is viable
						
						if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
							itemframe = CreateFrame( "ItemButton", tainteditemframename, bagframe, string.format( "ARKINV_TemplateButtonItemTainted%s", WOW_PROJECT_ID ) )
						else
							itemframe = CreateFrame( "Button", tainteditemframename, bagframe, string.format( "ARKINV_TemplateButtonItemTainted%s", WOW_PROJECT_ID ) )
						end
						
						_G[tainteditemframename] = itemframe
						_G[itemframename] = itemframe
						
						--ArkInventory.Output( "tainted ", tainteditemframename )
						
					else
						
						if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
							itemframe = CreateFrame( "ItemButton", itemframename, bagframe, ArkInventory.Global.Location[loc_id].template or string.format( "ARKINV_TemplateButtonViewOnlyItem%s", WOW_PROJECT_ID ) )
						else
							itemframe = CreateFrame( "Button", itemframename, bagframe, ArkInventory.Global.Location[loc_id].template or string.format( "ARKINV_TemplateButtonViewOnlyItem%s", WOW_PROJECT_ID ) )
						end
						
						--ArkInventory.Output( "secure ", itemframename )
						
					end
					
				end
				
				if itemframe.ARK_Data.init then
					-- covers stuff we can only do once the database is loaded
					ArkInventory.MediaFrameDefaultFontSet( itemframe )
					itemframe:SetScale( slotScale )
					itemframe.ARK_Data.init = nil
				end
				
				itemframe.ARK_Data.displayed = nil
				
				ArkInventory.ThreadYield_Window( loc_id )
				
			end
			
		end
		
	end
	
	
	-- position the bar frames
	local name = frame:GetName( )
	
	local bpr = codex.style.window.list and 1 or codex.style.bar.per or 1
	local padSlot = codex.style.slot.pad * slotScale
	local padBarInternal = codex.style.bar.pad.internal * slotScale
	local padBarExternal = codex.style.bar.pad.external
	local padWindow = codex.style.window.pad
	local padLabel = ArkInventory.Frame_Bar_Label_GetPaddingValue( codex )
	local padActionButtons = codex.style.title.hide and ArkInventory.Const.Frame.Main.MiniActionButtonSize or 0
	local anchor = codex.style.bar.anchor
	
	local padList = 0
	if codex.style.window.list then
		padList = ( codex.style.window.width - 1 ) * ( slotSize + padSlot )
	end
	
	local barOffsetX, barOffsetY, barWidth, barHeight
	
	for rownum, row in ipairs( codex.workpad.container.row ) do
		
		row.width = padWindow * 2 - padBarExternal
		
		for bar_index, bar_id in ipairs( row.bar ) do
			
			local bar = codex.workpad.bar[bar_id]
			local barframename = string.format( "%sBar%s", name, bar.frame )
			local obj = _G[barframename]
			assert( obj, string.format( "xml element '%s' could not be found", barframename ) )
			
			-- assign the bar number used to the bar frame and set it to display
			obj.ARK_Data.bar_id = bar_id
			obj.ARK_Data.displayed = true
			
			if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Recalculate then
				
				obj:ClearAllPoints( )
				
				local obj_width = ( bar.width * slotSize ) + ( ( bar.width - 1 ) * padSlot ) + ( padBarInternal * 2 ) + padList
				obj:SetWidth( obj_width )
				
				row.width = row.width + obj_width + padBarExternal
				
				row.height = ( bar.height * slotSize ) + ( ( bar.height - 1 ) * padSlot ) + ( padBarInternal * 2 ) + padLabel
				obj:SetHeight( row.height )
				
				if bar_index == 1 then
					
					--ArkInventory.Output( "r[", rownum, "] h[", row.height, "] o[", barHeight, "]" )
					
					-- first bar in a new row, set X offset
					barOffsetX = padWindow
					barWidth = 0
					
					if bar.frame == 1 then
						
						-- first row, first bar, set Y offset
						barOffsetY = padWindow
						
						-- increment Y offset if mini action items are visible, theyre always at the top
						if codex.style.title.hide then
							if anchor == ArkInventory.Const.Anchor.TopLeft or anchor == ArkInventory.Const.Anchor.TopRight then
								barOffsetY = barOffsetY + ArkInventory.Const.Frame.Main.MiniActionButtonSize or 0
							end
						end
						
					else
						
						-- next row, first bar, increment Y offset
						barOffsetY = barOffsetY + ( barHeight or 0 ) + padBarExternal
						
					end
					
					barHeight = row.height
					
				else
					
					-- same row, subsequent bars, increment X offset
					barOffsetX = barOffsetX + ( barWidth or 0 ) + padBarExternal
					
				end
				
				barWidth = obj_width
				
				--ArkInventory.Output( "r[", rownum, "] b[", bar_index, "] f[", bar.frame, "] x[", barOffsetX, "] y[", barOffsetY, "]" )
				
				if anchor == ArkInventory.Const.Anchor.BottomLeft then
					obj:SetPoint( "BOTTOMLEFT", frame, barOffsetX, barOffsetY )
				elseif anchor == ArkInventory.Const.Anchor.TopLeft then
					obj:SetPoint( "TOPLEFT", frame, barOffsetX, 0 - barOffsetY )
				elseif anchor == ArkInventory.Const.Anchor.TopRight then
					obj:SetPoint( "TOPRIGHT", frame, 0 - barOffsetX, 0 - barOffsetY )
				else
					obj:SetPoint( "BOTTOMRIGHT", frame, 0 - barOffsetX, barOffsetY )
				end
				
				ArkInventory.Frame_Bar_Paint( obj )
				
			end
			
			if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Refresh then
				
				ArkInventory.OutputThread( loc_id, " Frame_Bar_DrawItems")
				ArkInventory.Frame_Bar_DrawItems( obj )
				ArkInventory.ThreadYield_Window( loc_id )
				
			end
			
		end
		
	end
	
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Refresh then
		
		-- display/hide the appropriate items - mostly used for search matching (thus the refresh level)
		for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
			
			if codex.player.data.option[loc_id].bag[bag_id].display then
				
				-- this bag and its items should be visible
				for slot_id = 1, ArkInventory.Global.Location[loc_id].maxSlot[bag_id] do
					
					local itemframename, itemframe = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
					assert( itemframe, string.format( "xml element '%s' could not be found", itemframename ) )
					
					if itemframe.ARK_Data.displayed then
						
						ArkInventory.Frame_Item_Update_Clickable( itemframe )
						
						if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Restart then
							
							itemframe:SetScale( slotScale )
							
							ArkInventory.Frame_Item_Update_Count_Anchor( itemframe, codex )
							ArkInventory.Frame_Item_Update_Level_Anchor( itemframe, codex )
							ArkInventory.Frame_Item_Update_StatusIconUpgrade_Anchor( itemframe, codex )
							ArkInventory.Frame_Item_Update_StatusIconJunk_Anchor( itemframe, codex )
							ArkInventory.Frame_Item_Update_StatusIconTransmog_Anchor( itemframe )
							ArkInventory.Frame_Item_Update_StatusIconOverlay_Anchor( itemframe, codex )
							
						end
						
						itemframe:Show( )
						
					else
						
						itemframe:Hide( )
						
					end
					
				end
				
			end
			
		end
		
		-- display/hide the appropriate bags (separated for better reload visual impact)
		for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
			
			local bagframename = string.format( "%sBag%s", frame:GetName( ), bag_id )
			local bagframe = _G[bagframename]
			assert( bagframe, string.format( "xml element '%s' could not be found", bagframename ) )
			
			if codex.player.data.option[loc_id].bag[bag_id].display then
				bagframe:Show( )
			else
				bagframe:Hide( )
			end
			
		end
		
		-- display/hide the appropriate bars
		for bar_id = 1, ArkInventory.Global.Location[loc_id].maxBar do
			
			local barframename = string.format( "%s%s%s", name, "Bar", bar_id )
			local barframe = _G[barframename]
			assert( barframe, string.format( "xml element '%s' could not be found", barframename ) )
			
			if barframe.ARK_Data.displayed then
				barframe:Show( )
			else
				barframe:Hide( )
			end
			
		end
		
	end
	
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Recalculate then
		
		-- set container height and width
		
		local c = codex.workpad.container
		
		c.width = ArkInventory.Const.Window.Min.Width
		
		c.height = padWindow * 2 + padActionButtons - padBarExternal

		for row_index, row in ipairs( c.row ) do
		
			if row.width > c.width then
				c.width = row.width
			end
			
			c.height = c.height + row.height + padBarExternal
			
		end
		
		-- set the container frame dimensions
		frame:SetWidth( c.width )
		frame:SetHeight( c.height )
		
		
		-- set scrollframe/slider
		local h = codex.style.window.height
		if c.height < h then
			h = c.height
		end
		
		local sf = frame:GetParent( )
		
		sf.range = c.height
		sf.stepSize = ArkInventory.Const.Frame.Scroll.stepSize
		
		if c.height > h then
			
			sf.scrollBar:SetMinMaxValues( 0, c.height - h )
			sf.scrollBar:Show( )
			
		else
			
			sf:SetVerticalScroll( 0 )
			sf.scrollBar:Hide( )
			
		end
		
		codex.profile.location[loc_id].container.width = c.width
		codex.profile.location[loc_id].container.height = h
--		codex.profile.location[loc_id].container.heightmax = c.height
		
		ArkInventory.ThreadYield_Window( loc_id )
		
	end
	
end

function ArkInventory.Frame_Container_OnLoad( frame )
	
	-- not in combat yet so theres no taint here
	
	local framename = frame:GetName( )
	local loc_id = string.match( framename, "^.-(%d+)ScrollContainer" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	loc_id = tonumber( loc_id )
	
	frame.ARK_Data = {
		loc_id = loc_id,
	}
	
	-- pre-build a set amount of non tainted usable bag slots for the backpack to cater for entering the world when in combat
	if loc_id == ArkInventory.Const.Location.Bag then
		for bag_id = 1, ( NUM_BAG_SLOTS + 1 ) do
			local bagframename = string.format( "%sBag%s", frame:GetName( ), bag_id )
			local bagframe = CreateFrame( "Frame", bagframename, frame, "ARKINV_TemplateFrameBag" )
		end
	end
	
end


function ArkInventory.Frame_Scroll_OnLoad( frame )
	
	assert( frame, "frame is nil" )
	
	ArkInventory.Frame_AddBorder( frame )
	
	local framename = frame:GetName( )
	
	local loc_id = string.match( framename, "^.-(%d+)Scroll" )
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	loc_id = loc_id
	
	frame.ARK_Data = {
		loc_id = loc_id,
	}
	
	frame.stepSize = ArkInventory.Const.Frame.Scroll.stepSize
	
end


function ArkInventory.Frame_Bar_OnLoad( frame )
	
	ArkInventory.Frame_AddBorder( frame )
	
	local framename = frame:GetName( )
	local loc_id, bar_id = string.match( framename, "^.-(%d+)ScrollContainerBar(%d+)" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bar_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	loc_id = tonumber( loc_id )
	
	-- bars are essentially a pool of frames, they will be pulled from there as required
	-- the bar_id will be set when allocated from the pool
	
	frame.ARK_Data = {
		loc_id = loc_id,
		bar_id = 0,
	}
	
	-- add edit button
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		frame.ArkEdit = CreateFrame( "ItemButton", string.format( "%sEdit", framename ), frame, string.format( "ARKINV_TemplateButtonBarEdit%s", WOW_PROJECT_ID ) )
	else
		frame.ArkEdit = CreateFrame( "Button", string.format( "%sEdit", framename ), frame, string.format( "ARKINV_TemplateButtonBarEdit%s", WOW_PROJECT_ID ) )
	end
	
	ArkInventory.MediaFrameDefaultFontSet( frame )
	
	frame:Hide( )
	
end

function ArkInventory.Frame_Bar_Paint_All( )

	--ArkInventory.Output( "Frame_Bar_Paint_All( )" )

	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView then
			
			c = _G[string.format( "%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Container.Name )]
			
			if c then
			
				for bar_id = 1, loc_data.maxBar do
					
					obj = _G[string.format( "%s%s%s", c:GetName( ), "Bar", bar_id )]
					
					if obj then
						ArkInventory.Frame_Bar_Paint( obj )
					end
					
				end
				
			end
			
		end
	end

end

function ArkInventory.Frame_Bar_Paint( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	--ArkInventory.Output( "paint ", frame:GetName( ) )
	
	local loc_id = frame.ARK_Data.loc_id
	local bar_id = frame.ARK_Data.bar_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	-- border
	local obj = frame.ArkBorder
	if obj then
		
		if codex.style.bar.border.style ~= ArkInventory.Const.Texture.BorderNone then
			
			local border = codex.style.bar.border.style or ArkInventory.Const.Texture.BorderDefault
			local file = ArkInventory.Lib.SharedMedia:Fetch( ArkInventory.Lib.SharedMedia.MediaType.BORDER, border )
			local size = codex.style.bar.border.size or ArkInventory.Const.Texture.Border[ArkInventory.Const.Texture.BorderDefault].size
			local offset = codex.style.bar.border.offset or ArkInventory.Const.Texture.Border[ArkInventory.Const.Texture.BorderDefault].offsetdefault.bar
			local scale = codex.style.bar.border.scale or 1
			
			local colour = nil
			if codex.layout.bar.data[bar_id].border.custom == 2 then
				colour = codex.layout.bar.data[bar_id].border.colour
			else
				colour = codex.style.bar.border.colour
			end
			
			ArkInventory.Frame_Border_Paint( obj, file, size, offset, scale, colour.r, colour.g, colour.b, 1 )
			
			obj:Show( )
			
		else
			
			obj:Hide( )
			
		end
		
	end
	
	
	-- background colour
	local obj = frame.ArkBackground
	if obj then
		
		local colour = codex.style.bar.background.colour
		
		if codex.layout.bar.data[bar_id].background.custom == 3 then
			
			-- use border colour
			if codex.layout.bar.data[bar_id].border.custom == 2 then
				-- use custom border colour
				colour = codex.layout.bar.data[bar_id].border.colour
			else
				-- use default border colour
				colour = codex.style.bar.border.colour
			end
			
		elseif codex.layout.bar.data[bar_id].background.custom == 2 then
			
			-- use custom background colour
			colour = codex.layout.bar.data[bar_id].background.colour
			
		end
		
		--frame:SetBackdropBorderColor( colour.r, colour.g, colour.b, colour.a )
		ArkInventory.SetTexture( obj, true, colour.r, colour.g, colour.b, colour.a )
		
	end
	
	
	-- edit mode bar number
	local obj = frame.ArkEdit
	if obj then
		
		if ArkInventory.Global.Mode.Edit then
			
			local padSlot = codex.style.slot.pad
			local padBarInternal = codex.style.bar.pad.internal
			local padLabel = ArkInventory.Frame_Bar_Label_GetPaddingValue( codex )
			local slotAnchor = codex.style.slot.anchor
			
			obj:ClearAllPoints( )
			
			-- anchor to the opposite corner that items are
			if slotAnchor == ArkInventory.Const.Anchor.BottomLeft then
				
				if codex.style.bar.name.anchor == ArkInventory.Const.Anchor.Bottom then
					padLabel = 0
				end
				
				obj:SetPoint( "TOPRIGHT", 0 - padBarInternal, 0 - padBarInternal - padLabel )
				
			elseif slotAnchor == ArkInventory.Const.Anchor.TopLeft then
				
				if codex.style.bar.name.anchor == ArkInventory.Const.Anchor.Top then
					padLabel = 0
				end
				
				obj:SetPoint( "BOTTOMRIGHT", 0 - padBarInternal, padBarInternal + padLabel )
				
			elseif slotAnchor == ArkInventory.Const.Anchor.TopRight then
				
				if codex.style.bar.name.anchor == ArkInventory.Const.Anchor.Top then
					padLabel = 0
				end

				obj:SetPoint( "BOTTOMLEFT", padBarInternal, padBarInternal + padLabel )
				
			else -- Default / BottomRight
				
				if codex.style.bar.name.anchor == ArkInventory.Const.Anchor.Bottom then
					padLabel = 0
				end
				
				obj:SetPoint( "TOPLEFT", padBarInternal, 0 - padBarInternal - padLabel )
				
			end
			
			obj:Show( )
			
		else
			
			obj:Hide( )
			
		end
		
	end
	
	-- label
	ArkInventory.Frame_Bar_Label( frame )
	
end

function ArkInventory.Frame_Bar_Label( frame )
	
	local oframe = _G[string.format( "%sLabel", frame:GetName( ) )]
	
	local obj = oframe.ArkLabel
	
	if not oframe then
		--ArkInventory.Output( frame:GetName(), " has no label frame" )
	elseif not obj then
		--ArkInventory.Output( frame:GetName(), " has no label fontstring" )
	else
		
		local loc_id = frame.ARK_Data.loc_id
		local codex = ArkInventory.GetLocationCodex( loc_id )
		
		local bar_id = frame.ARK_Data.bar_id
		local txt = codex.layout.bar.data[bar_id].name.text
		
		if ( codex.style.bar.name.show or ( ArkInventory.Global.Mode.Edit and codex.style.bar.name.editmode ) ) and ( not codex.style.window.list ) and txt and txt ~= "" then
			
			local padBarInternal = codex.style.bar.pad.internal
			
			local anchor = codex.style.bar.name.anchor
			if anchor == ArkInventory.Const.Anchor.Default then
				-- automatically switch based on slot anchor point
				anchor = codex.style.slot.anchor
				if anchor == ArkInventory.Const.Anchor.TopLeft or anchor == ArkInventory.Const.Anchor.TopRight then
					anchor = ArkInventory.Const.Anchor.Bottom
				else
					anchor = ArkInventory.Const.Anchor.Top
				end
			end
			
			oframe:ClearAllPoints( )
			
			if anchor == ArkInventory.Const.Anchor.Top then
				oframe:SetPoint( "TOPLEFT", frame, padBarInternal, 0 - padBarInternal )
			else
				oframe:SetPoint( "BOTTOMLEFT", frame, padBarInternal, padBarInternal )
			end
			
			oframe:SetPoint( "RIGHT", frame, 0 - padBarInternal, 0 )
			oframe:SetHeight( codex.style.bar.name.height )
			
			
			if codex.style.bar.name.align == ArkInventory.Const.Anchor.Right then
				obj:SetJustifyH( "RIGHT" )
			else
				obj:SetJustifyH( "LEFT" )
			end
			
			obj:SetHeight( codex.style.bar.name.height )
			
			obj:SetText( txt )
			
			local colour = codex.style.bar.name.colour
			if codex.layout.bar.data[bar_id].name.custom == 2 then
				-- use custom colour
				colour = codex.layout.bar.data[bar_id].name.colour
			end
			obj:SetTextColor( colour.r, colour.g, colour.b )
			
			ArkInventory.MediaObjectFontSet( obj, nil, codex.style.bar.name.height )
			
			
			oframe:Show( )
			
		else
			
			oframe:Hide( )
			
		end
		
	end

end

function ArkInventory.Frame_Bar_Label_GetPaddingValue( codex )
	
	local padLabel = 0
	
	if ( codex.style.bar.name.show or ( ArkInventory.Global.Mode.Edit and codex.style.bar.name.editmode ) ) and ( not codex.style.window.list ) then
		
		local slotScale = codex.style.slot.scale or 1
		local padMin = codex.style.bar.name.pad.vertical
		
		local padSlot = codex.style.slot.pad * slotScale
		if padSlot < padMin then
			padSlot = padMin
		end
		
		padLabel = codex.style.bar.name.height + padSlot
		
	end
	
	return padLabel
	
end

function ArkInventory.Frame_Bar_Label_OnLoad( frame )
	-- required to handle cursor change on drop receive
	frame:RegisterForDrag( "LeftButton" )
end

function ArkInventory.Frame_Bar_Label_OnEnter( frame )
	
	local loc_id = frame:GetParent( ).ARK_Data.loc_id
	local bar_id = frame:GetParent( ).ARK_Data.bar_id
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local txt = codex.layout.bar.data[bar_id].name.text
	
	if txt and txt ~= "" and frame.ArkLabel:GetStringHeight( ) > codex.style.bar.name.height + 1 then
		ArkInventory.GameTooltipSetText( frame, txt )
	end
	
end

function ArkInventory.Frame_Bar_Label_OnLeave( frame )
	
	local loc_id = frame:GetParent( ).ARK_Data.loc_id
	local bar_id = frame:GetParent( ).ARK_Data.bar_id
	
	ArkInventory.GameTooltipHide( )
	
end

function ArkInventory.Frame_Bar_Label_OnClick( frame, button )
	
	local loc_id = frame:GetParent( ).ARK_Data.loc_id
	local bar_id = frame:GetParent( ).ARK_Data.bar_id
	
	if ArkInventory.Global.Mode.Edit then
		ArkInventory.Lib.Dewdrop:Close( )
	end
	
	if button == "RightButton" then
		ArkInventory.MenuBarLabelOpen( frame )
	end
	
end

function ArkInventory.Frame_Bar_Label_OnDragStart( frame )
	local loc_id = frame:GetParent( ).ARK_Data.loc_id
	local parent = ArkInventory.Frame_Main_Get( loc_id )
	ArkInventory.Frame_Main_OnDragStart( parent )
end

function ArkInventory.Frame_Bar_Label_OnDragStop( frame )
	
		local loc_id = frame:GetParent( ).ARK_Data.loc_id
		
		local parent = ArkInventory.Frame_Main_Get( loc_id )
		ArkInventory.Frame_Main_OnDragStop( parent )
end

function ArkInventory.Frame_Bar_Label_OnReceiveDrag( frame )
	
	if ArkInventory.EditModeIsDragging( ) then
		
		ArkInventory.GameTooltipHide( )
		
		ArkInventory.EditModeOnDragSet( )
		ArkInventory.SetCursor( )
		
	end
	
end


function ArkInventory.Frame_Bar_DrawItems( frame )
	
	--ArkInventory.Output( "Frame_Bar_DrawItems( ", frame:GetName( ), " )" )
	
	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.Global.Location[loc_id].drawState > ArkInventory.Const.Window.Draw.Refresh then
		return
	end
	
	ArkInventory.ThreadYield_Window( loc_id )
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	local bar_id = frame.ARK_Data.bar_id
	local bar = codex.workpad.bar[bar_id]
	assert( bar, string.format( "workpad data for bar %d does not exist", bar_id ) )
	
--	ArkInventory.Output( "drawing ", codex.player.data.info.name, " - bar ", bar_id, ", count = ", bar.count, ", start = ", time( ) )
	
	if bar.count == 0 or bar.ghost then
		return
	end
	
	if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Resort then
		
		--ArkInventory.Output( "resorting loc[", loc_id, "] state[", ArkInventory.Global.Location[loc_id].drawState, "] bar[", bar_id, "] @ ", time( ) )
		
		-- sort the items in the bar (cpu intensive)
		local bag_id
		local slot_id
		local i
		
		ArkInventory.ThreadYield_Window( loc_id )
		
		for j = 1, bar.count do
			bag_id = bar.item[j].bag
			slot_id = bar.item[j].slot
			i = codex.player.data.location[loc_id].bag[bag_id].slot[slot_id]
			bar.item[j].sortkey = bar.item[j].sortkey or ArkInventory.ItemSortKeyGenerate( i, bar_id, codex )
			ArkInventory.ThreadYield_Window( loc_id )
		end
		
		
		local sid_def = codex.style.sort.method or 9999
		local sid = codex.layout.bar.data[bar_id].sort.method or sid_def
		
		if ArkInventory.db.option.sort.method.data[sid].used ~= "Y" then
			--ArkInventory.OutputWarning( "bar ", bar_id, " in location ", loc_id, " is using an invalid sort method.  resetting it to default" )
			codex.layout.bar.data[bar_id].sort.method = nil
			sid = sid_def
		end
		
		table.sort( bar.item, ArkInventory.ItemSortKeySort )
		
		ArkInventory.ThreadYield_Window( loc_id )
		
	end
	
	
	
	-- DO NOT SCALE THESE VALUES
	local slotSize = codex.style.slot.size or ArkInventory.Const.Blizzard.SLOT_SIZE
	local slotAnchor = codex.style.slot.anchor
	
	if codex.style.window.list then
		if slotAnchor == ArkInventory.Const.Anchor.TopLeft or slotAnchor == ArkInventory.Const.Anchor.BottomLeft then
			slotAnchor = ArkInventory.Const.Anchor.TopLeft
		else
			slotAnchor = ArkInventory.Const.Anchor.TopRight
		end
	end
	
	local padSlot = codex.style.slot.pad
	local padBarInternal = codex.style.bar.pad.internal
	local padLabel = ArkInventory.Frame_Bar_Label_GetPaddingValue( codex )
	
	local padList = 0
	if codex.style.window.list then
		padList = ( codex.style.window.width - 1 ) * slotSize + ( codex.style.window.width - 2 ) * padSlot
	end
	
	local col = bar.width
	
	-- cycle through the items in the bar
	
	--ArkInventory.Output( "bar = ", bar_id, ", count = ", bar.count, " ,width=", bar.width )
	
	local itemOffsetX, itemOffsetY
	
	for j = 1, bar.count do
		
		--local i = codex.player.data.location[loc_id].bag[bar.item[j].bag].slot[bar.item[j].slot]
		local objname, obj = ArkInventory.ContainerItemNameGet( loc_id, bar.item[j].bag, bar.item[j].slot )
		assert( obj, string.format( "xml element '%s' is missing", objname ) )
		
		local matches = ArkInventory.Frame_Item_MatchesFilter( obj )
		
		if ( ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Resort ) or ( codex.style.window.list and ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Refresh ) then
			
			obj:ClearAllPoints( )
			obj:SetSize( slotSize, slotSize )
			
			if mod( ( j - 1 ), col ) == 0 then
				
				-- first item in a new row, set X offset
				itemOffsetX = padBarInternal
				
				if j == 1 then
					
					-- first row, first item, set Y offset
					itemOffsetY = padBarInternal
					
					-- increment Y offset if bar names are enabled and they are in the way
					if ( codex.style.bar.name.show or ( ArkInventory.Global.Mode.Edit and codex.style.bar.name.editmode ) ) and ( not codex.style.window.list ) then
						
						local nameAnchor = codex.style.bar.name.anchor
						if nameAnchor ~= ArkInventory.Const.Anchor.Default then
							
							local tempAnchor = ArkInventory.Const.Anchor.Top
							if slotAnchor == ArkInventory.Const.Anchor.Default or slotAnchor == ArkInventory.Const.Anchor.BottomLeft or slotAnchor == ArkInventory.Const.Anchor.BottomRight then
								tempAnchor = ArkInventory.Const.Anchor.Bottom
							end
							
							if nameAnchor == tempAnchor then
								itemOffsetY = itemOffsetY + padLabel
							end
							
						end
						
					end
					
					if codex.style.window.list and not matches then
						-- cater for first entry in list view being hidden
						itemOffsetY = itemOffsetY - slotSize - padSlot
					end
					
				else
					
					-- next row, first item, increment Y offset
					if not ( codex.style.window.list and not matches ) then
						-- non matching items are hidden
						-- in list view that leaves gaps so dont increment the Y offset if this is list view and the item does not match
						itemOffsetY = itemOffsetY + slotSize + padSlot
					end
					
				end
				
			else
				
				-- same row, subsequent items, increment X offset
				-- list view only has a single item per row so wont get here
				
				itemOffsetX = itemOffsetX + slotSize + padSlot
				
			end
			
			--ArkInventory.Output( "item ", j, ", x=", itemOffsetX, ", y=", itemOffsetY )
			
			if slotAnchor == ArkInventory.Const.Anchor.BottomLeft then
				obj:SetPoint( "BOTTOMLEFT", frame, itemOffsetX, itemOffsetY )
			elseif slotAnchor == ArkInventory.Const.Anchor.TopLeft then
				obj:SetPoint( "TOPLEFT", frame, itemOffsetX, 0 - itemOffsetY )
			elseif slotAnchor == ArkInventory.Const.Anchor.TopRight then
				obj:SetPoint( "TOPRIGHT", frame, 0 - itemOffsetX, 0 - itemOffsetY )
			else -- slotAnchor == ArkInventory.Const.Anchor.BottomRight then
				obj:SetPoint( "BOTTOMRIGHT", frame, 0 - itemOffsetX, itemOffsetY )
			end
			
			local listobj = obj.ArkListEntry
			if listobj then
				
				if codex.style.window.list then
					
					listobj:ClearAllPoints( )
					
					listobj:SetPoint( "TOP", obj )
					listobj:SetPoint( "BOTTOM", obj )
					
					if slotAnchor == ArkInventory.Const.Anchor.TopLeft then
						listobj:SetPoint( "LEFT", obj, "RIGHT", padSlot, 0 )
					else
						listobj:SetPoint( "RIGHT", obj, "LEFT", 0 - padSlot, 0 )
					end
					
					listobj:SetWidth( padList )
					listobj:Show( )
					
				else
					
					listobj:Hide( )
					
				end
				
			end
			
		end
		
		if ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Refresh then
			
			ArkInventory.Frame_Item_Update( loc_id, bar.item[j].bag, bar.item[j].slot )
			
			if matches then
				obj.ARK_Data.displayed = true
			else
				obj.ARK_Data.displayed = nil
			end
			
		end
		
		ArkInventory.ThreadYield_Window( loc_id )
		
	end
	
	if codex.style.window.list and ArkInventory.Global.Location[loc_id].drawState <= ArkInventory.Const.Window.Draw.Refresh then
		frame:GetParent( ):GetParent( ):UpdateScrollChildRect( )
		frame:GetParent( ):GetParent( ):SetVerticalScroll( 0 )
	end
	
end

function ArkInventory.Frame_Bar_Insert( loc_id, bar_id )
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local t = codex.layout.bar.data
	table.insert( t, bar_id, ArkInventory.Table.Copy( t[0] ) )
	
	
	-- move category data (bar numbers can be negative)
	for cat, bar in pairs( codex.layout.category ) do
		if abs( bar ) >= bar_id then
			if bar > 0 then
				ArkInventory.CategoryLocationSet( loc_id, cat, bar + 1 )
			else
				ArkInventory.CategoryLocationSet( loc_id, cat, bar - 1 )
			end
		end
	end
	
	
	-- move bag assignment
	for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
		local z = codex.layout.bag[bag_id].bar
		if z and z >= bar_id then
			codex.layout.bag[bag_id].bar = z + 1
		end
	end
	
end

function ArkInventory.Frame_Bar_Remove( loc_id, bar_id )
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local t = codex.layout.bar.data
	table.remove( t, bar_id )
	
	
	-- move category data (bar numbers can be negative)
	local cat_def = ArkInventory.CategoryGetSystemID( "SYSTEM_DEFAULT" )
	
	for cat, bar in pairs( codex.layout.category ) do
		if abs( bar ) > bar_id then
			if bar > 0 then
				ArkInventory.CategoryLocationSet( loc_id, cat, bar - 1 )
			else
				ArkInventory.CategoryLocationSet( loc_id, cat, bar + 1 )
			end
		elseif abs( bar ) == bar_id then
			if cat == cat_def then
				-- if the DEFAULT category was on the bar then move it to bar 1
				ArkInventory.CategoryLocationSet( loc_id, cat, 1 )
			else
				-- erase the location, setting it back to the same as DEFAULT
				ArkInventory.CategoryLocationSet( loc_id, cat, nil )
			end
		end
		
	end
	
	
	-- move bag assignment
	for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
		local z = codex.layout.bag[bag_id].bar
		if not z then
			-- do nothing
		elseif z > bar_id then
			codex.layout.bag[bag_id].bar = z - 1
		elseif z == bar_id then
			codex.layout.bag[bag_id].bar = nil
		end
	end
	
end

function ArkInventory.Frame_Bar_Move( loc_id, bar1, bar2 )
	
	--ArkInventory.Output( "loc [", loc_id, "], bar1 [", bar1, "], bar2 [", bar2, "]" )
	
	if not bar1 or not bar2 or bar1 == bar2 or bar1 < 1 or bar2 < 1 then return end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local t = codex.layout.bar.data
	
	local step = 1
	if bar2 < bar1 then
		step = -1
		table.insert( t, bar2, ArkInventory.Table.Copy( t[bar1] ) )
		table.remove( t, bar1 + 1 )
	else
		table.insert( t, bar2 + 1, ArkInventory.Table.Copy( t[bar1] ) )
		table.remove( t, bar1 )
	end
	
	
	-- move category data (bar numbers can be negative)
	for cat, bar in pairs( codex.layout.category ) do
		local z = abs( bar )
		if z == bar1 then
			ArkInventory.CategoryLocationSet( loc_id, cat, bar2 )
		elseif ( ( step == 1 ) and ( z > bar1 and z <= bar2 ) ) or ( ( step == -1 ) and ( z >= bar2 and z < bar1 ) ) then
			if bar > 0 then
				ArkInventory.CategoryLocationSet( loc_id, cat, bar - step )
			else
				ArkInventory.CategoryLocationSet( loc_id, cat, bar + step )
			end
		end
	end
	
	-- move bag assignment
	for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
		local z = codex.layout.bag[bag_id].bar
		if not z then
			-- do nothing
		elseif z == bar1 then
			codex.layout.bag[bag_id].bar = bar2
		elseif ( ( step == 1 ) and ( z > bar1 and z <= bar2 ) ) or ( ( step == -1 ) and ( z >= bar2 and z < bar1 ) ) then
			codex.layout.bag[bag_id].bar = z - step
		end
	end
	
end

function ArkInventory.Frame_Bar_Clear( loc_id, bar_id )
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	-- clear bar data
	codex.layout.bar.data[bar_id] = ArkInventory.Table.Copy( codex.layout.bar.data[0] )
	
	-- clear category
	for k, v in pairs( codex.layout.category ) do
		if v == bar_id then
			local cat_def = ArkInventory.CategoryGetSystemID( "SYSTEM_DEFAULT" )
			if k ~= cat_def then
				-- erase the location, setting it back to the same as DEFAULT
				ArkInventory.CategoryLocationSet( loc_id, k, nil )
			end
		end
	end
	
	-- clear bag assignment
	for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
		if codex.layout.bag[bag_id].bar == bar_id then
			codex.layout.bag[bag_id].bar = nil
		end
	end
	
end


function ArkInventory.Frame_Bar_Edit_OnLoad( frame )
	
	assert( frame, "frame is missing" )
	
	local framename = frame:GetName( )
	local loc_id, bar_id = string.match( framename, "^.-(%d+)ScrollContainerBar(%d+)" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bar_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	loc_id = tonumber( loc_id )
	bar_id = tonumber( bar_id )
	
	frame.ARK_Data = {
		loc_id = loc_id,
		bar_id = bar_id,
	}
	
	frame:SetID( bar_id )
	
	-- <START> because blizzard sometimes forgets to turn things off by default
	
	if frame.NewItemTexture then
		frame.NewItemTexture:Hide( )
	end
	
	if frame.BattlepayItemTexture then
		frame.BattlepayItemTexture:Hide( )
	end
	
	-- <END> because blizzard sometimes forgets to turn things off by default
	
	ArkInventory.MediaFrameDefaultFontSet( frame )
	
	ArkInventory.SetItemButtonTexture( frame, [[Interface\Buttons\WHITE8X8]] )
	SetItemButtonTextureVertexColor( frame, 0.5, 0.1, 0.1, 0.3 )
	
	frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )
	frame:RegisterForDrag( "LeftButton" )
	
end

function ArkInventory.Frame_Bar_Edit_OnClick( frame, button )
	
	--ArkInventory.Output( "OnClick( ", frame:GetName( ), ", ", button, " )" )
	
	local loc_id = frame.ARK_Data.loc_id
	local bar_id = frame.ARK_Data.bar_id
	
	if button then
		ArkInventory.MenuBarOpen( frame )
	end
	
end

local function helper_DragState( loc_id, bar_id, drag_type )
	if loc_id and bar_id and ArkInventory.Global.Options.OnDragType == drag_type and ArkInventory.Global.Options.OnDragLocation and ArkInventory.Global.Options.OnDragSourceBar then
		if drag_type == ArkInventory.Const.Move.Bar or ( drag_type == ArkInventory.Const.Move.Category and ArkInventory.Global.Options.OnDragSourceCategory ) then
			if ArkInventory.Global.Options.OnDragLocation == loc_id and ArkInventory.Global.Options.OnDragSourceBar ~= bar_id then
				return 1
			else
				if ArkInventory.Global.Options.OnDragLocation == loc_id then
					return 2
				else
					return 3
				end
			end
		end
	end
end

function ArkInventory.Frame_Bar_Edit_OnDragStart( frame )
	
--	local loc_id = frame.ARK_Data.loc_id
--	local bar_id = frame.ARK_Data.bar_id
--	ArkInventory.Output( "bar - on drag start: ", loc_id, ".", bar_id )
	
	ArkInventory.EditModeOnDragSet( ArkInventory.Const.Move.Bar, frame )
	
	ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
	
end

function ArkInventory.Frame_Bar_Edit_OnReceiveDrag( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local bar_id = frame.ARK_Data.bar_id
	
	-- drop bar here?
	local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Bar )
	if IsAltKeyDown( ) then
		
		-- alt: move all categories on bar (OnDragSourceBar) to this bar (bar_id)
		if state == 1 then
			
			local cat_tbl = ArkInventory.CategoryBarGetAssigned( loc_id, ArkInventory.Global.Options.OnDragSourceBar )
			if cat_tbl then
				
				for cat_id in pairs( cat_tbl ) do
					ArkInventory.CategoryLocationSet( loc_id, cat_id, bar_id )
				end
				
				ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
				
			end
			
		else
			--ArkInventory.OutputWarning( "category assignment aborted, its already on this bar" )
		end
		
	else
		
		-- normal: move dragged bar (OnDragSourceBar) in front of this one (bar_id)
		if state == 1 then
			ArkInventory.Frame_Bar_Move( loc_id, ArkInventory.Global.Options.OnDragSourceBar, bar_id )
			ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
			--ArkInventory.Output2( "dropped bar ", bar_id, " here" )
		elseif state == 2 then
			--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_SAME"], ArkInventory.Localise["MENU_BAR"] ) )
		elseif state == 3 then
			--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_OUTSIDE"], ArkInventory.Localise["MENU_BAR"] ) )
		end
		
	end
	
	
	-- drop category here?
	local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Category )
	if state == 1 then
		ArkInventory.CategoryLocationSet( loc_id, ArkInventory.Global.Options.OnDragSourceCategory, bar_id )
		ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
	elseif state == 2 then
		--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_SAME"], ArkInventory.Localise["CATEGORY"] ) )
	elseif state == 3 then
		--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_OUTSIDE"], ArkInventory.Localise["CATEGORY"] ) )
	end
	
	ArkInventory.EditModeOnDragSet( )
	
	ArkInventory.SetCursor( )
	
	ArkInventory.Frame_Bar_Edit_OnEnter( frame )
	
end

function ArkInventory.Frame_Bar_Edit_OnEnter( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local bar_id = frame.ARK_Data.bar_id
	
	ArkInventory.GameTooltipSetText( frame, string.format( ArkInventory.Localise["MENU_BAR_TITLE"], bar_id ) )
	GameTooltip:Show( )
	
	if IsMouseButtonDown( "LeftButton" ) and not GetCursorInfo( ) then
	
		-- is a bar is being dragged?
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Bar )
		if state == 1 then
			
			GameTooltip:AddLine( string.format( ArkInventory.Localise["FRAME_ONENTER_DRAG_BAR"], ArkInventory.Global.Options.OnDragSourceBar, bar_id ), nil, nil, nil, true )
			
			-- alt: move all categories on bar (OnDragSourceBar) to this bar
			GameTooltip:AddLine( string.format( ArkInventory.Localise["FRAME_ONENTER_DRAG_BAR_ALT"], ArkInventory.Global.Options.OnDragSourceBar, bar_id ), nil, nil, nil, true )
			
			GameTooltip:Show( )
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
			
		elseif state then
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.UnableDrag )
			
		end
		
		-- is a category is being dragged
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Category )
		if state == 1 then
			
			local cat = ArkInventory.Global.Category[ArkInventory.Global.Options.OnDragSourceCategory]
			GameTooltip:AddLine( string.format( ArkInventory.Localise["FRAME_ONENTER_DRAG_CATEGORY"], cat.fullname, bar_id ), nil, nil, nil, true )
			GameTooltip:Show( )
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
			
		elseif state then
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.UnableDrag )
			
		end
		
	end
	
end

function ArkInventory.Frame_Bar_Edit_OnLeave( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local bar_id = frame.ARK_Data.bar_id
	
	ArkInventory.GameTooltipHide( )
	
	if IsMouseButtonDown( "LeftButton" ) and not GetCursorInfo( ) then
		
		-- is a bar is being dragged?
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Bar )
		if state then
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
		end
		
		-- is a category is being dragged?
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Category )
		if state then
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
		end
		
	end
	
end


function ArkInventory.Frame_Bag_OnLoad( frame )
	
	local framename = frame:GetName( )
	local loc_id, bag_id = string.match( framename, "^.-(%d+)ScrollContainerBag(%d+)" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bag_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	loc_id = tonumber( loc_id )
	bag_id = tonumber( bag_id )
	
	frame.ARK_Data = {
		loc_id = loc_id,
		bag_id = bag_id,
		blizzard_id = ArkInventory.InternalIdToBlizzardBagId( loc_id, bag_id ),
		inv_id = ArkInventory.InventoryIDGet( loc_id, bag_id ),
	}
	
	frame:SetID( frame.ARK_Data.blizzard_id )
	
	-- pre-build a set amount of non tainted usable item slots for the backpack to cater for entering the world when in combat
	if loc_id == ArkInventory.Const.Location.Bag then
		ArkInventory.Global.Location[loc_id].maxSlot[bag_id] = ArkInventory.Const.Blizzard.MAX_CONTAINER_ITEMS
		for slot_id = 1, ArkInventory.Const.Blizzard.MAX_CONTAINER_ITEMS do
			local itemframename = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
			if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
				CreateFrame( "ItemButton", itemframename, frame, ArkInventory.Global.Location[loc_id].template or string.format( "ARKINV_TemplateButtonViewOnlyItem%s", WOW_PROJECT_ID ) )
			else
				CreateFrame( "Button", itemframename, frame, ArkInventory.Global.Location[loc_id].template or string.format( "ARKINV_TemplateButtonViewOnlyItem%s", WOW_PROJECT_ID ) )
			end
		end
	end
	
	ArkInventory.MediaFrameDefaultFontSet( frame )
	
	frame:Hide( )
	
end


function ArkInventory.SetTexture( obj, texture, r, g, b, a, c )
	
	if not obj then
		return
	end
	
	if texture then
		obj:Show( )
	else
		obj:Hide( )
		return
	end
	
	if texture == true then
		-- solid colour
		obj:SetColorTexture( r or 0, g or 0, b or 0, a or 1 )
	else
		if c then
			SetPortraitToTexture( obj, texture or ArkInventory.Const.Texture.Missing )
		else
			obj:SetTexture( texture or ArkInventory.Const.Texture.Missing )
			if r and g and b then
				obj:SetVertexColor( r, g, b )
			end
		end
	end
	
end

function ArkInventory.SetItemButtonTexture( frame, texture, r, g, b, a, c )
	
	if not frame then
		return
	end
	
	local obj = frame.icon
	
	if not obj then
		return
	end
	
	ArkInventory.SetTexture( obj, texture, r, g, b, a, c )
	
	--obj:SetTexCoord( 0.075, 0.935, 0.075, 0.935 )
	obj:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
	
end

function ArkInventory.SetItemButtonDesaturate( frame, desaturate, r, g, b )

	if not frame then
		return
	end
	
	local obj = frame.icon
	
	if not obj then
		return
	end
	
	local shaderSupported = obj:SetDesaturated( desaturate )
	
	if desaturate then
	
		if shaderSupported then
			return
		end
		
		if not r or not g or not b then
			r = 0.5
			g = 0.5
			b = 0.5
		end
		
	else

		if not r or not g or not b then
			r = 1.0
			g = 1.0
			b = 1.0
		end
		
	end
	
	obj:SetVertexColor( r, g, b )
	
end


function ArkInventory.Frame_Item_GetDB( frame )
	
	assert( frame.ARK_Data, " invalid frame" )
	
	--ArkInventory.Output( "frame=[", frame:GetName( ), "]" )
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	local slot_id = frame.ARK_Data.slot_id
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	--ArkInventory.Output( codex.player.current, " / ", codex.player.data.info.player_id )
	--ArkInventory.Output( "loc=[", loc_id, "], bag=[", bag_id, "], slot=[", slot_id, "]" )
	
	if slot_id == nil then
		return codex.player.data.location[loc_id].bag[bag_id]
	else
		return codex.player.data.location[loc_id].bag[bag_id].slot[slot_id]
	end
	
end

function ArkInventory.Frame_Item_OnLoad( frame, tainted )
	
	--ArkInventory.Output( frame:GetName( ), " / level = ", frame:GetFrameLevel( ) )
	
	ArkInventory.Frame_AddBorder( frame )
	
	local framename = frame:GetName( )
	local loc_id, bag_id, slot_id = string.match( framename, "^.-(%d+)ScrollContainerBag(%d+)Item(%d+)" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bag_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( slot_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	loc_id = tonumber( loc_id )
	bag_id = tonumber( bag_id )
	slot_id = tonumber( slot_id )
	
	frame:SetID( slot_id )
	
	frame.ARK_Data = {
		loc_id = loc_id,
		bag_id = bag_id,
		blizzard_id = ArkInventory.InternalIdToBlizzardBagId( loc_id, bag_id ),
		slot_id = slot_id,
		tainted = tainted,
		init = true,
	}
	
	-- because blizzard sometimes forgets to turn things off by default
	if frame.BattlepayItemTexture then
		frame.BattlepayItemTexture:Hide( )
	end
	
	if frame.NewItemTexture then
		frame.NewItemTexture:Hide( )
	end
	
	if tainted then
		ContainerFrameItemButton_OnLoad( frame )
	else
		if loc_id == ArkInventory.Const.Location.Bank and bag_id == 1 then
			BankFrameItemButton_OnLoad( frame )
		elseif loc_id == ArkInventory.Const.Location.Bank and bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
			ReagentBankFrameItemButton_OnLoad( frame )
		else
			ContainerFrameItemButton_OnLoad( frame )
		end
	end
	
	if tainted then
		frame.UpdateTooltip = ArkInventory.Frame_Item_OnEnter_Tainted
	else
		frame.UpdateTooltip = ArkInventory.Frame_Item_OnEnter
	end
	
	frame.locked = not not tainted
	
	if loc_id == ArkInventory.Const.Location.Vault then
		
		-- replace the split function
		frame.SplitStack = function( button, split )
			local tab_id = frame.ARK_Data.bag_id
			local slot_id = frame.ARK_Data.slot_id
			SplitGuildBankItem( tab_id, slot_id, split )
		end
		
	end
	
	
	-- adjust any fixed size blizzard subframes so they scale properly
	
	local obj = _G[string.format( "%s%s", frame:GetName( ), "IconQuestTexture" )]
	if obj then
		obj:ClearAllPoints( )
		obj:SetPoint( "TOPLEFT", frame, 1, -1 )
		obj:SetPoint( "BOTTOMRIGHT", frame, -1, 1 )
	end
	
	local obj = frame.NewItemTexture
	if obj then
		obj:ClearAllPoints( )
		obj:SetPoint( "TOPLEFT", frame, 1, -1 )
		obj:SetPoint( "BOTTOMRIGHT", frame, -1, 1 )
	end
	
	frame:Hide( )
	
	if not tainted then
		ArkInventory.API.ItemFrameLoaded( frame, loc_id, bag_id, slot_id  )
	end
	
	frame:RegisterForDrag( "LeftButton" )
	
end

function ArkInventory.Frame_Item_OnLoad_Tainted( frame )
	ArkInventory.Frame_Item_OnLoad( frame, true )
end

function ArkInventory.Frame_Item_OnLoad_ListEntry( frame )
	
	--ArkInventory.Output( frame:GetName( ), " / level = ", frame:GetFrameLevel( ) )
	
	local framename = frame:GetName( )
	
	local loc_id, bag_id = string.match( framename, "^.-Frame(%d+)ScrollContainerBar(%d+)" )
	if loc_id then return end
	
	local loc_id, bag_id, slot_id = string.match( framename, "^.-Frame(%d+)ScrollContainerBag(%d+)Item(%d+)" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bag_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( slot_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	loc_id = tonumber( loc_id )
	bag_id = tonumber( bag_id )
	slot_id = tonumber( slot_id )
	
	frame:SetID( slot_id )
	
	frame.ARK_Data = {
		loc_id = loc_id,
		bag_id = bag_id,
		blizzard_id = ArkInventory.InternalIdToBlizzardBagId( loc_id, bag_id ),
		slot_id = slot_id,
	}
	
	frame:Hide( )
	
end


function ArkInventory.Frame_Item_Update_Texture( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i and i.h then
		
		-- frame has an item
		frame.hasItem = 1
		
		-- item is readable?
		if loc_id ~= ArkInventory.Const.Location.Vault then
			if not ArkInventory.Global.Location[loc_id].isOffline then
				frame.readable = i.r
			end
		else
			frame.readable = nil
		end
		
		-- item texture
		local t = i.texture or ArkInventory.ObjectInfoTexture( i.h )
		ArkInventory.SetItemButtonTexture( frame, t )
	
	else
		
		frame.hasItem = nil
		frame.readable = nil
		
		ArkInventory.Frame_Item_Update_Empty( frame )
		
	end
	
	ArkInventory.Frame_Item_Update_New( frame, codex )
	
end

function ArkInventory.Frame_Item_Update_Quest( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = _G[frame:GetName( ) .. "IconQuestTexture"]
	if not obj then return end
	
	local obj2 = frame.ArkIconQuest or _G[frame:GetName( ) .. "ArkIconQuest"]
	if not obj2 then return end
	
	
	
	local loc_id = frame.ARK_Data.loc_id
	if ( loc_id == ArkInventory.Const.Location.Bag or loc_id == ArkInventory.Const.Location.Bank ) and not ArkInventory.Global.Location[loc_id].isOffline then
		
		local i = ArkInventory.Frame_Item_GetDB( frame )
		
		if i and i.h then
			
			local isQuestItem, questId, isActive = ArkInventory.CrossClient.GetContainerItemQuestInfo( frame.ARK_Data.blizzard_id, frame.ARK_Data.slot_id, i )
			
			if questId then
				
				local codex = codex or ArkInventory.GetLocationCodex( loc_id )
			
				if not isActive then
					
					if codex.style.slot.quest.border then
						ArkInventory.SetTexture( obj, TEXTURE_ITEM_QUEST_BORDER )
					else
						obj:Hide( )
					end
					
					if codex.style.slot.quest.bang then
						ArkInventory.SetTexture( obj2, [[Interface\AddOns\ArkInventory\Images\Overlay-Quest.tga]] )
					else
						obj2:Hide( )
					end
					
					return

				elseif isQuestItem then
					
					if codex.style.slot.quest.border then
						ArkInventory.SetTexture( obj, TEXTURE_ITEM_QUEST_BORDER )
						obj2:Hide( )
						return
					end
					
				end
				
			end
			
		end
		
	end
	
	obj:Hide( )
	obj2:Hide( )
	
end

function ArkInventory.GetAnchorPoint( anchor, default, offset )
	
	local offset = offset or 0
	
	if anchor == ArkInventory.Const.Anchor.Default then
		anchor = default
	end
	
	if anchor == ArkInventory.Const.Anchor.Center then
		return "CENTER", 0, 0
	elseif anchor == ArkInventory.Const.Anchor.Top then
		return "TOP", 0, offset * -1
	elseif anchor == ArkInventory.Const.Anchor.TopRight then
		return "TOPRIGHT", offset * -1, offset * -1
	elseif anchor == ArkInventory.Const.Anchor.Right then
		return "RIGHT", offset * -1, 0
	elseif anchor == ArkInventory.Const.Anchor.BottomRight then
		return "BOTTOMRIGHT", offset * -1, offset
	elseif anchor == ArkInventory.Const.Anchor.Bottom then
		return "BOTTOM", 0, offset
	elseif anchor == ArkInventory.Const.Anchor.BottomLeft then
		return "BOTTOMLEFT", offset, offset
	elseif anchor == ArkInventory.Const.Anchor.Left then
		return "LEFT", offset, 0
	elseif anchor == ArkInventory.Const.Anchor.TopLeft then
		return "TOPLEFT", offset, offset * -1
	else
		ArkInventory.OutputError( "code failure - unknown anchor point id=[", anchor, "]" )
	end
	
end

function ArkInventory.Frame_Item_Update_StatusIconUpgrade( frame, codex )
	
	if not ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then return end
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.UpgradeIcon
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	if ( loc_id == ArkInventory.Const.Location.Bag or loc_id == ArkInventory.Const.Location.Bank ) and not ArkInventory.Global.Location[loc_id].isOffline then
		
		local i = ArkInventory.Frame_Item_GetDB( frame )
		if i and i.h then
			
			local codex = codex or ArkInventory.GetLocationCodex( loc_id )
			
			if codex.style.slot.upgradeicon.show then
				ContainerFrameItemButton_UpdateItemUpgradeIcon( frame )
				return
			end
			
		end
		
	end
	
	obj:Hide( )
	
end

function ArkInventory.Frame_Item_Update_StatusIconUpgrade_Anchor( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.UpgradeIcon
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	
	if codex.style.slot.upgradeicon.show then
		local anchorpoint, x, y = ArkInventory.GetAnchorPoint( codex.style.slot.upgradeicon.anchor, ArkInventory.Const.Anchor.BottomLeft, -3 )
		obj:ClearAllPoints( )
		obj:SetPoint( anchorpoint, frame, x, y )
	end
	
end

function ArkInventory.Frame_Item_Update_StatusIconJunk( frame, codex )
	
	--if not ArkInventory.Global.Junk.process then return end
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.JunkIcon
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	if ( loc_id == ArkInventory.Const.Location.Bag or loc_id == ArkInventory.Const.Location.Bank ) and not ArkInventory.Global.Location[loc_id].isOffline then
		
		local i = ArkInventory.Frame_Item_GetDB( frame )
		if i and i.h then
			
			local codex = codex or ArkInventory.GetLocationCodex( loc_id )
			
			if codex.style.slot.junkicon.show then
				
				local isJunk, vendorPrice = ArkInventory.JunkCheck( i, codex )
				
				if isJunk then
					obj:Show( )
					return
				end
				
			end
			
		end
		
	end
	
	obj:Hide( )
	
end

function ArkInventory.Frame_Item_Update_StatusIconJunk_Anchor( frame, codex )
	
	--if not ArkInventory.Global.Junk.process then return end
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.JunkIcon
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	
	if codex.style.slot.junkicon.show then
		local anchorpoint, x, y = ArkInventory.GetAnchorPoint( codex.style.slot.junkicon.anchor, ArkInventory.Const.Anchor.TopRight, -3 )
		obj:ClearAllPoints( )
		obj:SetPoint( anchorpoint, frame, x, y )
	end
	
end

function ArkInventory.Frame_Item_Update_Overlay( frame, codex )
	
	if not ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then return end
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.IconOverlay or _G[frame:GetName( ).."IconOverlay"]
	if not obj then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	if i and i.h then
		
		local loc_id = frame.ARK_Data.loc_id
		local codex = codex or ArkInventory.GetLocationCodex( loc_id )
		
		-- source = ItemButtonTemplate.lua / SetItemButtonQuality
		
		if codex.style.slot.overlay.azerite.show and C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID( i.h ) then
			obj:SetAtlas( "AzeriteIconFrame" )
			obj:Show( )
			return
		end
		
	end
	
	obj:Hide( )
	
end

function ArkInventory.Frame_Item_Update_StatusIconOverlay( frame, codex )
	
	-- only one overlay icon can exist at this point
	
	local obj = frame.ArkIconOverlay or _G[frame:GetName( ).."ArkIconOverlay"]
	if not obj then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	if i and i.h then
		
		local loc_id = frame.ARK_Data.loc_id
		local codex = codex or ArkInventory.GetLocationCodex( loc_id )
		
		if codex.style.slot.overlay.nzoth.show and ArkInventory.CrossClient.IsCorruptedItem( i.h ) then
			ArkInventory.SetTexture( obj, [[Interface\AddOns\ArkInventory\Images\Overlay-Corrupted.tga]] )
			obj:Show( )
			return
		end
		
	end
	
	obj:Hide( )
	
end

function ArkInventory.Frame_Item_Update_StatusIconOverlay_Anchor( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.ArkIconOverlay or _G[frame:GetName( ).."ArkIconOverlay"]
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	
	if codex.style.slot.overlay.nzoth.show then
		local anchorpoint, x, y = ArkInventory.GetAnchorPoint( codex.style.slot.overlay.nzoth.anchor, ArkInventory.Const.Anchor.BottomRight, 1 )
		obj:ClearAllPoints( )
		obj:SetPoint( anchorpoint, frame, x, y )
	end
	
end

function ArkInventory.ItemTransmogState( h, sb, loc_id, rule_primary, rule_secondary )
	
--	if h and sb == ArkInventory.Const.Bind.Pickup and not ArkInventory.Global.Location[loc_id].isOffline then
--		return random( 4 )
--	end
	
	if not C_TransmogCollection then return end
	
	if h and sb == ArkInventory.Const.Bind.Equip and not ArkInventory.Global.Location[loc_id].isOffline then
		
		local visualID, sourceID = C_TransmogCollection.GetItemInfo( h )
		if visualID and sourceID then
			
			--ArkInventory.Output( h, " ", visualID, " / ", sourceID )
			
			-- this item has an appearance
			
--			local codex = ArkInventory.GetLocationCodex( loc_id )
--			if codex.style.slot.transmogicon.show or rule_primary then
			if ArkInventory.db.option.transmog.enable or rule_primary then
				
				local sourceMe = { } -- sources i can collect
				local sourceOther = { } -- sources i cannot collect
				
				local itemInfo = { GetItemInfoInstant( h ) }
				local itemSubType = itemInfo[7] or -2
				local invType = itemInfo[4] or -2
				
				local source = C_TransmogCollection.GetAllAppearanceSources( visualID )
				for _, id in pairs( source ) do
					
					local isInfoReady, canCollect = C_TransmogCollection.PlayerCanCollectSource( id )
					if isInfoReady then
						
						local info = C_TransmogCollection.GetSourceInfo( id )
						
						if canCollect then
							
							sourceMe[id] = info
							
						else
							
							local itemInfo = { GetItemInfoInstant( info.itemID ) }
							
							if itemSubType == itemInfo[7] then
								-- only add sources that match the sub type of the item
								sourceOther[id] = info
							end
							
						end
						
					end
					
				end
				
				
				local collectedMe = false
				local collectedMeFromThisItem = false
				
				if sourceMe[sourceID] then
					
					-- this character can collect this appearance
					-- check if the appearance hasn't been collected
					
					for id, info in pairs( sourceMe ) do
						if info.isCollected then
							collectedMe = true
							if id == sourceID then
								collectedMeFromThisItem = true
							end
						end
					end
					
					if not collectedMe then
						
						--ArkInventory.Output( h, " unknown, learn it" )
						
						-- can be learnt by this character
						return ArkInventory.Const.Transmog.State.CanLearnMyself
						
					end
					
				end
				
				
				local collectedOther = false
				local collectedOtherFromThisItem = false
				
				if sourceOther[sourceID] then
					
					-- cant be learnt by this character, another character may be able to collect it
					
					for id, info in pairs( sourceOther ) do
						if info.isCollected then
							collectedOther = true
							if id == sourceID then
								collectedOtherFromThisItem = true
							end
						end
					end
					
					if not collectedOther then
						
						--ArkInventory.Output( h, " unknown, send to another character" )
						
						-- can be learnt by another character
						return ArkInventory.Const.Transmog.State.CanLearnOther
						
					end
					
				end
				
				--if codex.style.slot.transmogicon.alternative or rule_secondary then
				if ArkInventory.db.option.transmog.secondary or rule_secondary then
					
					if collectedMe and not collectedMeFromThisItem then
						
						--ArkInventory.Output( h, " learnt, from another item" )
						
						-- already known on this character but from another item, learn this one as well?
						return ArkInventory.Const.Transmog.State.CanLearnMyselfSecondary
						
					end
					
					if collectedOther and not collectedOtherFromThisItem then
						
						--ArkInventory.Output( h, " learnt, from another item, send to another character" )
						
						-- already known on another character but from another item, learn this one as well?
						return ArkInventory.Const.Transmog.State.CanLearnOtherSecondary
						
					end
					
				end
				
			end
			
		end
		
	end
	
	return false
	
end

function ArkInventory.Frame_Item_Update_StatusIconTransmog( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.ArkIconTransmog or _G[frame:GetName( ).."ArkIconTransmog"]
	if not obj then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i and i.h then
		
		local state	= ArkInventory.ItemTransmogState( i.h, i.sb, i.loc_id )
		if state then
			
			local info = ArkInventory.db.option.transmog.icon[state]
			local file = ArkInventory.Lib.SharedMedia:Fetch( ArkInventory.Const.Transmog.SharedMediaType, info.style )
			ArkInventory.SetTexture( obj, file, info.colour.r, info.colour.g, info.colour.b, info.colour.a )
			return
			
		end
		
	end
	
	obj:Hide( )
	
end

function ArkInventory.Frame_Item_Update_StatusIconTransmog_Anchor( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.ArkIconTransmog or _G[frame:GetName( ).."ArkIconTransmog"]
	if not obj then return end
	
	if ArkInventory.db.option.transmog.enable then
		local anchorpoint, x, y = ArkInventory.GetAnchorPoint( ArkInventory.db.option.transmog.anchor, ArkInventory.Const.Anchor.BottomLeft, 1 )
		obj:ClearAllPoints( )
		obj:SetPoint( anchorpoint, frame, x, y )
	end
	
end

function ArkInventory.Frame_Item_Update_Count( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.Count or _G[frame:GetName( ).."Count"]
	if not obj then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	frame.count = 0
	
	if i and i.h then
		
		local codex = codex or ArkInventory.GetLocationCodex( i.loc_id )
		if codex.style.slot.itemcount.show and not codex.style.window.list then
			
			local osd = ArkInventory.ObjectStringDecode( i.h )
			local count = i.count or 0
			frame.count = count
			
			if osd.class == "battlepet" then
				count = osd.level
			end
			
			local more = 0
			
			if codex.style.slot.compress.count > 0 and codex.style.slot.compress.identify and not ArkInventory.Global.Options.ShowHiddenItems then
				
				local info = ArkInventory.ObjectInfoArray( i.h )
				if info.stacksize > 1 then
					
					local loc_id = frame.ARK_Data.loc_id
					local player = ArkInventory.GetPlayerInfo( )
					local search_id = ArkInventory.ObjectIDCount( i.h )
					
					if not ( ArkInventory.Global.Cache.ItemCountRaw[search_id] and ArkInventory.Global.Cache.ItemCountRaw[search_id][player.player_id] ) then
						ArkInventory.ObjectCountGetRaw( search_id )
					end
					
					if ArkInventory.Global.Cache.ItemCountRaw[search_id] and ArkInventory.Global.Cache.ItemCountRaw[search_id][player.player_id] and ArkInventory.Global.Cache.ItemCountRaw[search_id][player.player_id].location[loc_id] then
						more = ArkInventory.Global.Cache.ItemCountRaw[search_id][player.player_id].location[loc_id].s
						if more <= codex.style.slot.compress.count then
							more = 0
						end
					end
					
				end
				
			end
			
			if osd.class == "battlepet" or count > 1 or more > 0 or ( frame.isBag and count > 0 ) then
				
				if count > ( frame.maxDisplayCount or 9999 ) then
					count = "***"
				end
				
				if more > 0 then
					if codex.style.slot.compress.position == 1 then
						count = "+" .. count
					else
						count = count .. "+"
					end
				end
				
				obj:SetText( count )
				
				local colour = codex.style.slot.itemcount.colour
				obj:SetTextColor( colour.r, colour.g, colour.b )
				
				ArkInventory.MediaObjectFontSet( obj, nil, codex.style.slot.itemcount.font.height )
				
				obj:Show( )
				
				return
				
			end
			
		end
		
	end
	
	obj:Hide( )
	
end

function ArkInventory.Frame_Item_Update_Count_Anchor( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.Count or _G[frame:GetName( ).."Count"]
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	
	if codex.style.slot.itemcount.show then
		local anchorpoint, x, y = ArkInventory.GetAnchorPoint( codex.style.slot.itemcount.anchor, ArkInventory.Const.Anchor.BottomRight, 1 )
		obj:ClearAllPoints( )
		obj:SetPoint( anchorpoint, frame, x, y )
	end
	
end

function ArkInventory.Frame_Item_Update_Level( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.ArkLevel
	if not obj then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i and i.h then
		
		local stock = 0
		local codex = codex or ArkInventory.GetLocationCodex( i.loc_id )
		
		if codex.style.slot.itemlevel.show then
			
			local info = ArkInventory.ObjectInfoArray( i.h, i )
			
			if info.class == "item" then
				
				-- equipable items
				if info.equiploc ~= "" and info.equiploc ~= "INVTYPE_BAG" and info.ilvl >= codex.style.slot.itemlevel.min then
					stock = info.ilvl
				end
				
				-- artifact relics
				if info.itemtypeid == ArkInventory.Const.ItemClass.GEM and info.itemsubtypeid == ArkInventory.Const.ItemClass.GEM_ARTIFACTRELIC then
					stock = info.ilvl
				end
				
				-- artifact power and ancient mana
				if info.itemtypeid == ArkInventory.Const.ItemClass.CONSUMABLE and info.itemsubtypeid == ArkInventory.Const.ItemClass.CONSUMABLE_OTHER then
					
					stock = ArkInventory.TooltipExtractValueArtifactPower( i.h ) or 0
					
					if stock == 0 then
						stock = ArkInventory.TooltipExtractValueAncientMana( i.h ) or 0
					end
					
				end
				
			elseif info.class == "keystone" then
				
				stock = info.ilvl
				
			end
			
			if stock > 0 then
				
				if stock > ( frame.maxDisplayCount or 9999 ) then
					
					if stock >= 1000000000000 then
						stock = string.format( "%.0f%s", stock / 1000000000000, ArkInventory.Localise["WOW_ITEM_TOOLTIP_10P12S"] )
					elseif stock >= 1000000000 then
						stock = string.format( "%.0f%s", stock / 1000000000, ArkInventory.Localise["WOW_ITEM_TOOLTIP_10P9S"] )
					elseif stock >= 1000000 then
						stock = string.format( "%.0f%s", stock / 1000000, ArkInventory.Localise["WOW_ITEM_TOOLTIP_10P6S"] )
					elseif stock > 9999 then
						stock = string.format( "%.0f%s", stock / 1000, ArkInventory.Localise["WOW_ITEM_TOOLTIP_10P3S"] )
					else
						stock = string.format( "%.0f", stock )
					end
					
				else
					
					stock = string.format( "%.0f", stock )
					
				end
				
				obj:SetText( stock )
				
				if codex.style.slot.itemlevel.quality then
					local colour = { ArkInventory.GetItemQualityColor( info.q ) }
					obj:SetTextColor( colour[1], colour[2], colour[3] )
				else
					local colour = codex.style.slot.itemlevel.colour
					obj:SetTextColor( colour.r, colour.g, colour.b )
				end
				
				ArkInventory.MediaObjectFontSet( obj, nil, codex.style.slot.itemlevel.font.height )
				
				obj:Show( )
				
				return
				
			end
			
		end
		
	end
	
	obj:Hide( )
	
end

function ArkInventory.Frame_Item_Update_Level_Anchor( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.ArkLevel
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	
	if codex.style.slot.itemlevel.show then
		local anchorpoint, x, y = ArkInventory.GetAnchorPoint( codex.style.slot.itemlevel.anchor, ArkInventory.Const.Anchor.TopLeft, 1 )
		obj:ClearAllPoints( )
		obj:SetPoint( anchorpoint, frame, x, y )
	end
	
end

function ArkInventory.Frame_Item_Update_Fade( frame, codex, changer )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	local alpha = 1
	
	if ArkInventory.Global.Location[loc_id].isOffline then
		if codex.style.slot.offline.fade then
			alpha = 0.6
		end
	end
	
	if loc_id == ArkInventory.Const.Location.Vault and changer then
		if codex.player.data.option[loc_id].bag[bag_id].display == false then
			alpha = 0.4
		end
	end
	
	frame:SetAlpha( alpha )
	
end

function ArkInventory.Frame_Item_Update_Border( frame, codex, changer )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	--ArkInventory.Output( frame.ARK_Data.loc_id, ".", frame.ARK_Data.bag_id, ".", frame.ARK_Data.slot_id )
	
	local obj = frame.ArkBorder
	if obj then
		
		local loc_id = frame.ARK_Data.loc_id
		local codex = codex or ArkInventory.GetLocationCodex( loc_id )
		
		if codex.style.slot.border.style ~= ArkInventory.Const.Texture.BorderNone then
			
			local border = codex.style.slot.border.style or ArkInventory.Const.Texture.BorderDefault
			local file = ArkInventory.Lib.SharedMedia:Fetch( ArkInventory.Lib.SharedMedia.MediaType.BORDER, border )
			local size = codex.style.slot.border.size or ArkInventory.Const.Texture.Border[ArkInventory.Const.Texture.BorderDefault].size
			local offset = codex.style.slot.border.offset or ArkInventory.Const.Texture.Border[ArkInventory.Const.Texture.BorderDefault].offsetdefault.slot
			local scale = codex.style.slot.border.scale or 1
			local r, g, b = ArkInventory.GetItemQualityColor( ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_POOR )
			local a = 0.6
			
			local i = ArkInventory.Frame_Item_GetDB( frame )
			
			if i and i.h then
				
				if codex.style.slot.border.rarity then
					if ( i.q or ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_POOR ) >= ( codex.style.slot.border.raritycutoff or ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_POOR ) then
						r, g, b = ArkInventory.GetItemQualityColor( i.q or ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_POOR )
						if not frame.locked then
							a = 1
						end
					end
				end
				
			else
				
				if codex.style.slot.empty.border then
					
					if changer then
						
						r, g, b = ArkInventory.GetItemQualityColor( ArkInventory.Const.Blizzard.LE_ITEM_QUALITY_ARTIFACT )
						
					else
						
						local bag_id = frame.ARK_Data.bag_id
						local bt = codex.player.data.location[loc_id].bag[bag_id].type
						
						local c = codex.style.slot.data[bt].colour
						r, g, b = c.r, c.g, c.b
						
					end
					
				end
				
			end
			
			ArkInventory.Frame_Border_Paint( obj, file, size, offset, scale, r, g, b, a )
			
			obj:Show( )
			
		else
		
			obj:Hide( )
			
		end
		
	end
	
end

function ArkInventory.Frame_Item_Update_List( frame, show )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.ArkListEntry
	if obj then
		
		if show then
			
			ArkInventory.Frame_Item_Update_Border( obj )
			ArkInventory.Frame_Item_Update_List_Text( obj )
			
		else
			
			obj:Hide( )
			
		end
		
	end
	
end

function ArkInventory.Frame_Item_Update_List_Text( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if frame.Text1 and frame.Text2 then
		
		local txt1 = ""
		local txt2 = ""
		local txt3 = ""
		
		if i then
			
			local loc_id = frame.ARK_Data.loc_id
			local osd = ArkInventory.ObjectStringDecode( i.h )
			
			if osd.class == "currency" then
				
				local info = ArkInventory.Collection.Currency.GetByID( osd.id )
				if not info then
					
					txt1 = string.format( "no currency data found for [%s]", osd.id or "nil" )
					
				else
					
					txt1 = info.name
					
					if info.maxQuantity > 0 then
						txt2 = string.format( CURRENCY_TOTAL_CAP, "", FormatLargeNumber( info.quantity ), FormatLargeNumber( info.maxQuantity ) )
					else
						txt2 = string.format( CURRENCY_TOTAL, "", FormatLargeNumber( info.quantity ) )
					end
					
					if info.maxWeeklyQuantity > 0 then
						local weekly = string.format( CURRENCY_WEEKLY_CAP, "", FormatLargeNumber( info.quantityEarnedThisWeek ), FormatLargeNumber( info.maxWeeklyQuantity ) )
						txt2 = string.format( "%s\n%s", weekly, txt2 )
					end
					
				end
				
			elseif osd.class == "reputation" then
				
				local info = ArkInventory.Collection.Reputation.GetByID( osd.id )
				if not info then
					txt1 = string.format( "no reputation data found for [%s]", osd.id or "nil" )
				else
					txt1 = info.name
					txt2 = ArkInventory.Collection.Reputation.LevelText( osd.id, ArkInventory.Const.Reputation.Style.TwoLines )
				end
				
			else
				
				txt1 = ArkInventory.ObjectInfoName( i.h )
				
			end
			
		end
		
		if txt1 == "" then
			frame.Text1:SetText( txt1 )
			frame.Text1:Hide( )
		else
			frame.Text1:SetText( txt1 )
			frame.Text1:Show( )
		end
			
		if txt2 == "" then
			frame.Text2:SetText( txt1 )
			frame.Text2:Hide( )
		else
			frame.Text2:SetText( txt2 )
			frame.Text2:SetTextColor( 1, 1, 1 )
			frame.Text2:Show( )
		end
		
	end
	
end

function ArkInventory.Frame_Item_Update_New( frame, codex, clear )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	local blizzard_id = frame.ARK_Data.blizzard_id
	local slot_id = frame.ARK_Data.slot_id
	
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	local isNewItem = false
	local isBattlePayItem = false
	if loc_id == ArkInventory.Const.Location.Bag and not ArkInventory.Global.Location[loc_id].isOffline and not clear then
		isNewItem = C_NewItems.IsNewItem( blizzard_id, slot_id )
		isBattlePayItem = IsBattlePayItem( blizzard_id, slot_id )
	end
	
	local BattlepayItemTexture = frame.BattlepayItemTexture
	local NewItemTexture = frame.NewItemTexture
	local flash = frame.flashAnim
	local newitemglowAnim = frame.newitemglowAnim
	
	local obj = frame.ArkItemAge or _G[frame:GetName( ).."ArkItemAge"]
	if obj then
		
		if i and i.h then
			
			if codex.style.slot.age.show then
				
				local cutoff = codex.style.slot.age.cutoff
				local age, age_text = ArkInventory.ItemAgeGet( i.age )
				
				if age and ( cutoff == 0 or age <= cutoff ) then
					
					local anchorpoint, x, y = ArkInventory.GetAnchorPoint( codex.style.slot.age.anchor, ArkInventory.Const.Anchor.Center, 1 )
					
					obj:ClearAllPoints( )
					obj:SetPoint( anchorpoint, frame, x, y )
					
					local colour = codex.style.slot.age.colour
					
					obj:SetText( age_text )
					obj:SetTextColor( colour.r, colour.g, colour.b )
					ArkInventory.MediaObjectFontSet( obj, nil, codex.style.slot.age.font.height )
					obj:Show( )
					
				else
					
					obj:Hide( )
					
					if isNewItem then
						C_NewItems.RemoveNewItem( blizzard_id, slot_id )
					end
					
				end
				
			else
				
				obj:Hide( )
				
			end
			
		else
			
			obj:Hide( )
			
		end
		
	end
	
	if not isNewItem then
		
		if flash:IsPlaying( ) or newitemglowAnim:IsPlaying( ) then
			flash:Stop( )
			newitemglowAnim:Stop( )
		end
		
		BattlepayItemTexture:Hide( )
		NewItemTexture:Hide( )
		
	else
		
		if isBattlePayItem then
			
			NewItemTexture:Hide( )
			BattlepayItemTexture:Show( )
			
		else
			
			BattlepayItemTexture:Hide( )
			
			if ArkInventory.db.option.newitemglow.enable then
				local c = ArkInventory.db.option.newitemglow.colour
				ArkInventory.SetTexture( frame.NewItemTexture, true, c.r, c.g, c.b, c.a )
				NewItemTexture:Show( )
			else
				NewItemTexture:Hide( )
			end
			
		end
		
		if ArkInventory.db.option.newitemglow.enable and not flash:IsPlaying( ) and not newitemglowAnim:IsPlaying( ) then
			flash:Play( )
			newitemglowAnim:Play( )
		end
		
	end
	
end


function ArkInventory.Frame_Item_Update_Empty( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i and not i.h then
		
		local codex = ArkInventory.GetLocationCodex( loc_id )
		local bt = codex.player.data.location[loc_id].bag[bag_id].type
	
		-- slot background
		if codex.style.slot.empty.icon then
		
			-- icon
			local texture = ArkInventory.Const.Texture.Empty.Item
			
			if loc_id == ArkInventory.Const.Location.Wearing then
				-- wearing empty slot icons
				local a, b = GetInventorySlotInfo( ArkInventory.Const.InventorySlotName[i.slot_id] )
				--ArkInventory.Output( "id=[", i.slot_id, "], name=[", ArkInventory.Const.InventorySlotName[i.slot_id], "], texture=[", b, "]" )
				texture = b or texture
			else
				texture = ArkInventory.Const.Slot.Data[bt].texture or texture
			end
			
			ArkInventory.SetItemButtonTexture( frame, texture )
			
		else
			
			-- solid colour
			local colour = codex.style.slot.data[bt].colour
			colour.a = codex.style.slot.empty.alpha
			ArkInventory.SetItemButtonTexture( frame, true, colour.r, colour.g, colour.b, colour.a )
			
		end
		
	end
	
end
	
function ArkInventory.Frame_Item_Empty_Paint_All( )
	
	for loc_id, loc_data in pairs( ArkInventory.Global.Location ) do
		if loc_data.canView then
			
			for bag_id in pairs( loc_data.Bags ) do
				
				for slot_id = 1, ArkInventory.Global.Location[loc_id].maxSlot[bag_id] or 0 do
					
					local objname, obj = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
					ArkInventory.Frame_Item_Update_Empty( obj )
					ArkInventory.Frame_Item_Update_Border( obj )
					
				end
				
			end
			
		end
	end
	
end

function ArkInventory.Frame_Item_OnEnter( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	
	-- edit mode tooltip
	if ArkInventory.Global.Mode.Edit and IsMouseButtonDown( "LeftButton" ) and not GetCursorInfo( ) then
		
		local processed = false
		
		local cat_id = ArkInventory.ItemCategoryGet( i )
		local bar_id = ArkInventory.CategoryLocationGet( loc_id, cat_id )
		
		ArkInventory.GameTooltipSetText( frame, string.format( ArkInventory.Localise["MENU_BAR_TITLE"], bar_id ) )
		GameTooltip:Show( )
		
		-- is a bar is being dragged
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Bar )
		if state == 1 then
			
			GameTooltip:AddLine( string.format( ArkInventory.Localise["FRAME_ONENTER_DRAG_BAR"], ArkInventory.Global.Options.OnDragSourceBar, bar_id ), nil, nil, nil, true )
			
			-- alt: move all categories on bar (OnDragSourceBar) to this bar
			GameTooltip:AddLine( string.format( ArkInventory.Localise["FRAME_ONENTER_DRAG_BAR_ALT"], ArkInventory.Global.Options.OnDragSourceBar, bar_id ), nil, nil, nil, true )
			
			GameTooltip:Show( )
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
			processed = true
			
		elseif state then
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.UnableDrag )
			processed = true
			
		end
		
		-- is a category is being dragged?
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Category )
		if state == 1 then
			
			local cat = ArkInventory.Global.Category[ArkInventory.Global.Options.OnDragSourceCategory]
			GameTooltip:AddLine( string.format( ArkInventory.Localise["FRAME_ONENTER_DRAG_CATEGORY"], cat.fullname, bar_id ) )
			
			-- alt: assign the category from this item (look it up) to the item being dropped here (di)
			local i = ArkInventory.Frame_Item_GetDB( frame )
			local cat_id = ArkInventory.ItemCategoryGet( i )
			local cat_type, cat_code = ArkInventory.CategoryCodeSplit( cat_id )
			if cat_type ~= ArkInventory.Const.Category.Type.Rule then
				local cat = ArkInventory.Global.Category[cat_id]
				local di = ArkInventory.Frame_Item_GetDB( ArkInventory.Global.Options.OnDragSourceFrame )
				--local info = ArkInventory.ObjectInfoArray( di.h, di )
				GameTooltip:AddLine( string.format( ArkInventory.Localise["FRAME_ONENTER_DRAG_CATEGORY_ALT"], cat.fullname, di.h ), nil, nil, nil, true )
			end
			
			GameTooltip:Show( )
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
			processed = true
			
		elseif state then
			
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.UnableDrag )
			processed = true
			
		end
		
		if processed == true then return end
		
	end
	
	
	
	if not ArkInventory.db.option.tooltip.show then return end
	
	-- normal item tooltip
	local blizzard_id = frame.ARK_Data.blizzard_id
	local reset = true
	
	if i and i.h then
		
		if ArkInventory.Global.Location[loc_id].isOffline then
			
			ArkInventory.GameTooltipSetHyperlink( frame, i.h )
			
		elseif blizzard_id == BANK_CONTAINER or blizzard_id == REAGENTBANK_CONTAINER then
			
			BankFrameItemButton_OnEnter( frame )
			reset = false
			
		elseif loc_id == ArkInventory.Const.Location.Pet then
			
			ArkInventory.GameTooltipSetPosition( frame )
			ArkInventory.TooltipCustomBattlepetShow( GameTooltip, i.h, i )
			CursorUpdate( frame )
			return
			
		elseif loc_id == ArkInventory.Const.Location.Toybox then
			
			ArkInventory.GameTooltipSetPosition( frame )
			GameTooltip:SetToyByItemID( i.item )
			
		elseif loc_id == ArkInventory.Const.Location.Heirloom then
			
			ArkInventory.GameTooltipSetPosition( frame )
			GameTooltip:SetHeirloomByItemID( i.item )
			
		elseif loc_id == ArkInventory.Const.Location.Currency then
			
			ArkInventory.GameTooltipSetPosition( frame )
			GameTooltip:SetCurrencyByID( i.id )
			
		elseif loc_id == ArkInventory.Const.Location.Bag or loc_id == ArkInventory.Const.Location.Bank then
			
			ContainerFrameItemButton_OnEnter( frame )
			reset = false
			
		else
			
			ArkInventory.GameTooltipSetHyperlink( frame, i.h )
			
		end
		
		
		if IsModifiedClick( "DRESSUP" ) then
			
			ShowInspectCursor( )
			
		elseif IsModifiedClick( "COMPAREITEMS" ) or ArkInventory.CrossClient.GetCVarBool( "alwaysCompareItems" ) then
			
			GameTooltip_ShowCompareItem( )
			
		elseif reset then
			
			ArkInventory.SetCursor( )
			
		end
		
	else
		
		GameTooltip:Hide( )
		ArkInventory.SetCursor( )
		
	end
	
end

function ArkInventory.Frame_Item_OnLeave( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	
	GameTooltip:Hide( )
	
	if ArkInventory.Global.Mode.Edit and IsMouseButtonDown( "LeftButton" ) and not GetCursorInfo( ) then
		
		local i = ArkInventory.Frame_Item_GetDB( frame )
		local cat_id = ArkInventory.ItemCategoryGet( i )
		local bar_id = ArkInventory.CategoryLocationGet( loc_id, cat_id )
		
		
		-- is a bar is being dragged
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Bar )
		if state then
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
		end
		
		-- is a category is being dragged?
		local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Category )
		if state  then
			ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
		end
		
	end
	
end

function ArkInventory.Frame_Item_OnEnter_Tainted( frame )
	
	if not ArkInventory.db.option.tooltip.show then return end
	
	ArkInventory.GameTooltipSetText( frame, ArkInventory.Localise["BUGFIX_TAINTED_ALERT_MOUSEOVER_DESC"], 1.0, 0.1, 0.1 )

end

function ArkInventory.Frame_Item_PreClick( frame, button )
	
	if InCombatLockdown( ) then return end
	
	-- do not use cached/stored data here, pull it from the API
	
	if not ArkInventory.Global.Mode.Edit then
		if ArkInventory.Global.Mode.Bank then
			if frame.ARK_Data.loc_id == ArkInventory.Const.Location.Bag then
				if button == "RightButton" and not IsModifiedClick( ) then
					
					-- slot has an item
					local itemID = select( 10, GetContainerItemInfo( frame.ARK_Data.blizzard_id, frame.ARK_Data.slot_id ) )
					if itemID then
						
						-- reagent bank is unlocked and has a free slot
						if ArkInventory.CrossClient.IsReagentBankUnlocked( ) and GetContainerNumFreeSlots( REAGENTBANK_CONTAINER ) > 0 then
							
							-- its a crafting reagent
							local craft = select( 17, GetItemInfo( itemID ) )
							if craft then
								--ArkInventory.Output( "PreClick: sending item to reagent bank instead" )
								return UseContainerItem( frame.ARK_Data.blizzard_id, frame.ARK_Data.slot_id, nil, true )
							end
							
						end
						
					end
					
				end
			end
		end
	end
	
end

function ArkInventory.Frame_Item_PostClick( frame, button )
	
end

function ArkInventory.Frame_Item_OnMouseUp( frame, button )
	
	if ArkInventory.Global.Mode.Edit then
		ArkInventory.MenuItemOpen( frame )
		return
	end
	
	
	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if not i then return end
	
	if ArkInventory.Global.Location[loc_id].isOffline or frame.ARK_Data.tainted then
		
		if HandleModifiedItemClick( i.h ) then return end
		
		-- must be online or untainted to continue
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Bag then
		
		-- already handled in onclick
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Bank then
		
		-- already handled in onclick
		return
		
	end
	
	
	if HandleModifiedItemClick( i.h ) then return end
	
	
	if loc_id == ArkInventory.Const.Location.Vault then
		
		if not ArkInventory.Global.Mode.Vault then
			-- must be at the vault to continue
			return
		end
		
		local tab_id = frame.ARK_Data.bag_id
		local slot_id = frame.ARK_Data.slot_id
		
		if IsModifiedClick( "SPLITSTACK" ) then
			if i.count > 1 and not frame.locked then
				StackSplitFrame:OpenStackSplitFrame( frame.count, frame, "BOTTOMLEFT", "TOPLEFT" )
			end
			return
		end
		
		local infoType, info1, info2 = GetCursorInfo( )
		if infoType == "money" then
			DepositGuildBankMoney( info1 )
			ClearCursor( )
		elseif infoType == "guildbankmoney" then
			DropCursorMoney( )
			ClearCursor( )
		else
			if button == "RightButton" then
				AutoStoreGuildBankItem( tab_id, slot_id )
			else
				PickupGuildBankItem( tab_id, slot_id )
			end
		end
		
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Mailbox then
		
		if not ArkInventory.Global.Mode.Mailbox then
			-- must be at the mailbox to continue
			return
		end
		
		if button == "RightButton" then
			if i.msg_id and i.money then
				TakeInboxMoney( i.msg_id )
			elseif i.msg_id and i.att_id then
				TakeInboxItem( i.msg_id, i.att_id )
			end
		end
		
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Wearing then
		
		-- nothing to do
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Pet then
		
		if i.guid then
			
			if button == "LeftButton" then
				
				ArkInventory.Collection.Pet.Summon( i.guid )
				
			elseif button == "RightButton" then
				
				ArkInventory.MenuItemPetJournal( frame, i.guid )
				
			end
			
		end
		
		ClearCursor( )
		
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Mount then
		
		if i.index then
			if button == "LeftButton" then
				
				local md = ArkInventory.Collection.Mount.GetMount( i.index )
				
				if md.active then
					ArkInventory.Collection.Mount.Dismiss( )
				elseif ArkInventory.Collection.Mount.IsUsable( md.index ) then
					ArkInventory.Collection.Mount.Summon( i.index )
				end
				
			elseif button == "RightButton" then
				
				ArkInventory.MenuItemMountJournal( frame, i.index )
				
			end
			
		end
		
		ClearCursor( )
		
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Currency then
		
		-- nothing to do
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Auction then
		
		-- nothing to do
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Toybox then
		
		if button == "LeftButton" then
			
			--ArkInventory.Collection.Toybox.Summon( i.index )
			ArkInventory.Output( "sorry, toys can no longer be summoned by code, please drag the ", i.h, " to your actionbar to use instead" )
			
		elseif button == "RightButton" then
			
			--ArkInventory.MenuItemToybox( frame, i.index ) !!! to be done
			
		end
		
		ClearCursor( )
		
		return
		
	end
	
	
	if loc_id == ArkInventory.Const.Location.Heirloom then
		
		if button == "LeftButton" then
			
			--C_Heirloom.CreateHeirloom( i.item ) -- secure action, cant be done
			
		elseif button == "RightButton" then
			
			--ArkInventory.MenuItemHeirloom( frame, i.index ) !!! to be done
			
		end
		
		ClearCursor( )
		
		return
		
	end
	
end

function ArkInventory.Frame_Item_OnDragStart( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local usedmycode = false
	
	if ArkInventory.Global.Mode.Edit then
		
		usedmycode = true
		
--		local i = ArkInventory.Frame_Item_GetDB( frame )
--		local cat_id = ArkInventory.ItemCategoryGet( i )
--		local bar_id = ArkInventory.CategoryLocationGet( loc_id, cat_id )
		
		ArkInventory.EditModeOnDragSet( ArkInventory.Const.Move.Category, frame )
		
		ArkInventory.SetCursor( ArkInventory.Const.Cursor.Drag )
		
	elseif SpellIsTargeting( ) or ArkInventory.Global.Location[loc_id].isOffline then
		
		usedmycode = true
		-- do not drag / drag disabled
		
		ArkInventory.SetCursor( )
		
	end
	
	if not usedmycode then
		ContainerFrameItemButton_OnClick( frame, "LeftButton" )
		--ArkInventory.Frame_Item_OnMouseUp( frame, "LeftButton" )
	end
	
end

function ArkInventory.Frame_Item_OnReceiveDrag( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local usedmycode = false
	
	if ArkInventory.Global.Mode.Edit then
		
		if ArkInventory.EditModeIsDragging( ) then
			
			usedmycode = true
			
			local i = ArkInventory.Frame_Item_GetDB( frame )
			local cat_id = ArkInventory.ItemCategoryGet( i )
			local bar_id = math.abs( ArkInventory.CategoryLocationGet( loc_id, cat_id ) )
			
			-- drop bar here?
			local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Bar )
			if IsAltKeyDown( ) then
				
				-- alt: move all categories on bar (OnDragSourceBar) to this bar (bar_id)
				if state == 1 then
					
					local cat_tbl = ArkInventory.CategoryBarGetAssigned( loc_id, ArkInventory.Global.Options.OnDragSourceBar )
					if cat_tbl then
						
						for cat_id in pairs( cat_tbl ) do
							ArkInventory.CategoryLocationSet( loc_id, cat_id, bar_id )
						end
						
						ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
						
					end
					
				else
					--ArkInventory.OutputWarning( "category assignment aborted, its already on this bar" )
				end
				
			else
				
				-- normal: move dragged bar (OnDragSourceBar) in front of this one (bar_id)
				if state == 1 then
					ArkInventory.Frame_Bar_Move( loc_id, ArkInventory.Global.Options.OnDragSourceBar, bar_id )
					ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
					--ArkInventory.Output2( "dropped bar ", bar_id, " here" )
				elseif state == 2 then
					--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_SAME"], ArkInventory.Localise["MENU_BAR"] ) )
				elseif state == 3 then
					--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_OUTSIDE"], ArkInventory.Localise["MENU_BAR"] ) )
				end
				
			end
			
			
			-- drop category here?
			local state = helper_DragState( loc_id, bar_id, ArkInventory.Const.Move.Category )
			if IsAltKeyDown( ) then
				
				-- alt: assign the category from this item (look it up) to the item being dropped here (di)
				if state == 1 then
					-- check destination category is not a RULE
					local cat_type, cat_code = ArkInventory.CategoryCodeSplit( cat_id )
						if cat_type ~= ArkInventory.Const.Category.Type.Rule then
						local di = ArkInventory.Frame_Item_GetDB( ArkInventory.Global.Options.OnDragSourceFrame )
						ArkInventory.ItemCategorySet( di, cat_id )
						ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
						--ArkInventory.Output2( "assigned ", cat_id, " to ", di.h )
					else
						--ArkInventory.OutputWarning( "category assignment aborted, destination is not a custom category" )
					end
					
				else
					--ArkInventory.OutputWarning( "category assignment aborted, its already on this bar" )
				end
				
			else
				
				-- normal: drop category (OnDragSourceCategory) from bar (OnDragSourceBar) to here (bar_id)?
				if state == 1 then
					ArkInventory.CategoryLocationSet( loc_id, ArkInventory.Global.Options.OnDragSourceCategory, bar_id )
					ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
					--ArkInventory.Output2( "dropped category ", ArkInventory.Global.Options.OnDragSourceCategory, " here" )
				elseif state == 2 then
					--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_SAME"], ArkInventory.Localise["CATEGORY"] ) )
				elseif state == 3 then
					--ArkInventory.OutputWarning( string.format( ArkInventory.Localise["MENU_MOVE_FAIL_OUTSIDE"], ArkInventory.Localise["CATEGORY"] ) )
				end
				
			end
			
			ArkInventory.EditModeOnDragSet( )
			ArkInventory.SetCursor( )
			ArkInventory.Frame_Item_OnEnter( frame )
			
		end
		
	elseif SpellIsTargeting( ) or ArkInventory.Global.Location[loc_id].isOffline then
		
		-- do not drag / drag disabled
		usedmycode = true
		
		ArkInventory.SetCursor( )
		
	end
	
	if not usedmycode then
		ContainerFrameItemButton_OnClick( frame, "LeftButton" )
	end
	
end

function ArkInventory.Frame_Item_Update_Cooldown( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Cooldown.Name )]
	if not obj then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if ArkInventory.Global.Location[loc_id].isOffline then
		obj:Hide( )
		return
	end
	
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	
	if not codex.style.slot.cooldown.show then
		obj:Hide( )
		return
	end
	
	if i and i.h then
		
		if loc_id == ArkInventory.Const.Location.Toybox and i.item then
			
			local start, duration, enable = GetItemCooldown( i.item )
			if start and duration then
				
				--ArkInventory.Output( "toybox cooldown: ", obj:GetName( ) )
				
				if enable then
					obj:Show( )
				else
					obj:Hide( )
				end
				
				CooldownFrame_Set( obj, start, duration, enable )
				
			else
				
				obj:Hide( )
				
			end
			
		else
			
			ContainerFrame_UpdateCooldown( frame.ARK_Data.blizzard_id, frame )
			
		end
		
	else
		
		obj:Hide( )
		
	end
	
end

function ArkInventory.Frame_Item_Update_Lock( frame, codex, changer )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	if ArkInventory.Global.Mode.Edit or ArkInventory.Global.Location[loc_id].isOffline then
		return
	end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	local locked = false
	
	if i and i.h then
		
		local codex = codex or ArkInventory.GetLocationCodex( loc_id )
		
		if loc_id == ArkInventory.Const.Location.Vault then
			locked = select( 3, GetGuildBankItemInfo( frame.ARK_Data.bag_id, frame.ARK_Data.slot_id ) )
		elseif changer then
			locked = IsInventoryItemLocked( frame.ARK_Data.inv_id )
		else
			locked = select( 3, GetContainerItemInfo( frame.ARK_Data.blizzard_id, frame.ARK_Data.slot_id ) )
		end
		
	end
	
	ArkInventory.SetItemButtonDesaturate( frame, locked )
	
	frame.locked = locked
	
end

function ArkInventory.Frame_Item_Update_Tint( frame, codex )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local obj = frame.ArkTint or _G[frame:GetName( ).."ArkTint"]
	if not obj then return end
		
	local loc_id = frame.ARK_Data.loc_id
	if ArkInventory.Global.Mode.Edit or ArkInventory.Global.Location[loc_id].isOffline then
		return
	end
	
	local codex = codex or ArkInventory.GetLocationCodex( loc_id )
	local tinted = false
		
	if codex.style.slot.unusable.tint then
		
		local i = ArkInventory.Frame_Item_GetDB( frame )
		
		if i and i.h then
			
			local osd = ArkInventory.ObjectStringDecode( i.h )
			
			if loc_id == ArkInventory.Const.Location.Pet or osd.class == "battlepet" then
				
				local player_id = ArkInventory.PlayerIDAccount( )
				local account = ArkInventory.GetPlayerStorage( player_id )
				
				if account and codex.player.data.info and codex.player.data.info.level and codex.player.data.info.level < osd.level then
					tinted = true
				end
				
			elseif loc_id == ArkInventory.Const.Location.Mount then
				
				if not ArkInventory.Collection.Mount.IsUsable( i.index ) then
					tinted = true
				end
				
			elseif loc_id == ArkInventory.Const.Location.Heirloom or loc_id == ArkInventory.Const.Location.Toybox then
				
				ArkInventory.TooltipSetHyperlink( ArkInventory.Global.Tooltip.Scan, i.h )
				
				if not ArkInventory.TooltipCanUse( ArkInventory.Global.Tooltip.Scan, true ) then
					tinted = true
				end
				
			else
				
				ArkInventory.TooltipSetHyperlink( ArkInventory.Global.Tooltip.Scan, i.h )
				
				if not ArkInventory.TooltipCanUse( ArkInventory.Global.Tooltip.Scan ) then
					tinted = true
				end
				
			end
			
		end
		
	end
	
	if tinted then
		obj:Show( )
	else
		obj:Hide( )
	end
	
end

function ArkInventory.Frame_Item_Update_PetJournal( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if frame.favorite then
		
		if i and i.guid then
			
			frame.active:SetShown( i.guid == ArkInventory.Collection.Pet.GetCurrent( ) )
			frame.slotted:SetShown( ArkInventory.Collection.Pet.IsSlotted( i.guid ) )
			frame.dead:SetShown( ( ArkInventory.Collection.Pet.GetStats( i.guid ) or 1 ) <= 0 )
			frame.favorite:SetShown( i.fav )
			
		else
			
			frame.active:Hide( )
			frame.slotted:Hide( )
			frame.dead:Hide( )
			frame.favorite:Hide( )
			
		end
		
	end
	
end

function ArkInventory.Frame_Item_Update_MountJournal( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if frame.favorite then
		if i then
			frame.favorite:SetShown( i.fav )
		else
			frame.favorite:Hide( )
		end
	end
	
end

function ArkInventory.Frame_Item_Update_Toybox( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if frame.favorite then
		if i then
			frame.favorite:SetShown( i.fav )
		else
			frame.favorite:Hide( )
		end
	end
	
end

function ArkInventory.Frame_Item_Update_Heirloom( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i then
		
		
		
	else
		
		
		
	end
	
end

function ArkInventory.Frame_Item_Update_Clickable( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local click = true
	
	if ArkInventory.Global.Mode.Edit or ArkInventory.Global.Location[loc_id].isOffline then
		
		click = false
		
	else
		
		if loc_id == ArkInventory.Const.Location.Vault then
			
			local bag_id = frame.ARK_Data.bag_id
			local _, _, _, canDeposit, numWithdrawals = GetGuildBankTabInfo( bag_id )
			if ( not canDeposit ) and ( numWithdrawals == 0 ) then
				click = false
			end
			
		end
		
	end
	
	
	if click then
		frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )
		--frame:RegisterForDrag( "LeftButton" )
	else
		-- disable clicks/drag when in edit mode or offline
		frame:RegisterForClicks( )
		--frame:RegisterForDrag( )
	end
	
end

function ArkInventory.Frame_Item_OnDragStart_PetJournal( frame )
	
	if ArkInventory.Global.Mode.Edit then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i and i.guid then
		
		ArkInventory.Collection.Pet.PickupPet( i.guid, true )
		
		if PetJournal:IsVisible( ) then
			PetJournal_UpdatePetLoadOut( )
		end

	end
	
end

function ArkInventory.Frame_Item_OnDragStart_Toybox( frame )
	
	if ArkInventory.Global.Mode.Edit then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i and i.item then
		
		C_ToyBox.PickupToyBoxItem( i.item )
		
	end
	
end

function ArkInventory.Frame_Item_OnDragStart_Heirloom( frame )
	
	if ArkInventory.Global.Mode.Edit then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if i and i.h then
		
		
		
	end
	
end

function ArkInventory.Frame_Item_OnDragStart_MountJournal( frame )
	
	if ArkInventory.Global.Mode.Edit then return end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	if i and i.slot_id then
		PickupCompanion( "MOUNT", i.slot_id )
	end
	
end

function ArkInventory.Frame_Item_Update( loc_id, bag_id, slot_id )
	
	local framename, frame = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	ArkInventory.Frame_Item_Update_Lock( frame, codex, false )
	
	ArkInventory.Frame_Item_Update_Border( frame, codex )
	
	ArkInventory.Frame_Item_Update_Texture( frame, codex )
	
	ArkInventory.Frame_Item_Update_Overlay( frame, codex )
	
	ArkInventory.Frame_Item_Update_Count( frame, codex )
	ArkInventory.Frame_Item_Update_Level( frame, codex )
	
	ArkInventory.Frame_Item_Update_Quest( frame, codex )
	ArkInventory.Frame_Item_Update_StatusIconUpgrade( frame, codex )
	ArkInventory.Frame_Item_Update_StatusIconJunk( frame, codex )
	ArkInventory.Frame_Item_Update_StatusIconTransmog( frame )
	ArkInventory.Frame_Item_Update_StatusIconOverlay( frame, codex )
	
	ArkInventory.Frame_Item_Update_Tint( frame, codex )
	ArkInventory.Frame_Item_Update_Fade( frame, codex, false )
	
	if loc_id == ArkInventory.Const.Location.Pet then
		ArkInventory.Frame_Item_Update_PetJournal( frame )
	end
	
	if loc_id == ArkInventory.Const.Location.Toybox then
		ArkInventory.Frame_Item_Update_Toybox( frame )
	end
	
	if loc_id == ArkInventory.Const.Location.Heirloom then
		ArkInventory.Frame_Item_Update_Heirloom( frame )
	end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	ArkInventory.Frame_Item_Update_List( frame, codex.style.window.list )
	
	ArkInventory.Frame_Item_Update_Cooldown( frame, codex )
	
	if frame == GameTooltip:GetOwner( ) then
		frame.UpdateTooltip( frame )
	end
	
	if not frame.ARK_Data.tainted then
		ArkInventory.API.ItemFrameUpdated( frame, loc_id, bag_id, slot_id )
	end
	
end

function ArkInventory.Frame_Item_MatchesFilter( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local matches = false
	
	local f = string.trim( string.lower( ArkInventory.Global.Location[loc_id].filter or "" ) )
	
	f = ArkInventory.Search.CleanText( f )
	
	if f == "" then
		return true
	end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
	if not i or not i.h then
		return false
	end
	
	local txt = ArkInventory.Search.GetContent( i.h )
	
	if string.find( txt, f, nil, true ) then
		return true
	end
	
end


function ArkInventory.Frame_Status_Update( frame )

	local loc_id = frame.ARK_Data.loc_id
	local codex = ArkInventory.GetLocationCodex( loc_id )
	--ArkInventory.Output( ArkInventory.Global.Location[loc_id].Name, ", player = ", codex.player.current )
	
	-- hide the status window if it's not needed
	local obj = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Status.Name )]
	if codex.style.status.hide then
		
		obj:Hide( )
		obj:SetHeight( 1 )
		return
		
	end
		
	local height = codex.style.status.font.height
	ArkInventory.MediaFrameFontSet( obj, nil, height )

	if height < ArkInventory.Const.Frame.Status.MinHeight then
		height = ArkInventory.Const.Frame.Status.MinHeight
	end
	
	obj:SetHeight( height + ArkInventory.Const.Frame.Status.Height )
	obj:SetScale( codex.style.status.scale or 1 )
	obj:Show( )
	
	
	-- update money
	local moneyFrameName = string.format( "%s%s", obj:GetName( ), "Gold" )
	local moneyFrame = _G[moneyFrameName]
	assert( moneyFrame, "moneyframe is nil" )
	
	if codex.style.status.money.show then
		moneyFrame:Show( )
		if ArkInventory.Global.Location[loc_id].isOffline then
			ArkInventory.MoneyFrame_SetType( moneyFrame, "STATIC" )
			MoneyFrame_Update( moneyFrameName, codex.player.data.info.money or 0 )
			--SetMoneyFrameColor( moneyFrameName, 0.75, 0.75, 0.75 )
		else
			SetMoneyFrameColor( moneyFrameName, 1, 1, 1 )
			if loc_id == ArkInventory.Const.Location.Vault then
				ArkInventory.MoneyFrame_SetType( moneyFrame, "GUILDBANK" )
			else
				ArkInventory.MoneyFrame_SetType( moneyFrame, "PLAYER" )
			end
		end
	else
		moneyFrame:Hide( )
	end
	
	
	-- update the empty slot count
	local obj = _G[string.format( "%s%s%s", frame:GetName( ), ArkInventory.Const.Frame.Status.Name, "EmptyText" )]
	if obj then
		if codex.style.status.emptytext.show then
			local y = ArkInventory.Frame_Status_Update_Empty( loc_id, codex )
			obj:SetText( y )
		else
			obj:SetText( "" )
		end
		--obj:SetHeight( height )
	end
	
	
	-- update currency tracking
	ArkInventory.Frame_Status_Update_Tracking( loc_id )
	
end

function ArkInventory.Frame_Status_Update_Empty( loc_id, codex, ldb )
	
	-- build the empty slot count status string
	
	local empty = { }
	local bags = codex.player.data.location[loc_id].bag
	
	for k, bag in pairs( bags ) do
		
		if not empty[bag.type] then
			empty[bag.type] = { ["count"] = 0, ["empty"] = 0, ["type"] = bag.type }
		end
		
		if bag.status == ArkInventory.Const.Bag.Status.Active then
			empty[bag.type].count = empty[bag.type].count + bag.count
			empty[bag.type].empty = empty[bag.type].empty + bag.empty
		end
		
		--ArkInventory.Output( "k=[", k, "] t=[", bag.type, "] c=[", bag.count, "], status=[", bag.status, "]" )
		
	end
	
	local ee = ArkInventory.Table.Sum( empty, function( a ) return a.empty end )
	local ts = codex.player.data.location[loc_id].slot_count
	
	local y = { }
	
	if ts == 0 then
		
		y[#y + 1] = string.format( "%s%s%s", RED_FONT_COLOR_CODE, ArkInventory.Localise["STATUS_NO_DATA"], FONT_COLOR_CODE_CLOSE )
		
	else
		
		for t, e in ArkInventory.spairs( empty, function(a,b) return empty[a].type < empty[b].type end ) do
			
			local c = HIGHLIGHT_FONT_COLOR_CODE
			local n = string.format( " %s", ArkInventory.Const.Slot.Data[t].short )
			
			if ldb then
				
				if codex.player.data.ldb.bags.colour then
					c = codex.style.slot.data[t].colour
					c = ArkInventory.ColourRGBtoCode( c.r, c.g, c.b )
				end
				
				if not codex.player.data.ldb.bags.includetype then
					n = ""
				end
				
				if codex.player.data.ldb.bags.full then
					y[#y + 1] = string.format( "%s%i/%i%s%s", c, e.count - e.empty, e.count, n, FONT_COLOR_CODE_CLOSE )
				else
					y[#y + 1] = string.format( "%s%i%s%s", c, e.empty, n, FONT_COLOR_CODE_CLOSE )
				end
				
			else
				
				if codex.style.status.emptytext.colour then
					c = codex.style.slot.data[t].colour
					c = ArkInventory.ColourRGBtoCode( c.r, c.g, c.b )
				end
				
				if not codex.style.status.emptytext.includetype then
					n = ""
				end
				
				if codex.player.data.info.class == ArkInventory.Const.Class.Account then
					y[#y + 1] = string.format( "%s%i%s%s", c, e.count, n, FONT_COLOR_CODE_CLOSE )
				elseif codex.style.status.emptytext.full then
					y[#y + 1] = string.format( "%s%i/%i%s%s", c, e.count - e.empty, e.count, n, FONT_COLOR_CODE_CLOSE )
				else
					y[#y + 1] = string.format( "%s%i%s%s", c, e.empty, n, FONT_COLOR_CODE_CLOSE )
				end
				
			end
			
		end
		
	end
	
	return string.format( "|cfff9f9f9%s", table.concat( y, ", " ) )

end

function ArkInventory.Frame_Status_Update_Tracking( loc_id )
	
	if not ArkInventory:IsEnabled( ) then return end
	
	local loc_id = loc_id or ArkInventory.Const.Location.Bag
	if loc_id ~= ArkInventory.Const.Location.Bag then return end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	local frame = ArkInventory.Frame_Main_Get( ArkInventory.Const.Location.Bag )
	frame = _G[string.format( "%s%s", frame:GetName( ), ArkInventory.Const.Frame.Status.Name )]
	
	for i = 1, ( MAX_WATCHED_TOKENS or 1 ) do
		
		-- some addons alter MAX_WATCHED_TOKENS so this is now generic and will create as many as needed
		local obj = _G[string.format( "%s%s%s", frame:GetName( ), "Tracking", i )]
		if not obj then
			
			local objprev = _G[string.format( "%s%s%s", frame:GetName( ), "Tracking", i - 1 )]
			
			obj = CreateFrame( "Frame", string.format( "%s%s%s", frame:GetName( ), "Tracking", i ), frame, "ARKINV_TemplateCurrencyTracking" )
			obj:SetPoint( "LEFT", objprev, "RIGHT" )
			
			ArkInventory.MediaFrameFontSet( obj, ArkInventory.db.option.font.face, codex.style.status.font.height )
			
		end
		
		local name, count, icon, currencyID = ArkInventory.CrossClient.GetBackpackCurrencyInfo( i )
		if codex.style.status.currency.show and currencyID then
			
			local name, amount, icon, earnedThisWeek, weeklyMax, totalMax, isDiscovered, quality = ArkInventory.CrossClient.GetCurrencyInfo( currencyID )
			
			obj.currencyID = currencyID
			
			ArkInventory.SetTexture( obj.icon, icon )
			obj.count:SetText( FormatLargeNumber( amount ) )
			obj:SetWidth( 2 * obj.icon:GetWidth( ) + obj.count:GetWidth( ) )
			obj:Show( )
			
		else
			
			obj:SetWidth( 1 )
			obj:Hide( )
			
		end
		
	end
	
end


function ArkInventory.Frame_Changer_OnLoad( frame, slots, ... )
	
	ArkInventory.Frame_AddBorder( frame )
	
	local framename = frame:GetName( )
	local template
	for ax = 1, slots do
		
		template = select( ax, ... ) or template
		
		if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
			CreateFrame( "ItemButton", string.format( "%sBag%s", framename, ax ), frame, string.format( "%s%s", template, WOW_PROJECT_ID ) ) 
		else
			CreateFrame( "Button", string.format( "%sBag%s", framename, ax ), frame, string.format( "%s%s", template, WOW_PROJECT_ID ) )
		end
		
	end
	
end

function ArkInventory.Frame_Changer_Update( loc_id )
	
	if not ArkInventory.Global.Location[loc_id].hasChanger then return end
	
	if loc_id == ArkInventory.Const.Location.Bag or loc_id == ArkInventory.Const.Location.Bank then
		
		for bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
			
			if bag_id == 1 then
				ArkInventory.Frame_Changer_Primary_Update( loc_id, bag_id )
			else
				ArkInventory.Frame_Changer_Slot_Update( loc_id, bag_id )
			end
			
		end
		
		if loc_id == ArkInventory.Const.Location.Bank and ArkInventory.Global.Mode.Bank then
			-- if at the bank then update the blizzard frame as well because the static dialog box we piggyback uses the data in it
			UpdateBagSlotStatus( )
		end
		
	elseif loc_id == ArkInventory.Const.Location.Vault then
		
		ArkInventory.Frame_Changer_Vault_Update( )
		
	end
	
	
	local frame = _G[string.format( "%s%s", ArkInventory.Const.Frame.Main.Name, loc_id )]
	ArkInventory.Frame_Status_Update( frame )
	
end

function ArkInventory.Frame_Changer_Primary_Update( loc_id, bag_id )
	
	local frame = _G[string.format( "%s%s%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Changer.Name, "WindowBag", bag_id )]
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	ArkInventory.Frame_Item_Update_Fade( frame, codex, true )
	
	ArkInventory.Frame_Item_Update_Border( frame, codex, true )
	
	if codex.player.data.option[loc_id].bag[bag_id].display == false then
		SetItemButtonTextureVertexColor( frame, 1.0, 0.1, 0.1 )
	else
		SetItemButtonTextureVertexColor( frame, 1.0, 1.0, 1.0 )
	end
	
	local bag = codex.player.data.location[loc_id].bag[bag_id]
	
	SetItemButtonCount( frame, bag.count )
	
	if bag.status == ArkInventory.Const.Bag.Status.Active then
		ArkInventory.SetItemButtonStock( frame, bag.empty )
	else
		ArkInventory.SetItemButtonStock( frame, nil, bag.status )
	end
	
	ArkInventory.MediaFrameFontSet( frame, nil, codex.style.slot.itemcount.font.height )
	
	-- ContainerFrameItemButtonTemplate, must use bottomright as anchor point
	local h = frame:GetWidth( )
	local v = ( frame:GetParent( ):GetHeight( ) - h ) / 2
	frame:SetPoint( "BOTTOMRIGHT", frame:GetParent( ), "BOTTOMLEFT", h + 8, v )
	
	frame:Show( )
	
end

function ArkInventory.Frame_Changer_Vault_Tab_OnEnter( frame )
	
	if not frame then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	local codex = ArkInventory.GetLocationCodex( loc_id )

	if ArkInventory.db.option.tooltip.show then
	
		ArkInventory.GameTooltipSetPosition( frame, true )
		
		local bag = codex.player.data.location[loc_id].bag[bag_id]
		
		if bag and bag.name then
			GameTooltip:SetText( string.format( ArkInventory.Localise["VAULT_TAB_NAME"], bag_id, bag.name ) )
			GameTooltip:AddLine( string.format( ArkInventory.Localise["VAULT_TAB_ACCESS"], bag.access ) )
			if bag.withdraw then
				GameTooltip:AddLine( string.format( ArkInventory.Localise["VAULT_TAB_REMAINING_WITHDRAWALS"], bag.withdraw ) )
			end
			--GameTooltip:AddLine( string.format( NUM_GUILDBANK_TABS_PURCHASED, GetNumGuildBankTabs( ), MAX_BUY_GUILDBANK_TABS ) )
			GameTooltip:Show( )
		else
			GameTooltip:Hide( )
		end
		
		CursorUpdate( frame )
		
	end
	
	--ArkInventory.BagHighlight( frame, true )
	
end

function ArkInventory.Frame_Changer_Vault_Tab_OnLoad( frame )
	ArkInventory.Frame_Changer_Slot_OnLoad( frame )
	if frame.ARK_Data.bag_id <= MAX_GUILDBANK_TABS then
		frame:Show( )
		frame.UpdateTooltip = ArkInventory.Frame_Changer_Vault_Tab_OnEnter
	end
end

function ArkInventory.Frame_Changer_Vault_Tab_OnClick( frame, button, mode )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local mode = mode or ArkInventory.Global.Location[loc_id].view_mode
	local tab = codex.player.data.location[loc_id].bag[bag_id]
	
	--ArkInventory.Output( "Tab_OnClick(", frame:GetName( ), ", ", button, ", ", mode, ")" )
	
	if tab.name == nil then
		return
	end
	
	if tab.status == ArkInventory.Const.Bag.Status.Purchase then
		
		if button == "LeftButton" then
			if bag_id <= MAX_BUY_GUILDBANK_TABS then
				StaticPopup_Show( "CONFIRM_BUY_GUILDBANK_TAB" )
			end
		end
		
	else
		
		if button == nil then
			
			-- drag'n'drop (drop)
			
			if not ArkInventory.Global.Location[loc_id].isOffline then
				--ArkInventory.PutItemInGuildBank( tab_id )
			end
			
		else
			
			if mode == ArkInventory.Global.Location[loc_id].view_mode and bag_id == ArkInventory.Global.Location[loc_id].view_tab then
				--ArkInventory.Output( "same tab, same mode, ignored" )
				return
			end
			
			if tab.status == ArkInventory.Const.Bag.Status.NoAccess then
				--ArkInventory.Output( "no access to this tab, ignored" )
				return
			end
			
			ArkInventory.Global.Location[loc_id].view_tab = bag_id
			ArkInventory.Global.Location[loc_id].view_mode = mode
			
			for x in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
				if x == ArkInventory.Global.Location[loc_id].view_tab then
					codex.player.data.option[loc_id].bag[x].display = true
				else
					codex.player.data.option[loc_id].bag[x].display = false
				end
			end
			
			if ArkInventory.Global.Location[loc_id].isOffline then
				
				--ArkInventory.OutputWarning( "Frame_Changer_Vault_Tab_OnClick - .Recalculate" )
				ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
				
				return
				
			end
			
			ArkInventory.VaultTabClick( bag_id, mode )
			
		end
		
	end
	
end

function ArkInventory.Frame_Changer_Vault_Action_OnEnter( frame )
	
	local loc_id = ArkInventory.Const.Location.Vault
	
end

function ArkInventory.Frame_Changer_Vault_Action_OnLoad( frame )
	
	local loc_id = ArkInventory.Const.Location.Vault
	
end

function ArkInventory.Frame_Changer_Vault_Action_OnClick( frame, button, mode )

	local loc_id = ArkInventory.Const.Location.Vault
	
	ArkInventory.MenuChangerVaultActionOpen( frame )
	
end

function ArkInventory.Frame_Changer_Vault_Update( )
	
	local loc_id = ArkInventory.Const.Location.Vault
	local parent = string.format( "%s%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Changer.Name, "Window" )
	
	if not _G[parent]:IsVisible( ) then
--		return
	end
	
	for bag_id in ipairs( ArkInventory.Global.Location[loc_id].Bags ) do
		ArkInventory.Frame_Changer_Slot_Update( loc_id, bag_id )
	end
	
	local buttonAction = _G[string.format( "%s%s", parent, "Action" )]
	
	if ArkInventory.Global.Location[loc_id].isOffline then
		if buttonAction then buttonAction:Hide( ) end
	else
		if buttonAction then buttonAction:Show( ) end
	end
	
end

function ArkInventory.Frame_Changer_Secondary_OnDragStart( frame )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	
	if InCombatLockdown( ) or ArkInventory.Global.Mode.Edit or ArkInventory.Global.Location[loc_id].isOffline or loc_id == ArkInventory.Const.Location.Vault then
		return
	end
	
	local bag_id = frame.ARK_Data.bag_id
	local inv_id = ArkInventory.InventoryIDGet( loc_id, bag_id )
	
	--ArkInventory.Output( "pick up bag ", loc_id, ".", bag_id, " = ", inv_id )
	
	PickupBagFromSlot( inv_id )
	
end

function ArkInventory.Frame_Changer_Secondary_OnReceiveDrag( frame )
	
	-- edit mode check needed?
	ArkInventory.GameTooltipHide( )
	
	ArkInventory.EditModeOnDragSet( )
	ArkInventory.SetCursor( )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.Global.Location[loc_id].isOffline then
		return
	end
	
	
	ArkInventory.Frame_Changer_Slot_OnClick( frame )
	
end

function ArkInventory.Frame_Changer_Slot_OnLoad( frame )
	
	ArkInventory.Frame_AddBorder( frame )
	
	local framename = frame:GetName( )
	local loc_id, bag_id = string.match( framename, "^" .. ArkInventory.Const.Frame.Main.Name .. "(%d+).-(%d+)$" )
	
	loc_id = tonumber( loc_id )
	bag_id = tonumber( bag_id )
	
	frame.ARK_Data = {
		loc_id = loc_id,
		bag_id = bag_id,
		blizzard_id = ArkInventory.InternalIdToBlizzardBagId( loc_id, bag_id ),
		inv_id = ArkInventory.InventoryIDGet( loc_id, bag_id ),
	}
	
	if frame.BattlepayItemTexture then
		frame.BattlepayItemTexture:Hide( )
	end
	
	if frame.NewItemTexture then
		frame.NewItemTexture:Hide( )
	end
	
	frame.SplitStack = nil
	
	frame.locked = nil
	
	frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )
	
	if ( loc_id == ArkInventory.Const.Location.Bag and bag_id > 1 ) or ( loc_id == ArkInventory.Const.Location.Bank and bag_id > 1 and bag_id ~= ArkInventory.Global.Location[loc_id].tabReagent ) then
		frame:RegisterForDrag( "LeftButton" )
	end
	
	if bag_id == 1 then
		ArkInventory.SetItemButtonTexture( frame, ArkInventory.Global.Location[loc_id].Texture )
	elseif loc_id == ArkInventory.Const.Location.Bank and bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
		ArkInventory.SetItemButtonTexture( frame, ArkInventory.Global.Location[loc_id].Texture )
	else
		ArkInventory.SetItemButtonTexture( frame, ArkInventory.Const.Texture.Empty.Bag )
	end
	
	local obj = frame.Count
	if obj ~= nil then
		obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 2 )
		obj:SetPoint( "LEFT", frame, "LEFT", 0, 0 )
	end

	local obj = _G[string.format( "%s%s", framename, "Stock" )]
	if obj ~= nil then
		obj:SetPoint( "TOPLEFT", frame, "TOPLEFT", 0, -2 )
		obj:SetPoint( "RIGHT", frame, "RIGHT", 0, 0 )
	end
	
--	frame:Show( )
	
end

function ArkInventory.Frame_Changer_Slot_OnClick( frame, button )
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	
	--ArkInventory.Output( "Frame_Changer_Slot_OnClick( ", frame:GetName( ), ", ", button, " )" )
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local bag = codex.player.data.location[loc_id].bag[bag_id]
	
	if IsModifiedClick( "CHATLINK" ) then
		if bag and bag.h and bag.count > 0 then
			ChatEdit_InsertLink( bag.h )
		end
		return
	end
		
	if ArkInventory.Global.Mode.Edit then
		ArkInventory.MenuBagOpen( frame )
		return
	end
	
	if ArkInventory.Global.Location[loc_id].isOffline then
		return
	end
	
	if button == nil then
		
		-- drop from drag'n'drop
		if loc_id == ArkInventory.Const.Location.Bag and bag_id == 1 then
			PutItemInBackpack( )
		elseif loc_id == ArkInventory.Const.Location.Bank and bag_id == 1 then
			ArkInventory.PutItemInBank( )
		elseif loc_id == ArkInventory.Const.Location.Bank and bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
			ArkInventory.PutItemInReagentBank( )
		end
		
		return
		
	elseif button == "RightButton" then
		
		ArkInventory.MenuBagOpen( frame )
		
	elseif button == "LeftButton" then
		
		if loc_id == ArkInventory.Const.Location.Bank then
			if bag and bag.status == ArkInventory.Const.Bag.Status.Purchase then
				PlaySound( SOUNDKIT.IG_MAINMENU_OPTION )
				if bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
					StaticPopup_Show( "CONFIRM_BUY_REAGENTBANK_TAB" )
				else
					StaticPopup_Show( "CONFIRM_BUY_BANK_SLOT" )
				end
				return
			end
		end
		
		if CursorHasItem( ) then
			
			if loc_id == ArkInventory.Const.Location.Bag and bag_id == 1 then
				PutItemInBackpack( )
				return
			end
		
			if loc_id == ArkInventory.Const.Location.Bank and bag_id == 1 then
				ArkInventory.PutItemInBank( )
				return
			end
			
			if loc_id == ArkInventory.Const.Location.Bank and bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
				ArkInventory.PutItemInReagentBank( )
				return
			end
			
			local inv_id = ArkInventory.InventoryIDGet( loc_id, bag_id )
			--ArkInventory.Output( "drop item into ", loc_id, ".", bag_id, " / inventory slot ", inv_id )
			PutItemInBag( inv_id )
			
		else
			
			if loc_id == ArkInventory.Const.Location.Bag and bag_id == 1 then
				-- do nothing
				return
			end
		
			if loc_id == ArkInventory.Const.Location.Bank and ( bag_id == 1 or bag_id == ArkInventory.Global.Location[loc_id].tabReagent ) then
				-- do nothing
				return
			end
			
			-- pick up the bag in the slot
			ArkInventory.Frame_Changer_Secondary_OnDragStart( frame )
			
		end

	end
	
end

function ArkInventory.Frame_Changer_Slot_OnEnter( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local bag = codex.player.data.location[loc_id].bag[bag_id]
	
	if ArkInventory.db.option.tooltip.show then
	
		ArkInventory.GameTooltipSetPosition( frame, true )
		
		if bag_id == 1 then
			
			if loc_id == ArkInventory.Const.Location.Bag then
				GameTooltip:SetText( BACKPACK_TOOLTIP, 1.0, 1.0, 1.0 )
			elseif loc_id == ArkInventory.Const.Location.Bank then
				GameTooltip:SetText( ArkInventory.Localise["BANK"], 1.0, 1.0, 1.0 )
			end
		
		elseif ArkInventory.Global.Location[loc_id].isOffline then
			
			if not bag or bag.count == 0 then
				
				-- do nothing
				
			else
		
				if loc_id == ArkInventory.Const.Location.Bank and bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
					
					GameTooltip:SetText( ArkInventory.Localise["REAGENTBANK"], 1.0, 1.0, 1.0 )
					
				elseif bag.h then
					
					GameTooltip:SetHyperlink( bag.h )
					
				else
					
					GameTooltip:SetText( ArkInventory.Localise["STATUS_NO_DATA"], 1.0, 1.0, 1.0 )
					
				end
			
			end
		
		else
			
			if bag and bag.status == ArkInventory.Const.Bag.Status.Purchase then
				
				if loc_id == ArkInventory.Const.Location.Bank then
					
					if bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
						GameTooltip:SetText( ArkInventory.Localise["TOOLTIP_PURCHASE_BANK_TAB_REAGENT"] )
					else
						GameTooltip:SetText( ArkInventory.Localise["TOOLTIP_PURCHASE_BANK_BAG_SLOT"] )
					end
					
				end
				
			elseif bag and bag.status == ArkInventory.Const.Bag.Status.Active then
				
				if loc_id == ArkInventory.Const.Location.Bank and bag_id == ArkInventory.Global.Location[loc_id].tabReagent then
					
					GameTooltip:SetText( ArkInventory.Localise["REAGENTBANK"], 1.0, 1.0, 1.0 )
					
				elseif bag.h then
					
					GameTooltip:SetInventoryItem( "player", ArkInventory.InventoryIDGet( loc_id, bag_id ) )
					
				end
				
			elseif bag and bag.status == ArkInventory.Const.Bag.Status.Unknown then
				
				GameTooltip:SetText( ArkInventory.Localise["STATUS_NO_DATA"] )
				
			end
			
		end
	
		CursorUpdate( frame )
	
	end
	
	ArkInventory.BagHighlight( frame, true )
	
end

function ArkInventory.Frame_Changer_Slot_Update( loc_id, bag_id )
	
	local frame = _G[string.format( "%s%s%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Changer.Name, "WindowBag", bag_id )]
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local codex = ArkInventory.GetLocationCodex( loc_id )
	local bag = codex.player.data.location[loc_id].bag[bag_id]
	
	--ArkInventory.Output( "changer update[", codex.player.data.info.name, "].loc[", loc_id, "].bag[", bag_id, "]" )
	
	if bag.count > 0 then
		frame.size = bag.count or 0
	else
		frame.size = 0
	end
	
	ArkInventory.Frame_Item_Update_Border( frame, codex, true )
	
	ArkInventory.SetItemButtonTexture( frame, bag.texture or ArkInventory.Const.Texture.Empty.Bag )
	SetItemButtonCount( frame, frame.size )
	
	if bag.status == ArkInventory.Const.Bag.Status.Active then
		ArkInventory.SetItemButtonStock( frame, bag.empty )
	else
		ArkInventory.SetItemButtonStock( frame, nil, bag.status )
	end
	
	ArkInventory.Frame_Item_Update_Fade( frame, codex, true )
	
	ArkInventory.Frame_Item_Update_Lock( frame, codex, true )
	
	
	
	-- tint non displayed bags (except at the vault where they are faded)
	if codex.player.data.option[loc_id].bag[bag_id].display == false then
		if loc_id == ArkInventory.Const.Location.Vault then
			-- only tint no acess bags at the vault
			if bag.status == ArkInventory.Const.Bag.Status.NoAccess then
				SetItemButtonTextureVertexColor( frame, 1.0, 0.1, 0.1 )
			end
		else
			SetItemButtonTextureVertexColor( frame, 1.0, 0.1, 0.1 )
		end
	else
		if bag.status == ArkInventory.Const.Bag.Status.Purchase then
			SetItemButtonTextureVertexColor( frame, 1.0, 0.1, 0.1 )
		else
			SetItemButtonTextureVertexColor( frame, 1.0, 1.0, 1.0 )
		end
	end
	
	ArkInventory.MediaFrameFontSet( frame, nil, codex.style.slot.itemcount.font.height )
	
	-- ContainerFrameItemButtonTemplate, must use bottomright as anchor point
	if bag_id == 1 then
		local h = frame:GetWidth( ) + 8
		local v = ( frame:GetParent( ):GetHeight( ) - frame:GetHeight( ) ) / 2
		frame:SetPoint( "BOTTOMRIGHT", frame:GetParent( ), "BOTTOMLEFT", h, v )
	else
		local frame0 = _G[string.format( "%s%s%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Changer.Name, "WindowBag", bag_id - 1 )]
		local h = frame:GetWidth( ) + 8
		frame:SetPoint( "BOTTOMRIGHT", frame0, "BOTTOMRIGHT", h, 0 )
	end
	
	frame:Show( )
	
end

function ArkInventory.Frame_Changer_Slot_Update_Lock( loc_id, bag_id )
	
	local frame = _G[string.format( "%s%s%sWindowBag%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Changer.Name, bag_id )]
	if not ArkInventory.ValidFrame( frame ) then return end
	
	if ArkInventory.Global.Location[loc_id].isOffline then return end
	
	local me = ArkInventory.GetPlayerCodex( )
	if me.player.data.location[loc_id].bag[bag_id].h then
		
		local inv_id = ArkInventory.InventoryIDGet( loc_id, bag_id )
		local locked = IsInventoryItemLocked( inv_id )
		ArkInventory.SetItemButtonDesaturate( frame, locked )
		frame.locked = locked
		
	else
		
		frame.locked = false
		
	end
	
end

function ArkInventory.Frame_Changer_Generic_OnLeave( frame )
	GameTooltip:Hide( )
	ArkInventory.SetCursor( )
	ArkInventory.BagHighlight( frame, false )
end

function ArkInventory.BagHighlight( frame, show )
	
	if not ArkInventory.ValidFrame( frame ) then return end
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	
	if loc_id ~=nil and bag_id ~= nil then
		
		local codex = ArkInventory.GetLocationCodex( loc_id )
		
		local b = codex.player.data.location[loc_id].bag[bag_id]
		if not b then
			return
		end
		
		local name = string.format( "%s%s%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Container.Name, "Bag", bag_id )
		local frame = _G[name]
		if not frame then
			return
		end
		
		local enabled = codex.style.changer.highlight.show
		local colour = codex.style.changer.highlight.colour
		
		for slot_id in pairs( b.slot ) do
			local obj = _G[string.format( "%s%s%s%s", name, "Item", slot_id, "ArkHighlight" )]
			if obj then
				ArkInventory.SetTexture( obj, enabled and show, colour.r, colour.g, colour.b, 0.3 )
			end
		end
	
	end
	
end

function ArkInventory.Frame_AddBorder( frame )
	if not frame.ArkBorder then
		local name = frame:GetName( )
		name = name and name .. "ArkBorder"
		frame.ArkBorder = CreateFrame( "Frame", name, frame, BackdropTemplateMixin and "BackdropTemplate" )
		frame.ArkBorder:SetAllPoints( )
		frame.ArkBorder:SetFrameLevel( frame:GetFrameLevel( ) + 1 )
	end
end

function ArkInventory.MyHook(...)
	if not ArkInventory:IsHooked(...) then
		ArkInventory:RawHook(...)
	end
end

function ArkInventory.MyUnhook(...)
	if ArkInventory:IsHooked(...) then
		ArkInventory:Unhook(...)
	end
end

function ArkInventory.MySecureHook(...)
	if not ArkInventory:IsHooked(...) then
		ArkInventory:SecureHook(...)
	end
end

function ArkInventory.HookOpenBackpack( self, ... )

--	ArkInventory.Output2( "HookOpenBackpack( )" )
	
	local loc_id = ArkInventory.Const.Location.Bag
	
	if ArkInventory.LocationIsControlled( loc_id ) then
		-- original function returns state of backpack being open at time of call
		local BackpackAlreadyOpen = ArkInventory.Frame_Main_Get( loc_id ):IsVisible( )
		ArkInventory.Frame_Main_Show( loc_id )
		return BackpackAlreadyOpen
	end
	
	return ArkInventory.hooks.OpenBackpack( ... )
	
end

function ArkInventory.HookToggleBackpack( self, ... )

--	ArkInventory.Output2( "HookToggleBackpack( )" )
	
	local loc_id = ArkInventory.Const.Location.Bag
	
	if ArkInventory.LocationIsControlled( loc_id ) then
		ArkInventory.Frame_Main_Toggle( loc_id )
		return
	end
	
	return ArkInventory.hooks.ToggleBackpack( ... )
	
end

function ArkInventory.HookOpenBag( self, ... )
	
	local blizzard_id = ...
	
--	ArkInventory.Output2( "HookOpenBag( ", blizzard_id, " )" )
	
	if blizzard_id then
		
		if blizzard_id > ( NUM_BAG_SLOTS + NUM_BANKBAGSLOTS ) then
			--  cater for any extra containerframe xml objects that arent actually being used, eg 12 and 13
			return
		end
		
		local loc_id = ArkInventory.BlizzardBagIdToInternalId( blizzard_id )
		
		if loc_id and ( loc_id == ArkInventory.Const.Location.Bag or ( loc_id == ArkInventory.Const.Location.Bank and ArkInventory.Global.Mode.Bank ) ) then
			if ArkInventory.LocationIsControlled( loc_id ) then
				ArkInventory.Frame_Main_Show( loc_id )
				return
			end
		end
		
	end
	
	return ArkInventory.hooks.OpenBag( ... )
	
end

function ArkInventory.HookCloseBag( self, ... )
	
	local blizzard_id = ...
	
--	ArkInventory.Output2( "HookCloseBag( ", blizzard_id, " )" )
	
	return ArkInventory.hooks.CloseBag( ... )
	
end

function ArkInventory.HookToggleBag( self, ... )
	
	local blizzard_id = ...
	
--	ArkInventory.Output2( "HookToggleBag( ", blizzard_id, " )" )
	
	if blizzard_id then
		
		local loc_id = ArkInventory.BlizzardBagIdToInternalId( blizzard_id )
		
		if loc_id and ( loc_id == ArkInventory.Const.Location.Bag or ( loc_id == ArkInventory.Const.Location.Bank and ArkInventory.Global.Mode.Bank ) ) then
			if ArkInventory.LocationIsControlled( loc_id ) then
				ArkInventory.Frame_Main_Toggle( loc_id )
				return
			end
		end
		
	end
	
	return ArkInventory.hooks.ToggleBag( ... )
	
end

function ArkInventory.HookOpenAllBags( self, ... )
	
--	ArkInventory.Output2( "---------------" )
--	ArkInventory.Output2( "HookOpenAllBags" )
	
	local who = ...
	local whoname = who
	if who then
		whoname = who:GetName( )
	end
	
	local BackpackAlreadyOpen = ArkInventory.Frame_Main_Get( ArkInventory.Const.Location.Bag ):IsVisible( )
--	ArkInventory.Output2( "backpack was open: ", BackpackAlreadyOpen )
	
	if whoname then
		
		--ArkInventory.Output2( "opened by: ", whoname )
		
		if whoname == "MerchantFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				
				if ArkInventory.db.option.auto.open.merchant == 0 and not BackpackAlreadyOpen then
					return
				end
				
				-- this is supposed to stop selling junk to merchants that wont buy anything from you
				-- theres no way to work that out though so sometimes youre screwed no matter what and it will just spit out errors
				if MerchantBuyBackItemItemButton and MerchantBuyBackItemItemButton:IsVisible( ) then
					if GetMerchantNumItems( ) > 0 then
						--ArkInventory.Output( "auto sell starting" )
						ArkInventory.JunkSell( )
					end
				end
				
			end
			
		elseif whoname == "ExtVendor" then
			
			-- third party addon, replaces the merchant interface
			
			ArkInventory.Global.Mode.Merchant = true
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.merchant == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
			if GetMerchantNumItems( ) > 0 then
				--ArkInventory.Output( "auto sell starting" )
				ArkInventory.JunkSell( )
			end
			
		elseif whoname == "WardrobeFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.transmog == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "TradeFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.trade == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "AuctionHouseFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.auction == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "GuildBankFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.vault == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "BankFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.bank == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "GwBankFrame" then
			
			-- third party addon
			
			ArkInventory.Global.Mode.Bank = true
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.bank == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "MailFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.mail == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "ScrappingMachineFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.scrap == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "VoidStorageFrame" then
			
			if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
				if ArkInventory.db.option.auto.open.void == 0 and not BackpackAlreadyOpen then
					return
				end
			end
			
		elseif whoname == "AzeriteEssenceUI" then
			
			-- dont care about this opener yet, just here to stop the warning message
			
		elseif whoname == "ItemInteractionFrame" then
			
			-- dont care about this opener yet, just here to stop the warning message
			
		else
			
			ArkInventory.OutputWarning( "code issue - function for [HookOpenAllBags:", whoname, "] was not found - please notify the author so it can be fixed" )
			
		end
		
	end
	
--	ArkInventory.Output2( "HookOpenAllBags - part 2" )
	
	if BackpackAlreadyOpen then
		who = nil
		whoname = nil
	end
	
	local loc_id = ArkInventory.Const.Location.Bag
	if not ArkInventory.LocationIsControlled( loc_id ) then
--		ArkInventory.Output2( "HookOpenAllBags - closing all bags" )
		CloseAllBags( )
	end
	
	if ArkInventory.Global.Mode.Bank then
		
		local loc_id = ArkInventory.Const.Location.Bank
		if not ArkInventory.LocationIsControlled( loc_id ) then
			for x = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
				if GetContainerNumSlots( x ) > 0 then
--					ArkInventory.Output2( "HookOpenAllBags - closing bag ", x )
					CloseBag( x )
				end
			end
		end
		
	end
	
	local loc_id = ArkInventory.Const.Location.Bag
--	ArkInventory.Output2( "HookOpenAllBags - opening all bags by ", whoname )
	ArkInventory.Global.BagsOpenedBy = whoname
	ArkInventory.hooks.OpenAllBags( who )
	
	
	if ArkInventory.Global.Mode.Bank then
		
		local loc_id = ArkInventory.Const.Location.Bank
		if not ArkInventory.LocationIsControlled( loc_id ) then
			for x = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
				if GetContainerNumSlots( x ) > 0 then
--					ArkInventory.Output2( "HookOpenAllBags - opening bag ", x )
					ArkInventory.hooks.OpenBag( x )
				end
			end
		end
		
	end
	
--	ArkInventory.Output2( "bags set to opened by ", ArkInventory.Global.BagsOpenedBy )
	
end

function ArkInventory.HookCloseAllBags( self, ... )
	
--	ArkInventory.Output2( "HookCloseAllBags( )" )
	
	local who = ...
	local whoname = who
	if who then
		whoname = who:GetName( )
	end
	
--	ArkInventory.Output2( "closed by ", whoname )
	
	return ArkInventory.hooks.CloseAllBags( ... )
	
end

local function helper_toggle_blizzard_bags( )
	
	local bagsOpen = 0
	local bagsTotal = 0
	
	-- close the open blizzard backpack
	bagsTotal = bagsTotal + 1
	if IsBagOpen( 0 ) then
		bagsOpen = bagsOpen + 1
		CloseBackpack( )
	end
	
	-- close any open blizzard bags
	for x = 1, NUM_BAG_SLOTS do
		if GetContainerNumSlots( x ) > 0 then
			bagsTotal = bagsTotal + 1
			if IsBagOpen( x ) then
				bagsOpen = bagsOpen + 1
				CloseBag( x )
			end
		end
	end
	
	if bagsOpen < bagsTotal then
		
		-- open the backpack and all blizzard bags sequentially
		ArkInventory.hooks.OpenBackpack( )
		for x = 1, NUM_BAG_SLOTS do
			if GetContainerNumSlots( x ) > 0 then
				ArkInventory.hooks.OpenBag( x )
			end
		end
		
	end
	
end

function ArkInventory.HookToggleAllBags( self, ... )
	
	if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bank ) then
		-- ai bags, ai bank
		ArkInventory.Frame_Main_Toggle( ArkInventory.Const.Location.Bag )
		return
	end
	
	if not ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) and not ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bank ) then
		-- blizzard bags, blizzard bank
		return ArkInventory.hooks.ToggleAllBags( ... )
	end
	
	
	if not ArkInventory.Global.Mode.Bank then	
		
		-- not at the bank
		
		if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
			
			-- ai bags
			
			ArkInventory.Frame_Main_Toggle( ArkInventory.Const.Location.Bag )
			
		else
			
			-- blizzard bags
			
			helper_toggle_blizzard_bags( )
			
		end
		
	else
		
		-- at the bank
		
		if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
			
			-- ai bags, blizzard bank
			
			local bagsOpen = 0
			local bagsTotal = 0
			
			bagsTotal = bagsTotal + 1
			local BackpackAlreadyOpen = ArkInventory.Frame_Main_Get( ArkInventory.Const.Location.Bag ):IsVisible( )
			if BackpackAlreadyOpen then
				bagsOpen = bagsOpen + 1
				ArkInventory.Frame_Main_Hide( ArkInventory.Const.Location.Bag )
			end
			
			if bagsOpen < bagsTotal then
				
				ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
				
			else
				
				bagsOpen = 0
				bagsTotal = 0
				
				for x = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
					if GetContainerNumSlots( x ) > 0 then
						bagsTotal = bagsTotal + 1
						if IsBagOpen( x ) then
							bagsOpen = bagsOpen + 1
							CloseBag( x )
						end
					end
				end
				
				if bagsOpen < bagsTotal then
					
					ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
					
					for x = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
						if GetContainerNumSlots( x ) > 0 then
							ArkInventory.hooks.OpenBag( x )
						end
					end
					
				end
				
			end
			
		else
			
			-- blizzard bags, ai bank
			
			helper_toggle_blizzard_bags( )
			
		end
		
	end
	
end

function ArkInventory.HookDoNothing( self )
	-- ArkInventory.OutputDebug( "HookDoNothing( )" )
	-- do nothing
end

function ArkInventory.HookGuildBankPopupOkayButton_OnClick( self )

	--ArkInventory.OutputDebug( "GuildBankPopupOkayButton_OnClick( )" )
	--ArkInventory.hooks.GuildBankPopupOkayButton_OnClick( )
	
	local loc_id = ArkInventory.Const.Location.Vault
	
	if not ArkInventory.Global.Location[loc_id].isOffline then
		ArkInventory.Frame_Main_Generate( loc_id )
	end
	
end

function ArkInventory.HookVoidStorageShow( self, ... )
	ArkInventory:EVENT_ARKINV_VOID_ENTER( ... )
end

function ArkInventory.HookVoidStorageHide( self, ... )
	ArkInventory:EVENT_ARKINV_VOID_LEAVE( ... )
end

function ArkInventory.HookVoidStorageEvent( self, event )
--	ArkInventory.Output2( "void storage event ", event )
end

function ArkInventory.HookFloatingBattlePet_Show( ... )
	
	-- speciesID, level, breedQuality, maxHealth, power, speed, customName, bPetID
	
	--ArkInventory.Output2( "0 - HookFloatingBattlePet_Show" )
	
	if not ArkInventory:IsEnabled( ) then return end
	
	if not ArkInventory.db.option.tooltip.battlepet.enable then return end
	
	FloatingBattlePetTooltip:Hide( )
	
	local h = ArkInventory.BattlepetBaseHyperlink( ... )
	
	if not ItemRefTooltip:IsVisible( ) then
		ItemRefTooltip:SetOwner( UIParent, "ANCHOR_PRESERVE" )
	end
	
	if ItemRefTooltip:IsShown( ) and ItemRefTooltip.ARKTTD[1] == h then
		ItemRefTooltip:Hide( )
	else
		ArkInventory.TooltipCustomBattlepetShow( ItemRefTooltip, h )
	end
	
end

function ArkInventory.HookCPetJournalSetFavorite( ... )
	ArkInventory:SendMessage( "EVENT_ARKINV_COLLECTION_PET_UPDATE_BUCKET", "SET_FAVOURITE" )
end

function ArkInventory.HookCPetJournalSetCustomName( ... )
	ArkInventory:SendMessage( "EVENT_ARKINV_COLLECTION_PET_UPDATE_BUCKET", "RENAME" )
end

function ArkInventory.HookCToyboxSetFavorite( ... )
	ArkInventory:SendMessage( "EVENT_ARKINV_COLLECTION_TOYBOX_UPDATE_BUCKET", "SET_FAVOURITE" )
end

function ArkInventory.LoadAddOn( addonname )
	if IsAddOnLoaded( addonname ) then
		return true
	else
		local loaded, reason = LoadAddOn( addonname )
		if reason then
			ArkInventory.OutputError( "Failed to load ", addonname, ": ", getglobal( "ADDON_" .. reason ) )
		else
			--ArkInventory.Output( "Loaded ", addonname )
		end
		return not not loaded
	end
end

function ArkInventory.BlizzardAPIHook( disable, reload )
	
	-- required blizzard internal addons - load them here as they expect to be loaded after the user has logged in, they usually have issues if you try to load them too early
	
	if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
		ArkInventory.LoadAddOn( "Blizzard_Collections" )
		ArkInventory.LoadAddOn( "Blizzard_GuildBankUI" )
		ArkInventory.LoadAddOn( "Blizzard_VoidStorageUI" )
		--ArkInventory.LoadAddOn( "Blizzard_ScrappingMachineUI" )
	end
	--ArkInventory.LoadAddOn( "Blizzard_AuctionHouseUI" )
	
	if not ArkInventory.Global.BlizzardAPIHook then
		
		if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
			
			-- void storage
			VoidStorageFrame:HookScript( "OnShow", ArkInventory.HookVoidStorageShow )
			VoidStorageFrame:HookScript( "OnHide", ArkInventory.HookVoidStorageHide )
			
			-- collections
			PetJournal:HookScript( "OnHide", ArkInventory.Collection.Pet.OnHide )
			MountJournal:HookScript( "OnHide", ArkInventory.Collection.Mount.OnHide )
			HeirloomsJournal:HookScript( "OnHide", ArkInventory.Collection.Heirloom.OnHide )
			ToyBox:HookScript( "OnHide", ArkInventory.Collection.Toybox.OnHide )
			TokenFrame:HookScript( "OnHide", ArkInventory.Collection.Currency.OnHide )
			
		end
		
		ReputationFrame:HookScript( "OnHide", ArkInventory.Collection.Reputation.OnHide )
		
		ArkInventory.Global.BlizzardAPIHook = true
		
	end
	
	
	if not disable and not reload then
		
		-- backpack functions
		ArkInventory:RawHook( "OpenBackpack", "HookOpenBackpack", true )
		ArkInventory:RawHook( "ToggleBackpack", "HookToggleBackpack", true )
		
		if ArkInventory.ClientCheck( ArkInventory.Const.Blizzard.Client.RETAIL ) then
			ArkInventory:SecureHook( "BackpackTokenFrame_Update", ArkInventory.Frame_Status_Update_Tracking )
		end
		
		
		-- bag functions
		ArkInventory:RawHook( "OpenBag", "HookOpenBag", true )
		ArkInventory:RawHook( "CloseBag", "HookCloseBag", true )
		ArkInventory:RawHook( "ToggleBag", "HookToggleBag", true )
		ArkInventory:RawHook( "OpenAllBags", "HookOpenAllBags", true )
		ArkInventory:RawHook( "CloseAllBags", "HookCloseAllBags", true )
		if ToggleAllBags then
			ArkInventory:RawHook( "ToggleAllBags", "HookToggleAllBags", true )
		end
		
		
		-- mailbox fuctions
		ArkInventory:SecureHook( "SendMail", ArkInventory.HookMailSend )
		ArkInventory:SecureHook( "ReturnInboxItem", ArkInventory.HookMailReturn )
		
		
		-- battlepet functions
		if C_PetJournal then
			ArkInventory:SecureHook( C_PetJournal, "SetFavorite", ArkInventory.HookCPetJournalSetFavorite )
			ArkInventory:SecureHook( C_PetJournal, "SetCustomName", ArkInventory.HookCPetJournalSetCustomName )
		end
		
		
		-- toybox functions
		if C_ToyBox then
			ArkInventory:SecureHook( C_ToyBox, "SetIsFavorite", ArkInventory.HookCToyboxSetFavorite )
		end
		
		
		-- battlepet tooltips
		if C_PetJournal then
			ArkInventory:SecureHook( "BattlePetToolTip_Show", ArkInventory.HookBattlePetToolTip_Show )
			ArkInventory:SecureHook( "FloatingBattlePet_Show", ArkInventory.HookFloatingBattlePet_Show )
		end
		
		
		-- covenant sanctum, deposit button, mount check
		if C_CovenantSanctumUI then
			ArkInventory:SecureHook( C_CovenantSanctumUI, "DepositAnima", ArkInventory.HookCovenantSanctumDepositAnima )
		end
		
		
		-- tooltips
		for func, proj in pairs( ArkInventory.Const.Blizzard.TooltipFunctions ) do
			local myfunc = "HookTooltip"..func
			if not ArkInventory[myfunc] then
				ArkInventory.OutputWarning( "code issue - a matching function for [", myfunc, "] was not found!" )
			end
		end
		
		for _, obj in pairs( ArkInventory.Global.Tooltip.WOW ) do
			if obj then
				
				ArkInventory.TooltipMyDataClear( obj )
				
				for func, proj in pairs( ArkInventory.Const.Blizzard.TooltipFunctions ) do
					if ArkInventory.ClientCheck( proj ) then
						local myfunc = "HookTooltip"..func
						if obj[func] and ArkInventory[myfunc] then
							ArkInventory:SecureHook( obj, func, ArkInventory[myfunc] )
							--ArkInventory.Output( obj:GetName( ), ":", func, " secure hooked" )
						else
							ArkInventory.OutputWarning( obj:GetName( ), ":", func, " is missing, please contact author" )
						end
					end
				end
				
				obj:HookScript( "OnUpdate", ArkInventory.HookTooltipOnUpdate )
				obj:HookScript( "OnShow", ArkInventory.HookTooltipOnShow )
				obj:HookScript( "OnHide", ArkInventory.HookTooltipOnHide )
				
				if obj == ItemRefTooltip then
					obj:HookScript( "OnEnter", ArkInventory.HookTooltipOnEnter )
					obj:HookScript( "OnLeave", ArkInventory.HookTooltipOnLeave )
				end
				
				-- battlepet mouseovers (retail only check is in the hook function)
				if obj:HasScript( "OnTooltipSetUnit" ) then
					obj:HookScript( "OnTooltipSetUnit", ArkInventory.HookOnTooltipSetUnit )
				end
				
			end
		end
		
--		for x = 1, NUM_FACTIONS_DISPLAYED do
--			local obj = _G["ReputationBar" .. x]
--			obj:HookScript( "OnEnter", ArkInventory.TooltipAddCustomReputationToCharacterFrame )
--		end
		
	end
	
	
	if disable then
		ArkInventory.Frame_Main_Hide( )
	end
	
	
	-- bank
	if disable or not ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bank ) then
		BankFrame_OnHide( BankFrame )
		BankFrame:RegisterEvent( "BANKFRAME_OPENED" )
	else
		CloseBankFrame( )
		BankFrame:UnregisterEvent( "BANKFRAME_OPENED" )
	end
	
	
	-- guild bank
	if ArkInventory.ClientCheck( ArkInventory.Global.Location[ArkInventory.Const.Location.Vault].proj ) then
		
		if not GuildBankFrame or not GuildBankPopupFrame then
			
			ArkInventory.OutputWarning( "GuildBankFrame or GuildBankPopupFrame are missing, cannot monitor or override vault" )
			
		else
			
			if disable or not ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Vault ) then
				
				-- restore guild bank functions
				
				UIParent:RegisterEvent( "GUILDBANKFRAME_OPENED" )
				
				GuildBankFrame:RegisterEvent( "GUILDBANKBAGSLOTS_CHANGED" )
				GuildBankFrame:RegisterEvent( "GUILDBANK_ITEM_LOCK_CHANGED" )
				GuildBankFrame:RegisterEvent( "GUILDBANK_UPDATE_TABS" )
				GuildBankFrame:RegisterEvent( "GUILDBANK_UPDATE_MONEY" )
				GuildBankFrame:RegisterEvent( "GUILDBANK_UPDATE_TEXT" )
				GuildBankFrame:RegisterEvent( "GUILD_ROSTER_UPDATE" )
				GuildBankFrame:RegisterEvent( "GUILDBANKLOG_UPDATE" )
				GuildBankFrame:RegisterEvent( "GUILDTABARD_UPDATE" )
				
				-- anchor pop-up to blizzard frame
				local frame = _G["GuildBankFrame"]
				if frame then
					GuildBankPopupFrame:ClearAllPoints( )
					GuildBankPopupFrame:SetPoint( "TOPLEFT", frame, "TOPRIGHT", -4, -30 )
				end
				
			else
				
				-- sever guild bank functions
				
				UIParent:UnregisterEvent( "GUILDBANKFRAME_OPENED" )
				
				GuildBankFrame:UnregisterEvent( "GUILDBANKBAGSLOTS_CHANGED" )
				GuildBankFrame:UnregisterEvent( "GUILDBANK_ITEM_LOCK_CHANGED" )
				GuildBankFrame:UnregisterEvent( "GUILDBANK_UPDATE_TABS" )
				GuildBankFrame:UnregisterEvent( "GUILDBANK_UPDATE_MONEY" )
				GuildBankFrame:UnregisterEvent( "GUILDBANK_UPDATE_TEXT" )
				GuildBankFrame:UnregisterEvent( "GUILD_ROSTER_UPDATE" )
				GuildBankFrame:UnregisterEvent( "GUILDBANKLOG_UPDATE" )
				GuildBankFrame:UnregisterEvent( "GUILDTABARD_UPDATE" )
				
				GuildBankFrame:Hide( )
				
				-- anchor popup to AI frame
				local frame = _G[string.format( ArkInventory.Const.Frame.Main.Name, ArkInventory.Const.Location.Vault )]
				if frame then
					GuildBankPopupFrame:Hide( )
					GuildBankPopupFrame:ClearAllPoints( )
					GuildBankPopupFrame:SetPoint( "TOPLEFT", frame, "TOPRIGHT", -4, -30 )
				end
				
			end
			
		end
		
	end

	-- tooltips
	if disable or not ArkInventory.db.option.tooltip.show then
		for _, obj in pairs( ArkInventory.Global.Tooltip.WOW ) do
			ArkInventory.TooltipMyDataClear( tooltip )
		end
	else
		for _, obj in pairs( ArkInventory.Global.Tooltip.WOW ) do
			if obj then
				
				if ArkInventory.db.option.tooltip.scale.enabled then
					if not obj.IsEmbedded then
						-- do not scale embedded tooltips, theyre already scaled from their parent
						obj:SetScale( ArkInventory.db.option.tooltip.scale.amount or 1 )
					end
				end
				
			end
		end
	end
	
	-- battlepet tooltips
	if C_PetJournal then
		if disable or not ArkInventory.db.option.tooltip.battlepet.enable then
			ItemRefTooltip:Hide( )
		else
			FloatingBattlePetTooltip:Hide( )
		end
	end
	
end



function ArkInventory.ClassColourRGB( class )
	
	if not class then return end
	
	local ct = nil
	
	-- reminder: ct will be pointing to a secured variable, if you change it you'll taint it and screw up AI (and a lot of other mods as well) - so dont.
	
	if class == ArkInventory.Const.Class.Guild then
		ct = ORANGE_FONT_COLOR
	elseif class == ArkInventory.Const.Class.Account then
		ct = YELLOW_FONT_COLOR
	else
		ct = ( CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[class] ) or RAID_CLASS_COLORS[class]
	end
	
	if not ct then
		return
	end
	
	local c = { r = ct.r <= 1 and ct.r >= 0 and ct.r or 0, g = ct.g <= 1 and ct.g >= 0 and ct.g or 0, b = ct.b <= 1 and ct.b >= 0 and ct.b or 0 }
	
	return c
	
end

function ArkInventory.ClassColourCode( class )
	
	local c = ArkInventory.ClassColourRGB( class )
	
	if not c then
		return HIGHLIGHT_FONT_COLOR:GenerateHexColor( )
	end
	
	return string.format( "|cff%02x%02x%02x", c.r * 255, c.g * 255, c.b * 255 )
	
end
	
function ArkInventory.ColourRGBtoCode( r, g, b, a, clean )
	
	if not r or not g or not b then
		return WHITE_FONT_COLOR:GenerateHexColor( )
	end
	
	local r = r <= 1 and r >= 0 and r or 0
	local g = g <= 1 and g >= 0 and g or 0
	local b = b <= 1 and b >= 0 and b or 0
	
	local a = a or 1
	a = a <= 1 and a >= 0 and a or 1
	
	local c = string.format( "%02x%02x%02x%02x", a * 255, r * 255, g * 255, b * 255 )
	if clean then
		return c
	else
		return string.format( "|c%s", c )
	end
	
end


function ArkInventory.CreateColour( r, g, b, a, f )
	
	local c = r
	local r = r
	local g = g
	local b = b
	local a = a
	local f = f -- false = return default colour on fail, true = return nil on fail
	
	if type( r ) == "string" then
		
		--ArkInventory.Output2( string.gsub( c, "\124", "\124\124" ) )
		f = g
		a, r, g, b = string.match( c, "^|c(%x%x)([%x%s]%x)(%x%x)(%x%x)" )
		if not a then
			a, r, g, b = string.match( c, "^(%x%x)([%x%s]%x)(%x%x)(%x%x)" )
			if not a then
				r, g, b = string.match( c, "^(%x%x)(%x%x)(%x%x)" )
				a = "ff"
			end
		end
		
		if f and ( not a or not r or not g or not b ) then return end
		
		--ArkInventory.Output2( r, "-", g, "-", b, "+", a )
		-- the trading parts colour has a space instead of a zero in the 3rd position for some reason
		-- at some point i need to work out if its from the alpha or the red value, im guessing red at the moment as they are a fairly bright light blue, almost heirloom
		
		a = ( tonumber( a or "ff", 16 ) or 255 ) / 255
		r = ( tonumber( r or "ff", 16 ) or 255 ) / 255
		g = ( tonumber( g or "ff", 16 ) or 255 ) / 255
		b = ( tonumber( b or "ff", 16 ) or 255 ) / 255
		
	end
	
	if f and not r and not g and not b then return end
	
	c = CreateColor( r, g, b, a )
	
	c.GenerateHexColor = function( self )
		-- we need the alpha so overwite the existing function
		local r, g, b, a = self:GetRGBAAsBytes( )
		return ("%.2x%.2x%.2x%.2x"):format( a, r, g, b )
	end
	
	--ArkInventory.Output2( c:WrapTextInColorCode( "this should be coloured text" ) )
	
	return c
	
end

function ArkInventory.StripColourCodes( txt )
	local txt = txt or ""
	txt = string.gsub( txt, "|c%x%x%x%x%x%x%x%x", "" )
	txt = string.gsub( txt, "|c%x%x %x%x%x%x%x", "" ) -- the trading parts colour has a space instead of a zero in the 3rd position for some reason
	txt = string.gsub( txt, "|r", "" )
	return txt
end

function ArkInventory.ContainerNameGet( loc_id )
	if loc_id ~= nil then
		local name = string.format( "%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Container.Name )
		return name, _G[name]
	end
end

function ArkInventory.ContainerBagNameGet( loc_id, bag_id )
	local name = ArkInventory.ContainerNameGet( loc_id )
	if name and bag_id ~= nil then
		name = string.format( "%s%s%s", name, "Bag", bag_id )
		return name, _G[name]
	end
end

function ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
	local name = ArkInventory.ContainerBagNameGet( loc_id, bag_id )
	if name and slot_id ~= nil then
		name = string.format( "%s%s%s", name, "Item", slot_id )
		return name, _G[name]
	end
end

function ArkInventory.ToggleChanger( loc_id )
	local codex = ArkInventory.GetLocationCodex( loc_id )
	codex.style.changer.hide = not codex.style.changer.hide
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Refresh )
end

function ArkInventory.ToggleEditMode( )
	ArkInventory.Lib.Dewdrop:Close( )
	ArkInventory.Global.Mode.Edit = not ArkInventory.Global.Mode.Edit
	--ArkInventory.OutputWarning( "ToggleEditMode - .restart window draw" )
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Restart )
	--ArkInventory.Frame_Bar_Paint_All( )
end

function ArkInventory.Frame_Vault_Log_Update( )
	
	local loc_id = ArkInventory.Const.Location.Vault
	
	local numTransactions = 0
	if GuildBankFrame.mode == "log" then
		numTransactions = GetNumGuildBankTransactions( ArkInventory.Global.Location[loc_id].view_tab ) or 0
	elseif GuildBankFrame.mode == "moneylog" then
		numTransactions = GetNumGuildBankMoneyTransactions( ) or 0
	end
	
	local maxLines = numTransactions
	
	if GuildBankFrame.mode == "moneylog" then
		maxLines = maxLines + 2
	end
	
	if numTransactions == 0 then
		maxLines = 1
	end
	
	local obj = _G[string.format( "%s%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Log.Name, ArkInventory.Const.Frame.Scrolling.List )]
	obj:SetMaxLines( maxLines )
	obj:ScrollToTop( )
	
	local tab = ArkInventory.Global.Location[loc_id].view_tab
	
	--obj:SetInsertMode( "TOP" )
	--obj:AddMessage( "-*- end of list -*-" )
	
	if numTransactions == 0 then
		obj:AddMessage( ArkInventory.Localise["NO_DATA_AVAILABLE"] )
	end
	
	local msg, transaction, name, h, count, tab1, tab2, amount, year, month, day, hour, money
	
	for i = 1, numTransactions do
		
		if GuildBankFrame.mode == "log" then
			transaction, name, h, count, tab1, tab2, year, month, day, hour = GetGuildBankTransaction( tab, i )
		elseif GuildBankFrame.mode == "moneylog" then
			transaction, name, amount, year, month, day, hour = GetGuildBankMoneyTransaction( i )
		end
		
		if not name then
			name = UNKNOWN
		end
		
		name = string.format( "%s%s%s", NORMAL_FONT_COLOR_CODE, name, FONT_COLOR_CODE_CLOSE )
		
		if GuildBankFrame.mode == "log" then
			
			if transaction == "deposit" then
				msg = format( GUILDBANK_DEPOSIT_FORMAT, name, h )
				if count > 1 then
					msg = string.format( "%s%s", msg, string.format( GUILDBANK_LOG_QUANTITY, count ) )
				end
			elseif transaction == "withdraw" then
				msg = string.format( GUILDBANK_WITHDRAW_FORMAT, name, h )
				if count > 1 then
					msg = string.format( "%s%s", msg, format( GUILDBANK_LOG_QUANTITY, count ) )
				end
			elseif transaction == "move" then
				msg = format( GUILDBANK_MOVE_FORMAT, name, h, count, GetGuildBankTabInfo( tab1 ), GetGuildBankTabInfo( tab2 ) )
			end
			
		elseif GuildBankFrame.mode == "moneylog" then
			
			money = GetDenominationsFromCopper( amount )
			
			if transaction == "deposit" then
				msg = format( GUILDBANK_DEPOSIT_MONEY_FORMAT, name, money )
			elseif transaction == "withdraw" then
				msg = format( GUILDBANK_WITHDRAW_MONEY_FORMAT, name, money )
			elseif transaction == "repair" then
				msg = format( GUILDBANK_REPAIR_MONEY_FORMAT, name, money )
			elseif transaction == "withdrawForTab" then
				msg = format( GUILDBANK_WITHDRAWFORTAB_MONEY_FORMAT, name, money )
			elseif transaction == "buyTab" then
				msg = format( GUILDBANK_BUYTAB_MONEY_FORMAT, name, money )
			end
			
		end
		
		if msg then
			obj:AddMessage( string.format( "%s%s%s", msg, GUILD_BANK_LOG_TIME_PREPEND, string.format( GUILD_BANK_LOG_TIME, RecentTimeDate( year, month, day, hour ) ) ) )
		end
		
	end
	
	if GuildBankFrame.mode == "moneylog" then
		obj:AddMessage( " " )
		obj:AddMessage( string.format( "%s %s", GUILDBANK_CASHFLOW, GetDenominationsFromCopper( GetGuildBankBonusDepositMoney( ) ) ) )
	end
	
	--ArkInventory.OutputWarning( "Frame_Vault_Log_Update - .Recalculate" )
	ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	
end

function ArkInventory.Frame_Vault_Info_Update( )
	
	local loc_id = ArkInventory.Const.Location.Vault
	local tab = ArkInventory.Global.Location[loc_id].view_tab
	local obj = _G[string.format( "%s%s%s%s", ArkInventory.Const.Frame.Main.Name, loc_id, ArkInventory.Const.Frame.Info.Name, "ScrollInfo" )]
	
	local text = GetGuildBankText( tab )
	if text then
		obj.text = text
		obj:SetText( text )
	else
		obj.text = ""
		obj:SetText( "" )
	end
	
	--ArkInventory.OutputWarning( "Frame_Vault_Info_Update - .Recalculate" )
	
	ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	
end

function ArkInventory.Frame_Vault_Info_Changed( self )
	
	local loc_id = ArkInventory.Const.Location.Vault
	local tab = ArkInventory.Global.Location[loc_id].view_tab
	local button = _G[self:GetParent( ):GetParent( ):GetName( ).."Save"]
	
	if tab <= GetNumGuildBankTabs( ) and CanEditGuildTabInfo( tab ) and self:GetText( ) ~= self.text then
		button:Enable( )
	else
		button:Disable( )
	end
	
end

function ArkInventory.ScrollingMessageFrame_Scroll( parent, name, direction )

	if not parent or not name then
		return
	end
	
	local obj = _G[string.format( "%s%s", parent:GetName( ), name )]
	if not obj then
		return
	end
	
	local i = obj:GetInsertMode( )
	
	if i == "TOP" then
	
		if direction == "up" and not obj:AtBottom( ) then
			obj:ScrollDown( )
		elseif direction == "pageup" and not obj:AtBottom( ) then
			obj:PageDown( )
		elseif direction == "down" and not obj:AtTop( ) then
			obj:ScrollUp( )
		elseif direction == "pagedown" and not obj:AtTop( ) then
			obj:PageUp( )
		end
	
	else
	
		if direction == "up" and not obj:AtTop( ) then
			obj:ScrollUp( )
		elseif direction == "pageup" and not obj:AtTop( ) then
			obj:PageUp( )
		elseif direction == "down" and not obj:AtBottom( ) then
			obj:ScrollDown( )
		elseif direction == "pagedown" and not obj:AtBottom( ) then
			obj:PageDown( )
		end
	
	end
	
end

function ArkInventory.ScrollingMessageFrame_ScrollWheel( parent, name, direction )
	
	if direction == 1 then
		ArkInventory.ScrollingMessageFrame_Scroll( parent, name, "up" )
	else
		ArkInventory.ScrollingMessageFrame_Scroll( parent, name, "down" )
	end
	
end

function ArkInventory.LocationIsMonitored( loc_id ) -- listen for changes in this location?
	if ArkInventory.ClientCheck( ArkInventory.Global.Location[loc_id].proj ) then
		local me = ArkInventory.GetPlayerCodex( loc_id )
		return me.profile.location[loc_id].monitor
	end
end

function ArkInventory.LocationIsControlled( loc_id )
	if ArkInventory.ClientCheck( ArkInventory.Global.Location[loc_id].proj ) then
		local me = ArkInventory.GetPlayerCodex( loc_id )
		return me.profile.location[loc_id].override
	end
end

function ArkInventory.LocationIsSaved( loc_id )
	if ArkInventory.ClientCheck( ArkInventory.Global.Location[loc_id].proj ) then
		local me = ArkInventory.GetPlayerCodex( loc_id )
		return me.profile.location[loc_id].save
	end
	return false
end

function ArkInventory.DisplayName1( p )
	-- window titles (normal)
	if p.class == ArkInventory.Const.Class.Account then
		return p.name or ArkInventory.Localise["UNKNOWN"]
	else
		return string.format( "%s\n%s > %s", p.name or ArkInventory.Localise["UNKNOWN"], p.faction_local or ArkInventory.Localise["UNKNOWN"], p.realm or ArkInventory.Localise["UNKNOWN"] )
	end
end

function ArkInventory.DisplayName2( p )
	-- switch menu
	if p.class == ArkInventory.Const.Class.Account then
		return p.name or ArkInventory.Localise["UNKNOWN"]
	else
		return string.format( "%s > %s > %s", p.realm or ArkInventory.Localise["UNKNOWN"], p.faction_local or ArkInventory.Localise["UNKNOWN"], p.name or ArkInventory.Localise["UNKNOWN"] )
	end
end

function ArkInventory.DisplayName3( p, paint, ref )
	
	-- tooltip item/gold count
	assert( p, "code error: argument is missing" )
	
	local me = ArkInventory.GetPlayerCodex( )
	local ref = ref or me.player.data.info
	
	local name = p.name
	if paint then
		name = string.format( "%s%s", ArkInventory.ClassColourCode( p.class ), p.name or ArkInventory.Localise["UNKNOWN"] )
	end
	
	local realm = p.realm or ArkInventory.Localise["UNKNOWN"]
	if p.class == ArkInventory.Const.Class.Account or realm == ref.realm then
		realm = ""
	else
		realm = string.format( " - %s", realm )
	end
	
	local faction_local = p.faction_local or ArkInventory.Localise["UNKNOWN"]
	if p.class == ArkInventory.Const.Class.Account or faction_local == ref.faction_local then
		faction_local = ""
	else
		faction_local = string.format( " [%s]", faction_local )
	end
	
	local account = ""
	if p.account_id ~= ref.account_id then
		account = string.format( " (** %s **)", ArkInventory.db.account.data[p.account_id].name or ArkInventory.Localise["UNKNOWN"] )
	end
	
	local r = string.format( "%s%s%s%s", name, realm, faction_local, account )
	if paint then
		r = string.format( "%s|r", r )
	end
	
	return r
	
end

function ArkInventory.DisplayName4( p, f )
	-- switch character
	if p.class == ArkInventory.Const.Class.Account then
		return string.format( "%s%s|r", ArkInventory.ClassColourCode( p.class ), p.name or ArkInventory.Localise["UNKNOWN"] )
	else
		if p.faction == f then
			-- same faction
			return string.format( "%s%s (%s:%s)", ArkInventory.ClassColourCode( p.class ), p.name or ArkInventory.Localise["UNKNOWN"], p.class_local or ArkInventory.Localise["UNKNOWN"], p.level or ArkInventory.Localise["UNKNOWN"] )
		else
			-- different faction so display faction name
			--return string.format( "%s%s (%s:%s) |cff7f7f7f[%s]|r", ArkInventory.ClassColourCode( p.class ), p.name or ArkInventory.Localise["UNKNOWN"], p.class_local or ArkInventory.Localise["UNKNOWN"], p.level or ArkInventory.Localise["UNKNOWN"], p.faction_local or ArkInventory.Localise["UNKNOWN"] )
			return string.format( "%s%s (%s:%s) [%s]|r", ArkInventory.ClassColourCode( p.class ), p.name or ArkInventory.Localise["UNKNOWN"], p.class_local or ArkInventory.Localise["UNKNOWN"], p.level or ArkInventory.Localise["UNKNOWN"], p.faction_local or ArkInventory.Localise["UNKNOWN"] )
		end
	end
end

function ArkInventory.DisplayName5( p )
	-- window titles (thin)
	return string.format( "%s", p.name or ArkInventory.Localise["UNKNOWN"] )
end

function ArkInventory.MemoryUsed( c )

	if c then
		collectgarbage( "stop" )
	end

	--UpdateAddOnMemoryUsage( )

	--local am = GetAddOnMemoryUsage( ArkInventory.Const.Program.Name ) * 1000
	local am = collectgarbage( "count" )
	
	if not c then
		collectgarbage( "restart" )
	end
	
	return am

end

function ArkInventory.TimeAsMinutes( )
	return math.floor( time( date( '*t' ) ) / 60 ) -- minutes
end

function ArkInventory.ItemAgeGet( age )
	
	if age and type( age ) == "number" then
		
		local s = ArkInventory.Localise["DHMS"]
		
		local x = ArkInventory.TimeAsMinutes( ) - age
		local m = x + 1 -- push seconds up so that items with less than a minute get displayed
		
		local d = math.floor( m / 1440 )
		m = math.floor( m - d * 1440 )
		local h = math.floor( m / 60 )
		m = math.floor( m - h * 60 )
		
		local t = ""
		
--[[
		if d > 0 then
			t = string.format( "%d%s ", d, string.sub( s, 1, 1 ) )
		end
		
		if h > 0 or ( d > 0 and m > 0 ) then
			t = string.format( "%s%d%s ", t, h, string.sub( s, 2, 2 ) )
		end
		
		if m > 0 and d == 0 then -- only show minutes if were not into days
			t = string.format( "%s%d%s", t, m, string.sub( s, 3, 3 ) )
		end
]]--
		
		if d > 0 then
			t = string.format( "%d:%d%s", d, h, string.sub( s, 1, 1 ) )
		elseif h > 0 then
			t = string.format( "%d:%d%s", h, m, string.sub( s, 2, 2 ) )
		else
			t = string.format( "%d%s", m, string.sub( s, 3, 3 ) )
		end
		
		return x, string.trim( t )
		
	end
	
	return false, ""
	
end

function ArkInventory.StartupChecks( )
	
end

function ArkInventory.UiSetEditBoxLabel( frame, label )
	assert( frame and label, "code error: argument is missing" )
	_G[string.format( "%s%s", frame:GetName( ), "Label" )]:SetText( label )
end

function ArkInventory.UiTabToNext( frame, c, p, n )
	
	assert( frame and c and p and n, "code error: argument is missing" )
	
	local f = frame:GetName( )
	f = string.sub( f, 1, string.len( f ) - string.len( c ) )
	
	if IsShiftKeyDown( ) then
		f = string.format( "%s%s", f, p )
	else
		f = string.format( "%s%s", f, n )
	end
	
	local w = _G[f]
	assert( w, "code error: invalid prev/next argument" )
	w:SetFocus( )
	
end


function ArkInventory.Frame_Search_Paint( )
	
	
	if ArkInventory.Search.frame then
		ArkInventorySearch.Frame_Paint( )
	end
	
end

function ArkInventory.ThreadRunning( thread_id )
	
	if not ArkInventory.Global.Thread.Use then
		return false
	end
	
	local data = ArkInventory.Global.Thread.data[thread_id]
	if data and data.thread and type( data.thread ) == "thread" and coroutine.status( data.thread ) ~= "dead" then
		return true
	end
	
	return false
	
end

function ArkInventory.ThreadStart( thread_id, thread_func )
	
	local threads = ArkInventory.Global.Thread.data
	
	if threads[thread_id] then
		
		ArkInventory.OutputThread( string.format( "%s restarting", thread_id ) )
		
	else
		
		local tz = debugprofilestop( )
		
		ArkInventory.OutputThread( string.format( "%s starting", thread_id ) )
		threads[thread_id] = {
			timer = nil, -- if the thread needs to wait before running again then this needs to be set
			duration = 0, -- how long the thread actually ran for
		}
		
		
		if thread_id == ArkInventory.Global.Thread.Format.JunkSell then
			threads[thread_id].timer = ArkInventory.db.option.thread.timeout.junksell
		elseif thread_id == ArkInventory.Global.Thread.Format.Tradeskill then
			--threads[thread_id].timer = ArkInventory.db.option.thread.timeout.tradeskill
		end
		
	end
	
	threads[thread_id].resumed = debugprofilestop( )
	threads[thread_id].thread = coroutine.create( thread_func )
	
	ARKINV_ThreadTimer:Show( )
	
end

function ArkInventory.ThreadResume( )
	
	local threads = ArkInventory.Global.Thread.data
	
	--ArkInventory.Output( threads )
	
	local tz = debugprofilestop( )
	
	-- we only run the first suspended thread, then we return, we dont keep looping here
	
	for thread_id, data in ArkInventory.spairs( threads, function( a, b ) return a < b end ) do
		
		if data and data.thread and type( data.thread ) == "thread" then
			
			if coroutine.status( data.thread ) == "suspended" then
				
				if data.timer then
					
					-- threads that have to wait a certain amount of time before they can run again
					
					if data.duration < data.timer then
						
						-- increment duration until timer is reached
						
						if data.duration == 0 then
							data.resumed = tz - 1 -- needs a small offset or duration never gets off zero
						end
						
						data.duration = tz - data.resumed
						
						--ArkInventory.OutputThread( string.format( "%s %s waiting %0.2fms (%0.2fms)", thread_id, coroutine.status( data.thread ), data.duration, data.timer ) )
						
						return false
						
					else
						
						--ArkInventory.OutputThread( string.format( "%s %s waited %0.2fms (%0.2fms)", thread_id, coroutine.status( data.thread ), data.duration, data.timer ) )
						
						local ok, errmsg = coroutine.resume( data.thread )
						-- yields come back here
						
						data.duration = 0
						
						if not ok then
							ArkInventory.OutputError( errmsg )
							error( errmsg )
						end
						
						return false
						
					end
					
				else
					
					-- threads that can only run for so long
					
					data.resumed = tz
					
					local ok, errmsg = coroutine.resume( data.thread )
					-- yields come back here
					
					tz = debugprofilestop( ) - data.resumed
					data.duration = data.duration + tz
					ArkInventory.OutputThread( string.format( "%s %s after %0.2fms (%0.2fms)", thread_id, coroutine.status( data.thread ), tz, data.duration ) )
					
					if not ok then
						ArkInventory.OutputError( errmsg )
						error( errmsg )
					end
					
					return false
					
				end
				
			else
				
				ArkInventory.OutputThread( thread_id, ": clearing (state is ", coroutine.status( data.thread ), ")" )
				ArkInventory.Global.Thread.data[thread_id] = nil
				return false
				
			end
			
		else
			
			ArkInventory.OutputThread( thread_id, ": clearing (not a thread)" )
			ArkInventory.Global.Thread.data[thread_id] = nil
			return false
			
		end
		
	end
	
	return true
	
end

function ArkInventory.ThreadYield( thread_id )
	
	if not ArkInventory.Global.Thread.Use then return end
	
	local threads = ArkInventory.Global.Thread.data
	
	local thread_id = thread_id or ArkInventory.Global.Thread.Format.Force
	local tz = debugprofilestop( )
	local duration = tz - threads[thread_id].resumed
	
	local timeout = ArkInventory.db.option.thread.timeout.normal
	
	if thread_id == ArkInventory.Global.Thread.Format.Tooltip then
		
		timeout = ArkInventory.db.option.thread.timeout.tooltip
		
	elseif thread_id == ArkInventory.Global.Thread.Format.Search then
		
		timeout = timeout / 2
		
	elseif thread_id == ArkInventory.Global.Thread.Format.Tradeskill then
		
		timeout = 1
		
	elseif thread_id == ArkInventory.Global.Thread.Format.JunkSell then
		
		thread_id = ArkInventory.Global.Thread.Format.Force
		
	else
		
		if InCombatLockdown( ) then
			timeout = ArkInventory.db.option.thread.timeout.combat
		end
		
	end
	
	if thread_id == ArkInventory.Global.Thread.Format.Force or duration >= timeout then
		
		if thread_id == ArkInventory.Global.Thread.Format.Force then
			ArkInventory.OutputThread( GREEN_FONT_COLOR_CODE, string.format( "%s forced yield (%0.0fms)", thread_id, duration ) )
		else
			--ArkInventory.OutputThread( GREEN_FONT_COLOR_CODE, string.format( "%s yielding %0.0f >= %0.0f", thread_id, duration, timeout ) )
		end
		
		ARKINV_ThreadTimer:Show( )
		coroutine.yield( )
		
	else
		
		--ArkInventory.OutputThread( GREEN_FONT_COLOR_CODE, string.format( "%s continue %0.0f >= %0.0f", thread_id, duration, timeout ) )
		
	end
	
end

function ArkInventory.ThreadYield_Scan( thread_id )
	ArkInventory.ThreadYield( thread_id )
end

function ArkInventory.ThreadYield_Window( loc_id )
	local thread_id
	if loc_id then
		thread_id = string.format( ArkInventory.Global.Thread.Format.Window, loc_id )
	end
	ArkInventory.ThreadYield( thread_id )
end

function ArkInventory.CheckPlayerHasControl( )
	
	if UnitOnTaxi( "player" ) or UnitInVehicle( "player" ) then
		return false, ERR_CLIENT_ON_TRANSPORT
	end
	
	if C_LossOfControl.GetNumEvents then
		
		if C_LossOfControl.GetNumEvents( ) > 0 then
			local locType, spellID, text, iconTexture, startTime, timeRemaining, duration, lockoutSchool, priority, displayType = C_LossOfControl.GetEventInfo( 1 )
			return false, string.format( SPELL_FAILED_PREVENTED_BY_MECHANIC, text )
		end
	
	elseif C_LossOfControl.GetActiveLossOfControlDataCount then
		
		if C_LossOfControl.GetActiveLossOfControlDataCount( ) > 0 then
			local tbl = C_LossOfControl.GetActiveLossOfControlData( 1 )
			return false, string.format( SPELL_FAILED_PREVENTED_BY_MECHANIC, tbl.displayText or ArkInventory.Localise["UNKNOWN"] )
		end
		
	end
	
	return true
	
end

function ArkInventory.EditModeMove( Type, loc_id, bar_id, cat_id )
	
	-- move via menu
	
	if frame then
		local i = ArkInventory.Frame_Item_GetDB( frame )
		loc_id = i.loc_id
		cat_id = ArkInventory.ItemCategoryGet( i )
		bar_id = ArkInventory.CategoryLocationGet( loc_id, cat_id )
	end

	ArkInventory.Global.Options.MoveType = Type
	ArkInventory.Global.Options.MoveLocation = loc_id
	ArkInventory.Global.Options.MoveSourceBar = bar_id
	ArkInventory.Global.Options.MoveSourceData = cat_id
	ArkInventory.Global.Options.MoveSourceFrame = frame
	
end

function ArkInventory.EditModeIsDragging( )
	if ArkInventory.Global.Mode.Edit and ArkInventory.Global.Options.OnDragSourceFrame then
		return true
	end
end

function ArkInventory.EditModeOnDragSet( dragtype, frame )
	
	-- move from drag and drop
	
	local loc_id = frame and frame.ARK_Data.loc_id
	local bar_id = frame and frame.ARK_Data.bar_id
	local cat_id
	
	if frame then
		local i = ArkInventory.Frame_Item_GetDB( frame )
		if i then
			cat_id = ArkInventory.ItemCategoryGet( i )
			bar_id = ArkInventory.CategoryLocationGet( loc_id, cat_id )
		end
	end
	
	ArkInventory.Global.Options.OnDragSourceFrame = frame
	ArkInventory.Global.Options.OnDragType = dragtype
	ArkInventory.Global.Options.OnDragLocation = loc_id
	ArkInventory.Global.Options.OnDragSourceBar = bar_id
	ArkInventory.Global.Options.OnDragSourceCategory = cat_id
	
end

function ArkInventory.IsBound( bind )
	if bind == ArkInventory.Const.Bind.Pickup or bind == ArkInventory.Const.Bind.Account then
		return true
	end
end

function ArkInventory.SetCursor( cursor )
	if cursor then
		SetCursor( cursor )
	else
		ResetCursor( )
	end
end
