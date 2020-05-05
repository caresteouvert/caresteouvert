<template>
  <div
    :class="{
       sm: isMobile,
      'place-opened': $route.name === 'place' && !isMobile,
      'sidebar-opened': sidebar && !isMobile
    }"
  >
    <div>
      <v-navigation-drawer
        v-if="!isMobile"
        v-model="sidebar"
        temporary
        stateless
        hide-overlay
        width="300"
        fixed
      >
        <filter-results
          v-if="filter !== ''"
          v-model="filter"
          :services.sync="filterServices"
          :featuresAndLocation="featuresAndLocation"
          :map-bounds="mapBounds"
        />
        <main-menu
          v-else
          :style="{ width: '300px' }"
        >
          <filter-list v-model="filter" />
        </main-menu>
      </v-navigation-drawer>
      <v-content>
        <top-toolbar
          v-model="filter"
          @toggleSidebar="sidebar = !sidebar"
          @onGeocode="updateMapBounds"
        />
        <client-only>
          <osm-map
            v-if="loadMap"
            ref="map"
            :sidebar="sidebar"
            :map-style="mapStyle"
            :map-center.sync="mapCenter"
            :map-zoom.sync="mapZoom"
            :map-bounds.sync="mapBounds"
            :filter="filter"
            :filter-services="filterServices"
            :featuresAndLocation="featuresAndLocation"
            @loaded="mapLoaded = true"
          />
          <v-slide-y-reverse-transition>
            <v-chip
              v-if="mapZoom < minZoomPoi"
              color="primary"
              class="zoom-chip mb-6"
              :class="{ 'push-up': !rgpdBannerHidden }"
              @click="mapZoom = minZoomPoi"
            >
              {{ $t('zoomtosee') }}
            </v-chip>
          </v-slide-y-reverse-transition>
          <rgpd-banner @consent="rgpdBannerHidden = true" />
          <apps-sheet />
        </client-only>
        <bottom-menu
          v-if="isMobile && mapLoaded"
          :filter="filter"
        >
          <filter-results
            v-if="filter != ''"
            v-model="filter"
            :services.sync="filterServices"
            :featuresAndLocation="featuresAndLocation"
            :map-bounds="mapBounds"
          />
          <main-menu
            v-else
            :show-brand="false"
          >
            <filter-list v-model="filter" />
          </main-menu>
        </bottom-menu>
      </v-content>
    </div>
    <nuxt-child/>
    <splash-screen v-if="!mapLoaded" />
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import debounce from 'lodash.debounce';
import config from '../config.json';
import { getCookie, setCookie } from '../lib/cookie';
import { encode, decode, encodePosition, decodePosition, encodeFilter, decodeFilter, findBrand } from '../lib/url';
import isMobile from './mixins/is_mobile';
import AppsSheet from './apps_sheet';
import MainMenu from './main_menu';
import FilterList from './filter_list';
import FilterResults from './filter_results';
import TopToolbar from './top_toolbar';
import BottomMenu from './bottom_menu';
import RgpdBanner from './rgpd_banner';
import SplashScreen from './splash_screen';

