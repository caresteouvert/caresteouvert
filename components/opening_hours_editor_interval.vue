<template>
  <div>
    <h3 class="title">{{ $t(`opening_hours_editor.select_time.${step}`) }}</h3>
    <v-time-picker
      v-if="step === 'start'"
      v-model="intervalStart"
      :key="step"
      :allowed-minutes="allowedMinutes"
      full-width
      format="24hr"
    />
    <v-time-picker
      v-else
      v-model="intervalEnd"
      :key="step"
      :allowed-minutes="allowedMinutes"
      full-width
      format="24hr"
    />
    <v-card-actions>
      <v-spacer></v-spacer>
      <v-btn
        color="blue darken-1"
        text
        @click="$emit('cancel')"
      >{{ $t('opening_hours_editor.cancel') }}</v-btn>
      <v-btn
        color="blue darken-1"
        text
        @click="next"
      >{{ $t('opening_hours_editor.next') }}</v-btn>
    </v-card-actions>
  </div>
</template>

<script>
export default {
  data() {
    return {
      step: 'start',
      intervalStart: '09:00',
      intervalEnd: '18:00',
      allowedMinutes: [...Array(60 / 5)].map((v, index) => index  * 5)
    };
  },

  methods: {
    next() {
      if (this.step === 'end') {
        return this.$emit('input', [this.intervalStart, this.intervalEnd]);
      }
      this.step = 'end';
    }
  }
};
</script>
