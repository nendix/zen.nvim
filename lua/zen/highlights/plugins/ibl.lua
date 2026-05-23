local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		IndentBlanklineChar = { fg = theme.ui.indent_line, nocombine = true },
		IndentBlanklineSpaceChar = { fg = theme.ui.indent_line, nocombine = true },
		IndentBlanklineSpaceCharBlankline = { fg = theme.ui.indent_line, nocombine = true },
		IndentBlanklineContextChar = { fg = theme.ui.special, nocombine = true },
		IndentBlanklineContextStart = { sp = theme.ui.special, underline = true, nocombine = true },
		IblIndent = { fg = theme.ui.indent_line, nocombine = true },
		IblWhitespace = { fg = theme.ui.indent_line, nocombine = true },
		IblScope = { fg = theme.ui.special, nocombine = true },
	}
end

return M
