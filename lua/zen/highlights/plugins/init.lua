local M = {}

local modules = {
	"gitsigns",
	"neogit",
	"treesitter_context",
	"telescope",
	"nvim_tree",
	"neo_tree",
	"notify",
	"cmp",
	"blink_cmp",
	"ibl",
	"lazy",
	"trouble",
	"mini",
	"snacks",
	"bufferline",
	"health",
	"which_key",
	"noice",
	"flash",
	"dap",
	"diffview",
	"alpha",
	"mason",
	"navic",
}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local groups = {}
	for _, name in ipairs(modules) do
		local mod = require("zen.highlights.plugins." .. name)
		for hl, spec in pairs(mod.setup(colors, config)) do
			groups[hl] = spec
		end
	end
	return groups
end

return M
