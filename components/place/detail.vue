<template>
  <div
    v-resize="resize"
    :class="{ 'bottom-dialog': isMobile, 'right-sidebar': !isMobile }"
  >
    <v-slide-x-reverse-transition>
      <v-card
        v-if="place"
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
          :place="place"
          :status="status"
          :last_update="last_update"
        />

        <v-alert
          v-if="infos"
          :icon="false"
          type="info"
          tile
          class="mb-0"
        >
          <p
            v-html="infos"
            v-linkified:options="{ className: 'alert-link', attributes: { rel: 'noopener' } }"
            class="mb-0 overflowwrap-anywhere"
          />
        </v-alert>

        <v-list>
          <detail-link
            v-if="hasVending"
            :title="$t(`details.vending.${place.properties.tags.vending}`)"
            icon="osm-vending_machine"
          />
          <template v-if="contact('phone')">
            <detail-link
              v-for="phone in contact('phone').split(';')"
              :key="phone"
              :href="`tel:${phone}`"
              :title="phone"
              icon="osm-phone"
            />
          </template>
          <template v-if="contact('mobile')">
            <detail-link
              v-for="mobile in contact('mobile').split(';')"
              :key="mobile"
              :href="`tel:${mobile}`"
              :title="mobile"
              icon="osm-mobile_phone"
            />
          </template>
          <detail-link
            v-if="contact('fax')"
            :title="contact('fax')"
            icon="osm-fax"
          />

          <detail-link
            v-if="contact('email')"
            :href="`mailto:${contact('email')}`"
            :title="contact('email')"
            icon="osm-mail"
          />

          <detail-opening-hours
            v-if="place.properties.opening_hours && place.properties.opening_hours !== 'open'"
            :value="place.properties.opening_hours"
          />
          <detail-link
            v-else-if="place.properties.brand_hours"
            :href="place.properties.brand_hours"
            :title="$t('details.containment_brand_hours')"
            icon="osm-chevron_right"
          />
          <template
            v-else-if="place.properties.tags.opening_hours"
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
                v-if="place.properties.tags.opening_hours"
                :value="place.properties.tags.opening_hours"
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
import { poiFeature, osmUrl } from '../../config.json';
import DetailOpeningHours from './detail_opening_hours';
import DetailState from './detail_state';
import DetailLink from './detail_link';
import OsmLink from '../osm_link';
import { encodePosition } from '../../lib/url';
import parseId from '../../lib/parse_id';

export default {
  components: {
    DetailLink,
    DetailOpeningHours,
    DetailState,
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
    if (!this.place) {
      return {};
    }
    const [lng, lat] = this.place.geometry.coordinates;
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
    return this.updatePlace();
  },

  data() {
    return {
      isMobile: true,
      place: null,
      last_update: null
    };
  },

  computed: {
    title() {
      return this.place.properties.name;
    },

    category() {
      return this.place.properties.cat === 'unknown' ? 'other' : this.place.properties.cat;
    },

    hasVending() {
      return this.$te(`details.vending.${this.place.properties.tags.vending}`);
    },

    type() {
      const key = `categories.${this.place.properties.cat}`;
      return this.$te(key) ? this.$t(key) : this.$t('categories.other');
    },

    contact() {
      const transform = {
        facebook(url) {
          if (!url) return url;
          return url.startsWith('http') ? url : `https://facebook.com/${url}`;
        }
      };
      const tags = this.place.properties.tags;
      return (name) => {
        const value = tags[name] || tags[`contact:${name}`];
        const transformFunc = transform[name] || (v => v);
        return transformFunc(value);
      };
    },

    status() {
      return this.place.properties.status;
    },

    infos() {
      const infos = [];
      const isOpen = ['open', 'open_adapted'].includes(this.place.properties.status);
      const isOpenOrPartial = ['open', 'open_adapted', 'partial'].includes(this.place.properties.status);

      // Access
      if (this.place.properties.tags['access:covid19'] === 'no') {
        infos.push(this.$t('details.not_accessible'));
      }

      const addInfosDependingOfTagAndStatus = (tagName) => {
        const tagCovid19 = this.place.properties.tags[`${tagName}:covid19`];
        const tag = this.place.properties.tags[tagName];
        if (isOpenOrPartial && tagCovid19 && this.$te(`details.${tagName}.${tagCovid19}`)) {
          infos.push(this.$t(`details.${tagName}.${tagCovid19}`));
        } else if (isOpen && tag && this.$te(`details.${tagName}.${tag}`)) {
          infos.push(this.$t(`details.${tagName}.${tag}`));
        }
      };

      addInfosDependingOfTagAndStatus('takeaway');
      addInfosDependingOfTagAndStatus('delivery');
      addInfosDependingOfTagAndStatus('drive_through');

      // Maximal capacity
      if (!isNaN(parseInt(this.place.properties.tags['capacity:covid19']))) {
        infos.push(this.$tc('details.capacity', this.place.properties.tags['capacity:covid19']));
      }

      // POI information
      if (this.place.properties.brand_infos) {
        infos.push(this.place.properties.brand_infos);
      }

      return infos.join(" | ");
    }
  },

  watch: {
    id() {
      this.place = null;
      this.updatePlace();
    }
  },

  methods: {
    resize() {
      this.isMobile = this.$vuetify.breakpoint.smAndDown;
    },

    updatePlace() {
      const { type, id } = parseId(this.id);

      return Promise.all([
        fetch(`${poiFeature}/${this.id}.json?precision=7`)
        .then(data => data.json())
        .then((place) => {
          this.place = place;
          this.$store.commit('setPlace', place);
        }).catch(() => {
          this.$nuxt.context.redirect(`/${this.$route.params.featuresAndLocation || ''}`);
        }),
        fetch(`${osmUrl}/api/0.6/${type}/${id}`)
        .then(data => data.text())
        .then(xml => {
          const match = xml.match(/timestamp="(.+?)"/);
          if(match && match.length > 1) {
            this.last_update = new Date(match[1]);
          }
        })
      ]);
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
      if (result) {
        this.$store.commit('setPlace', null);
      }
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
.overflowwrap-anywhere {
  overflow-wrap: anywhere;
}
>>>.alert-link {
  color: white;
}
</style>
