<template>
  <div>
    <v-card
      title
      flat
    >
      <v-card-title class="pl-1 pt-5 pb-5 justify-center">
        <router-link to="/">
          <img
            :alt="$t('title')"
            class="px-3 logo"
            src="../images/logo.svg"
          />
        </router-link>
      </v-card-title>
      <v-card-subtitle class="pl-2 text-center">
        {{ $t('subtitle') }}
      </v-card-subtitle>
    </v-card>

    <v-alert
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
        href="https://www.gouvernement.fr/info-coronavirus"
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
        href="https://blog.caresteouvert.fr/que-faire-sil-manque-un-commerce-dans-ca-reste-ouvert/"
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

export default {
  components: { LearnMore, ChangeLanguage, SidebarListItem }
}
</script>

<style scoped>
.logo {
  max-width: 100%;
}
</style>
