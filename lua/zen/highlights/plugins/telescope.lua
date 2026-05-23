local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme
	local function tbg(c) return config.transparent and theme.ui.none or c end
	return {
		TelescopeBorder = { fg = theme.ui.float.fg_border, bg = tbg(theme.ui.bg) },
		TelescopeTitle = { fg = theme.ui.special },
		TelescopeSelection = { link = "CursorLine" },
		TelescopeSelectionCaret = { link = "CursorLineNr" },
		TelescopeResultsClass = { link = "Structure" },
		TelescopeResultsStruct = { link = "Structure" },
		TelescopeResultsField = { link = "@field" },
		TelescopeResultsMethod = { link = "Function" },
		TelescopeResultsVariable = { link = "@variable" },
	}
end

return M
