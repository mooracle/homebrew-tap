class ClaudeBudget < Formula
  desc "Per-commit Claude Code token-cost git trailers"
  homepage "https://github.com/mooracle/claude-budget"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.1/claude-budget-darwin-arm64"
      sha256 "b34afa3a4d5fa77f0e7a20206ec5406d81654b8d719e7957488abd211a237eab"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.1/claude-budget-darwin-amd64"
      sha256 "3d4f1a6c22fe2c7adee0aba2c3214c8fbd9c9bd7e04009fcbb2dca464310ffc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.1/claude-budget-linux-arm64"
      sha256 "ae162273c79b45f4359784b22e6e0c8a843576a13e127897d0370a55b6dc25de"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.1/claude-budget-linux-amd64"
      sha256 "954389ebbbde11a9660c899a8f3b10ac55606fe8f0b4e694e74407160f840e65"
    end
  end

  def install
    # Each release asset is a bare binary named claude-budget-<os>-<arch>;
    # install whichever one was downloaded for this platform as `claude-budget`.
    bin.install Dir["claude-budget-*"].first => "claude-budget"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/claude-budget version")
  end
end
