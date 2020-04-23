export default {
  data() {
    return {
      isMobile: false
    };
  },

  watch: {
    '$vuetify.breakpoint.smAndDown': {
      immediate: true,
      handler(value) {
        this.isMobile = this.$vuetify.breakpoint.smAndDown;
      }
    }
  }
};
