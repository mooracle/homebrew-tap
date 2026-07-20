class ClaudeBudget < Formula
  desc "Per-commit Claude Code token-cost git trailers"
  homepage "https://github.com/mooracle/claude-budget"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.2.0/claude-budget-darwin-arm64"
      sha256 "98c083b999096a13f1ca7a4f29459cf0c7b24fbac52b6f6bce94a9b42796189d"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.2.0/claude-budget-darwin-amd64"
      sha256 "4251629d687a3b0fe46f7a91e5fd8df8fee82d4086773929f51f72f6d8195d87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.2.0/claude-budget-linux-arm64"
      sha256 "e1ba698528f5f68e28267f301f2c04ffadf0d5a6d3f1b0edd8ac0c78e959c432"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.2.0/claude-budget-linux-amd64"
      sha256 "9450da7fce7b1db3f38ade66afef9e27ddc20fc7a26a689a12b5cc74d7560c7e"
    end
  end

  def install
    # Each release asset is a bare binary named claude-budget-<os>-<arch>;
    # install whichever one was downloaded for this platform as `claude-budget`.
    bin.install Dir["claude-budget-*"].first => "claude-budget"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/claude-budget version")
  end
end
