#!/bin/bash

CONNEXION=${1}
OUTPUT=${2}

# Export de la liste des POIs par pays
countries=`psql ${CONNEXION} -c "COPY (SELECT DISTINCT country FROM poi_osm) TO STDOUT CSV"`
for country in $countries; do
	echo "Exporting country $country"
	rm -f "${OUTPUT}/poi_osm_$country.csv"
	rm -f "${OUTPUT}/poi_osm_$country.csv.gz"

	psql ${CONNEXION} -c "\copy (SELECT CASE WHEN fid LIKE 'n%' THEN concat('node/', substring(fid, 2)) WHEN fid LIKE 'w%' THEN concat('way/', substring(fid, 2)) WHEN fid LIKE 'r%' THEN concat('relation/', substring(fid, 2)) END AS osm_id, name, normalized_cat AS category, cat AS subcategory, brand, brand_wikidata AS wikidata, brand_hours AS url_hours, brand_infos AS infos, status, opening_hours, ST_X(ST_Transform(geom, 4326))::real AS lon, ST_Y(ST_Transform(geom, 4326))::real AS lat FROM poi_osm WHERE country='$country') TO '${OUTPUT}/poi_osm_$country.csv' CSV HEADER"

	gzip "${OUTPUT}/poi_osm_$country.csv"
done

# Export the file with compatibility with the previous status
psql ${CONNEXION} -c "\copy (SELECT CASE WHEN fid LIKE 'n%' THEN concat('node/', substring(fid, 2)) WHEN fid LIKE 'w%' THEN concat('way/', substring(fid, 2)) WHEN fid LIKE 'r%' THEN concat('relation/', substring(fid, 2)) END AS osm_id, name, cat, brand, brand_wikidata AS wikidata, brand_hours AS url_hours, brand_infos AS infos, CASE WHEN status IN ('open', 'ouvert') THEN 'ouvert' WHEN status IN ('ouvert_adapté', 'open_adapted') THEN 'ouvert_adapté' WHEN status IN ('partial', 'partiel') THEN 'partiel' WHEN status IN ('fermé', 'closed') THEN 'fermé' ELSE 'inconnu' END AS status, opening_hours, ST_X(ST_Transform(geom, 4326))::real AS lon, ST_Y(ST_Transform(geom, 4326))::real AS lat FROM poi_osm) TO '${OUTPUT}/poi_osm.csv' CSV HEADER"

# Export the complete file with country
psql ${CONNEXION} -c "\copy (SELECT CASE WHEN fid LIKE 'n%' THEN concat('node/', substring(fid, 2)) WHEN fid LIKE 'w%' THEN concat('way/', substring(fid, 2)) WHEN fid LIKE 'r%' THEN concat('relation/', substring(fid, 2)) END AS osm_id, name, cat, brand, brand_wikidata AS wikidata, brand_hours AS url_hours, brand_infos AS infos, status, opening_hours, country, ST_X(ST_Transform(geom, 4326))::real AS lon, ST_Y(ST_Transform(geom, 4326))::real AS lat FROM poi_osm) TO '${OUTPUT}/poi_osm_new.csv' CSV HEADER"
