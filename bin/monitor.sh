#!/usr/bin/env bash
set -Cue

: "manage external display" && {
  status=$(</sys/class/drm/card0-HDMI-A-1/status )
  external=HDMI-1
  monitor=eDP-1
  xrandr=/usr/bin/xrandr

  if [ "connected" == $status ]; then
    notify-send "monitor $external connected"
    $xrandr --output $external --rotate left --right-of $monitor --auto
  else
    notify-send "monitor $external disconnected"
    $xrandr --output $external --off
  fi
}
