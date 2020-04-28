<template>
  <v-list class="pt-1">
    <v-list-item-group
      :value="value"
      @change="updateValue"
    >
      <v-list-item
        v-for="category in categories"
        :key="category"
        :value="category"
        active-class="primary--text text--accent-4"
      >
        <v-list-item-icon class="mr-0 my-3">
          <v-icon small>{{ `osm-${category}` }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content class="ml-2 py-1">
          <v-list-item-title>{{ $t(`categories.${category}`) }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
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

  computed: mapGetters(['categories']),

  methods: {
    updateValue(value) {
      this.$emit('input', value);
    }
  }
}
</script>
