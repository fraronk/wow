local SLE, T, E, L, V, P, G = unpack(select(2, ...))

V["skins"]["addons"] = {
	["EmbedSkada"] = true,
}

V["sle"] = {
	["equip"] = {
		["enable"] = false,
		["spam"] = false,
		["onlyTalent"] = false,
		["conditions"] = "",
		["setoverlay"] = false,
		["lockbutton"] = false,
	},
	--Minimap Module
	["minimap"] = {
		["buttons"] = {
			["enable"] = true,
		},
		["mapicons"] = {
			["enable"] = false,
			["barenable"] = false,
			["template"] = "Transparent",
			["skindungeon"] = false,
			["skinmail"] = false,
			["skingarrison"] = false,
		},
		rectangle = false,
	},
	["vehicle"] = {
		["enable"] = false,
		["numButtons"] = 7,
	},

	["professions"] = {
		["deconButton"] = {
			["enable"] = true,
			["style"] = "BIG",
			["buttonGlow"] = true,
		},
		["enchant"] = {
			["enchScroll"] = false,
		},
		["fishing"] = {
			["EasyCast"] = false,
			["FromMount"] = false,
			["UseLures"] = true,
			["IgnorePole"] = false,
			["CastButton"] = "Shift",
			["relureThreshold"] = 8,
		},
	},

	["module"] = {
		["screensaver"] = false,
		["blizzmove"] = {
			["enable"] = true,
			["remember"] = false,
			["points"] = {},
		},
		["shadows"] = {
			["arena"] = false,
			["arenaLegacy"] = false,
			["boss"] = false,
			["bossLegacy"] = false,
			["focus"] = false,
			["focusLegacy"] = false,
			["focustarget"] = false,
			["focustargetLegacy"] = false,
			["party"] = false,
			["partyLegacy"] = false,
			["pet"] = false,
			["petLegacy"] = false,
			["pettarget"] = false,
			["pettargetLegacy"] = false,
			["player"] = false,
			["playerLegacy"] = false,
			["raid"] = false,
			["raidLegacy"] = false,
			["raid40"] = false,
			["raid40Legacy"] = false,
			["target"] = false,
			["targetLegacy"] = false,
			["targettarget"] = false,
			["targettargetLegacy"] = false,
			["vehicle"] = false,
			["actionbars"] = {
				["bar1"] = false,
				["bar2"] = false,
				["bar3"] = false,
				["bar4"] = false,
				["bar5"] = false,
				["bar6"] = false,
				["bar7"] = false,
				["bar8"] = false,
				["bar9"] = false,
				["bar10"] = false,
				["stancebar"] = false,
				["microbar"] = false,
				["petbar"] = false,
				["bar1buttons"] = false,
				["bar2buttons"] = false,
				["bar3buttons"] = false,
				["bar4buttons"] = false,
				["bar5buttons"] = false,
				["bar6buttons"] = false,
				["bar7buttons"] = false,
				["bar8buttons"] = false,
				["bar9buttons"] = false,
				["bar10buttons"] = false,
				["stancebarbuttons"] = false,
				["microbarbuttons"] = false,
				["petbarbuttons"] = false,
			},
			["minimap"] = false,
			["chat"] = {
				["left"] = false,
				["right"] = false,
			},
			["datatexts"] = {
				["leftchat"] = false,
				["righchat"] = false,
			},
			["databars"] = {
				["honorbar"] = false,
				["expbar"] = false,
				["repbar"] = false,
				["azeritebar"] = false,
			},
		},
	},
	["unitframe"] = {
		["resizeHealthPrediction"] = false,
		["statusbarTextures"] = {
			["power"] = false,
			["cast"] = false,
			["aura"] = false,
			["class"] = false,
		},
	},
	["pvp"] = {
		["KBbanner"] = {
			["enable"] = false,
			["sound"] = true,
		},
	},
	["actionbars"] = {
		["checkedtexture"] = false,
		["checkedColor"] = {r = 0, g = 1, b = 0, a = 0.3},
	},
	["skins"] = {
		["objectiveTracker"] = {
			["enable"] = true,
			["texture"] = "ElvUI Norm",
			["class"] = false,
			["color"] = {r = 0.26, g = 0.42, b = 1},
			["underlineHeight"] = 1,
			["scenarioBG"] = false,
			["BGbackdrop"] = true,
			["skinnedTextureLogo"] = "NONE",
			["customTextureLogo"] = "",
			["keyTimers"] = {
				["enable"] = false,
				["showBothTimers"] = false,
				["showMarks"] = true,
			},
		},
		["petbattles"] = {
			["enable"] = true,
		},
		["merchant"] = {
			["enable"] = false,
			["style"] = "Default",
			["subpages"] = 2,
		},
		["questguru"] = {
			["enable"] = false,
			["removeParchment"] = false,
		},
	},
	["uibuttons"] = {
		["style"] = "classic",
		["strata"] = "MEDIUM",
		["level"] = 5,
		["transparent"] = "Default",
	},

	["characterGoldsSorting"] = {},
	}

