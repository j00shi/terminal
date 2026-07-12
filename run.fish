#!/usr/bin/env fish
# This chooses a random text file from the specified directory
set -l art_dir "$HOME/Code/terminal/ascii-art/generated/"   # <-- Set the correct path!!
set -l files $art_dir/*.txt

if set -q files[1]
    fastfetch --logo (random choice $files) --logo-type file
end
