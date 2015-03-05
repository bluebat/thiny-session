#!/bin/sh
export DESKTOP_SESSION=thiny
[ -x $HOME/.xprofile ] && $HOME/.xprofile
#examples in .xprofile
# xrandr -o left
# xset -dpms
# xset s off
# xsettingsd &
# x11vnc &
# xdesktopwaves -q 9 -c 5 &

feh --bg-scale /usr/share/backgrounds/default.png
start-pulseaudio-x11
imsettings-switch -n -q -x

tint2 &
guake &
nm-applet &
volumeicon &
batti &

exec metacity --composite
