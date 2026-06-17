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

## Updating a formula on a new release

Each release of the upstream tool ships per-platform binaries. To bump a formula:

1. Bump `version` and each `url` to the new tag.
2. Refresh each `sha256` from the new release assets, e.g.:
   ```sh
   curl -fsSL https://github.com/mooracle/claude-budget/releases/download/vX.Y.Z/claude-budget-darwin-arm64 | shasum -a 256
   ```
3. Commit and push — `brew update && brew upgrade claude-budget` picks it up.
