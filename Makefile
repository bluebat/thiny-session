VERSION=0.2
DESTDIR=
PREFIX=/usr
PACKAGE=thiny-session

all:

install:
	install -Dm755 $(PACKAGE) $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	install -Dm644 thiny.desktop $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	install -Dm644 tint2rc $(DESTDIR)$(PREFIX)/share/$(PACKAGE)/tint2rc

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	rm -f $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	rm -fi$(DESTDIR)$(PREFIX)/share/$(PACKAGE)/tint2rc
