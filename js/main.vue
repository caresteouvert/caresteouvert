<template>
  <div
    v-resize="computeIsMobile"
    :class="{
       xs: $vuetify.breakpoint.xsOnly,
      'place-opened': $route.name === 'place' && !isMobile,
      'sidebar-opened': sidebar && !isMobile
     }"
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
      <v-content>
        <v-toolbar
          dense
          class="search ml-sm-5 mt-sm-5"
        >
          <v-tooltip bottom>
            <template v-slot:activator="{ on }">
              <v-btn
                icon
                @click="sidebar = !sidebar"
                v-on="on"
              >
                <v-icon>osm-filter_list</v-icon>
              </v-btn>
            </template>
            <span>{{ $t('menu') }}</span>
          </v-tooltip>

          <h2
            v-if="!geocoder"
            class="subtitle-1 title-mobile"
          >{{ $t('subtitle-dense') }}</h2>
          <v-spacer v-if="!geocoder"></v-spacer>
          <v-tooltip
            v-if="!geocoder"
            bottom
          >
            <template v-slot:activator="{ on }">
              <v-btn
                icon
                @click="geocoder = !geocoder"
                v-on="on"
              >
                <v-icon>osm-magnify</v-icon>
              </v-btn>
            </template>
            <span>{{ $t('search') }}</span>
          </v-tooltip>

          <geocoder
            v-if="geocoder"
            @select="updateMapBounds"
          />
          <geolocate @input="updateMapCenter" />
        </v-toolbar>
        <osm-map
          v-if="loadMap"
          ref="map"
          :map-style="mapStyle"
          :map-center.sync="mapCenter"
          :map-zoom.sync="mapZoom"
          :filters="filters"
          :featuresAndLocation="featuresAndLocation"
        />
        <a
          href="https://blog.caresteouvert.fr/about/"
          target="_blank"
        >
          <img
            v-if="isMobile"
            :alt="$t('title')"
            class="logo-map"
            src="../images/logo.png"
            />
        </a>
      </v-content>
    </div>
    <router-view />
  </div>
</template>

<script>
import * as config from '../config.json';
import { encode, decode, encodePosition, decodePosition, encodeFeatures, decodeFeatures } from './url';
import Geocoder from './geocoder';
import Geolocate from './geolocate';
import OsmSidebar from './sidebar';
import OsmFilterFeatures from './filter_features';
import OsmMap from './map';

export default {
  components: {
    Geocoder,
    Geolocate,
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
      geocoder: false,
      mapStyle: null,
      mapCenter: null,
      mapZoom: null,
      mapStyle: `${config.mapStyle}${config.apiKey}`,
      filters: config.filters
    };
  },

  mounted() {
    this.computeIsMobile();

    this.sidebar = !this.isMobile;
    this.geocoder = !this.isMobile;

    const { features, location } = decode(this.featuresAndLocation);
    decodeFeatures(features, config.filters);

    Promise.all([
      this.loadInitialLocation(location),
      this.loadAndOverrideMapStyle()
    ]).then(() => { this.loadMap = true; });
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
    loadAndOverrideMapStyle() {
      function createWebUrl(url) {
        const a = document.createElement("a")
        a.href = url
        // Fix populating Location properties in IE. Otherwise, protocol will be blank.
        a.href = a.href
        return a.href
      }
      return fetch(`${config.mapStyle}${config.apiKey}`)
        .then(res => res.json())
        .then((data) => {
          data.sprite = createWebUrl('/sprite/caresteouvert');
          this.mapStyle = data;
        });
    },

    loadInitialLocation(location) {
      let promise;
      if (!location) {
        promise = this.centerMapViaGeoIP();
      } else {
        const { lat, lng, zoom } = decodePosition(location, config);
        this.mapCenter = { lat, lng };
        this.mapZoom = zoom;
        promise = Promise.resolve();
      }
      return promise;
    },

    centerMapViaGeoIP() {
      return fetch(config.geoIpUrl)
        .then(res => res.json())
        .then(json => {
          this.mapCenter = { lat: json.ll[0], lng: json.ll[1] };
          this.mapZoom = 13;
        }).catch(() => {
          this.mapCenter = { lat: config.mapCenter[1], lng: config.mapCenter[0] };
          this.mapZoom = config.mapZoom;
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

    updateMapBounds(bbox) {
      this.$refs.map.$emit('updateMapBounds', bbox);
    },

    updateMapCenter(coords) {
      this.$refs.map.$emit('updateMapCenter', coords);
    },

    computeIsMobile() {
      this.isMobile = window.innerWidth < 800;
    },
  }
}
</script>

<style>
.title-mobile {
  line-height: 1.2 !important;
}
.xs .mapboxgl-ctrl-top-right {
  top: 50px;
}
.place-opened .mapboxgl-ctrl-top-right, .place-opened .mapboxgl-ctrl-bottom-right {
  transform: translateX(-400px);
}
.sidebar-opened .search {
  transform: translateX(300px);
}
.search {
  position: absolute;
  z-index: 4;
}
.xs .search {
  width: 100%;
}
.logo-map {
  position: absolute;
  bottom: 10px;
  left: 10px;
  max-width: 30%;
  max-height: 50px;
  background: #ffffffe8;
  border-radius: 10px;
  padding: 5px;
}
</style>
