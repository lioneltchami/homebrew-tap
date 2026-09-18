# homebrew-tap

Homebrew tap for **Lamp & Light**.

## Install

```bash
brew tap lioneltchami/tap
brew install --cask lamp-light
```

## Upgrade

```bash
brew update
brew upgrade --cask lamp-light
```

## Uninstall

```bash
brew uninstall --cask lamp-light
```

## Update the cask after a release

When [Lamp-Light](https://github.com/lioneltchami/Lamp-Light) ships a new `v*` tag:

1. Download the arm64 and x64 DMGs from the GitHub Release.
2. Compute checksums: `shasum -a 256 Lamp-Light-*.dmg`
3. Bump `version` and both `sha256` values in [`Casks/lamp-light.rb`](./Casks/lamp-light.rb).
4. Commit and push to this repo.

Or from a machine with `gh` and the release assets:

```bash
VERSION=1.2.17   # set to new version
gh release download "v${VERSION}" --repo lioneltchami/Lamp-Light \
  --pattern 'Lamp-Light-arm64.dmg' --pattern 'Lamp-Light-x64.dmg'
shasum -a 256 Lamp-Light-arm64.dmg Lamp-Light-x64.dmg
```
