local kinds = require("zen.highlights.plugins._kinds")

local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return vim.tbl_extend("error", {
		CmpDocumentation = { link = "NormalFloat" },
		CmpDocumentationBorder = { link = "FloatBorder" },
		CmpCompletion = { link = "Pmenu" },
		CmpCompletionSel = { link = "PmenuSel" },
		CmpCompletionBorder = { fg = theme.ui.bg_search, bg = theme.ui.pmenu.bg },
		CmpCompletionThumb = { link = "PmenuThumb" },
		CmpCompletionSbar = { link = "PmenuSbar" },
		CmpItemAbbr = { fg = theme.ui.pmenu.fg },
		CmpItemAbbrDeprecated = { fg = theme.syn.comment, strikethrough = true },
		CmpItemAbbrMatch = { fg = theme.syn.fun },
		CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
		CmpItemKindDefault = { fg = theme.ui.fg_dim },
		CmpItemMenu = { fg = theme.ui.fg_dim },
		CmpGhostText = { fg = theme.syn.comment },
	}, kinds.with_prefix("CmpItemKind", theme))
end

return M
