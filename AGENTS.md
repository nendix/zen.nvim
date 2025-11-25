# AGENTS.md

## Build/Test Commands
This is a Neovim colorscheme plugin. No build or test framework.
- **Load theme**: `:colorscheme zen` or `require("zen").load()`
- **Compile for performance**: `:ZenCompile`

## Code Style Guidelines
- **Language**: Lua (Neovim plugin)
- **Module pattern**: `local M = {} ... return M`
- **Types**: Use LuaCATS annotations (`---@class`, `---@param`, `---@return`)
- **Naming**: snake_case for variables/functions, PascalCase for highlight groups
- **Imports**: Use `require("zen.module")` pattern
- **Config access**: `config = config or require("zen").config`
- **Highlight tables**: Return tables of `{ HighlightGroup = { fg = ..., bg = ..., ... } }`
- **Links**: Use `{ link = "GroupName" }` to reference other highlight groups
- **Colors**: Reference `theme.ui.*`, `theme.syn.*`, `theme.diag.*`, `theme.diff.*`, `theme.vcs.*`
- **Style flags**: Use `italic = true`, `bold = true`, `underline = true`, `undercurl = config.undercurl`
- **Optional params**: Mark with `?` in annotations (e.g., `---@param config? ZenConfig`)
- **Transparency**: Check `config.transparent` before setting backgrounds
