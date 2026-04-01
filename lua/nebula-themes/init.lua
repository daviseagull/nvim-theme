-- =============================================================================
-- Nebula Themes - A Neovim colorscheme plugin
-- Ships two themes: "nebula" (dark) and "serenity-bloom" (light)
-- Sourced from dotfiles/shared/themes/ configuration
-- =============================================================================

local M = {}

---@class NebulaConfig
---@field theme string Default theme to load ("nebula" | "serenity-bloom")
---@field transparent boolean If true, sets Normal bg to NONE
---@field terminal_colors boolean If true, sets terminal ANSI colors
--- Default configuration
---@type NebulaConfig
M.config = {
  theme = "nebula",
  transparent = false,
  terminal_colors = true,
}

--- Merge user config with defaults
---@param opts? NebulaConfig
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

--- Set terminal ANSI colors from palette
---@param p NebulaPalette
local function set_terminal_colors(p)
  -- Dark / Normal
  vim.g.terminal_color_0  = p.surface0   -- black
  vim.g.terminal_color_1  = p.red        -- red
  vim.g.terminal_color_2  = p.green      -- green
  vim.g.terminal_color_3  = p.yellow     -- yellow
  vim.g.terminal_color_4  = p.blue       -- blue
  vim.g.terminal_color_5  = p.purple     -- magenta
  vim.g.terminal_color_6  = p.teal       -- cyan
  vim.g.terminal_color_7  = p.text       -- white
  -- Bright
  vim.g.terminal_color_8  = p.surface2   -- bright black
  vim.g.terminal_color_9  = p.red        -- bright red
  vim.g.terminal_color_10 = p.green      -- bright green
  vim.g.terminal_color_11 = p.yellow     -- bright yellow
  vim.g.terminal_color_12 = p.blue       -- bright blue
  vim.g.terminal_color_13 = p.pink       -- bright magenta
  vim.g.terminal_color_14 = p.teal       -- bright cyan
  vim.g.terminal_color_15 = p.text       -- bright white
end

--- Apply highlight groups from a table
---@param groups table<string, vim.api.keyset.highlight>
local function apply(groups)
  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

--- Load and activate a theme
---@param theme? string Theme name ("nebula" | "serenity-bloom")
function M.load(theme)
  theme = theme or M.config.theme

  -- Reset existing highlights
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd.syntax("reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = theme

  local palette = require("nebula-themes.palette").get(theme)
  local hl = require("nebula-themes.highlights")

  -- Apply all highlight groups
  apply(hl.editor(palette))
  apply(hl.syntax(palette))
  apply(hl.diagnostics(palette))
  apply(hl.lsp(palette))
  apply(hl.treesitter(palette))
  apply(hl.plugins(palette))

  -- Handle transparency
  if M.config.transparent then
    vim.api.nvim_set_hl(0, "Normal", { fg = palette.text, bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalNC", { fg = palette.text, bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = palette.text, bg = "NONE" })
    vim.api.nvim_set_hl(0, "SignColumn", { fg = palette.surface1, bg = "NONE" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "NONE", bg = "NONE" })
  end

  -- Terminal colors
  if M.config.terminal_colors then
    set_terminal_colors(palette)
  end

  -- Store current palette for external access
  M.palette = palette
end

return M
