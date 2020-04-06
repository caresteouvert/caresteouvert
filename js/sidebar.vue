<template>
  <div>
    <v-card
      :to="{ name: 'index' }"
      title
      flat
    >
      <v-card-title class="pl-1 pt-5 pb-5 justify-center">
        <img
          :alt="links.brand_text"
          :src="logo"
          class="px-3 logo"
        />
      </v-card-title>
      <v-card-subtitle class="pl-2 text-center">
        {{ $t('subtitle') }}
      </v-card-subtitle>
    </v-card>

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
        :href="links.government"
        target="_blank"
      >
        <v-icon>{{ `osm-info` }}</v-icon>
      </v-btn>
    </v-alert>
    <v-divider></v-divider>
    <slot />
    <v-list>
      <v-divider></v-divider>
      <sidebar-list-item
        :title="$t('missing_shop')"
        :href="links.shopMissing"
        icon="plus"
      />
      <learn-more />
      <v-divider></v-divider>
      <change-language />
    </v-list>
  </div>
</template>

<script>
import config from '../config.json';
import aperta from '../images/aperta.svg';
import caresteouvert from '../images/caresteouvert.svg';
import SidebarListItem from './sidebar_list_item';
import ChangeLanguage from './change_language';
import LearnMore from './learn_more';

export default {
  components: { LearnMore, ChangeLanguage, SidebarListItem },

  data() {
    return {
      alert: localStorage.getItem('showAlert') === 'false' ? false : true
    };
  },

  computed: {
    links() {
      return config[this.$i18n.locale] || config.en;
    },
    logo() {
      return { aperta: aperta, caresteouvert: caresteouvert }[this.links.brand];
    }
  },

  watch: {
    alert() {
      localStorage.setItem('showAlert', false);
    }
  }
}
</script>

<style scoped>
.logo {
  max-width: 100%;
}
</style>
