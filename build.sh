#!/usr/bin/env sh

set -x
set -e

DIRECTORY='node_modules/babel-cli'

if [ ! -d "${DIRECTORY}" ]; then
  npm install
fi

rm -rf build && ./node_modules/babel-cli/bin/babel src --out-dir build
