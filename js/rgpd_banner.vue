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
const RGPD_LOCAL_STORAGE = 'rgpdConsent';
export default {
  data() {
    const consent = localStorage.getItem(RGPD_LOCAL_STORAGE);
    return {
      consent: consent === null ? null : (consent === 'true' ? true : false)
    };
  },

  watch: {
    consent: {
      immediate: true,
      handler(value) {
        if (!value) return;
        this.addTracker();
      }
    }
  },

  methods: {
    yes() {
      localStorage.setItem(RGPD_LOCAL_STORAGE, true);
      this.consent = true;
    },

    no() {
      localStorage.setItem(RGPD_LOCAL_STORAGE, false);
      this.consent = false;
    },

    addTracker() {
      var _gauges = _gauges || [];
      (function() {
        var t   = document.createElement('script');
        t.type  = 'text/javascript';
        t.async = true;
        t.id    = 'gauges-tracker';
        t.setAttribute('data-site-id', '5e77b69d59eda1617dbd515d');
        t.setAttribute('data-track-path', 'https://track.gaug.es/track.gif');
        t.src = 'https://d2fuc4clr7gvcn.cloudfront.net/track.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(t, s);
      })();
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
