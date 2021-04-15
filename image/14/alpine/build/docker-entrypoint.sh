#!/usr/bin/env sh

set -euo pipefail

CONTAINER_STATE="STARTED"

if [[ ! -e $CONTAINER_STATE ]]; then
    touch $CONTAINER_STATE

	  YARN_OPTS=""
    NPM_CMD="ci"
else

    YARN_OPTS=""
    NPM_CMD="install"
fi


if [ -f "/node/app/yarn.lock" ]; then
    echo "--- install dependencies ---"
    yarn install $YARN_OPTS
    yarn check --verify-tree || NODE_ENV=development yarn install
    yarn cache clean
elif [ -f "/node/app/package-lock.json" ]; then
    echo "--- install dependencies ---"
    npm $NPM_CMD
    npm cache clean --force
else
    npm install
    npm cache clean --force
fi


app_run() {
  path_with_node_modules_binaries="$PATH:$(pwd)/node_modules/.bin"

  start_script="PATH=$path_with_node_modules_binaries $(node -p "require('./package.json').scripts.start")"

  eval "$start_script"
}

app_run