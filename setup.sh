#!/usr/bin/env bash

path="$(pwd)"

# .CONFIG FOLDER
for folder in "$path"/config/*; do
  ./lib/safe_symlink.sh "$HOME/.config/$(basename "$folder")" "$folder"
done

# KEYD CONFIGURATION
sudo ./lib/safe_symlink.sh "/etc/keyd" "$HOME/.config/keyd"
