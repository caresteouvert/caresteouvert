<template>
  <div>
    <v-alert
      :type="type"
      :icon="false"
      tile
      class="mb-0"
    >
      <p>{{ $t(`details.state.${status}`) }}</p>
      <v-btn
        v-if="!success"
        :disabled="contribute"
        @click="contribute = true">{{ $t('details.signal') }}</v-btn>
    </v-alert>
    <v-alert
      v-if="success"
      type="success"
      tile
    class="mb-0"
    >{{ $t('details.signal_done') }}</v-alert>
    <div v-if="contribute">
      <contribute-form
        :point="point"
        class="pa-2"
        @success="success = true; contribute = false"
        @close="contribute = false"
      />
      <v-divider />
    </div>
  </div>
</template>

<script>
import ContributeForm from './contribute_form';

export default {
  components: { ContributeForm },

  props: {
    status: {
      type: String,
      required: true
    },

    point: {
      type: Object,
      required: true
    }
  },

  data() {
    return {
      contribute: false,
      success: false
    };
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
