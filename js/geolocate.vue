<template>
  <v-tooltip bottom>
    <template v-slot:activator="{ on }">
        <v-btn
          :loading="loading"
          :disabled="loading"
          :color="error ? 'red': ''"
          icon
          @click="geolocate"
          v-on="on"
        >
          <v-icon>osm-geolocate</v-icon>
        </v-btn>
    </template>
    <span>{{ $t('geolocate') }}</span>
  </v-tooltip>
</template>

<script>
export default {
  data() {
    return {
      loading: false,
      error: false
    };
  },

  methods: {
    geolocate() {
      this.loading = true;
      this.error = false;
      window.navigator.geolocation.getCurrentPosition(
        ({ coords }) => {
          this.$emit('input', coords);
          this.loading = false;
        },
        () => {
          this.loading = false;
          this.error = true;
        },
        {}
      );
    }
  }
};
</script>
