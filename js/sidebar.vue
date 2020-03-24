<template>
  <div>
    <v-card>
      <v-card-title class="pl-1 pt-5">
        <div class="display-1 px-1">{{ $t('title') }}</div>
      </v-card-title>
    </v-card>

    <v-alert
      v-html="$t('covid19-alert')"
      dense
      tile
      type="warning"
      class="mb-0"
    />

    <slot />

    <p>Hébergé gracieusement par <a href="https://scalingo.com/">Scalingo</a>.</p>
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
  .display-1 {
    background-color: #ffffffa6;
  }
</style>
