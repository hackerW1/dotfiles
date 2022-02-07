#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
clear

# You should remember
#echo " "
#echo "I think I'll be someone else on morning!"

#echo "___  _    ____ ____ ____ ____    ____ _  _ ____ _  _ ____ ____ "
#echo "|__] |    |___ |__| [__  |___    |    |__| |__| |\ | | __ |___ "
#echo "|    |___ |___ |  | ___] |___    |___ |  | |  | | \| |__] |___ "
#echo "                                                               "

shutdown -P 00:00 &

time=$(date +%H%M)
if [ $time -gt 2350 ] || [ $time -lt 450 ]; then
	shutdown now
fi

dunst &
#setbg &
wal -Rq &
picom &
#exec dwm
/home/hackerW1/.local/bin/dwm_bar &
xrandr --output eDP --brightness 1
xgamma -gamma 1
#change_maker &
exec dwm >/dev/null

