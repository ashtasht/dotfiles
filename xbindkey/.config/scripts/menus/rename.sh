#!/bin/bash

s=$(echo "" | ~/.config/scripts/menu.sh *.color6 Rename)
c=$(herbstclient list_monitors | sed -r "s/.*tag \"//" | awk '{ print length, $0 }' | sort -n -s | cut -d" " -f2- | sed -r "s/\".*//" | tail -n 1 )

herbstclient rename $c $s
