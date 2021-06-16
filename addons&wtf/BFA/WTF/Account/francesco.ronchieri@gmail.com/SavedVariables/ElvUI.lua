
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
			["UIScale"] = 0.7111111111111111,
		},
		["unitframe"] = {
			["ChannelTicks"] = {
				[47540] = 3,
			},
		},
	},
	["SLE_DB_Ver"] = "3.63",
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Berlusconi - Sethraliss"] = {
					["enabled"] = false,
				},
				["Nuncevedo - Sethraliss"] = {
					["enabled"] = false,
				},
			},
		},
	},
	["class"] = {
		["Sethraliss"] = {
			["Dontuch"] = "PRIEST",
			["Gargamélla"] = "WARLOCK",
			["Berlusconi"] = "HUNTER",
			["Mariagreco"] = "DRUID",
			["Reghiaccio"] = "MAGE",
			["Stempi"] = "ROGUE",
			["Antonioprete"] = "HUNTER",
			["Cimino"] = "SHAMAN",
			["Picinbono"] = "PALADIN",
			["Nuncevedo"] = "DEMONHUNTER",
			["Corsini"] = "DEATHKNIGHT",
			["Tonellotto"] = "DRUID",
		},
	},
	["profiles"] = {
		["Berlusconi"] = {
			["databars"] = {
				["reputation"] = {
					["font"] = "FrancoisOne",
					["enable"] = true,
					["height"] = 186,
					["showBubbles"] = true,
					["width"] = 15,
				},
				["azerite"] = {
					["height"] = 186,
					["showBubbles"] = true,
					["width"] = 15,
				},
				["experience"] = {
					["font"] = "2002",
					["height"] = 186,
					["showLevel"] = true,
					["showBubbles"] = true,
					["width"] = 15,
				},
				["honor"] = {
					["height"] = 186,
					["showBubbles"] = true,
					["width"] = 15,
				},
			},
			["general"] = {
				["totems"] = {
					["spacing"] = 1,
				},
				["fontSize"] = 14,
				["itemLevel"] = {
					["itemLevelFont"] = "Friz Quadrata TT",
					["itemLevelFontSize"] = 14,
				},
				["interruptAnnounce"] = "RAID",
				["autoRepair"] = "GUILD",
				["minimap"] = {
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
					["locationFont"] = "Friz Quadrata TT",
				},
				["font"] = "Friz Quadrata TT",
				["altPowerBar"] = {
					["statusBar"] = "VuhDo - Textile",
					["font"] = "Friz Quadrata TT",
				},
				["valuecolor"] = {
					["b"] = 0.05490196078431373,
					["g"] = 0.403921568627451,
					["r"] = 0.8196078431372549,
				},
				["bottomPanel"] = false,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,340",
				["ThreatBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-348,153",
				["RaidMarkerBarAnchor"] = "TOPLEFT,ElvUIParent,TOPLEFT,220,-4",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,203,419",
				["ElvUF_RaidMover"] = "BOTTOM,ElvUIParent,BOTTOM,3,118",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,204,-32",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-214,-4",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-248,370",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-336,370",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-279",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-204,4",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,361",
				["ElvUI_RMBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_PartyMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,201",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,366,560",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-236,-320",
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-409",
				["SLE_GarrisonToolMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,43,-453",
				["SLE_Location_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,0",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,533,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,352,200",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-360,236",
				["ElvUF_PlayerCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,277",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-530",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,169,344",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-323,-292",
				["RaidUtility_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,438,-4",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,41",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-32,-293",
				["SLE_FarmSeedMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,46,274",
				["TalkingHeadFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,189,318",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-273,545",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,532,4",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,302,6",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,499,4",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,-316,72",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,201",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-278",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-59,-204",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-274,-200",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,971,78",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-302,6",
				["HonorBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,515,4",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-498,73",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,439",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-214",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-323,-292",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-121,-435",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AlertFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-282,480",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-213,-150",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "Friz Quadrata TT",
				["itemLevelFont"] = "Friz Quadrata TT",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 39,
				["itemLevelFontSize"] = 14,
				["scrapIcon"] = true,
				["countFontSize"] = 14,
			},
			["chat"] = {
				["tabSelector"] = "BOX",
				["panelTabBackdrop"] = true,
				["panelBackdrop"] = "LEFT",
				["timeStampFormat"] = "%H:%M ",
				["separateSizes"] = true,
				["tabFontSize"] = 17,
				["fontSize"] = 14,
				["panelHeightRight"] = 226,
				["font"] = "Friz Quadrata TT",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeight"] = 245,
				["numScrollMessages"] = 1,
				["scrollDownInterval"] = 20,
				["tabFont"] = "Friz Quadrata TT",
				["panelWidth"] = 497,
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 14,
				},
				["debuffs"] = {
					["countFontSize"] = 14,
				},
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.0784313725490196,
						["g"] = 0.3098039215686275,
						["r"] = 0.02352941176470588,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.6588235294117647,
						["g"] = 0.6549019607843137,
						["r"] = 0.6235294117647059,
					},
					["transparentHealth"] = true,
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
					["healthclass"] = true,
					["castNoInterrupt"] = {
						["b"] = 0.1686274509803922,
						["g"] = 0.7137254901960784,
						["r"] = 0.2666666666666667,
					},
					["castInterruptedColor"] = {
						["b"] = 0.1176470588235294,
						["g"] = 0.1333333333333333,
						["r"] = 0.6862745098039216,
					},
					["health"] = {
						["b"] = 1,
						["g"] = 0.0627450980392157,
						["r"] = 0.674509803921569,
					},
					["borderColor"] = {
						["b"] = 0.1098039215686275,
						["g"] = 0.3764705882352941,
						["r"] = 0.7215686274509804,
					},
					["castReactionColor"] = true,
					["transparentAurabars"] = true,
					["auraBarTurtle"] = false,
					["tapped"] = {
						["b"] = 0.611764705882353,
						["g"] = 0.568627450980392,
						["r"] = 0.549019607843137,
					},
				},
				["smartRaidFilter"] = false,
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "ThreatPlatesBar",
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["raid40"] = {
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["priority"] = "Blacklist,Personal,RaidDebuffs,CCDebuffs",
							["yOffset"] = -66,
						},
						["portrait"] = {
							["overlay"] = true,
							["xOffset"] = 0.6799999999999999,
							["paused"] = true,
							["fullOverlay"] = true,
							["enable"] = true,
							["rotation"] = 294,
							["camDistanceScale"] = 4,
							["overlayAlpha"] = 0.8,
						},
						["power"] = {
							["xOffset"] = 0,
							["yOffset"] = -22,
						},
						["width"] = 225,
						["health"] = {
							["xOffset"] = 0,
							["position"] = "LEFT",
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
						["name"] = {
							["position"] = "TOP",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["width"] = 91,
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "DOWN_RIGHT",
					},
					["player"] = {
						["aurabar"] = {
							["maxBars"] = 17,
							["spacing"] = 5,
							["enable"] = false,
							["height"] = 23,
							["yOffset"] = 100,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["size"] = 32,
						},
						["portrait"] = {
							["overlay"] = true,
							["xOffset"] = -0.49,
							["paused"] = true,
							["fullOverlay"] = true,
							["enable"] = true,
							["rotation"] = 360,
							["camDistanceScale"] = 4,
							["overlayAlpha"] = 0.8,
						},
						["power"] = {
							["xOffset"] = 0,
							["position"] = "CENTER",
							["text_format"] = "[powercolor][power:current-max-percent]",
							["yOffset"] = -51,
						},
						["customTexts"] = {
							["CHAR NAME"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[name:health{00ff00}]",
								["yOffset"] = 45,
								["font"] = "Diablo",
								["justifyH"] = "CENTER",
								["fontOutline"] = "THICKOUTLINE",
								["xOffset"] = 0,
								["size"] = 25,
							},
						},
						["healPrediction"] = {
							["height"] = 0,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "RIGHT",
						},
						["width"] = 225,
						["infoPanel"] = {
							["transparent"] = true,
						},
						["orientation"] = "RIGHT",
						["name"] = {
							["attachTextTo"] = "Frame",
							["position"] = "TOP",
						},
						["castbar"] = {
							["tickColor"] = {
								["a"] = 0.800000011920929,
							},
							["iconXOffset"] = -141,
							["width"] = 222,
							["height"] = 29,
							["xOffsetText"] = 100,
							["iconSize"] = 28,
							["iconPosition"] = "TOP",
							["timeToHold"] = 10,
							["textColor"] = {
								["r"] = 0.8235294117647058,
								["g"] = 0.8392156862745098,
								["b"] = 0.7843137254901961,
							},
						},
						["height"] = 70,
						["buffs"] = {
							["anchorPoint"] = "BOTTOMLEFT",
							["numrows"] = 2,
							["yOffset"] = -19,
						},
						["classbar"] = {
							["autoHide"] = true,
						},
						["raidicon"] = {
							["size"] = 37,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 4,
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 16,
						},
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["roleIcon"] = {
							["position"] = "TOPLEFT",
							["yOffset"] = -20,
						},
						["raidWideSorting"] = true,
						["castbar"] = {
							["height"] = 15,
						},
						["width"] = 88,
						["sortDir"] = "DESC",
						["height"] = 70,
						["name"] = {
							["position"] = "TOP",
						},
						["verticalSpacing"] = 6,
						["orientation"] = "RIGHT",
						["buffs"] = {
							["enable"] = true,
							["sizeOverride"] = 22,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:percent]",
							["position"] = "CENTER",
						},
						["power"] = {
							["text_format"] = "",
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 14,
				["panels"] = {
					["MinimapPanel"] = {
						"Time", -- [1]
						"", -- [2]
						["numPoints"] = 1,
						["backdrop"] = false,
						["border"] = false,
						["panelTransparency"] = true,
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
					["buttonsize"] = 30,
					["backdrop"] = true,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["showGrid"] = false,
				},
				["equippedItem"] = true,
				["useRangeColorText"] = true,
				["flashAnimation"] = true,
				["fontOutline"] = "THICKOUTLINE",
				["addNewSpells"] = true,
				["countTextPosition"] = "BOTTOMLEFT",
				["microbar"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 12,
					["buttonSize"] = 15,
				},
				["raidmarkersbar"] = {
					["visible"] = "hide",
				},
				["bar2"] = {
					["enabled"] = true,
					["backdrop"] = true,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["backdrop"] = true,
					["buttonsize"] = 30,
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonspacing"] = 3,
					["buttonsPerRow"] = 1,
					["backdrop"] = true,
					["buttonsize"] = 31,
				},
				["fontSize"] = 13,
				["font"] = "Arial Narrow",
				["notUsableColor"] = {
					["g"] = 0.1294117647058823,
					["b"] = 0.3686274509803922,
				},
				["transparent"] = true,
				["macrotext"] = true,
				["stanceBar"] = {
					["style"] = "classic",
					["buttonsize"] = 30,
				},
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["bar4"] = {
					["buttonsize"] = 30,
					["buttonsPerRow"] = 6,
				},
			},
			["nameplates"] = {
				["threat"] = {
					["indicator"] = true,
				},
				["statusbar"] = "Melli",
				["font"] = "Friz Quadrata TT",
				["plateSize"] = {
					["friendlyHeight"] = 37,
					["personalWidth"] = 197,
					["personalHeight"] = 51,
					["enemyHeight"] = 52,
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["power"] = {
							["enable"] = true,
							["text"] = {
								["enable"] = true,
							},
							["height"] = 9,
						},
						["name"] = {
							["fontSize"] = 14,
						},
						["health"] = {
							["height"] = 29,
							["text"] = {
								["format"] = "[health:current-max-percent-nostatus]",
								["fontSize"] = 12,
								["font"] = "Intro Black",
								["yOffset"] = 3,
							},
						},
						["eliteIcon"] = {
							["enable"] = true,
							["xOffset"] = -19,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["enable"] = true,
							["width"] = 123,
						},
						["glowStyle"] = "style8",
					},
					["PLAYER"] = {
						["name"] = {
							["enable"] = true,
							["fontSize"] = 24,
						},
					},
				},
			},
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["media"] = {
					["fonts"] = {
						["questFontSuperHuge"] = {
							["font"] = "Friz Quadrata TT",
						},
						["objective"] = {
							["font"] = "Friz Quadrata TT",
						},
						["gossip"] = {
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
						["pvp"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
				},
				["tooltip"] = {
					["showFaction"] = true,
				},
				["chat"] = {
					["guildmaster"] = true,
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
				["bags"] = {
					["equipmentmanager"] = {
						["enable"] = true,
					},
				},
				["minimap"] = {
					["instance"] = {
						["enable"] = true,
					},
				},
				["nameplates"] = {
					["targetcount"] = {
						["enable"] = true,
					},
				},
				["unitframes"] = {
					["statusTextures"] = {
						["classTexture"] = "Solid",
						["powerTexture"] = "Solid",
						["castTexture"] = "Aluminium",
					},
				},
				["raidmanager"] = {
					["roles"] = true,
				},
				["armory"] = {
					["stats"] = {
						["itemLevel"] = {
							["outline"] = "OUTLINE",
							["font"] = "Friz Quadrata TT",
							["size"] = 13,
						},
						["statFonts"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
					["inspect"] = {
						["enchant"] = {
							["font"] = "Friz Quadrata TT",
						},
						["gradient"] = {
							["quality"] = true,
						},
						["ilvl"] = {
							["colorType"] = "QUALITY",
							["font"] = "Friz Quadrata TT",
						},
						["enable"] = true,
					},
					["character"] = {
						["enchant"] = {
							["xOffset"] = -2,
							["font"] = "Friz Quadrata TT",
						},
						["ilvl"] = {
							["font"] = "Friz Quadrata TT",
						},
						["enable"] = true,
						["gradient"] = {
							["quality"] = true,
						},
						["durability"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
				},
			},
			["cooldown"] = {
				["enable"] = false,
			},
			["tooltip"] = {
				["textFontSize"] = 14,
				["font"] = "Friz Quadrata TT",
				["healthBar"] = {
					["fontSize"] = 4,
					["font"] = "Friz Quadrata TT",
				},
				["fontOutline"] = "OUTLINE",
				["smallTextFontSize"] = 14,
				["visibility"] = {
					["combatOverride"] = "HIDE",
				},
				["headerFontSize"] = 14,
			},
		},
		["Mariagreco-2.0"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["width"] = 15,
					["font"] = "FrancoisOne",
					["height"] = 186,
					["showBubbles"] = true,
				},
				["azerite"] = {
					["width"] = 15,
					["height"] = 186,
					["showBubbles"] = true,
				},
				["experience"] = {
					["width"] = 15,
					["font"] = "2002",
					["height"] = 186,
					["showBubbles"] = true,
					["showLevel"] = true,
				},
				["honor"] = {
					["width"] = 15,
					["height"] = 186,
					["showBubbles"] = true,
				},
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
			["v11NamePlateReset"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 14,
				},
				["buffs"] = {
					["countFontSize"] = 14,
				},
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
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,335",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-204,4",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["SLE_GarrisonToolMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,43,-453",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-236,-320",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,366,560",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-121,-435",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-323,-292",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,533,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,352,200",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-360,236",
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
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-409",
				["ElvUI_RMBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
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
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["media"] = {
					["fonts"] = {
						["pvp"] = {
							["font"] = "Friz Quadrata TT",
						},
						["subzone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["gossip"] = {
							["font"] = "Friz Quadrata TT",
						},
						["zone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["mail"] = {
							["font"] = "Friz Quadrata TT",
						},
						["objectiveHeader"] = {
							["outline"] = "OUTLINE",
							["font"] = "Friz Quadrata TT",
							["size"] = 14,
						},
						["objective"] = {
							["font"] = "Friz Quadrata TT",
						},
						["questFontSuperHuge"] = {
							["font"] = "Friz Quadrata TT",
						},
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
				["armory"] = {
					["stats"] = {
						["itemLevel"] = {
							["outline"] = "OUTLINE",
							["font"] = "Friz Quadrata TT",
							["size"] = 13,
						},
						["statFonts"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
					["character"] = {
						["enchant"] = {
							["xOffset"] = -2,
							["font"] = "Friz Quadrata TT",
						},
						["ilvl"] = {
							["font"] = "Friz Quadrata TT",
						},
						["enable"] = true,
						["gradient"] = {
							["quality"] = true,
						},
						["durability"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
					["inspect"] = {
						["enchant"] = {
							["font"] = "Friz Quadrata TT",
						},
						["gradient"] = {
							["quality"] = true,
						},
						["ilvl"] = {
							["font"] = "Friz Quadrata TT",
							["colorType"] = "QUALITY",
						},
						["enable"] = true,
					},
				},
				["minimap"] = {
					["instance"] = {
						["enable"] = true,
					},
				},
				["unitframes"] = {
					["statusTextures"] = {
						["classTexture"] = "Solid",
						["powerTexture"] = "Solid",
						["castTexture"] = "Aluminium",
					},
				},
				["nameplates"] = {
					["targetcount"] = {
						["enable"] = true,
					},
				},
				["bags"] = {
					["equipmentmanager"] = {
						["enable"] = true,
					},
				},
				["raidmanager"] = {
					["roles"] = true,
				},
				["tooltip"] = {
					["showFaction"] = true,
				},
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
						["verticalSpacing"] = 6,
						["roleIcon"] = {
							["yOffset"] = -20,
							["position"] = "TOPLEFT",
						},
						["raidWideSorting"] = true,
						["castbar"] = {
							["height"] = 15,
						},
						["width"] = 88,
						["sortDir"] = "DESC",
						["health"] = {
							["position"] = "CENTER",
							["text_format"] = "[healthcolor][health:percent]",
						},
						["orientation"] = "RIGHT",
						["power"] = {
							["text_format"] = "",
						},
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
							["enable"] = true,
							["rotation"] = 294,
							["paused"] = true,
							["fullOverlay"] = true,
							["xOffset"] = 0.6799999999999999,
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
						["classbar"] = {
							["autoHide"] = true,
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
						["castbar"] = {
							["tickColor"] = {
								["a"] = 0.800000011920929,
							},
							["iconXOffset"] = -141,
							["xOffsetText"] = 100,
							["iconSize"] = 28,
							["width"] = 222,
							["height"] = 29,
							["iconPosition"] = "TOP",
							["timeToHold"] = 10,
							["textColor"] = {
								["r"] = 0.8235294117647058,
								["g"] = 0.8392156862745098,
								["b"] = 0.7843137254901961,
							},
						},
						["power"] = {
							["text_format"] = "[powercolor][power:current-max-percent]",
							["yOffset"] = -51,
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["rotation"] = 360,
							["paused"] = true,
							["fullOverlay"] = true,
							["xOffset"] = -0.49,
							["camDistanceScale"] = 4,
							["overlayAlpha"] = 0.8,
						},
						["width"] = 225,
						["health"] = {
							["position"] = "RIGHT",
							["xOffset"] = 0,
						},
						["orientation"] = "RIGHT",
						["CombatIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["size"] = 32,
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
						["b"] = 0.1098039215686275,
						["g"] = 0.3764705882352941,
						["r"] = 0.7215686274509804,
					},
					["castReactionColor"] = true,
					["tapped"] = {
						["b"] = 0.611764705882353,
						["g"] = 0.568627450980392,
						["r"] = 0.549019607843137,
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
						["b"] = 0.1686274509803922,
						["g"] = 0.7137254901960784,
						["r"] = 0.2666666666666667,
					},
					["castInterruptedColor"] = {
						["b"] = 0.1176470588235294,
						["g"] = 0.1333333333333333,
						["r"] = 0.6862745098039216,
					},
					["transparentAurabars"] = true,
					["transparentHealth"] = true,
					["health"] = {
						["b"] = 1,
						["g"] = 0.0627450980392157,
						["r"] = 0.674509803921569,
					},
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
						["numPoints"] = 1,
						["panelTransparency"] = true,
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
			["cooldown"] = {
				["enable"] = false,
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
		},
		["AAAA Comune"] = {
			["currentTutorial"] = 10,
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["armory"] = {
					["character"] = {
						["enable"] = true,
					},
					["inspect"] = {
						["enable"] = true,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["showGrid"] = false,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 35,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 35,
					["showGrid"] = false,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 35,
					["showGrid"] = false,
				},
				["bar1"] = {
					["showGrid"] = false,
					["buttonsize"] = 35,
				},
				["bar5"] = {
					["buttonsPerRow"] = 1,
					["buttonsize"] = 35,
					["buttons"] = 12,
				},
				["raidmarkersbar"] = {
					["visible"] = "hide",
				},
				["barPet"] = {
					["buttonsPerRow"] = 10,
					["point"] = "TOPLEFT",
					["buttonsize"] = 25,
				},
				["macrotext"] = true,
				["stanceBar"] = {
					["buttonsPerRow"] = 2,
					["backdrop"] = true,
					["buttonsize"] = 28,
				},
				["microbar"] = {
					["enabled"] = true,
					["buttonSize"] = 15,
				},
				["bar4"] = {
					["point"] = "BOTTOMLEFT",
					["buttonsize"] = 35,
					["backdrop"] = false,
				},
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["colors"] = {
					["healthclass"] = true,
				},
				["fontOutline"] = "NONE",
				["font"] = "Expressway",
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["debuffs"] = {
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["buffs"] = {
							["enable"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["width"] = 100,
						["portrait"] = {
							["infoPanel"] = true,
							["style"] = "2D",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 100,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["portrait"] = {
							["enable"] = true,
							["style"] = "2D",
						},
						["power"] = {
							["yOffset"] = 10,
						},
						["width"] = 250,
						["name"] = {
							["position"] = "LEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["yOffset"] = 10,
						},
						["height"] = 45,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["castbar"] = {
							["width"] = 250,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["debuffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = -20,
						},
						["numGroups"] = 8,
						["width"] = 60,
					},
					["focus"] = {
						["portrait"] = {
							["style"] = "2D",
						},
						["name"] = {
							["position"] = "LEFT",
							["yOffset"] = -8,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["name"] = {
							["position"] = "LEFT",
							["yOffset"] = -10,
						},
						["power"] = {
							["yOffset"] = 10,
						},
						["height"] = 45,
						["health"] = {
							["frequentUpdates"] = true,
							["yOffset"] = 10,
						},
						["portrait"] = {
							["enable"] = true,
							["style"] = "2D",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["width"] = 150,
					},
					["targettarget"] = {
						["portrait"] = {
							["style"] = "2D",
						},
						["buffs"] = {
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 100,
					},
				},
			},
			["v11NamePlateReset"] = true,
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-29",
				["RaidMarkerBarAnchor"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,147",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,217",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,330,-4",
				["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-468,454",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,248,-231",
				["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-465,388",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,183",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,668",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-231,261",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-436,4",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-215",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-480,255",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-263",
				["LossControlMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,444,-339",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,308",
				["MirrorTimer1Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,318,-94",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-144",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,76",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,40",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-19,-260",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-215",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,262",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-142",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_5"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-40,262",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-465,155",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-317,4",
				["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,347",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-134,-370",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-131,-205",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-32",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-127,-372",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-204",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,111",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,379,257",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,672,28",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-82,-375",
				["ElvUI_RMBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,499,253",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,218",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-146",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,-48,-4",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["chat"] = {
				["panelColorConverted"] = true,
				["panelWidth"] = 410,
				["panelHeight"] = 190,
			},
		},
		["Berlusconi - Sethraliss"] = {
		},
	},
	["serverID"] = {
		[10] = {
			["Sethraliss"] = true,
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["gold"] = {
		["Sethraliss"] = {
			["Dontuch"] = 138889594,
			["Gargamélla"] = 69274318,
			["Berlusconi"] = 85294110,
			["Mariagreco"] = 825062942,
			["Reghiaccio"] = 81403759,
			["Stempi"] = 119567726,
			["Antonioprete"] = 28379528,
			["Cimino"] = 29259634,
			["Picinbono"] = 109212551,
			["Nuncevedo"] = 60981078,
			["Corsini"] = 236730398,
			["Tonellotto"] = 330956355,
		},
	},
	["SLErrorDisabledAddOns"] = {
	},
	["profileKeys"] = {
		["Nuncevedo - Sethraliss"] = "AAAA Comune",
		["Cimino - Sethraliss"] = "AAAA Comune",
		["Picinbono - Sethraliss"] = "AAAA Comune",
		["Reghiaccio - Sethraliss"] = "AAAA Comune",
		["Berlusconi - Sethraliss"] = "Mariagreco-2.0",
		["Antonioprete - Sethraliss"] = "AAAA Comune",
		["Stempi - Sethraliss"] = "AAAA Comune",
		["Tonellotto - Sethraliss"] = "AAAA Comune",
		["Mariagreco - Sethraliss"] = "Mariagreco-2.0",
		["Dontuch - Sethraliss"] = "AAAA Comune",
		["Corsini - Sethraliss"] = "AAAA Comune",
	},
	["faction"] = {
		["Sethraliss"] = {
			["Berlusconi"] = "Alliance",
			["Reghiaccio"] = "Alliance",
			["Mariagreco"] = "Alliance",
		},
	},
	["SLEMinimize"] = {
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Gargamélla - Sethraliss"] = "Gargamélla - Sethraliss",
		["Nuncevedo - Sethraliss"] = "Nuncevedo - Sethraliss",
		["Cimino - Sethraliss"] = "Cimino - Sethraliss",
		["Picinbono - Sethraliss"] = "Picinbono - Sethraliss",
		["Reghiaccio - Sethraliss"] = "Reghiaccio - Sethraliss",
		["Berlusconi - Sethraliss"] = "Berlusconi - Sethraliss",
		["Antonioprete - Sethraliss"] = "Antonioprete - Sethraliss",
		["Stempi - Sethraliss"] = "Stempi - Sethraliss",
		["Tonellotto - Sethraliss"] = "Tonellotto - Sethraliss",
		["Mariagreco - Sethraliss"] = "Mariagreco - Sethraliss",
		["Dontuch - Sethraliss"] = "Dontuch - Sethraliss",
		["Corsini - Sethraliss"] = "Corsini - Sethraliss",
	},
	["profiles"] = {
		["Gargamélla - Sethraliss"] = {
			["install_complete"] = "11.14",
		},
		["Nuncevedo - Sethraliss"] = {
			["install_complete"] = "11.14",
		},
		["Cimino - Sethraliss"] = {
			["install_complete"] = "11.14",
		},
		["Picinbono - Sethraliss"] = {
			["install_complete"] = "11.14",
		},
		["Reghiaccio - Sethraliss"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.14",
		},
		["Berlusconi - Sethraliss"] = {
			["install_complete"] = "11.14",
		},
		["Antonioprete - Sethraliss"] = {
			["install_complete"] = "11.14",
		},
		["Stempi - Sethraliss"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.14",
		},
		["Tonellotto - Sethraliss"] = {
			["theme"] = "class",
			["install_complete"] = "11.14",
		},
		["Mariagreco - Sethraliss"] = {
			["sle"] = {
				["module"] = {
					["screensaver"] = true,
				},
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Sethraliss"] = {
					},
				},
				["install_complete"] = "3.78",
			},
			["install_complete"] = "11.14",
		},
		["Dontuch - Sethraliss"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.14",
		},
		["Corsini - Sethraliss"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.14",
		},
	},
}
