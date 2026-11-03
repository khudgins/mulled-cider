# Mulled Cider for swaylock

Lock screen and unlock indicator colors for swaylock.

## Installation

### Config file (recommended)

Copy or symlink to swaylock's config file:

```sh
mkdir -p ~/.config/swaylock
ln -s /path/to/swaylock-mulled-cider.conf ~/.config/swaylock/config
```

### Command line

```sh
swaylock -C /path/to/swaylock-mulled-cider.conf
```

## What's Themed

- **Background**: solid `#1F1612`
- **Indicator ring**: dim brown at rest, golden highlight on each keypress, light rust on backspace
- **Verifying**: golden ring
- **Wrong password**: rust ring
- **Cleared input**: green ring
- **Caps Lock**: light rust ring and warning text
- **Keyboard layout badge**

## Notes

The indicator only appears once you start typing. To show it all the time, add `indicator-idle-visible` to your config.

The theme uses options from stock swaylock. It also works with `swaylock-effects`, where you can add effects such as `screenshots` and `effect-blur=7x5`.
