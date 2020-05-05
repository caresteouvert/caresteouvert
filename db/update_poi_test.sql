-- Start a transaction.
BEGIN;
SELECT plan(2);

SELECT tables_are(
    'public',
    ARRAY[ 'poi_osm', 'brand_rules', 'legal_rules',
           'imposm_osm_point', 'imposm_osm_polygon',
           'poi_cro', 'spatial_ref_sys', 'poi_custom',
           'countries_subcountries' ]
);

SELECT is((SELECT count(*)::int FROM poi_osm), 1);

SELECT * FROM finish();
ROLLBACK;
