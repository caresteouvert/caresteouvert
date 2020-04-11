--
-- Statistics requests to run daily
--

-- Features per brand
INSERT INTO stats_brand_count(day, country, name, wikidata, status, amount)
SELECT
	current_date,
	country,
	brand,
	brand_wikidata,
	status,
	COUNT(*)
FROM poi_osm
WHERE brand IS NOT NULL
GROUP BY current_date, country, brand, brand_wikidata, status
HAVING COUNT(*) >= 20
ORDER BY country, COUNT(*) DESC;

-- Status of POIs
INSERT INTO stats_poi_count(day, country, total, nb_open, nb_closed, nb_unknown)
SELECT
	current_date,
	country,
	COUNT(*),
	SUM((status IN ('open', 'open_adapted'))::int),
	SUM((status = 'closed')::int),
	SUM((status IN ('unknown', 'partial'))::int)
FROM poi_osm
GROUP BY current_date, country
ORDER BY current_date, country;
