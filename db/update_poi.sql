--
-- Post data update request : update POI table
--

-- Read opening state according to tags
CREATE OR REPLACE FUNCTION opening_state(tags HSTORE) RETURNS VARCHAR AS $$
DECLARE
	status VARCHAR := 'unknown';
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
				status := 'closed';

			-- opening_hours open
			ELSE
				status := 'open';
			END IF;

		-- opening_hours:covid19 = closed
		ELSIF oh_c19 ILIKE 'off%' THEN
			status := 'closed';

		-- opening_hours:covid19 = opening_hours
		ELSIF oh_c19 = oh THEN
			status := 'open';

		-- opening_hours:covid19 = opening_hours syntax
		ELSE
			status := 'open_adapted';
		END IF;

	-- Self-service / vending machines
	ELSIF tags->'self_service' = 'yes' OR tags->'amenity' = 'vending_machine' THEN
		status := 'open';
	END IF;

	RETURN status;
END;
$$ LANGUAGE plpgsql;

-- Clean-up sub_country values
CREATE OR REPLACE FUNCTION clean_sub_country(val VARCHAR) RETURNS VARCHAR AS $$
BEGIN
	RETURN NULLIF(val, '<nil>');
END;
$$ LANGUAGE plpgsql;


-- Deprecated function to get normalized category label
DROP INDEX IF EXISTS idx_imposm_osm_point_search;
DROP INDEX IF EXISTS idx_imposm_osm_polygon_search;
DROP FUNCTION IF EXISTS normcat(amenity VARCHAR, shop VARCHAR, craft VARCHAR, office VARCHAR, tobacco VARCHAR);
DROP INDEX IF EXISTS idx_imposm_osm_point_search_v2;
DROP INDEX IF EXISTS idx_imposm_osm_polygon_search_v2;


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
	status VARCHAR DEFAULT 'unknown',
	opening_hours VARCHAR,
	delivery VARCHAR DEFAULT 'unknown',
	country VARCHAR,
	sub_country VARCHAR,
	source_status VARCHAR DEFAULT 'osm',
	tags JSONB
);

TRUNCATE TABLE poi_osm_next;


-- Only add POI with appropriate tagging
INSERT INTO poi_osm_next(fid, geom, name, cat, normalized_cat, brand, brand_wikidata, brand_infos, status, opening_hours, delivery, country, sub_country, tags)
SELECT
	concat('n', osm_id),
	way,
	name,
	get_subcategory(tags, COALESCE(clean_sub_country(sub_country), country_iso2)),
	get_category(tags, COALESCE(clean_sub_country(sub_country), country_iso2)),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	COALESCE(tags->'description:covid19', tags->'note:covid19'),
	opening_state(tags),
	CASE
		WHEN "opening_hours:covid19" NOT IN ('off', 'same', '') AND NOT "opening_hours:covid19" ILIKE 'off%' THEN "opening_hours:covid19"
		WHEN amenity = 'vending_machine' AND tags->'opening_hours' IN ('', '24/7') THEN '24/7'
		ELSE NULL
	END,
	CASE
		WHEN tags->'delivery:covid19' IN ('yes', 'no', 'only') THEN tags->'delivery:covid19'
		WHEN tags->'delivery' IN ('yes', 'no', 'only') AND opening_state(tags) = 'ouvert' THEN tags->'delivery'
		ELSE 'unknown'
	END,
	country_iso2,
	clean_sub_country(sub_country),
	hstore_to_jsonb(tags)
