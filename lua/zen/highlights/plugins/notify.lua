local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme
	local function tbg(c) return config.transparent and theme.ui.none or c end
	return {
		NotifyBackground = { bg = tbg(theme.ui.bg) },
		NotifyERRORBorder = { link = "DiagnosticError" },
		NotifyWARNBorder = { link = "DiagnosticWarn" },
		NotifyINFOBorder = { link = "DiagnosticInfo" },
		NotifyHINTBorder = { link = "DiagnosticHint" },
		NotifyDEBUGBorder = { link = "Debug" },
		NotifyTRACEBorder = { link = "Comment" },
		NotifyERRORIcon = { link = "DiagnosticError" },
		NotifyWARNIcon = { link = "DiagnosticWarn" },
		NotifyINFOIcon = { link = "DiagnosticInfo" },
		NotifyHINTIcon = { link = "DiagnosticHint" },
		NotifyDEBUGIcon = { link = "Debug" },
		NotifyTRACEIcon = { link = "Comment" },
		NotifyERRORTitle = { link = "DiagnosticError" },
		NotifyWARNTitle = { link = "DiagnosticWarn" },
		NotifyINFOTitle = { link = "DiagnosticInfo" },
		NotifyHINTTitle = { link = "DiagnosticHint" },
		NotifyDEBUGTitle = { link = "Debug" },
		NotifyTRACETitle = { link = "Comment" },
	}
end

return M
