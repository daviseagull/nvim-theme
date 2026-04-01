-- =============================================================================
-- Highlight group definitions for Nebula Themes
-- Maps palette colors to Neovim highlight groups
-- =============================================================================

local M = {}

--- Generate editor highlight groups
---@param p NebulaPalette
---@return table<string, vim.api.keyset.highlight>
function M.editor(p)
  return {
    -- ── Core UI ──────────────────────────────────────────────────────
    Normal       = { fg = p.text, bg = p.bg },
    NormalFloat  = { fg = p.text, bg = p.mantle },
    NormalNC     = { fg = p.text, bg = p.bg },
    FloatBorder  = { fg = p.surface2, bg = p.mantle },
    FloatTitle   = { fg = p.brand, bg = p.mantle, bold = true },

    -- ── Cursor & Selection ───────────────────────────────────────────
    Cursor       = { fg = p.bg, bg = p.text },
    lCursor      = { link = "Cursor" },
    CursorIM     = { link = "Cursor" },
    CursorLine   = { bg = p.mantle },
    CursorColumn = { link = "CursorLine" },
    ColorColumn  = { bg = p.mantle },
    Visual       = { bg = p.surface1 },
    VisualNOS    = { link = "Visual" },

    -- ── Line numbers & Columns ───────────────────────────────────────
    LineNr       = { fg = p.surface2 },
    CursorLineNr = { fg = p.brand, bold = true },
    SignColumn   = { fg = p.surface1, bg = p.bg },
    FoldColumn   = { fg = p.surface2, bg = p.bg },
    Folded       = { fg = p.text_muted, bg = p.crust },

    -- ── Status / Tab / Win bars ──────────────────────────────────────
    StatusLine   = { fg = p.text, bg = p.crust },
    StatusLineNC = { fg = p.text_muted, bg = p.mantle },
    TabLine      = { fg = p.text_muted, bg = p.mantle },
    TabLineFill  = { bg = p.mantle },
    TabLineSel   = { fg = p.text, bg = p.bg, bold = true },
    WinBar       = { fg = p.text, bg = p.bg },
    WinBarNC     = { fg = p.text_muted, bg = p.bg },
    WinSeparator = { fg = p.surface1, bg = p.bg },
    VertSplit    = { link = "WinSeparator" },

    -- ── Popup / Completion menu ──────────────────────────────────────
    Pmenu        = { fg = p.text, bg = p.mantle },
    PmenuSel     = { fg = p.text, bg = p.surface1, bold = true },
    PmenuSbar    = { bg = p.crust },
    PmenuThumb   = { bg = p.surface2 },

    -- ── Search & Substitute ──────────────────────────────────────────
    Search       = { fg = p.bg, bg = p.yellow },
    IncSearch    = { fg = p.bg, bg = p.orange },
    CurSearch    = { fg = p.bg, bg = p.orange, bold = true },
    Substitute   = { fg = p.bg, bg = p.red },

    -- ── Messages ─────────────────────────────────────────────────────
    ModeMsg      = { fg = p.text, bold = true },
    MsgArea      = { fg = p.text },
    MoreMsg      = { fg = p.green },
    ErrorMsg     = { fg = p.red, bold = true },
    WarningMsg   = { fg = p.yellow },
    Question     = { fg = p.blue },

    -- ── Diff ─────────────────────────────────────────────────────────
    DiffAdd    = { bg = p.green, fg = p.bg },
    DiffChange = { bg = p.blue, fg = p.bg },
    DiffDelete = { bg = p.red, fg = p.bg },
    DiffText   = { bg = p.yellow, fg = p.bg },

    -- ── Spelling ─────────────────────────────────────────────────────
    SpellBad  = { sp = p.red, undercurl = true },
    SpellCap  = { sp = p.yellow, undercurl = true },
    SpellLocal = { sp = p.blue, undercurl = true },
    SpellRare  = { sp = p.purple, undercurl = true },

    -- ── Misc UI ──────────────────────────────────────────────────────
    Directory  = { fg = p.blue },
    MatchParen = { fg = p.brand, bold = true, underline = true },
    NonText    = { fg = p.surface1 },
    SpecialKey = { fg = p.surface2 },
    Whitespace = { fg = p.surface1 },
    EndOfBuffer = { fg = p.bg },
    Title      = { fg = p.brand, bold = true },
    Conceal    = { fg = p.text_muted },
    WildMenu   = { link = "PmenuSel" },
  }
