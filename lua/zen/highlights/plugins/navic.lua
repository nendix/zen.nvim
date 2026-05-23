local M = {}

---@param colors table
function M.setup(colors)
	local theme = colors.theme
	return {
		-- Navic
		NavicText = { fg = theme.ui.fg_dim },
		NavicSeparator = { fg = theme.ui.nontext },
		NavicIconsFile = { link = "Directory" },
		NavicIconsModule = { link = "@module" },
		NavicIconsNamespace = { link = "@module" },
		NavicIconsPackage = { link = "@module" },
		NavicIconsClass = { link = "Type" },
		NavicIconsMethod = { link = "Function" },
		NavicIconsProperty = { link = "@property" },
		NavicIconsField = { link = "@variable.member" },
		NavicIconsConstructor = { link = "@constructor" },
		NavicIconsEnum = { link = "Type" },
		NavicIconsInterface = { link = "Type" },
		NavicIconsFunction = { link = "Function" },
		NavicIconsVariable = { fg = theme.ui.fg_dim },
		NavicIconsConstant = { link = "Constant" },
		NavicIconsString = { link = "String" },
		NavicIconsNumber = { link = "Number" },
		NavicIconsBoolean = { link = "Boolean" },
		NavicIconsArray = { link = "Type" },
		NavicIconsObject = { link = "Type" },
		NavicIconsKey = { link = "Keyword" },
		NavicIconsNull = { link = "Constant" },
		NavicIconsEnumMember = { link = "Constant" },
		NavicIconsStruct = { link = "Type" },
		NavicIconsEvent = { link = "Type" },
		NavicIconsOperator = { link = "Operator" },
		NavicIconsTypeParameter = { link = "Type" },

		-- Barbecue
		BarbecueSeparator = { fg = theme.ui.nontext },
		BarbecueModified = { fg = theme.vcs.changed },
		BarbecueDirname = { fg = theme.ui.fg_dim },
		BarbecueBasename = { fg = theme.ui.fg },
		BarbecueContext = { fg = theme.ui.fg_dim },
	}
end

return M
