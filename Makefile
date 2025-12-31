prefix ?= /usr
.DEFAULT_GOAL := install

install:
	chmod 755 drasl
	cp drasl "$(prefix)/bin/drasl"
	mkdir -p "$(prefix)/share/drasl/"
	cp -R assets view public locales "$(prefix)/share/drasl/"
