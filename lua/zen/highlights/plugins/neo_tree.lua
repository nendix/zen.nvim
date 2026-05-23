local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		NeoTreeNormal = { link = "Normal" },
		NeoTreeNormalNC = { link = "Normal" },
		NeoTreeRootName = { fg = theme.syn.identifier },
		NeoTreeModified = { link = "String" },
		NeoTreeTitleBar = { link = "Title" },
		NeoTreeDimText = { fg = theme.ui.fg_dim },
		NeoTreeGitModified = { fg = theme.vcs.changed },
		NeoTreeGitAdded = { fg = theme.vcs.added },
		NeoTreeGitDeleted = { fg = theme.vcs.removed },
		NeoTreeGitStaged = { fg = theme.vcs.added },
		NeoTreeGitConflict = { fg = theme.diag.error },
		NeoTreeIndentMarker = { link = "NonText" },
	}
end

return M
