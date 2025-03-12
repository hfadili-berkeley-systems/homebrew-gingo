class Myapp < Formula
    desc "Gingo is a simple CLI tool to generate a Go project layout."
    homepage "https://github.com/yourusername/myapp"
    version "1.0.0"
  
    if OS.mac?
      url "https://github.com/yourusername/myapp/releases/download/v1.0.0/myapp-mac-amd64"
      sha256 "PASTE_YOUR_MACOS_BINARY_SHA256_HERE"
    elsif OS.linux?
      url "https://github.com/yourusername/myapp/releases/download/v1.0.0/myapp-linux"
      sha256 "PASTE_YOUR_LINUX_BINARY_SHA256_HERE"
    end
  
    def install
      bin.install "myapp-mac-amd64" => "myapp" if OS.mac?
      bin.install "myapp-linux" => "myapp" if OS.linux?
    end
  
    test do
      system "#{bin}/myapp", "--version"
    end
  end