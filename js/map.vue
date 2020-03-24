<template>
  <div
    v-resize="computeIsMobile"
    :class="{ 'place-opened': $route.name === 'place' && !isMobile }"
  >
    <div>
      <v-navigation-drawer
        v-model="sidebar"
        :temporary="isMobile"
        :stateless="!isMobile"
        :hide-overlay="!isMobile || !sidebar"
        width="300"
        fixed
      >
        <osm-sidebar>
          <osm-filter-features :filters="filters" />
        </osm-sidebar>
      </v-navigation-drawer>
      <v-container
        v-show="!isMobile"
        :class="{ 'handle--closed': !sidebar }"
        fill-height
        tag="a"
        class="handle"
        @click.prevent="sidebar = !sidebar"
      >
        <v-icon
          v-if="sidebar"
          v-text="'$vuetify.icons.prev'"
        ></v-icon>
        <v-icon
          v-else
          v-text="'$vuetify.icons.next'"
        ></v-icon>
      </v-container>
      <v-content>
        <v-btn
          v-show="isMobile"
          fixed
          fab
          dark
          top
          left
          color="pink"
          @click="sidebar = !sidebar"
        >
          <v-icon>osm-filter_list</v-icon>
        </v-btn>
        <MglMap
          :center.sync="mapCenter"
          :zoom.sync="mapZoom"
          :map-style="mapStyle"
          @load="load"
        >
          <MglNavigationControl :show-compass="false" />
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
      </v-content>
    </div>
    <router-view />
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
import { MglMap, MglNavigationControl, MglVectorLayer } from 'vue-mapbox/dist/vue-mapbox.umd';
import { encode, decode, encodePosition, decodePosition, encodeFeatures, decodeFeatures } from './url';
import OsmSidebar from './sidebar';
import OsmFilterFeatures from './filter_features';

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
    MglMap,
    MglNavigationControl,
    MglVectorLayer,
    OsmFilterFeatures,
    OsmSidebar
  },

  props: {
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    }
  },

  data() {
    const { features, location } = decode(this.featuresAndLocation);
    const { lat, lng, zoom } = decodePosition(location, config);
    const params = new URLSearchParams(features);
    decodeFeatures(features, config.filters);
    return {
      icons,
      isMobile: false,
      sidebar: false,
      mapCenter: { lat, lng },
      mapZoom: zoom,
      mapStyle: `${config.mapStyle}${config.apiKey}`,
      filters: config.filters,
      layers
    };
  },

  mounted() {
    this.computeIsMobile();
    this.sidebar = !this.isMobile;
  },

  computed: {
    poiSource() {
      return {
        minzoom: 10,
        maxzoom: 20,
        tiles: ["https://covid-back.osmontrouge.fr/public.poi_osm/{z}/{x}/{y}.pbf"]
      };
    }
  },

  watch: {
    mapCenter() {
      this.updateRoute();
    },

    mapZoom() {
      this.updateRoute();
    },

    filters: {
      deep: true,
      handler() {
        this.updateRoute();
      }
    }
  },

  methods: {
    updateRoute() {
      this.$router.replace({
        name: this.$route.name,
        params: {
          ...this.$route.params,
          featuresAndLocation: encode(
            encodeFeatures(this.filters),
            encodePosition(this.mapCenter.lat, this.mapCenter.lng, this.mapZoom)
          )
        }
      });
    },

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

    computeIsMobile() {
      this.isMobile = window.innerWidth < 800;
    },

    openDetail(id) {
      this.$router.push({
        name: 'place',
        params: {
          id: id,
          featuresAndLocation: this.featuresAndLocation
        }
      });
    },

    mouseenter(e) {
      e.map.getCanvas().style.cursor = 'pointer';
    },

    mouseleave(e) {
      e.map.getCanvas().style.cursor = '';
    },

    clickPoi(e) {
      this.openDetail(e.mapboxEvent.features[0].properties.fid);
    }
  }
}
</script>

<style>
.handle {
  position: absolute;
  top: 170px;
  transform: translateX(300px);
  padding: 24px 0 !important;
  height: 70px;
  width: 25px;
  background-color: white;
  z-index: 5;
  box-shadow: 0 3px 1px -2px #0003,0 2px 2px 0 #00000024,0 1px 5px 0 #0000001f;
}

.handle--closed {
  transform: translateX(0);
}

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

.fullscreen {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 10;
  width: 100vw;
  height: 100vh;
}

.place-opened  .mapboxgl-ctrl-bottom-right, .place-opened .mapboxgl-ctrl-top-right {
  transform: translateX(-400px);
}
</style>
