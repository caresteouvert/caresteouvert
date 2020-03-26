#!/bin/bash

# Appel Docker avec update_imposm.sh
# = ligne de commande à adapter selon le contexte de prod

# MàJ des enseignes
./import_brand_rules.sh

# Regénération de la table des POIs
psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -f update_poi.sql