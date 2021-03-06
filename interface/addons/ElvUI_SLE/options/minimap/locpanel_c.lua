local SLE, T, E, L, V, P, G = unpack(select(2, ...))
local LP = SLE:GetModule("LocationPanel")
local DEFAULT = DEFAULT
local function configTable()
	if not SLE.initialized then return end
	E.Options.args.sle.args.modules.args.minimap.args.locPanel = {
		type = "group",
		name = L["Location Panel"],
		order = 8,
		get = function(info) return E.db.sle.minimap.locPanel[ info[#info] ] end,
		args = {
			enable = {
				type = "toggle",
				name = L["Enable"],
				order = 1,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; LP:Toggle() end,
			},
			width = {
				order = 2,
				type = 'range',
				name = L["Width"],
				min = 100, max = E.screenwidth/2, step = 1,
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; LP:Resize() end,
			},
			height = {
				order = 3,
				type = 'range',
				name = L["Height"],
				min = 10, max = 50, step = 1,
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; LP:Resize() end,
			},
			template = {
				order = 4,
				name = L["Template"],
				type = "select",
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; LP:Template() end,
				values = {
					["Default"] = DEFAULT,
					["Transparent"] = L["Transparent"],
				},
			},
			throttle = {
				order = 5,
				type = 'range',
				name = L["Update Throttle"],
				desc = L["The frequency of coordinates and zonetext updates. Check will be done more often with lower values."],
				min = 0.1, max = 2, step = 0.1,
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; end,
			},
			format = {
				order = 6,
				name = L["Format"],
				type = "select",
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; end,
				values = {
					["%.0f"] = DEFAULT,
					["%.1f"] = "45.3",
					["%.2f"] = "45.34",
				},
			},
			zoneText = {
				type = "toggle",
				name = L["Full Location"],
				order = 7,
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; end,
			},
			colorType = {
				order = 8,
				name = L["Color Type"],
				type = "select",
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; end,
				values = {
					["REACTION"] = L["Reaction"],
					["DEFAULT"] = DEFAULT,
					["CUSTOM"] = L["Custom"],
				},
			},
			customColor = {
				type = 'color',
				order = 9,
				name = L["Custom Color"],
				disabled = function() return not E.db.sle.minimap.locPanel.enable or not E.db.sle.minimap.locPanel.colorType == "CUSTOM" end,
				get = function(info)
					local t = E.db.sle.minimap.locPanel[ info[#info] ]
					local d = P.sle.minimap.locPanel[info[#info]]
					return t.r, t.g, t.b, d.r, d.g, d.b
				end,
				set = function(info, r, g, b)
					E.db.sle.minimap.locPanel[ info[#info] ] = {}
					local t = E.db.sle.minimap.locPanel[ info[#info] ]
					t.r, t.g, t.b = r, g, b
				end,
			},
			linkcoords = {
				type = "toggle",
				name = L["Link Position"],
				desc = L["Allow pasting of your coordinates in chat editbox via holding shift and clicking on the location name."],
				order = 10,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; end,
			},
			portals = {
				order = 11,
				type = "group",
				name = L["Relocation Menu"],
				guiInline = true,
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				get = function(info) return E.db.sle.minimap.locPanel.portals[ info[#info] ] end,
				set = function(info, value) E.db.sle.minimap.locPanel.portals[ info[#info] ] = value; end,
				args = {
					enable = {
						type = "toggle",
						name = L["Enable"],
						desc = L["Right click on the location panel will bring up a menu with available options for relocating your character (e.g. Hearthstones, Portals, etc)."],
						order = 1,
					},
					customWidth = {
						type = "toggle",
						name = L["Custom Width"],
						desc = L["By default menu's width will be equal to the location panel width. Checking this option will allow you to set own width."],
						order = 2,
					},
					customWidthValue = {
						order = 3,
						name = L["Width"],
						type = "range",
						min = 100, max = E.screenwidth, step = 1,
						disabled = function() return not E.db.sle.minimap.locPanel.portals.customWidth or not E.db.sle.minimap.locPanel.enable end,
					},
					justify = {
						order = 4,
						name = L["Justify Text"],
						type = "select",
						values = {
							["LEFT"] = L["Left"],
							["CENTER"] = L["Middle"],
							["RIGHT"] = L["Right"],
						},
					},
					cdFormat = {
						order = 5,
						name = L["CD format"],
						type = "select",
						values = {
							["DEFAULT"] = [[(10m |TInterface\FriendsFrame\StatusIcon-Away:16|t)]],
							["DEFAULT_ICONFIRST"] = [[( |TInterface\FriendsFrame\StatusIcon-Away:16|t10m)]],
						},
					},
				},
			},
			fontGroup = {
				order = 12,
				type = "group",
				name = L["Fonts"],
				guiInline = true,
				disabled = function() return not E.db.sle.minimap.locPanel.enable end,
				get = function(info) return E.db.sle.minimap.locPanel[ info[#info] ] end,
				set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; LP:Fonts() end,
				args = {
					font = {
						type = "select", dialogControl = 'LSM30_Font',
						order = 1,
						name = L["Font"],
						values = AceGUIWidgetLSMlists.font,
					},
					fontSize = {
						order = 2,
						name = L["Font Size"],
						type = "range",
						min = 6, max = 22, step = 1,
						set = function(info, value) E.db.sle.minimap.locPanel[ info[#info] ] = value; LP:Fonts(); LP:Resize() end,
					},
					fontOutline = {
						order = 3,
						name = L["Font Outline"],
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
	}
end

T.tinsert(SLE.Configs, configTable)