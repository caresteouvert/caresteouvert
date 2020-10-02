<template>
  <div class="d-flex align-center justify-center">
    <v-card
      tile
      flat
      width="700"
    >
      <v-card-title class="pa-0 ma-0 mb-3 justify-center">
        <img
          :alt="brand"
          :src="logo"
          class="pb-2 pt-1 px-3 logo"
        />
      </v-card-title>
      <v-card-subtitle class="pb-2 text-center">
        {{ brand }} is now closed! Thanks to all contributors, partners and visitors. See you later.
      </v-card-subtitle>
    </v-card>
  </div>
</template>

<script>
import isMobile from './mixins/is_mobile';
import i18n from './mixins/i18n';

export default {
  mixins: [isMobile, i18n],

  props: {
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
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
.sidebar-opened .search {
  transform: translateX(300px);
}
.sidebar-big-opened .search, .place-opened .search {
  transform: translateX(400px);
}
.text-pre {
  white-space: pre-line;
}
.v-navigation-drawer__content {
  display: flex;
}
</style>
