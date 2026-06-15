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
| `shipcut` | Desktop-first AI video repurposing pipeline |
| `shipcode` | Autonomous AI coding pipeline from issue to pull request |
| `shiplead` | Local-first agentic CRM for founder-led sales |

## Usage

### MeterBar

MeterBar has moved to `VincentShipsIt/tap`. Existing `shipshitdev/tap`
installs continue to work until July 15, 2026, but new installs should use:

```bash
brew tap VincentShipsIt/tap
brew install --cask meterbar
```

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

### ShipCut

```bash
# Install
brew install --cask shipcut

# Update
brew upgrade --cask shipcut

# Uninstall
brew uninstall --cask shipcut

# Uninstall and remove all data
brew uninstall --cask --zap shipcut
```

### ShipCode

```bash
# Install
brew install --cask shipcode

# Update
brew upgrade --cask shipcode

# Uninstall
brew uninstall --cask shipcode

# Uninstall and remove all data
brew uninstall --cask --zap shipcode
```

### ShipLead

```bash
# Install
brew install --cask shiplead

# Update
brew upgrade --cask shiplead

# Uninstall
brew uninstall --cask shiplead

# Uninstall and remove all data
brew uninstall --cask --zap shiplead
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
