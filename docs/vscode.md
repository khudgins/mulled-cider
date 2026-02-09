# Mulled Cider for VS Code

Full UI and syntax highlighting theme for Visual Studio Code.

## Installation

### From VSIX

```sh
code --install-extension mulled-cider-*.vsix
```

### Manual

1. Copy this repository to your VS Code extensions directory:
   - **macOS**: `~/.vscode/extensions/mulled-cider`
   - **Linux**: `~/.vscode/extensions/mulled-cider`
   - **Windows**: `%USERPROFILE%\.vscode\extensions\mulled-cider`
2. Restart VS Code
3. Open the Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`) and select **Preferences: Color Theme**
4. Choose **Mulled Cider**

## What's Themed

- Editor background, foreground, selections, and search highlights
- Sidebar, activity bar, status bar, title bar, and tabs
- Integrated terminal (all 16 ANSI colors)
- Git decorations and diff editor
- Autocomplete, widgets, buttons, badges, and scrollbars
- 19 syntax token color rules covering comments, strings, keywords, functions, types, constants, operators, markup, and more

## Development

Edit `themes/mulled-cider-color-theme.json` and run **Developer: Reload Window** in VS Code to see changes.

To rebuild and reinstall the extension:

```sh
./install-theme.sh
```
