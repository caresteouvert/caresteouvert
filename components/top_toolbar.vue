<template>
  <div class="search ml-md-5 mt-md-5">
    <v-toolbar
      :dense="!isMobile || !geocoder"
      :height="isMobile && geocoder ? '70px' : undefined"
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

      <template v-if="!geocoder && category">
        {{ $t(`categories.${category}`) }}
        <v-spacer></v-spacer>
        <v-btn
          icon
          @click="updateValue()"
        >
          <v-icon>osm-close</v-icon>
        </v-btn>
      </template>
      <template v-else-if="!geocoder">
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
    <template v-if="isMobile && allCategories[category]">
      <v-chip-group
        :value="value"
        show-arrows
        class="subcategories"
        @change="updateSubCategory"
      >
        <v-chip
          v-for="(_, subcategory) in allCategories[category].subcategories"
          :key="subcategory"
          :value="`${category}/${subcategory}`"
          color="white"
          active-class="primary--text"
        >
          <v-icon small>{{ `osm-${subcategory}` }}</v-icon>
          <span class="pl-1">{{ $t(`categories.${subcategory}`) }}</span>
        </v-chip>
      </v-chip-group>
    </template>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import Geocoder from './geocoder';
import i18nMixin from './mixins/i18n';

export default {
  components: {
    Geocoder
  },

  mixins: [i18nMixin],

  props: {
    value: {
      type: String,
      required: true
    }
  },

  data() {
    return {
      geocoder: false,
      isMobile: false
    };
  },

  mounted() {
    this.resize();
    this.geocoder = !this.isMobile;
  },

  computed: {
    ...mapGetters(['allCategories']),

    category() {
      return this.value.split('/')[0];
    }
  },

  methods: {
    resize() {
      this.isMobile = this.$vuetify.breakpoint.smAndDown;
    },

    onGeocoderSelect(bbox) {
      this.geocoder = !this.isMobile;
      this.$emit('onGeocode', bbox);
    },

    onGeocoderBlur() {
      this.geocoder = !this.isMobile;
    },

    updateValue(value) {
      this.$emit('input', value || '');
    },

    updateSubCategory(choice) {
      if (!choice) {
        this.updateValue(this.value.split('/')[0]);
      } else {
        this.updateValue(choice)
      }
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
.subcategories {
  margin-right: 50px;
}
</style>
