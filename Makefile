.PHONY: help setup dependencies build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies \
	deps/make

dependencies:
	type git

build: deps/make
	cd $< && ./bootstrap
	cd $< && ./configure

deps/make: deps
	git clone --depth=1 git@github.com:mirror/make.git $@

deps:
	[ -d $@ ] || mkdir $@

clean:
	rm -rf deps
