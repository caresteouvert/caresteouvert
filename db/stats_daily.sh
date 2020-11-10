#!/bin/bash

set -e

OUTPUT=${1}
DATABASE_URL=${2:-${DATABASE_URL}}

# Append statistics to tables
psql ${DATABASE_URL} -f stats_daily.sql

# Export results into CSV files
psql ${DATABASE_URL} -c "\copy stats_brand_count TO '${OUTPUT}/stats_brand_count.csv' CSV HEADER"
psql ${DATABASE_URL} -c "\copy stats_poi_count TO '${OUTPUT}/stats_poi_count.csv' CSV HEADER"
psql ${DATABASE_URL} -c "\copy (SELECT * FROM stats_contributions) TO '${OUTPUT}/stats_contributions.csv' CSV HEADER"
