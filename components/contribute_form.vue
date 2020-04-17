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
        <label v-if="showDelivery">
          {{ $t('contribute_form.step3.delivery.title') }}
          <v-select
            v-model="delivery"
            :items="deliveryItems"
            filled
            dense
            hide-details
          ></v-select>
        </label>

        <label
          v-if="showTakeaway"
          class="d-block mt-2"
        >
          {{ $t('contribute_form.step3.takeaway.title') }}
          <v-select
            v-model="takeaway"
            :items="takeawayItems"
            filled
            dense
            hide-details
          ></v-select>
        </label>

        <label
          v-if="showAccess"
          class="d-block mt-2"
        >
          {{ $t('contribute_form.step3.access.title') }}
          <v-select
            v-model="access"
            :items="accessItems"
            filled
            dense
            hide-details
          ></v-select>
        </label>

        <label class="d-block pt-4">
          {{ $t('contribute_form.step3.details') }}
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
import OpeningHoursParser from 'transport-hours/src/OpeningHoursParser';
import { apiUrl } from '../config.json';
import OpeningHoursEditor from './opening_hours_editor';
import parseId from './parse_id';

export default {
  components: { OpeningHoursEditor },

  props: {
    point: {
      type: Object,
      required: true
    }
  },

  data() {
    return {
      step: 1,
      details: '',
      access: null,
      accessItems: [
        { text: this.$t('contribute_form.step3.access.unknown'), value: null },
        { text: this.$t('contribute_form.step3.access.yes'), value: 'yes' },
        { text: this.$t('contribute_form.step3.access.no'), value: 'no' }
      ],
      delivery: null,
      deliveryItems: [
        { text: this.$t('contribute_form.step3.delivery.unknown'), value: null },
        { text: this.$t('contribute_form.step3.delivery.yes'), value: 'yes' },
        { text: this.$t('contribute_form.step3.delivery.no'), value: 'no' }
      ],
      takeaway: null,
      takeawayItems: [
        { text: this.$t('contribute_form.step3.takeaway.unknown'), value: null },
        { text: this.$t('contribute_form.step3.takeaway.yes'), value: 'yes' },
        { text: this.$t('contribute_form.step3.takeaway.no'), value: 'no' }
      ],
      loading: false,
      open: null,
      openingHours: [],
      openingHoursWithoutLockDown: false
    };
  },

  mounted() {
    if (this.properties.opening_hours) {
      this.openingHours = this.parseOpeningHours(this.properties.opening_hours);
    }
    this.access = this.parseTag('access:covid19', this.accessItems);
    this.delivery = this.parseTag('delivery:covid19', this.deliveryItems);
    this.takeaway = this.parseTag('takeaway:covid19', this.takeawayItems);
  },

  computed: {
    properties() {
      return this.point.properties;
    },

    hasOpeningHours() {
      return !!this.properties.tags.opening_hours;
    },

    showOpeningHoursWithoutLockDown() {
      return !this.hasOpeningHours && this.openingHours.length !== 0;
    },

    showAccess() {
      return this.showField('access:covid19', this.accessItems);
    },

    showDelivery() {
      return this.showField('delivery:covid19', this.deliveryItems);
    },

    showTakeaway() {
      return this.showField('takeaway:covid19', this.takeawayItems);
    },

    id() {
      const { type, id } = parseId(this.point.id);
      return `${type}/${id}`;
    },

    payload() {
      const lat = this.point.geometry.coordinates[1];
      const lon = this.point.geometry.coordinates[0];
      return {
        name: this.properties.name,
        state: this.open ? 'open' : 'closed',
        details: this.details,
        opening_hours: this.openingHours,
        lat,
        lon,
        lang: this.$i18n.locale,
        tags: {
          opening_hours: this.openingHoursWithoutLockDown ? 'same': undefined,
          'delivery:covid19': this.delivery ? this.delivery : undefined,
          'takeaway:covid19': this.takeaway ? this.takeaway : undefined,
          'access:covid19': this.access ? this.access : undefined
        }
      };
    }
  },

  methods: {
    clickOpen() {
      this.open = true;
      this.step = 2;
    },

    clickClose() {
      this.open = false;
      this.openingHours = [];
      this.step = 3;
    },

    sameOpeningHours() {
      this.openingHours = this.parseOpeningHours(this.properties.tags.opening_hours);
    },

    parseOpeningHours(openingHours) {
      const table = new OpeningHoursParser(openingHours).getTable();
      return Object.keys(table).map((day) => {
        return { days: [day], hours: [...table[day]] };
      }).filter(interval => interval.hours.length > 0);
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
      if(['delivery:covid19', 'takeaway:covid19'].includes(tag) && value === "only") {
        value = "yes";
      }

      return items.map(e => e.value).includes(value) ? value : null;
    }
  }
};
</script>
