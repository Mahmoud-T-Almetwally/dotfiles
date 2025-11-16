#!/bin/bash

set -e

# The dotfiles will now be cloned into ~/dotfiles
DOTFILES_DIR="$HOME/dotfiles"
REPO_URL="https://github.com/Mahmoud-T-Almetwally/dotfiles.git"

echo "=============="
echo "Dotfiles Setup"
echo "=============="
echo

# Check if the dotfiles directory already exists in the new location
if [ -d "$DOTFILES_DIR" ]; then
    echo "ERROR: $DOTFILES_DIR already exists!"
    echo "If you want to reinstall, please remove or backup the existing directory first:"
    echo "  mv ~/dotfiles ~/dotfiles.backup"
    exit 1
fi

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing git..."
    sudo pacman -S --noconfirm git
    echo "Git installed successfully!"
fi

# Create .config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Clone the dotfiles repository into the new directory
echo "Cloning dotfiles repository..."
git clone "$REPO_URL" "$DOTFILES_DIR"

echo
echo "Repository cloned successfully!"
echo "Starting installation..."
echo

# Run the installer from the new location
bash "$DOTFILES_DIR/install/install"
