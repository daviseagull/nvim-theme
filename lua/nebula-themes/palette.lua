-- =============================================================================
-- Palette definitions for Nebula Themes
-- Sourced from dotfiles/shared/themes/ config files
-- =============================================================================

local M = {}

---@class NebulaPalette
---@field bg string
---@field mantle string
---@field crust string
---@field surface0 string
---@field surface1 string
---@field surface2 string
---@field text string
---@field text_muted string
---@field brand string
---@field green string
---@field red string
---@field blue string
---@field orange string
---@field yellow string
---@field purple string
---@field pink string
---@field teal string
---@field none string

--- Nebula - Dark Pastel Theme
--- A rich, dreamy dark theme with luminous pastel accents.
--- Inspired by northern lights, night gardens, and starlit dreams.
---@type NebulaPalette
M.nebula = {
  bg       = "#1a1625",
  mantle   = "#1f1a2e",
  crust    = "#2a2440",
  surface0 = "#352e4d",
  surface1 = "#453d5c",
  surface2 = "#5c5478",

  text       = "#e8e0f0",
  text_muted = "#a89fc4",

  brand = "#f0a6ca",

  green  = "#7dd3a8",
  red    = "#f0887d",
  blue   = "#7db8f0",
  orange = "#f0b87d",
  yellow = "#f0d77d",
  purple = "#c4a6f0",
  pink   = "#e09fd9",
  teal   = "#7dd3c9",

  none = "NONE",
}

--- Serenity Bloom - Light Pastel Theme
--- Soft, deep pastels with warm undertones for a calm, refined look.
--- Gentle contrast that stays readable and inviting.
---@type NebulaPalette
M.serenity_bloom = {
  bg       = "#fdfaf7",
  mantle   = "#f7f4ef",
  crust    = "#f0ebe4",
  surface0 = "#e2dbd1",
  surface1 = "#d3cabc",
  surface2 = "#b8b0a3",

  text       = "#2b2f3a",
  text_muted = "#6e7380",

  brand = "#d16c6c",

  green  = "#3c9d7c",
  red    = "#c75b63",
  blue   = "#3a7cc4",
  orange = "#dd8a52",
  yellow = "#d2a13f",
  purple = "#7a70b5",
  pink   = "#c57a92",
  teal   = "#3a8f98",

  none = "NONE",
}

--- Map of theme name to palette
M.themes = {
  nebula          = M.nebula,
  ["serenity-bloom"] = M.serenity_bloom,
}

--- Get a palette by name
---@param name string
---@return NebulaPalette
function M.get(name)
  local p = M.themes[name]
  if not p then
    error(string.format("[nebula-themes] Unknown theme: '%s'. Available: %s",
      name, table.concat(vim.tbl_keys(M.themes), ", ")))
  end
  return p
end

return M
