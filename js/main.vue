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
        <osm-map
          v-if="loadMap"
          :map-center.sync="mapCenter"
          :map-zoom.sync="mapZoom"
          :filters="filters"
          :featuresAndLocation="featuresAndLocation"
        />
      </v-content>
    </div>
    <router-view />
  </div>
</template>

<script>
import * as config from '../config.json';
import { encode, decode, encodePosition, decodePosition, encodeFeatures, decodeFeatures } from './url';
import OsmSidebar from './sidebar';
import OsmFilterFeatures from './filter_features';
import OsmMap from './map';

export default {
  components: {
    OsmFilterFeatures,
    OsmSidebar,
    OsmMap
  },

  props: {
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    }
  },

  data() {
    return {
      loadMap: false,
      isMobile: false,
      sidebar: false,
      mapCenter: null,
      mapZoom: null,
      mapStyle: `${config.mapStyle}${config.apiKey}`,
      filters: config.filters
    };
  },

  mounted() {
    this.computeIsMobile();
    this.sidebar = !this.isMobile;

    const { features, location } = decode(this.featuresAndLocation);
    if (!location) {
      this.centerMapViaGeoIP()
        .finally(() => {
          this.loadMap = true;
        });
    } else {
      const { lat, lng, zoom } = decodePosition(location, config);
      this.mapCenter = { lat, lng };
      this.mapZoom = zoom;
      this.loadMap = true;
    }
    decodeFeatures(features, config.filters);
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
    centerMapViaGeoIP() {
      return fetch(config.geoIpUrl)
        .then(res => res.json())
        .then(json => {
          this.mapCenter = { lat: json.ll[0], lng: json.ll[1] };
          this.mapZoom = 13;
        });
    },

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

    computeIsMobile() {
      this.isMobile = window.innerWidth < 800;
    },
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

.place-opened  .mapboxgl-ctrl-bottom-right, .place-opened .mapboxgl-ctrl-top-right {
  transform: translateX(-400px);
}
</style>
