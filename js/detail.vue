<template>
  <div
    v-resize="resize"
    :class="{ 'bottom-dialog': isMobile, 'right-sidebar': !isMobile }"
  >
    <v-slide-x-reverse-transition>
      <v-card
        v-if="point"
        tile
        min-height="100%"
        class="d-flex flex-column"
      >
        <v-toolbar
          tile
          dark
          class="flex-grow-0"
        >
          <v-icon>{{ `osm-${point.properties.cat}` }}</v-icon>
          <v-toolbar-title
            :title="title"
            class="ml-3 toolbar-title"
          >
            {{ title || type }}
            <template v-if="title">
              <br>
              <span class="subtitle-1">{{ type }}</span>
            </template>
          </v-list-item>
          </v-toolbar-title>
          <v-spacer></v-spacer>
          <v-btn
            icon
            dark
            @click="close">
            <v-icon>osm-close</v-icon>
          </v-btn>
        </v-toolbar>

        <detail-state
          :point="point"
          :status="status"
        />

        <v-alert
          v-if="infos"
          v-html="infos"
          v-linkified:options="{ className: 'alert-link' }"
          :icon="false"
          type="info"
          tile
          class="mb-0"
        >
        </v-alert>

        <v-list>
          <detail-link
            v-if="contact('phone')"
            :href="`tel:${contact('phone')}`"
            :title="contact('phone')"
            icon="osm-phone"
          />
          <detail-link
            v-if="contact('mobile')"
            :href="`tel:${contact('mobile')}`"
            :title="contact('mobile')"
            icon="osm-phone"
          />

          <detail-link
            v-if="contact('email')"
            :href="contact('email')"
            :title="contact('email')"
            icon="osm-mail"
          />

          <detail-link
            v-if="contact('facebook')"
            :href="contact('facebook')"
            :title="contact('facebook')"
            icon="osm-fcbk"
          />

          <detail-opening-hours
            v-if="point.properties.opening_hours && point.properties.opening_hours !== 'open'"
            :value="point.properties.opening_hours"
          />
          <detail-link
            v-else-if="point.properties.brand_hours"
            :href="point.properties.brand_hours"
            :title="$t('details.containment_brand_hours')"
            icon="osm-time"
          />
          <template
            v-else-if="point.properties.tags.opening_hours"
          >
            <v-alert
              dense
              tile
              :icon="false"
              border="left"
              colored-border
              type="warning"
              class="mb-0 pa-0"
            >
              <div class="ml-3">{{ $t('details.containment_opening_hours') }}</div>
              <detail-opening-hours
                v-if="point.properties.tags.opening_hours"
                :value="point.properties.tags.opening_hours"
              />
            </v-alert>
          </template>

          <detail-link
            v-if="contact('website')"
            :href="contact('website')"
            :title="contact('website')"
            icon="osm-link"
          />

        </v-list>
        <v-spacer></v-spacer>
        <v-footer tile>
          <osm-link :id="id" />
        </v-footer>
      </v-card>
    </v-slide-x-reverse-transition>
  </div>
</template>

<script>
import { poiFeature, apiKey } from '../config.json';
import DetailTag from './detail_tag';
import DetailEntry from './detail_entry';
import DetailOpeningHours from './detail_opening_hours';
import DetailState from './detail_state';
import DetailLink from './detail_link';
import OsmLink from './osm_link';

export default {
  components: {
    DetailEntry,
    DetailLink,
    DetailOpeningHours,
    DetailState,
    DetailTag,
    OsmLink
  },

  props: {
    id: {
      type: String,
      required: true
    },
    featuresAndLocation: {
      type: String,
      required: false,
      default: ''
    }
  },

  mounted() {
    this.resize();
    this.updatePoint();
  },

  data() {
    return {
      isMobile: true,
      point: null
    };
  },

  computed: {
    title() {
      return this.point.properties.name;
    },

    type() {
      const trad = this.$t(`details.feature.${this.point.properties.cat}`);
      return trad.startsWith('details.') ? null : trad;
    },

    contact() {
      const tags = this.point.properties.tags;
      return (name) => {
        return tags[name] || tags[`contact:${name}`];
      };
    },

    status() {
      const fallback = { "ouvert": "open", "ouvert_adapté": "open_adapted", "partiel": "partial", "fermé": "closed", "inconnu": "unknown" };
      return fallback[this.point.properties.status] || this.point.properties.status;
    },

    infos() {
      const infos = [];

      // Takeaway
      if(this.point.properties.tags['takeaway:covid19'] && !this.$t(`details.takeaway.${this.point.properties.tags['takeaway:covid19']}`).startsWith('details.')) {
        infos.push(this.$t(`details.takeaway.${this.point.properties.tags['takeaway:covid19']}`));
      }
      else if(['ouvert', 'ouvert_adapté', 'open', 'open_adapted'].includes(this.point.properties.status) && this.point.properties.tags.takeaway && !this.$t(`details.takeaway.${this.point.properties.tags.takeaway}`).startsWith('details.')) {
        infos.push(this.$t(`details.takeaway.${this.point.properties.tags.takeaway}`));
      }

      // Delivery
      if(this.point.properties.tags['delivery:covid19'] && !this.$t(`details.delivery.${this.point.properties.tags['delivery:covid19']}`).startsWith('details.')) {
        infos.push(this.$t(`details.delivery.${this.point.properties.tags['delivery:covid19']}`));
      }
      else if(['ouvert', 'ouvert_adapté', 'open', 'open_adapted'].includes(this.point.properties.status) && this.point.properties.tags.delivery && !this.$t(`details.delivery.${this.point.properties.tags.delivery}`).startsWith('details.')) {
        infos.push(this.$t(`details.delivery.${this.point.properties.tags.delivery}`));
      }

      // POI information
      if(this.point.properties.brand_infos) {
        infos.push(this.point.properties.brand_infos);
      }

      return infos.join(" | ");
    }
  },

  watch: {
    id() {
      this.point = null;
      this.updatePoint();
    }
  },

  methods: {
    resize() {
      this.isMobile = window.innerWidth < 800;
    },

    updatePoint() {
      fetch(`${poiFeature}/${this.id}.json`)
        .then(data => data.json())
        .then((feature) => {
          this.point = feature;
        });
    },

    close() {
      this.$router.push({ name: 'index', params: { featuresAndLocation: this.featuresAndLocation } })
    }
  }
}
</script>

<style scoped>
.toolbar-title {
  line-height: 1;
}
.right-sidebar {
  width: 400px;
  height: 100vh;
  position: fixed;
  top: 0;
  right: 0;
  z-index: 10;
  overflow-y: auto;
}

.bottom-dialog {
  width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 10;
  overflow-y: auto;
}
>>>.alert-link {
  color: white;
}
</style>
