# Source-built formula — the draft for a future Homebrew/homebrew-core
# submission (core requires building from source, not prebuilt binaries).
#
# This directory is intentionally NOT one Homebrew loads as part of the tap
# (taps load Formula/, HomebrewFormula/, and the repo root). The live tap
# formula users install is the binary one at ../Formula/claude-budget.rb;
# this file is a staged artifact, pinned to a release, to copy into a
# homebrew-core PR once the project is notable enough to qualify.
class ClaudeBudget < Formula
  desc "Per-commit Claude Code token-cost git trailers"
  homepage "https://github.com/mooracle/claude-budget"
  url "https://github.com/mooracle/claude-budget/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f2e1c02d4eca3f1993c1e9083729c9ac63d30887ff76a54d3a25f0709d5107af"
  license "MIT"
  head "https://github.com/mooracle/claude-budget.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-budget version")
  end
end
