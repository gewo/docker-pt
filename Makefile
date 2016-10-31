PREFIX ?= /usr/local
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin
LIBDIR ?= $(PREFIX)/lib
MANDIR ?= $(PREFIX)/share/man

default: build

run: build
	docker run -it --rm -v $(HOME)/.pt:/root/.pt -v $(CURDIR):/pwd pt

build:
	docker build -t pt .
	@touch $@

clean:
	-docker rmi pt
	-rm -f build

install:
	@install -v -d "$(DESTDIR)$(BINDIR)/" && install -v -m 0755 pt "$(DESTDIR)$(BINDIR)/pt"
	@install -v -d "$(DESTDIR)$(BINDIR)/" && install -v -m 0755 pt-checkout "$(DESTDIR)$(BINDIR)/pt-checkout"
