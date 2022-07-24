#!/bin/sh

find ./ -type f -name '*.jpg' -exec sh -c 'cwebp -q 80 "$1" -o "${1%.jpg}.webp"' _ {} \;
find ./ -type f -name '*.png' -exec sh -c 'cwebp -q 80 "$1" -o "${1%.png}.webp"' _ {} \;
