<template>
  <div>
    <v-card
      :to="{ name: 'index' }"
      title
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
import SidebarListItem from './sidebar_list_item';
import ChangeLanguage from './change_language';
import LearnMore from './learn_more';
import GovernementAlert from './governement_alert';
import i18nMixin from './mixins/i18n';

export default {
  components: {
    ChangeLanguage,
    GovernementAlert,
    LearnMore,
    SidebarListItem,
  },

  mixins: [i18nMixin]
}
</script>

<style scoped>
.logo {
  max-width: 100%;
}
</style>
