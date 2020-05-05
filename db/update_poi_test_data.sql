CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS hstore;
CREATE EXTENSION IF NOT EXISTS unaccent;

-- Create imposm_osm_point table
DROP TABLE IF EXISTS imposm_osm_point;
CREATE TABLE imposm_osm_point(
	osm_id INTEGER,
	way GEOMETRY(Point, 3857),
	tags HSTORE,
	name VARCHAR DEFAULT '',
	areroway VARCHAR DEFAULT '',
	amenity VARCHAR DEFAULT '',
	craft VARCHAR DEFAULT '',
	emergency VARCHAR DEFAULT '',
	healthcare VARCHAR DEFAULT '',
	highway VARCHAR DEFAULT '',
        historic VARCHAR DEFAULT '',
        leisure VARCHAR DEFAULT '',
        office VARCHAR DEFAULT '',
        public_transport VARCHAR DEFAULT '',
        railway VARCHAR DEFAULT '',
        shop VARCHAR DEFAULT '',
        tobacco VARCHAR DEFAULT '',
        tourism VARCHAR DEFAULT '',
        opening_hours VARCHAR DEFAULT '',
        "opening_hours:covid19" VARCHAR DEFAULT '',
        "access:covid19" VARCHAR DEFAULT '',
        "delivery:covid19" VARCHAR DEFAULT '',
        "description:covid19" VARCHAR DEFAULT '',
        "drive_through:covid19" VARCHAR DEFAULT '',
        "takeaway:covid19" VARCHAR DEFAULT '',
        "country_iso2" VARCHAR DEFAULT '',
        "sub_country" VARCHAR DEFAULT ''
);

-- Create imposm_osm_polygon table
DROP TABLE IF EXISTS imposm_osm_polygon;
CREATE TABLE imposm_osm_polygon(
	osm_id INTEGER,
	way GEOMETRY(Point, 3857),
        tags HSTORE,
	name VARCHAR,
	areroway VARCHAR,
	amenity VARCHAR,
	craft VARCHAR,
	emergency VARCHAR,
	healthcare VARCHAR,
	highway VARCHAR,
        historic VARCHAR,
        leisure VARCHAR,
        office VARCHAR,
        public_transport VARCHAR,
        railway VARCHAR,
        shop VARCHAR,
        tobacco VARCHAR,
        tourism VARCHAR,
        opening_hours VARCHAR,
        "opening_hours:covid19" VARCHAR,
        "access:covid19" VARCHAR,
        "delivery:covid19" VARCHAR,
        "description:covid19" VARCHAR,
        "drive_through:covid19" VARCHAR,
        "takeaway:covid19" VARCHAR,
        "country_iso2" VARCHAR,
        "sub_country" VARCHAR
);

DROP TABLE IF EXISTS brand_rules;
CREATE TABLE brand_rules(
       country VARCHAR,
       category VARCHAR,
       brand_name VARCHAR,
       wikidata_id VARCHAR,
       opening_rule VARCHAR,
       opening_hours VARCHAR,
       osm_additional_tags JSON,
       description VARCHAR,
       source_url VARCHAR,
       opening_hours_url VARCHAR
);

DROP TABLE IF EXISTS legal_rules;
CREATE TABLE legal_rules(
       country VARCHAR,
       country_subarea VARCHAR,
       category VARCHAR,
       osm_tags JSONB,
       start_date DATE,
       end_date DATE,
       legal_state VARCHAR,
       details VARCHAR,
       source_url VARCHAR
);

DROP TABLE IF EXISTS poi_custom;
CREATE TABLE poi_custom(
       cro_id VARCHAR,
       osm_id VARCHAR,
       name VARCHAR,
       category VARCHAR,
       subcategory VARCHAR,
       lat DOUBLE PRECISION,
       lng DOUBLE PRECISION,
       tags JSONB DEFAULT '{}'
);

DROP TABLE IF EXISTS poi_cro;
CREATE TABLE poi_cro(
	osmid VARCHAR PRIMARY KEY,
	tags JSONB,
	lastupdate TIMESTAMP NOT NULL DEFAULT current_timestamp
);

INSERT INTO imposm_osm_point(osm_id, way, name, tags, shop, opening_hours, country_iso2)
  VALUES (1, ST_GeomFromText('POINT(0 0)', 3857), 'Test 1', 'shop=>supermarket'::hstore, 'supermarket', 'Mo-Sa 09:00-10:00', 'FR');
