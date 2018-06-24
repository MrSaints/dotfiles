#!/bin/sh
xrandr --output HDMI-2 --off --output HDMI-1 --off
xrandr --output eDP-1 --primary --mode 1280x800 --pos 1920x1440 --rotate normal
xrandr --output DP-1 --mode 2560x1440 --pos 0x0 --rotate normal
xrandr --output DP-2  --mode 2560x1440 --pos 2560x0 --rotate normal
