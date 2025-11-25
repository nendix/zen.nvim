---@class SyntaxElements
---@field string string
---@field variable string
---@field number string
---@field constant string
---@field identifier string
---@field parameter string
---@field fun string
---@field statement string
---@field keyword string
---@field operator string
---@field preproc string
---@field type string
---@field regex string
---@field deprecated string
---@field comment string
---@field punct string
---@field special1 string
---@field special2 string
---@field special3 string

---@class DiagnosticsElements
---@field error string
---@field ok string
---@field warning string
---@field info string
---@field hint string

---@class DiffElements
---@field add string
---@field delete string
---@field change string
---@field text string

---@class VCSElements
---@field added string
---@field removed string
---@field changed string

---@class FloatElements
---@field fg string
---@field bg string
---@field fg_border string
---@field bg_border string

---@class MenuElements
---@field bg string
---@field fg string
---@field fg_sel string
---@field bg_sel string
---@field bg_sbar string
---@field bg_thumb string

---@class UiElements
---@field none string
---@field fg string
---@field fg_dim string
---@field fg_reverse string
---@field bg_dim string
---@field bg string
---@field bg_p1 string
---@field bg_p2 string
---@field bg_gutter string
---@field special string
---@field indent_line string
---@field nontext string
---@field whitespace string
---@field bg_search string
---@field bg_visual string
---@field cursor_line_nr_fg string
---@field cursor_line_nr_active_fg string
---@field cursor_bg string
---@field cursor_fg string
---@field pmenu MenuElements
---@field float FloatElements

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term string[]

local M = {}

---@param palette PaletteColors
---@return ThemeColors
function M.theme(palette)
	return {
		ui = {
			none = "NONE",
			fg = palette.fg,
			fg_dim = palette.fg_dim,
			fg_reverse = palette.bg0,

			bg_dim = palette.bg0,
			bg = palette.bg0,
			bg_p1 = palette.bg1,
			bg_p2 = palette.bg2,

			special = palette.ash,
			indent_line = palette.bg2,
			nontext = palette.fg_muted,
			whitespace = palette.bg3,

			bg_visual = palette.bg3,
			bg_search = palette.bg4,

			cursor_line_nr_fg = palette.fg_muted,
			cursor_line_nr_active_fg = palette.fg,
			cursor_bg = palette.fg,
			cursor_fg = palette.bg0,

			pmenu = {
				fg = palette.fg,
				fg_sel = "NONE",
				bg = palette.bg1,
				bg_sel = palette.bg3,
				bg_thumb = palette.bg3,
				bg_sbar = palette.bg1,
			},

			float = {
				fg = palette.fg_dim,
				bg = palette.bg0,
				fg_border = palette.bg3,
				bg_border = palette.bg0,
			},
		},
		syn = {
			-- Syntax highlighting: grayscale hierarchy + subtle accent colors
			string = palette.sage, -- muted green
			variable = "NONE",
			number = palette.rose, -- muted pink
			constant = palette.sky, -- muted blue
			identifier = palette.fg, -- brightest - variables
			parameter = palette.slate, -- medium gray
			fun = palette.stone, -- medium bright
			statement = palette.silver, -- bright gray
			keyword = palette.silver, -- bright gray
			operator = palette.slate, -- medium gray
			preproc = palette.slate, -- medium gray
			type = palette.sand, -- muted tan
			regex = palette.mist, -- muted teal
			deprecated = palette.fg_muted, -- very dim
			punct = palette.ash, -- subtle gray
			comment = palette.fg_dim, -- dimmed (styled with italic)
			special1 = palette.stone, -- medium bright
			special2 = palette.silver, -- bright gray
			special3 = palette.stone, -- medium bright
		},
		diag = {
			error = palette.diag_error,
			ok = palette.diag_ok,
			warning = palette.diag_warn,
			info = palette.diag_info,
			hint = palette.diag_hint,
		},
		diff = {
			add = palette.diff_add,
			delete = palette.diff_delete,
			change = palette.diff_change,
			text = palette.diff_text,
		},
		vcs = {
			added = palette.vcs_added,
			removed = palette.vcs_removed,
			changed = palette.vcs_changed,
		},
		term = {
			palette.bg0, -- black
			palette.rose, -- red
			palette.sage, -- green
			palette.sand, -- yellow
			palette.sky, -- blue
			palette.lavender, -- magenta
			palette.mist, -- cyan
			palette.fg, -- white
			palette.bg0, -- bright black
			palette.rose, -- bright red
			palette.sage, -- bright green
			palette.sand, -- bright yellow
			palette.sky, -- bright blue
			palette.lavender, -- bright magenta
			palette.mist, -- bright cyan
			palette.fg, -- bright white
		},
	}
end

return M
