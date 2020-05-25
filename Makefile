DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/openbox-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/openbox-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/openbox-gnome-flashback.desktop $(PREFIX)/share/applications/openbox-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/openbox-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/openbox-gnome-flashback-session $(PREFIX)/bin/openbox-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/openbox-gnome-flashback $(PREFIX)/bin/openbox-gnome-flashback

uninstall:
	rm -f $(PREFIX)/bin/openbox-gnome-flashback \
	      $(PREFIX)/bin/openbox-gnome-flashback-session \
	      $(PREFIX)/share/gnome-session/sessions/openbox-gnome-flashback.session \
	      $(PREFIX)/share/applications/openbox-gnome-flashback.desktop \
	      $(PREFIX)/share/xsessions/openbox-gnome-flashback-session.desktop

.PHONY: install uninstall
