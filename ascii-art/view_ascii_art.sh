#!/usr/bin/env bash
cd "$(dirname "$0")/generated/" || exit 1

for f in *.txt; do
    echo "$f"
    cat "$f"
    echo -e "\n"
done | less -R
