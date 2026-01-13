# Homebrew Tap

Homebrew formulae for [shipshitdev](https://github.com/shipshitdev) projects.

## Installation

```bash
brew tap shipshitdev/tap
```

## Available Packages

### Casks

| Cask | Description |
|------|-------------|
| `meterbar` | Track AI coding assistant usage limits from the menu bar |

## Usage

### MeterBar

```bash
# Install
brew install --cask meterbar

# Update
brew upgrade --cask meterbar

# Uninstall
brew uninstall --cask meterbar

# Uninstall and remove all data
brew uninstall --cask --zap meterbar
```

## Note on Unsigned Apps

Some apps in this tap are not notarized with Apple. On first launch, you may see a Gatekeeper warning. The cask automatically removes the quarantine attribute during installation, but if you still see a warning:

```bash
xattr -cr /Applications/MeterBar.app
```

Or right-click the app → Open → Open anyway.

## Contributing

1. Fork this repository
2. Create your feature branch
3. Submit a pull request

## License

MIT
