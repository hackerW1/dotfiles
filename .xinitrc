#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
dunst &
#setbg &
wal -Rq &
picom &
#exec dwm 
#dwmblocks &
while type dwm >/dev/null ; do dwm && continue || break ; done
