local M = {}

---@param colors table
---@param config? table
function M.setup(colors, config)
    local theme = colors.theme
    config = config or require("zen").config

    return {
        -- Comment: any comment
        Comment = vim.tbl_extend("force", { fg = theme.syn.comment }, config.commentStyle),

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
        Function = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),

        -- Statement: any statement
        Statement = vim.tbl_extend("force", { fg = theme.syn.statement }, config.statementStyle),
        -- Conditional: if, then, else, endif, switch, etc.
        Conditional = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- Repeat: for, do, while, etc.
        Repeat = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- Label: case, default, etc.
        Label = { fg = theme.syn.special1 },
        -- Operator: "sizeof", "+", "*", etc.
        Operator = { fg = theme.syn.operator },
        -- Keyword: any other keyword
        Keyword = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- Exception: try, catch, throw
        Exception = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),

        -- PreProc: generic Preprocessor
        PreProc = { fg = theme.syn.preproc },
        -- Include: preprocessor #include
        Include = vim.tbl_extend("force", { fg = theme.syn.preproc }, config.keywordStyle),
        -- Define: preprocessor #define
        Define = { fg = theme.syn.preproc },
        -- Macro: same as Define
        Macro = { fg = theme.syn.preproc },
        -- PreCondit: preprocessor #if, #else, #endif, etc.
        PreCondit = { fg = theme.syn.preproc },

        -- Type: int, long, char, etc.
        Type = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        -- StorageClass: static, register, volatile, etc.
        StorageClass = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        -- Structure: struct, union, enum, etc.
        Structure = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        -- Typedef: a typedef
        Typedef = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),

        -- Special: any special symbol
        Special = { fg = theme.syn.special1 },
        -- SpecialChar: special character in a constant
        SpecialChar = { fg = theme.syn.regex },
        -- Tag: you can use CTRL-] on this
        Tag = { fg = theme.syn.tag },
        -- Delimiter: character that needs attention
        Delimiter = { fg = theme.syn.punct },
        -- SpecialComment: special things inside a comment
        SpecialComment = { fg = theme.syn.comment, bold = true },
        -- Debug: debugging statements
        Debug = { fg = theme.syn.special1 },

        -- Underlined: text that stands out, HTML links
        Underlined = { fg = theme.syn.regex, underline = true },
        Bold = { bold = true },
        Italic = { italic = true },

        -- Ignore: left blank, hidden
        Ignore = { link = "NonText" },

        -- Error: any erroneous construct
        Error = { fg = theme.diag.error },

        -- Todo: anything that needs extra attention
        Todo = { fg = theme.diag.info, bold = true },

        qfLineNr = { link = "lineNr" },
        qfFileName = { link = "Directory" },

        -- Markdown
        markdownH1 = { fg = theme.syn.keyword, bold = true },
        markdownH2 = { fg = theme.syn.keyword, bold = true },
        markdownH3 = { fg = theme.syn.fun, bold = true },
        markdownH4 = { fg = theme.syn.fun, bold = true },
        markdownH5 = { fg = theme.syn.identifier },
        markdownH6 = { fg = theme.syn.identifier },
        markdownHeadingDelimiter = { fg = theme.syn.punct, bold = true },
        markdownCode = { fg = theme.syn.string },
        markdownCodeBlock = { fg = theme.syn.string },
        markdownCodeDelimiter = { fg = theme.syn.punct },
        markdownBlockquote = { fg = theme.syn.comment, italic = true },
        markdownListMarker = { fg = theme.syn.punct },
        markdownOrderedListMarker = { fg = theme.syn.punct },
        markdownRule = { fg = theme.syn.punct },
        markdownHeadingRule = { fg = theme.syn.punct },
        markdownUrlDelimiter = { fg = theme.syn.punct },
        markdownLinkDelimiter = { fg = theme.syn.punct },
        markdownLinkTextDelimiter = { fg = theme.syn.punct },
        markdownUrl = { fg = theme.syn.regex, underline = true },
        markdownUrlTitleDelimiter = { fg = theme.syn.string },
        markdownLinkText = { fg = theme.syn.regex },
        markdownIdDeclaration = { link = "markdownLinkText" },
        markdownBold = { bold = true },
        markdownItalic = { italic = true },
        markdownBoldItalic = { bold = true, italic = true },
        markdownEscape = { fg = theme.syn.regex },

        -- Help
        helpCommand = { fg = theme.syn.string },
        helpExample = { fg = theme.syn.comment },
        helpHeader = { fg = theme.syn.keyword, bold = true },
        helpSectionDelim = { fg = theme.syn.punct },

        -- Diff (legacy vim diff syntax)
        diffAdded = { fg = theme.vcs.added },
        diffRemoved = { fg = theme.vcs.removed },
        diffChanged = { fg = theme.vcs.changed },
        diffOldFile = { fg = theme.vcs.removed },
        diffNewFile = { fg = theme.vcs.added },
        diffFile = { fg = theme.syn.comment },
        diffLine = { fg = theme.syn.comment },
        diffIndexLine = { fg = theme.syn.comment },
    }
end

return M
