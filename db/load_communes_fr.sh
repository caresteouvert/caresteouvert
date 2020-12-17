#!/bin/bash

set -e

COMMUNES_ZIP="communes-20200101-shp.zip"
COMMUNES_SHP="communes-20200101.shp"

wget -NS http://osm13.openstreetmap.fr/~cquest/openfla/export/${COMMUNES_ZIP}
unzip ${COMMUNES_ZIP}

docker-compose exec -u postgres postgres psql -c "DROP TABLE IF EXISTS communes CASCADE"

docker-compose run --rm gdal sh -c '
    ogr2ogr \
        -f "PostgreSQL" PG:"dbname=$POSTGRES_DB host=$POSTGRES_HOST user=$POSTGRES_USER password=$POSTGRES_PASSWORD" \
        -s_srs EPSG:4326 \
        -t_srs EPSG:3857 \
        -append \
        –config OGR_TRUNCATE YES \
        -progress \
        -nln communes \
        -nlt MULTIPOLYGON \
        -skipfailures \
        /git/covid19_map/db/${COMMUNES_SHP}
'

rm communes-*
