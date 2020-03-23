<template>
  <div>
    <v-card>
      <v-img
        height="200px"
      >
        <v-layout
          column
          fill-height
        >
          <v-spacer></v-spacer>
  
          <v-card-title class="pl-1 pt-5">
            <div class="display-1 px-1">Covid 19</div>
          </v-card-title>
        </v-layout>
      </v-img>
    </v-card>

    <v-alert
      v-html="$t('covid19-alert')"
      dense
      tile
      type="warning"
      class="mb-0"
    />

    <slot />
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
