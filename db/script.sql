--
-- Requêtes après mise à jour des données
--

-- Colonne de géométrie centroïde
ALTER TABLE planet_osm_line ADD COLUMN centroid GEOMETRY(Point, 3857);
ALTER TABLE planet_osm_polygon ADD COLUMN centroid GEOMETRY(Point, 3857);
UPDATE planet_osm_line SET centroid = ST_Centroid(way);
UPDATE planet_osm_polygon SET centroid = ST_Centroid(way);
CREATE INDEX planet_osm_line_centroid_idx ON planet_osm_line USING GIST(centroid);
CREATE INDEX planet_osm_polygon_centroid_idx ON planet_osm_polygon USING GIST(centroid);

-- Nouvelle table de référence
DROP TABLE IF EXISTS poi_osm_next;
CREATE TABLE poi_osm_next(
	osmid VARCHAR PRIMARY KEY,
	geom GEOMETRY(Point, 3857),
	name VARCHAR,
	cat VARCHAR,
	brand VARCHAR,
	brand_wikidata VARCHAR,
	status VARCHAR DEFAULT 'inconnu',
	opening_hours VARCHAR,
	tags HSTORE
);

-- Ajout selon les tags pertinents
INSERT INTO poi_osm_next(osmid, geom, name, cat, brand, brand_wikidata, tags)
SELECT
	concat('node/', osm_id),
	way,
	tags->'name',
	COALESCE(office, shop, amenity, 'unknown'),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	tags
FROM planet_osm_point
WHERE
	amenity IN ('pharmacy', 'car_rental', 'bank', 'fuel')
	OR shop IN ('supermarket', 'convenience', 'frozen_food', 'greengrocer', 'butcher', 'seafood', 'cheese', 'bakery', 'bicycle', 'mobile_phone', 'diy', 'craft', 'optician', 'beverages', 'laundry', 'tobacco', 'e-cigarette', 'funeral_directors')
	OR office IN ('insurance', 'employment_agency');

INSERT INTO poi_osm_next(osmid, geom, name, cat, brand, brand_wikidata, tags)
SELECT
	CASE WHEN osm_id < 0 THEN concat('relation/', osm_id) ELSE concat('way/', osm_id) END,
	centroid,
	tags->'name',
	COALESCE(office, shop, amenity, 'unknown'),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	tags
FROM planet_osm_polygon
WHERE
	amenity IN ('pharmacy', 'car_rental', 'bank', 'fuel')
	OR shop IN ('supermarket', 'convenience', 'frozen_food', 'greengrocer', 'butcher', 'seafood', 'cheese', 'bakery', 'bicycle', 'mobile_phone', 'diy', 'craft', 'optician', 'beverages', 'laundry', 'tobacco', 'e-cigarette', 'funeral_directors')
	OR office IN ('insurance', 'employment_agency');

-- Ajout des informations par marques
UPDATE poi_osm_next
SET status = b.rule, opening_hours = b.opening_hours
FROM brand_rules b
WHERE brand_wikidata = b.wikidata;

UPDATE poi_osm_next
SET status = b.rule, opening_hours = b.opening_hours
FROM brand_rules b
WHERE status = 'inconnu' AND lower(unaccent(brand)) = lower(unaccent(b.nom));

-- Création des index
REINDEX TABLE poi_osm_next;
CREATE INDEX poi_osm_next_geom_idx ON poi_osm_next USING GIST(geom);
CREATE INDEX poi_osm_next_status_idx ON poi_osm_next(status);

DROP TABLE IF EXISTS poi_osm;
ALTER TABLE poi_osm_next RENAME TO poi_osm;
ALTER INDEX poi_osm_next_pkey RENAME TO poi_osm_pkey;
ALTER INDEX poi_osm_next_geom_idx RENAME TO poi_osm_geom_idx;
ALTER INDEX poi_osm_next_status_idx RENAME TO poi_osm_status_idx;
