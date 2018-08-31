#!/usr/bin/env bash

/usr/bin/notify-send "detected!"

for display in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
  echo $display
  notify-send "$display detected!"
done

if $(xrandr | grep -q 'HDMI-1 connected') ; then
  echo 'connected'
  xrandr --output eDP-1 --auto --dpi 180 --output HDMI-1 --auto --dpi 165 --left-of eDP-1
else
  echo 'disconnected'
  xrandr --output eDP-1 --auto --primary --dpi 180
fi

killall polybar
exec /usr/local/bin/polybar header
feh --bg-scale $HOME/Documents/wallpapers/tree.png --bg-scale $HOME/Documents/wallpapers/tree.jpg

