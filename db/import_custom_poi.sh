#!/bin/bash

CONNEXION=${1}

WORKDIR=$(dirname $(realpath ${0}))
cd ${WORKDIR}

csvfile="${WORKDIR}/custom_poi.csv"

psql ${CONNEXION} -c "DROP TABLE IF EXISTS poi_custom; CREATE TABLE poi_custom(cro_id VARCHAR, osm_id VARCHAR, name VARCHAR, category VARCHAR, subcategory VARCHAR, lat DOUBLE PRECISION, lng DOUBLE PRECISION, tags JSONB DEFAULT '{}');"
psql ${CONNEXION} -c "\copy poi_custom FROM '${csvfile}' CSV DELIMITER ',' HEADER"
psql ${CONNEXION} -c "CREATE INDEX poi_custom_osm_id_idx ON poi_custom(osm_id);"
