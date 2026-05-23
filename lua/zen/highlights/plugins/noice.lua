local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme
	local function tbg(c) return config.transparent and theme.ui.none or c end
	return {
		NoiceCmdline = { fg = theme.ui.fg, bg = tbg(theme.ui.bg) },
		NoiceCmdlineIcon = { fg = theme.ui.fg_dim },
		NoiceCmdlineIconSearch = { fg = theme.ui.fg_dim },
		NoiceCmdlinePopup = { fg = theme.ui.fg, bg = tbg(theme.ui.bg_p1) },
		NoiceCmdlinePopupBorder = {
			fg = theme.ui.float.fg_border,
			bg = tbg(theme.ui.bg_p1),
		},
		NoiceCmdlinePopupTitle = { fg = theme.ui.special },
		NoiceConfirm = { bg = tbg(theme.ui.bg_p1) },
		NoiceConfirmBorder = {
			fg = theme.ui.float.fg_border,
			bg = tbg(theme.ui.bg_p1),
		},
		NoiceFormatProgressDone = { fg = theme.ui.fg, bg = theme.ui.bg_p2 },
		NoiceFormatProgressTodo = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 },
		NoiceLspProgressClient = { fg = theme.ui.fg_dim },
		NoiceLspProgressSpinner = { fg = theme.ui.special },
		NoiceLspProgressTitle = { fg = theme.ui.fg },
		NoiceMini = { fg = theme.ui.fg, bg = tbg(theme.ui.bg_p1) },
		NoicePopup = { bg = tbg(theme.ui.bg_p1) },
		NoicePopupBorder = {
			fg = theme.ui.float.fg_border,
			bg = tbg(theme.ui.bg_p1),
		},
		NoicePopupmenu = { bg = tbg(theme.ui.bg_p1) },
		NoicePopupmenuBorder = {
			fg = theme.ui.float.fg_border,
			bg = tbg(theme.ui.bg_p1),
		},
		NoicePopupmenuMatch = { fg = theme.syn.fun },
		NoicePopupmenuSelected = { bg = theme.ui.bg_p2 },
		NoiceScrollbar = { bg = theme.ui.bg_p1 },
		NoiceScrollbarThumb = { bg = theme.ui.bg_p2 },
		NoiceVirtualText = { fg = theme.ui.fg_dim },
	}
end

return M
