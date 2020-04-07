#!/bin/bash

set -e 

DATASET_URL=${1}
CONNEXION=${2}
DATASET=`basename ${DATASET_URL}`

mkdir -p /data/download
cd /data/download
wget -NS ${DATASET_URL}
mkdir -p /data/download/diffs

imposm import -mapping /git/covid19_map/db/import.yml -read /data/download/${DATASET} -overwritecache -cachedir /data/imposm_cache -diff -diffdir /data/download/diffs
imposm import -write -connection ${CONNEXION} -mapping /git/covid19_map/db/import.yml -cachedir /data/imposm_cache -dbschema-import public -diff

cat /data/download/diffs/last.state.txt|grep -v replicationUrl > /data/download/diffs/state.txt
echo baseUrl=https://planet.openstreetmap.org/replication/minute/ > /data/download/diffs/configuration.txt
echo maxInterval = 7200 >> /data/download/diffs/configuration.txt 
