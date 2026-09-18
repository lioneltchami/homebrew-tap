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

## Updates

**Automatic:** each Lamp-Light `v*` release CI pushes a cask bump here (version + SHA-256). You normally do nothing.

**Manual fallback** (if CI skipped):

```bash
VERSION=1.2.17
gh release download "v${VERSION}" --repo lioneltchami/Lamp-Light \
  --pattern 'Lamp-Light-arm64.dmg' --pattern 'Lamp-Light-x64.dmg'
shasum -a 256 Lamp-Light-arm64.dmg Lamp-Light-x64.dmg
# edit Casks/lamp-light.rb then commit
```
