#!/bin/bash

# Count how many windows exist across all spaces
COUNT=$(yabai -m query --windows | jq 'length')

# Update the label with a "stack" icon
sketchybar --set $NAME label="Apps: ${COUNT}"
