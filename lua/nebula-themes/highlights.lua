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

--- Generate highlight groups for plugins (mini.nvim + oil.nvim)
---@param p NebulaPalette
---@return table<string, vim.api.keyset.highlight>
function M.plugins(p)
  return {
    -- ── oil.nvim ──────────────────────────────────────────────────────
    OilDir                    = { fg = p.blue, bold = true },
    OilDirIcon                = { fg = p.blue },
    OilDirHidden              = { fg = p.text_muted },
    OilFile                   = { fg = p.text },
    OilFileHidden             = { fg = p.text_muted },
    OilSocket                 = { fg = p.purple },
    OilSocketHidden           = { fg = p.text_muted },
    OilLink                   = { fg = p.teal },
    OilLinkHidden             = { fg = p.text_muted },
    OilLinkTarget             = { fg = p.text_muted },
    OilOrphanLink             = { fg = p.red },
    OilOrphanLinkHidden       = { fg = p.text_muted },
    OilOrphanLinkTarget       = { fg = p.red },
    OilOrphanLinkTargetHidden = { fg = p.text_muted },
    OilLinkTargetHidden       = { fg = p.text_muted },
    OilCreate                 = { fg = p.green, bold = true },
    OilDelete                 = { fg = p.red, bold = true },
    OilMove                   = { fg = p.yellow, bold = true },
    OilCopy                   = { fg = p.blue, bold = true },
    OilChange                 = { fg = p.orange, bold = true },
    OilRestore                = { fg = p.green },
    OilPurge                  = { fg = p.red, bold = true },
    OilTrash                  = { fg = p.red },
    OilTrashSourcePath        = { fg = p.text_muted },
    OilEmpty                  = { fg = p.surface2 },
    OilHidden                 = { fg = p.text_muted },

    -- ── mini.statusline ───────────────────────────────────────────────
    MiniStatuslineDevinfo     = { fg = p.text_muted, bg = p.surface1 },
    MiniStatuslineFileinfo    = { fg = p.text_muted, bg = p.surface1 },
    MiniStatuslineFilename    = { fg = p.text, bg = p.surface0 },
    MiniStatuslineInactive    = { fg = p.blue, bg = p.mantle },
    MiniStatuslineModeNormal  = { fg = p.bg, bg = p.blue, bold = true },
    MiniStatuslineModeInsert  = { fg = p.bg, bg = p.green, bold = true },
    MiniStatuslineModeVisual  = { fg = p.bg, bg = p.purple, bold = true },
    MiniStatuslineModeReplace = { fg = p.bg, bg = p.red, bold = true },
    MiniStatuslineModeCommand = { fg = p.bg, bg = p.orange, bold = true },
    MiniStatuslineModeOther   = { fg = p.bg, bg = p.teal, bold = true },

    -- ── mini.tabline ──────────────────────────────────────────────────
    MiniTablineCurrent         = { fg = p.text, bg = p.bg, bold = true },
    MiniTablineVisible         = { fg = p.text_muted, bg = p.mantle },
    MiniTablineHidden          = { fg = p.text_muted, bg = p.crust },
    MiniTablineFill            = { bg = p.mantle },
    MiniTablineModifiedCurrent = { fg = p.red, bold = true },
    MiniTablineModifiedVisible = { fg = p.red },
    MiniTablineModifiedHidden  = { fg = p.red },
    MiniTablineTabpagesection  = { fg = p.surface1, bg = p.bg },

    -- ── mini.cursorword ───────────────────────────────────────────────
    MiniCursorword        = { bg = p.surface0, bold = true },
    MiniCursorwordCurrent = { underline = true },

    -- ── mini.indentscope ──────────────────────────────────────────────
    MiniIndentscopeSymbol = { fg = p.surface2 },

    -- ── mini.clue ─────────────────────────────────────────────────────
    MiniClueBorder              = { fg = p.surface2, bg = p.mantle },
    MiniClueTitle               = { fg = p.brand, bg = p.mantle, bold = true },
    MiniClueNextKey             = { fg = p.brand },
    MiniClueNextKeyWithPostkeys = { fg = p.orange, bold = true },
    MiniClueDescSingle          = { fg = p.text },
    MiniClueDescGroup           = { fg = p.blue },
    MiniClueSeparator           = { fg = p.surface2 },

    -- ── mini.pick ─────────────────────────────────────────────────────
    MiniPickBorder        = { link = "FloatBorder" },
    MiniPickBorderBusy    = { link = "DiagnosticWarn" },
    MiniPickBorderText    = { fg = p.brand, bg = p.mantle, bold = true },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile      = { link = "NormalFloat" },
    MiniPickHeader        = { fg = p.teal },
    MiniPickMatchCurrent  = { fg = p.brand, bg = p.surface0, bold = true },
    MiniPickMatchMarked   = { link = "Visual" },
    MiniPickMatchRanges   = { fg = p.teal },
    MiniPickNormal        = { link = "NormalFloat" },
    MiniPickPreviewLine   = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt        = { fg = p.text, bg = p.mantle },

    -- ── mini.diff ─────────────────────────────────────────────────────
    MiniDiffSignAdd     = { fg = p.green },
    MiniDiffSignChange  = { fg = p.yellow },
    MiniDiffSignDelete  = { fg = p.red },
    MiniDiffOverAdd     = { link = "DiffAdd" },
    MiniDiffOverChange  = { link = "DiffText" },
    MiniDiffOverContext = { link = "DiffChange" },
    MiniDiffOverDelete  = { link = "DiffDelete" },

    -- ── mini.surround ─────────────────────────────────────────────────
    MiniSurround = { bg = p.pink, fg = p.surface1 },

    -- ── mini.files ────────────────────────────────────────────────────
    MiniFilesBorder         = { link = "FloatBorder" },
    MiniFilesBorderModified = { link = "DiagnosticWarn" },
    MiniFilesCursorLine     = { link = "CursorLine" },
    MiniFilesDirectory      = { link = "Directory" },
    MiniFilesFile           = { fg = p.text },
    MiniFilesNormal         = { link = "NormalFloat" },
    MiniFilesTitle          = { link = "FloatTitle" },
    MiniFilesTitleFocused   = { fg = p.brand, bg = p.mantle, bold = true },

    -- ── mini.icons ────────────────────────────────────────────────────
    MiniIconsAzure  = { fg = p.blue },
    MiniIconsBlue   = { fg = p.blue },
    MiniIconsCyan   = { fg = p.teal },
    MiniIconsGreen  = { fg = p.green },
    MiniIconsGrey   = { fg = p.text },
    MiniIconsOrange = { fg = p.orange },
    MiniIconsPurple = { fg = p.purple },
    MiniIconsRed    = { fg = p.red },
    MiniIconsYellow = { fg = p.yellow },

    -- ── mini.hipatterns ───────────────────────────────────────────────
    MiniHipatternsFixme = { fg = p.bg, bg = p.red, bold = true },
    MiniHipatternsHack  = { fg = p.bg, bg = p.yellow, bold = true },
    MiniHipatternsNote  = { fg = p.bg, bg = p.blue, bold = true },
    MiniHipatternsTodo  = { fg = p.bg, bg = p.teal, bold = true },

    -- ── mini.notify ───────────────────────────────────────────────────
    MiniNotifyBorder = { link = "FloatBorder" },
    MiniNotifyNormal = { link = "NormalFloat" },
    MiniNotifyTitle  = { link = "FloatTitle" },

    -- ── mini.deps ─────────────────────────────────────────────────────
    MiniDepsChangeAdded   = { link = "diffAdded" },
    MiniDepsChangeRemoved = { link = "diffRemoved" },
    MiniDepsHint          = { link = "DiagnosticHint" },
    MiniDepsInfo          = { link = "DiagnosticInfo" },
    MiniDepsMsgBreaking   = { link = "DiagnosticWarn" },
    MiniDepsPlaceholder   = { link = "Comment" },
    MiniDepsTitle         = { link = "Title" },
    MiniDepsTitleError    = { bg = p.red, fg = p.bg },
    MiniDepsTitleSame     = { link = "DiffText" },
    MiniDepsTitleUpdate   = { bg = p.green, fg = p.bg },

    -- ── mini.jump ─────────────────────────────────────────────────────
    MiniJump             = { fg = p.surface2, bg = p.pink },
    MiniJump2dDim        = { fg = p.surface2 },
    MiniJump2dSpot       = { bg = p.bg, fg = p.orange, bold = true, underline = true },
    MiniJump2dSpotAhead  = { fg = p.teal },
    MiniJump2dSpotUnique = { bg = p.bg, fg = p.blue, bold = true },

    -- ── mini.starter ──────────────────────────────────────────────────
    MiniStarterCurrent    = {},
    MiniStarterFooter     = { fg = p.yellow },
    MiniStarterHeader     = { fg = p.blue },
    MiniStarterInactive   = { fg = p.surface2 },
    MiniStarterItem       = { fg = p.text },
    MiniStarterItemBullet = { fg = p.blue },
    MiniStarterItemPrefix = { fg = p.pink },
    MiniStarterSection    = { fg = p.brand },
    MiniStarterQuery      = { fg = p.green },

    -- ── mini.map ──────────────────────────────────────────────────────
    MiniMapNormal      = { link = "NormalFloat" },
    MiniMapSymbolCount = { link = "Special" },
    MiniMapSymbolLine  = { link = "Title" },
    MiniMapSymbolView  = { link = "Delimiter" },

    -- ── mini.animate ──────────────────────────────────────────────────
    MiniAnimateCursor      = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = { link = "NormalFloat" },

    -- ── mini.completion ───────────────────────────────────────────────
    MiniCompletionActiveParameter = { underline = true },

    -- ── mini.operators ────────────────────────────────────────────────
    MiniOperatorsExchangeFrom = { link = "IncSearch" },

    -- ── mini.test ─────────────────────────────────────────────────────
    MiniTestEmphasis = { bold = true },
    MiniTestFail     = { fg = p.red, bold = true },
    MiniTestPass     = { fg = p.green, bold = true },

    -- ── mini.trailspace ───────────────────────────────────────────────
    MiniTrailspace = { bg = p.red },
  }
end

return M
