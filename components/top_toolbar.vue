<template>
  <v-toolbar
    :dense="!isMobile || !geocoder"
    :height="isMobile && geocoder ? '70px' : undefined"
    class="search ml-md-5 mt-md-5"
  >
    <v-tooltip
      v-if="!isMobile"
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

    <template v-if="!geocoder">
      <img
        :alt="$t('subtitle-dense')"
        :src="logoMobile"
        class="img-header-mobile"
      />
      <v-spacer></v-spacer>
    </template>
    <v-tooltip
      v-if="!geocoder"
      bottom
    >
      <template v-slot:activator="{ on }">
        <v-btn
          icon
          v-on="on"
          @click="geocoder = true"
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
import i18nMixin from './mixins/i18n';
import isMobile from './mixins/is_mobile';

export default {
  components: {
    Geocoder
  },

  mixins: [i18nMixin, isMobile],

  data() {
    return {
      geocoder: false
    };
  },

  watch: {
    isMobile() {
      this.geocoder = !this.isMobile;
    }
  },

  methods: {
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
.sm .search {
  width: 100%;
}
.img-header-mobile {
  max-height: 40px;
  max-width: 80%;
}
</style>
