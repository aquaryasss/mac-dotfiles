#!/bin/bash

# Define the packages to link (based on your current directory structure)
PACKAGES=(fastfetch gh git iterm2 nvim qbittorrent zsh)

echo "🚀 Starting dotfiles symlinking process..."

# Ensure we are in the dotfiles directory
cd "$(dirname "$0")"

# Iterate through packages and link them
for pkg in "${PACKAGES[@]}"; do
    echo "📦 Stowing $pkg..."
    # --adopt: If a local file exists, it moves it into the repo.
    # We follow this with a git check to ensure we don't overwrite repo files.
    stow -v --adopt "$pkg"
done

# Safety: Any local file that was 'adopted' into the repo is now visible to Git.
# If you want to keep the repo version over a messy local version, run:
# git restore .

echo "✅ All packages linked successfully!"
echo "💡 Tip: Run 'ls -l ~' to verify your symlinks (look for the arrows)."
