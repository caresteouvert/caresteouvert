WITH
complex_areas_to_subdivide
AS (
DELETE FROM tmp_countries_subcountries
WHERE ST_NPoints(wkb_geometry) > 255
returning "name",country_iso2,sub_country,wkb_geometry
)
INSERT INTO tmp_countries_subcountries ("name",country_iso2,sub_country,wkb_geometry)
SELECT "name",
       country_iso2,
       sub_country,
       ST_Multi(ST_Subdivide(wkb_geometry, 255))
FROM complex_areas_to_subdivide;

CREATE SCHEMA IF NOT EXISTS previous;
DROP TABLE IF EXISTS previous.countries_subcountries CASCADE;
ALTER TABLE IF EXISTS countries_subcountries SET SCHEMA previous;
ALTER TABLE tmp_countries_subcountries RENAME TO countries_subcountries;
ALTER INDEX tmp_countries_subcountries_wkb_geometry_geom_idx RENAME TO countries_subcountries_wkb_geometry_geom_idx;