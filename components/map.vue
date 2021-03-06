<template>
  <MglMap
    :center="mapCenter"
    :zoom="mapZoom"
    :map-style="mapStyle"
    @load="load"
    @rotateend="maprotated"
    @update:center="updateMapCenter"
    @update:zoom="updateMapZoom"
    @update:bounds="updateMapBounds"
  >
    <MglMarker
      v-if="place"
      :key="place.id"
      :coordinates="place.geometry.coordinates"
      :offset="{ x: 0, y: -15 }"
      :color="placeColor"
    />
    <MglMarker
      v-if="highlightPlace"
      :coordinates="highlightPlace.geometry.coordinates"
      :offset="{ x: 0, y: -15 }"
      color="red"
    />
    <MglVectorLayer
      v-for="layer in layers"
      :key="layer.id"
      :clear-source="false"
      :layer-id="layer.id"
      :layer="layer"
      :source="poiSource"
      :before="layer.before"
      source-id="poi"
      @mouseenter="mouseenter"
      @click="clickPoi"
      @mouseleave="mouseleave"
    />
  </MglMap>
</template>

<script>
import 'mapbox-gl/dist/mapbox-gl.css';
import { mapState } from 'vuex';
import debounce from 'lodash.debounce';
import * as config from '../config.json';
import { readContributionFromStorage, pushContribution } from '../lib/recent_contributions';
import { rawColorForStatus } from '../lib/place';
import {
  MglMap,
  MglMarker,
  MglVectorLayer,
} from 'vue-mapbox/dist/vue-mapbox.umd';
import { GeolocateControl, NavigationControl } from 'mapbox-gl';
import isMobile from './mixins/is_mobile';

const source = "public.poi_osm_light";
const contribSource = "poi-contrib-src";

function getColorStroke(theme, contribs = readContributionFromStorage()) {
  return [
    'case',
    ["in", ["get", "fid"], ["literal", contribs.filter(c => c[1].startsWith("open")).map(c => c[0])]], rawColorForStatus('open', theme),
    ["in", ["get", "fid"], ["literal", contribs.filter(c => c[1] === "closed").map(c => c[0])]], rawColorForStatus('closed', theme),
    ["in", ["get", "status"], ["literal", ["open", "open_adapted"]]], rawColorForStatus('open', theme),
    ["in", ["get", "status"], ["literal", ["closed"]]], rawColorForStatus('closed', theme),
    rawColorForStatus('unknown', theme)
  ];
}

