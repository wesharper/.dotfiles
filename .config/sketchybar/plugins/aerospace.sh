#!/usr/bin/env bash

sketchybar --set space icon=$(aerospace list-monitors --focused | awk '{print $1}')
sketchybar --set space label=$FOCUSED_WORKSPACE
