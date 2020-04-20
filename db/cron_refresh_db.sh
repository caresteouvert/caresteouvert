#!/bin/bash

CONNEXION=${1}
OUTPUT=${2}

WORKDIR=$(dirname $(realpath ${0}))
cd ${WORKDIR}

# MàJ avec imposm
./update_imposm_nodocker.sh ${CONNEXION}

# MàJ des enseignes
./import_brand_rules.sh ${CONNEXION}

# Regénération de la table des POIs
psql  ${CONNEXION} -f categories_functions.sql
psql  ${CONNEXION} -f update_poi.sql

# Export de la liste des POIs par pays
./update_csv_exports.sh ${CONNEXION} ${OUTPUT}
