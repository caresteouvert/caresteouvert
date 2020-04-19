<template>
  <div class="mapboxgl-ctrl mapboxgl-ctrl-group">
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

  created() {
    // this.control = this;
    // this.position = 'bottom-right';
    // this.$_addControl();
  },
};
</script>