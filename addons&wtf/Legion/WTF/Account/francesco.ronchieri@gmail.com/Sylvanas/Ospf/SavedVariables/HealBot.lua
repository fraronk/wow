
HealBot_Config = {
	["CrashProtStartTime"] = 2,
	["SkinDefault"] = {
		["Standard"] = 1,
		["Raid"] = 1,
		["Valle d'Alterac"] = 1,
		["Group"] = 1,
	},
	["DisableHealBot"] = false,
	["BuffReset"] = "6.0.0",
	["AdjustMaxHealth"] = false,
	["LastVersionSkinUpdate"] = "7.3.5.0",
	["EnableHealthy"] = true,
	["ActionVisible"] = {
		0, -- [1]
		0, -- [2]
		0, -- [3]
		0, -- [4]
		0, -- [5]
		0, -- [6]
		0, -- [7]
		0, -- [8]
		0, -- [9]
		0, -- [10]
	},
	["MacroUse10"] = 0,
	["Current_Skin"] = "Group",
	["Profile"] = 1,
	["Skin_ID"] = 2,
	["Version"] = "7.3.5.0",
	["CrashProtMacroName"] = "hbCrashProt",
	["DisableSolo"] = false,
	["CurrentSpec"] = 1,
	["HealBot_BuffWatchGUID"] = {
	},
	["DisabledNow"] = 0,
}
HealBot_Config_Spells = {
	["EnabledSpellTrinket2"] = {
	},
	["EnabledSpellTarget"] = {
	},
	["EnemySpellTrinket1"] = {
	},
	["EnemyAvoidBlueCursor"] = {
	},
	["EnemySpellTrinket2"] = {
	},
	["DisabledSpellTrinket1"] = {
	},
	["ButtonCastMethod"] = 2,
	["EnabledAvoidBlueCursor"] = {
	},
	["DisabledAvoidBlueCursor"] = {
	},
	["DisabledSpellTrinket2"] = {
	},
	["DisabledSpellTarget"] = {
	},
	["EnemySpellTarget"] = {
	},
	["EnabledSpellTrinket1"] = {
	},
}
HealBot_Config_Buffs = {
	["LongBuffTimer"] = 120,
	["BuffWatchInCombat"] = false,
	["ShortBuffTimer"] = 10,
	["BuffWatchWhenGrouped"] = true,
	["HealBotBuffColB"] = {
	},
	["BuffWatch"] = true,
	["NoAuraWhenRested"] = false,
	["HealBotBuffColG"] = {
	},
	["HealBotBuffText"] = {
		["42"] = "None",
		["43"] = "None",
		["47"] = "None",
		["41"] = "None",
		["36"] = "None",
		["46"] = "None",
		["34"] = "None",
		["44"] = "None",
		["48"] = "None",
		["33"] = "None",
		["28"] = "None",
		["38"] = "None",
		["37"] = "None",
		["27"] = "None",
		["17"] = "None",
		["22"] = "None",
		["12"] = "None",
		["45"] = "None",
		["35"] = "None",
		["25"] = "None",
		["15"] = "None",
		["18"] = "None",
		["23"] = "None",
		["13"] = "None",
		["14"] = "None",
		["24"] = "None",
		["16"] = "None",
		["26"] = "None",
		["31"] = "None",
		["21"] = "None",
		["11"] = "None",
		["32"] = "None",
	},
	["HealBotBuffColR"] = {
	},
	["HealBotBuffDropDown"] = {
		["42"] = 4,
		["43"] = 4,
		["47"] = 4,
		["41"] = 4,
		["36"] = 4,
		["46"] = 4,
		["34"] = 4,
		["44"] = 4,
		["48"] = 4,
		["33"] = 4,
		["28"] = 4,
		["38"] = 4,
		["37"] = 4,
		["27"] = 4,
		["17"] = 4,
		["22"] = 4,
		["12"] = 4,
		["45"] = 4,
		["35"] = 4,
		["25"] = 4,
		["15"] = 4,
		["18"] = 4,
		["23"] = 4,
		["13"] = 4,
		["14"] = 4,
		["24"] = 4,
		["16"] = 4,
		["26"] = 4,
		["31"] = 4,
		["21"] = 4,
		["11"] = 4,
		["32"] = 4,
	},
}
HealBot_Config_Cures = {
	["CDCshownHB"] = true,
	["DebuffWatch"] = true,
	["HealBotDebuffText"] = {
	},
	["IgnoreFastDurDebuffs"] = true,
	["ShowDebuffWarning"] = true,
	["HealBot_CDCWarnRange_Screen"] = 2,
	["DebuffWatchInCombat"] = true,
	["IgnoreMovementDebuffs"] = true,
	["HealBot_CDCWarnRange_Aggro"] = 2,
	["IgnoreNonHarmfulDebuffs"] = true,
	["IgnoreClassDebuffs"] = true,
	["HealBot_CDCWarnRange_Bar"] = 3,
	["IgnoreFastDurDebuffsSecs"] = 2,
	["HealBot_CDCWarnRange_Sound"] = 3,
	["SoundDebuffPlay"] = "Tribal Bass Drum",
	["SoundDebuffWarning"] = false,
	["CDCshownAB"] = false,
	["IgnoreFriendDebuffs"] = true,
	["DebuffWatchWhenGrouped"] = false,
	["IgnoreOnCooldownDebuffs"] = false,
	["HealBotDebuffDropDown"] = {
		["42"] = 4,
		["43"] = 4,
		["41"] = 4,
		["33"] = 4,
		["23"] = 4,
		["13"] = 4,
		["12"] = 4,
		["22"] = 4,
		["31"] = 4,
		["21"] = 4,
		["11"] = 4,
		["32"] = 4,
	},
	["CDCBarColour"] = {
		["Curse"] = {
			["B"] = 0.09,
			["G"] = 0.43,
			["R"] = 0.83,
		},
		["Disease"] = {
			["B"] = 0.7,
			["G"] = 0.19,
			["R"] = 0.55,
		},
		["Magic"] = {
			["B"] = 0.83,
			["G"] = 0.33,
			["R"] = 0.26,
		},
		["Poison"] = {
			["B"] = 0.24,
			["G"] = 0.46,
			["R"] = 0.12,
		},
	},
	["HealBotDebuffPriority"] = {
		["Disease"] = 7,
		["Custom"] = 10,
		["Poison"] = 8,
		["Magic"] = 5,
		["Curse"] = 6,
	},
	["HealBot_Custom_Defuffs_All"] = {
		["Curse"] = false,
		["Disease"] = false,
		["Magic"] = false,
		["Poison"] = false,
	},
}
