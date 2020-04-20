<template>
  <v-chip-group
    v-if="allCategories[category]"
    :value="value"
    :column="column"
    show-arrows
    @change="(v) => $emit('input', v || category)"
  >
    <v-chip
      v-for="(_, subcategory) in allCategories[category].subcategories"
      :key="subcategory"
      :value="`${category}/${subcategory}`"
      active-class="primary--text"
    >
      <v-icon small>{{ `osm-${subcategory}` }}</v-icon>
      <span class="pl-1">{{ $t(`categories.${subcategory}`) }}</span>
    </v-chip>
  </v-chip-group>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
  props: {
    value: {
      type: String,
      required: true
    },
    category: {
      type: String,
      required: true
    },
    column: {
      type: Boolean,
      required: true
    }
  },

  computed: mapGetters(['allCategories'])
}
</script>
