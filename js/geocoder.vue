<template>
  <v-autocomplete
    v-model="selected"
    :items="items"
    :loading="isLoading"
    :search-input.sync="search"
    :error="!!error"
    :placeholder="$t('search')"
    hide-no-data
    hide-details
    no-filter
    background-color="white"
    prepend-inner-icon="osm-magnify"
  />
</template>

<script>
import { jawgApiKey } from '../config.json';
import debounce from 'lodash.debounce';

export default {
  data() {
    return {
      isLoading: false,
      items: [],
      search: '',
      selected: null,
      error: null
    };
  },

  watch: {
    search: debounce(function (val) {
      if (this.controller) {
        this.controller.abort();
        this.controller = null;
      }
      if (!val || val.trim().length < 3) return;
      this.error = null;
      this.isLoading = true;
      this.controller = new AbortController();
      const signal = this.controller.signal;

      fetch(`https://api.jawg.io/places/v1/search?boundary.country=FRA&text=${encodeURIComponent(this.search)}&access-token=${jawgApiKey}`, { signal })
        .then(res => res.json())
        .then(body => {
          this.error = null;
          this.items = body.features.map((feature) => {
            return {
              text: feature.properties.label,
              value: feature.bbox ? feature.bbox : feature.geometry.coordinates.concat(feature.geometry.coordinates)
            };
          });
        })
        .catch(err => {
          this.error = err;
        })
        .finally(() => {
          this.isLoading = false;
        });
    }, 350),
    selected(val) {
      this.$emit('select', val);
    }
  }
}
</script>
