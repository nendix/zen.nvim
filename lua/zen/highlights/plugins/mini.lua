local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme
	local function tbg(c) return config.transparent and theme.ui.none or c end
	return {
		-- mini.clue
		MiniClueBorder = { link = "FloatBorder" },
		MiniClueDescGroup = { fg = theme.syn.keyword },
		MiniClueDescSingle = { fg = theme.ui.fg },
		MiniClueNextKey = { fg = theme.syn.fun },
		MiniClueNextKeyWithPostkeys = { fg = theme.syn.fun, bold = true },
		MiniClueSeparator = { fg = theme.ui.nontext },
		MiniClueTitle = { fg = theme.ui.special, bold = true },

		-- mini.completion
		MiniCompletionActiveParameter = { link = "LspSignatureActiveParameter" },

		-- mini.cursorword
		MiniCursorword = { underline = true },
		MiniCursorwordCurrent = { underline = true },

		-- mini.deps
		MiniDepsChangeAdded = { fg = theme.vcs.added },
		MiniDepsChangeRemoved = { fg = theme.vcs.removed },
		MiniDepsHint = { fg = theme.diag.hint },
		MiniDepsInfo = { fg = theme.diag.info },
		MiniDepsMsgBreaking = { fg = theme.diag.warning },
		MiniDepsPlaceholder = { fg = theme.ui.fg_dim },
		MiniDepsTitle = { fg = theme.ui.special, bold = true },
		MiniDepsTitleError = { fg = theme.diag.error, bold = true },
		MiniDepsTitleSame = { fg = theme.ui.fg_dim, bold = true },
		MiniDepsTitleUpdate = { fg = theme.vcs.changed, bold = true },

		-- mini.diff
		MiniDiffOverAdd = { bg = theme.diff.add },
		MiniDiffOverChange = { bg = theme.diff.change },
		MiniDiffOverContext = { bg = theme.ui.bg_p1 },
		MiniDiffOverDelete = { bg = theme.diff.delete },
		MiniDiffSignAdd = { fg = theme.vcs.added, bg = theme.ui.none },
		MiniDiffSignChange = { fg = theme.vcs.changed, bg = theme.ui.none },
		MiniDiffSignDelete = { fg = theme.vcs.removed, bg = theme.ui.none },

		-- mini.files
		MiniFilesBorder = { link = "FloatBorder" },
		MiniFilesBorderModified = {
			fg = theme.vcs.changed,
			bg = tbg(theme.ui.float.bg),
		},
		MiniFilesCursorLine = { link = "CursorLine" },
		MiniFilesDirectory = { link = "Directory" },
		MiniFilesFile = { fg = theme.ui.fg },
		MiniFilesNormal = { link = "NormalFloat" },
		MiniFilesTitle = { fg = theme.ui.fg_dim },
		MiniFilesTitleFocused = { fg = theme.ui.special, bold = true },

		-- mini.git
		MiniGitStatusM = { fg = theme.vcs.changed },
		MiniGitStatusA = { fg = theme.vcs.added },
		MiniGitStatusD = { fg = theme.vcs.removed },
		MiniGitStatusR = { fg = theme.diag.info },
		MiniGitStatusC = { fg = theme.diag.info },
		MiniGitStatusU = { fg = theme.diag.warning },
		MiniGitStatusT = { fg = theme.diag.info },
		MiniGitStatusUntracked = { fg = theme.ui.fg_dim },
		MiniGitStatusIgnored = { fg = theme.ui.fg_dim },

		-- mini.hipatterns
		MiniHipatternsFixme = { fg = theme.ui.bg, bg = theme.diag.error, bold = true },
		MiniHipatternsHack = { fg = theme.ui.bg, bg = theme.diag.warning, bold = true },
		MiniHipatternsNote = { fg = theme.ui.bg, bg = theme.diag.info, bold = true },
		MiniHipatternsTodo = { fg = theme.ui.bg, bg = theme.diag.hint, bold = true },

		-- mini.icons
		MiniIconsAzure = { fg = theme.syn.constant },
		MiniIconsBlue = { fg = theme.syn.constant },
		MiniIconsCyan = { fg = theme.syn.tag_attribute },
		MiniIconsGreen = { fg = theme.syn.string },
		MiniIconsGrey = { fg = theme.ui.fg_dim },
		MiniIconsOrange = { fg = theme.syn.type },
		MiniIconsPurple = { fg = theme.syn.number },
		MiniIconsRed = { fg = theme.syn.regex },
		MiniIconsYellow = { fg = theme.syn.type },

		-- mini.indentscope
		MiniIndentscopeSymbol = { fg = theme.syn.special1 },
		MiniIndentscopePrefix = { nocombine = true },

		-- mini.jump
		MiniJump = { link = "SpellRare" },

		-- mini.jump2d
		MiniJump2dDim = { fg = theme.ui.fg_dim },
		MiniJump2dSpot = { fg = theme.ui.fg, bg = theme.ui.bg_search, bold = true },
		MiniJump2dSpotAhead = { fg = theme.ui.fg_dim, bg = theme.ui.bg_search },
		MiniJump2dSpotUnique = { fg = theme.ui.fg, bg = theme.ui.bg_search, bold = true, underline = true },

		-- mini.map
		MiniMapNormal = { link = "NormalFloat" },
		MiniMapSymbolCount = { fg = theme.ui.special },
		MiniMapSymbolLine = { fg = theme.syn.keyword },
		MiniMapSymbolView = { fg = theme.ui.fg_dim },

		-- mini.notify
		MiniNotifyBorder = { link = "FloatBorder" },
		MiniNotifyNormal = { link = "NormalFloat" },
		MiniNotifyTitle = { fg = theme.ui.special, bold = true },
		MiniNotifyLvlERROR = { fg = theme.diag.error },
		MiniNotifyLvlWARN = { fg = theme.diag.warning },
		MiniNotifyLvlINFO = { fg = theme.diag.info },
		MiniNotifyLvlDEBUG = { fg = theme.ui.fg_dim },
		MiniNotifyLvlTRACE = { fg = theme.ui.fg_dim },
		MiniNotifyLvlOFF = { fg = theme.ui.fg_dim },

		-- mini.operators
		MiniOperatorsExchangeFrom = { link = "IncSearch" },

		-- mini.pick
		MiniPickBorder = { link = "FloatBorder" },
		MiniPickBorderBusy = { fg = theme.diag.warning, bg = tbg(theme.ui.float.bg) },
		MiniPickBorderText = { fg = theme.ui.special, bg = tbg(theme.ui.float.bg) },
		MiniPickCursor = { blend = 100, nocombine = true },
		MiniPickHeader = { fg = theme.ui.special },
		MiniPickIconDirectory = { link = "Directory" },
		MiniPickIconFile = { fg = theme.ui.fg },
		MiniPickMatchCurrent = { link = "CursorLine" },
		MiniPickMatchMarked = { bg = theme.diff.change },
		MiniPickMatchRanges = { fg = theme.syn.fun },
		MiniPickNormal = { link = "NormalFloat" },
		MiniPickPreviewLine = { link = "CursorLine" },
		MiniPickPreviewRegion = { link = "IncSearch" },
		MiniPickPrompt = { fg = theme.ui.fg, bg = tbg(theme.ui.float.bg) },
		MiniPickPromptCaret = { fg = theme.ui.fg },
		MiniPickPromptPrefix = { fg = theme.ui.special },

		-- mini.starter
		MiniStarterCurrent = { nocombine = true },
		MiniStarterFooter = { fg = theme.ui.fg_dim, italic = true },
		MiniStarterHeader = { fg = theme.ui.special, bold = true },
		MiniStarterInactive = { fg = theme.ui.fg_dim },
		MiniStarterItem = { fg = theme.ui.fg },
		MiniStarterItemBullet = { fg = theme.ui.nontext },
		MiniStarterItemPrefix = { fg = theme.syn.keyword },
		MiniStarterQuery = { fg = theme.syn.fun, bold = true },
		MiniStarterSection = { fg = theme.ui.special },

		-- mini.statusline
		MiniStatuslineModeNormal = { fg = theme.statusline.bg, bg = theme.statusline.normal },
		MiniStatuslineModeInsert = { fg = theme.statusline.bg, bg = theme.statusline.insert },
		MiniStatuslineModeVisual = { fg = theme.statusline.bg, bg = theme.statusline.visual },
		MiniStatuslineModeReplace = { fg = theme.statusline.bg, bg = theme.statusline.replace },
		MiniStatuslineModeCommand = { fg = theme.statusline.bg, bg = theme.statusline.command },
		MiniStatuslineModeOther = { fg = theme.statusline.bg, bg = theme.statusline.other },
		MiniStatuslineDevinfo = { fg = theme.statusline.fg, bg = theme.statusline.bg_alt },
		MiniStatuslineFileinfo = { fg = theme.statusline.fg, bg = theme.statusline.bg_alt },
		MiniStatuslineFilename = {
			fg = theme.statusline.fg_dim,
			bg = tbg(theme.statusline.bg),
		},
		MiniStatuslineInactive = {
			fg = theme.statusline.fg_dim,
			bg = tbg(theme.statusline.bg),
			italic = true,
		},

		-- mini.surround
		MiniSurround = { link = "IncSearch" },

		-- mini.tabline
		MiniTablineCurrent = { fg = theme.tabline.fg_active, bg = theme.tabline.bg_active, bold = true },
		MiniTablineFill = { bg = theme.tabline.bg },
		MiniTablineHidden = { fg = theme.tabline.fg_inactive, bg = theme.tabline.bg },
		MiniTablineModifiedCurrent = { fg = theme.tabline.fg_modified, bg = theme.tabline.bg_active, bold = true },
		MiniTablineModifiedHidden = { fg = theme.tabline.fg_modified, bg = theme.tabline.bg },
		MiniTablineModifiedVisible = { fg = theme.tabline.fg_modified, bg = theme.tabline.bg },
		MiniTablineTabpagesection = { fg = theme.tabline.bg_active, bg = theme.statusline.normal, bold = true },
		MiniTablineTrunc = { fg = theme.tabline.fg_inactive, bg = theme.tabline.bg },
		MiniTablineVisible = { fg = theme.tabline.fg_active, bg = theme.tabline.bg },

		-- mini.test
		MiniTestEmphasis = { bold = true },
		MiniTestFail = { fg = theme.diag.error, bold = true },
		MiniTestPass = { fg = theme.diag.ok, bold = true },

		-- mini.trailspace
		MiniTrailspace = { bg = theme.vcs.removed },
	}
end

return M
