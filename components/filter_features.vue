<template>
  <div>
    <v-list
      shaped
      class="pt-1"
    >
      <v-list-item-group
        :value="value"
        multiple
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
            <v-list-item-action v-if="value.includes(category)">
              <v-btn icon>
                <v-icon>osm-close</v-icon>
              </v-btn>
            </v-list-item-action>
          </v-list-item>
          <template v-if="allCategories[category]">
            <v-chip-group
              :value="value"
              multiple
              column
              class="ml-6"
            >
              <v-chip
                v-show="value.some(c => c.startsWith(category))"
                v-for="(_, subcategory) in allCategories[category].subcategories"
                :key="subcategory"
                :value="`${category}/${subcategory}`"
                active-class="primary--text"
                @change="changeSubCategory(category, subcategory)"
              >
                <v-icon small>{{ `osm-${subcategory}` }}</v-icon>
                <span class="pl-1">{{ $t(`categories.${subcategory}`) }}</span>
              </v-chip>
            </v-chip-group>
          </template>
        </template>
      </v-list-item-group>
    </v-list>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
  props: {
    value: {
      type: Array,
      required: true
    }
  },

  computed: mapGetters(['categories', 'allCategories']),

  methods: {
    updateValue(value) {
      this.$emit('input', value);
    },

    changeSubCategory(category, subcategory) {
      const value = [
        ...this.value
      ];
      if (value.includes(`${category}/${subcategory}`)) {
        const index = value.indexOf(`${category}/${subcategory}`);
        value.splice(index, 1);
        this.updateValue(value);
      } else {
        value.push(`${category}/${subcategory}`);
        if (value.includes(category)) {
          const index = value.indexOf(category);
          value.splice(index, 1);
        }
      }
      this.updateValue(value);
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
