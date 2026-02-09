# Mulled Cider for tmux

Status bar, pane border, and UI styling for tmux.

## Installation

Add to your `~/.tmux.conf`:

```sh
source-file /path/to/tmux-mulled-cider.conf
```

Then reload:

```sh
tmux source-file ~/.tmux.conf
```

## What's Themed

- **Status bar**: dark background, rust session badge, golden active window, muted inactive windows, clock
- **Pane borders**: dim inactive (`#3D2A22`), golden active (`#D4A574`)
- **Messages and command prompt**
- **Copy mode**: search matches and selections
- **Clock mode**: golden accent, 24-hour format
- **Popups and menus** (tmux 3.2+)
- **Bell indicator**: rust badge on the affected window

## Requirements

- tmux 3.2+ for popup/menu styling
- A terminal with true color support (the conf sets `terminal-overrides` for this)

## Customization

The conf sets `status-position bottom` and `status-justify left`. If you prefer a different layout, override these after the `source-file` line in your `~/.tmux.conf`.
