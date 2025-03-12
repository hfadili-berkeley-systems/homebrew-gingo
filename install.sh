#!/bin/bash
set -e

GITHUB_URL="https://github.com/hfadili-berkeley-systems/homebrew-gingo/releases/download/v1.0.6"

# Detect OS and set the correct binary
if [[ "$OSTYPE" == "darwin"* ]]; then
    FILE="gingo-mac-amd64"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    FILE="gingo-linux"
elif [[ "$OS" == "Windows_NT" ]]; then
    FILE="gingo-windows.exe"
else
    echo "Unsupported OS"
    exit 1
fi

# Windows Installation
if [[ "$OS" == "Windows_NT" ]]; then
    echo "Downloading Gingo for Windows..."
    curl -L -o gingo.exe "$GITHUB_URL/$FILE"

    echo "Installation complete! Run 'gingo.exe --version' to check."
    echo "Note: You may need to add the file to your system PATH manually."
    exit 0
fi

# macOS/Linux Installation
echo "Downloading Gingo..."
curl -L -o gingo "$GITHUB_URL/$FILE"

chmod +x gingo
sudo mv gingo /usr/local/bin/

echo "Installation complete! Run 'gingo version' to check."