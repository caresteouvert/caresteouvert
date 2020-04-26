<template>
  <v-chip-group
    v-if="allCategories[category]"
    :value="value"
    :column="column"
    show-arrows
    @change="(v) => $emit('input', v || category)"
  >
    <v-chip
      v-for="{ subcategory, text} in sortedSubCategories"
      :key="subcategory"
      :value="`${category}/${subcategory}`"
      active-class="primary--text"
    >
      <v-icon small>{{ `osm-${subcategory}` }}</v-icon>
      <span class="pl-1">{{ text }}</span>
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

  computed: {
    ...mapGetters(['allCategories']),

    sortedSubCategories() {
      return Object.keys(this.allCategories[this.category].subcategories).map((subcategory) => {
        return {
          subcategory,
          text: this.$t(`categories.${subcategory}`)
        }
      }).sort((a, b) => a.text.localeCompare(b.text));
    }
  }
}
</script>
