#!/usr/bin/env bash
art_dir="./ascii-art/generated/"
shopt -s nullglob
files=("$art_dir"*.txt)
shopt -u nullglob

if (( ${#files[@]} > 0 )); then
    random_file="${files[RANDOM % ${#files[@]}]}"
    fastfetch --logo "$random_file" --logo-type file --config "./configs/config.jsonc"
fi
