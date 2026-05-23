local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		GitSignsAdd = { fg = theme.vcs.added, bg = theme.ui.none },
		GitSignsChange = { fg = theme.vcs.changed, bg = theme.ui.none },
		GitSignsDelete = { fg = theme.vcs.removed, bg = theme.ui.none },
		GitSignsChangedelete = { fg = theme.vcs.removed, bg = theme.ui.none },
		GitSignsTopdelete = { fg = theme.vcs.removed, bg = theme.ui.none },
	}
end

return M
