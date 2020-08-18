#!/bin/bash

set -eux
connected_monitors=$(xrandr | grep connected)

if echo $connected_monitors | grep -q "eDP1"; then

  echo "Configuring eDP1 monitor."
  xrandr --output eDP1 --auto
  xrandr --output HMDI1 --off
  i3 restart

else

  echo "eDP1  monitor not found."

fi
