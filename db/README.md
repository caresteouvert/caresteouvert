# Backend Services

## Build

Copy `.env.example` as `.env` and adjust settings.

```
git clone https://github.com/caresteouvert/caresteouvert_backend.git
```

```
docker-compose build
```

## Create database

```
docker-compose up -d postgres
sleep(10) # Wait for creation
docker-compose exec -u postgres postgres psql -c "
    CREATE EXTENSION IF NOT EXISTS hstore;
    CREATE EXTENSION IF NOT EXISTS unaccent;
"
```

## Adding a country

### How to register a new set of boundaries for a country

A country is composed of a set of geojson MultiPolygon features stored in a sigle .geojson file in the "geojson" subdirectory. Every feature has a required attribute and an optional one :
- field "country_iso2" is required. Its value is the Alpha-2 code of the country. A list of available codes is [available here](https://en.wikipedia.org/wiki/ISO_3166-1#Current_codes)
- field "sub_country" is optional (default to empty). Fill this value in case of subdivisons of the country. Only usefull to apply different Covid19 rules by region/state/Land/whatever

SRID is 4326 and coordinates precision is set to 5 digits


### How to build the countries_subcountries geojson file

The file is required for the imposm process (initial load & diff)

Run
    ./build_countries_geojson.sh

### How to load the geojson country files into Postgres (required for the "country" API)

Everytime a refresh of the countries_subcountries PG table is required :

     ./load_countries.sh

### How to update imposm points & polyons with new country & sub-country codes

In order for the OSM points and polygons to inherit from country codes for newly set up countries, launch :

    ./update_imposm_with_country.sh <connexion string> <ISO2 country string>

sample for France (code FR) : ./update_imposm_with_country.sh postgres://username:password@host:port/databasename:port?sslmode=prefer FR


## caresteouvert_backend

```
docker-compose exec -u postgres postgres psql -v ON_ERROR_STOP=1 -f /git/covid19_map/db/caresteouvert_backend/src/init.sql
```


## Import OSM data

```
docker-compose run --rm osm_imposm bash -c "
    cd /git/covid19_map/db/ && \
    ./import_imposm.sh https://download.geofabrik.de/europe/andorra-latest.osm.pbf && \
    ./cron_refresh_db.sh
"
```


## Serve Data

The postgres database is used by pg_tileserv, pg_featureserv and caresteouvert_backend.

Running:
- pg_tileserv, default on port 7800, serve on tiles.caresteouvert.fr
- pg_featureserv, default on port 9000, serve on features.caresteouvert.fr
- geoip, default on port 9090, serve on geo.caresteouvert.fr
- caresteouvert_backend, default on port 8080, serve on api.caresteouvert.fr

```
docker-compose up -d pg_tileserv
docker-compose up -d pg_featureserv
docker-compose up -d geoip
docker-compose up -d web
docker-compose up -d worker
docker-compose up -d front
```


## Update

docker-compose run --rm osm_imposm bash -c "
    cd /git/covid19_map/db/ && \
    ./update_imposm.sh && \
    ./cron_refresh_db.sh
"


## Stats & Exports

```
mkdir -p export
docker-compose run --rm osm_imposm bash -c "
    cd /git/covid19_map/db/ && \
    ./update_csv_exports.sh export
"
```
