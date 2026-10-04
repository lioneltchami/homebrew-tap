# homebrew-tap

Homebrew tap for **lioneltchami** desktop apps.

## Headspace

```bash
brew tap lioneltchami/tap
brew install --cask headspace
```

```bash
brew update && brew upgrade --cask headspace
brew uninstall --cask headspace
```

Apple Silicon (arm64) only. Source: [lioneltchami/Headspace](https://github.com/lioneltchami/Headspace).

## Lamp & Light

```bash
brew tap lioneltchami/tap
brew install --cask lamp-light
```

```bash
brew update && brew upgrade --cask lamp-light
brew uninstall --cask lamp-light
```

## Updates

**Automatic:** each app’s `v*` release CI bumps the matching cask (version + SHA-256) when `HOMEBREW_TAP_DEPLOY_KEY` is set on that repo.

**Manual fallback (Headspace):**

```bash
VERSION=2.0.0
gh release download "v${VERSION}" --repo lioneltchami/Headspace \
  --pattern "Headspace-${VERSION}-arm64.dmg"
shasum -a 256 "Headspace-${VERSION}-arm64.dmg"
# edit Casks/headspace.rb then commit
```

**Manual fallback (Lamp & Light):**

```bash
VERSION=1.2.17
gh release download "v${VERSION}" --repo lioneltchami/Lamp-Light \
  --pattern 'Lamp-Light-arm64.dmg' --pattern 'Lamp-Light-x64.dmg'
shasum -a 256 Lamp-Light-arm64.dmg Lamp-Light-x64.dmg
# edit Casks/lamp-light.rb then commit
```
