--
-- AUTOMATICALLY GENERATED SCRIPT
-- DO NOT EDIT DIRECTLY, EDIT INSTEAD "/categories.json"
-- THEN RUN "yarn run categories" TO UPDATE
--

-- Function for getting normalized category from OSM tags
CREATE OR REPLACE FUNCTION get_category(tags HSTORE) RETURNS VARCHAR AS $$
BEGIN
	IF tags->'amenity' = 'police' THEN
		RETURN 'police';
	ELSIF tags->'amenity' = 'pharmacy' THEN
		RETURN 'pharmacy';
	ELSIF tags->'amenity' = 'post_office' THEN
		RETURN 'post_office';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'pizza') OR (tags->'shop' IN ('frozen_food', 'supermarket', 'butcher', 'cheese', 'convenience', 'seafood', 'greengrocer', 'deli', 'farm', 'chocolate', 'alcohol', 'beverages', 'wine')) OR (tags->'amenity' = 'marketplace') THEN
		RETURN 'food';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bread') OR (tags->'shop' IN ('bakery', 'pastry')) THEN
		RETURN 'bakery';
	ELSIF (tags->'shop' IN ('tobacco', 'e-cigarette')) OR (tags->'tobacco' IN ('yes', 'only')) THEN
		RETURN 'tobacco';
	ELSIF (tags->'shop' IN ('doityourself', 'hardware', 'mobile_phone', 'electronics', 'dry_cleaning', 'laundry', 'stationery', 'medical_supply', 'kiosk', 'newsagent', 'pet', 'agrarian', 'optician', 'bicycle', 'car_parts', 'car_repair')) OR (tags->'craft' IN ('electronics_repair', 'optician')) OR (tags->'office' = 'employment_agency') OR (tags->'amenity' = 'car_rental') THEN
		RETURN 'shop';
	ELSIF (tags->'amenity' = 'bank') OR (tags->'shop' = 'money_lender') OR (tags->'office' IN ('financial', 'insurance')) THEN
		RETURN 'bank';
	ELSIF (tags->'amenity' = 'fuel') OR (tags->'shop' = 'gas') THEN
		RETURN 'fuel';
	ELSIF tags->'shop' = 'funeral_directors' THEN
		RETURN 'funeral_directors';
	ELSIF tags->'opening_hours:covid19' != '' THEN
		RETURN 'other';
	ELSE
		RETURN NULL;
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;


-- Function for getting normalized subcategory from OSM tags
CREATE OR REPLACE FUNCTION get_subcategory(tags HSTORE) RETURNS VARCHAR AS $$
BEGIN
	IF tags->'amenity' = 'police' THEN
		RETURN 'police';
	ELSIF tags->'amenity' = 'pharmacy' THEN
		RETURN 'pharmacy';
	ELSIF tags->'amenity' = 'post_office' THEN
		RETURN 'post_office';
	ELSIF tags->'shop' IN ('frozen_food', 'supermarket') THEN
		RETURN 'supermarket';
	ELSIF tags->'shop' = 'butcher' THEN
		RETURN 'butcher';
	ELSIF tags->'shop' = 'cheese' THEN
		RETURN 'cheese';
	ELSIF tags->'shop' = 'convenience' THEN
		RETURN 'convenience';
	ELSIF tags->'shop' = 'seafood' THEN
		RETURN 'seafood';
	ELSIF tags->'shop' = 'greengrocer' THEN
		RETURN 'greengrocer';
	ELSIF (tags->'shop' IN ('deli', 'farm', 'chocolate')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'pizza') THEN
		RETURN 'grocery';
	ELSIF tags->'shop' IN ('alcohol', 'beverages', 'wine') THEN
		RETURN 'alcohol';
	ELSIF tags->'amenity' = 'marketplace' THEN
		RETURN 'marketplace';
	ELSIF (tags->'shop' IN ('bakery', 'pastry')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bread') THEN
		RETURN 'bakery';
	ELSIF (tags->'shop' = 'tobacco') OR (tags->'tobacco' IN ('yes', 'only')) THEN
		RETURN 'tobacco';
	ELSIF tags->'shop' = 'e-cigarette' THEN
		RETURN 'e_cigarette';
	ELSIF tags->'shop' IN ('doityourself', 'hardware') THEN
		RETURN 'hardware';
	ELSIF tags->'shop' = 'mobile_phone' THEN
		RETURN 'mobile_phone';
	ELSIF (tags->'shop' = 'electronics') OR (tags->'craft' = 'electronics_repair') THEN
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
	ELSIF (tags->'shop' = 'optician') OR (tags->'craft' = 'optician') THEN
		RETURN 'optician';
	ELSIF tags->'office' = 'employment_agency' THEN
		RETURN 'employment_agency';
	ELSIF tags->'amenity' = 'car_rental' THEN
		RETURN 'car_rental';
	ELSIF tags->'shop' = 'bicycle' THEN
		RETURN 'bicycle';
	ELSIF tags->'shop' IN ('car_parts', 'car_repair') THEN
		RETURN 'car';
	ELSIF (tags->'amenity' = 'bank') OR (tags->'shop' = 'money_lender') OR (tags->'office' IN ('financial', 'insurance')) THEN
		RETURN 'bank';
	ELSIF (tags->'amenity' = 'fuel') OR (tags->'shop' = 'gas') THEN
		RETURN 'fuel';
	ELSIF tags->'shop' = 'funeral_directors' THEN
		RETURN 'funeral_directors';
	ELSE
		RETURN 'unknown';
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
