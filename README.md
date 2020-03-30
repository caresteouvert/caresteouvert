# Ça reste ouvert

![Logo de Ça reste ouvert](images/logo.png)

[Ça reste ouvert](https://caresteouvert.fr), la carte collaborative des lieux ouverts durant le confinement #Covid19.

Toutes les informations sur le projet sont ici : https://www.caresteouvert.fr/about


## Architecture

Pour déployer une instance complète de Ça reste ouvert, vous aurez besoin de :

- la carte
- [Une base de données PostgreSQL avec des données](db/)
- [pg_tileserv](https://access.crunchydata.com/documentation/pg_tileserv/latest/)
- [pg_featureserv](https://access.crunchydata.com/documentation/pg_featureserv/latest/)


## Développement

La façon la plus simple de contribuer à la carte est d'utiliser docker :

```bash
./script/server
```

Sinon, vous pouvez lancer directement les commandes avec npm ou yarn :

```bash
npm install
npm run sprites
npm run icons
npm run dev
```

Et vous pouvez vous rendre sur http://localhost:1234/.


## Traduction

Les traductions sont gérées sur Transifex, [rendez-vous ici pour traduire dans votre langue](https://www.transifex.com/openlevelup/ca-reste-ouvert/languages/).


## Licence

Copyright (c) "Ça reste ouvert" 2020

Mis à disposition sous licence AGPL, voir [LICENSE](LICENSE.txt) pour le texte complet de la licence.
