<template>
  <div class="full-width">
    <div class="d-flex pa-2">
      <h1 class="title">{{ $t(`categories.${category}`) }}</h1>
      <v-btn
        icon
        @click="$emit('input', '')"
      >
        <v-icon>osm-close</v-icon>
      </v-btn>
    </div>

    <filter-subcategories
      :value="value"
      :category="category"
      :column="!isMobile"
      :class="{ 'px-2': !isMobile }"
      @input="(v) => $emit('input', v)"
    />

    <filter-services
      :value="services"
      :services="availableServices"
      @input="(s) => $emit('update:services', s)"
    />

    <v-skeleton-loader
      v-if="loading && !results"
      type="list-item-two-line@10"
    />
    <v-list v-else-if="results">
      <template v-for="place in results.features">
        <v-divider />
        <place-dense
          :key="place.id"
          :place="place"
          :featuresAndLocation="featuresAndLocation"
          :display-type="!hasSelectedSubCategory"
          @mouseenter.native="$store.commit('setPlace', place)"
          @mouseleave.native="$store.commit('setPlace', null)"
        />
      </template>
      <v-divider />
    </v-list>
    <div
      v-else
      class="pa-2"
    >
      {{ $t('filter_noresults') }}
    </div>
    <div class="d-flex mb-2">
      <v-spacer />
      <v-btn
        :disabled="loading || offset === 0"
        icon
        @click="updateOffset(offset - 10)"
      >
        <v-icon>osm-chevron_left</v-icon>
      </v-btn>
      <v-btn
        :disabled="loading || !results || results.numberReturned < 10"
        icon
        @click="updateOffset(offset + 10)"
      >
        <v-icon>osm-chevron_right</v-icon>
      </v-btn>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import _debounce from 'lodash.debounce';
import { poiFeature } from '../config.json';
import { availableSubFilters } from '../lib/categories';
import isMobile from './mixins/is_mobile';
import PlaceDense from './place/dense';
import FilterSubcategories from './filter_subcategories';
import FilterServices from './filter_services';

const debounce = process.env.NODE_ENV === 'production' ? _debounce : fn => fn;

export default {
  components: {
    FilterServices,
    FilterSubcategories,
    PlaceDense
  },

  mixins: [isMobile],

  props: {
    value: {
      type: String,
      required: true
    },

    services: {
      type: Array,
      required: true
    },

    mapBounds: {
      type: Array,
      required: true,
    },

    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    }
  },

  data() {
    return {
      loading: true,
      offset: 0,
      results: null
    };
  },

  mounted() {
    this.fetchResults();
  },

  computed: {
    ...mapGetters(['allCategories']),

    category() {
      return this.value.split('/')[0];
    },

    hasSelectedSubCategory() {
      return this.value.includes('/');
    },

    filterName() {
      return this.hasSelectedSubCategory ? 'cat' : 'normalized_cat';
    },

    filterValue() {
      return this.hasSelectedSubCategory ? this.value.split('/')[1] : this.value;
    },

    availableServices() {
      return availableSubFilters(this.allCategories, this.value);
    }
  },

  watch: {
    mapBounds(value, oldValue) {
      this.offset = 0;
      this.fetchResults();
    },

    value() {
      this.offset = 0;
      this.fetchResults();
    },

    services() {
      this.results = null;
      this.offset = 0;
      this.loading = true;
      this.fetchResults();
    }
  },

  methods: {
    updateOffset(offset) {
      this.offset = offset;
      this.results = null;
      this.loading = true;
      this.fetchResults();
    },

    fetchResults: debounce(function () {
      if (this.value === '' || this.mapBounds.length === 0) {
        this.loading = false;
        return;
      }
      this.loading = true;
      const params = [
        ['limit', 10],
        ['offset', this.offset],
        ['bbox', this.mapBounds],
        [this.filterName, this.filterValue],
        ['orderBy', 'status_order'],
        ...this.services.map(service => [service, 'yes,only'])
      ];
      fetch(`${poiFeature}?${new URLSearchParams(params)}`)
        .then(res => res.json())
        .then((json) => {
          this.results = json;
          this.loading = false;
        }).catch(() => {
          this.results = null;
          this.loading = false;
        });
    }, 1000)
  }
}
</script>
