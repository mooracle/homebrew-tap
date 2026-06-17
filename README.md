# mooracle/homebrew-tap

Homebrew formulae for [mooracle](https://github.com/mooracle) tools.

## Usage

```sh
brew install mooracle/tap/claude-budget
```

or, equivalently:

```sh
brew tap mooracle/tap
brew install claude-budget
```

## Formulae

| Formula | Description |
|---------|-------------|
| [`claude-budget`](Formula/claude-budget.rb) | Per-commit Claude Code token-cost git trailers — [repo](https://github.com/mooracle/claude-budget) |

`Formula/claude-budget.rb` is a **binary** formula — it downloads the prebuilt
release binary, so installs are instant and need no toolchain. A source-built
variant for a future [homebrew-core](https://github.com/Homebrew/homebrew-core)
submission is staged at
[`core-submission/claude-budget.rb`](core-submission/claude-budget.rb); it is
**not** loaded as part of the tap (Homebrew only loads `Formula/`,
`HomebrewFormula/`, and the repo root).

## Updating a formula on a new release

**This is automated.** The upstream
[release workflow](https://github.com/mooracle/claude-budget/blob/main/.github/workflows/release.yml)
regenerates `Formula/claude-budget.rb` from the freshly built binaries and pushes
it here on every `v*` tag (it needs a `HOMEBREW_TAP_TOKEN` secret with
`contents:write` on this repo). Then `brew update && brew upgrade claude-budget`
picks it up.

To bump by hand (e.g. the `core-submission` draft, or if automation is off):

1. Binary formula: run upstream `scripts/render-formula.sh <version> <dist-dir>`,
   which prints the whole formula with checksums filled in.
2. Source draft: refresh the single source-tarball checksum —
   ```sh
   curl -fsSL https://github.com/mooracle/claude-budget/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```
3. Commit and push.
