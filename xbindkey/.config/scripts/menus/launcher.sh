#!/bin/bash

$(echo bash ~/.config/scripts/menus/programs/$(ls ~/.config/scripts/menus/programs | sed "s/^\(.*\).sh$/\1/" | ~/.config/scripts/menu.sh "*.color3" "run").sh&)

