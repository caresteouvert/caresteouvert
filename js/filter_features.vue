<template>
  <div>
    <v-list class="pt-1">
      <v-list-item
        v-for="(filter, key) in filters"
        :key="key"
        class="small-item-height"
        @click=""
      >
        <v-list-item-icon class="mr-0 my-3">
          <v-icon
            :color="filter.selected ? 'primary' : null"
            small
          >{{ `osm-${key}` }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content
          class="ml-2 py-1"
          @click="filter.selected = !filter.selected"
        >
          <v-list-item-title>{{ $t(`filter.${key}`) }}</v-list-item-title>
        </v-list-item-content>

        <v-list-item-action class="ma-0">
          <v-checkbox v-model="filter.selected" dense></v-checkbox>
        </v-list-item-action>
      </v-list-item>
    </v-list>
    <v-switch
      :value="deliveryOnly"
      :label="$t('filter.delivery')"
      class="px-4 mt-0"
      @change="updateDeliveryOnly"
    ></v-switch>
  </div>
</template>

<script>
export default {
  props: {
    filters: {
      type: Object,
      required: true
    },
    deliveryOnly: {
      type: Boolean,
      required: true
    }
  },
  methods: {
    updateDeliveryOnly(value) {
      this.$emit('update:deliveryOnly', !!value);
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
