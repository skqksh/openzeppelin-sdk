#!/usr/bin/env bash

set -o errexit

log() {
  echo "$*" >&2
}

log "Installing dependencies..."
yarn > /dev/null
log "Done"

# lib
log "Building lib docs..."
solidity-docgen -i ../lib/contracts/ -o modules/api/pages -e ../lib/contracts/mocks -x adoc -t templates
mv modules/api/pages/index.adoc modules/api/pages/upgrades.adoc
log "Done"

# cli
log "Building CLI docs..."

cd ../cli

npm run gen-docs
log "Done"
