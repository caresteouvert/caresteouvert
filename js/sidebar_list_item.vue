<template>
  <v-list-item :href="href">
    <v-list-item-content class="ml-2">
      <v-list-item-title class="body-1">{{ title }}</v-list-item-title>
    </v-list-item-content>
  </v-list-item>
</template>

<script>
export default {
  props: {
    href: {
      type: String,
      required: true
    },
    title: {
      type: String,
      required: true
    }
  }
};
</script>
