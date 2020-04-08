<template>
  <v-toolbar
    :dense="!isMobile || !geocoder"
    :height="isMobile && geocoder ? '70px' : undefined"
    class="search ml-sm-5 mt-sm-5"
    v-resize="resize"
  >
    <v-tooltip
      v-if="!isMobile || !geocoder"
      bottom
    >
      <template v-slot:activator="{ on }">
        <v-btn
          icon
          v-on="on"
          @click.native="$emit('toggleSidebar')"
        >
          <v-icon>osm-filter_list</v-icon>
        </v-btn>
      </template>
      <span>{{ $t('menu') }}</span>
    </v-tooltip>

    <img
      v-if="!geocoder"
      :alt="$t('subtitle-dense')"
      class="img-header-mobile"
      src="../images/logo_header.png"
    />
    <v-spacer v-if="!geocoder"></v-spacer>
    <v-tooltip
      v-if="!geocoder"
      bottom
    >
      <template v-slot:activator="{ on }">
        <v-btn
          icon
          v-on="on"
          @click="geocoder = !geocoder"
        >
          <v-icon>osm-magnify</v-icon>
        </v-btn>
      </template>
      <span>{{ $t('search') }}</span>
    </v-tooltip>

    <geocoder
      v-show="geocoder"
      @select="onGeocoderSelect"
      @blur="onGeocoderBlur"
    />
  </v-toolbar>
</template>

<script>
import Geocoder from './geocoder';

export default {
  components: {
    Geocoder
  },

  data() {
    return {
      geocoder: false,
      isMobile: false
    };
  },

  mounted() {
    this.resize();
  },

  methods: {
    resize() {
      this.isMobile = window.innerWidth < 800;
      this.geocoder = !this.isMobile;
    },

    onGeocoderSelect(bbox) {
      this.geocoder = !this.isMobile;
      this.$emit('onGeocode', bbox);
    },

    onGeocoderBlur() {
      this.geocoder = !this.isMobile;
    }
  }
}
</script>

<style>
.search {
  position: absolute;
  z-index: 4;
}
.xs .search {
  width: 100%;
}
.img-header-mobile {
  max-height: 40px;
  max-width: 80%;
}
</style>
