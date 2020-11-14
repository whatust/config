#!/bin/sh
sleep 1
xrandr --output DVI-I-1 --mode 1920x1080 --pos 1920x0 --rotate left --output HDMI-1 --primary --mode 1920x1080 --pos 0x731 --rotate normal
xwallpaper --output DVI-I-1 --zoom ~/Images/wallpapers/vertical/dark_souls-0001.png --output HDMI-1 --zoom ~/Images/wallpapers/horizontal/dark_souls-0000.png
