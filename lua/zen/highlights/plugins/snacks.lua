local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme
	local function tbg(c) return config.transparent and theme.ui.none or c end
	return {
		SnacksPicker = { bg = tbg(theme.ui.bg) },
		SnacksPickerTitle = { fg = theme.ui.fg, bg = tbg(theme.ui.bg) },
		SnacksPickerBorder = { fg = theme.ui.none, bg = theme.ui.none },
		SnacksPickerNormal = { fg = theme.ui.fg, bg = tbg(theme.ui.bg) },
		SnacksPickerMatch = { fg = theme.ui.fg },
		SnacksPickerPrompt = { fg = theme.ui.fg },
		SnacksPickerDim = { fg = theme.ui.fg_dim },
		SnacksIndent = { fg = theme.ui.indent_line, nocombine = true },
		SnacksIndentChunk = { fg = theme.ui.indent_line, nocombine = true },
		SnacksIndentScope = { fg = theme.ui.scope, nocombine = true },
		SnacksPickerListCursorLine = { fg = theme.ui.fg, bg = theme.ui.bg_p2 },
	}
end

return M
