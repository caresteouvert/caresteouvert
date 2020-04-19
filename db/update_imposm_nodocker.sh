#!/bin/bash

set -e 

WORKDIR=$(dirname $(realpath ${0}))
CONNEXION="${1}&prefix=NONE"

cd ${WORKDIR}

osmosis --rri /ssd/data/diffs --simplify-change --write-xml-change /ssd/data/diffs/changes.osc.gz

imposm diff -mapping import.yml -cachedir /ssd/data/imposm_cache -dbschema-production public -connection ${CONNEXION} /ssd/data/diffs/changes.osc.gz
