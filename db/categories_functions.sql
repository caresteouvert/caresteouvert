--
-- AUTOMATICALLY GENERATED SCRIPT
-- DO NOT EDIT DIRECTLY, EDIT INSTEAD "/categories.json"
-- THEN RUN "yarn run categories" TO UPDATE
--

-- Function for getting normalized category from OSM tags
CREATE OR REPLACE FUNCTION get_category(tags HSTORE, area VARCHAR) RETURNS VARCHAR AS $$
BEGIN
	IF (tags->'amenity' = 'vending_machine' AND tags->'vending' IN ('stamps', 'parcel_mail_in', 'parcel_pickup', 'parcel_pickup;parcel_mail_in')) OR (tags->'amenity' = 'childcare' AND area LIKE 'FR%') OR (tags->'amenity' = 'kindergarten' AND tags->'kindergarten:FR' != '' AND area LIKE 'FR%') OR (tags->'tourism' = 'information' AND tags->'information' = 'office' AND tags->'opening_hours:covid19' != '') OR (tags->'tourism' = 'information' AND tags->'information' = 'office' AND tags->'opening_hours:covid19' != '') OR (tags->'tourism' IN ('hotel', 'motel', 'hostel') AND area SIMILAR TO '(FR|AT|DE|CH)%') OR (tags->'amenity' = 'recycling' AND tags->'recycling_type' = 'centre' AND area LIKE 'FR%') OR (tags->'amenity' IN ('police', 'townhall', 'post_office', 'bank', 'atm', 'money_transfer', 'mobile_money_agent')) OR (tags->'office' IN ('employment_agency', 'insurance')) OR (tags->'shop' IN ('funeral_directors', 'money_lender')) THEN
		RETURN 'amenity';
	ELSIF (tags->'healthcare' = 'centre' AND tags->'healthcare:speciality' = 'covid19' AND area LIKE 'FR%') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'condoms') OR (tags->'healthcare' IN ('centre', 'clinic', 'doctor', 'hospital', 'rehabilitation', 'laboratory') AND tags->'opening_hours:covid19' != '') OR (tags->'healthcare' IN ('centre', 'clinic', 'doctor', 'hospital', 'rehabilitation', 'laboratory') AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' IN ('hospital', 'clinic', 'doctors') AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' IN ('hospital', 'clinic', 'doctors') AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' = 'pharmacy') OR (tags->'shop' IN ('optician', 'hearing_aids', 'medical_supply')) OR (tags->'craft' = 'optician') THEN
		RETURN 'health';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'milk') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bread') OR (tags->'shop' IN ('frozen_food', 'supermarket', 'butcher', 'cheese', 'convenience', 'seafood', 'greengrocer', 'deli', 'spices', 'honey', 'health_food', 'pasta', 'cannery', 'chocolate', 'tea', 'coffee', 'dairy', 'confectionery', 'farm', 'bakery', 'pastry')) OR (tags->'amenity' = 'marketplace') THEN
		RETURN 'food';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' IN ('pizza', 'drinks', 'water', 'sweets')) OR (tags->'amenity' = 'ice_cream' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'amenity' = 'cafe' AND tags->'cuisine' = 'ice_cream' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'ice_cream' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'amenity' = 'cafe' AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' = 'cafe' AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' = 'cafe' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'cafe' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'cafe' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'cafe' AND tags->'takeaway:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'coffee' AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'coffee' AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'coffee' AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'coffee' AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'coffee' AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'coffee' AND tags->'takeaway:covid19' IN ('yes', 'only')) OR (tags->'amenity' IN ('bar', 'pub') AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' IN ('bar', 'pub') AND tags->'opening_hours:covid19' != '') OR (tags->'amenity' IN ('bar', 'pub') AND tags->'delivery' IN ('yes', 'only')) OR (tags->'amenity' IN ('bar', 'pub') AND tags->'takeaway' IN ('yes', 'only')) OR (tags->'amenity' IN ('bar', 'pub') AND tags->'delivery:covid19' IN ('yes', 'only')) OR (tags->'amenity' IN ('bar', 'pub') AND tags->'takeaway:covid19' IN ('yes', 'only')) OR (tags->'amenity' IN ('restaurant', 'fast_food')) THEN
		RETURN 'eat';
	ELSIF (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'cigarettes') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'e-cigarettes') OR (tags->'shop' IN ('tobacco', 'newsagent;tobacco', 'tobacco;newsagent', 'e-cigarette', 'alcohol', 'beverages', 'wine')) OR (tags->'tobacco' IN ('yes', 'only')) THEN
		RETURN 'drugs';
	ELSIF (tags->'shop' = 'stationery' AND area LIKE 'FR%') OR (tags->'shop' = 'agrarian' AND area LIKE 'FR%') OR (tags->'shop' = 'shoes' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'books' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'books' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'amenity' = 'public_bookcase' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'beauty' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'clothes' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'furniture' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'gift' AND tags->'opening_hours:covid19' != '' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'gift' AND tags->'opening_hours:covid19' != '' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'hairdresser' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'jewelry' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' = 'toys' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'shop' IN ('doityourself', 'hardware', 'paint', 'glaziery', 'mobile_phone', 'computer', 'electronics', 'dry_cleaning', 'laundry', 'kiosk', 'newsagent', 'pet', 'garden_centre', 'florist', 'chemist', 'fabric', 'sewing', 'haberdashery')) OR (tags->'craft' IN ('electronics_repair', 'sewing')) THEN
		RETURN 'shop';
	ELSIF (tags->'shop' = 'car' AND area SIMILAR TO '(DE|AT|CH)%') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bicycle_tube') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'public_transport_tickets') OR (tags->'amenity' IN ('fuel', 'car_rental')) OR (tags->'shop' IN ('gas', 'bicycle', 'car_parts', 'car_repair')) THEN
		RETURN 'mobility';
	ELSIF tags->'opening_hours:covid19' != '' THEN
		RETURN 'other';
	ELSE
		RETURN NULL;
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;


-- Function for getting normalized subcategory from OSM tags
CREATE OR REPLACE FUNCTION get_subcategory(tags HSTORE, area VARCHAR) RETURNS VARCHAR AS $$
BEGIN
	IF tags->'amenity' = 'police' THEN
		RETURN 'police';
	ELSIF tags->'amenity' = 'townhall' THEN
		RETURN 'townhall';
	ELSIF (tags->'amenity' = 'post_office') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' IN ('stamps', 'parcel_mail_in', 'parcel_pickup', 'parcel_pickup;parcel_mail_in')) THEN
		RETURN 'post_office';
	ELSIF (tags->'amenity' = 'childcare') OR (tags->'amenity' = 'kindergarten' AND tags->'kindergarten:FR' != '') THEN
		RETURN 'childcare';
	ELSIF tags->'office' = 'employment_agency' THEN
		RETURN 'employment_agency';
	ELSIF tags->'shop' = 'funeral_directors' THEN
		RETURN 'funeral_directors';
	ELSIF (tags->'amenity' IN ('bank', 'atm', 'money_transfer', 'mobile_money_agent')) OR (tags->'shop' = 'money_lender') THEN
		RETURN 'money';
	ELSIF tags->'office' = 'insurance' THEN
		RETURN 'insurance';
	ELSIF tags->'tourism' = 'information' AND tags->'information' = 'office' THEN
		RETURN 'tourism_info';
	ELSIF tags->'tourism' IN ('hotel', 'motel', 'hostel') THEN
		RETURN 'hotel';
	ELSIF tags->'amenity' = 'recycling' AND tags->'recycling_type' = 'centre' THEN
		RETURN 'recycling_centre';
	ELSIF tags->'amenity' = 'pharmacy' THEN
		RETURN 'pharmacy';
	ELSIF tags->'healthcare' = 'centre' AND tags->'healthcare:speciality' = 'covid19' THEN
		RETURN 'covid19_centre';
	ELSIF (tags->'shop' = 'optician') OR (tags->'craft' = 'optician') THEN
		RETURN 'optician';
	ELSIF tags->'shop' = 'hearing_aids' THEN
		RETURN 'hearing_aids';
	ELSIF tags->'amenity' = 'vending_machine' AND tags->'vending' = 'condoms' THEN
		RETURN 'condoms';
	ELSIF tags->'shop' = 'medical_supply' THEN
		RETURN 'medical_supply';
	ELSIF (tags->'healthcare' IN ('centre', 'clinic', 'doctor', 'hospital', 'rehabilitation', 'laboratory')) OR (tags->'amenity' IN ('hospital', 'clinic', 'doctors')) THEN
		RETURN 'health_center';
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
	ELSIF tags->'shop' IN ('deli', 'spices', 'honey', 'health_food', 'pasta', 'cannery') THEN
		RETURN 'grocery';
	ELSIF tags->'shop' = 'chocolate' THEN
		RETURN 'chocolate';
	ELSIF tags->'shop' = 'tea' THEN
		RETURN 'tea';
	ELSIF tags->'shop' = 'coffee' THEN
		RETURN 'coffee';
	ELSIF (tags->'shop' = 'dairy') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'milk') THEN
		RETURN 'dairy';
	ELSIF tags->'shop' = 'confectionery' THEN
		RETURN 'confectionery';
	ELSIF tags->'shop' = 'farm' THEN
		RETURN 'farm';
	ELSIF tags->'amenity' = 'marketplace' THEN
		RETURN 'marketplace';
	ELSIF (tags->'shop' IN ('bakery', 'pastry')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bread') THEN
		RETURN 'bakery';
	ELSIF tags->'amenity' = 'vending_machine' AND tags->'vending' IN ('pizza', 'drinks', 'water', 'sweets') THEN
		RETURN 'vending_machine';
	ELSIF tags->'amenity' = 'restaurant' THEN
		RETURN 'restaurant';
	ELSIF tags->'amenity' = 'fast_food' THEN
		RETURN 'fast_food';
	ELSIF (tags->'amenity' = 'ice_cream') OR (tags->'amenity' = 'cafe' AND tags->'cuisine' = 'ice_cream') OR (tags->'shop' = 'ice_cream') THEN
		RETURN 'ice_cream';
	ELSIF (tags->'amenity' = 'cafe') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'coffee') THEN
		RETURN 'cafe';
	ELSIF tags->'amenity' IN ('bar', 'pub') THEN
		RETURN 'bar';
	ELSIF (tags->'shop' IN ('tobacco', 'newsagent;tobacco', 'tobacco;newsagent')) OR (tags->'tobacco' IN ('yes', 'only')) OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'cigarettes') THEN
		RETURN 'tobacco';
	ELSIF (tags->'shop' = 'e-cigarette') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'e-cigarettes') THEN
		RETURN 'e_cigarette';
	ELSIF tags->'shop' IN ('alcohol', 'beverages', 'wine') THEN
		RETURN 'alcohol';
	ELSIF tags->'shop' IN ('doityourself', 'hardware', 'paint', 'glaziery') THEN
		RETURN 'hardware';
	ELSIF tags->'shop' = 'mobile_phone' THEN
		RETURN 'mobile_phone';
	ELSIF tags->'shop' = 'computer' THEN
		RETURN 'computer';
	ELSIF (tags->'shop' = 'electronics') OR (tags->'craft' = 'electronics_repair') THEN
		RETURN 'electronics';
	ELSIF tags->'shop' IN ('dry_cleaning', 'laundry') THEN
		RETURN 'laundry';
	ELSIF tags->'shop' = 'stationery' THEN
		RETURN 'stationery';
	ELSIF tags->'shop' IN ('kiosk', 'newsagent') THEN
		RETURN 'newsagent';
	ELSIF tags->'shop' = 'pet' THEN
		RETURN 'pet';
	ELSIF tags->'shop' = 'agrarian' THEN
		RETURN 'agrarian';
	ELSIF tags->'shop' IN ('garden_centre', 'florist') THEN
		RETURN 'flower';
	ELSIF tags->'shop' = 'chemist' THEN
		RETURN 'chemist';
	ELSIF (tags->'shop' IN ('fabric', 'sewing', 'haberdashery')) OR (tags->'craft' = 'sewing') THEN
		RETURN 'sewing';
	ELSIF tags->'shop' = 'shoes' THEN
		RETURN 'shoes';
	ELSIF (tags->'shop' = 'books') OR (tags->'amenity' = 'vending_machine' AND tags->'vending' = 'books') OR (tags->'amenity' = 'public_bookcase') THEN
		RETURN 'books';
	ELSIF tags->'shop' = 'beauty' THEN
		RETURN 'beauty';
	ELSIF tags->'shop' = 'clothes' THEN
		RETURN 'clothes';
	ELSIF tags->'shop' = 'furniture' THEN
		RETURN 'furniture';
	ELSIF tags->'shop' = 'gift' THEN
		RETURN 'gift';
	ELSIF tags->'shop' = 'hairdresser' THEN
		RETURN 'hairdresser';
	ELSIF tags->'shop' = 'jewelry' THEN
		RETURN 'jewelry';
	ELSIF tags->'shop' = 'toys' THEN
		RETURN 'toys';
	ELSIF (tags->'amenity' = 'fuel') OR (tags->'shop' = 'gas') THEN
		RETURN 'fuel';
	ELSIF tags->'amenity' = 'car_rental' THEN
		RETURN 'car_rental';
	ELSIF tags->'shop' = 'bicycle' THEN
		RETURN 'bicycle';
	ELSIF tags->'shop' IN ('car_parts', 'car_repair') THEN
		RETURN 'car';
	ELSIF tags->'shop' = 'car' THEN
		RETURN 'car_dealer';
	ELSIF tags->'amenity' = 'vending_machine' AND tags->'vending' = 'bicycle_tube' THEN
		RETURN 'bicycle_tube';
	ELSIF tags->'amenity' = 'vending_machine' AND tags->'vending' = 'public_transport_tickets' THEN
		RETURN 'public_transport_tickets';
	ELSE
		RETURN 'unknown';
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;
