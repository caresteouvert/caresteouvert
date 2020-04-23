#!/bin/bash

GIT_ROOT=$(dirname $(dirname $(realpath ${0})))
CONNEXION_STRING=${1}

psql ${CONNEXION_STRING} -c "DROP TABLE IF EXISTS tmp_countries_subcountries CASCADE"

for g in `ls geojson/*.geojson`
do
    echo "Layer ${g} :"
    docker run --network=host -v ${GIT_ROOT}:/git/covid19_map -ti osgeo/gdal:alpine-small-latest ogr2ogr -f "PostgreSQL" PG:"${CONNEXION_STRING}" -s_srs EPSG:4326 -t_srs EPSG:3857 -append -progress -nln tmp_countries_subcountries -skipfailures /git/covid19_map/db/${g}
done
psql ${CONNEXION_STRING} -f post_load_countries.sql
