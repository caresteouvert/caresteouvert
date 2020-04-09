#!/bin/bash

CONNEXION_STRING=${1}
COUNTRY_CODE=${2}

psql ${CONNEXION_STRING} -c "UPDATE imposm_osm_point
                             SET country_iso2 = c.country_iso2,
                                 sub_country = c.sub_country
                             FROM countries_subcountries c
                             WHERE ST_Contains(c.wkb_geometry,way) AND
                             c.country_iso2 = '${COUNTRY_CODE}';
                             UPDATE imposm_osm_polygon
                             SET country_iso2 = c.country_iso2,
                                 sub_country = c.sub_country
                             FROM countries_subcountries c
                             WHERE ST_Contains(c.wkb_geometry,way) AND
                             c.country_iso2 = '${COUNTRY_CODE}';"
