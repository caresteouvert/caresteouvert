#!/bin/bash

##############################################
#                                            #
# Download and import raw OpenStreetMap data #
#                                            #
##############################################

# Start date (for logs)
date

# Read configuration from JSON file
echo "======= Preparing ======="
for s in $(cat "config.json" | jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]" ); do
    export $s
done

start=`date +%s`

# Create work directory if not exists
if ! mkdir -p "${WORK_DIR}"; then
	echo "Can't create work directory"
	exit 1
fi


# PBF extract download
last_ts_file="${WORK_DIR}/last_ts.txt"
yesterday_ts=`date +%s -d '-20 hours'`
pbf_file="${WORK_DIR}/extract.osm.pbf"
pbf_light_file="${WORK_DIR}/extract_light.osm.pbf"

# We check how old is the latest extract to avoid over-downloading
echo "======= OSM data downloading ======="
if ! [ -f "${last_ts_file}" -a -f "${last_ts_file}" -a `if [ -f "${last_ts_file}" ]; then cat "${last_ts_file}"; else echo "0"; fi` -gt "${yesterday_ts}" ]; then
	# Start download
	if wget "${PBF_URL}" --quiet -O "${pbf_file}"; then
		# Success -> Write TS file
		date +%s > "${last_ts_file}"
		rm -f "${pbf_light_file}"
		echo "Success"
	else
		# Failure -> Stop script
		echo "Can't download file"
		rm -f "${pbf_file}" "${pbf_light_file}" "${last_ts_file}"
		exit 1
	fi
else
	echo "OSM extract recent enough, skip download"
fi

set -e

# Pre-filter PBF file to only import what's necessary
echo "======= Filtering input PBF data (osmium) ======="
used_tags=`cat ./import.style | grep -v '^#' | grep -v '^$' | sed -r 's/ +/#/g' | cut -d '#' -f 2`
used_tags=${used_tags/area/}

if ! [ -f "${pbf_light_file}" ]; then
	osmium tags-filter \
		${pbf_file} \
		${used_tags} \
		-f pbf,add_metadata=false \
		--no-progress \
		--overwrite -o ${pbf_light_file}
	echo "Success"
else
	echo "Reuse existing light PBF file"
fi

# Setup next database
psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "CREATE EXTENSION IF NOT EXISTS postgis; CREATE EXTENSION IF NOT EXISTS hstore; CREATE EXTENSION IF NOT EXISTS unaccent;"


# Start import
echo "======= Import OSM data into DB ======="
flat_nodes="${WORK_DIR}/flat.nodes"
flat_nodes_opts=""

if [ "${FLAT_NODES}" == "true" ]; then
	flat_nodes_opts="--flat-nodes ${flat_nodes}"
	echo "Flat nodes option enabled"
fi

osm2pgsql --create \
	-H "${PG_HOST}" -U "${PG_USER}" -P "${PG_PORT}" -d "${PG_DB}" \
	--cache "${CACHE_MEM}" \
	--create --slim --drop \
	${flat_nodes_opts} \
	--number-processes "${PARALLEL_JOBS}" \
	--style "import.style" \
	--hstore-all --multi-geometry --keep-coastlines --extra-attributes \
	"${pbf_light_file}"

# Import brand rules
brand_rules="${WORK_DIR}/brand_rules.csv"
if wget "https://github.com/PanierAvide/Covid_enseignes/raw/master/regles.csv" --quiet -O "${brand_rules}"; then
	psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "DROP TABLE IF EXISTS brand_rules; CREATE TABLE brand_rules(cat VARCHAR, nom VARCHAR, wikidata VARCHAR, rule VARCHAR, opening_hours VARCHAR, infos VARCHAR, url_source VARCHAR, url_hours VARCHAR);"
	psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "\copy brand_rules FROM '${brand_rules}' CSV DELIMITER ',' HEADER"
	psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "CREATE INDEX brand_rules_wikidata_idx ON brand_rules(wikidata); CREATE INDEX brand_rules_nom_idx ON brand_rules(nom);"
else
	echo "Error when downloading brand rules"
fi

# Create indexes for all tables
echo "======= Post-processing ======="
for col in ${used_tags}; do
	echo "Create index for $col"
	psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "CREATE INDEX planet_osm_point_${col//:/_}_idx ON planet_osm_point(\"$col\"); CREATE INDEX planet_osm_line_${col//:/_}_idx ON planet_osm_line(\"$col\"); CREATE INDEX planet_osm_polygon_${col//:/_}_idx ON planet_osm_polygon(\"$col\");"
done

# Add centroid for geometries
psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -f ./script.sql

end=`date +%s`

date
echo "Done in $((end-start)) seconds"
