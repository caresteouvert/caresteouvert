<template>
  <v-list
    shaped
    class="pt-1"
  >
    <v-list-item-group
      :value="value"
      @change="updateValue"
    >
      <template v-for="category in categories">
        <v-list-item
          :key="category"
          :value="category"
          class="small-item-height"
          active-class="primary--text text--accent-4"
        >
          <v-list-item-icon class="mr-0 my-3">
            <v-icon small>{{ `osm-${category}` }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content class="ml-2 py-1">
            <v-list-item-title>{{ $t(`categories.${category}`) }}</v-list-item-title>
          </v-list-item-content>
          <v-list-item-action v-if="value == category">
            <v-btn icon>
              <v-icon>osm-close</v-icon>
            </v-btn>
          </v-list-item-action>
        </v-list-item>
        <template v-if="allCategories[category]">
          <v-chip-group
            v-show="value.startsWith(category)"
            :value="value"
            column
            class="ml-6"
            @change="updateSubCategory"
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
      </template>
    </v-list-item-group>
  </v-list>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
  props: {
    value: {
      type: String,
      required: true
    }
  },

  computed: mapGetters(['categories', 'allCategories']),

  methods: {
    updateValue(value) {
      this.$emit('input', value || '');
    },

    updateSubCategory(choice) {
      if (!choice) {
        this.updateValue(this.value.split('/')[0]);
      } else {
        this.updateValue(choice)
      }
    }
  }
}
</script>

<style scoped>
  .small-item-height {
    height: 40px;
    min-height: 35px;
  }
</style>
