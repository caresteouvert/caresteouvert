<template>
  <v-sheet
    v-touch="{ up: moveUp, down: moveDown }"
    :elevation="3"
    :tile="!isMobile"
    :height="`${height}vh`"
    :class="{ 'bottom-dialog': isMobile, 'left-sidebar': !isMobile }"
  >
    <v-card
      :loading="!place"
      tile
      min-height="100%"
      class="d-flex flex-column"
    >
      <slot />
      <v-toolbar
        v-if="place"
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
      <div v-if="place">
        <detail-state
          ref="state"
          :place="place"
          :status="status"
          :last-update="lastUpdate"
        />

        <v-list
          v-if="infos.length > 0 || hasVending"
          class="py-0"
        >
          <v-list-item v-if="infos.length > 0">
            <v-list-item-icon><v-icon>osm-info</v-icon></v-list-item-icon>
            <v-list-item-content>
              <p
                v-for="info in infos"
                :key="info"
                v-html="info"
                v-linkified:options="{ className: 'alert-link', attributes: { rel: 'noopener' } }"
                class="mb-0 overflowwrap-anywhere"
              />
            </v-list-item-content>
          </v-list-item>

          <detail-link
            v-if="hasVending"
            :title="$t(`details.vending.${place.properties.tags.vending}`)"
            icon="osm-vending_machine"
          />
        </v-list>

        <detail-lumignon
          :place="place"
        />

        <template v-if="services.length > 0">
          <v-subheader>{{ $t('details.services') }}</v-subheader>
           <v-list class="py-0">
             <detail-link
               v-for="{ service, value } in services"
               :key="service"
               :title="value"
               :icon="`osm-${service}`"
             />
           </v-list-item>
         </v-list>
       </template>

       <template v-if="hasOpeningInfos">
         <v-subheader v-if="hasSpecificOpeningHours || place.properties.brand_hours">{{ $t('details.lockdown_opening_hours') }}</v-subheader>
         <v-subheader v-else>{{ $t('details.normal_opening_hours') }}</v-subheader>
         <v-list class="py-0">
           <detail-opening-hours
             v-if="hasSpecificOpeningHours"
             :value="place.properties.opening_hours"
             :country="place.properties.country"
             :coordinates="place.geometry.coordinates"
           />
           <detail-link
             v-else-if="place.properties.brand_hours"
             :href="place.properties.brand_hours"
             :title="$t('details.lockdown_brand_hours')"
             external
             icon="osm-chevron_right"
           />
           <template v-else-if="place.properties.tags.opening_hours">
             <v-alert
               dense
               tile
               :icon="false"
               border="left"
               colored-border
               type="warning"
               class="mb-0 pa-0"
             >
               <detail-opening-hours
                 :value="place.properties.tags.opening_hours"
                 :country="place.properties.country"
                 :coordinates="place.geometry.coordinates"
               />
             </v-alert>
           </template>
         </v-list>
       </template>

       <template v-if="hasContactInfos">
         <v-subheader>{{ $t('details.contact') }}</v-subheader>
         <v-list class="py-0">
           <template v-for="c in contactsDisplayed">
              <template v-if="contact(c)">
                <detail-link
                  v-for="value in contact(c)"
                  :key="value.text"
                  :href="value.href"
                  :title="value.text"
                  :icon="contacts[c]"
                  :external="value.href.startsWith('http')"
                />
              </template>
            </template>
          </v-list>
        </template>

        <update-detail-dialog
          v-if="country === 'FR' && place.properties.brand"
          :place="place"
        />
      </div>

      <v-spacer></v-spacer>
      <v-footer tile>
        <osm-link :id="id" />
      </v-footer>
    </v-card>
  </v-sheet>
</template>

<script>
import { mapState } from 'vuex';
import { poiFeature, osmUrl } from '../../config.json';
import { encodePosition } from '../../lib/url';
import parseId from '../../lib/parse_id';
import { getRecentContribution } from '../../lib/recent_contributions';
import isMobile from '../mixins/is_mobile';
import placeMixin from '../mixins/place';
import DetailLink from './detail_link';
import DetailOpeningHours from './detail_opening_hours';
import DetailState from './detail_state';
import DetailLumignon from './detail_lumignon';
import OsmLink from '../osm_link';
import UpdateDetailDialog from '../update_detail_dialog';

const CONTACTS = {
  'phone:covid19': 'osm-phone_covid',
  phone: 'osm-phone',
  mobile: 'osm-mobile_phone',
  fax: 'osm-fax',
  email: 'osm-mail',
  facebook: 'osm-fcbk',
  website: 'osm-link'
};

