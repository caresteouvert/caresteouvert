# Base de données

## Installation

Les dépendances sont les suivantes :

* PostgreSQL >= 9.6 et ses extensions PostGIS, HStore
* wget
* [osm2pgsql](https://github.com/openstreetmap/osm2pgsql)
* [jq](https://stedolan.github.io/jq/)
* [osmium-tool](https://github.com/osmcode/osmium-tool) >= 1.11

Installation des dépendances sous Debian 9 :

```bash
sudo apt-get install wget jq gdal-bin
cd ~

# Osm2PgSQL latest
sudo apt-get install git make cmake g++ libboost-dev libboost-system-dev libboost-filesystem-dev libexpat1-dev zlib1g-dev libbz2-dev libpq-dev libproj-dev lua5.2 liblua5.2-dev
git clone git://github.com/openstreetmap/osm2pgsql.git
cd osm2pgsql
mkdir build && cd build
cmake ..
make
sudo make install
cd ../../
rm -rf osm2pgsql

# Osmium-tool
sudo apt-get install libboost-program-options-dev libbz2-dev zlib1g-dev libexpat1-dev
mkdir work
cd work
git clone https://github.com/mapbox/protozero
cd protozero
mkdir build
cd build
cmake ..
make
sudo make install
cd ../../
git clone https://github.com/osmcode/libosmium
cd libosmium
mkdir build
cd build
cmake ..
make
sudo make install
cd ../../
git clone https://github.com/osmcode/osmium-tool
cd osmium-tool
mkdir build
cd build
cmake ..
make
sudo make install
cd ../../

# PostgreSQL 11
echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-11 postgresql-client-11 postgresql-11-postgis-3
```


## Configuration

### Paramètres généraux

Les paramètres généraux de configuration du service sont à renseigner dans le fichier `config.json`. Les variables à renseigner sont les suivantes :

* `WORK_DIR` : dossier de travail, dans lequel les fichiers temporaires sont stockés (exemple: `/tmp/osm4odf`)
* `PBF_URL` : URL de téléchargement de l'extrait OpenStreetMap au format PBF (exemple: `http://download.openstreetmap.fr/extracts/europe/france-latest.osm.pbf`)
* `PG_HOST` : nom d'hôte pour accéder à la base de données PostgreSQL (exemple: `localhost`)
* `PG_USER` : nom d'utilisateur pour accéder à la base de données PostgreSQL (exemple: `postgres`)
* `PG_USER` : numéro de port pour accéder à la base de données PostgreSQL (exemple: `5432`)
* `PG_DB` : nom de la base de données qui contiendra les données propres (exemple: `covid19map`)
* `PARALLEL_JOBS` : nombre de tâches à exécuter en parallèle, idéalement 75% des coeurs du processeur (exemple: `6`)
* `CACHE_MEM` : mémoire à allouer lors de l'import de données, en MB, idéalement 75% de la mémoire vive disponible (exemple: `10000`)
* `FLAT_NODES` : activer l'option `--flat-nodes` de l'outil osm2pgsql, utile pour les imports de grosses régions ou de pays (`true` pour activer, `false` pour désactiver)

### Script d'import

La configuration de la structure des données en bases (tags sous forme de colonnes, type d'objets sous forme d'emprise...) sont à détailler dans le fichier `import.style`. Un exemple complet de ce type de fichier [est disponible ici](https://github.com/openstreetmap/osm2pgsql/blob/master/default.style). Il est recommandé de ne faire apparaître sous forme de colonne dédiée uniquement les tags qui feront partie des filtres des requêtes formulées par l'API.

Une fois les configurations réalisées, exécutez simplement les commandes suivantes :

```bash
./run.sh
```

## Licence

Copyright (c) Adrien Pavie 2020

Adapté du code source de [GéoDataMine](https://framagit.org/PanierAvide/GeoDataMine).

Mis à disposition sous licence AGPL, voir [LICENSE](LICENSE.txt) pour le texte complet de la licence.
