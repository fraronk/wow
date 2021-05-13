
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["displays"] = {
		["Dont Use Same Ability Twice  -  Silenced"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "Dont Use Same Abilty Twice\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"304409", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["selfPoint"] = "BOTTOM",
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["use_never"] = false,
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["semver"] = "1.0.10",
			["justify"] = "CENTER",
			["tocversion"] = 80200,
			["id"] = "Dont Use Same Ability Twice  -  Silenced",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fixedWidth"] = 200,
			["uid"] = "a(6mrbOC4LM",
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["wordWrap"] = "WordWrap",
		},
		["Keep Moving [Heroic]"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "Keep Moving\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "KEEP MOVING",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"299252", -- [1]
							"297564", -- [2]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["semver"] = "1.0.10",
			["tocversion"] = 80200,
			["id"] = "Keep Moving [Heroic]",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "18",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "16",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "14",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "12",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "10",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0.1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "KEEP MOVING",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [10]
			},
			["uid"] = "DVdwms8iREB",
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["fixedWidth"] = 200,
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
		},
		["Stand Alone"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "Stand Alone\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["actions"] = {
				["start"] = {
					["message"] = "STAND ALONE",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"299255", -- [1]
							"297656", -- [2]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["selfPoint"] = "BOTTOM",
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["uid"] = "XaLlST0ZypU",
			["authorOptions"] = {
			},
			["semver"] = "1.0.10",
			["justify"] = "CENTER",
			["tocversion"] = 80200,
			["id"] = "Stand Alone",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fixedWidth"] = 200,
			["config"] = {
			},
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["automaticWidth"] = "Auto",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "18",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "16",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "14",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "12",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "10",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0.1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND ALONE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [10]
			},
			["wordWrap"] = "WordWrap",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["M+ !keys BFA 2"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BananaPeelSlip.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.keystone = nil\naura_env.keypost = function (force,guild)\n    for bag = 0, NUM_BAG_SLOTS do\n        local numSlots = GetContainerNumSlots(bag)\n        for slot = 1, numSlots do\n            if (GetContainerItemID(bag, slot) == 158923) then --138019 live ; 158923 beta\n                local link = GetContainerItemLink(bag, slot)\n                if force or (aura_env.keystone and aura_env.keystone ~= link) then\n                    if guild then\n                        SendChatMessage(link, \"GUILD\")\n                    else\n                        SendChatMessage(link, \"PARTY\")\n                    end                    \n                end\n                aura_env.keystone = link\n                return\n            end\n        end\n    end\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["unevent"] = "auto",
						["use_unit"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "BAG_UPDATE, CHAT_MSG_PARTY, CHAT_MSG_PARTY_LEADER, CHAT_MSG_GUILD",
						["custom"] = "function (e, ...)\n    if e == \"BAG_UPDATE\" then\n        aura_env.keypost()\n    elseif e == \"CHAT_MSG_PARTY\" or e == \"CHAT_MSG_PARTY_LEADER\" then\n        if select(1, ...) == \"!keys\" then\n            aura_env.keypost(true)\n        end\n    elseif e == \"CHAT_MSG_GUILD\" then\n        if select(1, ...) == \"!keys\" then\n            aura_env.keypost(true,true)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function()return true end\n\n\n\n\n\n\n\n",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 1.0000075101852,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["justify"] = "LEFT",
			["parent"] = "Levi !keys",
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["semver"] = "1.0.0",
			["tocversion"] = 80200,
			["id"] = "M+ !keys BFA 2",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 1.0000075101852,
			["uid"] = "(hm8PRfhem1",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
			},
			["url"] = "https://wago.io/b2QQNFkFH/1",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["Soak"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "Soak\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "SOAK",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"299249", -- [1]
						},
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["config"] = {
			},
			["xOffset"] = 0,
			["semver"] = "1.0.10",
			["justify"] = "CENTER",
			["tocversion"] = 80200,
			["id"] = "Soak",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fixedWidth"] = 200,
			["uid"] = "rDByspuWtMe",
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "18",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "16",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "14",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "12",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "10",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0.1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [10]
			},
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
		},
		["Dont Take Damage  -  Healing Absorb"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "Dont Take Damage\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"297585", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["selfPoint"] = "BOTTOM",
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["uid"] = "RK8mwgmKHE8",
			["authorOptions"] = {
			},
			["semver"] = "1.0.10",
			["justify"] = "CENTER",
			["tocversion"] = 80200,
			["id"] = "Dont Take Damage  -  Healing Absorb",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
			},
			["config"] = {
			},
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["Brivido della caccia"] = {
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -275.0003051757813,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auranames"] = {
							"Brivido della Caccia", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["rotateText"] = "NONE",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glowFrequency"] = 0.25,
			["width"] = 64,
			["glowType"] = "ACShine",
			["glowThickness"] = 1,
			["config"] = {
			},
			["xOffset"] = -0.9991455078125,
			["keepAspectRatio"] = false,
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["glowLines"] = 8,
			["useglowColor"] = false,
			["glowYOffset"] = 0,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["id"] = "Brivido della caccia",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["uid"] = "G2lp1dKdKSE",
			["inverse"] = false,
			["glowLength"] = 10,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
		["Dont Move [Heroic]"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "Dont Move\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "DONT MOVE",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"299253", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["semver"] = "1.0.10",
			["justify"] = "CENTER",
			["tocversion"] = 80200,
			["id"] = "Dont Move [Heroic]",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "18",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "16",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "14",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "12",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "10",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0.1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT MOVE",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [10]
			},
			["uid"] = "UzGuWxGRnog",
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "BOTTOM",
		},
		["M+ !keys 2"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["customText"] = "",
			["yOffset"] = 420.00012207031,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/b2QQNFkFH/1",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.keystone = nil\naura_env.keypost = function (force)\n    for bag = 0, NUM_BAG_SLOTS do\n        local numSlots = GetContainerNumSlots(bag)\n        for slot = 1, numSlots do\n            if (GetContainerItemID(bag, slot) == 138019) then\n                local link = GetContainerItemLink(bag, slot)\n                if force or (aura_env.keystone and aura_env.keystone ~= link) then\n                    SendChatMessage(link, \"PARTY\")\n                end\n                aura_env.keystone = link\n                return\n            end\n        end\n    end\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["unevent"] = "auto",
						["use_unit"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "BAG_UPDATE, CHAT_MSG_PARTY, CHAT_MSG_PARTY_LEADER",
						["custom"] = "function (e, ...)\n    if e == \"BAG_UPDATE\" then\n        aura_env.keypost()\n    elseif e == \"CHAT_MSG_PARTY\" or e == \"CHAT_MSG_PARTY_LEADER\" then\n        if select(1, ...) == \"!keys\" then\n            aura_env.keypost(true)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function()return true end\n\n\n\n\n\n\n\n",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 1.0000075101852,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["semver"] = "1.0.0",
			["parent"] = "Levi !keys",
			["xOffset"] = 11.999816894531,
			["conditions"] = {
			},
			["justify"] = "LEFT",
			["tocversion"] = 80200,
			["id"] = "M+ !keys 2",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 1.0000075101852,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "60vitwhTcCf",
			["config"] = {
			},
			["automaticWidth"] = "Auto",
			["fixedWidth"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["selfPoint"] = "BOTTOM",
		},
		["Dont Soak"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "Dont Soak\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "DONT SOAK",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"299251", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["wordWrap"] = "WordWrap",
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["semver"] = "1.0.10",
			["justify"] = "CENTER",
			["tocversion"] = 80200,
			["id"] = "Dont Soak",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fixedWidth"] = 200,
			["uid"] = "SNpJUEtFBVx",
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "18",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "16",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "14",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "12",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "10",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0.1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "DONT SOAK",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [10]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["selfPoint"] = "BOTTOM",
		},
		["T25: [clockwerk] Queen Azshara Decree Helper"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Soak", -- [1]
				"Dont Soak", -- [2]
				"Keep Moving [Heroic]", -- [3]
				"Dont Move [Heroic]", -- [4]
				"Stand Alone", -- [5]
				"Stand Together", -- [6]
				"Dont Use Same Ability Twice  -  Silenced", -- [7]
				"Dont Take Damage  -  Healing Absorb", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -407.1113586425781,
			["yOffset"] = -201.3332214355469,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "BOTTOM",
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 11,
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotation"] = 0,
			["animate"] = false,
			["internalVersion"] = 24,
			["scale"] = 1,
			["rowSpace"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["anchorPoint"] = "CENTER",
			["grow"] = "UP",
			["constantFactor"] = "RADIUS",
			["useLimit"] = false,
			["borderOffset"] = 16,
			["semver"] = "1.0.10",
			["tocversion"] = 80200,
			["id"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["uid"] = "sa05KUMAVvM",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["borderInset"] = 0,
			["gridWidth"] = 5,
			["config"] = {
			},
			["conditions"] = {
			},
			["limit"] = 5,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["Levi !keys"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"M+ !keys 2", -- [1]
				"M+ !keys BFA 2", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -515.2777099609375,
			["scale"] = 1,
			["border"] = false,
			["yOffset"] = -502.7776775360107,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["uid"] = "CHFciTECknI",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["url"] = "https://wago.io/b2QQNFkFH/1",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["regionType"] = "group",
			["borderOffset"] = 5,
			["semver"] = "1.0.0",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "Levi !keys",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 29,
			["borderInset"] = 11,
			["version"] = 1,
			["tocversion"] = 80200,
			["config"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["Stand Together"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "Stand Together\n%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "STAND TOGETHER",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"299254", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 24,
			["selfPoint"] = "BOTTOM",
			["font"] = "Accidental Presidency",
			["version"] = 11,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2299, 2311",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["fontSize"] = 20,
			["regionType"] = "text",
			["config"] = {
			},
			["xOffset"] = 0,
			["semver"] = "1.0.10",
			["justify"] = "CENTER",
			["tocversion"] = 80200,
			["id"] = "Stand Together",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "18",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "16",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "14",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "12",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "10",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0.1",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "STAND TOGETHER",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [10]
			},
			["uid"] = "pMgCZBgflL5",
			["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
			["url"] = "https://wago.io/-bM2nIiQA/11",
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1584183309,
	["minimap"] = {
		["minimapPos"] = 338.3340556679815,
		["hide"] = true,
	},
	["lastUpgrade"] = 1587410907,
	["dbVersion"] = 24,
	["clearOldHistory"] = 30,
	["registered"] = {
	},
	["history"] = {
		["XaLlST0ZypU"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["xOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["authorOptions"] = {
				},
				["displayText"] = "Stand Alone\n%p",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "18",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "16",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "14",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [3]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "12",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [4]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "10",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [5]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "8",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [6]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "6",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [7]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "4",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [8]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "2",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [9]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "0.1",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND ALONE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [10]
				},
				["yOffset"] = 0,
				["regionType"] = "text",
				["selfPoint"] = "BOTTOM",
				["automaticWidth"] = "Auto",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["actions"] = {
					["start"] = {
						["message"] = "STAND ALONE",
						["do_message"] = true,
						["message_type"] = "SAY",
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "aura2",
							["auranames"] = {
								"299255", -- [1]
								"297656", -- [2]
							},
							["event"] = "Health",
							["subeventPrefix"] = "SPELL",
							["spellIds"] = {
							},
							["unit"] = "player",
							["useName"] = true,
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["uid"] = "XaLlST0ZypU",
				["internalVersion"] = 24,
				["semver"] = "1.0.10",
				["wordWrap"] = "WordWrap",
				["id"] = "Stand Alone",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["justify"] = "CENTER",
				["config"] = {
				},
				["version"] = 11,
				["font"] = "Accidental Presidency",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["fixedWidth"] = 200,
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["encounterid"] = "2299, 2311",
					["class"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
			},
		},
		["60vitwhTcCf"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656382,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["xOffset"] = 11.999816894531,
				["displayText"] = "",
				["customText"] = "",
				["yOffset"] = 420.00012207031,
				["anchorPoint"] = "CENTER",
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/b2QQNFkFH/1",
				["actions"] = {
					["start"] = {
					},
					["finish"] = {
					},
					["init"] = {
						["custom"] = "aura_env.keystone = nil\naura_env.keypost = function (force)\n    for bag = 0, NUM_BAG_SLOTS do\n        local numSlots = GetContainerNumSlots(bag)\n        for slot = 1, numSlots do\n            if (GetContainerItemID(bag, slot) == 138019) then\n                local link = GetContainerItemLink(bag, slot)\n                if force or (aura_env.keystone and aura_env.keystone ~= link) then\n                    SendChatMessage(link, \"PARTY\")\n                end\n                aura_env.keystone = link\n                return\n            end\n        end\n    end\nend",
						["do_custom"] = true,
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "custom",
							["custom_hide"] = "custom",
							["unevent"] = "auto",
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["genericShowOn"] = "showOnActive",
							["use_unit"] = true,
							["event"] = "Chat Message",
							["spellIds"] = {
							},
							["events"] = "BAG_UPDATE, CHAT_MSG_PARTY, CHAT_MSG_PARTY_LEADER",
							["custom"] = "function (e, ...)\n    if e == \"BAG_UPDATE\" then\n        aura_env.keypost()\n    elseif e == \"CHAT_MSG_PARTY\" or e == \"CHAT_MSG_PARTY_LEADER\" then\n        if select(1, ...) == \"!keys\" then\n            aura_env.keypost(true)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
							["subeventPrefix"] = "SPELL",
							["unit"] = "player",
							["custom_type"] = "event",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
							["custom"] = "function()return true end\n\n\n\n\n\n\n\n",
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 29,
				["wordWrap"] = "WordWrap",
				["font"] = "Friz Quadrata TT",
				["version"] = 1,
				["height"] = 1.0000075101852,
				["load"] = {
					["talent2"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["fontSize"] = 12,
				["regionType"] = "text",
				["selfPoint"] = "BOTTOM",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
				},
				["fixedWidth"] = 200,
				["semver"] = "1.0.0",
				["tocversion"] = 80200,
				["id"] = "M+ !keys 2",
				["automaticWidth"] = "Auto",
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["config"] = {
				},
				["uid"] = "60vitwhTcCf",
				["authorOptions"] = {
				},
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["width"] = 1.0000075101852,
				["conditions"] = {
				},
				["justify"] = "LEFT",
				["parent"] = "Levi !keys",
			},
		},
		["DVdwms8iREB"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["authorOptions"] = {
				},
				["anchorPoint"] = "CENTER",
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["displayText"] = "Keep Moving\n%p",
				["fixedWidth"] = 200,
				["yOffset"] = 0,
				["regionType"] = "text",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["wordWrap"] = "WordWrap",
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
						["message"] = "KEEP MOVING",
						["do_message"] = true,
						["message_type"] = "SAY",
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["useName"] = true,
							["auranames"] = {
								"299252", -- [1]
								"297564", -- [2]
							},
							["event"] = "Health",
							["subeventPrefix"] = "SPELL",
							["spellIds"] = {
							},
							["unit"] = "player",
							["type"] = "aura2",
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["config"] = {
				},
				["internalVersion"] = 24,
				["justify"] = "CENTER",
				["selfPoint"] = "BOTTOM",
				["id"] = "Keep Moving [Heroic]",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["semver"] = "1.0.10",
				["uid"] = "DVdwms8iREB",
				["version"] = 11,
				["font"] = "Accidental Presidency",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "18",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "16",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "14",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [3]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "12",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [4]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "10",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [5]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "8",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [6]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "6",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [7]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "4",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [8]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "2",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [9]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "0.1",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "KEEP MOVING",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [10]
				},
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["encounterid"] = "2299, 2311",
					["class"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = 0,
			},
		},
		["sa05KUMAVvM"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["grow"] = "UP",
				["controlledChildren"] = {
				},
				["borderBackdrop"] = "Blizzard Tooltip",
				["xOffset"] = 0,
				["yOffset"] = -100,
				["anchorPoint"] = "CENTER",
				["borderColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["space"] = 2,
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["actions"] = {
					["start"] = {
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["debuffType"] = "HELPFUL",
							["type"] = "aura2",
							["spellIds"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["subeventPrefix"] = "SPELL",
							["unit"] = "player",
							["event"] = "Health",
							["names"] = {
							},
						},
						["untrigger"] = {
						},
					}, -- [1]
				},
				["columnSpace"] = 1,
				["radius"] = 200,
				["selfPoint"] = "BOTTOM",
				["align"] = "CENTER",
				["stagger"] = 0,
				["version"] = 11,
				["load"] = {
					["use_class"] = false,
					["class"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["animate"] = false,
				["scale"] = 1,
				["border"] = false,
				["borderEdge"] = "Square Full White",
				["regionType"] = "dynamicgroup",
				["borderSize"] = 2,
				["sort"] = "none",
				["internalVersion"] = 24,
				["rowSpace"] = 1,
				["gridType"] = "RD",
				["authorOptions"] = {
				},
				["constantFactor"] = "RADIUS",
				["gridWidth"] = 5,
				["borderOffset"] = 16,
				["semver"] = "1.0.10",
				["tocversion"] = 80200,
				["id"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["config"] = {
				},
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["borderInset"] = 0,
				["uid"] = "sa05KUMAVvM",
				["useLimit"] = false,
				["arcLength"] = 360,
				["rotation"] = 0,
				["conditions"] = {
				},
				["limit"] = 5,
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
			},
		},
		["pMgCZBgflL5"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["regionType"] = "text",
				["xOffset"] = 0,
				["displayText"] = "Stand Together\n%p",
				["fixedWidth"] = 200,
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["selfPoint"] = "BOTTOM",
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
						["message"] = "STAND TOGETHER",
						["do_message"] = true,
						["message_type"] = "SAY",
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["useName"] = true,
							["auranames"] = {
								"299254", -- [1]
							},
							["event"] = "Health",
							["subeventPrefix"] = "SPELL",
							["spellIds"] = {
							},
							["unit"] = "player",
							["type"] = "aura2",
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["config"] = {
				},
				["internalVersion"] = 24,
				["semver"] = "1.0.10",
				["wordWrap"] = "WordWrap",
				["id"] = "Stand Together",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["justify"] = "CENTER",
				["uid"] = "pMgCZBgflL5",
				["version"] = 11,
				["font"] = "Accidental Presidency",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "18",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "16",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "14",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [3]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "12",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [4]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "10",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [5]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "8",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [6]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "6",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [7]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "4",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [8]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "2",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [9]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "0.1",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "STAND TOGETHER",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [10]
				},
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["class"] = {
						["multi"] = {
						},
					},
					["encounterid"] = "2299, 2311",
					["spec"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["authorOptions"] = {
				},
			},
		},
		["(hm8PRfhem1"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656382,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["parent"] = "Levi !keys",
				["displayText"] = "",
				["customText"] = "",
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
						["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BananaPeelSlip.ogg",
						["do_sound"] = true,
					},
					["finish"] = {
					},
					["init"] = {
						["custom"] = "aura_env.keystone = nil\naura_env.keypost = function (force,guild)\n    for bag = 0, NUM_BAG_SLOTS do\n        local numSlots = GetContainerNumSlots(bag)\n        for slot = 1, numSlots do\n            if (GetContainerItemID(bag, slot) == 158923) then --138019 live ; 158923 beta\n                local link = GetContainerItemLink(bag, slot)\n                if force or (aura_env.keystone and aura_env.keystone ~= link) then\n                    if guild then\n                        SendChatMessage(link, \"GUILD\")\n                    else\n                        SendChatMessage(link, \"PARTY\")\n                    end                    \n                end\n                aura_env.keystone = link\n                return\n            end\n        end\n    end\nend",
						["do_custom"] = true,
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "custom",
							["custom_hide"] = "custom",
							["unevent"] = "auto",
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["genericShowOn"] = "showOnActive",
							["use_unit"] = true,
							["event"] = "Chat Message",
							["spellIds"] = {
							},
							["events"] = "BAG_UPDATE, CHAT_MSG_PARTY, CHAT_MSG_PARTY_LEADER, CHAT_MSG_GUILD",
							["custom"] = "function (e, ...)\n    if e == \"BAG_UPDATE\" then\n        aura_env.keypost()\n    elseif e == \"CHAT_MSG_PARTY\" or e == \"CHAT_MSG_PARTY_LEADER\" then\n        if select(1, ...) == \"!keys\" then\n            aura_env.keypost(true)\n        end\n    elseif e == \"CHAT_MSG_GUILD\" then\n        if select(1, ...) == \"!keys\" then\n            aura_env.keypost(true,true)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
							["subeventPrefix"] = "SPELL",
							["unit"] = "player",
							["custom_type"] = "event",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
							["custom"] = "function()return true end\n\n\n\n\n\n\n\n",
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 29,
				["wordWrap"] = "WordWrap",
				["font"] = "Friz Quadrata TT",
				["version"] = 1,
				["height"] = 1.0000075101852,
				["load"] = {
					["talent2"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["fontSize"] = 12,
				["regionType"] = "text",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
				},
				["url"] = "https://wago.io/b2QQNFkFH/1",
				["conditions"] = {
				},
				["semver"] = "1.0.0",
				["tocversion"] = 80200,
				["id"] = "M+ !keys BFA 2",
				["anchorFrameType"] = "SCREEN",
				["frameStrata"] = 1,
				["width"] = 1.0000075101852,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["uid"] = "(hm8PRfhem1",
				["authorOptions"] = {
				},
				["config"] = {
				},
				["xOffset"] = 0,
				["fixedWidth"] = 200,
				["justify"] = "LEFT",
				["selfPoint"] = "BOTTOM",
			},
		},
		["a(6mrbOC4LM"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["regionType"] = "text",
				["authorOptions"] = {
				},
				["displayText"] = "Dont Use Same Abilty Twice\n%p",
				["conditions"] = {
				},
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["selfPoint"] = "BOTTOM",
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["wordWrap"] = "WordWrap",
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "aura2",
							["auranames"] = {
								"304409", -- [1]
							},
							["event"] = "Health",
							["subeventPrefix"] = "SPELL",
							["spellIds"] = {
							},
							["unit"] = "player",
							["useName"] = true,
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["font"] = "Accidental Presidency",
				["internalVersion"] = 24,
				["semver"] = "1.0.10",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["id"] = "Dont Use Same Ability Twice  -  Silenced",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["justify"] = "CENTER",
				["config"] = {
				},
				["version"] = 11,
				["uid"] = "a(6mrbOC4LM",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["fixedWidth"] = 200,
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["use_never"] = false,
					["encounterid"] = "2299, 2311",
					["spec"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = 0,
			},
		},
		["RK8mwgmKHE8"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["regionType"] = "text",
				["authorOptions"] = {
				},
				["displayText"] = "Dont Take Damage\n%p",
				["fixedWidth"] = 200,
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["selfPoint"] = "BOTTOM",
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["useName"] = true,
							["auranames"] = {
								"297585", -- [1]
							},
							["event"] = "Health",
							["subeventPrefix"] = "SPELL",
							["spellIds"] = {
							},
							["unit"] = "player",
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["type"] = "aura2",
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["uid"] = "RK8mwgmKHE8",
				["internalVersion"] = 24,
				["semver"] = "1.0.10",
				["wordWrap"] = "WordWrap",
				["id"] = "Dont Take Damage  -  Healing Absorb",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["justify"] = "CENTER",
				["config"] = {
				},
				["version"] = 11,
				["font"] = "Accidental Presidency",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["conditions"] = {
				},
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["encounterid"] = "2299, 2311",
					["class"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = 0,
			},
		},
		["UzGuWxGRnog"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["xOffset"] = 0,
				["regionType"] = "text",
				["authorOptions"] = {
				},
				["displayText"] = "Dont Move\n%p",
				["fixedWidth"] = 200,
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["selfPoint"] = "BOTTOM",
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
						["message"] = "DONT MOVE",
						["do_message"] = true,
						["message_type"] = "SAY",
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "aura2",
							["auranames"] = {
								"299253", -- [1]
							},
							["event"] = "Health",
							["subeventPrefix"] = "SPELL",
							["spellIds"] = {
							},
							["unit"] = "player",
							["useName"] = true,
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["font"] = "Accidental Presidency",
				["internalVersion"] = 24,
				["semver"] = "1.0.10",
				["wordWrap"] = "WordWrap",
				["id"] = "Dont Move [Heroic]",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["justify"] = "CENTER",
				["config"] = {
				},
				["version"] = 11,
				["uid"] = "UzGuWxGRnog",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "18",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "16",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "14",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [3]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "12",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [4]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "10",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [5]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "8",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [6]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "6",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [7]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "4",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [8]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "2",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [9]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "0.1",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT MOVE",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [10]
				},
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["class"] = {
						["multi"] = {
						},
					},
					["encounterid"] = "2299, 2311",
					["spec"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
			},
		},
		["CHFciTECknI"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656382,
			["allowUpdates"] = true,
			["data"] = {
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["controlledChildren"] = {
				},
				["borderBackdrop"] = "Blizzard Tooltip",
				["xOffset"] = -515.2777099609375,
				["scale"] = 1,
				["border"] = false,
				["borderEdge"] = "None",
				["regionType"] = "group",
				["borderSize"] = 16,
				["authorOptions"] = {
				},
				["borderColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["anchorPoint"] = "CENTER",
				["url"] = "https://wago.io/b2QQNFkFH/1",
				["actions"] = {
					["start"] = {
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["debuffType"] = "HELPFUL",
							["type"] = "aura2",
							["spellIds"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["names"] = {
							},
							["subeventPrefix"] = "SPELL",
							["event"] = "Health",
							["unit"] = "player",
						},
						["untrigger"] = {
						},
					}, -- [1]
				},
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
						["easeStrength"] = 3,
						["easeType"] = "none",
					},
				},
				["internalVersion"] = 29,
				["semver"] = "1.0.0",
				["tocversion"] = 80200,
				["id"] = "Levi !keys",
				["selfPoint"] = "BOTTOMLEFT",
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["borderInset"] = 11,
				["uid"] = "CHFciTECknI",
				["version"] = 1,
				["config"] = {
				},
				["borderOffset"] = 5,
				["conditions"] = {
				},
				["load"] = {
					["use_class"] = false,
					["class"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["yOffset"] = -502.7776775360107,
			},
		},
		["SNpJUEtFBVx"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["regionType"] = "text",
				["authorOptions"] = {
				},
				["displayText"] = "Dont Soak\n%p",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "18",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "16",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "14",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [3]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "12",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [4]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "10",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [5]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "8",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [6]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "6",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [7]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "4",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [8]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "2",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [9]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "0.1",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "DONT SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [10]
				},
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["wordWrap"] = "WordWrap",
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["selfPoint"] = "BOTTOM",
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
						["message"] = "DONT SOAK",
						["do_message"] = true,
						["message_type"] = "SAY",
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["useName"] = true,
							["subeventSuffix"] = "_CAST_START",
							["event"] = "Health",
							["unit"] = "player",
							["spellIds"] = {
							},
							["subeventPrefix"] = "SPELL",
							["type"] = "aura2",
							["names"] = {
							},
							["auranames"] = {
								"299251", -- [1]
							},
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["config"] = {
				},
				["internalVersion"] = 24,
				["semver"] = "1.0.10",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["id"] = "Dont Soak",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["justify"] = "CENTER",
				["font"] = "Accidental Presidency",
				["version"] = 11,
				["uid"] = "SNpJUEtFBVx",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["fixedWidth"] = 200,
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["class"] = {
						["multi"] = {
						},
					},
					["encounterid"] = "2299, 2311",
					["spec"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = 0,
			},
		},
		["rDByspuWtMe"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1603656299,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["fontSize"] = 20,
				["authorOptions"] = {
				},
				["regionType"] = "text",
				["xOffset"] = 0,
				["displayText"] = "Soak\n%p",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "18",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "16",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "14",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [3]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "12",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [4]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "10",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [5]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "8",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [6]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "6",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [7]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "4",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [8]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "2",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [9]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<=",
							["value"] = "0.1",
							["variable"] = "expirationTime",
						},
						["changes"] = {
							{
								["value"] = {
									["message"] = "SOAK",
									["message_type"] = "SAY",
								},
								["property"] = "chat",
							}, -- [1]
						},
					}, -- [10]
				},
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["animation"] = {
					["start"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["main"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
					["finish"] = {
						["duration_type"] = "seconds",
						["type"] = "none",
					},
				},
				["url"] = "https://wago.io/-bM2nIiQA/11",
				["wordWrap"] = "WordWrap",
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
						["message"] = "SOAK",
						["do_message"] = true,
						["message_type"] = "SAY",
					},
					["finish"] = {
					},
					["init"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "aura2",
							["auranames"] = {
								"299249", -- [1]
							},
							["event"] = "Health",
							["names"] = {
							},
							["spellIds"] = {
							},
							["unit"] = "player",
							["useName"] = true,
							["subeventSuffix"] = "_CAST_START",
							["subeventPrefix"] = "SPELL",
							["debuffType"] = "HARMFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["config"] = {
				},
				["internalVersion"] = 24,
				["semver"] = "1.0.10",
				["selfPoint"] = "BOTTOM",
				["id"] = "Soak",
				["tocversion"] = 80200,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["justify"] = "CENTER",
				["uid"] = "rDByspuWtMe",
				["version"] = 11,
				["font"] = "Accidental Presidency",
				["parent"] = "T25: [clockwerk] Queen Azshara Decree Helper",
				["fixedWidth"] = 200,
				["load"] = {
					["use_encounterid"] = true,
					["use_encounter"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["encounterid"] = "2299, 2311",
					["class"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
			},
		},
	},
	["frame"] = {
		["xOffset"] = -428.9993896484375,
		["width"] = 830.0001831054688,
		["height"] = 665.0001220703125,
		["yOffset"] = -86.22210693359375,
	},
	["editor_theme"] = "Monokai",
}
