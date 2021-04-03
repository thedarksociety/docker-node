#
# Base/Build Stage
#
FROM node:14.15-alpine3.12

LABEL maintainer="The Dark Society <containers@darksociety.cloud>"


ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

ARG PORT=3000
ENV PORT $PORT

RUN \
    set -x \
    && apk add --no-cache \
        bash \
        dumb-init \
        git \
        make

EXPOSE $PORT

COPY ./build/docker-entrypoint.sh /usr/local/bin/

WORKDIR /node

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD "docker-entrypoint.sh"