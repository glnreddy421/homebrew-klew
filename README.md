# homebrew-klew

Homebrew tap for [Klew](https://github.com/glnreddy421/klew).

## Install

```bash
brew tap glnreddy421/klew
brew trust glnreddy421/klew
brew install klew
open "$(brew --prefix)/opt/klew/Klew.app"
```

Installs the signed, notarized **macOS arm64** build from GitHub Releases.

## Updating formulas (maintainers)

On each **klew** release tag, GitHub Actions updates `Formula/klew.rb` here automatically when `HOMEBREW_TAP_TOKEN` is configured on the main repo.

Manual bump (if needed):

```bash
shasum -a 256 Klew-X.Y.Z-macos-arm64.zip
```

## License

Apache-2.0 — see [glnreddy421/klew](https://github.com/glnreddy421/klew).
