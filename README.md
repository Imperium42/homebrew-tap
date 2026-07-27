# homebrew-tap

Self-hosted [Homebrew](https://brew.sh) tap for [Echophrase](https://echophrase.com), a privacy-first local speech-to-text desktop app.

## Install

```bash
brew install imperium42/tap/echophrase
```

## Upgrade

```bash
brew upgrade --cask echophrase
```

## Uninstall

```bash
brew uninstall --cask echophrase
# remove app data too:
brew uninstall --zap --cask echophrase
```

## What's here

- `Casks/echophrase.rb` - the cask definition (macOS, Apple Silicon only).

The cask points at signed, notarized `.dmg` release assets published to
[imperium42/echophrase-releases](https://github.com/imperium42/echophrase-releases).
The app's source code stays private (`dylanh724/echophrase`); this tap and the
releases repo exist solely to make the built artifacts publicly installable.

This tap currently tracks a single channel (beta, since the product hasn't cut a
stable release yet). When a stable channel exists, the cask will switch to
tracking stable tags only.
