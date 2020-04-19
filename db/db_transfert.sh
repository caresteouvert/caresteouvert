#!/bin/bash

SOURCE_PG_CONNEXION=${1}
TARGET_PG_CONNEXION=${2}

pg_dump ${SOURCE_PG_CONNEXION} -t imposm_osm_point -t imposm_osm_polygon | psql ${TARGET_PG_CONNEXION}
