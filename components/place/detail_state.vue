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
        v-if="lastUpdate"
        class="body-2 font-weight-light"
      >
        <br />{{ lastUpdateTooRecent ? $t('details.last_update.recent') : $t(`details.last_update.date`, { date: lastUpdate.toLocaleString(this.$i18n.locale, { weekday: 'long', day: 'numeric', month: 'long', hour: 'numeric', year: 'numeric' }) }) }}
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

    lastUpdate: {
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
      return this.lastUpdate && Date.now() - this.lastUpdate.getTime() < 1000*60*60;
    }
  }
};
</script>
