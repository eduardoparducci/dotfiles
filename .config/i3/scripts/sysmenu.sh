#!/bin/bash

res=$(echo "	Lock;	Logout;	Restart;	Shutdown;	Cancel" | rofi -sep ";" -dmenu -hide-scrollbar -i -theme PowerOffMenu)

if [[ $res = *"Lock"* ]]; then
    ~/.config/i3/scripts/lock.sh &
fi
if [[ $res = *"Logout"* ]]; then
    i3-msg exit
fi
if [[ $res = *"Restart"* ]]; then
    systemctl reboot
fi
if [[ $res = *"Shutdown"* ]]; then
    systemctl poweroff
fi
exit 0
