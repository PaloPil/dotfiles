#!/usr/bin/env bash

config_dir="$(pwd)/config"
dotfiles=$(ls "$config_dir")

for folder in $dotfiles; do
  ./lib/safe_symlink.sh "$HOME/.config/$folder" "$config_dir/$folder"
done

# KEYD CONFIGURATION
sudo ./lib/safe_symlink.sh "/etc/keyd" "$HOME/.config/keyd"
