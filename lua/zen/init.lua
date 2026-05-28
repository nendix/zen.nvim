local M = {}

M.config = {
	variant = "auto", -- "dark", "light", or "auto" (follows vim.o.background)
	undercurl = true,
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = {},
	typeStyle = {},
	transparent = false,
	dimInactive = false,
	terminalColors = true,
	colors = { theme = {}, palette = {} },
	---@type fun(colors: table): table<string, table>
	overrides = function()
		return {}
	end,
	compile = false,
}

local function check_config(config)
	return config ~= nil
end

---@param config? ZenConfig
function M.setup(config)
	if check_config(config) then
		M.config = vim.tbl_deep_extend("force", M.config, config or {})
	end
end

--- Load the colorscheme
function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "zen"
	vim.o.termguicolors = true

	local augroup = vim.api.nvim_create_augroup("ZenBackground", { clear = true })
	if M.config.variant == "auto" then
		vim.api.nvim_create_autocmd("OptionSet", {
			group = augroup,
			pattern = "background",
			callback = M.load,
		})
	end

	if M.config.compile then
		if M.config.variant == "auto" then
			vim.notify("Zen: compile not supported with variant='auto', loading without compile", vim.log.levels.WARN)
		else
			local utils = require("zen.utils")
			if utils.load_compiled() then
				return
			end
			M.compile()
			utils.load_compiled()
			return
		end
	end

	local colors = require("zen.colors").setup({ colors = M.config.colors, variant = M.config.variant })
	local highlights = require("zen.highlights").setup(colors, M.config)
	require("zen.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
	vim.api.nvim_exec_autocmds("ColorScheme", { modeline = false })
end

--- Compile the colorscheme for faster loading
---@return boolean compiled
function M.compile()
	if M.config.variant == "auto" then
		vim.notify("Zen: compile not supported with variant='auto'", vim.log.levels.WARN)
		return false
	end
	local colors = require("zen.colors").setup({ colors = M.config.colors, variant = M.config.variant })
	local highlights = require("zen.highlights").setup(colors, M.config)
	require("zen.utils").compile(highlights, M.config.terminalColors and colors.theme.term or {})
	return true
end

vim.api.nvim_create_user_command("ZenCompile", function()
	for mod, _ in pairs(package.loaded) do
		if mod:match("^zen%.") then
			package.loaded[mod] = nil
		end
	end
	if M.compile() then
		vim.notify("Zen: compiled successfully!", vim.log.levels.INFO)
	end
	M.load()
	vim.api.nvim_exec_autocmds("ColorScheme", { modeline = false })
end, {})

return M
