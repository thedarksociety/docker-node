# Docker for Node
# Version: 0.1
#
# Copyright: Copyright (c) 2021, Rye Miller
#
FROM node:14.15-alpine3.12

LABEL maintainer="The Dark Society <containers@darksociety.cloud>"


RUN set -x \
    && apk add --no-cache \
        bash \
        dumb-init \
        git \
        make

COPY ./build/docker-entrypoint.sh /usr/local/bin/

WORKDIR /node/app

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD "docker-entrypoint.sh"