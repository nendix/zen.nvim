local colors = {
	bg0 = "#0a0a0a",
	bg1 = "#141414",
	bg3 = "#323232",
	slate = "#858585",
	stone = "#ababab",
	ash = "#5a5a5a",
	silver = "#d2d2d2",
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
		a = { bg = colors.silver, fg = colors.bg0, gui = "bold" },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	insert = {
		a = { bg = colors.sage, fg = colors.bg0, gui = "bold" },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	visual = {
		a = { bg = colors.lavender, fg = colors.bg0, gui = "bold" },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	replace = {
		a = { bg = colors.rose, fg = colors.bg0, gui = "bold" },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	command = {
		a = { bg = colors.sand, fg = colors.bg0, gui = "bold" },
		b = { bg = colors.bg3, fg = colors.stone },
		c = { bg = bg_c, fg = colors.slate },
	},
	inactive = {
		a = { bg = bg_inactive, fg = colors.ash, gui = "bold" },
		b = { bg = bg_inactive, fg = colors.ash },
		c = { bg = bg_inactive, fg = colors.ash },
	},
}
