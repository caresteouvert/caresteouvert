<template>
  <v-time-picker
    :value="value"
    :allowed-minutes="allowedMinutes"
    full-width
    format="24hr"
    @input="updateValue"
  />
</template>
<script>
export default {
  props: {
    value: {
      type: String,
      required: true,
      default: ''
    }
  },

  computed: {
    allowedMinutes() {
      return [...Array(60 / 5)].map((v, index) => index  * 5);
    }
  },

  methods: {
    updateValue(value) {
      this.$emit('input', value);
    }
  }
};
</script>
