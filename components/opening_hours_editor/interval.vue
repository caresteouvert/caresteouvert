<template>
  <div>
    <h3 class="title">{{ $t(`opening_hours_editor.select_time.${step}`) }}</h3>
    <time-picker
      v-if="step === 'start'"
      v-model="intervalStart"
      :key="step"
    />
    <time-picker
      v-else
      v-model="intervalEnd"
      :key="step"
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
import TimePicker from './time_picker';

export default {
  components: { TimePicker },

  data() {
    return {
      step: 'start',
      intervalStart: '09:00',
      intervalEnd: '18:00'
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
