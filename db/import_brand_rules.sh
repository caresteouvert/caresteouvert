#!/bin/bash

# Import brand rules
brand_rules="${WORK_DIR}/brand_rules.csv"
if wget "https://github.com/PanierAvide/Covid_enseignes/raw/master/regles.csv" --quiet -O "${brand_rules}"; then
    psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "DROP TABLE IF EXISTS brand_rules; CREATE TABLE brand_rules(cat VARCHAR, nom VARCHAR, wikidata VARCHAR, rule VARCHAR, opening_hours VARCHAR, infos VARCHAR, url_source VARCHAR, url_hours VARCHAR);"
    psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "\copy brand_rules FROM '${brand_rules}' CSV DELIMITER ',' HEADER"
    psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -c "CREATE INDEX brand_rules_wikidata_idx ON brand_rules(wikidata); CREATE INDEX brand_rules_nom_idx ON brand_rules(nom);"
else
    echo "Error when downloading brand rules"
fi
