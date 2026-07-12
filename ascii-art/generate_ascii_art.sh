#!/usr/bin/env bash
cd "$(dirname "$0")/images/" || exit 1

for f in *.jpg *.jpeg *.png *.gif *.bmp *.webp *.tiff *.tif; do
    [ -e "$f" ] || continue
    extra=()
    case "$f" in
        fern.jpg) extra=(-g) ;;
    esac
    base="${f%.*}"
    ascii-image-converter -b -W 64 -C "$f" "${extra[@]}" > "../generated/${base}.txt"
    echo "$f done"
done
