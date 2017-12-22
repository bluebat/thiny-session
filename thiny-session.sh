#!/bin/sh
export DESKTOP_SESSION=thiny
[ -f $HOME/.xsettingsd ] || /usr/share/thiny-session/settings.sh
xsettingsd &
mkdir -p $HOME/.config/tint2
[ -f $HOME/.config/tint2/tint2rc ] || cp /usr/share/thiny-session/tint2rc $HOME/.config/tint2/
mkdir -p $HOME/.config/nitrogen
[ -f $HOME/.config/nitrogen/bg-saved.cfg ] || cp /usr/share/thiny-session/bg-saved.cfg $HOME/.config/nitrogen/
[ -f $HOME/.config/sxhkd/sxhkdrc ] || cp /usr/share/thiny-session/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
[ -f $HOME/.gshutdown ] || cp /usr/share/thiny-session/gshutdown $HOME/.gshutdown

nitrogen --restore
start-pulseaudio-x11
imsettings-switch -n -q -x

[ -x $HOME/.xprofile ] && $HOME/.xprofile
#examples in .xprofile
# xrandr -o left
# xset -dpms
# xset s off
# xbacklight -set 100
# gsettings set org.gnome.desktop.interface gtk-theme Bluecurve
# gsettings set org.gnome.desktop.wm.preferences theme Bluecurve
# x11vnc -forever -repeat -passwd ******** &
# xdesktopwaves -q 9 -c 5 &
# parcellite &
# $HOME/.dropbox-dist/dropboxd &
# $HOME/.TelegramDesktop/Telegram -noupdate &

tint2 &
guake &
nm-applet &
volumeicon &
alltray -x -nt gshutdown &
sxhkd &
exec metacity --composite
