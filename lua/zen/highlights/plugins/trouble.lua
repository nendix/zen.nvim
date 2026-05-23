local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		TroubleIndent = { fg = theme.ui.whitespace },
		TroublePos = { fg = theme.ui.special },
	}
end

return M
