local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme
	local function tbg(c) return config.transparent and theme.ui.none or c end
	return {
		WhichKey = { fg = theme.ui.fg },
		WhichKeyBorder = {
			fg = theme.ui.float.fg_border,
			bg = tbg(theme.ui.float.bg),
		},
		WhichKeyDesc = { fg = theme.ui.fg_dim },
		WhichKeyFloat = { bg = tbg(theme.ui.float.bg) },
		WhichKeyGroup = { fg = theme.syn.keyword },
		WhichKeySeparator = { fg = theme.ui.nontext },
		WhichKeyValue = { fg = theme.syn.string },
	}
end

return M
