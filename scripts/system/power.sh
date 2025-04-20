#!/bin/bash

option=$(printf "lock\nsleep\nlogout\nshutdown\nrestart" | rofi -dmenu -theme Arc-Dark -font 'hack 18')

if [ "$option" = "lock" ];
then
    i3lock --color 000000
elif [ "$option" = "sleep" ];
then
    i3lock --color 000000
    systemctl suspend
elif [ "$option" = "logout" ];
then
    i3-msg exit
elif [ "$option" = "shutdown" ];
then
    poweroff
elif [ "$option" = "restart" ];
then
    reboot
fi
