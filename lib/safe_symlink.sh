#!/usr/bin/env bash
target="$2"
link="$1"

if [ -L "$link" ] || [ -e "$link" ]; then
  unlink "$link" 2>/dev/null || rm -rf "$link"
fi

ln -s "$target" "$link"

