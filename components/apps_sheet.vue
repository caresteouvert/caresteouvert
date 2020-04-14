<template>
  <div class="text-center">
    <v-bottom-sheet v-model="show" max-width="600" inset>
      <v-sheet class="text-center">
        <div class="pt-3 pb-0 mb-0 title">{{ $t('apps_info.text', { brand }) }}</div>
          <v-container class="pb-0">
            <v-row no-gutters align="center" justify="space-around">
              <v-col cols="6" sm="4">
                <a href="https://play.google.com/" target="_blank" rel="noopener">
                  <img src="../assets/appbadge_gplay.png" class="img-badge" :alt="$t('apps_info.googleplay')" />
                </a>
              </v-col>
              <v-col cols="6" sm="4">
                <a href="https://apps.apple.com/fr/app/%C3%A7a-reste-ouvert/id1506199151" target="_blank" rel="noopener">
                  <img src="../assets/appbadge_apple.png" class="img-badge" :alt="$t('apps_info.apple')" />
                </a>
              </v-col>
              <v-col cols="6" sm="4">
                <a href="https://f-droid.org/fr/packages/com.transway.caresteouvert/" target="_blank" rel="noopener">
                  <img src="../assets/appbadge_fdroid.png" class="img-badge" :alt="$t('apps_info.fdroid')" />
                </a>
              </v-col>
            </v-row>
          </v-container>
        <v-btn
          text
          @click="seen"
          class="mb-3"
        >{{ $t('apps_info.close') }}</v-btn>
      </v-sheet>
    </v-bottom-sheet>
  </div>
</template>

<script>
import i18nMixin from './mixins/i18n';
const APPS_INFO_LOCAL_STORAGE = 'appsInfo';
export default {
  mixins: [i18nMixin],

  data() {
    const seen = localStorage.getItem(APPS_INFO_LOCAL_STORAGE);
    const isApp = this.$route.query.fromapp && this.$route.query.fromapp.startsWith("t");
    return {
      show: !isApp && !this.isInIframe() && seen === null
    };
  },

  watch: {
    show: {
      immediate: false,
      handler(value) {
        if (!value) { this.seen(); }
      }
    }
  },

  methods: {
    seen() {
      this.show = false;
      localStorage.setItem(APPS_INFO_LOCAL_STORAGE, true);
    },

    isInIframe() {
      try {
        return window.self !== window.top;
      } catch (e) {
        return true;
      }
    }
  }
}
</script>

<style>
  .img-badge {
    max-width: 100%;
    max-height: 70px;
  }
</style>
