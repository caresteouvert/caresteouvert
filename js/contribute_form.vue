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
          @click="sameOpeningHours"
        >{{ $t('contribute_form.step2.same_hours') }}</v-btn>
        <opening-hours-editor
          v-model="openingHours"
        />
        <v-btn
          v-if="openingHours.length === 0"
          class="my-2"
          @click="step = 3"
        >{{ $t('contribute_form.step2.dont_know') }}</v-btn>
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
        <v-textarea
          v-model="details"
          name="details"
          class="textarea-details"
        ></v-textarea>
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
      loading: false,
      open: null,
      openingHours: []
    };
  },

  computed: {
    hasOpeningHours() {
      return !!this.point.properties.tags.opening_hours;
    },
    id() {
      const types = {
        n: 'node',
        w: 'way',
        r: 'relation'
      };
      return `${types[this.point.id[0]]}/${this.point.id.substring(1)}`;
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
      const table = new OpeningHoursParser(this.point.properties.tags.opening_hours).getTable();
      this.openingHours = Object.keys(table).map((day) => {
        return { days: [day], hours: [...table[day]] };
      }).filter(interval => interval.hours.length > 0);
    },

    submit() {
      const lat = this.point.geometry.coordinates[1];
      const lon = this.point.geometry.coordinates[0];
      const [ type, id ] = this.id.split('/');
      const body = {
        name: this.point.properties.name,
        state: this.open ? 'open' : 'closed',
        details: this.details,
        opening_hours: this.openingHours,
        lat,
        lon
      };
      this.loading = true;
      fetch(
       `${apiUrl}/contribute/${type}/${id}`,
       {
         method: 'POST',
         headers: {
           'Content-Type': 'application/json'
         },
         body: JSON.stringify(body)
       }
     ).then(() => {
       this.$emit('success');
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

<style>
  .textarea-details textarea {
    background-color: #f2f2f2;
  }
</style>
