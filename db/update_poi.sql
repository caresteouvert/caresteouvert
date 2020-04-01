--
-- Post data update request : update POI table
--

-- Read opening state according to tags
CREATE OR REPLACE FUNCTION opening_state(tags HSTORE) RETURNS VARCHAR AS $$
DECLARE
	status VARCHAR := 'inconnu';
	oh_c19 VARCHAR;
	oh VARCHAR;
BEGIN
	oh_c19 := tags->'opening_hours:covid19';
	oh := tags->'opening_hours';

	-- opening_hours:covid19 defined
	IF oh_c19 != '' THEN
		-- opening_hours:covid19 = open
		IF oh_c19 IN ('open', 'same', 'yes') THEN
			-- opening_hours closed + opening_hours:covid19 same
			IF oh ILIKE 'off%' AND oh_c19 = 'same' THEN
				status := 'fermé';

			-- opening_hours open
			ELSE
				status := 'ouvert';
			END IF;

		-- opening_hours:covid19 = closed
		ELSIF oh_c19 ILIKE 'off%' THEN
			status := 'fermé';

		-- opening_hours:covid19 = opening_hours
		ELSIF oh_c19 = oh THEN
			status := 'ouvert';

		-- opening_hours:covid19 = opening_hours syntax
		ELSE
			status := 'ouvert_adapté';
		END IF;

	-- Self-service
	ELSIF tags->'self_service' = 'yes' THEN
		status := 'ouvert';
	END IF;

	RETURN status;
END;
$$ LANGUAGE plpgsql;


-- Function to get normalized category label
CREATE OR REPLACE FUNCTION normcat(amenity VARCHAR, shop VARCHAR, craft VARCHAR, office VARCHAR, tobacco VARCHAR) RETURNS VARCHAR AS $$
BEGIN
	IF shop IN ('bakery', 'pastry') THEN
		RETURN 'bakery';
	ELSIF amenity = 'bank' OR shop = 'money_lender' OR office IN ('insurance', 'financial') THEN
		RETURN 'bank';
	ELSIF amenity = 'fuel' OR shop ILIKE '%gas%' THEN
		RETURN 'fuel';
	ELSIF shop IN ('supermarket', 'convenience', 'frozen_food', 'greengrocer', 'butcher', 'seafood', 'cheese', 'bakery', 'beverages', 'wine', 'alcohol', 'farm', 'deli') OR amenity = 'marketplace' THEN
		RETURN 'food';
	ELSIF shop = 'funeral_directors' THEN
		RETURN 'funeral_directors';
	ELSIF amenity IN ('pharmacy', 'police', 'post_office') THEN
		RETURN amenity;
	ELSIF shop IN ('tobacco', 'e-cigarette') OR tobacco IN ('yes', 'only') THEN
		RETURN 'tobacco';
	ELSIF amenity = 'car_rental' OR shop IN ('bicycle', 'mobile_phone', 'doityourself', 'craft', 'optician', 'electronics', 'hardware', 'stationery', 'medical_supply', 'laundry', 'dry_cleaning', 'kiosk', 'pet', 'car_repair', 'car_parts', 'agrarian', 'newsagent') OR office = 'employment_agency' OR craft IN ('optician', 'electronics_repair') THEN
		RETURN 'shop';
	ELSE
		RETURN 'other';
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

-- Indexes on filter for imposm tables
CREATE INDEX IF NOT EXISTS idx_imposm_osm_point_search ON imposm_osm_point(("opening_hours:covid19" != '' OR normcat(amenity, shop, craft, office, tobacco) != 'other'));
CREATE INDEX IF NOT EXISTS idx_imposm_osm_polygon_search ON imposm_osm_polygon(("opening_hours:covid19" != '' OR normcat(amenity, shop, craft, office, tobacco) != 'other'));


-- Next poi_osm table
CREATE TABLE IF NOT EXISTS poi_osm_next(
	fid VARCHAR PRIMARY KEY,
	geom GEOMETRY(Point, 3857),
	name VARCHAR,
	cat VARCHAR,
	normalized_cat VARCHAR DEFAULT 'other',
	brand VARCHAR,
	brand_wikidata VARCHAR,
	brand_hours VARCHAR,
	brand_infos VARCHAR,
	status VARCHAR DEFAULT 'inconnu',
	opening_hours VARCHAR,
	delivery VARCHAR DEFAULT 'unknown',
	tags JSONB
);

