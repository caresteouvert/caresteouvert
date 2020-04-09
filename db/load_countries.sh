#!/bin/bash

GIT_ROOT=$(dirname $(dirname $(realpath ${0})))
CONNEXION_STRING=${1}

docker run --network=host -v ${GIT_ROOT}:/git/covid19_map -ti osgeo/gdal:alpine-small-latest ogr2ogr -f "PostgreSQL" PG:"${CONNEXION_STRING}" -s_srs EPSG:4326 -t_srs EPSG:3857 -progress -overwrite -nln tmp_countries_subcountries -skipfailures /git/covid19_map/db/countries_subcountries.geojson

psql ${CONNEXION_STRING} -f post_load_countries.sql
