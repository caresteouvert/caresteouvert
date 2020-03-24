<template>
  <div>
    <MglMap
      :center="mapCenter"
      :zoom="mapZoom"
      :map-style="mapStyle"
      @load="load"
      @update:center="updateMapCenter"
      @update:zoom="updateMapZoom"
    >
      <MglNavigationControl :show-compass="false" />
      <MglGeolocateControl />
      <MglVectorLayer
        v-for="layer in layers"
        :key="layer.id"
        :clear-source="false"
        :layer-id="layer.id"
        :layer="layer"
        :source="poiSource"
        source-id="poi"
        @mouseenter="mouseenter"
        @click="clickPoi"
        @mouseleave="mouseleave"
      />
    </MglMap>
    <img
      v-for="(icon, key) in icons"
      v-show="false"
      :ref="key"
      :src="icon"
   />
  </div>
</template>

<script>
import * as config from '../config.json';
import icons from '../icons/*.svg';
import { MglMap, MglNavigationControl, MglGeolocateControl, MglVectorLayer } from 'vue-mapbox/dist/vue-mapbox.umd';

const layers = [
  {
    id: "poi-open-background",
    type: "circle",
    "source-layer": "public.poi_osm",
    filter: [
      "all",
      [
        "in",
        "status",
        "ouvert",
        "ouvert_adapté",
      ]
    ],
    paint: {
      'circle-color': 'green',
      'circle-radius': [
        'interpolate',
        ['linear'],
        ['zoom'],
        14, 6,
        19, 17
      ]
    }
  },
  {
    id: "poi-unknow-background",
    type: "circle",
    "source-layer": "public.poi_osm",
    filter: [
      "all",
      [
        "in",
        "status",
        "inconnu",
        "partiel",
      ]
    ],
    paint: {
      'circle-color': 'gray',
      'circle-radius': [
        'interpolate',
        ['linear'],
        ['zoom'],
        14, 6,
        19, 17
      ]
    }
  },
  {
    id: "poi-white-bg",
    type: "circle",
    "source-layer": "public.poi_osm",
    filter: [
      "all",
      [
        "in",
        "status",
        "ouvert",
        "ouvert_adapté",
        "inconnu",
        "partiel",
      ]
    ],
    paint: {
      'circle-color': 'white',
      'circle-radius': [
        'interpolate',
        ['linear'],
        ['zoom'],
        14, 3,
        19, 14
      ]
    }
  },
  {
    id: "poi-open",
    type: "symbol",
    "source-layer": "public.poi_osm",
    filter: [
      "all",
      [
        "in",
        "status",
        "ouvert",
        "ouvert_adapté",
      ]
    ],
    "layout": {
      "icon-image": [
        "coalesce",
        ['image', ['concat', ['get', 'cat'], '_11']],
        ['image', 'shop_11']
      ],
      "icon-size": [
        'interpolate',
        ['linear'],
        ['zoom'],
        14, 0.4,
        19, 0.9
      ],
      "text-anchor": "top",
      "text-field": ["get", "name"],
      "text-font": [
        "Noto Sans Regular"
      ],
      "text-max-width": 9,
      "text-offset": [
        0,
        1
      ],
      "text-padding": 2,
      "text-size": 12
    },
    paint: {
      "text-color": "#666",
      "text-halo-blur": 0.5,
      "text-halo-color": "#ffffff",
      "text-halo-width": 1
    }
  },
  {
    id: "poi-unknow",
    type: "symbol",
    "source-layer": "public.poi_osm",
    filter: [
      "all",
      [
        "in",
        "status",
        "inconnu",
        "partiel",
      ]
    ],
    "layout": {
      "icon-image": [
        "coalesce",
        ['image', ['concat', ['get', 'cat'], '_11']],
        ['image', 'shop_11']
      ],
      "icon-size": [
        'interpolate',
        ['linear'],
        ['zoom'],
        14, 0.4,
        19, 0.9
      ],
      "text-anchor": "top",
      "text-field": ["get", "name"],
      "text-font": [
        "Noto Sans Regular"
      ],
      "text-max-width": 9,
      "text-offset": [
        0,
        1
      ],
      "text-padding": 2,
      "text-size": 12
    },
    paint: {
      "text-color": "#666",
      "text-halo-blur": 0.5,
      "text-halo-color": "#ffffff",
      "text-halo-width": 1
    }
  }
];

export default {
  components: {
    MglGeolocateControl,
    MglMap,
    MglNavigationControl,
    MglVectorLayer,
  },

  props: {
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    },

    mapCenter: {
      type: Object,
      required: true
    },

    mapZoom: {
      type: Number,
      required: true
    },

    filters: {
      type: Object,
      required: true
    }
  },

  data() {
    return {
      icons,
      mapStyle: `${config.mapStyle}${config.apiKey}`
    };
  },

  computed: {
    poiSource() {
      return {
        minzoom: 10,
        maxzoom: 20,
        tiles: ["https://covid-back.osmontrouge.fr/public.poi_osm/{z}/{x}/{y}.pbf"]
      };
    },

    layers() {
      const unselectedCategories = Object.keys(this.filters).reduce((memo, filter) => {
        if (!this.filters[filter].selected) {
          memo.push(...this.filters[filter].cats);
        }
        return memo;
      }, []);
      return layers.map((layer) => {
        const newLayer = { ...layer, filter: [...layer.filter] };
        newLayer.filter.push([
          "!in",
          "cat",
          ...unselectedCategories
        ]);
        return newLayer;
      });
    }
  },

  methods: {
    load({ map }) {
      this.registerIcons(map);
    },

    registerIcons(map) {
      for (let icon in this.icons) {
        const name = `${icon}_11`;
        if (map.hasImage(name)) {
          map.removeImage(name);
        }
        map.addImage(name, this.$refs[icon][0]);
      }
    },

    updateMapCenter(mapCenter) {
      this.$emit('update:mapCenter', mapCenter);
    },

    updateMapZoom(mapZoom) {
      this.$emit('update:mapZoom', mapZoom);
    },

    mouseenter(e) {
      e.map.getCanvas().style.cursor = 'pointer';
    },

    mouseleave(e) {
      e.map.getCanvas().style.cursor = '';
    },

    clickPoi(e) {
      this.$router.push({
        name: 'place',
        params: {
          id: e.mapboxEvent.features[0].properties.fid,
          featuresAndLocation: this.featuresAndLocation
        }
      });
    }
  }
}
</script>

<style>
.mgl-map-wrapper {
  width: 100vw;
  height: 100vh;
  position: relative;
}

.mgl-map-wrapper .mapboxgl-map {
  height: 100%;
  left: 0;
  position: absolute;
  top: 0;
  width: 100%;
}
</style>
