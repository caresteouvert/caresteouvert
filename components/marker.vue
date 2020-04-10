<template>
  <MglMarker
    ref="marker"
    :coordinates="coordinates"
    anchor="bottom"
  >
    <div slot="marker">
      <svg
        xmlns="http://www.w3.org/2000/svg"
        width="48"
        height="48"
        viewBox="0 0 48 48"
        class="marker-inside"
        @mouseover="togglePopup"
        @mouseout="togglePopup"
        @click.stop="$emit('open')"
      >
        <path
          :fill="color"
          d="M24 0c-9.8 0-17.7 7.8-17.7 17.4 0 15.5 17.7 30.6 17.7 30.6s17.7-15.4 17.7-30.6c0-9.6-7.9-17.4-17.7-17.4z"
        />
        <foreignObject x="9" y="3" width="30" height="30">
          <div class="marker-icon">
            <v-icon
              :color="color"
              size="20"
            >{{ icon }}</v-icon>
          </div>
        </foreignObject>
      </svg>
    </div>
    <MglPopup
      :offset="75"
      :close-button="false"
      @added="(e) => e.popup.remove()"
    >
      <div
        :style="{ 'background-color': color }"
        class="tooltip"
      >{{ name }}</div>
    </MglPopup>
  </MglMarker>
</template>

<script>
import { MglMarker, MglPopup } from 'vue-mapbox/dist/vue-mapbox.umd.js';

export default {
  components: { MglMarker, MglPopup },

  props: {
    coordinates: {
      type: Array,
      required: true
    },

    color: {
      type: String,
      required: true
    },

    name: {
      type: String,
      required: true
    },

    icon: {
      type: String,
      required: true
    }
  },

  methods: {
    togglePopup() {
      this.$refs.marker.togglePopup();
    },
  }
}
</script>

<style>
.mapboxgl-marker {
  transition: none;
}
.mapboxgl-marker:hover {
  z-index: 5;
}
.marker-inside {
  transition: transform .1s ease;
  transform-origin: bottom center;
  cursor: pointer;
}
.marker-inside:hover {
  transform: scale(1.5);
}
.marker-icon {
  background-color: white;
  border-radius: 20px;
  height: 30px;
  width: 30px;
}
.marker-icon i {
  height: 30px;
  width: 30px;
  padding: 5px;
}
.tooltip {
  font-weight: bold;
  background-color: white;
  border-radius: 5px;
  padding: 5px;
  color: white;
  margin-bottom: 5px;
}
.mapboxgl-popup-content {
  padding: 0;
  box-shadow: none;
  background: none;
}
.mapboxgl-popup-tip {
  border: 0;
}
</style>
