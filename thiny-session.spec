Name:           thiny-session
Version:        0.4
Release:        1%{?dist}
Summary:        A Thin and Tiny Session for X
Group:		User Interface/Desktops
License:        CC0
URL:            https://github.com/bluebat/thiny-session
Source0:        %{name}-%{version}.tar.gz
BuildArch:	noarch
Requires:       pulseaudio-module-x11
Requires:       imsettings
Requires:       guake
Requires:       network-manager-applet
Requires:       volumeicon
Requires:       batti
Requires:       tint2

%description
Thiny is a simple X session, using metacity as Window Manager
with some GTK-based packages and supporting $HOME/.xprofile

You may also need system-config-date, xdesktopwaves, gtk-chtheme,
emelfm2, leafpad, feh, midori, iptux,... for a desktop environment.

%prep
%setup -q

%build

%install
make install DESTDIR=%{buildroot}

%files
%doc LICENSE README.md
%{_bindir}/%{name}
%{_datadir}/xsessions/thiny.desktop

%changelog
* Wed Jan 28 2015 Wei-Lun Chao <bluebat@member.fsf.org> - 0.4
- Update to 0.4

* Sun Aug 10 2014 Wei-Lun Chao <bluebat@member.fsf.org> - 0.1
- Initial package
