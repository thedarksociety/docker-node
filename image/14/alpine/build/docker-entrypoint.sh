#!/usr/bin/env sh

set -euo pipefail

CONTAINER_STATE="STARTED"

if [[ ! -e $CONTAINER_STATE ]]; then
    touch $CONTAINER_STATE
	  echo "--- install dependencies ---"
	  npm install
fi