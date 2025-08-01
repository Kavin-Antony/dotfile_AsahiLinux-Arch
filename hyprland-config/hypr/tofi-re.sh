#!/bin/bash

style="${1:-V}"  # default to V if no arg given
config="$HOME/.config/tofi/config$style"

choice=$(printf "Logout\nReboot\nShutdown\nSuspend" | tofi --config "$config")

case "$choice" in
  Logout)
    hyprctl dispatch exit
    ;;
  Reboot)
    systemctl reboot
    ;;
  Shutdown)
    systemctl poweroff
    ;;
  Suspend)
    systemctl suspend | swaylock
    ;;
  *)
    ;;
esac
