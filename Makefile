DESTDIR = /usr/bin
CONFIGDIR = /etc/default
MANDIR = /usr/local/man/man1
.DEFAULT_GOAL := help

help:
	@echo "Makefile Useage"
	@echo ""
	@echo "install			Install to $(DESTDIR)/paperctl"

install:
	@echo "Installing paperctl to $(DESTDIR)/paperctl"
	@cp $$(pwd)/paperctl $(DESTDIR)/paperctl
	@chmod +x $(DESTDIR)/paperctl
	@echo "Installing default config to $(CONFIGDIR)/paperctlrc"
	@cp $$(pwd)/paperctlrc $(CONFIGDIR)/paperctlrc
	@echo "Installing man page to $(MANDIR)"
	@mkdir -p $(MANDIR)
	@cp $$(pwd)/manpage $(MANDIR)/paperctl.1
	@gzip $(MANDIR)/paperctl.1
