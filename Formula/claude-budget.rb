class ClaudeBudget < Formula
  desc "Per-commit Claude Code token-cost git trailers"
  homepage "https://github.com/mooracle/claude-budget"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.2/claude-budget-darwin-arm64"
      sha256 "f71c4710137fb190be3c0a99c121bd6e352286fb748e6ddc00947de7f2eef90e"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.2/claude-budget-darwin-amd64"
      sha256 "c703af7bad43e77d6b092dba25dffc44050dcd160f3a8cfc36b6b191241408b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.2/claude-budget-linux-arm64"
      sha256 "554c62c236e7d20a92dd046a29d410350e14d1a68bb917f61e63feabd34ac2c7"
    end
    on_intel do
      url "https://github.com/mooracle/claude-budget/releases/download/v0.3.2/claude-budget-linux-amd64"
      sha256 "cb2e99ab300591ecb2f2677d9b09156dca32d735731b662e5718013a1dd427e1"
    end
  end

  def install
    # Each release asset is a bare binary named claude-budget-<os>-<arch>;
    # install whichever one was downloaded for this platform as `claude-budget`.
    bin.install Dir["claude-budget-*"].first => "claude-budget"
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/claude-budget version")
  end
end