function getLayers(theme) {
  const conditionalOpacity = [
    'interpolate', ['linear'],
    ['zoom'],
    0, 0,
    12, [
      'case',
      ["in", ["get", "status"], ["literal", ["unknown", "partial", "closed"]]], 0,
      1
    ],
    14, [
      'case',
      ["in", ["get", "status"], ["literal", ["unknown", "partial", "closed"]]], 0,
      1
    ]
  ];

  const stockWidth = [
    'case',
    ["in", ["get", "status"], ["literal", ["open", "open_adapted"]]], 4,
    2.5
  ];

  return [
    {
      before: 'poi_label',
      id: "poi-background-strock-under",
      type: "circle",
      "source-layer": source,
      maxzoom: 15,
      paint: {
        'circle-opacity': [...conditionalOpacity, 15, 0],
        'circle-color': getColorStroke(theme),
        'circle-radius': [
          'interpolate',
          ['linear'],
          ['zoom'],
          12, 0,
          14, ['+', 3, stockWidth],
          15, ['+', [
              'case',
              ["in", ["get", "status"], ["literal", ["unknown", "partial", "closed"]]], 4,
              5
            ],
            stockWidth
          ],
          19, ['+', 14, stockWidth]
        ]
      }
    },
    {
      before: 'poi_label',
      id: "poi-background-under",
      type: "circle",
      "source-layer": source,
      maxzoom: 15,
      paint: {
        'circle-color': 'white',
        'circle-opacity': [...conditionalOpacity, 15, 0],
        'circle-radius': [
          'interpolate',
          ['linear'],
          ['zoom'],
          12, 0,
          14, 3,
          15, [
            'case',
            ["in", ["get", "status"], ["literal", ["unknown", "partial", "closed"]]], 4,
            5
          ]
        ]
      }
    },
    {
      id: "poi-background-strock",
      type: "circle",
      "source-layer": source,
      minzoom: 14,
      paint: {
        'circle-opacity': [...conditionalOpacity, 15, 1],
        'circle-color': getColorStroke(theme),
        'circle-radius': [
          'interpolate',
          ['linear'],
          ['zoom'],
          12, 0,
          14, ['+', 3, stockWidth],
          15, ['+', [
              'case',
              ["in", ["get", "status"], ["literal", ["unknown", "partial", "closed"]]], 4,
              5
            ],
            stockWidth
          ],
          19, ['+', 14, stockWidth]
        ]
      }
    },
    {
      id: "poi-background",
      type: "circle",
      "source-layer": source,
      minzoom: 14,
      paint: {
        'circle-color': 'white',
        'circle-opacity': [...conditionalOpacity, 15, 1],
        'circle-radius': [
          'interpolate',
          ['linear'],
          ['zoom'],
          12, 0,
          14, 3,
          15, [
            'case',
            ["in", ["get", "status"], ["literal", ["unknown", "partial", "closed"]]], 4,
            5
          ],
          19, 14
        ]
      }
    },
    {
      id: "poi-icon",
      type: "symbol",
      "source-layer": source,
      minzoom: 15,
      layout: {
        'symbol-sort-key': [
          'case',
          ["in", ["get", "status"], ["literal", ["open", "open_adapted"]]], 0,
          ["in", ["get", "status"], ["literal", ["closed"]]], 1,
          2
        ],
        "icon-image": [
          "coalesce",
          ['image', ['get', 'cat']],
          ['image', ['get', 'normalized_cat']],
          ['image', 'other']
        ],
        "icon-size": [
          'interpolate',
          ['linear'],
          ['zoom'],
          15, 0.3,
          19, 1
        ],
        "text-anchor": "top",
        "text-field": ["get", "name"],
        "text-font": [
          "Noto Sans Regular"
        ],
        "text-max-width": 9,
        "text-offset": [
          'interpolate',
          ['linear'],
          ['zoom'],
          14, ['literal', [0, 0]],
          19, ['literal', [0, 1.5]]
        ],
        "text-padding": 2,
        "text-size": 12,
        "text-optional": true
      },
      paint: {
        "icon-opacity": [
          'interpolate', ['linear'],
          ['zoom'],
          15, 0,
          16, 1
        ],
        "text-opacity": [
          'interpolate', ['linear'],
          ['zoom'],
          15, 0,
          17, 1
        ],
        "text-color": "#666",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1
      }
    }
  ];
}

const SIDEBAR_SIZE = 400;

