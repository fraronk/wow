
ElvDB = {
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_NonTarget"] = {
					["actions"] = {
						["usePortrait"] = false,
						["tags"] = {
							["name"] = "",
							["power"] = "",
							["level"] = "",
							["health"] = "",
							["title"] = "",
						},
						["color"] = {
							["health"] = false,
							["power"] = false,
							["healthColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["borderColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["border"] = false,
							["powerColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["nameOnly"] = false,
						["flash"] = {
							["speed"] = 4,
							["enable"] = false,
							["color"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["hide"] = false,
						["scale"] = 1,
						["texture"] = {
							["enable"] = false,
							["texture"] = "ElvUI Norm",
						},
					},
					["triggers"] = {
						["debuffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["instanceType"] = {
							["party"] = false,
							["scenario"] = false,
							["pvp"] = false,
							["raid"] = false,
							["arena"] = false,
							["none"] = false,
						},
						["inCombatUnit"] = false,
						["isNotOwnedByPlayer"] = false,
						["role"] = {
							["tank"] = false,
							["damager"] = false,
							["healer"] = false,
						},
						["inVehicle"] = false,
						["level"] = false,
						["overPowerThreshold"] = 0,
						["isNotPet"] = false,
						["threat"] = {
							["good"] = false,
							["offTankBadTransition"] = false,
							["bad"] = false,
							["offTank"] = false,
							["enable"] = false,
							["offTankGoodTransition"] = false,
							["badTransition"] = false,
							["goodTransition"] = false,
						},
						["overHealthThreshold"] = 0,
						["nameplateType"] = {
							["player"] = false,
						},
						["maxlevel"] = 0,
						["isNotTapDenied"] = false,
						["playerCanAttack"] = false,
						["isTapDenied"] = false,
						["powerUsePlayer"] = false,
						["cooldowns"] = {
							["mustHaveAll"] = false,
							["names"] = {
							},
						},
						["outOfVehicleUnit"] = false,
						["isNotPlayerControlled"] = false,
						["outOfCombatUnit"] = false,
						["buffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["isPvP"] = false,
						["inCombat"] = false,
						["outOfVehicle"] = false,
						["isNotPvP"] = false,
						["playerCanNotAttack"] = false,
						["creatureType"] = {
							["Dragonkin"] = false,
							["Humanoid"] = false,
							["Elemental"] = false,
							["Critter"] = false,
							["enable"] = false,
							["Gas Cloud"] = false,
							["Totem"] = false,
							["Non-combat Pet"] = false,
							["Wild Pet"] = false,
							["Demon"] = false,
							["Not specified"] = false,
							["Undead"] = false,
							["Aberration"] = false,
							["Giant"] = false,
							["Beast"] = false,
							["Mechanical"] = false,
						},
						["healthThreshold"] = false,
						["isPet"] = false,
						["names"] = {
						},
						["isPlayerControlled"] = false,
						["keyMod"] = {
							["Alt"] = false,
							["LeftControl"] = false,
							["RightShift"] = false,
							["enable"] = false,
							["RightAlt"] = false,
							["LeftShift"] = false,
							["Modifier"] = false,
							["Shift"] = false,
							["RightControl"] = false,
							["LeftAlt"] = false,
							["Control"] = false,
						},
						["inVehicleUnit"] = false,
						["isTarget"] = false,
						["isResting"] = false,
						["priority"] = 1,
						["healthUsePlayer"] = false,
						["talent"] = {
							["tier7enabled"] = false,
							["tier7"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier2enabled"] = false,
							["tier1"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["enabled"] = false,
							["type"] = "normal",
							["tier2"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4enabled"] = false,
							["tier3"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier5enabled"] = false,
							["tier5"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier1enabled"] = false,
							["requireAll"] = false,
							["tier6enabled"] = false,
							["tier3enabled"] = false,
							["tier6"] = {
								["missing"] = false,
								["column"] = 0,
							},
						},
						["raidTarget"] = {
							["circle"] = false,
							["square"] = false,
							["diamond"] = false,
							["moon"] = false,
							["star"] = false,
							["triangle"] = false,
							["skull"] = false,
							["cross"] = false,
						},
						["classification"] = {
							["elite"] = false,
							["normal"] = false,
							["trivial"] = false,
							["minus"] = false,
							["worldboss"] = false,
							["rareelite"] = false,
							["rare"] = false,
						},
						["underPowerThreshold"] = 0,
						["instanceDifficulty"] = {
							["dungeon"] = {
								["normal"] = false,
								["mythic+"] = false,
								["heroic"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
							["raid"] = {
								["normal"] = false,
								["legacy25normal"] = false,
								["heroic"] = false,
								["legacy10normal"] = false,
								["legacy10heroic"] = false,
								["legacy25heroic"] = false,
								["lfr"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
						},
						["minlevel"] = 0,
						["targetMe"] = false,
						["outOfCombat"] = false,
						["curlevel"] = 0,
						["class"] = {
						},
						["questBoss"] = false,
						["isOwnedByPlayer"] = false,
						["powerThreshold"] = false,
						["location"] = {
							["zoneNamesEnabled"] = false,
							["subZoneNamesEnabled"] = false,
							["zoneNames"] = {
							},
							["mapIDs"] = {
							},
							["subZoneNames"] = {
							},
							["instanceIDs"] = {
							},
							["mapIDEnabled"] = false,
							["instanceIDEnabled"] = false,
						},
						["casting"] = {
							["isChanneling"] = false,
							["notSpell"] = false,
							["isCasting"] = false,
							["notChanneling"] = false,
							["spells"] = {
							},
							["notCasting"] = false,
							["interruptible"] = false,
						},
						["reactionType"] = {
							["enabled"] = false,
							["reputation"] = false,
							["friendly"] = false,
							["revered"] = false,
							["honored"] = false,
							["hostile"] = false,
							["unfriendly"] = false,
							["exalted"] = false,
							["neutral"] = false,
							["hated"] = false,
						},
						["underHealthThreshold"] = 0,
					},
				},
				["ElvUI_Explosives"] = {
					["actions"] = {
						["tags"] = {
							["name"] = "",
							["power"] = "",
							["level"] = "",
							["health"] = "",
							["title"] = "",
						},
						["color"] = {
							["power"] = false,
							["healthColor"] = {
								["a"] = 1,
							},
							["borderColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["border"] = false,
							["powerColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["nameOnly"] = false,
						["alpha"] = -1,
						["flash"] = {
							["speed"] = 4,
							["enable"] = false,
							["color"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["hide"] = false,
						["texture"] = {
							["enable"] = false,
							["texture"] = "ElvUI Norm",
						},
					},
					["triggers"] = {
						["debuffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["instanceType"] = {
							["party"] = false,
							["scenario"] = false,
							["pvp"] = false,
							["raid"] = false,
							["arena"] = false,
							["none"] = false,
						},
						["inCombatUnit"] = false,
						["class"] = {
						},
						["role"] = {
							["tank"] = false,
							["damager"] = false,
							["healer"] = false,
						},
						["inVehicle"] = false,
						["level"] = false,
						["targetMe"] = false,
						["isNotPet"] = false,
						["threat"] = {
							["good"] = false,
							["offTankBadTransition"] = false,
							["bad"] = false,
							["offTank"] = false,
							["enable"] = false,
							["offTankGoodTransition"] = false,
							["badTransition"] = false,
							["goodTransition"] = false,
						},
						["overHealthThreshold"] = 0,
						["nameplateType"] = {
							["player"] = false,
							["friendlyPlayer"] = false,
							["enemyPlayer"] = false,
							["friendlyNPC"] = false,
						},
						["maxlevel"] = 0,
						["creatureType"] = {
							["Dragonkin"] = false,
							["Humanoid"] = false,
							["Elemental"] = false,
							["Critter"] = false,
							["enable"] = false,
							["Gas Cloud"] = false,
							["Totem"] = false,
							["Non-combat Pet"] = false,
							["Wild Pet"] = false,
							["Demon"] = false,
							["Not specified"] = false,
							["Undead"] = false,
							["Aberration"] = false,
							["Giant"] = false,
							["Beast"] = false,
							["Mechanical"] = false,
						},
						["playerCanAttack"] = false,
						["isTapDenied"] = false,
						["powerUsePlayer"] = false,
						["cooldowns"] = {
							["mustHaveAll"] = false,
							["names"] = {
							},
						},
						["outOfVehicleUnit"] = false,
						["isNotPlayerControlled"] = false,
						["outOfCombatUnit"] = false,
						["buffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["isNotTapDenied"] = false,
						["inCombat"] = false,
						["outOfVehicle"] = false,
						["isPvP"] = false,
						["requireTarget"] = false,
						["playerCanNotAttack"] = false,
						["overPowerThreshold"] = 0,
						["healthThreshold"] = false,
						["isNotOwnedByPlayer"] = false,
						["curlevel"] = 0,
						["isPlayerControlled"] = false,
						["isPet"] = false,
						["inVehicleUnit"] = false,
						["isTarget"] = false,
						["keyMod"] = {
							["Alt"] = false,
							["LeftControl"] = false,
							["RightShift"] = false,
							["enable"] = false,
							["RightAlt"] = false,
							["LeftShift"] = false,
							["Modifier"] = false,
							["Shift"] = false,
							["RightControl"] = false,
							["LeftAlt"] = false,
							["Control"] = false,
						},
						["healthUsePlayer"] = false,
						["talent"] = {
							["tier7enabled"] = false,
							["tier7"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier2enabled"] = false,
							["tier1"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["enabled"] = false,
							["type"] = "normal",
							["tier2"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4enabled"] = false,
							["tier3"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier5enabled"] = false,
							["tier5"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier1enabled"] = false,
							["requireAll"] = false,
							["tier6enabled"] = false,
							["tier3enabled"] = false,
							["tier6"] = {
								["missing"] = false,
								["column"] = 0,
							},
						},
						["raidTarget"] = {
							["circle"] = false,
							["square"] = false,
							["diamond"] = false,
							["moon"] = false,
							["star"] = false,
							["triangle"] = false,
							["skull"] = false,
							["cross"] = false,
						},
						["classification"] = {
							["elite"] = false,
							["normal"] = false,
							["trivial"] = false,
							["minus"] = false,
							["worldboss"] = false,
							["rareelite"] = false,
							["rare"] = false,
						},
						["underPowerThreshold"] = 0,
						["instanceDifficulty"] = {
							["dungeon"] = {
								["normal"] = false,
								["mythic+"] = false,
								["heroic"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
							["raid"] = {
								["normal"] = false,
								["legacy25normal"] = false,
								["heroic"] = false,
								["legacy10normal"] = false,
								["legacy10heroic"] = false,
								["legacy25heroic"] = false,
								["lfr"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
						},
						["minlevel"] = 0,
						["outOfCombat"] = false,
						["isResting"] = false,
						["powerThreshold"] = false,
						["isNotPvP"] = false,
						["questBoss"] = false,
						["isOwnedByPlayer"] = false,
						["reactionType"] = {
							["enabled"] = false,
							["reputation"] = false,
							["friendly"] = false,
							["revered"] = false,
							["honored"] = false,
							["hostile"] = false,
							["unfriendly"] = false,
							["exalted"] = false,
							["neutral"] = false,
							["hated"] = false,
						},
						["location"] = {
							["zoneNamesEnabled"] = false,
							["subZoneNamesEnabled"] = false,
							["zoneNames"] = {
							},
							["mapIDs"] = {
							},
							["subZoneNames"] = {
							},
							["instanceIDs"] = {
							},
							["mapIDEnabled"] = false,
							["instanceIDEnabled"] = false,
						},
						["casting"] = {
							["isChanneling"] = false,
							["notSpell"] = false,
							["isCasting"] = false,
							["notChanneling"] = false,
							["spells"] = {
							},
							["notCasting"] = false,
							["interruptible"] = false,
						},
						["underHealthThreshold"] = 0,
						["notTarget"] = false,
					},
				},
				["ElvUI_Target"] = {
					["actions"] = {
						["usePortrait"] = false,
						["tags"] = {
							["name"] = "",
							["power"] = "",
							["level"] = "",
							["health"] = "",
							["title"] = "",
						},
						["color"] = {
							["health"] = false,
							["power"] = false,
							["healthColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["borderColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["border"] = false,
							["powerColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["nameOnly"] = false,
						["alpha"] = -1,
						["flash"] = {
							["speed"] = 4,
							["enable"] = false,
							["color"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["hide"] = false,
						["texture"] = {
							["enable"] = false,
							["texture"] = "ElvUI Norm",
						},
					},
					["triggers"] = {
						["debuffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["instanceType"] = {
							["party"] = false,
							["scenario"] = false,
							["pvp"] = false,
							["raid"] = false,
							["arena"] = false,
							["none"] = false,
						},
						["inCombatUnit"] = false,
						["isNotOwnedByPlayer"] = false,
						["role"] = {
							["tank"] = false,
							["damager"] = false,
							["healer"] = false,
						},
						["inVehicle"] = false,
						["level"] = false,
						["keyMod"] = {
							["Alt"] = false,
							["LeftControl"] = false,
							["RightShift"] = false,
							["enable"] = false,
							["RightAlt"] = false,
							["LeftShift"] = false,
							["Modifier"] = false,
							["Shift"] = false,
							["RightControl"] = false,
							["LeftAlt"] = false,
							["Control"] = false,
						},
						["isResting"] = false,
						["isNotPet"] = false,
						["threat"] = {
							["good"] = false,
							["offTankBadTransition"] = false,
							["bad"] = false,
							["offTank"] = false,
							["enable"] = false,
							["offTankGoodTransition"] = false,
							["badTransition"] = false,
							["goodTransition"] = false,
						},
						["overHealthThreshold"] = 0,
						["nameplateType"] = {
							["player"] = false,
							["enemyNPC"] = false,
							["enemyPlayer"] = false,
							["enable"] = false,
							["friendlyPlayer"] = false,
							["friendlyNPC"] = false,
						},
						["maxlevel"] = 0,
						["isTapDenied"] = false,
						["playerCanAttack"] = false,
						["cooldowns"] = {
							["mustHaveAll"] = false,
							["names"] = {
							},
						},
						["powerUsePlayer"] = false,
						["class"] = {
						},
						["outOfVehicleUnit"] = false,
						["isNotPlayerControlled"] = false,
						["creatureType"] = {
							["Dragonkin"] = false,
							["Humanoid"] = false,
							["Elemental"] = false,
							["Critter"] = false,
							["enable"] = false,
							["Gas Cloud"] = false,
							["Totem"] = false,
							["Non-combat Pet"] = false,
							["Wild Pet"] = false,
							["Demon"] = false,
							["Not specified"] = false,
							["Undead"] = false,
							["Aberration"] = false,
							["Giant"] = false,
							["Beast"] = false,
							["Mechanical"] = false,
						},
						["buffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["outOfVehicle"] = false,
						["inCombat"] = false,
						["overPowerThreshold"] = 0,
						["isPvP"] = false,
						["requireTarget"] = false,
						["playerCanNotAttack"] = false,
						["outOfCombatUnit"] = false,
						["healthThreshold"] = false,
						["isNotTapDenied"] = false,
						["curlevel"] = 0,
						["isPlayerControlled"] = false,
						["isPet"] = false,
						["inVehicleUnit"] = false,
						["targetMe"] = false,
						["priority"] = 1,
						["healthUsePlayer"] = false,
						["talent"] = {
							["tier7enabled"] = false,
							["tier7"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier2enabled"] = false,
							["tier1"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["enabled"] = false,
							["type"] = "normal",
							["tier2"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4enabled"] = false,
							["tier3"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier5enabled"] = false,
							["tier5"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier1enabled"] = false,
							["requireAll"] = false,
							["tier6enabled"] = false,
							["tier3enabled"] = false,
							["tier6"] = {
								["missing"] = false,
								["column"] = 0,
							},
						},
						["raidTarget"] = {
							["circle"] = false,
							["square"] = false,
							["diamond"] = false,
							["moon"] = false,
							["star"] = false,
							["triangle"] = false,
							["skull"] = false,
							["cross"] = false,
						},
						["classification"] = {
							["elite"] = false,
							["normal"] = false,
							["trivial"] = false,
							["minus"] = false,
							["worldboss"] = false,
							["rareelite"] = false,
							["rare"] = false,
						},
						["underPowerThreshold"] = 0,
						["instanceDifficulty"] = {
							["dungeon"] = {
								["normal"] = false,
								["mythic+"] = false,
								["heroic"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
							["raid"] = {
								["normal"] = false,
								["legacy25normal"] = false,
								["heroic"] = false,
								["legacy10normal"] = false,
								["legacy10heroic"] = false,
								["legacy25heroic"] = false,
								["lfr"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
						},
						["minlevel"] = 0,
						["outOfCombat"] = false,
						["names"] = {
						},
						["powerThreshold"] = false,
						["isNotPvP"] = false,
						["questBoss"] = false,
						["isOwnedByPlayer"] = false,
						["reactionType"] = {
							["enabled"] = false,
							["reputation"] = false,
							["friendly"] = false,
							["revered"] = false,
							["honored"] = false,
							["hostile"] = false,
							["unfriendly"] = false,
							["exalted"] = false,
							["neutral"] = false,
							["hated"] = false,
						},
						["location"] = {
							["zoneNamesEnabled"] = false,
							["subZoneNamesEnabled"] = false,
							["zoneNames"] = {
							},
							["mapIDs"] = {
							},
							["subZoneNames"] = {
							},
							["instanceIDs"] = {
							},
							["mapIDEnabled"] = false,
							["instanceIDEnabled"] = false,
						},
						["casting"] = {
							["isChanneling"] = false,
							["notSpell"] = false,
							["isCasting"] = false,
							["notChanneling"] = false,
							["spells"] = {
							},
							["notCasting"] = false,
							["interruptible"] = false,
						},
						["underHealthThreshold"] = 0,
						["notTarget"] = false,
					},
				},
				["ElvUI_Boss"] = {
					["actions"] = {
						["tags"] = {
							["name"] = "",
							["power"] = "",
							["level"] = "",
							["health"] = "",
							["title"] = "",
						},
						["color"] = {
							["health"] = false,
							["power"] = false,
							["healthColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["borderColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["border"] = false,
							["powerColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["nameOnly"] = false,
						["alpha"] = -1,
						["flash"] = {
							["speed"] = 4,
							["enable"] = false,
							["color"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["hide"] = false,
						["texture"] = {
							["enable"] = false,
							["texture"] = "ElvUI Norm",
						},
					},
					["triggers"] = {
						["debuffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["instanceType"] = {
							["party"] = false,
							["scenario"] = false,
							["pvp"] = false,
							["raid"] = false,
							["arena"] = false,
							["none"] = false,
						},
						["inCombatUnit"] = false,
						["class"] = {
						},
						["role"] = {
							["tank"] = false,
							["damager"] = false,
							["healer"] = false,
						},
						["inVehicle"] = false,
						["isResting"] = false,
						["isNotPet"] = false,
						["threat"] = {
							["good"] = false,
							["offTankBadTransition"] = false,
							["bad"] = false,
							["offTank"] = false,
							["enable"] = false,
							["offTankGoodTransition"] = false,
							["badTransition"] = false,
							["goodTransition"] = false,
						},
						["overHealthThreshold"] = 0,
						["nameplateType"] = {
							["player"] = false,
							["enemyNPC"] = false,
							["enemyPlayer"] = false,
							["enable"] = false,
							["friendlyPlayer"] = false,
							["friendlyNPC"] = false,
						},
						["maxlevel"] = 0,
						["isNotTapDenied"] = false,
						["playerCanAttack"] = false,
						["isTapDenied"] = false,
						["powerUsePlayer"] = false,
						["cooldowns"] = {
							["mustHaveAll"] = false,
							["names"] = {
							},
						},
						["outOfVehicleUnit"] = false,
						["isNotPlayerControlled"] = false,
						["outOfCombatUnit"] = false,
						["buffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["isNotOwnedByPlayer"] = false,
						["inCombat"] = false,
						["outOfVehicle"] = false,
						["isNotPvP"] = false,
						["requireTarget"] = false,
						["playerCanNotAttack"] = false,
						["overPowerThreshold"] = 0,
						["healthThreshold"] = false,
						["isPet"] = false,
						["names"] = {
						},
						["isPlayerControlled"] = false,
						["creatureType"] = {
							["Dragonkin"] = false,
							["Humanoid"] = false,
							["Elemental"] = false,
							["Critter"] = false,
							["enable"] = false,
							["Gas Cloud"] = false,
							["Totem"] = false,
							["Non-combat Pet"] = false,
							["Wild Pet"] = false,
							["Demon"] = false,
							["Not specified"] = false,
							["Undead"] = false,
							["Aberration"] = false,
							["Giant"] = false,
							["Beast"] = false,
							["Mechanical"] = false,
						},
						["keyMod"] = {
							["Alt"] = false,
							["LeftControl"] = false,
							["RightShift"] = false,
							["enable"] = false,
							["RightAlt"] = false,
							["LeftShift"] = false,
							["Modifier"] = false,
							["Shift"] = false,
							["RightControl"] = false,
							["LeftAlt"] = false,
							["Control"] = false,
						},
						["isTarget"] = false,
						["inVehicleUnit"] = false,
						["healthUsePlayer"] = false,
						["talent"] = {
							["tier7enabled"] = false,
							["tier7"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier2enabled"] = false,
							["tier1"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["enabled"] = false,
							["type"] = "normal",
							["tier2"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4enabled"] = false,
							["tier3"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier5enabled"] = false,
							["tier5"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier1enabled"] = false,
							["requireAll"] = false,
							["tier6enabled"] = false,
							["tier3enabled"] = false,
							["tier6"] = {
								["missing"] = false,
								["column"] = 0,
							},
						},
						["raidTarget"] = {
							["circle"] = false,
							["square"] = false,
							["diamond"] = false,
							["moon"] = false,
							["star"] = false,
							["triangle"] = false,
							["skull"] = false,
							["cross"] = false,
						},
						["classification"] = {
							["elite"] = false,
							["normal"] = false,
							["trivial"] = false,
							["minus"] = false,
							["worldboss"] = false,
							["rareelite"] = false,
							["rare"] = false,
						},
						["underPowerThreshold"] = 0,
						["instanceDifficulty"] = {
							["dungeon"] = {
								["normal"] = false,
								["mythic+"] = false,
								["heroic"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
							["raid"] = {
								["normal"] = false,
								["legacy25normal"] = false,
								["heroic"] = false,
								["legacy10normal"] = false,
								["legacy10heroic"] = false,
								["legacy25heroic"] = false,
								["lfr"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
						},
						["minlevel"] = 0,
						["targetMe"] = false,
						["outOfCombat"] = false,
						["isPvP"] = false,
						["powerThreshold"] = false,
						["questBoss"] = false,
						["isOwnedByPlayer"] = false,
						["reactionType"] = {
							["enabled"] = false,
							["reputation"] = false,
							["friendly"] = false,
							["revered"] = false,
							["honored"] = false,
							["hostile"] = false,
							["unfriendly"] = false,
							["exalted"] = false,
							["neutral"] = false,
							["hated"] = false,
						},
						["location"] = {
							["zoneNamesEnabled"] = false,
							["subZoneNamesEnabled"] = false,
							["zoneNames"] = {
							},
							["mapIDs"] = {
							},
							["subZoneNames"] = {
							},
							["instanceIDs"] = {
							},
							["mapIDEnabled"] = false,
							["instanceIDEnabled"] = false,
						},
						["casting"] = {
							["isChanneling"] = false,
							["notSpell"] = false,
							["isCasting"] = false,
							["notChanneling"] = false,
							["spells"] = {
							},
							["notCasting"] = false,
							["interruptible"] = false,
						},
						["underHealthThreshold"] = 0,
						["notTarget"] = false,
					},
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
		["ayro3.2"] = {
			["databars"] = {
				["reputation"] = {
					["font"] = "Naowh",
					["fontOutline"] = "OUTLINE",
				},
				["honor"] = {
					["enable"] = false,
					["font"] = "Naowh",
					["fontOutline"] = "OUTLINE",
				},
				["experience"] = {
					["height"] = 8,
					["textFormat"] = "PERCENT",
					["width"] = 340,
					["fontOutline"] = "OUTLINE",
				},
				["azerite"] = {
					["textFormat"] = "REM",
					["fontOutline"] = "OUTLINE",
					["height"] = 8,
					["font"] = "Homespun",
					["width"] = 280,
				},
			},
			["currentTutorial"] = 5,
			["general"] = {
				["totems"] = {
					["sortDirection"] = "DESCENDING",
					["spacing"] = 1,
					["size"] = 41,
				},
				["interruptAnnounce"] = "PARTY",
				["autoAcceptInvite"] = true,
				["afk"] = false,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationFontOutline"] = "NONE",
					["icons"] = {
						["classHall"] = {
							["position"] = "RIGHT",
						},
					},
					["size"] = 170,
				},
				["decimalLength"] = 2,
				["talkingHeadFrameBackdrop"] = true,
				["bottomPanel"] = false,
				["valuecolor"] = {
					["r"] = 0.5294106006622314,
					["g"] = 0.5333321690559387,
					["b"] = 0.933331310749054,
				},
				["backdropcolor"] = {
					["r"] = 0.101960784313725,
					["g"] = 0.101960784313725,
					["b"] = 0.101960784313725,
				},
				["vehicleSeatIndicatorSize"] = 100,
				["altPowerBar"] = {
					["statusBar"] = "ElvUI Blank",
					["fontSize"] = 18,
					["enable"] = false,
					["height"] = 30,
					["statusBarColor"] = {
						["b"] = 1,
						["g"] = 0.4666666666666667,
						["r"] = 0.9294117647058824,
					},
					["smoothbars"] = true,
					["width"] = 220,
				},
				["taintLog"] = true,
				["objectiveFrameHeight"] = 450,
				["talkingHeadFrameScale"] = 0.7,
				["fontStyle"] = "NONE",
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOP,ElvUIParent,TOP,-199,-280",
				["ElvUF_FocusTargetMover"] = "TOP,ElvUIParent,TOP,-230,-322",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-183,-4",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,213,380",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-165,436",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,-265,-140",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-165,436",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,1010",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-366,395",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-6,-64",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,149",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-470,5",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,246,427",
				["ElvBar_Pet"] = "BOTTOM,ElvUIParent,BOTTOM,0,106",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-281",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,139",
				["AzeriteBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,1",
				["ReputationBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,445,29",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-57,-277",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-252",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,427,303",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-427,-308",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-263,332",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ComboBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,325",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,459",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-21",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,482,23",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,106,715",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,5,5",
				["DTB2_Mainbar_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,8",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,-201,-218",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,390",
				["MicrobarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,5",
				["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,0",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-366,333",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,112,716",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,283",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,246",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,3,-3",
				["BelowMinimapContainerMover"] = "TOP,ElvUIParent,TOP,-155,-377",
				["TimeManagerFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-172",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,361",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-5,5",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-204",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,208",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,174",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,-262,265",
				["ArtifactBarMover"] = "TOP,ElvUIParent,TOP,0,-4",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-366,369",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,213",
				["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,434",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-205",
				["ElvUF_BodyGuardMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,478,251",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,427,306",
				["TooltipMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,5,232",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,5,375",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-387,-240",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,157,-368",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-253",
				["ElvUF_PartyMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,439,798",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-32",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-150",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-5",
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["shortChannels"] = false,
				["keywordSound"] = "Bam",
				["timeStampFormat"] = "%I:%M %p",
				["useAltKey"] = true,
				["tabFontSize"] = 13,
				["panelColorConverted"] = true,
				["panelTabTransparency"] = true,
				["panelHeight"] = 231,
				["panelWidthRight"] = 437,
				["panelBackdrop"] = "LEFT",
				["socialQueueMessages"] = true,
				["whisperSound"] = "d_gun1",
				["separateSizes"] = true,
				["panelHeightRight"] = 60,
				["panelWidth"] = 436,
				["copyChatLines"] = true,
				["fontSize"] = 12,
				["numAllowedCombatRepeat"] = 4,
				["panelTabBackdrop"] = true,
			},
			["tooltip"] = {
				["showElvUIUsers"] = true,
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["font"] = "vixar",
					["height"] = 2,
					["text"] = false,
				},
				["useCustomFactionColors"] = true,
				["factionColors"] = {
					nil, -- [1]
					{
						["g"] = 0.1176470588235294,
						["b"] = 0.07450980392156863,
					}, -- [2]
					{
						["r"] = 0.7490196078431373,
						["g"] = 0,
						["b"] = 0.03529411764705882,
					}, -- [3]
					nil, -- [4]
					nil, -- [5]
					{
						["r"] = 0.2352941176470588,
						["g"] = 0.5333333333333333,
						["b"] = 0.6,
					}, -- [6]
					{
						["r"] = 0.2352941176470588,
						["g"] = 0.2274509803921569,
						["b"] = 0.5372549019607843,
					}, -- [7]
					{
						["r"] = 0.5490196078431373,
						["g"] = 0,
						["b"] = 0.6,
					}, -- [8]
				},
				["headerFontSize"] = 15,
				["textFontSize"] = 13,
				["colorAlpha"] = 0.71,
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["itemCount"] = "BOTH",
				["alwaysShowRealm"] = true,
				["smallTextFontSize"] = 10,
			},
			["unitframe"] = {
				["targetOnMouseDown"] = true,
				["fontSize"] = 14,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.41,
						["g"] = 0.8,
						["b"] = 0.94,
					},
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
					["health_backdrop"] = {
						["r"] = 0.0705882352941177,
						["g"] = 0.0705882352941177,
						["b"] = 0.0705882352941177,
					},
					["healthMultiplier"] = 0.1,
					["classResources"] = {
						["DEATHKNIGHT"] = {
							["g"] = 0.819607843137255,
						},
						["comboPoints"] = {
							{
								["r"] = 1,
								["g"] = 1,
								["b"] = 0,
							}, -- [1]
							{
								["r"] = 1,
								["g"] = 1,
								["b"] = 0,
							}, -- [2]
							{
								["r"] = 1,
								["g"] = 1,
								["b"] = 0,
							}, -- [3]
						},
					},
					["power"] = {
						["RUNIC_POWER"] = {
							["g"] = 0.819607843137255,
						},
						["INSANITY"] = {
							["b"] = 0.690196078431373,
							["g"] = 0.141176470588235,
							["r"] = 0.549019607843137,
						},
						["ENERGY"] = {
							["r"] = 0.650980392156863,
							["g"] = 0.631372549019608,
							["b"] = 0.349019607843137,
						},
					},
					["castColor"] = {
						["r"] = 0,
						["g"] = 0.63921568627451,
						["b"] = 1,
					},
					["healPrediction"] = {
						["absorbs"] = {
							["b"] = 1,
							["g"] = 0.63921568627451,
							["r"] = 0,
						},
					},
					["frameGlow"] = {
						["mainGlow"] = {
							["enable"] = true,
							["class"] = true,
						},
						["mouseoverGlow"] = {
							["enable"] = false,
						},
					},
					["castNoInterrupt"] = {
						["r"] = 0.780392156862745,
						["g"] = 0.250980392156863,
						["b"] = 0.250980392156863,
					},
					["tapped"] = {
						["r"] = 0.549019607843137,
						["g"] = 0.568627450980392,
						["b"] = 0.611764705882353,
					},
					["health"] = {
						["r"] = 0.827450980392157,
						["g"] = 0.925490196078432,
						["b"] = 1,
					},
					["health_backdrop_dead"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["useDeadBackdrop"] = true,
					["auraBarByType"] = false,
					["classbackdrop"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "ElvUI Blank",
				["font"] = "PT Sans Narrow",
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["fontSize"] = 14,
					},
					["threshold"] = -1,
				},
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["debuffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["enable"] = true,
						["name"] = {
							["attachTextTo"] = "Frame",
							["text_format"] = "[name:medium]",
						},
						["height"] = 20,
						["width"] = 100,
					},
					["pet"] = {
						["debuffs"] = {
							["anchorPoint"] = "LEFT",
							["sizeOverride"] = 36,
							["yOffset"] = 10,
							["xOffset"] = -1,
							["priority"] = "Blacklist,Personal",
							["enable"] = true,
							["perrow"] = 1,
						},
						["threatStyle"] = "NONE",
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["width"] = 99,
						["infoPanel"] = {
							["height"] = 14,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 20,
						["buffs"] = {
							["sizeOverride"] = 46,
							["priority"] = "CastByNPC",
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 24,
							["iconSize"] = 32,
							["width"] = 340,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name:medium]",
							["yOffset"] = 14,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
							["text_format"] = "[name:medium]",
							["yOffset"] = 15,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["height"] = 20,
						["width"] = 100,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["raidicon"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 36,
							["xOffset"] = 171,
							["priority"] = "Blacklist,Personal,nonPersonal",
							["yOffset"] = -36,
						},
						["disableTargetGlow"] = true,
						["rdebuffs"] = {
							["font"] = "vixar",
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 28,
							["stack"] = {
								["xOffset"] = 4,
								["yOffset"] = -5,
								["position"] = "RIGHT",
							},
							["yOffset"] = 12,
							["size"] = 18,
						},
						["growthDirection"] = "DOWN_LEFT",
						["groupSpacing"] = 10,
						["buffIndicator"] = {
							["size"] = 10,
						},
						["roleIcon"] = {
							["xOffset"] = 1,
							["yOffset"] = -1,
						},
						["groupBy"] = "ROLE",
						["readycheckIcon"] = {
							["yOffset"] = 4,
							["size"] = 14,
						},
						["power"] = {
							["attachTextTo"] = "Frame",
							["powerPrediction"] = true,
							["position"] = "LEFT",
							["height"] = 8,
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = -44,
						},
						["name"] = {
							["text_format"] = "[name:short]",
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 170,
						["infoPanel"] = {
							["height"] = 12,
						},
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 24,
							["enable"] = true,
							["yOffset"] = -15,
							["xOffset"] = -2,
							["perrow"] = 2,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "BOTTOM",
							["text_format"] = "",
							["yOffset"] = 4,
						},
						["height"] = 78,
						["orientation"] = "MIDDLE",
						["verticalSpacing"] = 2,
						["petsGroup"] = {
							["xOffset"] = 174,
							["yOffset"] = -77,
							["enable"] = true,
							["width"] = 73,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 4,
							["yOffset"] = 2,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["sizeOverride"] = 35,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 4,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 16,
							["strataAndLevel"] = {
								["frameStrata"] = "MEDIUM",
							},
							["detachedWidth"] = 286,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 17,
							["texture"] = "RESTING",
							["yOffset"] = -1,
							["size"] = 31,
						},
						["threatStyle"] = "NONE",
						["pvpIcon"] = {
							["anchorPoint"] = "LEFT",
							["scale"] = 0.93,
							["xOffset"] = -30,
							["yOffset"] = -1,
						},
						["customTexts"] = {
							["Cust HP"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[perhp]% || [health:current]",
								["yOffset"] = -28,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 18,
							},
						},
						["width"] = 260,
						["CombatIcon"] = {
							["size"] = 24,
						},
						["castbar"] = {
							["iconXOffset"] = 1,
							["iconSize"] = 30,
							["height"] = 23,
							["iconAttached"] = false,
							["iconAttachedTo"] = "Castbar",
							["width"] = 182,
						},
						["name"] = {
							["xOffset"] = 2,
							["position"] = "TOPLEFT",
							["text_format"] = " ",
							["yOffset"] = 16,
						},
						["power"] = {
							["detachFromFrame"] = true,
							["powerPrediction"] = true,
							["text_format"] = "[power:percent]",
							["width"] = "spaced",
							["strataAndLevel"] = {
								["frameLevel"] = 37,
							},
							["height"] = 21,
							["hideonnpc"] = true,
							["attachTextTo"] = "Power",
							["detachedWidth"] = 244,
						},
						["height"] = 33,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = -18,
						},
						["raidicon"] = {
							["attachTo"] = "CENTER",
							["yOffset"] = 2,
						},
					},
					["focus"] = {
						["power"] = {
							["enable"] = false,
						},
						["debuffs"] = {
							["sizeOverride"] = 38,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["latency"] = false,
						},
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 26,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["detachedWidth"] = 90,
							["height"] = 6,
							["text_format"] = " ",
							["position"] = "BOTTOMLEFT",
						},
						["customTexts"] = {
							["Cust HP"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[health:current] || [perhp]%",
								["yOffset"] = -28,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 16,
							},
							["Cust Power"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[powercolor][power:current]",
								["yOffset"] = -47,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 50,
								["size"] = 16,
							},
							["Cust Name"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 24,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 16,
							},
						},
						["width"] = 260,
						["aurabar"] = {
							["enable"] = false,
						},
						["threatStyle"] = "NONE",
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 2,
							["text_format"] = " ",
							["yOffset"] = -18,
						},
						["castbar"] = {
							["iconXOffset"] = 1,
							["iconSize"] = 24,
							["height"] = 24,
							["iconAttached"] = false,
							["iconAttachedTo"] = "Castbar",
							["width"] = 238,
						},
						["height"] = 33,
						["buffs"] = {
							["sizeOverride"] = 25,
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = " ",
							["yOffset"] = 16,
						},
						["raidicon"] = {
							["attachTo"] = "RIGHT",
							["xOffset"] = -8,
							["yOffset"] = 2,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 36,
							["xOffset"] = 1,
							["yOffset"] = 0,
							["maxDuration"] = 0,
							["perrow"] = 2,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
							["width"] = 35,
						},
						["castbar"] = {
							["height"] = 12,
							["width"] = 180,
						},
						["growthDirection"] = "UP",
						["disableMouseoverGlow"] = true,
						["width"] = 180,
						["infoPanel"] = {
							["height"] = 16,
						},
						["health"] = {
							["xOffset"] = -2,
							["frequentUpdates"] = true,
							["text_format"] = "[health:current] || [perhp]%",
						},
						["name"] = {
							["position"] = "TOPRIGHT",
							["text_format"] = "[name:veryshort]",
							["yOffset"] = 16,
						},
						["spacing"] = 17,
						["height"] = 36,
						["buffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 20,
							["xOffset"] = 2,
							["maxDuration"] = 0,
							["yOffset"] = -10,
						},
						["disableTargetGlow"] = true,
						["power"] = {
							["xOffset"] = 2,
							["text_format"] = "",
							["height"] = 4,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["xOffset"] = 1,
							["sizeOverride"] = 28,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = 0,
						},
						["disableTargetGlow"] = true,
						["castbar"] = {
							["height"] = 16,
							["strataAndLevel"] = {
								["frameLevel"] = 102,
								["useCustomLevel"] = true,
							},
							["timeToHold"] = 1.5,
							["width"] = 200,
						},
						["customTexts"] = {
							["Custom Name"] = {
								["attachTextTo"] = "Frame",
								["enable"] = true,
								["text_format"] = "[name:medium]",
								["yOffset"] = 20,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 20,
							},
							["Custom Health"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[health:current] || [perhp]%",
								["yOffset"] = -10,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -2,
								["size"] = 14,
							},
							["Custom Power"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[powercolor][power:current]",
								["yOffset"] = -10,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 14,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 200,
						["health"] = {
							["xOffset"] = -2,
							["frequentUpdates"] = true,
							["text_format"] = " ",
							["position"] = "RIGHT",
						},
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = " ",
							["yOffset"] = 16,
						},
						["spacing"] = 24,
						["height"] = 44,
						["buffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 24,
							["xOffset"] = -4,
							["priority"] = "Boss,Blacklist",
							["yOffset"] = -14,
						},
						["portrait"] = {
							["overlay"] = true,
							["fullOverlay"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Frame",
							["autoHide"] = true,
							["height"] = 5,
							["position"] = "LEFT",
							["xOffset"] = 2,
							["reverseFill"] = true,
							["text_format"] = " ",
							["yOffset"] = 16,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["fontOutline"] = "OUTLINE",
				["fontSize"] = 14,
				["panels"] = {
					["RightMiniPanel"] = "Time",
					["DTB2_Mainbar"] = {
						["right"] = "ElvUI Config",
						["middle"] = "Time",
						["left"] = "System",
					},
					["RightChatDataPanel"] = {
						["middle"] = "Durability",
						["right"] = "Currencies",
					},
					["LeftChatDataPanel"] = {
						["left"] = "Gold",
						["right"] = "Talent/Loot Specialization",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["point"] = "TOPLEFT",
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 35,
				},
				["bar6"] = {
					["buttonspacing"] = 1,
					["enabled"] = true,
					["buttonsize"] = 26,
					["buttons"] = 5,
				},
				["bar2"] = {
					["backdrop"] = true,
					["buttons"] = 8,
				},
				["bar1"] = {
					["point"] = "TOPLEFT",
					["buttonspacing"] = 1,
					["buttonsize"] = 35,
					["backdropSpacing"] = 1,
					["visibility"] = "[vehicleui] show; [overridebar] show; [possessbar] show; [unithasvehicleui] show",
				},
				["bar5"] = {
					["buttonsize"] = 35,
					["buttons"] = 12,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 12,
					["backdropSpacing"] = 4,
					["visibility"] = "",
				},
				["fontSize"] = 12,
				["barPet"] = {
					["backdrop"] = false,
					["buttonsPerRow"] = 10,
				},
				["font"] = "PT Sans Narrow",
				["microbar"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["useDrawSwipeOnCharges"] = true,
				["globalFadeAlpha"] = 1,
				["cooldown"] = {
					["threshold"] = -1,
					["fonts"] = {
						["enable"] = true,
						["font"] = "GothamNarrowUltra",
					},
				},
				["bar4"] = {
					["buttonsPerRow"] = 12,
					["backdrop"] = false,
					["buttonsize"] = 34,
				},
			},
			["nameplates"] = {
				["lowHealthThreshold"] = 0,
				["statusbar"] = "ElvUI Blank",
				["filters"] = {
					["Boss"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Mark of the Crane"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Spawn of G'huun"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Enemy NPCs"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["ElvUI_NonTarget"] = {
						["triggers"] = {
							["enable"] = false,
						},
					},
				},
				["visibility"] = {
					["enemy"] = {
						["totems"] = true,
					},
				},
				["threat"] = {
					["indicator"] = true,
				},
				["cooldown"] = {
					["checkSeconds"] = true,
				},
				["units"] = {
					["TARGET"] = {
						["glowStyle"] = "style7",
					},
					["PLAYER"] = {
						["name"] = {
							["enable"] = true,
						},
						["level"] = {
							["enable"] = true,
						},
					},
				},
			},
			["bags"] = {
				["countFontSize"] = 14,
				["countFont"] = "PT Sans Narrow",
				["itemLevelFont"] = "PT Sans Narrow",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["bagSize"] = 42,
				["itemLevelFontSize"] = 12,
				["itemLevelThreshold"] = 385,
				["bankSize"] = 35,
				["bankWidth"] = 758,
				["upgradeIcon"] = false,
				["itemLevelFontOutline"] = "OUTLINE",
				["countFontOutline"] = "OUTLINE",
				["moneyFormat"] = "BLIZZARD",
				["cooldown"] = {
					["fonts"] = {
						["enable"] = true,
						["font"] = "GothamNarrowUltra",
					},
				},
				["bagWidth"] = 499,
			},
			["cooldown"] = {
				["threshold"] = -1,
				["fonts"] = {
					["enable"] = true,
				},
				["checkSeconds"] = true,
			},
			["auras"] = {
				["font"] = "PT Sans Narrow",
				["debuffs"] = {
					["horizontalSpacing"] = 3,
					["countFontSize"] = 12,
					["durationFontSize"] = 14,
				},
				["fontOutline"] = "OUTLINE",
				["timeYOffset"] = 8,
				["countYOffset"] = 25,
				["cooldown"] = {
					["threshold"] = -1,
					["checkSeconds"] = true,
				},
				["buffs"] = {
					["horizontalSpacing"] = 3,
					["durationFontSize"] = 12,
				},
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
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 14,
				},
				["buffs"] = {
					["countFontSize"] = 14,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,340",
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
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-409",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,361",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-204,4",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["SLE_GarrisonToolMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,43,-453",
				["DurabilityFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-236,-320",
				["ElvUI_RMBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
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
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,366,560",
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
			["unitframe"] = {
				["fontSize"] = 14,
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["tank"] = {
						["enable"] = false,
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
						["CombatIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["size"] = 32,
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
						["portrait"] = {
							["overlay"] = true,
							["xOffset"] = -0.49,
							["overlayAlpha"] = 0.8,
							["paused"] = true,
							["fullOverlay"] = true,
							["rotation"] = 360,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["width"] = 225,
						["health"] = {
							["position"] = "RIGHT",
							["xOffset"] = 0,
						},
						["orientation"] = "RIGHT",
						["power"] = {
							["text_format"] = "[powercolor][power:current-max-percent]",
							["yOffset"] = -51,
							["position"] = "CENTER",
							["xOffset"] = 0,
						},
					},
					["raid40"] = {
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
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
						["castbar"] = {
							["iconPosition"] = "TOPRIGHT",
							["iconAttached"] = false,
							["width"] = 225,
						},
						["width"] = 225,
						["portrait"] = {
							["overlay"] = true,
							["xOffset"] = 0.6799999999999999,
							["overlayAlpha"] = 0.8,
							["paused"] = true,
							["fullOverlay"] = true,
							["rotation"] = 294,
							["camDistanceScale"] = 4,
							["enable"] = true,
						},
						["health"] = {
							["position"] = "LEFT",
							["xOffset"] = 0,
						},
						["power"] = {
							["yOffset"] = -22,
							["xOffset"] = 0,
						},
						["height"] = 70,
						["buffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["numrows"] = 3,
						},
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
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPLEFT",
						},
						["name"] = {
							["position"] = "TOP",
						},
						["height"] = 70,
						["verticalSpacing"] = 6,
						["horizontalSpacing"] = 4,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["power"] = {
							["text_format"] = "",
						},
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
						["buffs"] = {
							["sizeOverride"] = 22,
							["enable"] = true,
						},
					},
					["assist"] = {
						["enable"] = false,
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
					["health"] = {
						["b"] = 1,
						["g"] = 0.0627450980392157,
						["r"] = 0.674509803921569,
					},
					["transparentHealth"] = true,
					["transparentAurabars"] = true,
				},
				["smartRaidFilter"] = false,
				["fontOutline"] = "OUTLINE",
			},
			["datatexts"] = {
				["fontSize"] = 14,
				["panels"] = {
					["MinimapPanel"] = {
						"Time", -- [1]
						"", -- [2]
						["panelTransparency"] = true,
						["numPoints"] = 1,
						["backdrop"] = false,
						["border"] = false,
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
				["fontSize"] = 13,
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
				["bar6"] = {
					["enabled"] = true,
					["showGrid"] = false,
					["buttonsPerRow"] = 6,
				},
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
				["plateSize"] = {
					["personalWidth"] = 197,
					["enemyHeight"] = 52,
					["friendlyHeight"] = 37,
					["personalHeight"] = 51,
				},
				["threat"] = {
					["indicator"] = true,
				},
				["units"] = {
					["PLAYER"] = {
						["name"] = {
							["fontSize"] = 24,
							["enable"] = true,
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["enable"] = true,
							["width"] = 123,
						},
						["glowStyle"] = "style8",
					},
					["ENEMY_NPC"] = {
						["eliteIcon"] = {
							["enable"] = true,
							["xOffset"] = -19,
						},
						["name"] = {
							["fontSize"] = 14,
						},
						["power"] = {
							["enable"] = true,
							["text"] = {
								["enable"] = true,
							},
							["height"] = 9,
						},
						["health"] = {
							["height"] = 29,
							["text"] = {
								["fontSize"] = 12,
								["yOffset"] = 3,
								["font"] = "Intro Black",
								["format"] = "[health:current-max-percent-nostatus]",
							},
						},
					},
				},
				["font"] = "Friz Quadrata TT",
				["statusbar"] = "Melli",
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
					["buttonsize"] = 35,
					["backdrop"] = false,
					["point"] = "BOTTOMLEFT",
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
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["style"] = "2D",
						},
						["name"] = {
							["position"] = "LEFT",
							["yOffset"] = -8,
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
		["shynga 1.1.1"] = {
			["databars"] = {
				["reputation"] = {
					["orientation"] = "VERTICAL",
					["font"] = "Expressway",
					["height"] = 171,
					["width"] = 10,
				},
				["azerite"] = {
					["height"] = 235,
					["orientation"] = "VERTICAL",
					["width"] = 7,
				},
				["experience"] = {
					["height"] = 52,
					["font"] = "Expressway",
					["textSize"] = 14,
					["width"] = 809,
				},
				["honor"] = {
					["enable"] = false,
				},
			},
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["fontSize"] = 11,
				["interruptAnnounce"] = "EMOTE",
				["autoRepair"] = "PLAYER",
				["durabilityScale"] = 0.5,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.75,
					["r"] = 0.0588235294117647,
					["g"] = 0.0588235294117647,
					["b"] = 0.0588235294117647,
				},
				["valuecolor"] = {
					["r"] = 0.9999977946281433,
					["g"] = 0.4862734377384186,
					["b"] = 0.03921560198068619,
				},
				["enhancedPvpMessages"] = false,
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
					["itemLevelFontSize"] = 16,
				},
				["backdropcolor"] = {
					["r"] = 0.10196078431373,
					["g"] = 0.10196078431373,
					["b"] = 0.10196078431373,
				},
				["topPanel"] = true,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["objectiveFrameAutoHide"] = false,
				["font"] = "Expressway",
				["altPowerBar"] = {
					["statusBar"] = "Solid",
					["statusBarColor"] = {
						["g"] = 0.1294117647058823,
						["r"] = 0.05882352941176471,
					},
					["font"] = "2002",
				},
				["minimap"] = {
					["locationFont"] = "Expressway",
					["locationText"] = "SHOW",
					["locationFontSize"] = 14,
					["resetZoom"] = {
						["time"] = 15,
					},
					["size"] = 191,
				},
				["objectiveFrameHeight"] = 600,
				["smoothingAmount"] = 0.75,
				["bonusObjectivePosition"] = "AUTO",
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOP,ElvUIParent,TOP,148,-477",
				["ElvUF_FocusTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-530,470",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-196,-24",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-161",
				["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,242,348",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-77,459",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,0,-160",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-104,459",
				["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,196",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,153,-166",
				["DurabilityFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,139,460",
				["VehicleSeatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,291",
				["SLEGhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-160",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,-33,-354",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-78",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-22",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-301",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-416,1",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-59,-278",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,173",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,489,303",
				["DTPanelLuckyone_ActionBars_DTMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,1",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-303,-274",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,173",
				["ElvAB_7"] = "BOTTOM,ElvUIParent,BOTTOM,0,168",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1,1",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,1048",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-57",
				["ThreatBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-438,1",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,120,-318",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,249",
				["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,0,-116",
				["QuestWatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-100,-213",
				["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,157",
				["TorghastBuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-51",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,148,-439",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,369",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-252,35",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,380",
				["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,175",
				["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-78",
				["MasterExperienceMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,343,-299",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-254,359",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,102",
				["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,442,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,256,358",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-195,-451",
				["QuestTimerFrameMover"] = "TOP,ElvUIParent,TOP,0,-1",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,163,-396",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,279",
				["ElvAB_10"] = "BOTTOM,ElvUIParent,BOTTOM,0,255",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,325",
				["ElvAB_9"] = "BOTTOM,ElvUIParent,BOTTOM,0,226",
				["BelowMinimapContainerMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-156,238",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,256,358",
				["MirrorTimer2Mover"] = "TOP,ElvUIParent,TOP,0,-97",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,173",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,221,174",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,223",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,291",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,-221,264",
				["ElvAB_8"] = "BOTTOM,ElvUIParent,BOTTOM,0,197",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-57",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,395",
				["ArtifactBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,16",
				["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,421",
				["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-187",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-427,1",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,-277,333",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,135",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,258",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-303,-279",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,479,303",
				["RaidUtility_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,405,-1",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,256,-258",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,339,-228",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-196,-153",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-24",
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["tabFont"] = "Expressway",
				["historySize"] = 150,
				["tabFontSize"] = 11,
				["fade"] = false,
				["editBoxPosition"] = "ABOVE_CHAT_INSIDE",
				["fontOutline"] = "OUTLINE",
				["showHistory"] = {
					["EMOTE"] = false,
					["YELL"] = false,
					["OFFICER"] = false,
					["SAY"] = false,
				},
				["panelWidthRight"] = 414,
				["separateSizes"] = true,
				["editboxHistorySize"] = 50,
				["socialQueueMessages"] = true,
				["maxLines"] = 5000,
				["numScrollMessages"] = 2,
				["panelColor"] = {
					["a"] = 0.7531320899725,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["throttleInterval"] = 0,
				["numAllowedCombatRepeat"] = 10,
				["tabSelector"] = "NONE",
				["panelHeight"] = 239,
				["copyChatLines"] = true,
				["font"] = "2002",
				["panelHeightRight"] = 171,
				["hideChatToggles"] = true,
				["fadeTabsNoBackdrop"] = false,
				["keywords"] = "%MYNAME%",
				["tabSelectedTextEnabled"] = false,
				["panelWidth"] = 437,
			},
			["tooltip"] = {
				["showElvUIUsers"] = true,
				["healthBar"] = {
					["statusPosition"] = "TOP",
					["font"] = "Expressway",
					["height"] = 4,
					["fontSize"] = 11,
				},
				["alwaysShowRealm"] = true,
				["headerFontSize"] = 11,
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["fontOutline"] = "OUTLINE",
				["cursorAnchorType"] = "ANCHOR_CURSOR_LEFT",
				["itemCount"] = "NONE",
				["smallTextFontSize"] = 11,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.956860661506653,
						["g"] = 0.549018383026123,
						["b"] = 0.729410171508789,
					},
					["colorhealthbyvalue"] = false,
					["selection"] = {
						[0] = {
							["g"] = 0.17254901960784,
							["b"] = 0.17254901960784,
						},
					},
					["castClassColor"] = true,
					["useDeadBackdrop"] = true,
					["healthMultiplier"] = 0.75,
					["classResources"] = {
						["comboPoints"] = {
							{
								["r"] = 1,
								["g"] = 0.96078431372549,
								["b"] = 0.411764705882353,
							}, -- [1]
							{
								["r"] = 1,
								["g"] = 0.96078431372549,
								["b"] = 0.41176470588235,
							}, -- [2]
							{
								["r"] = 1,
								["g"] = 0,
								["b"] = 0,
							}, -- [3]
						},
					},
					["health_backdrop"] = {
						["r"] = 0.10196078431373,
						["g"] = 0.10196078431373,
						["b"] = 0.10196078431373,
					},
					["health_backdrop_dead"] = {
						["g"] = 0.0117647058823529,
						["b"] = 0.0117647058823529,
					},
					["customcastbarbackdrop"] = true,
					["power"] = {
						["MANA"] = {
							["r"] = 0,
							["g"] = 0.501960784313726,
							["b"] = 1,
						},
						["LUNAR_POWER"] = {
							["r"] = 0.301960784313726,
							["g"] = 0.52156862745098,
							["b"] = 0.901960784313726,
						},
						["RAGE"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["MAELSTROM"] = {
							["g"] = 0.50196078431373,
						},
						["FURY"] = {
							["r"] = 0.78823529411765,
							["g"] = 0.25490196078431,
							["b"] = 0.9921568627451,
						},
						["PAIN"] = {
							["r"] = 1,
							["g"] = 0.61176470588235,
							["b"] = 0,
						},
						["FOCUS"] = {
							["r"] = 1,
							["g"] = 0.50196078431373,
							["b"] = 0.25098039215686,
						},
						["ENERGY"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 0,
						},
					},
					["castColor"] = {
						["r"] = 0.023529411764706,
						["g"] = 1,
						["b"] = 0,
					},
					["castbar_backdrop"] = {
						["r"] = 0.058823529411765,
						["g"] = 0.058823529411765,
						["b"] = 0.058823529411765,
					},
					["frameGlow"] = {
						["mouseoverGlow"] = {
							["texture"] = "Solid",
						},
					},
					["disconnected"] = {
						["r"] = 0.83921568627451,
						["g"] = 0.749019607843137,
						["b"] = 0.650980392156863,
					},
					["castNoInterrupt"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0.007843137254902,
					},
					["tapped"] = {
						["b"] = 0.611764705882353,
						["g"] = 0.568627450980392,
						["r"] = 0.549019607843137,
					},
					["health"] = {
						["r"] = 0.058823529411765,
						["g"] = 0.058823529411765,
						["b"] = 0.058823529411765,
					},
					["transparentHealth"] = true,
					["power_backdrop"] = {
						["r"] = 0.50196078431373,
						["g"] = 0.50196078431373,
						["b"] = 0.50196078431373,
					},
					["classbackdrop"] = true,
					["transparentAurabars"] = true,
					["transparentPower"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Expressway",
				["statusbar"] = "Minimalist",
				["cooldown"] = {
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["override"] = false,
				},
				["units"] = {
					["tank"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
						},
						["threatStyle"] = "NONE",
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["height"] = 24,
						["verticalSpacing"] = 4,
					},
					["targettargettarget"] = {
						["debuffs"] = {
							["countFont"] = "Expressway",
						},
						["disableMouseoverGlow"] = true,
						["buffs"] = {
							["countFont"] = "Expressway",
						},
					},
					["pet"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["priority"] = "Blacklist,Personal,nonPersonal",
							["countFont"] = "Expressway",
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["castbar"] = {
							["iconXOffset"] = 0,
							["enable"] = false,
							["iconAttachedTo"] = "Castbar",
							["iconSize"] = 10,
							["height"] = 10,
							["width"] = 80,
						},
						["enable"] = false,
						["threatStyle"] = "NONE",
						["disableMouseoverGlow"] = true,
						["width"] = 80,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
							["transparent"] = true,
						},
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor]Pet[ >happiness:full]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "CENTER",
						},
						["buffIndicator"] = {
							["enable"] = false,
						},
						["height"] = 30,
						["buffs"] = {
							["priority"] = "Blacklist,Personal,PlayerBuffs,Dispellable",
							["countFont"] = "Expressway",
						},
						["name"] = {
							["text_format"] = "",
						},
						["power"] = {
							["height"] = 6,
							["powerPrediction"] = true,
						},
					},
					["pettarget"] = {
						["disableMouseoverGlow"] = true,
					},
					["assist"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
						},
						["threatStyle"] = "NONE",
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["height"] = 24,
						["verticalSpacing"] = 4,
					},
					["player"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["countFont"] = "Expressway",
							["yOffset"] = 1,
							["desaturate"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["fullOverlay"] = true,
						},
						["pvp"] = {
							["text_format"] = "",
							["position"] = "CENTER",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["height"] = 13,
							["detachedWidth"] = 316,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "FRAME",
							["maxBars"] = 15,
							["height"] = 17,
						},
						["RestIcon"] = {
							["enable"] = false,
							["texture"] = "RESTING",
						},
						["power"] = {
							["powerPrediction"] = true,
							["position"] = "LEFT",
							["height"] = 8,
							["xOffset"] = 2,
							["text_format"] = "",
							["detachedWidth"] = 316,
						},
						["threatStyle"] = "NONE",
						["pvpIcon"] = {
							["enable"] = true,
							["xOffset"] = -100,
							["scale"] = 0.86,
						},
						["customTexts"] = {
							["Luckyone_Power"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[powercolor][perpp<%]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_Level"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][level]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:veryshort]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 12,
							},
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = " [perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["healPrediction"] = {
							["enable"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 190,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
							["transparent"] = true,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
							["yOffset"] = 20,
						},
						["health"] = {
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
						},
						["castbar"] = {
							["height"] = 20,
							["width"] = 301,
							["timeToHold"] = 2,
							["latency"] = false,
						},
						["height"] = 30,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["priority"] = "Blacklist,Personal,nonPersonal",
							["countFont"] = "Expressway",
							["yOffset"] = 1,
						},
						["CombatIcon"] = {
							["enable"] = false,
						},
						["raidicon"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["maxDuration"] = 0,
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
							["desaturate"] = false,
						},
						["threatStyle"] = "NONE",
						["rdebuffs"] = {
							["font"] = "Expressway",
							["fontOutline"] = "OUTLINE",
							["enable"] = true,
							["stack"] = {
								["position"] = "CENTER",
								["yOffset"] = 0,
							},
							["size"] = 18,
						},
						["summonIcon"] = {
							["attachTo"] = "LEFT",
						},
						["disableMouseoverGlow"] = true,
						["width"] = 82,
						["phaseIndicator"] = {
							["anchorPoint"] = "RIGHT",
							["scale"] = 0.5,
						},
						["verticalSpacing"] = 1,
						["health"] = {
							["text_format"] = "",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:veryshort]",
						},
						["height"] = 26,
						["buffIndicator"] = {
							["enable"] = false,
						},
						["visibility"] = "[@raid31,noexists] hide;show",
						["disableTargetGlow"] = true,
					},
					["raidpet"] = {
						["threatStyle"] = "NONE",
						["health"] = {
							["text_format"] = "[perhp<%]",
						},
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["countFont"] = "Expressway",
							["yOffset"] = 1,
							["maxDuration"] = 0,
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["attachTo"] = "FRAME",
							["desaturate"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["phaseIndicator"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = 5,
							["scale"] = 0.5,
						},
						["CombatIcon"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
							["attachTo"] = "FRAME",
							["maxBars"] = 15,
							["height"] = 17,
						},
						["middleClickFocus"] = false,
						["threatStyle"] = "NONE",
						["castbar"] = {
							["timeToHold"] = 2,
							["width"] = 190,
						},
						["customTexts"] = {
							["Luckyone_Power"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[powercolor][perpp<%]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_Level"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][level][classificationcolor][ >classification]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:last]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 2,
								["size"] = 12,
							},
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = " [perhp<%]",
								["yOffset"] = 0,
								["font"] = "2002",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 190,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
							["transparent"] = true,
						},
						["health"] = {
							["xOffset"] = 0,
							["text_format"] = "",
							["position"] = "CENTER",
						},
						["power"] = {
							["powerPrediction"] = true,
							["position"] = "RIGHT",
							["detachedWidth"] = 189,
							["xOffset"] = -2,
							["text_format"] = "",
							["height"] = 8,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 23,
							["yOffset"] = 1,
							["priority"] = "Blacklist,Dispellable,RaidBuffsElvUI",
							["countFont"] = "Expressway",
							["perrow"] = 2,
						},
						["name"] = {
							["position"] = "LEFT",
							["text_format"] = "",
							["yOffset"] = 20,
						},
						["orientation"] = "LEFT",
					},
					["raid"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["maxDuration"] = 0,
							["priority"] = "Blacklist,RaidDebuffs,Dispellable",
							["countFont"] = "Expressway",
							["desaturate"] = false,
						},
						["disableTargetGlow"] = true,
						["rdebuffs"] = {
							["fontOutline"] = "OUTLINE",
							["font"] = "Expressway",
							["stack"] = {
								["position"] = "CENTER",
								["yOffset"] = 0,
							},
							["size"] = 18,
						},
						["numGroups"] = 8,
						["phaseIndicator"] = {
							["anchorPoint"] = "RIGHT",
							["scale"] = 0.5,
						},
						["buffIndicator"] = {
							["enable"] = false,
						},
						["roleIcon"] = {
							["enable"] = false,
						},
						["threatStyle"] = "NONE",
						["power"] = {
							["enable"] = false,
						},
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:short]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
						},
						["summonIcon"] = {
							["attachTo"] = "LEFT",
						},
						["disableMouseoverGlow"] = true,
						["width"] = 99,
						["name"] = {
							["text_format"] = "[namecolor][name:veryshort]",
						},
						["height"] = 40,
						["verticalSpacing"] = 1,
						["visibility"] = "[@raid6,noexists][@raid31,exists] hide;show",
						["health"] = {
							["text_format"] = "",
						},
					},
					["party"] = {
						["debuffs"] = {
							["xOffset"] = 1,
							["sizeOverride"] = 37,
							["yOffset"] = 20,
							["perrow"] = 7,
						},
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[namecolor][name:short]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["height"] = 75,
						["buffs"] = {
							["countFontSize"] = 11,
							["sizeOverride"] = 31,
							["enable"] = true,
							["yOffset"] = -19,
							["anchorPoint"] = "RIGHT",
							["perrow"] = 3,
						},
						["buffIndicator"] = {
							["size"] = 23,
						},
						["width"] = 220,
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["countFont"] = "Expressway",
							["maxDuration"] = 0,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["power"] = {
							["height"] = 6,
							["powerPrediction"] = true,
						},
						["customTexts"] = {
							["Luckyone_Name"] = {
								["attachTextTo"] = "InfoPanel",
								["enable"] = true,
								["text_format"] = "[namecolor][name:last]",
								["yOffset"] = 1,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 12,
							},
							["Luckyone_HP"] = {
								["attachTextTo"] = "Health",
								["enable"] = true,
								["text_format"] = "[perhp<%]",
								["yOffset"] = 0,
								["font"] = "Expressway",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 14,
							},
						},
						["disableMouseoverGlow"] = true,
						["width"] = 80,
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
							["transparent"] = true,
						},
						["health"] = {
							["xOffset"] = 0,
							["position"] = "CENTER",
						},
						["height"] = 30,
						["buffs"] = {
							["countFont"] = "Expressway",
						},
						["name"] = {
							["text_format"] = "",
						},
					},
				},
			},
			["datatexts"] = {
				["font"] = "Expressway",
				["panels"] = {
					["Luckyone_ActionBars_DT"] = {
						"System", -- [1]
						"Combat Time", -- [2]
						"Durability", -- [3]
						["enable"] = true,
					},
					["MinimapPanel"] = {
						"Time", -- [1]
						["numPoints"] = 1,
						["panelTransparency"] = true,
					},
					["RightChatDataPanel"] = {
						["enable"] = false,
						["panelTransparency"] = true,
					},
					["LeftChatDataPanel"] = {
						["enable"] = false,
						["panelTransparency"] = true,
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["alpha"] = 0.75,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttons"] = 5,
					["buttonsPerRow"] = 6,
					["alpha"] = 0.75,
					["buttonsize"] = 27,
				},
				["bar10"] = {
					["alpha"] = 0.75,
				},
				["bar8"] = {
					["alpha"] = 0.75,
				},
				["hotkeyTextPosition"] = "TOPLEFT",
				["fontOutline"] = "OUTLINE",
				["bar9"] = {
					["alpha"] = 0.75,
				},
				["countTextPosition"] = "BOTTOM",
				["microbar"] = {
					["enabled"] = true,
					["buttonSpacing"] = 1,
					["mouseover"] = true,
					["buttonSize"] = 18,
				},
				["bar2"] = {
					["enabled"] = true,
					["alpha"] = 0.75,
				},
				["bar1"] = {
					["alpha"] = 0.75,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["alpha"] = 0.75,
					["buttons"] = 12,
				},
				["countTextYOffset"] = 1,
				["font"] = "Expressway",
				["bar7"] = {
					["alpha"] = 0.75,
				},
				["transparent"] = true,
				["barPet"] = {
					["backdrop"] = false,
					["buttonsPerRow"] = 10,
					["point"] = "TOPLEFT",
					["alpha"] = 0.75,
				},
				["stanceBar"] = {
					["buttonsize"] = 27,
				},
				["cooldown"] = {
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["override"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
					["point"] = "BOTTOMLEFT",
					["buttonsPerRow"] = 6,
					["backdrop"] = false,
					["alpha"] = 0.75,
				},
			},
			["nameplates"] = {
				["lowHealthThreshold"] = 0.5,
				["statusbar"] = "Details Flat",
				["colors"] = {
					["castColor"] = {
						["g"] = 1,
						["r"] = 0.023529411764706,
					},
					["castNoInterruptColor"] = {
						["r"] = 1,
						["g"] = 0,
						["b"] = 0.007843137254902,
					},
					["glowColor"] = {
						["r"] = 0,
						["b"] = 0.054901960784314,
					},
					["castbarDesaturate"] = false,
				},
				["filters"] = {
					["Luckyone_SOA"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_TOP"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_NW"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_SD"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_Affixes"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_MISTS"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_PF"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_HOA"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_DOS"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
					["Luckyone_Raid"] = {
						["triggers"] = {
							["enable"] = true,
						},
					},
				},
				["plateSize"] = {
					["personalWidth"] = 165,
					["friendlyWidth"] = 165,
					["enemyHeight"] = 40,
					["personalHeight"] = 40,
					["enemyWidth"] = 165,
					["friendlyHeight"] = 40,
				},
				["cooldown"] = {
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["override"] = false,
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
				},
				["visibility"] = {
					["enemy"] = {
						["guardians"] = true,
						["minions"] = true,
					},
				},
				["units"] = {
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["yOffset"] = -10,
							["font"] = "Expressway",
							["spacing"] = 0,
							["numAuras"] = 6,
							["countFont"] = "Expressway",
							["size"] = 22,
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["questIcon"] = {
							["font"] = "Expressway",
							["textPosition"] = "CENTER",
							["size"] = 25,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["eliteIcon"] = {
							["xOffset"] = 3,
							["size"] = 14,
						},
						["pvpindicator"] = {
							["size"] = 35,
						},
						["name"] = {
							["fontSize"] = 12,
							["xOffset"] = 1,
							["parent"] = "Health",
							["format"] = "[name:last][classificationcolor][ >classification]",
							["font"] = "Expressway",
							["yOffset"] = -15,
						},
						["castbar"] = {
							["fontSize"] = 10,
							["iconOffsetY"] = -1,
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["font"] = "Expressway",
							["width"] = 165,
							["height"] = 12,
							["textPosition"] = "ONBAR",
							["timeToHold"] = 2,
							["iconSize"] = 33,
						},
						["level"] = {
							["xOffset"] = 3,
							["font"] = "Expressway",
							["format"] = "",
							["yOffset"] = -10,
						},
						["buffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["xOffset"] = -1,
							["yOffset"] = -10,
							["font"] = "Expressway",
							["spacing"] = 0,
							["countFont"] = "Expressway",
							["priority"] = "Blacklist,Dispellable",
							["numAuras"] = 2,
							["size"] = 22,
						},
						["health"] = {
							["height"] = 18,
							["text"] = {
								["fontSize"] = 12,
								["position"] = "TOPRIGHT",
								["parent"] = "Health",
								["format"] = "[perhp<%]",
								["font"] = "Expressway",
								["yOffset"] = -15,
							},
						},
						["title"] = {
							["font"] = "Expressway",
						},
					},
					["TARGET"] = {
						["classpower"] = {
							["enable"] = true,
						},
					},
					["FRIENDLY_NPC"] = {
						["debuffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["yOffset"] = 1,
							["font"] = "Expressway",
							["spacing"] = 0,
							["countFont"] = "Expressway",
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["numAuras"] = 6,
							["size"] = 20,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["yOffset"] = -11,
							["font"] = "Expressway",
							["iconSize"] = 22,
							["textPosition"] = "ONBAR",
							["timeToHold"] = 2,
							["width"] = 160,
						},
						["questIcon"] = {
							["fontSize"] = 14,
							["font"] = "Expressway",
							["textPosition"] = "CENTER",
							["size"] = 16,
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["eliteIcon"] = {
							["xOffset"] = 3,
							["size"] = 14,
						},
						["pvpindicator"] = {
							["size"] = 35,
						},
						["name"] = {
							["yOffset"] = -10,
							["font"] = "Expressway",
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["level"] = {
							["xOffset"] = 3,
							["font"] = "Expressway",
							["format"] = "[level]",
							["yOffset"] = -10,
						},
						["buffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["yOffset"] = 1,
							["font"] = "Expressway",
							["spacing"] = 0,
							["countFont"] = "Expressway",
							["priority"] = "Blacklist,Dispellable",
							["numAuras"] = 2,
							["size"] = 20,
						},
						["title"] = {
							["enable"] = true,
							["font"] = "Expressway",
						},
						["health"] = {
							["height"] = 12,
							["text"] = {
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
					},
					["PLAYER"] = {
						["debuffs"] = {
							["priority"] = "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs",
							["countFont"] = "Expressway",
						},
						["castbar"] = {
							["font"] = "Expressway",
							["timeToHold"] = 2,
							["yOffset"] = -10,
						},
						["nameOnly"] = true,
						["health"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["name"] = {
							["enable"] = true,
							["font"] = "Expressway",
							["format"] = "[namecolor][name]",
							["yOffset"] = 0,
						},
						["power"] = {
							["enable"] = false,
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["level"] = {
							["enable"] = true,
							["font"] = "Expressway",
							["yOffset"] = 0,
						},
						["buffs"] = {
							["maxDuration"] = 0,
							["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs",
							["countFont"] = "Expressway",
						},
						["visibility"] = {
							["showInCombat"] = false,
							["hideDelay"] = 0,
						},
						["title"] = {
							["enable"] = true,
							["font"] = "Expressway",
							["yOffset"] = 0,
						},
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["yOffset"] = -10,
							["font"] = "Expressway",
							["spacing"] = 0,
							["countFont"] = "Expressway",
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["numAuras"] = 6,
							["size"] = 22,
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["pvpindicator"] = {
							["size"] = 35,
						},
						["name"] = {
							["fontSize"] = 12,
							["xOffset"] = 1,
							["parent"] = "Health",
							["format"] = "[name:medium]",
							["font"] = "Expressway",
							["yOffset"] = -15,
						},
						["castbar"] = {
							["fontSize"] = 10,
							["iconOffsetY"] = -1,
							["yOffset"] = -16,
							["iconPosition"] = "LEFT",
							["font"] = "Expressway",
							["width"] = 165,
							["height"] = 12,
							["textPosition"] = "ONBAR",
							["timeToHold"] = 2,
							["iconSize"] = 33,
						},
						["level"] = {
							["xOffset"] = 3,
							["font"] = "Expressway",
							["format"] = "",
							["yOffset"] = -10,
						},
						["buffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["xOffset"] = -1,
							["yOffset"] = -10,
							["maxDuration"] = 0,
							["font"] = "Expressway",
							["spacing"] = 0,
							["numAuras"] = 2,
							["priority"] = "Blacklist,Dispellable",
							["countFont"] = "Expressway",
							["size"] = 22,
						},
						["title"] = {
							["font"] = "Expressway",
							["format"] = "[npctitle]",
						},
						["health"] = {
							["height"] = 18,
							["text"] = {
								["fontSize"] = 12,
								["position"] = "TOPRIGHT",
								["parent"] = "Health",
								["format"] = "[perhp<%]",
								["font"] = "Expressway",
								["yOffset"] = -15,
							},
						},
					},
					["FRIENDLY_PLAYER"] = {
						["debuffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["xOffset"] = 1,
							["yOffset"] = 1,
							["font"] = "Expressway",
							["spacing"] = 0,
							["countFont"] = "Expressway",
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["numAuras"] = 6,
							["size"] = 20,
						},
						["castbar"] = {
							["iconPosition"] = "LEFT",
							["fontSize"] = 10,
							["yOffset"] = -11,
							["font"] = "Expressway",
							["iconSize"] = 22,
							["textPosition"] = "ONBAR",
							["timeToHold"] = 2,
							["width"] = 160,
						},
						["nameOnly"] = true,
						["raidTargetIndicator"] = {
							["xOffset"] = -3,
							["size"] = 20,
						},
						["pvpindicator"] = {
							["size"] = 35,
						},
						["power"] = {
							["text"] = {
								["font"] = "Expressway",
							},
						},
						["health"] = {
							["height"] = 12,
							["text"] = {
								["font"] = "Expressway",
								["format"] = "[perhp<%]",
							},
						},
						["level"] = {
							["xOffset"] = 3,
							["font"] = "Expressway",
							["format"] = "[level]",
							["yOffset"] = -10,
						},
						["name"] = {
							["yOffset"] = -10,
							["font"] = "Expressway",
						},
						["buffs"] = {
							["countFontSize"] = 8,
							["fontSize"] = 10,
							["yOffset"] = 1,
							["font"] = "Expressway",
							["spacing"] = 0,
							["countFont"] = "Expressway",
							["priority"] = "Blacklist,Dispellable",
							["numAuras"] = 2,
							["size"] = 20,
						},
						["markHealers"] = false,
						["title"] = {
							["enable"] = true,
							["font"] = "Expressway",
						},
					},
				},
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "Expressway",
				["itemLevelFont"] = "Expressway",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bagWidth"] = 414,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["bankWidth"] = 414,
				["transparent"] = true,
				["cooldown"] = {
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["clearSearchOnClose"] = true,
			},
			["cooldown"] = {
				["expireIndicator"] = {
					["g"] = 0,
					["b"] = 0,
				},
				["hoursIndicator"] = {
					["r"] = 0.4,
				},
				["threshold"] = 5,
				["secondsColor"] = {
					["b"] = 1,
				},
				["daysIndicator"] = {
					["g"] = 0.4,
					["r"] = 0.4,
				},
				["fonts"] = {
					["fontSize"] = 12,
					["font"] = "Expressway",
				},
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 2,
					["maxWraps"] = 2,
					["countFontSize"] = 14,
					["size"] = 26,
				},
				["cooldown"] = {
					["expireIndicator"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["hoursIndicator"] = {
						["r"] = 0.4,
					},
					["daysIndicator"] = {
						["g"] = 0.4,
						["r"] = 0.4,
					},
				},
				["buffs"] = {
					["countFontSize"] = 14,
					["horizontalSpacing"] = 2,
					["size"] = 26,
				},
			},
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
			["Berlusconi"] = 86010345,
			["Mariagreco"] = 825062942,
			["Reghiaccio"] = 93731587,
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
		["Berlusconi - Sethraliss"] = "AAAA Comune",
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
			["nameplates"] = {
				["enable"] = false,
			},
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
			["nameplates"] = {
				["enable"] = false,
			},
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