end

--- Generate syntax highlight groups
---@param p NebulaPalette
---@return table<string, vim.api.keyset.highlight>
function M.syntax(p)
  return {
    Comment    = { fg = p.text_muted },
    Constant   = { fg = p.orange },
    String     = { fg = p.green },
    Character  = { fg = p.green },
    Number     = { fg = p.orange },
    Boolean    = { fg = p.orange },
    Float      = { fg = p.orange },
    Identifier = { fg = p.text },
    Function   = { fg = p.blue },
    Statement  = { fg = p.purple },
    Conditional = { fg = p.purple },
    Repeat     = { fg = p.purple },
    Label      = { fg = p.teal },
    Operator   = { fg = p.text_muted },
    Keyword    = { fg = p.purple },
    Exception  = { fg = p.red },
    PreProc    = { fg = p.pink },
    Include    = { fg = p.purple },
    Define     = { fg = p.pink },
    Macro      = { fg = p.pink },
    PreCondit  = { fg = p.pink },
    Type       = { fg = p.yellow },
    StorageClass = { fg = p.yellow },
    Structure  = { fg = p.yellow },
    Typedef    = { fg = p.yellow },
    Special    = { fg = p.pink },
    SpecialChar = { fg = p.pink },
    Tag        = { fg = p.teal },
    Delimiter  = { fg = p.text_muted },
    SpecialComment = { fg = p.text_muted, bold = true },
    Debug      = { fg = p.red },
    Underlined = { underline = true },
    Ignore     = { fg = p.surface2 },
    Error      = { fg = p.red, bold = true },
    Todo       = { fg = p.bg, bg = p.yellow, bold = true },
    Added      = { fg = p.green },
    Changed    = { fg = p.blue },
    Removed    = { fg = p.red },
  }
end

--- Generate diagnostic highlight groups
---@param p NebulaPalette
---@return table<string, vim.api.keyset.highlight>
function M.diagnostics(p)
  return {
    DiagnosticError          = { fg = p.red },
    DiagnosticWarn           = { fg = p.yellow },
    DiagnosticInfo           = { fg = p.blue },
    DiagnosticHint           = { fg = p.teal },
    DiagnosticOk             = { fg = p.green },
    DiagnosticUnderlineError = { sp = p.red, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = p.yellow, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = p.blue, undercurl = true },
    DiagnosticUnderlineHint  = { sp = p.teal, undercurl = true },
    DiagnosticUnderlineOk    = { sp = p.green, undercurl = true },
    DiagnosticVirtualTextError = { fg = p.red, bg = p.mantle },
    DiagnosticVirtualTextWarn  = { fg = p.yellow, bg = p.mantle },
    DiagnosticVirtualTextInfo  = { fg = p.blue, bg = p.mantle },
    DiagnosticVirtualTextHint  = { fg = p.teal, bg = p.mantle },
    DiagnosticVirtualTextOk    = { fg = p.green, bg = p.mantle },
    DiagnosticSignError = { fg = p.red },
    DiagnosticSignWarn  = { fg = p.yellow },
    DiagnosticSignInfo  = { fg = p.blue },
    DiagnosticSignHint  = { fg = p.teal },
    DiagnosticSignOk    = { fg = p.green },
  }
end

--- Generate LSP highlight groups
---@param p NebulaPalette
---@return table<string, vim.api.keyset.highlight>
function M.lsp(p)
  return {
    LspReferenceText  = { bg = p.surface0 },
    LspReferenceRead  = { bg = p.surface0 },
    LspReferenceWrite = { bg = p.surface0, bold = true },
    LspCodeLens       = { fg = p.text_muted },
    LspSignatureActiveParameter = { fg = p.brand, bold = true },
    LspInlayHint = { fg = p.surface2 },
  }
