local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		IblIndent = { fg = theme.ui.indent_line, nocombine = true },
		IblWhitespace = { fg = theme.ui.indent_line, nocombine = true },
		IblScope = { fg = theme.ui.scope, nocombine = true },
	}
end

return M
