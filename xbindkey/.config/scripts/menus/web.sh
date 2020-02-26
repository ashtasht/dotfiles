#!/bin/bash

s=$(echo -e "" | ~/.config/scripts/menu.sh *.color1 Web)

if [ ":" = $(echo "$s" | head -c1) ]; then
  firefox "$(echo "$s" | tail -c+2)"
else
  firefox -search "$s"
fi
