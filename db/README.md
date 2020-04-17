# Adding a country

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

Once : pull the GDAL/OGR Docker image

    ./get_gdal_docker.sh

Everytime a refresh of the countries_subcountries PG table is required :

     ./load_countries.sh "connexion string"

connexion_string may be formated for ogr2ogr with any combination of following arguments :

    dbname=<databasename> host=<addr> port=<port> user=<role> password=<password>

connexion_string may also follow the URL syntax :

    postgres://username:password@host:port/databasename?sslmode=require


### How to update imposm points & polyons with new country & sub-country codes

In order for the OSM points and polygons to inherit from country codes for newly set up countries, launch :

    ./update_imposm_with_country.sh <connexion string> <ISO2 country string>

sample for France (code FR) : ./update_imposm_with_country.sh postgres://username:password@host:port/databasename:port?sslmode=prefer FR
