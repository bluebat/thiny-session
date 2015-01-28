VERSION=0.4
DESTDIR=
PREFIX=/usr
PACKAGE=thiny-session

build:

install:
	install -Dm755 $(PACKAGE) $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	install -Dm644 thiny.desktop $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	rm -f $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
