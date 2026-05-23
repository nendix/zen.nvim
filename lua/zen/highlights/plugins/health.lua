local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		healthError = { fg = theme.diag.error },
		healthSuccess = { fg = theme.diag.ok },
		healthWarning = { fg = theme.diag.warning },
	}
end

return M
