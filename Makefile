VERSION=0.4
DESTDIR=
PREFIX=/usr
PACKAGE=thiny-session

build:

install:
	install -Dm755 $(PACKAGE).sh $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	install -Dm644 thiny.desktop $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	install -Dm644 tint2rc $(DESTDIR)$(PREFIX)/share/thiny-session/tint2rc

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	rm -f $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/tint2rc

clean:
