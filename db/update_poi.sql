--
-- Requêtes après mise à jour des données
--

-- Colonne de géométrie centroïde
-- ALTER TABLE imposm_osm_line ADD COLUMN centroid GEOMETRY(Point, 3857);
-- ALTER TABLE imposm_osm_polygon ADD COLUMN centroid GEOMETRY(Point, 3857);
-- UPDATE imposm_osm_line SET centroid = ST_Centroid(way);
-- UPDATE imposm_osm_polygon SET centroid = ST_Centroid(way);
-- CREATE INDEX imposm_osm_line_centroid_idx ON imposm_osm_line USING GIST(centroid);
-- CREATE INDEX imposm_osm_polygon_centroid_idx ON imposm_osm_polygon USING GIST(centroid);

-- Table à venir
CREATE TABLE IF NOT EXISTS poi_osm_next(
	fid VARCHAR PRIMARY KEY,
	geom GEOMETRY(Point, 3857),
	name VARCHAR,
	cat VARCHAR,
	brand VARCHAR,
	brand_wikidata VARCHAR,
	brand_hours VARCHAR,
	brand_infos VARCHAR,
	status VARCHAR DEFAULT 'inconnu',
	opening_hours VARCHAR,
	tags JSONB
);

TRUNCATE TABLE poi_osm_next;

-- Ajout selon les tags pertinents
INSERT INTO poi_osm_next(fid, geom, name, cat, brand, brand_wikidata, brand_infos, status, opening_hours, tags)
SELECT
	concat('n', osm_id),
	way,
	name,
	COALESCE(NULLIF(office,''), NULLIF(craft,''), NULLIF(shop,''), NULLIF(amenity,''), 'unknown'),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	COALESCE(tags->'description:covid19', tags->'note:covid19'),
	CASE
		WHEN "opening_hours:covid19" = 'off' THEN 'fermé'
		WHEN "opening_hours:covid19" = 'same' THEN 'ouvert'
		WHEN "opening_hours:covid19" != '' AND "opening_hours:covid19" = tags->'opening_hours' THEN 'ouvert'
		WHEN "opening_hours:covid19" != '' THEN 'ouvert_adapté'
		WHEN tags->'self_service' = 'yes' THEN 'ouvert'
		ELSE 'inconnu'
	END,
	CASE WHEN "opening_hours:covid19" NOT IN ('off', 'same', '') THEN "opening_hours:covid19" ELSE NULL END,
	hstore_to_jsonb(tags)
FROM imposm_osm_point
WHERE
	amenity IN ('pharmacy', 'car_rental', 'bank', 'fuel', 'police', 'marketplace', 'post_office')
	OR shop IN ('supermarket', 'convenience', 'frozen_food', 'greengrocer', 'butcher', 'seafood', 'cheese', 'bakery', 'bicycle', 'mobile_phone', 'doityourself', 'craft', 'optician', 'beverages', 'wine', 'alcohol', 'electronics', 'hardware', 'stationery', 'medical_supply', 'laundry', 'dry_cleaning', 'tobacco', 'e-cigarette', 'funeral_directors', 'tobacco', 'kiosk', 'pet', 'car_repair', 'car_parts', 'agrarian', 'newsagent', 'farm', 'deli')
	OR office IN ('insurance', 'employment_agency')
	OR craft IN ('optician', 'electronics_repair')
	OR tobacco = 'yes'
	OR "opening_hours:covid19" != ''
UNION ALL
SELECT
	CASE WHEN osm_id < 0 THEN concat('r', osm_id) ELSE concat('w', osm_id) END,
	ST_Centroid(way),
	name,
	COALESCE(NULLIF(office,''), NULLIF(craft,''), NULLIF(shop,''), NULLIF(amenity,''), 'unknown'),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	COALESCE(tags->'description:covid19', tags->'note:covid19'),
	CASE
		WHEN "opening_hours:covid19" = 'off' THEN 'fermé'
		WHEN "opening_hours:covid19" = 'same' THEN 'ouvert'
		WHEN "opening_hours:covid19" != '' AND "opening_hours:covid19" = tags->'opening_hours' THEN 'ouvert'
		WHEN "opening_hours:covid19" != '' THEN 'ouvert_adapté'
		WHEN tags->'self_service' = 'yes' THEN 'ouvert'
		ELSE 'inconnu'
	END,
	CASE WHEN "opening_hours:covid19" NOT IN ('off', 'same', '') THEN "opening_hours:covid19" ELSE NULL END,
	hstore_to_jsonb(tags)
