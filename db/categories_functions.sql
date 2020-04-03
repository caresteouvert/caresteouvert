--
-- AUTOMATICALLY GENERATED SCRIPT
-- DO NOT EDIT DIRECTLY, EDIT INSTEAD "/categories.json"
-- THEN RUN "yarn run categories" TO UPDATE
--

-- Function for getting normalized category from OSM tags
CREATE OR REPLACE FUNCTION get_category(tags HSTORE) RETURNS VARCHAR AS $$
BEGIN
	IF (tags->'amenity' IN ('police', 'post_office', 'bank', 'pharmacy')) OR (tags->'shop' IN ('money_lender', 'optician', 'funeral_directors')) OR (tags->'office' IN ('financial', 'insurance', 'employment_agency')) OR (tags->'craft' = 'optician') THEN
		RETURN 'amenity';
	ELSIF (tags->'shop' IN ('frozen_food', 'supermarket', 'butcher', 'cheese', 'convenience', 'deli', 'farm', 'greengrocer', 'seafood', 'bakery', 'pastry', 'alcohol', 'beverages', 'wine')) OR (tags->'amenity' = 'marketplace') THEN
		RETURN 'food';
	ELSIF (tags->'amenity' IN ('fuel', 'car_rental')) OR (tags->'shop' IN ('gas', 'bicycle', 'car_parts', 'car_repair')) THEN
		RETURN 'transport';
	ELSIF (tags->'shop' IN ('tobacco', 'e-cigarette')) OR (tags->'tobacco' IN ('yes', 'only')) THEN
		RETURN 'tobacco';
	ELSIF (tags->'shop' IN ('doityourself', 'hardware', 'electronics', 'mobile_phone', 'dry_cleaning', 'laundry', 'stationery', 'medical_supply', 'kiosk', 'newsagent', 'pet', 'agrarian')) OR (tags->'craft' = 'electronics_repair') THEN
		RETURN 'shop';
	ELSE
		RETURN 'other';
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;


-- Function for getting normalized subcategory from OSM tags
CREATE OR REPLACE FUNCTION get_subcategory(tags HSTORE) RETURNS VARCHAR AS $$
BEGIN
	IF tags->'amenity' = 'police' THEN
		RETURN 'police';
	ELSIF tags->'amenity' = 'post_office' THEN
		RETURN 'post_office';
	ELSIF (tags->'amenity' = 'bank') OR (tags->'shop' = 'money_lender') OR (tags->'office' IN ('financial', 'insurance')) THEN
		RETURN 'bank';
	ELSIF tags->'amenity' = 'pharmacy' THEN
		RETURN 'pharmacy';
	ELSIF (tags->'shop' = 'optician') OR (tags->'craft' = 'optician') THEN
		RETURN 'optician';
	ELSIF tags->'office' = 'employment_agency' THEN
		RETURN 'employment_agency';
	ELSIF tags->'shop' = 'funeral_directors' THEN
		RETURN 'funeral_directors';
	ELSIF tags->'shop' IN ('frozen_food', 'supermarket') THEN
		RETURN 'supermarket';
	ELSIF tags->'shop' IN ('butcher', 'cheese', 'convenience', 'deli', 'farm', 'greengrocer', 'seafood') THEN
		RETURN 'grocery';
	ELSIF tags->'shop' IN ('bakery', 'pastry') THEN
		RETURN 'bakery';
	ELSIF tags->'shop' IN ('alcohol', 'beverages', 'wine') THEN
		RETURN 'alcohol';
	ELSIF tags->'amenity' = 'marketplace' THEN
		RETURN 'marketplace';
	ELSIF (tags->'amenity' = 'fuel') OR (tags->'shop' = 'gas') THEN
		RETURN 'fuel';
	ELSIF tags->'amenity' = 'car_rental' THEN
		RETURN 'car_rental';
	ELSIF tags->'shop' = 'bicycle' THEN
		RETURN 'bicycle';
	ELSIF tags->'shop' IN ('car_parts', 'car_repair') THEN
		RETURN 'car';
	ELSIF (tags->'shop' = 'tobacco') OR (tags->'tobacco' IN ('yes', 'only')) THEN
		RETURN 'tobacco';
	ELSIF tags->'shop' = 'e-cigarette' THEN
		RETURN 'e_cigarette';
	ELSIF tags->'shop' IN ('doityourself', 'hardware') THEN
		RETURN 'hardware';
	ELSIF (tags->'shop' IN ('electronics', 'mobile_phone')) OR (tags->'craft' = 'electronics_repair') THEN
		RETURN 'electronics';
	ELSIF tags->'shop' IN ('dry_cleaning', 'laundry') THEN
		RETURN 'laundry';
	ELSIF tags->'shop' = 'stationery' THEN
		RETURN 'stationery';
	ELSIF tags->'shop' = 'medical_supply' THEN
		RETURN 'medical_supply';
	ELSIF tags->'shop' IN ('kiosk', 'newsagent') THEN
		RETURN 'newsagent';
	ELSIF tags->'shop' = 'pet' THEN
		RETURN 'pet';
	ELSIF tags->'shop' = 'agrarian' THEN
		RETURN 'agrarian';
	ELSE
		RETURN 'unknown';
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
