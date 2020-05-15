<template>
  <client-only>
    <qa-main />
  </client-only>
</template>

<script>
import QaMain from '../components/qa_main';
import i18nMixin from '../components/mixins/i18n';

export default {
  mixins: [i18nMixin],

  components: { QaMain },

  head() {
    return {
      title: this.$t('title') + ' - ' + this.$t('qa.title')
    }
  }
};
</script>
