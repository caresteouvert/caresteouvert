<template>
  <div>
    <h2 class="title">{{ $t('contribute_form.title') }}</h2>
    <v-btn
      :color="open ? 'success' : ''"
      @click="clickOpen"
    >
      {{ $t('contribute_form.open.yes') }}
    </v-btn>
    <v-btn
      :color="open === false ? 'warning' : ''"
      @click="clickClose"
    >
      {{ $t('contribute_form.open.no') }}
    </v-btn>
    <opening-hours-editor v-model="openingHours"  />
    <label class="d-block pt-2">
      {{ $t('contribute_form.details') }}
      <v-textarea
        v-model="details"
        name="details"
        class="textarea-details"
      ></v-textarea>
    </label>
    <v-btn
      :disabled="submitDisabled"
      :loading="loading"
      color="primary"
      @click="submit"
    >
      {{ $t('contribute_form.submit') }}
    </v-btn>
    <a
      @click="close"
    >
      {{ $t('contribute_form.cancel') }}
    </a>
  </div>
</template>

<script>
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
      details: '',
      loading: false,
      open: null,
      openingHours: {}
    };
  },

  computed: {
    submitDisabled() {
      return this.open === null;
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
    },

    clickClose() {
      this.open = false;
    },

    submit() {
      const lat = this.point.geometry.coordinates[1];
      const lon = this.point.geometry.coordinates[0];
      const [ type, id ] = this.id.split('/');
      const body = {
        name: this.point.properties.name,
        state: this.open ? 'open' : 'closed',
        details: this.details,
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