export default {
  components: {
    DetailLink,
    DetailOpeningHours,
    DetailState,
    DetailLumignon,
    OsmLink,
    UpdateDetailDialog
  },

  mixins: [placeMixin, isMobile],

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
    this.updateDefaultHeight();
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
      height: 100,
      place: null,
      lastUpdate: null
    };
  },

  computed: {
    ...mapState(['country']),

    hasVending() {
      return this.$te(`details.vending.${this.place.properties.tags.vending}`);
    },

    hasSpecificOpeningHours() {
      return !!(this.place.properties.opening_hours && this.place.properties.opening_hours !== 'open');
    },

    hasOpeningInfos() {
      return !!(this.hasSpecificOpeningHours
               || this.place.properties.tags.opening_hours
               || this.place.properties.brand_hours);
    },

    hasContactInfos() {
      return !!this.contactsDisplayed.find((c) => this.contact(c));
    },

    contacts() {
      return CONTACTS;
    },

    contactsDisplayed() {
      return Object.keys(CONTACTS);
    },

    services() {
      const isOpen = ['open', 'open_adapted'].includes(this.place.properties.status);
      const isOpenOrPartial = ['open', 'open_adapted', 'partial'].includes(this.place.properties.status);

      const services = [];
      const addInfosDependingOfTagAndStatus = (tagName) => {
        const tagCovid19 = this.place.properties.tags[`${tagName}:covid19`];
        const tag = this.place.properties.tags[tagName];
        if (isOpenOrPartial && tagCovid19 && this.$te(`details.${tagName}.${tagCovid19}`)) {
          services.push({ service: tagName, value: this.$t(`details.${tagName}.${tagCovid19}`) });
        } else if (isOpen && tag && this.$te(`details.${tagName}.${tag}`) && !tagCovid19) {
          services.push({ service: tagName, value: this.$t(`details.${tagName}.${tag}`) });
        }
      };

      const addInfosIfValueYes = (tagName) => {
        const tag = this.place.properties.tags[tagName];
        if (tag && tag === 'yes') {
          services.push({ service: tagName, value: this.$t(`details.${tagName}.${tag}`) });
        }
      };

      addInfosIfValueYes('tobacco');
      addInfosIfValueYes('newsagent');
      addInfosDependingOfTagAndStatus('takeaway');
      addInfosDependingOfTagAndStatus('delivery');
      addInfosDependingOfTagAndStatus('drive_through');
      addInfosDependingOfTagAndStatus('wheelchair');

      return services;
    },

    infos() {
      let infos = [];

      // Custom POI description
      if (this.place.properties.tags['description:cro']) {
        infos.push(this.place.properties.tags['description:cro']);
      }

      // Mandatory mask
      if (this.place.properties.tags['safety:covid19']) {
        infos = infos.concat(
          this.place.properties.tags['safety:covid19']
          .split(';')
          .filter(v => !this.$t(`details.safety.${v}`).startsWith("details."))
          .map(v => this.$t(`details.safety.${v}`))
        );
      }

      // Access
      if (this.place.properties.tags['access:covid19'] === 'no') {
        infos.push(this.$t('details.not_accessible'));
      }

      // Maximal capacity
      if (!isNaN(parseInt(this.place.properties.tags['capacity:covid19']))) {
        infos.push(this.$tc('details.capacity', this.place.properties.tags['capacity:covid19']));
      }

      // POI information
      if (this.place.properties.brand_infos) {
        infos.push(this.place.properties.brand_infos);
      }

      return infos;
    }
  },

  watch: {
    id() {
      this.place = null;
      this.updatePlace();
    },

    isMobile() {
      this.updateDefaultHeight();
    }
  },

  methods: {
    updateDefaultHeight() {
      this.height = this.isMobile ? 50 : 100;
    },

    updatePlace() {
      const { type, id } = parseId(this.id);
      const contrib = getRecentContribution(this.id);
      const promises = [
        fetch(`${poiFeature}/${this.id}.json?precision=7`)
        .then(data => data.json())
        .then((place) => {
          if(contrib && contrib[1] !== 'same') {
            place.properties.status = contrib[1];
          }
          this.place = place;
          this.$store.commit('setPlace', place);
        })
        .catch(() => {
          this.$nuxt.context.redirect(`/${this.$route.params.featuresAndLocation || ''}`);
        })
      ];

      if (contrib && contrib[1] !== 'same') {
        this.lastUpdate = new Date(contrib[2] * 1000);
      }
      else {
        promises.push(
          fetch(`${osmUrl}/api/0.6/${type}/${id}`)
          .then(data => data.text())
          .then(xml => {
            const match = xml.match(/timestamp="(.+?)"/);
            if(match && match.length > 1) {
              this.lastUpdate = new Date(match[1]);
            }
          })
          .catch(() => {})
        );
      }

      return Promise.all(promises);
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
    },

    moveUp() {
      this.height = 90;
    },

    moveDown() {
      this.height == 50 ? this.close() : this.height = 50;
    }
  }
}
</script>

<style scoped>
.toolbar-title {
  line-height: 1;
}
.left-sidebar {
  width: 400px;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 10;
  overflow-y: auto;
}

.bottom-dialog {
  z-index: 300 !important;
  width: 100vw;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 10;
  overflow-y: auto;
  transition: height ease .1s;
}
.overflowwrap-anywhere {
  overflow-wrap: anywhere;
}
</style>
