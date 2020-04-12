<template>
  <v-app>
    <nuxt nuxt-child-key="test" class="fullHeight" />
  </v-app>
</template>

<script>
export default {}
</script>

<style>
html {
  overflow-y: hidden;
}

.fullHeight {
  height: 100vh;
}
</style>
