local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		NeogitDiffContextHighlight = { bg = theme.diff.change },
		NeogitHunkHeader = { fg = theme.syn.fun },
		NeogitHunkHeaderHighlight = { fg = theme.syn.constant, bg = theme.diff.change },
		NeogitDiffAddHighlight = { bg = theme.diff.add },
		NeogitDiffDeleteHighlight = { bg = theme.diff.delete },
	}
end

return M
