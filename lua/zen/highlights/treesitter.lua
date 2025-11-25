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
        ["@variable.builtin"] = { fg = theme.ui.fg, italic = true },
        -- @variable.parameter: parameters of a function
        ["@variable.parameter"] = { fg = theme.syn.parameter },
        -- @variable.member: object and struct fields
        ["@variable.member"] = { fg = theme.syn.identifier },

        -- @constant: constant identifiers
        ["@constant"] = { fg = theme.syn.constant },
        -- @constant.builtin: built-in constant values
        ["@constant.builtin"] = { fg = theme.syn.constant },

        -- @string.regexp: regular expressions
        ["@string.regexp"] = { fg = theme.syn.regex },
        -- @string.escape: escape sequences
        ["@string.escape"] = { fg = theme.syn.regex },
        -- @string.special.symbol: symbols or atoms
        ["@string.special.symbol"] = { fg = theme.syn.identifier },
        -- @string.special.url: URIs
        ["@string.special.url"] = { fg = theme.ui.fg, underline = true },

        -- @attribute: attribute annotations
        ["@attribute"] = { fg = theme.syn.preproc },

        -- @constructor: constructor calls and definitions
        ["@constructor"] = { fg = theme.syn.type },
        ["@constructor.lua"] = { fg = theme.syn.punct },

        -- @operator: symbolic operators
        ["@operator"] = { link = "Operator" },

        -- @function: function definitions
        ["@function"] = { fg = theme.syn.fun },
        -- @function.builtin: built-in functions
        ["@function.builtin"] = { fg = theme.syn.fun },
        -- @function.call: function calls
        ["@function.call"] = { fg = theme.syn.fun },
        -- @function.method: method definitions
        ["@function.method"] = { fg = theme.syn.fun },
        -- @function.method.call: method calls
        ["@function.method.call"] = { fg = theme.syn.fun },

        -- @keyword: keywords (italic)
        ["@keyword"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.operator: operators that are English words
        ["@keyword.operator"] = { fg = theme.syn.operator, italic = true },
        -- @keyword.import: keywords for including modules (italic)
        ["@keyword.import"] = { fg = theme.syn.preproc, italic = true },
        -- @keyword.return: keywords like `return` and `yield` (italic)
        ["@keyword.return"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.exception: keywords related to exceptions (italic)
        ["@keyword.exception"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.conditional: conditionals (italic)
        ["@keyword.conditional"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.repeat: loops (italic)
        ["@keyword.repeat"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.function: function keyword (italic)
        ["@keyword.function"] = { fg = theme.syn.keyword, italic = true },

        ["@keyword.luap"] = { link = "@string.regexp" },

        -- @type: types
        ["@type"] = { fg = theme.syn.type },
        -- @type.builtin: built-in types
        ["@type.builtin"] = { fg = theme.syn.type },

        -- @punctuation.delimiter: delimiters (e.g. `;`, `.`, `,`)
        ["@punctuation.delimiter"] = { fg = theme.syn.punct },
        -- @punctuation.bracket: brackets (e.g. `()`, `{}`, `[]`)
        ["@punctuation.bracket"] = { fg = theme.syn.punct },
        -- @punctuation.special: special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special"] = { fg = theme.syn.punct },

        -- @comment: comments
        ["@comment"] = { fg = theme.syn.comment, italic = true },
        -- @comment.error: error-type comments
        ["@comment.error"] = { fg = theme.ui.fg, bg = theme.diag.error },
        -- @comment.warning: warning-type comments
        ["@comment.warning"] = { fg = theme.ui.fg, bg = theme.diag.warning },
        -- @comment.todo: todo-type comments
        ["@comment.todo"] = { fg = theme.ui.fg, bg = theme.diag.info },
        -- @comment.note: note-type comments
        ["@comment.note"] = { fg = theme.ui.fg, bg = theme.diag.hint },

        -- @markup.strong: bold text
        ["@markup.strong"] = { bold = true },
        -- @markup.italic: italic text
        ["@markup.italic"] = { italic = true },
        -- @markup.strikethrough: struck-through text
        ["@markup.strikethrough"] = { strikethrough = true },
        -- @markup.underline: underlined text
        ["@markup.underline"] = { underline = true },

        -- @markup.heading: headings, titles
        ["@markup.heading"] = { fg = theme.ui.fg },

        -- @markup.quote: block quotes
        ["@markup.quote"] = { fg = theme.syn.comment, italic = true },
        -- @markup.math: math environments
        ["@markup.math"] = { fg = theme.syn.constant },
        -- @markup.environment: environments
        ["@markup.environment"] = { fg = theme.syn.keyword },

        -- @markup.link.url: URL-style links
        ["@markup.link.url"] = { link = "@string.special.url" },
        -- @markup.raw: literal or verbatim text
        ["@markup.raw"] = { fg = theme.syn.string },

        -- @diff.plus: added text (for diff files)
        ["@diff.plus"] = { fg = theme.vcs.added },
        -- @diff.minus: deleted text (for diff files)
        ["@diff.minus"] = { fg = theme.vcs.removed },
        -- @diff.delta: changed text (for diff files)
        ["@diff.delta"] = { fg = theme.vcs.changed },

        -- @tag: XML-style tag names
        ["@tag"] = { fg = theme.syn.keyword },
        -- @tag.attribute: XML-style tag attributes
        ["@tag.attribute"] = { fg = theme.syn.identifier, italic = true },
        -- @tag.delimiter: XML-style tag delimiters
        ["@tag.delimiter"] = { fg = theme.syn.punct },
    }
end

return M
