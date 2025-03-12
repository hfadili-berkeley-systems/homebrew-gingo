@echo off
curl -L -o gingo.exe https://github.com/hfadili-berkeley-systems/homebrew-gingo/releases/download/v1.0.8/gingo-windows.exe
mkdir "C:\Program Files\Gingo"
move gingo.exe "C:\Program Files\Gingo\"
setx PATH "%PATH%;C:\Program Files\Gingo"
echo Installation Complete! Restart your terminal and run gingo.exe version