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
    class="autocomplete-big"
  >
    <template v-slot:item="{ item }">
      <v-list-item-content>
        <v-list-item-title v-text="item.text"></v-list-item-title>
        <v-list-item-subtitle v-text="item.region"></v-list-item-subtitle>
      </v-list-item-content>
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

      // Direct coordinates input ?
      let directCoordinates = null;
      if(/^-?\d+\.\d+[,;/]-?\d+\.\d+$/.test(val.trim().replace(/ /g, ''))) {
        const separator = val.includes(',') ? ',' : (val.includes('/') ? '/' : ';');
        const coordsLatLng = val.split(separator).map(c => parseFloat(c.trim()));
        const bbox = [ coordsLatLng[1] - 0.0005, coordsLatLng[0] - 0.0005, coordsLatLng[1] + 0.0005, coordsLatLng[0] + 0.0005 ];
        directCoordinates = {
          text: this.$t('coordinates'),
          region: coordsLatLng.join(', '),
          value: bbox
        };
        this.items = [ directCoordinates ];
      }

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
          if(directCoordinates) { this.items.unshift(directCoordinates); }
        })
        .catch(err => {
          this.error = err;
        })
        .finally(() => {
          this.isLoading = false;
        });
    }, 350, { maxWait: 500 }),
    selected(val) {
      if (Array.isArray(val)) {
        this.$emit('select', val);
      }
    }
  }
}
</script>

<style>
.xs .autocomplete-big input,
.sm .autocomplete-big input {
  font-size: 30px;
  line-height: 35px;
  max-height: 35px;
}

.xs .autocomplete-big .v-input__prepend-inner,
.sm .autocomplete-big .v-input__prepend-inner {
  margin-top: 6px;
}
</style>
