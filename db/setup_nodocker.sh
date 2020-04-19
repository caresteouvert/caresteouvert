#!/bin.bash

sudo apt-get update
sudo apt-get -y install openjdk-8-jre

#PG
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install postgresql-12
sudo apt install postgis postgresql-12-postgis-2.5 postgresql-client-12

# Imposm
mkdir -p /tmp/imposm && cd /tmp/imposm
wget -N https://github.com/omniscale/imposm3/releases/download/v0.10.0/imposm-0.10.0-linux-x86-64.tar.gz \
    && gzip -cdf imposm-0.10.0-linux-x86-64.tar.gz > imposm-0.10.0-linux-x86-64.tar \
    && tar -xf imposm-0.10.0-linux-x86-64.tar
sudo mv imposm-0.10.0-linux-x86-64/imposm /usr/bin
sudo mv imposm-0.10.0-linux-x86-64/lib /usr/bin
rm -rf /tmp/imposm


# déplacement de la base sur le ssd, base éteinte
sudo rsync -av /var/lib/postgresql /ssd
sudo mv /var/lib/postgresql/12/main /var/lib/postgresql/12/main.bak

#user postgres
#edition de /etc/postgresql/12/main/postgresql.conf
# => data_directory = '/ssd/postgresql/12/main'      # use data in another directory
# edition de /etc/postgresql/12/main/pg_hba.conf
# => droits trust en socket locale
# redémarrage
/usr/lib/postgresql/12/bin/postgres -D /ssd/postgresql/12/main -c config_file=/etc/postgresql/12/main/postgresql.conf

#user postgres
createuser -d -r -s cro
createdb -E UTF-8 -O cro -T template0 template_postgis
psql -U cro -d template_postgis -c "CREATE EXTENSION postgis;CREATE EXTENSION hstore;"
createdb -T template_postgis -O cro cro

# Java
sudo apt-get install default-jre

# Osmosis
mkdir -p /tmp/osmosis && cd /tmp/osmosis
wget -N https://github.com/openstreetmap/osmosis/releases/download/0.47.4/osmosis-0.47.4.zip && unzip -o osmosis-0.47.4.zip 
sudo mv bin/osmosis /usr/bin
sudo chmod a+x /usr/bin/osmosis
sudo mv config /usr/config
sudo mv lib/default/ /usr/lib/default
