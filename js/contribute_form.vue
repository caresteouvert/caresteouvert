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

        <label class="d-block pt-4">
          {{ $t('contribute_form.step3.details') }}
          <v-textarea
            v-model="details"
            class="mt-2"
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
      delivery: null,
      deliveryItems: [
        { text: this.$t('contribute_form.step3.delivery.unknown'), value: null },
        { text: this.$t('contribute_form.step3.delivery.yes'), value: 'yes' },
        { text: this.$t('contribute_form.step3.delivery.only'), value: 'only' },
        { text: this.$t('contribute_form.step3.delivery.no'), value: 'no' }
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
    const delivery = this.properties.tags['delivery:covid19']
    if (delivery && this.deliveryItems.map(i => i.value).includes(delivery)) {
      this.delivery = delivery;
    }
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

    showDelivery() {
      const delivery = this.properties.tags['delivery:covid19'];
      return !!this.open && (!delivery || (delivery && this.deliveryItems.map(i => i.value).includes(delivery)));
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
        details: this.open ? undefined : this.details,
        opening_hours: this.openingHours,
        lat,
        lon,
        tags: {
          opening_hours: this.openingHoursWithoutLockDown ? 'same': undefined,
          'delivery:covid19': this.delivery ? this.delivery : undefined,
          'description:covid19': this.open ? this.details : undefined
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
    }
  }
};
</script>
