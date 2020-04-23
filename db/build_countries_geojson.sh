#!/bin/bash

GIT_ROOT=$(dirname $(dirname $(realpath ${0})))

cp -f geojson/empty_geojson.txt countries_subcountries.geojson

for g in `ls geojson/*.geojson`
do
    echo "Layer ${g} :"
    docker run -v ${GIT_ROOT}:/git/covid19_map -ti osgeo/gdal:alpine-small-latest ogr2ogr -f GeoJSON -append -progress  -skipfailures -nln world_coverage -update  /git/covid19_map/db/countries_subcountries.geojson /git/covid19_map/db/${g}
done
