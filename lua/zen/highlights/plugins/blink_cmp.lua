local kinds = require("zen.highlights.plugins._kinds")

local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme
	local function tbg(c) return config.transparent and theme.ui.none or c end
	return vim.tbl_extend("error", {
		BlinkCmpMenu = { link = "Pmenu" },
		BlinkCmpMenuSelection = { link = "PmenuSel" },
		BlinkCmpMenuBorder = { fg = theme.ui.bg_search, bg = tbg(theme.ui.pmenu.bg) },
		BlinkCmpScrollBarThumb = { link = "PmenuThumb" },
		BlinkCmpScrollBarGutter = { link = "PmenuSbar" },
		BlinkCmpLabel = { fg = theme.ui.pmenu.fg },
		BlinkCmpLabelMatch = { fg = theme.syn.fun },
		BlinkCmpLabelDetails = { fg = theme.syn.comment },
		BlinkCmpLabelDeprecated = { fg = theme.syn.comment, strikethrough = true },
		BlinkCmpGhostText = { fg = theme.syn.comment },
		BlinkCmpDoc = { link = "NormalFloat" },
		BlinkCmpDocBorder = { link = "FloatBorder" },
		BlinkCmpDocCursorLine = { link = "Visual" },
		BlinkCmpSignatureHelp = { link = "NormalFloat" },
		BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },
		BlinkCmpSignatureHelpActiveParameter = { link = "LspSignatureActiveParameter" },
		BlinkCmpKind = { fg = theme.ui.fg_dim },
	}, kinds.with_prefix("BlinkCmpKind", theme))
end

return M
