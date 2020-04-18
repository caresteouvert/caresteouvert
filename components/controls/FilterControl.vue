<template>
  <div class="mapboxgl-ctrl mapboxgl-ctrl-group">
    <button @click="filterDeliver()"
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

  data() {
    return {
      deliverOnly: null,
      position: 'bottom-right'
    };
  },

  created() {
    // this.control = this;
    // this.position = 'bottom-right';
    this.$_addControl();
  },

  methods: {
    filterDeliver() {
      const layers = this.map.getStyle().layers
      layers.filter(l => /poi/.test(l.id)).map((layer) => {
        const filters = this.map.getFilter(layer.id)
        if (filters.some(f => f[1] === 'delivery')) {
          this.map.setFilter(layer.id, filters.filter(f => f.length > 1 && f[1] !== 'delivery'))
        } else {
          this.map.setFilter(layer.id, filters.concat([['in', 'delivery', 'yes', 'only']]))
        }
      })
    }
  }
};
</script>