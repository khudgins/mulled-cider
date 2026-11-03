# Mulled Cider for Sway

Window border and title bar colors for the Sway Wayland compositor.

## Installation

Add to your `~/.config/sway/config`:

```sh
include /path/to/sway-mulled-cider.conf
```

Then reload Sway (`$mod+Shift+c`, or `swaymsg reload`).

## What's Themed

- **Focused window**: golden border and title bar, with a light rust split indicator
- **Focused-inactive window** (focused window in an unfocused container): selection brown
- **Unfocused windows**: dim border (`#3D2A22`), muted title text
- **Urgent windows**: rust
- **Background** behind windows: `#2B1F1A`

## Palette Variables

The file also defines the palette as Sway variables (`$mc_bg0`, `$mc_gold`, `$mc_rust`, and others), so your own config can use them after the `include` line:

```sh
include /path/to/sway-mulled-cider.conf
output * bg $mc_bg0 solid_color
```

## Related

For the rest of a Sway desktop, see the [Waybar](waybar.md), [mako](mako.md), [swaylock](swaylock.md), and [wofi](wofi.md) themes.
