FROM node:12-alpine

RUN apk add --no-cache git

RUN git clone --single-branch --branch update-geoip https://github.com/francois2metz/geoapi.git && \
    cd geoapi && \
    npm install && \
    npm run build

CMD cd geoapi && npm run start
