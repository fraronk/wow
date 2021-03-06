local SLE, _, E, L = unpack(select(2, ...))
local B = E:GetModule("Bags")

--GLOBALS: unpack, select, tinsert, AUCTION_CATEGORY_BATTLE_PETS, COLOR, AceGUIWidgetLSMlists
local tinsert = tinsert
local AUCTION_CATEGORY_BATTLE_PETS, COLOR = AUCTION_CATEGORY_BATTLE_PETS, COLOR

local function configTable()
	if not SLE.initialized then return end
	local ACH = E.Libs.ACH

	E.Options.args.sle.args.modules.args.bags = {
		order = 1,
		type = "group",
		name = L["Bags"],
		disabled = function() return not E.private.bags.enable end,
		args = {
			header = ACH:Header(L["Bags"], 1),
			petLevel = {
				order = 21,
				type = "group",
				guiInline = true,
				name = AUCTION_CATEGORY_BATTLE_PETS,
				get = function(info) return E.db.sle.bags.petLevel[ info[#info] ] end,
				set = function(info, value) E.db.sle.bags.petLevel[ info[#info] ] = value; B:Layout() end,
				args = {
					enable = {
						order = 1,
						type = "toggle",
						name = L["Enable"],
					},
					color = {
						type = "color",
						order = 2,
						name = COLOR,
						hasAlpha = false,
						get = function(info)
							local t = E.db.sle.bags.petLevel[info[#info]]
							return t.r, t.g, t.b, t.a
						end,
						set = function(info, r, g, b)
							E.db.sle.bags.petLevel[info[#info]] = {}
							local t = E.db.sle.bags.petLevel[info[#info]]
							t.r, t.g, t.b = r, g, b
							B:Layout()
						end,
					},
					fonts = {
						order = 5,
						type = "group",
						guiInline = true,
						name = L["Fonts"],
						get = function(info) return E.db.sle.bags.petLevel.fonts[ info[#info] ] end,
						set = function(info, value) E.db.sle.bags.petLevel.fonts[ info[#info] ] = value; B:Layout() end,
						args = {
							font = {
								type = "select", dialogControl = 'LSM30_Font',
								order = 1,
								name = L["Font"],
								values = AceGUIWidgetLSMlists.font,
							},
							size = {
								order = 2,
								name = L["Font Size"],
								type = "range",
								min = 6, max = 48, step = 1,
							},
							outline = {
								order = 3,
								name = L["Font Outline"],
								desc = L["Set the font outline."],
								type = "select",
								values = {
									["NONE"] = L["None"],
									["OUTLINE"] = 'OUTLINE',

									["MONOCHROMEOUTLINE"] = 'MONOCROMEOUTLINE',
									["THICKOUTLINE"] = 'THICKOUTLINE',
								},
							},
						},
					},
				},
			},
		},
	}
end

tinsert(SLE.Configs, configTable)
