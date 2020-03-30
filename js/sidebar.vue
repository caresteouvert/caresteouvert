<template>
  <div>
    <v-card>
      <v-card-title class="pl-1 pt-5 pb-5 justify-center">
        <img class="logo" src="../images/logo2.png" :alt="$t('title')" />
      </v-card-title>
      <v-card-subtitle class="pl-2 text-center">
        {{ $t('subtitle') }}
      </v-card-subtitle>
    </v-card>

    <v-alert
      v-html="$t('covid19-alert')"
      dense
      tile
      type="warning"
      class="mb-0"
    />

    <slot />
    <v-list>
      <slot name="list-top"></slot>
      <v-divider></v-divider>
      <v-list-item href="https://blog.caresteouvert.fr/que-faire-sil-manque-un-commerce-dans-ca-reste-ouvert/">
        <v-list-item-content class="ml-2">
          <v-list-item-title class="body-1">{{ $t('missing_shop') }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
      <v-divider></v-divider>
      <v-list-item href="https://blog.caresteouvert.fr/">
        <v-list-item-content class="ml-2">
          <v-list-item-title class="body-1">{{ $t('blog') }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
      <v-list-item href="https://blog.caresteouvert.fr/about/">
        <v-list-item-content class="ml-2">
          <v-list-item-title class="body-1">{{ $t('about') }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
      <v-list-item href="https://blog.caresteouvert.fr/presse/">
        <v-list-item-content class="ml-2">
          <v-list-item-title class="body-1">{{ $t('press') }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
      <v-list-item href="https://blog.caresteouvert.fr/mentions-legales/">
        <v-list-item-content class="ml-2">
          <v-list-item-title class="body-1">{{ $t('disclaimer') }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
  </div>
</template>

<script>
export default {
}
</script>

<style scoped>
  .no-min-width {
    min-width: auto;
  }
  .logo {
    width: 150px;
    max-width: 100%;
  }
</style>
