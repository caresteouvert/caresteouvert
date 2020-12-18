<template>
  <div>
    <h1 v-if="cityName" class="ml-3">{{ this.$t('bycity.title') + ' - ' + this.cityName }}</h1>
    <v-data-table
      :loading="loading"
      :loading-text="$t('bycity.loading')"
      :headers="headers"
      :items="shops"
      :options.sync="options"
      :server-items-length="shopsLength"
      class="elevation-1 ma-3"
      :footer-props="{ disableItemsPerPage: true }"
    >
      <template v-slot:item.cat="{ item }">
        <v-icon dense small class="mr-1">{{ 'osm-'+item.cat }}</v-icon> {{ item.catDisplay }}
      </template>

      <template v-slot:item.website="{ item }">
        <template v-if="item.website && item.website.length > 0">
          <a :href="item.websiteHref" target="_blank">{{ item.websiteShort }}</a>
        </template>
      </template>

      <template v-slot:item.phone="{ item }">
        <template v-if="item.phone && item.phone.length > 0">
          <v-btn :href="'tel:'+item.phone" small elevation="0">
            <v-icon>osm-phone</v-icon>
            {{ item.phoneDisplay }}
          </v-btn>
        </template>
      </template>

      <template v-slot:item.link="{ item }">
        <v-btn :href="item.link" target="_blank" :title="$t('bycity.table.link')" icon>
          <v-icon>osm-other</v-icon>
        </v-btn>
      </template>
    </v-data-table>
  </div>
</template>

<script>
import { poiCity } from '../config.json';
import PhoneNumber from 'awesome-phonenumber';

export default {
  components: {
  },

  props: {
    code: {
      type: String,
      required: true
    }
  },

  head() {
    return {
      title: `${this.$t('title')} - ${this.$t('bycity.title')} - ${this.cityName}`
    };
  },

  mounted() {
  },

  data() {
    return {
      options: { itemsPerPage: 30 },
      shops: [],
      loading: true,
      cityName: null,
      shopsLength: 0,
      headers: [
        { text: this.$t('bycity.table.name'), align: 'start', value: 'name' },
        { text: this.$t('bycity.table.cat'), value: 'cat' },
        { text: this.$t('bycity.table.website'), value: 'website', sortable: false },
        { text: this.$t('bycity.table.phone'), value: 'phone', sortable: false, align: 'center' },
        { text: this.$t('bycity.table.link'), value: 'link', sortable: false, align: 'center' }
      ]
    };
  },

  computed: {},

  watch: {
    options: {
      handler() {
        this.loadFromApi();
      },
      deep: true
    }
  },

  methods: {
    loadFromApi() {
      const { sortBy, sortDesc, page, itemsPerPage } = this.options;
      const offset = page && !isNaN(page) ? itemsPerPage * (page-1) : 0;
      const orderBy = sortBy && sortBy.length > 0 ? `${sortBy[0]}:${sortDesc && sortDesc.length > 0 && sortDesc[0] ? 'D' : 'A'}` : '';

      this.loading = true;
      return fetch(`${poiCity}?city_code=${this.code}&limit=${itemsPerPage}&offset=${offset}&orderBy=${orderBy}`)
      .then(data => data.json())
      .then(data => {
        this.loading = false;
        if(data.features.length > 0) {
          this.cityName = data.features[0].properties.city_name;
          this.shops = data.features.map(f => {
            const p = {
              ...f.properties,
              catDisplay: this.$t('categories.'+f.properties.cat),
              link: `/@${f.geometry.coordinates[1]},${f.geometry.coordinates[0]},17/place/${f.properties.fid}`,
              website: f.properties.tags.website || f.properties.tags['contact:website'],
              phone: f.properties.tags.phone || f.properties.tags['contact:phone']
            };

            if(p.phone) { p.phoneDisplay = new PhoneNumber(p.phone).getNumber('national') || p.phone; }
            if(p.website) {
              p.websiteHref = p.website.startsWith('http') ? p.website : 'http://' + p.website;
              p.websiteShort = p.website.replace(/^https?\:\/\//, "").replace(/\/$/, "");
            }

            return p;
          });
          this.shopsLength = offset + (data.numberReturned === itemsPerPage ? itemsPerPage + 1 : data.numberReturned);
        }
      });
    }
  }
}
</script>
