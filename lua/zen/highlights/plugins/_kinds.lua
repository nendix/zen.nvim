local M = {}

---@param theme table
---@return table<string, table>
local function specs(theme)
	return {
		Text = { fg = theme.ui.fg },
		Method = { link = "@function.method" },
		Function = { link = "Function" },
		Constructor = { link = "@constructor" },
		Field = { link = "@variable.member" },
		Variable = { fg = theme.ui.fg_dim },
		Class = { link = "Type" },
		Interface = { link = "Type" },
		Module = { link = "@module" },
		Property = { link = "@property" },
		Unit = { link = "Number" },
		Value = { link = "String" },
		Enum = { link = "Type" },
		Keyword = { link = "Keyword" },
		Snippet = { link = "Special" },
		Color = { link = "Special" },
		File = { link = "Directory" },
		Reference = { link = "Special" },
		Folder = { link = "Directory" },
		EnumMember = { link = "Constant" },
		Constant = { link = "Constant" },
		Struct = { link = "Type" },
		Event = { link = "Type" },
		Operator = { link = "Operator" },
		TypeParameter = { link = "Type" },
		Copilot = { link = "String" },
	}
end

---@param prefix string
---@param theme table
---@return table
function M.with_prefix(prefix, theme)
	local out = {}
	for kind, spec in pairs(specs(theme)) do
		out[prefix .. kind] = spec
	end
	return out
end

return M
