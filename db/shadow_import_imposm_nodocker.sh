#!/bin/bash

set -e 

DATASET_URL=${1}
DATASET=`basename ${DATASET_URL}`
WORKDIR=$(dirname $(realpath ${0}))

mkdir -p /ssd/data
cd /ssd/data
wget -NS ${DATASET_URL}
mkdir -p /ssd/data/diffs-shadow

cd ${WORKDIR}

imposm import -mapping import.yml -read /ssd/data/${DATASET} -overwritecache -cachedir /ssd/data/imposm_cache-shadow -diff -diffdir /ssd/data/diffs-shadow
imposm import -write -connection "postgres://cro@127.0.0.1/shadow_cro?prefix=NONE" -mapping import.yml -cachedir /ssd/data/imposm_cache-shadow -dbschema-import public -diff

cat /ssd/data/diffs-shadow/last.state.txt|grep -v replicationUrl > /ssd/data/diffs-shadow/state.txt
echo baseUrl=https://planet.openstreetmap.org/replication/minute/ > /ssd/data/diffs-shadow/configuration.txt
echo maxInterval = 7200 >> /ssd/data/diffs-shadow/configuration.txt 
