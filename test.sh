#!/usr/bin/bash

check_size () {
    for f in "$1"*; do
        info=$(file "$f")
        if [[ $info != *" PNG image data"* ]]; then
            echo "Not PNG recognized: $f"
        elif [[ $info != *$2* ]]; then
            echo "Image has wrong size: $f"
        fi
    done
}

echo "TODO: Update the game.png and game.atlas after each image change!"

check_size "./Images/BuildingIcons/" "200 x 200"

if [ ! -e "game.png" ]; then
    echo "Missing game.png"
fi

if [ ! -e "game.atlas" ]; then
    echo "Missing game.atlas"
fi
