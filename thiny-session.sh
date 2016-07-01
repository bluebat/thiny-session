#!/bin/sh
export DESKTOP_SESSION=thiny
touch $HOME/.xsettingsd && xsettingsd &
gsettings set org.gnome.desktop.interface gtk-theme Adwaita
gsettings set org.gnome.desktop.wm.preferences theme Greybird
mkdir -p $HOME/.config/tint2
[ -f $HOME/.config/tint2/tint2rc ] || cp /usr/share/thiny-session/tint2rc $HOME/.config/tint2/
mkdir -p $HOME/.config/nitrogen
[ -f $HOME/.config/nitrogen/bg-saved.cfg ] || cp /usr/share/thiny-session/bg-saved.cfg $HOME/.config/nitrogen/
[ -f $HOME/.xhotkeys ] || cp /usr/share/thiny-session/xhotkeys $HOME/.xhotkeys

[ -x $HOME/.xprofile ] && $HOME/.xprofile
#examples in .xprofile
# xrandr -o left
# xset -dpms
# xset s off
# xbacklight -set 100
# x11vnc -forever -repeat -passwd ******** &
# xdesktopwaves -q 9 -c 5 &
# parcellite &
# $HOME/.dropbox-dist/dropboxd &
# $HOME/.TelegramDesktop/Telegram -noupdate &

nitrogen --restore
start-pulseaudio-x11
imsettings-switch -n -q -x

tint2 &
guake &
nm-applet &
volumeicon &

sleep 10 && xhotkeys &
exec metacity --no-composite
