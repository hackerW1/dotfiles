#!/bin/bash

# /home/hackerW1/Desktop/sh1t_f1les/hellofriend.sh
#dat=$(date +%d%m)

#if [ $dat -lt 0505 ]; then
#	shutdown now
#else
#	startx
#fi
#startx

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx && xdotool key super+F5
fi