end

--- Generate Treesitter highlight groups
---@param p NebulaPalette
---@return table<string, vim.api.keyset.highlight>
function M.treesitter(p)
  return {
    -- ── Identifiers ──────────────────────────────────────────────────
    ["@variable"]            = { fg = p.text },
    ["@variable.builtin"]    = { fg = p.red },
    ["@variable.parameter"]  = { fg = p.text },
    ["@variable.member"]     = { fg = p.teal },
    ["@constant"]            = { fg = p.orange },
    ["@constant.builtin"]    = { fg = p.orange, bold = true },
    ["@constant.macro"]      = { fg = p.orange },
    ["@module"]              = { fg = p.blue },
    ["@label"]               = { fg = p.teal },

    -- ── Literals ─────────────────────────────────────────────────────
    ["@string"]          = { fg = p.green },
    ["@string.escape"]   = { fg = p.pink },
    ["@string.regexp"]   = { fg = p.pink },
    ["@string.special"]  = { fg = p.pink },
    ["@string.special.url"] = { fg = p.blue, underline = true },
    ["@character"]       = { fg = p.green },
    ["@character.special"] = { fg = p.pink },
    ["@number"]          = { fg = p.orange },
    ["@number.float"]    = { fg = p.orange },
    ["@boolean"]         = { fg = p.orange },

    -- ── Types ────────────────────────────────────────────────────────
    ["@type"]          = { fg = p.yellow },
    ["@type.builtin"]  = { fg = p.yellow },
    ["@type.qualifier"] = { fg = p.purple },
    ["@attribute"]     = { fg = p.teal },
    ["@property"]      = { fg = p.teal },

    -- ── Functions ────────────────────────────────────────────────────
    ["@function"]         = { fg = p.blue },
    ["@function.builtin"] = { fg = p.blue },
    ["@function.call"]    = { fg = p.blue },
    ["@function.macro"]   = { fg = p.pink },
    ["@function.method"]  = { fg = p.blue },
    ["@function.method.call"] = { fg = p.blue },
    ["@constructor"]      = { fg = p.yellow },

    -- ── Keywords ─────────────────────────────────────────────────────
    ["@keyword"]              = { fg = p.purple },
    ["@keyword.function"]     = { fg = p.purple },
    ["@keyword.operator"]     = { fg = p.purple },
    ["@keyword.return"]       = { fg = p.purple },
    ["@keyword.conditional"]  = { fg = p.purple },
    ["@keyword.repeat"]       = { fg = p.purple },
    ["@keyword.import"]       = { fg = p.purple },
    ["@keyword.exception"]    = { fg = p.red },
    ["@keyword.modifier"]     = { fg = p.purple },

    -- ── Operators & Punctuation ──────────────────────────────────────
    ["@operator"]               = { fg = p.text_muted },
    ["@punctuation.bracket"]    = { fg = p.text_muted },
    ["@punctuation.delimiter"]  = { fg = p.text_muted },
    ["@punctuation.special"]    = { fg = p.pink },

    -- ── Comments & Documentation ─────────────────────────────────────
    ["@comment"]         = { fg = p.text_muted },
    ["@comment.todo"]    = { fg = p.bg, bg = p.yellow, bold = true },
    ["@comment.note"]    = { fg = p.bg, bg = p.blue, bold = true },
    ["@comment.warning"] = { fg = p.bg, bg = p.orange, bold = true },
    ["@comment.error"]   = { fg = p.bg, bg = p.red, bold = true },

    -- ── Markup ───────────────────────────────────────────────────────
    ["@markup.heading"]   = { fg = p.brand, bold = true },
    ["@markup.strong"]    = { bold = true },
    ["@markup.italic"]    = {},
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.link"]      = { fg = p.blue },
    ["@markup.link.url"]  = { fg = p.blue, underline = true },
    ["@markup.raw"]       = { fg = p.green },
    ["@markup.list"]      = { fg = p.purple },

    -- ── Tags (HTML/JSX) ──────────────────────────────────────────────
    ["@tag"]           = { fg = p.red },
    ["@tag.attribute"] = { fg = p.yellow },
    ["@tag.delimiter"] = { fg = p.text_muted },
  }
