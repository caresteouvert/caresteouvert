#!/bin/bash

set -e

DATABASE_URL=${1:-${DATABASE_URL}}
IMPOSM_CONNEXION=${DATABASE_URL//postgresql:\/\//postgis:\/\/}?prefix=NONE

osmosis \
    --rri /data/download/diffs \
    --simplify-change \
    --write-xml-change /data/download/diffs/changes.osc.gz

imposm diff \
    -mapping /git/covid19_map/db/import.yml \
    -cachedir /data/imposm_cache \
    -dbschema-production public \
    -connection ${IMPOSM_CONNEXION} \
    /data/download/diffs/changes.osc.gz
