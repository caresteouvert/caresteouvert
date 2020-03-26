<template>
  <div>
    <h3 class="title">{{ $t(`opening_hours_editor.select_time.${step}`) }}</h3>
    <v-slide-x-reverse-transition mode="out-in">
      <v-time-picker
        v-if="step === 'start'"
        v-model="intervalStart"
        :key="step"
        :allowed-minutes="allowedMinutes"
        format="24hr"
        @input="next"
      />
      <v-time-picker
        v-else
        v-model="intervalEnd"
        :key="step"
        :allowed-minutes="allowedMinutes"
        format="24hr"
        @input="next"
      />
    </v-slide-x-reverse-transition>
  </div>
</template>

<script>
export default {
  data() {
    return {
      step: 'start',
      intervalStart: '',
      intervalEnd: '',
      allowedMinutes: [...Array(60 / 5)].map((v, index) => index  * 5)
    };
  },

  methods: {
    next() {
      if (this.step === 'end') {
        this.$emit('input', `${this.intervalStart}-${this.intervalEnd}`);
        return;
      }
      this.step = 'end';
    }
  }
};
</script>
