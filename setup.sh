#!/usr/bin/env bash

path="$(pwd)"

# .CONFIG FOLDER
for folder in "$path"/config/*; do
  ./lib/safe_symlink.sh "$HOME/.config/$(basename "$folder")" "$folder"
done

# FISH SHORTCUTS
./lib/safe_symlink.sh "$HOME/.fishrc" "$HOME/.config/fish/config.fish"
./lib/safe_symlink.sh "$HOME/.fish_aliases" "$HOME/.config/fish/conf.d/aliases.fish"

# KEYD CONFIGURATION
sudo ./lib/safe_symlink.sh "/etc/keyd" "$HOME/.config/keyd"
