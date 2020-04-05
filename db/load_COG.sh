#!/bin/bash

CONNEXION=${1}

mkdir -p cog && cd cog && rm *.csv

wget -NS https://www.insee.fr/fr/statistiques/fichier/4316069/cog_ensemble_2020_csv.zip
unzip cog_ensemble_2020_csv.zip

CSV_COMMUNE=communes2020.csv
CSV_DEPARTEMENT=departement2020.csv
CSV_REGION=region2020.csv

psql ${CONNEXION} -f create_table_cog.sql
cat ${CSV_COMMUNE}|       psql ${CONNEXION} -c "TRUNCATE TABLE cog_commune;       COPY cog_commune FROM stdin WITH csv header delimiter ',';"
cat ${CSV_DEPARTEMENT}|   psql ${CONNEXION} -c "TRUNCATE TABLE cog_departement;   COPY cog_departement FROM stdin WITH csv header delimiter ',';"
cat ${CSV_REGION}|        psql ${CONNEXION} -c "TRUNCATE TABLE cog_region;        COPY cog_region FROM stdin WITH csv header delimiter ',';"
