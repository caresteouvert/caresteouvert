<template>
  <place-detail
    ref="detail"
    :id="$route.params.id"
    :features-and-location="this.$route.params.featuresAndLocation"
  />
</template>

<script>
import PlaceDetail from '../../../../components/place/detail';

export default {
  components: { PlaceDetail },

  beforeRouteUpdate(to, from, next) {
    if (this.$refs.detail) {
      this.$refs.detail.beforeRouteUpdate(to, from, next);
    } else {
      next();
    }
  },

  beforeRouteLeave(to, from, next) {
    if (this.$refs.detail) {
      this.$refs.detail.beforeRouteLeave(to, from, next);
    } else {
      next();
    }
  }
};
</script>
