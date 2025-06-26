#!/bin/bash

# W I N D O W  T I T L E 
WINDOW_TITLE=$(aerospace list-windows --focused)

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE="error"
fi

if [[ ${#WINDOW_TITLE} -gt 50 ]]; then
  WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-50)
  sketchybar -m --set window.title label="│ $WINDOW_TITLE"…
  exit 0
fi

sketchybar -m --set window.title label="│ $WINDOW_TITLE"