local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		LazyProgressTodo = { fg = theme.ui.nontext },
	}
end

return M
