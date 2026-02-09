# Mulled Cider for Obsidian

CSS snippet that applies the Mulled Cider palette to Obsidian's dark theme.

## Installation

1. Copy `obsidian-mulled-cider.css` into your vault's snippet directory:
   ```
   <your-vault>/.obsidian/snippets/obsidian-mulled-cider.css
   ```
2. In Obsidian, go to **Settings > Appearance > CSS snippets**
3. Click the refresh icon, then enable **obsidian-mulled-cider**

## What's Themed

- All background and text colors
- Headers (h1 through h6, warm gradient from cream to muted brown)
- Links (internal, external, and unresolved)
- Tags
- Code blocks and inline code with syntax highlighting
- Callouts (note, tip, warning, danger, success, info, todo, and more)
- Graph view node colors
- Navigation, sidebar, tabs, and titlebar
- Checkboxes, toggles, and menus
- Selection and search highlights
- Scrollbars and dividers

## Multiple Vaults

Obsidian snippets are per-vault. To share the theme across vaults without duplicating the file, symlink it:

```sh
ln -s /path/to/mulled-cider/obsidian-mulled-cider.css \
  ~/my-vault/.obsidian/snippets/obsidian-mulled-cider.css
```

Repeat for each vault. Edits to the original file propagate automatically. You'll still need to enable the snippet once per vault in **Settings > Appearance > CSS snippets**.

## Notes

- This is a snippet, not a full theme — it overrides Obsidian's built-in dark theme
- Make sure Obsidian is set to **dark mode** (Settings > Appearance > Base color scheme)
- Works alongside the default theme or most community themes, though results may vary with heavily customized themes