FROM imposm_osm_polygon
WHERE
	amenity IN ('pharmacy', 'car_rental', 'bank', 'fuel', 'police', 'marketplace', 'post_office')
	OR shop IN ('supermarket', 'convenience', 'frozen_food', 'greengrocer', 'butcher', 'seafood', 'cheese', 'bakery', 'bicycle', 'mobile_phone', 'doityourself', 'craft', 'optician', 'beverages', 'wine', 'alcohol', 'electronics', 'hardware', 'stationery', 'medical_supply', 'laundry', 'dry_cleaning', 'tobacco', 'e-cigarette', 'funeral_directors', 'tobacco', 'kiosk', 'pet', 'car_repair', 'car_parts', 'agrarian', 'newsagent', 'farm', 'deli')
	OR office IN ('insurance', 'employment_agency')
	OR craft IN ('optician', 'electronics_repair')
	OR tobacco = 'yes'
	OR "opening_hours:covid19" != '';

-- Ajout des informations par marques
UPDATE poi_osm_next
SET
	status = b.rule,
	opening_hours = COALESCE(poi_osm_next.opening_hours, b.opening_hours),
	brand_hours = COALESCE(poi_osm_next.brand_hours, b.url_hours),
	brand_infos = COALESCE(poi_osm_next.brand_infos, b.infos)
FROM brand_rules b
WHERE status = 'inconnu' AND b.rule IS NOT NULL AND brand_wikidata = b.wikidata;

UPDATE poi_osm_next
SET
	status = b.rule,
	opening_hours = COALESCE(poi_osm_next.opening_hours, b.opening_hours),
	brand_hours = COALESCE(poi_osm_next.brand_hours, b.url_hours),
	brand_infos = COALESCE(poi_osm_next.brand_infos, b.infos)
FROM brand_rules b
WHERE status = 'inconnu' AND b.rule IS NOT NULL AND lower(trim(unaccent(brand))) = lower(trim(unaccent(b.nom)));

UPDATE poi_osm_next
SET
	status = b.rule,
	opening_hours = COALESCE(poi_osm_next.opening_hours, b.opening_hours),
	brand_hours = COALESCE(poi_osm_next.brand_hours, b.url_hours),
	brand_infos = COALESCE(poi_osm_next.brand_infos, b.infos)
FROM brand_rules b
WHERE status = 'inconnu' AND b.rule IS NOT NULL AND lower(trim(unaccent(name))) = lower(trim(unaccent(b.nom)));

UPDATE poi_osm_next
SET status = 'ouvert', opening_hours = '24/7'
WHERE status IN ('inconnu', 'ouvert_adapté') AND cat = 'fuel' AND tags->>'opening_hours' = '24/7';

UPDATE poi_osm_next
SET opening_hours = tags->>'opening_hours'
WHERE status = 'ouvert' AND opening_hours IS NULL;


-- Création des index
REINDEX TABLE poi_osm_next;
CREATE INDEX poi_osm_next_geom_idx ON poi_osm_next USING GIST(geom);
CREATE INDEX poi_osm_next_status_idx ON poi_osm_next(status);

DROP TABLE IF EXISTS poi_osm CASCADE;
ALTER TABLE poi_osm_next RENAME TO poi_osm;
ALTER INDEX poi_osm_next_pkey RENAME TO poi_osm_pkey;
ALTER INDEX poi_osm_next_geom_idx RENAME TO poi_osm_geom_idx;
ALTER INDEX poi_osm_next_status_idx RENAME TO poi_osm_status_idx;

CREATE OR REPLACE VIEW poi_osm_light AS
SELECT fid, geom, name, cat, status
FROM poi_osm;

-- Requêtes d'analyse
-- SELECT SUM((status != 'inconnu')::int)::float / COUNT(*) * 100 AS pct_info_connue FROM poi_osm;
-- SELECT status, COUNT(*) FROM poi_osm GROUP BY status ORDER BY COUNT(*) DESC;
-- SELECT brand, COUNT(*) FROM poi_osm WHERE status = 'inconnu' GROUP BY brand HAVING COUNT(*) > 20 ORDER BY COUNT(*) DESC;
-- SELECT cat, COUNT(*) FROM poi_osm WHERE status = 'inconnu' GROUP BY cat HAVING COUNT(*) > 20 ORDER BY COUNT(*) DESC;