end

--- Generate highlight groups for popular plugins
---@param p NebulaPalette
---@return table<string, vim.api.keyset.highlight>
function M.plugins(p)
  return {
    -- ── Telescope ────────────────────────────────────────────────────
    TelescopeNormal       = { fg = p.text, bg = p.mantle },
    TelescopeBorder       = { fg = p.surface2, bg = p.mantle },
    TelescopeTitle        = { fg = p.brand, bold = true },
    TelescopePromptNormal = { fg = p.text, bg = p.crust },
    TelescopePromptBorder = { fg = p.surface2, bg = p.crust },
    TelescopePromptTitle  = { fg = p.brand, bg = p.crust, bold = true },
    TelescopePromptPrefix = { fg = p.brand },
    TelescopeSelection    = { bg = p.surface0 },
    TelescopeMatching     = { fg = p.brand, bold = true },
    TelescopePreviewTitle = { fg = p.green, bold = true },
    TelescopeResultsTitle = { fg = p.blue, bold = true },

    -- ── nvim-cmp ─────────────────────────────────────────────────────
    CmpItemAbbr           = { fg = p.text },
    CmpItemAbbrDeprecated = { fg = p.text_muted, strikethrough = true },
    CmpItemAbbrMatch      = { fg = p.brand, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.brand, bold = true },
    CmpItemMenu           = { fg = p.text_muted },
    CmpItemKindDefault    = { fg = p.text_muted },
    CmpItemKindFunction   = { fg = p.blue },
    CmpItemKindMethod     = { fg = p.blue },
    CmpItemKindVariable   = { fg = p.text },
    CmpItemKindKeyword    = { fg = p.purple },
    CmpItemKindText       = { fg = p.green },
    CmpItemKindClass      = { fg = p.yellow },
    CmpItemKindStruct     = { fg = p.yellow },
    CmpItemKindModule     = { fg = p.blue },
    CmpItemKindSnippet    = { fg = p.pink },
    CmpItemKindField      = { fg = p.teal },
    CmpItemKindProperty   = { fg = p.teal },
    CmpItemKindConstant   = { fg = p.orange },
    CmpItemKindEnum       = { fg = p.yellow },
    CmpItemKindInterface  = { fg = p.yellow },
    CmpItemKindFile       = { fg = p.blue },
    CmpItemKindFolder     = { fg = p.blue },

    -- ── Gitsigns ─────────────────────────────────────────────────────
    GitSignsAdd          = { fg = p.green },
    GitSignsChange       = { fg = p.blue },
    GitSignsDelete       = { fg = p.red },
    GitSignsAddNr        = { fg = p.green },
    GitSignsChangeNr     = { fg = p.blue },
    GitSignsDeleteNr     = { fg = p.red },
    GitSignsAddLn        = { bg = p.green, fg = p.bg },
    GitSignsChangeLn     = { bg = p.blue, fg = p.bg },
    GitSignsDeleteLn     = { bg = p.red, fg = p.bg },

    -- ── Indent Blankline ─────────────────────────────────────────────
    IndentBlanklineChar        = { fg = p.surface0, nocombine = true },
    IndentBlanklineContextChar = { fg = p.surface2, nocombine = true },
    IblIndent                  = { fg = p.surface0, nocombine = true },
    IblScope                   = { fg = p.surface2, nocombine = true },

    -- ── nvim-tree / neo-tree ─────────────────────────────────────────
    NvimTreeNormal       = { fg = p.text, bg = p.mantle },
    NvimTreeFolderIcon   = { fg = p.blue },
    NvimTreeFolderName   = { fg = p.blue },
    NvimTreeOpenedFolderName = { fg = p.blue, bold = true },
    NvimTreeRootFolder   = { fg = p.brand, bold = true },
    NvimTreeGitDirty     = { fg = p.yellow },
    NvimTreeGitNew       = { fg = p.green },
    NvimTreeGitDeleted   = { fg = p.red },
    NeoTreeNormal        = { fg = p.text, bg = p.mantle },
    NeoTreeNormalNC      = { fg = p.text, bg = p.mantle },
    NeoTreeDirectoryIcon = { fg = p.blue },
    NeoTreeDirectoryName = { fg = p.blue },
    NeoTreeRootName      = { fg = p.brand, bold = true },
    NeoTreeGitAdded      = { fg = p.green },
    NeoTreeGitModified   = { fg = p.yellow },
    NeoTreeGitDeleted    = { fg = p.red },

    -- ── Which-key ────────────────────────────────────────────────────
    WhichKey       = { fg = p.brand },
    WhichKeyGroup  = { fg = p.blue },
    WhichKeyDesc   = { fg = p.text },
    WhichKeySeparator = { fg = p.text_muted },
    WhichKeyValue  = { fg = p.text_muted },

    -- ── Lazy.nvim ────────────────────────────────────────────────────
    LazyH1         = { fg = p.bg, bg = p.brand, bold = true },
    LazyButton     = { fg = p.text, bg = p.surface0 },
    LazyButtonActive = { fg = p.bg, bg = p.brand },
    LazySpecial    = { fg = p.teal },
    LazyProgressDone = { fg = p.brand },
    LazyProgressTodo = { fg = p.surface1 },

    -- ── Mason ────────────────────────────────────────────────────────
    MasonNormal    = { fg = p.text, bg = p.mantle },
    MasonHeader    = { fg = p.bg, bg = p.brand, bold = true },
    MasonHighlight = { fg = p.brand },

    -- ── Notify ───────────────────────────────────────────────────────
    NotifyERRORBorder = { fg = p.red },
    NotifyERRORIcon   = { fg = p.red },
    NotifyERRORTitle  = { fg = p.red },
    NotifyWARNBorder  = { fg = p.yellow },
    NotifyWARNIcon    = { fg = p.yellow },
    NotifyWARNTitle   = { fg = p.yellow },
    NotifyINFOBorder  = { fg = p.blue },
    NotifyINFOIcon    = { fg = p.blue },
    NotifyINFOTitle   = { fg = p.blue },
    NotifyDEBUGBorder = { fg = p.text_muted },
    NotifyDEBUGIcon   = { fg = p.text_muted },
    NotifyDEBUGTitle  = { fg = p.text_muted },

    -- ── Noice ────────────────────────────────────────────────────────
    NoiceCmdline       = { fg = p.text },
    NoiceCmdlinePopup  = { fg = p.text, bg = p.mantle },
    NoiceCmdlinePopupBorder = { fg = p.surface2 },
    NoiceCmdlineIcon   = { fg = p.brand },

    -- ── Mini (mini.nvim) ─────────────────────────────────────────────
    MiniStatuslineFilename = { fg = p.text, bg = p.surface0 },
    MiniStatuslineModeNormal  = { fg = p.bg, bg = p.blue, bold = true },
    MiniStatuslineModeInsert  = { fg = p.bg, bg = p.green, bold = true },
    MiniStatuslineModeVisual  = { fg = p.bg, bg = p.purple, bold = true },
    MiniStatuslineModeReplace = { fg = p.bg, bg = p.red, bold = true },
    MiniStatuslineModeCommand = { fg = p.bg, bg = p.orange, bold = true },
    MiniTablineCurrent  = { fg = p.text, bg = p.bg, bold = true },
    MiniTablineVisible  = { fg = p.text_muted, bg = p.mantle },
    MiniTablineHidden   = { fg = p.text_muted, bg = p.crust },
    MiniTablineFill     = { bg = p.mantle },
    MiniCursorword      = { bg = p.surface0, bold = true },
    MiniIndentscopeSymbol = { fg = p.surface2 },

    -- ── mini.clue ────────────────────────────────────────────────────
    MiniClueBorder               = { fg = p.surface2, bg = p.mantle },
    MiniClueTitle                = { fg = p.brand, bg = p.mantle, bold = true },
    MiniClueNextKey              = { fg = p.brand },
    MiniClueNextKeyWithPostkeys  = { fg = p.orange, bold = true },
    MiniClueDescSingle           = { fg = p.text },
    MiniClueDescGroup            = { fg = p.blue },
    MiniClueSeparator            = { fg = p.surface2 },

    -- ── fzf-lua ──────────────────────────────────────────────────────
    -- Main window
    FzfLuaNormal        = { fg = p.text, bg = p.mantle },
    FzfLuaBorder        = { fg = p.surface2, bg = p.mantle },
    FzfLuaTitle         = { fg = p.brand, bold = true },
    FzfLuaTitleFlags    = { fg = p.text_muted },
    FzfLuaBackdrop      = { bg = p.bg },
    -- Preview window
    FzfLuaPreviewNormal = { fg = p.text, bg = p.crust },
    FzfLuaPreviewBorder = { fg = p.surface2, bg = p.crust },
    FzfLuaPreviewTitle  = { fg = p.green, bold = true },
    -- Help window
    FzfLuaHelpNormal    = { fg = p.text, bg = p.mantle },
    FzfLuaHelpBorder    = { fg = p.surface2, bg = p.mantle },
    -- Cursor / selection
    FzfLuaCursor        = { fg = p.bg, bg = p.brand },
    FzfLuaCursorLine    = { bg = p.surface0 },
    FzfLuaCursorLineNr  = { fg = p.text_muted, bg = p.surface0 },
    FzfLuaSearch        = { fg = p.brand, bold = true },
    -- Scrollbars
    FzfLuaScrollBorderEmpty = { fg = p.surface1 },
    FzfLuaScrollBorderFull  = { fg = p.brand },
    FzfLuaScrollFloatEmpty  = { fg = p.surface1 },
    FzfLuaScrollFloatFull   = { fg = p.brand },
    -- Headers / keybind hints
    FzfLuaHeaderBind    = { fg = p.brand },
    FzfLuaHeaderText    = { fg = p.blue },
    -- Path parts
    FzfLuaPathColNr     = { fg = p.teal },
    FzfLuaPathLineNr    = { fg = p.green },
    FzfLuaDirIcon       = { fg = p.blue },
    FzfLuaDirPart       = { fg = p.text_muted },
    FzfLuaFilePart      = { fg = p.text },
    -- Buffer list
    FzfLuaBufName       = { fg = p.blue },
    FzfLuaBufId         = { fg = p.text_muted },
    FzfLuaBufNr         = { fg = p.text_muted },
    FzfLuaBufLineNr     = { fg = p.text_muted },
    FzfLuaBufFlagCur    = { fg = p.brand },
    FzfLuaBufFlagAlt    = { fg = p.blue },
    -- Tab list
    FzfLuaTabTitle      = { fg = p.blue, bold = true },
    FzfLuaTabMarker     = { fg = p.brand, bold = true },
    -- Live grep / symbols
    FzfLuaLivePrompt    = { fg = p.brand },
    FzfLuaLiveSym       = { fg = p.purple },
    -- Command-mode entries
    FzfLuaCmdEx         = { fg = p.text },
    FzfLuaCmdBuf        = { fg = p.blue },
    FzfLuaCmdGlobal     = { fg = p.purple },
    -- fzf terminal color mappings (used with fzf_colors = true)
    FzfLuaFzfNormal     = { fg = p.text, bg = p.mantle },
    FzfLuaFzfCursorLine = { bg = p.surface0 },
    FzfLuaFzfMatch      = { fg = p.brand, bold = true },
    FzfLuaFzfBorder     = { fg = p.surface2 },
    FzfLuaFzfScrollbar  = { fg = p.surface2 },
    FzfLuaFzfSeparator  = { fg = p.surface2 },
    FzfLuaFzfGutter     = { bg = p.mantle },
    FzfLuaFzfHeader     = { fg = p.brand },
    FzfLuaFzfInfo       = { fg = p.text_muted },
    FzfLuaFzfPointer    = { fg = p.brand },
    FzfLuaFzfMarker     = { fg = p.brand },
    FzfLuaFzfSpinner    = { fg = p.brand },
    FzfLuaFzfPrompt     = { fg = p.brand },
    FzfLuaFzfQuery      = { fg = p.text },
  }
end

return M
