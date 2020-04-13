# Ça reste ouvert (It Stays Open)

![Ça reste ouvert](images/logo.png)

[Ça reste ouvert](https://caresteouvert.fr), la carte collaborative des lieux ouverts durant le confinement / the collaborative map of the places open during the lockdown #Covid19.

Toutes les informations sur le projet sont ici / All informations about the project here : https://blog.caresteouvert.fr/about

## Architecture

To deploy a complete instance of "Ça reste ouvert", you needs:

- this map (see the Developement section)
- [postgres with postgis and data loaded](db/)
- [pg_tileserv](https://access.crunchydata.com/documentation/pg_tileserv/latest/)
- [pg_featureserv](https://access.crunchydata.com/documentation/pg_featureserv/latest/)
- [Ça reste ouvert backend](https://github.com/osmontrouge/caresteouvert_backend) (complementary API)


## Development

The easiest way to contribute to the map is to use Docker:

```bash
./script/server
```

Otherwise, you can use use yarn:

```bash
yarn install
yarn run sprites
yarn run icons
yarn run dev
```

And go to http://localhost:1234/.

## Translation

Translations are managed via Transifex, [go here to translate it in your language](https://www.transifex.com/openlevelup/ca-reste-ouvert/languages/).

## Data

Data used on our map comes from two sources :
* [OpenStreetMap](https://openstreetmap.org/) : the free, worldwide geographic database. We use information about points of interest and also lockdown opening hours
* [Covid enseignes](https://github.com/PanierAvide/Covid_enseignes) : chain stores opening rules by country. This allows to mark as open/closed a wide range of shops worldwide.

So you can either directly contribute to OpenStreetMap (using [opening_hours:covid19=*](https://wiki.openstreetmap.org/wiki/Key:opening_hours:covid19) tag on individual features), or add rules concerning chain stores in [Covid enseignes repository](https://github.com/PanierAvide/Covid_enseignes#report-information).

Data derivated from Ça reste ouvert can be downloaded at this URL : https://download.osmontrouge.fr/caresteouvert/

## License

Copyright (c) "Ça reste ouvert" 2020

Released under the AGPL v3 terms, see the [LICENSE](LICENSE.txt) file to read the full text.