TRUNCATE TABLE poi_osm_next;


-- Only add POI with appropriate tagging
INSERT INTO poi_osm_next(fid, geom, name, cat, normalized_cat, brand, brand_wikidata, brand_infos, status, opening_hours, delivery, tags)
SELECT
	concat('n', osm_id),
	way,
	name,
	COALESCE(NULLIF(amenity,''), NULLIF(shop,''), NULLIF(craft,''), NULLIF(office,''), 'unknown'),
	normcat(amenity, shop, craft, office, tobacco),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	COALESCE(tags->'description:covid19', tags->'note:covid19'),
	opening_state(tags),
	CASE WHEN "opening_hours:covid19" NOT IN ('off', 'same', '') AND NOT "opening_hours:covid19" ILIKE 'off%' THEN "opening_hours:covid19" ELSE NULL END,
	CASE
		WHEN tags->'delivery:covid19' IN ('yes', 'no', 'only') THEN tags->'delivery:covid19'
		WHEN tags->'delivery' IN ('yes', 'no', 'only') AND opening_state(tags) = 'ouvert' THEN tags->'delivery'
		ELSE 'unknown'
	END,
	hstore_to_jsonb(tags)
FROM imposm_osm_point
WHERE
	"opening_hours:covid19" != ''
	OR normcat(amenity, shop, craft, office, tobacco) != 'other'
UNION ALL
SELECT
	CASE WHEN osm_id < 0 THEN concat('r', -osm_id) ELSE concat('w', osm_id) END,
	ST_Centroid(way),
	name,
	COALESCE(NULLIF(amenity,''), NULLIF(shop,''), NULLIF(craft,''), NULLIF(office,''), 'unknown'),
	normcat(amenity, shop, craft, office, tobacco),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	COALESCE(tags->'description:covid19', tags->'note:covid19'),
	opening_state(tags),
	CASE WHEN "opening_hours:covid19" NOT IN ('off', 'same', '') AND NOT "opening_hours:covid19" ILIKE 'off%' THEN "opening_hours:covid19" ELSE NULL END,
	CASE
		WHEN tags->'delivery:covid19' IN ('yes', 'no', 'only') THEN tags->'delivery:covid19'
		WHEN tags->'delivery' IN ('yes', 'no', 'only') AND opening_state(tags) = 'ouvert' THEN tags->'delivery'
		ELSE 'unknown'
	END,
	hstore_to_jsonb(tags)
FROM imposm_osm_polygon
WHERE
	"opening_hours:covid19" != ''
	OR normcat(amenity, shop, craft, office, tobacco) != 'other';


-- Join brand informations
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


-- Index creation and table switch
REINDEX TABLE poi_osm_next;
CREATE INDEX poi_osm_next_geom_idx ON poi_osm_next USING GIST(geom);
CREATE INDEX poi_osm_next_status_idx ON poi_osm_next(status);

DROP TABLE IF EXISTS poi_osm CASCADE;
ALTER TABLE poi_osm_next RENAME TO poi_osm;
ALTER INDEX poi_osm_next_pkey RENAME TO poi_osm_pkey;
ALTER INDEX poi_osm_next_geom_idx RENAME TO poi_osm_geom_idx;
ALTER INDEX poi_osm_next_status_idx RENAME TO poi_osm_status_idx;

CREATE OR REPLACE VIEW poi_osm_light AS
SELECT fid, geom, name, cat, normalized_cat, status, delivery
FROM poi_osm;


-- Analysis requests
-- SELECT SUM((status != 'inconnu')::int)::float / COUNT(*) * 100 AS pct_info_connue FROM poi_osm;
-- SELECT SUM((status NOT IN ('inconnu', 'partiel'))::int)::float / COUNT(*) * 100 AS pct_info_connue FROM poi_osm;

-- SELECT status, COUNT(*) FROM poi_osm GROUP BY status ORDER BY COUNT(*) DESC;
-- SELECT normalized_cat, COUNT(*) FROM poi_osm GROUP BY normalized_cat ORDER BY COUNT(*) DESC;

-- SELECT brand, COUNT(*) FROM poi_osm WHERE status = 'inconnu' GROUP BY brand HAVING COUNT(*) > 20 ORDER BY COUNT(*) DESC;
-- SELECT cat, COUNT(*) FROM poi_osm WHERE status = 'inconnu' GROUP BY cat HAVING COUNT(*) > 20 ORDER BY COUNT(*) DESC;
