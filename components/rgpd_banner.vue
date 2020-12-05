<template>
  <v-alert
    v-if="consent === null"
    :icon="false"
    tile
    type="info"
    class="alert-rgpd mb-0"
  >
    🍪 {{ $t('rgpd.consent') }}
    <div class="d-md-inline-block ml-md-4">
      <v-btn
        color="green"
        @click="yes"
      >{{ $t('rgpd.yes') }}</v-btn>
      <v-btn @click="no">{{ $t('rgpd.no') }}</v-btn>
    </div>
  </v-alert>
</template>

<script>
import { getCookie, setCookie } from '../lib/cookie';

const RGPD_COOKIE = 'rgpdConsent';

export default {
  data() {
    const consent = getCookie(RGPD_COOKIE) || (navigator.doNotTrack === "1" ? 'false' : undefined);
    return {
      consent: consent === undefined ? null : (consent === 'true' ? true : false)
    };
  },

  mounted() {
    this.addTracker();
  },

  watch: {
    consent: {
      immediate: true,
      handler(value) {
        if (typeof value === 'boolean') {
          this.$emit('consent', value);
        }
      }
    }
  },

  methods: {
    yes() {
      setCookie(RGPD_COOKIE, true);
      this.consent = true;
    },

    no() {
      setCookie(RGPD_COOKIE, false);
      this.consent = false;
    },

    addTracker() {
      if (this.consent) {
        this.$plausible.enableAutoPageviews();
      }
    }
  }
};
</script>

<style>
.alert-rgpd {
  position: fixed;
  width: 100%;
  bottom: 0;
  z-index: 10;
}
</style>
