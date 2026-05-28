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
      scope = palette.bg4,
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
			number = palette.lavender, -- muted purple
			constant = palette.sky, -- muted blue
			identifier = palette.fg, -- brightest - variables
			parameter = palette.slate, -- medium gray
			fun = palette.stone, -- medium bright
			statement = palette.silver, -- bright gray
			keyword = palette.silver, -- bright gray
			operator = palette.slate, -- medium gray
			preproc = palette.slate, -- medium gray
			type = palette.sand, -- muted tan
			regex = palette.rose, -- muted pink
			deprecated = palette.fg_muted, -- very dim
			punct = palette.ash, -- subtle gray
			comment = palette.fg_dim, -- dimmed (styled with italic)
			special1 = palette.stone, -- medium bright
			special2 = palette.silver, -- bright gray
			tag = palette.lavender, -- HTML/XML tag names
			tag_attribute = palette.mist, -- HTML/XML attributes
			tag_delimiter = palette.slate, -- HTML/XML delimiters < > /
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
			palette.bg2, -- black
			palette.rose, -- red
			palette.sage, -- green
			palette.sand, -- yellow
			palette.sky, -- blue
			palette.lavender, -- magenta
			palette.mist, -- cyan
			palette.stone, -- white
			palette.bg3, -- bright black
			palette.rose, -- bright red
			palette.sage, -- bright green
			palette.sand, -- bright yellow
			palette.sky, -- bright blue
			palette.lavender, -- bright magenta
			palette.mist, -- bright cyan
			palette.silver, -- bright white
		},
		statusline = {
			normal = palette.silver, -- bright gray for normal mode
			insert = palette.sage, -- sage green for insert
			visual = palette.lavender, -- purple for visual
			replace = palette.rose, -- pink for replace
			command = palette.sand, -- tan for command
			other = palette.slate, -- gray for other modes
			bg = palette.bg1,
			bg_alt = palette.bg3,
			fg = palette.stone,
			fg_dim = palette.slate,
		},
		tabline = {
			bg = palette.bg1, -- tabline filler / inactive tab bg
			bg_active = palette.bg0, -- active tab bg (matches editor)
			fg_active = palette.slate, -- active/visible tab text
			fg_inactive = palette.fg_dim, -- hidden tab text
			fg_modified = palette.vcs_changed, -- modified buffer marker
			fg_special = palette.ash, -- separators, indicators
		},
	}
end

return M