FROM imposm_osm_point
WHERE
	-- The line below is automatically edited using categories.json
	-- Do not edit directly, run "yarn run categories" instead
	country_iso2 IN ('DE', 'FR', 'ES', 'AD', 'CH', 'AT') AND ("opening_hours:covid19" != '' OR "amenity" IN ('bank', 'cafe', 'car_rental', 'childcare', 'fast_food', 'fuel', 'ice_cream', 'kindergarten', 'marketplace', 'pharmacy', 'police', 'post_office', 'public_bookcase', 'restaurant', 'vending_machine') OR "office" IN ('employment_agency', 'financial', 'insurance') OR "shop" IN ('agrarian', 'alcohol', 'bakery', 'beverages', 'bicycle', 'books', 'butcher', 'cannery', 'car_parts', 'car_repair', 'cheese', 'chemist', 'chocolate', 'coffee', 'computer', 'confectionery', 'convenience', 'dairy', 'deli', 'doityourself', 'dry_cleaning', 'e-cigarette', 'electronics', 'fabric', 'farm', 'frozen_food', 'funeral_directors', 'garden_centre', 'gas', 'glaziery', 'greengrocer', 'hardware', 'health_food', 'hearing_aids', 'honey', 'ice_cream', 'kiosk', 'laundry', 'medical_supply', 'mobile_phone', 'money_lender', 'newsagent', 'newsagent;tobacco', 'optician', 'paint', 'pasta', 'pastry', 'pet', 'seafood', 'spices', 'stationery', 'supermarket', 'tea', 'tobacco', 'tobacco;newsagent', 'wine') OR "healthcare" IN ('centre') OR "craft" IN ('electronics_repair', 'optician') OR "tobacco" IN ('only', 'yes')) --CATEGORIES
UNION ALL
SELECT
	CASE WHEN osm_id < 0 THEN concat('r', -osm_id) ELSE concat('w', osm_id) END,
	ST_Centroid(way),
	name,
	get_subcategory(tags, COALESCE(clean_sub_country(sub_country), country_iso2)),
	get_category(tags, COALESCE(clean_sub_country(sub_country), country_iso2)),
	COALESCE(tags->'brand', tags->'operator'),
	COALESCE(tags->'brand:wikidata', tags->'operator:wikidata', tags->'wikidata'),
	COALESCE(tags->'description:covid19', tags->'note:covid19'),
	opening_state(tags),
	CASE
		WHEN "opening_hours:covid19" NOT IN ('off', 'same', '') AND NOT "opening_hours:covid19" ILIKE 'off%' THEN "opening_hours:covid19"
		WHEN amenity = 'vending_machine' AND tags->'opening_hours' IN ('', '24/7') THEN '24/7'
		ELSE NULL
	END,
	CASE
		WHEN tags->'delivery:covid19' IN ('yes', 'no', 'only') THEN tags->'delivery:covid19'
		WHEN tags->'delivery' IN ('yes', 'no', 'only') AND opening_state(tags) = 'ouvert' THEN tags->'delivery'
		ELSE 'unknown'
	END,
	country_iso2,
	clean_sub_country(sub_country),
	hstore_to_jsonb(tags)
FROM imposm_osm_polygon
WHERE
	-- The line below is automatically edited using categories.json
	-- Do not edit directly, run "yarn run categories" instead
	country_iso2 IN ('DE', 'FR', 'ES', 'AD', 'CH', 'AT') AND ("opening_hours:covid19" != '' OR "amenity" IN ('bank', 'cafe', 'car_rental', 'childcare', 'fast_food', 'fuel', 'ice_cream', 'kindergarten', 'marketplace', 'pharmacy', 'police', 'post_office', 'public_bookcase', 'restaurant', 'vending_machine') OR "office" IN ('employment_agency', 'financial', 'insurance') OR "shop" IN ('agrarian', 'alcohol', 'bakery', 'beverages', 'bicycle', 'books', 'butcher', 'cannery', 'car_parts', 'car_repair', 'cheese', 'chemist', 'chocolate', 'coffee', 'computer', 'confectionery', 'convenience', 'dairy', 'deli', 'doityourself', 'dry_cleaning', 'e-cigarette', 'electronics', 'fabric', 'farm', 'frozen_food', 'funeral_directors', 'garden_centre', 'gas', 'glaziery', 'greengrocer', 'hardware', 'health_food', 'hearing_aids', 'honey', 'ice_cream', 'kiosk', 'laundry', 'medical_supply', 'mobile_phone', 'money_lender', 'newsagent', 'newsagent;tobacco', 'optician', 'paint', 'pasta', 'pastry', 'pet', 'seafood', 'spices', 'stationery', 'supermarket', 'tea', 'tobacco', 'tobacco;newsagent', 'wine') OR "healthcare" IN ('centre') OR "craft" IN ('electronics_repair', 'optician') OR "tobacco" IN ('only', 'yes')) --CATEGORIES
