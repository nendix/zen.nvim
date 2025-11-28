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
        ["@variable.builtin"] = vim.tbl_extend("force", { fg = theme.ui.fg }, config.keywordStyle),
        -- @variable.parameter: parameters of a function
        ["@variable.parameter"] = { fg = theme.syn.parameter },
        -- @variable.member: object and struct fields
        ["@variable.member"] = { fg = theme.syn.identifier },

        -- @constant: constant identifiers
        ["@constant"] = { fg = theme.syn.constant },
        -- @constant.builtin: built-in constant values (true, false, nil)
        ["@constant.builtin"] = { fg = theme.syn.constant },
        -- @constant.macro: constants defined by macros
        ["@constant.macro"] = { fg = theme.syn.constant },

        -- @module: modules or namespaces
        ["@module"] = { fg = theme.syn.preproc },
        -- @module.builtin: built-in modules
        ["@module.builtin"] = vim.tbl_extend("force", { fg = theme.syn.preproc }, config.keywordStyle),

        -- @label: labels (e.g. goto labels, loop labels)
        ["@label"] = { fg = theme.syn.special1 },

        -- @string: string literals
        ["@string"] = { fg = theme.syn.string },
        -- @string.regexp: regular expressions
        ["@string.regexp"] = { fg = theme.syn.regex },
        -- @string.escape: escape sequences
        ["@string.escape"] = { fg = theme.syn.regex },
        -- @string.special: special strings (e.g. dates)
        ["@string.special"] = { fg = theme.syn.string },
        -- @string.special.symbol: symbols or atoms
        ["@string.special.symbol"] = { fg = theme.syn.constant },
        -- @string.special.url: URIs
        ["@string.special.url"] = { fg = theme.syn.regex, underline = true },
        -- @string.special.path: file paths
        ["@string.special.path"] = { fg = theme.syn.string, underline = true },

        -- @character: character literals
        ["@character"] = { fg = theme.syn.string },
        -- @character.special: special characters
        ["@character.special"] = { fg = theme.syn.regex },

        -- @boolean: boolean literals
        ["@boolean"] = { fg = theme.syn.constant },

        -- @number: numeric literals
        ["@number"] = { fg = theme.syn.number },
        -- @number.float: floating-point literals
        ["@number.float"] = { fg = theme.syn.number },

        -- @attribute: attribute annotations (e.g. @decorators)
        ["@attribute"] = vim.tbl_extend("force", { fg = theme.syn.tag }, config.keywordStyle),
        -- @attribute.builtin: built-in annotations
        ["@attribute.builtin"] = vim.tbl_extend("force", { fg = theme.syn.tag }, config.keywordStyle),

        -- @property: object properties
        ["@property"] = { fg = theme.syn.identifier },

        -- @constructor: constructor calls and definitions
        ["@constructor"] = { fg = theme.syn.type },
        ["@constructor.lua"] = { fg = theme.syn.punct },

        -- @operator: symbolic operators
        ["@operator"] = { link = "Operator" },

        -- @function: function definitions
        ["@function"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        -- @function.builtin: built-in functions
        ["@function.builtin"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        -- @function.call: function calls
        ["@function.call"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        -- @function.macro: macro functions
        ["@function.macro"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        -- @function.method: method definitions
        ["@function.method"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        -- @function.method.call: method calls
        ["@function.method.call"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),

        -- @keyword: keywords
        ["@keyword"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- @keyword.coroutine: coroutine keywords (async, await)
        ["@keyword.coroutine"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- @keyword.operator: operators that are English words (and, or, not)
        ["@keyword.operator"] = vim.tbl_extend("force", { fg = theme.syn.operator }, config.keywordStyle),
        -- @keyword.import: keywords for including modules
        ["@keyword.import"] = vim.tbl_extend("force", { fg = theme.syn.preproc }, config.keywordStyle),
        -- @keyword.type: keywords for type definitions (class, struct)
        ["@keyword.type"] = { fg = theme.syn.keyword },
        -- @keyword.modifier: modifiers (public, private, static)
        ["@keyword.modifier"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- @keyword.return: keywords like `return` and `yield`
        ["@keyword.return"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- @keyword.debug: keywords for debugging
        ["@keyword.debug"] = vim.tbl_extend("force", { fg = theme.syn.special1 }, config.keywordStyle),
        -- @keyword.exception: keywords related to exceptions
        ["@keyword.exception"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- @keyword.conditional: conditionals
        ["@keyword.conditional"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- @keyword.conditional.ternary: ternary operator
        ["@keyword.conditional.ternary"] = { fg = theme.syn.operator },
        -- @keyword.repeat: loops
        ["@keyword.repeat"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- @keyword.function: function keyword
        ["@keyword.function"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),

        ["@keyword.luap"] = { link = "@string.regexp" },

        -- @type: types
        ["@type"] = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        -- @type.builtin: built-in types
        ["@type.builtin"] = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        -- @type.definition: type definitions
        ["@type.definition"] = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        -- @type.qualifier: type qualifiers (const, volatile)
        ["@type.qualifier"] = { fg = theme.syn.keyword },

        -- @punctuation.delimiter: delimiters (e.g. `;`, `.`, `,`)
        ["@punctuation.delimiter"] = { fg = theme.syn.punct },
        -- @punctuation.bracket: brackets (e.g. `()`, `{}`, `[]`)
        ["@punctuation.bracket"] = { fg = theme.syn.punct },
        -- @punctuation.special: special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special"] = { fg = theme.syn.regex },

        -- @comment: comments
        ["@comment"] = vim.tbl_extend("force", { fg = theme.syn.comment }, config.commentStyle),
        -- @comment.documentation: documentation comments
        ["@comment.documentation"] = vim.tbl_extend("force", { fg = theme.syn.comment }, config.commentStyle),
        -- @comment.error: error-type comments (ERROR, FIXME, BUG)
        ["@comment.error"] = { fg = theme.diag.error, bold = true },
        -- @comment.warning: warning-type comments (WARNING, WARN, XXX)
        ["@comment.warning"] = { fg = theme.diag.warning, bold = true },
        -- @comment.todo: todo-type comments (TODO)
        ["@comment.todo"] = { fg = theme.diag.info, bold = true },
        -- @comment.note: note-type comments (NOTE, INFO, HINT)
        ["@comment.note"] = { fg = theme.diag.hint, bold = true },

        -- @markup.strong: bold text
        ["@markup.strong"] = { bold = true },
        -- @markup.italic: italic text
        ["@markup.italic"] = { italic = true },
        -- @markup.strikethrough: struck-through text
        ["@markup.strikethrough"] = { strikethrough = true },
        -- @markup.underline: underlined text
        ["@markup.underline"] = { underline = true },

        -- @markup.heading: headings, titles
        ["@markup.heading"] = { fg = theme.syn.keyword, bold = true },
        -- @markup.heading.1: h1 headings
        ["@markup.heading.1"] = { fg = theme.syn.keyword, bold = true },
        -- @markup.heading.2: h2 headings
        ["@markup.heading.2"] = { fg = theme.syn.keyword, bold = true },
        -- @markup.heading.3: h3 headings
        ["@markup.heading.3"] = { fg = theme.syn.fun, bold = true },
        -- @markup.heading.4: h4 headings
        ["@markup.heading.4"] = { fg = theme.syn.fun, bold = true },
        -- @markup.heading.5: h5 headings
        ["@markup.heading.5"] = { fg = theme.syn.identifier },
        -- @markup.heading.6: h6 headings
        ["@markup.heading.6"] = { fg = theme.syn.identifier },

        -- @markup.quote: block quotes
        ["@markup.quote"] = { fg = theme.syn.comment, italic = true },
        -- @markup.math: math environments
        ["@markup.math"] = { fg = theme.syn.constant },
        -- @markup.environment: environments
        ["@markup.environment"] = { fg = theme.syn.keyword },

        -- @markup.link: links
        ["@markup.link"] = { fg = theme.syn.regex, underline = true },
        -- @markup.link.label: link labels
        ["@markup.link.label"] = { fg = theme.syn.regex },
        -- @markup.link.url: URL-style links
        ["@markup.link.url"] = { fg = theme.syn.regex, underline = true },

        -- @markup.raw: literal or verbatim text (code)
        ["@markup.raw"] = { fg = theme.syn.string },
        -- @markup.raw.block: code blocks
        ["@markup.raw.block"] = { fg = theme.syn.string },

        -- @markup.list: list markers
        ["@markup.list"] = { fg = theme.syn.punct },
        -- @markup.list.checked: checked todo items
        ["@markup.list.checked"] = { fg = theme.diag.ok },
        -- @markup.list.unchecked: unchecked todo items
        ["@markup.list.unchecked"] = { fg = theme.syn.punct },

        -- @diff.plus: added text (for diff files)
        ["@diff.plus"] = { fg = theme.vcs.added },
        -- @diff.minus: deleted text (for diff files)
        ["@diff.minus"] = { fg = theme.vcs.removed },
        -- @diff.delta: changed text (for diff files)
        ["@diff.delta"] = { fg = theme.vcs.changed },

        -- @tag: XML-style tag names (HTML/JSX/XML)
        ["@tag"] = { fg = theme.syn.tag },
        -- @tag.builtin: built-in HTML tags (html, head, body, div, span, etc.)
        ["@tag.builtin"] = { fg = theme.syn.tag },
        -- @tag.attribute: XML-style tag attributes
        ["@tag.attribute"] = { fg = theme.syn.tag_attribute },
        -- @tag.delimiter: XML-style tag delimiters
        ["@tag.delimiter"] = { fg = theme.syn.tag_delimiter },

        -- HTML/JSX specific
        ["@string.special.url.html"] = { fg = theme.syn.string, underline = true },
        ["@operator.html"] = { fg = theme.syn.tag_delimiter },

        -- CSS specific
        ["@property.css"] = { fg = theme.syn.tag_attribute },
        ["@string.css"] = { fg = theme.syn.string },
        ["@number.css"] = { fg = theme.syn.number },
        ["@type.css"] = { fg = theme.syn.tag },
        ["@function.css"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        ["@constant.css"] = { fg = theme.syn.constant },
        ["@keyword.css"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        ["@punctuation.delimiter.css"] = { fg = theme.syn.punct },

        -- SCSS specific
        ["@variable.scss"] = { fg = theme.syn.tag_attribute },
        ["@property.scss"] = { fg = theme.syn.tag_attribute },

        -- JSON specific
        ["@property.json"] = { fg = theme.syn.tag_attribute },
        ["@label.json"] = { fg = theme.syn.tag_attribute },

        -- YAML specific
        ["@property.yaml"] = { fg = theme.syn.tag_attribute },
        ["@label.yaml"] = { fg = theme.syn.tag_attribute },
        ["@string.yaml"] = { fg = theme.syn.string },

        -- TOML specific
        ["@property.toml"] = { fg = theme.syn.tag_attribute },
        ["@type.toml"] = { fg = theme.syn.tag },

        -- Lua specific
        ["@variable.member.lua"] = { fg = theme.syn.identifier },

        -- Python specific
        ["@attribute.python"] = vim.tbl_extend("force", { fg = theme.syn.tag }, config.keywordStyle),
        ["@variable.parameter.python"] = { fg = theme.syn.parameter },

        -- JavaScript/TypeScript specific
        ["@variable.member.javascript"] = { fg = theme.syn.identifier },
        ["@variable.member.typescript"] = { fg = theme.syn.identifier },
        ["@constructor.javascript"] = { fg = theme.syn.type },
        ["@constructor.typescript"] = { fg = theme.syn.type },
        ["@type.typescript"] = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        ["@keyword.export.javascript"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        ["@keyword.export.typescript"] = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),

        -- Go specific
        ["@type.go"] = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        ["@function.method.go"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),

        -- Rust specific
        ["@type.rust"] = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        ["@attribute.rust"] = vim.tbl_extend("force", { fg = theme.syn.tag }, config.keywordStyle),
        ["@function.macro.rust"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),

        -- Shell/Bash specific
        ["@variable.bash"] = { fg = theme.syn.tag_attribute },
        ["@variable.parameter.bash"] = { fg = theme.syn.parameter },
        ["@function.bash"] = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        ["@punctuation.special.bash"] = { fg = theme.syn.regex },
    }
end

return M
