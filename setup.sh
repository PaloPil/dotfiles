#!/usr/bin/env bash

cd config || (echo "'config' folder not found"; exit)

current_dir=$(pwd)

for folder in *; do
  ln -s "$current_dir/$folder" "$HOME/.config/$folder"
done

cd ..

# KEYD CONFIGURATION
sudo ln -s "$HOME/.config/keyd" "/etc/keyd"
