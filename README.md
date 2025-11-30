<div align="center">
  <h1>zen.nvim</h1>
</div>

<div align="center">
  <p>
    A minimal, monochromatic colorscheme for Neovim.
    <br/>
    Calm tones. Subtle accents. Zero distractions.
  </p>
</div>

<div align="center">
    <h3>Dark Variant</h3>
    <img src="showcase_dark.png" />
    <img src="palette_dark.png" />
</div>

<div align="center">
    <h3>Light Variant</h3>
    <img src="showcase_light.png" />
    <img src="palette_light.png" />
</div>

## Features

- Dark and light variants
- Monochromatic grayscale syntax with muted color accents
- Extensive `TreeSitter` syntax highlighting support
- Compatible with popular plugins
- Extras for terminals and other applications

## Installation

```lua
-- lazy.nvim
{
  "nendix/zen.nvim",
  lazy = false,
  priority = 1000,
}

-- packer.nvim
use "nendix/zen.nvim"
```

## Requirements

- Neovim 0.8+
- Terminal with truecolor support

## Configuration

```lua
require("zen").setup({
  variant = "dark",     -- "dark" or "light"
  undercurl = true,
  transparent = false,
  dimInactive = false,
  terminalColors = true,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = {},
  typeStyle = {},
  compile = false,
  colors = {
    palette = {},  -- override palette colors
    theme = {},    -- override theme colors
  },
  overrides = function(colors)
    return {}
  end,
})

vim.cmd.colorscheme("zen")
```

<details>
<summary><strong>Customization</strong></summary>

Override palette or theme colors:

```lua
require("zen").setup({
  colors = {
    palette = {
      bg0 = "#0a0a0a",
      sage = "#90a990",
    },
    theme = {
      ui = {
        bg = "#000000",
      },
    },
  },
})
```

All palette colors can be found in [lua/zen/colors.lua](lua/zen/colors.lua).

</details>

<details>
<summary><strong>Getting Colors</strong></summary>

Access theme colors in your config:

```lua
local colors = require("zen.colors").get()
local palette = colors.palette
local theme = colors.theme

-- Example: use in lualine or other plugins
print(palette.sage)  -- "#a0b9a0"
print(theme.syn.string)  -- "#a0b9a0"
```

</details>

## Palette

| Category    | Colors                                       |
|-------------|----------------------------------------------|
| Background  | `bg0` `bg1` `bg2` `bg3` `bg4`                |
| Foreground  | `fg` `fg_dim` `fg_muted`                     |
| Grays       | `silver` `stone` `slate` `ash`               |
| Accents     | `sage` `sand` `rose` `sky` `lavender` `mist` |

## Extras

- [Alacritty](extras/alacritty/)
- [Ghostty](extras/ghostty/)
- [Kitty](extras/kitty/)
- [Tmux](extras/tmux/)
- [Wezterm](extras/wezterm/)
- [Yazi](extras/yazi/)

## Lualine

```lua
require("lualine").setup({
  options = {
    theme = "zen",
  },
})
```

## Philosophy

Zen prioritizes structure over color. Syntax is distinguished through a
grayscale hierarchy, with muted accents reserved for semantic elements like
strings, types, and constants. The result is a theme that stays out of your
way.

## Credits

Inspired by:
- [kanso.nvim](https://github.com/webhooked/kanso.nvim)
- [ash.nvim](https://github.com/bjarneo/ash.nvim)
