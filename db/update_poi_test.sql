-- Start a transaction.
BEGIN;
SELECT plan(12);

SELECT tables_are(
    'public',
    ARRAY[ 'poi_osm', 'brand_rules', 'legal_rules',
           'imposm_osm_point', 'imposm_osm_polygon',
           'poi_cro', 'spatial_ref_sys', 'poi_custom',
           'countries_subcountries' ]
);

SELECT has_view('poi_osm_light');

SELECT is((SELECT count(*)::int FROM poi_osm), 4);

SELECT is((SELECT hydroalcoholic_gel FROM poi_osm WHERE fid='n2'), 'yes');
SELECT is((SELECT mask FROM poi_osm WHERE fid='n2'), NULL);
SELECT is((SELECT tags FROM poi_osm WHERE fid='n2'), ' {"shop": "supermarket", "cro:date": "1588636800", "vending:hydroalcoholic_gel": "yes"}');

SELECT is((SELECT hydroalcoholic_gel FROM poi_osm WHERE fid='n3'), NULL);
SELECT is((SELECT mask FROM poi_osm WHERE fid='n3'), 'yes');
SELECT is((SELECT tags FROM poi_osm WHERE fid='n3'), ' {"shop": "supermarket", "cro:date": "1588636800", "vending:mask": "yes"}');

SELECT is((SELECT hydroalcoholic_gel FROM poi_osm WHERE fid='n4'), 'yes');
SELECT is((SELECT mask FROM poi_osm WHERE fid='n4'), 'no');
SELECT is((SELECT tags FROM poi_osm WHERE fid='n4'), ' {"shop": "supermarket", "cro:date": "1588636800", "vending:mask": "no", "vending:hydroalcoholic_gel": "yes"}');

SELECT * FROM finish();
ROLLBACK;
