#!/usr/bin/env fish
cd "./images/"

for f in *.{jpg,jpeg,png,gif,bmp,webp,tiff,tif}
    set -e extra
    switch "$f" # File specific overwrites
        case fern.jpg
            set extra -g
    end
    ascii-image-converter -b -W 64 -C "$f" $extra > ../generated/(path change-extension txt $f)
    echo $f done
end
