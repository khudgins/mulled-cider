#!/bin/bash

# Package the extension
npx @vscode/vsce package

# Install the extension
code --install-extension mulled-cider-*.vsix

echo "Mulled Cider theme updated and installed!"