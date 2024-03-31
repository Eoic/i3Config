#!/bin/bash

MENU=“$(rofi -sep “|” -dmenu -i -p ‘System’ -location 3  -width 15 -hide-scrollbar -line-padding 4 -padding 20 -lines 5 -font “Fantasque Sans Mono 10” <<< “ Lock| Logout| Reboot| Suspend| Shutdown”)”
case “$MENU” in
    *Lock) sh lock.sh;;
    *Logout) i3-msg exit;;
    *Reboot) systemctl reboot ;;
	*Suspend) systemctl suspend ;;
    *Shutdown) systemctl -i poweroff
esac
