local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
    local theme = colors.theme
    config = config or require("zen").config

    return {
        -- Comment: any comment (dimmed + italic)
        Comment = { fg = theme.syn.comment, italic = true },

        -- Constant: any constant
        Constant = { fg = theme.syn.constant },
        -- String: a string constant
        String = { fg = theme.syn.string },
        -- Character: a character constant
        Character = { link = "String" },
        -- Number: a number constant
        Number = { fg = theme.syn.number },
        -- Boolean: a boolean constant
        Boolean = { fg = theme.syn.constant },
        -- Float: a floating point constant
        Float = { link = "Number" },

        -- Identifier: any variable name
        Identifier = { fg = theme.syn.identifier },
        -- Function: function name
        Function = { fg = theme.syn.fun },

        -- Statement: any statement (italic)
        Statement = { fg = theme.syn.statement, italic = true },
        -- Operator: "sizeof", "+", "*", etc.
        Operator = { fg = theme.syn.operator },
        -- Keyword: any other keyword (italic)
        Keyword = { fg = theme.syn.keyword, italic = true },
        -- Exception: try, catch, throw (italic)
        Exception = { fg = theme.syn.special2, italic = true },

        -- PreProc: generic Preprocessor
        PreProc = { fg = theme.syn.preproc },

        -- Type: int, long, char, etc.
        Type = { fg = theme.syn.type },

        -- Special: any special symbol
        Special = { fg = theme.syn.special1 },
        -- Delimiter: character that needs attention
        Delimiter = { fg = theme.syn.punct },

        -- Underlined: text that stands out, HTML links
        Underlined = { fg = theme.syn.special1, underline = true },
        Bold = { bold = true },
        Italic = { italic = true },

        -- Ignore: left blank, hidden
        Ignore = { link = "NonText" },

        -- Error: any erroneous construct
        Error = { fg = theme.diag.error },

        -- Todo: anything that needs extra attention
        Todo = { fg = theme.ui.fg_reverse, bg = theme.diag.info },

        qfLineNr = { link = "lineNr" },
        qfFileName = { link = "Directory" },

        -- Markdown
        markdownCode = { fg = theme.syn.string },
        markdownCodeBlock = { fg = theme.syn.string },
        markdownEscape = { fg = theme.ui.none },
    }
end

return M
