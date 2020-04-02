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
    background-color="white"
    prepend-inner-icon="osm-magnify"
  />
</template>

<script>
import { jawgApiKey } from '../config.json';

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
    search(val) {
      if (!val || val.trim().length < 3 || this.isLoading) return;
      this.error = null;
      this.isLoading = true;

      fetch(`https://api.jawg.io/places/v1/search?boundary.country=FRA&text=${encodeURIComponent(this.search)}&access-token=${jawgApiKey}`)
        .then(res => res.json())
        .then(body => {
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
        .finally(() => (this.isLoading = false))
    },
    selected(val) {
      this.$emit('select', val);
    }
  }
}
</script>
