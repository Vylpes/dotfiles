#!/bin/bash

option=$(printf "lock\nsleep\nexit\nshutdown\nreboot" | rofi -dmenu -theme Arc-Dark -font 'hack 18')

if [ "$option" = "lock" ];
then
    betterlockscreen -l
elif [ "$option" = "sleep" ];
then
    betterlockscreen -l
    systemctl suspend
elif [ "$option" = "exit" ];
then
    i3-msg exit
elif [ "$option" = "shutdown" ];
then
    poweroff
elif [ "$option" = "reboot" ];
then
    reboot
fi
