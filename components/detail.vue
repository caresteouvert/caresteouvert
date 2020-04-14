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
          <v-icon>{{ `osm-${category}` }}</v-icon>
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
          ref="state"
          :point="point"
          :status="status"
        />

        <v-alert
          v-if="infos"
          v-html="infos"
          v-linkified:options="{ className: 'alert-link', attributes: { rel: 'noopener' } }"
          :icon="false"
          type="info"
          tile
          class="mb-0"
        >
        </v-alert>

        <v-list>
          <detail-link
            v-if="hasVending"
            :title="$t(`details.vending.${point.properties.tags.vending}`)"
            icon="osm-vending_machine"
          />
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
            icon="osm-mobile_phone"
          />

          <detail-link
            v-if="contact('email')"
            :href="`mailto:${contact('email')}`"
            :title="contact('email')"
            icon="osm-mail"
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
            v-if="contact('facebook')"
            :href="contact('facebook')"
            :title="contact('facebook')"
            icon="osm-fcbk"
          />

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
import { poiFeature } from '../config.json';
import DetailTag from './detail_tag';
import DetailEntry from './detail_entry';
import DetailOpeningHours from './detail_opening_hours';
import DetailState from './detail_state';
import DetailLink from './detail_link';
import OsmLink from './osm_link';
import { encodePosition } from './url';

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

  head() {
    if (!this.point) {
      return {};
    }
    const [lng, lat] = this.point.geometry.coordinates;
    return {
      title: `${this.title || this.type} - ${this.$t('title')}`,
      meta: [
        { hid: 'ogurl', property: 'og:url',  content: `${this.$rootUrl}${encodePosition(lat, lng, 18)}/place/${this.id}` },
        { hid: 'ogtitle', property: 'og:title', content: this.$t('title') }
      ],
      link: [
        { hid: 'canonical', rel: 'canonical', href: `${this.$rootUrl}place/${this.id}` }
      ]
    }
  },

  mounted() {
    this.resize();
    this.beforeUnloadListener = (event) => {
      if (this.$refs.state && this.$refs.state.contribute) {
        event.preventDefault();
        event.returnValue = '';
      }
    };
    window.addEventListener('beforeunload', this.beforeUnloadListener);
  },

  beforeDestroy() {
    window.removeEventListener('beforeunload', this.beforeUnloadListener);
  },

  fetch() {
    return this.updatePoint();
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

    category() {
      return this.point.properties.cat === 'unknown' ? 'other' : this.point.properties.cat;
    },

    hasVending() {
      return this.$te(`details.vending.${this.point.properties.tags.vending}`);
    },

    type() {
      const key = `categories.${this.point.properties.cat}`;
      return this.$te(key) ? this.$t(key) : this.$t('categories.other');
    },

    contact() {
      const transform = {
        facebook(url) {
          if (!url) return url;
          return url.startsWith('http') ? url : `https://facebook.com/${url}`;
        }
      };
      const tags = this.point.properties.tags;
      return (name) => {
        const value = tags[name] || tags[`contact:${name}`];
        const transformFunc = transform[name] || (v => v);
        return transformFunc(value);
      };
    },

    status() {
      return this.point.properties.status;
    },

    infos() {
      const infos = [];
      const isOpen = ['open', 'open_adapted'].includes(this.point.properties.status);
      const isOpenOrPartial = ['open', 'open_adapted', 'partial'].includes(this.point.properties.status);

      // Access
      if (this.point.properties.tags['access:covid19'] === 'no') {
        infos.push(this.$t('details.not_accessible'));
      }

      // Takeaway
      if (isOpenOrPartial && this.point.properties.tags['takeaway:covid19'] && this.$te(`details.takeaway.${this.point.properties.tags['takeaway:covid19']}`)) {
        infos.push(this.$t(`details.takeaway.${this.point.properties.tags['takeaway:covid19']}`));
      } else if (isOpen && this.point.properties.tags.takeaway && this.$te(`details.takeaway.${this.point.properties.tags.takeaway}`)) {
        infos.push(this.$t(`details.takeaway.${this.point.properties.tags.takeaway}`));
      }

      // Delivery
      if (isOpenOrPartial && this.point.properties.tags['delivery:covid19'] && this.$te(`details.delivery.${this.point.properties.tags['delivery:covid19']}`)) {
        infos.push(this.$t(`details.delivery.${this.point.properties.tags['delivery:covid19']}`));
      } else if(isOpen && this.point.properties.tags.delivery && !this.$te(`details.delivery.${this.point.properties.tags.delivery}`)) {
        infos.push(this.$t(`details.delivery.${this.point.properties.tags.delivery}`));
      }

      // Drive-through
      if (isOpenOrPartial && this.point.properties.tags['drive_through:covid19'] && this.$te(`details.drive_through.${this.point.properties.tags['drive_through:covid19']}`)) {
        infos.push(this.$t(`details.drive_through.${this.point.properties.tags['drive_through:covid19']}`));
      } else if (isOpen && this.point.properties.tags.drive_through && this.$te(`details.drive_through.${this.point.properties.tags.drive_through}`)) {
        infos.push(this.$t(`details.drive_through.${this.point.properties.tags.drive_through}`));
      }

      // POI information
      if (this.point.properties.brand_infos) {
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
      return fetch(`${poiFeature}/${this.id}.json`)
        .then(data => data.json())
        .then((feature) => {
          this.point = feature;
        });
    },

    close() {
      this.$router.push({ name: 'index', params: { featuresAndLocation: this.$route.params.featuresAndLocation } })
    },

    beforeRouteUpdate(to, from, next) {
      let result = true;
      if (to.params.id !== from.params.id && this.$refs.state && this.$refs.state.contribute) {
        result = window.confirm(this.$t('details.signal_warning'));
      }
      next(result);
    },

    beforeRouteLeave(to, from, next) {
      let result = true;
      if (this.$refs.state && this.$refs.state.contribute) {
        result = window.confirm(this.$t('details.signal_warning'));
      }
      next(result);
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
