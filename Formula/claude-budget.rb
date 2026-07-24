class ClaudeBudget < Formula
  desc "Per-commit Claude Code token-cost git trailers"
  homepage "https://github.com/mooracle/claude-budget"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.0/claude-budget-darwin-arm64"
      sha256 "c0a6a7fa1efe6b69c270ff75005b517367c40d1db9e0175b5d5f4dbbea0e4871"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.0/claude-budget-darwin-amd64"
      sha256 "6f36ff27a584ba91029b2b512d4106cc3d791de76cb8e0cfb29308638f081260"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.0/claude-budget-linux-arm64"
      sha256 "8bbe0cff9f9103a4c6dac208b6c192f4b61ba9bf16d7f71794aab7f021d66108"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.0/claude-budget-linux-amd64"
      sha256 "cac08b8042d5aa44f6e08528ce5dc6d586276186d18d6c40bc53b8a530d45cf7"
    end
  end

  def install
    # Each release asset is a bare binary named claude-budget-<os>-<arch>;
    # install whichever one was downloaded for this platform as `claude-budget`.
    bin.install Dir["claude-budget-*"].first => "claude-budget"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/claude-budget version")
  end
end
