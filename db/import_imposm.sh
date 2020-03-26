#!/bin/bash

set -e 

DATASET=${1}
CONNEXION=${2}

mkdir -p /data/download
cd /data/download
wget -NS http://download.openstreetmap.fr/extracts/merge/${DATASET}.osm.pbf
wget -NS http://download.openstreetmap.fr/extracts/merge/${DATASET}.state.txt
mkdir -p /data/download/diffs
mv ${DATASET}.state.txt /data/download/diffs/state.txt


imposm import -mapping /git/covid19_map/db/import.yml -read /data/download/${DATASET}.osm.pbf -overwritecache -cachedir /data/imposm_cache
imposm import -write -connection ${CONNEXION}?prefix=NONE -mapping /git/covid19_map/db/import.yml -cachedir /data/imposm_cache -dbschema-import public -diff


echo baseUrl=http://download.openstreetmap.fr/replication/merge/${DATASET}/minute/ > /data/download/diffs/configuration.txt
echo maxInterval = 7200 >> /data/download/diffs/configuration.txt 
