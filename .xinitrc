#!/bin/sh

dunst &
/home/hackerW1/.local/bin/wal -Rq &
unclutter &
sxhkd &
picom &
/home/hackerW1/.local/bin/dwm_bar &
xwallpaper --zoom /home/hackerW1/.local/share/bg.jpg
exec dwm > /dev/null 2>&1 
