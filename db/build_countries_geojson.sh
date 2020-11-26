#!/bin/bash

cp -f geojson/empty_geojson.txt countries_subcountries.geojson

for g in `ls geojson/*.geojson`
do
    echo "Layer ${g} :"
    docker-compose run --rm gdal \
        ogr2ogr \
            -f GeoJSON \
            -append \
            -progress \
            -skipfailures \
            -nln world_coverage \
            -update \
            /git/covid19_map/db/countries_subcountries.geojson \
            /git/covid19_map/db/${g}
done
