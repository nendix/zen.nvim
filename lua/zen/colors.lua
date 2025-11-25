---@class PaletteColors
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field fg string
---@field fg_dim string
---@field fg_muted string
---@field silver string
---@field stone string
---@field slate string
---@field ash string
---@field mist string
---@field diag_error string
---@field diag_warn string
---@field diag_info string
---@field diag_hint string
---@field diag_ok string
---@field diff_add string
---@field diff_delete string
---@field diff_change string
---@field diff_text string
---@field vcs_added string
---@field vcs_removed string
---@field vcs_changed string

local palette = {
    -- Background shades (very dark, monochromatic)
    bg0 = "#0a0a0f",      -- Deepest background
    bg1 = "#12121a",      -- Slightly lighter for UI elements
    bg2 = "#1a1a24",      -- Cursor line, folded
    bg3 = "#24242f",      -- Visual selection, active elements
    bg4 = "#2e2e3a",      -- Lighter UI elements

    -- Foreground shades (muted, not harsh)
    fg = "#b0b0b8",       -- Main text
    fg_dim = "#707078",   -- Dimmed text, comments
    fg_muted = "#505058", -- Very muted, line numbers inactive

    -- Extended gray palette for syntax
    silver = "#9a9aa2",   -- Slightly brighter than fg (constants, numbers)
    stone = "#8a8a92",    -- Neutral gray (types)
    slate = "#787880",    -- Between fg_dim and stone (operators, punct)
    ash = "#606068",      -- Subtle elements

    -- Single accent color (used very sparingly)
    mist = "#7a8a9a",     -- For search highlights, special UI

    -- Diagnostics (muted but distinguishable)
    diag_error = "#8a5a5a",   -- Muted red
    diag_warn = "#8a7a5a",    -- Muted yellow
    diag_info = "#5a7a8a",    -- Muted blue
    diag_hint = "#6a8a7a",    -- Muted teal
    diag_ok = "#6a8a6a",      -- Muted green

    -- Diff colors (very subtle background tints)
    diff_add = "#1a2a1a",     -- Very subtle green
    diff_delete = "#2a1a1a",  -- Very subtle red
    diff_change = "#1a1a2a",  -- Very subtle blue
    diff_text = "#2a2a1a",    -- Very subtle yellow

    -- VCS colors (slightly more visible than diff)
    vcs_added = "#5a7a5a",    -- Muted green
    vcs_removed = "#7a5a5a",  -- Muted red
    vcs_changed = "#7a7a5a",  -- Muted yellow
}

local M = {}

---@param opts? { colors?: table }
---@return { theme: table, palette: PaletteColors }
function M.setup(opts)
    opts = opts or {}
    local zen = require("zen")
    local override_colors = opts.colors or zen.config.colors

    -- Merge palette with overrides
    local updated_palette = vim.tbl_extend("force", palette, override_colors.palette or {})

    -- Generate theme colors
    local theme_colors = require("zen.themes").theme(updated_palette)

    -- Apply theme overrides
    local theme_overrides = override_colors.theme or {}
    local updated_theme = vim.tbl_deep_extend("force", theme_colors, theme_overrides)

    return {
        theme = updated_theme,
        palette = updated_palette,
    }
end

return M
