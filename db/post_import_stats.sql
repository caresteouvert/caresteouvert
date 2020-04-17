--
-- Init statistics tables
--

-- Features per brand
CREATE TABLE IF NOT EXISTS stats_brand_count(
	day DATE,
	country VARCHAR,
	name VARCHAR,
	wikidata VARCHAR,
	status VARCHAR,
	amount INTEGER
);

-- Contributions
CREATE OR REPLACE VIEW stats_contributions AS
SELECT
	ts::date AS day,
	SUM((details is null)::int) AS direct_edits,
	SUM((details is not null)::int) AS notes,
	SUM((opening_hours is not null)::int) AS opening_hours_added
	FROM contributions
WHERE ts::date != current_date
GROUP BY ts::date
ORDER BY ts::date;

-- Status per country
CREATE TABLE IF NOT EXISTS stats_poi_count(
	day DATE,
	country VARCHAR,
	total INT,
	nb_open INT,
	nb_closed INT,
	nb_unknown INT,
	nb_partial INT
);
