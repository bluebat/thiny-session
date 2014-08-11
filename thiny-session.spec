Name:           thiny-session
Version:        0.1
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

%description
Thiny is a simple X session, using metacity as Window Manager
with some GTK-based packages.

%prep
%setup -q


%build


%install
install -Dm755 %{name} %{buildroot}%{_bindir}/%{name}
install -Dm644 thiny.desktop %{buildroot}%{_datadir}/thiny.desktop


%files
%doc LICENSE README.md
%{_bindir}/%{name}
%{_datadir}/thiny.desktop


%changelog
* Sun Aug 10 2014 Wei-Lun Chao <bluebat@member.fsf.org> - 0.1
- Initial package
