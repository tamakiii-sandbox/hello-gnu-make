.PHONY: help setup dependencies build clean

NAME := tamakiii-sandbox/hello-gnu-make

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies \
	deps/make

dependencies:
	type docker

build: Dockerfile
	docker build -t $(NAME) .

bash:
	docker run --rm -it -v $(PWD):/app -w /app $(NAME) $@

deps/make:
	$(MAKE) $@

clean:
	rm -rf deps
