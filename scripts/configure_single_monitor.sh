#!/bin/bash

set -eux
connected_monitors=$(xrandr | grep connected)

if echo $connected_monitors | grep -q "eDP-1"; then

  echo "Configuring eDP-1 monitor."
  xrandr --output eDP-1 --auto
  xrandr --output DP-1 --off
  xrandr --output DP-2 --off
  i3 restart

else

  echo "eDP-1  monitor not found."

fi
