#!/bin/bash

set -eux

if xrandr | grep connected | grep -q "^HDMI1"; then

  echo "Configuring HDMI1 monitor."
  xrandr --output HDMI1 --auto
  xrandr --output HDMI1 --right-of eDP1

  xrandr --output eDP1 --off
  i3 restart

else

  echo "HMDI monitor not found."

fi

