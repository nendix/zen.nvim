local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		NvimTreeNormal = { link = "Normal" },
		NvimTreeNormalNC = { link = "NvimTreeNormal" },
		NvimTreeRootFolder = { fg = theme.syn.identifier },
		NvimTreeGitDirty = { fg = theme.vcs.changed },
		NvimTreeGitNew = { fg = theme.vcs.added },
		NvimTreeGitDeleted = { fg = theme.vcs.removed },
		NvimTreeGitStaged = { fg = theme.vcs.added },
		NvimTreeSpecialFile = { fg = theme.syn.special1 },
		NvimTreeImageFile = { fg = theme.syn.special2 },
		NvimTreeSymlink = { link = "Type" },
		NvimTreeFolderName = { link = "Directory" },
		NvimTreeExecFile = { fg = theme.syn.string },
		NvimTreeOpenedFile = { fg = theme.syn.special1, italic = true },
		NvimTreeWinSeparator = { link = "WinSeparator" },
	}
end

return M
