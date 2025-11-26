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
        -- @constant.builtin: built-in constant values (true, false, nil)
        ["@constant.builtin"] = { fg = theme.syn.constant },
        -- @constant.macro: constants defined by macros
        ["@constant.macro"] = { fg = theme.syn.constant },

        -- @module: modules or namespaces
        ["@module"] = { fg = theme.syn.preproc },
        -- @module.builtin: built-in modules
        ["@module.builtin"] = { fg = theme.syn.preproc, italic = true },

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
        ["@attribute"] = { fg = theme.syn.tag, italic = true },
        -- @attribute.builtin: built-in annotations
        ["@attribute.builtin"] = { fg = theme.syn.tag, italic = true },

        -- @property: object properties
        ["@property"] = { fg = theme.syn.identifier },

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
        -- @function.macro: macro functions
        ["@function.macro"] = { fg = theme.syn.fun },
        -- @function.method: method definitions
        ["@function.method"] = { fg = theme.syn.fun },
        -- @function.method.call: method calls
        ["@function.method.call"] = { fg = theme.syn.fun },

        -- @keyword: keywords (italic)
        ["@keyword"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.coroutine: coroutine keywords (async, await)
        ["@keyword.coroutine"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.operator: operators that are English words (and, or, not)
        ["@keyword.operator"] = { fg = theme.syn.operator, italic = true },
        -- @keyword.import: keywords for including modules (italic)
        ["@keyword.import"] = { fg = theme.syn.preproc, italic = true },
        -- @keyword.type: keywords for type definitions (class, struct)
        ["@keyword.type"] = { fg = theme.syn.keyword },
        -- @keyword.modifier: modifiers (public, private, static)
        ["@keyword.modifier"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.return: keywords like `return` and `yield` (italic)
        ["@keyword.return"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.debug: keywords for debugging
        ["@keyword.debug"] = { fg = theme.syn.special1, italic = true },
        -- @keyword.exception: keywords related to exceptions (italic)
        ["@keyword.exception"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.conditional: conditionals (italic)
        ["@keyword.conditional"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.conditional.ternary: ternary operator
        ["@keyword.conditional.ternary"] = { fg = theme.syn.operator },
        -- @keyword.repeat: loops (italic)
        ["@keyword.repeat"] = { fg = theme.syn.keyword, italic = true },
        -- @keyword.function: function keyword (italic)
        ["@keyword.function"] = { fg = theme.syn.keyword, italic = true },

        ["@keyword.luap"] = { link = "@string.regexp" },

        -- @type: types
        ["@type"] = { fg = theme.syn.type },
        -- @type.builtin: built-in types
        ["@type.builtin"] = { fg = theme.syn.type },
        -- @type.definition: type definitions
        ["@type.definition"] = { fg = theme.syn.type },
        -- @type.qualifier: type qualifiers (const, volatile)
        ["@type.qualifier"] = { fg = theme.syn.keyword },

        -- @punctuation.delimiter: delimiters (e.g. `;`, `.`, `,`)
        ["@punctuation.delimiter"] = { fg = theme.syn.punct },
        -- @punctuation.bracket: brackets (e.g. `()`, `{}`, `[]`)
        ["@punctuation.bracket"] = { fg = theme.syn.punct },
        -- @punctuation.special: special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special"] = { fg = theme.syn.regex },

        -- @comment: comments
        ["@comment"] = { fg = theme.syn.comment, italic = true },
        -- @comment.documentation: documentation comments
        ["@comment.documentation"] = { fg = theme.syn.comment, italic = true },
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
        ["@function.css"] = { fg = theme.syn.fun },
        ["@constant.css"] = { fg = theme.syn.constant },
        ["@keyword.css"] = { fg = theme.syn.keyword, italic = true },
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
        ["@attribute.python"] = { fg = theme.syn.tag, italic = true },
        ["@variable.parameter.python"] = { fg = theme.syn.parameter },

        -- JavaScript/TypeScript specific
        ["@variable.member.javascript"] = { fg = theme.syn.identifier },
        ["@variable.member.typescript"] = { fg = theme.syn.identifier },
        ["@constructor.javascript"] = { fg = theme.syn.type },
        ["@constructor.typescript"] = { fg = theme.syn.type },
        ["@type.typescript"] = { fg = theme.syn.type },
        ["@keyword.export.javascript"] = { fg = theme.syn.keyword, italic = true },
        ["@keyword.export.typescript"] = { fg = theme.syn.keyword, italic = true },

        -- Go specific
        ["@type.go"] = { fg = theme.syn.type },
        ["@function.method.go"] = { fg = theme.syn.fun },

        -- Rust specific
        ["@type.rust"] = { fg = theme.syn.type },
        ["@attribute.rust"] = { fg = theme.syn.tag, italic = true },
        ["@function.macro.rust"] = { fg = theme.syn.fun },

        -- Shell/Bash specific
        ["@variable.bash"] = { fg = theme.syn.tag_attribute },
        ["@variable.parameter.bash"] = { fg = theme.syn.parameter },
        ["@function.bash"] = { fg = theme.syn.fun },
        ["@punctuation.special.bash"] = { fg = theme.syn.regex },
    }
end

return M