export default {
  components: {
    MglMap,
    MglMarker,
    MglVectorLayer,
  },

  mixins: [isMobile],

  props: {
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    },

    mapStyle: {
      type: Object,
      required: true
    },

    mapCenter: {
      type: Object,
      required: true
    },

    mapZoom: {
      type: Number,
      required: true
    },

    filter: {
      type: String,
      required: true
    },

    filterServices: {
      type: Array,
      required: true
    },

    sidebar: {
      type: Boolean,
      required: true
    }
  },

  mounted() {
    this.$on('updateMapBounds', (bbox) => {
      this.map.fitBounds(bbox, { duration: 0 });
    });
  },

  computed: {
    ...mapState(['place', 'highlightPlace', 'contribution']),

    poiSource() {
      return {
        minzoom: config.minZoomPoi,
        maxzoom: config.maxZoomPoi,
        tiles: [ `${config.tilesUrl}/${source}/{z}/{x}/{y}.pbf` ]
      };
    },

    layers() {
      const [ category, subcategory ] = this.filter.split('/');
      const services = this.filterServices.map((service) => ['in', service, 'yes', 'only']);
      return getLayers(this.$vuetify.theme.themes.light).map((layer) => {
        const newLayer = { ...layer, filter: ['all'] };
        if (subcategory) {
          newLayer.filter.push(['==', 'cat', subcategory]);
        } else if (category !== '') {
          newLayer.filter.push(['==', 'normalized_cat', category]);
        }
        newLayer.filter.push(...services);
        return newLayer;
      });
    },

    placeColor() {
      return rawColorForStatus(this.place.properties.status, this.$vuetify.theme.themes.light);
    }
  },

  watch: {
    place(place) {
      if (!this.map) return;
      if (place) {
        const isPlaceUnderUI = (x, y) => {
          const height = document.body.clientHeight;
          const width = document.body.clientWidth;
          if (this.isMobile) {
            return (x < 0 || x > width || y > height / 2 || y < 0);
          } else {
            const offsetSidebar = this.sidebar ? SIDEBAR_SIZE : 0;
            return (x < offsetSidebar || x > width || y > height || y < 0);
          }
        }
        const { x, y } = this.map.project(place.geometry.coordinates);
        if (isPlaceUnderUI(x, y)) {
          this.map.panTo(place.geometry.coordinates, { offset: [0, this.isMobile ? (-document.body.clientHeight / 4) : 0] });
        }
      }
    },

    contribution(contribution) {
      if(contribution) {
        // Update layer coloring
        this.map.setPaintProperty('poi-background', 'circle-stroke-color', getColorStroke(this.$vuetify.theme.themes.light, pushContribution(contribution)));
        this.$store.commit('setContribution', null);
      }
    }
  },

  methods: {
    load({ map }) {
      this.map = map;

      // Controls
      this.navcontrol = new NavigationControl({ showCompass: false, showZoom: !this.isMobile });
      this.geoloccontrol = new GeolocateControl({ positionOptions: { enableHighAccuracy: true } });
      this.map.addControl(this.navcontrol, 'top-right');
      this.map.addControl(this.geoloccontrol, 'top-right');

      this.$emit('loaded');
      this.updateMapBounds(map.getBounds());
    },

    updateMapCenter(mapCenter) {
      this.$emit('update:mapCenter', mapCenter);
    },

    updateMapZoom(mapZoom) {
      this.$emit('update:mapZoom', mapZoom);
    },

    updateMapBounds: debounce(function (mapBounds) {
      if (!this.isMobile) {
        const height = document.body.clientHeight;
        const width = document.body.clientWidth;
        const bounds = [
          this.map.unproject([SIDEBAR_SIZE, 0]).toArray(),
          this.map.unproject([width, height]).toArray()
        ];
        this.$emit('update:mapBounds', bounds);
      } else {
        this.$emit('update:mapBounds', mapBounds.toArray());
      }
    }, 1000),

    mouseenter(e) {
      e.map.getCanvas().style.cursor = 'pointer';
    },

    mouseleave(e) {
      e.map.getCanvas().style.cursor = '';
    },

    maprotated(e) {
      const showCompass = this.map.getBearing() !== 0;
      if(!this.navcontrol || this.navcontrol.options.showCompass !== showCompass) {
        if(this.navcontrol) {
          this.map.removeControl(this.navcontrol);
          this.map.removeControl(this.geoloccontrol);
        }
        this.navcontrol = new NavigationControl({ showCompass: showCompass, showZoom: !this.isMobile });
        this.map.addControl(this.navcontrol, 'top-right');
        this.map.addControl(this.geoloccontrol, 'top-right');
      }
    },

    clickPoi(e) {
      const id = e.mapboxEvent.features[0].properties.fid;
      if (this.$route.name === 'place' && this.$route.params.id === id) {
        return;
      }
      this.$router.push({
        name: 'place',
        params: {
          id,
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

.xs .mapboxgl-control-container button,
.sm .mapboxgl-control-container button {
  width: 35px;
  height: 35px;
}
</style>
