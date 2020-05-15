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
import parseId from '../lib/parse_id';

const SOURCE_LAYER = "public.poi_osm_qa";

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

      const description = `
<a href="${config.osmUrl}/${osmid.type}/${osmid.id}" target="_blank">${p.name || osmid.type+'/'+osmid.id}</a>
<br />Catégorie : ${p.normalized_cat}
<br />Infos de contact : ${p.has_contact ? "renseignées" : "non renseignées"}
<br />Horaires : ${p.opening_hours ? "renseignées" : "non renseignées"}`;

      this.showPopup(e, features[0], description);
    },

    clickOsmose(e) {
      if(!e.map || !e.mapboxEvent) { return; }
      const features = e.map.queryRenderedFeatures(e.mapboxEvent.point);
      if(!features || features.length === 0) { return; }

      const p = features[0].properties;
      const description = `
<a href="${config.osmoseUrl}/error/${p.uuid}" target="_blank">Commerce manquant</a>
<br />${osmoseClasses[p.class] || ""}`;

      this.showPopup(e, features[0], description);
    },

    showPopup(e, feature, description) {
      const coordinates = feature.geometry.coordinates.slice();

      while (Math.abs(e.mapboxEvent.lngLat.lng - coordinates[0]) > 180) {
        coordinates[0] += e.mapboxEvent.lngLat.lng > coordinates[0] ? 360 : -360;
      }

      new Popup()
        .setLngLat(coordinates)
        .setHTML(description)
        .addTo(e.map);
    }
  }
}
</script>
