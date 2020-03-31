# Utilisation d'imposm avec Docker

### Builder l'image

    docker image build -t osm_imposm .

### Chargement initial des données OSM

Au moyen de l'image Docker avec comme options :

    -v `<repertoire local de telechargement>:/data`
    -v `<repertoire local du présent repo git>:/git/covid19_map`

Lancer l'image avec le shell import_imposm.sh et en arguments :
1. l'URL du dataset souhaité.
    En production : https://planet.openstreetmap.org/pbf/planet-latest.osm.pbf ou https://download.geofabrik.de/europe-latest.osm.pbf
    Pour tester : https://download.geofabrik.de/europe/luxembourg.html
2. la chaîne de connexion Postgres sur le modèle postgis://username:password@host:port/databasename?sslmode=require&prefix=NONE

### Mise à jour avec osmosis & imposm

Lancer l'image avec le shell `con_refresh_db.sh` et en argument la chaîne de connexion Postgres
