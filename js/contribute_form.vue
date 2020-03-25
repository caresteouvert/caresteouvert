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
    <v-textarea
      v-model="details"
      :label="$t('contribute_form.details')"
      name="details"
    ></v-textarea>
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
export default {
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
      open: null
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
    },

    message() {
      return `Signalement #covid19 #caresteouvert

name: ${this.point.properties.name}
id: ${this.id}

Etat: ${this.open ? 'ouvert' : 'fermé'}
Details: ${this.details}
`;
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
      this.loading = true;
      fetch(
       `https://www.openstreetmap.org/api/0.6/notes?lat=${lat}&lon=${lon}&text=${encodeURIComponent(this.message)}`,
       { method: 'POST' }
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
