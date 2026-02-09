# Mulled Cider for Neovim

Lua colorscheme for Neovim with treesitter, LSP, and plugin support.

## Installation

### Manual

Copy `colors/mulled-cider.lua` to `~/.config/nvim/colors/`, then:

```vim
:colorscheme mulled-cider
```

### Plugin manager

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "khudgins/mulled-cider",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme mulled-cider")
  end,
}
```

## What's Themed

### Editor UI
- Normal, float, and popup windows
- Cursor, line numbers, sign column
- Statusline, tabline, and window separators
- Visual selections and search highlights
- Diagnostics (error, warn, info, hint) with undercurl support
- Diff and spell checking
- Matching parentheses (coral border, subtle gold background)

### Syntax
- All standard Vim highlight groups (Comment, String, Keyword, Function, Type, Constant, Operator, etc.)
- **Treesitter** groups (`@function`, `@keyword`, `@variable`, `@type`, `@tag`, etc.)
- **LSP semantic tokens** (`@lsp.type.class`, `@lsp.type.function`, etc.)

### Plugins
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

### Terminal
All 16 ANSI colors are set, matching the Alacritty theme.

## Requirements

- Neovim 0.8+ (for treesitter/LSP highlights)
- A terminal with true color support (`termguicolors`)
