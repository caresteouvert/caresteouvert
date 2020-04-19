#!/bin/bash

CONNEXION=${1}

# Import brand rules
brand_rules="/ssd/data/download/brand_rules.csv"
if wget "https://github.com/PanierAvide/Covid_enseignes/raw/master/rules.csv" --quiet -O "${brand_rules}"; then
    psql ${CONNEXION} -c "DROP TABLE IF EXISTS brand_rules; CREATE TABLE brand_rules(country VARCHAR, category VARCHAR, brand_name VARCHAR, wikidata_id VARCHAR, opening_rule VARCHAR, opening_hours VARCHAR, osm_additional_tags JSON, description VARCHAR, source_url VARCHAR, opening_hours_url VARCHAR);"
    psql ${CONNEXION} -c "\copy brand_rules FROM '${brand_rules}' CSV DELIMITER ',' HEADER"
    psql ${CONNEXION} -c "CREATE INDEX brand_rules_wikidata_id_idx ON brand_rules(wikidata_id); CREATE INDEX brand_rules_brand_name_idx ON brand_rules(brand_name);"
else
    echo "Error when downloading brand rules"
fi
