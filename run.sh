#!/usr/bin/env bash
# This chooses a random text file from the specified directory
art_dir="$HOME/Code/terminal/ascii-art/generated/"   # <-- Set the correct path!!
shopt -s nullglob
files=("$art_dir"*.txt)
shopt -u nullglob

if (( ${#files[@]} > 0 )); then
    random_file="${files[RANDOM % ${#files[@]}]}"
    fastfetch --logo "$random_file" --logo-type file
fi
