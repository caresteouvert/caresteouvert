<template>
  <client-only>
    <qa-map
      :map-style="mapStyle"
    />
  </client-only>
</template>

<script>
import * as config from '../config.json';

export default {
  data() {
    return {
      mapStyle: config.mapStyle + config.tileApiKey
    }
  }
}
</script>
