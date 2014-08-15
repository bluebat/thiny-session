Name:           thiny-session
Version:        0.2
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
Requires:       neap
Requires:       xdesktopwaves
Requires:       system-config-date

%description
Thiny is a simple X session, using metacity as Window Manager
with some GTK-based packages.

You may also need emelfm2, feh, osmo, midori,...
for a desktop environment.

%prep
%setup -q

%build

%install
make install DESTDIR=%{buildroot}

%files
%doc LICENSE README.md
%{_bindir}/%{name}
%{_datadir}/xsessions/thiny.desktop
%{_datadir}/%{name}/tint2rc

%changelog
* Sat Aug 16 2014 Wei-Lun Chao <bluebat@member.fsf.org> - 0.2
- Add Makefile

* Sun Aug 10 2014 Wei-Lun Chao <bluebat@member.fsf.org> - 0.1
- Initial package
