# Utilisation d'imposm avec Docker

### Builder l'image
docker image build -t osm_imposm .


### Chargement initial des données OSM
Au moyen de l'image Docker avec comme options :
-v <repertoire local de telechargement>:/data
-v <repertoire local du présent repo git>:/git/covid19_map

Lancer l'image avec le shell import_imposm.sh et en arguments : 
1- le nom du dataset souhaité.
En production : france_metro_dom_com_nc-latest
Pour tester : france_taaf

2- la chaîne de connexion Postgres sur le modèle postgis://username:password@host:port/databasename?sslmode=require