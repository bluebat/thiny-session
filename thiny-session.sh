#!/bin/sh
export DESKTOP_SESSION=thiny
[ -x $HOME/.xprofile ] && $HOME/.xprofile
mkdir -p $HOME/.config/tint2
[ -f $HOME/.config/tint2/tint2rc ] || cp /usr/share/thiny-session/tint2rc $HOME/.config/tint2/
#examples in .xprofile
# xrandr -o left
# xset -dpms
# xset s off
# xsettingsd &
# x11vnc -forever -repeat -password ******** &
# xdesktopwaves -q 9 -c 5 &

nitrogen --restore
start-pulseaudio-x11
imsettings-switch -n -q -x

tint2 &
guake &
nm-applet &
volumeicon &

exec metacity --composite
