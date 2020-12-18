<template>
  <city-list :code="code"></city-list>
</template>

<script>
import i18nMixin from '../../../components/mixins/i18n';
import CityList from '../../../components/city_list';

export default {
  components: {
    CityList
  },
  mixins: [i18nMixin],

  data() {
    return { code: this.$route.params.code };
  }
}
</script>
