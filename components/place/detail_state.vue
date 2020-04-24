<template>
  <div>
    <v-alert
      :type="type"
      :icon="false"
      tile
      class="mb-0"
    >
      <span class="text-pre">{{ $t(`details.state.${status}`) }}</span>
      <span
        class="body-2 font-weight-light"
        v-if="last_update"
      >
        <br />{{ lastUpdateTooRecent ? $t('details.last_update.recent') : $t(`details.last_update.date`, { date: last_update.toLocaleString(this.$i18n.locale, { weekday: 'long', day: 'numeric', month: 'long', hour: 'numeric' }) }) }}
      </span>
      <template v-if="!success">
        <br>
        <br>
        <v-btn
          :disabled="contribute || lastUpdateTooRecent"
          @click="contribute = true">{{ $t('details.signal') }}</v-btn>
      </template>
    </v-alert>
    <v-alert
      v-if="success"
      :icon="false"
      type="success"
      tile
      class="mb-0"
    ><span class="text-pre">{{ $t('details.signal_done') }}</span></v-alert>
    <div v-if="contribute">
      <contribute-form
        :place="place"
        class="pa-2"
        @success="success = true; contribute = false"
        @close="contribute = false"
      />
      <v-divider />
    </div>
  </div>
</template>

<script>
import ContributeForm from '../contribute_form';

export default {
  components: { ContributeForm },

  props: {
    status: {
      type: String,
      required: true
    },

    place: {
      type: Object,
      required: true
    },

    last_update: {
      type: Date,
      required: false
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
    },

    lastUpdateTooRecent() {
      return this.last_update && Date.now() - this.last_update.getTime() < 1000*60*60;
    }
  }
};
</script>
