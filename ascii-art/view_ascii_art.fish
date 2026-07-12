#!/usr/bin/env fish
cd "./generated/"

for f in *.txt
    echo "$f"
    cat $f
    echo -e "\n"
end | less -R
