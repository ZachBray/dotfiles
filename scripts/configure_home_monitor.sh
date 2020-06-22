#!/bin/bash

set -eux

if xrandr | grep connected | grep -q "^HDMI-1"; then

  echo "Configuring HDMI-1 monitor."
  xrandr --output HDMI-1 --auto
  xrandr --output HDMI-1 --right-of eDP-1

  xrandr --output eDP-1 --off
  i3 restart

else

  echo "HMDI monitor not found."

fi

