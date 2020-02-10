#!/bin/bash

set -eux

if xrandr | grep connected | grep -q "^DP-1"; then

  echo "Configuring DP-1 monitor."
  xrandr --output DP-1 --auto
  xrandr --output DP-1 --right-of eDP-1

  if xrandr | grep connected | grep -q "^DP-2"; then
    echo "Configuring DP-2 monitor."
    xrandr --output DP-2 --auto
    xrandr --output DP-2 --right-of DP-1  
  fi

  if xrandr | grep connected | grep -q "^DP-1-8"; then
    echo "Configuring DP-1-8 monitor."
    xrandr --output DP-1-8 --auto
    xrandr --output DP-1-8 --right-of DP-2
  fi

  xrandr --output eDP-1 --off
  i3 restart

else

  echo "Multiple monitors not found."

fi

