local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		DiffviewDiffAdd = { bg = theme.diff.add },
		DiffviewDiffChange = { bg = theme.diff.change },
		DiffviewDiffDelete = { fg = theme.ui.fg_dim, bg = theme.diff.delete },
		DiffviewDiffText = { bg = theme.diff.text },
		DiffviewDim1 = { fg = theme.ui.fg_dim },
		DiffviewFilePanelCounter = { fg = theme.ui.special },
		DiffviewFilePanelDeletions = { fg = theme.vcs.removed },
		DiffviewFilePanelFileName = { fg = theme.ui.fg },
		DiffviewFilePanelInsertions = { fg = theme.vcs.added },
		DiffviewFilePanelPath = { fg = theme.ui.fg_dim },
		DiffviewFilePanelRootPath = { fg = theme.ui.special },
		DiffviewFilePanelSelected = { fg = theme.ui.fg, bold = true },
		DiffviewFilePanelTitle = { fg = theme.ui.special, bold = true },
		DiffviewFolderName = { link = "Directory" },
		DiffviewFolderSign = { fg = theme.ui.special },
		DiffviewHash = { fg = theme.ui.fg_dim },
		DiffviewNormal = { link = "Normal" },
		DiffviewPrimary = { fg = theme.ui.special },
		DiffviewReference = { fg = theme.syn.keyword },
		DiffviewSecondary = { fg = theme.ui.fg_dim },
		DiffviewStatusAdded = { fg = theme.vcs.added },
		DiffviewStatusBroken = { fg = theme.diag.error },
		DiffviewStatusCopied = { fg = theme.diag.info },
		DiffviewStatusDeleted = { fg = theme.vcs.removed },
		DiffviewStatusIgnored = { fg = theme.ui.fg_dim },
		DiffviewStatusModified = { fg = theme.vcs.changed },
		DiffviewStatusRenamed = { fg = theme.diag.info },
		DiffviewStatusTypeChange = { fg = theme.diag.info },
		DiffviewStatusUnknown = { fg = theme.diag.error },
		DiffviewStatusUnmerged = { fg = theme.diag.warning },
		DiffviewStatusUntracked = { fg = theme.vcs.added },
	}
end

return M
