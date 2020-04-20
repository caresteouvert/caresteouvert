#!/bin/bash

CONNEXION=${1}

WORKDIR=$(dirname $(realpath ${0}))
cd ${WORKDIR}

# MàJ avec imposm
./update_imposm_nodocker.sh ${CONNEXION}

# MàJ des enseignes
./import_brand_rules.sh ${CONNEXION}

# Regénération de la table des POIs
psql  ${CONNEXION} -f categories_functions.sql
psql  ${CONNEXION} -f update_poi.sql
