#!/usr/bin/env bash

set -o errexit

log() {
  echo "$*" >&2
}

# [TODO] run this only if dependencies aren't installed yet
cd ../..
shopt -s globstar && rm -rf **/node_modules/websocket/.git
npm ci
npx lerna bootstrap
cd packages/docs

# lib
log "Building lib docs..."
solidity-docgen -i ../lib/contracts/ -o modules/api/pages -e ../lib/contracts/mocks -x adoc -t templates
mv modules/api/pages/index.adoc modules/api/pages/upgrades.adoc
log "Done"

# cli
log "Building CLI docs..."

cd ../packages/cli

npm run gen-docs
log "Done"
