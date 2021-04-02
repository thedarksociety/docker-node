# NodeJS Docker
# Version: 0.1
#
# Copyright: Copyright (c) 2021, Rye Miller
#
-include .env

DC = docker-compose
REPO = dscr/node
TAG ?= 14-alpine

# ---------------------------------------------------------------------------- #
build:
	@docker build \
		--no-cache \
		-t $(REPO):$(TAG) \
		./image/14/alpine/

start:
	@docker run -d --name nodejs $(REPO):$(TAG)

shell:
	@docker run --rm --name nodejs -i -t $(REPO):$(TAG) /bin/bash

test:
	@docker run --rm --name nodejs $(REPO):$(TAG) $(CMD)

repl:
	@docker run -d -it --name nodejs $(REPO):$(TAG)