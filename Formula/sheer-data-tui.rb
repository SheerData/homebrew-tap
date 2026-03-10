class SheerDataTui < Formula
  desc "Terminal UI for Sheer Data AI Readiness Scanning"
  homepage "https://github.com/SheerData/sheer-data-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-aarch64-apple-darwin.tar.gz"
      sha256 "b7547dab6d61284735d5e9e9a241c3c93632c99bb0effe03ed4fcc8f66a27336"
    else
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-x86_64-apple-darwin.tar.gz"
      sha256 "f382af70f137af319ce15e46e1439efb6a67af983e62d1aaa79a67ee85f402d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb190601778f4e37442c84b9a28ef2eac18293e8d5a25158f3fedcda3356bf60"
    else
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c404bb19d323db5715e8a0f80f7376a3b895f5fc0900b1ff4e16dd878510676"
    end
  end

  def install
    bin.install "sheer-data-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sheer-data-tui --version")
  end
end
