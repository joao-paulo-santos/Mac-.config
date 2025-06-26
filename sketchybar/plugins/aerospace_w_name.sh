#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace_w_name.sh

sketchybar --set $NAME label="  $FOCUSED_WORKSPACE"

 for sid in $(aerospace list-workspaces --all); do
    if [ "$sid" = "$FOCUSED_WORKSPACE" ]; then
        sketchybar --set space.$sid  label.color=0xff2196f3
    else
        sketchybar --set space.$sid  label.color=0xffffffff
    fi
 done
