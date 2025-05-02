#!/usr/bin/env bash

cd config || (echo "'config' folder not found"; exit)

current_dir=$(pwd)

for folder in *; do
  rm -rf "$HOME/.config/$folder"
  ln -s "$current_dir/$folder" "$HOME/.config/$folder"
done

cd ..

# KEYD CONFIGURATION
rm -rf "/etc/keyd"
sudo ln -s "$HOME/.config/keyd" "/etc/keyd"
