#!/usr/bin/env fish
cd "./images/"

for f in *.{jpg,jpeg,png,gif,bmp,webp,tiff,tif}
    set -e extra
    switch "$f" # File specific overwrites
        case fami1.jpg makima4.jpg fami.jpg
            set extra --threshold 80
        case kita.jpg fern.jpg
            set extra --threshold 100
        case richeh1.jpg idk28.jpg roxy.jpg idk57.jpg
            set extra --threshold 140 frieren.jpg
        case makima5.jpg bocchi.jpg coco.webp frieren3.png
            set extra --threshold 160
        case marcille.jpg frieren2.jpg frieren1.jpg nijika.png
            set extra --threshold 180
    end
    ascii-image-converter -b -W 64 -C "$f" $extra > ../generated/(path change-extension txt $f)
    echo $f done
end
