#!/usr/bin/env bash

# Exit script as soon as a command fails.
set -o errexit

node_modules/.bin/solidity-coverage

if [ "$CONTINUOUS_INTEGRATION" = true ]; then
  cat coverage/lcov.info | node_modules/.bin/coveralls
fi
