<template>
  <div>
    <div class="d-flex align-center">
      <h1 class="title flex-grow-1">{{ $t('contribute_form.title_state') }}</h1>
      <a
        @click="close"
      >
        {{ $t('contribute_form.cancel') }}
      </a>
    </div>

    <v-list>
      <v-list-item>
        <v-list-item-icon
          @click="clickPlaceAccess"
        >
          <v-icon>{{ `osm-store_open` }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content>
          <v-list-item-title
            v-text="$t('contribute_form.access.title')"
            @click="clickPlaceAccess"
          ></v-list-item-title>
          <v-list-item-subtitle
            v-text="$t('contribute_form.access.subtitle')"
            @click="clickPlaceAccess"
          ></v-list-item-subtitle>
        </v-list-item-content>

        <v-list-item-action>
          <v-switch
            v-model="tab_access"
            @change="() => clickPlaceAccess()"
          ></v-switch>
        </v-list-item-action>
      </v-list-item>

      <v-list-item v-if="tab_access" class="ml-8">
        <v-list-item-content>
          <v-list-item-title v-text="$t('contribute_form.access.hours')"></v-list-item-title>

          <v-btn
            v-if="hasOpeningHours && openingHours.length === 0"
            width="100%"
            small
            @click="sameOpeningHours"
          >{{ $t('contribute_form.hours.same_hours') }}</v-btn>

          <opening-hours-editor
            v-model="openingHours"
          />

          <v-checkbox
            v-if="showOpeningHoursWithoutLockDown"
            v-model="openingHoursWithoutLockDown"
            :label="$t('contribute_form.hours.same_hours_without_lockdown')"
            dense
            hide-details
          ></v-checkbox>
        </v-list-item-content>
      </v-list-item>

      <v-divider />

      <template v-if="this.filteredFields.length > 0">
        <v-list-item>
          <v-list-item-icon
            @click="clickPlaceClickCollect"
          >
            <v-icon>{{ `osm-click_collect` }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title
              v-text="$t('contribute_form.click_collect.title')"
              @click="clickPlaceClickCollect"
            ></v-list-item-title>
            <v-list-item-subtitle
              v-text="$t('contribute_form.click_collect.subtitle')"
              @click="clickPlaceClickCollect"
            ></v-list-item-subtitle>
          </v-list-item-content>

          <v-list-item-action>
            <v-switch
              v-model="tab_click_collect"
              @change="() => clickPlaceClickCollect()"
            ></v-switch>
          </v-list-item-action>
        </v-list-item>

        <template v-if="tab_click_collect">
          <v-list-item v-for="field in this.filteredFields" :key="field" class="ml-4">
            <v-list-item-content>
              <label :for="'switch_'+field">
                <v-icon class="mr-8">{{ `osm-${field}` }}</v-icon>
                {{ $t(`contribute_form.click_collect.${field}`) }}
              </label>
            </v-list-item-content>
            <v-list-item-action>
              <v-switch
                :id="'switch_'+field"
                v-model="opt_fields[field]"
                dense
                @change="user_changed = true"
              ></v-switch>
            </v-list-item-action>
          </v-list-item>
        </template>

        <v-divider />
      </template>

      <v-list-item>
        <v-list-item-icon
          @click="clickPlaceClosed"
        >
          <v-icon>{{ `osm-closed` }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content>
          <v-list-item-title
            v-text="$t('contribute_form.closed.title')"
            @click="clickPlaceClosed"
          ></v-list-item-title>
          <v-list-item-subtitle
            v-text="$t('contribute_form.closed.subtitle')"
            @click="clickPlaceClosed"
          ></v-list-item-subtitle>
        </v-list-item-content>

        <v-list-item-action>
          <v-switch
            v-model="tab_closed"
            color="error"
            @change="() => clickPlaceClosed()"
          ></v-switch>
        </v-list-item-action>
      </v-list-item>

      <v-list-item v-if="tab_closed" class="ml-8">
        <v-list-item-content>
          <v-checkbox
            v-model="definite_closing"
            color="error"
            :label="$t('contribute_form.closed.definite_closing')"
          ></v-checkbox>
        </v-list-item-content>
      </v-list-item>

      <v-divider />

      <v-list-item>
        <v-list-item-icon>
          <v-icon>osm-pencil</v-icon>
        </v-list-item-icon>

        <v-list-item-content>
          <v-list-item-title style="white-space: normal">
            {{ $t('contribute_form.details.title') }}
          </v-list-item-title>
          <v-textarea
            v-model="details"
            class="mt-2"
            rows="4"
            :rules="[ detailsRules ]"
            filled
            :placeholder="$t('contribute_form.details.hint'+(this.tab_closed ? '_closed' : ''))"
          ></v-textarea>
        </v-list-item-content>
      </v-list-item>
    </v-list>

    <v-btn
      :loading="loading"
      :color="this.tab_closed ? 'error' : 'primary'"
      block
      @click="submit"
      :disabled="!user_changed || (!tab_access && !tab_click_collect && !tab_closed && !details)"
    >
      {{ $t('contribute_form.submit') }}
    </v-btn>
  </div>
</template>

<script>
import { apiUrl } from '../config.json';
import OpeningHoursParser from '../lib/opening_hours_parser';
import parseId from '../lib/parse_id';
import OpeningHoursEditor from './opening_hours_editor/editor';
import { categories } from '../categories.json';

const DEFINITE_CLOSING_LABEL = 'This place is permanently closed';

export default {
  components: { OpeningHoursEditor },

  props: {
    place: {
      type: Object,
      required: true
    }
  },

  data() {
    return {
      CLICK_COLLECT_FIELDS: {
        "pickup": { type: "boolean", onlyCovid: true },
        "delivery": { type: "boolean" },
        "drive_through": { type: "boolean" },
        "takeaway": { type: "boolean" }
      },

      user_changed: false,
      tab_access: false,
      tab_click_collect: false,
      tab_closed: false,

      opt_fields: {},

      details: '',
      definite_closing: null,
      loading: false,
      openingHours: [],
      openingHoursWithoutLockDown: false,
      form_details: []
    };
  },

  mounted() {
    if (this.properties.opening_hours) {
      this.openingHours = this.parseOpeningHours(this.properties.opening_hours);
    }

    if(
      categories[this.place.properties.normalized_cat]
      && categories[this.place.properties.normalized_cat].subcategories[this.place.properties.cat]
      && categories[this.place.properties.normalized_cat].subcategories[this.place.properties.cat].form_details
    ) {
      this.form_details = categories[this.place.properties.normalized_cat].subcategories[this.place.properties.cat].form_details;
    }

    Object.keys(this.CLICK_COLLECT_FIELDS).forEach(f => {
      this.opt_fields[f] = this.offersService(f);
    });

    // Check out existing tags
    if(
      this.properties.tags['opening_hours:covid19'] === 'off'
      || this.properties.tags.fixme === DEFINITE_CLOSING_LABEL
    ) {
      this.tab_closed = true;
      if(this.properties.tags.fixme === DEFINITE_CLOSING_LABEL) {
        this.definite_closing = true;
      }
    }
    else {
      if(this.properties.tags['access:covid19'] === 'yes' || this.properties.tags['opening_hours:covid19']) {
        this.tab_access = true;
      }

      if(Object.values(this.opt_fields).filter(v => v).length > 0) {
        this.tab_click_collect = true;
      }

      if(!this.tab_access && !this.tab_click_collect && !this.tab_closed && this.properties.status === "open") {
        this.tab_access = true;
      }
    }

    this.user_changed = false;

    this.$watch('details', () => this.user_changed = true);
    this.$watch('openingHours', () => this.user_changed = true);
    this.$watch('opt_fields', () => this.user_changed = true);
    this.$watch('definite_closing', () => this.user_changed = true);
  },

  computed: {
    properties() {
      return this.place.properties;
    },

    hasOpeningHours() {
      return !!this.properties.tags.opening_hours;
    },

    showOpeningHoursWithoutLockDown() {
      return !this.hasOpeningHours && this.openingHours.length !== 0;
    },

    filteredFields() {
      return Object.keys(this.CLICK_COLLECT_FIELDS).filter(e => this.form_details.includes(e));
    },

    id() {
      const { type, id } = parseId(this.place.id);
      return `${type}/${id}`;
    },

    payload() {
      const [ lon, lat ] = this.place.geometry.coordinates;
      const tags = {
        opening_hours: this.openingHoursWithoutLockDown ? 'same': undefined,
        'access:covid19': this.tab_access ? 'yes' : (this.tab_closed ? undefined : 'no'),
        fixme: this.tab_closed && this.definite_closing ? DEFINITE_CLOSING_LABEL : undefined,
        note: this.tab_closed && this.definite_closing && this.details ? this.details : undefined
      };

      if(this.tab_click_collect) {
        Object.entries(this.CLICK_COLLECT_FIELDS)
        .filter(e => this.filteredFields.includes(e[0]))
        .forEach(e => {
          const osmTag = e[0]+(e[1].onlyCovid ? ":covid19" : "");

          if(e[1].type === "boolean") {
            tags[osmTag] = this.opt_fields[e[0]] ? "yes" : "no";
          }
        });
      }

      return {
        name: this.properties.name,
        state: this.tab_closed ? 'closed' : 'open',
        details: this.tab_closed && this.definite_closing && this.details ? undefined : this.details,
        opening_hours: this.tab_access ? this.openingHours : [],
        lat,
        lon,
        lang: this.$i18n.locale,
        tags: tags
      };
    }
  },

  methods: {
    clickPlaceAccess(e) {
      this.user_changed = true;
      this.tab_closed = false;
      if(e) {
        this.tab_access = !this.tab_access;
      }
    },

    clickPlaceClickCollect(e) {
      this.user_changed = true;
      this.tab_closed = false;
      if(e) {
        this.tab_click_collect = !this.tab_click_collect;
      }
    },

    clickPlaceClosed(e) {
      this.user_changed = true;
      this.tab_access = false;
      this.tab_click_collect = false;
      this.openingHours = [];

      if(e) {
        this.tab_closed = !this.tab_closed;
      }
    },

    offersService(tag) {
      if(this.properties.tags[tag+':covid19'] && ['yes', 'only'].includes(this.properties.tags[tag+':covid19'])) { return true; }
      else if(!this.properties.tags[tag+':covid19'] && this.properties.tags[tag] && ['yes', 'only'].includes(this.properties.tags[tag])) { return true; }
      else { return false; }
    },

    sameOpeningHours() {
      this.openingHours = this.parseOpeningHours(this.properties.tags.opening_hours);
    },

    parseOpeningHours(openingHours) {
      try {
        return new OpeningHoursParser(openingHours).getTable();
      }
      catch(e) {
        return [];
      }
    },

    detailsRules(val) {
      if(val === null || val === undefined || val.length === 0 || (val.length >= 10 && val.length <= 200)) { return true; }
      else { return this.$t('contribute_form.details.error'); }
    },

    submit() {
      const [ type, id ] = this.id.split('/');
      this.loading = true;
      fetch(
        `${apiUrl}/contribute/${type}/${id}`,
        {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(this.payload)
        }
      ).then((response) => {
        if (response.status === 200) {
          this.$emit('success');
          this.$store.commit('setContribution', [
             this.place.properties.fid,
             this.payload.state,
             parseInt((Date.now() / 1000).toFixed(0))
           ]);
        }
      }).finally(() => {
        this.loading = false
      });
    },

    close() {
      this.$emit('close');
    },

    hasTag(tag) {
      return !!this.properties.tags[tag];
    }
  }
};
</script>
