local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		FlashBackdrop = { fg = theme.ui.fg_dim },
		FlashLabel = { fg = theme.ui.fg, bg = theme.ui.bg_search, bold = true },
		FlashMatch = { fg = theme.ui.fg, bg = theme.ui.bg_visual },
		FlashCurrent = { fg = theme.ui.fg, bg = theme.ui.bg_search },
		FlashPrompt = { link = "NormalFloat" },
		FlashPromptIcon = { fg = theme.ui.special },
		FlashCursor = { link = "Cursor" },
	}
end

return M
