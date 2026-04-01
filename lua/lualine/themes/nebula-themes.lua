-- Lualine theme for nebula-themes
-- Auto-detects the active colorscheme and builds lualine sections from it

local function build_theme()
  local ok, nebula = pcall(require, "nebula-themes")
  local p

  if ok and nebula.palette then
    p = nebula.palette
  else
    -- Fallback: detect from vim.g.colors_name
    local palette = require("nebula-themes.palette")
    local name = vim.g.colors_name or "nebula"
    p = palette.get(name)
  end

  return {
    normal = {
      a = { fg = p.bg, bg = p.blue, gui = "bold" },
      b = { fg = p.text, bg = p.surface0 },
      c = { fg = p.text_muted, bg = p.mantle },
    },
    insert = {
      a = { fg = p.bg, bg = p.green, gui = "bold" },
      b = { fg = p.text, bg = p.surface0 },
      c = { fg = p.text_muted, bg = p.mantle },
    },
    visual = {
      a = { fg = p.bg, bg = p.purple, gui = "bold" },
      b = { fg = p.text, bg = p.surface0 },
      c = { fg = p.text_muted, bg = p.mantle },
    },
    replace = {
      a = { fg = p.bg, bg = p.red, gui = "bold" },
      b = { fg = p.text, bg = p.surface0 },
      c = { fg = p.text_muted, bg = p.mantle },
    },
    command = {
      a = { fg = p.bg, bg = p.orange, gui = "bold" },
      b = { fg = p.text, bg = p.surface0 },
      c = { fg = p.text_muted, bg = p.mantle },
    },
    inactive = {
      a = { fg = p.text_muted, bg = p.mantle },
      b = { fg = p.text_muted, bg = p.mantle },
      c = { fg = p.text_muted, bg = p.mantle },
    },
  }
end

return build_theme()
