#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#clear

# You should remember
#echo " "
#echo "I think I'll be someone else on morning!"

#echo "___  _    ____ ____ ____ ____    ____ _  _ ____ _  _ ____ ____ "
#echo "|__] |    |___ |__| [__  |___    |    |__| |__| |\ | | __ |___ "
#echo "|    |___ |___ |  | ___] |___    |___ |  | |  | | \| |__] |___ "
#echo "                                                               "

#shutdown -P 00:00 &

#day=$(time +%d)
#time=$(date +%H%M)

#if [ $day -lt 20 ]; then
#	shutdown now
#fi

#if [ $time -gt 1830 ] || [ $time -lt 1650 ]; then
#	shutdown now
#fi

dunst &
wal -Rq &
picom &
/home/hackerW1/.local/bin/dwm_bar &
#xrandr --output eDP --brightness 1
#xgamma -gamma 1
exec dwm >/dev/null

