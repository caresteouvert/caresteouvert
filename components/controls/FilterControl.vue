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

class MyControl {
  onAdd() {
    this._container = document.querySelector('.filterController')
    return this._container;
  }

  onRemove() {
    this._container.parentNode.removeChild(this._container);
    this._map = undefined;
  }

  getDefaultPosition() {
    return "bottom-right"
  }
}

export default {
  name: "FilterController",
  mixins: [$helpers.asControl],

  inject: ["mapbox", "map"],

  created() {
    this.control = new MyControl();
  },

  mounted() {
    this.map.addControl(this.control);
  },
};
</script>