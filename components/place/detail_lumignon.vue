<template>
  <div v-if="brandId == 'lyon'">
    <v-list class="py-0">
        <v-list-item>
          <v-list-item-icon>
            <v-icon>{{ `osm-candle` }}</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-title>
              Vente de Lumignons du Cœur
              <v-icon :color="color">{{ icon }}</v-icon>
            </v-list-item-title>
            <v-list-item-subtitle v-if="details">
              <a href="https://www.lyon.fr/actualite/solidarite/les-benefices-des-lumignons-du-coeur-aux-petits-freres-des-pauvres" target="_blank">Achetez un lumignon à 2€<br />et soutenez l’association<br />Les Petits Frères des Pauvres</a>
            </v-list-item-subtitle>
            <v-list-item-subtitle>{{ status }}</v-list-item-subtitle>
            <v-list-item-subtitle v-if="!success">
              <v-btn
                :disabled="loading"
                small
                outlined
                color="success"
                @click="submit('yes')"
              >
                Oui
              </v-btn>
              <v-btn
                :disabled="loading"
                small
                outlined
                color="error"
                @click="submit('no')"
              >
                Non
              </v-btn>
            </v-list-item-subtitle>
          </v-list-item-content>
          <v-list-item-icon>
            <v-btn
              icon
              @click="details = !details"
            >
              <v-icon>{{ `osm-info` }}</v-icon>
            </v-btn>
          </v-list-item-icon>
        </v-list-item>
    </v-list>
  </div>
</template>

<script>
import { mapState } from 'vuex';
import { apiUrl } from '../../config.json';
import parseId from '../../lib/parse_id';
import { getRecentContribution } from '../../lib/recent_contributions';

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
      submitted: null,
      details: false
    };
  },

  computed: {
    ...mapState(['brandId']),

    value() {
      const contrib = getRecentContribution(this.place.id);
      if(contrib && contrib.length >= 4 && contrib[3].lumignon) {
        return contrib[3].lumignon;
      }
      else {
        return this.submitted !== null ? this.submitted : this.has;
      }
    },

    icon() {
      return statuses[this.value].icon;
    },

    color() {
      return statuses[this.value].color;
    },

    status() {
      let date;
      const contrib = getRecentContribution(this.place.id);

      if (this.success) {
        date = new Date();
      } else if (contrib && contrib.length >= 4 && contrib[3].lumignon) {
        date = new Date(contrib[2] * 1000);
      } else if(this.place && this.place.properties && this.place.properties.tags && this.place.properties.tags['cro:date']) {
        date = new Date(this.place.properties.tags['cro:date'] * 1000);
      }
      const format = { day: 'numeric', month: 'long' };
      return this.$t(`details.hygiene_status.${this.value === '' ? 'void' : this.value}`, { date: date && date.toLocaleString(this.$i18n.locale, format) });
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
          [`vending:lumignon`]: value
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
          this.$store.commit('setContribution', [
            this.place.properties.fid,
            'same',
            parseInt((Date.now() / 1000).toFixed(0)),
            { lumignon: value }
          ]);
        }
      }).finally(() => {
        this.loading = false
      });
    }
  }
};
</script>
