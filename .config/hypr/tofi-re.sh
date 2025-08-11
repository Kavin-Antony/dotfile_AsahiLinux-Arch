#!/bin/bash

style="${1:-V}"  # default to V if no arg given
config="$HOME/.config/tofi/config$style"

choice=$(printf "Suspend\nLogout\nReboot\nShutdown" | tofi --config "$config")

case "$choice" in
  Suspend)
    systemctl suspend | swaylock
    ;;
  Logout)
    hyprctl dispatch exit
    ;;
  Reboot)
    systemctl reboot
    ;;
  Shutdown)
    systemctl poweroff
    ;;
  *)
    ;;
esac
