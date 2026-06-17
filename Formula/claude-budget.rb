class ClaudeBudget < Formula
  desc "Per-commit Claude Code token-cost git trailers"
  homepage "https://github.com/mooracle/claude-budget"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.1/claude-budget-darwin-arm64"
      sha256 "c87a4455694b60014f68d031959e49696cf28b9ed08e60a696d84d12a074ccaa"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.1/claude-budget-darwin-amd64"
      sha256 "b72988853db557d1f86aee1ad7ff56d9ac75ab393c87a280e60adf3053616272"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.1/claude-budget-linux-arm64"
      sha256 "57a7031af103793c327c95402ea2ca4083f13c2dc507a2213edd7fead0ae53bb"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.1/claude-budget-linux-amd64"
      sha256 "daec52c506838317308994da245f745a4a7244939692345a6487eca61889dea2"
    end
  end

  def install
    # Each release asset is a bare binary named claude-budget-<os>-<arch>;
    # install whichever one was downloaded for this platform as `claude-budget`.
    bin.install Dir["claude-budget-*"].first => "claude-budget"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/claude-budget version")
  end
end
