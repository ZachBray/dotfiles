#!/bin/bash

set -eux
connected_monitors=$(xrandr | grep connected)

if echo $connected_monitors | grep -q "DP-1"; then

  echo "Configuring DP-1 monitor."
  xrandr --output DP-1 --auto
  xrandr --output DP-1 --right-of eDP-1

  if echo $connected_monitors | grep -q "DP-2"; then
    echo "Configuring DP-2 monitor."
    xrandr --output DP-2 --auto
    xrandr --output DP-2 --right-of DP-1  
  fi

  xrandr --output eDP-1 --off
  i3 restart

else

  echo "Multiple monitors not found."

fi
