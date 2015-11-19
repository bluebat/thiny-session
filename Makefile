VERSION=0.5.4
DESTDIR=
PREFIX=/usr
PACKAGE=thiny-session

build:

install:
	install -Dm755 $(PACKAGE).sh $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	install -Dm644 thiny.desktop $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	install -Dm644 tint2rc $(DESTDIR)$(PREFIX)/share/thiny-session/tint2rc
	install -Dm644 xbindkeysrc $(DESTDIR)$(PREFIX)/share/thiny-session/xbindkeysrc
	install -Dm644 bg-saved.cfg $(DESTDIR)$(PREFIX)/share/thiny-session/bg-saved.cfg

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(PACKAGE)
	rm -f $(DESTDIR)$(PREFIX)/share/xsessions/thiny.desktop
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/tint2rc
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/xbindkeysrc
	rm -f $(DESTDIR)$(PREFIX)/share/thiny-session/bg-saved.cfg

clean:

rpm:
	rsync -avh --delete . $(HOME)/rpmbuild/SOURCES/$(PACKAGE)-$(VERSION)
	rm -rf $(HOME)/rpmbuild/SOURCES/$(PACKAGE)-$(VERSION)/.git
	tar czvf $(HOME)/rpmbuild/SOURCES/$(PACKAGE)-$(VERSION).tar.gz -C $(HOME)/rpmbuild/SOURCES $(PACKAGE)-$(VERSION)
	rpmbuild -ta $(HOME)/rpmbuild/SOURCES/$(PACKAGE)-$(VERSION).tar.gz
