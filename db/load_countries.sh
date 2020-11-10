#!/bin/bash

set -e

docker-compose exec -u postgres postgres psql -c "DROP TABLE IF EXISTS tmp_countries_subcountries CASCADE"

docker-compose run --rm gdal sh -c '
    for g in /git/covid19_map/db/geojson/*.geojson; do
        echo "Layer ${g} :"
        ogr2ogr \
            -f "PostgreSQL" PG:"dbname=$POSTGRES_DB host=postgres user=$POSTGRES_USER password=$POSTGRES_USER" \
            -s_srs EPSG:4326 \
            -t_srs EPSG:3857 \
            -append \
            -progress \
            -nln tmp_countries_subcountries \
            -skipfailures \
            ${g}
    done
'

docker-compose exec -u postgres postgres psql -v ON_ERROR_STOP=1 -f /git/covid19_map/db/post_load_countries.sql
