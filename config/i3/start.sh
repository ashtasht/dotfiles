#!/bin/sh
sudo dhcpcd
xrandr --output VGA-1 --off --output VGA-1-2 --off --output eDP-1 --mode 1366x768 --pos 2026x424 --rotate normal --output HDMI-3 --off --output HDMI-2 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-1 --off
sh ~/.config/i3/rwall.sh
setxkbmap us -variant workman 
polybar desk -r &
compton --blur-background -f -i 0.75 -m 0.8 -o 0 &
dunst &
redshift -l 31.9175:35.0067 &
