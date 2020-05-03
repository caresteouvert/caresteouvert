#!/bin/bash

CONNEXION=${1}

# Import brand rules
brand_rules="/ssd/data/download/brand_rules.csv"
if wget "https://github.com/PanierAvide/Covid_enseignes/raw/master/rules.csv" --quiet -O "${brand_rules}"; then
    psql ${CONNEXION} -c "DROP TABLE IF EXISTS brand_rules; CREATE TABLE brand_rules(country VARCHAR, category VARCHAR, brand_name VARCHAR, wikidata_id VARCHAR, opening_rule VARCHAR, opening_hours VARCHAR, osm_additional_tags JSON, description VARCHAR, source_url VARCHAR, opening_hours_url VARCHAR);"
    psql ${CONNEXION} -c "\copy brand_rules FROM '${brand_rules}' CSV DELIMITER ',' HEADER"
    psql ${CONNEXION} -c "CREATE INDEX brand_rules_country_idx ON brand_rules(country); CREATE INDEX brand_rules_wikidata_id_idx ON brand_rules(wikidata_id); CREATE INDEX brand_rules_brand_name_idx ON brand_rules(brand_name);"
else
    echo "Error when downloading brand rules"
fi

# Import legal rules
legal_rules="legal_rules.csv"
if wget "https://github.com/PanierAvide/Covid_enseignes/raw/master/legal_rules.csv" --quiet -O "${legal_rules}"; then
    psql ${CONNEXION} -c "DROP TABLE IF EXISTS legal_rules; CREATE TABLE legal_rules(country VARCHAR, country_subarea VARCHAR, category VARCHAR, osm_tags JSONB, start_date DATE, end_date DATE, legal_state VARCHAR, details VARCHAR, source_url VARCHAR);"
    psql ${CONNEXION} -c "\copy legal_rules FROM '${legal_rules}' CSV DELIMITER ',' HEADER"
    psql ${CONNEXION} -c "DELETE FROM legal_rules WHERE current_date < start_date OR (end_date IS NOT NULL AND current_date > end_date);"
    psql ${CONNEXION} -c "CREATE INDEX legal_rules_country_idx ON legal_rules(country); CREATE INDEX legal_rules_country_subarea_idx ON legal_rules(country_subarea); CREATE INDEX legal_rules_category_idx ON legal_rules(category);"
else
    echo "Error when downloading legal rules"
fi
