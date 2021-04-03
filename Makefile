# NodeJS Docker
# Version: 0.1
#
# Copyright: Copyright (c) 2021, Rye Miller
#
-include .env

default: build

build:
	@docker build \
		--rm \
		--no-cache \
		--build-arg "TEST_ARGUMENT" \
		--tag dscr/node:14-alpine \
		./image/14/alpine/

run:
	@docker run --name "nodejs" -d -i -t dscr/node:14-alpine $(CMD)

start:
	@docker run -d --name "nodejs" -d -i -t dscr/node:14-alpine