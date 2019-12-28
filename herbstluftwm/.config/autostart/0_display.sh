#!/bin/sh
#xrandr --output HDMI-0 --off --output DP-0 --off --output DP-1 --off --output DP-2 --mode 1920x1080 --pos 2023x0 --rotate left --output DP-3 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x728 --rotate normal --output USB-C-0 --off
#xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 0x721 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --mode 1920x1080 --pos 1920x0 --rotate left --output DP-3 --off --output HDMI-1 --off --output USB-C-0 --off
xrandr --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-3 --off --output HDMI-1 --off --output USB-C-0 --off
herbstclient detect_monitors
