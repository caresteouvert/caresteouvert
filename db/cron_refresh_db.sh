#!/bin/bash

CONNEXION=${1}

# MàJ avec imposm
./update_imposm.sh ${CONNEXION}

# MàJ des enseignes
./import_brand_rules.sh ${CONNEXION}

# Regénération de la table des POIs
psql  ${CONNEXION} -f update_poi.sql
