<template>
  <div>
    <v-alert
      :type="type"
      :icon="false"
      tile
      class="mb-0"
    >
      <p class="text-pre mb-0">{{ $t(`details.state.${status}`) }}</p>
      <p
        v-if="lastUpdate"
        class="body-2 font-weight-light mb-0"
      >
        {{ lastUpdateText }}
      </p>
      <template v-if="!success">
        <br>
        <v-btn
          :disabled="contribute || lastUpdateTooRecent"
          @click="contribute = true">{{ $t(`details.signal_state.${status}`) }}</v-btn>
      </template>
    </v-alert>
    <v-alert
      v-if="success"
      :icon="false"
      type="success"
      tile
      class="mb-0"
    >
      <span class="text-pre">{{ $t('details.signal_done') }}</span>
    </v-alert>
    <v-sheet v-if="contribute" elevation="4" class="ma-3">
      <contribute-form
        :place="place"
        class="pa-2"
        @success="success = true; contribute = false"
        @close="contribute = false"
      />
    </v-sheet>
  </div>
</template>

<script>
import ContributeForm from '../contribute_form';
import { colorForStatus } from '../../lib/place';

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

  watch: {
    contribute() {
      this.$store.commit('setIsContributing', this.contribute);
    }
  },

  computed: {
    type() {
      return colorForStatus(this.status);
    },

    lastUpdateTooRecent() {
      return this.lastUpdate && Date.now() - this.lastUpdate.getTime() < 1000*60*60;
    },

    lastUpdateText() {
      if (this.lastUpdateTooRecent) {
        return this.$t('details.last_update.recent');
      }
      const format = { weekday: 'long', day: 'numeric', month: 'long', hour: '2-digit', minute: '2-digit', year: 'numeric' };
      const date = this.lastUpdate.toLocaleString(this.$i18n.locale, format);
      return this.$t('details.last_update.date', { date });
    }
  },

  beforeDestroy() {
    this.$store.commit('setIsContributing', false);
  }
};
</script>
