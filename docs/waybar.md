# Mulled Cider for Waybar

Status bar styling for Waybar.

## Installation

Copy or symlink `waybar-mulled-cider.css` into `~/.config/waybar/` as `mulled-cider.css`, then import it at the top of your `~/.config/waybar/style.css`:

```css
@import "mulled-cider.css";

* {
    font-family: "Your Nerd Font", sans-serif;
    font-size: 13px;
}
```

The theme doesn't set a font, so set your own. A [Nerd Font](https://www.nerdfonts.com/) is recommended for module icons.

Restart Waybar to apply (`killall -SIGUSR2 waybar` reloads styles in place).

## What's Themed

- **Bar**: dark background (`#1F1612`, 92% opacity) with a dim bottom border
- **Workspaces**: muted inactive, golden focused, rust urgent
- **Sway mode indicator**: rust badge
- **Clock**: golden, bold
- **Battery**: green when charging, light rust when low, rust badge when critical
- **Network, Bluetooth, audio**: dimmed when disconnected, off, or muted
- **Idle inhibitor**: golden when active
- **Tooltips and tray menus**

## Palette Variables

The file defines the palette with `@define-color` (`@mc_bg0`, `@mc_gold`, `@mc_rust`, and others), so your `style.css` can use them after the import.
