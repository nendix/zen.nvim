local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	local theme = colors.theme
	config = config or require("zen").config

	return {
		-- ColorColumn: Used for the columns set with 'colorcolumn'
		ColorColumn = { bg = theme.ui.bg_p1 },
		-- Conceal: Placeholder characters substituted for concealed text
		Conceal = { fg = theme.ui.special },
		-- CurSearch: Used for highlighting a search pattern under the cursor
		CurSearch = { fg = theme.ui.fg, bg = theme.ui.bg_search },
		-- Cursor: Character under the cursor
		Cursor = { fg = theme.ui.cursor_fg, bg = theme.ui.cursor_bg },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorColumn = { link = "CursorLine" },
		-- CursorLine: Screen-line at the cursor
		CursorLine = { bg = theme.ui.bg_p2 },
		-- Directory: Directory names
		Directory = { fg = theme.syn.fun },
		-- DiffAdd/Change/Delete/Text: Diff mode highlighting
		DiffAdd = { bg = theme.diff.add },
		DiffChange = { bg = theme.diff.change },
		DiffDelete = { fg = theme.vcs.removed, bg = theme.diff.delete },
		DiffText = { bg = theme.diff.text },
		-- EndOfBuffer: Filler lines (~) after the end of the buffer
		EndOfBuffer = { fg = theme.ui.bg },
		-- ErrorMsg: Error messages on the command line
		ErrorMsg = { fg = theme.diag.error },
		-- WinSeparator: Separators between window splits
		WinSeparator = { fg = theme.ui.bg_p1, bg = config.dimInactive and theme.ui.bg_dim or theme.ui.none },
		VertSplit = { link = "WinSeparator" },
		-- Folded: Line used for closed folds
		Folded = { fg = theme.ui.special, bg = theme.ui.bg_p1 },
		-- FoldColumn
		FoldColumn = { fg = theme.ui.nontext, bg = theme.ui.none },
		-- SignColumn: Column where signs are displayed
		SignColumn = { fg = theme.ui.special, bg = theme.ui.none },
		-- IncSearch: 'incsearch' highlighting
		IncSearch = { fg = theme.ui.fg_reverse, bg = theme.diag.warning },
		-- Substitute: |:substitute| replacement text highlighting
		Substitute = { fg = theme.ui.fg, bg = theme.vcs.removed },
		-- LineNr: Line number
		LineNr = { fg = theme.ui.cursor_line_nr_fg, bg = theme.ui.none },
		-- CursorLineNr: Like LineNr when 'cursorline' is set
		CursorLineNr = { fg = theme.ui.cursor_line_nr_active_fg, bg = theme.ui.none },
		-- MatchParen: Character under the cursor if it is a paired bracket
		MatchParen = { fg = theme.diag.warning },
		-- ModeMsg: 'showmode' message
		ModeMsg = { fg = theme.ui.fg_dim },
		-- MsgArea: Area for messages and cmdline
		MsgArea = vim.o.cmdheight == 0 and { link = "StatusLine" } or { fg = theme.ui.fg_dim },
		-- MsgSeparator: Separator for scrolled messages
		MsgSeparator = { bg = vim.o.cmdheight == 0 and theme.ui.bg or theme.ui.bg_p1 },
		-- MoreMsg: |more-prompt|
		MoreMsg = { fg = theme.diag.info },
		-- NonText: '@' at the end of the window, 'showbreak' characters, etc.
		NonText = { fg = theme.ui.nontext },
		-- Normal: Normal text
		Normal = { fg = theme.ui.fg, bg = config.transparent and theme.ui.none or theme.ui.bg },
		-- NormalFloat: Normal text in floating windows
		NormalFloat = { fg = theme.ui.float.fg, bg = config.transparent and theme.ui.none or theme.ui.float.bg },
		-- FloatBorder: Border of floating windows
		FloatBorder = {
			fg = theme.ui.float.fg_border,
			bg = config.transparent and theme.ui.none or theme.ui.float.bg_border,
		},
		-- FloatTitle: Title of floating windows
		FloatTitle = {
			fg = theme.ui.special,
			bg = config.transparent and theme.ui.none or theme.ui.float.bg_border,
		},
		-- FloatFooter: Footer of floating windows
		FloatFooter = { fg = theme.ui.nontext, bg = config.transparent and theme.ui.none or theme.ui.float.bg_border },
		-- NormalNC: Normal text in non-current windows
		NormalNC = config.dimInactive and { fg = theme.ui.fg_dim, bg = theme.ui.bg_dim } or { link = "Normal" },
		-- Pmenu: Popup menu: Normal item
		Pmenu = { fg = theme.ui.pmenu.fg, bg = config.transparent and theme.ui.none or theme.ui.pmenu.bg },
		-- PmenuSel: Popup menu: Selected item
		PmenuSel = { fg = theme.ui.pmenu.fg_sel, bg = theme.ui.pmenu.bg_sel },
		-- PmenuKind: Popup menu: Normal item "kind"
		PmenuKind = { fg = theme.ui.fg_dim, bg = config.transparent and theme.ui.none or theme.ui.pmenu.bg },
		-- PmenuKindSel: Popup menu: Selected item "kind"
		PmenuKindSel = { fg = theme.ui.fg_dim, bg = theme.ui.pmenu.bg_sel },
		-- PmenuExtra: Popup menu: Normal item "extra text"
		PmenuExtra = { fg = theme.ui.special, bg = theme.ui.pmenu.bg },
		-- PmenuExtraSel: Popup menu: Selected item "extra text"
		PmenuExtraSel = { fg = theme.ui.special, bg = theme.ui.pmenu.bg_sel },
		-- PmenuSbar: Popup menu: Scrollbar
		PmenuSbar = { bg = config.transparent and theme.ui.none or theme.ui.pmenu.bg_sbar },
		-- PmenuThumb: Popup menu: Thumb of the scrollbar
		PmenuThumb = { bg = theme.ui.pmenu.bg_thumb },
		-- Question: |hit-enter| prompt and yes/no questions
		Question = { link = "MoreMsg" },
		-- QuickFixLine: Current quickfix item in the quickfix window
		QuickFixLine = { bg = config.transparent and theme.ui.none or theme.ui.bg_p1 },
		-- Search: Last search pattern highlighting
		Search = { fg = theme.ui.fg, bg = theme.ui.bg_search },
		-- SpecialKey: Unprintable characters
		SpecialKey = { fg = theme.ui.special },
		-- SpellBad/Cap/Local/Rare: Spelling highlights
		SpellBad = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.error },
		SpellCap = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.warning },
		SpellLocal = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.warning },
		SpellRare = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.warning },
		-- StatusLine: Status line of current window
		StatusLine = { fg = theme.ui.fg_dim, bg = theme.ui.none },
		-- StatusLineNC: Status lines of not-current windows
		StatusLineNC = { fg = theme.ui.nontext, bg = theme.ui.none },
		-- TabLine: Tab pages line, not active tab page label
		TabLine = { bg = theme.ui.none, fg = theme.ui.special },
		-- TabLineFill: Tab pages line, where there are no labels
		TabLineFill = { bg = theme.ui.none },
		-- TabLineSel: Tab pages line, active tab page label
		TabLineSel = { fg = theme.ui.fg_dim, bg = not config.transparent and theme.ui.bg_p1 or theme.ui.none },
		-- Title: Titles for output from ":set all", ":autocmd" etc.
		Title = { fg = theme.syn.fun },
		-- Visual: Visual mode selection
		Visual = { bg = theme.ui.bg_visual },
		VisualNOS = { link = "Visual" },
		-- WarningMsg: Warning messages
		WarningMsg = { fg = theme.diag.warning },
		-- Whitespace: "nbsp", "space", "tab", etc. in 'listchars'
		Whitespace = { fg = theme.ui.whitespace },
		-- WildMenu: Current match in 'wildmenu' completion
		WildMenu = { link = "Pmenu" },
		-- WinBar: Window bar of current window
		WinBar = { fg = theme.ui.fg_dim, bg = theme.ui.none },
		-- WinBarNC: Window bar of not-current windows
		WinBarNC = { fg = theme.ui.fg_dim, bg = config.dimInactive and theme.ui.bg_dim or theme.ui.none },

		-- Debug
		debugPC = { bg = theme.diff.delete },
		debugBreakpoint = { fg = theme.syn.special1, bg = theme.ui.none },

		-- LSP References
		LspReferenceText = { bg = theme.ui.bg_p2 },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { bg = theme.ui.bg_p2, underline = true },

		-- Diagnostics
		DiagnosticError = { fg = theme.diag.error },
		DiagnosticWarn = { fg = theme.diag.warning },
		DiagnosticInfo = { fg = theme.diag.info },
		DiagnosticHint = { fg = theme.diag.hint },
		DiagnosticOk = { fg = theme.diag.ok },

		DiagnosticFloatingError = { fg = theme.diag.error },
		DiagnosticFloatingWarn = { fg = theme.diag.warning },
		DiagnosticFloatingInfo = { fg = theme.diag.info },
		DiagnosticFloatingHint = { fg = theme.diag.hint },
		DiagnosticFloatingOk = { fg = theme.diag.ok },

		DiagnosticSignError = { fg = theme.diag.error, bg = theme.ui.none },
		DiagnosticSignWarn = { fg = theme.diag.warning, bg = theme.ui.none },
		DiagnosticSignInfo = { fg = theme.diag.info, bg = theme.ui.none },
		DiagnosticSignHint = { fg = theme.diag.hint, bg = theme.ui.none },

		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

		DiagnosticUnderlineError = {
			undercurl = config.undercurl,
			underline = not config.undercurl,
			sp = theme.diag.error,
		},
		DiagnosticUnderlineWarn = {
			undercurl = config.undercurl,
			underline = not config.undercurl,
			sp = theme.diag.warning,
		},
		DiagnosticUnderlineInfo = {
			undercurl = config.undercurl,
			underline = not config.undercurl,
			sp = theme.diag.info,
		},
		DiagnosticUnderlineHint = {
			undercurl = config.undercurl,
			underline = not config.undercurl,
			sp = theme.diag.hint,
		},

		LspSignatureActiveParameter = { fg = theme.diag.warning },
		LspCodeLens = { fg = theme.syn.comment },

		-- VCS/Diff
		diffAdded = { fg = theme.vcs.added },
		diffRemoved = { fg = theme.vcs.removed },
		diffDeleted = { fg = theme.vcs.removed },
		diffChanged = { fg = theme.vcs.changed },
		diffOldFile = { fg = theme.vcs.removed },
		diffNewFile = { fg = theme.vcs.added },
	}
end

return M
