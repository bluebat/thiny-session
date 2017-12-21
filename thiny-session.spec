Name:           thiny-session
Version:        0.6.0
Release:        1
Summary:        A Thin and Tiny Session for X
Group:		User Interface/Desktops
License:        CC0
URL:            https://github.com/bluebat/thiny-session
Source0:        %{name}-%{version}.tar.gz
BuildArch:	noarch
Requires:       notification-daemon
Requires:       pulseaudio-module-x11
Requires:       metacity
Requires:       greybird-metacity-theme
Requires:       guake
Requires:       network-manager-applet
Requires:       NetworkManager-wifi
Requires:       xsettingsd
Requires:       imsettings-gsettings
Requires:       volumeicon
Requires:       pavucontrol
Requires:       tint2
#Requires:       system-config-date
Requires:       ntpdate
Requires:       desktop-backgrounds-compat
Requires:       nitrogen
Requires:       joe
Requires:       wget
Requires:       viewnior
Requires:       scrot
Requires:       gst123
Requires:       spacefm
Requires:       midori
Requires:       galculator
Requires:       system-config-printer
Requires:       arandr
Requires:       mupdf
Requires:       sxhkd
Requires:       leafpad
Requires:       camorama
Requires:       gshutdown
Requires:       alltray
Requires:       xinput_calibrator
Requires:       gftp
Requires:       upower

%description
Thiny is a simple X session, using metacity as Window Manager with some
GTK-based packages and supporting $HOME/.xprofile.

%prep
%setup -q

%build

%install
make install DESTDIR=%{buildroot}

%files
%doc LICENSE README.md
%{_bindir}/%{name}
%{_datadir}/xsessions/thiny.desktop
%{_datadir}/%{name}

%changelog
* Thu Dec 21 2017 Wei-Lun Chao <bluebat@member.fsf.org> - 0.6.0
- Update package

* Sun Aug 10 2014 Wei-Lun Chao <bluebat@member.fsf.org> - 0.1
- Initial package
