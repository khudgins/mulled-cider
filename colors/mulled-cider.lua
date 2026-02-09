-- Mulled Cider - A warm, autumnal color theme for Neovim
-- https://github.com/khudgins/mulled-cider

local M = {}

function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "mulled-cider"

  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Palette
  local c = {
    bg          = "#2B1F1A",
    bg_dark     = "#241A16",
    bg_darker   = "#1F1612",
    bg_raised   = "#352520",
    bg_surface  = "#3D2A22",
    fg          = "#E8D5C4",
    fg_bright   = "#F4D1A6",
    fg_dim      = "#8B6F5E",
    accent      = "#D4A574",
    rust        = "#B85C38",
    rust_light  = "#C97D60",
    green       = "#8B9A5B",
    green_light = "#A4B574",
    blue        = "#9B7E6B",
    blue_light  = "#B89A87",
    cyan        = "#A68B5B",
    cyan_light  = "#C4A574",
    coral       = "#E89D7A",
    magenta     = "#D47A5A",
    cream       = "#F4E8D4",
    border      = "#6B4E3A",
    select      = "#5C3D2E",
  }

  -- Editor UI
  hl("Normal",         { fg = c.fg, bg = c.bg })
  hl("NormalFloat",    { fg = c.fg, bg = c.bg_raised })
  hl("FloatBorder",    { fg = c.border, bg = c.bg_raised })
  hl("Cursor",         { fg = c.bg, bg = c.accent })
  hl("CursorLine",     { bg = c.bg_raised })
  hl("CursorColumn",   { bg = c.bg_raised })
  hl("ColorColumn",    { bg = c.bg_raised })
  hl("LineNr",         { fg = c.fg_dim })
  hl("CursorLineNr",   { fg = c.accent, bold = true })
  hl("SignColumn",     { fg = c.fg_dim, bg = c.bg })
  hl("VertSplit",      { fg = c.bg_surface })
  hl("WinSeparator",   { fg = c.bg_surface })
  hl("StatusLine",     { fg = c.fg, bg = c.bg_darker })
  hl("StatusLineNC",   { fg = c.fg_dim, bg = c.bg_darker })
  hl("TabLine",        { fg = c.fg_dim, bg = c.bg_dark })
  hl("TabLineFill",    { bg = c.bg_darker })
  hl("TabLineSel",     { fg = c.fg_bright, bg = c.bg, bold = true })
  hl("WinBar",        { fg = c.fg, bg = c.bg })
  hl("WinBarNC",      { fg = c.fg_dim, bg = c.bg })

  -- Selections and search
  hl("Visual",         { bg = c.select })
  hl("VisualNOS",      { bg = c.select })
  hl("Search",         { fg = c.bg, bg = c.accent })
  hl("IncSearch",      { fg = c.bg, bg = c.coral })
  hl("CurSearch",      { fg = c.bg, bg = c.coral })
  hl("Substitute",     { fg = c.bg, bg = c.coral })

  -- Popup menu
  hl("Pmenu",          { fg = c.fg, bg = c.bg_raised })
  hl("PmenuSel",       { fg = c.fg_bright, bg = c.select })
  hl("PmenuSbar",      { bg = c.bg_surface })
  hl("PmenuThumb",     { bg = c.border })

  -- Messages and diagnostics
  hl("ErrorMsg",       { fg = c.coral })
  hl("WarningMsg",     { fg = c.fg_bright })
  hl("MoreMsg",        { fg = c.green_light })
  hl("ModeMsg",        { fg = c.accent, bold = true })
  hl("Question",       { fg = c.accent })

  -- Diagnostics
  hl("DiagnosticError",      { fg = c.coral })
  hl("DiagnosticWarn",       { fg = c.fg_bright })
  hl("DiagnosticInfo",       { fg = c.accent })
  hl("DiagnosticHint",       { fg = c.green_light })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = c.coral })
  hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.fg_bright })
  hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.accent })
  hl("DiagnosticUnderlineHint",  { undercurl = true, sp = c.green_light })

  -- Diff
  hl("DiffAdd",        { bg = "#8B9A5B33" })
  hl("DiffChange",     { bg = "#D4A57433" })
  hl("DiffDelete",     { fg = c.rust_light, bg = "#C97D6033" })
  hl("DiffText",       { bg = "#D4A57455" })

  -- Folding and special
  hl("Folded",         { fg = c.fg_dim, bg = c.bg_raised })
  hl("FoldColumn",     { fg = c.fg_dim, bg = c.bg })
  hl("NonText",        { fg = c.select })
  hl("SpecialKey",     { fg = c.select })
  hl("Conceal",        { fg = c.fg_dim })
  hl("Directory",      { fg = c.accent })
  hl("Title",          { fg = c.fg_bright, bold = true })
  hl("MatchParen",     { fg = c.coral, bg = "#D4A57418", bold = true })
  hl("SpellBad",       { undercurl = true, sp = c.coral })
  hl("SpellCap",       { undercurl = true, sp = c.accent })
  hl("SpellLocal",     { undercurl = true, sp = c.cyan_light })
  hl("SpellRare",      { undercurl = true, sp = c.magenta })

  -- Syntax highlighting
  hl("Comment",        { fg = c.fg_dim, italic = true })
  hl("String",         { fg = c.green_light })
  hl("Character",      { fg = c.green_light })
  hl("Number",         { fg = c.accent })
  hl("Boolean",        { fg = c.accent })
  hl("Float",          { fg = c.accent })
  hl("Identifier",     { fg = c.fg })
  hl("Function",       { fg = c.accent })
  hl("Statement",      { fg = c.rust_light, bold = true })
  hl("Conditional",    { fg = c.rust_light, bold = true })
  hl("Repeat",         { fg = c.rust_light, bold = true })
  hl("Label",          { fg = c.rust_light })
  hl("Operator",       { fg = c.blue })
  hl("Keyword",        { fg = c.rust_light, bold = true })
  hl("Exception",      { fg = c.rust_light, bold = true })
  hl("PreProc",        { fg = c.rust })
  hl("Include",        { fg = c.rust_light })
  hl("Define",         { fg = c.rust_light })
  hl("Macro",          { fg = c.rust })
  hl("PreCondit",      { fg = c.rust_light })
  hl("Type",           { fg = c.blue_light })
  hl("StorageClass",   { fg = c.rust_light, bold = true })
  hl("Structure",      { fg = c.blue_light })
  hl("Typedef",        { fg = c.blue_light })
  hl("Special",        { fg = c.rust })
  hl("SpecialChar",    { fg = c.rust })
  hl("Tag",            { fg = c.rust_light })
  hl("Delimiter",      { fg = c.blue })
  hl("SpecialComment", { fg = c.fg_dim, italic = true })
  hl("Debug",          { fg = c.coral })
  hl("Underlined",     { fg = c.accent, underline = true })
  hl("Ignore",         { fg = c.fg_dim })
  hl("Error",          { fg = c.coral, bg = "#B85C3820" })
  hl("Todo",           { fg = c.bg, bg = c.accent, bold = true })
  hl("Constant",       { fg = c.rust })

  -- Treesitter highlights
  hl("@comment",               { link = "Comment" })
  hl("@string",                { link = "String" })
  hl("@string.escape",        { fg = c.rust })
  hl("@string.regex",         { fg = c.cyan })
  hl("@character",             { link = "Character" })
  hl("@number",                { link = "Number" })
  hl("@boolean",               { link = "Boolean" })
  hl("@float",                 { link = "Float" })
  hl("@function",              { fg = c.accent })
  hl("@function.builtin",     { fg = c.accent })
  hl("@function.call",        { fg = c.accent })
  hl("@function.macro",       { fg = c.rust })
  hl("@method",                { fg = c.accent })
  hl("@method.call",          { fg = c.accent })
  hl("@constructor",          { fg = c.fg_bright })
  hl("@parameter",            { fg = c.fg })
  hl("@keyword",               { fg = c.rust_light, bold = true })
  hl("@keyword.function",     { fg = c.rust_light, bold = true })
  hl("@keyword.return",       { fg = c.rust_light, bold = true })
  hl("@keyword.operator",     { fg = c.rust_light })
  hl("@conditional",           { fg = c.rust_light, bold = true })
  hl("@repeat",                { fg = c.rust_light, bold = true })
  hl("@label",                 { fg = c.rust_light })
  hl("@operator",              { fg = c.blue })
  hl("@exception",             { fg = c.rust_light, bold = true })
  hl("@variable",              { fg = c.fg })
  hl("@variable.builtin",     { fg = c.rust_light })
  hl("@type",                  { fg = c.blue_light })
  hl("@type.builtin",         { fg = c.blue_light })
  hl("@type.definition",      { fg = c.blue_light })
  hl("@namespace",             { fg = c.fg_bright })
  hl("@include",               { fg = c.rust_light })
  hl("@field",                 { fg = c.fg })
  hl("@property",              { fg = c.fg })
  hl("@punctuation.bracket",  { fg = c.blue })
  hl("@punctuation.delimiter",{ fg = c.blue })
  hl("@punctuation.special",  { fg = c.rust })
  hl("@constant",              { fg = c.rust })
  hl("@constant.builtin",     { fg = c.rust })
  hl("@constant.macro",       { fg = c.rust })
  hl("@tag",                   { fg = c.rust_light })
  hl("@tag.attribute",        { fg = c.accent })
  hl("@tag.delimiter",        { fg = c.blue })
  hl("@text.literal",         { fg = c.green_light })
  hl("@text.title",           { fg = c.fg_bright, bold = true })
  hl("@text.uri",             { fg = c.accent, underline = true })
  hl("@text.emphasis",        { italic = true })
  hl("@text.strong",          { bold = true })
  hl("@text.strike",          { strikethrough = true })

  -- LSP semantic tokens
  hl("@lsp.type.class",       { fg = c.fg_bright })
  hl("@lsp.type.function",    { fg = c.accent })
  hl("@lsp.type.method",      { fg = c.accent })
  hl("@lsp.type.parameter",   { fg = c.fg })
  hl("@lsp.type.property",    { fg = c.fg })
  hl("@lsp.type.variable",    { fg = c.fg })
  hl("@lsp.type.namespace",   { fg = c.fg_bright })
  hl("@lsp.type.enum",        { fg = c.blue_light })
  hl("@lsp.type.interface",   { fg = c.blue_light })
  hl("@lsp.type.struct",      { fg = c.blue_light })
  hl("@lsp.type.type",        { fg = c.blue_light })
  hl("@lsp.type.enumMember",  { fg = c.rust })
  hl("@lsp.mod.deprecated",   { strikethrough = true })

  -- Git signs (gitsigns.nvim)
  hl("GitSignsAdd",    { fg = c.green })
  hl("GitSignsChange", { fg = c.accent })
  hl("GitSignsDelete", { fg = c.rust_light })

  -- Telescope
  hl("TelescopeNormal",        { fg = c.fg, bg = c.bg_dark })
  hl("TelescopeBorder",        { fg = c.border, bg = c.bg_dark })
  hl("TelescopePromptNormal",  { fg = c.fg, bg = c.bg_raised })
  hl("TelescopePromptBorder",  { fg = c.border, bg = c.bg_raised })
  hl("TelescopePromptTitle",   { fg = c.bg, bg = c.accent, bold = true })
  hl("TelescopePreviewTitle",  { fg = c.bg, bg = c.green, bold = true })
  hl("TelescopeResultsTitle",  { fg = c.bg, bg = c.rust, bold = true })
  hl("TelescopeSelection",     { bg = c.select })
  hl("TelescopeMatching",      { fg = c.coral, bold = true })

  -- nvim-cmp
  hl("CmpItemAbbr",            { fg = c.fg })
  hl("CmpItemAbbrMatch",       { fg = c.accent, bold = true })
  hl("CmpItemAbbrMatchFuzzy",  { fg = c.accent, bold = true })
  hl("CmpItemAbbrDeprecated",  { fg = c.fg_dim, strikethrough = true })
  hl("CmpItemKindFunction",    { fg = c.accent })
  hl("CmpItemKindMethod",      { fg = c.accent })
  hl("CmpItemKindVariable",    { fg = c.fg })
  hl("CmpItemKindKeyword",     { fg = c.rust_light })
  hl("CmpItemKindText",        { fg = c.fg })
  hl("CmpItemKindClass",       { fg = c.fg_bright })
  hl("CmpItemKindInterface",   { fg = c.blue_light })
  hl("CmpItemKindStruct",      { fg = c.blue_light })
  hl("CmpItemKindSnippet",     { fg = c.green_light })

  -- Indent-blankline
  hl("IndentBlanklineChar",         { fg = c.bg_surface })
  hl("IndentBlanklineContextChar",  { fg = c.border })

  -- Neovim terminal colors
  vim.g.terminal_color_0  = c.bg_darker
  vim.g.terminal_color_1  = c.rust_light
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.accent
  vim.g.terminal_color_4  = c.blue
  vim.g.terminal_color_5  = c.rust
  vim.g.terminal_color_6  = c.cyan
  vim.g.terminal_color_7  = c.fg
  vim.g.terminal_color_8  = c.select
  vim.g.terminal_color_9  = c.coral
  vim.g.terminal_color_10 = c.green_light
  vim.g.terminal_color_11 = c.fg_bright
  vim.g.terminal_color_12 = c.blue_light
  vim.g.terminal_color_13 = c.magenta
  vim.g.terminal_color_14 = c.cyan_light
  vim.g.terminal_color_15 = c.cream
end

M.setup()

return M
