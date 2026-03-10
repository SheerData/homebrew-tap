class SheerDataTui < Formula
  desc "Terminal UI for Sheer Data AI Readiness Scanning"
  homepage "https://github.com/SheerData/sheer-data-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-aarch64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-x86_64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/SheerData/sheer-data-tui/releases/download/v#{version}/sheer-data-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "sheer-data-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sheer-data-tui --version")
  end
end
