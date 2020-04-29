<template>
  <v-list-item>
    <v-list-item-content>
      <v-list-item-title class="d-flex align-content-center">
        <div class="icon pb-1 d-inline-block">
          <v-icon
            class="mr-6"
          >{{ `osm-${type}` }}</v-icon>
          <v-icon
            class="status"
            :color="color"
          >{{ icon }}</v-icon>
        </div>
        <div class="d-inline-block">
          {{ $t(`details.${type}`) }}
          <br /><span class="caption">{{ this.status }}</span>
        </div>
      </v-list-item-title>
    </v-list-item-content>
    <v-list-item-action v-if="!success">
      <v-btn
        :disabled="loading"
        small
        outlined
        width="100%"
        color="success"
        @click="submit('yes')"
      >
        {{ $t('details.hygiene_entry.has') }}
      </v-btn>
      <v-btn
        :disabled="loading"
        small
        outlined
        width="100%"
        color="error"
        class="mt-1"
        @click="submit('no')"
      >
        {{ $t('details.hygiene_entry.hasnot') }}
      </v-btn>
    </v-list-item-action>
  </v-list-item>
</template>

<script>
import { apiUrl } from '../../config.json';
import parseId from '../../lib/parse_id';

const statuses = {
  yes: {
    icon: 'osm-check',
    color: 'success'
  },
  no: {
    icon: 'osm-close',
    color: 'error'
  },
  '': {
    icon: 'osm-unknown',
    color: ''
  }
};

export default {
  props: {
    place: {
      type: Object,
      required: true
    },

    type: {
      type: String,
      required: true
    },

    has: {
      type: String,
      required: false,
      default: ''
    }
  },

  data() {
    return {
      loading: false,
      success: false,
      submitted: null
    };
  },

  computed: {
    value() {
      return this.submitted !== null ? this.submitted : this.has;
    },

    icon() {
      return statuses[this.value].icon;
    },

    color() {
      return statuses[this.value].color;
    },

    status() {
      let date;
      if(this.place && this.place.properties && this.place.properties.tags && this.place.properties.tags['cro:date']) {
        const format = { day: 'numeric', month: 'long', hour: 'numeric' };
        date = new Date(this.place.properties.tags['cro:date'] * 1000).toLocaleString(this.$i18n.locale, format);
      }
      return this.$t(`details.hygiene_status.${this.value === '' ? 'void' : this.value}`, { date });
    }
  },

  methods: {
    payload(value) {
      const [ lon, lat ] = this.place.geometry.coordinates;
      return {
        name: this.place.properties.name,
        lat,
        lon,
        lang: this.$i18n.locale,
        tags: {
          [`vending:${this.type}`]: value
        }
      };
    },

    submit(value) {
      const { type, id } = parseId(this.place.id);
      this.loading = true;
      fetch(
        `${apiUrl}/contribute/${type}/${id}/custom`,
        {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(this.payload(value))
        }
      ).then((response) => {
        if (response.status === 200) {
          this.success = true;
          this.submitted = value;
        }
      }).finally(() => {
        this.loading = false
      });
    }
  }
};
</script>

<style scoped>
.icon {
  position: relative;
}
.icon .status {
  position: absolute;
  bottom: -5px;
  right: 8px;
}
</style>
