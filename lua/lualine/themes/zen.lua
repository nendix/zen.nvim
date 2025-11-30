local colors_dark = {
	bg0 = "#121212",
	bg1 = "#1a1a1a",
	bg3 = "#323232",
	slate = "#9e9e9e",
	stone = "#b2b2b2",
	fg_dim = "#767676",
	silver = "#d0d0d0",
	sage = "#a0b9a0",
	sand = "#b9b0a0",
	rose = "#b9a0a0",
	lavender = "#b0a0b9",
}

local colors_light = {
	bg0 = "#e0e0e0",
	bg1 = "#d6d6d6",
	bg3 = "#c0c0c0",
	slate = "#4a4a4a",
	stone = "#3a3a3a",
	fg_dim = "#585858",
	silver = "#2a2a2a",
	sage = "#3a6a3a",
	sand = "#6a5a3a",
	rose = "#6a3a4a",
	lavender = "#5a3a6a",
}

-- Check if zen is loaded and get config
local transparent = false
local variant = "dark"
local ok, zen = pcall(require, "zen")
if ok and zen.config then
	transparent = zen.config.transparent or false
	variant = zen.config.variant or "dark"
end

local colors = variant == "light" and colors_light or colors_dark
local bg_c = transparent and "NONE" or colors.bg1
local bg_inactive = transparent and "NONE" or colors.bg1

return {
	normal = {
		a = { bg = colors.silver, fg = colors.bg0 },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	insert = {
		a = { bg = colors.sage, fg = colors.bg0 },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	visual = {
		a = { bg = colors.lavender, fg = colors.bg0 },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	replace = {
		a = { bg = colors.rose, fg = colors.bg0 },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	command = {
		a = { bg = colors.sand, fg = colors.bg0 },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	inactive = {
		a = { bg = bg_inactive, fg = colors.fg_dim },
		b = { bg = bg_inactive, fg = colors.fg_dim },
		c = { bg = bg_inactive, fg = colors.fg_dim },
	},
}
