FROM ubuntu:18.04

RUN apt-get update \
    && apt-get -y install \
    wget \
    unzip \
    openjdk-8-jre \
    gnupg2 \
    && echo 'deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main' > /etc/apt/sources.list.d/pgdg.list \
    && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |  apt-key add - \
    && apt-get update \
    && apt-get -y install \
    postgresql-client-11

# Imposm
WORKDIR /tmp/imposm
RUN wget -N https://github.com/omniscale/imposm3/releases/download/v0.10.0/imposm-0.10.0-linux-x86-64.tar.gz \
    && gzip -cdf imposm-0.10.0-linux-x86-64.tar.gz > imposm-0.10.0-linux-x86-64.tar \
    && tar -xf imposm-0.10.0-linux-x86-64.tar \
    && mv imposm-0.10.0-linux-x86-64/imposm /usr/bin \
    && mv imposm-0.10.0-linux-x86-64/lib /usr/bin
WORKDIR /tmp
RUN rm -rf /tmp/imposm

# Osmosis
WORKDIR /tmp/osmosis
RUN wget -N https://github.com/openstreetmap/osmosis/releases/download/0.47.4/osmosis-0.47.4.zip \
    && unzip -o osmosis-0.47.4.zip \
    && mv bin/osmosis /usr/bin \
    && chmod a+x /usr/bin/osmosis \
    && mv config /usr/config \
    && mv lib/default/ /usr/lib/default
WORKDIR /tmp
RUN rm -rf /tmp/osmosis

# Osmconvert
WORKDIR /tmp/osmconvert
RUN wget -N http://m.m.i24.cc/osmconvert64 \
    && chmod a+x osmconvert64 \
    && mv osmconvert64 /usr/bin/osmconvert
WORKDIR /tmp
RUN rm -rf /tmp/osmconvert
