local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		BufferLineBackground = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineBuffer = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineBufferSelected = { bg = theme.ui.none, fg = theme.tabline.fg_active },
		BufferLineBufferVisible = { fg = theme.tabline.fg_inactive, bg = theme.ui.none },
		BufferLineCloseButton = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineCloseButtonSelected = { fg = theme.tabline.fg_active, bg = theme.ui.none },
		BufferLineCloseButtonVisible = { fg = theme.tabline.fg_inactive, bg = theme.ui.none },
		BufferLineFill = { bg = theme.ui.none },
		BufferLineIndicatorSelected = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineModified = { fg = theme.tabline.fg_modified, bg = theme.ui.none },
		BufferLineModifiedSelected = { fg = theme.tabline.fg_modified, bg = theme.ui.none },
		BufferLineModifiedVisible = { fg = theme.tabline.fg_modified, bg = theme.ui.none },
		BufferLineSeparator = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineSeparatorSelected = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineSeparatorVisible = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineTab = { fg = theme.tabline.fg_special, bg = theme.ui.none },
		BufferLineTabSelected = { fg = theme.tabline.fg_active, bg = theme.ui.none },
	}
end

return M
