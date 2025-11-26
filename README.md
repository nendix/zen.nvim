# zen.nvim

A minimal, monochromatic dark colorscheme for Neovim with subtle accent colors.

## Features

- Grayscale-focused syntax with subtle color accents
- Transparent background support
- Treesitter and LSP support
- Language-specific highlights (HTML/JSX, CSS, JSON, YAML, etc.)
- Plugin support (Telescope, NvimTree, NeoTree, Gitsigns, blink.cmp, etc.)
- Compilation for faster loading
- Extras: Ghostty terminal theme

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

## Palette

| Color    | Hex       | Usage     |
|----------|-----------|-----------|
| sage     | `#a0b9a0` | Strings   |
| sand     | `#b9b0a0` | Types     |
| rose     | `#b9a0a0` | Numbers   |
| sky      | `#a0a0b9` | Constants |
| lavender | `#b0a0b9` | HTML tags |
| mist     | `#a0b0b0` | Regex     |

## Commands

- `:ZenCompile` - Compile the colorscheme for faster loading

## Extras

Ghostty theme available at `extras/ghostty/zen`

## License

CC0-1.0
