<template>
  <div class="filterController mapboxgl-ctrl mapboxgl-ctrl-group">
    <button @click="$emit('deliveronly')"
            :title="$t('delivery')"
            :aria-label="$t('delivery')">
      <i class="v-icon notranslate osm osm-bicycle theme--light"/>
    </button>
  </div>
</template>

<script>
import { $helpers } from "vue-mapbox";

export default {
  name: "FilterController",
  mixins: [$helpers.asControl],

  inject: ["mapbox", "map"],

  mounted() {
    this.control = this;
    this.$_addControl();
  },

  methods: {
    onAdd() {
      return this.$el;
    },

    onRemove() {
    },
  }
};
</script>