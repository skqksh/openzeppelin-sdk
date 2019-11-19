#!/usr/bin/env bash

set -o errexit

log() {
  echo "$*" >&2
}

log "Which yarn: $(which yarn)"

log "Yarn config current: $(yarn config current)"

log "Yarn config list: $(yarn config list)"

log "Installing dependencies..."
npx yarn --cwd ../.. > /dev/null
log "Done"

# lib
log "Building lib docs..."
solidity-docgen -i ../lib/contracts/ -o modules/api/pages -e ../lib/contracts/mocks -x adoc -t templates
mv modules/api/pages/index.adoc modules/api/pages/upgrades.adoc
log "Done"

# cli
log "Building CLI docs..."

npx yarn --cwd ../cli gen-docs
log "Done"
