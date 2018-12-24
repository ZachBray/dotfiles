#!/bin/sh

set -eux

scripts_dir=`dirname $0`

# add VIM keyboard variant
mv /usr/share/X11/xkb/symbols/gb /usr/share/X11/xkb/symbols/gb.old
cp $scripts_dir/gb /usr/share/X11/xkb/symbols/

# add to listings
mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
mv /usr/share/X11/xkb/rules/evdev.lst /usr/share/X11/xkb/rules/evdev.lst.old
mv /usr/share/X11/xkb/rules/xorg.xml /usr/share/X11/xkb/rules/xorg.xml.old
mv /usr/share/X11/xkb/rules/xorg.lst /usr/share/X11/xkb/rules/xorg.lst.old
cp $scripts_dir/evdev.xml /usr/share/X11/xkb/rules/
cp $scripts_dir/evdev.lst /usr/share/X11/xkb/rules/
cp $scripts_dir/xorg.xml /usr/share/X11/xkb/rules/
cp $scripts_dir/xorg.lst /usr/share/X11/xkb/rules/

dpkg-reconfigure keyboard-configuration
