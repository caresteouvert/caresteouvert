<template>
  <div>
    <v-card>
      <v-card-title class="pl-1 pt-5 pb-5 justify-center">
        <img
          :alt="$t('title')"
          class="px-3"
          src="../images/logo.svg"
        />
      </v-card-title>
      <v-card-subtitle class="pl-2 text-center">
        {{ $t('subtitle') }}
      </v-card-subtitle>
    </v-card>

    <v-alert
      dense
      tile
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

    <slot />
    <v-list>
      <v-divider></v-divider>
      <sidebar-list-item
        :title="$t('missing_shop')"
        href="https://blog.caresteouvert.fr/que-faire-sil-manque-un-commerce-dans-ca-reste-ouvert/"
        icon="plus"
      />
      <change-language />
      <v-divider></v-divider>
      <sidebar-list-item
        :title="$t('blog')"
        href="https://blog.caresteouvert.fr/"
        icon="blog"
      />
      <sidebar-list-item
        :title="$t('townhalls')"
        href="https://blog.caresteouvert.fr/un-outil-de-communication-des-mairies/"
        icon="town_hall"
      />
      <v-divider></v-divider>
      <sidebar-list-item
        :title="$t('about')"
        href="https://blog.caresteouvert.fr/about/"
        icon="info"
      />
      <sidebar-list-item
        :title="$t('press')"
        href="https://blog.caresteouvert.fr/presse/"
        icon="news"
      />
      <sidebar-list-item
        :title="$t('disclaimer')"
        href="https://blog.caresteouvert.fr/mentions-legales/"
        icon="legal"
      />
    </v-list>
  </div>
</template>

<script>
import SidebarListItem from './sidebar_list_item';
import ChangeLanguage from './change_language';

export default {
  components: { ChangeLanguage, SidebarListItem }
}
</script>