;

-- Remove edge cases needing advanced filtering like vending machines
DELETE FROM poi_osm_next
WHERE normalized_cat IS NULL;

-- Join brand informations
UPDATE poi_osm_next
SET
	status = b.opening_rule,
	opening_hours = COALESCE(poi_osm_next.opening_hours, b.opening_hours),
	brand_hours = COALESCE(poi_osm_next.brand_hours, b.opening_hours_url),
	brand_infos = COALESCE(poi_osm_next.brand_infos, b.description),
	tags = CASE WHEN b.osm_additional_tags IS NOT NULL THEN b.osm_additional_tags::jsonb || poi_osm_next.tags ELSE poi_osm_next.tags END,
	source_status = 'brand'
FROM brand_rules b
WHERE
	poi_osm_next.status = 'unknown'
	AND poi_osm_next.country = b.country
	AND b.opening_rule IS NOT NULL
	AND poi_osm_next.brand_wikidata = b.wikidata_id;

UPDATE poi_osm_next
SET
	status = b.opening_rule,
	opening_hours = COALESCE(poi_osm_next.opening_hours, b.opening_hours),
	brand_hours = COALESCE(poi_osm_next.brand_hours, b.opening_hours_url),
	brand_infos = COALESCE(poi_osm_next.brand_infos, b.description),
	tags = CASE WHEN b.osm_additional_tags IS NOT NULL THEN b.osm_additional_tags::jsonb || poi_osm_next.tags ELSE poi_osm_next.tags END,
	source_status = 'brand'
FROM brand_rules b
WHERE
	poi_osm_next.status = 'unknown'
	AND poi_osm_next.country = b.country
	AND b.opening_rule IS NOT NULL
	AND lower(trim(unaccent(poi_osm_next.brand))) = lower(trim(unaccent(b.brand_name)));

UPDATE poi_osm_next
SET
	status = b.opening_rule,
	opening_hours = COALESCE(poi_osm_next.opening_hours, b.opening_hours),
	brand_hours = COALESCE(poi_osm_next.brand_hours, b.opening_hours_url),
	brand_infos = COALESCE(poi_osm_next.brand_infos, b.description),
	tags = CASE WHEN b.osm_additional_tags IS NOT NULL THEN b.osm_additional_tags::jsonb || poi_osm_next.tags ELSE poi_osm_next.tags END,
	source_status = 'brand'
FROM brand_rules b
WHERE
	poi_osm_next.status = 'unknown'
	AND poi_osm_next.country = b.country
	AND b.opening_rule IS NOT NULL
	AND lower(trim(unaccent(name))) = lower(trim(unaccent(b.brand_name)));

UPDATE poi_osm_next
SET status = 'open', opening_hours = '24/7'
WHERE status IN ('unknown', 'open_adapted') AND cat = 'fuel' AND tags->>'opening_hours' = '24/7';

UPDATE poi_osm_next
SET opening_hours = tags->>'opening_hours'
WHERE status = 'open' AND opening_hours IS NULL;


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
SELECT fid, fid AS id, geom, name, cat, normalized_cat, status, delivery, opening_hours
FROM poi_osm;


-- Analysis requests
-- SELECT country, SUM((status != 'unknown')::int)::float / COUNT(*) * 100 AS pct_info_connue FROM poi_osm GROUP BY country;
-- SELECT country, SUM((status NOT IN ('unknown', 'partial'))::int)::float / COUNT(*) * 100 AS pct_info_connue FROM poi_osm GROUP BY country;

-- SELECT status, COUNT(*) FROM poi_osm GROUP BY status ORDER BY COUNT(*) DESC;
-- SELECT normalized_cat, COUNT(*) FROM poi_osm GROUP BY normalized_cat ORDER BY COUNT(*) DESC;

-- SELECT country, brand, COUNT(*) FROM poi_osm WHERE status = 'unknown' GROUP BY country, brand HAVING COUNT(*) > 20 ORDER BY COUNT(*) DESC;
-- SELECT country, cat, COUNT(*) FROM poi_osm WHERE status = 'unknown' GROUP BY country, cat HAVING COUNT(*) > 20 ORDER BY COUNT(*) DESC;
