<template>
  <detail-entry
    v-if="value"
    :name="name"
    :icon="icon"
  >
    {{ value }}
  </detail-entry>
</template>

<script>
import DetailEntry from './detail_entry';

export default {
  components: { DetailEntry },

  props: {
    name: {
      type: String,
      default: undefined
    },
    icon: {
      type: String,
      default: undefined
    },
    value: {
      type: String,
      default: undefined
    }
  }
}
</script>
