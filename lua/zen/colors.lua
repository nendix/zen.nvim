---@class PaletteColors
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field fg string
---@field fg_dim string
---@field fg_muted string
---@field silver string
---@field stone string
---@field slate string
---@field ash string
---@field sage string
---@field sand string
---@field rose string
---@field lavender string
---@field sky string
---@field mist string
---@field diag_error string
---@field diag_warn string
---@field diag_info string
---@field diag_hint string
---@field diag_ok string
---@field diff_add string
---@field diff_delete string
---@field diff_change string
---@field diff_text string
---@field vcs_added string
---@field vcs_removed string
---@field vcs_changed string

local palette_dark = {
	-- Background colors
	bg0 = "#121212", -- Deepest background
	bg1 = "#1a1a1a", -- UI elements
	bg2 = "#222222", -- Cursor line, folded
	bg3 = "#323232", -- Visual selection
	bg4 = "#424242", -- Lighter UI elements

	-- Foreground colors
	fg = "#e0e0e0", -- Main text
	fg_dim = "#767676", -- Dimmed text, comments
	fg_muted = "#626262", -- Very muted, line numbers inactive

	-- Syntax colors
	silver = "#d0d0d0", -- Keywords, statements
	stone = "#b2b2b2", -- Functions
	slate = "#9e9e9e", -- Operators, parameters, preproc
	ash = "#8a8a8a", -- Punctuation

	sage = "#a0b9a0", -- Green - strings
	sand = "#b9b0a0", -- Orange/warm - types
	rose = "#b9a0a0", -- Pink - regex
	sky = "#a0a0b9", -- Blue - constants
	lavender = "#b0a0b9", -- Purple - numbers
	mist = "#a0b0b0", -- Cyan

	-- Diagnostics colors
	diag_error = "#c07070", -- Muted red
	diag_warn = "#a09060", -- Muted yellow
	diag_info = "#6090a0", -- Muted blue
	diag_hint = "#70a090", -- Muted teal
	diag_ok = "#70a070", -- Muted green

	-- Diff colors
	diff_add = "#1a2a1a", -- Subtle green
	diff_delete = "#2a1a1a", -- Subtle red
	diff_change = "#2a2a1a", -- Subtle yellow
	diff_text = "#3a3020", -- Emphasized yellow/orange for changed text

	-- VCS colors
	vcs_added = "#80a080",
	vcs_removed = "#c08080",
	vcs_changed = "#a0a060",
}

local palette_light = {
	-- Background colors
	bg0 = "#e0e0e0", -- Lightest background
	bg1 = "#d6d6d6", -- UI elements
	bg2 = "#cccccc", -- Cursor line, folded
	bg3 = "#c0c0c0", -- Visual selection
	bg4 = "#b0b0b0", -- Darker UI elements

	-- Foreground colors
	fg = "#1a1a1a", -- Main text
	fg_dim = "#585858", -- Dimmed text, comments
	fg_muted = "#6e6e6e", -- Very muted, line numbers inactive

	-- Syntax colors (darker for light background)
	silver = "#2a2a2a", -- Keywords, statements
	stone = "#3a3a3a", -- Functions
	slate = "#4a4a4a", -- Operators, parameters, preproc
	ash = "#5a5a5a", -- Punctuation

	sage = "#3a6a3a", -- Green - strings
	sand = "#6a5a3a", -- Orange/warm - types
	rose = "#6a3a4a", -- Pink - regex
	sky = "#3a4a6a", -- Blue - constants
	lavender = "#5a3a6a", -- Purple - numbers
	mist = "#3a5a5a", -- Cyan

	-- Diagnostics colors (more saturated for light bg)
	diag_error = "#b03030", -- Red
	diag_warn = "#806010", -- Yellow/orange
	diag_info = "#1050a0", -- Blue
	diag_hint = "#107050", -- Teal
	diag_ok = "#307030", -- Green

	-- Diff colors (light versions)
	diff_add = "#c0d8c0", -- Subtle green
	diff_delete = "#d8c0c0", -- Subtle red
	diff_change = "#d8d8c0", -- Subtle yellow
	diff_text = "#c0c090", -- Emphasized yellow

	-- VCS colors
	vcs_added = "#307030",
	vcs_removed = "#903030",
	vcs_changed = "#705010",
}

local palettes = {
	dark = palette_dark,
	light = palette_light,
}

local M = {}

--- Get the current colors (palette and theme)
--- Can be called after colorscheme is loaded to access colors in user config
---@return { theme: table, palette: PaletteColors }
function M.get()
	return M.setup()
end

---@param opts? { colors?: table, variant?: string }
---@return { theme: table, palette: PaletteColors }
function M.setup(opts)
	opts = opts or {}
	local zen = require("zen")
	local override_colors = opts.colors or zen.config.colors
	local variant = opts.variant or zen.config.variant or "dark"

	-- Select base palette based on variant
	local base_palette = palettes[variant] or palettes.dark

	-- Merge palette with overrides
	local updated_palette = vim.tbl_extend("force", base_palette, override_colors.palette or {})

	-- Generate theme colors
	local theme_colors = require("zen.themes").theme(updated_palette)

	-- Apply theme overrides
	local theme_overrides = override_colors.theme or {}
	local updated_theme = vim.tbl_deep_extend("force", theme_colors, theme_overrides)

	return {
		theme = updated_theme,
		palette = updated_palette,
	}
end

return M
