#!/bin/sh
export XDG_CURRENT_DESKTOP=Thiny
export DESKTOP_SESSION=thiny
/usr/libexec/notification-daemon &
[ -f $HOME/.xsettingsd ] || /usr/share/thiny-session/settings.sh
xsettingsd &
mkdir -p $HOME/.config/tint2 $HOME/.config/nitrogen $HOME/.config/sxhkd
[ -f $HOME/.config/tint2/tint2rc ] || cp /usr/share/thiny-session/tint2rc $HOME/.config/tint2/
[ -f $HOME/.config/nitrogen/bg-saved.cfg ] || cp /usr/share/thiny-session/bg-saved.cfg $HOME/.config/nitrogen/
[ -f $HOME/.config/sxhkd/sxhkdrc ] || cp /usr/share/thiny-session/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
[ -f $HOME/.gshutdown ] || cp /usr/share/thiny-session/gshutdown $HOME/.gshutdown

if which start-pulseaudio-x11 &>/dev/null ; then
  start-pulseaudio-x11
else
  pipewire-media-session &
  pipewire-pulse &
fi
#imsettings-switch -n -q -x
imsettings-boot.sh

[ -f $HOME/.xprofile ] && . $HOME/.xprofile
#examples in .xprofile
# xrandr -o left
# xset -dpms
# xset s off
# xbacklight -set 100
# gsettings set org.gnome.desktop.interface gtk-theme Bluecurve
# gsettings set org.gnome.desktop.interface icon-theme Bluecurve
# gsettings set org.gnome.desktop.wm.preferences theme Bluecurve
# setxkbmap -option keypad:pointerkeys
# synclient touchpadoff=`lsusb|grep -i mouse|wc -l`
# x11vnc -forever -repeat -passwd ******** &
# parcellite &
# xautolock -time 10 -locker xlock &
# $HOME/.dropbox-dist/dropboxd &
# $HOME/.TelegramDesktop/Telegram -noupdate &

#systemctl --user start xdg-desktop-autostart.target
nitrogen --restore
tint2 &
nm-applet &
#blueman-applet &
gshutdown -m &
sxhkd &
#volumeicon &
pasystray &
guake &
if pgrep 'xdesktopwaves|xpenguins|xsnow|xcockroach|xfireworks|xfishtank|xwinwrap' ; then
  exec metacity --no-composite
else
  exec metacity --composite
fi
