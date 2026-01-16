# mac-dotfiles

## Included Packages
- **Zsh**: Powerlevel10k theme
- **Neovim**: LazyVim distribution
- **Fastfetch**: Customized system information display
- **Git**: Global identity settings and ignore rules
- **GH**: GitHub CLI
- **iTerm2**: Dynamic profiles

## Installation
1. Ensure Homebrew and GNU Stow are installed.
```
/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))"
brew install stow fastfetch neovim gh
```
2. Clone and link.
```
git clone git@github.com:aquaryasss/mac-dotfiles.git
cd ~/.dotfiles
./setup.sh
```
