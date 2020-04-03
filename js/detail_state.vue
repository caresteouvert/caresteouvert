<template>
  <div>
    <v-alert
      :type="type"
      :icon="false"
      tile
      class="mb-0"
    >
      {{ $t(`details.state.${status}`) }}
      <template v-if="!success">
        <br>
        <br>
        <v-btn
          :disabled="contribute"
          @click="contribute = true">{{ $t('details.signal') }}</v-btn>
      </template>
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
        open: 'success',
        open_adapted: 'success',
        partial: 'warning',
        unknown: 'warning',
        closed: 'error'
      };
      return statuses[this.status];
    }
  }
};
</script>
