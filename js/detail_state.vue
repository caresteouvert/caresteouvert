<template>
  <v-alert
    :type="type"
    :icon="false"
    tile
    class="mb-0"
  >
    {{ $t(`details.state.${status}`) }}
  </v-alert>
</template>

<script>
export default {
  props: {
    status: {
      type: String,
      required: true
    }
  },

  computed: {
    type() {
      const statuses = {
        ouvert: 'success',
        ouvert_adapté: 'success',
        partiel: 'warning',
        inconnu: 'warning'
      };
      return statuses[this.status];
    }
  }
};
</script>
