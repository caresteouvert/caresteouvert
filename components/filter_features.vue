<template>
  <div>
    <v-list
      shaped
      class="pt-1"
    >
      <v-list-item-group
        :value="value"
        @change="updateValue"
      >
        <v-list-item
          v-for="category in categories"
          :key="category"
          :value="category"
          class="small-item-height"
          active-class="primary--text text--accent-4"
        >
          <v-list-item-icon class="mr-0 my-3">
            <v-icon
              :color="value === category ? 'primary' : null"
              small
            >{{ `osm-${category}` }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content class="ml-2 py-1">
            <v-list-item-title>{{ $t(`categories.${category}`) }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list-item-group>
    </v-list>
  </div>
</template>

<script>
export default {
  props: {
    categories: {
      type: Array,
      required: true
    },

    value: {
      type: String,
      required: true
    }
  },

  methods: {
    updateValue(value) {
      this.$emit('input', value || '');
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
