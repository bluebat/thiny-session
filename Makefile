VERSION = 0.7.0
DESTDIR =
PREFIX = /usr
PACKAGE = thiny-session

build:

install:
	install -Dm755 $(PACKAGE).sh $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	install -Dm644 thiny.desktop $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	install -Dm644 tint2rc $(DESTDIR)$(PREFIX)/share/thiny-session/tint2rc
	install -Dm644 bg-saved.cfg $(DESTDIR)$(PREFIX)/share/thiny-session/bg-saved.cfg
	install -Dm755 settings.sh $(DESTDIR)$(PREFIX)/share/thiny-session/settings.sh
	install -Dm644 sxhkdrc $(DESTDIR)$(PREFIX)/share/thiny-session/sxhkdrc
	install -Dm644 gshutdown $(DESTDIR)$(PREFIX)/share/thiny-session/gshutdown

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	rm -f $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/tint2rc
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/bg-saved.cfg
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/settings.sh
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/sxhkdrc
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/gshutdown

clean:

rpm: $(PACKAGE).spec
	rsync -aC --delete . $(HOME)/rpmbuild/SOURCES/$(PACKAGE)-$(VERSION)
	tar czf $(HOME)/rpmbuild/SOURCES/$(PACKAGE)-$(VERSION).tar.gz -C $(HOME)/rpmbuild/SOURCES $(PACKAGE)-$(VERSION)
	rpmbuild -ta $(HOME)/rpmbuild/SOURCES/$(PACKAGE)-$(VERSION).tar.gz
