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
	ELSIF (tags->'shop' IN ('frozen_food', 'supermarket', 'butcher', 'cheese', 'convenience', 'seafood', 'greengrocer', 'deli', 'farm', 'chocolate', 'alcohol', 'beverages', 'wine')) OR (tags->'amenity' = 'marketplace') THEN
		RETURN 'food';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bread') OR (tags->'shop' IN ('bakery', 'pastry')) THEN
		RETURN 'bakery';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'pizza') OR (tags->'amenity' = 'restaurant' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'restaurant' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'restaurant' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'restaurant' AND tags->'takeaway:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'fast_food' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'fast_food' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'fast_food' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'fast_food' AND tags->'takeaway:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'ice_cream' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'ice_cream' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'ice_cream' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'ice_cream' AND tags->'takeaway:covid19' IN ('yes', 'only')) THEN
		RETURN 'eat';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'cigarettes') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'e-cigarettes') OR (tags->'shop' IN ('tobacco', 'e-cigarette')) OR (tags->'tobacco' IN ('yes', 'only')) THEN
		RETURN 'tobacco';
	ELSIF (tags->'shop' IN ('doityourself', 'hardware', 'mobile_phone', 'electronics', 'dry_cleaning', 'laundry', 'stationery', 'medical_supply', 'kiosk', 'newsagent', 'pet', 'agrarian', 'garden_centre', 'optician', 'funeral_directors')) OR (tags->'craft' IN ('electronics_repair', 'optician')) OR (tags->'office' = 'employment_agency') THEN
		RETURN 'shop';
	ELSIF (tags->'amenity' = 'bank') OR (tags->'office' IN ('financial', 'insurance')) OR (tags->'shop' = 'money_lender') THEN
		RETURN 'finance';
	ELSIF (tags->'amenity' IN ('fuel', 'car_rental')) OR (tags->'shop' IN ('gas', 'bicycle', 'car_parts', 'car_repair')) THEN
		RETURN 'mobility';
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
	ELSIF tags->'shop' IN ('deli', 'farm', 'chocolate') THEN
		RETURN 'grocery';
	ELSIF tags->'shop' IN ('alcohol', 'beverages', 'wine') THEN
		RETURN 'alcohol';
	ELSIF tags->'amenity' = 'marketplace' THEN
		RETURN 'marketplace';
	ELSIF (tags->'shop' IN ('bakery', 'pastry')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bread') THEN
		RETURN 'bakery';
	ELSIF tags->'amenity' = 'vending_machine' AND tags->'vending' = 'pizza' THEN
		RETURN 'vending_machine';
	ELSIF (tags->'amenity' = 'restaurant' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'restaurant' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'restaurant' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'restaurant' AND tags->'takeaway:covid19' IN ('yes', 'only')) THEN
		RETURN 'restaurant';
	ELSIF (tags->'amenity' = 'fast_food' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'fast_food' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'fast_food' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'fast_food' AND tags->'takeaway:covid19' IN ('yes', 'only')) THEN
		RETURN 'fast_food';
	ELSIF (tags->'amenity' = 'ice_cream' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'ice_cream' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'ice_cream' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'ice_cream' AND tags->'takeaway:covid19' IN ('yes', 'only')) THEN
		RETURN 'ice_cream';
	ELSIF (tags->'shop' = 'tobacco') OR (tags->'tobacco' IN ('yes', 'only')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'cigarettes') THEN
		RETURN 'tobacco';
	ELSIF (tags->'shop' = 'e-cigarette') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'e-cigarettes') THEN
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
	ELSIF tags->'shop' = 'garden_centre' THEN
		RETURN 'garden_centre';
	ELSIF (tags->'shop' = 'optician') OR (tags->'craft' = 'optician') THEN
		RETURN 'optician';
	ELSIF tags->'office' = 'employment_agency' THEN
		RETURN 'employment_agency';
	ELSIF tags->'shop' = 'funeral_directors' THEN
		RETURN 'funeral_directors';
	ELSIF (tags->'amenity' = 'bank') OR (tags->'office' = 'financial') THEN
		RETURN 'bank';
	ELSIF tags->'shop' = 'money_lender' THEN
		RETURN 'moneylender';
	ELSIF tags->'office' = 'insurance' THEN
		RETURN 'insurance';
	ELSIF (tags->'amenity' = 'fuel') OR (tags->'shop' = 'gas') THEN
		RETURN 'fuel';
	ELSIF tags->'amenity' = 'car_rental' THEN
		RETURN 'car_rental';
	ELSIF tags->'shop' = 'bicycle' THEN
		RETURN 'bicycle';
	ELSIF tags->'shop' IN ('car_parts', 'car_repair') THEN
		RETURN 'car';
	ELSE
		RETURN 'unknown';
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
