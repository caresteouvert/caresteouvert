<template>
  <MglMap
    :map-style="mapStyle"
    hash
  >
    <MglVectorLayer
      :sourceId="osmoseSource.id"
      :source="osmoseSource"
      layerId="osmose"
      :layer="osmoseLayer"
      @mouseenter="mouseenter"
      @mouseleave="mouseleave"
      @click="clickOsmose"
    />

    <MglVectorLayer
      :sourceId="poiSource.id"
      :source="poiSource"
      layerId="poi"
      :layer="poiLayer"
      @mouseenter="mouseenter"
      @mouseleave="mouseleave"
      @click="clickPoi"
    />
  </MglMap>
</template>

<script>
import 'mapbox-gl/dist/mapbox-gl.css';
import {
  MglMap,
  MglVectorLayer
} from 'vue-mapbox/dist/vue-mapbox.umd';
import { Popup } from 'mapbox-gl';
import * as config from '../config.json';
import { categories } from '../categories.json';
import parseId from '../lib/parse_id';

const SOURCE_LAYER = "public.poi_osm_qa";

// List ignored subcategories for QA
const ignoredSubcategories = [];
Object.values(categories).forEach(cat => {
  Object.entries(cat.subcategories)
  .filter(e => e[1].show_qa === false)
  .forEach(e => ignoredSubcategories.push(e[0]));
});

// Load classes from Osmose API
const osmoseClasses = {};
fetch(`${config.osmoseUrl}/api/0.3beta/items`)
.then(function(data) { return data.json(); })
.then(function(categories) {
  categories.categories.forEach(function(cat) {
    cat.items.forEach(function(itm) {
      if(itm.item === 8310) {
        itm.class.forEach(function(cls) {
          osmoseClasses[cls.class] = cls.title.auto;
        });
      }
    });
  });
});

export default {
  components: {
    MglMap,
    MglVectorLayer
  },

  props: {
    mapStyle: {
      type: String,
      required: true
    },
  },

  data() {
    return {
      poiSource: {
        id: "poi",
        type: "vector",
        tiles: [ `${config.tilesUrl}/${SOURCE_LAYER}/{z}/{x}/{y}.pbf` ],
        minzoom: 11
      },

      poiLayer: {
        type: "circle",
        "source-layer": SOURCE_LAYER,
        layout: {
          "circle-sort-key": [
            "case",
            ["all", ["!", ["has", "opening_hours"]], ["!", ["get", "has_contact"]]], 3,
            ["any", ["!", ["has", "opening_hours"]], ["!", ["get", "has_contact"]]], 2,
            1
          ],
        },
        paint: {
          "circle-color": [
            "case",
            ["all", ["!", ["has", "opening_hours"]], ["!", ["get", "has_contact"]]], "#c62828",
            ["any", ["!", ["has", "opening_hours"]], ["!", ["get", "has_contact"]]], "#F9A825",
            "#388E3C"
          ],
          "circle-radius": [
            "interpolate",
            ["linear"],
            ["zoom"],
            11, 2,
            14, 5,
            19, 13
          ],
          "circle-opacity": [
            "case",
            ["in", ["get", "cat"], ["literal", ignoredSubcategories]], 0,
            1
          ]
        }
      },

      osmoseSource: {
        id: "osmose",
        type: "vector",
        tiles: [ `${config.osmoseUrl}/api/0.3beta/issues/{z}/{x}/{y}.mvt?item=8310` ],
        minzoom: 11
      },

      osmoseLayer: {
        type: "circle",
        "source-layer": "issues",
        paint: {
          'circle-color': '#546E7A',
          'circle-radius': [
            'interpolate',
            ['linear'],
            ['zoom'],
            11, 2,
            14, 5,
            19, 13
          ]
        }
      },
    };
  },

  methods: {
    mouseenter(e) {
      e.map.getCanvas().style.cursor = 'pointer';
    },

    mouseleave(e) {
      e.map.getCanvas().style.cursor = '';
    },

    clickPoi(e) {
      if(!e.map || !e.mapboxEvent) { return; }
      const features = e.map.queryRenderedFeatures(e.mapboxEvent.point);
      if(!features || features.length === 0) { return; }

      const p = features[0].properties;
      const osmid = parseId(p.fid);
      const needsCity = p.name && (!p.has_contact || !p.opening_hours);

      // Lookup for city name
      if(needsCity) {
        fetch(`https://api.jawg.io/places/v1/reverse?access-token=${config.jawgApiKey}&point.lon=${e.mapboxEvent.lngLat.lng}&point.lat=${e.mapboxEvent.lngLat.lat}&layers=locality`)
        .then(res => res.json())
        .then(res => {
          if(res && res.features && res.features.length > 0) {
            const link = document.getElementById("lnk-search-poi");
            link.href += `+${encodeURIComponent(res.features[0].properties.label)}`;
          }
        });
      }

      // Display popup
      const description = document.createElement("div");

      const title = document.createElement("a");
      title.href = `${config.osmUrl}/${osmid.type}/${osmid.id}`;
      title.target = "_blank";
      title.innerHTML = `${p.name || osmid.type+'/'+osmid.id}`;
      description.appendChild(title);

      const list = document.createElement("ul");
      const entries = [
        `Catégorie : ${p.normalized_cat}/${p.cat}`,
        `Infos de contact : ${p.has_contact ? "renseignées" : "non renseignées"}`,
        `Horaires : ${p.opening_hours ? "renseignées" : "non renseignées"}`
      ];
      entries.forEach(e => {
        const cat = document.createElement("li");
        cat.innerHTML = e;
        list.appendChild(cat);
      });
      description.appendChild(list);

      const josm = document.createElement("a");
      josm.innerHTML = 'Éditer dans JOSM';
      josm.addEventListener("click", () => fetch(`http://127.0.0.1:8111/load_object?objects=${p.fid}`));
      description.appendChild(josm);

      if(needsCity) {
        const website = document.createElement("a");
        website.id = "lnk-search-poi";
        website.href = `https://duckduckgo.com/?q=!+${encodeURIComponent(p.name)}`;
        website.target = "_blank";
        website.rel = "noopener";
        website.innerHTML = "Trouver le site web";
        description.appendChild(document.createTextNode(" - "));
        description.appendChild(website);
      }

      this.showPopup(e, features[0], description);
    },

    clickOsmose(e) {
      if(!e.map || !e.mapboxEvent) { return; }
      const features = e.map.queryRenderedFeatures(e.mapboxEvent.point);
      if(!features || features.length === 0) { return; }

      const p = features[0].properties;
      const description = `
<a href="${config.osmoseUrl}/fr/error/${p.uuid}" target="_blank">Commerce manquant</a>
<br />${osmoseClasses[p.class] || ""}`;

      this.showPopup(e, features[0], description);
    },

    showPopup(e, feature, description) {
      const coordinates = feature.geometry.coordinates.slice();

      while (Math.abs(e.mapboxEvent.lngLat.lng - coordinates[0]) > 180) {
        coordinates[0] += e.mapboxEvent.lngLat.lng > coordinates[0] ? 360 : -360;
      }

      const popup = new Popup().setLngLat(coordinates);

      if(typeof description === "string") {
        popup.setHTML(description);
      }
      else {
        popup.setDOMContent(description);
      }

      popup.addTo(e.map);
    }
  }
}
</script>
