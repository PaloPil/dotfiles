#!/usr/bin/env bash

cd config || (echo "'config' folder not found"; exit)

config_dir=$(pwd)

for folder in *; do
  ./lib/safe_symlink.sh "$HOME/.config/$folder" "$config_dir/$folder"
done

cd ..

# KEYD CONFIGURATION
sudo ./lib/safe_symlink.sh "/etc/keyd" "$HOME/.config/keyd"
