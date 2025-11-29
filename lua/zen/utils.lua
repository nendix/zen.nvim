local M = {}
local PATH_SEP = vim.uv.os_uname().version:match("Windows") and "\\" or "/"

local function get_compiled_path()
	return table.concat({ vim.fn.stdpath("state"), "zen", "compiled.lua" }, PATH_SEP)
end

---@param highlights table
---@param termcolors table
function M.compile(highlights, termcolors)
	vim.uv.fs_mkdir(vim.fn.stdpath("state") .. PATH_SEP .. "zen", 448)

	local fname = get_compiled_path()
	local file, err = io.open(fname, "wb")
	if not file or err then
		vim.notify("Zen: Error writing " .. fname .. ":\n" .. err, vim.log.levels.ERROR)
		return
	end

	local lines = {
		"require'zen'.compiled = string.dump(function()",
		"local g = vim.g",
		"local nvim_set_hl = vim.api.nvim_set_hl",
	}
	local inspect = vim.inspect
	for hl, spec in pairs(highlights) do
		if next(spec) then
			table.insert(lines, ('nvim_set_hl(0, "%s", %s)'):format(hl, inspect(spec):gsub("%s", "")))
		end
	end
	for i, tcolor in ipairs(termcolors) do
		table.insert(lines, ('g["terminal_color_%d"] = "%s"'):format(i - 1, tcolor))
	end
	table.insert(lines, "end)")

	local blob = table.concat(lines, "\n")
	assert(loadstring(blob, "=(compile)"))()
	file:write(require("zen").compiled)
	file:close()
end

---@return boolean
function M.load_compiled()
	local f = loadfile(get_compiled_path())
	if f then
		f()
		return true
	end
	return false
end

return M
