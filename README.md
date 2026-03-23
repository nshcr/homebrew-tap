# homebrew-tap

This is my personal Homebrew tap for distributing software I develop.

The tap is used for apps that are not yet published in the official Homebrew repositories. When an app meets the requirements for the official Homebrew cask or formula repositories, I will migrate it there gradually and remove it from this tap.

## Install

```sh
brew tap nshcr/tap
brew install --cask dockautohide
```

## Current Casks

- `dockautohide` - DockAutoHide, a macOS app that auto-hides the Dock only when a window would cover it.

## Notes

- Casks in this tap are maintained alongside their upstream application releases.
- Release assets and metadata are expected to stay aligned with the published version in the corresponding app repository.
