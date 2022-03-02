#!/bin/sh

dunst &
wal -Rq &
unclutter &
picom &
/home/hackerW1/.local/bin/dwm_bar &
#xrandr --output eDP --brightness 1
#xgamma -gamma 1
xdotool key super+F5 &
exec dwm > /dev/null 2>&1 
