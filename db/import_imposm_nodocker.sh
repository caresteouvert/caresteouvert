#!/bin/bash

set -e 

DATASET_URL=${1}
CONNEXION=${2}
DATASET=`basename ${DATASET_URL}`

mkdir -p /ssd/data
cd /ssd/data
wget -NS ${DATASET_URL}
mkdir -p /ssd/data/diffs

imposm import -mapping import.yml -read /ssd/data/planet-latest.osm.pbf -overwritecache -cachedir /ssd/data/imposm_cache -diff -diffdir /ssd/data/diffs
imposm import -write -connection "postgres://cro@127.0.0.1/cro?prefix=NONE" -mapping import.yml -cachedir /ssd/data/imposm_cache -dbschema-import public -diff

cat /ssd/data/diffs/last.state.txt|grep -v replicationUrl > /ssd/data/diffs/state.txt
echo baseUrl=https://planet.openstreetmap.org/replication/minute/ > /ssd/data/diffs/configuration.txt
echo maxInterval = 7200 >> /ssd/data/diffs/configuration.txt 
