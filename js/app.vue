<template>
  <v-app>
    <router-view class="fullHeight" />
  </v-app>
</template>

<script>
export default {}
</script>

<style>
html {
  overflow-y: auto;
}

.fullHeight {
  height: 100vh;
}
</style>
