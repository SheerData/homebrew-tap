class SheerDataTui < Formula
  desc "Terminal UI for Sheer Data AI Readiness Scanning"
  homepage "https://github.com/SheerData/sheer-data-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "sheer-data-tui"
  end

  test do
    assert_match "sheer-data-tui", shell_output("#{bin}/sheer-data-tui --version 2>&1", 1)
  end
end
