# zen

A minimal, dark colorscheme for Neovim with subtle accent colors.

## Installation

### lazy.nvim

```lua
{
  "nendix/zen.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## Configuration

```lua
require("zen").setup({
  undercurl = true,
  transparent = false,
  dimInactive = false,
  terminalColors = true,
  commentStyle = { italic = true },
  keywordStyle = { italic = true },
  compile = false,
  colors = {
    palette = {},
    theme = {},
  },
  overrides = function(colors)
    return {}
  end,
})

vim.cmd("colorscheme zen")
```
