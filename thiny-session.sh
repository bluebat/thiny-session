#!/bin/sh
export DESKTOP_SESSION=thiny
gsettings set org.gnome.desktop.wm.preferences theme Clearlooks
mkdir -p $HOME/.config/tint2
[ -f $HOME/.config/tint2/tint2rc ] || cp /usr/share/thiny-session/tint2rc $HOME/.config/tint2/
[ -f $HOME/.xbindkeysrc ] || cp /usr/share/thiny-session/xbindkeysrc $HOME/.xbindkeysrc

[ -x $HOME/.xprofile ] && $HOME/.xprofile
#examples in .xprofile
# xrandr -o left
# xset -dpms
# xset s off
# xsettingsd &
# x11vnc -forever -repeat -passwd ******** &
# xdesktopwaves -q 9 -c 5 &

xbindkeys
nitrogen --restore
start-pulseaudio-x11
imsettings-switch -n -q -x

tint2 &
guake &
nm-applet &
volumeicon &

exec metacity --composite
