#!/bin/bash
set -eu

if [[ -z $@ ]]; then
    OPTIONS="Lock\nLogout\nReboot\nSuspend\nShutdown"
    echo -e $OPTIONS
else
    case "$@" in
    Reboot)
        systemctl reboot ;;
    Logout)
        i3-msg exit ;;
    Suspend)
        systemctl suspend ;;
    Shutdown)
        systemctl poweroff ;;
    Lock)
        lock ;;
    *)
      echo "$1"
        ;;
    esac
fi
