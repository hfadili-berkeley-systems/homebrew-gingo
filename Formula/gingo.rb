class Gingo < Formula
    desc "Gingo - A simple and efficient CLI tool for generating a structured Go project layout."
    homepage "https://github.com/hfadili-berkeley-systems/homebrew-gingo"
    version "1.0.0"
  
    if OS.mac?
      url "https://github.com/hfadili-berkeley-systems/homebrew-gingo/releases/download/v1.0.0/gingo-mac-amd64"
      sha256 "c2cdd4f118508a1a7cfe009a985aa86399964cc736cd176d18120f1a88e24198"
    elsif OS.linux?
      url "https://github.com/hfadili-berkeley-systems/homebrew-gingo/releases/download/v1.0.0/gingo-linux"
      sha256 "07b70e4b18aa37490aac50f74829b1defe111ab967c6f53fd00808b697dcef70"
    end
  
    def install
      if OS.mac?
        bin.install "gingo-mac-amd64" => "gingo"
      elsif OS.linux?
        bin.install "gingo-linux" => "gingo"
      end
    end
  
    test do
      system "#{bin}/gingo", "--version"
    end
  end