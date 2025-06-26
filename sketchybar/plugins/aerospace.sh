#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$2" ]; then
    sketchybar --set $NAME label.color=0xff2196f3
else
    sketchybar --set $NAME label.color=0xffffffff
fi