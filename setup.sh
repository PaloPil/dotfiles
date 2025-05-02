#!/bin/bash

cp "config" "$HOME/.config"

# KEYD CONFIGURATION
sudo ln -s "$HOME/.config/keyd" "/etc/keyd"
