<template>
  <div>
    <div class="d-flex align-center">
      <h1 class="title flex-grow-1">{{ $t('contribute_form.title') }}</h1>
      <a
        @click="close"
      >
        {{ $t('contribute_form.cancel') }}
      </a>
    </div>
    <v-stepper
      v-model="step"
      vertical
    >
      <v-stepper-step
        :complete="step > 1"
        complete-icon="osm-check"
        editable
        edit-icon="osm-check"
        step="1"
      >
        {{ $t('contribute_form.step1.title') }}
      </v-stepper-step>

      <v-stepper-content step="1">
        <v-btn @click="clickOpen">
          {{ $t('contribute_form.step1.open.yes') }}
        </v-btn>
        <v-btn @click="clickClose">
          {{ $t('contribute_form.step1.open.no') }}
        </v-btn>
        <br/>
        <br/>
      </v-stepper-content>

      <v-stepper-step
        :complete="this.open && step > 2"
        :editable="this.open"
        complete-icon="osm-check"
        edit-icon="osm-check"
        step="2"
      >
        {{ $t('contribute_form.step2.title') }}
      </v-stepper-step>

      <v-stepper-content
        step="2"
      >
        <v-btn
          v-if="hasOpeningHours && openingHours.length === 0"
          width="100%"
          @click="sameOpeningHours"
        >{{ $t('contribute_form.step2.same_hours') }}</v-btn>

        <opening-hours-editor
          v-model="openingHours"
        />

        <v-btn
          v-if="openingHours.length === 0"
          width="100%"
          class="my-2"
          @click="step = 3"
        >{{ $t('contribute_form.step2.dont_know') }}</v-btn>

        <v-checkbox
          v-if="showOpeningHoursWithoutLockDown"
          v-model="openingHoursWithoutLockDown"
          :label="$t('contribute_form.step2.same_hours_without_lockdown')"
          dense
          hide-details
        ></v-checkbox>

        <v-btn
          v-if="openingHours.length > 0"
          class="mt-4 my-2"
          color="primary"
          @click="step = 3"
        >{{ $t('contribute_form.step2.continue') }}</v-btn>

      </v-stepper-content>

      <v-stepper-step
        step="3"
      >
        {{ $t('contribute_form.step3.title') }}
      </v-stepper-step>

      <v-stepper-content step="3">
        <v-checkbox
          v-if="!open"
          v-model="definite_closing"
          :label="$t('contribute_form.step3.definite_closing')"
        ></v-checkbox>

        <label
          v-for="field in filteredFields"
          :key="field.id"
        >
          {{ $t(`contribute_form.step3.${field.id}`) }}
          <v-select
            v-model="fieldValues[field.id]"
            :items="field.items"
            filled
            dense
            hide-details
          ></v-select>
        </label>

        <label class="d-block pt-4">
          {{ $t(this.definite_closing ? 'contribute_form.step3.details_definite_closing' : 'contribute_form.step3.details') }}
          <v-textarea
            v-model="details"
            class="mt-2"
            rows="2"
            :rules="[ detailsRules ]"
            filled
          ></v-textarea>
        </label>

        <v-btn
          :loading="loading"
          color="primary"
          @click="submit"
        >
          {{ $t('contribute_form.submit') }}
        </v-btn>
      </v-stepper-content>
    </v-stepper>
  </div>
</template>

<script>
import { apiUrl } from '../config.json';
import OpeningHoursParser from '../lib/opening_hours_parser';
import parseId from '../lib/parse_id';
import OpeningHoursEditor from './opening_hours_editor/editor';
import { categories } from '../categories.json';

export default {
  components: { OpeningHoursEditor },

  props: {
    place: {
      type: Object,
      required: true
    }
  },

  data() {
    const threeStateFieldItems = [
      { text: this.$t('contribute_form.step3.3state.unknown'), value: null },
      { text: this.$t('contribute_form.step3.3state.yes'), value: 'yes' },
      { text: this.$t('contribute_form.step3.3state.no'), value: 'no' }
    ];

    return {
      step: 1,
      details: '',
      definite_closing: null,
      fields: {
        "access": {
          items: threeStateFieldItems,
          tag: "access:covid19"
        },
        "delivery": {
          items: threeStateFieldItems,
          tag: "delivery:covid19",
          replaceOnly: true
        },
        "takeaway": {
          items: threeStateFieldItems,
          tag: "takeaway:covid19",
          replaceOnly: true
        },
        "drive_through": {
          items: threeStateFieldItems,
          tag: "drive_through:covid19",
          replaceOnly: true
        }
      },
      fieldValues: {},
      loading: false,
      open: null,
      openingHours: [],
      openingHoursWithoutLockDown: false,
      form_details: []
    };
  },

  mounted() {
    if (this.properties.opening_hours) {
      this.openingHours = this.parseOpeningHours(this.properties.opening_hours);
    }

    Object.entries(this.fields).forEach(e => {
      const [ fieldId, field ] = e;
      this.fieldValues[fieldId] = this.parseTag(field.tag, field.items);
    });

    if(
      categories[this.place.properties.normalized_cat]
      && categories[this.place.properties.normalized_cat].subcategories[this.place.properties.cat]
      && categories[this.place.properties.normalized_cat].subcategories[this.place.properties.cat].form_details
    ) {
      this.form_details = categories[this.place.properties.normalized_cat].subcategories[this.place.properties.cat].form_details;
    }
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
      return Object.entries(this.fields)
        .filter(e => this.showField(e[1].tag, e[1].items) && this.form_details.includes(e[0]))
        .map(e => ({ id: e[0], ...e[1] }));
    },

    id() {
      const { type, id } = parseId(this.place.id);
      return `${type}/${id}`;
    },

    payload() {
      const [ lon, lat ] = this.place.geometry.coordinates;
      const tags = {
        opening_hours: this.openingHoursWithoutLockDown ? 'same': undefined,
        fixme: this.definite_closing === true ? 'This place is definitely closed' : undefined
      };

      Object.entries(this.fields).forEach(e => {
        const [ fieldId, field ] = e;
        if(this.fieldValues[fieldId]) {
          tags[field.tag] = this.fieldValues[fieldId];
        }
      });

      return {
        name: this.properties.name,
        state: this.open ? 'open' : 'closed',
        details: this.details,
        opening_hours: this.openingHours,
        lat,
        lon,
        lang: this.$i18n.locale,
        tags: tags
      };
    }
  },

  methods: {
    clickOpen() {
      this.open = true;
      this.step = 2;
      this.definite_closing = null;
    },

    clickClose() {
      this.open = false;
      this.openingHours = [];
      this.step = 3;
      this.definite_closing = false;
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
      else { return this.$t('contribute_form.step3.details_error'); }
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

    showField(tag, items) {
      return !!this.open && (!this.hasTag(tag) || !!this.parseTag(tag, items));
    },

    hasTag(tag) {
      return !!this.properties.tags[tag];
    },

    parseTag(tag, items) {
      let value = this.properties.tags[tag];
      if(value === "only" && Object.values(this.fields).find(f => f.tag === tag && f.replaceOnly)) {
        value = "yes";
      }

      return items.map(e => e.value).includes(value) ? value : null;
    }
  }
};
</script>
