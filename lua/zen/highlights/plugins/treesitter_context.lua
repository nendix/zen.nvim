local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		TreesitterContext = { link = "Folded" },
		TreesitterContextLineNumber = { fg = theme.ui.special, bg = theme.ui.none },
	}
end

return M
