Name:           thiny-session
Version:        0.5.4
Release:        1%{?dist}
Summary:        A Thin and Tiny Session for X
Group:		User Interface/Desktops
License:        CC0
URL:            https://github.com/bluebat/thiny-session
Source0:        %{name}-%{version}.tar.gz
BuildArch:	noarch
Requires:       notification-daemon
Requires:       pulseaudio-module-x11
Requires:       imsettings
Requires:       metacity
Requires:       greybird-metacity-theme
Requires:       guake
Requires:       network-manager-applet
Requires:       volumeicon
Requires:       pavucontrol
Requires:       tint2
Requires:       system-config-printer
Requires:       desktop-backgrounds-compat
Requires:       nitrogen
Requires:       joe
Requires:       viewnior
Requires:       scrot
Requires:       gst123
Requires:       spacefm
Requires:       midori
Requires:       galculator
Requires:       system-config-printer
Requires:       arandr
Requires:       mupdf

%description
Thiny is a simple X session, using metacity as Window Manager with some
GTK-based packages and supporting $HOME/.xprofile. You may also need
xdesktopwaves, gtk-chtheme, leafpad, iptux,... for a desktop environment.

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
* Thu Nov 19 2015 Wei-Lun Chao <bluebat@member.fsf.org> - 0.5.4
- Update to 0.5.4

* Sun Aug 10 2014 Wei-Lun Chao <bluebat@member.fsf.org> - 0.1
- Initial package
