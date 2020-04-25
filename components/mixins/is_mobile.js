export default {
  data() {
    return {
      isMobile: false
    };
  },

  mounted() {
    this.isMobile = this.$vuetify.breakpoint.smAndDown;
  },

  watch: {
    '$vuetify.breakpoint.smAndDown'() {
      this.isMobile = this.$vuetify.breakpoint.smAndDown;
    }
  }
};
