<template>
  <v-list-item>
    <v-list-item-icon v-if="icon">
      <v-icon v-text="icon"></v-icon>
    </v-list-item-icon>
    <v-list-item-action
      v-if="name"
      class="mr-1"
    >{{ name }}
    </v-list-item-action>
    <v-list-item-content>
      <v-list-item-title>
        <slot />
      </v-list-item-title>
    </v-list-item-content>
  </v-list-item>
</template>

<script>
export default {
  props: {
    name: {
      type: String,
      default: undefined
    },
    icon: {
      type: String,
      default: undefined
    }
  }
}
</script>
