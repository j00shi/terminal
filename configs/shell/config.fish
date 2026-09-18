source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
function fish_greeting
    # Doesn't show the greeting inside VSCodium's integrated terminal
    # Alternatively use the other line to only show the greeting in Konsole
    # not set -q KONSOLE_VERSION && return
    string match -q 'vscode' "$TERM_PROGRAM" && return

    # This chooses a random text file from the specified directory
    set -l art_dir "$HOME/Code/terminal/ascii-art/generated/"   # <-- Set the correct path!!
    set -l files $art_dir/*.txt

    if set -q files[1]
        fastfetch --logo (random choice $files) --logo-type file
    end
end

starship init fish | source
