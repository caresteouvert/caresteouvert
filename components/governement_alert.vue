<template>
  <v-alert
    v-model="alert"
    dense
    tile
    dismissible
    color="orange"
    dark
    class="mb-0"
  >
    {{ $t('covid19-alert') }}
    <v-btn
      icon
      x-small
      color="secondary"
      :href="countryConfig.government"
      target="_blank"
    >
      <v-icon>{{ `osm-info` }}</v-icon>
    </v-btn>
  </v-alert>
</template>

<script>
import { getCookie, setCookie } from '../lib/cookie';
import i18nMixin from './mixins/i18n';

const SHOW_ALERT_COOKIE = 'showAlert';

export default {
  mixins: [i18nMixin],

  data() {
    return {
      alert: getCookie(SHOW_ALERT_COOKIE) === 'false' ? false : true
    };
  },

  watch: {
    alert() {
      setCookie(SHOW_ALERT_COOKIE, false);
    }
  }
};
</script>
