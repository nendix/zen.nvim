local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
	config = config or require("zen").config
	local theme = colors.theme

	return {
		-- LSP Semantic Token Types
		["@lsp.type.class"] = { link = "Type" },
		["@lsp.type.comment"] = { link = "Comment" },
		["@lsp.type.decorator"] = { link = "PreProc" },
		["@lsp.type.enum"] = { link = "Type" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.event"] = { link = "Type" },
		["@lsp.type.function"] = { link = "Function" },
		["@lsp.type.interface"] = { link = "Type" },
		["@lsp.type.keyword"] = { link = "Keyword" },
		["@lsp.type.macro"] = { link = "Macro" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.modifier"] = { link = "Keyword" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.number"] = { link = "Number" },
		["@lsp.type.operator"] = { link = "Operator" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.regexp"] = { link = "@string.regexp" },
		["@lsp.type.string"] = { link = "String" },
		["@lsp.type.struct"] = { link = "Type" },
		["@lsp.type.type"] = { link = "Type" },
		["@lsp.type.typeParameter"] = { link = "Type" },
		["@lsp.type.variable"] = { fg = "NONE" },

		-- LSP Semantic Token Modifiers
		["@lsp.mod.abstract"] = { italic = true },
		["@lsp.mod.async"] = { italic = true },
		["@lsp.mod.declaration"] = {},
		["@lsp.mod.defaultLibrary"] = { link = "Special" },
		["@lsp.mod.definition"] = {},
		["@lsp.mod.deprecated"] = { strikethrough = true },
		["@lsp.mod.documentation"] = { link = "Special" },
		["@lsp.mod.modification"] = {},
		["@lsp.mod.readonly"] = { link = "Constant" },
		["@lsp.mod.static"] = { italic = true },
		["@lsp.mod.typeHint"] = { link = "Type" },

		-- LSP Semantic Token Type + Modifier combinations
		["@lsp.typemod.class.declaration"] = { link = "Type" },
		["@lsp.typemod.class.defaultLibrary"] = { link = "Type" },
		["@lsp.typemod.enum.declaration"] = { link = "Type" },
		["@lsp.typemod.enum.defaultLibrary"] = { link = "Type" },
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "Constant" },
		["@lsp.typemod.function.builtin"] = { link = "@function.builtin" },
		["@lsp.typemod.function.declaration"] = { link = "Function" },
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.function.readonly"] = { fg = theme.syn.fun },
		["@lsp.typemod.interface.declaration"] = { link = "Type" },
		["@lsp.typemod.keyword.documentation"] = { link = "Special" },
		["@lsp.typemod.method.declaration"] = { link = "Function" },
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.operator.controlFlow"] = { link = "@keyword.exception" },
		["@lsp.typemod.operator.injected"] = { link = "Operator" },
		["@lsp.typemod.parameter.declaration"] = { link = "@variable.parameter" },
		["@lsp.typemod.property.declaration"] = { link = "@property" },
		["@lsp.typemod.property.defaultLibrary"] = { link = "@property" },
		["@lsp.typemod.property.readonly"] = { link = "Constant" },
		["@lsp.typemod.string.injected"] = { link = "String" },
		["@lsp.typemod.struct.declaration"] = { link = "Type" },
		["@lsp.typemod.type.declaration"] = { link = "Type" },
		["@lsp.typemod.type.defaultLibrary"] = { link = "Type" },
		["@lsp.typemod.typeParameter.declaration"] = { link = "Type" },
		["@lsp.typemod.variable.callable"] = { link = "Function" },
		["@lsp.typemod.variable.constant"] = { link = "Constant" },
		["@lsp.typemod.variable.declaration"] = {},
		["@lsp.typemod.variable.defaultLibrary"] = { link = "Special" },
		["@lsp.typemod.variable.global"] = { link = "Constant" },
		["@lsp.typemod.variable.injected"] = { link = "@variable" },
		["@lsp.typemod.variable.readonly"] = { link = "Constant" },
		["@lsp.typemod.variable.static"] = { link = "Constant" },

		-- Language-specific LSP semantic tokens
		-- Rust
		["@lsp.type.attributeBracket.rust"] = { link = "PreProc" },
		["@lsp.type.builtinAttribute.rust"] = { link = "PreProc" },
		["@lsp.type.builtinType.rust"] = { link = "Type" },
		["@lsp.type.decorator.rust"] = { link = "PreProc" },
		["@lsp.type.derive.rust"] = { link = "PreProc" },
		["@lsp.type.deriveHelper.rust"] = { link = "PreProc" },
		["@lsp.type.formatSpecifier.rust"] = { link = "Special" },
		["@lsp.type.generic.rust"] = { link = "Type" },
		["@lsp.type.lifetime.rust"] = { link = "Operator" },
		["@lsp.type.selfKeyword.rust"] = { link = "@variable.builtin" },
		["@lsp.type.selfTypeKeyword.rust"] = { link = "Type" },

		-- Python
		["@lsp.type.builtinConstant.python"] = { link = "@constant.builtin" },
		["@lsp.type.magicFunction.python"] = { link = "@function.builtin" },
		["@lsp.type.selfParameter.python"] = { link = "@variable.builtin" },

		-- Go
		["@lsp.type.builtinType.go"] = { link = "Type" },

		-- TypeScript/JavaScript
		["@lsp.type.class.typescript"] = { link = "Type" },
		["@lsp.type.class.javascript"] = { link = "Type" },
		["@lsp.type.interface.typescript"] = { link = "Type" },
		["@lsp.typemod.class.defaultLibrary.typescript"] = { link = "Type" },
		["@lsp.typemod.class.defaultLibrary.javascript"] = { link = "Type" },

		-- Lua
		["@lsp.type.property.lua"] = { link = "@property" },
		["@lsp.typemod.function.defaultLibrary.lua"] = { link = "@function.builtin" },
		["@lsp.typemod.variable.defaultLibrary.lua"] = { link = "Special" },

		-- C/C++
		["@lsp.type.builtinType.c"] = { link = "Type" },
		["@lsp.type.builtinType.cpp"] = { link = "Type" },
		["@lsp.type.typeParameter.cpp"] = { link = "Type" },

		-- Type alias (for types that should not have semantic highlighting applied)
		["@lsp.type.lifetime"] = { link = "Operator" },

		-- Comparison and bitwise operators
		["@lsp.type.comparison"] = { link = "Operator" },
		["@lsp.type.bitwise"] = { link = "Operator" },
		["@lsp.type.punctuation"] = { link = "Delimiter" },

		-- Constant-like semantics
		["@lsp.type.const"] = { link = "Constant" },
	}
end

return M
