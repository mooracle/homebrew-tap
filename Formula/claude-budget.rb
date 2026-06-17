class ClaudeBudget < Formula
  desc "Per-commit Claude Code token-cost git trailers"
  homepage "https://github.com/mooracle/claude-budget"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.0/claude-budget-darwin-arm64"
      sha256 "cebdda80199a42983f8a7f94188aa1b7a262998ebd5e1f214cdbbeea57a96079"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.0/claude-budget-darwin-amd64"
      sha256 "cfa8aa4f9c33601b2e882555b7f312859f7450a3c084db5e507585127056868e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.0/claude-budget-linux-arm64"
      sha256 "3317faab59daed5d949245955d4cd0c1a02e1a4928ff1f0d2f0f638ce2eababe"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.1.0/claude-budget-linux-amd64"
      sha256 "8ca3ee267c365ac9e2c02f14c8bb8dba7d6edad66fd125b6983644427e0829b6"
    end
  end

  def install
    # Each release asset is a bare binary named claude-budget-<os>-<arch>;
    # install whichever one was downloaded for this platform as `claude-budget`.
    bin.install Dir["claude-budget-*"].first => "claude-budget"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/claude-budget version")
  end
end
