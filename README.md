# homebrew-klew

Homebrew tap for [Klew](https://github.com/glnreddy421/klew).

## Install

```bash
brew tap glnreddy421/klew
brew install klew
open "$(brew --prefix)/opt/klew/Klew.app"
```

## Go install (alternative)

```bash
go install github.com/glnreddy421/klew/cmd/klew-desktop@latest
export PATH="$(go env GOPATH)/bin:$PATH"
klew-desktop
```

## Updating formulas (maintainers)

On each **klew** release:

1. Tag `vX.Y.Z` on [glnreddy421/klew](https://github.com/glnreddy421/klew).
2. Copy `packaging/homebrew/klew.rb` from **klew** into `Formula/klew.rb` here.
3. Update `version` and `sha256`.
4. Commit and push **homebrew-klew**.

Checksum:

```bash
curl -L "https://github.com/glnreddy421/klew/archive/refs/tags/vX.Y.Z.tar.gz" | shasum -a 256
```

## License

Apache-2.0 — see [glnreddy421/klew](https://github.com/glnreddy421/klew).
