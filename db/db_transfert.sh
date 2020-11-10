#!/bin/bash

SOURCE_DATABASE_URL=${1}
TARGET_DATABASE_URL=${2}

pg_dump ${SOURCE_DATABASE_URL} -t imposm_osm_point -t imposm_osm_polygon | psql ${TARGET_DATABASE_URL}
