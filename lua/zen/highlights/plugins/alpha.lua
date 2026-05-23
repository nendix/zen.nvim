local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		-- Alpha
		AlphaHeader = { fg = theme.ui.special },
		AlphaButtons = { fg = theme.ui.fg },
		AlphaShortcut = { fg = theme.syn.keyword },
		AlphaFooter = { fg = theme.ui.fg_dim },

		-- Dashboard
		DashboardHeader = { fg = theme.ui.special },
		DashboardCenter = { fg = theme.ui.fg },
		DashboardShortcut = { fg = theme.syn.keyword },
		DashboardFooter = { fg = theme.ui.fg_dim },
		DashboardKey = { fg = theme.syn.keyword },
		DashboardDesc = { fg = theme.ui.fg },
		DashboardIcon = { fg = theme.ui.special },
	}
end

return M
