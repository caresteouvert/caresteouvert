<template>
  <v-autocomplete
    v-model="selected"
    :items="items"
    :loading="isLoading"
    :search-input.sync="search"
    :error="!!error"
    :placeholder="$t('search')"
    autofocus
    hide-no-data
    hide-details
    no-filter
    background-color="white"
    prepend-inner-icon="osm-magnify"
    @blur="$emit('blur')"
  >
    <template v-slot:item="{ item }">
      <v-list-item-content>
        <v-list-item-title v-text="item.text"></v-list-item-title>
        <v-list-item-subtitle v-text="item.region"></v-list-item-subtitle>
      </v-list-item-content>
      <v-list-item-action>
        <v-icon>mdi-coin</v-icon>
      </v-list-item-action>
    </template>
  </v-autocomplete>
</template>

<script>
import { jawgApiKey } from '../config.json';
import { countries } from '../categories.json';
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
      const boundary = countries.join(',');
      const url = `https://api.jawg.io/places/v1/search?boundary.country=${boundary}&lang=${this.$i18n.locale}&text=${encodeURIComponent(this.search)}&access-token=${jawgApiKey}`;

      fetch(url, { signal })
        .then(res => res.json())
        .then(body => {
          this.error = null;
          this.items = body.features.map((feature) => {
            return {
              text: feature.properties.label,
              region: feature.properties.region,
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
    }, 350, { maxWait: 500 }),
    selected(val) {
      this.$emit('select', val);
    }
  }
}
</script>
