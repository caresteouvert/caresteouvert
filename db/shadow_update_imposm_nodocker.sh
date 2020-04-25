#!/bin/bash

set -e 

WORKDIR=$(dirname $(realpath ${0}))

cd ${WORKDIR}

osmosis --rri /ssd/data/diffs-shadow --simplify-change --write-xml-change /ssd/data/diffs-shadow/changes.osc.gz

imposm diff -mapping import.yml -cachedir /ssd/data/imposm_cache-shadow -dbschema-production public -connection "postgres://cro@127.0.0.1/shadow_cro?prefix=NONE" /ssd/data/diffs-shadow/changes.osc.gz
