#!/bin/bash

set -e

WORKDIR=$(dirname $(realpath ${0}))

DATASET_URL=${1}
DATABASE_URL=${2:-${DATABASE_URL}}
IMPOSM_CONNEXION=${DATABASE_URL//postgresql:\/\//postgis:\/\/}?prefix=NONE
echo $IMPOSM_CONNEXION
DATASET=`basename ${DATASET_URL}`

mkdir -p /data/download
cd /data/download
wget -NS ${DATASET_URL}
mkdir -p /data/download/diffs
cd ${WORKDIR}

#STATE_URL="${DATASET_URL%-latest.osm.pbf}"
#wget $STATE_URL > /data/download/diffs/state.txt

imposm import \
    -mapping /git/covid19_map/db/import.yml \
    -read /data/download/${DATASET} \
    -overwritecache \
    -cachedir /data/imposm_cache \
    -write \
    -connection "${IMPOSM_CONNEXION}" \
    -deployproduction \
    -diff \
    -diffdir /data/download/diffs

cat /data/download/diffs/last.state.txt | grep -v replicationUrl > /data/download/diffs/state.txt
echo baseUrl=https://planet.openstreetmap.org/replication/minute/ > /data/download/diffs/configuration.txt
echo maxInterval = 7200 >> /data/download/diffs/configuration.txt

psql ${DATABASE_URL} -v ON_ERROR_STOP=1 -f indexes_post_import.sql
psql ${DATABASE_URL} -v ON_ERROR_STOP=1 -f post_import_stats.sql
