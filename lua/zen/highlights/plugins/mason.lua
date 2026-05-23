local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		MasonHeader = { fg = theme.ui.bg, bg = theme.syn.keyword, bold = true },
		MasonHeaderSecondary = { fg = theme.ui.bg, bg = theme.ui.special, bold = true },
		MasonHeading = { fg = theme.ui.fg, bold = true },
		MasonHighlight = { fg = theme.syn.string },
		MasonHighlightBlock = { fg = theme.ui.bg, bg = theme.syn.string },
		MasonHighlightBlockBold = { fg = theme.ui.bg, bg = theme.syn.string, bold = true },
		MasonHighlightBlockBoldSecondary = { fg = theme.ui.bg, bg = theme.ui.special, bold = true },
		MasonHighlightBlockSecondary = { fg = theme.ui.bg, bg = theme.ui.special },
		MasonHighlightSecondary = { fg = theme.ui.special },
		MasonLink = { fg = theme.syn.string, underline = true },
		MasonMuted = { fg = theme.ui.fg_dim },
		MasonMutedBlock = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 },
		MasonMutedBlockBold = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1, bold = true },
		MasonNormal = { link = "NormalFloat" },
		MasonWarning = { fg = theme.diag.warning },
		MasonError = { fg = theme.diag.error },
	}
end

return M
