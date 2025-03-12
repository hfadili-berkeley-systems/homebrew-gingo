#!/bin/bash
set -e

GITHUB_URL="https://github.com/hfadili-berkeley-systems/homebrew-gingo/releases/download/v1.0.7"

# Detect OS and set the correct binary
if [[ "$OSTYPE" == "darwin"* ]]; then
    FILE="gingo-mac-amd64"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    FILE="gingo-linux"
else
    echo "Unsupported OS"
    exit 1
fi

# macOS/Linux Installation
echo "Downloading Gingo..."
curl -L -o gingo "$GITHUB_URL/$FILE"

chmod +x gingo
sudo mv gingo /usr/local/bin/

echo "Installation complete! Run 'gingo version' to check."