export default {
  components: {
    AppsSheet,
    BottomMenu,
    FilterList,
    FilterResults,
    MainMenu,
    RgpdBanner,
    SplashScreen,
    TopToolbar,
  },

  mixins: [isMobile],

  props: {
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    }
  },

  data() {
    return {
      filter: '',
      filterServices: [],
      loadMap: false,
      mapBounds: [],
      mapCenter: { lat: 0, lng: 0 },
      mapLoaded: false,
      mapStyle: null,
      mapZoom: 0,
      minZoomPoi: config.minZoomPoi,
      rgpdBannerHidden: false,
      sidebar: false,
    };
  },

  mounted() {
    this.$store.commit('setBrandId', findBrand(process.client ? window.location.host : (req.headers['x-forwarded-host'] || req.headers.host)).brand);
    this.sidebar = !this.isMobile;

    const { filter: filterPart, location } = decode(this.featuresAndLocation);
    const { filter, services } = decodeFilter(filterPart);
    this.filter = filter;
    this.filterServices = services;

    Promise.all([
      this.loadInitialLocation(location),
      this.loadAndOverrideMapStyle()
    ]).then(() => {
      this.loadMap = true;
      this.getCurrentCountry();
    });
  },

  computed: mapGetters(['categories', 'allCategories']),

  watch: {
    mapCenter() {
      this.updateRoute();
      this.saveCurrentView();
      this.refreshCurrentCountry();
    },

    mapZoom() {
      this.updateRoute();
      this.saveCurrentView();
    },

    filter() {
      this.updateRoute();
    },

    filterServices() {
      this.updateRoute();
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
      return fetch(`${config.mapStyle}${config.maptilerApiKey}`)
        .then(res => res.json())
        .then((data) => {
          data.sprite = createWebUrl('/sprite/caresteouvert');
          this.mapStyle = data;
        });
    },

    loadInitialLocation(location) {
      let promise;
      const savedMapView = this.savedMapView();
      if (location) {
        const { lat, lng, zoom } = decodePosition(location, config);
        this.mapCenter = { lat, lng };
        this.mapZoom = zoom;
        promise = Promise.resolve();
      } else if (savedMapView) {
        const { center, zoom } = JSON.parse(savedMapView);
        this.mapCenter = center;
        this.mapZoom = zoom;
        promise = Promise.resolve();
      } else {
        promise = this.centerMapViaGeoIP();
      }
      return promise;
    },

    centerMapViaGeoIP() {
      return fetch(config.geoIpUrl)
        .then(res => res.json())
        .then(json => {
          this.mapCenter = { lat: json.ll[0], lng: json.ll[1] };
          this.mapZoom = json.city !== '' ? 13 : 5;
        }).catch(() => {
          this.mapCenter = { lat: config.mapCenter[1], lng: config.mapCenter[0] };
          this.mapZoom = config.mapZoom;
        });
    },

    updateRoute() {
      if (!this.lastFeaturesAndLocation) {
        this.lastFeaturesAndLocation = this.featuresAndLocation;
      }
      const newFeaturesAndLocation = encode(
        encodeFilter(this.filter, this.filterServices),
        encodePosition(this.mapCenter.lat, this.mapCenter.lng, this.mapZoom)
      );
      if (this.lastFeaturesAndLocation === newFeaturesAndLocation) {
        return;
      }
      this.lastFeaturesAndLocation = newFeaturesAndLocation;
      this.$router.replace({
        name: this.$route.name,
        params: {
          ...this.$route.params,
          featuresAndLocation: newFeaturesAndLocation
        }
      });
    },

    updateMapBounds(bbox) {
      this.$refs.map.$emit('updateMapBounds', bbox);
    },

    savedMapView() {
      return getCookie('mapView');
    },

    saveCurrentView() {
      setCookie('mapView', JSON.stringify({ center: this.mapCenter, zoom: this.mapZoom }));
    },

    refreshCurrentCountry: debounce(function() {
      if (!this.lastMapCenter) {
        this.lastMapCenter = this.mapCenter;
      }
      const { lat: lat1, lng: lon1 } = this.mapCenter;
      const { lat: lat2, lng: lon2 } = this.lastMapCenter;
      const distance = this.getDistanceBetween2MapCenter(lat1, lon1, lat2, lon2);
      const tenKm = 10000;
      if (distance > tenKm) {
        this.lastMapCenter = this.mapCenter;
        this.getCurrentCountry();
      }
    }, 1),

    getCurrentCountry() {
      const { lat, lng } = this.mapCenter;
      fetch(`${config.apiUrl}/country?lat=${lat}&lon=${lng}`)
        .then(res => res.text())
        .then(area => {
          const country = area.split('-')[0];
          this.$store.commit('setCountry', country);
          this.$store.commit('setArea', area);
          const [category, subcategory] = this.filter.split('/');
          if (!this.categories.includes(category)) {
            this.filter = '';
          } else if (subcategory && !this.allCategories[category].subcategories[subcategory]) {
            this.filter = category;
          }
        });
    },

    getDistanceBetween2MapCenter(lat1, lon1, lat2, lon2) {
      const toRadians = (number) => number * Math.PI / 180;
      const R = 6371e3; // metres
      const φ1 = toRadians(lat1);
      const φ2 = toRadians(lat2);
      const Δφ = toRadians(lat2-lat1);
      const Δλ = toRadians(lon2-lon1);

      const a = Math.sin(Δφ/2) * Math.sin(Δφ/2) +
              Math.cos(φ1) * Math.cos(φ2) *
              Math.sin(Δλ/2) * Math.sin(Δλ/2);
      const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));

      return R * c;
    }
  }
}
</script>

<style>
.full-width {
  width: 100%;
}
.zoom-chip {
  position: fixed !important;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
}
.zoom-chip.push-up {
  bottom: 60px;
}
.sm .zoom-chip {
  bottom: 40px;
}
.sm .mapboxgl-ctrl-top-right {
  top: 50px;
}
.sm .mapboxgl-ctrl-bottom-right {
  bottom: 20px;
}
.place-opened .mapboxgl-ctrl-top-right, .place-opened .mapboxgl-ctrl-bottom-right {
  transform: translateX(-400px);
}
.sidebar-opened .search {
  transform: translateX(300px);
}
.text-pre {
  white-space: pre-line;
}
.v-navigation-drawer__content {
  display: flex;
}
</style>
