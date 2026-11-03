# Mulled Cider for mako

Notification styling for the mako notification daemon.

## Installation

Add this as the **last** line of `~/.config/mako/config`:

```ini
include=/path/to/mako-mulled-cider.conf
```

It has to go last because the theme ends with `[urgency=...]` sections, and any options after it would only apply to critical notifications. mako requires the path to be absolute or start with `~/`.

Then reload:

```sh
makoctl reload
```

## What's Themed

- **Normal**: dark background (`#241A16`), cream text, golden border
- **Low urgency**: dim border, muted text
- **Critical**: rust border, light text
- **Progress bars**: selection brown
- Border size (2px) and corner radius (6px)
