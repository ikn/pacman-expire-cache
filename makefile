script_name := pacman-expire-cache

INSTALL_PROGRAM := install
INSTALL_DATA := install -m 644

prefix := /usr/local
datarootdir := $(prefix)/share
exec_prefix := $(prefix)
bindir := $(exec_prefix)/bin
docdir := $(datarootdir)/doc/$(script_name)

.PHONY: all install uninstall

all:

install:
	mkdir -p "$(DESTDIR)$(bindir)/"
	$(INSTALL_PROGRAM) $(script_name) "$(DESTDIR)$(bindir)/$(script_name)"
	mkdir -p "$(DESTDIR)$(docdir)/"
	$(INSTALL_DATA) README "$(DESTDIR)$(docdir)/"

uninstall:
	$(RM) "$(DESTDIR)$(bindir)/$(script_name)"
	$(RM) -r "$(DESTDIR)$(docdir)/"
