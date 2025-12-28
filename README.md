# Mulled Cider

A warm, autumnal color theme for Visual Studio Code and Alacritty that brings the cozy feeling of autumn to your code editor and terminal.

## Features

- **Warm Color Palette**: Deep browns, rusts, oranges, and golds create a cozy coding environment
- **Carefully Crafted Syntax Highlighting**: Optimized colors for readability while maintaining the autumnal aesthetic
- **Complete UI Theming**: All VS Code UI elements are styled to match the theme
- **Terminal Colors**: Custom terminal color scheme that complements the theme

## Color Palette

The theme uses a carefully selected palette of warm, autumnal colors:
- **Backgrounds**: Deep warm browns (#2B1F1A, #241A16)
- **Text**: Warm creams and beiges (#E8D5C4, #F4D1A6)
- **Accents**: Rust oranges (#B85C38, #C97D60), golden yellows (#D4A574), and warm greens (#8B9A5B)

## Installation

1. Copy this folder to your VS Code extensions directory:
   - **Windows**: `%USERPROFILE%\.vscode\extensions\`
   - **macOS**: `~/.vscode/extensions/`
   - **Linux**: `~/.vscode/extensions/`

2. Restart VS Code

3. Open the Command Palette (Ctrl+Shift+P / Cmd+Shift+P) and select "Preferences: Color Theme"

4. Choose "Mulled Cider"

## Alacritty Theme

A matching theme for Alacritty terminal is also included.

### Installation

1. Locate your Alacritty config file:
   - **macOS**: `~/.config/alacritty/alacritty.toml`
   - **Linux**: `~/.config/alacritty/alacritty.toml`
   - **Windows**: `%APPDATA%\alacritty\alacritty.toml`

2. Include the theme in your Alacritty config by adding:
   ```toml
   [general]
   import = [
     "~/.vscode/extensions/mulled-cider/alacritty-mulled-cider.toml"
   ]
   ```
   
   Or if you've copied the file elsewhere, use the full path:
   ```toml
   [general]
   import = [
     "/path/to/alacritty-mulled-cider.toml"
   ]
   ```

3. Alternatively, you can copy the `[colors]` sections from `alacritty-mulled-cider.toml` directly into your `alacritty.toml` file.

4. Restart Alacritty to apply the theme.

## Development

To modify the VS Code theme, edit `themes/mulled-cider-color-theme.json` and reload VS Code.

To modify the Alacritty theme, edit `alacritty-mulled-cider.toml` and restart Alacritty.

## License

MIT

