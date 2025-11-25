local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
    config = config or require("zen").config
    local theme = colors.theme

    return {
        -- @variable: various variable names
        ["@variable"] = { fg = theme.ui.fg },
        -- @variable.builtin: built-in variable names (e.g. `this`, `self`)
        ["@variable.builtin"] = { fg = theme.syn.special2, italic = true },
        -- @variable.parameter: parameters of a function
        ["@variable.parameter"] = { fg = theme.syn.parameter },
        -- @variable.member: object and struct fields
        ["@variable.member"] = { fg = theme.syn.identifier },

        -- @string.regexp: regular expressions
        ["@string.regexp"] = { fg = theme.syn.regex },
        -- @string.escape: escape sequences
        ["@string.escape"] = { fg = theme.syn.regex },
        -- @string.special.symbol: symbols or atoms
        ["@string.special.symbol"] = { fg = theme.syn.identifier },
        -- @string.special.url: URIs
        ["@string.special.url"] = { fg = theme.syn.special1, underline = true },

        -- @attribute: attribute annotations
        ["@attribute"] = { link = "Constant" },

        -- @constructor: constructor calls and definitions
        ["@constructor"] = { fg = theme.syn.special1 },
        ["@constructor.lua"] = { fg = theme.syn.keyword },

        -- @operator: symbolic operators
        ["@operator"] = { link = "Operator" },

        -- @keyword.operator: operators that are English words
        ["@keyword.operator"] = { fg = theme.syn.operator },
        -- @keyword.import: keywords for including modules
        ["@keyword.import"] = { link = "PreProc" },
        -- @keyword.return: keywords like `return` and `yield`
        ["@keyword.return"] = vim.tbl_extend("force", { fg = theme.syn.special3 }, config.keywordStyle or {}),
        -- @keyword.exception: keywords related to exceptions
        ["@keyword.exception"] = vim.tbl_extend("force", { fg = theme.syn.special3 }, config.statementStyle or {}),

        ["@keyword.luap"] = { link = "@string.regex" },

        -- @punctuation.delimiter: delimiters (e.g. `;`, `.`, `,`)
        ["@punctuation.delimiter"] = { fg = theme.syn.punct },
        -- @punctuation.bracket: brackets (e.g. `()`, `{}`, `[]`)
        ["@punctuation.bracket"] = { fg = theme.syn.punct },
        -- @punctuation.special: special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special"] = { fg = theme.syn.special1 },

        -- @comment.error: error-type comments
        ["@comment.error"] = { fg = theme.ui.fg, bg = theme.diag.error },
        -- @comment.warning: warning-type comments
        ["@comment.warning"] = { fg = theme.ui.fg_reverse, bg = theme.diag.warning },
        -- @comment.note: note-type comments
        ["@comment.note"] = { fg = theme.ui.fg_reverse, bg = theme.diag.hint },

        -- @markup.strong: bold text
        ["@markup.strong"] = { bold = true },
        -- @markup.italic: italic text
        ["@markup.italic"] = { italic = true },
        -- @markup.strikethrough: struck-through text
        ["@markup.strikethrough"] = { strikethrough = true },
        -- @markup.underline: underlined text
        ["@markup.underline"] = { underline = true },

        -- @markup.heading: headings, titles
        ["@markup.heading"] = { link = "Function" },

        -- @markup.quote: block quotes
        ["@markup.quote"] = { link = "@variable.parameter" },
        -- @markup.math: math environments
        ["@markup.math"] = { link = "Constant" },
        -- @markup.environment: environments
        ["@markup.environment"] = { link = "Keyword" },

        -- @markup.link.url: URL-style links
        ["@markup.link.url"] = { link = "@string.special.url" },
        -- @markup.raw: literal or verbatim text
        ["@markup.raw"] = { link = "String" },

        -- @diff.plus: added text (for diff files)
        ["@diff.plus"] = { fg = theme.vcs.added },
        -- @diff.minus: deleted text (for diff files)
        ["@diff.minus"] = { fg = theme.vcs.removed },
        -- @diff.delta: changed text (for diff files)
        ["@diff.delta"] = { fg = theme.vcs.changed },

        -- @tag.attribute: XML-style tag attributes
        ["@tag.attribute"] = { fg = theme.syn.identifier },
        -- @tag.delimiter: XML-style tag delimiters
        ["@tag.delimiter"] = { fg = theme.syn.punct },
    }
end

return M