G["sle"] = {
	["DE"] = {
		["Blacklist"] = "",
		["IgnoreTabards"] = true,
		["IgnorePanda"] = true,
		["IgnoreCooking"] = true,
		["IgnoreFishing"] = true,
	},
	["LOCK"] = {
		["Blacklist"] = "",
		["TradeOpen"] = false,
	},
	["advanced"] = {
		["general"] = false,
		["optionsLimits"] = false,
		["gameMenu"] = {
			["enable"] = true,
			["reload"] = false,
		},
		["confirmed"] = false,
		["cyrillics"] = {
			["commands"] = false,
			["devCommands"] = false,
		},
		["chat"] = {
			["setupDelay"] = 1,
		},
	},
}

if G["profileCopy"] then
	G["profileCopy"]["sle"] = {
		["actionbars"] = {
			["general"] = true,
		},
		["armory"] = {
			["character"] = true,
			["inspect"] = true,
			["stats"] = true,
		},
		["backgrounds"] = {
			["bg1"] = true,
			["bg2"] = true,
			["bg3"] = true,
			["bg4"] = true,
		},
		["bags"] = {
			["petLevel"] = true,
		},
		["blizzard"] = {
			["general"] = true,
		},
		["chat"] = {
			["general"] = true,
			["justify"] = true,
			["invite"] = true,
		},
		["databars"] = {
			["experience"] = true,
			["reputation"] = true,
			["honor"] = true,
			["azerite"] = true,
		},
		["dt"] = {
			["friends"] = true,
			["guild"] = true,
			["mail"] = true,
			["currency"] = true,
			["regen"] = true,
		},
		["legacy"] = {
			["garrison"] = true,
			["farm"] = true,
			["orderhall"] = true,
			["warwampaign"] = true,
		},
		["lfr"] = {
			["general"] = true,
		},
		["loot"] = {
			["general"] = true,
			["autoroll"] = true,
			["announcer"] = true,
			["history"] = true,
			["looticons"] = true,
		},
		["media"] = {
			["general"] = true,
		},
		["minimap"] = {
			["coords"] = true,
			["mapicons"] = true,
			["instance"] = true,
			["locPanel"] = true,
		},
		["nameplates"] = {
			["general"] = true,
		},
		["quests"] = {
			["general"] = true,
		},
		["pvp"] = {
			["general"] = true,
		},
		["raidmanager"] = {
			["general"] = true,
		},
		["raidmarkers"] = {
			["general"] = true,
		},
		["screensaver"] = {
			["general"] = true,
		},
		["shadows"] = {
			["general"] = true,
		},
		["skins"] = {
			["general"] = true,
		},
		["tooltip"] = {
			["general"] = true,
		},
		["uibuttons"] = {
			["general"] = true,
		},
		["unitframes"] = {
			["general"] = true,
			["unit"] = {
				["player"] = true,
				["target"] = true,
				["targettarget"] = true,
				["targettargettarget"] = true,
				["focus"] = true,
				["focustarget"] = true,
				["pet"] = true,
				["pettarget"] = true,
				["party"] = true,
				["raid"] = true,
				["raid40"] = true,
				["boss"] = true,
				["arena"] = true,
			},
		},
	}
end
