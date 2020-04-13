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
import { getCookie, setCookie } from './cookie';

const RGPD_COOKIE = 'rgpdConsent';

export default {
  data() {
    const consent = getCookie(RGPD_COOKIE);
    return {
      consent: consent === undefined ? null : (consent === 'true' ? true : false)
    };
  },

  mounted() {
    this.addTracker();
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
      const _paq = window._paq || [];
      if (this.consent !== true) {
        _paq.push(["disableCookies"]);
      }
      _paq.push(['trackPageView']);
      _paq.push(['enableLinkTracking']);
      window._paq = _paq;
      (function() {
        var u="//s.caresteouvert.fr/";
        _paq.push(['setTrackerUrl', u+'matomo.php']);
        _paq.push(['setSiteId', '1']);
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
        g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
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
