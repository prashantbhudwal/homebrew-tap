class Injectbook < Formula
  desc "Convert books into Codex-compatible skills with Node.js and Calibre"
  homepage "https://github.com/prashantbhudwal/injectbook"
  version "0.3.0"
  url "https://github.com/prashantbhudwal/injectbook/releases/download/v0.3.0/injectbook-v0.3.0-darwin-arm64.tar.gz"
  sha256 "d188376f38f957355d8452f98cf72613b8ca9910d77d2cf6813355b013da2a19"
  license "MIT"

  depends_on "node"

  def install
    libexec.install "injectbook", "src", "templates", "package.json", "node_modules"
    bin.write_exec_script libexec/"injectbook"
  end

  def caveats
    <<~EOS
      injectbook uses Calibre to normalize ebook inputs before extraction.
      Install Calibre via Homebrew cask:
        brew install --cask calibre
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/injectbook --version")
  end
end
