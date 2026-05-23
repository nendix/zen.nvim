local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		-- nvim-dap
		DapBreakpoint = { fg = theme.diag.error },
		DapBreakpointCondition = { fg = theme.diag.warning },
		DapBreakpointRejected = { fg = theme.ui.fg_dim },
		DapLogPoint = { fg = theme.diag.info },
		DapStopped = { fg = theme.diag.ok },
		DapStoppedLine = { bg = theme.diff.change },

		-- nvim-dap-ui
		DapUIBreakpointsCurrentLine = { fg = theme.ui.fg, bold = true },
		DapUIBreakpointsDisabledLine = { fg = theme.ui.fg_dim },
		DapUIBreakpointsInfo = { fg = theme.diag.info },
		DapUIBreakpointsLine = { link = "DapBreakpoint" },
		DapUIBreakpointsPath = { fg = theme.ui.special },
		DapUICurrentFrameName = { link = "DapUIBreakpointsCurrentLine" },
		DapUIDecoration = { fg = theme.ui.float.fg_border },
		DapUIFloatBorder = { link = "FloatBorder" },
		DapUIFloatNormal = { link = "NormalFloat" },
		DapUILineNumber = { fg = theme.ui.special },
		DapUIModifiedValue = { fg = theme.diag.warning, bold = true },
		DapUIPlayPause = { fg = theme.diag.ok },
		DapUIRestart = { fg = theme.diag.ok },
		DapUIScope = { fg = theme.ui.special },
		DapUISource = { fg = theme.syn.string },
		DapUIStepBack = { fg = theme.diag.info },
		DapUIStepInto = { fg = theme.diag.info },
		DapUIStepOut = { fg = theme.diag.info },
		DapUIStepOver = { fg = theme.diag.info },
		DapUIStop = { fg = theme.diag.error },
		DapUIStoppedThread = { fg = theme.diag.ok },
		DapUIThread = { fg = theme.ui.fg },
		DapUIType = { link = "Type" },
		DapUIValue = { fg = theme.ui.fg_dim },
		DapUIVariable = { fg = theme.ui.fg },
		DapUIWatchesEmpty = { fg = theme.ui.fg_dim },
		DapUIWatchesError = { fg = theme.diag.error },
		DapUIWatchesValue = { fg = theme.diag.ok },
	}
end

return M
