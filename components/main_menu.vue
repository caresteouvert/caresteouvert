<template>
  <div class="d-flex flex-column flex-grow-1 menu">
    <v-card
      v-if="showBrand"
      :to="{ name: 'index' }"
      tile
      flat
    >
      <v-card-title class="pl-1 pt-5 pb-5 justify-center">
        <img
          :alt="brand"
          :src="logo"
          class="px-3 logo"
        />
      </v-card-title>
      <v-card-subtitle class="pl-2 text-center">
        {{ $t('subtitle') }}
      </v-card-subtitle>
    </v-card>

    <governement-alert />

    <v-divider v-if="showBrand"></v-divider>

    <slot />

    <v-spacer />

    <v-list class="pb-0">
      <v-divider></v-divider>
      <missing-shop-dialog />
      <learn-more />
    </v-list>

    <v-divider></v-divider>

    <div class="d-flex">
      <change-language />
      <v-divider vertical></v-divider>
      <toggle-color />
    </div>
    <div v-show="false"><a href="/annuaire/">Annuaire</a></div>
  </div>
</template>

<script>
import MissingShopDialog from './missing_shop_dialog';
import ChangeLanguage from './change_language';
import LearnMore from './learn_more';
import GovernementAlert from './governement_alert';
import ToggleColor from './toggle_color';
import i18nMixin from './mixins/i18n';

export default {
  components: {
    ChangeLanguage,
    GovernementAlert,
    LearnMore,
    MissingShopDialog,
    ToggleColor,
  },

  mixins: [i18nMixin],

  props: {
    showBrand: {
      type: Boolean,
      required: false,
      default: true
    }
  }
}
</script>

<style scoped>
.menu {
  min-height: 100%;
}
.logo {
  max-width: 100%;
}
</style>
