#!/bin/bash

CONNEXION=${1}
OUTPUT=${2}

# Append statistics to tables
psql ${CONNEXION} -f stats_daily.sql

# Export results into CSV files
psql ${CONNEXION} -c "\copy stats_brand_count TO '${OUTPUT}/stats_brand_count.csv' CSV HEADER"
psql ${CONNEXION} -c "\copy stats_poi_count TO '${OUTPUT}/stats_poi_count.csv' CSV HEADER"
psql ${CONNEXION} -c "\copy (SELECT * FROM stats_contributions) TO '${OUTPUT}/stats_contributions.csv' CSV HEADER"
