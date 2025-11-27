local colors = {
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

-- Check if zen is loaded and transparent is enabled
local transparent = false
local ok, zen = pcall(require, "zen")
if ok and zen.config then
	transparent = zen.config.transparent or false
end

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
