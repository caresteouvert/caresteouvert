#!/bin/bash

set -e

WORKDIR=$(dirname $(realpath ${0}))
cd ${WORKDIR}

# MàJ avec imposm
#./update_imposm.sh

# MàJ des enseignes
./import_brand_rules.sh

# MàJ des POIs personnalisés
./import_custom_poi.sh

# Regénération de la table des POIs
psql ${DATABASE_URL} -v ON_ERROR_STOP=1 -f categories_functions.sql
psql ${DATABASE_URL} -v ON_ERROR_STOP=1 -f status_order.sql
psql ${DATABASE_URL} -v ON_ERROR_STOP=1 -f update_poi.sql
