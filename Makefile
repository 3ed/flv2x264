PREFIX ?= /usr/local

all:

install:
	install -dm755 "$(DESTDIR)/$(PREFIX)/bin"
	install -m755 "bin/flv2x264" "$(DESTDIR)/$(PREFIX)/bin/flv2x264"

uninstall:
	test -f "$(PREFIX)/bin/flv2x264" && rm "bin/flv2x264" "$(PREFIX)/bin/flv2x264"
	test -d "$(PREFIX)/bin" && rmdir --ignore-fail-on-non-empty "$(PREFIX)/bin"
