
ElvDB = {
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_NonTarget"] = {
				},
				["ElvUI_Explosives"] = {
				},
				["ElvUI_Target"] = {
				},
				["ElvUI_Boss"] = {
				},
			},
		},
		["general"] = {
			["UIScale"] = 0.65,
		},
	},
	["SLE_DB_Ver"] = "3.63",
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Sethraliss"] = {
			["Voidvenom"] = "HUNTER",
		},
	},
	["profiles"] = {
		["Voidvenom - Sethraliss"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Mariagreco-2.0"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["width"] = 15,
					["font"] = "FrancoisOne",
					["height"] = 186,
				},
				["honor"] = {
					["height"] = 186,
					["width"] = 15,
				},
				["experience"] = {
					["width"] = 15,
					["font"] = "2002",
					["height"] = 186,
				},
				["azerite"] = {
					["height"] = 186,
					["width"] = 15,
				},
			},
			["sle"] = {
				["media"] = {
					["fonts"] = {
						["objective"] = {
							["font"] = "Friz Quadrata TT",
						},
						["zone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["subzone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["objectiveHeader"] = {
							["outline"] = "OUTLINE",
							["font"] = "Friz Quadrata TT",
							["size"] = 14,
						},
						["mail"] = {
							["font"] = "Friz Quadrata TT",
						},
						["questFontSuperHuge"] = {
							["font"] = "Friz Quadrata TT",
						},
						["gossip"] = {
							["font"] = "Friz Quadrata TT",
						},
						["pvp"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
				},
				["armory"] = {
					["inspect"] = {
						["enchant"] = {
							["font"] = "Friz Quadrata TT",
						},
						["ilvl"] = {
							["font"] = "Friz Quadrata TT",
							["colorType"] = "QUALITY",
						},
						["enable"] = true,
						["gradient"] = {
							["quality"] = true,
						},
					},
					["character"] = {
						["durability"] = {
							["font"] = "Friz Quadrata TT",
						},
						["enable"] = true,
						["enchant"] = {
							["xOffset"] = -2,
							["font"] = "Friz Quadrata TT",
						},
						["ilvl"] = {
							["font"] = "Friz Quadrata TT",
						},
						["gradient"] = {
							["quality"] = true,
						},
					},
					["stats"] = {
						["statFonts"] = {
							["font"] = "Friz Quadrata TT",
						},
						["itemLevel"] = {
							["outline"] = "OUTLINE",
							["font"] = "Friz Quadrata TT",
							["size"] = 13,
						},
					},
				},
				["unitframes"] = {
					["statusTextures"] = {
						["classTexture"] = "Solid",
						["powerTexture"] = "Solid",
						["castTexture"] = "Aluminium",
					},
				},
				["screensaver"] = {
					["playermodel"] = {
						["rotation"] = 342,
						["holderXoffset"] = 15,
						["holderYoffset"] = -280,
						["distance"] = 1.31,
						["anim"] = 47,
					},
					["crest"] = {
						["size"] = 142,
					},
				},
				["chat"] = {
					["guildmaster"] = true,
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
				["tooltip"] = {
					["showFaction"] = true,
				},
				["nameplates"] = {
					["targetcount"] = {
						["enable"] = true,
					},
				},
				["minimap"] = {
					["instance"] = {
						["enable"] = true,
					},
				},
				["raidmanager"] = {
					["roles"] = true,
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Friz Quadrata TT",
				["bagSize"] = 39,
				["junkIcon"] = true,
				["countFontSize"] = 14,
				["itemLevelFontSize"] = 14,
				["scrapIcon"] = true,
				["countFont"] = "Friz Quadrata TT",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["timeStampFormat"] = "%H:%M ",
				["tabSelector"] = "BOX",
				["numScrollMessages"] = 1,
				["separateSizes"] = true,
				["tabFont"] = "Friz Quadrata TT",
				["panelHeightRight"] = 226,
				["font"] = "Friz Quadrata TT",
				["scrollDownInterval"] = 20,
				["panelWidth"] = 497,
				["fontSize"] = 14,
				["tabFontSize"] = 17,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeight"] = 245,
				["panelBackdrop"] = "LEFT",
				["panelTabBackdrop"] = true,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-257,315",
				["ThreatBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-348,153",
				["RaidMarkerBarAnchor"] = "TOPLEFT,ElvUIParent,TOPLEFT,220,-4",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,277",
				["ElvUF_RaidMover"] = "BOTTOM,ElvUIParent,BOTTOM,3,118",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,204,-32",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-214,-4",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-248,370",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-336,370",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
				["ElvUI_RMBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,335",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-204,4",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-121,-435",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-236,-320",
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-409",
				["SLE_GarrisonToolMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,43,-453",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-323,-292",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,533,4",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-360,236",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,352,200",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,419",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-530",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,169,344",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-498,73",
				["HonorBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,515,4",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-32,-293",
				["TalkingHeadFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,189,318",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-302,6",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,532,4",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-273,545",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,302,6",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,499,4",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,-316,72",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,201",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-278",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-59,-204",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-274,-200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,971,78",
				["SLE_FarmSeedMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,46,274",
				["RaidUtility_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,438,-4",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-323,-292",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,439",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-214",
				["SLE_Location_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,366,560",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_PartyMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,201",
				["AlertFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-282,480",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-213,-150",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-279",
			},
			["tooltip"] = {
				["headerFontSize"] = 14,
				["fontOutline"] = "OUTLINE",
				["healthBar"] = {
					["fontSize"] = 4,
					["font"] = "Friz Quadrata TT",
				},
				["textFontSize"] = 14,
				["font"] = "Friz Quadrata TT",
				["visibility"] = {
					["combatOverride"] = "HIDE",
				},
				["smallTextFontSize"] = 14,
			},
			["general"] = {
				["totems"] = {
					["spacing"] = 1,
				},
				["interruptAnnounce"] = "RAID",
				["valuecolor"] = {
					["b"] = 0.05490196078431373,
					["g"] = 0.403921568627451,
					["r"] = 0.8196078431372549,
				},
				["altPowerBar"] = {
					["statusBar"] = "VuhDo - Textile",
					["font"] = "Friz Quadrata TT",
				},
				["fontSize"] = 14,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
					["icons"] = {
						["lfgEye"] = {
							["xOffset"] = 7,
							["yOffset"] = -26,
						},
						["classHall"] = {
							["xOffset"] = 37,
							["yOffset"] = 7,
						},
					},
				},
				["bottomPanel"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Friz Quadrata TT",
					["itemLevelFontSize"] = 14,
				},
				["font"] = "Friz Quadrata TT",
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPLEFT",
						},
						["name"] = {
							["position"] = "TOP",
						},
						["height"] = 70,
						["buffs"] = {
							["sizeOverride"] = 22,
							["enable"] = true,
						},
						["horizontalSpacing"] = 4,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["castbar"] = {
							["height"] = 15,
						},
						["roleIcon"] = {
							["yOffset"] = -20,
							["position"] = "TOPLEFT",
						},
						["raidWideSorting"] = true,
						["power"] = {
							["text_format"] = "",
						},
						["width"] = 88,
						["sortDir"] = "DESC",
						["health"] = {
							["position"] = "CENTER",
							["text_format"] = "[healthcolor][health:percent]",
						},
						["orientation"] = "RIGHT",
						["verticalSpacing"] = 6,
					},
					["raid40"] = {
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["horizontalSpacing"] = 1,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "DOWN_RIGHT",
						["width"] = 91,
					},
					["target"] = {
						["debuffs"] = {
							["yOffset"] = -66,
							["anchorPoint"] = "TOPLEFT",
							["priority"] = "Blacklist,Personal,RaidDebuffs,CCDebuffs",
						},
						["name"] = {
							["position"] = "TOP",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["yOffset"] = -22,
							["xOffset"] = 0,
						},
						["width"] = 225,
						["portrait"] = {
							["overlay"] = true,
							["xOffset"] = 0.6799999999999999,
							["rotation"] = 294,
							["paused"] = true,
							["fullOverlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["overlayAlpha"] = 0.8,
						},
						["health"] = {
							["position"] = "LEFT",
							["xOffset"] = 0,
						},
						["castbar"] = {
							["iconPosition"] = "TOPRIGHT",
							["iconAttached"] = false,
							["width"] = 225,
						},
						["height"] = 70,
						["buffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["numrows"] = 3,
						},
					},
					["player"] = {
						["CombatIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["size"] = 32,
						},
						["customTexts"] = {
							["CHAR NAME"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "[name:health{00ff00}]",
								["yOffset"] = 45,
								["font"] = "Diablo",
								["justifyH"] = "CENTER",
								["fontOutline"] = "THICKOUTLINE",
								["enable"] = true,
								["size"] = 25,
							},
						},
						["healPrediction"] = {
							["height"] = 0,
						},
						["infoPanel"] = {
							["transparent"] = true,
						},
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "TOP",
						},
						["height"] = 70,
						["buffs"] = {
							["yOffset"] = -19,
							["anchorPoint"] = "BOTTOMLEFT",
							["numrows"] = 2,
						},
						["raidicon"] = {
							["size"] = 37,
						},
						["aurabar"] = {
							["maxBars"] = 17,
							["enable"] = false,
							["yOffset"] = 100,
							["spacing"] = 5,
							["height"] = 23,
						},
						["power"] = {
							["text_format"] = "[powercolor][power:current-max-percent]",
							["yOffset"] = -51,
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
						["castbar"] = {
							["tickColor"] = {
								["a"] = 0.800000011920929,
							},
							["iconPosition"] = "TOP",
							["xOffsetText"] = 100,
							["iconSize"] = 28,
							["width"] = 222,
							["height"] = 29,
							["iconXOffset"] = -141,
							["timeToHold"] = 10,
							["textColor"] = {
								["b"] = 0.7843137254901961,
								["g"] = 0.8392156862745098,
								["r"] = 0.8235294117647058,
							},
						},
						["portrait"] = {
							["overlay"] = true,
							["xOffset"] = -0.49,
							["rotation"] = 360,
							["paused"] = true,
							["fullOverlay"] = true,
							["enable"] = true,
							["camDistanceScale"] = 4,
							["overlayAlpha"] = 0.8,
						},
						["width"] = 225,
						["health"] = {
							["position"] = "RIGHT",
							["xOffset"] = 0,
						},
						["orientation"] = "RIGHT",
						["classbar"] = {
							["autoHide"] = true,
						},
					},
				},
				["statusbar"] = "ThreatPlatesBar",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.0784313725490196,
						["g"] = 0.3098039215686275,
						["r"] = 0.02352941176470588,
					},
					["healthclass"] = true,
					["borderColor"] = {
						["r"] = 0.7215686274509804,
						["g"] = 0.3764705882352941,
						["b"] = 0.1098039215686275,
					},
					["castReactionColor"] = true,
					["tapped"] = {
						["r"] = 0.549019607843137,
						["g"] = 0.568627450980392,
						["b"] = 0.611764705882353,
					},
					["castClassColor"] = true,
					["auraBarTurtle"] = false,
					["castColor"] = {
						["b"] = 0.6588235294117647,
						["g"] = 0.6549019607843137,
						["r"] = 0.6235294117647059,
					},
					["frameGlow"] = {
						["targetGlow"] = {
							["enable"] = false,
						},
						["focusGlow"] = {
							["class"] = true,
						},
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
							["color"] = {
								["g"] = 0.325490196078431,
								["r"] = 0.945098039215686,
							},
						},
					},
					["castNoInterrupt"] = {
						["r"] = 0.2666666666666667,
						["g"] = 0.7137254901960784,
						["b"] = 0.1686274509803922,
					},
					["castInterruptedColor"] = {
						["r"] = 0.6862745098039216,
						["g"] = 0.1333333333333333,
						["b"] = 0.1176470588235294,
					},
					["health"] = {
						["b"] = 1,
						["g"] = 0.0627450980392157,
						["r"] = 0.674509803921569,
					},
					["transparentHealth"] = true,
					["transparentAurabars"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["smartRaidFilter"] = false,
			},
			["datatexts"] = {
				["fontSize"] = 14,
				["panels"] = {
					["MinimapPanel"] = {
						"Time", -- [1]
						"", -- [2]
						["panelTransparency"] = true,
						["numPoints"] = 1,
						["border"] = false,
						["backdrop"] = false,
					},
					["RightChatDataPanel"] = {
						["enable"] = false,
					},
					["LeftChatDataPanel"] = {
						[3] = "System",
					},
				},
				["font"] = "Friz Quadrata TT",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["backdrop"] = true,
					["buttonsize"] = 30,
				},
				["fontOutline"] = "THICKOUTLINE",
				["countTextPosition"] = "BOTTOMLEFT",
				["bar1"] = {
					["backdrop"] = true,
					["buttonsize"] = 30,
				},
				["font"] = "Arial Narrow",
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["bar6"] = {
					["enabled"] = true,
					["showGrid"] = false,
					["buttonsPerRow"] = 6,
				},
				["equippedItem"] = true,
				["useRangeColorText"] = true,
				["flashAnimation"] = true,
				["addNewSpells"] = true,
				["microbar"] = {
					["enabled"] = true,
					["buttonSize"] = 15,
					["buttonsPerRow"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["buttonspacing"] = 3,
					["buttons"] = 12,
					["backdrop"] = true,
					["buttonsPerRow"] = 1,
					["buttonsize"] = 31,
				},
				["fontSize"] = 13,
				["notUsableColor"] = {
					["g"] = 0.1294117647058823,
					["b"] = 0.3686274509803922,
				},
				["raidmarkersbar"] = {
					["visible"] = "hide",
				},
				["transparent"] = true,
				["macrotext"] = true,
				["stanceBar"] = {
					["style"] = "classic",
					["buttonsize"] = 30,
				},
				["bar4"] = {
					["buttonsPerRow"] = 6,
					["buttonsize"] = 30,
				},
			},
			["nameplates"] = {
				["units"] = {
					["TARGET"] = {
						["classpower"] = {
							["enable"] = true,
						},
						["glowStyle"] = "style7",
					},
				},
			},
			["v11NamePlateReset"] = true,
			["cooldown"] = {
				["enable"] = false,
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 14,
				},
				["buffs"] = {
					["countFontSize"] = 14,
				},
			},
		},
	},
	["serverID"] = {
		[10] = {
			["Sethraliss"] = true,
		},
	},
	["profileKeys"] = {
		["Voidvenom - Sethraliss"] = "Mariagreco-2.0",
	},
	["faction"] = {
		["Sethraliss"] = {
			["Voidvenom"] = "Alliance",
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["SLErrorDisabledAddOns"] = {
	},
	["gold"] = {
		["Sethraliss"] = {
			["Voidvenom"] = 1071155964,
		},
	},
	["SLEMinimize"] = {
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Voidvenom - Sethraliss"] = "Voidvenom - Sethraliss",
	},
	["profiles"] = {
		["Voidvenom - Sethraliss"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Sethraliss"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["install_complete"] = "3.78",
			},
			["install_complete"] = 11.52,
		},
	},
}
